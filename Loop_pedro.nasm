; SLAE Project
; Loop exercise
; Author: Pedro Fausto Rodrigues
; e.mail: pedro\.fausto[@]gmail\.com

; Purpose:	training LOOP instructions from Vivek SLAE course.
;			print "Hello World 3x using LOOP"

global _start

section .text

_start:

	mov ecx, 0x3
	
PrintLoop:	

	;Load ECX with argv
	push ecx

	;Printing the message
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, $message
	mov edx, $mlen
	int 0x80

	; restoring ecx
	pop ecx

	loop	PrintLoop

	mov ebx, 0x0
	mov eax, 0x1
	int 0x80

section .data
	
	message:	db	"Hello World"
	mlen		equ	$-message
