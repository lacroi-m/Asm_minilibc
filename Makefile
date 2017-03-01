##
## Makefile for in /home/lacroi_m/asm_minilibc
##
## Made by Lacroix Maxime 
## Login   <lacroi_m@epitech.net>
##
## Started on  Wed Mar 1 14:03:03 CET 2017 Lacroix Maxime
## Last update Wed Mar  1 16:41:35 2017 virgile
##

CC	= gcc

NASM	= nasm

RM	= rm -f

NAME	= libasm.so

SRC	= $(addprefix sources/, \
		strlen.asm)

OBJ	= $(SRC:.asm=.o)

FLAGS	= -f elf64

all:   	$(NAME)

$(NAME):
	$(NASM) -o $(OBJ) $(SRC) $(FLAGS)
	$(CC) -shared -o  $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
