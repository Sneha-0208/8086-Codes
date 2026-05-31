
org 100h

MOV [1000h], 23h
MOV AL, [1000h]  
AND AL, 01h
JNZ odd 
MOV CX, 0FFFFh 
hlt

odd: MOV CX, 0000h 
     hlt

ret