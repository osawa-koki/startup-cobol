           IDENTIFICATION DIVISION.
           PROGRAM-ID. HELLO-WORLD.

           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 A PIC 9(4) VALUE 100.
           01 B PIC 9(4) VALUE 200.

           PROCEDURE DIVISION.

           *> 標準出力
           DISPLAY "Hello, World!".
           DISPLAY "A = " A.
           DISPLAY "B = " B.

           *> 和を計算して表示
           ADD A TO B
           DISPLAY "A + B = " B.

           STOP RUN.
