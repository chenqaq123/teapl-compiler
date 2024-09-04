%{
#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
    extern void yyerror(char *s); 
    extern int  yywrap();
}
%}

// your parser

// yacc文件第二部分：声明语法分析器的数据结构

// 定义附加信息的数据结构，针对语法分析中的每一个单元
%union {
    A_pos pos;
    A_type type;
    A_varDecl varDecl;
    A_varDef varDef;
    A_rightVal rightVal;
    A_arithExpr arithExpr;
    A_boolExpr boolExpr;
    A_arithBiOpExpr arithBiOpExpr;
    A_arithUExpr arithUExpr;
    A_exprUnit exprUnit;
    A_fnCall fnCall;
    A_indexExpr indexExpr;
    A_arrayExpr arrayExpr;
    A_memberExpr memberExpr;
    A_boolUnit boolUnit;
    A_boolBiOpExpr boolBiOpExpr;
    A_boolUOpExpr boolUOpExpr;
    A_comExpr comExpr;
    A_leftVal leftVal;
    A_assignStmt assignStmt;
    A_rightValList rightValList;
    A_varDefScalar varDefScalar;
    A_varDefArray varDefArray;
    A_varDeclScalar varDeclScalar;
    A_varDeclArray varDeclArray;
    A_varDeclStmt varDeclStmt;
    A_varDeclList varDeclList;
    A_structDef structDef;
    A_paramDecl paramDecl;
    A_fnDecl fnDecl;
    A_fnDef fnDef;
    A_codeBlockStmt codeBlockStmt;
    A_ifStmt ifStmt;
    A_whileStmt whileStmt;
    A_fnDeclStmt fnDeclStmt;
    A_callStmt callStmt;
    A_returnStmt returnStmt;
    A_programElement programElement;
    A_codeBlockStmtList codeBlockStmtList;
    A_programElementList programElementList;
    A_program program;
    A_tokenId tokenId;
    A_tokenNum tokenNum;
}

// 定义token，都是终结符，有一个附加信息pos
%token <pos> ADD SUB MUL DIV 
%token <pos> LP RP LSB RSB LB RB
%token <pos> COMMA SEMICOLON // 逗号和分号
%token <pos> EQ NE LT GT LE GE
%token <pos> ASSIGN
%token <pos> AND OR NOT
%token <pos> ARROW DOT COLON
%token <pos> IF ELSE WHILE RETURN CONTINUE BREAK
%token <pos> INT
%token <pos> FN LET
%token <pos> STRUCT

%token <tokenNum> NUM
%token <tokenId> ID

// 指定优先级和结合性，优先级自下而上
%left COMMA
%right ASSIGN
%left OR
%left AND 
%left EQ NE
%left LT GT LE GE 
%left ADD SUB
%left MUL DIV
%nonassoc NEG
%right NOT
%nonassoc LOWER_THAN_LP
%left LP RP LSB RSB DOT 

// 定义非终结符，%type <类型> 非终结符
%type <program> Program
%type <arithExpr> ArithExpr
%type <programElementList> ProgramElementList
%type <programElement> ProgramElement
%type <exprUnit> ExprUnit
%type <structDef> StructDef
%type <varDeclStmt> VarDeclStmt
%type <fnDeclStmt> FnDeclStmt
%type <fnDef> FnDef
%type <fnCall> FnCall
%type <arrayExpr> ArrayExpr
%type <memberExpr> MemberExpr
%type <arithUExpr> ArithUExpr
%type <leftVal> LeftVal
%type <varDecl> VarDecl
%type <varDef> VarDef
%type <type> Type
%type <varDeclList> VarDeclList
%type <rightVal> RightVal
%type <rightValList> RightValList
%type <assignStmt> AssignStmt
%type <paramDecl> ParamDecl
%type <fnDecl> FnDecl
%type <codeBlockStmt> CodeBlockStmt
%type <ifStmt> IfStmt
%type <whileStmt> WhileStmt
%type <callStmt> CallStmt
%type <returnStmt> ReturnStmt
%type <codeBlockStmtList> CodeBlockStmtList
%type <boolExpr> BoolExpr
%type <boolUnit> BoolUnit
%type <codeBlockStmtList> CodeBlock
%type <pos> ContinueStmt
%type <pos> BreakStmt
%type <boolBiOpExpr> BoolBiOpExpr
%type <comExpr> ComExpr
%type <boolUOpExpr> BoolUOpExpr

