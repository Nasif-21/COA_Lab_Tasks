MOV CX,1000
MOV AH,1
TOP:
INT 21H
CMP AL,0DH
JE EXIT
LOOP TOP
EXIT:
MOV AH,4CH
INT 21H