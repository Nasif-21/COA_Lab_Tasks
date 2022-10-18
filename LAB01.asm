.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 10D,13D,'ITS A VOWEL'
MSG2 DB 10D,13D,'ITS A CONSTANT'
 .CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    CMP AL,'A'
    JE LEVEL1 
    CMP AL,'E'
    JE LEVEL1
    CMP AL,'I'
    JE LEVEL1
    CMP AL,'O'
    JE LEVEL1
    CMP AL,'U'
    JE LEVEL1
    JNE LEVEL2
    
    LEVEL1:
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    JMP EXIT
    
    LEVEL2:
    MOV AX,9
    LEA DX,MSG2
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN
    
    
    
    

