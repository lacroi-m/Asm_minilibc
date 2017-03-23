BITS	64
section .text
	global rindex:function  ; char *rindex(const char *s, int c)
				;  		rdi, rsi

rindex:
	push rbp
	mov rbp, rsp
	xor r9, r9

.while:
	cmp [rdi], 0x00
	je .end
	cmp [rdi], sil
	je .save
	inc rdi
	jmp .while

.save:
	xor rax, rax
	mov rax, rdi
	inc rdi
	jmp .while

.end:
	mov rsp, rbp
	pop rbp
	ret
