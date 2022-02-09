.data
pergunta: .asciiz "Digite sua Idade: " 
msg1:     .asciiz "Você é menor de Idade"
msg2:     .asciiz "Você é maior de Idade"
.text
li $v0, 4
la $a0, pergunta
syscall
li $v0, 5
syscall
move $t1, $v0
li $t0, 18
blt $t1, $t0, menor #desvia para o bloco menor se for menor que $t0 = 18
bge $t1,$t0,maior   #desvia para o bloco maior se for maior ou igual a $t0 = 18

menor:
li $v0, 4
la $a0, msg1
syscall
li $v0, 10
syscall

maior:
li $v0, 4
la $a0, msg2
syscall
li $v0, 10
syscall

