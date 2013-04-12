; Stack0 NASM prog



global _start


section .text

_start:

	xor	ebx, ebx
	xor	ecx, ecx
	xor	edx, edx

	push	0x0
	pop	eax
	push	0x1
	pop	ebx
	push	0x2
	pop	ecx
	push	0x3
	pop	edx


	xchg	eax, ebx
	int	0x80
