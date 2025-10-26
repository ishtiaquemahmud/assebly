#this program find the maximum number of a set of data items
# %edi - holds the index of the data item being examined
# %ebx - largest data item found 
# %eax - current data item
# data_items - contains the item data. 0 is used to terminate the data
# .byte take up one storage location for each number which are limited to numbers between 0 and 255
# .int take up two storage locations for each number limit(0 and 65535)
# .long take up 4 storage locations. this is the same amount of space the registers use,which is why they are used in this program. They can hold numbers between 0 and 4294967295
# .ascii directive is to enter in characters into memory.characters each take up one storage location. must add quotes

.section .data

data_items:
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start
_start:
movl $0, %edi       # move 0 into the index register
movl data_items(,%edi,4), %eax       # load the first byte of data
movl %eax, %ebx       # since this is the first item, %eax is the biggest



start_loop:
cmpl $0, %eax       # cmpl (compare logical)check to see if we've hit the end
je loop_exit         # je (jump if equal)
incl %edi           # incl(increment logical).load next value
movl data_items(,%edi,4), %eax
cmpl %ebx, %eax                  # compare values
jle start_loop       #jump to loop if the new one is less than equal

movl %eax, %ebx      # move the value as the largest

jmp start_loop       #jump to loop beginning

loop_exit:
# %ebx is the status cod efor the exit system call and it already has the maximum number

movl $1, %eax                  # 1 is the exit() syscall

int $0x80
