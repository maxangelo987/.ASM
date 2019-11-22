.model small
.code
org 100h
jmp main

kname db ' ','$'
space db ' ','$'
newl  db 0ah,0dh,'$'

main proc near

MOV cl,0
LEA di,space

LOOP1:
        MOV  ch,20

        MOV ah,09h
        LEA dx,newl
        int 21H

        MOV ah,09H
        LEA dx,newl
        int 21H


LOOP2:
        MOV kname,cl
        MOV ah,09H
        LEA dx,kname
        int 21H
        MOV ah,09H
        LEA dx,space
        int 21H

        dec ch
        CMP ch,0
        JE LOOP1

        inc cl
        CMP cl,255
        JNE LOOP2

EXIT:
        MOV ax,4c00h
        int 21H

        main endp
        end main
