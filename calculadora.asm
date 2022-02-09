# calculadora
.data
menu:   .asciiz "######### MENU ########\n1-soma\n2-Subtração\n3-multiplicação\n4divisão\n0-Zero para sair\n"
n1:     .asciiz "Entre com o primeiro numero: "
n2:     .asciiz "Entre com o segundo numero:  "
r:      .asciiz "Resultado: "
pula:   .asciiz "\n\n"
fim:    .asciiz "Fim de Execução"
.macro pula_linha
li $v0, 4
la $a0, pula
syscall
.end_macro

.macro menu
li $v0, 4
la $a0, menu
syscall
li $v0, 5
syscall
move $t0, $v0
.end_macro

.text
.globl principal

principal:
menu
#condições 
beq $t0,0,sair
beq $t0,1,somar
beq $t0,2,subtrair
beq $t0,3,multiplicar
beq $t0,4,dividir

sair:
li $v0, 4
la $a0, fim
syscall
li $v0, 10
syscall

somar: 
li $v0, 4
la $a0, n1
syscall
li $v0, 5
syscall
move $t1, $v0
li $v0, 4
la $a0, n2
syscall
li $v0, 5
syscall
move $t2, $v0
add $t3, $t1,$t2
li $v0, 4
la $a0, r
syscall
li $v0, 1
la $a0, ($t3)
syscall
pula_linha
j principal

subtrair:
li $v0, 4
la $a0, n1
syscall
li $v0, 5
syscall
move $t1, $v0
li $v0, 4
la $a0, n2
syscall
li $v0, 5
syscall
move $t2, $v0
sub $t3, $t1,$t2
li $v0, 4
la $a0, r
syscall
li $v0, 1
la $a0, ($t3)
syscall
pula_linha
j principal

multiplicar:
li $v0, 4
la $a0, n1
syscall
li $v0, 5
syscall
move $t1, $v0
li $v0, 4
la $a0, n2
syscall
li $v0, 5
syscall
move $t2, $v0
mul $t3, $t1,$t2
li $v0, 4
la $a0, r
syscall
li $v0, 1
la $a0, ($t3)
syscall
pula_linha
j principal

dividir:
li $v0, 4
la $a0, n1
syscall
li $v0, 5
syscall
move $t1, $v0
li $v0, 4
la $a0, n2
syscall
li $v0, 5
syscall
move $t2, $v0
div $t3, $t1,$t2
li $v0, 4
la $a0, r
syscall
li $v0, 1
la $a0, ($t3)
syscall
pula_linha
j principal


