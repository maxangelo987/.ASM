.model small
.code
org 100h

word1 db, 'TIMOTHY','$'

main proc near
mov ax,03h
int 10h
mov ah,09h
lea dx,word1
int 21h

main endp
end main

