.model small
.code
org 100h

jmp main 
second db 0
;**********************************
;----------------------------------
; FOR THE BIG TIMER !
;----------------------------------
;**********************************
p0_1    db      "лллл",'$'
p0_2    db      "л  л",'$'
p0_3    db      "л  л",'$'
p0_4    db      "л  л",'$'
p0_5    db      "лллл",'$'

p1_1    db      "   л",'$'
p1_2    db      "  лл",'$'
p1_3    db      "   л",'$'
p1_4    db      "   л",'$'
p1_5    db      "   л",'$'

p2_1    db      "лллл",'$'
p2_2    db      "   л",'$'
p2_3    db      "лллл",'$'
p2_4    db      "л   ",'$'
p2_5    db      "лллл",'$'

p3_1    db      "лллл",'$'
p3_2    db      "   л",'$'
p3_3    db      " ллл",'$'
p3_4    db      "   л",'$'
p3_5    db      "лллл",'$'

p4_1    db      "л  л",'$'
p4_2    db      "л  л",'$'
p4_3    db      "лллл",'$'
p4_4    db      "   л",'$'
p4_5    db      "   л",'$'

p5_1    db      "лллл",'$'
p5_2    db      "л   ",'$'
p5_3    db      "лллл",'$'
p5_4    db      "   л",'$'
p5_5    db      "лллл",'$'

p6_1    db      "лллл",'$'
p6_2    db      "л   ",'$'
p6_3    db      "лллл",'$'
p6_4    db      "л  л",'$'
p6_5    db      "лллл",'$'


p7_1    db      "лллл",'$'
p7_2    db      "   л",'$'
p7_3    db      "  л ",'$'
p7_4    db      " л  ",'$'
p7_5    db      " л  ",'$'

p8_1    db      "лллл",'$'
p8_2    db      "л  л",'$'
p8_3    db      "лллл",'$'
p8_4    db      "л  л",'$'        
p8_5    db      "лллл",'$'

p9_1    db      "лллл",'$'
p9_2    db      "л  л",'$'
p9_3    db      "лллл",'$'
p9_4    db      "   л",'$'
p9_5    db      "лллл",'$'

p30_1   db      "    ",'$'
p30_2   db      " л  ",'$'
p30_3   db      "    ",'$'
p30_4   db      " л  ",'$'
p30_5   db      "    ",'$'

big_1d	db	0
big_2d	db  0
big_3d	db	0
big_pasa db ?
;---------------------------------


;**************************************
;--------------------------------------
; FOR THE SMALL DISPLAY OF TIME SUMMARY	
;--------------------------------------
;**************************************

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

one			db 	'1.','$'
two			db 	'2.','$'
three		db 	'3.','$'


small_1d1	db 	0
small_2d1	db 	0
small_3d1	db	0

small_1d2	db 	0
small_2d2	db 	0
small_3d2	db	0

small_1d3	db 	0
small_2d3	db 	0
small_3d3	db	0

small_pasa	db 	?

;--------------------------

x	db 	?
y	db 	?

;--------------------------

ask		db 	 'You want to reset the timer? (y/n) : ','$'

main proc near
	mov ax, 03h
	int 10h
	call reset_display	
	call timer_process
	call exit101
	
main endp
end main

timer_process proc near
	
;	    mov ah,0bh			;assuming that 5v has detected for the timer 1
;       int 21h
;	    mov ah,07h
;	    int 21h
   
  	
p23:    
	mov dx, 0379h
	in al, dx
	cmp al, 119
    jne	p23 
	
	;call delay_no
	;call delay_no
	
	call timer_one
		
	mov al, big_1d
	mov small_1d1,al
	mov al, big_2d
	mov small_2d1,al
	mov al, big_3d
	mov small_3d1,al
	
	call reset_display	
	call time1_small
	
		mov ah,0bh			;waiting for the car to set up.
        int 21h
        mov ah,07h
        int 21h	
p24:    
	mov dx, 0379h
	in al, dx
	cmp al, 119
    jne	p24 
	
	call timer_two
		
	mov al, big_1d
	mov small_1d2,al 	
	mov al, big_2d
	mov small_2d2,al
	mov al, big_3d
	mov small_3d2,al
	
	call reset_display	
	call time1_small
	call time2_small

		mov ah,0bh			;assuming that 5v has detected for the timer 2
        int 21h
        mov ah,07h
        int 21h	
