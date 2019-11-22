.model small
.code
org 100h
jmp main

plist1 label byte
maxlen1 db 13
actlen1 db ?
kybd1 db 12 dup ('$'),'$'


plist2 label byte
maxlen2 db 13
actlen2 db ?
kybd2 db 12 dup ('$'),'$'


plist3 label byte
maxlen3 db 13
actlen3 db ?
kybd3 db 12 dup ('$'),'$'


word1 db 'Enter 1st String: ','$'
word2 db 'Enter 2nd String: ','$'
word3 db 'Enter 3rd String: ','$'

word31 db 12 dup ('$'),'$'
word32 db 12 dup ('$'),'$'
word33 db 12 dup ('$'),'$'


word4 db 12 dup ('$'),'$'

prompt1 db 'ALL ARE VOWELS','$'
prompt2 db 'NOT ALL ARE VOWELS','$'

main proc near
 mov ax, 03h
 int 10h

 mov ch, 00 

 mov ah, 09h
 lea dx, word1
 int 21h
  
 mov ah, 0ah
 lea dx, plist1
 int 21h

 lea si, word31
 lea di, kybd1
 mov dl, actlen1
 sub dl, 1h

l1:
 mov al, [di]
 mov [si], al
 inc si
 inc di
 dec dl
 cmp dl, 0h
 je pr1
 jne l1


pr1:
 dec si
 mov al, [si]
 cmp al, 'a'
 je estr2
 cmp al, 'e'
 je estr2
 cmp al, 'i'
 je estr2
 cmp al, 'o'
 je estr2
 cmp al, 'u'
 je estr2
 jne estrc

estrc:
 inc ch

estr2:
 mov ax, 03h
 int 10h

 mov ah, 09h
 lea dx, word2
 int 21h
  
 mov ah, 0ah
 lea dx, plist2
 int 21h

 lea si, word32
 lea di, kybd2
 mov dl, actlen2
 sub dl, 1h

l2:
 mov al, [di]
 mov [si], al
 inc si
 inc di
 dec dl
 cmp dl, 0h
 je pr2
 jne l2


pr2:
 dec si
 mov al, [si]
 cmp al, 'a'
 je estr3
 cmp al, 'e'
 je estr3
 cmp al, 'i'
 je estr3
 cmp al, 'o'
 je estr3
 cmp al, 'u'
 je estr3
 jne estrc1

estrc1:
 inc ch

estr3:
 mov ax, 03h
 int 10h

 mov ah, 09h
 lea dx, word3
 int 21h
  
 mov ah, 0ah
 lea dx, plist3
 int 21h

 lea si, word33
 lea di, kybd3
 mov dl, actlen3
 sub dl, 1h

l3:
 mov al, [di]
 mov [si], al
 inc si
 inc di
 dec dl
 cmp dl, 0h
 je pr3
 jne l3


pr3:
 dec si
 mov al, [si]
 cmp al, 'a'
 je estrc3
 cmp al, 'e'
 je estrc3
 cmp al, 'i'
 je estrc3
 cmp al, 'o'
 je estrc3
 cmp al, 'u'
 je estrc3
 jne vnequal

estrc3:
 cmp ch,0h
 jne vnequal
 je vequal 

vequal:
 mov ax, 03h
 int 10h
 
 mov ah, 09h
 lea dx, prompt1
 int 21h
 jmp stop


vnequal:
 mov ax, 03h
 int 10h

 mov ah, 09h
 lea dx, prompt2
 int 21h
 jmp stop

stop:
 mov ax, 4c00h
 int 21h

main endp
end main
