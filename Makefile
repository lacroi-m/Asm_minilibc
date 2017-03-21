##
## Makefile for in /home/lacroi_m/asm_minilibc
##
## Made by Lacroix Maxime 
## Login   <lacroi_m@epitech.net>
##
## Started on  Wed Mar 1 14:03:03 CET 2017 Lacroix Maxime
## Last update Tue Mar 21 15:52:44 2017 virgile
##

CC	= ld

CFLAGS	+= -W -Wall -Wextra -Werror

LDFLAGS = -shared -fpic

NASM	= nasm

RM	= rm -f

NAME	= libasm.so

SRCS	= $(addprefix sources/, \
		strchr.asm\
		strlen.asm\
		memset.asm\
		strcmp.asm)

OBJS	= $(SRCS:.asm=.o)

AFLAGS	= -f elf64

TEST	= main.c

OBJS_C	= $(TEST:.c=.o);

%.o:	%.asm
	${NASM} $< ${AFLAGS} -o $@

all:   	$(NAME)

$(NAME): $(OBJS)
	 $(CC) $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

test:	$(OBJS_C)
	$(CC) $(CFLAGS) -o test main.o -L./ -lasm
	$(RM) main.o
	LD_PRELOAD=./libasm.so ./test

.PHONY: all clean fclean re
