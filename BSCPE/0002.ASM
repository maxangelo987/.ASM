; Activity 1, # 1: Execute the program to reverse Language
;                 in Assembly Language
; Output: Assembly egaugnaL

.mode small
.code
org 100h
jmp main                     ; jump to main

word1 db 'ASSEMBLY ','$'     ; saving ASSEMBLY sa word1
word2 db 'LANGUAGE','$'      ; saving LANGUAGE sa word2
strlen1 dw $-word2           ; strlen1
word3 db 8 dup ('0'),'$'     ; word3 will be now the EGAGUGNAL will save

main proc near
  mov ax, 03h                ; clrscr
  int 10h
 
  mov ah, 09h                ; printing Assembly
  lea dx, word1   
  int 21h

  lea si, word2              ; si is 8
  lea di, word3              ; di is 9

  add si, strlen1            ; 9
  add si, -2                 ; 9-2=7 start at index 7

  L1:
  mov al, [si]               ;
  mov [di],al                ;
  dec si                     ;
  inc di                     ; 
  loop L1                    ; loop until complete

  mov al, [si]               ;
  mov [di], al               ;
                             ; inc di/ mov dl,'$' /mov [di], dl
  Print:                     
  mov ah, 09h                ; printing EGAUGNAL
  lea dx, word3
  int 21h

  mov ax,4c00h               ; terminator
  int 21h

main endp
end main

 
