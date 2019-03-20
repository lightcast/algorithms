	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	__Z12binarySearchPiii   ## -- Begin function _Z12binarySearchPiii
	.p2align	4, 0x90
__Z12binarySearchPiii:                  ## @_Z12binarySearchPiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -32(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	LBB0_9
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	cmpl	(%rsi,%rdi,4), %eax
	jne	LBB0_4
## %bb.3:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_10
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_9:
	movl	$-1, -4(%rbp)
LBB0_10:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	movq	l__ZZ4mainE1A(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	l__ZZ4mainE1A+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	l__ZZ4mainE1A+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$5, -40(%rbp)
	movl	$6, -44(%rbp)
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	__Z12binarySearchPiii
	movl	%eax, -48(%rbp)
	cmpl	$-1, -48(%rbp)
	je	LBB1_2
## %bb.1:
	leaq	L_.str(%rip), %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -56(%rbp)         ## 4-byte Spill
LBB1_3:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_5
## %bb.4:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB1_5:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @_ZZ4mainE1A
l__ZZ4mainE1A:
	.long	2                       ## 0x2
	.long	5                       ## 0x5
	.long	6                       ## 0x6
	.long	8                       ## 0x8
	.long	9                       ## 0x9
	.long	10                      ## 0xa

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Element found at index %d"

L_.str.1:                               ## @.str.1
	.asciz	"Element not found in the array"


.subsections_via_symbols
