.model large
.code
org 100h

jmp main

ba1 dw ?
ba2 dw ?

twopl db 1

simctr db 5

fgamecount db ?
rafgames db ?
eqgamecount db ?
raequat db ?
taptilecount db ?
rataptile db ?
decepcount db ?
radecep db ?
resul1 db ?
resul2 db ?

ch1 db 'Q$'
ch2 db 'W$'
ch3 db 'E$'
ch4 db 'A$'
ch5 db 'S$'
ch6 db 'D$'

col db ?

row db ?


base1 dw ?
base2 dw ?

bro db 'Brown$'
gre db'Green','$'
red db'Red','$'
whi db'White','$'
blu db'Blue','$'
cyan db 'Cyan','$'
yel db 'Yellow','$'
mag db 'Magenta$'
count db ?

colr db'Choose the color that does not belong','$'


word1 db 'Type the letters/tiles in descending order they appear ','$' 
lettera db 'a$'
letterb db 'b$'
letterc db 'c$'
letterd db 'd$'
diss db ' Great$'

score db ?
;--gamebox declarations	
	gamebox1	db	41 dup (219), '$'
	gamebox2	db 	 2 dup (219),37 dup (32), 2 dup (219), '$' 
;-----------------
;----first game declarations	
	game1 db '4 + 4 - 4 * 4 = ?', '$'
	game1ch1 db '[A] -8', '$'
	game1ch2 db '[B] 16', '$'
	game1ch3 db '[C]  8', '$'
	game1ch4 db '[D]  4', '$'
;----------------
;-----2nd game declarations
game2 db '3 * 2 - 6 = ?', '$'
	game2ch1 db '[A]-12', '$'
	game2ch2 db '[B] 11', '$'
	game2ch3 db '[C]  1', '$'
	game2ch4 db '[D]  0', '$'
;-----3rd game declarations
game3 db '1 - 1 * 1  = ?', '$'
	game3ch1 db '[A]  1', '$'
	game3ch2 db '[B] -1', '$'
	game3ch3 db '[C]  0', '$'
	game3ch4 db '[D]  2', '$'
;-------4th game declarations
game4 db '1 + 1 * 1 = ?', '$'
	game4ch1 db '[A]  1', '$'
	game4ch2 db '[B] -1', '$'
	game4ch3 db '[C]  0', '$'
	game4ch4 db '[D]  2', '$'
;-----5th game declarations
game5 db '4 + _ = 5', '$'
	game5ch1 db '[A] -1', '$'
	game5ch2 db '[B]  1', '$'
	game5ch3 db '[C]  2', '$'
	game5ch4 db '[D]  2', '$'
;------------
game6 db ' _ + _ = 4', '$'
	game6ch1 db '[A] 2,1', '$'
	game6ch2 db '[B] 3,1', '$'
	game6ch3 db '[C] 3,2', '$'
	game6ch4 db '[D] 1,4', '$'
;------------
game7 db '_ + _ = 1', '$'
	game7ch1 db '[A] 1,1', '$'
	game7ch2 db '[B] 0,2', '$'
	game7ch3 db '[C] 1,2', '$'
	game7ch4 db '[D] 1,0', '$'
;------------
game8 db '_ - 3 = 0', '$'
	game8ch1 db '[A]  3', '$'
	game8ch2 db '[B]  1', '$'
	game8ch3 db '[C]  2', '$'
	game8ch4 db '[D] -3', '$'
;------------
game9 db '6 * _ = 30', '$'
	game9ch1 db '[A] -1', '$'
	game9ch2 db '[B]  7', '$'
	game9ch3 db '[C]  6', '$'
	game9ch4 db '[D]  5', '$'
;------------
game10 db '10 + _ = 5', '$'
	game10ch1 db '[A] -5', '$'
	game10ch2 db '[B]  5', '$'
	game10ch3 db '[C]  2', '$'
	game10ch4 db '[D] -1', '$'
;------------
game11 db '4 _ 1 = 5', '$'
	game11ch1 db '[A]  +', '$'
	game11ch2 db '[B]  -', '$'
	game11ch3 db '[C]  *', '$'
	game11ch4 db '[D]  /', '$'
;------------
game12 db '10 _ 4 = 6', '$'
	game12ch1 db '[A]  /', '$'
	game12ch2 db '[B]  +', '$'
	game12ch3 db '[C]  -', '$'
	game12ch4 db '[D]  *', '$'
;------------
game13 db '(1 _ 1) * 6 = 12', '$'
	game13ch1 db '[A]  *', '$'
	game13ch2 db '[B]  +', '$'
	game13ch3 db '[C]  -', '$'
	game13ch4 db '[D]  /', '$'
;------------
game14 db '4 _ (4 + 8) = -8', '$'
	game14ch1 db '[A]  -', '$'
	game14ch2 db '[B]  +', '$'
	game14ch3 db '[C]  *', '$'
	game14ch4 db '[D]  /', '$'
;------------
game15 db '(7 _ 8) + 5 = 61', '$'
	game15ch1 db '[A]  /', '$'
	game15ch2 db '[B]  +', '$'
	game15ch3 db '[C]  -', '$'
	game15ch4 db '[D]  *', '$'

inst db 'Memorize the color of Tiles; Enter M if memorized','$'
mem db '[M]EMORIZED','$'

start db '[P]LAY','$'
marg1 db 1 dup(201), 78 dup(205), 1 dup(187),'$'
marg2 db 1 dup(186), 78 dup(20h), 1 dup(186),'$'
marg3 db 1 dup(200), 78 dup(205), 1 dup(188),'$'
marg4 db 1 dup(186),'$'
marg5 db 1 dup(186), 78 dup(176), 1 dup(186),'$'

cur1 db 17 dup (001),'$'
cur2 db 4 dup(001),'MECHANICS', 4 dup(001),'$'
cur5 db 6 dup (001),'PLAY', 7 dup(001),'$'
cur3 db 6 dup (001),'QUIT', 7 dup(001),'$'
col1 db ?
row1 db ?

statres db 'Result: ','$'
statwin db 'Congratulations! You won the battle! ','$'
statlose db 'You loser! Here is your potato ;P','$'

mao db 'БВВВВВВВВВВВннЭЭЭЭЭ'
pili  db 'ENTER [C] TO CHOOSE','$'
direc db '[S]-LEFT; [D]-RIGHT','$'

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






run1 db '       ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh	
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл            лллллл    лллллл лллллл лллллл   лл    лл          ллл',0ah, 0dh
     db '	ллл            лл   лл   лл         лл лл    лл лл    лл          ллл',0ah, 0dh
     db '	ллл            лллллл    лллл   лллллл лл    лл лллллллл          ллл',0ah, 0dh
     db '	ллл            лл   лл   лл     лл  лл лл    лл    лл             ллл',0ah, 0dh
     db '	ллл    	       лл    лл  лл     лл  лл лл    лл    лл             ллл',0ah, 0dh
     db '	ллл            лл     лл лллллл лллллл лллллл      лл             ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл                              лллл                             ллл',0ah, 0dh
     db '	ллл	                       лл  лл                             ллл',0ah, 0dh
     db '	ллл                          лл    лл                             ллл',0ah, 0dh
     db '	ллл                                лл                             ллл',0ah, 0dh
     db '	ллл                                лл                             ллл',0ah, 0dh
     db '	ллл                                лл                             ллл',0ah, 0dh
     db '	ллл                           лллллллллллл                        ллл',0ah, 0dh
     db '	ллл                                                    		  ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh                                                                   
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'

run2 db '       ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh	
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл            лллллл    лллллл лллллл лллллл   лл    лл          ллл',0ah, 0dh
     db '	ллл            лл   лл   лл         лл лл    лл лл    лл          ллл',0ah, 0dh
     db '	ллл            лллллл    лллл   лллллл лл    лл лллллллл          ллл',0ah, 0dh
     db '	ллл            лл   лл   лл     лл  лл лл    лл    лл             ллл',0ah, 0dh
     db '	ллл    	       лл    лл  лл     лл  лл лл    лл    лл             ллл',0ah, 0dh
     db '	ллл            лл     лл лллллл лллллл лллллл      лл             ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл                              лллл                             ллл',0ah, 0dh
     db '	ллл	                       лл    лл                           ллл',0ah, 0dh
     db '	ллл                          лл       лл                          ллл',0ah, 0dh
     db '	ллл                                 лл                            ллл',0ah, 0dh
     db '	ллл                              лл                               ллл',0ah, 0dh
     db '	ллл                           лл                                  ллл',0ah, 0dh
     db '	ллл                           лллллллллл                          ллл',0ah, 0dh
     db '	ллл                                                    		  ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh                                                                   
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'

run3 db '       ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh	
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл            лллллл    лллллл лллллл лллллл   лл    лл          ллл',0ah, 0dh
     db '	ллл            лл   лл   лл         лл лл    лл лл    лл          ллл',0ah, 0dh
     db '	ллл            лллллл    лллл   лллллл лл    лл лллллллл          ллл',0ah, 0dh
     db '	ллл            лл   лл   лл     лл  лл лл    лл    лл             ллл',0ah, 0dh
     db '	ллл    	       лл    лл  лл     лл  лл лл    лл    лл             ллл',0ah, 0dh
     db '	ллл            лл     лл лллллл лллллл лллллл      лл             ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл                            лллллллллл                         ллл',0ah, 0dh
     db '	ллл	                               лл                         ллл',0ah, 0dh
     db '	ллл                            лллллллллл                         ллл',0ah, 0dh
     db '	ллл                                    лл                         ллл',0ah, 0dh
     db '	ллл                                    лл                         ллл',0ah, 0dh
     db '	ллл                            лллллллллл                         ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл                                                    		  ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh                                                                   
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'



