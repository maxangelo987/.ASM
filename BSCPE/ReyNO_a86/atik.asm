.model small
.code
org 100

mov ax, 0600
mov bh, 07
mov cx, 0000
mov dx, 184fh
int 10h

mov ah, 02
mov bh, 00
int 10h

string db 'Hello World','$'


mov ah, 09
int 21h
