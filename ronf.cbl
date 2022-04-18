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
       01 X PIC S9(5) VALUE 12345.
       01 Y PIC S9(3) VALUE 0.
       01 A PIC X(5) VALUE "ABCDE".
       01 B PIC X(3) VALUE SPACES.
       01 WORK.
           05 ASP PIC X(3).
       01 P PIC 9(2)V9 VALUE 2.1.
       01 Q PIC 9(2) VALUE 6.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ADD P TO Q.
           DISPLAY Q.
       MOVE "ABC" TO ASP.
           DISPLAY "ASP: "ASP.
       INITIALIZE WORK.
           DISPLAY WORK.
           DISPLAY ASP.
       END PROGRAM YOUR-PROGRAM-NAME.
