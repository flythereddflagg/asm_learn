
out.exe:     file format elf64-x86-64


Disassembly of section .text:

00000000004000b0 <_start>:
  4000b0:	bb 00 00 00 00       	mov    $0x0,%ebx
  4000b5:	bf 00 00 00 00       	mov    $0x0,%edi
  4000ba:	67 8b 0c bd 1d 01 60 	mov    0x60011d(,%edi,4),%ecx
  4000c1:	00 

00000000004000c2 <start_loop>:
  4000c2:	67 8b 04 bd e1 00 60 	mov    0x6000e1(,%edi,4),%eax
  4000c9:	00 
  4000ca:	39 d8                	cmp    %ebx,%eax
  4000cc:	7f 02                	jg     4000d0 <start_if>
  4000ce:	eb 02                	jmp    4000d2 <end_if>

00000000004000d0 <start_if>:
  4000d0:	89 c3                	mov    %eax,%ebx

00000000004000d2 <end_if>:
  4000d2:	ff c7                	inc    %edi
  4000d4:	39 cf                	cmp    %ecx,%edi
  4000d6:	7d 02                	jge    4000da <loop_exit>
  4000d8:	eb e8         .       	jmp    4000c2 <start_loop>

00000000004000da <loop_exit>:
  4000da:	b8 01 00 00 00       	mov    $0x1,%eax
  4000df:	cd 80                	int    $0x80

Disassembly of section .data:

00000000006000e1 <data_items>:
  6000e1:	03 00                	add    (%rax),%eax
  6000e3:	00 00                	add    %al,(%rax)
  6000e5:	43 00 00             	rex.XB add %al,(%r8)
  6000e8:	00 22                	add    %ah,(%rdx)
  6000ea:	00 00                	add    %al,(%rax)
  6000ec:	00 17                	add    %dl,(%rdi)
  6000ee:	00 00                	add    %al,(%rax)
  6000f0:	00 16                	add    %dl,(%rsi)
  6000f2:	00 00                	add    %al,(%rax)
  6000f4:	00 2d 00 00 00 4b    	
  6000fa:	00 00                	add    %al,(%rax)
  6000fc:	00 36                	add    %dh,(%rsi)
  6000fe:	00 00                	add    %al,(%rax)
  600100:	00 22                	add    %ah,(%rdx)
  600102:	00 00                	add    %al,(%rax)
  600104:	00 2c 00             	add    %ch,(%rax,%rax,1)
  600107:	00 00                	add    %al,(%rax)
  600109:	21 00                	and    %eax,(%rax)
  60010b:	00 00                	add    %al,(%rax)
  60010d:	16                   	(bad)  
  60010e:	00 00                	add    %al,(%rax)
  600110:	00 0b                	add    %cl,(%rbx)
  600112:	00 00                	add    %al,(%rax)
  600114:	00 42 00             	add    %al,0x0(%rdx)
  600117:	00 00                	add    %al,(%rax)
  600119:	e9 00 00 00        	jmpq   f60011e <_end+0xefffff6>

000000000060011d <data_items_len>:
  60011d:	0f 00 00             	sldt   (%rax)
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	b0 00                	mov    $0x0,%al
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 31                	add    %dh,(%rcx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	2a 00                	sub    (%rax),%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	b0 00                	mov    $0x0,%al
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 e1                	add    %ah,%cl
  19:	00 40 00             	add    %al,0x0(%rax)
	...
  24:	09 00                	or     %eax,(%rax)
  26:	00 00                	add    %al,(%rax)
  28:	27                   	(bad)  
  29:	00 00                	add    %al,(%rax)
  2b:	00 01                	add    %al,(%rcx)
  2d:	80                   	.byte 0x80

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	00 10                	add    %dl,(%rax)
   4:	06                   	(bad)  
   5:	11 01                	adc    %eax,(%rcx)
   7:	12 01                	adc    (%rcx),%al
   9:	03 0e                	add    (%rsi),%ecx
   b:	1b 0e                	sbb    (%rsi),%ecx
   d:	25 0e 13 05 00       	and    $0x5130e,%eax
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	47 00 00             	rex.RXB add %r8b,(%r8)
   3:	00 02                	add    %al,(%rdx)
   5:	00 1f                	add    %bl,(%rdi)
   7:	00 00                	add    %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	00 72 65             	add    %dh,0x65(%rdx)
  1e:	74 75                	je     95 <_start-0x40001b>
  20:	72 6e                	jb     90 <_start-0x400020>
  22:	2e 73 00             	jae,pn 25 <_start-0x40008b>
  25:	00 00                	add    %al,(%rax)
  27:	00 00                	add    %al,(%rax)
  29:	00 09                	add    %cl,(%rcx)
  2b:	02 b0 00 40 00 00    	add    0x4000(%rax),%dh
  31:	00 00                	add    %al,(%rax)
  33:	00 03                	add    %al,(%rbx)
  35:	19 01                	sbb    %eax,(%rcx)
  37:	59                   	pop    %rcx
  38:	59                   	pop    %rcx
  39:	03 09                	add    (%rcx),%ecx
  3b:	82                   	(bad)  
  3c:	85 2f                	test   %ebp,(%rdi)
  3e:	2f                   	(bad)  
  3f:	30 33                	xor    %dh,(%rbx)
  41:	30 2f                	xor    %ch,(%rdi)
  43:	2f                   	(bad)  
  44:	31 59 02             	xor    %ebx,0x2(%rcx)
  47:	02 00                	add    (%rax),%al
  49:	01 01                	add    %eax,(%rcx)

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	72 65                	jb     67 <_start-0x400049>
   2:	74 75                	je     79 <_start-0x400037>
   4:	72 6e                	jb     74 <_start-0x40003c>
   6:	2e 73 00             	jae,pn 9 <_start-0x4000a7>
   9:	2f                   	(bad)  
   a:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
   f:	6d                   	insl   (%dx),%es:(%rdi)
  10:	65 72 2f             	gs jb  42 <_start-0x40006e>
  13:	44 6f                	rex.R outsl %ds:(%rsi),(%dx)
  15:	63 75 6d             	movslq 0x6d(%rbp),%esi
  18:	65 6e                	outsb  %gs:(%rsi),(%dx)
  1a:	74 73                	je     8f <_start-0x400021>
  1c:	2f                   	(bad)  
  1d:	61                   	(bad)  
  1e:	73 6d                	jae    8d <_start-0x400023>
  20:	5f                   	pop    %rdi
  21:	6c                   	insb   (%dx),%es:(%rdi)
  22:	65 61                	gs (bad) 
  24:	72 6e                	jb     94 <_start-0x40001c>
  26:	00 47 4e             	add    %al,0x4e(%rdi)
  29:	55                   	push   %rbp
  2a:	20 41 53             	and    %al,0x53(%rcx)
  2d:	20 32                	and    %dh,(%rdx)
  2f:	2e 33 30             	xor    %cs:(%rax),%esi
	...
