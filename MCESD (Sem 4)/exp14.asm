        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     A,#00H        ; Start BCD count at 00

LOOP:   ACALL   DELAY         ; Delay between counts
        ADD     A,#01H        ; Increment accumulator
        DA      A             ; Decimal adjust for BCD
        JNC     LOOP          ; Continue until carry occurs (after 99)

HERE:   SJMP    HERE          ; Stop program

; -------- Delay Routine --------
DELAY:  MOV     R1,#0FFH

L1:     MOV     R2,#0FFH

L2:     MOV     R3,#0FFH
L3:     DJNZ    R3,L3
        DJNZ    R2,L2
        DJNZ    R1,L1

        RET

        END