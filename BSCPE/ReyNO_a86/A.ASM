.model small
.code
org 100h
jmp main

plist label byte
max db 20
act db ?
kbd db 21 dup(' ')
kbd1 db 21 dup(' '),'$'

main proc near

        mov ah, 0Ah
        lea dx, plist
        int 21h

        lea si, kbd
        lea di, kbd1
        mov cl, act

    lap:
        mov al, [si]
        cmp al, 'a'
        je lep
        cmp al, 'A'
        je lep
        cmp al, 'e'
        je lep
        cmp al, 'E'
        je lep
        cmp al, 'i'
        je lep
        cmp al, 'I'
        je lep
        cmp al, 'o'
        je lep
        cmp al, 'O'
        je lep
        cmp al, 'u'
        je lep
        cmp al, 'U'
        je lep

    lip:
        mov [di], al
        inc si
        inc di
        loop lap
        jmp lop

    lep:
        mov al, '*'
        jmp lip

    lop:
        mov ah, 09h
        lea dx, kbd1
        int 21h

        mov ax, 4C00h
        int 21h

        main endp
        end main