cover          db ' Влллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'
cover1         db ' Влллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'
cover2         db ' Влллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'
cover3         db ' Влл                                               Влл',0ah, 0dh,'$'
cover4         db ' Влл      Вллллл  Вллллл   Влллллл Влл Влл   Влл   Влл',0ah, 0dh,'$'
cover5         db ' Влл      Влл Влл Влл Влл      Влл Влл Влллл Влл   Влл',0ah, 0dh,'$'
cover6         db ' Влл      Вллллл  Влллллл  Влллллл Влл ВллВллВлл   Влл',0ah, 0dh,'$'
cover7         db ' Влл      Влл Влл Влл Влл  Влл Влл Влл Влл Влллл   Влл',0ah, 0dh,'$'
cover8         db ' Влл      Вллллл  Влл  Влл Влллллл Влл Влл   Влл   Влл',0ah, 0dh,'$'
cover9         db ' Влл                                               Влл',0ah, 0dh,'$'
cover10        db ' Влл                                               Влл',0ah, 0dh,'$'
cover11        db ' Влл      Влл       Влл Влллллл Вллллл   Влллллл   Влл',0ah, 0dh,'$'
cover12        db ' Влл      Влл       Влл     Влл Влл Влл  Влл       Влл',0ah, 0dh,'$'
cover13        db ' Влл      Влл  Влл  Влл Влллллл Вллллл   Влллллл   Влл',0ah, 0dh,'$'
cover14        db ' Влл      Влл Влллл Влл Влл Влл Влл Влл      Влл   Влл',0ah, 0dh,'$'
cover15        db ' Влл       Вллл   Вллл  Влллллл Влл  Влл Влллллл   Влл',0ah, 0dh,'$'
cover16        db ' Влл                                               Влл',0ah, 0dh,'$'
cover17        db ' ВлллллллллллЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭлллллллллллл',0ah, 0dh,'$'
cover18        db ' ВлллллллллллCreated by: Ellaine Joy Ponteлллллллллллл',0ah, 0dh,'$'
cover19        db ' ВлллллллллллЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭлллллллллллл',0ah, 0dh,'$'

gamo db '       ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh	
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh
     db '	ллл								  ллл',0ah, 0dh
     db '	ллл 	       ллллллллл  лллллллл  лл	     лл	лллллллл	  ллл',0ah, 0dh
     db '	ллл            лл               лл  лллл   лллл лл                ллл',0ah, 0dh
     db '	ллл            лл               лл  лл  лллл лл лл                ллл',0ah, 0dh
     db '	ллл            лл   лллл  лллллллл  лл   лл  лл лллллл            ллл',0ah, 0dh
     db '	ллл    	       лл     лл  лл    лл  лл       лл лл                ллл',0ah, 0dh
     db '	ллл            ллллллллл  лллллллл  лл       лл лллллллл          ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллл	                                                          ллл',0ah, 0dh
     db '	ллл             ллллллл   лл    лл  лллллллл  лллллллл            ллл',0ah, 0dh
     db '	ллл            лл     лл  лл    лл  лл        лл     лл           ллл',0ah, 0dh
     db '	ллл            лл     лл  лл    лл  лл        лл      лл          ллл',0ah, 0dh
     db '	ллл            лл     лл  лл    лл  лллллл    лллллллл            ллл',0ah, 0dh
     db '	ллл            лл     лл   л    л   лл        лл    лл            ллл',0ah, 0dh
     db '	ллл             ллллллл     лллл    лллллллл  лл     лл           ллл',0ah, 0dh
     db '	ллл                                                               ллл',0ah, 0dh
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh                                                                   
     db '	ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл',0ah, 0dh,'$'

wel db'WELCOME TO BRAIN WARS!',1 dup (001),'$'

wel1 db'Brain Wars: The Scientific Battle Over the Existence of the Mind','$'
wel2 db 'and the Proof that will change our LIVES. ','$'
wel3 db 1 dup(201), 20 dup(205), 1 dup(187),'$'
wel4 db 1 dup(186), 20 dup(20h), 1 dup(186),'$'
wel5 db 1 dup(204), 20 dup(205), 1 dup(185),'$'
wel6 db 1 dup(200), 20 dup(205), 1 dup(188),'$'


ar1 db 1 dup(201), 37 dup(205), 1 dup(187),'$'
ar2 db 1 dup(186), 37 dup(20h), 1 dup(186),'$'
ar3 db 1 dup(204), 37 dup(205), 1 dup(185),'$'
ar4 db 1 dup(200), 37 dup(205), 1 dup(188),'$'


string1 label byte
maxlen1 db 15
actlen1 db ?
player1 db 16 dup('$')

string2 label byte
maxlen2 db 15
actlen2 db ?
player2 db 16 dup('$')


mainmenu db '[M]ain Menu ','$'
quit db '[E]xit ','$'

simpol db '[S]IMPLICITY','$'
codep db 'COLOR OF [D]ECEPTION','$'
ord db '[T]ILE COLOR MEMORY','$'
cmajor db '[C]OLOR MAJORITY','$'
bk db '[B]ack','$'

ctr db 10		   
		    			     
ako db 'CREATED BY: ELLAINE JOY PONTE','$'
plar1 db'PLAYER 1:','$'
plar2 db'PLAYER 2:','$'


main proc near

cmp twopl, 1
if e jmp diria
cmp twopl,2
if e jmp diria2

diria:

mov ax, 03h
int 10h

call delay
call design
call delay2

mov dh, 22
mov dl, 26
call cursor

lea dx, ako
call print

mov dh,23
mov dl, 0
call cursor

call menu



diria2:

mov score,0

mov ax, 03h
int 10h

call area2

mov dh, 20
mov dl, 58
call cursor

lea dx, start
call print

blk:
call ask

cmp al,'p'
if e call round1
cmp al,'P'
if e call round1
if ne jmp blk

call stop

main endp
end main

print proc near
	mov ah, 09h
	int 21h
ret
print endp

cursor proc near
	mov ah, 02h
	mov bh, 00h
	int 10h
ret
cursor endp

scroll proc near
	mov ax, 0600h
	int 10h
ret
scroll endp

ask proc near
	mov ah, 07h
	int 21h
ret
ask endp

stop proc near

mov ax, 4c00h
int 21h
ret
stop endp

delay proc near
	mov base2, 1000
loop1:
	mov base1, 0ffffh

loop2:
	nop

	dec base1 
	jnz loop2

	dec base2
	jnz loop1
ret
delay endp
;-------------------------------------margin


delay2 proc near

mov base2, 10000

loopwan:
mov base1, 0ffffh

loopto:
nop

dec base1 
jnz loopto

dec base2
jnz loopwan


ret
delay2 endp
;-------------------------------------menu
menu proc near

mov ch, 0
mov cl, 0
mov dh, 22
mov dl, 79
mov bh, 72h
call scroll
call margin2
mov ch,20
mov cl, 31
mov dh, 20
mov dl, 50
mov bh, 7eh
call scroll


mov dh, 20
mov dl,31
call cursor

lea dx, pili
call print

mov ch,19
mov cl, 31
mov dh, 19
mov dl, 50
mov bh, 7eh
call scroll


mov dh, 19
mov dl,31
call cursor

lea dx, direc
call print

mov ch, 6
mov cl, 6
mov dh, 16
mov dl, 26
mov bh, 1eh
call scroll


mov ch, 6
mov cl, 30
mov dh, 16
mov dl, 50
mov bh, 1eh
call scroll

mov dh,7
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,8
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,9
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,10
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,11
mov dl, 32
call cursor

lea dx, cur5
call print

mov dh,12
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,13
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,14
mov dl, 32
call cursor

lea dx, cur1
call print

mov dh,15
mov dl, 32
call cursor

lea dx, cur1
call print

mov ch, 6
mov cl, 54
mov dh, 16
mov dl, 74
mov bh, 1eh
call scroll

mov ch, 6
mov cl, 6
mov dh, 16
mov dl, 26
mov bh, 1fh
call scroll

mov dh,7
mov dl,8
call cursor

lea dx, cur1
call print

mov dh,8
mov dl,8
call cursor

lea dx, cur1
call print

mov dh,9
mov dl,8
call cursor

lea dx, cur1
call print

mov dh,10
mov dl,8
call cursor

lea dx, cur1
call print

mov dh,11
mov dl,8
call cursor

lea dx, cur2
call print

mov dh,12
mov dl,8
call cursor

lea dx, cur1
call print


mov dh,13
mov dl,8
call cursor

lea dx, cur1
call print


mov dh,14
mov dl,8
call cursor

lea dx, cur1
call print


mov dh,15
mov dl,8
call cursor

lea dx, cur1
call print

mov ch, 6
mov cl, 54
mov dh, 16
mov dl, 74
mov bh, 1dh
call scroll
;-

mov dh,7
mov dl,56
call cursor

lea dx, cur1
call print

mov dh,8
mov dl,56
call cursor

lea dx, cur1
call print

mov dh,9
mov dl,56
call cursor

lea dx, cur1
call print

mov dh,10
mov dl,56
call cursor

lea dx, cur1
call print

mov dh,11
mov dl,56
call cursor

lea dx, cur3
call print

mov dh,12
mov dl,56
call cursor

lea dx, cur1
call print


mov dh,13
mov dl,56
call cursor

lea dx, cur1
call print


mov dh,14
mov dl,56
call cursor

lea dx, cur1
call print


mov dh,15
mov dl,56
call cursor

lea dx, cur1
call print
;-
call brow

ret
menu endp
;---------------------------------------browse
brow proc near

mov dh,16
mov dl, 26
call cursor

