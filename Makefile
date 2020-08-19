CC=gcc
CFLAGS=-I.
DEPS = operation.h
OBJ = main.o operation.o
%.o %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)