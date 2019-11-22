.model small
.code

org 100h

jmp main

testing 'I AM FUCKED UP!! $'
main proc near

mov ah, 09h
lea dx, testing
int 021h

int 20h