.model small
.code
org 100h
jmp main

ins1 db 'Filename to rename: ','$'

plist1 label byte
maxlen1 db 30
actlen1 db ?
kybd1 db 31 dup ('$')

ins2 db 'Enter new filename: ','$'

plist2 label byte
maxlen2 db 30
actlen2 db ?
kybd2 db 31 dup ('$')

f2 db 'C:/exam.exe',00

err db 'UNSUCCESSFUL','$'
ok db 'SUCCESSFUl','$'


main proc near
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ins1
	int 21h

	mov ah, 0ah
	lea dx, plist1
	int 21h

	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ins2
	int 21h

	mov ah, 0ah
	lea dx, plist2
	int 21h

	mov ch, 00
	mov cl, actlen1
	mov bx, cx
	mov kybd1[bx],0

	mov ch, 00
	mov cl, actlen2
	mov bp, cx
	mov kybd2[bp],0

	mov ah, 56h
	lea dx, kybd1
	lea di, kybd2
	int 21h

	jnc oks
	jc error


oks:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, ok
	int 21h
	jmp exit


error:
	cmp ax, 1
	jg guba
	jmp exit
guba:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, err
	int 21h
	jmp exit	

exit:
	int 20h
main endp 
end main