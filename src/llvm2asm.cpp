#include "llvm_ir.h"
#include "asm_arm.h"
#include "temp.h"
#include "llvm2asm.h"
#include "allocReg.h"
#include <queue>
#include <cassert>
#include <iostream>
#include "printASM.h"
#include "printLLVM.h"
#include "register_rules.h"
#include <sstream>
#include <iostream>
using namespace std;
using namespace LLVMIR;
using namespace ASM;

#define INSERT1() printf("%s:%d\n", __FILE__, __LINE__);
static int stack_frame;
static bool alloc_frame = false;
struct StructDef
{
    // 记录一整个结构体，offset是vector
    std::vector<int> offset;
    int size;
    StructDef(std::vector<int> _offset, int _size) : offset(_offset), size(_size) {}
};
static unordered_map<string, StructDef *> structLayout;

// 堆栈指针, 不包含在x0-x30之内
static AS_reg *sp = new AS_reg(AS_type::SP, -1);
static unordered_map<int, AS_address *> fpOffset;
static unordered_map<int, AS_relopkind> condMap;
// 记录一个结构体属性在结构体中的偏移量和大小

/**
 * @brief 打印错误信息并中断
 */
void Error(string message){
    cout<<message<<endl;
    assert(0);
}

/**
 * @brief 处理立即数mov
 */
# define UINT_16_MAX 65535
void movImm(int imm, AS_reg* dst, list<AS_stm *> &as_list){
    unsigned int unsignedImm = (unsigned int)imm;
    if(unsignedImm > UINT_16_MAX){
        as_list.push_back(AS_Movz(new AS_reg(AS_type::IMM, unsignedImm>>16), dst));
        as_list.push_back(AS_Movk(new AS_reg(AS_type::IMM, unsignedImm & 0x1111), dst));
    }
    else {
        as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, imm), dst));
    }
}

/**
 * @brief 获得一个tempdef的大小
 */
int getMemLength(TempDef &members)
{
    switch (members.kind)
    {
    case TempType::INT_PTR:
        return INT_LENGTH * members.len;
        break;
    case TempType::INT_TEMP:
        return INT_LENGTH;
        break;
    case TempType::STRUCT_PTR:
        if(structLayout.find(members.structname) == structLayout.end()){
            Error("结构体先使用后定义");
        }
        return structLayout[members.structname]->size * members.len;
        break;
    case TempType::STRUCT_TEMP:
        if(structLayout.find(members.structname) == structLayout.end()){
            Error("结构体先使用后定义");
        }
        return structLayout[members.structname]->size;
        break;
    default:
        Error("错误的TempDef类型");
    }
}

/**
 * @brief 计算结构体各个位置的偏移
 */
void structLayoutInit(vector<L_def *> &defs)
{
    int intSize = INT_LENGTH;
    for(L_def* def: defs){
        if(def->kind == L_DefKind::SRT){
            string structName = def->u.SRT->name;
            vector<TempDef> members = def->u.SRT->members;
            int total_size = 0;
            vector<int> offset;
            for(TempDef temp:members){
                // 可能是数组或者标量
                int temp_size = getMemLength(temp);
                offset.push_back(temp_size);
                total_size += temp_size;
            }
            structLayout[structName] = new StructDef(offset, total_size);
        }
    }
}

/**
 * @brief 处理中间代码函数中的alloca语句，为函数局部变量分配内存，同时记录相对于fp的偏移
 */
