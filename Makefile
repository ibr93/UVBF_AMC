# Début du make file
# Déclaration des macros

CC = gcc
CFLAGS = -s -fomit-frame-pointer -O -fasynchronous-unwind-tables -g -save-temps -Wshadow -fverbose-asm -finstrument-functions -pedantic
EXEC=main
LDFLAGS = -lm -fopenmp -lpthread

.PHONY: clean all

all : main
	./main

main : main.o operation.o
	$(CC) $^ -o $@ $(LDFLAGS)

main.o : main.c operation.h
	$(CC) main.c -c $(CFLAGS)

operation.o : operation.h operation.c
	$(CC) operation.c -c $(CFLAGS)

 clean:
	rm -f *.o *.s *.i
	rm -f *~