mov row1, 16
mov col1, 26


;------neuts are for equalizing and every subfunction is for comparison of cursor position

loopx:
	call ask
	cmp al, 's'
	if e jmp leftz
	cmp al, 'S'
	if e jmp leftz
	cmp al, 'd'
	if e jmp rightz
	cmp al, 'D'
	if e jmp rightz
	cmp al, 'x'
	if e call stop
	cmp al,'c'
	if e jmp coor
	cmp al, 'C'
	if e jmp coor
	if ne jmp loopx

leftz:
	sub col1, 24
	cmp col1,26
	if e jmp placez
	if ne jmp leftz1

leftz1:
	cmp col1, 50
	if e jmp placez
	if ne jmp neut2


neut2:

	add col1, 24
	jmp loopx

rightz:
	add col1, 24
	cmp col1, 50
	if e jmp placez
	if ne jmp rightz1

rightz1:
	cmp col1, 74
	if e jmp placez
	if ne jmp neut

neut:

        sub col1, 24
	jmp loopx

placez:

mov dh, row1
mov dl, col1
call cursor

jmp loopx



coor:
	cmp dl, 26
	if e call mechanics
	cmp dl, 50
	if e call play
	cmp dl, 74
	if e call stop

ret
brow endp
;-------------------------------margin2 background

margin2 proc near
mov dh, 0
mov dl, 0
call cursor



lea dx, marg1
call print


mov dh, 1
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 2
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 3
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 4
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 5
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 6
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 7
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 8
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 9
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 10
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 11
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 12
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 13
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 14
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 15
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 16
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 17
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 18
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 19
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 20
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 21
mov dl, 0
call cursor
lea dx, marg5
call print

mov dh, 22
mov dl, 0
call cursor
lea dx, marg3
call print


ret
margin2 endp

;----------------------------------------------------mechanicsssssssssssssss
mechanics proc near

mov ch,0
mov cl,0
mov dh, 22
mov dl, 79
mov bh, 0bdh
call scroll

call margin2


mov dh, 2
mov dl, 29
call cursor

lea dx, wel
call print


mov dh, 4
mov dl, 11
call cursor

lea dx, wel1
call print


mov dh, 5
mov dl, 23
call cursor

lea dx, wel2
call print

mov dh, 7
mov dl, 3
call cursor

lea dx, wel3
call print

mov dh, 8
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 9
mov dl, 3
call cursor

lea dx, wel5
call print

mov dh, 10
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 11
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 12
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 13
mov dl, 3
call cursor

lea dx, wel6
call print
;--

mov dh, 15
mov dl, 3
call cursor

lea dx, wel3
call print

mov dh, 16
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 17
mov dl, 3
call cursor

lea dx, wel5
call print

mov dh, 18
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 19
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 20
mov dl, 3
call cursor

lea dx, wel4
call print

mov dh, 21
mov dl, 3
call cursor

lea dx, wel6
call print

;-

mov dh, 7
mov dl, 29
call cursor


lea dx, wel3
call print

mov dh, 8
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 9
mov dl, 29
call cursor

lea dx, wel5
call print

mov dh, 10
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 11
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 12
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 13
mov dl, 29
call cursor

lea dx, wel6
call print

;-

mov dh, 15
mov dl, 29
call cursor


lea dx, wel3
call print

mov dh, 16
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 17
mov dl, 29
call cursor

lea dx, wel5
call print

mov dh, 18
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 19
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 20
mov dl, 29
call cursor

lea dx, wel4
call print

mov dh, 21
mov dl, 29
call cursor

lea dx, wel6
call print
;-



mov dh, 15
mov dl, 58
call cursor

lea dx, mainmenu
call print

mov dh, 20
mov dl, 60
call cursor

lea dx, quit
call print

mov dh, 8
mov dl, 8
call cursor

lea dx, simpol
call print

mov dh, 16
mov dl, 4
call cursor

lea dx, codep
call print


mov dh, 16
mov dl, 31
call cursor

lea dx, ord
call print


mov dh, 8
mov dl, 31
call cursor

lea dx, cmajor
call print





diri:

mov dh, 18
mov dl, 63
call cursor
call ask
cmp al,'M'
if e call menu
cmp al,'m'
if e call menu
cmp al,'E'
if e call stop
cmp al,'e'
if e call stop
cmp al, 's'
if e jmp simple1
cmp al,'S'
if e jmp simple1
cmp al,'d'
if e jmp deps1
cmp al,'D'
if e jmp deps1
cmp al,'t'
if e jmp flips1
cmp al,'T'
if e jmp flips1
cmp al,'c'
if e jmp taps1
cmp al,'C'
if e jmp taps1
if ne jmp diri

simple1:

call simple

mov ch, 22
mov cl, 70
mov dh, 22
mov dl, 78
mov bh, 7ch
call scroll

mov dh, 22
mov dl, 70
call cursor

lea dx, bk
call print

call ask
cmp al,'b'
if e call mechanics
if ne jmp simple1


deps1:

call deps

mov ch, 22
mov cl, 70
mov dh, 22
mov dl, 78
mov bh, 7ch
call scroll


mov dh, 22
mov dl, 70
call cursor

lea dx, bk
call print
call ask
cmp al,'b'
if e call mechanics
if ne jmp deps1

flips1:

call flips
mov ch, 22
mov cl, 70
mov dh, 22
mov dl, 78
mov bh, 7ch
call scroll


mov dh, 22
mov dl, 70
call cursor

lea dx, bk
call print

call ask
cmp al,'b'
if e call mechanics
if ne jmp flips1

taps1:

call taps

mov ch, 22
mov cl, 70
mov dh, 22
mov dl, 78
mov bh, 7ch
call scroll


mov dh, 22
mov dl, 70
call cursor

lea dx, bk
call print

call ask
cmp al,'b'
if e call mechanics
if ne jmp taps1

ret
end mechanics

;--------------------playyyyy
play proc near


mov ax, 03h
int 10h

mov ch, 0
mov cl, 0
mov dh, 22
mov dl, 38
mov bh, 1eh
call scroll

mov ch, 0
mov cl, 41
mov dh, 22
mov dl, 79
mov bh, 5bh
call scroll

call area

ret
play endp

area proc near

mov score, 0

mov dh, 0
mov dl, 0
call cursor

lea dx, ar1
call print


mov dh, 1
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 2
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 3
mov dl, 0
call cursor
lea dx, ar3
call print

mov dh, 4
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 5
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 6
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 7
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 8
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 9
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 10
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 11
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 12
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 13
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 14
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 15
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 16
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 17
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 18
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 19
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 20
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 21
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 22
mov dl, 0
call cursor
lea dx, ar4
call print

;-player2


mov dh, 0
mov dl, 41
call cursor

lea dx, ar1
call print


mov dh, 1
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 2
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 3
mov dl, 41
call cursor
lea dx, ar3
call print

mov dh, 4
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 5
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 6
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 7
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 8
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 9
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 10
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 11
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 12
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 13
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 14
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 15
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 16
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 17
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 18
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 19
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 20
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 21
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 22
mov dl, 41
call cursor
lea dx, ar4
call print

mov dh,2
mov dl,3
call cursor


lea dx, plar1
call print

mov dh,2
mov dl,45
call cursor

lea dx, plar2
call print



mov dh,11
mov dl,3
call cursor

lea dx, statres
call print

;-


mov dh,11
mov dl,45
call cursor

lea dx, statres
call print


askname:
mov ch, 02
mov cl, 12
mov dh,2
mov dl, 37
mov bh,1eh
call scroll
mov dh,2
mov dl, 12
call cursor

mov ah, 0ah
lea dx, string1
int 21h



printname1:
mov ch, 02
mov cl, 12
mov dh,2
mov dl, 37
mov bh,1eh
call scroll

mov dh, 2
mov dl, 12
call cursor

lea dx, player1
call print

jmp askname2

askname2:

call delay
mov ch, 02
mov cl, 54
mov dh, 02
mov dl,77
mov bh, 5bh
call scroll
mov dh, 2
mov dl, 54
call cursor

mov ah, 0ah
lea dx, string2
int 21h

printname2:

mov ch, 02
mov cl, 54
mov dh, 02
mov dl,77
mov bh, 5bh
call scroll

mov dh, 2
mov dl,54
call cursor

lea dx, player2
call print

mov dh,20
mov dl, 15
call cursor

lea dx, start
call print
ax1:
;-----------------------------------------------------diri ko gatwag first game di parandom
call ask
cmp al,'p'
if e call round1
cmp al,'P'
if e call round1
if ne jmp ax1
ret
area endp

design proc near

mov dh, 3
mov dl, 14
call cursor

lea dx, cover1
call print

mov dh, 4
mov dl, 14
call cursor

lea dx, cover2
call print

mov dh, 5
mov dl, 14
call cursor

lea dx, cover3
call print

mov dh, 6
mov dl, 14
call cursor

lea dx, cover4
call print

mov dh, 7
mov dl, 14
call cursor

lea dx, cover5
call print

mov dh, 8
mov dl, 14
call cursor

lea dx, cover6
call print

mov dh, 9
mov dl, 14
call cursor

lea dx, cover7
call print

mov dh, 10
mov dl, 14
call cursor

lea dx, cover8
call print

mov dh, 11
mov dl, 14
call cursor

lea dx, cover9
call print

mov dh, 12
mov dl, 14
call cursor

lea dx, cover10
call print

mov dh, 13
mov dl, 14
call cursor

lea dx, cover11
call print

mov dh, 14
mov dl, 14
call cursor

lea dx, cover12
call print

mov dh, 15
mov dl, 14
call cursor

lea dx, cover13
call print

mov dh, 16
mov dl, 14
call cursor

lea dx, cover14
call print

mov dh, 17
mov dl, 14
call cursor

lea dx, cover15
call print

mov dh, 18
mov dl, 14
call cursor

lea dx, cover16
call print

mov dh, 19
mov dl, 14
call cursor

lea dx, cover17
call print

mov dh, 20
mov dl, 14
call cursor

lea dx, cover18
call print

mov dh, 21
mov dl, 14
call cursor

lea dx, cover19
call print

ret
design endp

round1 proc near

	mov ax, 03h
	int 10h
	mov dx, 0000h
	call cursor
	
	mov cx, 0000h
	mov dx, 184fh
	mov bh, 04h
	call scroll
	
	lea dx, run1
	call print

	call delay2

	mov dx, 0000h
	call cursor
	
	mov cx, 0000h
	mov dx, 184fh
	mov bh, 04h
	call scroll
	
	lea dx, run2
	call print
	call delay2

	mov dx, 0000h
	call cursor
	
	mov cx, 0000h
	mov dx, 184fh
	mov bh, 04h
	call scroll
	
	lea dx, run3
	call print


	call delayrounds
;---------start flipgames
	mov fgamecount, 0
	mov rafgames, 0
	mov raequat, 0
	mov eqgamecount, 0
	mov taptilecount, 0
	mov rataptile, 0
	mov radecep, 0
	mov decepcount, 0
	
	mov ax, 03h
	int 10h

	mov dh, 2
	mov dl, 17
	call cursor

	lea dx, inst
	call print
fgames3:
	cmp fgamecount, 10
	if ne jmp radomingfgame
	if e  jmp pronextcat
radomingfgame:
	call ranfgames
	cmp rafgames, 0
	if e call flipgame1
	cmp rafgames, 1
	if e call flipgame2
	cmp rafgames, 2
	if e call flipgame3
	cmp rafgames, 3
	if e call flipgame4
	cmp rafgames, 4
	if e call flipgame5
	cmp rafgames, 5
	if e call flipgame6
	cmp rafgames, 6
	if e call flipgame7
	cmp rafgames, 7
	if e call flipgame8
	cmp rafgames, 8
	if e call flipgame9
	cmp rafgames, 9
	if e call flipgame10
pronextcat:
	mov ax, 03h
	int 10h
randomeqgame:
	call raneqgame
	cmp raequat, 0
	if e call game1p
	cmp raequat, 1
	if e call game2p
	cmp raequat, 2
	if e call game3p
	cmp raequat, 3
	if e call game4p
	cmp raequat, 4
	if e call game5p
	cmp raequat, 5
	if e call game6p
	cmp raequat, 6
	if e call game7p
	cmp raequat, 7
	if e call game8p
	cmp raequat, 8
	if e call game9p
	cmp raequat, 9
	if e call game10p
	cmp raequat, 10
	if e call game11p
	cmp raequat, 11
	if e call game12p
	cmp raequat, 12
	if e call game13p
	cmp raequat, 13
	if e call game14p
	cmp raequat, 14
	if e call game15p
equagame5:
	cmp eqgamecount, 15
	if ne jmp randomeqgame
	if e jmp pronextcat2
pronextcat2:
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,79
	mov bh,07h
	call scroll
randomingtap:
	call rantaptile
	
	cmp rataptile, 0
	if e call color1
	cmp rataptile, 1
	if e call color2
	cmp rataptile, 2
	if e call color3
	cmp rataptile, 3
	if e call color4
	cmp rataptile, 4
	if e call color5
	cmp rataptile, 5
	if e call color6
	cmp rataptile, 6
	if e call color7
	cmp rataptile, 7
	if e call color8
	cmp rataptile, 8
	if e call color9
	cmp rataptile, 9
	if e call color10
taptile3:	
	cmp taptilecount, 10
	if ne jmp randomingtap
	if e jmp pronextcat3
pronextcat3:
	mov ax, 03h
	int 10h

	mov dh, 2
	mov dl, 22
	call cursor

	lea dx, colr
	call print
decepgame3:
	cmp decepcount, 10
	if e call gameover
	if ne jmp randomdecep
randomdecep:
	call randecepgames
	
	cmp radecep, 0
	if e call boxes1
	cmp radecep, 1
	if e call boxes2
	cmp radecep, 2
	if e call boxes3
	cmp radecep, 3
	if e call boxes4
	cmp radecep, 4
	if e call boxes5
	cmp radecep, 5
	if e call boxes6
	cmp radecep, 6
	if e call boxes7
	cmp radecep, 7
	if e call boxes8
	cmp radecep, 8
	if e call boxes9
	cmp radecep, 9
	if e call boxes10
ret
round1 endp

;-----flipgames
flipgame1 proc near

mov bh, 65h
call tilechoice1

mov bh, 56h
call tilechoice2

mov bh, 56h
call tilechoice3

call abc
call memo

ngayo:
call ask
cmp al, 'm'
if e jmp flipques1
cmp al,'x'
if e call gameover
if ne jmp ngayo

flipques1:

call black

mov bh, 56h
call q1

mov bh, 65h
call q2

mov bh, 56h
call q3

call abc

mov dh, 20
mov dl, 36
call cursor

balik:
call ask
cmp al,'b'
if e jmp second1
cmp al,'c'
if e jmp second2
cmp al,'x'
if e call gameover
if ne jmp balik

second1:
call tilechoice2
mov bh, 56h
call scroll
call ask
cmp al,'a'
if e jmp third
cmp al,'x'
if e call gameover
if ne jmp second1

second2:
call tilechoice3
mov bh, 56h
call scroll

call ask
cmp al,'a'
if e jmp third
cmp al,'x'
if e call gameover
if ne jmp second2

third:
call tilechoice1
mov bh, 65h
call scroll

call ask
cmp al,'b'
if e jmp sakto1
cmp al,'x'
if e call gameover
cmp al, 'c'
if e jmp sakto2
cmp al,'x'
if e call gameover
if ne call third

sakto1:
call tilechoice2
mov bh, 56h
call scroll
jmp scinc

sakto2:
call tilechoice3
mov bh, 56h
call scroll
jmp scinc

scinc:
inc score
call escoring
inc fgamecount
jmp fgames3
ret
flipgame1 endp

memo proc near

mov ch,20
mov cl,36
mov dh,20
mov dl,47
mov bh,0e1h
call scroll

mov dh, 20
mov dl, 36
call cursor

lea dx, mem
call print

mov dh, 20
mov dl, 47 
call cursor

ret
memo endp
;-----------coordinates para background ray alisdan

black proc near

mov ch, 0
mov cl, 0
mov dh, 24
mov dl, 79
mov bh,00h
call scroll



ret
black endp


q1 proc near

mov ch,2
mov cl,32
mov dh,3
mov dl,37
call scroll

ret
q1 endp

q2 proc near

mov ch,2
mov cl,39
mov dh,3
mov dl,44
call scroll

ret
q2 endp

q3 proc near

mov ch,2
mov cl,46
mov dh,3
mov dl,51
call scroll

ret
q3 endp

tilechoice1 proc near

mov ch,10
mov cl,23
mov dh,15
mov dl,33
call scroll

ret
tilechoice1 endp

tilechoice2 proc near

mov ch,10
mov cl,35
mov dh,15
mov dl,45
call scroll

ret
tilechoice2 endp

tilechoice3 proc near

mov ch,10
mov cl,47
mov dh,15
mov dl,57
call scroll

ret
tilechoice3 endp

abc proc near

mov dh,12
mov dl,28
call cursor

mov ch,12
mov cl,28
mov dh,12
mov dl,28
mov bh, 07h
call scroll

lea dx, lettera
call print

mov dh,12
mov dl,40
call cursor

mov ch,12
mov cl,40
mov dh,12
mov dl,40
mov bh, 07h
call scroll
lea dx, letterb
call print

mov dh,12
mov dl,52
call cursor

mov ch,12
mov cl,52
mov dh,12
mov dl,52
mov bh, 07h
call scroll

lea dx, letterc
call print
ret
abc endp

flipgame2 proc near

mov ax, 03h
int 10h

mov bh, 0e0h
call tilechoice1

mov bh,  0a0h
call tilechoice2

mov bh, 0b0h
call tilechoice3

call abc

call memo

as1:

	call ask
	cmp al,'m'
	if e jmp fq1
	cmp al,'x'
	if e call gameover
	if ne jmp as1
fq1:
call black
call abc

mov bh, 0b0h
call q1

mov bh, 0e0h
call q2

mov  bh, 0a0h
call q3

an1:
call ask
cmp al,'c'
if e jmp sk1

cmp al,'x'
if e call gameover
if ne jmp an1

sk1:

mov bh, 0b0h
call tilechoice3
call ask
cmp al, 'a'
if e jmp sk2
cmp al,'x'
if e call gameover
if ne jmp sk1

sk2:

mov bh, 0e0h 
call tilechoice1
call ask
cmp al, 'b'
if e jmp sk3
cmp al,'x'
if e call gameover
if ne jmp sk2

sk3:
mov bh,0a0h
call tilechoice2
inc score
inc fgamecount
jmp fgames3
ret
flipgame2 endp

flipgame3 proc near
mov ax, 03h
int 10h

mov bh, 32h
call tilechoice1

mov bh,  45h
call tilechoice2

mov bh, 0d0h
call tilechoice3


call abc

call memo

as2:

	call ask
	cmp al,'m'
	if e jmp fq2
	cmp al,'x'
	if e call gameover
	if ne jmp as2
fq2:
call black
call abc

mov bh, 32h
call q1

mov bh, 45h
call q2

mov  bh, 0d0h
call q3

