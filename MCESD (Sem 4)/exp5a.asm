        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R0,#27H        ; Starting address of first block
        MOV     R1,#41H        ; Starting address of second block
        MOV     R3,#05H        ; Count (5 bytes)

BACK:   MOV     A,@R0          ; Read data from first block
        MOV     R2,A           ; Store temporarily

        MOV     A,@R1          ; Read data from second block
        MOV     @R0,A          ; Move second block data to first

        MOV     A,R2           ; Retrieve first block data
        MOV     @R1,A          ; Move it to second block

        INC     R0             ; Next address
        INC     R1
        DJNZ    R3,BACK        ; Repeat until count = 0

HERE:   SJMP    HERE           ; Infinite loop

        END