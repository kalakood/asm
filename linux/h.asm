; Prints "hi!" to console
; nasm -f elf -g -F stabs h.asm
; ld -m elf_i386 -o h h.o
; objdump -D -M intel h > dump.txt
SECTION .data 
msg: db "hi!",10
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
nop
mov eax,4
mov ebx,1 
mov ecx,msg
mov edx,msg_len 
int 80H 
mov eax,1 
mov ebx,0 
int 80H 
