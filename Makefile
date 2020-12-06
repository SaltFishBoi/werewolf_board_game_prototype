CC = gcc
CFLAGS = -Wall -ansi -pedantic -g
MAIN = werewolf_main
OBJS = werewolf_main.o role.o analysis.o
all : $(MAIN)

$(MAIN) : $(OBJS) role.h analysis.h
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)

werewolf_main.o : werewolf_main.c role.h analysis.h
	$(CC) $(CFLAGS) -c werewolf_main.c

role.o : role.c role.h
	$(CC) $(CFLAGS) -c role.c

analysis.o : analysis.c analysis.h
	$(CC) $(CFLAGS) -c analysis.c

clean :
	rm *.o $(MAIN) core
