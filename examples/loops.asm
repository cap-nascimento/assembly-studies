# Loops examples

# g, h, i, j = $s1, $s2, $s3, $s4
# A = $s5

.data
array: .word 4, 5, 6, 9, 78, 56448

.text
	L1: add $t1, $s3, $s3 # $t1 = 2*i
	    add $t1, $t1, $t1 # $t1 = 4*i
	    
	    add $t1, $t1, $s5 # $t1 = &A[i]
	    lw $t0, 0($t1)    # $t0 = A[i]
	    add $s1, $s1, $t0 # g = g + A[i]
	    
	    add $s3, $s3, $s4 # i = i + j
	    bne $s3, $s2, L1  # salta para L1 se i <> j
	