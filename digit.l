%{
#include <stdio.h>
int yywrap();
%}

DIGIT [0-9]

%%
{DIGIT}+    { printf("Input is a digit: %s\n", yytext); }
.           { printf("Input is not a digit: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
