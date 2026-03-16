        ORG     0000H
        SJMP    START

        ORG     0030H
START:  
        MOV     DPH,#80H        ; High byte of external memory address
        MOV     R0,#35H         ; Starting address of Source
        MOV     R1,#41H         ; Starting address of Destination
        MOV     R3,#0AH         ; Count (10 bytes to transfer)

BACK:   
        MOV     DPL,R0          ; Load source address into DPTR
        MOVX    A,@DPTR         ; Read byte from external memory

        MOV     DPL,R1          ; Load destination address into DPTR
        MOVX    @DPTR,A         ; Write byte to destination

        INC     R0              ; Increment source address
        INC     R1              ; Increment destination address
        DJNZ    R3,BACK         ; Repeat until count = 0

HERE:   
        SJMP    HERE            ; Infinite loop

        END