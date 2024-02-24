%%
((http)|(ftp))s?:\/\/[a-zA-Z0-9](.[a-z])+(.[a-zA-Z0-9+=?]*)* {printf("\nInValid URL\n");}

.+ {printf("\nvalid URL\n");}

%%
void main()
{
	printf("\nEnter URL : ");
	yylex();
	printf("\n");
}
int yywrap()
{
}
