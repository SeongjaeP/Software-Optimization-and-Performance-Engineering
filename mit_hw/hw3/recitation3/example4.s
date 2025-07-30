	.build_version macos, 15, 0	sdk_version 15, 5
	.file	0 "/Users/psjj/Downloads/mit/hw3/recitation3" "example4.c" md5 0xdee7868a491240082d8d416269f09af0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test                           ; -- Begin function test
	.p2align	2
_test:                                  ; @test
Lfunc_begin0:
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: test:a <- $x0
	;DEBUG_VALUE: test:x <- $x0
	;DEBUG_VALUE: test:y <- 0.000000e+00
	;DEBUG_VALUE: test:i <- 0
	.loc	0 17 3 prologue_end             ; example4.c:17:3
	add	x8, x0, #32
	movi	d0, #0000000000000000
	mov	w9, #65536                      ; =0x10000
Ltmp0:
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: test:i <- 0
	;DEBUG_VALUE: test:y <- 0.000000e+00
	;DEBUG_VALUE: test:x <- $x0
	;DEBUG_VALUE: test:a <- $x0
	.loc	0 18 10                         ; example4.c:18:10
	ldp	q1, q2, [x8, #-32]
	mov	d3, v1[1]
	mov	d4, v2[1]
	ldp	q5, q6, [x8], #64
	mov	d7, v5[1]
	mov	d16, v6[1]
	.loc	0 18 7 is_stmt 0                ; example4.c:18:7
	fadd	d0, d0, d1
	fadd	d0, d0, d3
	fadd	d0, d0, d2
	fadd	d0, d0, d4
	fadd	d0, d0, d5
	fadd	d0, d0, d7
	fadd	d0, d0, d6
	fadd	d0, d0, d16
Ltmp1:
	.loc	0 17 26 is_stmt 1               ; example4.c:17:26
	subs	x9, x9, #8
	b.ne	LBB0_1
Ltmp2:
; %bb.2:
	;DEBUG_VALUE: test:i <- 0
	;DEBUG_VALUE: test:y <- 0.000000e+00
	;DEBUG_VALUE: test:x <- $x0
	;DEBUG_VALUE: test:a <- $x0
	.loc	0 20 3                          ; example4.c:20:3
	ret
Ltmp3:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI1_0:
	.quad	0                               ; 0x0
	.quad	1                               ; 0x1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin1:
	.loc	0 23 0                          ; example4.c:23:0
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-48]!             ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	sub	sp, sp, #128, lsl #12           ; =524288
	sub	sp, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	mov	x8, #0                          ; =0x0
