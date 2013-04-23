; Shellcode to exercise the SLAE execve lab
; Author: Pedro Rodrigues


global _start

section .text

_start:

 ; eax containg the syscall 0x11 execve


 	xor ebx, ebx
 	mul ebx

 	xor ecx, ecx
 	jmp short bin_bash

 execve_rt:
 	pop ebx
 	mov al, 0xB
 	int 0x80


 bin_bash:
 	call execve_rt
 	message db "/bin/bash", 0x0