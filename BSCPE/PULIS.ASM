~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.code
org 100h

jmp main

testing 'HELLO BITCHES!!! $'
~ ^
#ERROR 01: Unknown Mnemonic                                               @@@@#
~ ^
~ ^
#ERROR 06: Symbol Required                                                @@@@#
main proc near
~ ^
~ ^
#ERROR 06: Symbol Required                                                @@@@#

mov ah, 09h
lea dx, testing 
int 21h

int 20h
