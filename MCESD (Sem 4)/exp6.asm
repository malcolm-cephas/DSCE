        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     A,#0AH        ; Load constant 0AH into accumulator
        MOV     R0,#10H       ; R0 points to memory location 10H
        ADD     A,@R0         ; Add value at 10H to A
        INC     R0            ; Move to next location (11H)
        MOV     @R0,A         ; Store result at 11H

HERE:   SJMP    HERE          ; Infinite loop

        END