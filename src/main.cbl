           *> ===== ======================= ===== <*
           *> ===== IDENTIFICATION DIVISION ===== <*
           *> ===== ======================= ===== <*
           IDENTIFICATION DIVISION.
           PROGRAM-ID. MAIN.

           *> ===== ======================= ===== <*
           *> ========== DATA DIVISION ========== <*
           *> ===== ======================= ===== <*
           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 A PIC 9(4) VALUE 100.
           01 B PIC 9(4) VALUE 200.

           01 NUM PIC 9(4).
           01 COUNTER PIC 9(4) VALUE 0.

           01 XYZ.
                 03 X PIC 9(4) VALUE 5.
                 03 Y PIC 9(4) VALUE 10.
                 03 Z PIC 9(4).

           01 LANGUAGES OCCURS 5 TIMES.
              03 LANGUAGE-NAME PIC X(20).
           01 LANGUAGE-COUNTER PIC 9(3) VALUE 0.

           *> ===== ======================= ===== <*
           *> ======== PROCEDURE SECTION ======== <*
           *> ===== ======================= ===== <*
           PROCEDURE DIVISION.

           *> 標準出力
           DISPLAY "Hello, World!".
           DISPLAY "A = " A.
           DISPLAY "B = " B.

           *> 和を計算して表示
           ADD A TO B
           DISPLAY "A + B = " B.

           *> 標準入力を受け取る
           DISPLAY "Input a number: ".
           ACCEPT NUM.
           DISPLAY "Input number is " NUM.

           *> 偶数か奇数か判定
           IF FUNCTION MOD(NUM, 2) = 0
               THEN
               DISPLAY "Even number."
           ELSE
               DISPLAY "Odd number."
           END-IF.

           *> 指定した回数繰り返す
           PERFORM UNTIL COUNTER = NUM
               ADD 1 TO COUNTER
               DISPLAY "Counter value is ", COUNTER, "."
           END-PERFORM.

           *> 外部プログラムを呼び出す
           CALL "ADD" USING XYZ.
           DISPLAY X " + " Y " = " Z.

           MOVE "Fortran" TO LANGUAGE-NAME(1).
           MOVE "COBOL" TO LANGUAGE-NAME(2).
           MOVE "BASIC" TO LANGUAGE-NAME(3).
           MOVE "ALGOL" TO LANGUAGE-NAME(4).
           MOVE "PL/I" TO LANGUAGE-NAME(5).

           *> 配列のループ
           DISPLAY "Languages: "
           PERFORM VARYING LANGUAGE-COUNTER
              FROM 1 BY 1 UNTIL LANGUAGE-COUNTER > 5
                 DISPLAY LANGUAGE-COUNTER, ". ", LANGUAGE-NAME
                 (LANGUAGE-COUNTER)
           END-PERFORM.

           STOP RUN.
           END PROGRAM MAIN.
