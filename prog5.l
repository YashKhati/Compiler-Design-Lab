%{
#include<stdio.h>
int lineCount = 0;
int wordCount = 0;
int spaceCount = 0;
int charCount = 0;
%}

%%
[a-zA-Z]+   {wordCount++; charCount += yyleng;}
[ \t]+  {spaceCount++;charCount++;}
\n  {lineCount++;}
.   {charCount++;}
%%

int main()
{
    yyin = fopen("input5.txt","r");
    yylex();
    fclose(yyin);
    printf("Total Characters: %d\n", charCount);
    printf("Total Words: %d\n", wordCount);
    printf("Total Spaces: %d\n", spaceCount);
    printf("Total Lines: %d\n", lineCount);
    printf("Total : %d\n",charCount + spaceCount + lineCount);
    return 0;
}


int yywrap()
{
    return 1;
}