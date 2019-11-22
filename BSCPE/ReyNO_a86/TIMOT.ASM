~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.code
org 100h


word1 db 'ASSEMBLY'
word2 db 'LANGUAGE'
word3 db 16 dup ('0'),'$'

main proc near
mov ax,03h
int 10h
mov cx,00h

here:
mov al,word1[cx]
~              ^
#ERROR 39: Bad Index Register                                             @@@@#
mov word3[cx],al
~           ^
#ERROR 39: Bad Index Register                                             @@@@#
inc ch
cmp ch,7h
je here1
jne here

here1:
mov cl,08h
mov ch,08h

here2:
mov al,word2[cl-1]
~              ^
#ERROR 39: Bad Index Register                                             @@@@#
mov word3[ch],al
~           ^
#ERROR 39: Bad Index Register                                             @@@@#
inc ch
dec cl
jz output
jnz here2

output:
mov ah,09h
lea dx,word3
int 21h

main endp
end main
