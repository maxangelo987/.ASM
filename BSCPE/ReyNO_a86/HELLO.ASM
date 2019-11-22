.model small
.code 
org 100h
jmp main
string db 'Hello  World',0ah,0dh,'$'

main proc near

        mov bh,14h
        mov ch,00h
        mov cl,00h
        mov dh,12
        mov dl,39
        call clear

        mov bh,23h
        mov ch,13
        mov cl,0
        mov dh,24
        mov dl,39
        call clear

        mov bh,32h
        mov ch,00h
        mov cl,40
        mov dh,12
        mov dl,79
        call clear

        mov bh,41h
        mov ch,13
        mov cl,40
        mov dh,24
        mov dl,79
        call clear

        mov bh,87h
        mov ch,5
        mov cl,17
        mov dh,19
        mov dl,62
        call clear


        mov dh,12
        mov dl,33
        call cursor

        mov ah,09h
	lea dx,string
        int 21h

        mov ax,4c00h
	int 21h

main endp

cursor proc near

        mov ah,02h
        mov bh,00h
        int 10h
        ret

cursor endp
clear proc near

        mov ah,06h
        mov al,00h
       ; mov bh,12h
       ; mov ch,00h
       ; mov cl,00h
       ; mov dh,24
       ; mov dl,79
        int 10h
        ret

clear endp
        end main
