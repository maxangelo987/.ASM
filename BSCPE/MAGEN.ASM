
.model large
.code
org 100h    
jmp main
	mode db ?
	base1 dw ?
	base2 dw ?
string0 db 40 dup('≤±'),'$'
string1 db '     ±€±€±€±€                                  ±€±€±€±€     ±€               ',0ah,0dh
	db '   ±€±€±€±€±€±€                                ±€±€±€±€±€   ±€               ',0ah,0dh
	db '   ±€±€                                        ±€±€    ±€±€ ±€               ',0ah,0dh
	db '   ±€±€           ±€±€±€ ±€±€±€ ±€±€±€ ±€±€±€  ±€±€    ±€±€ ±€ ±€±€±€ ±€  ±€ ',0ah,0dh
	db '     ±€±€±€       ±€     ±€  ±€ ±€±€±€ ±€  ±€  ±€±€±€±€±€   ±€     ±€ ±€  ±€ ',0ah,0dh
	db '      ±€±€±€±€    ±€     ±€±€±€ ±€  ±€ ±€±€±€  ±€±€±€±€     ±€ ±€±€±€ ±€  ±€ ',0ah,0dh
	db '         ±€±€±€   ±€     ±€     ±€  ±€ ±€      ±€±€         ±€ ±€  ±€ ±€  ±€ ',0ah,0dh
	db '           ±€±€±€ ±€±€±€ ±€±€±€ ±€  ±€ ±€±€±€  ±€±€         ±€ ±€±€±€ ±€±€±€ ',0ah,0dh
	db '   ±€±€±€±€±€±€                                ±€±€                       ±€ ',0ah,0dh
	db '    ±€±€±€±€                                   ±€±€                   ±€±€±€ ',0ah,0dh
	db 80 dup(' '),0ah,0dh
	db '                          ...PRODUCTION PRESENTS...                          ','$'
string2 db ' ±€±€                                           ±€±€±€                       ',0ah,0dh
	db '  ±€                                            ±€   ±€                      ',0ah,0dh
	db '  ±€                                            ±€    ±€                     ',0ah,0dh
	db '  ±€                                            ±€    ±€                     ',0ah,0dh
	db '  ±€      ±€±€±€ ±€±€±€ ±€±€   ±€ ±€  ±€ ±€±€±€ ±€    ±€ ±€±€±€ ±€±€±€ ±€±€±€',0ah,0dh
	db '  ±€      ±€  ±€ ±€  ±€ ±€  ±€ ±€ ±€±€±€ ±€     ±€    ±€ ±€  ±€   ±€   ±€  ±€',0ah,0dh
	db '  ±€      ±€  ±€ ±€±€±€ ±€  ±€ ±€ ±€ ±€  ±€±€±€ ±€    ±€ ±€±€±€   ±€   ±€±€±€',0ah,0dh
	db '  ±€   ±€ ±€  ±€ ±€  ±€ ±€  ±€ ±€ ±€  ±€ ±€  ±€ ±€   ±€  ±€  ±€   ±€   ±€  ±€',0ah,0dh
	db '  ±€±€±€  ±€±€±€ ±€  ±€ ±€±€   ±€ ±€  ±€ ±€±€±€ ±€±€±€   ±€  ±€   ±€   ±€  ±€',0ah,0dh
	db 1 dup(' '),0ah,0dh
	db '                             . . . PLEASE WAIT . . .                         ','$'
string3 db 20 dup(' '),1 dup(201),38 dup(205),1 dup(187),0ah,0dh
		db 20 dup(' '),1 dup(186),38 dup(' '),1 dup(186),0ah,0dh
		db 20 dup(' '),1 dup(186),38 dup(' '),1 dup(186),0ah,0dh
		db 20 dup(' '),1 dup(200),38 dup(205),1 dup(188),'$'
string4 db '±€±€      ±€±€           ',0ah,0dh	
	db 4 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 4 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 4 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 4 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 4 dup(' '),' ±€±€±€±€±€±€            ',0ah,0dh
	db 4 dup(' '),'  ±€±€±€±€±€±€    ±€±€±€ ',0ah,0dh
	db 4 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 4 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 4 dup(' '),'          ±€±€±€±€       ',0ah,0dh
 	db 4 dup(' '),'          ±€±€±€±€       ',0ah,0dh
	db 4 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 4 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 4 dup(' '),'         ±€±€±€   ±€±€±€ ','$'
string5 db '±€±€      ±€±€           ',0ah,0dh	
	db 29 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 29 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 29 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 29 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 29 dup(' '),' ±€±€±€±€±€±€            ',0ah,0dh
	db 29 dup(' '),'  ±€±€±€±€±€±€    ±€±€±€ ',0ah,0dh
	db 29 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 29 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 29 dup(' '),'          ±€±€±€±€       ',0ah,0dh
 	db 29 dup(' '),'          ±€±€±€±€       ',0ah,0dh
	db 29 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 29 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 29 dup(' '),'         ±€±€±€   ±€±€±€ ','$'
string6 db '±€±€      ±€±€           ',0ah,0dh	
	db 54 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 54 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 54 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 54 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 54 dup(' '),' ±€±€±€±€±€±€            ',0ah,0dh
	db 54 dup(' '),'  ±€±€±€±€±€±€    ±€±€±€ ',0ah,0dh
	db 54 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 54 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 54 dup(' '),'          ±€±€±€±€       ',0ah,0dh
 	db 54 dup(' '),'          ±€±€±€±€       ',0ah,0dh
	db 54 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 54 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 54 dup(' '),'         ±€±€±€   ±€±€±€ ','$'
string7 db '±€±€      ±€±€           ',0ah,0dh	
	db 7 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 7 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 7 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 7 dup(' '),'±€±€      ±€±€           ',0ah,0dh
	db 7 dup(' '),' ±€±€±€±€±€±€            ',0ah,0dh
	db 7 dup(' '),'  ±€±€±€±€±€±€    ±€±€±€ ',0ah,0dh
	db 7 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 7 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 7 dup(' '),'          ±€±€±€±€       ',0ah,0dh
 	db 7 dup(' '),'          ±€±€±€±€       ',0ah,0dh
	db 7 dup(' '),'          ±€±€ ±€±€      ',0ah,0dh
	db 7 dup(' '),'          ±€±€   ±€±€±€  ',0ah,0dh
	db 7 dup(' '),'         ±€±€±€   ±€±€±€ ','$'
string8 db '±€±€±€',0ah,0dh	
	db 22 dup(' '),'±€  ±€',0ah,0dh
	db 22 dup(' '),'±€  ±€',0ah,0dh
	db 22 dup(' '),'±€  ±€',0ah,0dh
	db 22 dup(' '),'±€  ±€','$'
string9 db '±€±€±€',0ah,0dh	
	db 31 dup(' '),'±€  ±€',0ah,0dh
	db 31 dup(' '),'±€±€±€',0ah,0dh
	db 31 dup(' '),'±€  ±€',0ah,0dh
	db 31 dup(' '),'±€±€±€','$'
string10 db '±€    ',0ah,0dh	
	 db 40 dup(' '),'±€    ',0ah,0dh
	 db 40 dup(' '),'±€    ',0ah,0dh
	 db 40 dup(' '),'±€    ',0ah,0dh
	 db 40 dup(' '),'±€±€±€','$'
string11 db '±€±€±€',0ah,0dh	
	 db 49 dup(' '),'±€  ±€',0ah,0dh
	 db 49 dup(' '),'±€  ±€',0ah,0dh
	 db 49 dup(' '),'±€  ±€',0ah,0dh
	 db 49 dup(' '),'±€±€±€','$'