Lloh0:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x9, [x9]
	stur	x9, [x29, #-40]
Lloh3:
	adrp	x9, lCPI1_0@PAGE
Lloh4:
	ldr	q0, [x9, lCPI1_0@PAGEOFF]
	;DEBUG_VALUE: i <- 0
	movi.2s	v1, #1
	movi.2s	v2, #3
	movi.2s	v3, #5
	movi.2s	v4, #7
	fmov.2d	v5, #1.00000000
	add	x9, sp, #8
	mov	w10, #8                         ; =0x8
	dup.2d	v6, x10
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp4:
	;DEBUG_VALUE: i <- 0
	.loc	0 26 22 prologue_end            ; example4.c:26:22
	xtn.2s	v7, v0
	add.2s	v16, v7, v1
	add.2s	v17, v7, v2
	add.2s	v18, v7, v3
	add.2s	v7, v7, v4
	ushll.2d	v16, v16, #0
	ucvtf.2d	v16, v16
	ushll.2d	v17, v17, #0
	ucvtf.2d	v17, v17
	ushll.2d	v18, v18, #0
	ucvtf.2d	v18, v18
	ushll.2d	v7, v7, #0
	ucvtf.2d	v7, v7
	.loc	0 26 15 is_stmt 0               ; example4.c:26:15
	fdiv.2d	v16, v5, v16
	fdiv.2d	v17, v5, v17
	fdiv.2d	v18, v5, v18
	fdiv.2d	v7, v5, v7
	.loc	0 26 10                         ; example4.c:26:10
	add	x10, x9, x8
	stp	q16, q17, [x10]
	stp	q18, q7, [x10, #32]
	add.2d	v0, v0, v6
	.loc	0 26 22                         ; example4.c:26:22
	add	x8, x8, #64
	cmp	x8, #128, lsl #12               ; =524288
	b.ne	LBB1_1
Ltmp5:
; %bb.2:
	;DEBUG_VALUE: i <- 0
	.loc	0 0 22                          ; example4.c:0:22
	mov	x8, #0                          ; =0x0
	movi	d8, #0000000000000000
	;DEBUG_VALUE: test:a <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: test:x <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: test:y <- 0.000000e+00
	;DEBUG_VALUE: test:i <- 0
	add	x9, sp, #8
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
Ltmp6:
	;DEBUG_VALUE: test:i <- 0
	;DEBUG_VALUE: test:y <- 0.000000e+00
	;DEBUG_VALUE: test:x <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: test:a <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	.loc	0 18 10 is_stmt 1               ; example4.c:18:10
	add	x10, x9, x8
	ldp	q0, q1, [x10]
	mov	d2, v0[1]
	mov	d3, v1[1]
	ldp	q4, q5, [x10, #32]
	mov	d6, v4[1]
	mov	d7, v5[1]
	.loc	0 18 7 is_stmt 0                ; example4.c:18:7
	fadd	d0, d8, d0
	fadd	d0, d0, d2
	fadd	d0, d0, d1
	fadd	d0, d0, d3
	fadd	d0, d0, d4
	fadd	d0, d0, d6
	fadd	d0, d0, d5
	fadd	d8, d0, d7
Ltmp7:
	.loc	0 17 26 is_stmt 1               ; example4.c:17:26
	add	x8, x8, #64
	cmp	x8, #128, lsl #12               ; =524288
	b.ne	LBB1_3
Ltmp8:
; %bb.4:
	;DEBUG_VALUE: main:sum <- $d8
	.loc	0 29 3                          ; example4.c:29:3
	str	d8, [sp]
Lloh5:
	adrp	x0, l_.str@PAGE
Lloh6:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
Ltmp9:
	.loc	0 30 3                          ; example4.c:30:3
	str	d8, [sp]
Lloh7:
	adrp	x0, l_.str.1@PAGE
Lloh8:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
Ltmp10:
	.loc	0 0 3 is_stmt 0                 ; example4.c:0:3
	ldur	x8, [x29, #-40]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_6
Ltmp11:
; %bb.5:
	;DEBUG_VALUE: main:sum <- $d8
	.loc	0 31 1 is_stmt 1                ; example4.c:31:1
	mov	w0, #0                          ; =0x0
	.loc	0 31 1 epilogue_begin is_stmt 0 ; example4.c:31:1
	add	sp, sp, #128, lsl #12           ; =524288
	add	sp, sp, #16
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
Ltmp12:
	ret
Ltmp13:
LBB1_6:
	;DEBUG_VALUE: main:sum <- $d8
	.loc	0 0 1                           ; example4.c:0:1
	bl	___stack_chk_fail
Ltmp14:
	.loh AdrpLdr	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
Lfunc_end1:
	.cfi_endproc
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/arm" "_types.h" md5 0xb270144f57ae258d0ce80b8f87be068c
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/sys/_types" "_size_t.h" md5 0xf7981334d28e0c246f35cd24042aa2a4
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include" "_printf.h" md5 0x2d37517bd0342aa326aa1d3660ad4ab4
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"The decimal floating point sum result is: %f\n"

l_.str.1:                               ; @.str.1
	.asciz	"The raw floating point sum result is: %a\n"

	.section	__DWARF,__debug_loclists,regular,debug
Lsection_debug_loc0:
.set Lset0, Ldebug_list_header_end0-Ldebug_list_header_start0 ; Length
	.long	Lset0
Ldebug_list_header_start0:
	.short	5                               ; Version
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
	.long	1                               ; Offset entry count
Lloclists_table_base0:
.set Lset1, Ldebug_loc0-Lloclists_table_base0
	.long	Lset1
Ldebug_loc0:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp8-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp12-Lfunc_begin0            ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	72                              ; 72
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp13-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end1-Lfunc_begin0        ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	72                              ; 72
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_list_header_end0:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	37                              ; DW_FORM_strx1
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	37                              ; DW_FORM_strx1
	.byte	114                             ; DW_AT_str_offsets_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	37                              ; DW_FORM_strx1
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	115                             ; DW_AT_addr_base
	.byte	23                              ; DW_FORM_sec_offset
	.ascii	"\214\001"                      ; DW_AT_loclists_base
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	33                              ; DW_FORM_implicit_const
	.byte	1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	34                              ; DW_FORM_loclistx
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	28                              ; DW_AT_const_value
	.byte	13                              ; DW_FORM_sdata
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset2, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset2
Ldebug_info_start0:
	.short	5                               ; DWARF version number
	.byte	1                               ; DWARF Unit Type
	.byte	8                               ; Address Size (in bytes)
.set Lset3, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset3
	.byte	1                               ; Abbrev [1] 0xc:0x161 DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
	.byte	3                               ; DW_AT_APPLE_sdk
.set Lset4, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset4
.set Lset5, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset5
	.byte	4                               ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.byte	2                               ; DW_AT_low_pc
.set Lset6, Lfunc_end1-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset6
.set Lset7, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset7
.set Lset8, Lloclists_table_base0-Lsection_debug_loc0 ; DW_AT_loclists_base
	.long	Lset8
	.byte	2                               ; Abbrev [2] 0x29:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	29                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ; Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	46                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3f:0x4 DW_TAG_base_type
	.byte	5                               ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x43:0x4 DW_TAG_base_type
	.byte	6                               ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x47:0xa DW_TAG_variable
	.long	81                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               ; Abbrev [3] 0x51:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x56:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	42                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x5d:0x27 DW_TAG_subprogram
	.byte	2                               ; DW_AT_low_pc
.set Lset9, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset9
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	132                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x69:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	140                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x70:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	148                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x77:0x6 DW_TAG_variable
	.byte	0                               ; DW_AT_const_value
	.long	156                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x7d:0x6 DW_TAG_variable
	.byte	0                               ; DW_AT_const_value
	.long	164                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x84:0x29 DW_TAG_subprogram
	.byte	7                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	173                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
                                        ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x8c:0x8 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	177                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x94:0x8 DW_TAG_variable
	.byte	10                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	182                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x9c:0x8 DW_TAG_variable
	.byte	11                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	173                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0xa4:0x8 DW_TAG_variable
	.byte	12                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.long	187                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xad:0x4 DW_TAG_base_type
	.byte	8                               ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	14                              ; Abbrev [14] 0xb1:0x5 DW_TAG_restrict_type
	.long	182                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xb6:0x5 DW_TAG_pointer_type
	.long	173                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0xbb:0x8 DW_TAG_typedef
	.long	195                             ; DW_AT_type
	.byte	15                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	50                              ; DW_AT_decl_line
	.byte	16                              ; Abbrev [16] 0xc3:0x8 DW_TAG_typedef
	.long	203                             ; DW_AT_type
	.byte	14                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	87                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xcb:0x4 DW_TAG_base_type
	.byte	13                              ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	17                              ; Abbrev [17] 0xcf:0x6c DW_TAG_subprogram
	.byte	3                               ; DW_AT_low_pc
.set Lset10, Lfunc_end1-Lfunc_begin1    ; DW_AT_high_pc
	.long	Lset10
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	18                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	23                              ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	18                              ; Abbrev [18] 0xde:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	9                               ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	24                              ; DW_AT_decl_line
	.long	349                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xe9:0x9 DW_TAG_variable
	.byte	0                               ; DW_AT_location
	.byte	19                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	173                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0xf2:0x10 DW_TAG_lexical_block
	.byte	4                               ; DW_AT_low_pc
.set Lset11, Ltmp5-Ltmp4                ; DW_AT_high_pc
	.long	Lset11
	.byte	21                              ; Abbrev [21] 0xf8:0x9 DW_TAG_variable
	.byte	0                               ; DW_AT_const_value
	.byte	12                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x102:0x2c DW_TAG_inlined_subroutine
	.long	132                             ; DW_AT_abstract_origin
	.byte	5                               ; DW_AT_low_pc
.set Lset12, Ltmp8-Ltmp6                ; DW_AT_high_pc
	.long	Lset12
	.byte	0                               ; DW_AT_call_file
	.byte	28                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x10f:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	159
	.long	140                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x118:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	159
	.long	148                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x121:0x6 DW_TAG_variable
	.byte	0                               ; DW_AT_const_value
	.long	156                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x127:0x6 DW_TAG_variable
	.byte	0                               ; DW_AT_const_value
	.long	164                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x12e:0x6 DW_TAG_call_site
	.long	315                             ; DW_AT_call_origin
	.byte	6                               ; DW_AT_call_return_pc
	.byte	23                              ; Abbrev [23] 0x134:0x6 DW_TAG_call_site
	.long	315                             ; DW_AT_call_origin
	.byte	7                               ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x13b:0xf DW_TAG_subprogram
	.byte	16                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	330                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	25                              ; Abbrev [25] 0x143:0x5 DW_TAG_formal_parameter
	.long	334                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x148:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x14a:0x4 DW_TAG_base_type
	.byte	17                              ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	14                              ; Abbrev [14] 0x14e:0x5 DW_TAG_restrict_type
	.long	339                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x153:0x5 DW_TAG_pointer_type
	.long	344                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x158:0x5 DW_TAG_const_type
	.long	63                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x15d:0xf DW_TAG_array_type
	.long	173                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x162:0x9 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.long	65536                           ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	84                              ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 20.1.7" ; string offset=0
	.asciz	"example4.c"                    ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk" ; string offset=41
	.asciz	"MacOSX15.sdk"                  ; string offset=95
	.asciz	"/Users/psjj/Downloads/mit/hw3/recitation3" ; string offset=108
	.asciz	"char"                          ; string offset=150
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=155
	.asciz	"test"                          ; string offset=175
	.asciz	"double"                        ; string offset=180
	.asciz	"a"                             ; string offset=187
	.asciz	"x"                             ; string offset=189
	.asciz	"y"                             ; string offset=191
	.asciz	"i"                             ; string offset=193
	.asciz	"size_t"                        ; string offset=195
	.asciz	"__darwin_size_t"               ; string offset=202
	.asciz	"unsigned long"                 ; string offset=218
	.asciz	"main"                          ; string offset=232
	.asciz	"printf"                        ; string offset=237
	.asciz	"int"                           ; string offset=244
	.asciz	"sum"                           ; string offset=248
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	30
	.long	41
	.long	95
	.long	108
	.long	150
	.long	155
	.long	175
	.long	180
	.long	187
	.long	189
	.long	191
	.long	193
	.long	218
	.long	202
	.long	195
	.long	237
	.long	244
	.long	232
	.long	248
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset13, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset13
Ldebug_addr_start0:
	.short	5                               ; DWARF version number
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
Laddr_table_base0:
	.quad	l_.str
	.quad	l_.str.1
	.quad	Lfunc_begin0
	.quad	Lfunc_begin1
	.quad	Ltmp4
	.quad	Ltmp6
	.quad	Ltmp9
	.quad	Ltmp10
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset14, Lnames_end0-Lnames_start0  ; Header: unit length
	.long	Lset14
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	9                               ; Header: bucket count
	.long	9                               ; Header: name count
.set Lset15, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset15
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset16, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset16
	.long	1                               ; Bucket 0
	.long	2                               ; Bucket 1
	.long	4                               ; Bucket 2
	.long	0                               ; Bucket 3
	.long	0                               ; Bucket 4
	.long	0                               ; Bucket 5
	.long	5                               ; Bucket 6
	.long	6                               ; Bucket 7
	.long	8                               ; Bucket 8
	.long	-103762318                      ; Hash in Bucket 0
	.long	2090756197                      ; Hash in Bucket 1
	.long	-113419488                      ; Hash in Bucket 1
	.long	193495088                       ; Hash in Bucket 2
	.long	466678419                       ; Hash in Bucket 6
	.long	2090499946                      ; Hash in Bucket 7
	.long	-282664779                      ; Hash in Bucket 7
	.long	217009403                       ; Hash in Bucket 8
	.long	2090147939                      ; Hash in Bucket 8
	.long	218                             ; String in Bucket 0: unsigned long
	.long	175                             ; String in Bucket 1: test
	.long	180                             ; String in Bucket 1: double
	.long	244                             ; String in Bucket 2: int
	.long	195                             ; String in Bucket 6: size_t
	.long	232                             ; String in Bucket 7: main
	.long	202                             ; String in Bucket 7: __darwin_size_t
	.long	155                             ; String in Bucket 8: __ARRAY_SIZE_TYPE__
	.long	150                             ; String in Bucket 8: char
.set Lset17, Lnames6-Lnames_entries0    ; Offset in Bucket 0
	.long	Lset17
.set Lset18, Lnames2-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset18
.set Lset19, Lnames3-Lnames_entries0    ; Offset in Bucket 1
	.long	Lset19
.set Lset20, Lnames8-Lnames_entries0    ; Offset in Bucket 2
	.long	Lset20
.set Lset21, Lnames4-Lnames_entries0    ; Offset in Bucket 6
	.long	Lset21
.set Lset22, Lnames7-Lnames_entries0    ; Offset in Bucket 7
	.long	Lset22
.set Lset23, Lnames5-Lnames_entries0    ; Offset in Bucket 7
	.long	Lset23
.set Lset24, Lnames1-Lnames_entries0    ; Offset in Bucket 8
	.long	Lset24
.set Lset25, Lnames0-Lnames_entries0    ; Offset in Bucket 8
	.long	Lset25
Lnames_abbrev_start0:
	.byte	1                               ; Abbrev code
	.byte	36                              ; DW_TAG_base_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	2                               ; Abbrev code
	.byte	46                              ; DW_TAG_subprogram
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	3                               ; Abbrev code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	4                               ; Abbrev code
	.byte	22                              ; DW_TAG_typedef
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames6:
L4:
	.byte	1                               ; Abbreviation code
	.long	203                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: unsigned long
Lnames2:
L1:
	.byte	2                               ; Abbreviation code
	.long	93                              ; DW_IDX_die_offset
L2:                                     ; DW_IDX_parent
	.byte	3                               ; Abbreviation code
	.long	258                             ; DW_IDX_die_offset
.set Lset26, L5-Lnames_entries0         ; DW_IDX_parent
	.long	Lset26
	.byte	0                               ; End of list: test
Lnames3:
L7:
	.byte	1                               ; Abbreviation code
	.long	173                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: double
Lnames8:
L0:
	.byte	1                               ; Abbreviation code
	.long	330                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: int
Lnames4:
L8:
	.byte	4                               ; Abbreviation code
	.long	187                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: size_t
Lnames7:
L5:
	.byte	2                               ; Abbreviation code
	.long	207                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: main
Lnames5:
L9:
	.byte	4                               ; Abbreviation code
	.long	195                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: __darwin_size_t
Lnames1:
L3:
	.byte	1                               ; Abbreviation code
	.long	67                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: __ARRAY_SIZE_TYPE__
Lnames0:
L6:
	.byte	1                               ; Abbreviation code
	.long	63                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: char
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
