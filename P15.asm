
org 100h

MOV CL, 0Ah
MOV DL, 02h

SUB CL, 3
SUB DL, 3

MOV AL, CL
MUL CL
MOV CL, AL

MOV AL, DL
MUL DL
MOV DL, AL

ADD CL, DL
MOV AL, CL

CMP AL, 4
JE on
JG outside 
JL inside


on: MOV BL, 00h
    ret
    
outside: MOV BL, 0FFh
         ret 
         

inside: MOV BL, 11h
        ret