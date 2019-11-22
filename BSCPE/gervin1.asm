.model large
.code
org 100h
jmp gervin

s1 db 'Kinsay patyun?: ','$'
s2 db 'Unsaon pagpatay?: ','$'
s3 db 'Result: RIP','$'

kolera label byte
max db 30
act db ?
kyd db 31 dup ('$')

kolera1 label byte
max1 db 30
act1 db ?
kybd1 db 31 dup ('$')

gervin proc near

        call duterte

        mov ah, 09h
        lea dx, s1
        int 21h

        mov ah, 0ah
        lea dx, kolera
        int 21h

        call duterte

        mov ah, 09h
        lea dx, s2
        int 21h

        mov ah, 0ah
        lea dx, kolera1
        int 21h

        call duterte

        mov ah, 09h
        lea dx, s3
        int 21h
        jmp exit

duterte proc near

        mov ax, 03h
        int 10h
        ret
        duterte endp

exit:

        int 20h
        gervin endp
        end gervin
