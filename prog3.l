%{
#include<stdio.h>
%}
digit [0-9]
%%
[\t\n ]+ {}
{digit}+	{printf("Interger Value: %s\n", yytext);}
{digit}*[.]{digit}+	{printf("Float Value: %s\n", yytext);}
.+	{printf("Invalid Input: %s\n", yytext);}
%%

int yywrap(){}

int main()
{
	yylex();
	return 0;
}
