%{

%}

%%

\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
%%

yywrap(){}
main(int argc, char *argv[])
{
extern FILE *yyin;
	yyin = fopen(argv[1],"r");
	yylex();
	return 0;

}