p25:    
	mov dx, 0379h
	in al, dx
	cmp al, 119
    jne	p25 
	
	call timer_three
	
	mov al, big_1d
	mov small_1d3,al 	
	mov al, big_2d
	mov small_2d3,al
	mov al, big_3d
	mov small_3d3,al
	
	call reset_display	
	call time1_small
	call time2_small
	call time3_small
	ret
timer_process endp
;------------------------------
time3_small proc near

	mov y, 20
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, three
	int 21h
	
	mov y, 25
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 26
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 27
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h
	
	mov y, 28
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 29
	mov x, 9
	
	mov al, small_3d3  
	mov small_pasa,al
	call gotoxy
	call print_small
	
	mov y,30
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h	

	mov y, 31
	mov x, 9
	
	mov al, small_2d3  
	mov small_pasa,al
	call gotoxy
	call print_small
	
	mov y, 32
	mov x, 9
	
	mov al, small_1d3  
	mov small_pasa,al
	call gotoxy
	call print_small	
		
	ret	
time3_small endp
;------------------------------
timer_three proc near
	mov second,0
	a0:
		call delay
		call time101
		call hide_cur
		cmp second,10
		jne a0
	
		mov dx,0379h
		in al,dx
	
		cmp al,119
		jne a0
;		mov ah,0bh			;assuming that we are waiting for the 5v
;        int 21h
;        cmp al,00
;        je a0

;        mov ah,07h
;        int 21h
;		cmp al, 00h
;		je a0
		
		ret	

timer_three endp
;-----------------------------
time2_small	proc near

	mov y, 20
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, two
	int 21h
	
	mov y, 25
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 26
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 27
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h
	
	mov y, 28
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 29
	mov x, 8
	
	mov al, small_3d2  
	mov small_pasa,al
	call gotoxy
	call print_small
	
	mov y,30
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h	

	mov y, 31
	mov x, 8
	
	mov al, small_2d2  
	mov small_pasa,al
	call gotoxy
	call print_small
	
	mov y, 32
	mov x, 8
	
	mov al, small_1d2  
	mov small_pasa,al
	call gotoxy
	call print_small	
		
	ret

time2_small	endp
;------------------------------
timer_two proc near
	mov second,0
	a0:
		call delay
		call time101
		call hide_cur
		cmp second,10
		jne a0
	
		mov dx,0379h
		in al,dx
	
		cmp al,119
		jne a0		
;		mov ah,0bh			;assuming that we are waiting for the 5v
;        int 21h
;        cmp al,00
;        je a0

;        mov ah,07h
;        int 21h
;		cmp al, 00h
;		je a0
		
		ret	

timer_two endp
;-------------------------------
time1_small proc near

	mov y, 20
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, one
	int 21h
	
	mov y, 25
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 26
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 27
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h
	
	mov y, 28
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 29
	mov x, 7
	
	mov al, small_3d1  
	mov small_pasa,al
	call gotoxy
	call print_small
	
	mov y,30
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h	

	mov y, 31
	mov x, 7
	
	mov al, small_2d1  
	mov small_pasa,al
	call gotoxy
	call print_small
	
	mov y, 32
	mov x, 7
	
	mov al, small_1d1  
	mov small_pasa,al
	call gotoxy
	call print_small	
	
	
	ret
	
time1_small	endp
;--------------------------
print_small proc near
	cmp small_pasa, 0
	je e0
	cmp small_pasa, 1
	je e1
	cmp small_pasa, 2
	je e2
	cmp small_pasa, 3
	je e3
	cmp small_pasa, 4
	je e4
	cmp small_pasa, 5
	je e5
	cmp small_pasa, 6
	je e6
	cmp small_pasa, 7
	je e7
	cmp small_pasa, 8
	je e8
	cmp small_pasa, 9
	je e9
	
e0:
	mov ah, 09h
	lea dx, p_0
	int 21h
	ret
e1:
	mov ah, 09h
	lea dx, p_1
	int 21h
	ret
e2:
	mov ah, 09h
	lea dx, p_2
	int 21h
	ret
e3:
	mov ah, 09h
	lea dx, p_3
	int 21h
	ret
e4:
	mov ah, 09h
	lea dx, p_4
	int 21h
	ret
e5:
	mov ah, 09h
	lea dx, p_5
	int 21h
	ret
e6:
	mov ah, 09h
	lea dx, p_6
	int 21h
	ret
e7:
	mov ah, 09h
	lea dx, p_7
	int 21h
	ret
e8:
	mov ah, 09h
	lea dx, p_8
	int 21h
	ret
e9:
	mov ah, 09h
	lea dx, p_9
	int 21h
	ret

