BITS	64
section .text
	global memcpy:function	; void *memmove(void *dest, const void *src, size_t n)
				;                     rdi, rsi , rdx

memcpy:
	push rbp
	mov rbp, rsp		; epilogue
	xor rcx, rcx		; int i

.while:
	cmp rdx, 0		; while (i < n)
	je .end			; ret
	mov al,[rsi + rcx]
	mov [rdi + rcx], al			; src[i] = dest[i];
	dec rdx
	inc rcx			; i++
	jmp .while		; boucle

.end:
	mov rax, rdi		; stock dest dans rax registre de retour
	mov rsp, rbp		; prologue
	pop rbp

	ret			; ret