void set_stack(L_func &func)
{
    stack_frame = 0;

    // 处理函数参数寄存器溢出的情况
    // for(int i = func.args.size()-1; i>=8; i--){
    //     stack_frame += INT_LENGTH;
    //     AS_address *address = new AS_address(new AS_reg(AS_type::Xn, XnFP), -stack_frame);
    //     fpOffset[func.args[i]->num] = address;
    // }

    // 提前为alloca分配空间
    for(L_block* block:func.blocks){
        for(L_stm* stm:block->instrs){
            if(stm->type == L_StmKind::T_ALLOCA){
                AS_operand* alloca_dst = stm->u.ALLOCA->dst;

                if(alloca_dst->kind != OperandKind::TEMP){
                    Error("alloca dst出现异常1");
                }

                if(alloca_dst->u.TEMP->type == TempType::INT_PTR){
                    if(alloca_dst->u.TEMP->len <= 0)
                        Error("alloca dst出现异常2");
                    stack_frame += INT_LENGTH * alloca_dst->u.TEMP->len;
                } 
                else if(alloca_dst->u.TEMP->type == TempType::STRUCT_PTR){
                    int len = alloca_dst->u.TEMP->len;
                    if(alloca_dst->u.TEMP->len <= 0)
                        len = 1;
                    int struct_size = structLayout[alloca_dst->u.TEMP->structname]->size;
                    stack_frame += struct_size * len;
                }
                else{
                    Error("alloca dst出现异常3");
                }
                
                AS_address* address = new AS_address(new AS_reg(AS_type::Xn, XnFP), -stack_frame);
                fpOffset[alloca_dst->u.TEMP->num] = address;
            }   
        }
    }
    // 保证按照8*16=128字节对齐
    stack_frame = ((stack_frame + 15) >> 4) << 4;
}

/**
 * @brief 在刚刚进入函数的时候，需要调整sp，并将函数参数移入虚拟寄存器
 */
void new_frame(list<AS_stm *> &as_list, L_func &func)
{
    // 调整sp
    as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, stack_frame), new AS_reg(AS_type::Xn, XXn1)));
    as_list.push_back(AS_Binop(AS_binopkind::SUB_, sp, new AS_reg(AS_type::Xn, XXn1), sp));

    // 将函数参数移入虚拟寄存器
    int args_more_than_8 = func.args.size() > 8;
    if(args_more_than_8){
        // 处理寄存器溢出的情况
        for (int i = 0; i<8;i++){
            as_list.push_back(AS_Mov(new AS_reg(AS_type::Xn, paramRegs[i]), new AS_reg(AS_type::Xn, func.args[i]->num)));
        }
        for (int i = 8; i<func.args.size(); i++){
            // TODO 地址问题
            as_list.push_back(AS_Ldr(new AS_reg(AS_type::Xn, func.args[i]->num), new AS_reg(AS_type::ADR, new AS_address(new AS_reg(AS_type::Xn, XnFP), INT_LENGTH*(i-8)))));
        }
    }
    else{
        for (int i = 0; i<func.args.size(); i++){
            as_list.push_back(AS_Mov(new AS_reg(AS_type::Xn, paramRegs[i]), new AS_reg(AS_type::Xn, func.args[i]->num)));
        }
    }
}

/**
 * @brief 将sp恢复到fp所指位置
 */
void free_frame(list<AS_stm *> &as_list)
{
    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::Xn, XnFP), sp));
}

/**
 * @brief 翻译二元操作指令
 */
void llvm2asmBinop(list<AS_stm *> &as_list, L_stm *binop_stm)
{
    AS_binopkind kind;
    switch(binop_stm->u.BINOP->op){
        case L_binopKind::T_plus: {
            kind = AS_binopkind::ADD_;
            break;
        }
        case L_binopKind::T_minus: {
            kind = AS_binopkind::SUB_;
            break;
        }
        case L_binopKind::T_mul: {
            kind = AS_binopkind::MUL_;
            break;
        }
        case L_binopKind::T_div: {
            kind = AS_binopkind::SDIV_;
            break;
        }
        default:{
            Error("二元操作指令类型异常");
        }
    }

    AS_reg *left, *right, *dst;
    L_binop *binop = binop_stm->u.BINOP;
    if(binop->dst->kind != OperandKind::TEMP){
        Error("Binop dst出现异常");
    }
    dst = new AS_reg(AS_type::Xn, binop->dst->u.TEMP->num);
    left = getCalls(binop->left, as_list);
    right = getCalls(binop->right, as_list);

    as_list.push_back(AS_Binop(kind, left, right, dst));
}

/**
 * @brief 翻译load指令
 * @example 
        //  %r181 = load i32, i32* %r180
        ldr     x9, [x9]
    @example
        //  %r191 = load i32, i32* @h
        adrp     x9, h
        add     x9, x9, #:lo12:h
        ldr     x12, [x9]
 */
