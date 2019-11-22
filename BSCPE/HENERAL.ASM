.model small
.code
org 100h
jmp main

s1 db 'WORD/S: $'
s2 db 'LOWER CASED: $'

choice db '[N]ew                         [E]xit$'

string1 label byte
max1 db 100
act1 db ?
kybd1 db 101 dup ('$')

col1 db ?
row1 db ?

main proc near

        call clear
        call display

        mov col1, 20
        mov row1, 10
        call cursor
        lea bx, kybd1
        mov cx, 100

	mov ah, 09h
	lea dx, s1
	int 21h

        mov ah, 0ah
        lea dx, string1
        int 21h
        
ako:
        mov ah, [bx]
	cmp ah, 41h
        jb siya
	cmp ah, 5ah
        ja siya
	xor ah, 00100000b
	mov [bx], ah

siya:

	inc bx
        loop ako

        call clear
        call display
        call cursor

        mov ax, 0600h
        mov bh, 80h
        mov cx, 1014h
        mov dx, 1239h
        int 10h

        mov ah, 09h
        lea dx, s2
        int 21h

	mov ah, 09h
        lea dx, kybd1
	int 21h

        mov col1, 21
        mov row1, 17
        call cursor

        mov ah, 09h
        lea dx, choice
        int 21h

        mov col1, 80
        mov row1, 25
        call cursor

ask1:
        mov ah, 07h
        int 21h

        cmp al, 'N'
        if e jmp main
        cmp al, 'n'
        if e jmp main
        cmp al, 'E'
        if e jmp exit
        cmp al, 'e'
        if e jmp exit

        jmp ask1

cursor proc near

        mov ah, 02h
        mov dh, row1
        mov dl, col1
        mov bh, 00
        int 10h
        ret
        cursor endp

display proc near

        mov ax, 0600h
        mov bh, 0eh
        mov cx, 0000h
        mov dx, 1950h
        int 10h
        ret
        display endp

clear proc near

        mov ax, 03h
        int 10h
        ret
        clear endp

exit:
	int 20h
