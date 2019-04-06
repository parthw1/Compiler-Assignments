/*** Author: Parth Wazurkar ***/

%{
int i=32;
%}

%%
([a-z]) {printf("%c",yytext[0]-i);}
"\n" {return 0;}
%%

int yywrap(){}

int main()
{
  
  yylex();printf("\n");
  return 0;
}
