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
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh	
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл	   S I M P L I C I T Y       Бл ',0ah, 0dh
	db '			Бл				     Бл ',0ah, 0dh
	db '			Бл                                   Бл ',0ah, 0dh
	db '			Бл       Select the best answer      Бл ',0ah, 0dh
	db '			Бл                                   Бл ',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh,'$'

flip	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh	
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл   T I L E  C O L O R  M E M O R Y Бл ',0ah, 0dh
	db '			Бл				     Бл ',0ah, 0dh
	db '			Бл                                   Бл ',0ah, 0dh
	db '			Бл       Memorize the color of       Бл ',0ah, 0dh
	db '			Бл        the tiles. Select the      Бл ',0ah, 0dh
	db '			Бл          indicated color.         Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh,'$'

tap	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh	
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл     C O L O R  M A J O R I T Y    Бл ',0ah, 0dh
	db '			Бл				     Бл ',0ah, 0dh
	db '			Бл                                   Бл ',0ah, 0dh
	db '			Бл       Choose the letter of the    Бл ',0ah, 0dh
	db '			Бл      tile which represents the    Бл ',0ah, 0dh
	db '			Бл            most color	     Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh,'$'

dep	db '								',0ah, 0dh	
	db '								',0ah, 0dh
	db '								',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh	
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл				     Бл	',0ah, 0dh
	db '			Бл C O L O R  O F  D E C E P T I O N Бл ',0ah, 0dh
	db '			Бл				     Бл ',0ah, 0dh
	db '			Бл                                   Бл ',0ah, 0dh
	db '			Бл       Indicated color must        Бл ',0ah, 0dh
	db '			Бл    correspond to the background.  Бл ',0ah, 0dh
	db '			Бл         Select the color which    Бл	',0ah, 0dh
	db '			Бл            does not belong        Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл      Q-Upper Left  W-Upper Right  Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл      A-Lower Left  S-Lower Right  Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Бл                                   Бл	',0ah, 0dh
	db '			Блллллллллллллллллллллллллллллллллллллл	',0ah, 0dh,'$'



askii db 'ллннБл ВВЭЭЭЭ '


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







