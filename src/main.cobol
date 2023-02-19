           IDENTIFICATION DIVISION.
           PROGRAM-ID. HELLO-WORLD.
           AUTHOR. osawa-koki

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 A PIC 9(4) VALUE 100.
           01 B PIC 9(4) VALUE 200.
           01 SUM PIC 9(4).

           PROCEDURE DIVISION.

           DISPLAY "Hello, World!".

           ADD A TO B GIVING SUM.
           DISPLAY "A + B = ", SUM.

           STOP RUN.
