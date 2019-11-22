.model small
.code

org 100h
jmp main


parlist label   byte

max     db      100
act     db      ?
inp1    db      101 dup (' ')      ;di
out1    db      101 dup ('$')      ;si      

main proc near

        mov ah,0ah
        lea dx,parlist
        int 21h

        lea di, inp1
        lea si, out1
        mov bl, act
        mov cl, act
        dec cl
        dec bl
        mov ah, inp1[bx]
        mov [si],ah
        inc si
        

   loop1:
        mov bh,[di]
        mov [si],bh
        inc si
        inc di
        dec cx
        jnz loop1

   add_ay:

        mov ah,'A'
        mov [si],ah
        inc si
        mov ah, 'Y'
        mov [si],ah


   exit1:

        mov ah, 09h
        lea dx, out1
        int 21h

        mov ax, 4c00h
        int 21h

main endp
end main
