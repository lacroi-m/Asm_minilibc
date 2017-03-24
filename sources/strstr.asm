BITS 64
section .text
	global strstr:function	; char *strstr(const char *haystack, const char *needle);
							; rdi 			      rsi
strstr:
	PUSH 	rbp
	MOV 	rbp, rsp
	XOR	rcx, rcx
	XOR	r8, r8
loop:
	MOV 	r8b, [rdi]
	CMP 	r8b, [rsi]
	JE 	reset
check:
	CMP 	r8b, 0
	JE 	nope
	INC 	rdi
	JMP 	loop

reset:
	XOR 	rcx, rcx

loop_found:
	MOV 	r8b, [rdi + rcx]
	MOV 	r8b, [rsi + rcx]
	CMP 	r8b, 0
	JE 	found
	CMP 	r8b, r8b
	JNE 	check
	INC 	rcx
	JMP 	loop_found

found:
	MOV 	rax, rdi
	JMP 	prologue
nope:
	XOR 	rax, rax
	
prologue:
	MOV 	rsp, rbp
	POP 	rbp
	RET 	0