void llvm2asmLoad(list<AS_stm *> &as_list, L_stm *load_stm)
{
    L_load* load = load_stm->u.LOAD;
    if(load->dst->kind != OperandKind::TEMP){
        Error("Load dst寄存器异常");
    }
    if(load->ptr->kind == OperandKind::TEMP){
        as_list.push_back(AS_Ldr(new AS_reg(AS_type::Xn, load->dst->u.TEMP->num), new AS_reg(AS_type::ADR, new AS_address(new AS_reg(AS_type::Xn, load->ptr->u.TEMP->num), 0))));
    }
    else if(load->ptr->kind == OperandKind::NAME){
        AS_reg *temp_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.push_back(AS_Adr(new AS_label(load->ptr->u.NAME->name->name), temp_reg));
        as_list.push_back(AS_Ldr(new AS_reg(AS_type::Xn, load->dst->u.TEMP->num), new AS_reg(AS_type::ADR, new AS_address(temp_reg, 0))));
    }
    else {
        Error("Load ptr寄存器异常");
    }
}

/**
 * @brief 翻译store语句
 * @example 
        //  store i32 0, i32* %r224
        mov     x11, #0
        str     x11, [x12]
    @example
        //  store i32 %r228, i32* @n
        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
    @example
        //  store i32 %r272, i32* %r132
        str     x9, [x11]
 */
void llvm2asmStore(list<AS_stm *> &as_list, L_stm *store_stm)
{
    L_store* store = store_stm->u.STORE;
    
    // TODO 如果这里有后索引模式，寄存器分配spill会有问题
    if(store->ptr->kind == OperandKind::ICONST){
        Error("Store ptr出现异常");
    }
    else if(store->ptr->kind == OperandKind::NAME){
        // 处理src
        AS_reg* src = getCalls(store->src, as_list);
        AS_reg *temp_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.push_back(AS_Adr(new AS_label(store->ptr->u.NAME->name->name), temp_reg));
        as_list.push_back(AS_Str(src, new AS_reg(AS_type::ADR, new AS_address(temp_reg, 0))));
    }
    else{
        // Temp
        // 处理src
        AS_reg* src = getCalls(store->src, as_list);
        as_list.push_back(AS_Str(src, new AS_reg(AS_type::ADR, new AS_address(new AS_reg(AS_type::Xn, store->ptr->u.TEMP->num), 0))));
    }
}

/**
 * @brief 翻译icmp语句
 */
void llvm2asmCmp(list<AS_stm *> &as_list, L_stm *cmp_stm)
{
    L_cmp *cmp = cmp_stm->u.CMP;
    AS_relopkind kind;
    switch(cmp->op){
        case L_relopKind::T_eq:{
            kind = AS_relopkind::EQ_;
            break;
        }
        case L_relopKind::T_ge:{
            kind = AS_relopkind::GE_;
            break;
        }
        case L_relopKind::T_gt:{
            kind = AS_relopkind::GT_;
            break;
        }
        case L_relopKind::T_le:{
            kind = AS_relopkind::LE_;
            break;
        }
        case L_relopKind::T_lt:{
            kind = AS_relopkind::LT_;
            break;
        }
        case L_relopKind::T_ne:{
            kind = AS_relopkind::NE_;
            break;
        }
        default:{
            Error("cmp op类型错误");
            break;
        }
    }

    if(cmp->dst->kind != OperandKind::TEMP)
        Error("cmp dst出现异常");
    AS_reg* left = getCalls(cmp->left, as_list);
    AS_reg* right = getCalls(cmp->right, as_list);

    as_list.push_back(AS_Cmp(left, right));
    condMap[cmp->dst->u.TEMP->num] = kind;
}

/**
 * @brief 翻译Move语句
 * @note 中间代码的L_mov结构体在ll中被翻译成add
 * @example
        //  %r256 = add i32 0, 0
        mov     x10, #0
        //  %r259 = add i32 0, 0
        mov     x10, #0
        mov     x10, x10
 */
void llvm2asmMov(list<AS_stm *> &as_list, L_stm *mov_stm)
{
    L_move *move = mov_stm->u.MOVE;
    AS_reg *src = getCalls(move->src, as_list);
    if(move->dst->kind != OperandKind::TEMP)
        Error("move dst出现异常");
    as_list.push_back(AS_Mov(src, new AS_reg(AS_type::Xn, move->dst->u.TEMP->num)));
}

/**
 * @brief 翻译cjmp语句
 */
