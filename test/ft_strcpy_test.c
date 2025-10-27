#include <stddef.h>
#include <stdio.h>

char *ft_strcpy(char *dest, char *src);

void ft_strcpy_test(void) {
  char dest[11] = "";
  char *src = "Hello World";

  printf("\n--- ft_strcpy ---\n\n");
  printf("Before: src => \"%s\", dest => \"%s\"\n", src, dest);
  printf("Returned value (ft_strcpy): \"%s\"\n", ft_strcpy(dest, src));
  printf("After: src => \"%s\", dest => \"%s\"\n", src, dest);
  printf("Null call test: \"%s\"\n", ft_strcpy(NULL, NULL));
}
