#include <stdio.h>

int main(int argc, char * argv[])
{

	int x = 42;                       // $s2
	int a[15] = {22, 35, 48, 72, 30,  // $s3
	              4, 11, 23, 80, 15,
	             91, 35, 29, 44, 2};

	
	int tmp;                          // $t0 
	tmp = a[8];                       // lw $t0, 32($s3)
	
	tmp = x + tmp;                    // add $t0, $s2, $t0

	a[12] = tmp;                      // sw $t0, 48($s3)

	return 0;
}

