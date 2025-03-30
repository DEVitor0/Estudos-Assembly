section .data
  mensagem db "nome: ", 0xA
  lenMensagem equ $ - mensagem

  resposta db "Olá, "
  lenResposta equ $ - resposta

  buffer times 64 db 0
  lenBuffer equ $ - buffer

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, mensagem
  mov rdx, lenMensagem
  syscall

  mov rax, 0
  mov rdi, 0
  mov rsi, buffer
  mov rdx, 64
  syscall

  mov r8, rax

  mov rax, 1
  mov rdi, 1
  mov rsi, resposta
  mov rdx, lenResposta
  syscall

  mov rax, 1
  mov rdi, 1
  mov rsi, buffer
  mov rdx, r8
  syscall

  mov rax, 60
  mov rdi, 0
  syscall