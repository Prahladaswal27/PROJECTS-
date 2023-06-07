%{
#include<stdio.h>
int yylex(void);
int yyerror(char *msg);
%}
%token NUM
%left '+' '-'
%left '*' '/'
%right NEGATIVE
%%
S: E {printf("\n");}
;
E: E '+' E {printf("+");}
|	E '*' E {printf("*");}
|	E '-' E {printf("-");}
|	E '/' E {printf("/");}
|	'(' E ')'
|	'-' E %prec NEGATIVE {printf("-");}
|	NUM	{printf("%d", yylval);}
;
%%

int main()
{
printf("\nEnter the arithmetic expression: ");
yyparse();\
return 0;
}

int yyerror (char *msg) {
return printf ("error YACC: %s\n", msg);

}
