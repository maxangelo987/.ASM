.model small
.code
org 100h
jmp main

ins1 db 'Filename to delete: ','$'

plist1 label byte
maxlen1 db 30
actlen1 db ?
kybd1 db 31 dup ('$')

err db 'UNSUCCESSFUL','$'
ok db 'SUCCESSFUl','$'
ins3 db 'File not found','$'
ins4 db 'Access Denied','$'
main proc near
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ins1
	int 21h

	mov ah, 0ah
	lea dx, plist1
	int 21h

	mov ch, 00
	mov cl, actlen1
	mov bx, cx
	mov kybd1[bx],0

	mov ah, 41h
	lea dx, kybd1
	int 21h
	jc error
	jnc oks
error:
	cmp al, 2
	je nf
	cmp al, 5
	je ad
        jne oks
  nf:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ins3
	int 21h
	jmp exit
  ad:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ins4
	int 21h
	jmp exit
oks:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ok
	int 21h
	jmp exit

exit:
	int 20h
main endp
end main
