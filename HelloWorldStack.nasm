; Hello World printed by stack
; Author: Pedro Fausto




global _start            
 
section .text

_start:
 
    xor ebx, ebx
    mul ebx

    mov al, 0x4        ; sys_write syscall  
    mov bl, 0x1        ; stdout

    push edx ; not really needed in this case

    ; "Hello World!\n" coded in hex and wrote in reverse order
    push 0x0a21646c
    push 0x726f5720
    push 0x6f6c6c65
    push 0x48

    mov ecx, esp
 
    mov dl, 30   ; message string length
    int 0x80
 
    ; sys_exit(return_code)

    xor eax, eax
    mov al, 0x1        ; sys_exit syscall

    xor ebx, ebx
    int 0x80
