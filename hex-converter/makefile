hex: hex.o
	ld -lc -dynamic-linker /lib/ld-linux.so.2 hex.o -o hex
hex.o: hex.asm
	nasm hex.asm -felf32 -l hex.lst -o hex.o -dwarf
clean:
	rm hex hex.o hex.lst
