extern	printf 

section .data
bVar	db	3
msg	db	'Hello world!',10,0
msgLen	equ	$ - msg
fmt	db	'This is a usage of C printf function: [%s] [%d] [%d], addr of msg: %X. addr of bVar: %X',10,0

section .text
global _start

_start:
; using system write function
;	mov	eax, 4
;	mov	ebx, 1
;	mov	ecx, msg 
;	mov	edx, msgLen
;	int	0x80
; using libc printf function
	xor	eax, eax
	mov	al, byte [bVar]
	inc	eax
	push	dword bVar
	push	dword	msg
	push	eax
	push	dword	msgLen
	push	dword msg
	push	dword fmt
	call 	printf
	add	esp,24 

; exit
	mov	eax, 1
	mov	ebx, 0
	int	0x80
