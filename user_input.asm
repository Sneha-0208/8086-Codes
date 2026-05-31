.model small
.stack 100h
.data
msg1 db "Enter first number: $"
msg2 db 0Dh,0Ah,"Enter second number: $"
msg3 db 0Dh,0Ah,"Sum = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ;---- Ask for 1st number ----
    mov ah, 09h
    lea dx, msg1
    int 21h

    mov ah, 01h     ; read char from keyboard
    int 21h
    sub al, 30h     ; convert ASCII to integer
    mov bl, al      ; store 1st number in BL

    ;---- Ask for 2nd number ----
    mov ah, 09h
    lea dx, msg2
    int 21h

    mov ah, 01h
    int 21h
    sub al, 30h     ; convert ASCII to integer
    mov cl, al      ; store 2nd number in CL

    ;---- Add numbers ----
    add bl, cl      ; BL = BL + CL
    add bl, 30h     ; convert result back to ASCII

    ;---- Display result ----
    mov ah, 09h
    lea dx, msg3
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    mov ah, 4Ch     ; exit
    int 21h
main endp
end main
