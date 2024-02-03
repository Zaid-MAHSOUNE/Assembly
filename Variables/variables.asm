section .data
; Variable Declaration 
choice db 'Y'
len equ $ - choice
; Array Declaration 
array times 10 db '*'
len_arr equ $ - array
section .text

global _start
_start:
 mov eax, 4 
 mov ebx, 1   
 mov ecx, array 
 mov edx, len_arr 
 int 0x80 
 mov eax, 1 
 mov ebx, 0 
 int 80h