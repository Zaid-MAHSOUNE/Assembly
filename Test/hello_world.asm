section .data
msg1 dw 'Hello world!',10
len1 equ $ - msg1         ; everything in here is a pointer 0x125674
i db 0
section .text
global _start
_start:
 ;sys_write system call
 mov eax, 4 ; interuption number: 4 => sys_write
 mov ebx, 1 ; output destination: 1 => standard ouput: screen
 inc byte i
 mov ecx, msg1 ; message content
 mov edx, len1 ; length
 int 0x80 ; execute the interuption 
 ;exit system call
 mov eax, 1 ; interuption number: 4 => sys_exit
 mov ebx, 0 ; set ebx to zero (the exit code) 
 int 80h