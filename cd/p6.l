%{
   
%}

space [ \t]
emptyline \n
%%

{space}+ printf(" ");
{emptyline}+ printf("\n");
. ECHO;

%%

yywrap(){}
main(int argc, char *argv[])
{
extern FILE *yyin;
	yyin = fopen(argv[1],"r");
	yylex();
	return 0;

}
