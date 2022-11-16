;CODE BY MAHEDI AKA DARI WALA NAVI BLUE
.MODEL SMALL
.STACK 100H
.DATA
VAR1 DB 10,13,"ENTER A DIGIT: $"
VAR2 DB 10,13,"EVEN $"
VAR3 DB 10,13,"ODD $"
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    TOP:
    LEA DX, VAR1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    CMP AL, 'a'
    JE END
    CMP AL, 'A'
    JE END
    
    TEST AL, 01H
    JZ LEVEL1
    JNZ LEVEL2
    
    LEVEL1:
    LEA DX, VAR2
    MOV AH, 9
    INT 21H
    
    JMP TOP
    
    LEVEL2:
    LEA DX, VAR3
    MOV AH, 9
    INT 21H
    
    JMP TOP    
    
    END:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN


