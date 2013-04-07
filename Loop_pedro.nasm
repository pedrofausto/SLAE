; SLAE Project
; Loop exercise
; Author: Pedro Fausto Rodrigues
; e.mail: pedro\.fausto[@]gmail\.com

; Purpose:	training LOOP instructions from Vivek SALE course.
;			print "Hello World 5x using LOOP"

global _start

section .text

_start:

	; Initializing the top of stack with argv
	mov		eax, dword [esp+8]
	push	eax
	loop	PrintLoop

PrintLoop:	

	;Load ECX with argv
	call LoadECX

	;Printing the message
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, $message
	mov edx, $mlen
	int 0x80

	; restoring ecx
	call SaveECX

SaveECX:
	push ecx
	ret

LoadECX:
	pop ecx
	ret

section .data
	
	message:	db	"Hello World"
	mlen		equ	$-message