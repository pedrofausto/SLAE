; Hello World Assembly
; Author: Pedro 


global _start

section .text

_start:

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, msize	
	int 0x80

; exiting the program

	push 0x1
	pop  eax
	int 0x80

section .data
	message: db	"Hello World!" 
	msize	 equ	$-message








