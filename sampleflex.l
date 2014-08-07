%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
[ \t\n]         ;
(?:circle|arc|line|ellipse|point)	{ cout << "\nFound an Entity :"<< yytext <<endl; }
%%
main() {
	FILE *myfile = fopen("flextest.txt", "r");
	yyin = myfile;
	// lex through the input:
	yylex();
}
