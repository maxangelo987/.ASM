md c:\a86
copy *.* c:\a86
c:
cd \a86
pcunzip -o a86*.zip
pcunzip -o reg_only.zip
installd
del *.diz
rem   Thank you for your interest in A86 and D86!
rem   You can print the manual with the command
rem   COPY ?86MAN.TXT PRN but be warned it's huge:
rem   over 150 pages for the assembler alone.  
rem   Read Chapter 2 of each manual, for
rem   demonstrations of how the programs work.
