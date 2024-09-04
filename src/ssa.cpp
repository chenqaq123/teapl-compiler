#include "ssa.h"
#include <cassert>
#include <iostream>
#include <list>
#include <stack>
#include <string>
#include <algorithm>
#include <unordered_map>
#include <unordered_set>
#include <vector>
#include "bg_llvm.h"
#include "graph.hpp"
#include "liveness.h"
#include "printLLVM.h"

using namespace std;
using namespace LLVMIR;
using namespace GRAPH;
struct imm_Dominator {
    LLVMIR::L_block* pred;
    unordered_set<LLVMIR::L_block*> succs;
};

unordered_map<L_block*, unordered_set<L_block*>> dominators;
unordered_map<L_block*, imm_Dominator> tree_dominators;
unordered_map<L_block*, unordered_set<L_block*>> DF_array;
unordered_map<L_block*, Node<LLVMIR::L_block*>*> revers_graph;
// 寄存器到操作数的映射
unordered_map<Temp_temp*, AS_operand*> temp2ASoper;

static void init_table() {
    dominators.clear();
    tree_dominators.clear();
    DF_array.clear();
    revers_graph.clear();
    temp2ASoper.clear();
}

LLVMIR::L_prog* SSA(LLVMIR::L_prog* prog) {
    for (auto& fun : prog->funcs) {
        init_table();
        combine_addr(fun);
        // 将标量放入寄存器
        mem2reg(fun);
        auto RA_bg = Create_bg(fun->blocks);
        SingleSourceGraph(RA_bg.mynodes[0], RA_bg,fun);
        // Show_graph(stdout,RA_bg);
        // 活跃分析
        Liveness(RA_bg.mynodes[0], RA_bg, fun->args);
        // 支配节点
        Dominators(RA_bg);
        // printf_domi();
        // 支配树
        tree_Dominators(RA_bg);
        // printf_D_tree();
        // 默认0是入口block
        // 支配边界
        computeDF(RA_bg, RA_bg.mynodes[0]);
        // printf_DF();
        // 插入phi函数
        Place_phi_fu(RA_bg, fun);
        // 重命名
        Rename(RA_bg);
        combine_addr(fun);
    }
    return prog;
}

/**
 * @note 判断一条语句是否是alloc且是否是分配在栈上的标量
*/
static bool is_mem_variable(L_stm* stm) {
    return stm->type == L_StmKind::T_ALLOCA && stm->u.ALLOCA->dst->kind == OperandKind::TEMP && stm->u.ALLOCA->dst->u.TEMP->type == TempType::INT_PTR && stm->u.ALLOCA->dst->u.TEMP->len == 0;
}

// 保证相同的AS_operand,地址一样 。常量除外
void combine_addr(LLVMIR::L_func* fun) {
    unordered_map<Temp_temp*, unordered_set<AS_operand**>> temp_set;
    unordered_map<Name_name*, unordered_set<AS_operand**>> name_set;
    for (auto& block : fun->blocks) {
        for (auto& stm : block->instrs) {
            auto AS_operand_list = get_all_AS_operand(stm);
            for (auto AS_op : AS_operand_list) {
                if ((*AS_op)->kind == OperandKind::TEMP) {
                    temp_set[(*AS_op)->u.TEMP].insert(AS_op);
                } else if ((*AS_op)->kind == OperandKind::NAME) {
                    name_set[(*AS_op)->u.NAME].insert(AS_op);
                }
            }
        }
    }
    for (auto temp : temp_set) {
        AS_operand* fi_AS_op = **temp.second.begin();
        for (auto AS_op : temp.second) {
            *AS_op = fi_AS_op;
        }
    }
    for (auto name : name_set) {
        AS_operand* fi_AS_op = **name.second.begin();
        for (auto AS_op : name.second) {
            *AS_op = fi_AS_op;
        }
    }
}

