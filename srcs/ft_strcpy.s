section .text
global ft_strcpy

ft_strcpy:
  cmp rdi, 0
  je .null_pointer
  cmp rsi, 0
  je .null_pointer
  xor rcx, rcx
.loop:
  cmp byte [rsi + rcx], 0
  je .end
  mov al, [rsi + rcx]
  mov [rdi + rcx], al
  inc rcx
  jmp .loop
.null_pointer:
  mov rax, 0
  ret
.end:
  mov rax, rdi
  ret
