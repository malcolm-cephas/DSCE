        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     DPTR,#9000H
        CLR     A
        MOVX    A,@DPTR
        MOV     B,#10H
        DIV     AB
        SWAP    A
        ADD     A,B
        MOV     30H,A

FINISH: SJMP    FINISH

        END