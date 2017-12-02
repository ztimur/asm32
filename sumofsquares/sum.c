#include <stdio.h>
#include <string.h>

extern int sumofsquares(int n);
extern int sumofsquares10();

int main(int argc, char *argv[]) {
	int s1, s2, max;

	if (argc < 2) {
	    printf("Please enter a integer argument.\n");
	    return -1;
	}
	
	max = atoi(argv[1]);
	s1 = sumofsquares10();
	s2 = sumofsquares(max);
	printf("sumofsquares10()=%d, sumofsquares(%d)=%d\n", s1, max, s2);
}
