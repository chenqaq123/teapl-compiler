#ifndef __AST2LLVM
#define __AST2LLVM

#include "temp.h"
#include "llvm_ir.h"
#include "TeaplaAst.h"
#include <vector>
#include <string>
#include <unordered_map>
#include <list>

struct MemberInfo
{
    int offset;
    TempDef def;
    MemberInfo(int off = 0,TempDef d = TempDef())
        : offset(off), def(d) {}
};

struct StructInfo
{
    std::unordered_map<std::string,MemberInfo> memberinfos;
};

struct Func_local
{
    std::string name;
    LLVMIR::FuncType ret;
    std::vector<Temp_temp*> args;
    std::list<LLVMIR::L_stm*> irs;
    Func_local(const std::string _name,LLVMIR::FuncType _ret,const std::vector<Temp_temp*> &_args,const std::list<LLVMIR::L_stm*> &_irs)
        : name(_name), ret(_ret), args(_args), irs(_irs) {}
};

std::vector<LLVMIR::L_def*> ast2llvmProg_first(aA_program p);
std::vector<Func_local*> ast2llvmProg_second(aA_program p);
Func_local* ast2llvmFunc(aA_fnDef f);
void ast2llvmBlock(aA_codeBlockStmt b,Temp_label *con_label,Temp_label *bre_label, std::vector<string> &vector);
AS_operand* ast2llvmRightVal(aA_rightVal r);
AS_operand* ast2llvmLeftVal(aA_leftVal l);
AS_operand* ast2llvmIndexExpr(aA_indexExpr index);
AS_operand* ast2llvmBoolExpr(aA_boolExpr b,Temp_label *true_label = nullptr,Temp_label *false_label = nullptr);
void ast2llvmBoolBiOpExpr(aA_boolBiOpExpr b,Temp_label *true_label,Temp_label *false_label);
void ast2llvmBoolUOpExpr(aA_boolUOpExpr b,Temp_label *true_label,Temp_label *false_label);
void ast2llvmBoolUnit(aA_boolUnit b,Temp_label *true_label,Temp_label *false_label);
void ast2llvmComOpExpr(aA_comExpr c,Temp_label *true_label,Temp_label *false_label);
AS_operand* ast2llvmArithBiOpExpr(aA_arithBiOpExpr a);
AS_operand* ast2llvmArithUExpr(aA_arithUExpr a);
AS_operand* ast2llvmArithExpr(aA_arithExpr a);
AS_operand* ast2llvmExprUnit(aA_exprUnit e);

LLVMIR::L_prog* ast2llvm(aA_program p);
LLVMIR::L_func* ast2llvmFuncBlock(Func_local *f);
void ast2llvm_moveAlloca(LLVMIR::L_func *f);

int ast2llvmRightVal_first(aA_rightVal r);
int ast2llvmBoolExpr_first(aA_boolExpr b);
int ast2llvmBoolBiOpExpr_first(aA_boolBiOpExpr b);
int ast2llvmBoolUOpExpr_first(aA_boolUOpExpr b);
int ast2llvmBoolUnit_first(aA_boolUnit b);
int ast2llvmComOpExpr_first(aA_comExpr c);
int ast2llvmArithBiOpExpr_first(aA_arithBiOpExpr a);
int ast2llvmArithUExpr_first(aA_arithUExpr a);
int ast2llvmArithExpr_first(aA_arithExpr a);
int ast2llvmExprUnit_first(aA_exprUnit e);


void alloc(AS_operand* res);
void loadAndStore(AS_operand *dst_ptr, AS_operand *src);
void retVoid();
void retVal(AS_operand *ret);
void jump(Temp_label *label);
void gep(AS_operand *new_ptr, AS_operand *base_ptr, AS_operand *index);
void label(Temp_label*);
void store(AS_operand* src, AS_operand *dst);
void load(AS_operand *dst, AS_operand *src);
void cmp(LLVMIR::L_relopKind kind,  AS_operand *left, AS_operand *right, AS_operand *dst);
void cjump(AS_operand *con, Temp_label *true_label, Temp_label *false_label);
void binop(LLVMIR::L_binopKind kind, AS_operand *left, AS_operand *right, AS_operand *dst);

void ast2llvmStmtvarDecl(aA_varDeclStmt s, std::vector<string> &tempVector);
void ast2llvmStmtassign(aA_assignStmt s);
void ast2llvmStmtcall(aA_callStmt s);
AS_operand *loadFunParams(AS_operand *left, TempDef &tempdef);
AS_operand *ast2llvmfnCall(aA_fnCall fnCall);
void ast2llvmStmtif(aA_ifStmt s, Temp_label *con_label, Temp_label *bre_label);
void ast2llvmStmtwhile(aA_whileStmt s);
void ast2llvmStmtreturn(aA_returnStmt s);


AS_operand *ast2llvmArray(aA_arrayExpr arrExpr);
AS_operand *ast2llvmMember(aA_memberExpr memberExpr);
AS_operand *ast2llvmId(string id);

AS_operand *MyLoad(AS_operand *left);

#endif