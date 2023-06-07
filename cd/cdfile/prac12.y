%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}

%token digit
%left '+' '-'
%left '*' '/'

%%
S:S E'\n' {$$=$2; printf("\nOutput = %d\n\n",$$);}
 | ;
E:E '+' E {$$=$1+$3;}
 |E '-' E {$$=$1-$3;}
 |E '*' E {$$=$1*$3;}
 |E '/' E {$$=$1/$3;}
 |digit   {$$ = $1;}
 ;
%%

int main()
{
    printf("\nEnter Arithmetic Expression : ");
    yyparse();
    return 0;
}

void yyerror(char *msg)
{
    printf("\n%s", msg);
    printf("\nArithmetic Expression is Invalid\n");
}
