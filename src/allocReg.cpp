#include "allocReg.h"
using namespace std;
using namespace ASM;
#include <cassert>
#include <stack>
using namespace GRAPH;
#include "printASM.h"
#include "register_rules.h"
#include <sstream>
#include <iostream>
#include "printASM.h"
stack<Node<RegInfo> *> reg_stack;

/**
 * @brief 获得一条语句定义、使用的所有寄存器
 */
void getAllRegs(AS_stm *stm, vector<AS_reg *> &defs, vector<AS_reg *> &uses)
{
    switch (stm->type)
    {
    case AS_stmkind::BINOP:
        getDefReg(stm->u.BINOP->dst, defs);
        getUseReg(stm->u.BINOP->left, uses);
        getUseReg(stm->u.BINOP->right, uses);
        break;
    case AS_stmkind::MOV:
        getDefReg(stm->u.MOV->dst, defs);
        getUseReg(stm->u.MOV->src, uses);
        break;
    case AS_stmkind::LDR:
        getDefReg(stm->u.LDR->dst, defs);
        getUseReg(stm->u.LDR->ptr, uses);
        break;
    case AS_stmkind::STR:
        getUseReg(stm->u.STR->src, uses);
        getUseReg(stm->u.STR->ptr, uses);
        break;
    case AS_stmkind::CMP:
        getUseReg(stm->u.CMP->left, uses);
        getUseReg(stm->u.CMP->right, uses);
        break;
    case AS_stmkind::ADR:
        getDefReg(stm->u.ADR->reg, defs);
        break;
    default:
        break;
    }
}

void getDefReg(AS_reg *reg, vector<AS_reg *> &defs)
{
    if (!reg)
    {
        return;
    }
    switch (reg->type)
    {
    case AS_type::Xn:
    {
        defs.push_back(reg);
        break;
    }
    case AS_type::ADR:
    {
        assert(0);
    }

    default:
        break;
    }
}

void getUseReg(AS_reg *reg, vector<AS_reg *> &uses)
{
    if (!reg)
    {
        return;
    }
    switch (reg->type)
    {
    case AS_type::Xn:
    {
        uses.push_back(reg);
        break;
    }
    case AS_type::ADR:
    {
        if (reg->u.add->base->type == AS_type::Xn)
        {
            uses.push_back(reg->u.add->base);
        }
        if (reg->u.add->reg)
        {
            uses.push_back(reg->u.add->reg);
        }
        break;
    }

    default:
        break;
    }
}

/**
 * @brief 为单个节点染色的函数
 */
void vreg_map(AS_reg *reg, unordered_map<int, Node<RegInfo> *> &regNodes)
{
    switch (reg->type)
    {
    case AS_type::Xn:
    {
        int regNo = reg->u.offset;
        if (regNo < 100)
            return;
        reg->u.offset = regNodes[regNo]->info.color;
        break;
    }
    case AS_type::ADR:
    {
        assert(0);
    }
    default:
        break;
    }
};

void forwardLivenessAnalysis(std::list<InstructionNode *> &liveness, std::list<AS_stm *> &as_list)
{
    // blocks记录每个代码块开头的label语句对应的InstuctionNode
    unordered_map<string, InstructionNode *> blocks;
    for (const auto &stm : as_list)
    {
        InstructionNode *node = new InstructionNode(stm, {}, {}, {}, {});
        liveness.push_back(node);
        vector<AS_reg *> defs;
        vector<AS_reg *> uses;

        // 记录一条指令所有相关的寄存器
        switch (stm->type)
        {
        case AS_stmkind::LABEL:
            blocks.emplace(stm->u.LABEL->name, node);
        default:
            getAllRegs(stm, defs, uses);
            break;
        }

        // 保留所有待分配的寄存器
        for (auto &x : defs)
        {
            if (x->u.offset >= 100)
            {
                node->def.emplace(x->u.offset);
            }
            assert(x->type != AS_type::ADR);
        }

        for (auto &x : uses)
        {
            if (x->u.offset >= 100)
            {
                node->use.emplace(x->u.offset);
            }
            assert(x->type != AS_type::ADR);
        }
    }

    // 构造控制流图
    setControlFlowDiagram(liveness, blocks);
}

/**
 * @brief 构造控制流图
 */
