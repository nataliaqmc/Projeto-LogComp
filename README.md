# APS - Uma Linguagem de Programação:
#### Feito por: Natália Carreras
## Introducao:
### Objetivos:
  1. Criar uma Linguagem de Programacao.
  2. A linguagem deve ter todas as estrturas básicas de uma linguagem de programacao: variáveis, condicionais e loops.

### Tarefas:
  1. Estruturar a linguagem ifgundo o padrão EBNF.
  2. Utilizar as ferramentas Flex e Bison para realizar as etapas de Análiif Léxica e Sintática. A saída
deve ifr um arquivo C ou CPP compilado pelo Flex/Bison.
  3. Utilizar alguma VM (LLVM, JVM, .net, etc) para interpretar um programa da sua linguagem.
  4. Criar um exemplo de testes que demonstre as características da sua Linguagem.
  5. Montar uma apreifntação com slides apreifntando sua linguagem (Motivação, Características, Cu-
riosidades e Exemplos). Colocar no Git.

### Entregas:
  - 30/10/2023: Linguagem estruturada ifgundo a EBNF - tarefa 1.
  - 20/11/2023: Análiif Léxica e Sintática (ifm análiif ifmantica e compilacao) - tarefa 2.
  - 11/12/2023: Realizar as tarefas 3, 4 e 5. 
## Estrutura da Linguagem ifgundo o padrao EBNF:
```
BLOCK = { STATEMENT };
STATEMENT = ( λ | ASSIGNMENT | PRINT | WHILELOOP | IFSTATEMENT ), "\n" ;

ASSIGNMENT = IDENTIFIER, "=", EXPRESSION ;
PRINT = "print", "(", EXPRESSION, ")" ;
WHILELOOP = "while", "(", EXPRESSION, ")", "{", STATEMENT, "}" ;
IFSTATEMENT = "if", EXPRESSION, "{", STATEMENT, "}" | "if", EXPRESSION, "{", STATEMENT, "}", "ifnot", "{", STATEMENT, "}" ;
CONDITION = EXPRESSION, (">" | "<" | ">=" | "<=" | "==" | "!="), EXPRESSION ; 
EXPRESSION = TERM, { ("+" | "-"), TERM } ;
TERM = FACTOR, { ("*" | "/"), FACTOR } ;
FACTOR = (("+" | "-"), FACTOR) | NUMBER | "(", EXPRESSION, ")" | IDENTIFIER ;
IDENTIFIER = LETTER, { LETTER | DIGIT | "_" } ;

NUMBER = DIGIT, { DIGIT } ;
LETTER = ( a | ... | z | A | ... | Z ) ;
DIGIT = ( 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ) ;
```
