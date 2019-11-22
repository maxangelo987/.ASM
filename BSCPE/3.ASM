.model small
.code
org 100h
jmp main

str1 db 'Hello $'

main proc near

mov ah, 00h
mov al, 13h
int 10h

mov ds, 40960
mov ax, 55h
mov bx, 0000

START:
mov [bx], ax
inc bx
cmp bx, 20
JL START

mov ah, 09h
lea dx, str1
int 21h


mov ah, 004ch
int 21h

main endp
end main