.model small
.code

org 100h

jmp main

parlist  label  byte
maxlen   db     20
actlen   db     ?
kbname   db     21 dup (' ')
                           

main proc near

        mov ah, 0ah
        lea dx, parlist
        int 21h

        mov bl,actlen
        mov kbname [bx], '$'
        mov ah, 09h
        lea dx, kbname
        int 21h

        mov ax, 4c00h
        int 21h


main endp
end main
