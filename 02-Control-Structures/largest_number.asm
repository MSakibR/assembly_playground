; Program: Find Largest of Two Numbers
; Description: Compares two numbers in registers and prints the larger one.

.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 5
    NUM2 DB 9
    MSG DB 'The largest digit is: $', 0

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM1
    MOV BL, NUM2

    CMP AL, BL
    JGE FIRST_IS_LARGER
    MOV AL, BL ; BL is larger, move to AL

FIRST_IS_LARGER:
    ; Convert digit to ASCII character
    ADD AL, '0'
    MOV BL, AL

    ; Display message
    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    ; Display largest number
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
