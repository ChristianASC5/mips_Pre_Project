# PROGRAM: Hello, World!

  .data          # Data declaration section
  
  out_string:    .asciiz "\nHello, World!\n"
  
  .text          # Assembly language instructions
  
main:

  li $v0, 4
  la $a0, out_string
  
  syscall
  
  lb $t1, 2($a0)
  addi  $t1, $t1, -32
  sb  $t1,  2($a0)
  
  syscall

  li $v0, 10
  
  syscall
