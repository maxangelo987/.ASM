; Asseby Program to print all ASCII Characters 

.model small
.code
org 100h

begin: jmp short a10main
aschar db 00,'$'

a10main proc near
        mov ax, 03h      ; clear screen
        int 10h

        call b10scrn
        call c10curs
        call d10disp
        mov ax, 4c00h
        int 21h
a10main endp

b10scrn proc near
        mov ax, 0600h
        mov bh, 70
        mov cx, 0000
        mov dx, 184fh
        int 10h
        ret

b10scrn endp

c10curs proc near
        mov ah, 02h
        mov bh, 00
        mov dx, 0000
        int 10h
        ret
c10curs endp


d10disp proc
        mov cx, 256
        lea dx, aschar

d20:
        mov ah, 09h
        int 21h
        inc aschar
        loop d20
        ret

d10disp endp
        end begin
