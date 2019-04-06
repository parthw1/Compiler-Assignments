/***Author: Parth Wazurkar ***/

%{
int no_of_ints = 0;
int no_of_floats = 0;
%}

%%
([0-9])* {++no_of_ints;}
([0-9])+\.([0-9])* {++no_of_floats;}
"\n" {return 0;}
%%

int yywrap(){}

int main()
{
  
  yylex();
  printf("number of integers = %d, number of floats = %d\n",
  no_of_ints, no_of_floats);
  return 0;
}
