; Activity 1, # 2: Create am Assembly Program that will input
;                 2 strings and out the longest

.model small
.code
org 100h
jmp begin

plist1 label byte            ; remember to in order pos plist-maxlen-actlen-kybd
maxlen1 db 13                ;
actlen1 db ?                 ;
kybd1 db 14 dup ('$')        ;


plist2 label byte            ; as long with this :x
maxlen2 db 13                ;
actlen2 db ?                 ;
kybd2 db 14 dup ('$')        ;




word1 db ' Enter String 1: '   ; word1 consist of Enter String define byte
      db '$'
word2 db ' Enter String 2: '
      db '$'
word3 db 'The Longest String: '
      db '$'  
sp1 db ' ',0ah,0dh
    db '$'

eq1 db 'Equal',0ah,0dh
    db '$'


begin: main proc near

mov ax, 03h ; clrscr
int 10h

mov ah, 09h    ; printing Enter String
lea dx, word1
int 21h


mov ah,0ah  ; scaning string 1
lea dx, plist1
int 21h


mov ah, 09h  ; print sp
lea dx, sp1
int 21h

mov ah, 09h    ; printing Enter String
lea dx, word2
int 21h


mov ah,0ah  ; scaning string 2
lea dx, plist2
int 21h


mov ah, 09h  ; print sp
lea dx, sp1
int 21h

mov bl, actlen1
mov cl, actlen2

mov ah, 09h
lea dx, word3
int 21h


cmp cl, bl
jg print1
jl print2
je print3


print1:
 mov ah, 09h
 lea dx, kybd2 
 int 21h
 jmp stop

print2:
 mov ah, 09h
 lea dx, kybd1
 int 21h
 jmp stop

print3:
 mov ah, 09h
 lea dx, eq1
 int 21h
 jmp stop

stop:
mov ax, 4c00h ; terminating
int 21h

main endp
end begin
