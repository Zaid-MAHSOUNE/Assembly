section .data
msg db "*",10
i db 1
n db 3
section .text
global _start
_start:
mov eax , 3 ; sys_read
mov ebx , 0 ; fd (file descriptor) standard input "keyboard"
mov ecx , n ; msg is a pointer to our string
mov edx , 1 ; data size
int 80h
; Convert ASCII Value to Integer
mov al ,[n]
sub al, "0"
mov [n] ,eax
;
_write:
mov eax , 4
mov ebx , 1
mov ecx , msg
mov edx , 2
int 80h
inc byte [i]
mov byte dl ,[n]  
cmp dl ,[i]
jge _write
mov eax , 1
mov ebx , 0
int 80h
