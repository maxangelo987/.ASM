.model small
.code
org 100h
jmp main



block1b db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh,'$'
block1c db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh,'$'
block1d db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh  ,'$'
block1e db  '                лл                                              лл  ',0ah,0dh,'$'
block1f db  '                лл                                              лл  ',0ah,0dh ,'$'
block1g db  '                лл  л   л  лл   л  ллл  л      ллл   ллл  л  л  лл  ',0ah,0dh,'$'
block1h db  '                лл  л   л  л л  л  л  л л     л   л л     л л   лл  ',0ah,0dh,'$'
block1i db  '                лл  л   л  л  л л  ллл  л     л   л л     лл    лл  ',0ah,0dh,'$'
block1j db  '                лл  л   л  л   лл  л  л л     л   л л     л л   лл  ',0ah,0dh,'$'
block1k db  '                лл   ллл   л    л  ллл  ллллл  ллл   ллл  л  л  лл  ',0ah,0dh,'$'
block2a db  '                лл                                              лл  ',0ah,0dh,'$'
block2b db  '                лл   ллллл л  л лллл   л  л  л  лл   л   ллл    лл  ',0ah,0dh,'$'
block2c db  '                лл     л   л  л л      л л      л л  л  л       лл  ',0ah,0dh,'$'
block2d db  '                лл     л   лллл ллл    лл    л  л  л л  л  лл   лл  ',0ah,0dh,'$'
block2e db  '                лл     л   л  л л      л л   л  л   лл  л   л   лл  ',0ah,0dh,'$'
block2f db  '                лл     л   л  л лллл   л  л  л  л    л   ллл    лл  ',0ah,0dh,'$'
block2g db  '                лл                                              лл  ',0ah,0dh ,'$'
block2h db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh,'$'
block2i db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh,'$'
block2j db  '                лллллллллллллллллллллллллллллллллллллллллллллллллл  ',0ah,0dh,'$'


marg1   db  '                                                                               ',0ah,0dh
	db  ' кФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФП',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh 
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh 
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh 
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' Г                                                                            Г',0ah,0dh
        db  ' РФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФФй',0ah,0dh,'$'


                 
intro1          db              ' Г                              UNBLOCK THE KING                              ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г Prolouge:                                                                  ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г          Once upon a time, Zeus had a son with a mortal Queen in the       ', 0ah,0dh
                db              ' Г  Kingdom of Argos, the boy became the successor of the previous King and   ', 0ah,0dh
                db              ' Г  ruled gallantly. Hera, Zeuss wife and the Goddess of Patron of Marriage   ', 0ah,0dh 
                db              ' Г  became aware of his husbands adultery. She then transcended to the human  ', 0ah,0dh 
                db              ' Г  realm to banish the King of Argos. The Kings name was Maximus, Hera then  ', 0ah,0dh                                
                db              ' Г  approched him in the castle and revealed to him the truth followed with a ', 0ah,0dh                
                db              ' Г  curse that banished him into the catalombs of the Underworlds. The place  ', 0ah,0dh
                db              ' Г  was a maze filled with heavy blocks that blocks the exit. Zeus then heard ', 0ah,0dh
                db              ' Г   the news about his son. He cannot go directly to the Underworld as Hades ', 0ah,0dh
		db              ' Г    banned him but he can help his son by moving the blocks that streched   ', 0ah,0dh
		db              ' Г          above the Underworld. Will he be able to rescue Maximus?          ', 0ah,0dh
		db              ' Г                                                                            ', '$'
    
