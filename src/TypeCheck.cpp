/**
 * TypeCheck.cpp
 * 1. bool表达式会被当成int类型进行检查
 * 2. 函数名和全局变量名不重复
 *      2.1 将函数名记录在符号表中，与普通变量一致
 *      2.2 函数返回值记录在g_token2Type
 * 3. 数组名和变量名不可以重复
 *      3.1 将数组名记录在符号表中，与普通变量一致
 * 3. 仅支持一级数组
 * 4. 仅支持一级结构体
*/
#include "TypeCheck.h"

// 全局符号表
typeMap g_token2Type; 

// local token ids to type, since func param can override global param
typeMap funcparam_token2Type;
typeMap* currentMap = &g_token2Type;
vector<typeMap*> local_token2Type;

/**
 * 根据tokenID从函数参数表和全局符号表获得对应的tc_type
 * @param pmap 要查询的符号表指针
 * @param tokenID id名
 * @return 对应的tc_type
 * @note 如果找不到返回nullptr
*/
tc_type get_tc_type(typeMap* pmap, string tokenID){
    if(funcparam_token2Type.find(tokenID) != funcparam_token2Type.end())
        return funcparam_token2Type[tokenID];

    if(pmap->find(tokenID) == pmap->end())
        return nullptr;
    return (*pmap)[tokenID];
}

/**
 * 进入新的作用域
*/
void enter_scope(){
    typeMap * new_map;
    if (local_token2Type.size() == 0)
        new_map = new typeMap(g_token2Type);
    else
        new_map = new typeMap(*(local_token2Type.back()));
    
    local_token2Type.push_back(new_map);
    currentMap = new_map;
}

/**
 * 离开当前作用域
*/
void leave_scope(){
    local_token2Type.pop_back();
    delete currentMap;
    currentMap = local_token2Type.back();
}

// 记录数组长度
arrayLengthMap array2Length;
// 记录已经定义过的函数
functionsVector definedFuncs;
// 记录当前函数
string currentFunc = "";
// 记录函数参数
paramMemberMap func2Param;
// 记录结构体成员
paramMemberMap struct2Members;

// private util functions
void error_print(std::ostream& out, A_pos p, string info)
{
    out << "Typecheck error in line " << p->line << ", col " << p->col << ": " << info << std::endl;
    exit(0);
}


void print_token_map(typeMap* map){
    for(auto it = map->begin(); it != map->end(); it++){
        std::cout << it->first << " : ";
        switch (it->second->type->type)
        {
        case A_dataType::A_nativeTypeKind:
            switch (it->second->type->u.nativeType)
            {
            case A_nativeType::A_intTypeKind:
                std::cout << "int";
                break;
            default:
                break;
            }
            break;
        case A_dataType::A_structTypeKind:
            std::cout << *(it->second->type->u.structType);
            break;
        default:
            break;
        }
        switch(it->second->isVarArrFunc){
            case 0:
                std::cout << " scalar";
                break;
            case 1:
                std::cout << " array";
                break;
            case 2:
                std::cout << " function";
                break;
        }
        std::cout << std::endl;
    }
}

// 打印一张map
void print_token_maps(){
    std::cout << "global token2Type:" << std::endl;
    print_token_map(&g_token2Type);
    std::cout << "local token2Type:" << std::endl;
    print_token_map(&funcparam_token2Type);
}

// 比较两个aA_type是否相等
bool comp_aA_type(aA_type target, aA_type t){
    if(!target || !t)
        return false;
    if(target->type != t->type)
        return false;
    if(target->type == A_dataType::A_nativeTypeKind)
        if(target->u.nativeType != t->u.nativeType)
            return false;
    if(target->type == A_dataType::A_structTypeKind)
        if(target->u.structType != t->u.structType)
            return false;
    return true;
}

// 比较两个tc_type是否相等
bool comp_tc_type(tc_type target, tc_type t){
    if(!target || !t)
        return false;
    
    // arr kind first
    if (target->isVarArrFunc && t->isVarArrFunc == 0)
        return false;
    
    // if target type is nullptr, alwayse ok
    return comp_aA_type(target->type, t->type);
}


tc_type tc_Type(aA_type t, uint isVarArrFunc){
    tc_type ret = new tc_type_;
    ret->type = t;
    ret->isVarArrFunc = isVarArrFunc;
    return ret;
}


