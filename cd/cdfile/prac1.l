%{
	int n=0,m=0,t=0,c=0;
%}

%%

[\n] {n++;}
[\t] m++; 
[ ] t++;
. c++;
%%
int yywrap()
{
	return 1;
}


int main()

{ yylex();
printf("\n");
printf("Total number of\nlines=%d \ntabs=%d\nspaces=%d\nchars=%d \n",n,m,t,c); 
return 0;
}
