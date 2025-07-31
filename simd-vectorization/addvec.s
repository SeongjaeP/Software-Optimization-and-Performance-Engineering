	.file	"addvec.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z9add_arrayPfS_S_i
	.type	_Z9add_arrayPfS_S_i, @function
_Z9add_arrayPfS_S_i:
.LFB2057:
	.cfi_startproc
	endbr64
	movslq	%ecx, %rax
	movq	%rsi, %r8
	movq	%rdx, %rsi
	testl	%eax, %eax
	jle	.L25
	leal	-1(%rax), %edx
	movl	%eax, %r9d
	cmpl	$2, %edx
	jbe	.L3
	leaq	4(%rdi), %r10
	movq	%rsi, %rcx
	subq	%r10, %rcx
	cmpq	$24, %rcx
	jbe	.L3
	leaq	4(%r8), %r10
	movq	%rsi, %rcx
	subq	%r10, %rcx
	cmpq	$24, %rcx
	jbe	.L3
	cmpl	$6, %edx
	jbe	.L11
	movl	%eax, %ecx
	xorl	%edx, %edx
	shrl	$3, %ecx
	salq	$5, %rcx
	.p2align 4,,10
	.p2align 3
.L5:
	vmovups	(%rdi,%rdx), %ymm1
	vaddps	(%r8,%rdx), %ymm1, %ymm0
	vmovups	%ymm0, (%rsi,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, %rcx
	jne	.L5
	movl	%eax, %edx
	andl	$-8, %edx
	cmpl	%edx, %eax
	movl	%edx, %ecx
	je	.L23
	movl	%eax, %r9d
	subl	%edx, %r9d
	leal	-1(%r9), %r10d
	cmpl	$2, %r10d
	jbe	.L27
	vzeroupper
.L4:
	vmovups	(%rdi,%rcx,4), %xmm2
	vaddps	(%r8,%rcx,4), %xmm2, %xmm0
	vmovups	%xmm0, (%rsi,%rcx,4)
	movl	%r9d, %ecx
	andl	$-4, %ecx
	addl	%ecx, %edx
	andl	$3, %r9d
	je	.L25
.L7:
	movslq	%edx, %r9
	vmovss	(%rdi,%r9,4), %xmm0
	vaddss	(%r8,%r9,4), %xmm0, %xmm0
	leaq	0(,%r9,4), %rcx
	vmovss	%xmm0, (%rsi,%r9,4)
	leal	1(%rdx), %r9d
	cmpl	%r9d, %eax
	jle	.L25
	vmovss	4(%rdi,%rcx), %xmm0
	vaddss	4(%r8,%rcx), %xmm0, %xmm0
	addl	$2, %edx
	cmpl	%edx, %eax
	vmovss	%xmm0, 4(%rsi,%rcx)
	jle	.L25
	vmovss	8(%rdi,%rcx), %xmm0
	vaddss	8(%r8,%rcx), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rsi,%rcx)
	ret
.L23:
	vzeroupper
.L25:
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	leaq	0(,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	vmovss	(%rdi,%rax), %xmm0
	vaddss	(%r8,%rax), %xmm0, %xmm0
	vmovss	%xmm0, (%rsi,%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L9
	ret
.L11:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L4
.L27:
	vzeroupper
	jmp	.L7
	.cfi_endproc
.LFE2057:
	.size	_Z9add_arrayPfS_S_i, .-_Z9add_arrayPfS_S_i
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"c[0] = "
.LC3:
	.string	", c[1023] = "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2058:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x70,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x78
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$56, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x68
	movl	$8, %esi
	vmovdqa	.LC0(%rip), %ymm1
	vmovd	%esi, %xmm3
	vpbroadcastd	%xmm3, %ymm3
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-12368(%rbp), %rdx
	leaq	-8272(%rbp), %rcx
	.p2align 4,,10
	.p2align 3
.L29:
	vmovdqa	%ymm1, %ymm0
	vpaddd	%ymm3, %ymm1, %ymm1
	vcvtdq2ps	%ymm0, %ymm2
	vpslld	$1, %ymm0, %ymm0
	vmovaps	%ymm2, (%rdx,%rax)
	vcvtdq2ps	%ymm0, %ymm0
	vmovaps	%ymm0, (%rcx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	.L29
	xorl	%eax, %eax
	leaq	-4176(%rbp), %rsi
	.p2align 4,,10
	.p2align 3
.L30:
	vmovaps	(%rcx,%rax), %ymm4
	vaddps	(%rdx,%rax), %ymm4, %ymm0
	vmovaps	%ymm0, (%rsi,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	.L30
	leaq	_ZSt4cout(%rip), %rbx
	movl	$7, %edx
	leaq	.LC2(%rip), %rsi
	vzeroupper
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	%rbx, %rdi
	vcvtss2sd	-4176(%rbp), %xmm5, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$12, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	%rbx, %rdi
	vcvtss2sd	-84(%rbp), %xmm5, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L40
	cmpb	$0, 56(%r12)
	je	.L33
	movzbl	67(%r12), %eax
.L34:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L39
	addq	$12344, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L33:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	movq	%r12, %rdi
	call	*48(%rax)
	jmp	.L34
.L40:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L39
	call	_ZSt16__throw_bad_castv@PLT
.L39:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2058:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