string12 db '±€±€±€',0ah,0dh	
	 db 58 dup(' '),'±€    ',0ah,0dh
	 db 58 dup(' '),'±€    ',0ah,0dh
	 db 58 dup(' '),'±€    ',0ah,0dh
	 db 58 dup(' '),'±€±€±€','$'
string13 db '±€  ±€',0ah,0dh	
	 db 67 dup(' '),'±€ ±€ ',0ah,0dh
	 db 67 dup(' '),'±€±€  ',0ah,0dh
	 db 67 dup(' '),'±€ ±€ ',0ah,0dh
	 db 67 dup(' '),'±€  ±€','$'
string14 db '±€±€±€',0ah,0dh	
	 db 34 dup(' '),'  ±€  ',0ah,0dh
	 db 34 dup(' '),'  ±€  ',0ah,0dh
	 db 34 dup(' '),'  ±€  ',0ah,0dh
	 db 34 dup(' '),'  ±€  ',0ah,0dh
	 db 34 dup(' '),'±€±€±€','$'
string15 db '±€  ±€',0ah,0dh	
	 db 44 dup(' '),'±€  ±€',0ah,0dh
	 db 44 dup(' '),'±€±€±€',0ah,0dh
	 db 44 dup(' '),'±€ ±€ ',0ah,0dh
	 db 44 dup(' '),'±€  ±€',0ah,0dh
	 db 44 dup(' '),'±€  ±€','$'
string16 db '±€±€±€',0ah,0dh	
	 db 54 dup(' '),'±€    ',0ah,0dh
	 db 54 dup(' '),'±€±€±€',0ah,0dh
	 db 54 dup(' '),'±€  ±€',0ah,0dh
	 db 54 dup(' '),'±€  ±€',0ah,0dh
	 db 54 dup(' '),'±€±€±€','$'
string17 db '±€±€      ±€±€ ±€±€±€ ±€±€±€ ±€     ±€±€±€ ±€±€±€ ±€  ±€',0ah,0dh	
	 db 7 dup(' '),'±€±€      ±€±€ ±€  ±€ ±€  ±€ ±€     ±€  ±€ ±€     ±€ ±€ ',0ah,0dh
	 db 7 dup(' '),'±€±€      ±€±€ ±€  ±€ ±€±€±€ ±€     ±€  ±€ ±€     ±€±€  ',0ah,0dh
	 db 7 dup(' '),'±€±€      ±€±€ ±€  ±€ ±€  ±€ ±€     ±€  ±€ ±€     ±€ ±€ ',0ah,0dh
	 db 7 dup(' '),'±€±€      ±€±€ ±€  ±€ ±€±€±€ ±€±€±€ ±€±€±€ ±€±€±€ ±€  ±€',0ah,0dh
	 db 7 dup(' '),' ±€±€±€±€±€±€            ',0ah,0dh
	 db 7 dup(' '),'  ±€±€±€±€±€±€    ±€±€±€ ',0ah,0dh
	 db 7 dup(' '),'          ±€±€   ±€±€±€    ±€±€±€    ±€±€±€    ±€±€±€   ±€±€±€',0ah,0dh
	 db 7 dup(' '),'          ±€±€ ±€±€          ±€      ±€±€±€    ±€       ±€±€±€',0ah,0dh
	 db 7 dup(' '),'          ±€±€±€±€           ±€      ±€  ±€    ±€±€±€   ±€±€±€',0ah,0dh
 	 db 7 dup(' '),'          ±€±€±€±€           ±€      ±€  ±€    ±€  ±€    ±€±€ ',0ah,0dh
	 db 7 dup(' '),'          ±€±€ ±€±€          ±€      ±€  ±€    ±€  ±€         ',0ah,0dh
	 db 7 dup(' '),'          ±€±€   ±€±€±€    ±€±€±€    ±€  ±€    ±€±€±€   ±€±€±€',0ah,0dh
	 db 7 dup(' '),'         ±€±€±€   ±€±€±€',0ah,0dh
	 db 3 dup(' '),74 dup(240),3 dup(' '),'$'
string18 db 4 dup(' '),1 dup(201),13 dup(205),1 dup(187),4 dup(' '),1 dup(201),13 dup(205),1 dup(187),4 dup(' '),1 dup(201),13 dup(205),1 dup(187),4 dup(' '),1 dup(201),13 dup(205),1 dup(187),0ah,0dh
	 db 4 dup(' '),1 dup(186),'   [P]lay    ',1 dup(186),4 dup(' '),1 dup(186),'   [H]elp    ',,1 dup(186),4 dup(' '),1 dup(186),'   [Q]uit    ',1 dup(186),4 dup(' '),1 dup(186),'  [C]redits  ',1 dup(186),0ah,0dh
	 db 4 dup(' '),1 dup(200),13 dup(205),1 dup(188),4 dup(' '),1 dup(200),13 dup(205),1 dup(188),4 dup(' '),1 dup(200),13 dup(205),1 dup(188),4 dup(' '),1 dup(200),13 dup(205),1 dup(188),'$'
prompt db 23 dup(' '),1 dup(201),32 dup(205),1 dup(187),0ah,0dh
       db 23 dup(' '),1 dup(186),' Are you sure you want to quit? ',1 dup(186),0ah,0dh
	   db 23 dup(' '),1 dup(186),'             [Y]es              ',1 dup(186),0ah,0dh
	   db 23 dup(' '),1 dup(186),'             [N]o               ',1 dup(186),0ah,0dh
	   db 23 dup(' '),1 dup(200),32 dup(205),1 dup(188),'$'
help db 12 dup(' '),1 dup(201),55 dup(205),1 dup(187),0ah,0dh
		 db 12 dup(' '),1 dup(186),' GAME MECHANICS:                                       ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' You will need to move the red block to the exit.      ',1 dup(186),0ah,0dh
         db 12 dup(' '),1 dup(186),' Horizontal bar can be moved from side to side.        ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' Vertical bar can be moved up and down.                ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' Press the corresponding letter of the block you wish  ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' to move and do your direction of moving(left or right/',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' up or down) until you unblock your king(red block).   ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' GAME FEATURES:                                        ',1 dup(186),0ah,0dh  
		 db 12 dup(' '),1 dup(186),' - Singleplayer: 3 difficulty level: Easy to Difficult ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(186),' - Support all tablet devices.                         ',1 dup(186),0ah,0dh
		 db 12 dup(' '),1 dup(200),55 dup(205),1 dup(188),0ah,0dh
		 db 13 dup(' '),0ah,0dh
		 db 13 dup(' '),0ah,0dh
		 db 28 dup(' '),'------Press any key------','$'
	thanks db 20 dup(' '),1 dup(201),39 dup(205),1 dup(187),0ah,0dh
	       db 20 dup(' '),1 dup(186),' CPE 311 (Computer System Organization ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'        with Assembly Language)        ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'                                       ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'                                       ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'                                       ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'                                       ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'        Engr. Jeralyn G. Alagon        ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'              Instructor               ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'                                       ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'                                       ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'      Cyrel M. Balantocas BSCpE-3      ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(186),'               Student                 ',1 dup(186),0ah,0dh
		   db 20 dup(' '),1 dup(200),39 dup(205),1 dup(188),0ah,0dh
		   db 20 dup(' '),0ah,0dh
		   db 20 dup(' '),0ah,0dh
		   db 20 dup(' '),'         ----- Press Any Key! -----       ','$'
