.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX,3  ;LOOP INITIALIZATION
    START:
    MOV AH,2    ;FOR CHAR 
    MOV DL,'A'  ;FOR FIRST CHAR
    INT 21H
    MOV AH,2
    MOV DL,'*'  ;FOR THE 2ND CHAR
    INT 21H  
    LOOP START
    MOV AH, 4CH  ;DISPLAY MSG
    