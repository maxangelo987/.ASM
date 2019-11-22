.model small
.code
org 100h
jmp level2


mode db 00

string1 db 'KING','$' ; HORIZONTAL

string1a db '1','$'
string2a db '2','$'
string3a db '3','$'
string4a db '4','$'
string5a db '5','$'
string6a db '6','$'
string7a db '7','$'
string8a db '8','$'
string9a db '9','$'

color1 db 4ch ; RED
color2 db 40h
color3 db 00

color1a db 9ch
color2a db 90h
color3a db 00

color1b db 8ch
color2b db 80h
color3b db 00

color1c db 7ch
color2c db 70h
color3c db 00

color1d db 6ch
color2d db 60h
color3d db 00

color1e db 5ch
color2e db 50h
color3e db 00

color1f db 3ch
color2f db 30h
color3f db 00 

color1g db 2ch
color2g db 20h
color3g db 00 

color1h db 1ch
color2h db 10h
color3h db 00 


color1i db 2ch
color2i db 20h
color3i db 00



;______________ VERTICAL

col0a db 13   ; RED BLOCK FOR STRING1
rnum1a db 16 ; RED BLOCK COLUMN START
rnum2a db 25 ; RED BLOCK COLUMN FIN

col1a db 18   ; FIRST BLOCK FOR STRING2
fnum1a db 13 ; FIRST BLOCK COLUMN START
fnum2a db 21 ; FIRST BLOCK COLUMN FIN

col2a db 10   ; SECOND BLOCK FOR STRING2
snum1a db 07 ; SECOND BLOCK COLUMN START
snum2a db 12 ; SECOND BLOCK COLUMN FIN

col3a db 10   ; THIRD BLOCK FOR STRING2
tnum1a db 07 ; THIRD BLOCK COLUMN START
tnum2a db 12 ; THIRD BLOCK COLUMN FIN

col4a db 19   ; FOURTH BLOCK FOR STRING2
fonum1a db 16 ; FOURTH BLOCK COLUMN START
fonum2a db 21 ; FOURTH BLOCK COLUMN FIN


col5a db 12   ; FIFTH BLOCK FOR STRING2
finum1a db 07 ; FIFTH BLOCK COLUMN START
finum2a db 15 ; FIFTH BLOCK COLUMN FIN

;______________ HORIZONTAL

col6a db 19   ; SIXTH BLOCK FOR STRING1
sinum1a db 21 ; SIXTH BLOCK COLUMN START
sinum2a db 30 ; SIXTH BLOCK COLUMN FIN

col7a db 29   ; SEVENTH BLOCK FOR STRING1
senum1a db 31 ; SEVENTH BLOCK COLUMN START
senum2a db 40 ; SEVENTH BLOCK COLUMN FIN

col8a db 29   ; EIGHT BLOCK FOR STRING1
einum1a db 31 ; EIGHT BLOCK COLUMN START
einum2a db 40 ; EIGHT BLOCK COLUMN FIN

col9a db 24   ; NINE BLOCK FOR STRING1
ninum1a db 26 ; NINE BLOCK COLUMN START
ninum2a db 35 ; NINE BLOCK COLUMN FIN

map1a 	db   '                                                                          ',0ah,0dh
	db   '         ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²         		        ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²  ²²²²²²²²²²²²²²²²²²²²²²²²²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ÛÛ²  ²    UNBLOCK THE KING   ²   ',0ah,0dh
        db   '         ²²                              ÛÛ²  ²                       ²   ',0ah,0dh
	db   '         ²²                              ÛÛ²  ²        LEVEL  3       ²   ',0ah,0dh
	db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
	db   '         ²²                              ²²²  ²   " Abyss of Hades "  ²   ',0ah,0dh      
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²                       ²   ',0ah,0dh
        db   '         ²²                              ²²²  ²²²²²²²²²²²²²²²²²²²²²²²²²   ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²                              ²²²                              ',0ah,0dh
        db   '         ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²                              ',0ah,0dh,
        db   '                                                                          ',0ah,0dh,'$'






cong db 'CONGRATS! ','$'


;__________________________________________________________________________________________


clear101  proc  near

        mov ah, 06h		; clearing the screen w/o a buff
        mov al, 00h
        mov ch, 00
        mov cl, 01
        mov dh, 24
        mov dl, 79
        mov bh, 0bh              ; color
        int 10h
						
	ret

clear101 endp
end clear101

;__________________________________________________________________________________________




;__________________________________________________________________________________________

level2 proc near
    mov ah, 0fh
    int 10h

    mov mode, al
    mov ah, 00h
    mov al, 03
    int 10h


	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al


eia:
     
        call clear101
        
        mov ah, 02h
        mov dh, 24 ; dh - row
        mov dl, 00h  ; dl - coulumn
        mov bh, 00h
        int 10h	
		
        mov ah, 09h
        lea dx, map1a
        int 21h  
	

	call hide_cur
	call red_block_printa               ; HORIZONTAL
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	

	mov al, color2
	mov color3, al
		
	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al
	
   t1a:	
        mov ah, 07h      
        int 21h
	
	cmp al, 'Q'
    	if e jmp exit
		
	cmp al, 'q'
    	if e jmp exit
	
	
	cmp al, '0'
    	if e jmp heya
	
	cmp al, '1'
    	if e jmp hey1a
			
	cmp al, '2'
    	if e jmp hey2a
	
	cmp al, '3'
    	if e jmp hey3a
	
	cmp al, '4'
    	if e jmp hey4a

	cmp al, '5'
    	if e jmp hey5a
	
	cmp al, '6'
    	if e jmp hey6a
	
	cmp al, '7'
    	if e jmp hey7a
	
	cmp al, '8'
    	if e jmp hey8a
	
	cmp al, '9'
    	if e jmp hey9a

	jmp eia


