      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *constantes
       77  CONST-IDADE-MAX PIC 9(3) VALUE 120.

      *variaveis
       01  VAR_TEXTO PIC X(45).
       01  VAR_TEXTO_INICIALIZADA PIC X(45) VALUE "CODERS PODCAST".
       01  VAR_NUMERICA PIC 9(04).
       01  VAR_NUMERICA_SINAL PIC S9(04).
       01  VAR_NUMERICA_DECIMAL PIC 9(04)V9(02).
       01  PESSOA.
           03 NOME              PIC X(45).
           03 ARTE_MARCIAL      PIC X(30).
           03 DATA_NASCIMENTO.
              05 DIA-NASCIMENTO PIC 9(02).
              05 MES-NASCIMENTO PIC 9(02).
              05 ANO-NASCIMENTO PIC 9(04).
       01  LINHA-PESSOA         PIC X(80).
       01  DIVIDENDO            PIC 9(04).
       01  DIVISOR              PIC 9(04).
       01  QUOCIENTE            PIC 9(04).
       01  RESTO                PIC 9(04).

       01  TABELA PIC X(20) OCCURS 10 TIMES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           *> EXIBICAO DE VARIAVEIS
           DISPLAY "CONSTANTE IDADE MAXIMA: " CONST-IDADE-MAX.

           *> ATRIBUICAO DE VARIAVEIS
           MOVE 87 TO VAR_NUMERICA.
           DISPLAY "Variavel numerica: " VAR_NUMERICA.

           MOVE "'JOAO'" TO VAR_TEXTO.
           DISPLAY "Variavel TEXTO: " VAR_TEXTO.

           MOVE "RYU" TO NOME.
           MOVE "CARATE" TO ARTE_MARCIAL.
           MOVE "21071964" TO DATA_NASCIMENTO.
           DISPLAY PESSOA.

           *> CONCATENACAO DE TEXTO
           INITIALIZE LINHA-PESSOA.
           STRING
               "O personagem " NOME              DELIMITED BY "  "
               " nasceu em " DIA-NASCIMENTO "/"
                             MES-NASCIMENTO "/"
                             ANO-NASCIMENTO      DELIMITED BY SIZE
               " e luta " ARTE_MARCIAL           DELIMITED BY "  "
               "."
               INTO LINHA-PESSOA
           END-STRING.
           DISPLAY LINHA-PESSOA.

           *> CALCULOS
           COMPUTE VAR_NUMERICA = 3 + 4.
           DISPLAY VAR_NUMERICA.

           COMPUTE VAR_NUMERICA = 3 - 4.
           DISPLAY VAR_NUMERICA.

           COMPUTE VAR_NUMERICA_SINAL = 3 - 4.
           DISPLAY VAR_NUMERICA_SINAL.

           COMPUTE VAR_NUMERICA = 3 * 4.
           DISPLAY VAR_NUMERICA.

           COMPUTE VAR_NUMERICA = 3 / 4.
           DISPLAY VAR_NUMERICA.

           COMPUTE VAR_NUMERICA_DECIMAL = 3 / 4.
           DISPLAY 'result1: ' VAR_NUMERICA_DECIMAL.

           DIVIDE 10 BY 5 GIVING QUOCIENTE REMAINDER RESTO.
           DISPLAY QUOCIENTE.
           DISPLAY 'result2: ' RESTO.

           MOVE 10 TO DIVIDENDO.
           MOVE 3  TO DIVISOR.
           DIVIDE DIVIDENDO BY DIVISOR GIVING QUOCIENTE REMAINDER RESTO.
           DISPLAY QUOCIENTE.
           DISPLAY 'result4: ' RESTO.

           MOVE ZEROS TO VAR_NUMERICA.
           ADD 1, 2 TO VAR_NUMERICA.
           DISPLAY VAR_NUMERICA.
           ADD 1 TO VAR_NUMERICA.
           DISPLAY VAR_NUMERICA.

           SUBTRACT 2 FROM VAR_NUMERICA.
           DISPLAY VAR_NUMERICA.

           MOVE "ITEM TABELA" TO TABELA(1).
           DISPLAY TABELA(1).

           COMPUTE VAR_NUMERICA = 4**2.
           DISPLAY VAR_NUMERICA.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
