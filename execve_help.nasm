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

 	jmp short argument

 execve_arg:
 	pop esi
 	lea ebx, [esi]
 	lea ecx, [arg]

 	mov al, 0xB
 	int 0x80

argument:
 	call execve_arg
 	program db "/bin/bash",0x0
 	arg   	db "-c ls"