#include <stdio.h>

char ft_strcmp(char *str1, char *str2);

void ft_strcmp_test(void) {
  char *str1 = "Hello World";
  char *str2 = "1234";
  char *str3 = "1234";

  printf("\n--- ft_strcmp ---\n\n");
  printf("1. \"%s\" and \"%s\" diff is %d\n", str1, str2,
         ft_strcmp(str1, str2));
  printf("2. \"%s\" and \"%s\" diff is %d\n", str2, str1,
         ft_strcmp(str2, str1));
  printf("3. \"%s\" and \"%s\" diff is %d\n", str2, str3,
         ft_strcmp(str2, str3));
}
