#PURPOSE: Program to illustrate how functions work
# This program will compute the value of
# 2^3 + 5^2 = 27 + 25 = 52
#

#Everything in the main program is stored in registers,
#so the data section doesn’t have anything.

    .section    .data
    
    .section    .text
    
    .globl      _start
_start:
    pushl       $3
    pushl       $2
    call        power
    addl        $8, %esp
    pushl       %eax
    
    pushl       $2
    pushl       $5
    call        power
    popl        %ebx
    
    addl        %eax, %ebx
    
    movl        $1, %eax
    int         $0x80


#PURPOSE: This function is used to compute
# the value of a number raised to
# a power.
#
#INPUT: First argument - the base number
# Second argument - the power to
# raise it to
#
#OUTPUT: Will give the result as a return value
#
#NOTES: The power must be 1 or greater
#
#VARIABLES:
# %ebx - holds the base number
# %ecx - holds the power
#
# -4(%ebp) - holds the current result
#
# %eax is used for temporary storage

    .type function
power:
    pushl       %ebp
    movl        %esp, %ebp
    subl        $4, %esp
    movl        $8(%ebp), %ebx
    movl        $12(%ebp), %ecx
    movl        %ebx, -4(%ebp)
    
power_loop_start:
    cmpl        $1, %ecx
    je          end_power
    movl        -4(%ebp), %eax
    
    imull       %ebx, %eax
    
    movl        %eax, -4(%ebp)
    
    decl        %ecx
    jmp         power_loop_start
    
end_power:
    movl        -4(%ebp), %eax
    movl        %ebp, %esp
    popl        %ebp
    ret


    
    