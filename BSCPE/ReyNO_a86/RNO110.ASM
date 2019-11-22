; Enter a String and convert the lower case to upper case
; & lower case to upper case .. :)

.model small
.code

org 100h
jmp main

parlist label   byte
max     db      100
act     db      ?
inp1    db      101 dup (' ')   ;di
out1    db      101 dup ('$')   ;si
nwl     db      0ah,0dh,'Ouput:','$'
intro1  db      'Enter Input: ','$'


main proc near
        mov ah,09h
        lea dx, intro1
        int 21h

        mov ah, 0ah
        lea dx, parlist
        int 21h

        lea di, inp1
        lea si, out1
        mov cl, act

        a1:
                mov ah, [di]
                cmp ah, 41h
                ja a2
                jb null101
                je con101
        a2:
                cmp ah, 5ah
                ja a3
                jb con101
                je con101
        a3:
                cmp ah, 61h
                je con101
                ja a4
                jb null101
        a4:
                cmp ah, 7ah
                je con101
                ja null101
                jb con101

        con101:
                xor ah,20h
                mov [si],ah
                inc di
                inc si
                dec cx
                jz exit101
                jnz a1

        null101:
                mov [si],ah
                inc di
                inc si
                dec cx
                jz exit101
                jnz a1

        exit101:
                mov ah, 09h
                lea dx, nwl
                int 21h

                mov ah, 09h 
                lea dx, out1
                int 21h

                mov ax,4c00h
                int 21h
main endp
end main              
