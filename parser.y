%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex();
%}

%token IDENTIFIER NUMBER LETTER DIGIT
%token PLUS MINUS MULTIPLY DIVIDE
%token GREATER LESSER GREATER_EQUAL LESSER_EQUAL EQUAL NOT_EQUAL
%token IF IFNOT WHILE PRINT

%left PLUS MINUS
%left MULTIPLY DIVIDE

%%

program: BLOCK '\n'
       | /* empty */
       ;

BLOCK: '{' statement_list '}' ;

statement_list: statement
              | statement_list statement
              ;

statement: ';'
         | assignment
         | print_statement
         | while_loop
         | if_statement
         | if_not_statement
         ;

assignment: IDENTIFIER '=' expression ';' ;

print_statement: PRINT '(' expression ')' ';' ;

while_loop: WHILE '(' expression ')' BLOCK ;

if_statement: IF '(' expression ')' BLOCK ;

if_not_statement: IF '(' expression ')' BLOCK IFNOT BLOCK ;

condition: expression '>' expression
          | expression '<' expression
          | expression GREATER_EQUAL expression
          | expression LESSER_EQUAL expression
          | expression EQUAL expression
          | expression NOT_EQUAL expression
          ;

expression: term
          | expression PLUS term
          | expression MINUS term
          ;

term: factor
    | term MULTIPLY factor
    | term DIVIDE factor
    ;

factor: '+' factor
      | '-' factor
      | NUMBER
      | '(' expression ')'
      | IDENTIFIER
      ;

%%

int main() {
    yyparse();
    return 0;
}

int yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    return 0;
}
