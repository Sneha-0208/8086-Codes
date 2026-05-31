
org 100h


MOV [1000h], 20
MOV [1001h], 24
MOV [1002h], 32
MOV [1003h], 34
MOV [1004h], 38
MOV [1005h], 42
MOV [1006h], 45
MOV [1007h], 36
MOV [1008h], 33
MOV [1009h], 23

MOV AL, [1000h]
MOV CX, 9
MOV DI, 1001h

maxi: CMP AL, [DI] 
      JC comp 
      INC DI
      DEC CX
      JNZ maxi 
      ret
      
comp:
    MOV AL, [DI]  
    INC DI
    DEC CX
    JNZ maxi 
    
ret