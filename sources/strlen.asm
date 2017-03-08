BITS	64
section .text
	global my_strlen:function

my_strlen:
	XOR	rax, rax
_loop:
	CMP	[rdi + rax], BYTE 0
	JE	_end
	INC	rax
	JMP	_loop
_end:
	RET