layer db 14 dup(' '),'    ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ    ',0ah,0dh
       db 14 dup(' '),'    ≤ﬂ€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›≤ﬂ    ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'≤ﬂ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ≤ﬂ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'    ≤ﬂ€›                                    €›≤ﬂ    ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'≤ﬂ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ≤ﬂ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                            ',0ah,0dh
       db 14 dup(' '),'    ≤ﬂ€›                                            ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                            ',0ah,0dh
       db 14 dup(' '),'≤ﬂ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ≤ﬂ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'    ≤ﬂ€›                                    €›≤ﬂ    ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'≤ﬂ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ≤ﬂ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'    ≤ﬂ€›                                    €›≤ﬂ    ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'≤ﬂ≤ﬂ≤ﬂ€›                                    €›≤ﬂ≤ﬂ≤ﬂ',0ah,0dh
       db 14 dup(' '),'  ≤ﬂ≤ﬂ€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›€›≤ﬂ≤ﬂ  ',0ah,0dh
       db 14 dup(' '),'    ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ≤ﬂ    ','$'
layer2 db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ',0ah,0dh
       db ' ≤ﬂ€››€ﬂ≤     ',0ah,0dh
       db '    ≤ﬂ€››€ﬂ≤  ','$'
layer3 db '    [M]enu     ','$'
layer4 db '    [U]ndo     ','$'
layer5 db '    [R]eset    ','$'
layer6 db 7 dup(' '),1 dup(30),'$'
layer7 db 5 dup(' '),1 dup(17),'   ',1 dup(16),'$'
layer8 db 7 dup(' '),1 dup(31),'$'
layer9 db '      MOVE :     ','$'

box1 db '€€€€€€','$'
box2 db '€€€€€€€€€€€€','$'
box3 db '€€€€€€€€€€€€€€€€€€','$'
box4 db '€€€€€€€€€€€€','$'
box5 db '€€€€€€€€€€€€','$'
box6 db '€€€€€€€€€€€€','$'
box7 db '€€€€€€€€€€€€€€€€€€','$'
box8 db '€€€€€€€€€€€€€€€€€€','$'
box9 db '€€€€€€','$'
box10 db '€€€€€€','$'
box11 db '€€€€€€','$'
box12 db '€€€€€€','$'
box13 db '€€€€€€','$'

plist label byte
	maxlen db 2
	actlen db ?
	kybd db 3 dup('$')
	
delete db '            ','$'

bluedls db ?
bluedlr db ?
lmagendhu db ?
lmagendhl db ?
grndhu db ?
grndhl db ?
whitedls db ?
whitedlr db ?
magendhu db ?
magendhl db ?
lbluedls db ?
lbluedlr db ?
kingdls db ?
kingdlr db ?

main proc near  ;-----------------------------------main process
	mov ah,0fh ;get current mode
	int 10h
	mov mode,al       ;move current mode to memory
mov ax,03h         ; clear screen
int 10h  
	mov ch,00
	mov cl,00
	mov dh,07
	mov dl,09
	mov bh,10h
	call scroll
	call delay
	
	mov ch,00
	mov cl,10
	mov dh,07
	mov dl,19
	mov bh,20h
	call scroll
	call delay
	
	mov ch,00
	mov cl,20
	mov dh,07
	mov dl,29
	mov bh,30h
	call scroll
	call delay
	
	mov ch,00
	mov cl,30
	mov dh,07
	mov dl,39
	mov bh,40h
	call scroll
	call delay
	
	mov ch,00
	mov cl,40
	mov dh,07
	mov dl,49
	mov bh,60h
	call scroll
	call delay
	
	mov ch,00
	mov cl,50
	mov dh,07
	mov dl,59
	mov bh,50h
	call scroll
	call delay
	
	mov ch,00
	mov cl,60
	mov dh,07
	mov dl,69
	mov bh,70h
	call scroll
	call delay
	
	mov ch,00
	mov cl,70
	mov dh,07
	mov dl,79
	mov bh,10h
	call scroll
	call delay
	;--------------2
	mov ch,08
	mov cl,70
	mov dh,15
	mov dl,79
	mov bh,20h
	call scroll
	call delay
	
	mov ch,08
	mov cl,60
	mov dh,15
	mov dl,69
	mov bh,30h
	call scroll
	call delay
	
	mov ch,08
	mov cl,50
	mov dh,15
	mov dl,59
	mov bh,20h
	call scroll
	call delay
	
	mov ch,08
	mov cl,40
	mov dh,15
	mov dl,49
	mov bh,10h
	call scroll
	call delay
	
	mov ch,08
	mov cl,30
	mov dh,15
	mov dl,39
	mov bh,70h
	call scroll
	call delay
	
	mov ch,08
	mov cl,20
	mov dh,15
	mov dl,29
	mov bh,50h
	call scroll
	call delay
	
	mov ch,08
	mov cl,10
	mov dh,15
	mov dl,19
	mov bh,60h
	call scroll
	call delay
	
	mov ch,08
	mov cl,00
	mov dh,15
	mov dl,09
	mov bh,40h
	call scroll
	call delay
	;-------------------3
	mov ch,16
	mov cl,00
	mov dh,24
	mov dl,09
	mov bh,30h
	call scroll
	call delay
	
	mov ch,16
	mov cl,10
	mov dh,24
	mov dl,19
	mov bh,20h
	call scroll
	call delay
	
	mov ch,16
	mov cl,20
	mov dh,24
	mov dl,29
	mov bh,10h
	call scroll
	call delay
	
	mov ch,16
	mov cl,30
	mov dh,24
	mov dl,39
	mov bh,30h
	call scroll
	call delay
	
	mov ch,16
	mov cl,40
	mov dh,24
	mov dl,49
	mov bh,50h
	call scroll
	call delay
	
	mov ch,16
	mov cl,50
	mov dh,24
	mov dl,59
	mov bh,60h
	call scroll
	call delay
	
	mov ch,16
	mov cl,60
	mov dh,24
	mov dl,69
	mov bh,40h
	call scroll
	call delay
	
	mov ch,16
	mov cl,70
	mov dh,24
	mov dl,79
	mov bh,70h
	call scroll
	call delay
	;------------------next round
	mov ch,00
	mov cl,00
	mov dh,07
	mov dl,09
	mov bh,20h
	call scroll
	call delay
	
	mov ch,00
	mov cl,10
	mov dh,07
	mov dl,19
	mov bh,50h
	call scroll
	call delay
	
	mov ch,00
	mov cl,20
	mov dh,07
	mov dl,29
	mov bh,10h
	call scroll
	call delay
	
	mov ch,00
	mov cl,30
	mov dh,07
	mov dl,39
	mov bh,60h
	call scroll
	call delay
	
	mov ch,00
	mov cl,40
	mov dh,07
	mov dl,49
	mov bh,70h
	call scroll
	call delay
	
	mov ch,00
	mov cl,50
	mov dh,07
	mov dl,59
	mov bh,30h
	call scroll
	call delay
	
	mov ch,00
	mov cl,60
	mov dh,07
	mov dl,69
	mov bh,60h
	call scroll
	call delay
	
	mov ch,00
	mov cl,70
	mov dh,07
	mov dl,79
	mov bh,40h
	call scroll
	call delay
	;-----------------
	mov ch,08
	mov cl,70
	mov dh,15
	mov dl,79
	mov bh,50h
	call scroll
	call delay
	
	mov ch,08
	mov cl,60
	mov dh,15
	mov dl,69
	mov bh,10h
	call scroll
	call delay
	
	mov ch,08
	mov cl,50
	mov dh,15
	mov dl,59
	mov bh,40h
	call scroll
	call delay
	
	mov ch,08
	mov cl,40
	mov dh,15
	mov dl,49
	mov bh,20h
	call scroll
	call delay
	
	mov ch,08
	mov cl,30
	mov dh,15
	mov dl,39
	mov bh,30h
	call scroll
	call delay
	
	mov ch,08
	mov cl,20
	mov dh,15
	mov dl,29
	mov bh,40h
	call scroll
	call delay
	
	mov ch,08
	mov cl,10
	mov dh,15
	mov dl,19
	mov bh,70h
	call scroll
	call delay
	
	mov ch,08
	mov cl,00
	mov dh,15
	mov dl,09
	mov bh,60h
	call scroll
	call delay
	;---------------
	mov ch,16
	mov cl,00
	mov dh,24
	mov dl,09
	mov bh,70h
	call scroll
	call delay
	
	mov ch,16
	mov cl,10
	mov dh,24
	mov dl,19
	mov bh,60h
	call scroll
	call delay
	
	mov ch,16
	mov cl,20
	mov dh,24
	mov dl,29
	mov bh,40h
	call scroll
	call delay
	
	mov ch,16
	mov cl,30
	mov dh,24
	mov dl,39
	mov bh,20h
	call scroll
	call delay
	
	mov ch,16
	mov cl,40
	mov dh,24
	mov dl,49
	mov bh,30h
	call scroll
	call delay
	
	mov ch,16
	mov cl,50
	mov dh,24
	mov dl,59
	mov bh,50h
	call scroll
	call delay
	
	mov ch,16
	mov cl,60
	mov dh,24
	mov dl,69
	mov bh,20h
	call scroll
	call delay
	
	mov ch,16
	mov cl,70
	mov dh,24
	mov dl,79
	mov bh,10h
	call scroll
	call delay
	;--------------------round 3
	mov ch,00
	mov cl,00
	mov dh,07
	mov dl,09
	mov bh,10h
	call scroll
	call delay
	
	mov ch,00
	mov cl,10
	mov dh,07
	mov dl,19
	mov bh,20h
	call scroll
	call delay
	
	mov ch,00
	mov cl,20
	mov dh,07
	mov dl,29
	mov bh,30h
	call scroll
	call delay
	
	mov ch,00
	mov cl,30
	mov dh,07
	mov dl,39
	mov bh,40h
	call scroll
	call delay
	
	mov ch,00
	mov cl,40
	mov dh,07
	mov dl,49
	mov bh,60h
	call scroll
	call delay
	
	mov ch,00
	mov cl,50
	mov dh,07
	mov dl,59
	mov bh,50h
	call scroll
	call delay
	
	mov ch,00
	mov cl,60
	mov dh,07
	mov dl,69
	mov bh,70h
	call scroll
	call delay
	
	mov ch,00
	mov cl,70
	mov dh,07
	mov dl,79
	mov bh,10h
	call scroll
	call delay
	;--------------2
	mov ch,08
	mov cl,70
	mov dh,15
	mov dl,79
	mov bh,20h
	call scroll
	call delay
	
	mov ch,08
	mov cl,60
	mov dh,15
	mov dl,69
	mov bh,30h
	call scroll
	call delay
	
	mov ch,08
	mov cl,50
	mov dh,15
	mov dl,59
	mov bh,20h
	call scroll
	call delay
	
	mov ch,08
	mov cl,40
	mov dh,15
	mov dl,49
	mov bh,10h
	call scroll
	call delay
	
	mov ch,08
	mov cl,30
	mov dh,15
	mov dl,39
	mov bh,70h
	call scroll
	call delay
	
	mov ch,08
	mov cl,20
	mov dh,15
	mov dl,29
	mov bh,50h
	call scroll
	call delay
	
	mov ch,08
	mov cl,10
	mov dh,15
	mov dl,19
	mov bh,60h
	call scroll
	call delay
	
	mov ch,08
	mov cl,00
	mov dh,15
	mov dl,09
	mov bh,40h
	call scroll
	call delay
	;-------------------3
	mov ch,16
	mov cl,00
	mov dh,24
	mov dl,09
	mov bh,30h
	call scroll
	call delay
	
	mov ch,16
	mov cl,10
	mov dh,24
	mov dl,19
	mov bh,20h
	call scroll
	call delay
	
	mov ch,16
	mov cl,20
	mov dh,24
	mov dl,29
	mov bh,10h
	call scroll
	call delay
	
	mov ch,16
	mov cl,30
	mov dh,24
	mov dl,39
	mov bh,30h
	call scroll
	call delay
	
	mov ch,16
	mov cl,40
	mov dh,24
	mov dl,49
	mov bh,50h
	call scroll
	call delay
	
	mov ch,16
	mov cl,50
	mov dh,24
	mov dl,59
	mov bh,60h
	call scroll
	call delay
	
	mov ch,16
	mov cl,60
	mov dh,24
	mov dl,69
	mov bh,40h
	call scroll
	call delay
	
	mov ch,16
	mov cl,70
	mov dh,24
	mov dl,79
	mov bh,70h
	call scroll
	call delay
