# APS - Uma Linguagem de Programação:
#### Feito por: Natália Carreras
### [Apresentação do Projeto - PowerPoint](Apresentação.pdf)
## Introducao:
### Objetivos:
  1. Criar uma Linguagem de Programação.
  2. A linguagem deve ter todas as estrturas básicas de uma linguagem de programacao: variáveis, condicionais e loops.

### Tarefas:
  1. Estruturar a linguagem segundo o padrão EBNF.
  2. Utilizar as ferramentas Flex e Bison para realizar as etapas de Análise Léxica e Sintática. A saída
deve ser um arquivo C ou CPP compilado pelo Flex/Bison.
  3. Utilizar alguma VM (LLVM, JVM, .net, etc) para interpretar um programa da sua linguagem.
  4. Criar um exemplo de testes que demonstre as características da sua Linguagem.
  5. Montar uma apresentação com slides apresentando sua linguagem (Motivação, Características, Curiosidades e Exemplos). Colocar no Git.

### Entregas:
  - 30/10/2023: Linguagem estruturada ifgundo a EBNF - tarefa 1.
  - 20/11/2023: Análise Léxica e Sintática (sem analise semâctica e compilacao) - tarefa 2.
  - 11/12/2023: Realizar as tarefas 3, 4 e 5. 
## Estrutura da Linguagem segundo o padrão EBNF:
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
