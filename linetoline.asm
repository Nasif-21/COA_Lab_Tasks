.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV CX,4
    START:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    MOV DL,10D
    INT 21H
    MOV DL, 13D
    INT 21H
    MOV AH,2
    MOV DL,'A'
    INT 21H
    MOV DL,10D
    INT 21H
    MOV DL,13D
    INT 21H
    LOOP START
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    