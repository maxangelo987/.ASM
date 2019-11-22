
.mode small
.code
org 100h
jmp main                     ; jump to main

word1 db 'INPUT: ','$'     ; saving ASSEMBLY sa word1
word2 db ' ','$'     ; saving LANGUAGE sa word2
strlen1 dw $-word2           ; strlen1
word3 db 60 dup  ('$'),0ah,0dh     ; word3 will be now the EGAGUGNAL will save


gaylingo db 'GAY LINGO: ','$'     ; saving ASSEMBLY sa word1

space1 db '',0ah,0dh
       db '$'

plist1 label byte
maxlen db 59
actlen db ?
kybd db 60 dup ('$'),0ah,0dh

main proc near
  mov ax, 03h                ; clrscr
  int 10h
 
  mov ah, 09h                ; printing INPUT
  lea dx, word1   
  int 21h
 
  mov ah, 0ah		      ; SCANNING 
  lea dx, plist1
  int 21h
 
  
  mov ah, 09h                ; printing space1 
  lea dx, space1 
  int 21h

  mov ah, 09h                ; printing INPUT
  lea dx, word1   
  int 21h

  mov ah, 09h                ; printing kybd
  lea dx, kybd
  int 21h

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  mov bl, actlen
  sub bl, 1h
  mov bp, 0h

loop1:
  mov cl, kybd[bx]      
  mov word3[bp], cl
  inc bp
  dec bx
  cmp bx, -1h
  je here1
  jne loop1

here1:

 mov ah, 09h                ; printing space1 
  lea dx, space1 
  int 21h

  mov ah, 09h                ; printing gaylingo 
  lea dx, gaylingo 
  int 21h


  mov ah, 09h                ; printing INPUT
  lea dx, word3   
  int 21h




  mov ax,4c00h               ; terminator
  int 21h

main endp
end main

 
