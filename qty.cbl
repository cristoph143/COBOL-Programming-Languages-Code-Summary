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
       01 Qty PIC 9(2).
       01 Discount PIC 9(2)v99.
       01 VOP PIC 9(3).
       01 Member PIC X.
       01 X PIC 9(2).
       01 Y PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           SET Qty TO 8.
           SET VOP TO 800.
           MOVE "Y" TO Member.
           PERFORM 100-QTY.
           DISPLAY "DISCOUNT: "DISCOUNT
           MOVE ZERO TO Y
           PERFORM VARYING X FROM 1 BY 1
                   UNTIL X > 100
       DISPLAY X
       END-PERFORM


           GOBACK.

       100-QTY.
           EVALUATE Qty ALSO TRUE ALSO Member
               WHEN 1 THRU 5 ALSO VOP < 501 ALSO "Y"
                   MOVE 2 TO Discount
               WHEN 6 THRU 16 ALSO VOP < 501 ALSO "Y"
                   MOVE 3 TO Discount
               WHEN 17 THRU 99 ALSO VOP < 501 ALSO "Y"
                   MOVE 5 TO Discount
               WHEN 1 THRU 5 ALSO VOP < 2001 ALSO "Y"
                   MOVE 7 TO Discount
               WHEN 6 THRU 16 ALSO VOP < 2001 ALSO "Y"
                   MOVE 12 TO Discount
               WHEN 17 THRU 99 ALSO VOP < 2001 ALSO "Y"
                   MOVE 18 TO Discount
               WHEN 1 THRU 5 ALSO VOP > 2000 ALSO "Y"
                   MOVE 10 TO Discount
               WHEN 6 THRU 16 ALSO VOP > 2000 ALSO "Y"
                   MOVE 23 TO Discount
               END-EVALUATE .
       END PROGRAM YOUR-PROGRAM-NAME.
