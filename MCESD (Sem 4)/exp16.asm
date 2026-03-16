        ORG     0000H
        SJMP    START

        ORG     0030H
START:  MOV     DPTR,#9000H
        CLR     A
        MOVX    A,@DPTR
        MOV     B,#64H
        DIV     AB
        MOV     30H,A
        MOV     A,B
        MOV     B,#0AH
        DIV     AB
        SWAP    A
        ADD     A,B
        MOV     31H,A

FINISH: SJMP    FINISH
        END