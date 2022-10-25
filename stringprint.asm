.MODEL SMALL
.STACK 100H
.DATA
NASIF DB 'SHEIKH MUHTASIM NASIF$'
LOCATION DB 'DHAKA$'
ID DB '20-42119-1$'
.CODE
MAIN PROC
    MOV AX,@DATA ;calling the variable location
    MOV DS, AX
    LEA DX, NASIF  ;call the variable name 
    MOV AH,9       ;string line print command
    INT 21H        ;interrupt
    MOV AH,2       ;dl display
    MOV DL,0AH     ;new line
    INT 21H
    MOV DL,0DH     ;next line straight coursour
    INT 21H
    
    
    LEA DX, LOCATION 
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    LEA DX, ID
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H  
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN