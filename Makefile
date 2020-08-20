# Début du make file
# Déclaration des macros

CC = gcc
CFLAGS = -Wall -O3 -fopenmp -lpthread
LDFLAGS = -lm 

.PHONY:  all clean           

all : prog

prog : main.o operation.o
	$(CC) $^ -o $@ $(LDFLAGS)

main.o : main.c operation.h
	$(CC) main.c -c $(CFLAGS) 

operation.o : operation.h operation.c
	$(CC) operation.c -c $(CFLAGS)

# etc...

 clean:
	rm -f *.o
	rm -f *~  
 