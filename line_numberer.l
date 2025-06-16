%{
#include <stdio.h>
int line_num = 1;
%}

%%
^.*\n   { printf("%d: %s", line_num++, yytext); }
%%

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }
    yyin = fopen(argv[1], "r");
    yylex();
    fclose(yyin);
    return 0;
}