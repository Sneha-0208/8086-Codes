
org 100h

MOV BL, 6   ; Vgs
MOV CL, 2   ; Vth
MOV DL, 3   ; Vds


MOV AL, BL
CMP AL, CL

JL off

MOV AL, DL
SUB BL, CL
CMP AL, BL

JGE sat
JL linear


off: MOV BL, 00h
     ret
     
sat: MOV BL, 0FFh
     ret

linear: MOV BL, 11h
        ret