.model small
.code
org 100h
jmp main

plist1 label byte
maxlen1 db 32
actlen1 db ?
kybd1 db 33 dup '$'


word1 db 'Enter String: ','$'
word2 db 'Greater ','$'
word3 db 'Lesser ','$'

j db 00
i db 00


main proc near
 mov ax, 03h
 int 10h
  
 mov ah, 09h
 lea dx, word1 
 int 21h
 
 mov ah, 0ah
 lea dx, plist1
 int 21h
 

 
 
mov bx, 00                             ;  bx is for kybd[i]
mov ch, actlen1
mov i, 00

for1:
	mov cl, i
	cmp ch, cl
	je print
  	
	mov j, 00
	mov bp, 00 ; bp is for kybd[j]
		
for2:
	mov cl, j
	cmp ch, cl  ; kung equal undang na balik sa for1, here2 --> for1 
	je here2
	
	mov dl, kybd1[bx]      ; bx- i ; bp - j 
	mov dh, kybd1[bp]	
	cmp dl, dh
	
	jl here1
	jg for22
	
	
for22:
  inc bp
  inc j
  jmp for2
	
here1:	
	mov dl, kybd1[bx]
	mov al, kybd1[bp]
        mov kybd1[bx], al
        mov kybd1[bp], dl		
	inc bp
	inc j
	jmp for2

	
here2:
     inc bx
     inc i
     jmp for1





	
print:
  mov ax, 03h
  int 10h

  mov ah, 09h
  lea dx,  kybd1 
  int 21h

 mov ax, 4c00h
 int 21h
 jmp stop
 
 stop:
main endp
end main 