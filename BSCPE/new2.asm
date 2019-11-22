



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
	
	cmp al, 219
	if ne jmp lihok tanan
	
	
	