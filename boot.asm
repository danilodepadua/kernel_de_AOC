.text # A partir daqui seguem instruções
.globl _iniciar # .globl permite que os outros arquivos possam referenciar, e a label ser nomeada _iniciar é uma tradução do padrão*
_iniciar: # abrindo o código da label _iniciar
li $sp, 0x7FFFFFF # eu guardo um valor imediato no register de stack pointer, que é o endereço do topo da stack, utilizada para guardar variaveis, objetos, endereços, etc.

li $v0, 4 #carrega um valor imediato 4 (print_string) e guarda no register v0 de syscalls
la $a0, confirmacao_de_boot # carrega uma label confirmacao_de_boot e guarda no register a0 de argumento
syscall # faz a syscall

jal entrada_do_kernel # dou a intrução de pular e linkar com a entrada do kernel no kernel.asm

.data
confirmacao_de_boot: .asciiz "boot realizado\n"
# referências:
# https://ics.uci.edu/~aburtsev/143A/2018fall/hw/hw2-boot-xv6.html
# https://unix.stackexchange.com/questions/588240/what-mandates-the-start-entrypoint-kernel-ld-linux-so-etc#:~:text=The%20entry%20point%20is%20conventionally,is%20linked%20into%20the%20executable.
# https://0xax.gitbooks.io/linux-insides/content/Booting/linux-bootstrap-1.html
# https://www.linuxassembly.org/hello.html
# https://bh-cookbook.github.io/mips-asm/the-stack-part-4.html#:~:text=In%20MIPS%2D32%2C%20the%20stack,from%20high%20to%20low%20memory.
# https://courses.cs.washington.edu/courses/cse378/10sp/lectures/lec05-new.pdf (é um pdf!!) página 23
# https://www.thejat.in/learn/asm-bootloader-with-c-kernel
