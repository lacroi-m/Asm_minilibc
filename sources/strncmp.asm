BITS	64
section .text
	global	strncmp:function ;strncmp(const char *s1, const char *s2, const int a)

strncmp:			    ;		s1->rdi		s2->rsi		a->rdx
	PUSH	rbp
	MOV	rbp, rsp	    ;prologue

	XOR	rcx, rcx	    ;Setting (int)rcx to 0 pour compteur 
	XOR	rbx, rbx	    ;(registre general)for stocking caracter of s2
	XOR	r8, r8		    ;(registre general)for stocking caracter of s1
loop:
	MOV	bl, [rsi]	    ;stokage du char dans partie basse du registre(8BITS)
	MOV	r8b, [rdi]	    ;stokage du char dans partie basse du registre(8BITS)

	CMP	rdx, rcx	    ;compation entre a et compteur rcx(64bits)
 	JE	_eq		    ;if equal goto _eq
	
	CMP	r8b, bl 	    ;comapare s1[x] and s2[x]
	JNE	diff		    ;if != goto diff
	CMP	r8b, 0		    ;verification que s1 != NULL
	JE	diff
	CMP	bl, 0		    ;verification que s2 != NULL
	JE	diff
	INC	rcx		    ;incrementer compteur
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
