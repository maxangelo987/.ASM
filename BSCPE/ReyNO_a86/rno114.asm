.model small
.code

org 100h
jmp main

parlist label   byte
max     db      20
act     db      ?
inp1    db      20 dup (' ')
intro1   db      0ah,0dh,'Password: ','$'
pass_1  db      'misael',' '
outpu   db      0ah,0dh,'Welcome misael','$'

main proc near
        lea di, pass_1 
        mov bl, 03h
      begin:
        mov ah, 09h
        lea dx, intro1
        int 21h
        
        mov ah, 0ah
        lea dx, parlist
        int 21h

        lea si, inp1
        mov cl, act

        mov ah, 06h
        cmp cl, ah
        jne attem
        je com1
               
      attem:
        dec bx
        jnz begin
        jz exit101
      com1:
         mov ah, [si]
         cmp ah, 41h
         ja kill
         je attem
      kill:
         cmp ah, 5ah
         jb attem
         je attem
      com2:
         mov ah, [si]
         mov dh, [di]
         cmp ah, dh
         jne attem
         je fr
      fr:
        inc si
        inc di
        dec cx
        jnz com1
        jz prnt101
      prnt101:
        mov ah, 09h
        lea dx, outpu
        int 21h
      exit101:
        mov ax, 4c00h
        int 21h
main endp
end main







