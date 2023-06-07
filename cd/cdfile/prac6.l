%{
%}
%%
[ \n\t]+ fprintf(yyout," "); 
.	fprintf(yyout,"%s",yytext);
%%
int yywrap()
{
    return 1;
}
int main()
{	extern FILE *yyin,*yyout; 
yyin=fopen("Input2.txt","r"); 
yyout=fopen("Output.txt","w"); 
yylex(); 
return 0;
}
