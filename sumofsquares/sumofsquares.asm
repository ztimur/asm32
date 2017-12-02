global sumofsquares

section .data
sumOfSquares	dd	0

section .text
sumofsquares:
	push	ebp
	mov	ebp, esp
;
	mov	ecx, dword [ebp+8]
	mov	ebx, 1
label1:
	mov	eax, ebx
	mul	eax
	inc	ebx
	loop	label1

	mov	eax, dword [sumOfSquares]
;
	mov	esp, ebp
	pop	ebp
	ret			; возврат
