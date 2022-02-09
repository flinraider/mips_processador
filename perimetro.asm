.data     #diretriz de variaveis

lado1:  .asciiz   "lado1: "
lado2:  .asciiz   "lado2: "
lado3:  .asciiz   "lado3: "
lado4:  .asciiz   "lado4: "
soma:   .asciiz   "Soma => "

.text    # diretriz do codigo

# Lendo lado1
li $v0, 4      #Prepara o processador para uma String
la $a0, lado1  #a0 recebe lado1
syscall        #Executa a instrução
li $v0, 5      #Ler um numero inteiro  #entrada de dados numeros inteiros
syscall        #Executa
move $t1, $v0  #$t1 recebe o valor de $v0

li $v0, 4      #Prepara o processador para uma String
la $a0, lado2  #a0 recebe lado2
syscall        #Executa a instrução
li $v0, 5      #Ler um numero inteiro
syscall        #Executa
move $t2, $v0  #$t2 recebe o valor de $v0

li $v0, 4      #Prepara o processador para uma String
la $a0, lado3  #a0 recebe lado3
syscall        #Executa a instrução
li $v0, 5      #Ler um numero inteiro
syscall        #Executa
move $t3, $v0  #$t3 recebe o valor de $v0

li $v0, 4      #Prepara o processador para uma String
la $a0, lado4  #a0 recebe lado4
syscall        #Executa a instrução
li $v0, 5      #Ler um numero inteiro
syscall        #Executa
move $t4, $v0  #$t4 recebe o valor de $v0

# $t1, $t2, $t3, $t4
add $t5, $t1,$t2  # $t5 recebe ($t1+$t2)
add $t6, $t3,$t4  # $t6 recebe ($t3+$t4)
add $t0, $t5,$t6  # $t0 recebe ($t5+#t6)

#Apresentação dos resultados na tela 
li $v0, 4     #Prepara o processador para uma String
la $a0, soma  # $a0 recebe o String Soma =>
syscall       #Executa 

li $v0, 1     #Prepara o procesaador para numeros inteiros
la $a0, ($t0) #$a0 recebe o valor de $t0
syscall

li $v0, 10 #Prepara o programa para finalizar
syscall





