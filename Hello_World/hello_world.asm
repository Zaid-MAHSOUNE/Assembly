section .data
msg1 db 'Hello world!',10
msg2 db 'Hello world!',10
len1 equ msg2 - msg1
len2 equ msg2-$
section .text
global _start
_start:
 ;sys_write system call
 mov eax, 4
 mov ebx, 1
 mov ecx, msg2
 mov edx, len1
 int 80h
 ;exit system call
 mov eax, 1
 mov ebx, 0
 int 80h