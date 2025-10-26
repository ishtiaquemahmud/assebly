global _start
Section .data


Section .text
 	
_start:
mov ebx,0x12345
mov eax,45
cmp eax,44
jg _true
jmp _exit



_true:
mov eax,1
int 0x80


_exit:

mov eax,1
mov ebx,0
int 0x80
