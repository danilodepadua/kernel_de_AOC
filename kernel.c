#include <stdint.h>

extern void entrada_do_kernel();

void print_string(const char *str) {
    while (*str) {
        asm("li $v0, 11");
        asm("move $a0, %0" : : "r" (*str));
        asm("syscall");
        str++;
    }
}

void kernel_check() {
    print_string("Kernel foi aberto\n");
}

int main() {
    print_string("Main aberto\n");
    entrada_do_kernel();
    return 0;
}
