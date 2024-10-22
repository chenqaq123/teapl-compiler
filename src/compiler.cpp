#include <fstream>
#include <iostream>
#include "TeaplAst.h"
#include "TeaplaAst.h"
#include "PrintTeaplaAst.h"
// #include "TypeCheck.h"
#include "y.tab.hpp"
#include "llvm_ir.h"
#include "ast2llvm.h"
#include "printLLVM.h"
#include "llvm2asm.h"
#include "printASM.h"
#include "ssa.h"
#include "graph.hpp"
#include "bg_llvm.h"
#define YACCDEBUG 0

using namespace std;
using namespace LLVMIR;

extern int yyparse();
extern YYSTYPE yylval;
extern int yydebug;

int line, col;

A_program root;
aA_program aroot;

int main(int argc, char * argv[]) {

    #if YACCDEBUG
        yydebug = 1;
    #endif

    line = 1;
    col = 1;

    string input_name = argv[1];
    auto dot_pos = input_name.find('.');
    if(dot_pos == input_name.npos)
    {
        cout << "input error";
        return -1;
    }
    string file_name(input_name.substr(0,dot_pos));
    
    freopen(argv[1], "r", stdin);  
    ofstream ASTStream;
    // ASTStream.open(file_name+".ast");

    yyparse();
    
    aroot = aA_Program(root);
    // print_aA_Program(aroot, ASTStream);
    // ASTStream.close();

    // check_Prog(&std::cout, aroot);

    ofstream LLVMStream;
    LLVMStream.open(file_name + ".ll");
    auto l_prog = ast2llvm(aroot);
    l_prog=SSA(l_prog);
    printL_prog(LLVMStream,l_prog);
    LLVMStream.close();

    ofstream ASMStream;
    ASMStream.open(file_name + ".S");
    auto as_prog = llvm2asm(*l_prog);

    printAS_prog(ASMStream,as_prog);
    ASMStream.close();

    return 0;
}

