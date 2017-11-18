global isum15
section .text
isum15:
	push	ebp
	mov	ebp, esp
	xor	eax, eax	; обнуление eax
	mov	ecx, 15
loop:
	add	eax, ecx
	dec	ecx
	jnz	loop
	mov	esp, ebp
	pop	ebp
	ret			; возврат