exit:
	call stop

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


heya:	

	mov al, color1
	mov color3, al

	call red_block_printa   
	
	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al


     	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	
		
	

		sub col0a, -2

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0a       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h

		add col0a, -2

                cmp ah, 0ch
		if ne jmp t111a

	
		add col0a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0a       ;  column
        	int 10h	
		sub col0a, 13


		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0ch
		if ne jmp t11a
				

		


		mov ah, 08h
		mov bh, 00h	
		int 10h
	
		cmp al,  219
		if e jmp call_cong1a

		if ne jmp backagaina



t111a:		
		
		add col0a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0a       ;  column
        	int 10h	
		sub col0a, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

		cmp al,  219
		if e jmp call_cong2a	


		add col0a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 11         ;  row
     		mov dl, col0a       ;  column
        	int 10h	
		sub col0a, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0ch
		if ne jmp eia ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		
		mov ah, 07h                  ; Pa incrementon ug naay ali sa left
    		int 21h

		cmp al, 'd'
        	if e jmp inc_cola ;
        	cmp al, 'D'
  		if e jmp inc_cola ;		
 	
	 	jmp a3a                      


call_cong1a:	
 		jmp fina ; so that you can move to left


backagaina:
		call red_block_movea ; call to move the red block

call_cong2a:
		mov ah, 07
		int 21h		

		cmp al, 'D'
    		if e jmp call_cong3a
    		cmp al, 'd'
    		if e jmp call_cong3a
    		jmp eia
    
call_cong3a:
		call congrats

t11a:	
    jmp a5a


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    
hey1a:

		mov al, color1a
		mov color3a, al	
		call first_block_printa
	
		
	
	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al
		
	call red_block_printa  
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	

	sub col1a, 7   ;  ELSE TAN-AWON SA IBABAW KUNG PWEDE BA MOSAKA
	mov ah, 02h
        mov bh, 00h
        mov dh, col1a       	
        mov dl, 24      	 
        int 10h	
	add col1a, 7

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp fin111a				


	add col1a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col1a       	
        mov dl, 24      	
        int 10h	
	sub col1a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0ch
	if ne jmp fin1a 

	if e jmp backagain11a


backagain11a:		
        
	call first_block_movea



;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
hey2a:
		
		mov al, color1b
		mov color3b, al	
		call second_block_printa

	
	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al

	call red_block_printa  	
	call first_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	


	add col2a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col2a       	
        mov dl, 14      	
        int 10h	
	sub col2a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0ch
	if ne jmp fin2a

	sub col2a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col2a       	
        mov dl, 13      	 
        int 10h	
	add col2a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
        cmp ah,  0ch
	if ne jmp fin112a	

	if e jmp backagain12a



backagain12a:		
        
	call second_block_movea


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>





;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    
hey3a:
		mov al, color1c
		mov color3c, al	
		call third_block_printa


	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al

	call red_block_printa  
	call first_block_printa
	call second_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	
	
	add col3a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col3a       	
        mov dl, 28      	
        int 10h	
	sub col3a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0ch
	if ne jmp fin3a

	sub col3a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col3a       	
        mov dl, 29      	 
        int 10h	
	add col3a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp fin113a	

	if e jmp backagain13a



backagain13a:	
		        
	call third_block_movea


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    
hey4a:
		mov al, color1d
		mov color3d, al	
	call fourth_block_printa

	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al

	call red_block_printa  	
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
		
		
	add col4a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col4a       	
        mov dl, 28      	
        int 10h	
	sub col4a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0ch
	if ne jmp fin4a

	sub col4a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col4a       	
        mov dl, 29      	 
        int 10h	
	add col4a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp fin114a	

	if e jmp backagain14a



backagain14a:		
        
	call fourth_block_movea

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    
hey5a:
		mov al, color1e
		mov color3e, al	
		call fifth_block_printa
	
	
	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al

	call red_block_printa  	
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	
	
	sub col5a, 7   ;  ELSE TAN-AWON SA IBABAW KUNG PWEDE BA MOSAKA
	mov ah, 02h
        mov bh, 00h
        mov dh, col5a       	
        mov dl, 38      	 
        int 10h	
	add col5a, 7


	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp fin115a				


	add col5a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col5a       	
        mov dl, 38      	
        int 10h	
	sub col5a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah, 0ch
	if ne jmp fin5a 




	if e jmp backagain15a



backagain15a:		
        
	call fifth_block_movea



;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey6a:	

		mov al, color1f
		mov color3f, al	
	call sixth_block_printa
	


	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al


	call red_block_printa  
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa

	call seventh_block_printa
	call eight_block_printa
	call ninth_block_printa
	
	
		sub col6a, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 05         ;  row
     		mov dl, col6a       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col6a, -1		


                cmp ah, 0ch
		if ne jmp t1116a

	
		add col6a, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 05         ;  row
     		mov dl, col6a       ;  column
        	int 10h	
		sub col6a, 12


		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0ch
		if ne jmp t116a
				
		if e jmp backagain6a
 


t1116a:		
		cmp sinum2a, 40
	        if e jmp eia	
	

		add col6a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 05         ;  row
     		mov dl, col6a       ;  column
        	int 10h	
		sub col6a, 13


		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0ch
		if ne jmp eia ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				
	

		mov ah, 07h
		int 21h

	 	jmp a36a                      




