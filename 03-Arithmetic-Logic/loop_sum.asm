; Program: Sum using Loop
; Description: Calculates sum of numbers from 1 to 5 using LOOP instruction.

.MODEL SMALL
.STACK 100H

.DATA
    MSG DB 'Sum of 1 to 5 is: $', 0

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, 5 ; Counter set to 5
    MOV AL, 0 ; Accumulator for sum

SUM_LOOP:
    ADD AL, CL ; Add current loop counter value
    LOOP SUM_LOOP

    ADD AL, '0' ; Simplified for single-digit printable ASCII demonstration

    LEA DX, MSG
    MOV AH, 09H
    INT 21H

    MOV DL, AL
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
