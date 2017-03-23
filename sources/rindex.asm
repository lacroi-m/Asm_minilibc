BITS	64
section .text
	global my_rindex:function  ; char *rindex(const char *s, int c)
				;  		rdi, rsi
my_rindex:			;
	push rbp
	mov rbp, rsp
	xor rcx, rcx

.count:
	cmp [rdi + rcx], BYTE 0
	je .while
	inc rcx
	jmp .count

.while:
	cmp [rdi + rcx], sil
	je .found
	cmp rcx, BYTE 0
	je .notfound
	dec rcx
	jmp .while

.notfound:
	mov rax, 0
	jmp .end

.found:
	mov rax, rdi
	add rax, rcx
	jmp .end

.end:
	mov rsp, rbp
	pop rbp
	ret
