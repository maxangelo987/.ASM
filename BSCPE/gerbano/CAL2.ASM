.model small
.code
org 100h

jmp  main
menu   db'浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�         [Y] Press Y if Go To Year:                                          �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                       [*] 2015                                              �',0ah,0dh
       db '�                       [*] 2016                                              �',0ah,0dh
       db '�                       [*] 2017                                              �',0ah,0dh
       db '�                       [*] 2018                                              �',0ah,0dh
       db '�                       [*] 2019                                              �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�         [M] Press M if Go To Month                                          �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�         [T] Press T if Go To Today                                          �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�         [E] Press E for List of All Events                                  �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�         [C] To Create Events                                                �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�','$' 

year db 'YEARS 2016-2020 yet to code/INSERT','$'
month db 'MONTHs tet to code','$'
today db 'May 15, 2016','$'
events db'浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�         NEW YEAR                 - JANUARY 1   -  FRIDAY                    �',0ah,0dh
       db '�         CHINESE NEW YEAR         -                                          �',0ah,0dh
       db '�         PEOPLE POWER ANNIVERSARY - FEBRUARY 25 - THURSDAY                   �',0ah,0dh
       db '�         HOLY THURSDAY            - MARCH 24    - THURSDAY                   �',0ah,0dh
       db '�         GOOD FRIDAY              - MARCH 25    - FRIDAY                     �',0ah,0dh
       db '�         HOLY THURSDAY            - MARCH 26    - SATURDAY                   �',0ah,0dh
       db '�         EASTER SUNDAY            - MARCH 27    - SUNDAY                     �',0ah,0dh
       db '�         ARAW NG KAGITINGAN       - APRIL 9     - SATURDAY                   �',0ah,0dh
       db '�         LABOR DAY                - MAY 1       - SUNDAY                     �',0ah,0dh
       db '�         NATIONAL HEROES DAY      - AUGUST 29   - MONDAY                     �',0ah,0dh
       db '�         BONIFACIO DAY            - NOVEMBER 30 - WEDNESDAY                  �',0ah,0dh
       db '�         CHRISTMAS DAY            - DECEMBER 25 - SUNDAY                     �',0ah,0dh
       db '�         RIZAL DAY                - DECEMBER 30 - FRIDAY                     �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                         [M] Press M to return Menu                          �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '�                                                                             �',0ah,0dh
       db '藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�','$' 

create1 label byte
max1 db 40
act1 db ?
kybd1 db 41 dup ('$')

create db 'Create Events','$'






main proc near
     top:
	mov ax, 03h
        int 10h

        mov ah, 09h
        lea dx, menu
        int 21h
opt:
	mov ah, 07h
	int 21h

	cmp al, 'Y'
	if e jmp yr
	cmp al, 'M'
	if e jmp mn
	cmp al, 'T'
	if e jmp td
	cmp al, 'E'
	if e jmp ev
	cmp al, 'C'
	if e jmp cr
	cmp al, 'X'
	if e jmp exit
	jne opt

yr:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, year
	int 21h
	call bkmenu

mn:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, month
	int 21h
	call bkmenu

td:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, today
	int 21h
        call bkmenu

ev:
	mov ax, 03h
	int 10h

	mov ah, 09h
	lea dx, events
	int 21h
	call bkmenu
cr:
	mov ax, 03h
	int 10h

	mov ah, 0ah
	lea dx, create1
	int 21h
	jmp top
bkmenu proc near
ask1:
	mov ah, 07h
	int 21h

	cmp al, 'M'
	if e jmp top
	cmp al, 'm'
	if e jmp top
	jne ask1
ret
bkmenu endp




exit:
        int 20h
        main endp
        end main
