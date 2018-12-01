      ******************************************************************
      * Author: Cobol Coder
      * Date:
      * Purpose: Find the sum of all the multiples of 3 or 5 below 1000.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM-1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WS-NVAL PIC 9(04).
           01 WS-RSLT PIC 9(04).
           01 WS-RMDR3 PIC 9(04).
           01 WS-RMDR5 PIC 9(04).
           01 WS-SVAL PIC 9(06) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "WORKING ON PROJECT EULER PROBLEM 1"
            DISPLAY "MULTIPLES OF 3 AND 5"

            PERFORM VARYING WS-NVAL FROM 1 BY 1
             UNTIL WS-NVAL = 1000

              DIVIDE WS-NVAL BY 3 GIVING WS-RSLT REMAINDER WS-RMDR3
              DIVIDE WS-NVAL BY 5 GIVING WS-RSLT REMAINDER WS-RMDR5
              IF WS-RMDR3 = 0 OR WS-RMDR5 = 0
                 ADD WS-NVAL TO WS-SVAL GIVING WS-SVAL
              END-IF

             END-PERFORM.
            DISPLAY "THE RESULT IS: " WS-SVAL
            STOP RUN.
       END PROGRAM PROBLEM-1.
