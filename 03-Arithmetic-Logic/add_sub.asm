; Program: Addition and Subtraction
; Description: Performs basic arithmetic operations on numbers.

.MODEL SMALL
.STACK 100H

.DATA
    A DB 4
    B DB 3
    RES_ADD DB ?
    RES_SUB DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Addition: 4 + 3 = 7
    MOV AL, A
    ADD AL, B
    ADD AL, '0' ; Convert to ASCII
    MOV RES_ADD, AL

    ; Subtraction: 4 - 3 = 1
    MOV AL, A
    SUB AL, B
    ADD AL, '0' ; Convert to ASCII
    MOV RES_SUB, AL

    ; Print Addition Result
    MOV DL, RES_ADD
    MOV AH, 02H
    INT 21H

    ; Print New Line
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; Print Subtraction Result
    MOV DL, RES_SUB
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
