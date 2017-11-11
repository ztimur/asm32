SYS_exit	equ	1
SYS_read	equ	3
SYS_write	equ	4
EXIT_code	equ	0

section .bss
inputBuffer	resb	45
inputBufferLen	equ	$ - inputBuffer

section .text
global _start

_start:
		mov	eax, SYS_read
		mov	ebx, 1
		mov	ecx, inputBuffer
		mov	edx, inputBufferLen
		int	0x80

		mov	eax, SYS_write
		mov	ebx, 1
		mov	ecx, dword inputBuffer
		mov	edx, inputBufferLen
		int	0x80

		mov	eax, SYS_exit
		mov	ebx, EXIT_code
		int	0x80
