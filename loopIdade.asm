.data
pergunta: .asciiz "Digite sua Idade: " 
msg1:     .asciiz "Você é menor de Idade\n"
msg2:     .asciiz "Você é maior de Idade\n"
fim:      .asciiz "Fim de Execução"
.text
.globl prog

prog:
li $v0, 4
la $a0, pergunta
syscall
li $v0, 5
syscall
move $t1, $v0
beq $t1,$0,sair
blt $t1,18, menor
bge $t1,18, maior
j prog


menor:
li $v0, 4
la $a0, msg1
syscall
j prog

maior:
li $v0, 4
la $a0, msg2
syscall
j prog

sair:
li $v0, 4
la $a0, fim
syscall
li $v0, 10
syscall