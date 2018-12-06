      ******************************************************************
      * Author: COBOL CODER
      * Date:
      * Purpose: Find largest prime factor of the number 600851475143
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROBLEM-3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WS-TARGET-VALUE         PIC 9(12) VALUE 600851475143.
           01 WS-PRIME-FACTOR         PIC 9(12) VALUE 2.
           01 WS-MAX-FACTOR           PIC 9(12) VALUE 2.
           01 WS-RMNDR                PIC 9(12) VALUE 2.
           01 WS-RSLT                 PIC 9(12) VALUE 0.
           01 WS-RSLT-FRMT            PIC Z(12) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "WORKING ON PROJECT EULER PROBLEM 3".
           DISPLAY "LARGEST PRIME FACTOR FOR 600851475143".

           PERFORM UNTIL WS-RSLT = 1 AND WS-RMNDR = 0

               DIVIDE WS-TARGET-VALUE BY WS-PRIME-FACTOR
                   GIVING WS-RSLT REMAINDER WS-RMNDR

               IF WS-RMNDR = 0

                   IF WS-PRIME-FACTOR > WS-MAX-FACTOR
                       MOVE WS-PRIME-FACTOR TO WS-MAX-FACTOR
                   END-IF

                   MOVE 1 TO WS-PRIME-FACTOR
                   MOVE WS-RSLT TO WS-TARGET-VALUE
               END-IF

               ADD 1 TO WS-PRIME-FACTOR GIVING WS-PRIME-FACTOR

           END-PERFORM.

           MOVE WS-MAX-FACTOR TO WS-RSLT-FRMT.
           DISPLAY "LARGEST FACTOR: " WS-RSLT-FRMT.

            STOP RUN.
       END PROGRAM PROBLEM-3.
