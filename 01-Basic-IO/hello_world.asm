; Program: Hello World
; Description: Prints "Hello, World!" to the screen using 8086 interrupts.

.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 'Hello, World!$', 0

.CODE
MAIN PROC
    ; Initialize Data Segment
    MOV AX, @DATA
    MOV DS, AX

    ; Display String (DOS Interrupt INT 21H, AH = 09H)
    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Exit Program (DOS Interrupt INT 21H, AH = 4CH)
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