void llvm2asmCJmp(list<AS_stm *> &as_list, L_stm *cjmp_stm)
{
    L_cjump *cjump = cjmp_stm->u.CJUMP;
    if(cjump->dst->kind != OperandKind::TEMP)
        Error("cjump dst类型出现异常");
    if(condMap.find(cjump->dst->u.TEMP->num) == condMap.end())
        Error("cjump dst未计算先使用");
    
    AS_relopkind kind = condMap[cjump->dst->u.TEMP->num];
    
    as_list.push_back(AS_BCond(kind, new AS_label(cjump->true_label->name)));
    as_list.push_back(AS_B(new AS_label(cjump->false_label->name)));
}

/**
 * @brief 翻译中间代码返回语句
 * @example 
        //  ret i32 %r293
        mov     x0, x10
        mov     sp, x29
        ret
    @example
        //  ret void
        mov     sp, x29
        ret
    @example
        //  ret i32 0
        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
 */
void llvm2asmRet(list<AS_stm *> &as_list, L_stm *ret_stm)
{
    // 处理返回值
    AS_operand* ret = ret_stm->u.RET->ret;
    if(ret != nullptr){
        AS_reg* ret_reg = getCalls(ret, as_list);
        as_list.push_back(AS_Mov(ret_reg, new AS_reg(AS_type::Xn, XXnret)));
    }

    // 调整栈指针
    free_frame(as_list);
    // ret
    as_list.push_back(AS_Ret());
}

/**
 * @brief 翻译getelementptr语句
 * @example
        //  %r134 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r271
        mov     x11, #8
        mul     x12, x10, x11
        adrp     x11, head
        add     x11, x11, #:lo12:head
        add     x11, x11, x12
 */
void llvm2asmGep(list<AS_stm *> &as_list, L_stm *gep_stm)
{
    L_gep *gep = gep_stm->u.GEP;

    // TODO 可能是结构体
    int size = 8;
    if(gep->base_ptr->kind == OperandKind::TEMP && gep->base_ptr->u.TEMP->type == TempType::STRUCT_PTR && (gep->base_ptr->u.TEMP->len>0 || gep->base_ptr->u.TEMP->len==-1)){
        // 结构体数组
        size = structLayout[gep->base_ptr->u.TEMP->structname]->size;
    }
    else if(gep->base_ptr->kind == OperandKind::NAME && gep->base_ptr->u.NAME->type == TempType::STRUCT_PTR){
        size = structLayout[gep->base_ptr->u.NAME->structname]->size;
    }
    else {
        // do nothing
    }
    AS_reg *size_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
    as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, size), size_reg));

    AS_reg *dst_reg;
    AS_reg *index_reg;
    if(gep->index->kind == OperandKind::TEMP){
        index_reg = new AS_reg(AS_type::Xn, gep->index->u.TEMP->num);
        dst_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.push_back(AS_Binop(AS_binopkind::MUL_, index_reg, size_reg, dst_reg));
    }
    else if(gep->index->kind == OperandKind::ICONST){
        index_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        dst_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, gep->index->u.ICONST), index_reg));
        as_list.push_back(AS_Binop(AS_binopkind::MUL_, index_reg, size_reg, dst_reg));
    }
    else {
        // Name
        Error("getelementptr index出现异常");
    }

    if(gep->base_ptr->kind == OperandKind::TEMP){
        // 局部变量
        if(fpOffset.find(gep->base_ptr->u.TEMP->num) != fpOffset.end()){
            // 局部变量
            AS_address* base_address = fpOffset[gep->base_ptr->u.TEMP->num];
            AS_reg *base_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);

            // AS_reg *immReg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
            // movImm(base_address->imm, immReg, as_list);
            // as_list.push_back(AS_Binop(AS_binopkind::ADD_, new AS_reg(AS_type::Xn, XnFP), immReg, base_reg));
            
            // as_list.push_back(AS_Binop(AS_binopkind::ADD_, new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::IMM, base_address->imm), base_reg));

            // TODO 这里临时借用了一下x0
            as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, base_address->imm), new AS_reg(AS_type::Xn, XXnret)));
            as_list.push_back(AS_Binop(AS_binopkind::ADD_, new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::Xn, XXnret), base_reg));

            as_list.push_back(AS_Binop(AS_binopkind::ADD_, base_reg, dst_reg, new AS_reg(AS_type::Xn, gep->new_ptr->u.TEMP->num)));
        }
        else{
            // 函数参数
            as_list.push_back(AS_Binop(AS_binopkind::ADD_, new AS_reg(AS_type::Xn, gep->base_ptr->u.TEMP->num), dst_reg, new AS_reg(AS_type::Xn, gep->new_ptr->u.TEMP->num)));
        }
    }else if(gep->base_ptr->kind == OperandKind::NAME){
        AS_reg *base_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.push_back(AS_Adr(new AS_label(gep->base_ptr->u.NAME->name->name), base_reg));

        as_list.push_back(AS_Binop(AS_binopkind::ADD_, base_reg, dst_reg, new AS_reg(AS_type::Xn, gep->new_ptr->u.TEMP->num)));
    } else {
        Error("错误的base_ptr");
    }
}