void setControlFlowDiagram(std::list<InstructionNode *> &nodes, unordered_map<string, InstructionNode *> &blocks)
{
    for (auto it = nodes.begin(); it != nodes.end(); ++it)
    {
        InstructionNode *currentNode = *it; // 当前节点
        InstructionNode *nextNode = nullptr;
        auto nextIt = std::next(it); // 获取下一个元素的迭代器
        if (nextIt != nodes.end())
        {
            nextNode = *nextIt; // 如果存在下一个节点，则获取它
        }
        switch (currentNode->raw->type)
        {
        case AS_stmkind::RET:

            break;
        case AS_stmkind::B:
            currentNode->sucessor.emplace(blocks[currentNode->raw->u.B->jump->name]);
            break;
        case AS_stmkind::BCOND:
            currentNode->sucessor.emplace(blocks[currentNode->raw->u.BCOND->jump->name]);
            if (nextNode)
            {
                currentNode->sucessor.emplace(nextNode);
            }
            break;
        default:
            if (nextNode)
            {
                currentNode->sucessor.emplace(nextNode);
            }
            break;
        }
    }
}

void init(std::list<InstructionNode *> &nodes, unordered_map<int, Node<RegInfo> *> &regNodes, Graph<RegInfo> &interferenceGraph, std::list<ASM::AS_stm *> &as_list)
{
    assert(reg_stack.empty());
    bool changed;

    int set_size = 0;
    // 活跃分析
    do
    {
        changed = false;
        for (auto it = nodes.rbegin(); it != nodes.rend(); ++it)
        {
            InstructionNode *n = *it;
            n->previous_in = n->in;
            n->previous_out = n->out;

            // out = U{succ的in}
            if (n->sucessor.size())
                for (InstructionNode *s : n->sucessor)
                {
                    n->out.insert(s->in.begin(), s->in.end());
                }
            n->in.clear();
            // in = out - def + use
            // in = out - def
            std::set_difference(n->out.begin(), n->out.end(), n->def.begin(), n->def.end(), std::inserter(n->in, n->in.end()));
            // in = in + use
            n->in.insert(n->use.begin(), n->use.end());
            set_size += n->in.size();
            if (n->in != n->previous_in || n->out != n->previous_out)
            {
                changed = true;
            }
        }

    } while (changed);
    set<int> regs;
    set<int> defs;
    set<int> uses;

    // 获取整个代码，所有用到的定义的和使用的寄存器
    for (auto &x : nodes)
    {
        defs.insert(x->def.begin(), x->def.end());
        uses.insert(x->use.begin(), x->use.end());
    }

    // 获取整个代码所有涉及的寄存器
    regs.insert(defs.begin(), defs.end());
    regs.insert(uses.begin(), uses.end());

    // 初始化冲突图
    for (auto x : regs)
    {
        regNodes.insert({x, interferenceGraph.addNode({x, x, 0, 0, 0})});
    }

    for (auto x : nodes)
    {
        std::vector<int> vec(x->in.begin(), x->in.end());
        for (int i = 0; i < vec.size(); i++)
        {
            for (int j = i + 1; j < vec.size(); j++)
            {
                interferenceGraph.addEdge(regNodes[vec[i]], regNodes[vec[j]]);
                interferenceGraph.addEdge(regNodes[vec[j]], regNodes[vec[i]]);
            }
        }
    }

    // 打印干扰图的边,并设置节点度数
    // std::cerr << "Interference Graph Edges:" << std::endl;
    auto nodes_ = interferenceGraph.nodes();
    for (auto &nodePair : *nodes_)
    {
        Node<RegInfo> *node = nodePair.second;
        NodeSet *successors = node->succ();
        node->info.degree = successors->size();

        // std::cerr << "Reg " << node->nodeInfo().regNum << " interferes with " << successors->size() << " Regs: ";
        // if (successors->size())
        // {
        //     for (int succKey : *successors)
        //     {
        //         std::cerr << interferenceGraph.mynodes[succKey]->info.regNum << " ";
        //     }
        // }

        // std::cerr << std::endl;
    }
    // 删除不使用的指令
    std::set<int> to_delete;
    std::set_difference(defs.begin(), defs.end(), uses.begin(), uses.end(), std::inserter(to_delete, to_delete.end()));

    for (auto &x : nodes)
        delete x;

    for (auto it = as_list.begin(); it != as_list.end();)
    {
        vector<AS_reg *> defs;
        vector<AS_reg *> uses;
        getAllRegs(*it, defs, uses);
        int n = 0;
        if (defs.size() > 0)
        {
            int regNo = defs.front()->u.offset;
            if (to_delete.find(regNo) != to_delete.end())
            {
                it = as_list.erase(it);
                continue;
            }
        }
        it++;
    }
}

/**
 * @brief 寄存器分配
 */
