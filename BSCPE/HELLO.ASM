.model small
.code
org 100h

jmp main

word1 db, 'ASSEMBLY $'
word2 db, 'LANGUAGE $'
strlen1 dw $-word2







main proc near

mov ah, 09h
lea dx, word1
int 21h


hell proc near

mov ah, 09h
lea dx, word3
int 21h


int 20h