.model small
.code
org 100h
jmp main

plist	label 	byte
max 	db 	20		;max length of the string input minus 1
act 	db 	?		;length of the string input	
kbd 	db 	20 dup(' '),'$'	;

main proc near

        mov ah, 0Ah
        lea dx, plist
        int 21h  

        lea si, kbd
        mov cl, act
        mov bl, 0

    lap:
        mov ah, 02h     ;int 10 service 2
        mov dh, bl	;set row to 0
        push bx
        mov dl, 0	;set column to 0
        int 10h

        mov ah, 09h	;int 10 service 9
        mov bl, 11	;set color 1st digit background 2nd digit text color
        mov al, [si]	;ascii code(write character @ the cursor posotion)
        int 10h
        pop bx
        inc si
        inc bl
        dec cx
        jnz lap

        mov ax, 4c00h
        int 21h

        main endp
        end main


