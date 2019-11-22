.model small
.code
org 100h

jmp main

word1 db'STRING1: ','$'
word2 db'STRING2: ','$'
word3 db'STRING3: ','$'
word4 db 0ah,0dh,'$'
word5 db'Output: ','$'

max db ?
min db ?
mid db ?

plist1 label byte
maxlen1 db 20
actlen1 db ?
kybd1 db 21 dup('$'),'$'

plist2 label byte
maxlen2 db 20
actlen2 db ?
kybd2 db 21 dup('$'),'$'

plist3 label byte
maxlen3 db 20
actlen3 db ?
kybd3 db 21 dup('$'),'$'

final db 40 dup('$'),'$'

row1 db 3
col1 db 0

curse proc near
        mov ah,02h
        mov dh,row1
        mov dl,col1
        mov bh,00
        int 10h
        ret
        curse endp

newline proc near
	
	mov ah,09h
	lea dx,word4
	int 21h
	
	ret
newline endp

print1 proc near
	
	call curse
	mov al, actlen1
	add col1, al
	
	mov ah,09h
	lea dx,kybd1
	int 21h
	
	
	ret
print1 endp

print2 proc near

	call curse	
	mov al, actlen2
	add col1, al

	
	mov ah,09h
	lea dx,kybd2
	int 21h
	
	
	ret
print2 endp


print3 proc near
	
	call curse
	
	mov al, actlen3
	add col1, al

	mov ah,09h
	lea dx,kybd3
	int 21h

	
	ret
print3 endp

main proc near

mov ax,03h
int 10h

mov ah,09h
lea dx,word1
int 21h

mov ah,0ah
lea dx,plist1
int 21h
call newline

mov ah,09h
lea dx,word2
int 21h

mov ah,0ah
lea dx,plist2
int 21h
call newline

mov ah,09h
lea dx,word3
int 21h

mov ah,0ah
lea dx,plist3
int 21h
call process
call newline
call newline
call newline

int 20h

main endp
end main

process proc near
	mov al,actlen1
	mov max,al

	
	mov al,actlen2
	cmp al,max
	
	jge here1
	jmp here2

here1: ;find max
	mov al,actlen2
	mov max,al
	jmp here2
	
here2:
	mov al,actlen3
	cmp al,max
	jge here3
	jmp here4
	
here3:
	mov al,actlen3
	mov max,al
	
here4:	;find min
	mov al,actlen1
	mov min,al
	
	mov al,actlen2
	cmp al,min
	jle here5
	jmp here6
here5:
	mov al,actlen2
	mov min,al
	jmp here6

here6:
	mov al,actlen3
	cmp al,min
	jle here7
	jmp here8
here7:
	mov al,actlen3
	mov min,al

here8: ;find mid
	mov al,actlen1
	mov mid,al
	
	mov al,min
	cmp al,actlen2
	if ne jmp here9
	jmp here10

here9:
	mov al,max
	cmp al,actlen2
	if ne jmp here11
	jmp here10
	
here11:
	mov al,actlen2
	mov mid,al
	jmp here10

here10:
	mov al,min
	cmp al,actlen3
	if ne jmp here12
	jmp here13
	
here12:
	mov al,max
	cmp al,actlen3
	if ne jmp here14
	jmp here13
	
here14:
	mov al,actlen3
	mov mid,al
	
here13:;if (min!=mid&&max!=mid&&min!=max)
	mov al,min
	cmp al,mid
	if ne jmp here15
	jmp here16
here15:
	mov al,max
	cmp al,mid
	if ne jmp here17
	jmp here16
here17:
	mov al,min
	cmp al,max
	if ne jmp here18
	jmp here16
here18:;printing min
	mov al,min
	cmp al,actlen1
	if e jmp here19
	jmp here20
here19:
	call print1
	jmp here20
here20:
	mov al,min
	cmp al,actlen2
	if e jmp here21
	jmp here22
here21:
	call print2
	jmp here22
here22:
	mov al,min
	cmp al,actlen3
	if e jmp here23
	jmp here24
here23:
	call print3
	jmp here24
here24:;printing mid
	
	mov al,mid
	cmp al,actlen1
	if e jmp here25
	jmp here26
here25:
	call print1
	jmp here26
here26:
	mov al,mid
	cmp al,actlen2
	if e jmp here27
	jmp here28
here27:
	call print2
	jmp here28
here28:
	mov al,mid
	cmp al,actlen3
	if e jmp here29
	jmp here30
here29:
	call print3
	jmp here30
here30:;printing max
	mov al,max
	cmp al,actlen1
	if e jmp here31
	jmp here32
here31:
	call print1
	jmp here32
here32:
	mov al,max
	cmp al,actlen2
	if e jmp here33
	jmp here34
here33:
	call print2
	jmp here34
here34:
	mov al,max
	cmp al,actlen3
	if e jmp here35
	jmp here16
here35:
	call print3
	jmp here16
	
here16: ;if equal tanan
		mov al,min
		cmp al,mid
		if e jmp here36
		jmp here37
here36:
	mov al,max
	cmp al,mid
	if e jmp here38
    jmp here48
here38:
	call print1
	call print2
	call print3
	jmp here48

here37:;if(x1==x2)
	mov al,actlen1
	cmp al,actlen2
	if e jmp here39
	jmp here40
	
here39:
	mov al,min
	cmp al,actlen1
	if e jmp here41
	jmp here42
here41:
	call print1
	call print2
	call print3
	jmp here40
here42:
	call print3
	call print2
	call print1
	jmp here40

	
here40:;if(x2==x3)
	mov al,actlen2
	cmp al,actlen3
	if e jmp here43
	jmp here44
here43:
	mov al,min
	cmp al,actlen2
	if e jmp here45
	jmp here46
here45:
	call print2
	call print3
	call print1
	jmp here44
here46:
	call print1
	call print2
	call print3
	jmp here44

here44:;if (x1==x3)
	mov al,actlen1
	cmp al,actlen3
	if e jmp here47
	jmp here48
here47:
	mov al,min
	cmp al,actlen1
	if e jmp here49
	jmp here50
here49:
	call print1
	call print3
	call print2
	jmp here48
here50:
	call print2
	call print1
	call print3
	jmp here48
	
	
	
here48:	
ret