backagain6a:
		call sixth_block_movea ; call to move the red block


t116a:	
	     
	    cmp sinum2a, 40
	    if e jmp eia 
    
       	    jmp a56a

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey7a:	

		
		mov al, color1g
		mov color3g, al	
call seventh_block_printa
	

	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al

	call red_block_printa  
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call eight_block_printa
	call ninth_block_printa
	

		sub col7a, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 05         ;  row
     		mov dl, col7a       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col7a, -1		

                cmp ah, 0ch
		if ne jmp t1117a
	
		add col7a, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 05         ;  row
     		mov dl, col7a       ;  column
        	int 10h	
		sub col7a, 12


		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0ch
		if ne jmp t117a
				
		if e jmp backagain7a
 
t1117a:		
		cmp senum2a, 40
	        if e jmp eia	
	
		add col7a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 05         ;  row
     		mov dl, col7a       ;  column
        	int 10h	
		sub col7a, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0ch
		if ne jmp eia ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		mov ah, 07h
		int 21h

	 	jmp a37a                      


backagain7a:
		call seventh_block_movea ; call to move the red block


t117a:	
	     
	    cmp senum2a, 40
	    if e jmp eia 
    
       	    jmp a57a


;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


hey8a:	
		
		mov al, color1h
		mov color3h, al	
call eight_block_printa
	

	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al

	call red_block_printa  
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call ninth_block_printa
	

		sub col8a, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 17         ;  row
     		mov dl, col8a       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col8a, -1		

                cmp ah, 0ch
		if ne jmp t1118a
	
		add col8a, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 17         ;  row
     		mov dl, col8a       ;  column
        	int 10h	
		sub col8a, 12

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0ch
		if ne jmp t118a
				
		if e jmp backagain8a
 
t1118a:		
		cmp einum2a, 40
	        if e jmp eia	
	
		add col8a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 17         ;  row
     		mov dl, col8a       ;  column
        	int 10h	
		sub col8a, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0ch
		if ne jmp eia ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		mov ah, 07h
		int 21h

	 	jmp a38a                      


backagain8a:
		call eight_block_movea ; call to move the red block


t118a:	
	     
	    cmp einum2a, 40
	    if e jmp eia 
    
       	    jmp a58a

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




hey9a:	
		
		mov al, color1i
		mov color3i, al	
	call ninth_block_printa
	
	
	mov al, color2
	mov color3, al	

	mov al, color2a
	mov color3a, al	
	
	mov al, color2b
	mov color3b, al

	mov al, color2c
	mov color3c, al

	mov al, color2d
	mov color3d, al

	mov al, color2e
	mov color3e, al

	mov al, color2f
	mov color3f, al
	
	mov al, color2g
	mov color3g, al
	
	mov al, color2h
	mov color3h, al

	mov al, color2i
	mov color3i, al


	call red_block_printa  
	call first_block_printa
	call second_block_printa
	call third_block_printa
	call fourth_block_printa
	call fifth_block_printa
	call sixth_block_printa
	call seventh_block_printa
	call eight_block_printa
	
	
	
		sub col9a, -1

		mov ah, 02h
         	mov bh, 00h
        	mov dh, 14         ;  row
     		mov dl, col9a       ;  column
        	int 10h	
	
		mov ah, 08h
		mov bh, 00h	
		int 10h
		
		add col9a, -1		

                cmp ah, 0ch
		if ne jmp t1119a
	
		add col9a, 12
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 14         ;  row
     		mov dl, col9a       ;  column
        	int 10h	
		sub col9a, 12

		mov ah, 08h
		mov bh, 00h	
		int 10h
	
                cmp ah,  0ch
		if ne jmp t119a
				
		if e jmp backagain9a
 
t1119a:		
		cmp ninum2a, 40
	        if e jmp eia	
	
		add col9a, 13
		mov ah, 02h
         	mov bh, 00h
        	mov dh, 14         ;  row
     		mov dl, col9a       ;  column
        	int 10h	
		sub col9a, 13

		mov ah, 08h
		mov bh, 00h	
		int 10h

                cmp ah,  0ch
		if ne jmp eia ; if dili yellow gane ang foreground jamoy ipabuhat/ mag base sa foreground sa blocks
			      ; else proceed				

		mov ah, 07h
		int 21h

	 	jmp a39a                      


backagain9a:
		call ninth_block_movea ; call to move the red block


t119a:	
	     
	    cmp ninum2a, 40
	    if e jmp eia 
    
       	    jmp a59a

;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

level2 endp
end level2
	  

;__________________________________________________________________________________________





; RED BLOCK_a # 0
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


red_block_printa proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3   ;  color red
         mov ch,0ah   ;  row
         mov cl,rnum1a ;  column 
         mov dh,0ch   ;  row
         mov dl,rnum2a ;  column
         int 10h

;******************************************************************************************


	add col0a, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 11         ;  row
        mov dl, col0a       ;  column
        int 10h	
	dec col0a, 6
	
        mov ah, 09h
        lea dx, string1
        int 21h
	
	
;******************************************************************************************



 ret
 red_block_printa endp
 end red_block_printa

;__________________________________________________________________________________________

;__________________________________________________________________________________________




red_block_movea proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp rnum1a, 11
        if e jmp a3a

	jmp a2a

;******************************************************************************************

fina:  
	 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_cola
    cmp al, 'a'
    if e jmp dec_cola
	
    cmp al, 'D'
    if e jmp call_conga
    cmp al, 'd'
    if e jmp call_conga
    jmp eia    	    