mov ax,03h
int 10h
	mov ch,08     ;--------------------------new screen
	mov cl,00
	mov dh,11
	mov dl,79
	mov bh,03h
	call scroll
	
	mov ch,12
	mov cl,00
	mov dh,14
	mov dl,79
	mov bh,07h
	call scroll
	
	mov ch,15
	mov cl,00
	mov dh,18
	mov dl,79
	mov bh,03h
	call scroll
	
	mov dh,08
	mov dl,00
	call cursor
	
	lea dx,string1
	call print
	;-------------
	mov ch,01
	mov cl,00
	mov dh,01
	mov dl,79
	mov bh,03h
	call scroll
	
	mov dh,01
	mov dl,00
	call cursor
	
	lea dx,string0
	call print
	;--------------
	mov ch,23
	mov cl,00
	mov dh,23
	mov dl,79
	mov bh,03h
	call scroll
	
	mov dh,23
	mov dl,00
	call cursor
	
	lea dx,string0
	call print
	
	call delay1
mov ax,03h
int 10h
	mov ch,01     ;----------------------------screen 2
	mov cl,00
	mov dh,01
	mov dl,79
	mov bh,03h
	call scroll
	
	mov dh,01
	mov dl,00
	call cursor
	
	lea dx,string0
	call print
	;-------------
	mov ch,23
	mov cl,00
	mov dh,23
	mov dl,79
	mov bh,03h
	call scroll
	
	mov dh,23
	mov dl,00
	call cursor
	
	lea dx,string0
	call print
	;--------------
	mov ch,05
	mov cl,00
	mov dh,07
	mov dl,79
	mov bh,07h
	call scroll
	
	mov ch,08
	mov cl,00
	mov dh,11
	mov dl,79
	mov bh,03h
	call scroll
	
	mov dh,05
	mov dl,00
	call cursor
	
	lea dx,string2
	call print
	;--------------
	mov dh,17
	mov dl,00
	call cursor
	
	lea dx,string3
	call print
	
	mov ch,18
	mov cl,22
	mov dh,19
	mov dl,28
	mov bh,30h
	call scroll
	call delay2
	
	mov ch,18
	mov cl,29
	mov dh,19
	mov dl,35
	mov bh,30h
	call scroll
	call delay2
	
	mov ch,18
	mov cl,36
	mov dh,19
	mov dl,42
	mov bh,30h
	call scroll
	call delay2
	
	mov ch,18
	mov cl,43
	mov dh,19
	mov dl,50
	mov bh,30h
	call scroll
	call delay2
	
	mov ch,18
	mov cl,51
	mov dh,19
	mov dl,58
	mov bh,30h
	call scroll
	call delay2
mov ax,03h
int 10h
	mov ch,01    ;-------------for unblock king intro
	mov cl,04
	mov dh,14
	mov dl,27
	mov bh,07h
	call scroll
	
	mov dh,01
	mov dl,04
	call cursor
	
	lea dx,string4
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,05
	mov cl,29
	mov dh,18
	mov dl,52
	mov bh,03h
	call scroll
	
	mov dh,05
	mov dl,29
	call cursor
	lea dx,string5
	call print
	call delay3

mov ax,03h
int 10h
	mov ch,08
	mov cl,54
	mov dh,21
	mov dl,77
	mov bh,07h
	call scroll
	
	mov dh,08
	mov dl,54
	call cursor
	lea dx,string6
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,01
	mov cl,54
	mov dh,14
	mov dl,77
	mov bh,03h
	call scroll
	
	mov dh,01
	mov dl,54
	call cursor
	
	lea dx,string6
	call print
	call delay3

mov ax,03h
int 10h
	mov ch,05
	mov cl,29
	mov dh,18
	mov dl,52
	mov bh,07h
	call scroll
	
	mov dh,05
	mov dl,29
	call cursor
	lea dx,string5
	call print
	call delay3

mov ax,03h
int 10h
	mov ch,08
	mov cl,04
	mov dh,21
	mov dl,27
	mov bh,03h
	call scroll
	
	mov dh,08
	mov dl,04
	call cursor
	lea dx,string4
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,01
	mov cl,04
	mov dh,14
	mov dl,27
	mov bh,07h
	call scroll
	
	mov dh,01
	mov dl,04
	call cursor
	lea dx,string4
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,08
	mov cl,54
	mov dh,21
	mov dl,77
	mov bh,03h
	call scroll
	
	mov dh,08
	mov dl,54
	call cursor
	lea dx,string6
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,01
	mov cl,54
	mov dh,14
	mov dl,77
	mov bh,07h
	call scroll
	
	mov dh,01
	mov dl,54
	call cursor
	lea dx,string6
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,08
	mov cl,04
	mov dh,21
	mov dl,27
	mov bh,03h
	call scroll
	
	mov dh,08
	mov dl,04
	call cursor
	lea dx,string4
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,05
	mov cl,29
	mov dh,18
	mov dl,52
	mov bh,07h
	call scroll
	
	mov dh,05
	mov dl,29
	call cursor
	lea dx,string5
	call print
	call delay3
mov ax,03h
int 10h
	mov ch,03   ;---------------
	mov cl,07
	mov dh,16
	mov dl,18
	mov bh,07h
	call scroll

	mov ch,03
	mov cl,19
	mov dh,16
	mov dl,30
	mov bh,03h
	call scroll

	mov dh,03
	mov dl,07
	call cursor
	lea dx,string7
	call print
	call delay4
mov ax,03h
int 10h
	mov ch,03    ;--------------------------last exposure
	mov cl,22
	mov dh,07
	mov dl,27
	mov bh,07h
	call scroll

	mov dh,03
	mov dl,22
	call cursor
	lea dx,string8
	call print
	call delay4
mov ax,03h
int 10h
	mov ch,03
	mov cl,31
	mov dh,07
	mov dl,36
	mov bh,07h
	call scroll

	mov dh,03
	mov dl,31
	call cursor
	lea dx,string9
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,03
	mov cl,40
	mov dh,07
	mov dl,45
	mov bh,07h
	call scroll

	mov dh,03
	mov dl,40
	call cursor
	lea dx,string10
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,03
	mov cl,49
	mov dh,07
	mov dl,54
	mov bh,07h
	call scroll

	mov dh,03
	mov dl,49
	call cursor
	lea dx,string11
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,03
	mov cl,58
	mov dh,07
	mov dl,63
	mov bh,07h
	call scroll

	mov dh,03
	mov dl,58
	call cursor
	lea dx,string12
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,03
	mov cl,67
	mov dh,07
	mov dl,72
	mov bh,07h
	call scroll

	mov dh,03
	mov dl,67
	call cursor
	lea dx,string13
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,10
	mov cl,34
	mov dh,15
	mov dl,40
	mov bh,03h
	call scroll

	mov dh,10
	mov dl,34
	call cursor
	lea dx,string14
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,10
	mov cl,44
	mov dh,15
	mov dl,50
	mov bh,03h
	call scroll

	mov dh,10
	mov dl,44
	call cursor
	lea dx,string15
	call print
	call delay4	
mov ax,03h
int 10h
	mov ch,10
	mov cl,54
	mov dh,15
	mov dl,61
	mov bh,03h
	call scroll

	mov dh,10
	mov dl,54
	call cursor
	lea dx,string16
	call print
	call delay4
start:
mov ax,03h
int 10h
	mov ch,03
	mov cl,07
	mov dh,16
	mov dl,18
	mov bh,07h
	call scroll

	mov ch,03
	mov cl,19
	mov dh,16
	mov dl,30
	mov bh,03h
	call scroll
	
	mov ch,03
	mov cl,22
	mov dh,07
	mov dl,72
	mov bh,07h
	call scroll

	mov ch,10
	mov cl,33
	mov dh,15
	mov dl,70
	mov bh,03h
	call scroll
	
	mov dh,03
	mov dl,07
	call cursor
	lea dx,string17
	call print

	mov ch,19
	mov cl,00
	mov dh,21
	mov dl,79
	mov bh,03h
	call scroll

	mov dh,19
	mov dl,00
	call cursor
	lea dx,string18
	call print
select:
mov ah, 07h
int 21h	
	cmp al,'P'
	if e jmp easy_call
	cmp al,'p'
	if e jmp easy_call
    cmp al,'Q'
	if e jmp stop1
	cmp al,'q'
	if e jmp stop1
	cmp al,'H'
	if e jmp about
	cmp al,'h'
	if e jmp about
	cmp al,'C'
	if e jmp credits
	cmp al,'c'
	if e jmp credits
	ret
easy_call:
	mov ax, 0600h
	mov bh, 00h
	mov cx, 0000h
	mov dx, 184fh
	int 10h
ceasy:
	call easy
jmp stop
ret

stop:
	mov ah,00h ; get keyboard key
	int 16h
	mov ah,00h ;reset mode
	mov al,mode
	int 10h
mov ax,4c00h
int 21h
main endp

cursor proc near
	mov ah,02h      ;get cursor position
	mov bh,00h
	int 10h
	ret
	cursor endp	
print proc near
	mov ah,09h
	int 21h
	ret
	print endp
scroll proc near
	mov ax,0600h
	int 10h
	ret
	scroll endp
delay proc near
	mov base2,01
	loop1: mov base1,0ffffh
	loop2: nop
		dec base1
		jnz loop2
		dec base2
		jnz loop1
		ret
	delay endp
delay1 proc near
	mov base2,20
	loop3: mov base1,0ffffh
	loop4: nop
		dec base1
		jnz loop4
		dec base2
		jnz loop3
		ret
	delay1 endp
delay2 proc near
	mov base2,07
	loop5: mov base1,0ffffh
	loop6: nop
		dec base1
		jnz loop6
		dec base2
		jnz loop5
		ret
		delay2 endp
delay3 proc near
	mov base2,02
	loop7: mov base1,0ffffh
	loop8: nop
		dec base1
		jnz loop8
		dec base2
		jnz loop7
		ret
		delay3 endp
delay4 proc near
	mov base2,02
	loop9: mov base1,0ffffh
	loop10: nop
		dec base1
		jnz loop10
		dec base2
		jnz loop9
		ret
		delay4 endp
easy proc near
	call king
	
	mov ch,06    ; blue
	mov cl,28
	mov dh,08
	mov dl,39
	mov bh,01h
	call scroll
	
	mov dh,06
	mov dl,28
	call cursor
	lea dx,box2
	call print
	
	mov dh,07
	mov dl,28
	call cursor
	lea dx,box5
	call print
	
	mov dh,08
	mov dl,28
	call cursor
	lea dx,box2
	call print
	
	mov ch,09   ; red
	mov cl,22
	mov dh,11
	mov dl,33
	mov bh,04h
	call scroll
	
	mov dh,09
	mov dl,22
	call cursor
	lea dx,box2
	call print
	
	mov dh,10
	mov dl,22
	call cursor
	lea dx,box4
	call print
	
	mov dh,11
	mov dl,22
	call cursor
	lea dx,box2
	call print
	
	mov ch,12   ; white
	mov cl,22
	mov dh,14
	mov dl,33
	mov bh,07h
	call scroll
	
	mov dh,12
	mov dl,22
	call cursor
	lea dx,box2
	call print
	
	mov dh,13
	mov dl,22
	call cursor
	lea dx,box6
	call print
	
	mov dh,14
	mov dl,22
	call cursor
	lea dx,box2
	call print
	
	mov ch,15   ; magenta
	mov cl,28
	mov dh,20
	mov dl,33
	mov bh,05h
	call scroll
	
	mov dh,15
	mov dl,28
	call cursor
	lea dx,box1
	call print
	
	mov dh,16
	mov dl,28
	call cursor
	lea dx,box1
	call print
	
	mov dh,17
	mov dl,28
	call cursor
	lea dx,box10
	call print
	
	mov dh,18
	mov dl,28
	call cursor
	lea dx,box1
	call print
	
	mov dh,19
	mov dl,28
	call cursor
	lea dx,box1
	call print
	
	mov dh,20
	mov dl,28
	call cursor
	lea dx,box1
	call print
	
	mov ch,09   ; green
	mov cl,34
	mov dh,14
	mov dl,39
	mov bh,02h
	call scroll
	
	mov dh,09
	mov dl,34
	call cursor
	lea dx,box1
	call print
	
	mov dh,10
	mov dl,34
	call cursor
	lea dx,box1
	call print
	
	mov dh,11
	mov dl,34
	call cursor
	lea dx,box9
	call print
	
	mov dh,12
	mov dl,34
	call cursor
	lea dx,box1
	call print
	
	mov dh,13
	mov dl,34
	call cursor
	lea dx,box1
	call print
	
	mov dh,14
	mov dl,34
	call cursor
	lea dx,box1
	call print
	
	mov ch,18   ; light blue
	mov cl,34
	mov dh,20
	mov dl,51
	mov bh,09h
	call scroll
	
	mov dh,18
	mov dl,34
	call cursor
	lea dx,box3
	call print
	
	mov dh,19
	mov dl,34
	call cursor
	lea dx,box7
	call print
	
	mov dh,20
	mov dl,34
	call cursor
	lea dx,box3
	call print
	
	mov ch,06   ; light magenta
	mov cl,46
	mov dh,14
	mov dl,51
	mov bh,0Dh
	call scroll
	
	mov dh,06
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,07
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,08
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,09
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,10
	mov dl,46
	call cursor
	lea dx,box12
	call print
	
	mov dh,11
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,12
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,13
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov dh,14
	mov dl,46
	call cursor
	lea dx,box1
	call print
	
	mov bluedls, 28
	mov bluedlr, 40
	mov lmagendhu, 6
	mov lmagendhl, 14
	mov grndhu, 9
	mov grndhl, 14
	mov whitedls, 22
	mov whitedlr, 34
	mov magendhu, 15
	mov magendhl, 20
	mov lbluedls, 34
	mov lbluedlr, 51
	mov kingdls, 22
	mov kingdlr, 33
selbox:
	mov ah, 00h
	int 16h
	
	cmp al, 49
	if e jmp arrblue
	cmp al, 50
	if e jmp arrgrn
	cmp al, 51
	if e jmp arrwhite
	cmp al, 52
	if e jmp arrmagen
	cmp al, 53
	if e jmp arrlblue
	cmp al, 'k'
	if e jmp arrking
	cmp al, 'K'
	if e jmp arrking
	cmp al, 56
	if e jmp arrlmagent
	if ne jmp exit
	
arrking:
	mov ah, 00h
	int 16h
	
	cmp ah, 04dh
	if e jmp kingright
	cmp ah, 04bh
	if e jmp kingleft
	cmp al, 32
	if e jmp selbox
	if ne jmp exit
kingright:
	cmp kingdlr, 58
	if ne jmp rightking 
	if e jmp arrking
rightking:
	inc kingdlr
	mov dh, 9
	mov dl, kingdlr
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prorytking
	if e jmp selbox
prorytking:
	mov ch, 9
	mov cl, kingdls
	mov dh, 11
	mov dl, kingdlr
	call dlete

	inc kingdls
	inc kingdls
	inc kingdls
	inc kingdls
	inc kingdls
	inc kingdls
	inc kingdlr
	inc kingdlr
	inc kingdlr
	inc kingdlr
	inc kingdlr
	
	mov dh, 9
	mov dl, kingdls
	call cursor
	
	mov al, 219
	mov bl, 04h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	mov dh, 10
	mov dl, kingdls
	call cursor
	
	mov al, 219
	mov bl, 04h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	mov dh, 11
	mov dl, kingdls
	call cursor
	
	mov al, 219
	mov bl, 04h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
kingexit:
	cmp kingdls, 58
	if e jmp exit
	if ne jmp arrking
kingleft:
	cmp kingdls, 22
	if ne jmp leftking 
	if e jmp arrblue

leftking:
	dec kingdls
	mov dh, 9
	mov dl, kingdls
	call cursor

	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp proleftking
	if e jmp selbox
proleftking:
	mov ch, 9
	mov cl, kingdls
	mov dh, 11
	mov dl, kingdlr
	call dlete

	dec kingdls
	dec kingdls
	dec kingdls
	dec kingdls
	dec kingdls
	dec kingdlr
	dec kingdlr
	dec kingdlr
	dec kingdlr
	dec kingdlr
	dec kingdlr
	
	mov dh, 9
	mov dl, kingdls
	call cursor
	
	mov al, 219
	mov bl, 04h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	mov dh, 10
	mov dl, kingdls
	call cursor
	
	mov al, 219
	mov bl, 04h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	mov dh, 11
	mov dl, kingdls
	call cursor
	
	mov al, 219
	mov bl, 04h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	jmp arrking

arrlblue:
	mov ah, 00h
	int 16h
	
	cmp ah, 04dh
	if e jmp lbright
	cmp ah, 04bh
	if e jmp lbleft
	cmp al, 32
	if e jmp selbox
	if ne jmp exit
lbright:
	cmp lbluedlr, 58
	if ne jmp rightlb 
	if e jmp arrlblue
rightlb:
	inc lbluedlr
	mov dh, 18
	mov dl, lbluedlr
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prorytlb
	if e jmp selbox
prorytlb:
	mov ch, 18
	mov cl, lbluedls
	mov dh, 20
	mov dl, lbluedlr
	call dlete

	inc lbluedls
	inc lbluedls
	inc lbluedls
	inc lbluedls
	inc lbluedls
	inc lbluedls
	inc lbluedlr
	inc lbluedlr
	inc lbluedlr
	inc lbluedlr
	inc lbluedlr
	
	mov dh, 18
	mov dl, lbluedls
	call cursor
	
	mov al, 219
	mov bl, 09h
	mov ah, 09h
	mov cx, 0012h
	mov bh, 00h
	int 10h
	
	mov dh, 19
	mov dl, lbluedls
	call cursor
	
	mov al, 219
	mov bl, 09h
	mov ah, 09h
	mov cx, 0012h
	mov bh, 00h
	int 10h
	
	mov dh, 20
	mov dl, lbluedls
	call cursor
	
	mov al, 219
	mov bl, 09h
	mov ah, 09h
	mov cx, 0012h
	mov bh, 00h
	int 10h
	jmp arrlblue
