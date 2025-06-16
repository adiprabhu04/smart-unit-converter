%{
#include <stdio.h>
%}

%%
a       { printf("Found 'a'\n"); }
[a-z]   { printf("Found lowercase: %s\n", yytext); }
\n      ;  // Ignore newline
.       { printf("Unmatched: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}