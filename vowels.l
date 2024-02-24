%{
#include <stdio.h>
#include <string.h>

int vowels = 0;
int consonants = 0;
%}

%%
[a-zA-Z]    {
                if (strchr("aeiouAEIOU", yytext[0]) != NULL) {
                    vowels++;
                } else {
                    consonants++;
                }
            }
.           ; // Ignore non-alphabetic characters
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Number of vowels: %d\n", vowels);
    printf("Number of consonants: %d\n", consonants);
    return 0;
}
