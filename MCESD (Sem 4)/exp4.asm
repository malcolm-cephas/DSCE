        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     R0,#49H        ; Last location address of source
        MOV     R1,#4EH        ; Last location address of destination
        MOV     R2,#0AH        ; Count (10 bytes)

LOOP:   MOV     A,@R0          ; Read data from source
        MOV     @R1,A          ; Write data to destination
        DEC     R0             ; Move to previous source address
        DEC     R1             ; Move to previous destination address
        DJNZ    R2,LOOP        ; Repeat until count = 0

HERE:   SJMP    HERE           ; Infinite loop

        END