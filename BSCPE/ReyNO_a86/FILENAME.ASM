~^
#ERROR messages will be removed if you leave these first two lines in     @@@@#
.model small
.data
a db 09H
b db 02H
~ ^
#ERROR 37: Misplaced Built-In Symbol                                      @@@@#
.code

mov ax, @data
move ds, ax
~ ^
#ERROR 01: Unknown Mnemonic                                               @@@@#
mov al, a
mov bl, b
add al, bl
mov ch, 02h
mov cl, 04h
mov bh, al

l2:
  rol bh, cl
  mov dl, bh
  and dl, 0fh
  cmp dl, 09
  jbe l4
  add dl, 07

 l4: add dl, 30H
 mov ah, 02
 int 21H
 dec ch
 jnz l2
 mov ah, 4CH
 int 21H
 end