call_conga:
     call congrats
	

;******************************************************************************************


a5a:                              ; dili pa moveright
        cmp rnum1a, 11
        if e jmp a3a	

        mov ah, 07h
        int 21h
	
	cmp al, 'A'
        if e jmp dec_cola
  	cmp al, 'a'
 	if e jmp dec_cola
        
	jmp a51a

;******************************************************************************************

	
a51a:
	cmp al, 'q'
        if e jmp stop0a
 	cmp al, 'Q'
        if e jmp stop0a 
        jmp t1a

;******************************************************************************************
 
a2a: 
 	cmp al, 'A'
        if e jmp dec_cola
 	cmp al, 'a'
 	if e jmp dec_cola
	

a3a:
				
		
	cmp al, 'd'
        if e jmp inc_cola ;
        cmp al, 'D'
  	if e jmp inc_cola ;		
        jmp a4a
	
	
a4a:
	cmp al, 'q'
        if e jmp stop0a
 	cmp al, 'Q'
        if e jmp stop0a 
    	jmp eia
	
;******************************************************************************************


inc_cola:

	add col0a, 5
    	add rnum2a, 5 
        add rnum1a, 5
	
   
	jmp eia

;******************************************************************************************


dec_cola:
	sub col0a, 5
        sub rnum2a, 5		
    	sub rnum1a, 5
	
	jmp eia

;******************************************************************************************


stop0a:
 call stop


;******************************************************************************************


 ret
 red_block_movea endp
 end red_block_movea

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; FIRST BLOCK_a # 1
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


first_block_printa  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3a      
        mov ch,fnum1a   
        mov cl,21 
        mov dh,fnum2a  
        mov dl,25  
        int 10h


;******************************************************************************************

	
	sub col1a, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col1a            
        mov dl, 23      	  
        int 10h	
	add col1a, 1

        mov ah, 09h
        lea dx, string1a
        int 21h
	
	add col1a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col1a	       ;  
        mov dl, 24             ;  
        int 10h	
	sub col1a, 3

;******************************************************************************************

 ret
 first_block_printa endp
 end first_block_printa


;__________________________________________________________________________________________


;__________________________________________________________________________________________


first_block_movea proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp fnum1a, 04 
 if e jmp a321a

 cmp fnum2a, 21
 if e jmp a2211a

 jmp a221a


;******************************************************************************************

fin1a:
	
    cmp fnum2a, 21
    if e jmp a2211a
    
    cmp fnum1a, 04 
    if e jmp eia
	
        sub col1a, 8
	mov ah, 02h
        mov bh, 00h
        mov dh, col1a       	
        mov dl, 24      	 
        int 10h	
	add col1a, 8

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp eia	
     	    

    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col1a
    cmp al, 'w'
    if e jmp dec_col1a
    jmp a421a


fin111a:

 	cmp fnum1a, 04 
	if e jmp eia

	 cmp fnum2a, 21
	 if e jmp a2211a
	
	add col1a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col1a       	
        mov dl, 23      	
        int 10h	
	sub col1a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0ch
	if ne jmp eia


	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col1a
    	cmp al, 's'
 	if e jmp inc_col1a
    	jmp a421a
		
 
;******************************************************************************************

	
a221a:  

	cmp al, 'w'
   	if e jmp dec_col1a
 	cmp al, 'W'
 	if e jmp dec_col1a


a321a:        
        cmp al, 's'
	if e jmp inc_col1a
        cmp al, 'S' 
        if e jmp inc_col1a
	if ne jmp a421a


;******************************************************************************************

a2211a: 		
	

	cmp al, 'w'
        if e jmp dec_col1a
 	cmp al, 'W'
	if e jmp dec_col1a
        if ne jmp a421a
	

;******************************************************************************************
	

a421a:
	cmp al, 'q'
 	if e jmp stop1a
 	cmp al, 'Q'
	if e jmp stop1a
        if ne jmp eo51a 

     
;******************************************************************************************


	inc_col1a:
         add col1a, 3
         add fnum1a, 3
         add fnum2a, 3
     	 jmp eo51a

;******************************************************************************************

	dec_col1a:
	 sub col1a, 3
         sub fnum1a, 3
         sub fnum2a, 3
	 jmp eo51a 

;******************************************************************************************

eo51a:
 jmp eia

;******************************************************************************************

stop1a:
 call stop

;******************************************************************************************
 
 
 ret
 first_block_movea endp
 end first_block_movea


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



; SECOND BLOCK_a # 2
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


second_block_printa  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3b     
        mov ch,snum1a   
        mov cl,11 
        mov dh,snum2a  
        mov dl,15  
        int 10h


;******************************************************************************************

	
	sub col2a, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col2a            
        mov dl, 13      	  
        int 10h	
	add col2a, 1

        mov ah, 09h
        lea dx, string2a
        int 21h
	
	add col2a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col2a	       ;  
        mov dl, 14             ;  
        int 10h	
	sub col2a, 3

;******************************************************************************************

 ret
 second_block_printa endp
 end second_block_printa


;__________________________________________________________________________________________


;__________________________________________________________________________________________


second_block_movea proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp snum1a, 04 
 if e jmp a322a

 cmp snum2a, 21
 if e jmp a2212a

 jmp a222a


;******************************************************************************************

fin2a:		
     cmp snum1a, 04 
    if e jmp eia
		
    cmp snum2a, 21
    if e jmp a2212a
    
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col2a
    cmp al, 'w'
    if e jmp dec_col2a
    jmp a422a

