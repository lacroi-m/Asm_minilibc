BITS	64
section	.text
	global	strcmp:function
strcmp:
	PUSH	rbp
	MOV	rbp, rsp

	XOR	rcx, rcx	;compteur int
	XOR	bl, bl
loop:
	CMP	[rdi + rcx], BYTE 0
	JE	_eq
	MOV	bl, [rsi]
	CMP	[rdi + rcx], bl
	JNE	diff
	INC	rcx
	INC	rsi
	JMP	loop

diff:
	CMP	[rdi + rcx], bl
	JL	less
	CMP	[rdi + rcx], bl
	JG	greater
less:
	MOV	rax, -1
	JMP	prologue
greater:
	MOV	rax, 1
	JMP	prologue
_eq:
	MOV	rax, 0
	JMP	prologue
prologue:
	MOV	rsp, rbp
	POP	rbp
	RET
