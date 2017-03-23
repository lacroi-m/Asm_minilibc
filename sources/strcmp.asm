BITS	64
section .text
	global strcmp:function

strcmp:
	PUSH	rbp
	MOV	rbp, rsp
	XOR	rcx, rcx
	XOR	r8, r8
	XOR	r9, r9
loop:
	MOV	r8b, [rdi + rcx]
	MOV	r9b, [rsi]
	CMP	[rdi + rcx], BYTE 0
	JE	check
	CMP	[rdi + rcx], r9b
	JNE	diff
	INC	rcx
	INC	rsi
	JMP	loop

check:
	CMP	[rsi + rcx], BYTE 0
	JE	_eq
	CMP	[rsi + rcx], BYTE 0
	JNE	diff

diff:
	SUB	r8, r9
	MOV	rax, r8
	JMP	prologue
_eq:
	MOV	rax, 0
	JMP	prologue

prologue:
	MOV	rsp, rbp
	POP	rbp
	RET
