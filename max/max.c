#include <stdio.h>
#include <string.h>

extern int imax(int a, int b);

int main(int argc, char *argv[]) {
	int i1, i2, max;

	if (argc < 3) {
	    printf("Please pass two integer arguments.\n");
	    return -1;
	}
	
	i1 = atoi(argv[1]);
	i2 = atoi(argv[2]);

	max = imax(i1,i2);
	printf("imax(%d,%d)=%d\n", i1, i2, max);
}
