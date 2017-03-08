/*
1;4601;0c** main.c for main in /home/juniqu_v/rendu/asm_minilibc
**
** Made by virgile
** Login   <juniqu_v@epitech.net>
**
** Started on  Wed Mar  8 10:51:36 2017 virgile
** Last update Wed Mar  8 14:24:53 2017 virgile
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
    printf("sa marche == true\n");
  else
    printf("marche pas == false\n");

  ptr = my_strchr("salope56", '5');
  if (ptr)
    printf("sa marche == true\n");
  else
    printf("marche pas == false\n");

  ptr = my_strchr("moche", 'z');
  if (ptr)
    printf("marche pas == false\n");
  else
    printf("sa marche == true \n");

  ptr = my_strchr("Coucou", '\0');
  if (ptr)
    printf("sa marche pas == false\n");
  else
    printf("sa marche == true\n");
}

int	main()
{
  test_strlen();
  test_strchr();
  return (0);
}
