	BITS	64
section .text
	global my_memset:function 		;void *memset(void *s, int c, size_t n)
					;		rdi , rsi, rdx
my_memset:
	push rbp		; prologue clean propre registre extend
	mov rbp, rsp
	xor rcx, rcx		; int compteur

.while:
	cmp rcx, rdx		; while (rcx != rdx) i < n taille a ecrire
	je .end
	mov [rdi + rcx], rsi	; remplis dans s[i] par c (char voulu);
	inc rcx			; i++
	jmp .while		; boucle

.end:
	mov rax, rdi		; pose s dans l'adresse de la ret value ( top stack)
	mov rsp, rbp
	pop rbp			; epilogue clean propre registre extend ( crée et efface son
				; propre espace la stack)
	ret			; return

	; 64    32    16  8 8
	; rdx , edx , dx, da, dl = registre de donné ( utile opé arithemétique comme ici)
	; rdi, edi di dil = pointeur destination
	; rsi, esi, si il = pointeur souce
	; Le nom des deux derniers registres vient du fait qu'ils sont utilisés
	; pour la copie d'une zone mémoire vers une autre.
	; rax, eax, ax, ah, al = registre accumulateur (accumulator register).
	; le stockage de la valeur de retour , des appels systèmes, opération courante.
	; de 1er acces et rapide.
