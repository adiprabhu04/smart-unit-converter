%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Forward declarations
int yylex(void);
void yyerror(const char *msg);
%}

%union {
    int num;
    char *id;
}

%token <num> NUMBER
%token <id> ID
%type <id> expr

%left '+' '-'
%left '*' '/'

%%

[previous rules section remains exactly the same]

%%

void yyerror(const char *msg) {
    fprintf(stderr, "Error: %s\n", msg);
}

int main() {
    yyparse();
    return 0;
}