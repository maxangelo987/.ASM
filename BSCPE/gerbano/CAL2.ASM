.model small
.code
org 100h

jmp  main
menu   db'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ         [Y] Press Y if Go To Year:                                          บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                       [*] 2015                                              บ',0ah,0dh
       db 'บ                       [*] 2016                                              บ',0ah,0dh
       db 'บ                       [*] 2017                                              บ',0ah,0dh
       db 'บ                       [*] 2018                                              บ',0ah,0dh
       db 'บ                       [*] 2019                                              บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ         [M] Press M if Go To Month                                          บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ         [T] Press T if Go To Today                                          บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ         [E] Press E for List of All Events                                  บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ         [C] To Create Events                                                บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ','$' 

year db 'YEARS 2016-2020 yet to code/INSERT','$'
month db 'MONTHs tet to code','$'
today db 'May 15, 2016','$'
events db'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ         NEW YEAR                 - JANUARY 1   -  FRIDAY                    บ',0ah,0dh
       db 'บ         CHINESE NEW YEAR         -                                          บ',0ah,0dh
       db 'บ         PEOPLE POWER ANNIVERSARY - FEBRUARY 25 - THURSDAY                   บ',0ah,0dh
       db 'บ         HOLY THURSDAY            - MARCH 24    - THURSDAY                   บ',0ah,0dh
       db 'บ         GOOD FRIDAY              - MARCH 25    - FRIDAY                     บ',0ah,0dh
       db 'บ         HOLY THURSDAY            - MARCH 26    - SATURDAY                   บ',0ah,0dh
       db 'บ         EASTER SUNDAY            - MARCH 27    - SUNDAY                     บ',0ah,0dh
       db 'บ         ARAW NG KAGITINGAN       - APRIL 9     - SATURDAY                   บ',0ah,0dh
       db 'บ         LABOR DAY                - MAY 1       - SUNDAY                     บ',0ah,0dh
       db 'บ         NATIONAL HEROES DAY      - AUGUST 29   - MONDAY                     บ',0ah,0dh
       db 'บ         BONIFACIO DAY            - NOVEMBER 30 - WEDNESDAY                  บ',0ah,0dh
       db 'บ         CHRISTMAS DAY            - DECEMBER 25 - SUNDAY                     บ',0ah,0dh
       db 'บ         RIZAL DAY                - DECEMBER 30 - FRIDAY                     บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                         [M] Press M to return Menu                          บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'บ                                                                             บ',0ah,0dh
       db 'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ','$' 

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