tc_type tc_Type(aA_varDecl vd){
    if(vd->kind == A_varDeclType::A_varDeclScalarKind)
        return tc_Type(vd->u.declScalar->type, 0);
    else if(vd->kind == A_varDeclType::A_varDeclArrayKind)
        return tc_Type(vd->u.declArray->type, 1);
    return nullptr;
}


// public functions
void check_Prog(std::ostream& out, aA_program p)
{
    for (auto ele : p->programElements)
    {
        if(ele->kind == A_programVarDeclStmtKind){
            check_VarDecl(out, ele->u.varDeclStmt);
        }else if (ele->kind == A_programStructDefKind){
            check_StructDef(out, ele->u.structDef);
        }
    }
    
    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDeclStmtKind){
            check_FnDeclStmt(out, ele->u.fnDeclStmt);
        }
        else if (ele->kind == A_programFnDefKind){
            check_FnDecl(out, ele->u.fnDef->fnDecl);
        }
    }

    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDefKind){
            check_FnDef(out, ele->u.fnDef);
        }
        else if (ele->kind == A_programNullStmtKind){
            // do nothing
        }
    }

    out << "Typecheck passed!" << std::endl;
    return;
}

/**
 * 检查变量声明和定义
 * @param out 输出流
 * @param vd 变量声明
 * @note 只在currentMap中记录变量名和类型
*/
void check_VarDecl(std::ostream& out, aA_varDeclStmt vd)
{
    if (!vd)
        return;
    string name;
    if (vd->kind == A_varDeclStmtType::A_varDeclKind){
        // decl only
        aA_varDecl vdecl = vd->u.varDecl;
        if(vdecl->kind == A_varDeclType::A_varDeclScalarKind){
            name = *vdecl->u.declScalar->id;
            
            if(get_tc_type(currentMap, name) != nullptr)
                error_print(out, vdecl->pos, "This id is already defined! ");

            check_isStructTypeDefined(out, vdecl->u.declScalar->type);        

            tc_type t = tc_Type(vdecl);
            currentMap->insert({name, t});
        }else if (vdecl->kind == A_varDeclType::A_varDeclArrayKind){
            name = *vdecl->u.declArray->id;

            if(get_tc_type(currentMap, name) != nullptr)
                error_print(out, vdecl->pos, "This id is already defined! ");
            
            check_isStructTypeDefined(out, vdecl->u.declArray->type);
            
            tc_type t = tc_Type(vdecl);
            currentMap->insert({name, t});

            // 记录数组长度
            array2Length[name] = vdecl->u.declArray->len;
        }
    }
    else if (vd->kind == A_varDeclStmtType::A_varDefKind){
        // decl and def
        aA_varDef vdef = vd->u.varDef;
        if (vdef->kind == A_varDefType::A_varDefScalarKind){
            name = *vdef->u.defScalar->id;
            aA_varDefScalar varDefScalar = vdef->u.defScalar;

            // 检查id是否已经定义
            if(get_tc_type(currentMap, name) != nullptr)
                error_print(out, vdef->pos, "This id is already defined! ");

            check_isStructTypeDefined(out, varDefScalar->type);

            tc_type t = check_rightVal(out, varDefScalar->val);
            
            // 检查是否缺省类型
            // varDefScalar->type == nullptr
            if(varDefScalar->type == nullptr){
                tc_type deduced_type = check_rightVal(out, varDefScalar->val);
                currentMap->insert({name, deduced_type});
            }
            else{
                if(!comp_tc_type(t, tc_Type(varDefScalar->type, 0)))
                    error_print(out, vd->pos, "Assignment type does not match variable type!");
                currentMap->insert({name, tc_Type(varDefScalar->type, 0)});
            }
        }else if (vdef->kind == A_varDefType::A_varDefArrayKind){
            name = *vdef->u.defArray->id;
            aA_varDefArray varDefArray = vdef->u.defArray;

            // 检查id是否已经定义
            if(get_tc_type(currentMap, name) != nullptr)
                error_print(out, vdef->pos, "This id is already defined! ");

            check_isStructTypeDefined(out, varDefArray->type);

            if(varDefArray->len!=varDefArray->vals.size())
                error_print(out, vdef->pos, "Length mismatch! ");

            array2Length[name] = varDefArray->len;

            // 检查是否缺省类型
            if(varDefArray->type == nullptr){
                tc_type deduced_type = check_rightVal(out, varDefArray->vals[0]);
                // 确保右值类型一致
                for(aA_rightVal rv: varDefArray->vals){
                    if(!comp_tc_type(check_rightVal(out, rv), deduced_type))
                        error_print(out, vd->pos, "Assignment type does not match variable type!");
                }
                currentMap->insert({name, tc_Type(varDefArray->type, 1)});
            }
            else{
                // 确保右值类型一致
                for(aA_rightVal rv: varDefArray->vals){
                    if(!comp_tc_type(check_rightVal(out, rv), tc_Type(varDefArray->type, 0)))
                        error_print(out, vd->pos, "Assignment type does not match variable type!");
                }
                currentMap->insert({name, tc_Type(varDefArray->type, 1)});
            }
        }
    }
    return;
}

