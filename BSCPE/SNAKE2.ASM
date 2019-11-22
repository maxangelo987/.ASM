.model small
.code
org 100h
jmp start
msg1 db 'Enter 4 character secret code:','$'
msg2 db 'Guess the code:','$'
msg3 db 'NO. of correct characters:','$'
msg4 db 'The secret code is:','$'
sud1 db ?
sud2 db ?
sud3 db ?
sud4 db ?
counter db 30h
p1 db 30h
p2 db 30h
p3 db 30h
p4 db 30h
start:
mov ah, 06h
mov bh, 07
mov cx, 0000h
mov dx, 184fh
int 10h
mov ah, 02
mov bh, 00
mov dx, 0000h
int 10h


mov ah, 09
lea dx, msg1
int 21h
one:
mov ah, 02
mov bh, 00
mov dx, 0100h
int 10h	
mov ah, 01h
int 21h
mov sud1, al	
mov ah, 02
mov bh, 00
mov dx, 0100h
int 10h
mov ah, 02h
mov dl, '*'
int 21h
two:	
mov ah, 01h
int 21h
mov sud2, al
mov ah, 02
mov bh, 00
mov dx, 0101h
int 10h
mov ah, 02h
mov dl, '*'
int 21h
three:
mov ah,01h


int 21h
mov sud3, al
mov ah, 02
mov bh, 00
mov dx, 0102h
int 10h
mov ah, 02h
mov dl, '*'
int 21h
four:
mov ah, 01h
int 21h
mov sud4, al
mov ah, 02
mov bh, 00
mov dx, 0103h
int 10h
mov ah, 02h
mov dl, '*'
int 21h
mov ah, 02
mov bh, 00
mov dx, 0200h
int 10h
tagnaon:	
mov ah, 09
lea dx, msg2
int 21h	
uno:	
mov ah, 01
int 21h


cmp al, sud1
if e jmp a50
if ne jmp a51
a50:
inc counter
cmp al, sud2
if e call b1
cmp al, sud3
if e call b1
cmp al, sud4
if e call b1
mov bl, counter
jmp a51
a51:
cmp al, sud2
if e jmp a60
if ne jmp a2
a60:
inc counter
cmp al, sud3
if e call b2
cmp al, sud4
if e call b2
cmp al, sud1
if e call b2
mov bh, counter
jmp a2
a2:
cmp al, sud3
if e jmp a70
if ne jmp a52
a70:
inc counter
cmp al, sud4
if e call b3
cmp al, sud1
if e call b3
cmp al, sud2
if e call b3
mov cl, counter
jmp a52
a52:
cmp al, sud4
if e jmp a80
if ne jmp dos
a80:
inc counter
cmp al, sud1
if e call b4
cmp al, sud2
if e call b4
cmp al, sud3
if e call b4
mov ch, counter
d1:
cmp bl, 31h
mov counter, 31h
cmp bh, 31h
mov counter, 31h
cmp cl, 31h
mov counter, 31h
cmp ch, 31h
mov counter, 31h
jmp dos
dos:	
mov counter, 31h
mov ah, 01
int 21h
cmp al, sud1
if e jmp a90
if ne jmp a53
a90:
inc counter
cmp al, sud2
if e call b5
cmp al, sud3
if e call b5
cmp al, sud4
if e call b5
mov bl, counter
jmp a53
a53:
cmp al, sud2
if e jmp a100
if ne jmp a3
a100:
inc counter
cmp al, sud3
if e call b6
cmp al, sud4
if e call b6
cmp al, sud1
if e call b6
mov bh, counter
jmp a3
a3:
cmp al, sud3
if e jmp a110
if ne jmp a54
a110:
inc counter
cmp al, sud4
if e call b7
cmp al, sud1
if e call b7
cmp al, sud2
if e call b7
mov cl, counter
jmp a54
a54:
cmp al, sud4
if e jmp a120
if ne jmp tres
a120:
inc counter
cmp al, sud1
if e call b8
cmp al, sud2
if e call b8
cmp al, sud3
if e call b8
mov ch, counter
d2:
cmp bl, 31h
add counter, 31h
cmp bh, 31h
add counter, 31h
cmp cl, 31h
add counter, 31h
cmp ch, 31h
add counter, 31h
jmp tres	
tres:
mov counter, 32h
mov ah, 01
int 21h
cmp al, sud1
if e jmp a130
if ne jmp a55
a130:
inc counter
cmp al, sud2
if e call b9
cmp al, sud3
if e call b9
cmp al, sud4
if e call b9
mov bl, counter
jmp a55
a55:
cmp al, sud2
if e jmp a140
if ne jmp a4
a140:
inc counter
cmp al, sud3
if e call b10
cmp al, sud4
if e call b10
cmp al, sud1
if e call b10
mov bh, counter
jmp a4
a4:
cmp al, sud3
if e jmp a150
if ne jmp a56
a150:
inc counter
cmp al, sud4
if e call b11
cmp al, sud1
if e call b11
cmp al, sud2
if e call b11
mov cl, counter
jmp a56
a56:
cmp al, sud4
if e jmp a160
if ne jmp quatro
a160:
inc counter
cmp al, sud1
if e call b12
cmp al, sud2
if e call b12
cmp al, sud3
if e call b12
mov ch, counter
d3:
cmp bl, 31h
add counter, 31h
cmp bh, 31h
add counter, 31h
cmp cl, 31h
add counter, 31h
cmp ch, 31h
add counter, 31h
jmp quatro
quatro:
mov counter, 33h
mov ah, 01
int 21h
cmp al, sud1
if e jmp a170
if ne jmp a57
 
