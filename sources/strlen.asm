BITS	64
section .text
	global my_strlen:function
				; size_t strlen(const char *s)
				; 		rdi 
my_strlen:
	push rbp
	mov rbp, rsp 		; prologue crée son propre espace sur la pile = prologue
	XOR	rcx, rcx	; int compteur ( int i)
.while:
	CMP	[rdi + rcx], BYTE 0 ; while (s[i] != \0)
	JE	.end		    ; si oui go return
	INC	rcx		    ; i++
	JMP	.while		    ; boucle
.end:
	mov rax, rcx		    ; pos i dans le registre courant pour ret
	mov rsp, rbp		    ; efface propre espace pour la = epilogue
	pop rbp

	ret