/**
 * 检查结构体定义
 * @param out 输出流
 * @param sd 结构体定义
 * @note 只在struct2Members有记录
*/
void check_StructDef(std::ostream& out, aA_structDef sd)
{
    if (!sd)
        return;
    string name = *sd->id;
    if (struct2Members.find(name) != struct2Members.end())
        error_print(out, sd->pos, "This id is already defined!");
    struct2Members[name] = &(sd->varDecls);
    return;
}

/**
 * 检查函数声明
 * 分两种情况：
 *  1. 函数已经声明过，检查是否匹配
 *      1.1 函数返回值类型是否匹配
 *      1.2 函数参数个数是否匹配
 *      1.3 函数参数类型是否匹配
 *  2. 函数未声明过，添加到全局符号表
 * @param out 输出流
 * @param fd 函数声明
*/
void check_FnDecl(std::ostream& out, aA_fnDecl fd)
{
    if (!fd)
        return;
    string name = *fd->id;

    // if already declared, should match
    if (func2Param.find(name) != func2Param.end()){
        // is function ret val matches
        if(!comp_aA_type(get_tc_type(&g_token2Type, name)->type, fd->type))
            error_print(out, fd->pos, "The function return type does not match declaration!");
        // is function params matches decl
        if(func2Param[name]->size() != fd->paramDecl->varDecls.size())
            error_print(out, fd->pos, "The function parameter number does not match declaration!");
        
        for(int i = 0;i<func2Param[name]->size(); i++){
            A_varDeclType fnParmType = func2Param[name]->at(i)->kind;

            if(fnParmType != fd->paramDecl->varDecls[i]->kind)
                error_print(out, fd->pos, "The function parameter kind does not match declaration!");
            
            if(fnParmType == A_varDeclType::A_varDeclScalarKind){
                if(!comp_aA_type(func2Param[name]->at(i)->u.declScalar->type, fd->paramDecl->varDecls[i]->u.declScalar->type))
                    error_print(out, fd->pos, "The function parameter type does not match declaration!");
            }
            else { // A_varDeclType::A_varDefArrayKind
                if(!comp_aA_type(func2Param[name]->at(i)->u.declArray->type, fd->paramDecl->varDecls[i]->u.declArray->type))
                    error_print(out, fd->pos, "The function parameter type does not match declaration!");
            }
        }
    }else{
        // if not defined
        g_token2Type[name] = tc_Type(fd->type, 2);  // 2代表函数
        func2Param[name] = &(fd->paramDecl->varDecls);
    }
    return;
}


void check_FnDeclStmt(std::ostream& out, aA_fnDeclStmt fd)
{
    if (!fd)
        return;
    check_FnDecl(out, fd->fnDecl);
    return;
}

