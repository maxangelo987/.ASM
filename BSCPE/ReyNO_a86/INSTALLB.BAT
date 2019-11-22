c:
md \a86
cd \a86
b:pcunzip -o b:a86*.zip
b:pcunzip -o b:d86*.zip
b:pcunzip -o b:reg_only.zip
del *.diz
copy b:errata
copy b:read.me
rem   Thank you for your interest in A86 and D86!
rem   You can print the manual with the command
rem   COPY *.DOC PRN but be warned it's huge: over
rem   150 pages for the assembler alone.  The files
rem   A02.DOC and D02.DOC contain demonstrations
rem   to show you how the programs work.

