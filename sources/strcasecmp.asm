BITS	64
section .text	
	global	strcasecmp:function ;int strcasecmp(const char *s1, const char *s2);
strcasecmp:			       ;		  s1->rdi	s2->rsi
	PUSH	rbp
	MOV	rbp, rsp	    ;prologue

	XOR	r8, r8		    ;(registre general)for stocking caracters of s1
	XOR	rbx, rbx	    ;(registre general)for stocking caracters of s2
loop:
	MOV	r8b, [rdi]
	MOV	bl, [rsi]

	CMP	r8b, 0
	JE	is_eq
	
	CMP	bl, r8b
	JNE	maj_upp
	JE	_inc
is_eq:
	CMP	bl, 0
	JE	_eq
	JNE	diff
maj_upp:
	CMP	r8b, "A"
	JGE	maj_low
	JL	diff
maj_low:
	CMP	r8b, "Z"
	JLE	mini
	JG	min_upp
min_upp:
	CMP	r8b, "a"
	JGE	min_low
	JL	diff
min_low:
	CMP	r8b, "z"
	JLE	maji
	JG	diff

mini:
	ADD	r8b, 32
	CMP	r8b, bl
	JE	_inc
	JNE	min
min:
	SUB	r8b, 32
	JMP	diff

maji:
	ADD	bl, 32
	CMP	bl, r8b
	JE	_inc
	JNE	mam
mam:
	SUB	bl, 32
	JMP	diff
_inc:
	INC	rdi
	INC	rsi
	JMP	loop

diff:
	SUB	r8, rbx
	MOV	rax, r8
	JMP	prologue
_eq:
	MOV	rax, 0
	JMP	prologue

prologue:
	MOV	rsp, rbp
	POP	rbp
	RET
