.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 0AH,0DH,'INPUT A NUMBER :$'
MSG2 DB 0AH,0DH,'EVEN NUMBER :$'
MSG3 DB 0AH,0DH,'ODD NUMBER: $'
.CODE

MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   LEA DX,MSG1
   MOV AH,9
   INT 21H
   MOV AH,1
   INT 21H
   TEST AL,01H ;NO RESULT STORE BUT DO AND OPERATION
   JZ ODD
   JNZ EVEN
   
   ODD:
   LEA DX,MSG2
   MOV AH,9
   INT 21H
   JMP EXIT
   
   EVEN:
   LEA DX,MSG3
   MOV AH,9 
   INT 21H
   
   EXIT:
   
   MOV AH,4CH
   INT 21H 
   
   MAIN ENDP
END MAIN
