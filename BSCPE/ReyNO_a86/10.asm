.model small
.code
org 100h

str1 db 'hello max! ' , '$'

main proc near

mov ax, 0600h
mov bx,  0001h
mov cx, 0000h
mov dx, 184fh
int 10h

mov ah, 09h
lea dx, str1
int 21h

int 20h

main endp
          
