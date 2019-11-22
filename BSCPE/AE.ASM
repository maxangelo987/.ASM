.model small
.code
org 100h
jmp main

string1 db 'Hi Max! ','$'
mode db 00

main proc near
	mov ax, 03h
	int 10h


	call color
	
main endp
end main



color proc near

 mov ah, 0fh
 int 10h
mov mode, al

mov ah, 00h
mov al, 03
int 10h

mov ah, 08h
int 10h
mov bh, ah


mov ax, 0600h
mov cx, 0000h
mov dx, 184fh
int 10h


mov ax, 0600h
mov bh, 81h
mov cx, 0d28h
mov dx, 1950h
int 10h

mov ah, 02h
mov dh, 03   ; row
mov dl,  13   ; column
int 10h

 mov ah, 09h
 lea dx, string1
 int 21h
 
 mov ah, 10h
 int 16h
 
 mov ah, 00
 mov al, mode
 int 10h
 
 
 ret
 color endp
 end color
