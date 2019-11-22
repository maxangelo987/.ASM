.model small
.code
org 100h
jmp gervin

s1 db 'Kelendaryo ni gerbano prototype','$'

gervin proc near

        mov ax, 03h
        int 10h

        mov ah, 09h
        lea dx, s1
        int 21h

        mov ax, 4c00h
        int 21h

        gervin endp
        end gervin
