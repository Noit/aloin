CC = gcc
FLAGS = -g -Wall -I include/
SOURCE = main.c net.c
OBJC = main.o net.o
PRJC = aloin

vpath %.c src/
vpath %.h include/

$(PRJC):$(OBJC)
	$(CC) -o $@ $^ $(FLAGS)
$(OBJC):$(SOURCE)
	$(CC) -c $^ $(FLAGS)
