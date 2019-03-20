#PURPOSE:
# This program finds the maximum number of a
# set of data items.
#VARIABLES: The registers have the following uses:
#
# %edi - Holds the index of the data item being examined
# %ebx - Largest data item found
# %eax - Current data item
#
# The following memory locations are used:
#
# data_items - contains the item data. A 0 is used
# to terminate the data
#

    .section    .data
data_items:
    .long       3,67,34,23,22,45,75,54,34,44,33,22,11,66,0
data_items_len:
    .long       12

    .section    .text
    
    .globl      _start
_start:
    movl        $0, %ebx
    movl        data_items_len(,%edi,4), %ecx # load array length
    
# this is the equivalent of a for-loop with conditions
# for(int i = 0; i < array_length; i++)
# or in this case:
# for(%edi = 0; %edi < %ecx; %edi++)
    movl        $0, %edi
start_loop:
# loop content
# {
    movl        data_items(,%edi,4), %eax

# if:           %ebx < %eax
    cmpl        %ebx, %eax
    jg          start_if
    jmp         end_if
start_if:
    movl        %eax, %ebx    
end_if:
# }
# end loop content
# for-loop conditions
    incl        %edi
#   if          %ecx <= edi
    cmpl        %ecx, %edi 
    jge         loop_exit
    jmp         start_loop
loop_exit:

    movl        $1, %eax
    int         $0x80

