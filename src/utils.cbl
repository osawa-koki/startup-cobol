           IDENTIFICATION DIVISION.
           PROGRAM-ID. UTILS.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 X PIC 9(4).
           01 Y PIC 9(4).
           01 Z PIC 9(4).

           PROCEDURE DIVISION.
           ADD-FUNCTION.
               COMPUTE Z = X + Y.
