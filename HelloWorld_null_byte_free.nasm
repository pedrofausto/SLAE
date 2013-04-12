global _start            ; global entry point export for ld
 
section .text
_start:
 
    
    jmp short call_shellcode
    ; sys_write(stdout, message, length)

shellcode:
    xor eax, eax
    mov al, 0x4        ; sys_write syscall

    xor ebx, ebx
    mov bl, 0x1        ; stdout

    pop ecx  ; message address

    xor edx, edx
    mov dl, 14   ; message string length
    int 80h
 
    ; sys_exit(return_code)

    xor eax, eax
    mov al, 1        ; sys_exit syscall

    xor ebx, ebx
    mov bl, 0        ; return 0 (success)     
    int 80h
 


call_shellcode:
				call shellcode
    message: db 'Hello, world!',0x0A    ; message and newline
