        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R0,#40H        ; Starting address of source
        MOV     R1,#50H        ; Starting address of destination
        MOV     R2,#0AH        ; Count (10 bytes)

LOOP:   MOV     A,@R0          ; Read data from source
        MOV     @R1,A          ; Write data to destination
        INC     R0             ; Next source address
        INC     R1             ; Next destination address
        DJNZ    R2,LOOP        ; Repeat until count = 0

HERE:   SJMP    HERE           ; Stop program

        END