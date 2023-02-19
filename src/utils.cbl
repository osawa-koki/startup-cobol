           IDENTIFICATION DIVISION.
           PROGRAM-ID. ADD.

           DATA DIVISION.
           LINKAGE SECTION.
           01 XYZ.
                 03 X PIC 9(4).
                 03 Y PIC 9(4).
                 03 Z PIC 9(4).

           PROCEDURE DIVISION USING XYZ.

           COMPUTE Z = X + Y.

           END PROGRAM ADD.
