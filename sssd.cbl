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
       01   X  PIC S9(5) VALUE 12345.
       01   Y  PIC S9(3) VALUE 0.
       01   A  PIC X(5)  VALUE "ABCDE".
       01   B  PIC X(3)  VALUE SPACES.
       01   WORK.
           05   A-FIELD   PIC X(3).
           05   B-FIELD   PIC S999V99.
       PROCEDURE DIVISION.
       MOVE X TO Y.
       MOVE A TO B.
       MOVE "ABC" TO A-FIELD.
       MOVE 123.45 TO B-FIELD.
       MOVE LOW-VALUE TO WORK.
       MAIN-PROCEDURE.
            DISPLAY "X: "X.
            DISPLAY "Y: "Y.
            DISPLAY "A: "A.
            DISPLAY "B: "B.
            DISPLAY "AFIELD: "A-FIELD.
            DISPLAY "B-FIELD: "B-FIELD.
            DISPLAY "WORK: "WORK.
            INITIALIZE WORK.
            DISPLAY "AFIELD: "A-FIELD.
            DISPLAY "B-FIELD: "B-FIELD.
            DISPLAY "WORK: "WORK.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
