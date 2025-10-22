#include <stdio.h>
#include "asm.h"

int main(void)
{
  char *str = "Hello World";

  printf("\"%s\" length is %d\n", str, ft_strlen(str));

  return EXIT_SUCCESS;
}
