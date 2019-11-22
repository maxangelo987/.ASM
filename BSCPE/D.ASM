.model small
.code
org 100h
jmp main

plist label byte
maxlen db 30
actlen db ?
kybd db 31 dup ('$'),'$'

word1 db 'Enter Derivative Equation: ','$'

main proc near

mov ax, 03h
int 10h

mov ah, 09h
lea dx, word1
int 21h

mov ax, 4c00h
int 21h

main endp
end main
