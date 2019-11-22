; this program reverse the string that you input

.model small
.code
org 100h

jmp main

plist  label  byte
maxlen   db   20
actlen   db    ?
src      db    21 dup(' ')
des      db    21 dup(' '),0ah,0dh,'$'

main proc near

mov ah,0ah
lea dx,plist
int 21h

lea di,des
mov bl,actlen
mov cl,actlen
dec bl

a30:
mov ah,src[bx]
mov [di],ah
inc di
dec bx
loop a30

mov ah,09h
lea dx,des
int 21h

mov ax,4c00h
int 21h

main endp
end mains
