; Shellcode to exercise the SLAE execve lab
; Author: Pedro Rodrigues


global _start

section .text

_start:

	; zero-ing 3 registers in a row
 	xor ebx, ebx
 	mul ebx

 	; ecx doesn't have to contain any information right now
 	xor ecx, ecx

 	jmp short bin_bash

 execve_rt:
 	pop ebx
 	mov al, 0xB
 	int 0x80


 bin_bash:
 	call execve_rt
 	message db "/bin/bash", 0x0