intro2          db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', 0ah,0dh                
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г Stage 1 - Halls of the Dammned                                             ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г          Maximus found himself in the place where souls of people who died ', 0ah,0dh
                db              ' Г  in vain goes. The feeling of dread and misery fills the air. Screams of   ', 0ah,0dh
                db              ' Г  people in pain is deafening. He needs to get out, but the path is blocked ', 0ah,0dh 
                db              ' Г  by walls that extend as high as his eyes can see. Just when all hope was  ', 0ah,0dh 
                db              ' Г  lost the walls sudddenly shifted, it was the work of his father, Zeus.    ', 0ah,0dh                                
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', '$'
                            
    
intro3          db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г  " Now you can play the role of the God of lightning, help Maximus to get  ', 0ah,0dh
                db              ' Г    out of the maze. "                                                      ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', 0ah,0dh
                db              ' Г   [Press Zero] - To Control the King                                       ', 0ah,0dh
                db              ' Г   [Press the Numbers or the Assign Letters] - To Control the Walls         ', 0ah,0dh
                db              ' Г   [Press Q] - If you want to exit the Game                                 ', 0ah,0dh
                db              ' Г   [Press U] - If you want to Undo or Reset the Walls                       ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
                db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', 0ah,0dh                
                db              ' Г                                                                            ', 0ah,0dh
		db              ' Г                                                                            ', '$'



row db 3
col db 0

row2 db 22
col2 db 0

main proc near
mov ax,03h
int 10h

call title_page
call delay
call delay
call delay
call delay
call delay
call delay
call delay
call page1
call page2


stop:
mov ax,4c00h
int 21h

main endp
end main


title_page proc near 

   	mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
		

        mov ah, 09h
        lea dx, block1b
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2j
	int 21h

;===========================================  	

inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1c
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2i
	int 21h


;===========================================  	

inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1d
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2h
	int 21h


	;===========================================  	

inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1e
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2g
	int 21h

;===========================================  	


inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1f
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2f
	int 21h



;===========================================  	


inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1g
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2e
	int 21h



;===========================================  	


inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1h
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2d
	int 21h



;===========================================  	


inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1i
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2c
	int 21h


;===========================================  	


inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1j
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2b
	int 21h


;===========================================  	


inc row
dec row2
call delay

mov ah,06h        ;set color background 
        mov al,00h
        mov ch,row
        mov cl,0
        mov dh,row
        mov dl,79
        mov bh,04h ; 27
        int 10h

	mov ah,02h
	mov bh,00
	mov dh,row
	mov dl,col
	int 10h
	
	
        mov ah, 09h
        lea dx, block1k
        int 21h

	mov ax,0600h
	mov bh,06h
	mov ch,row2
	mov cl,0
	mov dh,row2
	mov dl,79
	int 10h

	mov ah,02h
	mov bh,00
	mov dh,row2
	mov dl,col
	int 10h

	mov ah,09h
	lea dx,block2a
	int 21h



;===========================================  	



ret
title_page endp



page1 proc near
	mov ax, 03h
	int 10h
	
	mov ah,06h                      ; set color background 
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,0eh 
        int 10h
	
	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h

	mov ah, 09h
        lea dx, marg1
        int 21h

		
        mov ah, 02h
        mov dh, 03h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
        mov ah, 09h
        lea dx, intro1		; load intro
        int 21h
		
	mov ah,0bh
	int 21h

        mov ah,07h
	int 21h
		
ret	
page1 endp
end page1

;_________________

page2 proc near

	mov ax, 03h
	int 10h
	
	mov ah,06h                      ; set color background 
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,24
        mov dl,79
        mov bh,0ah 
        int 10h
	
	mov ah, 02h
        mov dh, 00h
        mov dl, 00h
        mov bh, 00h
        int 10h

	mov ah, 09h
        lea dx, marg1
        int 21h

		
        mov ah, 02h
        mov dh, 03h
        mov dl, 00h
        mov bh, 00h
        int 10h
		
        mov ah, 09h
        lea dx, intro2		; load intro
        int 21h
		
	mov ah,0bh
	int 21h

        mov ah,07h
	int 21h
		
ret	
page2 endp
end page2
	
;_________________
	
delay proc near

mov cx,20000

delay1:

push cx
mov cx, 2000

delay2:
loop delay2
pop cx

loop delay1

ret
delay endp
end delay
;_________________