a170:
 
inc counter
cmp al, sud2
if e call b13
cmp al, sud3
if e call b13
cmp al, sud4
if e call b13
mov bl, counter
jmp a57
a57:
cmp al, sud2
if e jmp a180
if ne jmp a5
a180:
inc counter
cmp al, sud3
if e call b14
cmp al, sud4
if e call b14
cmp al, sud1
if e call b14
mov bh, counter
jmp a5
a5:
cmp al, sud3
if e jmp a190
if ne jmp a58
a190:
inc counter
cmp al, sud4
if e call b15
cmp al, sud1
if e call b15
cmp al, sud2
if e call b15
mov cl, counter
jmp a58
a58:
cmp al, sud4
if e jmp a200
if ne jmp check
a200:
inc counter
cmp al, sud1
if e call b16
cmp al, sud2
if e call b16
cmp al, sud3
if e call b16
mov ch, counter
d4:
cmp bl, 31h
add counter, 31h
cmp bh, 31h
add counter, 31h
cmp cl, 31h
add counter, 31h
cmp ch, 31h
add counter, 31h
mov counter, 34h
jmp check
check:
mov ah, 02
mov bh, 00
mov dx, 0300h
int 10h	
mov ah, 09
lea dx, msg3
int 21h
mov ah, 02
mov dl, counter
int 21h
c1:
mov ah, 02
mov bh, 00
mov dx, 0400h
int 10h
mov ah, 09
lea dx, msg4
int 21h
mov ah, 02
mov dl, sud1
int 21h
mov ah, 02
mov dl, sud2
int 21h
mov ah, 02
mov dl, sud3
int 21h
mov ah, 02
mov dl, sud4
int 21h	
terminate:
int 20h
b1:
add counter, 30h
ret
b2:
add counter, 30h
ret
b3:
add counter, 30h
ret
b4:
add counter, 30h
ret
b5:
add counter, 30h
ret
b6:
add counter, 30h
ret
b7:
add counter, 30h
ret
b8:
add counter, 30h
ret
b9:
add counter, 30h
ret
b10:
add counter, 30h
ret
b11:
add counter, 30h
ret
b12:
add counter, 30h
ret
b13:
add counter, 30h
ret
b14:
add counter, 30h
ret
b15:
add counter, 30h
ret
b16:
add counter, 30h
ret

