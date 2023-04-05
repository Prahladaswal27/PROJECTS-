%{

%}
%%
(“<“|”<\\”)[a-z|A-Z|0-9]*”>”    {printf(” “);}
%%
yywrap(){}
main(int argc, char *argv[])
{
extern FILE *yyin;
	yyin = fopen(argv[1],"r");
	yylex();
	return 0;

}

