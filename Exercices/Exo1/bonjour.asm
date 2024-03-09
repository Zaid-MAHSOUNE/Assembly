section .data
message db "Bonjour chez vous !",10
longeur equ $-message
message2 db "Hi there",10
len equ $-message2
section .text
global _start
_start :
mov eax , 4
mov ebx , 1
mov ecx , message
mov edx , longeur
int 80h
mov eax , 4
mov ebx , 1
mov ecx , message2
mov edx , len
int 80h
mov eax , 1
mov ebx , 0
int 80h
