        ORG     0000H
        LJMP    START

        ORG     8000H
START:  SETB    00H
        CLR     01H
        SETB    02H

        MOV     C,01H
        ANL     C,02H
        ANL     C,/00H
        MOV     03H,C

        MOV     C,00H
        ANL     C,/01H
        ANL     C,02H
        MOV     04H,C

        MOV     C,00H
        ANL     C,01H
        ANL     C,/02H
        ORL     C,04H
        ORL     C,03H
        MOV     08H,C

        END