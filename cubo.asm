.data 
numero: .asciiz "Digite o numero: "
cubo:   .asciiz "O cubo é: "
.text
li $v0, 4
la $a0, numero
syscall
li $v0, 5
syscall
move $t1, $v0
mul $t2, $t1,$t1
mul $t3, $t1,$t2
li $v0, 4
la $a0, cubo
syscall
li $v0, 1 
la $a0, ($t3)
syscall
li $v0, 10
syscall