void livenessAnalysis(std::list<InstructionNode *> &nodes, std::list<ASM::AS_stm *> &as_list)
{
    Graph<RegInfo> interferenceGraph;
    unordered_map<int, Node<RegInfo> *> regNodes;//虚拟器寄存器根据编号到干扰图上的映射
    init(nodes, regNodes, interferenceGraph, as_list);

    // 图染色实现
    int k = allocateRegs.size();

    int processed_number = 0;    
    while(processed_number<interferenceGraph.nodes()->size()){
        // simplify
        bool changed = true;
        while(changed){
            changed = false;
            auto nodes_ = interferenceGraph.nodes();
            for (auto &nodePair : *nodes_){
                Node<RegInfo> *node = nodePair.second;
                
                if (node->info.degree < k && !node->info.bit_map){
                    reg_stack.push(node);
                    node->info.bit_map = true;
                    node->info.is_spill = false;
                    processed_number++;
                    for (int succKey : *node->succ()){
                        Node<RegInfo> *succ = interferenceGraph.mynodes[succKey];
                        succ->info.degree--;
                    }
                    changed = true;
                }
            }
        }

        // potential spill
        for(auto pair:*interferenceGraph.nodes()){
            Node<RegInfo> *node = pair.second;
            if(node->info.degree >= k && !node->info.bit_map){
                node->info.is_spill = true;
                node->info.bit_map = true;
                processed_number++;
                reg_stack.push(node);
                for(auto succKey:*node->succ()){
                    Node<RegInfo> *succ = interferenceGraph.mynodes[succKey];
                    succ->info.degree--;
                }
            }
        }
    }

    // select
    vector<Node<RegInfo>*> spill_reg;
    while(!reg_stack.empty()){
        Node<RegInfo>* node = reg_stack.top();
        reg_stack.pop();
        
        set<int> colors;
        for(auto x : allocateRegs){
            colors.insert(x);
        }

        for(auto succKey:*node->succ()){
            Node<RegInfo>* succ = interferenceGraph.mynodes[succKey];
            if(colors.find(succ->info.color) != colors.end()){
                colors.erase(succ->info.color);
            }
        }
        
        if(colors.size() == 0){
            node->info.is_spill = true;
            spill_reg.push_back(node);
        }
        else{
            node->info.is_spill = false;
            node->info.bit_map = true;
            node->info.color = *colors.begin();
        }
    }

    // color
    for(AS_stm *stmt:as_list){
        vector<AS_reg*> defs, uses;
        getAllRegs(stmt, defs, uses);

        for(AS_reg* def:defs){
            if(def->u.offset<100)
                continue;
            
            if(!regNodes.at(def->u.offset)->info.is_spill)
                vreg_map(def, regNodes);
        }

        for(AS_reg* use:uses){
            if(use->u.offset<100)
                continue;
            
            if(!regNodes.at(use->u.offset)->info.is_spill)
                vreg_map(use, regNodes);
        }
    }
    if(spill_reg.size()==0)
        return;

    // actual spill
    AS_reg *sp = new AS_reg(AS_type::SP, -1);
    int offset = spill_reg.size() * INT_LENGTH;

    // TODO 插入的位置不能是静态的
    list<AS_stm*>::iterator it = as_list.begin();
    advance(it, 6);
    as_list.insert(it, AS_Binop(AS_binopkind::SUB_, sp, new AS_reg(AS_type::IMM, offset), sp));

    // 保存偏移量
    unordered_map<int, int> offset_map;
    for(int i = 0;i<spill_reg.size();i++){
        offset_map[spill_reg[i]->info.regNum] = i*INT_LENGTH;
    }

    for(auto iter=as_list.begin(); iter!=as_list.end(); iter++){
        AS_stm* stm = *iter;

        vector<AS_reg*> defs, uses;
        getAllRegs(stm, defs, uses);

        set<int> spill_regs = {16, 17, 18, 19};

        for(AS_reg* use:uses){
            if(use->u.offset<100)
                continue;
            if(regNodes[use->u.offset]->info.is_spill == true){
                int offset = offset_map[use->u.offset];
                AS_address* address = new AS_address(sp, offset);
                AS_reg* ptr = new AS_reg(AS_type::ADR, address);

                int regNo = *spill_regs.begin();
                spill_regs.erase(regNo);
                use->u.offset = regNo;

                as_list.insert(iter, AS_Ldr(use, ptr));
            }
        }

        for(AS_reg* def:defs){
            if(def->u.offset<100)
                continue;
            if(regNodes[def->u.offset]->info.is_spill == true){
                int offset = offset_map[def->u.offset];
                AS_address* address = new AS_address(sp, offset);
                AS_reg* ptr = new AS_reg(AS_type::ADR, address);

                int regNo = *spill_regs.begin();
                spill_regs.erase(regNo);
                def->u.offset = regNo;

                as_list.insert(std::next(iter), AS_Str(def, ptr));
            }
        }
    }

}