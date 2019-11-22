.model small
.code
org 100h
jmp kilid



block1a db  '                                                                    ',0ah,0dh
        db  '                л                      л   л лл   л ллл          л  ',0ah,0dh
        db  '                л                      л   л л л  л л  л         л  ',0ah,0dh
        db  '                л                      л   л л  л л ллл          л  ',0ah,0dh  
        db  '                л                      л   л л   лл л  л         л  ',0ah,0dh
        db  '                л                       ллл  л    л ллл          л  ',0ah,0dh 
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh 
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh
        db  '                л                                                л  ',0ah,0dh,'$'




kilid proc near




   	mov ah,06h        ;set color background 
        mov al,00h
        mov ch,00
        mov cl,00
        mov dh,15
        mov dl,79
        mov bh,64h ; 27
        int 10h
	
	mov ah, 02h
        mov dh, 2
        mov dl, 00
        mov bh, 00h
        int 10h

        mov ah, 09h
        lea dx, block1a
        int 21h










kilid endp
end kilid





