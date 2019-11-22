.model small
.code
.data
org 100h
jmp main


word1 db 'Hello ','$'


main proc near

mov ax, 03h
int 10h


mov ah, 08h
int 10h

mov bh, ah

mov ax, 0600h
mov cx, 000h
mov dx, 184fh
int 10h

mov ax, 0600h
mov bh, 81h
mov cx, 0000h
mov dx, 1950h
int 10h

mov ah, 02h
mov bh, 00
mov dh, 12
mov dl, 12
int 10h

mov ah, 09h
lea dx, word1
int 21h

mov ah, 02h
mov bh, 00
mov dh, 13 
mov dl, 13
int 10h

mov ah, 02h
mov dl, 48
int 21h

mov ah, 02h
mov bh, 00
int 10h

mov ah, 10h
int 16h


mov ax, 03h
int 10h

mov ax, 4c00h
int 21h


main endp
end main
