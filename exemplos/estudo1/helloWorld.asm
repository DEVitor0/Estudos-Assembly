section .data
  msg db "hello, world!", 0X10
  len equ $ - msg

section .text
  global _start

_start
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, len
  syscall