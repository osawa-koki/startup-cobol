           IDENTIFICATION DIVISION.
           PROGRAM-ID. HELLO-WORLD.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 A PIC 9(4) VALUE 100.
           01 B PIC 9(4) VALUE 200.

           PROCEDURE DIVISION.

           DISPLAY "Hello, World!".
           DISPLAY "A = " A.
           DISPLAY "B = " B.

           STOP RUN.
