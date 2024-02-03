section .data
; Declaration 
name db "Kai Parker",10
len equ $ - name
len2 equ 14

section .text
global _start
_start:
;print name
 mov eax, 4 
 mov ebx, 1   
 mov ecx, name 
 mov edx, len 
 int 0x80
;change name
 mov dword [name], "Zaid"
 mov dword [name + 4], " MAH"
 mov dword [name + 8], "SOUN"
 mov dword [name + 12], "E"
 mov byte [name + 13], 10
;print name
mov eax, 4 
 mov ebx, 1   
 mov ecx, name 
 mov edx, len2 
 int 0x80
; exit 
 mov eax, 1 
 mov ebx, 0 
 int 80h