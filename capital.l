%{
#include <stdio.h>
%}

%%
[A-Z]+      { printf("Capital word: %s\n", yytext); }
.           ;
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
