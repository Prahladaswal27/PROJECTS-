%{
int l,n,w,c;
%}
%%
[\n] {l++;}
[ \t] {n++;}
[^ \n\t]+ {w++;c=c+yyleng;}
%%
int yywrap(){return 1;}
int main()
{
extern FILE *yyin; 
yyin=fopen("Input.txt","r"); 
yylex();
printf("\n Line=%d\n whitespace=%d\n word=%d\n total char=%d \n\n",l,n,w,n+c);
}