lbleft:
	cmp lbluedls, 22
	if ne jmp leftlb 
	if e jmp arrblue

leftlb:
	dec lbluedls
	mov dh, 18
	mov dl, lbluedls
	call cursor

	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp proleftlb
	if e jmp selbox
proleftlb:
	mov ch, 18
	mov cl, lbluedls
	mov dh, 20
	mov dl, lbluedlr
	call dlete

	dec lbluedls
	dec lbluedls
	dec lbluedls
	dec lbluedls
	dec lbluedls
	dec lbluedlr
	dec lbluedlr
	dec lbluedlr
	dec lbluedlr
	dec lbluedlr
	dec lbluedlr
	
	mov dh, 18
	mov dl, lbluedls
	call cursor
	
	mov al, 219
	mov bl, 09h
	mov ah, 09h
	mov cx, 0012h
	mov bh, 00h
	int 10h
	
	mov dh, 19
	mov dl, lbluedls
	call cursor
	
	mov al, 219
	mov bl, 09h
	mov ah, 09h
	mov cx, 0012h
	mov bh, 00h
	int 10h
	
	mov dh, 20
	mov dl, lbluedls
	call cursor
	
	mov al, 219
	mov bl, 09h
	mov ah, 09h
	mov cx, 0012h
	mov bh, 00h
	int 10h
	
	jmp arrlblue
arrmagen:
	mov ah, 00h
	int 16h
	
	cmp ah, 048h
	if e jmp magenup
	cmp ah, 050h
	if e jmp magendown
	cmp al, 32
	if e jmp selbox
	if ne jmp exit
magenup:	
	cmp magendhu, 2
	if e jmp arrmagen
	if ne jmp upmagen
upmagen:
	dec magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp proupmagen
	if e jmp selbox
proupmagen:
	inc magendhu
	mov ch, magendhu
	mov cl, 28
	mov dh, magendhl
	mov dl, 33
	call dlete
	
	dec magendhu
	dec magendhu
	dec magendhu
	dec magendhl
	dec magendhl
	dec magendhl
	
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 05h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 05h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 05h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 05h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 05h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 05h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	dec magendhu
	dec magendhu
	dec magendhu
	dec magendhu
	dec magendhu
	
	jmp arrmagen
magendown:
	cmp magendhl, 20
	if ne jmp downmagen
	if e jmp arrmagen
downmagen:
	inc magendhl
	mov dh, magendhl
	mov dl, 28
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prodownmagen
	if e jmp selbox
prodownmagen:
	dec magendhl
	mov ch, magendhu
	mov cl, 28
	mov dh, magendhl
	mov dl, 33
	call dlete
	
	inc magendhu
	inc magendhu
	inc magendhu
	inc magendhl
	inc magendhl
	inc magendhl

	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 05h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 05h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 05h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 05h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 05h
	mov cx, 0006h
	int 10h
	
	inc magendhu
	mov dh, magendhu
	mov dl, 28
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 05h
	mov cx, 0006h
	int 10h
	
	dec magendhu
	dec magendhu
	dec magendhu
	dec magendhu
	dec magendhu
		
	jmp arrmagen
arrwhite:
	mov ah, 00h
	int 16h
	
	cmp ah, 04dh
	if e jmp whiteright
	cmp ah, 04bh
	if e jmp whiteleft
	cmp al, 32
	if e jmp selbox
	if ne jmp exit
whiteright:
	cmp whitedlr, 58
	if ne jmp rightwhite 
	if e jmp arrwhite
rightwhite:
	inc whitedlr
	mov dh, 12
	mov dl, whitedlr
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prorytwh
	if e jmp selbox
prorytwh:
	mov ch, 12
	mov cl, whitedls
	mov dh, 14
	mov dl, whitedlr
	call dlete

	inc whitedls
	inc whitedls
	inc whitedls
	inc whitedls
	inc whitedls
	inc whitedls
	inc whitedlr
	inc whitedlr
	inc whitedlr
	inc whitedlr
	inc whitedlr
	
	mov dh, 12
	mov dl, whitedls
	call cursor
	
	mov al, 219
	mov bl, 07h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	mov dh, 13
	mov dl, whitedls
	call cursor
	
	mov al, 219
	mov bl, 07h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	mov dh, 14
	mov dl, whitedls
	call cursor
	
	mov al, 219
	mov bl, 07h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h

	jmp arrwhite
		
whiteleft:
	cmp whitedls, 22
	if ne jmp leftwhite 
	if e jmp arrwhite

leftwhite:
	dec whitedls
	mov dh, 12
	mov dl, whitedls
	call cursor

	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp proleftwh
	if e jmp selbox
proleftwh:
	dec whitedlr
	mov ch, 12
	mov cl, whitedls
	mov dh, 14
	mov dl, whitedlr
	call dlete

	dec whitedls
	dec whitedls
	dec whitedls
	dec whitedls
	dec whitedls
	dec whitedlr
	dec whitedlr
	dec whitedlr
	dec whitedlr
	dec whitedlr
	
	mov dh, 12
	mov dl, whitedls
	call cursor
	
	mov al, 219
	mov bl, 07h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	mov dh, 13
	mov dl, whitedls
	call cursor
	
	mov al, 219
	mov bl, 07h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	mov dh, 14
	mov dl, whitedls
	call cursor
	
	mov al, 219
	mov bl, 07h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	jmp arrwhite

arrgrn:
	mov ah, 00h
	int 16h
	
	cmp ah, 048h
	if e jmp grnup
	cmp ah, 050h
	if e jmp grndown
	cmp al, 32
	if e jmp selbox
	if ne jmp exit
grnup:	
	cmp grndhu, 2
	if e jmp arrgrn
	if ne jmp upgrn
upgrn:
	dec grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp proupgrn
	if e jmp selbox
proupgrn:
	inc grndhu
	mov ch, grndhu
	mov cl, 34
	mov dh, grndhl
	mov dl, 39
	call dlete
	
	dec grndhu
	dec grndhu
	dec grndhu
	dec grndhl
	dec grndhl
	dec grndhl
	
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 02h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 02h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 02h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 02h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 02h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bl, 02h
	mov bh, 00h
	mov cx, 0006h
	int 10h
	
	dec grndhu
	dec grndhu
	dec grndhu
	dec grndhu
	dec grndhu
	
	jmp arrgrn
grndown:
	cmp grndhl, 20
	if ne jmp downgrn
	if e jmp arrgrn
downgrn:
	inc grndhl
	mov dh, grndhl
	mov dl, 34
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prodowngrn
	if e jmp selbox
prodowngrn:
	dec grndhl
	mov ch, grndhu
	mov cl, 34
	mov dh, grndhl
	mov dl, 39
	call dlete
	
	inc grndhu
	inc grndhu
	inc grndhu
	inc grndhl
	inc grndhl
	inc grndhl

	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 02h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 02h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 02h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 02h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 02h
	mov cx, 0006h
	int 10h
	
	inc grndhu
	mov dh, grndhu
	mov dl, 34
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 02h
	mov cx, 0006h
	int 10h
	
	dec grndhu
	dec grndhu
	dec grndhu
	dec grndhu
	dec grndhu
		
	jmp arrgrn
arrblue:
	mov ah, 00h
	int 16h
	
	cmp ah, 04dh
	if e jmp blur
	cmp ah, 04bh
	if e jmp blul
	cmp al, 32
	if e jmp selbox
	if ne jmp exit
blur:
	cmp bluedlr, 58
	if ne jmp rightblue 
	if e jmp arrblue
rightblue:
	inc bluedlr
	mov dh, 6
	mov dl, bluedlr
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prorytbl
	if e jmp selbox
prorytbl:
	mov ch, 6
	mov cl, bluedls
	mov dh, 8
	mov dl, bluedlr
	call dlete

	inc bluedls
	inc bluedls
	inc bluedls
	inc bluedls
	inc bluedls
	inc bluedls
	inc bluedlr
	inc bluedlr
	inc bluedlr
	inc bluedlr
	inc bluedlr
	
	mov dh, 6
	mov dl, bluedls
	call cursor
	
	mov al, 219
	mov bl, 01h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	mov dh, 7
	mov dl, bluedls
	call cursor
	
	mov al, 219
	mov bl, 01h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h
	
	mov dh, 8
	mov dl, bluedls
	call cursor
	
	mov al, 219
	mov bl, 01h
	mov ah, 09h
	mov cx, 000ch
	mov bh, 00h
	int 10h

	jmp arrblue	
	
blul:
	cmp bluedls, 22
	if ne jmp leftblue 
	if e jmp arrblue

leftblue:
	dec bluedls
	mov dh, 6
	mov dl, bluedls
	call cursor

	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp proleftbl
	if e jmp selbox
proleftbl:
	dec bluedlr
	mov ch, 6
	mov cl, bluedls
	mov dh, 8
	mov dl, bluedlr
	call dlete

	dec bluedls
	dec bluedls
	dec bluedls
	dec bluedls
	dec bluedls
	dec bluedlr
	dec bluedlr
	dec bluedlr
	dec bluedlr
	dec bluedlr
	
	mov dh, 6
	mov dl, bluedls
	call cursor
	
	mov al, 219
	mov bl, 01h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	mov dh, 7
	mov dl, bluedls
	call cursor
	
	mov al, 219
	mov bl, 01h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	mov dh, 8
	mov dl, bluedls
	call cursor
	
	mov al, 219
	mov bl, 01h
	mov ah, 09h
	mov cx, 0000ch
	mov bh, 00h
	int 10h
	
	jmp arrblue
	
arrlmagent:
	mov ah, 00h
	int 16h
	
	cmp ah, 48h
	if e jmp lmup
	cmp ah, 50h
	if e jmp lmdown
	cmp al, 32
	if e jmp selbox
	if ne jmp arrlmagent

lmup:
	cmp lmagendhu, 2
	if e jmp arrlmagent
	if ne jmp uplm
uplm:
	dec lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prouplm
	if e jmp selbox
prouplm:
	inc lmagendhu
	mov ch, lmagendhu
	mov cl, 46
	mov dh, lmagendhl
	mov dl, 51
	call dlete
	
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhl
	dec lmagendhl
	dec lmagendhl
	
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov bl , 0dh
	mov ah, 09h
	mov cx, 0006h
	mov bh, 00h
	int 10h
	
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	
	jmp arrlmagent
lmdown:
	cmp lmagendhl, 20
	if ne jmp downlm
	if e jmp arrlmagent
downlm:
	inc lmagendhl
	mov dh, lmagendhl
	mov dl, 46
	call cursor
	
	mov ah, 08h
	mov bh, 00h
	int 10h
	
	cmp al, 219
	if ne jmp prodownlm
	if e jmp selbox
prodownlm:
	dec lmagendhl
	mov ch, lmagendhu
	mov cl, 46
	mov dh, lmagendhl
	mov dl, 51
	call dlete
	
	inc lmagendhu
	inc lmagendhu
	inc lmagendhu
	inc lmagendhl
	inc lmagendhl
	inc lmagendhl

	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	inc lmagendhu
	mov dh, lmagendhu
	mov dl, 46
	call cursor
	
	mov al, 219
	mov ah, 09h
	mov bh, 00h
	mov bl, 0dh
	mov cx, 0006h
	int 10h
	
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
	dec lmagendhu
		
	jmp arrlmagent
ret
easy endp

dlete proc near
	mov ax, 0600h
	mov bh, 00h
	int 10h
ret
dlete endp

print1 proc near
	mov ah,09h
	int 21h
	ret
	print endp
scroll1 proc near
	mov ax,0600h
	int 10h
	ret
	scroll endp	
stop1 proc near
	mov ax, 0600h
	mov bh, 03h
	mov cx, 0000h
	mov dx, 184fh
	int 10h

	mov ah, 02h
	mov bh, 00h	
	mov dh, 10
	mov dl, 00
	int 10h

	mov ah, 09h
	lea dx, prompt
	int 21h

	mov ah, 07h
	int 21h

cmp al, 'Y'
if e jmp stop2
cmp al, 'y'
if e jmp stop2
cmp al, 'N'
if e jmp start
cmp al, 'n'
if e jmp start
ret
stop1 endp

stop2:
	mov ah, 00h
	mov al, mode
	int 10h

	mov ax, 4c00h
	int 10h
	ret
about proc near
	mov ax, 0600h
	mov bh, 03h
	mov cx, 0000h
	mov dx, 184fh
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 07h
	mov dl, 00h
	int 10h

	mov ah, 09h
	lea dx, help
	int 21h

	mov ah, 00h
	int 16h
jmp start
ret
about endp

credits proc near    ;-----------------credits
mov ax, 0600h
mov bh, 03h
mov cx, 0000h
mov dx, 184fh
int 10h

mov ah, 02h
mov bh, 00h
mov dh, 04h
mov dl, 00h
int 10h

mov ah, 09h
lea dx, thanks
int 21h

mov ah, 00h
int 16h
jmp start
ret
credits endp

king proc near
	mov ax,0600h   ; color background 
	mov ch,00
	mov cl,00
	mov dh,25
	mov dl,65
	mov bh,03h         
	int 10h
;---------------------------------------
	mov dh,01       ;set cursor position  
	mov dl,00         
	call cursor
	    
	lea dx,layer   ;print layer
	call print1
	
	mov ax,0600h   
	mov ch,00
	mov cl,00
	mov dh,25
	mov dl,13
	mov bh,07h         
	int 10h
	
	mov dh,01
	mov dl,00
	call cursor
	lea dx,layer2
	call print

    mov ax,0600h   
	mov ch,00
	mov cl,66
	mov dh,25
	mov dl,79
	mov bh,07h         
	int 10h
	
	mov dh,12
	mov dl,66
	call cursor
	lea dx,layer3
	call print
	
	mov dh,14
	mov dl,66
	call cursor
	lea dx,layer4
	call print
	
	mov dh,16
	mov dl,66
	call cursor
	lea dx,layer5
	call print
	
	mov dh,18
	mov dl,66
	call cursor
	lea dx,layer6
	call print
	
	mov dh,19
	mov dl,66
	call cursor
	lea dx,layer7
	call print
	
	mov dh,20
	mov dl,66
	call cursor
	lea dx,layer8
	call print

;Menu:	
;	mov ah, 07h
;	int 21h
	
;	cmp al, 'M'
;	if e jmp start
;	cmp al, 'm'
;	if e jmp start
;	cmp al, 'R'
;	if e jmp ceasy
;	cmp al, 'r'
;	if e jmp ceasy
;	if ne jmp Menu
ret
king endp

end main    ; --------terminate program------------------
