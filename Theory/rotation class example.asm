;what is the value of bx after operation

mov ax,0fceh
xor ax,ax
mov cx,16
top:
rol ax,1
jnc abc ;jump if carry not equal 0
inc bx  ;bx will increase by 1. 
abc:
loop top  

;ans 9
;explain
;0000 1111 1100 1110
;loop runs for 16 times
;in between 16 times, we can see that the count number of 1 is 9
;jump only occurs if the carry flag is not 0
;so, result is 9