void llvm2asmStm(list<AS_stm *> &as_list, L_stm &stm, L_func &func)
{

    if (!alloc_frame && stm.type != L_StmKind::T_LABEL)
    {
        new_frame(as_list, func);
        alloc_frame = true;
    }

    switch (stm.type)
    {
    case L_StmKind::T_BINOP:
    {
        llvm2asmBinop(as_list, &stm);
        break;
    }
    case L_StmKind::T_LOAD:
    {
        llvm2asmLoad(as_list, &stm);
        break;
    }
    case L_StmKind::T_STORE:
    {
        llvm2asmStore(as_list, &stm);
        break;
    }
    case L_StmKind::T_LABEL:
    {
        auto label = new AS_label(stm.u.LABEL->label->name);
        as_list.push_back(AS_Label(label));
        break;
    }
    case L_StmKind::T_JUMP:
    {
        auto label = new AS_label(stm.u.JUMP->jump->name);
        as_list.push_back(AS_B(label));
        break;
    }
    case L_StmKind::T_CMP:
    {
        llvm2asmCmp(as_list, &stm);
        break;
    }
    case L_StmKind::T_CJUMP:
    {
        llvm2asmCJmp(as_list, &stm);
        break;
    }
    case L_StmKind::T_MOVE:
    {
        llvm2asmMov(as_list, &stm);
        break;
    }
    case L_StmKind::T_CALL:
    {
        llvm2asmCall(as_list, &stm);
        break;
    }
    case L_StmKind::T_VOID_CALL:
    {
        llvm2asmVoidCall(as_list, &stm);
        break;
    }
    case L_StmKind::T_RETURN:
    {
        llvm2asmRet(as_list, &stm);
        break;
    }
    case L_StmKind::T_ALLOCA:
    {
        // Do nothing
        break;
    }
    case L_StmKind::T_GEP:
    {

        llvm2asmGep(as_list, &stm);

        break;
    }
    case L_StmKind::T_PHI:
    {
        //TODO: 特殊处理
        break;
    }
    case L_StmKind::T_NULL:
    {
        // Do nothing
        break;
    }
    }
    // TODO 还需要处理吗
}

/**
 * @brief 保存caller-save寄存器
 */
int save_register(list<AS_stm *> &as_list)
{
    int sub = 0;
    for (auto it = allocateRegs.begin(); it != allocateRegs.end(); ++it)
    {
        // 获取当前元素
        int first = *it;
        ++it; // 移动到下一个元素

        // 检查是否有下一个元素
        if (it != allocateRegs.end())
        {
            int second = *it;
            as_list.push_back(AS_Stp(new AS_reg(AS_type::Xn, first), new AS_reg(AS_type::Xn, second), sp, -2 * INT_LENGTH));
            sub += 2 * INT_LENGTH;
        }
        else
        {
            // 如果`set`中的元素个数是奇数，最后一个元素将单独处理
            as_list.push_back(AS_Str(new AS_reg(AS_type::Xn, first), sp, -INT_LENGTH));
            sub += INT_LENGTH;
            break;
        }
    }
    as_list.push_back(AS_Stp(new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::Xn, XnLR), sp, -2 * INT_LENGTH));
    sub += 2 * INT_LENGTH;
    return sub;
}

/**
 * @brief 从栈中按顺序加载保存的寄存器
 * @brief save_register的反操作，用于函数调用
 */
void load_register(list<AS_stm *> &as_list)
{
    as_list.push_back(AS_Ldp(new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::Xn, XnLR), sp, 2*INT_LENGTH));
    
    // 按存储顺序加载
    list<AS_stm*> load_stms;
    for(auto it = allocateRegs.begin(); it != allocateRegs.end(); ++it){
        int first = *it;
        ++it;

        if(it != allocateRegs.end()){
            int second = *it;
            load_stms.push_back(AS_Ldp(new AS_reg(AS_type::Xn, first), new AS_reg(AS_type::Xn, second), sp, 2*INT_LENGTH));
        }
        else {
            load_stms.push_back(AS_Ldr(new AS_reg(AS_type::Xn, first), sp, INT_LENGTH));
            break;
        }
    }

    // 逆序放入as_list
    for (auto it = load_stms.rbegin(); it != load_stms.rend(); ++it){
        as_list.push_back(*it);
    }
}

/**
 * @brief 将AS_operand加载到AS_reg中
 * @note 仅支持ICONST和TEMP
 * @example 
        //  call void @_sysy_starttime(i32 97)
        mov     x9, #97
        mov     x0, x9
    @example
        //  call void @putint(i32 %r247)
        mov     x0, x9
    @example
        //  %r247 = call i32 @same(i32 %r315, i32 %r316)
        mov     x0, x10
        mov     x1, x9
 */
AS_reg* getCalls(AS_operand *as_operand, list<AS_stm *> &as_list)
{
    // 一个工具函数，应该实现将局部变量（这里应该只会出现数组、结构体地址）、全局变量、临时变量加载到目标op_reg等待使用
    AS_reg* op_reg;
    switch(as_operand->kind){
        case OperandKind::ICONST:{
            op_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
            // as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, as_operand->u.ICONST), op_reg));
            movImm(as_operand->u.ICONST, op_reg, as_list);
            break;
        }
        case OperandKind::NAME: {
            Error("getCall NAME");
        }
        case OperandKind::TEMP: {
            // TODO 四种可能是否需要处理
            op_reg = new AS_reg(AS_type::Xn, as_operand->u.TEMP->num);
            break;
        }
        default:{
            Error("操作数类型异常");
        }
    }
    return op_reg;
}

/**
 * @brief 函数调用参数获取
 */
AS_reg* funcCalls(AS_operand *as_operand, list<AS_stm *> &as_list)
{
    // 一个工具函数，应该实现将局部变量（这里应该只会出现数组、结构体地址）、全局变量、临时变量加载到目标op_reg等待使用
    AS_reg* op_reg;
    switch(as_operand->kind){
        case OperandKind::ICONST:{
            op_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
            // as_list.push_back(AS_Mov(new AS_reg(AS_type::IMM, as_operand->u.ICONST), op_reg));
            movImm(as_operand->u.ICONST, op_reg, as_list);
            break;
        }
        case OperandKind::NAME: {
            // NAME只可能出现在load和store中，因为ast2llvm时对于变量都是使用前先load然后更新后直接store
            // 理论上函数参数和返回值不应该到这里
            op_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
            as_list.push_back(AS_Adr(new AS_label(as_operand->u.NAME->name->name), op_reg));
            break;
        }
        case OperandKind::TEMP: {
            // TODO 四种可能是否需要处理
            op_reg = new AS_reg(AS_type::Xn, as_operand->u.TEMP->num);
            if(as_operand->u.TEMP->type == TempType::STRUCT_PTR && as_operand->u.TEMP->len == 0){
                // 普通结构体
                int offset = fpOffset[as_operand->u.TEMP->num]->imm;
                as_list.push_back(AS_Binop(AS_binopkind::ADD_, new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::IMM, offset), op_reg));
            }
            break;
        }
        default:{
            Error("操作数类型异常");
        }
    }
    return op_reg;
}

/**
 * @brief 中间代码voidcall的调用翻译
 */
void llvm2asmVoidCall(list<AS_stm *> &as_list, L_stm *call)
{

    for (int i = 0; i < 8 && i < call->u.VOID_CALL->args.size(); i++)
    {
        AS_reg *param = funcCalls(call->u.VOID_CALL->args[i], as_list);
        as_list.emplace_back(AS_Mov(param, new AS_reg(AS_type::Xn, paramRegs[i])));
    }
    vector<AS_reg *> abcd;
    for (int i = 8; i < call->u.VOID_CALL->args.size(); i++)
    {
        Error("没有这个测试用例，不用这种情况考虑。");
    }
    save_register(as_list);
    as_list.push_back(AS_Mov(sp, new AS_reg(AS_type::Xn, XnFP)));
    as_list.emplace_back(AS_Bl(new AS_label(call->u.VOID_CALL->fun)));
    load_register(as_list);
}

/**
 * @brief 中间代码函数调用翻译
 */
void llvm2asmCall(list<AS_stm *> &as_list, L_stm *call)
{

    for (int i = 0; i < 8 && i < call->u.CALL->args.size(); i++)
    {
        AS_reg *param = funcCalls(call->u.CALL->args[i], as_list);

        as_list.emplace_back(AS_Mov(param, new AS_reg(AS_type::Xn, paramRegs[i])));
    }
    if (call->u.CALL->args.size() > 8)
    {
        as_list.push_back(AS_Mov(sp, new AS_reg(AS_type::Xn, XXna)));
        int sub = save_register(as_list);
        as_list.push_back(AS_Mov(new AS_reg(AS_type::Xn, XXna), sp));

        int param_sub = 0;
        for (int i = call->u.CALL->args.size() - 1; i >= 8; i--)
        {
            AS_reg *param = funcCalls(call->u.CALL->args[i], as_list);
            param_sub += INT_LENGTH;
            if (-sub - param_sub < -256)
            {
                auto temp = new AS_reg(AS_type::Xn, XXnb);
                as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, -sub - param_sub), temp));

                as_list.emplace_back(AS_Str(param, new AS_reg(AS_type::ADR, new AS_address(sp, temp))));
            }
            else
            {
                as_list.emplace_back(AS_Str(param, new AS_reg(AS_type::ADR, new AS_address(sp, -sub - param_sub))));
            }
        }
        as_list.emplace_back(AS_Binop(AS_binopkind::SUB_, sp, new AS_reg(AS_type::IMM, sub + param_sub), sp));
    }
    else
    {
        save_register(as_list);
    }
    // 设置帧指针
    as_list.push_back(AS_Mov(sp, new AS_reg(AS_type::Xn, XnFP)));

    as_list.emplace_back(AS_Bl(new AS_label(call->u.CALL->fun)));
    if (call->u.CALL->args.size() > 8)
    {
        as_list.emplace_back(AS_Binop(AS_binopkind::ADD_, sp, new AS_reg(AS_type::IMM, (call->u.CALL->args.size() - 8) * INT_LENGTH), sp));
    }
    load_register(as_list);
    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::Xn, XXnret), new AS_reg(AS_type::Xn, call->u.CALL->res->u.TEMP->num)));
}

void allocReg(list<AS_stm *> &as_list, L_func &func)
{
    list<InstructionNode *> liveness;

    forwardLivenessAnalysis(liveness, as_list);

    livenessAnalysis(liveness, as_list);
}

struct BLOCKPHI
{
    string label;
    L_stm *phi;
    BLOCKPHI(string _label, L_stm *_phi) : label(_label), phi(_phi) {}
};

/**
 * @brief 翻译函数定义到汇编代码
 */
