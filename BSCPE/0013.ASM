.model small
.code
org 100h
jmp main

pathname1 db 'C:\MAX\PERIN.jpec',00h
filhand dw ?


plist1 label byte
maxlen1 db 31
actlen1 db ?
kybd1 db 32 dup ('$')


word1 db 'Folder created. ','$'
word2 db 'Folder not created. ','$'

main proc near
 mov ax, 03h
 int 10h

 mov ah, 0ah
 lea dx, plist1
 int 21h

 mov bl, actlen1
 mov kybd1[bx], 00h

 mov ah, 39h
 lea dx, kybd1
 int 21h
 jc error1
 
 mov ah, 3ch
 mov cx, 00
 lea dx, pathname1
 int 21h
 jc error1
 mov filhand, ax

 jmp s1

error1:
 mov ah, 09h
 lea dx,  word2
 int 21h 
 jmp stop

s1:
 mov ah, 09h
 lea dx,  word1
 int 21h
 jmp stop

stop:
 mov ax, 4c00h
 int 21h


main endp
end main
