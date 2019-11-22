.model small
.code
org 100h

jmp main
me db "try", '$'
mode db ?

main proc near

mov ah, 0fh
int 10h
mov mode, al
;mov ah, 00h
;mov al, 03
;int 10h

;set graphics mode
mov ah, 00h
mov al, 04h
int 10h

mov ah, 0bh
mov bh, 00h
mov bl, 01h
int 10h

mov ah, 09h
lea dx, me
int 21h

mov ah, 00h
mov al, mode
int 10h

mov ax, 4c00h
int 21h

main endp
        end main


