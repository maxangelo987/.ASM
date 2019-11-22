.model small
.code
org 100h
jmp begin

db coname 'Hello','$'

begin: main proc near

 mov ah, 09h
 lea dx, coname
 int 21h

 main endp
 end begin
