; syscall0 Assembly
; Author: Pedro 


global _start

section .text

_start:

	xor eax, eax
	int 0x80
	mov ecx, eax
	int 0x80
	mov ecx, eax
	int 0x80
	xor eax, eax
	int 0x80
	mov ecx, eax










