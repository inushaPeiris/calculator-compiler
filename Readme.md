- add calc3.h file.
- add lex.1 file.
- add yacc.y file.

<!-- - bison -d yacc.y      # Generates y.tab.c and y.tab.h -->
- bison -d -o y.tab.c yacc.y        # Produces y.tab.c and y.tab.h

- flex lex.l           # Generates lex.yy.c

- gcc -o calc lex.yy.c y.tab.c -ll -lm     # Step 3: Compile both into an executable

### To edit calc file
  - type ./calc hit enter
  - put code.
          p = 15;
          q = 3;
          while (p > q) {
              if (p < q)
                  p = p - q;
              else
                  q = p + q;
          }
          print q;

        //valid
        x = 10;
        if (x < 20) {
          print x;
        };

        // invalid
        x = 10;
        if (x < 20) {
          print 'larger';
        };


  - hit double enter


  

