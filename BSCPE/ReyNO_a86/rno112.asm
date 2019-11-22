;	input word:  hello World
;	input letter: l
;	output:	he**o Wor*d

.model small
.code

org 100h
jmp main

parlist1 label   byte
max1     db      20
act1     db      ?
inp_w    db      20 dup ('$')  ;si

nwl      db      0ah,0dh,'$'
intro1   db     'Enter a String: ','$'       
intro2   db     'Enter a Letter: ','$'
outpu    db     'Output: ', '$' 

parlist2  label   byte
max2      db      2      
act2      db      ?      
inp_l     db      3 dup (' ') ;di  

main proc near
        mov ax, 03h    ;clear screen
        int 10h

        mov ah, 09h
        lea dx, intro1
        int 21h

        mov ah, 0ah
        lea dx, parlist1
        int 21h

        mov ah, 09h
        lea dx, nwl
        int 21h

        mov ah, 09h
        lea dx, intro2
        int 21h

        mov ah, 0ah
        lea dx, parlist2
        int 21h

        lea si, inp_w
        lea di, inp_l
        mov cl, act1
        mov ah, [di]
        mov al, ah

      a1:
        mov ah, [si]
        cmp ah, al
        je str101
        jne str102

      str101:
        mov ah, "*"
        mov [si],ah
        inc si
        dec cx
        jnz a1
        jz exit101
      str102:
        inc si
        dec cx
        jnz a1
        jz exit101

      exit101:
        mov ah, 09h
        lea dx, nwl
        int 21h

        mov ah, 09h
        lea dx, outpu
        int 21h

        mov ah, 09h
        lea dx, inp_w
        int 21h
        
        mov ax, 4c00h
        int 21h

main endp
end main
