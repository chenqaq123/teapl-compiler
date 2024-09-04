%{
#include <stdio.h>
#include <string.h>
#include "TeaplAst.h"
#include "y.tab.hpp"
extern int line, col;
int c;
int calc(char *s, int len);
%}

%s COMMENT_INLINE COMMENT_BLOCK

%%
<COMMENT_INLINE>[^\n]* {}
<COMMENT_INLINE>\n {
    BEGIN(INITIAL);
    ++line;
    col = 1;
}

<COMMENT_BLOCK>[^*]* {}
<COMMENT_BLOCK>"*/" {
    BEGIN(INITIAL);
}

"//" {
    BEGIN(COMMENT_INLINE);
    col+=2;
}

"/*" {
    BEGIN(COMMENT_BLOCK);
    col+=2;
}

"\n" { ++line; col = 1; }
"\t" { col+=4; }
" " { ++col; }

"+" { yylval.pos = A_Pos(line,col); ++col; return ADD; }
"-" { yylval.pos = A_Pos(line,col); ++col; return SUB; }
"*" { yylval.pos = A_Pos(line,col); ++col; return MUL; }
"/" { yylval.pos = A_Pos(line,col); ++col; return DIV; }

"(" { yylval.pos = A_Pos(line,col); ++col; return LP; }
")" { yylval.pos = A_Pos(line,col); ++col; return RP; }
"[" { yylval.pos = A_Pos(line,col); ++col; return LSB; }
"]" { yylval.pos = A_Pos(line,col); ++col; return RSB; }
"{" { yylval.pos = A_Pos(line,col); ++col; return LB; }
"}" { yylval.pos = A_Pos(line,col); ++col; return RB; }

"," { yylval.pos = A_Pos(line,col); ++col; return COMMA; }
";" { yylval.pos = A_Pos(line,col); ++col; return SEMICOLON; }

"==" { yylval.pos = A_Pos(line,col); col+=2; return EQ; }
"!=" { yylval.pos = A_Pos(line,col); col+=2; return NE; }
"<" { yylval.pos = A_Pos(line,col); ++col; return LT; }
"<=" { yylval.pos = A_Pos(line,col); col+=2; return LE; }
">" { yylval.pos = A_Pos(line,col); ++col; return GT; }
">=" { yylval.pos = A_Pos(line,col); col+=2; return GE; }

"=" { yylval.pos = A_Pos(line,col); ++col; return ASSIGN; }

"&&" { yylval.pos = A_Pos(line,col); col+=2; return AND; }
"||" { yylval.pos = A_Pos(line,col); col+=2; return OR; }
"!" { yylval.pos = A_Pos(line,col); ++col; return NOT; }

":" { yylval.pos = A_Pos(line,col); ++col; return COLON; }
"->" { yylval.pos = A_Pos(line,col); col+=2; return ARROW; }
"." { yylval.pos = A_Pos(line,col); ++col; return DOT; }

"if" { yylval.pos = A_Pos(line,col); col+=2; return IF; }
"else" { yylval.pos = A_Pos(line,col); col+=4; return ELSE; }
"while" { yylval.pos = A_Pos(line,col); col+=5; return WHILE; }
"break" { yylval.pos = A_Pos(line,col); col+=5; return BREAK; }
"continue" { yylval.pos = A_Pos(line,col); col+=8; return CONTINUE; }
"ret" { yylval.pos = A_Pos(line,col); col+=6; return RETURN; }

"int" { yylval.pos = A_Pos(line,col); col+=3; return INT; }

"fn" { yylval.pos = A_Pos(line,col); col+=1; return FN; }
"let" { yylval.pos = A_Pos(line,col); col+=3; return LET; }
"struct" { yylval.pos = A_Pos(line,col); col+=5; return STRUCT; }

[1-9][0-9]* {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
    col+=yyleng;
    return NUM;
}
0 {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), 0);
    ++col;
    return NUM;
}

[a-z_A-Z][a-z_A-Z0-9]* {
    yylval.tokenId = A_TokenId(A_Pos(line, col), strdup(yytext));
    col+=yyleng;
    return ID;
}

. {
    // printf("Illegal input \"%c\"\n", yytext[0]);
}
%%

// This function takes a string of digits and its length as input, and returns the integer value of the string.
int calc(char *s, int len) {
    int ret = 0;
    for(int i = 0; i < len; i++)
        ret = ret * 10 + (s[i] - '0');
    return ret;
}