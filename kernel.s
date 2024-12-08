.text # depois dessa directive vem o código em texto
.globl kernel_main # label globl para ser referenciada por outros arquivos do código a seguir
kernel_main: # label do código

addi $v0, $0, 4 # guarda o valor imediato 4 (print_string) no register v0 de syscalls
lui $a0, 0x1001
ori $a0, $a0, 0x0015
syscall 

addi $v0, $0, 10 # guarda o valor imediato 1 (exit) no register v0 das syscalls para evitar um loop
syscall

.data
confirmacao_de_kernel2: .asciiz "Kernel haha\n"
