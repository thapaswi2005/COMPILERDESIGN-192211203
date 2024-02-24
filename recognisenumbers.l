%{
#include <stdio.h>
int num_count = 0;
int word_count = 0;
int yywrap(void) { return 1; } // Adjusted yywrap function definition
%}

DIGITS [0-9]+
WORDS [a-zA-Z]+

%%

{DIGITS}    { printf("Number: %s\n", yytext); num_count++; }
{WORDS}     { printf("Word: %s\n", yytext); word_count++; }
.           ;

%%

int main() {
    yylex();
    printf("Total numbers: %d\n", num_count);
    printf("Total words: %d\n", word_count);
    return 0;
}
