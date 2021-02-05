       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WS-NOME PIC X(45).
       01  WS-DATA.
           03 ANO PIC 9(04).
           03 MES PIC 9(02).
           03 DIA PIC 9(02).
       01  WS-HORA.
           03 HH PIC 9(02).
           03 MM PIC 9(02).
           03 SS PIC 9(02).
           03 CC PIC 9(02).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "Digite seu nome: ".
           ACCEPT WS-NOME.
           DISPLAY "Bem vindo, " WS-NOME.

           ACCEPT WS-DATA FROM DATE YYYYMMDD.
           DISPLAY "Hoje eh " DIA "/" MES "/" ANO.

           ACCEPT WS-HORA FROM TIME.
           DISPLAY "A hora atual eh " HH ':' MM ":" SS "-" CC.

           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