/**
 * 检查函数定义
 * @param out 输出流
 * @param fd 函数定义
*/
void check_FnDef(std::ostream& out, aA_fnDef fd)
{
    if (!fd)
        return;

    for(string func:definedFuncs){
        if(func == *fd->fnDecl->id)
            error_print(out, fd->pos, "The function already defined! ");
    }
    
    // should match if declared
    check_FnDecl(out, fd->fnDecl);
    // add params to local tokenmap, func params override global ones
    for (aA_varDecl vd : fd->fnDecl->paramDecl->varDecls)
    {
        if(vd->kind == A_varDeclType::A_varDeclScalarKind){
            funcparam_token2Type[*vd->u.declScalar->id] = tc_Type(vd);
        }else{
            funcparam_token2Type[*vd->u.declArray->id] = tc_Type(vd);
        }
    }
    enter_scope();
    currentFunc = *fd->fnDecl->id;
    for (aA_codeBlockStmt stmt : fd->stmts)
    {   
        check_CodeblockStmt(out, stmt);
        // return value type should match
    }
    leave_scope();
    currentFunc = "";
    // remove params
    for (aA_varDecl vd : fd->fnDecl->paramDecl->varDecls)
    {
        if(vd->kind == A_varDeclType::A_varDeclScalarKind){
            funcparam_token2Type.erase(*vd->u.declScalar->id);
        }else{
            funcparam_token2Type.erase(*vd->u.declArray->id);
        }
    }

    definedFuncs.push_back(*fd->fnDecl->id);
    return;
}

/**
 * 检查代码块
 * @param out 输出流
 * @param cs 代码块
*/
void check_CodeblockStmt(std::ostream& out, aA_codeBlockStmt cs){
    if(!cs)
        return;
    // variables declared in a code block should not duplicate with outer ones.
    switch (cs->kind)
    {
    case A_codeBlockStmtType::A_varDeclStmtKind:
        check_VarDecl(out, cs->u.varDeclStmt);
        break;
    case A_codeBlockStmtType::A_assignStmtKind:
        check_AssignStmt(out, cs->u.assignStmt);
        break;
    case A_codeBlockStmtType::A_ifStmtKind:
        check_IfStmt(out, cs->u.ifStmt);
        break;
    case A_codeBlockStmtType::A_whileStmtKind:
        check_WhileStmt(out, cs->u.whileStmt);
        break;
    case A_codeBlockStmtType::A_callStmtKind:
        check_CallStmt(out, cs->u.callStmt);
        break;
    case A_codeBlockStmtType::A_returnStmtKind:
        check_ReturnStmt(out, cs->u.returnStmt);
        break;
    default:
        break;
    }
    return;
}

/**
 * 检查赋值语句
 * @param out 输出流
 * @param as 赋值语句
*/
void check_AssignStmt(std::ostream& out, aA_assignStmt as){
    if(!as)
        return;
    string name;
    tc_type deduced_type; // deduced type if type is omitted at decl
    deduced_type = check_rightVal(out, as->rightVal);
    switch (as->leftVal->kind)
    {
        case A_leftValType::A_varValKind:{
            name = *as->leftVal->u.id;
            // 在这里实现的数组对数组赋值
            tc_type t = get_tc_type(currentMap, name);

            if(t == nullptr)
                error_print(out, as->pos, "Variable not defined!");

            // 赋值时确定类型
            if(t->type == nullptr){
                currentMap->find(name)->second = deduced_type;
            }
            else{
                if(!comp_tc_type(t, deduced_type))
                    error_print(out, as->pos, "Assignment type does not match variable type!");
            }
        }
            break;
        case A_leftValType::A_arrValKind:{
            name = *as->leftVal->u.arrExpr->arr->u.id;
            tc_type t = get_tc_type(currentMap, name);
            
            if(t == nullptr)
                error_print(out, as->pos, "Array not defined!");

            if(!comp_tc_type(t, deduced_type))
                error_print(out, as->pos, "Assignment type does not match array type!");
        }
            break;
        case A_leftValType::A_memberValKind:{
            aA_memberExpr memberExpr = as->leftVal->u.memberExpr;
            if(memberExpr->structId->kind != A_leftValType::A_varValKind)
                error_print(out, as->pos, "Multi-level is not surpported!");
            string structID = *memberExpr->structId->u.id;
            string memberID = *memberExpr->memberId;
            // 此处应该检测id是否定义，struct type是否定义会在声明时就检查
            tc_type t = get_tc_type(currentMap, structID);
            if(t == nullptr)
                error_print(out, as->pos, "Struct not defined!");
            if(t->type->type != A_dataType::A_structTypeKind)
                error_print(out, as->pos, "Not a struct type!");
            vector<aA_varDecl>* memberDecls = struct2Members.find(*(t->type->u.structType))->second;
            bool isExist = false;

            for(aA_varDecl vd: *memberDecls){
                string id;
                if(vd->kind == A_varDeclType::A_varDeclScalarKind)
                    id = *vd->u.declScalar->id;
                else
                    id = *vd->u.declArray->id;
                
                if(id == memberID){
                    if(!comp_tc_type(tc_Type(vd), deduced_type))
                        error_print(out, as->pos, "Assignment type does not match struct member type!");
                    isExist = true;
                    break;
                }
            }

            if(!isExist)
                error_print(out, as->pos, "Struct member not defined!");

            
        }
            break;
    }
    return;
}

