.model small
.code 
org 100h
jmp main

col db 00
string1 db 'Hello! ','$'
string2 db 'Hello not!','$'
main proc near

mov ax, 03h
int 10h

mov ah, 07h
int 21h

cmp al, 'd'
jne checkcapd
je moveright
checkcapd:
	cmp al, 'D'
	jne exit
	je moveright

moveright:
	inc col
	mov ah, 02h
	mov bh, 00h
	mov dh, 12
	mov dl, col
	int 10h
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al,  219
	if e jmp print
	if ne jmp print1
print:
	mov ah, 09h
	lea dx, string1
	int 21h
	jmp exit
	
print1:
	mov ah, 09h
	lea dx, string2
	int 21h
	jmp exit
	
	
	
	
exit:
int 20h
main endp
end main
