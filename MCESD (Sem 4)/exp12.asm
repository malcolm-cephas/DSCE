        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     DPTR,#8000H     ; Point to first number in external memory
        MOVX    A,@DPTR         ; Load first number
        MOV     R0,A            ; Store it in R0

        INC     DPTR
        MOVX    A,@DPTR         ; Load second number

        CLR     C
        SUBB    A,R0            ; Compare second number with first

        JZ      EQUAL           ; If equal
        JNC     LARGE           ; If second ≥ first

        SETB    78H             ; First number is larger
        SJMP    LAST

LARGE:  SETB    7FH             ; Second number is larger
        SJMP    LAST

EQUAL:  CLR     78H             ; Clear both flags if equal
        CLR     7FH

LAST:   SJMP    LAST            ; Infinite loop

        END