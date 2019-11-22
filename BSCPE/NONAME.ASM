.model small
.code
org 100h
jmp begin

coname db ' Max Angelo Perin BSCpE 3 ',0ah,0dh
       db ' CpE 311 - Computer System Organization with Assembly Language ',0ah,0dh
       db ' Assembly',0ah,0dh
       db ' An assembly language (or assembler language) ', 0ah,0dh
       db ' is a low-level programming language ',0ah,0dh
       db ' for a computer, or other programmable device, ', 0ah,0dh
       db ' in which there is a very strong',0ah,0dh
       db ' (generally one-to-one) correspondence between ', 0ah,0dh
       db ' the language and the architectures machine',0ah,0dh
       db ' code instructions.','$'

begin: main proc near

      mov ax, 03h  ; clrscreen
      int 10h

      mov ah, 09h    ; printing the screen
      lea dx, coname
      int 21h

      mov ax, 4c00h  ; terminating
      int 21h

     main endp
     end begin

