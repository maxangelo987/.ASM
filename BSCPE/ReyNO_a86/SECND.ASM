.model small
.code
org 100H
jmp main
;===========
plist label byte
maxlen db 20
actlen db ?
kbname db 21 dup('$')
kbname2 db 'aeiouAEIOU'
newl db 0ah,0dh,'$'
;==========

main proc near

        MOV ah,0ah
        LEA dx,plist
        int 21H
        MOV ch,actlen
        MOV cl,10
        LEA si,kbname
        LEA di,kbname2

LOOP1:
        MOV al,[si]
        CMP [di],al
        JE asterisk
        INC di
        DEC cl
        JNZ LOOP1
        LEA di,kbname2
        INC si
        MOV cl,10
        dec ch
        CMP ch,0
        JNE LOOP1
        JMP Exit1

asterisk:
        MOV al,'*'
        MOV [si],al
        INC si
        DEC ch
        CMP ch,0
        JNE LOOP1

Exit1:
        MOV ah,09H
        LEA dx,newl
        int 21H

        MOV ah,09H
        LEA dx,kbname
        int 21H

        MOV ax,4c00h
        int 21H


        main endp
        end main
