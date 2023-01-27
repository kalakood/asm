nasm -f elf -g -F stabs h.asm
ld -m elf_i386 -o h h.o
