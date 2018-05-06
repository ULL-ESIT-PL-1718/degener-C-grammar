YACC = ../original/byacc-20001120/yacc
YFLAGS	= -dv
CFLAGS	= -DYYDEBUG  -g -O
LFLAGS	=
LEX = flex -l

SRC	= gram.y scan.l main.c
OBJ	= gram.o scan.o main.o

ansi_c :	$(OBJ)
	cc $(CFLAGS) $(OBJ)

scan.o	: y.tab.h

clean	:
	rm -f y.tab.h y.output *.o
