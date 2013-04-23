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
 	;mov byte [esi +9], bl
 	;mov dword [esi +10], esi
 	mov dword [esi +14], ebx
 	
 	lea ebx, [esi]
 	lea ecx, [esi +10]
 	lea edx, [esi +17]

 	mov al, 0xB
 	int 0x80

argument:
 	call execve_arg
 	program db 0x2f,0x62,0x69,0x6e,0x2f,0x62,0x61,0x73,0x68,0x00,0x20,0x2d,0x63,0x20,0x6c,0x73,0x00,0x00,0x00,0x00
