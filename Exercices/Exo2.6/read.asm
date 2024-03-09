section .data
msg db 5
section .text
global _start
_start :
mov eax , 3 ; sys_read
mov ebx , 1 ; fd (file descriptor) standard input "keyboard"
mov ecx , msg ; msg is a pointer to our string
mov edx , 1 ; data size
int 80h
mov eax , 4 ; sys_write
mov ebx , 1
mov ecx , msg
mov edx , 2
int 80h
mov eax , 1 ; sys_exit
mov ebx , 0
int 80h