fin112a:
	 cmp Snum2a, 21
	 if e jmp a2212a

	cmp snum1a, 04 
	 if e jmp eia
	
	add col2a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col2a       	
        mov dl, 14      	
        int 10h	
	sub col2a, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0ch
	if ne jmp eia


	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col2a
    	cmp al, 's'
 	if e jmp inc_col2a
    	jmp a422a
		
 
;******************************************************************************************

	
a222a:  

	cmp al, 'w'
   	if e jmp dec_col2a
 	cmp al, 'W'
 	if e jmp dec_col2a


a322a:        
        cmp al, 's'
	if e jmp inc_col2a
        cmp al, 'S' 
        if e jmp inc_col2a
	if ne jmp a422a


;******************************************************************************************

a2212a: 		
	

	cmp al, 'w'
        if e jmp dec_col2a
 	cmp al, 'W'
	if e jmp dec_col2a
        if ne jmp a422a
	

;******************************************************************************************
	

a422a:
	cmp al, 'q'
 	if e jmp stop2a
 	cmp al, 'Q'
	if e jmp stop2a
        if ne jmp eo52a 

     
;******************************************************************************************


	inc_col2a:
         add col2a, 3
         add snum1a, 3
         add snum2a, 3
     	 jmp eo52a

;******************************************************************************************

	dec_col2a:
	 sub col2a, 3
         sub snum1a, 3
         sub snum2a, 3
	 jmp eo51a 

;******************************************************************************************

eo52a:
 jmp eia

;******************************************************************************************

stop2a:
 call stop

;******************************************************************************************
 
 
 ret
 second_block_movea endp
 end second_block_movea


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; THIRD BLOCK_a # 3
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


third_block_printa  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3c     
        mov ch,tnum1a   
        mov cl,26 
        mov dh,tnum2a  
        mov dl,30  
        int 10h


;******************************************************************************************

	
	sub col3a, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col3a            
        mov dl, 28      	  
        int 10h	
	add col3a, 1

        mov ah, 09h
        lea dx, string3a
        int 21h
	
	add col3a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col3a	       ;  
        mov dl, 29             ;  
        int 10h	
	sub col3a, 3

;******************************************************************************************

 ret
 third_block_printa endp
 end third_block_printa


;__________________________________________________________________________________________


;__________________________________________________________________________________________


third_block_movea proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp tnum1a, 04 
 if e jmp a323a

 cmp tnum2a, 21
 if e jmp a2213a

 jmp a223a


;******************************************************************************************

fin3a:
		
    cmp tnum2a, 21
    if e jmp a2213a
    
    cmp tnum1a, 04 
    if e jmp eia
	
    sub col3a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col3a       	
        mov dl, 29      	 
        int 10h	
	add col3a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp eia
	     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col3a
    cmp al, 'w'
    if e jmp dec_col3a
    jmp a423a

fin113a:

	cmp tnum1a, 04 
	if e jmp eia

	
	cmp tnum2a, 21
 	if e jmp a2213a
	
	add col3a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col3a       	
        mov dl, 28      	
        int 10h	
	sub col3a, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0ch
	if ne jmp eia


	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col3a
    	cmp al, 's'
 	if e jmp inc_col3a
    	jmp a423a
		
 
;******************************************************************************************

	
a223a:  

	cmp al, 'w'
   	if e jmp dec_col3a
 	cmp al, 'W'
 	if e jmp dec_col3a


a323a:        
        cmp al, 's'
	if e jmp inc_col3a
        cmp al, 'S' 
        if e jmp inc_col3a
	if ne jmp a423a


;******************************************************************************************

a2213a: 		

	cmp al, 'w'
        if e jmp dec_col3a
 	cmp al, 'W'
	if e jmp dec_col3a
        if ne jmp a423a
	

;******************************************************************************************
	

a423a:
	cmp al, 'q'
 	if e jmp stop3a
 	cmp al, 'Q'
	if e jmp stop3a
        if ne jmp eo53a 

     
;******************************************************************************************

	inc_col3a:
         add col3a, 3
         add tnum1a, 3
         add tnum2a, 3
     	 jmp eo53a

;******************************************************************************************

	dec_col3a:
	 sub col3a, 3
         sub tnum1a, 3
         sub tnum2a, 3
	 jmp eo53a 

;******************************************************************************************

eo53a:
 jmp eia

;******************************************************************************************

stop3a:
 call stop

;******************************************************************************************
 
 
 ret
 third_block_movea endp
 end third_block_movea


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



; FOURTH BLOCK_a # 4
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


fourth_block_printa  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3d     
        mov ch,fonum1a   
        mov cl,26 
        mov dh,fonum2a  
        mov dl,30  
        int 10h


;******************************************************************************************

	
	sub col4a, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col4a            
        mov dl, 28      	  
        int 10h	
	add col4a, 1

        mov ah, 09h
        lea dx, string4a
        int 21h
	
	add col4a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col4a	       ;  
        mov dl, 29             ;  
        int 10h	
	sub col4a, 3

;******************************************************************************************

 ret
 fourth_block_printa endp
 end fourth_block_printa


;__________________________________________________________________________________________


;__________________________________________________________________________________________


fourth_block_movea proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp fonum1a, 04 
 if e jmp a324a

 cmp fonum2a, 21
 if e jmp a2214a

 jmp a224a


;******************************************************************************************

