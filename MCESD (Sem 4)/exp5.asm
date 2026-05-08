        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R0,#27H        ; Starting address of first block
        MOV     R1,#41H        ; Starting address of second block
        MOV     R3,#05H        ; Count (5 bytes to swap)

NEXT:   MOV     A,@R0          ; Load byte from first block
        MOV     R2,A           ; Store temporarily in R2

        MOV     A,@R1          ; Load byte from second block
        XCH     A,R2           ; Exchange with temporary value

        MOV     @R1,A          ; Store first block value into second block
        XCH     A,R2           ; Restore second block value

        MOV     @R0,A          ; Store second block value into first block

        INC     R0             ; Next address in first block
        INC     R1             ; Next address in second block
        DJNZ    R3,NEXT        ; Repeat until count = 0

HERE:   SJMP    HERE           ; Infinite loop

        END