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
       01 PLANET-NAME PIC X(9).
       01 PLANET-NUMBER PIC 9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           SET PLANET-NUMBER TO 4.
           PERFORM 100-PLANETNUM.
           DISPLAY "PLANET-NUMBER: "PLANET-NUMBER
           DISPLAY "PLANET-NAME: "PLANET-NAME
           DISPLAY "--------------------------"
           MOVE "MERCURY" TO PLANET-NAME.
           PERFORM 100-PLANETNAME.
           DISPLAY "PLANET-NUMBER: "PLANET-NUMBER
           DISPLAY "PLANET-NAME: "PLANET-NAME
           DISPLAY "--------------------------"
           MOVE "Mercury" TO PLANET-NAME.
           PERFORM 100-PLANETNAME.
           DISPLAY "PLANET-NUMBER: "PLANET-NUMBER
           DISPLAY "PLANET-NAME: "PLANET-NAME
           DISPLAY "--------------------------"
           PERFORM 100-PLANETRUE.
           DISPLAY "PLANET-NUMBER: "PLANET-NUMBER
           DISPLAY "PLANET-NAME: "PLANET-NAME
           GOBACK.

       100-PLANETNUM.
           EVALUATE PLANET-NUMBER
               WHEN 1 MOVE "Mercury" TO PLANET-NAME
               WHEN 2 MOVE "Venus " TO PLANET-NAME
               WHEN 3 MOVE "Earth " TO PLANET-NAME
               WHEN 4 MOVE "Mars " TO PLANET-NAME
               WHEN 5 MOVE "Jupiter" TO PLANET-NAME
               WHEN 6 MOVE "Saturn " TO PLANET-NAME
               WHEN 7 MOVE "Uranus " TO PLANET-NAME
               WHEN 8 MOVE "Neptune" TO PLANET-NAME
               WHEN 9 MOVE "Pluto " TO PLANET-NAME
               WHEN OTHER MOVE " " TO PLANET-NAME
           END-EVALUATE.

       100-PLANETNAME.
           EVALUATE PLANET-NAME
               WHEN "Mercury"   MOVE 1 TO PLANET-NUMBER
               WHEN "Venus  "   MOVE 2 TO PLANET-NUMBER
               WHEN "Earth  "   MOVE 3 TO PLANET-NUMBER
               WHEN "Mars   "   MOVE 4 TO PLANET-NUMBER
               WHEN "Jupiter"   MOVE 5 TO PLANET-NUMBER
               WHEN "Saturn "   MOVE 6 TO PLANET-NUMBER
               WHEN "Uranus "   MOVE 7 TO PLANET-NUMBER
               WHEN "Neptune"   MOVE 8 TO PLANET-NUMBER
               WHEN "Pluto  "   MOVE 9 TO PLANET-NUMBER
               WHEN OTHER       MOVE 0 TO PLANET-NUMBER
                   END-EVALUATE.

       100-PLANETRUE.
           EVALUATE TRUE
               WHEN PLANET-NAME = "Mercury" MOVE 1 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Venus " MOVE 2 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Earth " MOVE 3 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Mars " MOVE 4 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Jupiter" MOVE 5 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Saturn " MOVE 6 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Uranus " MOVE 7 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Neptune" MOVE 8 TO PLANET-NUMBER
               WHEN PLANET-NAME = "Pluto " MOVE 9 TO PLANET-NUMBER
               WHEN OTHER MOVE 0 TO PLANET-NUMBER
                   END-EVALUATE.
       END PROGRAM YOUR-PROGRAM-NAME.
