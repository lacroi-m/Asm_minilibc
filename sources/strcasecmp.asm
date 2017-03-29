BITS	64
section .text
	global strcasecmp:function

strcasecmp:
	PUSH	rbp
	MOV	rbp, rsp
	XOR	rcx, rcx
	XOR	r8, r8
	XOR	r9, r9
loop:
	CMP	rcx, rdx
	JE	_eq
	MOV	r8b, [rdi + rcx]
	MOV	r9b, [rsi]
	CMP	[rdi + rcx], BYTE 0
	JE	check
	CMP	[rdi + rcx], r9b
	JNE	diff_check
	INC	rcx
	INC	rsi
	JMP	loop

diff_check:
	CMP	r8b, "A"
	JGE	maj_low
	JMP	diff
maj_low:
	CMP	r8b, "Z"
	JLE	mini
	JMP	min_upp
min_upp:
	CMP	r8b, "a"
	JGE	min_low
	JMP	diff
min_low:
	CMP	r8b, "z"
	JL	maji
	JMP	diff

mini:
	ADD	r8b, 32
	CMP	r8b, r9b
	JNE	mim
	SUB	r8b, 32
	INC	rcx
	INC	rsi
	JMP	loop
mim:
	SUB	r8b, 32
	JMP	diff

maji:
	SUB	r8b, 32
	CMP	r8b, r9b
	JNE	maj
	ADD	r8b, 32
	INC	rcx
	INC	rsi
	JMP	loop
maj:
	ADD	r8b, 32
	JMP	diff
	
check:
	CMP	[rsi + rcx], BYTE 0
	JE	_eq

diff:
	SUB	r8, r9
	MOV	rax, r8
	JMP	prologue
_eq:
	MOV	rax, 0

prologue:
	MOV	rsp, rbp
	POP	rbp
	RET
