	.text
	.file	"vectorize_test.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.globl	_Z5saxpyPfS_fi                  # -- Begin function _Z5saxpyPfS_fi
	.p2align	4, 0x90
	.type	_Z5saxpyPfS_fi,@function
_Z5saxpyPfS_fi:                         # @_Z5saxpyPfS_fi
	.cfi_startproc
# %bb.0:
	testl	%edx, %edx
	jle	.LBB0_14
# %bb.1:
	movl	%edx, %eax
	cmpl	$32, %edx
	jb	.LBB0_2
# %bb.3:
	leaq	(%rdi,%rax,4), %rcx
	cmpq	%rsi, %rcx
	jbe	.LBB0_6
# %bb.4:
	leaq	(%rsi,%rax,4), %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB0_6
.LBB0_2:
	xorl	%ecx, %ecx
.LBB0_9:
	movq	%rax, %r8
	movq	%rcx, %rdx
	andq	$7, %r8
	je	.LBB0_12
# %bb.10:
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rdi,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rsi,%rdx,4)
	incq	%rdx
	decq	%r8
	jne	.LBB0_11
.LBB0_12:
	subq	%rax, %rcx
	cmpq	$-8, %rcx
	ja	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rdi,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, (%rsi,%rdx,4)
	vmovss	4(%rdi,%rdx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	4(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 4(%rsi,%rdx,4)
	vmovss	8(%rdi,%rdx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	8(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 8(%rsi,%rdx,4)
	vmovss	12(%rdi,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	12(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 12(%rsi,%rdx,4)
	vmovss	16(%rdi,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	16(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 16(%rsi,%rdx,4)
	vmovss	20(%rdi,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	20(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 20(%rsi,%rdx,4)
	vmovss	24(%rdi,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	24(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 24(%rsi,%rdx,4)
	vmovss	28(%rdi,%rdx,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	vfmadd213ss	28(%rsi,%rdx,4), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) + mem
	vmovss	%xmm1, 28(%rsi,%rdx,4)
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_13
	jmp	.LBB0_14
.LBB0_6:
	movl	%eax, %ecx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	vbroadcastss	%xmm0, %ymm1
	movl	%eax, %edx
	shrl	$5, %edx
	andl	$67108863, %edx                 # imm = 0x3FFFFFF
	shlq	$7, %rdx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	vmovups	(%rdi,%r8), %ymm2
	vmovups	32(%rdi,%r8), %ymm3
	vmovups	64(%rdi,%r8), %ymm4
	vmovups	96(%rdi,%r8), %ymm5
	vfmadd213ps	(%rsi,%r8), %ymm1, %ymm2 # ymm2 = (ymm1 * ymm2) + mem
	vfmadd213ps	32(%rsi,%r8), %ymm1, %ymm3 # ymm3 = (ymm1 * ymm3) + mem
	vfmadd213ps	64(%rsi,%r8), %ymm1, %ymm4 # ymm4 = (ymm1 * ymm4) + mem
	vfmadd213ps	96(%rsi,%r8), %ymm1, %ymm5 # ymm5 = (ymm1 * ymm5) + mem
	vmovups	%ymm2, (%rsi,%r8)
	vmovups	%ymm3, 32(%rsi,%r8)
	vmovups	%ymm4, 64(%rsi,%r8)
	vmovups	%ymm5, 96(%rsi,%r8)
	subq	$-128, %r8
	cmpq	%r8, %rdx
	jne	.LBB0_7
# %bb.8:
	cmpq	%rax, %rcx
	jne	.LBB0_9
.LBB0_14:
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z5saxpyPfS_fi, .Lfunc_end0-_Z5saxpyPfS_fi
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI1_0:
	.long	0x3f800000                      # float 1
.LCPI1_1:
	.long	0x40000000                      # float 2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_2:
	.quad	0x41cdcd6500000000              # double 1.0E+9
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$4194304, %edi                  # imm = 0x400000
	callq	_Znam@PLT
	movq	%rax, %rbx
	movl	$4194304, %edi                  # imm = 0x400000
	callq	_Znam@PLT
	movq	%rax, %r14
	movl	$120, %eax
	vbroadcastss	.LCPI1_0(%rip), %ymm0   # ymm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vbroadcastss	.LCPI1_1(%rip), %ymm1   # ymm1 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -480(%rbx,%rax,4)
	vmovups	%ymm0, -448(%rbx,%rax,4)
	vmovups	%ymm0, -416(%rbx,%rax,4)
	vmovups	%ymm0, -384(%rbx,%rax,4)
	vmovups	%ymm1, -480(%r14,%rax,4)
	vmovups	%ymm1, -448(%r14,%rax,4)
	vmovups	%ymm1, -416(%r14,%rax,4)
	vmovups	%ymm1, -384(%r14,%rax,4)
	vmovups	%ymm0, -352(%rbx,%rax,4)
	vmovups	%ymm0, -320(%rbx,%rax,4)
	vmovups	%ymm0, -288(%rbx,%rax,4)
	vmovups	%ymm0, -256(%rbx,%rax,4)
	vmovups	%ymm1, -352(%r14,%rax,4)
	vmovups	%ymm1, -320(%r14,%rax,4)
	vmovups	%ymm1, -288(%r14,%rax,4)
	vmovups	%ymm1, -256(%r14,%rax,4)
	vmovups	%ymm0, -224(%rbx,%rax,4)
	vmovups	%ymm0, -192(%rbx,%rax,4)
	vmovups	%ymm0, -160(%rbx,%rax,4)
	vmovups	%ymm0, -128(%rbx,%rax,4)
	vmovups	%ymm1, -224(%r14,%rax,4)
	vmovups	%ymm1, -192(%r14,%rax,4)
	vmovups	%ymm1, -160(%r14,%rax,4)
	vmovups	%ymm1, -128(%r14,%rax,4)
	vmovups	%ymm0, -96(%rbx,%rax,4)
	vmovups	%ymm0, -64(%rbx,%rax,4)
	vmovups	%ymm0, -32(%rbx,%rax,4)
	vmovups	%ymm0, (%rbx,%rax,4)
	vmovups	%ymm1, -96(%r14,%rax,4)
	vmovups	%ymm1, -64(%r14,%rax,4)
	vmovups	%ymm1, -32(%r14,%rax,4)
	vmovups	%ymm1, (%r14,%rax,4)
	subq	$-128, %rax
	cmpq	$1048696, %rax                  # imm = 0x100078
	jne	.LBB1_1
# %bb.2:
	movl	$56, %r12d
	vmovups	%ymm1, (%rsp)                   # 32-byte Spill
	vzeroupper
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovups	(%rsp), %ymm4                   # 32-byte Reload
	movq	%rax, %r15
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	vmovups	-224(%rbx,%r12,4), %ymm0
	vmovups	-192(%rbx,%r12,4), %ymm1
	vmovups	-160(%rbx,%r12,4), %ymm2
	vmovups	-128(%rbx,%r12,4), %ymm3
	vfmadd213ps	-224(%r14,%r12,4), %ymm4, %ymm0 # ymm0 = (ymm4 * ymm0) + mem
	vfmadd213ps	-192(%r14,%r12,4), %ymm4, %ymm1 # ymm1 = (ymm4 * ymm1) + mem
	vfmadd213ps	-160(%r14,%r12,4), %ymm4, %ymm2 # ymm2 = (ymm4 * ymm2) + mem
	vfmadd213ps	-128(%r14,%r12,4), %ymm4, %ymm3 # ymm3 = (ymm4 * ymm3) + mem
	vmovups	%ymm0, -224(%r14,%r12,4)
	vmovups	%ymm1, -192(%r14,%r12,4)
	vmovups	%ymm2, -160(%r14,%r12,4)
	vmovups	%ymm3, -128(%r14,%r12,4)
	vmovups	-96(%rbx,%r12,4), %ymm0
	vmovups	-64(%rbx,%r12,4), %ymm1
	vmovups	-32(%rbx,%r12,4), %ymm2
	vmovups	(%rbx,%r12,4), %ymm3
	vfmadd213ps	-96(%r14,%r12,4), %ymm4, %ymm0 # ymm0 = (ymm4 * ymm0) + mem
	vfmadd213ps	-64(%r14,%r12,4), %ymm4, %ymm1 # ymm1 = (ymm4 * ymm1) + mem
	vfmadd213ps	-32(%r14,%r12,4), %ymm4, %ymm2 # ymm2 = (ymm4 * ymm2) + mem
	vfmadd213ps	(%r14,%r12,4), %ymm4, %ymm3 # ymm3 = (ymm4 * ymm3) + mem
	vmovups	%ymm0, -96(%r14,%r12,4)
	vmovups	%ymm1, -64(%r14,%r12,4)
	vmovups	%ymm2, -32(%r14,%r12,4)
	vmovups	%ymm3, (%r14,%r12,4)
	addq	$64, %r12
	cmpq	$1048632, %r12                  # imm = 0x100038
	jne	.LBB1_3
# %bb.4:
	vzeroupper
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r15, %rax
	vcvtsi2sd	%rax, %xmm5, %xmm0
	vdivsd	.LCPI1_2(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	_ZSt4cout@GOTPCREL(%rip), %r15
	leaq	.L.str(%rip), %rsi
	movl	$9, %edx
	movq	%r15, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rdi
	vmovsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.L.str.1(%rip), %rsi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.2(%rip), %rsi
	movl	$7, %edx
	movq	%r15, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovss	(%r14), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %r15
	testq	%r15, %r15
	je	.LBB1_9
# %bb.5:
	cmpb	$0, 56(%r15)
	je	.LBB1_7
# %bb.6:
	movzbl	67(%r15), %ecx
	jmp	.LBB1_8
.LBB1_7:
	movq	%r15, %rdi
	movq	%rax, %r12
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	movl	%eax, %ecx
	movq	%r12, %rax
.LBB1_8:
	movsbl	%cl, %esi
	movq	%rax, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movq	%rbx, %rdi
	callq	_ZdaPv@PLT
	movq	%r14, %rdi
	callq	_ZdaPv@PLT
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_9:
	.cfi_def_cfa_offset 80
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Elapsed: "
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"y[0] = "
	.size	.L.str.2, 8

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZSt4cout
