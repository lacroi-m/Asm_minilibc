BITS	64
section .text
 	global strstr:function ;char *strstr(const char *haystack, const char *needle);
	;; 						rdi		rsi
strstr:
	PUSH	rbp
	MOV	rbp, rsp
	XOR	rcx, rcx	;compteur de haystack
	XOR	ecx, ecx	;compteur de needle
	XOR	rbx, rbx	;for
	XOR	r9, r9
loop:
	CMP	rdi, rsi
	JE	send
	JMP	loop
inc_hay:
	INC	rcx
inc_need:
	INC	ecx
reset:
	MOV	ecx, 0	

send:
	MOV	rax, rsi
	JMP	prologue
nothing:
	MOV	rax, 0
	JMP	prologue
prologue:
	MOV	rsp, rbp
	POP	rbp
	RET
