BITS	64
section .text
	global memmove:function	; void *memmove(void *dest, const void *src, size_t n)
				;                     rdi, rsi , rdx

memmove:
	push rbp
	mov rbp, rsp		; epilogue
	xor rcx, rcx		; int i

.while:
	cmp rcx, rdx		; while (i < n)
	je .end			; ret
	mov [rsi + rcx], rdi    ; src[i] = dest[i];
	inc rcx			; i++
	jmp .while		; boucle

.end:
	mov rax, rdi		; stock dest dans rax registre de retour
	mov rsp, rbp		; prologue
	pop rbp

	ret			; ret