fin4a:
	
    cmp fonum2a, 21
    if e jmp a2214a
    
    cmp fonum1a, 04 
    if e jmp eia
	
     	    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col4a
    cmp al, 'w'
    if e jmp dec_col4a
    jmp a424a

fin114a:

	cmp fonum1a, 04 
	if e jmp eia

	
	cmp fonum2a, 21
 	if e jmp a2214a
	
	add col4a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col4a       	
        mov dl, 28      	
        int 10h	
	sub col4a, 3

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0ch
	if ne jmp eia


	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col4a
    	cmp al, 's'
 	if e jmp inc_col4a
    	jmp a424a
		
 
;******************************************************************************************

	
a224a:  

	cmp al, 'w'
   	if e jmp dec_col4a
 	cmp al, 'W'
 	if e jmp dec_col4a


a324a:        
        cmp al, 's'
	if e jmp inc_col4a
        cmp al, 'S' 
        if e jmp inc_col4a
	if ne jmp a424a


;******************************************************************************************

a2214a: 		

	cmp al, 'w'
        if e jmp dec_col4a
 	cmp al, 'W'
	if e jmp dec_col4a
        if ne jmp a424a
	

;******************************************************************************************
	

a424a:
	cmp al, 'q'
 	if e jmp stop4a
 	cmp al, 'Q'
	if e jmp stop4a
        if ne jmp eo54a 

     
;******************************************************************************************

	inc_col4a:
         add col4a, 3
         add fonum1a, 3
         add fonum2a, 3
     	 jmp eo54a

;******************************************************************************************

	dec_col4a:
	 sub col4a, 3
         sub fonum1a, 3
         sub fonum2a, 3
	 jmp eo54a 

;******************************************************************************************

eo54a:
 jmp eia

;******************************************************************************************

stop4a:
 call stop

;******************************************************************************************
 
 
 ret
 fourth_block_movea endp
 end fourth_block_movea


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; fifth BLOCK_a # 4
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


fifth_block_printa  proc  near


;******************************************************************************************
	
	mov ah,06h
        mov al,00h
        mov bh,color3e     
        mov ch,finum1a   
        mov cl,36 
        mov dh,finum2a  
        mov dl,40  
        int 10h


;******************************************************************************************

	
	sub col5a, 1
	mov ah, 02h
        mov bh, 00h
        mov dh, col5a            
        mov dl, 38      	  
        int 10h	
	add col5a, 1

        mov ah, 09h
        lea dx, string5a
        int 21h
	
	add col5a, 3
	mov ah, 02h
        mov bh, 00h
        mov dh, col5a	       ;  
        mov dl, 39             ;  
        int 10h	
	sub col5a, 3

;******************************************************************************************

 ret
 fifth_block_printa endp
 end fifth_block_printa


;__________________________________________________________________________________________


;__________________________________________________________________________________________


fifth_block_movea proc near
 
        
;******************************************************************************************

	
 mov ah, 07h  ; nangayug keyboard
 int 21h


;******************************************************************************************

 cmp finum1a, 04 
 if e jmp a325a

 cmp finum2a, 21
 if e jmp a2215a

 jmp a225a


;******************************************************************************************

fin5a:
	
    cmp finum2a, 21
    if e jmp a2215a
    
    cmp finum1a, 04 
    if e jmp eia
	
     	
       sub col5a, 8
	mov ah, 02h
        mov bh, 00h
        mov dh, col5a       	
        mov dl, 39      	 
        int 10h	
	add col5a, 8

	mov ah, 08h
	mov bh, 00h	
	int 10h

        cmp ah,  0ch
	if ne jmp eia	
    
    mov ah, 07h
    int 21h	
	     
    cmp al, 'W'
    if e jmp dec_col5a
    cmp al, 'w'
    if e jmp dec_col5a
    jmp a425a

fin115a:

	cmp finum1a, 04 
	if e jmp eia
	
	cmp finum2a, 21
 	if e jmp a2215a
	
	add col5a, 4
	mov ah, 02h
        mov bh, 00h
        mov dh, col5a       	
        mov dl, 38      	
        int 10h	
	sub col5a, 4

	mov ah, 08h
	mov bh, 00h	
	int 10h
	
        cmp ah, 0ch
	if ne jmp eia


	mov ah, 07h
        int 21h	
 
  	cmp al, 'S'
    	if e jmp inc_col5a
    	cmp al, 's'
 	if e jmp inc_col5a
    	jmp a425a
		
 
;******************************************************************************************

	
a225a:  

	cmp al, 'w'
   	if e jmp dec_col5a
 	cmp al, 'W'
 	if e jmp dec_col5a


a325a:        
        cmp al, 's'
	if e jmp inc_col5a
        cmp al, 'S' 
        if e jmp inc_col5a
	if ne jmp a425a


;******************************************************************************************

a2215a: 		

	cmp al, 'w'
        if e jmp dec_col5a
 	cmp al, 'W'
	if e jmp dec_col5a
        if ne jmp a425a
	

;******************************************************************************************
	

a425a:
	cmp al, 'q'
 	if e jmp stop5a
 	cmp al, 'Q'
	if e jmp stop5a
        if ne jmp eo55a 

     
;******************************************************************************************

	inc_col5a:
         add col5a, 3
         add finum1a, 3
         add finum2a, 3
     	 jmp eo55a

;******************************************************************************************

	dec_col5a:
	 sub col5a, 3
         sub finum1a, 3
         sub finum2a, 3
	 jmp eo55a 

;******************************************************************************************

eo55a:
 jmp eia

;******************************************************************************************

