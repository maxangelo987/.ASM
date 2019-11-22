.model small
.code
org 100h
jmp main


word1 db 'Hello Assembly','$'

main proc near

mov ax, 03h
int 10h

mov ah, 09h
lea dx, word1
int 21h

mov ax, 4c00h
