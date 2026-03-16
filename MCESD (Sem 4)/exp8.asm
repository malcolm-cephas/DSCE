        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R0,#10H        ; R0 points to first number
        MOV     R1,#01H        ; Operation flag (01H = multiply)

        MOV     A,@R0          ; Load first operand
        INC     R0
        MOV     B,@R0          ; Load second operand

        CJNE    R1,#01H,DIV_8  ; If R1 ≠ 01H, perform division

        MUL     AB             ; Multiply A × B
        SJMP    NEXT

DIV_8:  DIV     AB             ; Divide A ÷ B

NEXT:   INC     R0
        MOV     @R0,A          ; Store result (A = product/quotient)

        INC     R0
        MOV     @R0,B          ; Store remainder or high byte

HERE:   SJMP    HERE           ; Infinite loop

        END