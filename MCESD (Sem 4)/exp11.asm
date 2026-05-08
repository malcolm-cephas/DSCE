        ORG     0000H

        MOV     R0,#20H        ; R0 points to control value
        MOV     A,@R0
        MOV     R1,A           ; Store operation code in R1

        INC     R0
        MOV     A,@R0          ; Load first operand
        MOV     B,A

        INC     R0
        MOV     A,@R0          ; Load second operand

        CJNE    R1,#00H,OR1
        ANL     A,B            ; AND operation
        SJMP    LAST

OR1:    CJNE    R1,#01H,XOR1
        ORL     A,B            ; OR operation
        SJMP    LAST

XOR1:   CJNE    R1,#02H,OTHER
        XRL     A,B            ; XOR operation
        SJMP    LAST

OTHER:  CPL     A              ; Complement if other code

LAST:   INC     R0
        MOV     @R0,A          ; Store result

HERE:   SJMP    HERE           ; Infinite loop

        END