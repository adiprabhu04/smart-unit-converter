%{
#include <stdio.h>
%}

%%
[A-Z]   { printf("Capital letter: %s\n", yytext); }
[a-z]   { printf("Small letter: %s\n", yytext); }
[0-9]   { printf("Digit: %s\n", yytext); }
.       { printf("Special symbol: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}