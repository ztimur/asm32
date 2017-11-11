SYS_exit	equ	1
SYS_read	equ	3
SYS_write	equ	4
EXIT_code	equ	0
section .data
hextable	db	'0123456789ABCDEF'
buffer		db	'________',10
bufferLen	equ	$ - buffer

section .text
global _start

_start:

		mov	eax, 100110100100b		; значение для вывода
		mov	edi, 8			; количество байт для преобразования
_loop:
		mov	ebx, eax
		and	ebx, 0x0000000F
		mov	dl, [hextable+ebx] 
		mov	byte [buffer+edi-1], dl
;		shr	eax, 4
		dec	edi
		shr	eax, 4
;		add	eax,0
		jnz	_loop
; вывод строки
		mov	eax, SYS_write
		mov	ebx, 1
		mov	ecx, dword buffer
		add	ecx, edi
		mov	edx, bufferLen
		int	0x80

		mov	eax, SYS_exit
		mov	ebx, EXIT_code
		int	0x80