/**
 * 检查数组表达式
 * @param out 输出流
 * @param ae 数组表达式
*/
void check_ArrayExpr(std::ostream& out, aA_arrayExpr ae){
    if(!ae)
        return;
    string name = *ae->arr->u.id;
    // check array name
    if(get_tc_type(currentMap, name) == nullptr)
        error_print(out, ae->pos, "Array not defined!");
    
    // check index
    // TODO 这里怎么获得id对应的值
    // lab1的语法定义仅支持one-level array, 且index一定为num
    A_indexExprKind indexKind = ae->idx->kind;
    if(indexKind == A_indexExprKind::A_idIndexKind){
        // 检查id是否在当前定义域内
        if(get_tc_type(currentMap, *ae->idx->u.id) == nullptr)
            error_print(out, ae->pos, "Array index not defined!");
    }
    else{
        // A_indexExprKind::A_numIndexKind
        int index = ae->idx->u.num;
        if(index < 0 || index >= array2Length[name])
            error_print(out, ae->pos, "Array index out of range!");
    }

    return;
}

/**
 * 检查struct的成员表达式
 * @param out 输出流
 * @param me 成员表达式
 * @return 成员表达式的类型
 * @note 不支持多层结构体
*/
tc_type check_MemberExpr(std::ostream& out, aA_memberExpr me){
    // check if the member exists and return the tyep of the member
    if(!me)
        return nullptr;
    string name = *me->structId->u.id;
    // check struct name
    
    tc_type t = get_tc_type(currentMap, name);
    if(t == nullptr)
        error_print(out, me->pos, "Struct not defined!");

    if(t->type->type != A_dataType::A_structTypeKind)
        error_print(out, me->pos, "Not a struct type!");

    string structType = *t->type->u.structType;
    
    // check member name
    vector<aA_varDecl>* memberDecls = struct2Members[structType];

    for(aA_varDecl vd: *memberDecls){
        string id;

        if(vd->kind == A_varDeclType::A_varDeclScalarKind)
            id = *vd->u.declScalar->id;
        else
            id = *vd->u.declArray->id;

        if(id == *me->memberId){
            if(vd->kind == A_varDeclType::A_varDeclScalarKind)
                return tc_Type(vd->u.declScalar->type, 0);
            else
                return tc_Type(vd->u.declArray->type, 1);
        }
    }
        
    return nullptr;
}

/**
 * 检查if语句
 * @param out 输出流
 * @param is if语句
*/
void check_IfStmt(std::ostream& out, aA_ifStmt is){
    if(!is)
        return;
    check_BoolExpr(out, is->boolExpr);
    /* fill code here, take care of variable scope */
    enter_scope();
    for(aA_codeBlockStmt s : is->ifStmts){
        check_CodeblockStmt(out, s);
    }
    leave_scope();
    enter_scope(); 
    for(aA_codeBlockStmt s : is->elseStmts){
        check_CodeblockStmt(out, s);
    }
    leave_scope();
    return;
}


void check_BoolExpr(std::ostream& out, aA_boolExpr be){
    if(!be)
        return;
    switch (be->kind)
    {
    case A_boolExprType::A_boolBiOpExprKind:
        check_BoolExpr(out, be->u.boolBiOpExpr->left);
        check_BoolExpr(out, be->u.boolBiOpExpr->right);
        break;
    case A_boolExprType::A_boolUnitKind:
        check_BoolUnit(out, be->u.boolUnit);
        break;
    default:
        break;
    }
    return;
}

