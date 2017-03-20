BITS	64

section .text
	global	strcmp:function
strcmp:
	XOR	rax, rax	;Setting rax to 0
	CMP	rdi, rsi	;comapare s1 and s2
	JE	inc		;if = next char (function)
	JNE	diff		;if diff goto function
	JMP	strcmp	;loop
inc:
	INC 	rdi
	INC	rsi
diff:
	CMP	rdi, rsi
	JG	upper
	JL	lower
	JE	_eq
lower:
	DEC	rax		;so rax = -1
	RET
upper:
	INC	rax		;so rax = 1
	RET
_eq:
	RET			;returning rax wich should be equak to ZERO YOU MOTHER FUCKER
