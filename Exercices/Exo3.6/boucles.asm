section .data
a db '0'
b db '9'
n db "0"
section .text
global _start
_start:

_read_loop:
    mov eax , 3 ; sys_read
    mov ebx , 0 ; fd (file descriptor) standard input "keyboard"
    mov ecx , n ; msg is a pointer to our string
    mov edx , 1 ; data size
    int 80h

    ; Convert ASCII Value to Integer
    ;mov al ,[n]
    ;sub al, "0"
    ;mov [n] ,eax

    mov al , [a]
    mov bl , [n]

    cmp bl , al
    jg _read_loop
;
_write:
mov eax , 1
mov ebx , 0
int 80h
