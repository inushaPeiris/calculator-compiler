- add calc3.h file.
- add lex.1 file.
- add yacc.y file.

- bison -d yacc.y      # Generates y.tab.c and y.tab.h
- flex lex.l           # Generates lex.yy.c

- bison -d -o y.tab.c yacc.y        # Generate calc file.

- gcc -o calc lex.yy.c y.tab.c -ll -lm      # build

### To edit calc file
  - type ./calc hit enter
  - put code.
          while (p > q) {
              if (p < q)
                  p = p - q;
              else
                  q = p + q;
          }
          print q;
  
  - hit double enter