stop5a:
 call stop

;******************************************************************************************
 
 
 ret
 fifth_block_movea endp
 end fifth_block_movea


;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; SIX BLOCK_a # 0
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


sixth_block_printa proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3f   ;  color red
         mov ch,04   ;  row
         mov cl,sinum1a ;  column 
         mov dh,06   ;  row
         mov dl,sinum2a ;  column
         int 10h

;******************************************************************************************


	add col6a, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 05         ;  row
        mov dl, col6a       ;  column
        int 10h	
	dec col6a, 6
	
        mov ah, 09h
        lea dx, string6a
        int 21h
	
	
;******************************************************************************************



 ret
 sixth_block_printa endp
 end sixth_block_printa

;__________________________________________________________________________________________

;__________________________________________________________________________________________




sixth_block_movea proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp sinum1a, 11
        if e jmp a36a
	
		cmp sinum2a, 40
	        if e jmp a56a1
	
        jmp a26a

;******************************************************************************************

fina6:  
   
        
		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col6a
    cmp al, 'a'
    if e jmp dec_col6a
	
      jmp eia    	    
	

;******************************************************************************************


a56a:                              ; dili pa moveright
        cmp sinum1a, 11
        if e jmp a36a	

        mov ah, 07h
        int 21h
A56a1:	
	cmp al, 'A'
        if e jmp dec_col6a
  	cmp al, 'a'
 	if e jmp dec_col6a
        
	jmp a516a

;******************************************************************************************

	
a516a:
	cmp al, 'q'
        if e jmp stop6a
 	cmp al, 'Q'
        if e jmp stop6a 
        jmp t1a

;******************************************************************************************
 
a26a: 
 	cmp al, 'A'
        if e jmp dec_col6a
 	cmp al, 'a'
 	if e jmp dec_col6a
	

a36a:				
	cmp al, 'd'
        if e jmp inc_col6a ;
        cmp al, 'D'
  	if e jmp inc_col6a ;		
        jmp a46a
	
	
a46a:
	cmp al, 'q'
        if e jmp stop6a
 	cmp al, 'Q'
        if e jmp stop6a 
    	jmp eia
	
;******************************************************************************************


inc_col6a:

	add col6a, 5
    	add sinum2a, 5 
        add sinum1a, 5
	
   	jmp eia

;******************************************************************************************


dec_col6a:
	sub col6a, 5
        sub sinum2a, 5		
    	sub sinum1a, 5
	
	jmp eia

;******************************************************************************************


stop6a:
 call stop


;******************************************************************************************


 ret
 sixth_block_movea endp
 end sixth_block_movea

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


; SEVEN BLOCK_a # 7
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


seventh_block_printa proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3g   ;  color red
         mov ch,04   ;  row
         mov cl,senum1a ;  column 
         mov dh,06   ;  row
         mov dl,senum2a ;  column
         int 10h

;******************************************************************************************


	add col7a, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 05         ;  row
        mov dl, col7a       ;  column
        int 10h	
	dec col7a, 6
	
        mov ah, 09h
        lea dx, string7a
        int 21h
	
	
;******************************************************************************************



 ret
 seventh_block_printa endp
 end seventh_block_printa

;__________________________________________________________________________________________

;__________________________________________________________________________________________




seventh_block_movea proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp senum1a, 11
        if e jmp a37a
	
	cmp senum2a, 40
	if e jmp a57a1
	
        jmp a27a

;******************************************************************************************

fina7:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col7a
    cmp al, 'a'
    if e jmp dec_col7a
	
      jmp eia    	    
	

;******************************************************************************************


a57a:                              ; dili pa moveright
        cmp senum1a, 11
        if e jmp a37a	

        mov ah, 07h
        int 21h
A57a1:	
	cmp al, 'A'
        if e jmp dec_col7a
  	cmp al, 'a'
 	if e jmp dec_col7a
        
	jmp a517a

;******************************************************************************************

	
a517a:
	cmp al, 'q'
        if e jmp stop7a
 	cmp al, 'Q'
        if e jmp stop7a 
        jmp t1a

;******************************************************************************************
 
a27a: 
 	cmp al, 'A'
        if e jmp dec_col7a
 	cmp al, 'a'
 	if e jmp dec_col7a
	

a37a:				
	cmp al, 'd'
        if e jmp inc_col7a ;
        cmp al, 'D'
  	if e jmp inc_col7a ;		
        jmp a47a
	
	
a47a:
	cmp al, 'q'
        if e jmp stop7a
 	cmp al, 'Q'
        if e jmp stop7a 
    	jmp eia
	
;******************************************************************************************


inc_col7a:

	add col7a, 5
    	add senum2a, 5 
        add senum1a, 5
	
   	jmp eia

;******************************************************************************************


dec_col7a:
	sub col7a, 5
        sub senum2a, 5		
    	sub senum1a, 5
	
	jmp eia

;******************************************************************************************


stop7a:
 call stop


;******************************************************************************************


 ret
 seventh_block_movea endp
 end seventh_block_movea

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; EIGHT BLOCK_a # 8
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


eight_block_printa proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3h  ;  color red
         mov ch,16   ;  row
         mov cl,einum1a ;  column 
         mov dh,18   ;  row
         mov dl,einum2a ;  column
         int 10h

;******************************************************************************************


	add col8a, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 17         ;  row
        mov dl, col8a       ;  column
        int 10h	
	dec col8a, 6
	
        mov ah, 09h
        lea dx, string8a
        int 21h
	
	
