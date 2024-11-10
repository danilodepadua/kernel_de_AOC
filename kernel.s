.text # depois dessa directive vem o código em texto
.globl entrada_do_kernel # label globl para ser referenciada por outros arquivos do código a seguir
entrada_do_kernel: # label do código

li $v0, 4 # guarda o valor imediato 4 (print_string) no register v0 de syscalls
la $a0, confirmacao_de_kernel # carrega uma label (confirmacao_de_kernel) e guarda no register de argumento a0
syscall # chama a syscall

li $v0, 10 # guarda o valor imediato 1 (exit) no register v0 das syscalls para evitar um loop
syscall # chama syscall

.data
confirmacao_de_kernel: .asciiz "Kernel inicializado\n"
