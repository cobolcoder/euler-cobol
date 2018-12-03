      ******************************************************************
      * Author: COBOL CODER
      * Date:
      * Purpose: By considering the terms in the Fibonacci sequence
      * whose values do not exceed four million, find the sum of the
      * even-valued terms.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM-2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WS-MAX-TERM        PIC 9(07) VALUE 4000000.
           01 WS-TERM-1          PIC 9(07) VALUE 1.
           01 WS-TERM-2          PIC 9(07) VALUE 2.
           01 WS-NEXT-TERM       PIC 9(07) VALUE 2.
           01 WS-EVEN-DIV        PIC 9(09) VALUE 0.
           01 WS-RMDR-TERM       PIC 9(09) VALUE 0.
           01 WS-SUM-EVEN        PIC 9(09) VALUE 0.
           01 WS-RSLT            PIC Z(09).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "WORKING ON PROJECT EULER PROBLEM 2".
           DISPLAY "EVEN FIBONACCI NUMBERS".

           PERFORM UNTIL WS-TERM-2 >= WS-MAX-TERM

            DIVIDE WS-TERM-2 BY 2
            GIVING WS-EVEN-DIV REMAINDER WS-RMDR-TERM

            IF WS-RMDR-TERM = 0
             ADD WS-TERM-2 TO WS-SUM-EVEN GIVING WS-SUM-EVEN
            END-IF

            ADD WS-TERM-1 TO WS-TERM-2 GIVING WS-NEXT-TERM
            MOVE WS-TERM-2 TO WS-TERM-1
            MOVE WS-NEXT-TERM TO WS-TERM-2

           END-PERFORM.

           MOVE WS-SUM-EVEN TO WS-RSLT.
           DISPLAY "THE RESULT IS: " WS-RSLT.

           STOP RUN.
       END PROGRAM PROBLEM-2.
