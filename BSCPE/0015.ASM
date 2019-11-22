.model small
.code
org 100h
jmp main

plist label byte
maxlen db 30
actlen db ?
kybd db 31 dup ('$'),'$'


plist2 label byte
maxlen2 db 30
actlen2 db ?
kybd2 db 31 dup ('$'),'$'

filhand dw ?


pathname db 'c:\perin.doc',00h
word1 db 'Enter pathname to rename: ','$'
word2 db 'Enter new name to file: ','$'

prompt1 db 'ERROR!','$'
prompt2 db 'FILE RENAMED!','$'

main proc near


mov ah, 09h
lea dx, word1
int 21h

mov ah, 0ah
lea dx, plist
int 21h

mov bl, actlen
mov kybd[bx], 00h
call endl

mov ah, 09h
lea dx, word2
int 21h

mov ah, 0ah
lea dx, plist2
int 21h

mov bl, actlen2
mov kybd2[bx], 00h


mov ah, 56h
lea dx, kybd
lea di, kybd2
int 21h
jc error1
jmp suc

error1:
 call endl

 mov ah, 09h
 lea dx, prompt1
 int 21h
 jmp stop


suc:
 call endl

 mov ah, 09h
 lea dx, prompt2
 int 21h
 jmp stop

stop:
 mov ax, 4c00h
 int 21h

main endp
end main


;_______________________
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
;_______________________
