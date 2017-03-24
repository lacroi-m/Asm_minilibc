/*
1;4601;0c** main.c for main in /home/juniqu_v/rendu/asm_minilibc
**
** Made by virgile
** Login   <juniqu_v@epitech.net>
**
** Started on  Wed Mar  8 10:51:36 2017 virgile
** Last update Fri Mar 24 18:52:38 2017 Lacroix Maxime
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
*/

char	*my_rindex(const char *s, int c);

void	test_rindex()
{
  char	*t1;
  char	*t2;
  char	*t3;
  char	*t4;
  char	*t5;
  char	*src = "putetadf";
  char	*dest;

  t1 = my_rindex("pu\0te", '\0');
  t5 = my_rindex("pute", 't');
  t2 = my_rindex("pute", 'v');
  t3 = my_rindex("", 'e');
  t4 = my_rindex("put salo de mrtb", 't');
  dest = my_rindex(src, 't');

  printf("test 1 ,t =  %s\n", t1);
  printf("test 5 ,t =  %s\n", t5);
  printf("test 2, NULL = %s\n", t2);
  printf("test3, NULL = %s\n", t3);
  printf("rindex de src avec t dest = %s, src = %s\n", dest, src);
  printf("%p == %p", dest[0], src[4]);
}


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

int my_strcmp(const char *s1, const char *s2);

static void	test_strcmp()
{
  char *a = "aaa";
  char *c = "bbb";
  char d[8] = "\0";
  char *moi = "je suis moi";
  char *toi = "je suis toi";
  char *bon = "ah bon ?";
  char *cancer = "azertyuiop\0\0\0azertyuiop"; //23
  char *cancerdiff = "azertyuiop\0\0\0azertyuioplel"; //26
  
  printf("my_strcmp(%s, %s) = %d\n", moi, moi, my_strcmp(moi, moi));
  printf("strcmp(%s, %s) = %d\n", moi, moi, strcmp(moi, moi));

  printf("my_strcmp(%s, %s) = %d\n", moi, toi, my_strcmp(moi, toi));
  printf("strcmp(%s, %s) = %d\n", moi, toi, strcmp(moi, toi));

    printf("my_strcmp(%s, %s) = %d\n", moi, bon, my_strcmp(moi, bon));
  printf("strcmp(%s, %s) = %d\n", moi, bon, strcmp(moi, bon));


  

  printf("my_strcmp(%s, %s) = %d\n", a, a, my_strcmp(a, a));
  printf("strcmp(%s, %s) = %d\n", a, a, strcmp(a, a));


  printf("my_strcmp(%s, %s) = %d\n", a, c, my_strcmp(a, c));
  printf("strcmp(%s, %s) = %d\n", a, c, strcmp(a, c));
  printf("my_strcmp(%s, %s) = %d\n", c, a, my_strcmp(c, a));
  printf("strcmp(%s, %s) = %d\n", c, a, strcmp(c, a));

  printf("my_strcmp(%s, 'aab') = %d\n", a,  my_strcmp(a, "aab"));
  printf("strcmp(%s, 'aab') = %d\n", a, strcmp(a, "aab"));

  printf("my_strcmp(%s, '') = %d\n", a,  my_strcmp(a, ""));
  printf("strcmp(%s, '') = %d\n", a, strcmp(a, ""));

  printf("my_strcmp(%s, %s) = %d\n", "aab", a, my_strcmp("aab", a));
  printf("strcmp(%s, %s) = %d\n", "aab", a, strcmp("aab", a));

  printf("hreremy_strcmp(%s, %s) = %d\n", d, a, my_strcmp(d, a));
  printf("herestrcmp(%s, %s) = %d\n", d, a, strcmp(d, a));

  printf("my_strcmp(%s, %s) = %d\n", a, d, my_strcmp(a, d));
  printf("strcmp(%s, %s) = %d\n", a, d, strcmp(a, d));

  
}

int my_strncmp(const char *s1, const char *s2, const int a);

