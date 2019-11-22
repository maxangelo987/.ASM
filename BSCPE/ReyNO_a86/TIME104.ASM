.model small
.code

org 100h
jmp main 

first_bit	db	0
second_bit	db	0
third_bit	db  0
pasa		db 	?

p_0			db	'0','$'
p_1			db	'1','$'
p_2			db	'2','$'
p_3			db	'3','$'
p_4			db	'4','$'
p_5			db	'5','$'
p_6			db	'6','$'
p_7			db	'7','$'
p_8			db	'8','$'
p_9			db	'9','$'
p_30		db  ':','$' 


main proc near
	mov ax, 03h
	int 10h

a0:
		call access_time
		call time101
		call hide_cur
jmp a0
	


main endp
end main 
;--------------------
access_time proc near 
	call delay
	
	  ret
	 	
	
access_time endp

;--------------------	
time101 proc near
	
	inc first_bit
	
	cmp first_bit,10
	if e call inc_2ndbit
	
	call print101

	ret
		
time101 endp

inc_2ndbit proc near
	inc second_bit
	mov first_bit,0
	cmp second_bit,6
	if e call inc_3rdbit
	
	ret
inc_2ndbit endp	


inc_3rdbit proc near
	inc third_bit
	mov second_bit,0
	cmp third_bit,10
	if e call exit101
	
	ret
inc_3rdbit endp
;------------
;for printing:
;------------
print101 proc near
	mov ah, 02h
	mov dh, 00h
	mov dl, 00h
	mov bh, 00h
	int 10h

	mov pasa, 0
	call print_num
	
	mov ah, 02h
	mov dh, 00h 
	mov dl, 01h
	mov bh, 00h
	int 10h
	
	mov al, third_bit
	mov pasa, al
	call print_num
	
	mov ah, 02h
	mov dh, 00h
	mov dl, 02h
	mov bh, 00h
	int 10h

	mov pasa, 30
	call print_num
	
	mov ah, 02h
	mov dh, 00h 
	mov dl, 03h
	mov bh, 00h
	int 10h
	
	mov al, second_bit
	mov pasa, al
	call print_num
	
	mov ah, 02h
	mov dh, 00h 
	mov dl, 04h
	mov bh, 00h
	int 10h
	
	mov al, first_bit
	mov pasa, al
	call print_num

ret	
	
	
printing101 endp

;-------------------	
;for printing number:	
;-------------------
print_num  proc near 

	cmp pasa, 0
	je prnt_0
	cmp pasa, 1
	je prnt_1
	cmp pasa, 2
	je prnt_2
	cmp pasa, 3
	je prnt_3
	cmp pasa, 4
	je prnt_4
	cmp pasa, 5
	je prnt_5
	cmp pasa, 6
	je prnt_6
	cmp pasa, 7
	je prnt_7
	cmp pasa, 8
	je prnt_8
	cmp pasa, 9
	je prnt_9
	cmp pasa, 30
	je prnt_30


prnt_0:
	mov ah, 09h
	lea dx, p_0
	int 21h
	ret
prnt_1:
	mov ah, 09h
	lea dx, p_1
	int 21h
	ret
prnt_2:
	mov ah, 09h
	lea dx, p_2
	int 21h
	ret
prnt_3:
	mov ah, 09h
	lea dx, p_3
	int 21h
	ret
prnt_4:
	mov ah, 09h
	lea dx, p_4
	int 21h
	ret
prnt_5:	
	mov ah, 09h
	lea dx, p_5
	int 21h
	ret
prnt_6:	
	mov ah, 09h
	lea dx, p_6
	int 21h
	ret
prnt_7:
	mov ah, 09h
	lea dx, p_7
	int 21h
	ret
prnt_8:
	mov ah, 09h
	lea dx, p_8
	int 21h
	ret
prnt_9:
	mov ah, 09h
	lea dx, p_9
	int 21h
	ret
prnt_30:
	mov ah, 09h
	lea dx, p_30
	int 21h
	ret	

pasa endp

exit101 proc near
	mov ax, 4c00h
	int 21h
exit101 endp




delay proc near
        mov cx,1000

      delay_a10:
        push cx
        mov cx,65535
		
      delay_a20:
        loop delay_a20
        pop cx

        loop delay_a10

        ret
delay endp

hide_cur proc near:
        mov ah,3
        int 10h
        or ch,30h
        mov ah,1
        int 10h
	ret	
hide_cur endp