;******************************************************************************************



 ret
 eight_block_printa endp
 end eight_block_printa

;__________________________________________________________________________________________

;__________________________________________________________________________________________




eight_block_movea proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp einum1a, 11
        if e jmp a38a
	
	cmp einum2a, 40
	if e jmp a58a1
	
        jmp a28a

;******************************************************************************************

fina8:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col8a
    cmp al, 'a'
    if e jmp dec_col8a
	
    jmp eia    	    
	
;******************************************************************************************


a58a:                              ; dili pa moveright
        cmp einum1a, 11
        if e jmp a38a	

        mov ah, 07h
        int 21h
A58a1:	
	cmp al, 'A'
        if e jmp dec_col8a
  	cmp al, 'a'
 	if e jmp dec_col8a
        
	jmp a518a

;******************************************************************************************

	
a518a:
	cmp al, 'q'
        if e jmp stop8a
 	cmp al, 'Q'
        if e jmp stop8a 
        jmp t1a

;******************************************************************************************
 
a28a: 
 	cmp al, 'A'
        if e jmp dec_col8a
 	cmp al, 'a'
 	if e jmp dec_col8a
	
a38a:				
	cmp al, 'd'
        if e jmp inc_col8a ;
        cmp al, 'D'
  	if e jmp inc_col8a ;		
        jmp a48a
	
a48a:
	cmp al, 'q'
        if e jmp stop8a
 	cmp al, 'Q'
        if e jmp stop8a 
    	jmp eia
	
;******************************************************************************************


inc_col8a:
	add col8a, 5
    	add einum2a, 5 
        add einum1a, 5
   	jmp eia

;******************************************************************************************


dec_col8a:
	sub col8a, 5
        sub einum2a, 5		
    	sub einum1a, 5
	jmp eia

;******************************************************************************************


stop8a:
 call stop


;******************************************************************************************


 ret
 eight_block_movea endp
 end eight_block_movea

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




; NINE BLOCK_a # 9
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;__________________________________________________________________________________________


ninth_block_printa proc near

;******************************************************************************************

         mov ah,06h
         mov al,00h
         mov bh,color3i  ;  color red
         mov ch,13   ;  row
         mov cl,ninum1a ;  column 
         mov dh,15   ;  row
         mov dl,ninum2a ;  column
         int 10h

;******************************************************************************************


	add col9a, 6
        mov ah, 02h
        mov bh, 00h
        mov dh, 14         ;  row
        mov dl, col9a       ;  column
        int 10h	
	dec col9a, 6
	
        mov ah, 09h
        lea dx, string9a
        int 21h
	
	
;******************************************************************************************



 ret
 ninth_block_printa endp
 end ninth_block_printa

;__________________________________________________________________________________________

;__________________________________________________________________________________________



ninth_block_movea proc near
 
;******************************************************************************************
          

        mov ah, 07h
        int 21h

;******************************************************************************************

        cmp ninum1a, 11
        if e jmp a39a
	
	cmp ninum2a, 40
	if e jmp a59a1
	
        jmp a29a

;******************************************************************************************

fina9:  
   		 	
    mov ah, 07h                  ; finish line to congrats
    int 21h
	
    cmp al, 'A'
    if e jmp dec_col9a
    cmp al, 'a'
    if e jmp dec_col9a
	
    jmp eia    	    
	
;******************************************************************************************


a59a:                              ; dili pa moveright
        cmp ninum1a, 11
        if e jmp a39a	

        mov ah, 07h
        int 21h
A59a1:	
	cmp al, 'A'
        if e jmp dec_col9a
  	cmp al, 'a'
 	if e jmp dec_col9a
        
	jmp a519a

;******************************************************************************************

	
a519a:
	cmp al, 'q'
        if e jmp stop9a
 	cmp al, 'Q'
        if e jmp stop9a 
        jmp t1a

;******************************************************************************************
 
a29a: 
 	cmp al, 'A'
        if e jmp dec_col9a
 	cmp al, 'a'
 	if e jmp dec_col9a
	
a39a:				
	cmp al, 'd'
        if e jmp inc_col9a ;
        cmp al, 'D'
  	if e jmp inc_col9a ;		
        jmp a49a
	
a49a:
	cmp al, 'q'
        if e jmp stop9a
 	cmp al, 'Q'
        if e jmp stop9a 
    	jmp eia
	
;******************************************************************************************


inc_col9a:
	add col9a, 5
    	add ninum2a, 5 
        add ninum1a, 5
   	jmp eia

;******************************************************************************************


dec_col9a:
	sub col9a, 5
        sub ninum2a, 5		
    	sub ninum1a, 5
	jmp eia

;******************************************************************************************


stop9a:
 call stop


;******************************************************************************************


 ret
 ninth_block_movea endp
 end ninth_block_movea

;__________________________________________________________________________________________


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







;__________________________________________________________________________________________

stop proc near
  
 mov ax, 4c00h
 int 21h

 stop endp
 end stop
;__________________________________________________________________________________________


disp proc near

 mov ah, 10h
 int 16h

 mov ah, 00h
 mov al, mode
 int 10h
 
 ret
 disp endp
 end disp

;__________________________________________________________________________________________


congrats proc near
 mov ax, 03h
 int 10h
 
 mov ah, 09h
 lea dx, cong
 int 21h
 
 call stop

 congrats endp
 end cograts


;__________________________________________________________________________________________





hide_cur proc near:

        mov ah,3
        int 10h
        or ch, 30h

        mov ah,1
        int 10h
	ret	


hide_cur endp
