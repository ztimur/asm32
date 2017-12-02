sum: sum.o sumofsquares10.o sumofsquares.o
	gcc -o sum sum.o sumofsquares10.o sumofsquares.o

sum.o: sum.c
	cc -c -o sum.o sum.c

sumofsquares10.o: sumofsquares10.asm
	nasm sumofsquares10.asm -o sumofsquares10.o -felf32

sumofsquares.o: sumofsquares.asm
	nasm sumofsquares.asm -o sumofsquares.o -felf32

clean:
	rm *.o sum