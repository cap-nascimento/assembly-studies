# Exercicio - traduza o código em C para Assembly
# Seja o array A = {45, 2, 3, 77, 87, 101};
# Seja a variável inteira g = 15;
# A[5] = g + A[2];

# mapeamento
# A -> $s2
# g -> $s1

# Definição do array (checar com o professor)
#.data
#array: .word 45, 2, 3, 77, 87, 101

.text
#	la  $s2, array           # Definindo $s2 = A
#	li  $s1, 15              # Definindo $s1 = g
	
	lw  $t0, 8($s2)          # Atribuindo A[2] para $t1 (8 = 2*4)
	add $t1, $s1, $t0        # Executando soma g + A[2]
	
	sw  $t1, 20($s2)         # Atribuindo g + A[2] a A[5] (20 = 5*4)
	