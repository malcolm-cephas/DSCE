        ORG     0000H
        SJMP    START

        ORG     0030H
START:
        MOV     A,#0AAH       ; Load constant AAH into accumulator
        MOV     R0,#10H       ; R0 points to memory location 10H
        CLR     C             ; Clear carry before subtraction
        SUBB    A,@R0         ; A = A - (value at 10H) - Carry
        INC     R0            ; Move to next location (11H)
        MOV     @R0,A         ; Store result at 11H

HERE:   SJMP    HERE          ; Infinite loop

        END