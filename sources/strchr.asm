	BITS	64
	section	.text
	global strchr:function

strchr:
	push rbp
	mov rbp, rsp

	mov rax, 0
loop:
	cmp [rdi], sil
	je found
	cmp byte[rdi], 0
	je end
	inc rdi
	jmp loop
found:
	mov rax, rdi

end:
	mov rsp, rbp
	pop rbp