hi:	
call ask
cmp al, 'a'
if e jmp st1
cmp al,'x'
if e call gameover
if ne jmp hi

st1:
mov bh, 32h
call tilechoice1
call ask
cmp al, 'b'
if e jmp st2
cmp al,'x'
if e call gameover
if ne jmp st1

st2:

mov bh, 45h
call tilechoice2
call ask
cmp al,'c'
if e jmp st3
cmp al,'x'
if e call gameover
if ne jmp st2 

st3:
mov bh, 0d0h
call tilechoice3
inc score
inc fgamecount
jmp fgames3

ret
flipgame3 endp

flipgame4 proc near
mov ax, 03h
int 10h

mov bh, 32h
call tilechoice1

mov bh,  12h
call tilechoice2

mov bh, 96h
call tilechoice3


call abc

call memo

as3:

	call ask
	cmp al,'m'
	if e jmp fq3
	cmp al,'x'
	if e call gameover
	if ne jmp as3
fq3:
call black
call abc

mov bh, 12h
call q1

mov bh, 32h
call q2

mov  bh, 96h
call q3

ad:

call ask
cmp al, 'b'
if e jmp ad1
cmp al,'x'
if e call gameover
if ne jmp ad

ad1:

mov bh, 12h
call tilechoice2
call ask
cmp al,'a'
if e jmp ad2
cmp al,'x'
if e call gameover
if ne jmp ad1

ad2:
mov bh, 32h
call tilechoice1
call ask
cmp al,'c'
if e jmp ad3
cmp al,'x'
if e call gameover
if ne jmp ad2

ad3:
mov bh, 96h
call tilechoice3
inc score
inc fgamecount
jmp fgames3
ret
flipgame4 endp

flipgame5 proc near
mov ax, 03h
int 10h

mov bh, 0e0h
call tilechoice1

mov bh,  0a0h
call tilechoice2

mov bh, 0b0h
call tilechoice3


call abc

call memo

as4:

	call ask
	cmp al,'m'
	if e jmp fq4	
	cmp al,'x'
	if e call gameover
	if ne jmp as4
fq4:
call black
call abc

mov bh, 0b0h
call q1

mov bh, 0e0h
call q2

mov  bh, 0a0h
call q3


aq:

call ask
cmp al,'c'
if e jmp aq1
cmp al,'x'
if e call gameover
if ne jmp aq2

aq1:
mov bh, 0b0h
call tilechoice3
call ask
cmp al, 'a'
if e jmp aq2
cmp al,'x'
if e call gameover
if ne jmp aq1

aq2:
mov bh, 0a0h
call tilechoice1
call ask
cmp al,'b'
if e jmp aq3
cmp al,'x'
if e call gameover
if ne jmp aq2

aq3:

mov bh, 0e0h
call tilechoice2
inc score
inc fgamecount
jmp fgames3
ret
flipgame5 endp

flipgame6 proc near
mov ax, 03h
int 10h

mov bh, 0e0h
call tilechoice1

mov bh,  0f0h
call tilechoice2

mov bh, 0b0h
call tilechoice3


call abc

call memo

as5:

	call ask
	cmp al,'m'
	if e jmp fq5
	cmp al,'x'
	if e call gameover
	if ne jmp as5
fq5:
call black
call abc

mov bh, 0b0h
call q1

mov bh, 0e0h
call q2

mov  bh, 0f0h
call q3

aha:

call ask
cmp al,'c'
if e jmp ah1
cmp al,'x'
if e call gameover
if ne jmp aha

ah1:
mov bh, 0b0h
call tilechoice1
call ask
cmp al,'a'
if e jmp ah2
cmp al,'x'
if e call gameover
if ne jmp ah1

ah2:
mov bh, 0e0h
call tilechoice3
call ask
cmp al,'b'
if e jmp ah3
cmp al,'x'
if e call gameover
if ne jmp ah2

ah3:
mov bh,0f0h
call tilechoice2
inc score
inc fgamecount
jmp fgames3
ret
flipgame6 endp

flipgame7 proc near

mov ax, 03h
int 10h

mov bh, 32h
call tilechoice1

mov bh,  87h
call tilechoice2

mov bh, 77h
call tilechoice3


call abc

call memo

as6:

	call ask
	cmp al,'m'
	if e jmp fq6
	cmp al,'x'
if e call gameover
if ne jmp as6
fq6:
call black
call abc

mov bh, 87h
call q1

mov bh, 32h
call q2

mov  bh, 77h
call q3

aw:

call ask
cmp al, 'b'
if e jmp aw1
cmp al,'x'
if e call gameover
if ne jmp aw

aw1:

mov bh, 87h
call tilechoice2
call ask
cmp al,'a'
if e jmp aw2
cmp al,'x'
if e call gameover
if ne jmp aw1

aw2:
mov bh, 32h
call tilechoice1
call ask
cmp al,'c'
if e jmp aw3
cmp al,'x'
if e call gameover
if ne jmp aw2

aw3:
mov bh, 77h
call tilechoice3
inc scor
inc fgamecount
jmp fgames3
ret
flipgame7 endp

flipgame8 proc near

mov ax, 03h
int 10h

mov bh, 0d0h
call tilechoice1

mov bh,  0f0h
call tilechoice2

mov bh, 0c0h
call tilechoice3


call abc

call memo

as7:

	call ask
	cmp al,'m'
	if e jmp fq7
	cmp al,'x'
if e call gameover
if ne jmp as7
fq7:
call black
call abc

mov bh, 0d0h
call q1

mov bh, 0f0h
call q2

mov  bh, 0c0h
call q3
call memo

hiq:	
call ask
cmp al, 'a'
if e jmp stq1
cmp al,'x'
if e call gameover
if ne jmp hiq

stq1:
mov bh, 0d0h
call tilechoice1
call ask
cmp al, 'b'
if e jmp stq2
cmp al,'x'
if e call gameover
if ne jmp stq1

stq2:

mov bh, 0f0h
call tilechoice2
call ask
cmp al,'c'
if e jmp stq3
cmp al,'x'
if e call gameover
if ne jmp stq2 

stq3:
mov bh, 0c0h
call tilechoice3
inc score
inc fgamecount
jmp fgames3
ret
flipgame8 endp

flipgame9 proc near

mov ax, 03h
int 10h

mov bh, 0c0h
call tilechoice1

mov bh,  0d0h
call tilechoice2

mov bh, 0b0h
call tilechoice3


call abc

call memo

as8:

	call ask
	cmp al,'m'
	if e jmp fq8
	cmp al,'x'
if e call gameover
if ne jmp as8
fq8:
call black
call abc

mov bh, 0b0h
call q1

mov bh, 0c0h
call q2

mov  bh, 0d0h
call q3

agob:

 call ask
 cmp al,'c'
 if e jmp ag1
  cmp al,'x'
if e  call gameover
if ne jmp agob
ag1:
	mov bh, 0b0h
	call tilechoice3
	call ask
	cmp al,'a'
	if e jmp ag2
	cmp al,'x'
if e call gameover
if ne jmp ag1
ag2:
	mov bh, 0c0h
	call tilechoice1
	call ask
	cmp al,'b'
	if e jmp ag3
	cmp al,'x'
if e call gameover
if ne jmp ag2
ag3:
	mov bh,	0d0h
	call tilechoice2
	inc score
	inc fgamecount
jmp fgames3
ret
flipgame9 endp

flipgame10 proc near

mov ax, 03h
int 10h

mov bh, 0a0h
call tilechoice1

mov bh,  0c0h
call tilechoice2

mov bh, 0e0h
call tilechoice3


call abc

call memo

as9:

	call ask
	cmp al,'m'
	if e jmp fq9
	cmp al,'x'
if e call gameover
if ne jmp as9
fq9:
call black
call abc

mov bh, 0a0h
call q1


mov bh, 0e0h
call q2

mov  bh, 0c0h
call q3

arw:

	call ask
	cmp al,'a'
	if e jmp arw1
	cmp al,'x'
if e call gameover
if ne jmp arw
arw1:
	mov bh, 0a0h
	call tilechoice1
	call ask
	cmp al,'c'
	if e jmp arw2
	cmp al,'x'
       if e call gameover

	if ne jmp arw1
arw2:
	mov bh, 0e0h
	call tilechoice3
	call ask
	cmp al,'b'
	if e jmp arw3
cmp al,'x'
if e call gameover
	if ne jmp arw2
arw3:
	mov bh, 0c0h
	call tilechoice2
	inc score
inc fgamecount
jmp fgames3
ret
flipgame10 endp

;---game1 processes
game1p proc near
	mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 32
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 32
	call cursor
	
	lea dx, game1
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game1ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game1ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game1ch2
	call print
	
	mov dh, 14
	mov dl, 47
	call cursor
	
	lea dx, game1ch4
	call print

getans:	
	mov dh, 16
	mov dl, 39
	call cursor

	call ask
	cmp al, 'a'
	if e jmp canswer
	cmp al,'x'
if e call gameover
	if ne jmp A
A:
	cmp al, 'A'
	if e jmp canswer
	if ne call game2p
canswer:
	
    	inc score
	inc eqgamecount
	jmp equagame5
ret
game1p endp
;--------------
game2p proc near

    mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 34
	call cursor
	
	lea dx, game2
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game2ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game2ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game2ch2
	call print
	
	mov dh, 14
	mov dl, 47
	call cursor
	
	lea dx, game2ch4
	call print

getans2:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'd'
	if e jmp canswer2
	cmp al,'x'
if e call gameover
if ne jmp A2
A2:
	cmp al, 'D'
	if e jmp canswer2
	if ne call game3p
