/*
1;4601;0c** main.c for main in /home/juniqu_v/rendu/asm_minilibc
**
** Made by virgile
** Login   <juniqu_v@epitech.net>
**
** Started on  Wed Mar  8 10:51:36 2017 virgile
** Last update Wed Mar  8 12:05:56 2017 virgile
*/

#include <stdio.h>

int	my_strlen(const char *);
char	*my_strchr(const char*, int);

static void	test_strlen()
{
  char		*pute = "PUTE";
  char		*str = "";
  char		*lol = "lollollollollol";

  printf("size == %d, true value is 4.\n", my_strlen(pute));
  printf("size == %d, true value is 0.\n", my_strlen(str));
  printf("size == %d, true value is 15.\n", my_strlen(lol));
  return ;
}

static void	test_strchr()
{
  char *ptr = my_strchr("pute", 't');

  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("null il marche pas");

  ptr = my_strchr("salope56", '5');
  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("NULL ptr");

  ptr = my_strchr("moche", 'z');
  if (ptr)
    printf("marche pas");
  else
    puts("sa marche");

  ptr = my_strchr("Coucou", '\0');
  if (ptr)
    printf("ptr = %s\n", ptr);
  else
    puts("sa marche");
}

int	main()
{
  test_strlen();
  test_strchr();
  return (0);
}
