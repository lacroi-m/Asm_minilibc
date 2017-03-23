BITS	64
section .text
	global rindex:function  ; char *rindex(const char *s, int c)
				;  		rdi, rsi

rindex:
	push rbp
	mov rbp, rsp
	xor r9, r9

.while:
	cmp [rdi], BYTE 0
	je .exit
	cmp [rdi], sil
	je .save
	inc rdi
	jmp .while

.save:
	mov r9, rdi
	inc rdi
	jmp .while

.exit:
	mov r9, 0x00
	jmp .end

.end:
	mov rax, r9
	mov rsp, rbp
	pop rbp
	ret
