%{
int count=0;
%}
op [+-*/]
letter [a-zA-Z]
digitt [0-9]
id {letter}*|({letter}{digitt})+
notid ({digitt}{letter})+
$ {return 0;}
%%
[\t\n]+
("int")|("float")|("char")|("case")|("default")|("if")|("for")|("printf")|("scanf") {printf("%s is a keyword\n", yytext);}
{id} {printf("%s is an identifier\n", yytext); count++;}
{notid} {printf("%s is not an identifier\n", yytext);}
%%

yywrap(){}
main(int argc, char *argv[])
{
	yylex();
	printf("TOTAL IDENTIFIERS  %d",count);
	return 0;

}