AS_func *llvm2asmFunc(L_func &func)
{
    list<AS_stm *> stms;
    auto p = new AS_func(stms);

    // 函数label
    auto func_label = new AS_label(func.name);
    p->stms.push_back(AS_Label(func_label));

    // 打印alloca信息
    for (auto &x : fpOffset)
    {
        std::ostringstream oss;
        oss << x.first << ":" << printAS_add(x.second).c_str() << endl;
        p->stms.push_back(AS_Llvmir(oss.str()));
    }

    list<BLOCKPHI *> phi;
    unordered_map<string, list<AS_stm *>::iterator> block_map;
    string temp_label = "";
    for (const auto &block : func.blocks)
    {
        for (const auto &instr : block->instrs)
        {
            std::ostringstream oss;
            printL_stm(oss, instr);
            p->stms.push_back(AS_Llvmir(oss.str()));
            llvm2asmStm(p->stms, *instr, func);
            if (instr->type == L_StmKind::T_PHI)
            {
                phi.push_back(new BLOCKPHI(temp_label, instr));
            }
            if (instr->type == L_StmKind::T_LABEL)
            {
                temp_label = instr->u.LABEL->label->name;
            }
            if (temp_label.length() > 0)
            {
                // p->stms最后一个元素
                block_map[temp_label] = --p->stms.end();
            }
        }
    }

    // 处理PHI语句
    for(BLOCKPHI *block_phi:phi){
        L_phi *phi = block_phi->phi->u.PHI;
        for(auto pair:phi->phis){
            AS_operand* operand = pair.first;
            Temp_label* temp_label = pair.second;

            // 找到label对应的块的最后一行
            list<AS_stm *>::iterator last_iterator = block_map[temp_label->name];
            list<AS_stm *>::iterator last_two_iterator = std::prev(last_iterator);

            // while(last_two_iterator != nullptr && ((*last_two_iterator)->type == AS_stmkind::B || (*last_two_iterator)->type == AS_stmkind::BL || (*last_two_iterator)->type == AS_stmkind::BCOND)){
            //     last_iterator = std::prev(last_iterator);
            //     last_two_iterator = std::prev(last_iterator);
            // }

            if((*last_two_iterator)->type == AS_stmkind::B || (*last_two_iterator)->type == AS_stmkind::BL || (*last_two_iterator)->type == AS_stmkind::BCOND){
                p->stms.insert(last_two_iterator, AS_Mov(new AS_reg(AS_type::Xn, operand->u.TEMP->num), new AS_reg(AS_type::Xn, phi->dst->u.TEMP->num)));
            }
            else {
                p->stms.insert(last_iterator, AS_Mov(new AS_reg(AS_type::Xn, operand->u.TEMP->num), new AS_reg(AS_type::Xn, phi->dst->u.TEMP->num)));
            }
            
        }
    }

    allocReg(p->stms, func);
    return p;
}

void llvm2asmDecl(vector<AS_decl *> &decls, L_def &def)
{
    switch (def.kind)
    {
        case L_DefKind::GLOBAL:
        {
            return;
        }
        case L_DefKind::FUNC:
        {
            AS_decl *decl = new AS_decl(def.u.FUNC->name);
            decls.push_back(decl);
            break;
        }
        case L_DefKind::SRT:
        {
            return;
        }
    }
}

/**
 * @brief 全局变量初始化
 */
void llvm2asmGlobal(vector<AS_global *> &globals, L_def &def)
{
    switch (def.kind)
    {
        case L_DefKind::GLOBAL:
        {
            L_globaldef* globaldef = def.u.GLOBAL;
            AS_label* label = new AS_label(globaldef->name);
            
            int init = 0;
            int len = globaldef->def.len;
            if(globaldef->def.kind == TempType::INT_TEMP){
                if(globaldef->init.size() >0){
                    init = globaldef->init[0];
                    len = 1;
                }
                else {
                    init = 0;
                    len = 1;
                }
            }
            else if(globaldef->def.kind == TempType::INT_PTR){
                len = globaldef->def.len*INT_LENGTH;
            }
            else if(globaldef->def.kind == TempType::STRUCT_TEMP){
                len = structLayout[globaldef->def.structname]->size;
            }else {
                //  TempType::STRUCT_PTR
                len = structLayout[globaldef->def.structname]->size*globaldef->def.len;
            }

            globals.push_back(new AS_global(label, init, len));
            break;
        }
        case L_DefKind::FUNC:
        {
            return;
        }
        case L_DefKind::SRT:
        {
            return;
        }
    }
}

/**
 * @brief 中间代码翻译成汇编的入口函数
 */
AS_prog *llvm2asm(L_prog &prog)
{
    std::vector<AS_global *> globals;
    std::vector<AS_decl *> decls;
    std::vector<AS_func *> func_list;

    auto as_prog = new AS_prog(globals, decls, func_list);

    structLayoutInit(prog.defs);

    // translate function decl
    for (const auto &def : prog.defs)
    {
        llvm2asmDecl(as_prog->decls, *def);
    }

    for (const auto &func : prog.funcs)
    {
        AS_decl *decl = new AS_decl(func->name);
        as_prog->decls.push_back(decl);
    }

    // translate global data
    for (const auto &def : prog.defs)
    {
        llvm2asmGlobal(as_prog->globals, *def);
    }

    // translate each llvm function

    for (const auto &func : prog.funcs)
    {
        alloc_frame = false;

        set_stack(*func);

        as_prog->funcs.push_back(llvm2asmFunc(*func));

        fpOffset.clear();
    }

    return as_prog;
}
