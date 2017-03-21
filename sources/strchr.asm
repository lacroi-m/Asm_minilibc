BITS	64
	section	.text
	global my_strchr:function	;       char *strchr(const char *s, int c);
					;   				rdi, rsi
strchr:
	push rbp
	mov rbp, rsp		; prologue
	xor rcx, rcx		; int i

.while:
	cmp [rdi + rcx], rsi	; si s[i] = c
	je .end			; ret value
	cmp [rdi + rcx], BYTE 0 ; if s[i] = \0
	je .nofound		; ret NULL
	inc rcx			; i++
	jmp .while

.end:
	mov rax, rdi		; ret s[i]
	mov rsp, rbp		; epilogue
	pop rbp
	ret

.nofound:
	mov rax, 0x00		; ret NULL sois 0
	mov rsp, rbp		; epilogue
	pop rbp
	ret
