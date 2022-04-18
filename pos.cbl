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
       01. L-Arrow PIC
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           SET Qty TO 8.
           SET VOP TO 800.
           MOVE "Y" TO Member.
           PERFORM 100-QTY.
           DISPLAY "DISCOUNT: "DISCOUNT
           GOBACK.

       100-QTY.
           EVALUATE TRUE ALSO Position
               WHEN L-Arrow ALSO 2 THRU 10
                   SUBTRACT 1 FROM Position
               WHEN R-Arrow ALSO 1 THRU 9
                   ADD 1 TO Position
               WHEN L-Arrow ALSO 1
                   MOVE 10 TO Position
               WHEN R-Arrow ALSO 10
                   MOVE 1 TO Position
               WHEN DelKey ALSO ANY
                   PERFORM DeleteChar
               WHEN Char ALSO 1 THRU 9
                   PERFORM InsertChar
                   ADD 1 TO Position
               WHEN Char ALSO 10
                   PERFORM InsertChar
               WHEN OTHER PERFORM
                   DisplayErrorMessage
               END-EVALUATE .
       END PROGRAM YOUR-PROGRAM-NAME.
