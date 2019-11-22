; maze Rno Trial

.model small
.code

org 100h
jmp main

string1         db     '','$'
cong            db     'Congrats Shit!','$'
row             db      07h        
colom           db      00h

map1            db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '5555555                  5555555555555555555555555',0ah,0dh
                db      '5555555 5555555555555555                 555555555',0ah,0dh
                db      '5555555 5555555555555555 555555555555555 555555555',0ah,0dh
                db      '                                       5       555',0ah,0dh
                db      '555 55555555555555555 55 5555555 55555 5555555 555',0ah,0dh
                db      '555 55555555555555555 55 555     5555 55555555 555',0ah,0dh
                db      '555 55555555555555555 55 555 55555555555555555 555',0ah,0dh
                db      '555     5555555555555 55 555 555555555 5555555 555',0ah,0dh
                db      '5555555 5555555555555 55 555           5555    555',0ah,0dh
                db      '5555555 5555555555555 55 5555555555555 555 5555555',0ah,0dh
                db      '5555555                       55            finish',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh
                db      '55555555555555555555555555555555555555555555555555',0ah,0dh,'$'
main proc near
        mov ax, 03h
        int 10h
      a1:  
        call clear101

        mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h

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
        je a701

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

      exit101:
       mov ax, 03h
       int 10h
       mov ax, 4c00h
       int 21h

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

        cmp al, 'f'
        je rno

        dec colom
        jmp a7
      a702:
        jmp a7
      rno:
        mov ax, 03h
        int  10h

        mov ah, 09h
        lea dx, cong
        int 21h

        mov ax, 4c00h
        int 21h

      a701:
        jmp dec_row

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
        je a702

        inc colom
        jmp a1

      a700:
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
        je a700

        dec row
        jmp a700

main endp
end main
        
clear101 proc near 

        mov ah,06h
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,07h
        int 10h
        ret

clear101 endp
end clear101

