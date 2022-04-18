      ******************************************************************
      * Author: Cristopher Bohol
      * Date: March 29, 2022
      * Purpose: Programming Languages Report
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONALS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *    setting up places to store values no values set yet
       01 NUM1 PIC 9(2).
       01 NUM2 PIC 9(2).
       01 NUM3 PIC 9(2).
       01 NUM4 PIC 9(2).

      *    create a positive and a negative number to check
       01 NEG-NUM PIC S9(4) VALUE -1234.
      *    create variables for testing classes
       01 CLASS1 PIC X(5) VALUE 'ABCD '.

      *    create statements that can be fed into a cobol conditional
       01 CHECK-VAL PIC 9(3).
           88 PASS VALUES ARE 041 THRU 100.
           88 FAIL VALUES ARE 000 THRU 40.

       PROCEDURE DIVISION.
      *    set 25 into num1 and num3
      *    set 15 into num2 and num4
       MOVE 25 TO NUM1 NUM3.
       MOVE 15 TO NUM2 NUM4.
           PERFORM 100-COMPARE2NUM.
           PERFORM 100-PREDEF.
           PERFORM 100-SWITCHS.
           PERFORM 100-NOT.
           PERFORM 100-POSNEG.
           PERFORM 100-DATATYPE.
           GOBACK.

       100-COMPARE2NUM.
      *    comparing two numbers and checking for equality
           IF NUM1 > NUM2 THEN
               DISPLAY NUM1' IN LOOP 1 - IF BLOCK 'NUM2
               IF NUM3 = NUM4 THEN
                   DISPLAY NUM3'IN LOOP 2 - IF BLOCK 'NUM4
               ELSE
                   DISPLAY NUM4' IN LOOP 2 - ELSE BLOCK 'NUM3
               END-IF
           ELSE
               DISPLAY NUM2'IN LOOP 1 -ELSE BLOCK'NUM1
           END-IF.

       100-PREDEF.
      *    use a custom pre-defined condition which checks CHECK-VAL
           MOVE 65 TO CHECK-VAL.
           IF PASS
               DISPLAY 'PASSED WITH 'CHECK-VAL' MARKS.'.
           IF FAIL
               DISPLAY 'FAILED WITH 'CHECK-VAL' MARKS.'.

       100-SWITCHS.
      *    a switch statment
           EVALUATE TRUE
               WHEN NUM1 < 2
                   DISPLAY NUM1 'NUM1 LESS THAN 2'
               WHEN NUM1 < 19
                   DISPLAY NUM1 'NUM1 LESS THAN 19'
               WHEN NUM1 < 1000
                   DISPLAY NUM1 'NUM1 LESS THAN 1000'
           END-EVALUATE.

       100-NOT.
      *    NOT, negating a conditional
           MOVE 50 TO NUM1.
           MOVE 60 TO NUM2.
      *    if(!NUM2 < NUM1) DISPLAY IS NOT LESS THAN
           IF NOT NUM2 IS LESS THAN NUM1 THEN
               DISPLAY NUM2' IS NOT LESS THAN 'NUM1
           END-IF
      *    AND, having multiple conditionals
      *    if(NUM1 < NUM2 && NUM1 < 100)
           IF NUM1 IS LESS THAN NUM2 AND NUM1 IS LESS THAN 100 THEN
               DISPLAY 'COMBINED CONDITION'
           ELSE
               DISPLAY 'NAH'.

       100-POSNEG.
      *    checking for negative or positive values
           IF NEG-NUM IS POSITIVE OR NEG-NUM IS NEGATIVE THEN
               DISPLAY NEG-NUM' NUMBER IS POSITIVE'.

      *    checking for negative or positive values
           IF NEG-NUM IS NEGATIVE THEN
               DISPLAY NEG-NUM 'A NUMBER IS NEGATIVE'.

       100-DATATYPE.
      *    checking if a variable is a certain data type
           IF CLASS1 IS ALPHABETIC OR CLASS1 IS NUMERIC THEN
               DISPLAY CLASS1' CLASS1 IS ALPHABETIC or numeric'.
      *    checking if a variable is a certain data type
           IF CLASS1 IS ALPHABETIC AND NOT CLASS1 IS NUMERIC THEN
               DISPLAY CLASS1' CLASS1 IS ALPHABETIC and Not numeric'.
       END PROGRAM CONDITIONALS.
