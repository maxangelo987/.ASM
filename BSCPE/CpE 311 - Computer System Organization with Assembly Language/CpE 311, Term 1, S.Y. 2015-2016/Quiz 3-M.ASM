; Quiz 3 - Enter string then if it is 2 consecutives vowels convert it to asterisk
; Example: hoooray
; Out: h**oray

.model small
.code
org 100h
jmp main

plist label byte
actlen db 19
maxlen db ?
kybd db 20 dup ('$'),'$'

ctr db 0

word1 db 'Enter String: ','$'
word9 db 20 dup ('$'),'$'

main proc near
 mov ax, 03h
 int 10h

 mov ah, 09h
 lea dx, word1
 int 21h

 mov ah, 0ah
 lea dx, plist
 int 21h


lea si, kybd         ; si for the inputted string
lea di, word9        ; di for the new sudlanan
                     
mov bh, 0h
mov dh, actlen

l1:
  cmp dh, 0h
  je print
  dec dh

  mov al, 'a'
  cmp [si], al
  je counter

  mov al, 'e'
  cmp [si], al
  je counter

  mov al, 'i'
  cmp [si], al
  je counter

  mov al, 'o'
  cmp [si], al
  je counter

  mov al, 'u'             ; dh - actlen
  cmp [si], al            ; bh - counter

  je counter
                          ; cl - for 1 vowels
                          ; ch - for dili vowel
  cmp bh, 1h
  je l4

  jmp dili                ; al - for comparing
                          ; dl - asterisk

						  
counter:    ; tig ihap ug consecutive ba siya?
 inc bh
 inc si
 inc di
 cmp bh, 2h
 je cons
 jmp l1
						  
dili:                     ; tig butang ug consonants ug consonants siya mismo
 mov ch, [si]
 mov [di], ch
 inc si
 inc di
 mov bh, 0h
 jmp l1

 
cons:       ; for 2 consecutives vowel
 mov bh, 0h
 mov dl, '*'
 dec di
 dec di
 mov [di], dl
 inc di
 mov dl, '*'
 mov [di], dl
 inc di
 jmp l1

l4:         ; for 1 vowel then consonants only 
 dec si
 dec di
 mov cl, [si]
 mov [di], cl
 inc di
 inc si
 mov cl, [si]
 mov [di], cl
 inc si
 inc di
 mov bh, 0h
 jmp l1 
 
 
 
print:
  mov ax, 03h
  int 10h

  mov ah, 02h
  mov bh, 00
  mov dh, 00
  mov dl, 40
  int 10h

  mov ah ,09h
  lea dx, word9
  int 21h
  


        mov ah, 07h      
        int 21h

jmp stop
	
stop:
 mov ax, 4c00h
 int 21h

 main endp
 end main
