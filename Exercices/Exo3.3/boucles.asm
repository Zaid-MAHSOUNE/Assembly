section .data
char db ""
global _start
_start:
    mov eax , 5
    call _write_number
    mov eax , 1
    mov ebx , 0
    int 80h

_write_number:
    mov ecx , 10
    xor edx , edx 
    idiv ecx
    add edx , "0"
     
    int 80h
    ret