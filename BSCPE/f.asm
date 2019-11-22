.model small
.code
org 100h
jmp start

begin db 'Hello World$'
 start proc near
 mov ah, 02h
 mov dh, 12
 mov dl, 40
 mov bh, 0
 int 10h
 
 
 mov ah, 09h
 lea dx, begin
 int 21h
 
 start endp
 end start