print_small endp	
	
;--------------------------------
;TIMER FOR NUMBER ONE WILL START!
;--------------------------------
timer_one proc near
	mov second,0
a0:
	call delay
	call time101
	call hide_cur

	cmp second,10
	jne a0
	
	mov dx,0379h
	in al,dx
	
	cmp al,119
	jne a0

;		mov ah,0bh			;waiting for the car to return to the starting line.
;       int 21h
;      cmp al,00
;        je a0
;
;        mov ah,07h
;        int 21h
;		cmp al, 00h
;		je a0	
		
	ret
		
timer_one endp
;------------------
time101 proc near
	inc big_1d
	cmp big_1d,10
	jne a1
	mov second,10
a1:	
	cmp big_1d,10
	if e call inc_2ndbig
	
	call print101
	ret
time101 endp
;------------------
inc_2ndbig proc near
	
	mov big_1d,0
	inc big_2d
	cmp big_2d,6
	if e call inc_3rdbig
	ret
inc_2ndbig endp
;-------------------
inc_3rdbig proc near
	mov big_2d,0
	inc big_3d
	cmp big_3d,10 
	if e call main
	ret
inc_3rdbig endp

;-------------------------------
;PRINT THE TIMER VALUE
;-------------------------------
print101 proc near
;--------------------------
;for 6th bit
;--------------------------		
		mov y, 12
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 12
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 12
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 12
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 12
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h	
;--------------------------
;for 5th bit
;--------------------------
		mov y, 17
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 17
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 17
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 17
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 17
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h	
;-----------------------------	
;for the separator
;-----------------------------
		mov y, 22
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_1
		int 21h
		
		mov y, 22
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_2
		int 21h
		
		mov y, 22
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_3
		int 21h		

		mov y, 22
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_4
		int 21h		
	
		mov y, 22
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_5
		int 21h	
;---------------------------
;for 4th bit
;---------------------------
		mov y, 27
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 27
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 27
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 27
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 27
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
;-----------------------------
;for third bit
;-----------------------------
		mov al, big_3d
		mov big_pasa,al
		
		call printer_3d
;-----------------------------
;for separator
;-----------------------------		
		mov y, 37
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_1
		int 21h
		
		mov y, 37
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_2
		int 21h
		
		mov y, 37
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_3
		int 21h		

		mov y, 37
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_4
		int 21h	
;---------------------------
;for second bit
;---------------------------
	mov al, big_2d
	mov big_pasa,al
	call printer_2d
	
;-----------------------------
; for 1st bit
;-----------------------------	
	mov al, big_1d
	mov big_pasa,al
	call printer_1d
	
	ret
print101 endp	
;-----------------------------
;*****************************
printer_1d proc near
	cmp big_pasa,0
	je d0
	cmp big_pasa,1
	je d11
	cmp big_pasa,2
	je d21
	cmp big_pasa,3
	je d31
	cmp big_pasa,4
	je d41
	cmp big_pasa,5
	je d51
	cmp big_pasa,6
	je d61
	cmp big_pasa,7
	je d71
	cmp big_pasa,8
	je d81
	cmp big_pasa,9
	je d91	
d11:
	jmp d1
d21:
	jmp d22
d31:
	jmp d32
d41:
	jmp d42
d51:
	jmp d52
d61:
	jmp d62
d71:
	jmp d72
d81:
	jmp d82
d91:
	jmp d92
d0:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
		ret
d92:		
	jmp  d93
d82:
	jmp d83
d72:
	jmp d73
d62:
	jmp d63
d52:
	jmp d53
d42:
	jmp d43
d32:
	jmp d33
d22:
	jmp d2
d1:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_5
		int 21h
		ret
d93:
	jmp d94
d83:
	jmp d84
d73:
	jmp d74
d63:
	jmp d64
d53:
	jmp d54
d43:
	jmp d44
d33:
	jmp d3
d2:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_5
		int 21h
		ret
d94:
	jmp d95
d84:
	jmp d85
d74:
	jmp d75	
d64:
	jmp d65
d54:
	jmp d55
d44:
	jmp d4
d3:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_5
		int 21h
		ret
d95:
	jmp d96
d85:
	jmp d86
d75:
	jmp d76
d65:
	jmp d66
d55:
	jmp d5
d4:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_5
		int 21h
		ret
d96:
	jmp d97
d86:
	jmp d87
d76:
	jmp d77
d66:	
	jmp d6
d5:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_5
		int 21h
		ret
