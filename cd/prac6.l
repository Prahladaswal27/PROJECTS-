%{
%}
%%
[ \n\ 
.	fprintf(yyout,"%s",yytext);
%%
main()
{	extern FILE *yyin,*yyout; 
yyin=fopen("Input.txt","r"); 
yyout=fopen("Output.txt","w"); 
yylex(); 
}
