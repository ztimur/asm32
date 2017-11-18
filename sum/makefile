sum: sum.o isum15.o isum.o
	gcc -o sum sum.o isum15.o isum.o

sum.o: sum.c
	cc -c -o sum.o sum.c

isum15.o: isum15.asm
	nasm isum15.asm -o isum15.o -felf32

isum.o: isum.asm
	nasm isum.asm -o isum.o -felf32
clean:
	rm *.o sum