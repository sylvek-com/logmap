	.file	"fractal.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%i\n"
.LC3:
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
	subl	$76, %esp
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
	jle	.L9
.L3:
	# basic block 4
	movss	u.3601, %xmm3
	xorl	%eax, %eax
	movss	u.3601+4, %xmm2
	movss	u.3601+8, %xmm1
	movss	u.3601+12, %xmm0
	movss	.LC1, %xmm5
	movss	.LC2, %xmm4
	.p2align 4,,15
.L5:
	# basic block 5
	movaps	%xmm5, %xmm6
	incl	%eax
	subss	%xmm3, %xmm6
	mulss	%xmm4, %xmm3
	cmpl	%eax, %ebx
	mulss	%xmm6, %xmm3
	movaps	%xmm5, %xmm6
	subss	%xmm2, %xmm6
	mulss	%xmm4, %xmm2
	mulss	%xmm6, %xmm2
	movaps	%xmm5, %xmm6
	subss	%xmm1, %xmm6
	mulss	%xmm4, %xmm1
	mulss	%xmm6, %xmm1
	movaps	%xmm5, %xmm6
	subss	%xmm0, %xmm6
	mulss	%xmm4, %xmm0
	mulss	%xmm6, %xmm0
	jg	.L5
	# basic block 6
	movss	%xmm3, u.3601
	movss	%xmm2, u.3601+4
	movss	%xmm1, u.3601+8
	movss	%xmm0, u.3601+12
.L4:
	# basic block 7
	movss	%xmm0, 60(%esp)
	movl	$.LC3, (%esp)
	flds	60(%esp)
	movss	%xmm1, 60(%esp)
	fstpl	28(%esp)
	flds	60(%esp)
	movss	%xmm2, 60(%esp)
	fstpl	20(%esp)
	flds	60(%esp)
	movss	%xmm3, 60(%esp)
	fstpl	12(%esp)
	flds	60(%esp)
	fstpl	4(%esp)
	call	printf
	addl	$76, %esp
	popl	%ebx
	movl	%ebp, %esp
	xorl	%eax, %eax
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
	jmp	.L3
.L9:
	# basic block 9
	movss	u.3601+12, %xmm0
	movss	u.3601+8, %xmm1
	movss	u.3601+4, %xmm2
	movss	u.3601, %xmm3
	jmp	.L4
	.size	main, .-main
	.data
	.align 16
	.type	u.3601, @object
	.size	u.3601, 16
u.3601:
	.long	1045220557
	.long	1053609165
	.long	1058642330
	.long	1061997773
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1080783641
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
