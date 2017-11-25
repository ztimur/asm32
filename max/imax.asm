global imax
section .text
imax:
	push	ebp
	mov	ebp, esp
	mov	eax, [ebp+8]	; извлечение аргумента
	mov	ebx, [ebp+12]	; извлечение аргумента
	cmp	eax, ebx
	jg	label1
	mov	eax, ebx
label1:
	mov	esp, ebp
	pop	ebp
	ret			; возврат
