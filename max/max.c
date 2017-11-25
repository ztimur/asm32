#include <stdio.h>
#include <string.h>

extern int imax(int a, int b, int c);

int main(int argc, char *argv[]) {
	int i1, i2, i3, max;

	if (argc < 4) {
	    printf("Please pass 3 integer numbers.\n");
	    return -1;
	}
	
	i1 = atoi(argv[1]);
	i2 = atoi(argv[2]);
	i3 = atoi(argv[3]);

	max = imax(i1,i2, i3);
	printf("imax(%d,%d,%d)=%d\n", i1, i2, i3, max);
}