canswer2:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game2p endp
;------------
game3p proc near

    mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 34
	call cursor
	
	lea dx, game3
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game3ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game3ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game3ch2
	call print
	
	mov dh, 14
	mov dl, 47
	call cursor
	
	lea dx, game3ch4
	call print

getans3:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'c'
	if e jmp canswer3
	if ne jmp A3
A3:
	cmp al, 'C'
	if e jmp canswer3
	
cmp al,'x'
if e call gameover
	if ne call game4p
canswer3:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game3p endp
;------------------------
game4p  proc near

	mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 34
	call cursor
	
	lea dx, game4
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game4ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game4ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game4ch2
	call print
	
	mov dh, 14
	mov dl, 47
	call cursor
	
	lea dx, game4ch4
	call print

getans4:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'd'
	if e jmp canswer4
	
	cmp al,'x'
if e call gameover
if ne jmp A4
A4:
	cmp al, 'D'
	if e jmp canswer4
	cmp al,'x'
	if e call gameover
	if ne call game5p
canswer4:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game4p endp
;--------------------
game5p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game5
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game5ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game5ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game5ch2
	call print
	
	mov dh, 14
	mov dl, 47
	call cursor
	
	lea dx, game5ch4
	call print

getans5:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'b'
	if e jmp canswer5
	if ne jmp A5
A5:
	cmp al, 'B'
	if e jmp canswer5
	
	cmp al,'x'
if e call gameover
if ne call game6p
canswer5:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game5p endp
;------------
game6p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game6
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game6ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game6ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game6ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game6ch4
	call print

getans6:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'b'
	if e jmp canswer6
	
	cmp al,'x'
if e call gameover
if ne jmp A6
A6:
	cmp al, 'B'
	if e jmp canswer6

	cmp al,'x'
if e call gameover

	if ne call game7p
canswer6:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game6p endp
;------------
game7p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game7
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game7ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game7ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game7ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game7ch4
	call print

getans7:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'd'
	if e jmp canswer7

	cmp al,'x'
if e call gameover
	if ne jmp A7
A7:
	cmp al, 'D'
	if e jmp canswer7
	
	cmp al,'x'
if e call gameover
if ne call game8p
canswer7:
        inc score
	inc eqgamecount
	jmp equagame5
ret
game7p endp
;-----------
game8p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game8
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game8ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game8ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game8ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game8ch4
	call print

getans8:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'a'
	if e jmp canswer8
	
	cmp al,'x'
if e call gameover
if ne jmp A8
A8:
	cmp al, 'A'
	if e jmp canswer8
	
	cmp al,'x'
if e call gameover
if ne call game9p
canswer8:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game8p endp
;-----------
game9p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game9
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game9ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game9ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game9ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game9ch4
	call print

getans9:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'd'
	if e jmp canswer9
	
	cmp al,'x'
if e call gameover
if ne jmp A9
A9:
	cmp al, 'D'
	if e jmp canswer9
	
	cmp al,'x'
if e call gameover
if ne call game10p
canswer9:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game9p endp
;-----------
game10p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game10
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game10ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game10ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game10ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game10ch4
	call print

getans10:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'a'
	if e jmp canswer10
	
	cmp al,'x'
if e call gameover
if ne jmp A10
A10:
	cmp al, 'A'
	if e jmp canswer10
	
	cmp al,'x'
if e call gameover
if ne call game11p
canswer10:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game10p endp
;-----------
game11p proc near

	mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game11
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game11ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game11ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game11ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game11ch4
	call print

getans11:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'a'
	if e jmp canswer11
	
	cmp al,'x'
if e call gameover
if ne jmp A11
A11:
	cmp al, 'A'
	if e jmp canswer11
	
	cmp al,'x'
if e call gameover
if ne call game12p
canswer11:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game11p endp
;-----------
game12p proc near

mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 34
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 36
	call cursor
	
	lea dx, game12
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game12ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game12ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game12ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game12ch4
	call print

getans12:	
	mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'c'
	if e jmp canswer12
	
	cmp al,'x'
	if e call gameover
	if ne jmp A12
A12:
	cmp al, 'C'
	if e jmp canswer12
	
	cmp al,'x'
	if e call gameover
	if ne call game13p
canswer12:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game12p endp
;-----------
game13p proc near

    mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 33
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 33
	call cursor
	
	lea dx, game13
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game13ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game13ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game13ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game13ch4
	call print

getans13:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'b'
	if e jmp canswer13
	
	cmp al,'x'
if e call gameover
if ne jmp A13
A13:
	cmp al, 'B'
	if e jmp canswer13
	
	cmp al,'x'
if e call gameover
if ne call game14p
canswer13:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game13p endp
;-----------
game14p proc near

    mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 33
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 33
	call cursor
	
	lea dx, game14
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game14ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game14ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game14ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game14ch4
	call print

getans14:	
mov dh, 16
	mov dl, 39
	call cursor
	call ask
	cmp al, 'a'
	if e jmp canswer14

	cmp al,'x'
if e call gameover
	if ne jmp A14
A14:
	cmp al, 'A'
	if e jmp canswer14
	
	cmp al,'x'
if e call gameover
if ne call game15p
canswer14:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game14p endp

;-----------
game15p proc near

        mov ch, 06
	mov cl, 20
	mov dh,	18
	mov dl,	60
	mov bh, 8bh
	call scroll
	call gamebox
	
	mov ch, 09
	mov cl, 33
	mov dh, 09
	mov dl, 49
	mov bh, 8ah
	call scroll
	
	mov dh, 09
	mov dl, 33
	call cursor
	
	lea dx, game15
	call print
	
	
	mov dh, 12
	mov dl, 28 
	call cursor
	
	lea dx, game15ch1
	call print
	
	mov dh, 12
	mov dl, 47
	call cursor
	
	lea dx, game15ch3
	call print
	
	mov dh, 14
	mov dl, 28 
	call cursor
	
	lea dx, game15ch2
	call print
	
	mov dh, 14	
	mov dl, 47
	call cursor
	
	lea dx, game15ch4
	call print

getans15:	
mov dh, 16
	mov dl, 39
	call cursor
maos:
	call ask
	cmp al, 'd'
	if e jmp canswer15
	cmp al,'x'
if e call gameover

	if ne jmp A15
A15:
	cmp al, 'D'
	if e jmp canswer15
	
	cmp al,'x'
if e call gameover
if ne call maos
canswer15:
	inc score
	inc eqgamecount
	jmp equagame5
ret
game15p endp
;-----------
;--printing gamebox
gamebox proc near
	mov dh, 06
	mov dl, 20
	call cursor
	
	lea dx, gamebox1
	call print
	
	mov dh, 07
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 08
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 09
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 10
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 11
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 12
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 13
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 14
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 15
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 16
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 17
	mov dl, 20
	call cursor
	
	lea dx, gamebox2
	call print
	
	mov dh, 18
	mov dl, 20
	call cursor
	
	lea dx, gamebox1
	call print
	
ret
gamebox endp
;-------

;------------------------------------------color majority game
;-------------
color1 proc near

mov ax, 03h
int 10h

;cent
mov bh,5bh
call cent1

mov bh,3bh
call cent2
;left

mov bh,5bh
call leftbox1

mov bh,5bh
call leftbox2
;ryt

mov bh,4bh
call rytbox1

mov bh,1bh
call rytbox2

call choiceabc

againx:

	call ask
	cmp al,'q'
	if e jmp maox
	cmp al,'w'
	if e jmp maox
	cmp al,'a'
	if e jmp maox
	
	cmp al,'x'
	if e call gameover
	if ne jmp againx
maox:
	inc score
	inc taptilecount
	jmp taptile3
ret
color1 endp

;--------coordinates para background ray alisdan
cent1 proc near

mov ch,5
mov cl,30
mov dh,9
mov dl,50
call scroll


ret
cent1 endp


cent2 proc near


mov ch,12
mov cl,30
mov dh,16
mov dl,50
call scroll


ret
cent2 endp

leftbox1 proc near

mov ch,5
mov cl,5
mov dh,9
mov dl,25
call scroll

ret
leftbox1 endp

leftbox2 proc near

mov ch,12
mov cl,5
mov dh,16
mov dl,25
call scroll

ret
leftbox2 endp

rytbox1 proc near

mov ch,5
mov cl,55
mov dh,9
mov dl,75
call scroll

ret
rytbox1 endp

rytbox2 proc near

mov ch,12
mov cl,55
mov dh,16
mov dl,75
call scroll
ret
rytbox2 endp

choiceabc proc near

mov dh,7
mov dl,15
call cursor

lea dx,ch1
call print


mov dh,7
mov dl,40
call cursor
lea dx,ch2
call print

mov dh,7
mov dl,65
call cursor
lea dx,ch3
call print

mov dh,14
mov dl,15
call cursor
lea dx,ch4
call print

mov dh,14
mov dl,40
call cursor
lea dx,ch5
call print

mov dh,14
mov dl,65
call cursor
lea dx,ch6
call print


ret
choiceabc endp
;--------------
color2 proc near

mov ax, 03h
int 10h

;cent
mov bh,0abh
call cent1

mov bh,0abh
call cent2

;left

mov bh,8bh
call leftbox1


mov bh,5bh
call leftbox2
;ryt


mov bh,3bh
call rytbox1


mov bh,0abh
call rytbox2

call choiceabc


again1:

	call ask
	cmp al,'w'
	if e jmp mao1
	cmp al,'s'
	if e jmp mao1
	cmp al,'d'
	if e jmp mao1
	
	cmp al,'x'
	if e call gameover
	if ne jmp again1
mao1:
	inc score
	inc taptilecount
	jmp taptile3
ret
color2 endp
;---------------
color3 proc near

mov ax, 03h
int 10h

;cent
mov bh,0fbh
call cent1

