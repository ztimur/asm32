global imax
section .text
imax:
	push	ebp
	mov	ebp, esp
	
	mov	eax, [ebp+8]	; извлечение аргумента
	mov	edx, [ebp+12]	; извлечение аргумента
	mov	ecx, [ebp+16]	; извлечение аргумента
	cmp	eax, edx
	jge	label1
	mov	eax, edx
label1:
	cmp	eax, ecx
	jge	label2
	mov	eax, ecx
label2:
	mov	esp, ebp
	pop	ebp
	ret			; возврат
