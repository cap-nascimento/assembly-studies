# mapeamento
# $s0 = u
# $s1 = z
# $s2 = w
# $s3 = x
# $s4 = y

bne $s3, $s4, L1
add $s0, $s1, $s2
j L2

L1:
	sub $s0, $s1, $s2
L2: