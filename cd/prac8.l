%{
%}
%% "<"[^>]*">"	;
. fprintf(yyout,"%s",yytext);
%%
main(int args, char **argv)
{ extern FILE *yyin,*yyout; 
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w"); 
yylex();
}
