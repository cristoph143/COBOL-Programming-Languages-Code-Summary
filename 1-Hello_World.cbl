      ******************************************************************
      * Author: Cristopher Bohol
      * Date: March 29, 2022
      * Purpose: Programming Languages Report
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO_WORLD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC X(20).
       01 AGE PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-DIVISION.
       100-MAIN.
          DISPLAY "What is your Name? ".
          ACCEPT NAME.
          DISPLAY "How old are you? ".
          ACCEPT AGE.
          DISPLAY "HELLO..."Name,"! You're "Age," Old!".
          DISPLAY "GoodBye! "Name.
       END PROGRAM HELLO_WORLD.
