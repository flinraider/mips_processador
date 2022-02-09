.data
kp:  .asciiz "Digite o KM percorrido: "
kf:  .asciiz "kilometros Finais: "
.text
li $v0, 4
la $a0, kp
syscall
li $v0, 5          #entrada de numeros inteiros
syscall
move $t0, $v0
li $t1, 15         # tamanho do percurso
sub $t2, $t1, $t0  # $t1 - $t0 = $t2
li $v0, 4
la $a0, kf
syscall
li $v0, 1          #imprimir numero inteiro na tela
la $a0, ($t2)      # $a0 = $t2
syscall
li $v0, 10
syscall