d97:
	jmp d98
d87:
	jmp d88
d77:
	jmp d7
d6:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_5
		int 21h
		ret
d98:
	jmp d99
d88:
	jmp d8
d7:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_5
		int 21h
		ret
d99:	
	jmp d9
d8:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_5
		int 21h
		ret
d9:
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_5
		int 21h
		ret

printer_1d  endp
;------------------------------
printer_2d proc near
	cmp big_pasa,0
	je c0
	cmp big_pasa,1
	je c11
	cmp big_pasa,2
	je c21
	cmp big_pasa,3
	je c31
	cmp big_pasa,4
	je c41
	cmp big_pasa,5
	je c51
	cmp big_pasa,6
	je c61
	cmp big_pasa,7
	je c71
	cmp big_pasa,8
	je c81
	cmp big_pasa,9
	je c91
	
c51:
	jmp c52
c41:
	jmp c42
c31:
	jmp c32
c21:
	jmp c22
c11:
	jmp c1
c61:
	jmp c62
c71:	
	jmp c72
c81:
	jmp c82
c91:
	jmp c92
c0:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
		ret
c92:
	jmp c93
c82:
	jmp c83
c72:
	jmp c73
c62:
	jmp c63
c52:
	jmp c53
c42:
	jmp c43
c32:
	jmp c33
c22:
	jmp c2
c1:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_5
		int 21h
		ret
c93:
	jmp c94
c83:
	jmp c84
c73:
	jmp c74
c63:
	jmp c64
c53:
	jmp c54
c43:
	jmp c44
c33:
	jmp c3
c2:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_5
		int 21h
		ret
c94:
	jmp c95
c84:
	jmp c85
c74:
	jmp c75
c64:
	jmp c65
c54:	
	jmp c55
c44:
	jmp c4
c3:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_5
		int 21h
		ret
c95:
	jmp c96
c85:
	jmp c86
c75:
	jmp c76
c65:
	jmp c66
c55:
	jmp c5
c4:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_5
		int 21h
		ret
c96:
	jmp c97
c86:
	jmp c87
c76:
	jmp c77
c66:
	jmp c6
c5:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_5
		int 21h
		ret
c97:
	jmp c98
c87:
	jmp c88
c77:
	jmp c7
c6:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_5
		int 21h
		ret
c98:
	jmp c99
c88:	
	jmp c8
c7:
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_5
		int 21h
		ret
c99:
	jmp c9
c8:	
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_5
		int 21h
		ret
c9:	
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_5
		int 21h
		ret

printer_2d endp	
;--------------------------
printer_3d proc near
	cmp big_pasa,0
	je b0
	cmp big_pasa,1
	je b11
	cmp big_pasa,2
	je b22
	cmp big_pasa,3
	je b33
	cmp big_pasa,4
	je b44
	cmp big_pasa,5
	je b51
	cmp big_pasa,6
	je b61
	cmp big_pasa,7
	je b71
	cmp big_pasa,8
	je b81
	cmp big_pasa,9
	je b91

b51:
	jmp b52
b44:
	jmp b4444
b33:
	jmp b333
b11:
	jmp b1
b22:
	jmp b222
b61:
	jmp b62
b71:
	jmp b72
b81:
	jmp b82
b91:
	jmp b92
b0:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
		
		ret
b92:
	jmp b93
b82: 	
	jmp b83
b72:
	jmp b73
b52:
	jmp b53
b4444:
	jmp b44444
b333:
	jmp b3333
b222:
	jmp b2
b62:
	jmp b63
b1:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p1_5
		int 21h
		ret
b93:
	jmp b94
b83:
	jmp b84
b73:
	jmp b74
b53:
	jmp b54
b44444:
	jmp b444444
b3333:
	jmp b3
b63:
	jmp b64
b2:	
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p2_5
		int 21h
		ret
b94:
	jmp b95
b84:
	jmp b85
b74:
	jmp b75
b54:
	jmp b55		
b444444:
	jmp b4
b64:
	jmp b65
b3:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p3_5
		int 21h
		ret
b95:
	jmp b96
b85:
	jmp b86
b75:
	jmp b76
b65:
	jmp b66
b55:
	jmp b5
b4:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p4_5
		int 21h
		ret	
b96:
	jmp b97
b86:
	jmp b87
b76:
	jmp b77
b66:
	jmp b6
b5:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p5_5
		int 21h
		ret
b97:
	jmp b98
b87:
	jmp b88
b77:
	jmp b7
b6:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p6_5
		int 21h
		ret
