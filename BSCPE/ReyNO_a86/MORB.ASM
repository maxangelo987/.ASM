.model small
.code
org 100H
jmp main

bord    db      '        ','$'

main proc near

MOV     ah,     0Fh
INT     21H
LEA     di,     bord

MOV     [di],     al
MOV     ah,     09H
LEA     dx,     bord
INT 21H

MOV     ax,     4c00h
INT     21H

main endp
end main
