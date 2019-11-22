.model small
.code 
org 100h
jmp main

main proc near

mov ax, 03h
int 10h

mov bl, 0

loop1:

mov ah, 02h
mov dl, bl
int 21h

inc bl
cmp bl, 255
if ne jmp loop1


mov ax, 4c00h
int 21h

