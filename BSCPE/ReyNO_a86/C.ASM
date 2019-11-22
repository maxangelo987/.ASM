.model small
.code
org 100h
jmp main
row db 20
col db 30
X db '*','$'
main proc near
        mov ax, 03h
        int 10h
    lap:
        mov ah, 02h
        mov bl, 07h
        mov dh, row
        mov dl, col
        int 10h

        mov ah, 09h
        lea dx, X
        int 21h

        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay
        call delay

        inc col
        mov al, 50
        cmp col, al
        jne lap

        mov ax, 03h
        int 21h

        main endp
        end main

delay proc near
        mov cx, 60000
     lep:
        loop lep
        ret

        delay endp

        
         
