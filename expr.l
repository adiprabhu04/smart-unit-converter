GNU nano 4.9                                                                                          expr.l
%{
#include "node.h"
#include "y.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+      { yylval.ival = atoi(yytext); return NUMBER; }
[\n]        { return '\n'; }
[ \t]       ; // Ignore whitespace
.           { return yytext[0]; }
%%