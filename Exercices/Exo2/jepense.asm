section .data
message db "Je Pense donc J'ecris",10
longeur equ $-message
section .text
global _start
_start :
mov eax , 4 ; sys_write
mov ebx , 1
mov ecx , message
mov edx , longeur
int 80h
mov eax , 1 ; sys_exit
mov ebx , 0
int 80h
