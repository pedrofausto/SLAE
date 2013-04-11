global _start            ; global entry point export for ld
 
section .text
_start:
 
    ; sys_write(stdout, message, length)
 
    xor eax, eax
    mov al, 4        ; sys_write syscall

    xor ebx, ebx
    mov bl, 1        ; stdout

    mov ecx, message  ; message address

    xor edx, edx
    mov dl, 13   ; message string length
    int 80h
 
    ; sys_exit(return_code)

    xor eax, eax
    mov al, 1        ; sys_exit syscall

    xor ebx, ebx
    mov bl, 0        ; return 0 (success)     
    int 80h
 
section .data
    message: db 'Hello, world!',0x0A    ; message and newline
