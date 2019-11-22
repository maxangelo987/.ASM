; Activity 2, # 1: Ask a user's password then 
;              ask password for the second time.
;              Display the following afterwards
; Display:
; Same Passwords - WELCOME
; Different Passwords - ACCESS DENIED


.model small
.code                    
org 100h
jmp main

plist1 label byte
maxlen1 db 31
actlen1 db ?
kybd1 db 32 dup ('$')

plist2 label byte
maxlen2 db 31
actlen2 db ?
kybd2 db 32 dup ('$')

word1 db 'Enter Password: ','$'
word2 db 'Enter Again Password: ','$'
space1 db '',0ah,0dh
       db '$'
prompt1 db 'ACCESS DENIED','$'
prompt2 db 'WELCOME','$'
main proc near

mov ax, 03h                   ; clrscr
int 10h

mov ah, 09h                   ; printing Enter Password
lea dx, word1           
int 21h

mov ah, 0ah                   ; scanning 1st String
lea dx, plist1
int 21h

mov ax, 03h                   ; clrscr
int 10h

mov ah, 09h                   ; printing Enter Again Password
lea dx, word2
int 21h

mov ah, 0ah                   ; scanning 2nd String
lea dx, plist2
int 21h

mov ax, 03h                   ; clrscr
int 10h

comparing:
     mov ah, actlen1
     mov al, actlen2

     cmp ah,al
     je process
     jne denied

process:
 lea si, kybd1
 lea di, kybd2

 mov ch, actlen2
 mov cl, 00h
 jmp loop2

loop1:
 dec ch
 cmp ch, cl
 je welcome
 jne loop2

loop2:
 mov al,[si]
 mov bl,[di]
 inc si
 inc di
 cmp al,bl
 jne denied
 je loop1





denied:
 mov ah, 09h
 lea dx, prompt1
 int 21h
 jmp stop

welcome:
 mov ah, 09h
 lea dx, prompt2
 int 21h
 jmp stop

stop:
mov ax, 4c00h                 ; terminator
int 21h

main endp
end main
