
org 100h


MOV BX, 3   ; STORES x = 3   
MOV CX, 1   ; STORE COUNTER 
MOV BP, 1   ; STORE FACTORIAL
MOV SI, 1   ; STORE POWER OF X
MOV DI, 1   ; STORE RESULT (STARTS WITH 1)

power: MOV AX, BP
       MUL CX
       MOV BP, AX   ; FACTORIAL STORED IN BP
       
       MOV AX, SI
       MUL BX       ; POWER OF 3 COMPUTED 
       MOV SI, AX   ; STORE POWER OF 3 IN SI
       
       ; TO CALCULATE THE TERM
       MOV AX, SI   
       XOR DX, DX
       DIV BP       ; AX = QUOTIENT, DX = REMAINDER
       
       ADD DI, AX
       

       INC CX
       
       CMP CX, 6
       JL power
 
ret