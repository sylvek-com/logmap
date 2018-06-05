	.file	"tal.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%i\n"
.LC4:
	.string	"%f %f\n"
	.text
	.p2align 5,,31
.globl main
	.type	main, @function
main:
	# basic block 2
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	subl	$16, %esp
	cmpl	$1, (%ecx)
	movl	4(%ecx), %eax
	jle	.L2
	# basic block 3
	pushl	%ebx
	pushl	$10
	pushl	$0
	pushl	4(%eax)
	call	strtol
	popl	%edx
	movl	%eax, %ebx
	popl	%ecx
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	testl	%ebx, %ebx
	movl	$1045220557, -24(%ebp)
	movl	$1053609165, -16(%ebp)
	jle	.L4
.L3:
	# basic block 4
	movl	$1045220557, %eax
	movl	$1053609165, %edx
	movl	%eax, -24(%ebp)
	movq	.LC2, %mm1
	movl	%edx, -20(%ebp)
	movq	.LC3, %mm0
	movq	-24(%ebp), %mm2
	leal	-1(%ebx), %edx
	movl	$1, %eax
	andl	$7, %edx
	cmpl	%ebx, %eax
	pfsubr	%mm1, %mm2
	pfmul	%mm0, %mm2
	pfmul	-24(%ebp), %mm2
	movq	%mm2, -16(%ebp)
	jge	.L37
	# basic block 5
	testl	%edx, %edx
	je	.L5
	# basic block 6
	cmpl	$1, %edx
	je	.L31
	# basic block 7
	cmpl	$2, %edx
	je	.L32
	# basic block 8
	cmpl	$3, %edx
	je	.L33
	# basic block 9
	cmpl	$4, %edx
	je	.L34
	# basic block 10
	cmpl	$5, %edx
	je	.L35
	# basic block 11
	cmpl	$6, %edx
	je	.L36
	# basic block 12
	pfsubr	%mm1, %mm2
	pfmul	%mm0, %mm2
	pfmul	-16(%ebp), %mm2
	movb	$2, %al
	movq	%mm2, -16(%ebp)
.L36:
	# basic block 13
	movq	-16(%ebp), %mm4
	incl	%eax
	pfsubr	%mm1, %mm4
	pfmul	%mm0, %mm4
	pfmul	-16(%ebp), %mm4
	movq	%mm4, -16(%ebp)
.L35:
	# basic block 14
	movq	-16(%ebp), %mm5
	incl	%eax
	pfsubr	%mm1, %mm5
	pfmul	%mm0, %mm5
	pfmul	-16(%ebp), %mm5
	movq	%mm5, -16(%ebp)
.L34:
	# basic block 15
	movq	-16(%ebp), %mm6
	incl	%eax
	pfsubr	%mm1, %mm6
	pfmul	%mm0, %mm6
	pfmul	-16(%ebp), %mm6
	movq	%mm6, -16(%ebp)
.L33:
	# basic block 16
	movq	-16(%ebp), %mm7
	incl	%eax
	pfsubr	%mm1, %mm7
	pfmul	%mm0, %mm7
	pfmul	-16(%ebp), %mm7
	movq	%mm7, -16(%ebp)
.L32:
	# basic block 17
	movq	-16(%ebp), %mm3
	incl	%eax
	pfsubr	%mm1, %mm3
	pfmul	%mm0, %mm3
	pfmul	-16(%ebp), %mm3
	movq	%mm3, -16(%ebp)
.L31:
	# basic block 18
	movq	-16(%ebp), %mm2
	incl	%eax
	cmpl	%ebx, %eax
	pfsubr	%mm1, %mm2
	pfmul	%mm0, %mm2
	pfmul	-16(%ebp), %mm2
	movq	%mm2, -16(%ebp)
	jge	.L37
.L5:
	# basic block 19
	movq	-16(%ebp), %mm2
	addl	$8, %eax
	cmpl	%ebx, %eax
	movq	%mm1, %mm3
	movq	%mm1, %mm7
	movq	%mm1, %mm6
	pfsubr	%mm1, %mm2
	pfmul	%mm0, %mm2
	pfmul	-16(%ebp), %mm2
	movq	%mm1, %mm5
	movq	%mm1, %mm4
	pfsub	%mm2, %mm3
	pfmul	%mm0, %mm3
	pfmul	%mm2, %mm3
	movq	%mm1, %mm2
	pfsub	%mm3, %mm7
	pfmul	%mm0, %mm7
	pfmul	%mm3, %mm7
	movq	%mm1, %mm3
	pfsub	%mm7, %mm6
	pfmul	%mm0, %mm6
	pfmul	%mm7, %mm6
	pfsub	%mm6, %mm5
	pfmul	%mm0, %mm5
	pfmul	%mm6, %mm5
	pfsub	%mm5, %mm4
	pfmul	%mm0, %mm4
	pfmul	%mm5, %mm4
	pfsub	%mm4, %mm2
	pfmul	%mm0, %mm2
	pfmul	%mm4, %mm2
	pfsub	%mm2, %mm3
	pfmul	%mm0, %mm3
	pfmul	%mm3, %mm2
	movq	%mm2, -16(%ebp)
	jl	.L5
.L37:
	# basic block 20
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, -24(%ebp)
	movl	%eax, -16(%ebp)
.L4:
	# basic block 21
	femms
	subl	$28, %esp
	flds	-16(%ebp)
	fstpl	8(%esp)
	flds	-24(%ebp)
	fstpl	(%esp)
	pushl	$.LC4
	call	printf
	leal	-8(%ebp), %esp
	movl	$0, %eax
	popl	%ecx
	popl	%ebx
	leave
	leal	-4(%ecx), %esp
	ret
	.p2align 5,,7
	.p2align 3
.L2:
	# basic block 22
	pushl	%eax
	movl	$1, %ebx
	pushl	%eax
	pushl	$1
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	jmp	.L3
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	1065353216
	.long	1065353216
	.align 8
.LC3:
	.long	1080783641
	.long	1080783641
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
