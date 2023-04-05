%{
int count = 0;
%}

%%
[\t\n]+ {}
"$" {return 0;}
"int"|"float"|"char"|"if"|"for"   {   printf("%s is a keyword\n", yytext);  }
[a-zA-Z_][a-zA-z0-9_]*  {   printf("Valid Identifier: %s\n", yytext); count++;   }
.+  {   printf("Not Valid Identifier: %s\n", yytext);    }
%%

int yywrap(){}

int main()
{
    yylex();
    printf("Total Identifiers : %d", count);
    return 0;
}
