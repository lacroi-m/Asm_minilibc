BITS	64
	section	.text
	global my_strchr:function	;       char *strchr(const char *s, int c);
					;   				rdi, rsi
strchr:
	push rbp
	mov rbp, rsp
	xor rcx, rcx

.while:
	cmp [rdi + rcx], rsi
	je .end
	cmp [rdi + rcx], BYTE 0
	je .nofound
	inc rcx
	jmp .while

.end:
	mov rax, rdi
	mov rsp, rbp
	pop rbp
	ret

.nofound:
	mov rax, 0x00
	mov rsp, rbp
	pop rbp
	ret
