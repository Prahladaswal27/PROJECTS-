%{

int m=0,n=0;

%}

%%

-?[0-9]+ {m++; printf("\t Integer = %s",yytext);}

-?[0-9]+"."[0-9]+ {n++; printf("\t Float = %s",yytext);}

. ;

%%

main()

{

yylex();

printf("\nTotal number of Integer = %d & Float = %d \n",m,n);

}
