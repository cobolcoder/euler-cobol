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
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "WORKING ON PROJECT EULER PROBLEM 3".
           DISPLAY "LARGEST PRIME FACTOR OF 600851475143".

           DIVIDE WS-TARGET-VALUE BY WS-PRIME-FACTOR
               GIVING WS-RSLT REMAINDER WS-RMNDR.

           PERFORM UNTIL WS-RSLT = 1

               IF WS-RMNDR = 0
                   
                   DISPLAY "FOUND FACTOR:" WS-PRIME-FACTOR
                   IF WS-PRIME-FACTOR > WS-MAX-FACTOR
                       MOVE WS-PRIME-FACTOR TO WS-MAX-FACTOR
                   END-IF

                   MOVE WS-PRIME-FACTOR TO WS-MAX-FACTOR
                   MOVE 1 TO WS-PRIME-FACTOR
                   MOVE WS-RSLT TO WS-TARGET-VALUE
               END-IF
               
               ADD 1 TO WS-PRIME-FACTOR GIVING WS-PRIME-FACTOR 

               DIVIDE WS-TARGET-VALUE BY WS-PRIME-FACTOR
                   GIVING WS-RSLT REMAINDER WS-RMNDR

           END-PERFORM.

            STOP RUN.
       END PROGRAM PROBLEM-3.
