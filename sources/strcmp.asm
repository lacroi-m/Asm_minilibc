BITS	64
section .text
	global	my_strcmp:function ;strncmp(const char *s1, const char *s2)

my_strcmp:			    ;		s1->rdi		s2->rsi
	PUSH	rbp
	MOV	rbp, rsp	    ;prologue

	XOR	rbx, rbx	    ;(registre general)for stocking caracters of s2
	XOR	r8, r8		    ;(registre general)for stocking caracters of s1
loop:
	MOV	bl, [rsi]	    ;stokage du char dans partie basse du registre(8BITS) de rbx
	MOV	r8b, [rdi]	    ;stokage du char dans partie basse du registre(8BITS) de r8
	
	CMP	r8b, bl 	    ;comapare s1[x] and s2[x]
	JNE	diff		    ;if != goto diff
	CMP	r8b, 0		    ;verification que s1 != NULL
	JE	diff
	CMP	bl, 0		    ;verification que s2 != NULL
	JE	diff
	INC	rdi		    ;incrementer adresse de bloque du s1
	INC	rsi		    ;incrementer adresse de bloque du s2
	JMP	loop

diff:
	SUB	r8, rbx		;faire la difference entre
	mov	rax, r8		; déplacement du résultat dans rax
	JMP	prologue
_eq:
	MOV	rax, 0		;pour etre sur de retourner 0
	JMP	prologue
prologue:
	MOV     rsp, rbp
	POP     rbp
	RET			;return
