BITS	64
section .text
	global	my_strcasecmp:function ;int strcasecmp(const char *s1, const char *s2);
my_strcasecmp:			       ;		  s1->rdi	s2->rsi
	PUSH	rbp
	MOV	rbp, rsp	    ;prologue

	XOR	r9, r9		;for fucking compare
	XOR	rcx, rcx
	XOR	r8, r8		    ;(registre general)for stocking caracters of s1
	XOR	rbx, rbx	    ;(registre general)for stocking caracters of s2
loop:
	MOV	r8b, [rdi]
	MOV	bl, [rsi]

	CMP	r8b, 0
	JE	diff
	
	CMP	bl, r8b
	JNE	maj_upp
	JE	_inc
	
maj_upp:
	CMP	r8b, "A"
	JGE	maj_low
	JMP	diff
maj_low:
	CMP	r8b, "Z"
	JLE	mini
	JG	min_upp
min_upp:
	CMP	r8b, "a"
	JGE	min_low
	JMP	diff
min_low:
	CMP	r8b, "z"
	JLE	maji
	Jmp	diff

mini:
	CMP	r9b, -32
	JE	_inc
	JNE	diff
maji:
	CMP	r9b, 32
	JE	_inc
	JNE	diff	;everything is going here
_inc:
	INC	rcx
	INC	rdi
	INC	rsi
	JMP	loop

hacks:
	MOV	rax, 0
	JMP	prologue
diff:
	SUB	r8, rbx
	MOV	rax, r8
	CMP	rax, 32
	JE	hacks
	CMP	rax, -32
	JE	hacks
	JMP	prologue
diff_t:
	MOV	rax, 2222
	JMP	prologue
_eq:
	MOV	rax, 0
	JMP	prologue

prologue:
	MOV	rsp, rbp
	POP	rbp
	RET
