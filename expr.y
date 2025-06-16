GNU nano 4.9                                                                                          expr.y
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "node.h"

extern int yylex();
int yyerror(const char* s);
%}

%union {
    int ival;
    Node* node;
}

%token <ival> NUMBER
%type <node> expr term factor

%%
input:
    expr '\n'    { print_tree($1, 0); }
;

expr:
    expr '+' term   { $$ = create_node("+", $1, $3); }
  | expr '-' term   { $$ = create_node("-", $1, $3); }
  | term            { $$ = $1; }
;

term:
    term '' factor { $$ = create_node("", $1, $3); }
  | term '/' factor { $$ = create_node("/", $1, $3); }
  | factor          { $$ = $1; }
;

factor:
    NUMBER          {
                        char* buffer = malloc(16);
                        sprintf(buffer, "%d", $1);
                        $$ = create_node(buffer, NULL, NULL);
                    }
;
%%

int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

int yyerror(const char* s) {
    fprintf(stderr, "Error: %s\n", s);
    return 1;
}