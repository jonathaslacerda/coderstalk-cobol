      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WS-VAR1 PIC 9(02).
       01  WS-VAR2 PIC 9(02).
       01  WS-EVAL PIC 9(02).
       01  ITEM-TABELA PIC X(20).
       01  TABELA  PIC X(20) OCCURS 3 TIMES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           IF 1 < 2
               DISPLAY "1 eh menor que 2"
           END-IF.

           MOVE 2 TO WS-VAR1.
           MOVE 4 TO WS-VAR2.
           IF WS-VAR1 > WS-VAR2
             DISPLAY WS-VAR1 " EH MAIOR QUE " WS-VAR2
           ELSE
             DISPLAY WS-VAR1 " EH MENOR OU IGUAL A " WS-VAR2
           END-IF.

           MOVE 3 TO WS-EVAL.
           EVALUATE WS-EVAL
           WHEN 1
               DISPLAY "OPCAO 1"
           WHEN 2
               DISPLAY "OPCAO 2"
           WHEN 3
               DISPLAY "OPCAO 3"
           WHEN OTHER
               DISPLAY "OPCAO INVALIDA"
           END-EVALUATE.

           *> loops
           *> esse java nao tem
           MOVE ZEROS TO WS-VAR1.
           PERFORM 4 TIMES
               ADD 1 TO WS-VAR1
               DISPLAY "LOOP-1 " WS-VAR1
           END-PERFORM.

      *    COMO UNTIL SIGNIFICA O INVERSO DE WHILE, O TESTE TAMBÉM É INVERTIDO
      *    int wsVar1 = 0;
      *    while(wsVar1 < 10){
      *        wsVar1++;
      *        System.out.println("LOOP-2 " + wsVar1);
      *    }
           MOVE 0 TO WS-VAR1.
           PERFORM UNTIL WS-VAR1 >= 10
               ADD 1 TO WS-VAR1
               DISPLAY "LOOP-2 " WS-VAR1
           END-PERFORM.

      *    for(int wsVar1 = 0; wsVar1 > 10; wsVar1++){
      *        System.out.println("LOOP-3 " + wsVar1);
      *    }
           PERFORM VARYING WS-VAR1 FROM 0 BY 1 UNTIL WS-VAR1 > 10
               DISPLAY "LOOP-3 " WS-VAR1
           END-PERFORM.

      *    wsVar1 = 0;
      *    do {
      *        wsVar1++;
      *        System.out.println("LOOP-4 " + wsVar1);
      *    } while (wsVar1 < 10);
           MOVE ZEROS TO WS-VAR1.
           PERFORM WITH TEST AFTER UNTIL WS-VAR1 >= 10
               ADD 1 TO WS-VAR1
               DISPLAY "LOOP-4 " WS-VAR1
           END-PERFORM.

      *    JAVA BREAK
      *    int wsVar1 = 0;
      *    while (true) {
      *        if (wsVar1 == 5)
      *           break;
      *        System.out.println("LOOP-5 " + wsVar1);
      *        wsVar1++;
      *    }
           MOVE ZEROS TO WS-VAR1.
           PERFORM UNTIL EXIT
              IF WS-VAR1 = 5
                 EXIT PERFORM
              END-IF
              DISPLAY "LOOP-5 " WS-VAR1
              ADD 1 TO WS-VAR1
           END-PERFORM.

      *    JAVA CONTINUE
      *    for (int wsVar1 = 0; wsVar1 < 5 ; wsVar1++){
      *      if (wsVar1 < 4)
      *          continue;
      *      System.out.println("LOOP-6 " + wsVar1);
      *    }
           PERFORM VARYING WS-VAR1 FROM 0 BY 1 UNTIL WS-VAR1 >= 5
               IF WS-VAR1 < 4
                   EXIT PERFORM CYCLE
               END-IF
               DISPLAY "LOOP-6 " WS-VAR1
           END-PERFORM.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