mov bh,0abh
call cent2

;left

mov bh,0fbh
call leftbox1


mov bh,0abh
call leftbox2
;ryt


mov bh,0fbh
call rytbox1


mov bh,9bh
call rytbox2

call choiceabc


again2:

	call ask
	cmp al,'w'
	if e jmp mao2
	cmp al,'q'
	if e jmp mao2
	cmp al,'e'
	if e jmp mao2

	cmp al,'x'
	if e call gameover	
	if ne jmp again2
mao2:
	inc score
	inc taptilecount
	jmp taptile3
ret
color3 endp
;-------------
color4 proc near


mov ax, 03h
int 10h

;cent
mov bh,0abh
call cent1

mov bh,0abh
call cent2

;left

mov bh,0ebh
call leftbox1


mov bh,0dbh
call leftbox2
;ryt


mov bh,7bh
call rytbox1


mov bh,0abh
call rytbox2

call choiceabc


again3:

	call ask
	cmp al,'w'
	if e jmp mao3
	cmp al,'s'
	if e jmp mao3
	cmp al,'d'
	if e jmp mao3

	cmp al,'x'
	if e call gameover
	if ne jmp again3
mao3:
	inc score
	inc taptilecount
	jmp taptile3
ret
color4 endp
;--------------
color5 proc near

mov ax, 03h
int 10h

;cent
mov bh,0cbh
call cent1

mov bh,0cbh
call cent2

;left

mov bh,0ebh
call leftbox1


mov bh,0cbh
call leftbox2
;ryt


mov bh,7bh
call rytbox1


mov bh,0abh
call rytbox2

call choiceabc


again4:

	call ask
	cmp al,'w'
	if e jmp mao4
	cmp al,'s'
	if e jmp mao4
	cmp al,'a'
if e jmp mao4
	cmp al,'x'
if e call gameover	
	if ne jmp again4
mao4:
	inc score
	inc taptilecount
	jmp taptile3
ret
color5 endp
;--------------
color6 proc near

mov ax, 03h
int 10h

;cent
mov bh,0fbh
call cent1

mov bh,0abh
call cent2

;left

mov bh,0fbh
call leftbox1


mov bh,0dbh
call leftbox2
;ryt


mov bh,0cbh
call rytbox1


mov bh,0fbh
call rytbox2

call choiceabc


again5:

	call ask
	cmp al,'w'
	if e jmp mao5
	cmp al,'q'
	if e jmp mao5
	cmp al,'d'
	if e jmp mao5
	cmp al,'x'
if e call gameover	
if ne jmp again5
mao5:
	inc score
	inc taptilecount
	jmp taptile3
ret
color6 endp
;----------------------

color7 proc near


mov ax, 03h
int 10h

;cent
mov bh,1bh
call cent1

mov bh,1bh
call cent2

;left

mov bh,1bh
call leftbox1


mov bh,0cbh
call leftbox2
;ryt


mov bh,7bh
call rytbox1


mov bh,0ebh
call rytbox2

call choiceabc


again6:

	call ask
	cmp al,'w'
	if e jmp mao6
	cmp al,'s'
	if e jmp mao6
	cmp al,'q'
	if e jmp mao6
	cmp al,'x'
if e call gameover	
if ne jmp again6
mao6:
	inc score
	inc taptilecount
	jmp taptile3
ret
color7 endp

color8 proc near

mov ax, 03h
int 10h

;cent
mov bh,0abh
call cent1

mov bh,0abh
call cent2

;left

mov bh,0ebh
call leftbox1


mov bh,0dbh
call leftbox2
;ryt


mov bh,7bh
call rytbox1


mov bh,0abh
call rytbox2

call choiceabc


again7:

	call ask
	cmp al,'w'
	if e jmp mao7
	cmp al,'s'
	if e jmp mao7
	cmp al,'d'
	if e jmp mao7
	cmp al,'x'
	if e call gameover	
	if ne jmp again7
mao7:
	inc score
	inc taptilecount
	jmp taptile3
ret
color8 endp
;-------------------------
color9 proc near

mov ax, 03h
int 10h

;cent
mov bh,4bh
call cent1

mov bh,3bh
call cent2

;left

mov bh,3bh
call leftbox1


mov bh,3bh
call leftbox2
;ryt


mov bh,4bh
call rytbox1


mov bh,5bh
call rytbox2

call choiceabc


again8:

	call ask
	cmp al,'s'
	if e jmp mao8
	cmp al,'q'
	if e jmp mao8
	cmp al,'a'
	if e jmp mao8
	cmp al,'x'
	if e call gameover	
	if ne jmp again8
mao8:
	inc score
	inc taptilecount
	jmp taptile3
ret
color9 endp
;--------------
color10 proc near

mov ax, 03h
int 10h

;cent
mov bh,0abh
call cent1

mov bh,0cbh
call cent2

;left

mov bh,0ebh
call leftbox1


mov bh,0cbh
call leftbox2
;ryt


mov bh,0cbh
call rytbox1


mov bh,0abh
call rytbox2

call choiceabc


again9:

	call ask
	cmp al,'s'
	if e jmp mao9
	cmp al,'a'
	if e jmp mao9
	cmp al,'e'
	if e jmp mao9
cmp al,'x'
if e call gameover	
	if ne jmp again9
mao9:
	inc score
	inc taptilecount
	jmp taptile3
ret
color10 endp
;-----------------------------------------------------------end of color majority game
;------start of color deception

bo1 proc near

mov ch, 6
mov cl, 27
mov dh, 11
mov dl, 37
call scroll


ret
bo1 endp

bo2 proc near

mov ch, 14
mov cl, 27
mov dh, 19
mov dl, 37
call scroll


ret
bo2 endp

bo3 proc near

mov ch, 6
mov cl, 41
mov dh, 11
mov dl, 51
call scroll



ret
bo3 endp

bo4 proc near
mov ch, 14
mov cl, 41
mov dh, 19
mov dl, 51
call scroll

ret
bo4 endp
;---------set as background daan para ang foreground nay alisdan
bob1 proc near

mov ch, 8
mov cl, 28
mov dh,8
mov dl,36
call scroll

mov dh, 8
mov dl, 30
call cursor

ret
bob1 endp

bob2 proc near

mov ch, 16
mov cl, 28
mov dh,16
mov dl,36
call scroll

mov dh, 16
mov dl, 30
call cursor

ret
bob2 endp

bob3 proc near

mov ch, 8
mov cl, 42
mov dh,8
mov dl,50
call scroll

mov dh, 8
mov dl, 44
call cursor

ret
bob3 endp

bob4 proc near

mov ch, 16
mov cl, 42
mov dh,16
mov dl,50
call scroll

mov dh, 16
mov dl, 44
call cursor


ret
bob4 endp
;--------------------
boxes1 proc near

mov ax, 03h
int 10h


mov bh, 21h
call bo1
mov bh, 02h
call bob1
lea dx, gre
call print

mov bh, 41h
call bo2
mov bh, 04h
call bob2
lea dx, red
call print

mov bh, 53h
call bo3
mov bh, 06
call bob3
lea dx, whi
call print


mov bh, 34h
call bo4
mov bh, 03h
call bob4
lea dx, cyan
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check1:

call ask
cmp al,'w'
if e jmp cork1
cmp al,'x'
if e call gameover	
if ne jmp check1

cork1:
inc score
inc decepcount
jmp decepgame3
ret
boxes1 endp

boxes2 proc near

mov ax, 03h
int 10h


mov bh, 31h
call bo1
mov bh, 03h
call bob1
lea dx, cyan
call print

mov bh, 61h
call bo2
mov bh, 07h
call bob2
lea dx, whi
call print

mov bh, 53h
call bo3
mov bh, 05h
call bob3
lea dx, mag
call print


mov bh, 0c4h
call bo4
mov bh, 0ch
call bob4
lea dx, red
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check2:

call ask
cmp al,'a'
if e jmp cork2
cmp al,'x'
if e call gameover	
if ne jmp check2

cork2:
inc score
inc decepcount
jmp decepgame3
boxes2 endp

;---------------------------
boxes3 proc near

mov ax, 03h
int 10h


mov bh, 0c1h
call bo1
mov bh, 0ch
call bob1
lea dx, red
call print

mov bh, 61h
call bo2
mov bh, 07h
call bob2
lea dx, blu
call print

mov bh, 0a3h
call bo3
mov bh, 0ah
call bob3
lea dx, gre
call print


mov bh, 0d4h
call bo4
mov bh, 0dh
call bob4
lea dx, mag
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check3:

call ask
cmp al,'a'
if e jmp cork3
cmp al,'x'
if e call gameover	
if ne jmp check3

cork3:
inc score
inc decepcount
jmp decepgame3
ret
boxes3 endp

boxes4 proc near

mov ax, 03h
int 10h


mov bh, 0c1h
call bo1
mov bh, 0dh
call bob1
lea dx, red
call print

mov bh, 11h
call bo2
mov bh, 01h
call bob2
lea dx, blu
call print

mov bh, 0a3h
call bo3
mov bh, 0ah
call bob3
lea dx, gre
call print


mov bh, 0d4h
call bo4
mov bh, 0dh
call bob4
lea dx, mag
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check4:

call ask
cmp al,'q'
if e jmp cork4
cmp al,'x'
if e call gameover	
if ne jmp check4

cork4:
inc score
inc decepcount
jmp decepgame3
boxes4 endp

boxes5 proc near


mov ax, 03h
int 10h


mov bh, 0c1h
call bo1
mov bh, 0ch
call bob1
lea dx, blu
call print

mov bh, 21h
call bo2
mov bh, 04h
call bob2
lea dx, mag
call print

