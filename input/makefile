read: read.o
	ld -lc -dynamic-linker /lib/ld-linux.so.2 read.o -o read
read.o: read.asm
	nasm read.asm -felf32 -l read.lst -o read.o -g
clean:
	rm read read.o read.lst
