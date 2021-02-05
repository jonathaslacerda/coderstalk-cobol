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

       SOURCE-COMPUTER. computador-de-origem WITH DEBUGGING MODE.
       OBJECT-COMPUTER. computador-de-destino.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.

       FILE-CONTROL.

           SELECT CADALU ASSIGN TO DISK
               ORGANIZATION     IS INDEXED
               ACCESS MODE      IS DYNAMIC
               RECORD KEY       IS KEY-ALU
               ALTERNATE KEY    IS NOME-ALU WITH DUPLICATES
               LOCK MODE        IS *> MANUAL WITH LOCK ON RECORD
                                   AUTOMATIC
               FILE STATUS      IS WS-STATUS.


           SELECT ARQALU ASSIGN TO DISK
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-STATUS.

       DATA DIVISION.

       FILE SECTION.

       FD  CADALU
           LABEL RECORD STANDARD
           VALUE OF FILE-ID IS "CADALU.DAT".
       01  REG-ALU.
           03 KEY-ALU  PIC 9(05).
           03 NOME-ALU PIC X(45).

       FD  ARQALU
           LABEL RECORD STANDARD
           VALUE OF FILE-ID IS "CADALU.REL".
       01  REG-ALU-REL.
           03 MATRICULA-ALU-REL  PIC 9(05).
           03 NOME-ALU-REL       PIC X(45).

       WORKING-STORAGE SECTION.

       01  WS-STATUS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           OPEN OUTPUT CADALU.
           CLOSE CADALU.
           OPEN I-O CADALU.

           OPEN OUTPUT ARQALU.

           MOVE 1 TO KEY-ALU.
           MOVE "JOAO" TO NOME-ALU.
           WRITE REG-ALU.

           MOVE 2 TO KEY-ALU.
           MOVE "MARIA" TO NOME-ALU.
           WRITE REG-ALU.

           MOVE 3 TO KEY-ALU.
           MOVE "RAMON THE BEST" TO NOME-ALU.
           WRITE REG-ALU.

           MOVE 2 TO KEY-ALU.
           READ CADALU KEY IS KEY-ALU.
           IF WS-STATUS = "00" OR "02"
             DISPLAY
               "Encontrou o aluno " NOME-ALU " de matricula " KEY-ALU
           ELSE
             DISPLAY "aluno de matricula " KEY-ALU " nao encontrado"
           END-IF.

           CLOSE CADALU ARQALU.

           DISPLAY "Hello world"

           MOVE 999999 TO RETURN-CODE.
           STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
