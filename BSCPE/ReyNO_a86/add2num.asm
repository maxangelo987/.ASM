.model small
.code
.org 100h

jmp start
;****************************
;* Program to read in two   *
;* numbers and add them     *
;* and print out the result *
;****************************
  number db 7 dup 0   		; string which will store input and output
  n1     dw 0         		; two input variables
  n2     dw 0
  res    dw 0         		; one output variable
  cr     dw 13,10,"$"		; carriage return, line feed
start:
  mov dx,offset number
  mov bx,dx
  mov b[bx],5			; maximum 5 characters to read
  mov ah,0ah
  int 21h			; read in a string from keyboard
  mov bx,offset number +1
  mov cx,00
  mov cl,[bx]			; cl now contains number of digits
  mov ax,00			; ax will contain the number input
  usedigit:
    inc bx			; get next digit
    shl ax,1			; multiply by 10 using 2 shift ops and an add...
    mov dx,ax			; ... x*8 + x*2 = x*10 is the principle.
    shl ax,2
    add ax,dx			; ax is now multiplied by 10
    mov dx,00
    mov dl,[bx]			; dl has new character
    sub dx,48			; subtract 48 = ascii('0') to get number value
    add ax,dx			; add to ax
  loop usedigit			; loop statement= jmp if cx > 0
  cmp n1,00			; see if this is first or second number read
  jnz second
  mov n1,ax			; assign it to the first variable
  jmp start			; read in another number
second:
  mov n2,ax			; or assign to second variable and continue
print_cr:
  mov ah,09
  mov dx,offset cr		; print out a carriage return character
  int 21h
addnos:
  mov ax,n1			; move numbers to registers ...
  mov bx,n2
  add ax,bx			; ...and add
  mov res,ax			; store the result
  mov cx,00
setup_string:
  mov bx,offset number+7	; put a $ at end of buffer.
  mov b[bx],'$'			; we will fill buffer from back forwards
  dec bx
  mov ax,res
convert_decimal:
  mov dx,10
  div dl			; divide by 10
  add ah,48			; convert remainder to character
  mov [bx],ah			; and move to buffer for output
  dec bx
  mov ah,00			; quotient becomes new value
  cmp ax,00			; if we haven't got all digits divide again
  jnz convert_decimal
printout:
  mov dx,bx
  inc dx			; we decremented once too many, go forward one.
  mov ah,09
  int 21h			; output the string
close:
  mov ah,4ch
  mov al,00
  int 21h			; end program

start endp
end start


