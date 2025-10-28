#include <stdio.h>
#include <unistd.h>

size_t ft_strlen(char *);
ssize_t ft_write(int fd, const void *buf, size_t count);

void ft_write_test(void) {
  char *str = "Hello World\n";

  printf("\n--- ft_write ---\n\n");
  write(1, str, ft_strlen(str));
  write(1, str, ft_strlen(str) / 2);
  write(-1, str, ft_strlen(str));
  write(1, NULL, ft_strlen(str));
  write(1, NULL, 0);
  write(1, "\n\n", 2);
}
