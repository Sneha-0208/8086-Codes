
org 100h

MOV SI, 1000h
MOV [SI], 0F3F5h
ADD SI, 02h
MOV [SI], 0FFF2h
ADD SI, 02h
MOV [SI], 0104h
ADD SI, 02h
MOV [SI], 0842h
ADD SI, 02h
MOV [SI], 8468h

MOV CX, 05h 
DEC CX

outer: MOV SI, 1000h
       MOV DX, 04h
       
       
       
inner: MOV AX, [SI]
       MOV BX, [SI+2]
       CMP AX, BX
       JA swap       ; replace JA by JB for decreasing order
       
       ;no-swap
       ADD SI, 02h 
       JMP continue
       
       
swap: MOV [SI], BX
      MOV [SI+2], AX 
      

continue: DEC DX
          JNZ inner 
          DEC CX
          JNZ outer

            
MOV SI, 1000h
MOV DI, 2000h       ; initialize DI by 3000h in decreasing order        
MOV CX, 05h

copy: MOV AX, [SI]
      MOV [DI], AX
      ADD SI, 2
      ADD DI, 2
      DEC CX
      JNZ copy


ret