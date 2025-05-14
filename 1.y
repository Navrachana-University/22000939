%{
#include "1.tab.h"
#include <string.h>
#include <stdlib.h>
%}

%option noyywrap

%%

"chalu"             { return START; }
"puru"              { return END; }
"aapo"              { return ASSIGN; }
"lakho"             { return PRINT; }
"jo"                { return IF; }
"to"                { return ELSE; }
"mate"              { return FOR; }       
"paryant"           { return TO; }
"parat"             { return REPEAT; }
"jyasudhi"          { return WHILE; }

"=="                { return EQ; }
"<="                { return LE; }
"<"                 { return LT; }
">"                 { return GT; }
"+"                 { return ADD; }
"-"                 { return SUB; }
"*"                 { return MUL; }
"/"                 { return DIV; }
"="                 { return ASSIGN; }

";"                 { return SEMICOLON; }
":"                 { return ':'; }
"("                 { return '('; }
")"                 { return ')'; }
"{"                 { return '{'; }
"}"                 { return '}'; }

\"([^\"]*)\"        { yylval.str = strdup(yytext + 1); yylval.str[strlen(yylval.str) - 1] = '\0'; return STRING; }

[0-9]+              { yylval.num = atoi(yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { yylval.id = strdup(yytext); return ID; }

[ \t\r\n]+          { /* Ignore whitespace */ }

.                   { fprintf(stderr, "Error: Unknown character '%s'\n", yytext); exit(1); }

%%
