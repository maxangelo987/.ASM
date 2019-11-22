.model small
.code
org 100h
jmp main

plist label byte
maxlen db 30
actlen db ?
kybd db 31 dup ('$'),'$'

filhand dw ?

prompt1 db 'ERROR!','$'
prompt2 db 'FILE CREATED!','$'

main proc near

mov ah, 0ah
lea dx, plist
int 21h

mov bl, actlen
mov kybd[bx], 00h


mov ah, 3ch
mov cx, 00
lea dx, kybd
int 21h
jc error1
mov filhand, ax
jmp suc

error1:
 mov ah, 09h
 lea dx, prompt1
 int 21h
 jmp stop

suc:
 mov ah, 09h
 lea dx, kybd
 int 21h

stop:



mov ax, 4c00h
int 21h

main endp
end main
