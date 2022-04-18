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
       01 MONTH-AMOUNT.
           05 AMOUNT PIC X(6) value "abc".
           05 AMOUNTX REDEFINES AMOUNT PIC X(6).
       01 MONTH-AMOUNT1.
           05 AMOUNT1 PIC S9(3)V99 VALUES 99.99.
           05 AMOUNTX1 REDEFINES AMOUNT1.
               10 X-FIELD PIC 9(5).
               10 Y-FIELD REDEFINES X-FIELD.
                   20 A PIC X(3).
                   20 B PIC X(2).
       01 ASP PIC X(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "MONTH-AMOUNT: "MONTH-AMOUNT"?".
           DISPLAY "AMOUNT: "AMOUNT"?"
           DISPLAY "AMOUNTX: "AMOUNTX"?"
           DISPLAY "MONTH-AMOUNT: "MONTH-AMOUNT"?".
           DISPLAY "AMOUNT: "AMOUNT1"?"
           DISPLAY "AMOUNTX: "AMOUNTX1"?"
           DISPLAY "X-FIELD: "X-FIELD"?"
           DISPLAY "Y-FIELD: "Y-FIELD"?"
           DISPLAY "A: "A"?".
           DISPLAY "B: "B,"?".
       MOVE "ABC" TO ASP.
           DISPLAY "ASP "ASP.
       END PROGRAM YOUR-PROGRAM-NAME.