void mem2reg(LLVMIR::L_func* fun) {
    // 将alloca语句转换为move
    for(auto block : fun->blocks){
        for(auto it = block->instrs.begin(); it!=block->instrs.end(); it++){
            L_stm* stm = *it;
            if(is_mem_variable(stm)){
                Temp_temp *new_temp = Temp_newtemp_int();
                AS_operand *new_oper = AS_Operand_Temp(new_temp);

                // 将旧的temp映射到新的temp
                temp2ASoper[stm->u.ALLOCA->dst->u.TEMP] = new_oper;
                
                // 默认值为0
                *it = L_Move(AS_Operand_Const(0), new_oper);
            }
        }
    }

    // 记录将栈上的标量load到的寄存器，然后在普通语句中进行替换
    unordered_map<Temp_temp*, AS_operand*> loadTemp2ASOper;

    for(auto block : fun->blocks){
        for(auto it = block->instrs.begin(); it!=block->instrs.end(); ){
            L_stm* stm = *it;
            switch(stm->type){
                case L_StmKind::T_STORE:{
                    AS_operand* ptr = stm->u.STORE->ptr;
                    AS_operand* src = stm->u.STORE->src;
                    if(src->kind==OperandKind::TEMP && src->u.TEMP->type==TempType::INT_TEMP && loadTemp2ASOper.find(src->u.TEMP)!=loadTemp2ASOper.end()){
                        src = loadTemp2ASOper[src->u.TEMP];
                        stm->u.STORE->src = src;
                    }
                    if(ptr->kind==OperandKind::TEMP && ptr->u.TEMP->type==TempType::INT_PTR && ptr->u.TEMP->len==0 && temp2ASoper.find(ptr->u.TEMP) != temp2ASoper.end()){
                        *it = L_Move(src, temp2ASoper[ptr->u.TEMP]);
                    }
                    break;
                }
                case L_StmKind::T_LOAD:{
                    AS_operand* dst = stm->u.LOAD->dst;
                    AS_operand* ptr = stm->u.LOAD->ptr;
                    if(ptr->kind==OperandKind::TEMP && ptr->u.TEMP->type==TempType::INT_PTR && ptr->u.TEMP->len==0 && (temp2ASoper.find(ptr->u.TEMP)!=temp2ASoper.end())){
                        if(dst->kind==OperandKind::TEMP){
                            loadTemp2ASOper[dst->u.TEMP] = temp2ASoper[ptr->u.TEMP];
                            auto old_it = it;
                            it++;
                            block->instrs.erase(old_it);
                            continue;
                        }
                        else{
                            assert(0);
                        }
                    }
                    break;
                }
                default:{
                    list<AS_operand**> as_list = get_all_AS_operand(stm);
                    for(auto as : as_list){
                        AS_operand *oper = *as;
                        if(oper->kind==OperandKind::TEMP && oper->u.TEMP->type==TempType::INT_TEMP && loadTemp2ASOper.find(oper->u.TEMP)!=loadTemp2ASOper.end()){
                            *as = loadTemp2ASOper[oper->u.TEMP];
                        }
                    }
                    break;
                }
            }

            it++;
        }
    }

}
/**
 * @note 计算支配节点
*/
void Dominators(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    unordered_set<L_block*> blocks = unordered_set<L_block*>();

    // 统计所有的block
    map<int, Node<L_block*>*> &nodes = bg.mynodes;
    for(auto pair:nodes){
        Node<L_block*>* node = pair.second;
        if(node==nullptr || node->nodeInfo()==nullptr){
            assert(0);
        }
        blocks.emplace(node->nodeInfo());
    }

    // 初始化
    for(auto pair : nodes){
        Node<L_block*>* node = pair.second;
        dominators[node->nodeInfo()] = unordered_set<L_block*>(blocks.begin(), blocks.end());
    }

    unordered_set<L_block*> root_block_dominators = unordered_set<L_block*>();
    root_block_dominators.emplace(nodes[0]->nodeInfo());
    dominators[nodes[0]->nodeInfo()] = root_block_dominators;

    // 迭代
    bool changed = true;
    while(changed){
        changed = false;
        for(auto pair : nodes){
            Node<L_block*>* node = pair.second;
            unordered_set<L_block*> node_dominators = dominators[node->nodeInfo()];
            int origin_size = node_dominators.size();
            NodeSet* preds = node->pred();
            for(auto pred_id:*preds){
                Node<L_block*>* pred = bg.mynodes[pred_id];
                if(origin_size>0){
                    node_dominators = make_intersection(node_dominators, dominators[pred->nodeInfo()]);
                }
            }   
            // 更新
            if(node_dominators.size()!=origin_size){
                changed = true;
                dominators[node->nodeInfo()] = node_dominators;
            }
        }
    }

}

