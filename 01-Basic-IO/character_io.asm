; Program: Character Input and Output
; Description: Takes a single character input from the keyboard and prints it back.

.MODEL SMALL
.STACK 100H

.DATA
    PROMPT DB 'Enter a character: $', 0
    OUT_MSG DB 0DH, 0AH, 'You entered: $', 0

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Display prompt message
    LEA DX, PROMPT
    MOV AH, 09H
    INT 21H

    ; Read character from standard input (AH = 01H)
    MOV AH, 01H
    INT 21H
    MOV BL, AL ; Store input character in BL

    ; Display output message
    LEA DX, OUT_MSG
    MOV AH, 09H
    INT 21H

    ; Display the character saved in BL
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
