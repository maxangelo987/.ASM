.model small
.code
org 100h
jmp kilid



block1a db  '                                                                               ',0ah,0dh
        db  '                                      л   л лл   л ллл  л     ллл   ллл л  л   ',0ah,0dh
        db  '                                      л   л л л  л л  л л    л   л л    л л    ',0ah,0dh
        db  '                                      л   л л  л л ллл  л    л   л л    лл     ',0ah,0dh  
        db  '                                      л   л л   лл л  л л    л   л л    л л    ',0ah,0dh
        db  '                                       ллл  л    л ллл  лллл  ллл   ллл л  л   ',0ah,0dh 
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh 
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh
        db  '                                                                               ',0ah,0dh,'$'




kilid proc near




   	mov ah,06h        ;set color background 
        mov al,00h
        mov ch,04
        mov cl,38
	mov dh, 08
	mov dl, 75
        mov bh,14h ; 27
        int 10h
	
	mov ah, 02h
        mov dh, 2
        mov dl, 20
        mov bh, 00h
        int 10h

        mov ah, 09h
        lea dx, block1a
        int 21h

	mov ax, 4c00h
	int 21h




kilid endp
end kilid





