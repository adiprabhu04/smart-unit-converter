%{
#include "parser.tab.h"  // Contains yyerror declaration from parser.y
#include <stdlib.h>
#include <string.h>
%}

%%

[0-9]+      { yylval.num = atoi(yytext); return NUMBER; }
[a-zA-Z]+   { yylval.id = strdup(yytext); return ID; }
[+\-*/()]   { return yytext[0]; }
[ \t\n]     ;  // Skip whitespace
.           { yyerror("Invalid character"); return 0; }  // Added return

%%

int yywrap() {
    return 1;
}