static void	test_strncmp()
{
  char *a = "aaa";
  char *b = "aab";
  char *c = "bbb";
  char d[8] = "\0";
  
  char *moi = "je suis moi";
  char *suis = "je suis";
  char *hello = "je hello";

  char *cancer = "azertyuiop\0\0\0azertyuiop"; //23
  char *cancerdiff = "azertyuiop\0\0\0azertyuioplel"; //26

  printf("strncmp(%s, %s), 23 = %d\n", cancer, cancer, strncmp(cancer, cancer, 23));
  printf("my_strncmp(%s, %s), 23 = %d\n", cancer, cancer, my_strncmp(cancer, cancer, 23));

  printf("strncmp(%s, %s), 26 = %d\n", cancer, cancerdiff, strncmp(cancer, cancerdiff, 26));
  printf("my_strncmp(%s, %sn 26) = %d\n", cancer, cancerdiff, my_strncmp(cancer, cancerdiff, 26));
  
  printf("\nmy_strncmp(%s, %s, 8) = %d\n", moi, suis, my_strncmp(moi, suis, 8));
  printf("strncmp(%s, %s, 8) = %d\n", moi, suis, strncmp(moi, suis, 8));

  printf("\n\nmy_strncmp(%s, %s, 3) = %d\n", moi, hello, my_strncmp(moi, hello, 3));
  printf("strncmp(%s, %s, 3) = %d\n", moi, hello, strncmp(moi, hello, 3));

  
  printf("\n\nmy_strncmp(%s, %s, 2) = %d\n", a, b, my_strncmp(a, b, 2));
  printf("strncmp(%s, %s, 2) = %d\n", a, b, strncmp(a, b, 2));

  printf("my_strncmp(%s, %s, 0) = %d\n", a, a, my_strncmp(a, a, 0));
  printf("strncmp(%s, %s, 0) = %d\n", a, a, strncmp(a, a, 0));


  printf("my_strncmp(%s, %s, 3) = %d\n", a, c, my_strncmp(a, c, 3));
  printf("strncmp(%s, %s, 3) = %d\n", a, c, strncmp(a, c, 3));
  printf("my_strncmp(%s, %s, 3) = %d\n", c, a, my_strncmp(c, a, 3));
  printf("strncmp(%s, %s, 3) = %d\n", c, a, strncmp(c, a, 3));

  printf("my_strncmp(%s, 'aaA', 3) = %d\n", a, my_strncmp(a, "aaA", 3));
  printf("strncmp(%s, 'aaA', 3) = %d\n", a, strncmp(a, "aaA", 3));

  printf("my_strncmp(%s, 'aaAfgyuiolkjhgb, 13) = %d\n", a, my_strncmp(a, "aaAfgyuiolkjhgb", 13));
  printf("strncmp(%s, 'aaAfgyuiolkjhgb', 13) = %d\n", a, strncmp(a, "aaAfgyuiolkjhgb", 13));

  printf("my_strncmp('aaAfgyuiolkjhgb, %s, 13) = %d\n", a, my_strncmp("aaAfgyuiolkjhgb",a, 13));
  printf("strncmp('aaAfgyuiolkjhgb, %s, 13) = %d\n", a, strncmp("aaAfgyuiolkjhgb",a, 13));

    printf("my_strncmp('aaAfgyuiolkjhgb, %s, 13) = %d\n", a, my_strncmp("aaAfgyuiolkjhgb",d, 13));
  printf("strncmp('aaAfgyuiolkjhgb, %s, 13) = %d\n", a, strncmp("aaAfgyuiolkjhgb",d, 13));

  printf("my_strncmp(%s, %s, 3) = %d\n", "aab", a, my_strncmp("aab", a, 3));
  printf("strncmp(%s, %s, 3) = %d\n", "aab", a, strncmp("aab", a, 3));

  
}

int my_strcasecmp(const char *s1, const char *s2);