void printf_domi() {
    printf("Dominator:\n");
    for (auto x : dominators) {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second) {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}

void printf_D_tree() {
    printf("dominator tree:\n");
    for (auto x : tree_dominators) {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second.succs) {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}
void printf_DF() {
    printf("DF:\n");
    for (auto x : DF_array) {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second) {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}

/**
 * @note 计算支配树
*/
void tree_Dominators(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    for(auto pair:dominators){
        L_block* block = pair.first;
        unordered_set<L_block*> block_dominators = pair.second;

        for(L_block* dominator:block_dominators){
            if(dominator==block){
                continue;
            }
            // 判断是否是其他必经节点的必经节点
            bool isIdom = true;
            for(L_block* other_dominator:block_dominators){
                if(other_dominator==block || other_dominator==dominator){
                    continue;
                }
                if(dominators[other_dominator].find(dominator)!=dominators[other_dominator].end()){
                    isIdom = false;
                    break;
                }
            }
            if(isIdom){
                // 其实就是一颗树中的节点
                imm_Dominator idom = imm_Dominator();
                idom.pred = dominator;
                tree_dominators[block] = idom;
            }
        }
    }

    // 加入root，设置pred为nullptr
    imm_Dominator root_idom = imm_Dominator();
    root_idom.pred = nullptr;
    tree_dominators[bg.mynodes[0]->nodeInfo()] = root_idom;

    // 写入succ,完成树的创建
    for(auto pair:tree_dominators){
        L_block* block = pair.first;
        imm_Dominator idom = tree_dominators[block];
        
        if(idom.pred!=nullptr){
            tree_dominators[idom.pred].succs.emplace(block);
        }
    }
}

/**
 * @note 计算支配边界
*/
void computeDF(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* r) {
    unordered_set<L_block*> s= unordered_set<L_block*>();

    for(int succ_id:*r->succ()){
        Node<L_block*>* node = bg.mynodes[succ_id];
        imm_Dominator idom = tree_dominators[node->nodeInfo()];
        if(idom.pred != r->nodeInfo()){
            s.emplace(node->nodeInfo());
        }
    }

    imm_Dominator idom = tree_dominators[r->nodeInfo()];
    for(L_block* succ:idom.succs){
        int succ_id = bg.findNode(succ);
        if(succ_id==-1){
            assert(0);
        }
        computeDF(bg, bg.mynodes[succ_id]);

        unordered_set<L_block*> c_df_array = DF_array[succ];
        for(L_block* c_df:c_df_array){
            if(dominators[c_df].find(r->nodeInfo())==dominators[c_df].end() || r->nodeInfo()==c_df){
                s.emplace(c_df);
            }
        }
    }

    DF_array[r->nodeInfo()] = s;
}


/**
 * @note 获得一条语句中所有定义的int标量操作数
*/
static list<AS_operand**> get_def_int_operand(LLVMIR::L_stm* stm) {
    list<AS_operand**> ret1 = get_def_operand(stm), ret2;
    for (auto AS_op : ret1) {
        if ((**AS_op).kind==OperandKind::TEMP && (**AS_op).u.TEMP->type == TempType::INT_TEMP) {
            ret2.push_back(AS_op);
        }
    }
    return ret2;
}

/**
 * @note 获得一条语句中所有使用的int标量操作数
*/
static list<AS_operand**> get_use_int_operand(LLVMIR::L_stm* stm) {
    list<AS_operand**> ret1 = get_use_operand(stm), ret2;
    for (auto AS_op : ret1) {
        if ((**AS_op).kind==OperandKind::TEMP && (**AS_op).u.TEMP->type == TempType::INT_TEMP) {
            ret2.push_back(AS_op);
        }
    }
    return ret2;
}

/**
 * @note 插入phi函数
 * @note 只对标量做
*/
void Place_phi_fu(GRAPH::Graph<LLVMIR::L_block*>& bg, L_func* fun) {
    unordered_map<L_block*, unordered_set<AS_operand*>> A_orig;
    unordered_map<AS_operand*, unordered_set<L_block*>> defsites;
    unordered_map<L_block*, unordered_set<AS_operand*>> A_phi;

    // 求A_orig
    for(auto pair:bg.mynodes){
        L_block* block = pair.second->nodeInfo();
        for(L_stm* stm:block->instrs){
            list<AS_operand**> def_operands = get_def_int_operand(stm);
            for(AS_operand** def_operand:def_operands){
                auto it = std::find_if(temp2ASoper.begin(), temp2ASoper.end(), [&](const auto &pair)
                                       { return pair.second == *def_operand; });

                if (it != temp2ASoper.end())
                {
                    A_orig[block].emplace(*def_operand);
                }
            }
        }
    }

    // 计算defsites
    for(auto pair:A_orig){
        L_block* block = pair.first;
        for(AS_operand* operand:pair.second){
            defsites[operand].emplace(block);
        }
    }

    // 插入phi语句
    for(auto pair:defsites){
        AS_operand* a = pair.first;
        unordered_set<L_block*> w = pair.second;
        while(w.size()>0){
            L_block* n = w.extract(w.begin()).value();
            w.erase(n);
            unordered_set<L_block*> df_array = DF_array[n];

            for(L_block* y:df_array){
                if(A_phi[y].find(a)==A_phi[y].end()){
                    int node_id = bg.findNode(y);
                    Node<L_block*>* y_node = bg.mynodes[node_id];

                    std::vector<std::pair<AS_operand*, Temp_label*>> phis;
                    for(int pred_id:*y_node->pred()){
                        Node<L_block*>* pred = bg.mynodes[pred_id];
                        phis.push_back({a, pred->nodeInfo()->label});
                    }
                    L_stm* first_stm = y->instrs.front();
                    if(first_stm->type==L_StmKind::T_LABEL){
                        y->instrs.pop_front();
                    }
                    y->instrs.push_front(L_Phi(a, phis));
                    if(first_stm->type==L_StmKind::T_LABEL){
                        y->instrs.push_front(first_stm);
                    }

                    A_phi[y].emplace(a);
                    
                    if(A_orig[y].find(a)==A_orig[y].end()){
                        w.emplace(y);
                    }
                }
            }
        }
    }
}

/**
 * @note 递归实现寄存器重命名
*/
static void Rename_temp(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* n, unordered_map<Temp_temp*, stack<Temp_temp*>> Stack) {
    for(L_stm* stm : n->nodeInfo()->instrs){
        if(stm->type!=L_StmKind::T_PHI){
            list<AS_operand**> used_operands = get_use_int_operand(stm);
            for(AS_operand** used_operand : used_operands){
                if(Stack.find((*used_operand)->u.TEMP)!=Stack.end()){
                    *used_operand = AS_Operand_Temp(Stack[(*used_operand)->u.TEMP].top());
                }
            }
        }

        list<AS_operand**> def_operands = get_def_int_operand(stm);
        for(AS_operand** def_operand : def_operands){
            if(Stack.find((*def_operand)->u.TEMP)!=Stack.end()){
                Temp_temp* new_temp = Temp_newtemp_int();
                Stack[(*def_operand)->u.TEMP].push(new_temp);
                *def_operand = AS_Operand_Temp(new_temp);
            }
        }
    }


    for(int succ_id : *n->succ()){
        Node<L_block*>* succ = bg.mynodes[succ_id];

        // 记录n是succ的第几个前驱
        int loc = 0;
        for(int pred_id:*succ->pred()){
            Node<L_block*>* pred = bg.mynodes[pred_id];
            if(n==pred)
                break;
            
            loc++;
        }

        for(L_stm* stm : succ->nodeInfo()->instrs){
            if(stm->type==L_StmKind::T_PHI){
                Temp_temp* old_temp = stm->u.PHI->phis[loc].first->u.TEMP;
                stm->u.PHI->phis[loc].first = AS_Operand_Temp(Stack[old_temp].top());
            }
        }
    }

    imm_Dominator idom = tree_dominators[n->nodeInfo()];
    for(L_block* succ:idom.succs){
        int node_id = bg.findNode(succ);
        Rename_temp(bg, bg.mynodes[node_id], Stack);
    }
}

/**
 * @note 寄存器重命名
 * @note 只初始化，具体还要依靠Rename_Temp实现
*/
void Rename(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    // 初始化
    unordered_map<Temp_temp*, stack<Temp_temp*>> stack;
    for(auto pair:temp2ASoper){
        stack[pair.second->u.TEMP].push(pair.second->u.TEMP);
    }

    Rename_temp(bg, bg.mynodes[0], stack);
}

template <typename T>
std::unordered_set<T> make_intersection(std::unordered_set<T> &tl1, std::unordered_set<T> &tl2)
{
    unordered_set<T> intersection = unordered_set<T>();
    for (auto &it : tl1)
    {
        if (tl2.find(it) != tl2.end())
        {
            intersection.emplace(it);
        }
    }
    return intersection;
}