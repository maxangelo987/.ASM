.model small
.code
org 100h
jmp main
;===========
plist   label   byte
maxlen  db      20
actlen  db      ?
kname   db      21 dup('$')
newl    db      0Ah,0dh,'$'
;===========
main proc near


        MOV ah,0ah
        LEA dx,plist
        int 21H

        mov ax, 03h
        int 10h

        MOV cl,actlen
        LEA si,kname

        
LOOP1:

        MOV ah,09h
        MOV bl,12
        MOV al,[si]
        int 10H

        INC si
        DEC cl

        MOV ah,09h
        LEA dx,newl
        int 21H

        JNZ LOOP1

EXIT:
        MOV ax,4c00h
        int 21H

        main endp
        end main
