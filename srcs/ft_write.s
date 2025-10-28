section .text
global ft_strcmp

ft_strcmp:
.loop:
  mov al, [rdi]
  mov bl, [rsi]
  cmp al, bl
  jne .end
  or al, bl
  cmp al, 0
  je .end
  inc rdi
  inc rsi
  jmp .loop
.end:
  mov rax, [rdi]
  sub rax, [rsi]
  ret
