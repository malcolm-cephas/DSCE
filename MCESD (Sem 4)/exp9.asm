        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R0,#09H          ; Outer loop counter (n-1 passes)

L1:     MOV     DPTR,#8000H      ; Starting address of array in external memory
        MOV     A,R0
        MOV     R1,A             ; Inner loop counter

L2:     MOVX    A,@DPTR          ; Read first number
        MOV     B,A
        INC     DPTR

        MOVX    A,@DPTR          ; Read next number
        CLR     C
        MOV     R2,A             ; Save second number
        SUBB    A,B              ; Compare A - B

        JC      NOEXCHG          ; If A < B → already in order

        ; Swap numbers
        MOV     A,B
        MOVX    @DPTR,A
        DEC     DPL
        MOV     A,R2
        MOVX    @DPTR,A
        INC     DPTR

NOEXCHG:
        DJNZ    R1,L2            ; Continue inner loop
        DJNZ    R0,L1            ; Continue outer loop

FINISH:
        SJMP    FINISH           ; Infinite loop

        END