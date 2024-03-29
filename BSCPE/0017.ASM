.model small
.code
.data
org 100h
jmp main

word1 db 'Input1: $'
word2 db 'Input2: $'

plist1 label byte
maxlen1 db 31
actlen1 db ?
filename1 db 32 dup ('$')

plist2 label byte
maxlen2 db 31
actlen2 db ?
filename2 db 32 dup ('$')

eqq db '=','$'
neq db '!=','$'

str1 db 32 dup ('$')  ; user define

str11 db 32 dup ('$') ; user define
strlen11 db 00h
str12 db 32 dup ('$') ; 1st Filename
strlen12 db 00h
str13 db 32 dup ('$') ; 2nd Filename
strlen13 db 00h
prompt1 db 'STOP $'

ren1 db 'RENAMING PART $ '

ren21 db 'EQUAL $ '
ren22 db 'NOT EQUAL $ '


word11 db 'FILE NOT RENAMED $'
word22 db 'FILE SUCCESFULLY RENAMED $'

;_______________________________

main proc near
 mov ax, 03h
 int 10h

 mov ah, 09h
 lea dx, word1
 int 21h
 
 mov ah, 0ah
 lea dx, plist1
 int 21h

 call endl
 mov bx, 00h
 mov cl, actlen1 

loop1:
 mov al, filename1[bx]
 cmp al, ' '
 if e jmp here
 mov str1[bx], al 
 inc bx
 dec cl
 cmp cl, 00h
 if e jmp here
 jmp loop1


here:
 mov ah, 09h
 lea dx, str1
 int 21h

 call endl

 mov ah, 09h
 lea dx, word2
 int 21h
  
 mov ah, 0ah
 lea dx, plist2
 int 21h

 call endl
 
 mov bx, 00h
 mov cl, actlen2  
 mov bp, 00h
 inc cl


loop2:
 mov al, filename2[bx]
 cmp al, ' '
 if e jmp nxtproc1
 mov str11[bp], al 
 inc strlen11
 inc bx
 inc bp
 dec cl
 jmp loop2

nxtproc1:
 inc bx
 mov bp, 00h
 jmp loop3

loop3:
 mov al, filename2[bx]
 cmp al, ' '
 if e jmp nxtproc2
 mov str12[bp], al 
 inc strlen12
 inc bx
 inc bp

 dec cl
 jmp loop3

nxtproc2:
 inc bx
 mov bp, 00h
 jmp loop4

loop4:
 dec cl
 cmp cl, 00h
 if e jmp nxtproc3

 mov al, filename2[bx]
 mov str13[bp], al 
 inc strlen13 
 inc bx
 inc bp
 jmp loop4


nxtproc3:
 call endl
 mov ah, 09h
 lea dx, str11
 int 21h

 call endl
 mov ah, 09h
 lea dx, str12
 int 21h

 call endl
 mov ah, 09h
 lea dx, str13
 int 21h
 
compare:
 mov bx, 0
 mov bp, 0
 mov cl, strlen11 
 add cl, 2
loop5:
 dec cl
 cmp cl, 0
 if e jmp rename1
 mov al, str11[bx]
 mov ah, str1[bp]
 inc bx
 inc bp
 cmp ah, al 
 if e jmp loop5
 if ne jmp nrename1    
   


rename1: ; equal all 1st string, next is to rename
 call endl
 call endl 
 mov ah, 09h
 lea dx, str1
 int 21h

 mov ah, 09h
 lea dx, eqq
 int 21h

 mov ah, 09h
 lea dx, str11
 int 21h

 call endl
 mov ah, 09h
 lea dx, ren21
 int 21h

 call endl
 call endl 
 mov ah, 09h
 lea dx, ren1
 int 21h

 mov bl, strlen12
 mov str12[bx], 00h

 sub strlen13, 2
 mov bl, strlen13
 mov str13[bx], 00h



mov ah, 56h                 ; renaming
lea dx, str12
lea di, str13
int 21h
jc error11
jmp suc

error11: 
 call endl
 mov ah, 09h
 lea dx, word11
 int 21h
 jmp stop



suc:
 call endl
 mov ah, 09h
 lea dx, word22
 int 21h
 jmp stop 


nrename1:
 call endl
 
 call endl 
 mov ah, 09h
 lea dx, str1
 int 21h

 mov ah, 09h
 lea dx, neq
 int 21h

 mov ah, 09h
 lea dx, str11
 int 21h
  
 call endl
 mov ah, 09h
 lea dx, ren22
 int 21h
 jmp error11



stop:
 call endl
 
 mov ah, 09h
 lea dx, prompt1
 int 21h 
  
 mov ax, 4c00h
 int 21h 

main endp
end main


;_______________________________

;_______________________________



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

;_______________________________