BITS	64
section .text
	global strlen:function
				; size_t strlen(const char *s)
				; 		rdi
strlen:
	push rbp
	mov rbp, rsp 		; prologue crée son propre espace sur la pile = prologue
	xor rcx, rcx	; int compteur ( int i)

.while:
	cmp [rdi + rcx], BYTE 0 ; while (s[i] != \0)
	je .end		    ; si oui go return
	inc rcx		    ; i++
	jmp .while		    ; boucle

.end:
	mov rax, rcx		    ; pos i dans le registre courant pour ret
	mov rsp, rbp		    ; efface propre espace pour la = epilogue
	pop rbp

	ret
