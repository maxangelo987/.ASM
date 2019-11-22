.model small
.code
org 100h
jmp main                     ; jump to main

plist1 label byte
maxlen db 50
actlen db ?
kybd db 51 dup ('$'),0ah,0dh

strlen1 dw $-kybd            ; strlen1
word3 db 51 dup ('$'),0ah,0dh     ; 
word1 db 'ENTER STRING: ','$'
word4 db 51 dup ('$'),0ah,0dh

ctr db 00
row db 00

space1 db '',0ah,0dh
       db '$'

main proc near
  mov ax, 03h                ; clrscr
  int 10h
 
  mov ah, 09h                ; printing Assembly
  lea dx, word1   
  int 21h
   
  mov ah, 0ah
  lea dx, plist1
  int 21h

  mov ax, 03h
  int 10h

  mov bl, actlen
  sub bl, 1h
  mov bp, 0h

loop1:
  mov cl, kybd[bx]      
  mov word3[bp], cl
  inc bp
  dec bx
  cmp bx, -1h
  je here1
  jne loop1

here1:
  mov al, 28h
  mov ah, actlen

here2:
 inc ctr
 sub ah, 2h
 cmp ah, 01h
 je output
 jg here2
 cmp ah, 00h
 je output
 jg here2

output:
  mov ch, ctr
  sub al, ch

  mov ah, 02h
  mov bh, 00   ; NORMAL 
  mov dh, 12   ; ROW
  mov dl, al   ; COLUMN
  int 10h

; --- color

 mov ah, 08h
 int 10h

 mov bh, ah

 mov ax, 0600h
 mov cx, 0000h
 mov dx, 184fh
 int 10h

 mov ax, 0650h
 mov bh, 16h
 mov cx, 0000h
 mov dx, 1950h
 int 10h

 mov ah, 09h                 
 lea dx, word3
 int 21h

 mov ah, 09h
 lea dx, space1
 int 21h

 mov bh, 02h
 mov dl, 10
 int 21h
 
 mov bh, 02h
 mov dl, 13
 int 21h

 mov ax, 4c00h               ; terminator
 int 21h

main endp
end main
