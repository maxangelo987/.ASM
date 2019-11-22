.model small
.code
org 100H
jmp main
;------------

plist   label   byte
max     db      21    
act     db      ?
kbh     db      20 dup('$')
mem     db      'String','$'
;-----------

main proc near


MOV ah,0ah
LEA dx,plist
int 21H

MOV ah,09h
LEA dx,mem
int 21H

MOV al,15
MOV cx,0004H
MOV dx,0004H
MOV bh,2
MOV ah,6
INT 10h

;===============
MOV     ax      ,4c00h
int     21H

main    endp
end     main
