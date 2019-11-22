.model small
.code
org 100h
jmp main

word1 db 'BISU-Main Campus','$'

row1 db ?
col1 db ?

main proc near
mov ax, 03h
int 10h

inp1:
mov ah,0bh  ;read key without echo
int 21h
mov ah,07h
int 21h

cmp al, '1'
if e jmp proc1
cmp al, '2'
if e jmp proc2
cmp al, '3'
if e jmp proc3
cmp al, '4'
if e jmp proc4
cmp al, 'e'
if e jmp exit1
jmp inp1

proc1:
mov ax, 03h
int 10h

mov ah,06h                      ;set color background 
mov al,00h
mov ch,00
mov cl,00
mov dh,12
mov dl,38
mov bh,70h

int 10h
jmp inp1

proc2:
mov ax, 03h
int 10h

mov ah,06h                      ;set color background 
mov al,00h
mov ch,00
mov cl,39
mov dh,12
mov dl,79
mov bh,70h
int 10h
		
jmp inp1

proc3:
mov ax, 03h
int 10h

mov ah,06h                      ;set color background 
mov al,00h
mov ch,13
mov cl,39
mov dh,24
mov dl,79
mov bh,70h
int 10h
		
jmp inp1

proc4:
mov ax, 03h
int 10h

mov ah,06h                      ;set color background 
mov al,00h
mov ch,13
mov cl,00
mov dh,24
mov dl,38
mov bh,70h
int 10h
jmp inp1

exit1:
int 20h

cursor1 proc near
mov ah,02h
mov dh,row1
mov dl,col1
mov bh,00
int 10h
ret
cursor1 endp

moving1 proc near
lea row1, 7
lea col1, 34
call cursor1


 mov ah, 09h		; 
 lea dx, word1		; print word1="BISU-Main"
 int 21h	

mov ah,0bh  ;read key without echo
int 21h
mov ah,07h
int 21h

;cmp al, 'w'
;if e jmp proc5
;cmp al, 's'
;if e jmp proc6




 
