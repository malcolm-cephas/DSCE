        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R7,#08H        ; Loop counter (8 bits)
        MOV     31H,#00H       ; Count of 1s
        MOV     32H,#00H       ; Count of 0s

        MOV     R0,#30H        ; Address of the number
        MOV     A,@R0          ; Load number into accumulator

UP:     RRC     A              ; Rotate right through carry
        JNC     NEXT           ; If carry = 0 → bit is 0

        INC     31H            ; Count 1s
        SJMP    L1

NEXT:   INC     32H            ; Count 0s

L1:     DJNZ    R7,UP          ; Repeat for all 8 bits

FINISH: SJMP    FINISH         ; Infinite loop

        END