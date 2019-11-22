~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.code

org 100h
jmp main

string1         db     '','$'

row             db      09h        
colom           db      00h

map1            db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '5555555                  5555555555555555555555555',0ah,0dh
                db      '5555555 5555555555555555 5555555555555555555555555',0ah,0dh
                db      '5555555 5555555555555555 5555555555555555555555555',0ah,0dh
                db      '                                       55555555555',0ah,0dh
                db      '555 55555555555555555 55 5555555555555 55555555555',0ah,0dh
                db      '555 55555555555555555 55 5555555555555 55555555555',0ah,0dh
                db      '555 55555555555555555 55 5555555555555 55555555555',0ah,0dh
                db      '555     5555555555555 55 5555555555555 55555555555',0ah,0dh
                db      '5555555 5555555555555 55 5555555555555 55555555555',0ah,0dh
                db      '5555555 5555555555555 55 5555555555555 55555555555',0ah,0dh
                db      '5555555                                     finish',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh,'$'
main proc near

      a1:  
        call clear101

        mov ah, 09h
        lea dx, map1
        int 21h    

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 09h
        lea dx, string1
        int 21h

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah,0bh
        int 21h

        mov ah,07h
        int 21h

      a2:
        cmp al, 'd'
        je inc_col

      a3:
        cmp  al, 's'
        je dec_row

      a4:
        cmp al, 'a'
        je dec_col

      a5:
        cmp al, 'w'
        je inc_row

      a6:
        cmp al, 'q'
        je exit101


      a7:

        jmp a1

      inc_row:
        dec row

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7

        inc row
        jmp a1

      inc_col:
	inc colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7

        dec colom
        jmp a1

      dec_col:

        dec colom

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        je a7

        inc colom
        jmp a7


      dec_row:
        inc row

        mov ah, 02h
        mov dh, row
        mov dl, colom
        mov bh, 00h
        int 10h

        mov ah, 08h
        mov bh, 00h
        int 10h

        cmp al, ' '
        ;je a7

        dec row
        jmp a7



      exit101:
~             ^
#ERROR 02: Jump > 128                                                     @@@@#
       call clear101
       mov ax, 4c00h
       int 21h

main endp
end main
        
clear101 proc near 

        mov ax, 03h
        int 10h
        ret

clear101 endp
end clear101

