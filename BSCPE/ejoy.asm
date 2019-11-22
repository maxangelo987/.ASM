.model small
.code
org 100h


base1 dw ?
base2 dw ?

kuha db 60

jmp main

main proc near

mov ax, 03h
int 10h

loopx:

mov ch, 2
mov cl, 10
mov dl, kuha
mov dh, 2
mov bh, 0c0h
call scroll
jmp anix

anix:
call ask
cmp al,'a'
if e jmp ani
if ne jmp anix

ani:
	dec kuha, 5
	cmp dl, 10
	if e jmp stop
	if ne jmp loopx




main endp
end main


er897rprint proc near
	mov ah, 09h
	int 21h
ret
print endp
cursor proc near
	mov ah, 02h
	mov bh, 00h
	int 10h
ret
cursor endp
scroll proc near
	mov ax, 0600h
	int 10h
ret
scroll endp

ask proc near
	mov ah, 07h
	int 21h
ret
ask endp
stop proc near

mov ax, 4c00h
int 21h
ret
stop endp
delay proc near

mov base2, 800

loop1:
mov base1, 0ffffh

loop2:
nop

dec base1 
jnz loop2

dec base2
jnz loop1


ret
delay endp