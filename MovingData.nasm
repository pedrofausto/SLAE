; Filename: MovingData.nasm
; Author:  Vivek Ramachandran
; Website:  http://securitytube.net
; Training: http://securitytube-training.com 
;
;
; Purpose: 

global _start			

section .text
_start:


	xor eax, eax
	mov ebx, 0x1	
	mov ecx, 0x2
	mov edx, 0x3

	; lea demo

	lea eax, [eax]
	lea ebx, [eax + ebx] 
	lea ecx, [ebx + ebx]
	lea edx, [ecx + edx +8]

