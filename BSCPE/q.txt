.model small
.code
org 100h

jmp main

order1 db 00h
order2 db 00h
order3 db 00h

alpha db 'abcdefghijklmnopqrstuvwxyz'

list1 label byte
max1 db 50
act1 db ?
kybd1 db 50 dup('$')

list2 label byte
max2 db 50
act2 db ?
kybd2 db 50 dup('$')

list3 label byte
max3 db 50
act3 db ?
kybd3 db 50 dup('$')

string1 db 50 dup('$')
string2 db 50 dup('$')
string3 db 50 dup('$')

prompt1 db 'Enter first string: $'
prompt2 db 'Enter second string: $'
prompt3 db 'Enter third string: $'

main proc near

mov ax, 03h
int 10h

mov ah, 09h
lea dx, prompt1
int 21h

mov ah, 0Ah
lea dx, list1
int 21h

mov ch, act1
lea si, kybd1
lea di, string1
call procc
mov bx, 00h
mov al, string1[bx]
call order_1

call endl

mov ah, 09h
lea dx, prompt2
int 21h

mov ah, 0Ah
lea dx, list2
int 21h

mov ch, act2
lea si, kybd2
lea di, string2
call procc
mov bx, 00h
mov al, string2[bx]
call order_2

call endl

mov ah, 09h
lea dx, prompt3
int 21h

mov ah, 0Ah
lea dx, list3
int 21h

mov ch, act3
lea si, kybd3
lea di, string3
call procc
mov bx, 00h
mov al, string3[bx]
call order_3

call endl
call check

stop:

mov ax, 4c00h
int 21h

main endp 
end main

procc proc near

loop1:
mov al, 'a'
cmp [si], al
if e jmp repl1
mov al, 'e'
cmp [si], al
if e jmp repl2
mov al, 'i'
cmp [si], al
if e jmp repl3
mov al, 'o'
cmp [si], al
if e jmp repl4
mov al, 'u'
cmp [si], al
if e jmp repl5
mov al, ' '
cmp [si], al 
if e jmp repl6

mov al, [si]
mov [di], al

inc si
inc di
dec ch
cmp ch, 0
if e ret

jmp loop1

repl1:
                                
mov al, 'e'
mov [di], al

inc si
inc di
dec ch
cmp ch, 0
if e ret
jmp loop1

repl2:

mov al, 'i'
mov [di], al

inc si
inc di
dec ch
cmp ch, 0
if e ret
jmp loop1

repl3:

mov al, 'o'
mov [di], al

inc si
inc di
dec ch
cmp ch, 0
if e ret
jmp loop1

repl4:
                                                   
mov al, 'u'
mov [di], al

inc si
inc di
dec ch
cmp ch, 0
if e ret
jmp loop1

repl5:
                             
mov al, ' '
mov [di], al

inc si
inc di
dec ch
cmp ch, 0
if e ret
jmp loop1

repl6:

inc si
dec ch
cmp ch, 0
if e ret
jmp loop1

procc endp

output proc near

mov ah, 09h
int 21h

call endl

ret

output endp

endl proc near

mov ah, 02h
mov dl, 10
int 21h

mov ah, 02h
mov dl, 13
int 21h

ret

endl endp

order_1 proc near

lea si, alpha

loop2:
inc order1
cmp [si], al
if e ret
inc si
jmp loop2

order_1 endp

order_2 proc near

lea si, alpha

loop3:
inc order2
cmp [si], al
if e ret
inc si
jmp loop3

order_2 endp

order_3 proc near

lea si, alpha

loop4:
inc order3
cmp [si], al
if e ret
inc si
jmp loop4

order_3 endp

check proc near

mov ah, order1
mov al, order2
cmp ah, al
if g jmp g1
if l jmp l1
if e jmp g1

g1:

mov al, order3 
cmp ah, al
if g jmp gg1
if l jmp gl1
if e jmp gg1

l1:

mov al, order3
cmp ah, al
if g jmp lg1
if l jmp ll1
if e jmp lg1

gg1:

mov ah, order2
cmp ah, al
if g jmp out1
if l jmp out2

gl1:

mov ah, order2
cmp ah, al
if l jmp out3

lg1:
mov ah, order2
cmp ah, al
if g jmp out4

ll1:

mov ah, order2
cmp ah, al
if g jmp out5
if l jmp out6

check endp

out1:

call endl

lea dx, string3
call output
lea dx, string2 
call output
lea dx, string1
call output

jmp stop

out2:

call endl

lea dx, string2
call output
lea dx, string3 
call output
lea dx, string1
call output

jmp stop

out3:

call endl

lea dx, string2
call output
lea dx, string1 
call output
lea dx, string3
call output

jmp stop

out4:

call endl

lea dx, string3
call output
lea dx, string1 
call output
lea dx, string2
call output

jmp stop

out5:

call endl

lea dx, string1
call output
lea dx, string3 
call output
lea dx, string2
call output

jmp stop

out6:

call endl

lea dx, string1
call output
lea dx, string2 
call output
lea dx, string3
call output

jmp stop






