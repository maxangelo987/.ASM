.model small
.code
.data
org 100h
jmp main

counter db 00
counter1 db 00

word1 db 'Enter Paragraph: ','$'

plist1 label byte
maxlen1 db 100
actlen1 db ?
kybd1 db 101 dup ('$')

new1 db 50 dup ('$')
new2 db 50 dup ('$')

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

mov ah, 09h
lea dx, kybd1
int 21h

mov bl, actlen1
dec bl

loop1:
mov al, counter

cmp al, 2
if e jmp loop2

mov al, kybd1[bx]

cmp al, '.'
if e jmp count1

cmp al, '!'
if e jmp count1

cmp al, '?'
if e jmp count1

dec bx
jmp loop1

count1:
inc counter
dec bx
jmp loop1



loop2:
mov bp, 00h
inc bx
mov al, kybd1[bx]
mov new1[bp], al
inc bp
dec bx
jmp loop22

loop22:
mov al, kybd1[bx]
mov new1[bp], al

mov al, kybd1[bx]

cmp al, '.'
if e jmp print1

cmp al, '!'
if e jmp print1

cmp al, '?'
if e jmp print1
dec bx
inc bp
inc counter1
jmp loop22

print1:
call endl

mov ah, 09h
lea dx, new1
int 21h

mov bl, counter1
dec bl
mov bp, 00h

mov ch, bl
add ch, 2


loop3:

dec ch
cmp ch, 00h
if e jmp print2

mov al, new1[bx]
mov new2[bp], al

inc bp
dec bx

jmp loop3






print2:
call endl

mov ah, 09h
lea dx, new2
int 21h




stop:
mov ax, 4c00h
int 21h





main endp
end main
;____________________

;____________________
endl proc near

mov ah, 02h
mov dl, 10
int 21h

mov ah, 02h
mov dl, 13
int 21h


ret
;____________________
