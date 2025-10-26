.section .data  #this command starts the data section,where you list any memory storage you will need for data.
        
.section .text  #the text section of a program is whre the program instructions live


.globl _start   #_start is a special symbol that always needs to be marked with .globl because it marks the locatio
                 # ofthe start of the program without making this location this way ,when the coputer loads your co                  program it won't know where to begin running your program

 
_start:          #defines the values of the _start label.a label is a symbol followed by a colon

movl $1, %eax    #when the program runs, this instruction transfers the number 1 into the %eax register.In assembly                  language, many instructions have operands.movl has two operands -the source and the destination .                   In this case ,the source is the literal number 1, and the destination is the %eax register.the 
                   # number 1 is the number of the exit sytem call

movl $'s', %ebx    #s in ascii is 115

int $0x80        #int stands for interrrupt it iterrupts the program and asks Linux to terminate the program.If we                   # did'y signal the interrrupt, then no system call would have been performed



#general purpose registers [%eax,ebx,ecx,edx,edi,esi]
#special purpose registers,[%ebp,esp,eip,eflags]

