.text # depois dessa directive vem o código em texto
.globl start # label globl para ser referenciada por outros arquivos do código a seguir
start: # label do código

addi $v0, $0, 4
lui $a0, 0x1001
ori $a0, $a0, 0x0000
syscall # chama a syscall

jal kernel_main # instrução de pular e linkar para o main do kernel.c

#li $v0, 10 # guarda o valor imediato 1 (exit) no register v0 das syscalls para evitar um loop
#syscall # chama syscall

.data
confirmacao_de_kernel: .asciiz "Kernel inicializado\n"
