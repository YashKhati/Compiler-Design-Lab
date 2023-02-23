%{
%}
DIGIT [0-9]
%%
{DIGIT}* {ECHO;printf("Integer");}
{DIGIT}*?\.{DIGIT}* {ECHO;printf("FLoat");}
%%
yywrap(){}
main(int argc,char *argv[])
{
  extern FILE *yyin;
  yyin = fopen(argv[1],"r");
  yylex();     
}
