%{

%}

%%

"//"[^\n]* ; 
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);

%%
int yywrap()
{
    return 1;
}
int main()
{ extern FILE *yyin,*yyout;
 yyin=fopen("Input.c","r");
yyout=fopen("Out.c","w"); 
yylex();
return 0;
}
