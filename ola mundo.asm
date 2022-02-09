.data
msg: .asciiz "Ola Mundo!"

.text
.globl principal

principal: 
li $v0, 4    # v0 = 4 prepara o processador para receber uma string
la $a0, msg  # a0 = msg
syscall      # Executa
li $v0, 10   # recebe chamada para finalizar o programa
syscall      # Executa