/**
 * 检查布尔表达式
 * @param out 输出流
 * @param bu 布尔表达式
*/
void check_BoolUnit(std::ostream& out, aA_boolUnit bu){
    if(!bu)
        return;
    switch (bu->kind)
    {
        case A_boolUnitType::A_comOpExprKind:{
            aA_comExpr comExpr = bu->u.comExpr;
            tc_type leftType = check_ExprUnit(out, comExpr->left);
            tc_type rightType = check_ExprUnit(out, comExpr->right);
            if(!comp_tc_type(leftType, rightType))
                error_print(out, bu->pos, "Comparison type does not match!");
        }
            break;
        case A_boolUnitType::A_boolExprKind:
            check_BoolExpr(out, bu->u.boolExpr);
            break;
        case A_boolUnitType::A_boolUOpExprKind:
            check_BoolUnit(out, bu->u.boolUOpExpr->cond);
            break;
        default:
            break;
    }
    return;
}

/**
 * 检查表达式单元
 * @param out 输出流
 * @param eu 表达式单元
*/
tc_type check_ExprUnit(std::ostream& out, aA_exprUnit eu){
    // return the aA_type of expr eu
    if(!eu)
        return nullptr;
    tc_type ret;
    switch (eu->kind)
    {
        case A_exprUnitType::A_idExprKind:{
            // 检查对应的id是否已经定义
            string name = *eu->u.id;
            
            tc_type t = get_tc_type(currentMap, name);

            if(t == nullptr)
                error_print(out, eu->pos, "Variable not defined!");

            // 返回变量的类型
            aA_type idt = new aA_type_;
            idt->pos = eu->pos;
            idt->type = t->type->type;
            if(idt->type == A_dataType::A_nativeTypeKind)
                idt->u.nativeType = t->type->u.nativeType;
            else
                idt->u.structType = t->type->u.structType;
            
            ret = tc_Type(idt, t->isVarArrFunc);
        }
            break;
        case A_exprUnitType::A_numExprKind:{
            aA_type numt = new aA_type_;
            numt->pos = eu->pos;
            numt->type = A_dataType::A_nativeTypeKind;
            numt->u.nativeType = A_nativeType::A_intTypeKind;
            ret = tc_Type(numt, 0);
        }
            break;
        case A_exprUnitType::A_fnCallKind:{
            check_FuncCall(out, eu->u.callExpr);
            // check_FuncCall will check if the function is defined
            string func_name = *eu->u.callExpr->fn;
            aA_type funcCallt = new aA_type_;
            funcCallt->pos = eu->pos;
            funcCallt->type = g_token2Type[func_name]->type->type;
            
            if(funcCallt->type == A_dataType::A_nativeTypeKind)
                funcCallt->u.nativeType = g_token2Type[func_name]->type->u.nativeType;
            else
                funcCallt->u.structType = g_token2Type[func_name]->type->u.structType;

            // TODO 假设函数返回值都是标量
            ret = tc_Type(funcCallt, 0);
        }
            break;
        case A_exprUnitType::A_arrayExprKind:{
            check_ArrayExpr(out, eu->u.arrayExpr);
            // lab1定义的语法里面仅支持One-level Array、one-level struct
            aA_type aet = new aA_type_;
            aet->pos = eu->pos;
            
            if(eu->u.arrayExpr->arr->kind != A_leftValType::A_varValKind)
                error_print(out, eu->pos, "Only support One-level Array");

            tc_type t = get_tc_type(currentMap, *eu->u.arrayExpr->arr->u.id);

            aet->type = t->type->type;
            if(aet->type == A_dataType::A_nativeTypeKind)
                aet->u.nativeType = t->type->u.nativeType;
            else
                aet->u.structType = t->type->u.structType;

            ret = tc_Type(aet, 0);
        }
            break;
        case A_exprUnitType::A_memberExprKind:{
            ret = check_MemberExpr(out, eu->u.memberExpr);
        }
            break;
        case A_exprUnitType::A_arithExprKind:{
            ret = check_ArithExpr(out, eu->u.arithExpr);
        }
            break;
        case A_exprUnitType::A_arithUExprKind:{
            ret = check_ExprUnit(out, eu->u.arithUExpr->expr);
        }
            break;
    }
    return ret;
}

