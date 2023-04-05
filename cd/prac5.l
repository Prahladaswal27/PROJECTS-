%{
int n,w,c;
%}
%%
[ \n\t] {n++;}
[^ \n\t]+ {w++;c=c+yyleng;}
%%
main()
{
extern FILE *yyin; yyin=fopen("Input.txt","r"); yylex();
printf("whitespace=%d word=%d total char=%d \n",n,w,n+c);
}
