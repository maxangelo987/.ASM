.model small
.code
.data
org 100h

jmp main

handle dw 0
handle1 dw 0

plist label byte
max1 db 30
act1 db ?
filename db 31 dup ('')

rlist label byte
max2 db 30
act2 db ?
filename1 db 31 dup ('')

string1 db 297 dup (0)
endchar db '$'

prompt1 db 'Enter filename: $'
prompt2 db 'Enter backup name: $' 
prompt3 db 'read: $'
succ db 'Backup created. $'
fail db 'Backup not created. $'

main proc near
 mov ax, 03h
 int 10h

 call endl

 mov ah, 09h
 lea dx, prompt1
 int 21h

 mov ah, 0ah
 lea dx, plist
 int 21h

 mov bh, 00h
 mov bl, act1
 mov filename[bx], 0

 mov ax, 3d02h
 lea dx, filename
 int 21h
 jc error

 mov handle, ax
 
 mov ah, 3fh
 mov bx, handle
 mov cx, 8
 lea dx, string1
 int 21h
 jc error 

 mov ah, 3eh
 mov bx, handle
 int 21h

 call endl
 
 mov ah, 09h
 lea dx, prompt3
 int 21h

 mov ah, 09h
 lea dx, string1
 int 21h
 
 call endl

 mov ah, 09h
 lea dx, prompt2
 int 21h
 
 mov ah, 0ah
 lea dx, rlist
 int 21h

 mov bh, 00h
 mov bl, act2
 mov filename1[bx], 0
 
 mov ah, 3ch
 mov cx, 000h
 lea dx, filename1
 int 21h
 jc error1

 mov handle1, ax
 
 mov ah, 40h
 mov bx, handle1
 mov cx, 297
 lea dx, string1
 int 21h
 if nc call okay1
 if c call error1


 mov ah, 3eh
 mov bx, handle1
 int 21h

 call endl

error:
 mov ax, 4c00h
 int 21h

main endp
end main

endl proc near
 mov ah, 02h
 mov dl, 10
 int 21h

 mov ah, 02h
 mov dl, 13
 int 21h

ret
endl endp
end endl



okay1 proc near

call endl

mov ah, 09h
lea dx, succ
int 21h

ret

okay1 endp
end okay1


error1 proc near

call endl
mov ah, 09h
lea dx, fail
int 21h

jmp error

error1 endp
end erro1
