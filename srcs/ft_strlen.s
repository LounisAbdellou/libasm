section .text
global ft_strlen

ft_strlen:
  cmp rdi, 0
  je .null_pointer
  xor rax, rax
.loop:
  cmp byte [rdi + rax], 0
  je .end
  inc rax
  jmp .loop
.null_pointer:
  mov rax, 0
  ret
.end:
  ret
