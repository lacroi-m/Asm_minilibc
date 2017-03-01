##
## Makefile for Makefile in /home/juniqu_v/rendu/asm_minilibc
## 
## Made by virgile
## Login   <juniqu_v@epitech.net>
## 
## Started on  Tue Feb 28 09:46:49 2017 virgile
## Last update Wed Mar  1 12:54:36 2017 virgile
##

NAME	= libasm.so

SRC	= $(addprefix sources/, \
		strlen.asm)

OBJ	= $(SRC:.asm=.o)

NASM	= nasm -f elf64 -Werror

LD	= ld -shared -fPIC

RM	= rm -f

$(NAME): $(OBJ)
	 $(LD) -o $(NAME) $(OBJ)

all:	 $(NAME)

%.o:	 %.asm
	 $(NASM) -o $@ $<

clean:
	 $(RM) $(OBJ)

fclean:	 clean
	 $(RM) $(NAME)

re:	 fclean all
