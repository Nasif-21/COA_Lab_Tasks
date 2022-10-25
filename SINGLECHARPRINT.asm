;print a character

.MODEL SMALL
.STACK 100H
.DATA
CHA DB 'A$' ;CHA=VARIABLE NAME   DB= DEFINE BYTE 
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV DL,'N'  
    INT 21H
    MOV AH, 4CH
    INT 21H
    
     
    MAIN ENDP
END MAIN
    