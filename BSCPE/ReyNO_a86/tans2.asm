.model small
.code
org 100h
jmp main

parlist label byte
max     db    20
act     db     ?
inp     db    21 dup(' '),'$'
nn      db     0ah,0dh,'$'

main proc near
 mov ax,03h
 int 10h

 mov ah,0ah
 lea dx,parlist
 int 21h
 mov bl,act
 mov cl,act
 lea si,inp

a1:
  mov ah,09h
  mov bl,13
  mov al,[si]
  int 10h
     inc si
   ; loop a1
    mov ah,09h
    lea dx,nn
    int 21h
     loop a1
end:
  mov ax,4c00h
  int 21h

main endp
 end main
