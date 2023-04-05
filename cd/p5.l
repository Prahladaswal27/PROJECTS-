%{
int lines=0, words=0,spaces=0,total=0;
%}
%% 
\n { lines++; words++; total++;}
[\t ' '] {words++;total++;}
[" "] {spaces++;total++;}
%%

yywrap(){}
main(int argc, char *argv[])
{
extern FILE *yyin;
	yyin = fopen(argv[1],"r");
	yylex();
	printf("LINES : %d WORDS : %d  SPACES %d  TOTAL:  %d",lines,words,spaces,total);
	return 0;

}
