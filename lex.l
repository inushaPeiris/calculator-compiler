%{
#include <stdlib.h>
#include "calc3.h"
#include "y.tab.h"

void yyerror(char *);
%}

%%

[a-z]               { yylval.sIndex = *yytext - 'a'; return VARIABLE; }
0                   { yylval.iValue = atoi(yytext); return INTEGER; }
[1-9][0-9]*         { yylval.iValue = atoi(yytext); return INTEGER; }

"while"             { return WHILE; }
"if"                { return IF; }
"then"              { return THEN; }
"else"              { return ELSE; }
"print"             { return PRINT; }

"=="                { return EQ; }
"!="                { return NE; }
">="                { return GE; }
"<="                { return LE; }

[-+*/=<>(){};>]     { return *yytext; }

[ \t\r\n]+          ;   // skip whitespace

.                   { yyerror("Unknown character"); }

%%

int yywrap(void) {
    return 1;
}
