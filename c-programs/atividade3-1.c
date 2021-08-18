#include <stdio.h>

int main()
{

	int u;                 // $s0
	int z, w, x, y;

	z = 5;                 // $s1
	w = 12;                // $s2
	x = 33;                // $s3
	y = 21;                // $s4

	if(x != y){            // bne $s3, $s4, L1
		u = z - w;     // L1: sub $s0, $s1, $s2
	}else{
		u = z + w;     // add $s0, $s1, $s2
	}

	return 0;
}