// 定义语法分析器的起始符号
%start Program

// yacc文件第三部分：语法规则
// 语法规则
// $1表示第一个元素，$2表示第二个元素，以此类推
// $$表示当前规则的结果
%%                   /* beginning of rules section */

Program: ProgramElementList 
{  
    // 将root指向第一个元素
    root = A_Program($1);
    $$ = A_Program($1);
}
;

ProgramElementList: ProgramElement ProgramElementList
{
    $$ = A_ProgramElementList($1, $2);
}
|
{
    $$ = nullptr;
}
;

ProgramElement: VarDeclStmt
{
    $$ = A_ProgramVarDeclStmt($1->pos, $1);
}
| StructDef
{
    $$ = A_ProgramStructDef($1->pos, $1);
}
| FnDeclStmt
{
    $$ = A_ProgramFnDeclStmt($1->pos, $1);
}
| FnDef
{
    $$ = A_ProgramFnDef($1->pos, $1);
}
| SEMICOLON
{
    $$ = A_ProgramNullStmt($1);
}
;

// Arithmatic Expressions
ArithExpr: ArithExpr ADD ArithExpr
{
    $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_add, $1, $3));
}
| ArithExpr SUB ArithExpr
{
    $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_sub, $1, $3));
}
| ArithExpr MUL ArithExpr
{
    $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_mul, $1, $3));
}
| ArithExpr DIV ArithExpr
{
    $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_div, $1, $3));
}
| ExprUnit
{
    $$ = A_ExprUnit($1->pos, $1);
}
;

ExprUnit: NUM
{
    $$ = A_NumExprUnit($1->pos, $1->num);
}
| ID
{
    $$ = A_IdExprUnit($1->pos, $1->id);
}
| LP ArithExpr RP
{
    $$ = A_ArithExprUnit($1, $2);
}
| FnCall
{
    $$ = A_CallExprUnit($1->pos, $1);
} 
| ArrayExpr
{
    $$ = A_ArrayExprUnit($1->pos, $1);
}   
| MemberExpr
{
    $$ = A_MemberExprUnit($1->pos, $1);
}
| ArithUExpr
{
    $$ = A_ArithUExprUnit($1->pos, $1);
}
;

ArithUExpr: SUB ExprUnit %prec NEG
{
    $$ = A_ArithUExpr($1, A_neg, $2);
}
;

// Condition Expressions
BoolBiOpExpr: BoolExpr AND BoolExpr
{
    $$ = A_BoolBiOpExpr($1->pos, A_and, $1, $3);
}
| BoolExpr OR BoolExpr
{
    $$ = A_BoolBiOpExpr($1->pos, A_or, $1, $3);
}
;

ComExpr: ExprUnit LT ExprUnit
{
  $$ = A_ComExpr($1->pos, A_lt, $1, $3);
}
| ExprUnit LE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_le, $1, $3);
}
| ExprUnit GT ExprUnit
{
  $$ = A_ComExpr($1->pos, A_gt, $1, $3);
}
| ExprUnit GE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_ge, $1, $3);
}
| ExprUnit EQ ExprUnit
{
  $$ = A_ComExpr($1->pos, A_eq, $1, $3);
}
| ExprUnit NE ExprUnit
{
  $$ = A_ComExpr($1->pos, A_ne, $1, $3);
};