/**
 * 检查算术表达式
 * @param out 输出流
 * @param eu 算术表达式
 * @return 算术表达式的类型
*/
tc_type check_ArithExpr(std::ostream& out, aA_arithExpr ae){
    if(!ae)
        return nullptr;
    tc_type ret;
    switch (ae->kind)
    {
        case A_arithExprType::A_arithBiOpExprKind:{
            ret = check_ArithExpr(out, ae->u.arithBiOpExpr->left);
            tc_type rightTyep = check_ArithExpr(out, ae->u.arithBiOpExpr->right);
            if(ret->type->type > 0 || ret->type->type != A_dataType::A_nativeTypeKind || ret->type->u.nativeType != A_nativeType::A_intTypeKind ||
            rightTyep->type->type > 0 || rightTyep->type->type != A_dataType::A_nativeTypeKind || rightTyep->type->u.nativeType != A_nativeType::A_intTypeKind)
                error_print(out, ae->pos, "Only int can be arithmetic expression operation values!");
        }
            break;
        case A_arithExprType::A_exprUnitKind:
            ret = check_ExprUnit(out, ae->u.exprUnit);
            break;
    }
    return ret;
}

/**
 * 检查右值准不准确
 * @param out 输出流
 * @param rv 右值
*/
tc_type check_rightVal(std::ostream& out, aA_rightVal rv){
    if(rv->kind == A_rightValType::A_arithExprValKind)
        return check_ArithExpr(out, rv->u.arithExpr);
    else{
        // A_rightValType::A_boolExprValKind
        check_BoolExpr(out, rv->u.boolExpr);
        // TODO 内存泄漏问题（代码原有框架也是这样创建的，不知道在哪里进行销毁）
        // TODO 符号表会不会有问题，后续还会不会用到
        aA_type aAType = new aA_type_;
        aAType->pos = rv->pos;
        aAType->type = A_dataType::A_nativeTypeKind;
        aAType->u.nativeType = A_nativeType::A_intTypeKind;
        tc_type ret = tc_Type(aAType, 0);   // 标量
        return ret;
    }
}

/**
 * 检查函数调用
 * 检查函数是否定义，参数是否匹配
 * @param out 输出流
 * @param fc 函数调用
*/
void check_FuncCall(std::ostream& out, aA_fnCall fc){
    if(!fc)
        return;
    // check if function defined
    string func_name = *fc->fn;

    if(func2Param.find(func_name) == func2Param.end())
        error_print(out, fc->pos, "Function not defined!");

    // check if parameter list matches
    if(func2Param[func_name]->size() != fc->vals.size())
        error_print(out, fc->pos, "Function parameter number does not match declaration!");

    for(int i = 0; i < fc->vals.size(); i++){
        // 检查参数值类型是否与函数定义保持一致
        if(!comp_tc_type(tc_Type(func2Param[func_name]->at(i)), check_rightVal(out, fc->vals[i])))
            error_print(out, fc->pos, "Function parameter kind does not match declaration!");
    }
    return ;
}

/**
 * 检查while语句
 * @param out 输出流
 * @param ws while语句
*/
void check_WhileStmt(std::ostream& out, aA_whileStmt ws){
    if(!ws)
        return;
    check_BoolExpr(out, ws->boolExpr);
    /* fill code here, take care of variable scope */
    enter_scope();
    for(aA_codeBlockStmt s : ws->whileStmts){
        check_CodeblockStmt(out, s);
    }
    leave_scope();
    return;
}


void check_CallStmt(std::ostream& out, aA_callStmt cs){
    if(!cs)
        return;
    check_FuncCall(out, cs->fnCall);
    return;
}


void check_ReturnStmt(std::ostream& out, aA_returnStmt rs){
    if(!rs)
        return;
    
    if(currentFunc.empty())
        error_print(out, rs->pos, "The returnStmt is in the wrong position! ");

    tc_type funcType = g_token2Type.find(currentFunc)->second;
    tc_type ret = check_rightVal(out, rs->retVal);

    if(ret->isVarArrFunc!=0 || !comp_aA_type(ret->type, funcType->type))
        error_print(std::cout, rs->pos, "Return type does not match function return type!");

    return;
}


/**
 * 测试当为struct时对应的type是否已经定义
 * @param out 输出流
 * @param t 要检查的type
*/
bool check_isStructTypeDefined(std::ostream& out, aA_type t){
    if(!t)
        return false;

    if(t->type == A_dataType::A_structTypeKind){
        if(struct2Members.find(*t->u.structType) == struct2Members.end()){
            error_print(out, t->pos, "Struct type not defined!");
            return false;
        }
    }
    
    return true;
}