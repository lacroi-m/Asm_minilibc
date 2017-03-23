BITS	64
	section	.text
	global strchr:function	;       char *strchr(const char *s, int c);
					;   				rdi, rsi
strchr:
	push rbp
	mov rbp, rsp		; prologue

.while:
	cmp [rdi], sil	     ; si s[i] = c
	je .found
	cmp [rdi], BYTE 0    ; if s[i] = \0
	je .nofound		; ret NULL
	inc rdi			; i++
	jmp .while

.nofound:
	xor rax, rax		; ret NULL sois 0
	jmp .end

.found:
	mov rax, rdi
	jmp .end

.end:
	mov rsp, rbp		; epilogue
	pop rbp
	ret
