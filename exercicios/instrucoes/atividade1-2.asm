# Exercicio - traduza o código em C para Assembly
# Seja o array A = {45, 2, 3, 77, 87, 101};
# Seja a variável inteira g = 5;
# Seja a variável inteira i o índice 3
# A[i+g] = g + A[i] - A[0]

# mapeamento
# A -> $s2
# i -> $s0
# g -> $s1

# Definição do array (checar com o professor)
#.data
#array: .word 45, 2, 3, 77, 87, 101, 44, 25, 39

.text
#	la  $s2, array           # Definindo $s2 = A
#	li  $s0, 3               # Definindo $s0 = i
#	li  $s1, 5               # Definindo $s1 = g
	
	add $t0, $s0, $s0        # $t0 = 2 * i
	add $t0, $t0, $t0        # $t0 = 4 * i
	
	add $t0, $t0, $s2        # Adicionando endereço de A($s2) em $t0
	lw $t1, 0($t0)           # $t1 = A[i]
	
	lw $t2, 0($s2)           # $t2 = A[0]
	
	add $t3, $s1, $t1        # Primeira parte: $t3 = g + A[i]
	sub $t3, $t3, $t2        # Segunda parte: $t3 = $t3 - A[0]
	
	add $t0, $s0, $s1        # $t0 = i + g
	add $t1, $t0, $t0        # $t1 = 2 * (i + g)
	add $t1, $t1, $t1        # $t1 = 4 * (i + g)
	
	add $t1, $t1, $s2        # Adicionando endereço de A($s2) em $t1
	sw $t3, 0($t1)           # A[i+g] = $t3
	
	
	
