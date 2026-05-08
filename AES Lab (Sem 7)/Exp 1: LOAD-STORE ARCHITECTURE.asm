        AREA LOAD_STORE_DEMO, CODE, READONLY
        ENTRY

__main
        LDR     R0, =SRC_AREA        ; Base address for source
        LDR     R1, =DST_AREA        ; Base address for destination

;=====================================
; STR and LDR (Word Transfer)
;=====================================

        LDR     R2, =0x12345678
        STR     R2, [R1]             ; Store word at DST_AREA
        LDR     R3, [R1]             ; Load word back to R3

;=====================================
; STRB and LDRB (Byte Transfer)
;=====================================

        LDR     R4, =0xABCDEF10
        STRB    R4, [R1, #4]         ; Store byte at offset 4
        LDRB    R5, [R1, #4]         ; Load byte back to R5

;=====================================
; STRH and LDRH (Halfword Transfer)
;=====================================

        LDR     R6, =0xCDEFABCD
        STRH    R6, [R1, #8]         ; Store halfword at offset 8
        LDRH    R7, [R1, #8]         ; Load halfword back to R7

;=====================================
; STM and LDM (Multiple Transfer)
;=====================================

        LDR     R8, =0xAAAA1111
        LDR     R9, =0xBBBB2222
        LDR     R10, =0xCCCC3333

        STMIA   R1!, {R8-R10}        ; Store multiple & increment address
        SUB     R1, R1, #12          ; Restore original address

        MOV     R8, #0
        MOV     R9, #0
        MOV     R10, #0

        LDMIA   R1!, {R8-R10}        ; Load multiple back

;=====================================
; Stop Program
;=====================================

STOP    B       STOP                 ; Infinite loop

;=====================================
; Data Section
;=====================================

        AREA DATA, DATA, READWRITE

SRC_AREA    DCD     0x11223344       ; Example source data
DST_AREA    DCD     0x0,0x0,0x0,0x0  ; Destination memory

        END