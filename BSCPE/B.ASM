.model small
.code
org 100h
jmp main

array3 db 'ABCDEFGHIJKLM','$'
coname db 5 dup ('$'),'$'

main proc near

mov ax, 03h
int 10h


mov bx, 0h
mov bp, 0h

mov ah, array3[bx]
mov coname[bp], ah
inc bx
inc bp
mov ah, array3[bx]
mov coname[bp], ah

mov ah, 09h
lea dx, coname
int 21h

mov ax, 4c00h
int 21h

main endp
end main
