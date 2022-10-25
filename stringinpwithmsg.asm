.MODEL SMALL
.STACK 100H
.DATA
CHAR DB 'INPUT CHAR$'
.CODE
MAIN PROC  
    MOV AX,@DATA ;variable calling
    MOV DS,AX
    LEA DX,CHAR
    MOV AH,9      ;print msg
    
    INT 21H
    MOV AH,1      ;input
    INT 21H
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN

    
    