section .data
msg db "*"
lr db "",10
n db 5
i db 1
j db 1
section .text
global _start
_start:
_write_column:
_write_line:
mov eax , 4
mov ebx , 1
mov ecx , msg
mov edx , 1
int 80h
inc byte [j]
mov byte dl ,[n]  
cmp dl ,[j]
jge _write_line
;Line return 
mov eax , 4
mov ebx , 1
mov ecx , lr
mov edx , 2
int 80h
;
mov byte [j] ,1 
inc byte [i]
mov byte dl ,[n]  
cmp dl ,[i]
jge _write_column

mov eax , 1
mov ebx , 0
int 80h
