#include <stdio.h>
#include <stdlib.h>

size_t ft_strlen(char *);

int main(void)
{
  char *str1 = "Hello World";
  char *str2 = "1234";
  char *str3 = NULL;

  printf("--- ft_strlen ---\n\n");
  printf("1. \"%s\" length is %d\n", str1, ft_strlen(str1));
  printf("2. \"%s\" length is %d\n", str2, ft_strlen(str2));
  printf("3. \"%s\" length is %d\n", str3, ft_strlen(str3));

  return EXIT_SUCCESS;
}