BoolUnit: ComExpr
{
  $$ = A_ComExprUnit($1->pos, $1);
}
| LP BoolExpr RP
{
  $$ = A_BoolExprUnit($1, $2);
}
| BoolUOpExpr
{
  $$ = A_BoolUOpExprUnit($1->pos, $1);
}
;

BoolUOpExpr: NOT BoolUnit
{
  $$ = A_BoolUOpExpr($1, A_not, $2);
}
;


BoolExpr: BoolBiOpExpr
{
    $$ = A_BoolBiOp_Expr($1->pos, $1);
}
| BoolUnit
{
    $$ = A_BoolExpr($1->pos, $1);
}
;

// Assignment Statement
AssignStmt: LeftVal ASSIGN RightVal SEMICOLON
{
    $$ = A_AssignStmt($1->pos, $1, $3);
}
;

ArrayExpr: ID LSB NUM RSB
{
    $$ = A_ArrayExpr($1->pos, A_IdExprLVal($1->pos, $1->id), A_NumIndexExpr($3->pos, $3->num));
}
| ID LSB ID RSB
{
    $$ = A_ArrayExpr($1->pos, A_IdExprLVal($1->pos, $1->id), A_IdIndexExpr($3->pos, $3->id));
}
| LeftVal LSB NUM RSB
{
    $$ = A_ArrayExpr($1->pos, $1, A_NumIndexExpr($3->pos, $3->num));
}
| LeftVal LSB ID RSB
{
    $$ = A_ArrayExpr($1->pos, $1, A_IdIndexExpr($3->pos, $3->id));
}
;

LeftVal: ID  %prec LOWER_THAN_LP
{
    $$ = A_IdExprLVal($1->pos, $1->id);
}
| ArrayExpr
{
    $$ = A_ArrExprLVal($1->pos, $1);
}
| MemberExpr
{
    $$ = A_MemberExprLVal($1->pos, $1);
}
;

MemberExpr: ID DOT ID
{
    $$ = A_MemberExpr($1->pos, A_IdExprLVal($1->pos, $1->id), $3->id);
}
| LeftVal DOT ID
{
    $$ = A_MemberExpr($1->pos, $1, $3->id);
}
;

RightVal: ArithExpr
{
    $$ = A_ArithExprRVal($1->pos, $1);
}
| BoolExpr
{
    $$ = A_BoolExprRVal($1->pos, $1);
}
;

// Function Call
RightValList: RightVal
{
    $$ = A_RightValList($1, nullptr);
}
| RightVal COMMA RightValList
{
    $$ = A_RightValList($1, $3);
}
;

FnCall: ID LP RightValList RP
{
    $$ = A_FnCall($1->pos, $1->id, $3);
}
| ID LP RP     // 无参数
{
    $$ = A_FnCall($1->pos, $1->id, nullptr);
}
;

// Variable Declarations
VarDeclStmt: LET VarDecl SEMICOLON
{
    $$ = A_VarDeclStmt($1, $2);
}
| LET VarDef SEMICOLON
{
    $$ = A_VarDefStmt($1, $2);
}
;

VarDecl: ID COLON Type
{
    $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, $3));
}
| ArrayExpr COLON Type
{
    $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->arr->u.id, $1->idx->u.num, $3));
}
| ID  // 允许在声明时不指定类型
{
    $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, nullptr));
}
| ArrayExpr
{
    $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->arr->u.id, $1->idx->u.num, nullptr));
};

VarDef: ID COLON Type ASSIGN RightVal
{
    $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, $3, $5));
}
| ID ASSIGN RightVal
{
    $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, nullptr, $3));
}
| ArrayExpr COLON Type ASSIGN LB RightValList RB
{
    $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->arr->u.id, $1->idx->u.num, $3, $6));
}
| ArrayExpr ASSIGN LB RightValList RB
{
    $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->arr->u.id, $1->idx->u.num, nullptr, $4));
}
| ArrayExpr COLON Type ASSIGN LB RB
{
    $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->arr->u.id, $1->idx->u.num, $3, nullptr));
}
| ArrayExpr ASSIGN LB RB
{
    $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->arr->u.id, $1->idx->u.num, nullptr, nullptr));
}
;

