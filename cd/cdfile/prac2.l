%{

int c=0;

%}

%%

^[a-zA-Z_][a-zA-Z0-9_]* {c++; printf("\tvalid Identifier=%s",yytext);}
^[^a-zA-Z_] printf("Invalid identifier");

. ;

%%


int yywrap()
{
return 1;
}
int main()

{

yylex();

printf("\nTotal number of valid Identifier = %d \n",c);
return 0;

}
