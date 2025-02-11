.syntax unified
.cpu cortex-m7
.thumb

.global jump_to_application
.type   jump_to_application, %function

jump_to_application:

    cpsid i
    LDR   R0, =0x08020000
    LDR   R1, [R0, #0]
    MOV   SP, R1
    LDR   R1, [R0, #4]
    BX    R1
