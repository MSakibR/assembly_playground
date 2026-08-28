; Program: Even or Odd Checker
; Description: Checks whether a hardcoded/input number is Even or Odd.

.MODEL SMALL
.STACK 100H

.DATA
    MSG_EVEN DB 'The number is EVEN$', 0
    MSG_ODD  DB 'The number is ODD$', 0
    NUM DB 7 ; Change this number to test different values

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, NUM
    TEST AL, 1 ; Test least significant bit (LSB)
    JZ IS_EVEN

IS_ODD:
    LEA DX, MSG_ODD
    JMP DISPLAY

IS_EVEN:
    LEA DX, MSG_EVEN

DISPLAY:
    MOV AH, 09H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
