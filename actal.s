	.file	"actal.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%i\n"
.LC4:
	.string	"%f %f %f %f\n"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
	# basic block 2
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	pushl	%ebx
	subl	$60, %esp
	cmpl	$1, 8(%ebp)
	jle	.L2
	# basic block 3
	movl	12(%ebp), %eax
	xorl	%edx, %edx
	movl	$10, %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strtol
	movl	$.LC0, (%esp)
	movl	%eax, %ebx
	movl	%eax, 4(%esp)
	call	printf
	testl	%ebx, %ebx
	movaps	.LC1, %xmm2
	movaps	.LC2, %xmm0
	movaps	%xmm2, t.2540
	movaps	.LC3, %xmm3
	movaps	%xmm0, u.2541
	movaps	%xmm3, v.2542
	jle	.L4
.L3:
	# basic block 4
	xorl	%eax, %eax
	.p2align 4,,15
.L5:
	# basic block 5
	movaps	%xmm3, %xmm1
	incl	%eax
	movaps	%xmm2, %xmm4
	subps	%xmm0, %xmm4
	mulps	%xmm0, %xmm1
	cmpl	%ebx, %eax
	movaps	%xmm4, %xmm0
	mulps	%xmm1, %xmm0
	jl	.L5
	# basic block 6
	movaps	%xmm0, u.2541
.L4:
	# basic block 7
	flds	u.2541+12
	fstpl	28(%esp)
	flds	u.2541+8
	fstpl	20(%esp)
	flds	u.2541+4
	fstpl	12(%esp)
	flds	u.2541
	fstpl	4(%esp)
	movl	$.LC4, (%esp)
	call	printf
	addl	$60, %esp
	xorl	%eax, %eax
	popl	%ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	# basic block 8
	movl	$1, %eax
	movl	$1, %ebx
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	movaps	.LC1, %xmm2
	movaps	.LC3, %xmm3
	movaps	%xmm2, t.2540
	movaps	.LC2, %xmm0
	movaps	%xmm3, v.2542
	jmp	.L3
	.size	main, .-main
	.local	v.2542
	.comm	v.2542,16,16
	.local	u.2541
	.comm	u.2541,16,16
	.local	t.2540
	.comm	t.2540,16,16
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 16
.LC2:
	.long	1045220557
	.long	1053609165
	.long	1058642330
	.long	1061997773
	.align 16
.LC3:
	.long	1080783641
	.long	1080783641
	.long	1080783641
	.long	1080783641
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
