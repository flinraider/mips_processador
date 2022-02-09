.data
x: .asciiz "Digite o valor de x: "
y: .asciiz "Digite o valor de y: "
z: .asciiz "O resultado de x/y (inteiro) é: "
.text
li $v0, 4
la $a0, x
syscall
li $v0, 5
syscall
move $t1, $v0
li $v0, 4
la $a0, y
syscall
li $v0, 5
syscall
move $t2, $v0
div $t3, $t1,$t2
li $v0, 4
la $a0, z
syscall
li $v0, 1
la $a0, ($t3)
syscall
li $v0, 10
syscall