mov bh, 0e3h
call bo3
mov bh, 0eh
call bob3
lea dx, yel
call print


mov bh, 14h
call bo4
mov bh, 01h
call bob4
lea dx, blu
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check5:

call ask
cmp al,'a'
if e jmp cork5
cmp al,'x'
if e call gameover	
if ne jmp check5

cork5:
inc score
inc decepcount
jmp decepgame3
boxes5 endp

boxes6 proc near


mov ax, 03h
int 10h


mov bh, 21h
call bo1
mov bh, 02h
call bob1
lea dx, gre
call print

mov bh, 0f1h
call bo2
mov bh, 0fh
call bob2
lea dx, whi
call print

mov bh, 0a3h
call bo3
mov bh, 0eh
call bob3
lea dx, blu
call print


mov bh, 0e4h
call bo4
mov bh, 0eh
call bob4
lea dx, yel
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check6:

call ask
cmp al,'w'
if e jmp cork6
cmp al,'x'
if e call gameover	
if ne jmp check6

cork6:
inc score
inc decepcount
jmp decepgame3
ret
boxes6 endp

boxes7 proc near


mov ax, 03h
int 10h


mov bh, 21h
call bo1
mov bh, 02h
call bob1
lea dx, gre
call print

mov bh, 0f1h
call bo2
mov bh, 0fh
call bob2
lea dx, whi
call print

mov bh, 53h
call bo3
mov bh, 05h
call bob3
lea dx, gre
call print


mov bh, 14h
call bo4
mov bh, 01h
call bob4
lea dx, blu
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check7:

call ask
cmp al,'w'
if e jmp cork7
cmp al,'x'
if e call gameover	
if ne jmp check7

cork7:
inc score
inc decepcount
jmp decepgame3
ret
boxes7 endp

boxes8 proc near

mov ax, 03h
int 10h


mov bh, 21h
call bo1
mov bh, 03h
call bob1
lea dx, mag
call print

mov bh, 0e1h
call bo2
mov bh, 0eh
call bob2
lea dx, yel
call print

mov bh, 0f3h
call bo3
mov bh, 0fh
call bob3
lea dx, whi
call print


mov bh, 24h
call bo4
mov bh, 02h
call bob4
lea dx, gre
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check8:

call ask
cmp al,'q'
if e jmp cork8
cmp al,'x'
if e call gameover	
if ne jmp check8

cork8:
inc score
inc decepcount
jmp decepgame3
ret
boxes8 endp

boxes9 proc near


mov ax, 03h
int 10h


mov bh, 11h
call bo1
mov bh, 01h
call bob1
lea dx, blu
call print

mov bh, 21h
call bo2
mov bh, 02h
call bob2
lea dx, gre
call print

mov bh, 0f3h
call bo3
mov bh, 0fh
call bob3
lea dx, whi
call print


mov bh, 14h
call bo4
mov bh, 01h
call bob4
lea dx, gre
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check9:

call ask
cmp al,'s'
if e jmp cork9
cmp al,'x'
if e call gameover	
if ne jmp check9

cork9:
inc score
inc decepcount
jmp decepgame3
ret
boxes9 endp

boxes10 proc near

mov ax, 03h
int 10h


mov bh, 11h
call bo1
mov bh, 01h
call bob1
lea dx, blu
call print

mov bh, 0f1h
call bo2
mov bh, 0eh
call bob2
lea dx, mag
call print

mov bh, 0e3h
call bo3
mov bh, 0eh
call bob3
lea dx, yel
call print


mov bh, 24h
call bo4
mov bh, 02h
call bob4
lea dx, gre
call print
;-----------------------------------q left, w ryt, a down left, s down ryt

check10:

call ask
cmp al,'a'
if e jmp cork10
cmp al,'x'
if e call gameover	
if ne jmp check10

cork10:
inc score
inc decepcount
jmp decepgame3
boxes10 endp

ranfgames proc near
	mov ax, 0000h
	out 43h, al
	in al, 40h

	mov bl, 10
	div bl
	
	mov rafgames, ah
ret
ranfgames endp

raneqgame proc near
	mov ax, 0000h
	out 43h, al
	in al, 40h

	mov bl, 15
	div bl
	
	mov raequat, ah
ret
raneqgame endp
rantaptile proc near
	mov ax, 0000h
	out 43h, al
	in al, 40h
	
	mov bl, 10
	div bl
	
	mov rataptile, ah
ret
rantaptile endp 
randecepgames proc near
	mov ax, 0000h
	out 43h, al
	in al, 40h
	
	mov bl, 10
	div bl
	
	mov radecep, ah
ret
randecepgames endp

delayrounds proc near
	mov ba2, 10000
lp1:
	mov ba1, 0ffffh

lp2:
	nop

	dec ba1 
	jnz lp2

	dec ba2
	jnz lp1
ret
delayrounds endp


;----------------------------------------------------instruction ni brad

simple proc near



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

ret
simple endp

flips proc near

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



ret
flips endp



deps proc near


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

ret
deps endp


taps proc near


mov ax, 03h
int 10h


mov ch, 4
mov cl, 26
mov dh,20
mov dl,60
mov bh, 0ach
call scroll

lea dx, tap
call print

ret
taps endp

gameover proc near

	mov cx, 0000h
	mov dx, 184fh
	mov bh, 00h
	call scroll
	
        mov dx, 0000h
	call cursor
	
	mov cx, 0000h
	mov dx, 184fh
	mov bh, 04h
	call scroll
	
	lea dx, gamo
	call print
	
	call delay
	call delay
	call delay

	call area2

inc twopl

call main
ret
gameover endp

area2 proc near

mov ax, 03h
int 10h

mov ch, 0
mov cl, 0
mov dh, 22
mov dl, 38
mov bh, 1eh
call scroll

mov ch, 0
mov cl, 41
mov dh, 22
mov dl, 79
mov bh, 5bh
call scroll

mov dh, 0
mov dl, 0
call cursor

lea dx, ar1
call print


mov dh, 1
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 2
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 3
mov dl, 0
call cursor
lea dx, ar3
call print

mov dh, 4
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 5
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 6
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 7
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 8
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 9
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 10
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 11
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 12
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 13
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 14
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 15
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 16
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 17
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 18
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 19
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 20
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 21
mov dl, 0
call cursor
lea dx, ar2
call print

mov dh, 22
mov dl, 0
call cursor
lea dx, ar4
call print

;-player2


mov dh, 0
mov dl, 41
call cursor

lea dx, ar1
call print


mov dh, 1
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 2
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 3
mov dl, 41
call cursor
lea dx, ar3
call print

mov dh, 4
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 5
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 6
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 7
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 8
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 9
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 10
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 11
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 12
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 13
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 14
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 15
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 16
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 17
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 18
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 19
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 20
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 21
mov dl, 41
call cursor
lea dx, ar2
call print

mov dh, 22
mov dl, 41
call cursor
lea dx, ar4
call print

mov dh,2
mov dl,3
call cursor


lea dx, plar1
call print

mov dh,2
mov dl,45
call cursor

lea dx, plar2
call print



mov dh,11
mov dl,3
call cursor

lea dx, statres
call print

;-


mov dh,11
mov dl,45
call cursor

lea dx, statres
call print


mov ch, 02
mov cl, 12
mov dh,2
mov dl, 37
mov bh,1eh
call scroll


mov dh,2
mov dl, 12
call cursor


mov ch, 02
mov cl, 12
mov dh,2
mov dl, 37
mov bh,1eh
call scroll

mov dh, 2
mov dl, 12
call cursor

lea dx, player1
call print


mov ch, 02
mov cl, 54
mov dh, 02
mov dl,77
mov bh, 5bh
call scroll
mov dh, 2
mov dl, 54
call cursor


mov ch, 02
mov cl, 54
mov dh, 02
mov dl,77
mov bh, 5bh
call scroll

mov dh, 2
mov dl,54
call cursor

lea dx, player2
call print

mov dh,20
mov dl, 15
call cursor

mov dh, 15 
mov dl, 16
call cursor

call escoring

call ask

cmp al,'x'
if e call stop


ret
area2 endp
escoring proc near
	
	

	;call scorpos
	cmp score, 10
	if l jmp score1
	cmp score, 20
	if l jmp score2
	cmp score, 30
	if l jmp score3
	cmp score, 40
	if l jmp score4
	cmp score, 50
	if l jmp score5
score1:

mov dh, 15
	mov dl, 16
	call cursor
	mov dl, score
	add dl, 48
	mov ah, 02
	int 21h
	;jmp score1
score2:
	mov dh, 15
	mov dl, 16
	call cursor
        mov ah, 02
	mov dl, '1'
	int 21h
	
	mov dl, score
	sub dl, 10
	add dl, 48
	mov ah, 02
	int 21h
score3:
        mov dh, 15
	mov dl, 16
	call cursor
	mov ah, 02
	mov dl, '2'
	int 21h
	
	mov dh, 15
	mov dl, 17
	call cursor	
	
	mov dl, score
	sub dl, 10
	add dl, 48
	mov ah, 02
	int 21h
score4:
mov dh, 15
	mov dl, 16
	call cursor
	mov ah, 02
	mov dl, '3'
	int 21h
	
	mov dh, 15
	mov dl, 17
	call cursor	

	mov dl, score
	sub dl, 10
	add dl, 48
	mov ah, 02
	int 21h
score5:
	mov dh, 15
	mov dl, 16
	call cursor
	mov ah, 02
	mov dl, '4'
	int 21h
	
	mov dh, 15
	mov dl, 17
	call cursor
	
	mov dl, score
	sub dl, 10
	add dl, 48
	mov ah, 02
	int 21h

ret
escoring endp
