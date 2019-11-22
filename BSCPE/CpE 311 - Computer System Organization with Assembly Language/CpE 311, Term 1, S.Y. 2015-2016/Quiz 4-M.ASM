; Quiz 4 - Enter string then if the length is odd print at middle upper left 
; and consecutives letters and
; if it is even print at middle lower right vice versa
; Example: max
; Out: mx (at middle of upper left)

.model small
.code
org 100h
jmp main


plist1 label byte
maxlen1 db 30
actlen1 db ?
kybd1 db 31 dup ('$'), '$'


ctr db 00
col db 00
row db 00
mode db 00


word9 db 'Enter String:  ','$'
fword db 15 dup ('$')


odd1 db 'ODD','$'
even1 db 'EVEN','$'

quot1 db 0

main proc near

 mov ax, 03h
 int 10h

 mov ah, 09h
 lea dx, word9
 int 21h

 mov ah, 0ah
 lea dx, plist1
 int 21h
 
 mov ax, 03h
 int 10h


mov bl, actlen1
inc ctr


div2:
 inc ctr
 sub bl, 4h
 
 cmp bl, 0h
 je are
 cmp bl, 1h
 je are
 cmp bl, 2h
 je are
 cmp bl, 3h
 je are

 cmp bl, -1h
 je are

 cmp bl, -2h
 je are

 cmp bl, -3h
 je are
 
 jmp div2

are:
 mov ah, actlen1

div1:
 sub ah, 2h
 cmp ah, 0h
 je even_i
 cmp ah, 1h
 je odd_i
 cmp ah, -1h
 je odd_i
 jmp div1

; ____________

even_i:
 call eveni
 odd_i:
  call odd


main endp
end main



eveni proc near


;even_i:
mov cl, 14h
mov dl, ctr
sub cl, dl
mov col, cl

 lea si, kybd1
 lea di, fword
 
 mov bl, actlen1
 inc bl

trans1:
 dec bl
 cmp bl, 00h
 je b10 
 mov cl, [si]
 mov [di], cl
 inc si
 inc si
 inc di
 jmp trans1


b10:
 mov ah, 0fh
 int 10h

 mov mode, al
 mov ah, 00h
 mov al, 03
 int 10h
 
c10:              ; color
 mov bh, ah
 mov ah, 08h
 int 10h
 mov ax, 0600h
 mov cx, 0000h
 mov dx, 184fh
 int 10h                                               

 mov ax, 0600h
 mov bh, 16h
 mov cx, 0000h
 mov dx, 0B28h
 int 10h

d10:
 mov ah, 02h       ; cursor
 mov bh, 00
 mov dh, 5       ; row
 mov dl, col        ;
 int 10h

e10:
 mov ah, 09h
 lea dx, fword
 int 21h 

flo:
 mov ah, 10h
 int 16h
 
glo:
 mov ah, 00h
 mov al, mode
 int 10h
 jmp stop


 
 ret
 eveni endp
 end eveni
;_______



odd proc near

;odd_i:

mov cl, 3ch
mov dl, ctr
sub cl, dl
mov col, cl

 lea si, kybd1
 lea di, fword
 
mov bl, actlen1
inc bl

trans:
 dec bl
 inc si 
 mov cl, [si]
 mov [di], cl
 cmp bl, 00h
 je b11
 inc si
 
 inc di
 jmp trans




 b11:
 mov ah, 0fh
 int 10h

 mov mode, al
 mov ah, 00h
 mov al, 03
 int 10h

c11:              ; color
 mov ah, 08h
 mov bh, ah
 int 10h
 
 mov ax, 0600h
 mov cx, 0000h
 mov dx, 184fh
 int 10h                                               

 mov ax, 0600h
 mov bh, 81h
 mov cx, 0d28h
 mov dx, 1950h
 int 10h

d11:
 mov ah, 02h       ; cursor
 mov bh, 00        ; normal force
 mov dh, 18
 mov dl, col
 int 10h

e11:
 mov ah, 09h
 lea dx, fword
 int 21h 

fl1:
 mov ah, 10h
 int 16h

gl1:
 mov ah, 00h
 mov al, mode
 int 10h
 jmp stop1

 
 stop1:
  call stop
 
 ret
 odd endp
 end odd
 ;______________________________
 
 
 
stop proc near
 

 mov ax, 4c00h
 int 21h

 ret
 stop endp 
 end stop
 
 ;_______________________________