b98:
	jmp b99
b88:
	jmp b8
b7:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p7_5
		int 21h
		ret
b99:
	jmp b9
b8:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p8_5
		int 21h
		ret
b9:
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p9_5
		int 21h
		ret
	
printer_3d endp
;-------------------------------
;RESET THE VALUE OF THE CLOCK!
;-------------------------------
reset_display proc near
	mov big_1d,0
	mov big_2d,0
	mov big_3d,0
;--------------------------
;for 6th bit
;--------------------------		
		mov y, 12
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 12
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 12
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 12
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 12
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h	
;--------------------------
;for 5th bit
;--------------------------
		mov y, 17
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 17
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 17
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 17
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 17
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h	
;-----------------------------	
;for the separator
;-----------------------------
		mov y, 22
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_1
		int 21h
		
		mov y, 22
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_2
		int 21h
		
		mov y, 22
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_3
		int 21h		

		mov y, 22
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_4
		int 21h		
	
		mov y, 22
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_5
		int 21h	
;---------------------------
;for 4th bit
;---------------------------
		mov y, 27
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 27
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 27
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 27
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 27
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
;-----------------------------			
;for 3rd bit
;-----------------------------
		mov y, 32
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 32
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 32
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 32
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 32
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
;-------------------------------
; for separator
;-------------------------------
		mov y, 37
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_1
		int 21h
		
		mov y, 37
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_2
		int 21h
		
		mov y, 37
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_3
		int 21h		

		mov y, 37
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p30_4
		int 21h				
;-------------------------------	
;for the 2nd bit
;-------------------------------
		mov y, 42
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 42
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 42
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 42
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 42
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
;------------------------------	
;for 1st bit
;------------------------------
		mov y, 47
		mov x, 1
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_1
		int 21h
		
		mov y, 47
		mov x, 2
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_2
		int 21h
		
		mov y, 47
		mov x, 3
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_3
		int 21h		

		mov y, 47
		mov x, 4
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_4
		int 21h		
	
		mov y, 47
		mov x, 5
		call gotoxy
		
		mov ah, 09h
		lea dx, p0_5
		int 21h
;--------------------------------
;for the time laps
;--------------------------------

;***** number 1 *******;
	mov y, 20
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, one
	int 21h
	
	mov y, 25
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 26
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 27
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h
	
	mov y, 28
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	
	
	mov y, 29
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	

	mov y, 30
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h

	mov y, 31
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h

	mov y, 32
	mov x, 7
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	

;********* number 2 ***************;	
	mov y, 20
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, two
	int 21h
	
	mov y, 25
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 26
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 27
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h
	
	mov y, 28
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	
	
	mov y, 29
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	

	mov y, 30
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h

	mov y, 31
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h

	mov y, 32
	mov x, 8
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	
;****** number 3 *******;

	mov y, 20
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, three
	int 21h
	
	mov y, 25
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 26
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
	
	mov y, 27
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h
	
	mov y, 28
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	
	
	mov y, 29
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h	

	mov y, 30
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_30
	int 21h

	mov y, 31
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h

	mov y, 32
	mov x, 9
	call gotoxy
	
	mov ah, 09h
	lea dx, p_0
	int 21h
;-----------------------------
	ret
reset_display endp
;-----------------------------
;END OF RESET TIME DISPLAY
;-----------------------------

gotoxy proc near

		mov ah, 02h
		mov dh, x
		mov dl, y
		mov bh, 00h
		int 10h
		
		ret
gotoxy endp

delay proc near

        mov cx,8000

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

exit101  proc near

reset_val:
	mov small_1d1,0
	mov small_2d1,0
	mov small_3d1,0

	mov small_1d2,0
	mov small_2d2,0
	mov small_3d2,0

	mov small_1d3,0
	mov small_2d3,0
	mov small_3d3,0
ask101:
	mov y, 1
	mov x, 12
	
	call gotoxy
	
	mov ah, 09h
	lea dx, ask
	int 21h
	
	mov ah,0bh	
    int 21h
    mov ah,07h
    int 21h	

	cmp al, 'y'
	if e call main
	cmp al, 'Y'
	if e call main
	
	mov ax, 4c00h
	int 21h
	
exit101 endp

delay_no proc near
    push cx
    mov cx,0ffffh
 l2:
    mov bx,018ffh
 l1:
    nop
    nop
    dec bx
    cmp bx,0h
    jne l1

    dec cx
    cmp cx,0h
    jne l2
    pop cx
        ret
delay_no endp
