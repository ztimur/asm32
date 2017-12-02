global sumofsquares10

section .data
sumOfSquares	dd	0
n		dd	10

section .text
sumofsquares10:
	push	ebp
	mov	ebp, esp
;
	mov	ecx, dword [n]
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
