        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     A,#00H        ; Initialize accumulator

LOOP:   ACALL   DELAY         ; Call delay subroutine
        INC     A             ; Increment A
        JNZ     LOOP          ; Repeat until A becomes 00 again (after FF)

HERE:   SJMP    HERE          ; Infinite loop

; -------- Delay Subroutine --------
DELAY:  MOV     R1,#0FFH

L1:     MOV     R2,#0FFH

L2:     MOV     R3,#0FFH
L3:     DJNZ    R3,L3
        DJNZ    R2,L2
        DJNZ    R1,L1

        RET

        END