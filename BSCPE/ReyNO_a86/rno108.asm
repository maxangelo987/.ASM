; input: rno
; outpit: rno   --->print the sting you input.

.model small
.code

org 100h
jmp main

parlist label   byte
max     db      20
act     db      ?
prnt    db      21 dup ('$')
nwl     db      0ah,0dh, '$'

main proc near

        mov ah, 0Ah      ;string input
        lea dx, parlist
        int 21h

        lea di, prnt

        mov ah,09h
        lea dx, nwl
        int 21h


        mov ah, 09h
        lea dx, prnt
        int 21h


        mov ax, 4c00h
        int 21h

main endp
end main



        
       
