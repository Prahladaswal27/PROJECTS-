%{

%}

%%

"//"[^\n]* ; "/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);

%%

main()
{ extern FILE *yyin,*yyout;
 yyin=fopen("Input.c","r");
yyout=fopen("Out.c","w"); 
yylex();
}