static void	test_strcasecmp()
{
  char *a = "aaa";
  char *b = "aab";
  char *c = "bbb";

  char *test = "je fais un test";
  char *uctest = "Upper Case Test";
  char *lctest = "upper case test";
  char *lis = "tu lis vraiment ce test ?";
  char *lapin = "lapin lapin";

  char *cancer = "azertyuiop\0\0\0azertyuiop"; //23
  char *cancerdiff = "azertyuiop\0\0\0azertyuioplel"; //26


  printf("strcasecmp(%s, %s) = %d\n", cancer, cancer, strcasecmp(cancer, cancer));
  printf("my_strcasecmp(%s, %s) = %d\n", cancer, cancer, my_strcasecmp(cancer, cancer));

  printf("strcasecmp(%s, %s) = %d\n", cancer, cancerdiff, strcasecmp(cancer, cancerdiff));
  printf("my_strcasecmp(%s, %s) = %d\n", cancer, cancerdiff, my_strcasecmp(cancer, cancerdiff));

  
  printf("my_strcasecmp(%s, %s) = %d\n", test, test, my_strcasecmp(test, test));
  printf("strcasecmp(%s, %s) = %d\n", test, test, strcasecmp(test, test));

  printf("my_strcasecmp(%s, %s) = %d\n", "", test, my_strcasecmp("", test));
  printf("strcasecmp(%s, %s) = %d\n", "", test, strcasecmp("", test));

    printf("my_strcasecmp(%s, %s) = %d\n", test, "", my_strcasecmp(test, ""));
    printf("strcasecmp(%s, %s) = %d\n", test, "", strcasecmp(test, ""));
  
  printf("my_strcasecmp(%s, %s) = %d\n", uctest, lctest, my_strcasecmp(uctest, lctest));
  printf("strcasecmp(%s, %s) = %d\n", uctest, lctest, strcasecmp(uctest, lctest));

  printf("my_strcasecmp(%s, %s) = %d\n", lctest, uctest, my_strcasecmp(lctest, uctest));
  printf("strcasecmp(%s, %s) = %d\n", lctest, uctest, strcasecmp(lctest, uctest));


  printf("my_strcasecmp(%s, %s) = %d\n", lis, lapin, my_strcasecmp(lis, lapin));
  printf("strcasecmp(%s, %s) = %d\n", lis, lapin, strcasecmp(lis, lapin));
  
    printf("my_strcasecmp(%s, %s) = %d\n", a, b, my_strcasecmp(a, b));
  printf("strcasecmp(%s, %s) = %d\n", a, b, strcasecmp(a, b));

  printf("my_strcasecmp(%s, %s) = %d\n", a, a, my_strcasecmp(a, a));
  printf("strcasecmp(%s, %s) = %d\n", a, a, strcasecmp(a, a));


  printf("my_strcasecmp(%s, %s) = %d\n", a, c, my_strcasecmp(a, c));
  printf("strcasecmp(%s, %s) = %d\n", a, c, strcasecmp(a, c));
  printf("my_strcasecmp(%s, %s) = %d\n", c, a, my_strcasecmp(c, a));
  printf("strcasecmp(%s, %s) = %d\n", c, a, strcasecmp(c, a));

  printf("my_strcasecmp(%s, 'aaA') = %d\n", a, my_strcasecmp(a, "aaA"));
  printf("strcasecmp(%s, 'aaA') = %d\n", a, strcasecmp(a, "aaA"));
   printf("my_strcasecmp(%s, 'aAa') = %d\n", a, my_strcasecmp(a, "aAa"));
  printf("strcasecmp(%s, 'aAa') = %d\n", a, strcasecmp(a, "aAa"));


  
  printf("my_strcasecmp('aAA', 'aAa') = %d\n", my_strcasecmp("aAA", "aAa"));
  printf("strcasecmp('aAA', 'aAa') = %d\n", strcasecmp("aAA", "aAa"));
  printf("my_strcasecmp('aAA', 'aAa') = %d\n", my_strcasecmp("AAA", "aAa"));
  printf("strcasecmp('aAA', 'aAa') = %d\n", strcasecmp("AAA", "aAa"));

  printf("my_strcasecmp(%s, %s) = %d\n", "aaz", a, my_strcasecmp("aaz", a));
  printf("strcasecmp(%s, %s) = %d\n", "aaz", a, strcasecmp("aaz", a));
}

char *my_strstr(const char *s1, const char *s2);

void	test_strstr()
{
  char *cancer = "azertyuiop\0\0\0azertyuiop"; //23
  char *cancerdiff = "azertyuiop\0\0\0azertyuioplel"; //26
  char *a = "helloWORLDtoday";
  char *b = "WORLD";

  char *c = "nothing";
  char *d = "g";

  printf("strstr(%s, %s) = %s\n", cancer, cancer, strstr(cancer, cancer));
  printf("my_strstr(%s, %s) = %s\n", cancer, cancer, my_strstr(cancer, cancer));

  printf("strstr(%s, %s) = %s\n", cancerdiff, cancer, strstr(cancerdiff, cancer));
  printf("my_strstr(%s, %s) = %s\n", cancerdiff, cancer, my_strstr(cancerdiff, cancer));


  printf("strstr(%s, %s) = %s\n", a, b, strstr(a, b));
  printf("my_strstr(%s, %s) = %s\n", a, b, my_strstr(a, b));
  
  printf("strstr(%s, %s) = %s\n", a, c, strstr(a, c));
  printf("my_strstr(%s, %s) = %s\n", a, c, my_strstr(a, c));

  printf("strstr(%s, %s) = %s\n", c, d, strstr(c, d));
  printf("my_strstr(%s, %s) = %s\n", c, d, my_strstr(c, d));  
}


int	main()
{
  //  test_strlen();
  //  test_strchr();
  //  test_strcmp();
  //  test_strncmp();
  //  test_strcasecmp();

    test_strstr();
  return (0);
}
