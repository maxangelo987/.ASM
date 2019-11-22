; input: reyno
; output:
;       rrrrr
;       eeee
;       yyy
;       nn
;       o

.model small
.code

org 100h
jmp main


parlist label   byte
max     db      20
act     db      ?
inp1    db      20 dup (' ')
out1    db      1  dup (' '), '$' 
nwl     db      0ah,0dh,'$'
intro1  db      'Enter a String: ','$'
outpu   db      'Output: ','$'


main proc near
        mov ax, 03h
        int 10h

        mov ah, 09h
        lea dx, intro1
        int 21h

        mov ah, 0ah
        lea dx, parlist
        int 21h

        mov ah, 09h
        lea dx, nwl
        int 21h

        mov ah, 09h
        lea dx, outpu
        int 21h

        mov ah, 09h
        lea dx, nwl
        int 21h

        lea di, inp1
        lea si, out1
        mov cl, act
        inc cx

      a1:
        mov bl, cl
       
      a2:
        mov ah, [di]
        mov [si], ah

        dec bx
        jz prnt102
        jnz prnt101

      prnt101:
        mov ah, 09h
        lea dx, out1
        int 21h
        jmp a2

      prnt102:
        mov ah, 09h
        lea dx, nwl
        int 21h
        inc di
        dec cx
        jz exit101
        jnz a1     

     exit101:
        mov ax, 4c00h
        int 21h

main endp
end main
