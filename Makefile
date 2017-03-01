##
## Makefile for in /home/lacroi_m/asm_minilibc
##
## Made by Lacroix Maxime 
## Login   <lacroi_m@epitech.net>
##
## Started on  Wed Mar 1 14:03:03 CET 2017 Lacroix Maxime
## Last update Wed Mar  1 15:01:37 2017 Lacroix Maxime
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
	$(NASM) -o $(OBJ) $(SRC) $(FLAGS) && \
	$(CC) -shared -o  $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all
