/*
1;4601;0c** main.c for main in /home/juniqu_v/rendu/asm_minilibc
**
** Made by virgile
** Login   <juniqu_v@epitech.net>
**
** Started on  Wed Mar  8 10:51:36 2017 virgile
** Last update Wed Mar 22 17:28:09 2017 virgile
*/

#include <stdio.h>
#include <string.h>
/*
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
  const char *ptr;
  const char	*ptr2;

  ptr = strchr("pute", 't');
  if (ptr)
    printf("sa marche == true\n");
  else
    printf("marche pas == false\n");
  printf("test1 true %s\n", ptr);

  ptr = my_strchr("pute", 't');
  if (ptr)
    printf("sa marche == true\n");
  else
    printf("marche pas == false\n");
  printf("test2 true %s\n", ptr);


  ptr2 = strchr("moche", 'z');
  if (ptr2)
    printf("marche pas == false\n");
  else
    printf("sa marche == true \n");
 printf("test true %s", ptr2);

 ptr2 = my_strchr("moche", 'z');
  if (ptr2)
    printf("marche pas == false\n");
  else
    printf("sa marche == true \n");
 printf("test true %s", ptr2);

}

char	*my_rindex(const char *s, int c);

void	test_rindex()
{
  char	*t1;
  char	*t2;
  char	*t3;
  char	*t4;
  char	*t5;
  char	*src = "putet";
  char	*dest;

  t1 = my_rindex("pute", 't');
  t5 = rindex("pute", 't');
  t2 = my_rindex("pute", 'v');
  t3 = my_rindex("", 'e');
  t4 = my_rindex("put salo de mrtb", 't');
  dest = my_rindex(src, 't');

  printf("test 1 ,t =  %s\n", t1);
  printf("test 5 ,t =  %s\n", t5);
  printf("test 2, NULL = %s\n", t2);
  printf("test3, NULL = %s\n", t3);
  printf("test4, t = %s\n", t4);

}
*/

#include <assert.h>
#include <stdlib.h>
/*
void *my_memset(void *s, int c, size_t n);

void	test_memset()
{
  char	*str = malloc(20);

  my_memset(str, '1', 5);
  str[9] = '\0';
  printf("%s == aaaaa\n", str);
}

void *my_memcpy(void *dest, const void *src, size_t n);

int	test_memcpy()
{
  char	*str = malloc(51);
  char	*S1 = "abcdefghi";

  printf("Copy %lu characters %s\n", strlen(S1), S1);
  my_memcpy(str, S1, strlen(S1));
  printf("%s == %s\n", str, S1);
  my_memcpy(str + strlen(S1), S1, strlen(S1));
  printf("%s != %s\n", str, S1);
  printf("%s == %s\n", str + 9, S1);
  return (0);
}
*/

int	main()
{

  return (0);
}
