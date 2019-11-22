.model small
.code
org 100h
jmp a10main

ctr db 00
col db 24
row db 04
mode db ?

; Main Procedure
; ______________

a10main proc near
 call b10mode
 call c10clr

a20:
 call d10set
 call e10disp
 cmp ctr, 0ffh
 je a30
 inc ctr
 add col, 02
 cmp col, 56
 jne a20
 inc row
 mov col, 24
 jmp a20
 
a30:
 call floread
 call g10mode
 mov ax, 4c00h
 int 21h

a10main endp

; ___ Get and set video mode __
b10mode proc near
 mov ah, 0fh
 int 10h
 
 mov mode, al
 mov ah, 00h
 mov al, 03
 int 10h

ret
 b10mode endp


c10clr proc near 
 mov ah, 08h
 int 10h

 mov bh, ah
 mov ax, 0600h
 mov cx, 0000h
 mov dx, 184fh   ; 184f
 int 10h
                          ; 0610
 mov ax, 0650h
 mov bh, 1eh
 mov cx, 0000h    ; 0418
 mov dx, 1950h    ; 1336
 int 10h

ret
c10clr endp
 ; __ Set Cursor to row & column __

d10set proc near
 mov ah,02h               
 mov bh, 00
 mov dh, row
 mov dl, col
 int 10h

ret
d10set endp

; ___ Display ASCII characters _____

e10disp proc near
 mov ah, 02h
 mov dl, ctr
 int 21h

ret
e10disp endp

floread proc near
 mov ah, 10h
 int 16h

ret
floread endp

;__ Restore original video mode __

g10mode proc near
 mov ah, 00h
 mov al, mode
 int 10h

ret
g10mode endp

end main