Type: INT
{
    $$ = A_NativeType($1, A_intTypeKind);
}
| ID
{
    $$ = A_StructType($1->pos, $1->id);
}
;

// Define A New Structure
VarDeclList: VarDecl
{
    $$ = A_VarDeclList($1, nullptr);
}
| VarDecl COMMA VarDeclList
{
    $$ = A_VarDeclList($1, $3);
}
;

StructDef: STRUCT ID LB VarDeclList RB
{
    $$ = A_StructDef($1, $2->id, $4);
}
;

// Function Declaration
FnDeclStmt: FnDecl SEMICOLON
{
    $$ = A_FnDeclStmt($1->pos, $1);
}
;

FnDecl: FN ID LP ParamDecl RP // 没有返回值
{
    $$ = A_FnDecl($1, $2->id, $4, nullptr);
}
| FN ID LP ParamDecl RP ARROW Type // 有返回值
{
    $$ = A_FnDecl($1, $2->id, $4, $7);
}
;

ParamDecl: VarDeclList
{
    $$ = A_ParamDecl($1);
}
| 
{
    $$ = A_ParamDecl(nullptr);
}
;

// Function Definition
FnDef: FnDecl CodeBlock
{
    $$ = A_FnDef($1->pos, $1, $2);
}
;

CodeBlock: LB RB{
    $$ = nullptr;
}
| LB CodeBlockStmtList RB
{
    $$ = $2;
}
;

CodeBlockStmtList: CodeBlockStmt CodeBlockStmtList
{
    $$ = A_CodeBlockStmtList($1, $2);
}
| CodeBlockStmt
{
    $$ = A_CodeBlockStmtList($1, nullptr);
}
;

CodeBlockStmt: SEMICOLON
{
    $$ = A_BlockNullStmt($1);
}
| VarDeclStmt
{
    $$ = A_BlockVarDeclStmt($1->pos, $1);
}
| AssignStmt
{
    $$ = A_BlockAssignStmt($1->pos, $1);
}
| CallStmt
{
    $$ = A_BlockCallStmt($1->pos, $1);
}
| IfStmt
{
    $$ = A_BlockIfStmt($1->pos, $1);
}
| WhileStmt
{
    $$ = A_BlockWhileStmt($1->pos, $1);
}
| ReturnStmt
{
    $$ = A_BlockReturnStmt($1->pos, $1);
}
| ContinueStmt
{
    $$ = A_BlockContinueStmt($1);
}
| BreakStmt
{
    $$ = A_BlockBreakStmt($1);
}
;

ReturnStmt: RETURN RightVal SEMICOLON
{
    $$ = A_ReturnStmt($1, $2);
}
| RETURN SEMICOLON
{
    $$ = A_ReturnStmt($1, nullptr);
}
;

ContinueStmt: CONTINUE SEMICOLON
{
    $$ = $1;
}
;

BreakStmt: BREAK SEMICOLON
{
    $$ = $1;
}
;

CallStmt: FnCall SEMICOLON
{
    $$ = A_CallStmt($1->pos, $1);
}
;

// Control Flows
IfStmt: IF LP BoolExpr RP CodeBlock ELSE CodeBlock
{
    $$ = A_IfStmt($1, $3, $5, $7);
}
| IF LP BoolExpr RP CodeBlock
{
    $$ = A_IfStmt($1, $3, $5, nullptr);
}
;

WhileStmt: WHILE LP BoolExpr RP CodeBlock
{
    $$ = A_WhileStmt($1, $3, $5);
}
;

%%                 /* end of rules section */

// yacc文件第四部分：C代码

extern "C"{
    void yyerror(char * s)
    {
        fprintf(stderr, "%s\n",s);
        // fprintf(stderr, "line %d, column %d\n", pos->line, pos->col);
    }
    int yywrap()
    {
        return(1);
    }
}


