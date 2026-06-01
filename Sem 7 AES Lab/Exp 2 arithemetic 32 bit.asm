        AREA PROGRAM, CODE, READONLY
        ENTRY
        EXPORT __main

__main
        LDR R1, =0x10000000     ; Base address (condition + operands)
        LDR R2, [R1]            ; Load condition value

        LDR R3, [R1, #4]        ; Operand 1
        LDR R4, [R1, #8]        ; Operand 2

;=====================================
; Check for ADDITION (condition = 1)
;=====================================
        CMP R2, #1
        BNE CHK_SUB

        ADDS R7, R3, R4         ; R7 = R3 + R4
        B LAST

;=====================================
; Check for SUBTRACTION (condition = 2)
;=====================================
CHK_SUB
        CMP R2, #2
        BNE CHK_MUL

        SUBS R7, R3, R4         ; R7 = R3 - R4
        B LAST

;=====================================
; Check for MULTIPLICATION (condition = 3)
;=====================================
CHK_MUL
        CMP R2, #3
        BNE CHK_DIV

        UMULL R7, R8, R3, R4    ; R8:R7 = R3 * R4 (64-bit result)
        B LAST

;=====================================
; Check for DIVISION (condition = 4)
;=====================================
CHK_DIV
        CMP R2, #4
        BNE LAST

        UDIV R7, R3, R4         ; R7 = R3 / R4

;=====================================
; Store Result
;=====================================
LAST
        STR R7, [R1, #20]       ; Store result at 0x10000014

        ; Store high part for multiplication
        STR R8, [R1, #24]       ; Store R8 at 0x10000018

;=====================================
; Stop Program
;=====================================
STOP
        B STOP

        END