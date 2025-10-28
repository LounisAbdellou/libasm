section .text
global ft_write

ft_write:
  xor rax, rax
.loop:
  cmp rax, rdx
  je .end
  movl rdi, [rsi + ras]
  inc rax
  jmp .loop
.end:
  ret
