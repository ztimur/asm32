global isum
section .text
isum:
	push	ebp
	mov	ebp, esp
	xor	eax, eax	; обнуление eax
	mov	ecx, [ebp+8]	; извлечение аргумента
loop:
	add	eax, ecx
	dec	ecx
	jnz	loop
	mov	esp, ebp
	pop	ebp
	ret			; возврат
