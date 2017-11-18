#include <stdio.h>
#include <string.h>
#include "isum.h"

int main(int argc, char *argv[]) {
	int s1, s2, max;

	if (argc < 2) {
	    printf("Please pass a integer argument.\n");
	    return -1;
	}
	
	max = atoi(argv[1]);
	s1 = isum15();
	s2 = isum(max);
	printf("isum15()=%d, isum(%d)=%d\n", s1, max, s2);
}
