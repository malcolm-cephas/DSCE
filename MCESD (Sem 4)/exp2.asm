        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     DPH,#80H        ; High byte of external memory address
        MOV     R0,#3EH         ; Last location address of Source
        MOV     R1,#41H         ; Last location address of Destination
        MOV     R3,#0AH         ; Count (10 bytes to transfer)

BACK:
        MOV     DPL,R0          ; Load source address
        MOVX    A,@DPTR         ; Read data from external memory

        MOV     DPL,R1          ; Load destination address
        MOVX    @DPTR,A         ; Write data to destination

        DEC     R0              ; Move to previous source location
        DEC     R1              ; Move to previous destination location
        DJNZ    R3,BACK         ; Repeat until count = 0

HERE:
        SJMP    HERE            ; Infinite loop

        END