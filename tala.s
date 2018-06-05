	.file	"tal.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%i\n"
.LC4:
	.string	"%f %f\n"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
	# basic block 2
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$148, %esp
	cmpl	$1, 8(%ebp)
	jle	.L2
	# basic block 3
	movl	12(%ebp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	%eax, %ebx
	movl	%eax, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	testl	%ebx, %ebx
	movl	$1045220557, 44(%esp)
	movl	$1053609165, 40(%esp)
	jle	.L4
.L3:
	# basic block 4
	movl	$1045220557, %edx
	movl	$1053609165, %eax
	xorl	%ecx, %ecx
	.p2align 4,,7
	.p2align 3
.L5:
	# basic block 5
	movl	%edx, 136(%esp)
	movl	%eax, 132(%esp)
	xorl	%edi, %edi
	flds	136(%esp)
	flds	132(%esp)
	fld1
	movl	%eax, 140(%esp)
	movl	%edx, 128(%esp)
	xorl	%edx, %edx
	fld	%st(0)
	movl	%edx, 124(%esp)
	movl	%edi, 100(%esp)
	incl	%ecx
	fsub	%st(3), %st
	fstps	120(%esp)
	movl	120(%esp), %eax
	fsub	%st(1), %st
	movl	%eax, 112(%esp)
	movl	112(%esp), %eax
	movl	%eax, 104(%esp)
	movl	%eax, 88(%esp)
	fstps	116(%esp)
	movl	116(%esp), %edx
	flds	.LC3
	flds	104(%esp)
	fmul	%st(1), %st
	movl	%edx, 92(%esp)
	movl	%edx, 108(%esp)
	xorl	%edx, %edx
	movl	%edx, 68(%esp)
	cmpl	%ecx, %ebx
	fstps	96(%esp)
	movl	96(%esp), %esi
	fmuls	92(%esp)
	movl	%esi, 80(%esp)
	movl	80(%esp), %esi
	fstps	84(%esp)
	fxch	%st(1)
	movl	%esi, 72(%esp)
	movl	84(%esp), %edi
	fmuls	72(%esp)
	movl	%edi, 76(%esp)
	fstps	64(%esp)
	movl	64(%esp), %edx
	movl	%esi, 56(%esp)
	movl	%edi, 60(%esp)
	fmuls	60(%esp)
	movl	%edx, 48(%esp)
	movl	48(%esp), %edx
	fstps	52(%esp)
	movl	52(%esp), %eax
	jg	.L5
	# basic block 6
	movl	%edx, 44(%esp)
	movl	%eax, 40(%esp)
.L4:
	# basic block 7
	flds	40(%esp)
	movl	$.LC4, 4(%esp)
	fstpl	16(%esp)
	movl	$1, (%esp)
	flds	44(%esp)
	fstpl	8(%esp)
	call	__printf_chk
	addl	$148, %esp
	xorl	%eax, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
	.p2align 4,,7
	.p2align 3
.L2:
	# basic block 8
	movl	$1, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, %ebx
	movl	$1, (%esp)
	call	__printf_chk
	jmp	.L3
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	1080783641
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
