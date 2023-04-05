%{

int c=0;

%}

%%

[a-zA-Z_][a-zA-Z0-9_]* {c++; printf("\tvalid Identifier=%s",yytext);}

. ;

%%

main()

{

yylex();

printf("\nTotal number of valid Identifier = %d \n",c);

}
