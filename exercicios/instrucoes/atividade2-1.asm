# Dado o seguinte código em C
#
# switch (k) {
#    case 0:
#        f=i+j; break;
#    case 1:
#         f=g+h; break;
#    case 2:
#         f=g-h; break;
#    case 3:
#         f=i-j; break;
#}
# Traduza para assembly

# Mapeamento:         
# f = $s0        |    k = $s5
# g = $s1        |    i + j = $t0
# h = $s2        |    g + h = $t1
# i = $s3        |    g - h = $t2
# j = $s4        |    i - j = $t3

.text
    addi $s1, $zero, 3       # g = 3
    addi $s2, $zero, 4       # h = 4
    addi $s3, $zero, 12      # i = 5 
    addi $s4, $zero, 15      # j = 6
    
    addi $t4, $zero, 1
    addi $t5, $zero, 2
    addi $t6, $zero, 3
        
    beq $s5, $zero, L1      # if(k == 0)
    
    beq $s5, $t4,   L2      # if(k == 1)
    
    beq $s5, $t5,   L3      # if(k == 2)
    
    beq $s5, $t6,   L4      # if(k == 3)
    
    j end                   # none of the above
    
    L1: add $s0, $s3, $s4   # f = i + j;
        j end               # break;
        
    L2: add $s0, $s1, $s2   # f = g + h;
        j end               # break;
        
    L3: sub $s0, $s1, $s2   # f = g - h;
        j end               # break;
        
    L4: sub $s0, $s3, $s4   # f = i - j;
        j end               # break;
    
    end:                    # end execution
    