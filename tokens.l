%{
#include "tokens.tab.h"  // Bison-generated header file
%}

%%

[ \t]+          ; // Ignore whitespace

"print"         { return PRINT; }
"while"         { return WHILE; }
"ifnot"         { return IFNOT; }
"if"            { return IF; }
"{"             { return '{'; }
"}"             { return '}'; }
";"             { return ';'; }
"("             { return '('; }
")"             { return ')'; }
"="             { return '='; }
">"             { return GREATER; }
"<"             { return LESSER; }
">="            { return GREATER_EQUAL; }
"<="            { return LESSER_EQUAL; }
"=="            { return EQUAL; }
"!="            { return NOT_EQUAL; }
"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return MULTIPLY; }
"/"             { return DIVIDE; }

[a-zA-Z_][a-zA-Z0-9_]* { yylval.str = strdup(yytext); return IDENTIFIER; }

[0-9]+          { yylval.num = atoi(yytext); return NUMBER; }

.               { fprintf(stderr, "Unrecognized character: %s\n", yytext); }

%%

int yywrap(void) {
    return 1;
}
