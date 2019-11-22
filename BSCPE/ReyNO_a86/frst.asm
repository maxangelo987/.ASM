.model small
.code
org 100h
jmp main
;============
plist   label   byte
max     db      20		;max length of the string input minus 1
act     db      ?		;length of the string input
knm     db      21 dup('$')
nwl     db      0ah,0dh,'$'
;============

main proc near

        MOV ah,0ah
        LEA dx,plist
        int 21H

        MOV cl,act

LOOP1:

        LEA di,knm
        MOV ch,act

LOOP2:

        MOV al,'*'
        MOV [di],al
        INC di

        DEC ch
        CMP ch,0
        JNZ LOOP2

        MOV ah,09h
        LEA dx,knm
        int 21H

        MOV ah,09h	; new line
        LEA dx,nwl	; new line 	
        int 21H		; new line

        DEC cl
        JNZ LOOP1

EXIT:
        MOV ax,4c00h
        INT 21H

     main endp
     end main
