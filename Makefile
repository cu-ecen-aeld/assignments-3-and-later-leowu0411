CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -g 


writer : writer.o
	$(CC) writer.o -o writer

writer.o : writer.c
	$(CC) $(CFLAGS)  writer.c -c  -O3 -o writer.o


clean :
	rm -f writer writer.o
