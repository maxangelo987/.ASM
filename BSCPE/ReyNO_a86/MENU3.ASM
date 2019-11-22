.model small
.code
org 100H

jmp     main

plist   label   byte
max     db      21
act     db      ?
kbn     db      20 dup('$')
mach    db      'breakaway','$'
main    proc    near

MOV     ah,     02H
MOV     dh,     5
MOV     dl,     5
MOV     bh,     00
int     10H

MOV     ah,     09H
MOV     cx,     1
MOV     al,     'a'
MOV     bl,     10111010b
INT     10H

;MOV     ah,     09H
;LEA     dx,     mach
;INT     21H


MOV     ax,     4c00h
INT     21H

main    endp
        end     main
