%{
#include <stdio.h>
int word_count = 0;
%}

%%
[a-zA-Z]+   { word_count++; }
%%

int main() {
    yylex();
    printf("Number of words: %d\n", word_count);
    return 0;
}