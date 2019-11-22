.model small  ; header
.code
org 100h
jmp begin

coname db 'ASSEMBLY LANGUAGE','$'   ; declaring string


begin: main proc near

mov ax, 03h ; clrscr
int 10h

mov ah, 09h
lea dx, coname ; printing
int 21h

mov ax, 4c00h ; terminating
int 21h

main endp
end begin



