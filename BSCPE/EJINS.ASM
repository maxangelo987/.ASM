.model small
.code
org 100h

jmp simple

base1 dw ?
base2 dw ?

simctr db 5

simp	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh	
	db '			��				     ��	',0ah, 0dh
	db '			��				     ��	',0ah, 0dh
	db '			��	   S I M P L I C I T Y       �� ',0ah, 0dh
	db '			��				     �� ',0ah, 0dh
	db '			��                                   �� ',0ah, 0dh
	db '			��       Select the best answer      �� ',0ah, 0dh
	db '			��                                   �� ',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh,'$'

flip	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh	
	db '			��				     ��	',0ah, 0dh
	db '			��				     ��	',0ah, 0dh
	db '			��   T I L E  C O L O R  M E M O R Y �� ',0ah, 0dh
	db '			��				     �� ',0ah, 0dh
	db '			��                                   �� ',0ah, 0dh
	db '			��       Memorize the color of       �� ',0ah, 0dh
	db '			��        the tiles. Select the      �� ',0ah, 0dh
	db '			��          indicated color.         ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh,'$'

tap	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh	
	db '			��				     ��	',0ah, 0dh
	db '			��				     ��	',0ah, 0dh
	db '			��     C O L O R  M A J O R I T Y    �� ',0ah, 0dh
	db '			��				     �� ',0ah, 0dh
	db '			��                                   �� ',0ah, 0dh
	db '			��       Choose the letter of the    �� ',0ah, 0dh
	db '			��      tile which represents the    �� ',0ah, 0dh
	db '			��            most color	     ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh,'$'

dep	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh	
	db '			��				     ��	',0ah, 0dh
	db '			��				     ��	',0ah, 0dh
	db '			�� C O L O R  O F  D E C E P T I O N �� ',0ah, 0dh
	db '			��				     �� ',0ah, 0dh
	db '			��                                   �� ',0ah, 0dh
	db '			��       Indicated color must        �� ',0ah, 0dh
	db '			��    correspond to the background.  �� ',0ah, 0dh
	db '			��         Select the color which    ��	',0ah, 0dh
	db '			��            does not belong        ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��      Q-Upper Left  W-Upper Right  ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��      A-Lower Left  S-Lower Right  ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			��                                   ��	',0ah, 0dh
	db '			���������������������������������������	',0ah, 0dh,'$'



askii db '���ݱ� ������ '


simple proc near

way:
dec simctr

call delay

mov ax, 03h
int 10h


mov ch, 4
mov cl, 26
mov dh,20
mov dl,60
mov bh, 0ach
call scroll

lea dx, simp
call print

cmp simctr,0
if e call flips
if ne jmp way


simple endp
end simple

flips proc near


mov simctr, 5

way1:
dec simctr

call delay

mov ax, 03h
int 10h


mov ch, 4
mov cl, 26
mov dh,20
mov dl,60
mov bh, 0ach
call scroll

lea dx, flip
call print

cmp simctr,0
if e call deps
if ne jmp way1



ret
flips endp



deps proc near


mov simctr, 5

way2:
dec simctr

call delay

mov ax, 03h
int 10h


mov ch, 4
mov cl, 26
mov dh,20
mov dl,60
mov bh, 0ach
call scroll

lea dx, dep
call print

cmp simctr,0
if e call taps
if ne jmp way2



ret
deps endp


taps proc near


mov simctr, 5

way3:
dec simctr

call delay

mov ax, 03h
int 10h


mov ch, 4
mov cl, 26
mov dh,20
mov dl,60
mov bh, 0ach
call scroll

lea dx, flip
call print

cmp simctr,0
if e call stop
if ne jmp way3



ret
taps endp







