max: max.o imax.o
	gcc -o max max.o imax.o

max.o: max.c
	cc -c -o max.o max.c

imax.o: imax.asm
	nasm imax.asm -o imax.o -felf32
clean:
	rm *.o max