.data


.macro finaliza
 li $v0, 10
 syscall
.end_macro

.macro printf(%str)
 .data
 msg: .asciiz %str
 .text
 li $v0, 4 
 la $a0, msg
 syscall
.end_macro

 .text
 .globl principal
 
  principal:
  printf("Ola mundo!\n")
  finaliza 
 