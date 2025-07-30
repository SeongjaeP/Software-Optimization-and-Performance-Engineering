	.build_version macos, 15, 0	sdk_version 15, 5
	.file	0 "/Users/psjj/Downloads/mit/hw3/homework3" "loop.c" md5 0xfe27a5da90ed2d2b69e01a98f1b09add
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_types" "_uint32_t.h" md5 0x0254eb80c6b9719ac45c3c1cf872109b
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/mach" "mach_time.h" md5 0x6c11fc105a1a7cfec850bb1beaa4cf47
	.file	3 "./." "fasttime.h" md5 0x27bd3d6b4b5f1ce284266b0c813327bc
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.loc	0 49 0                          ; loop.c:49:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: main:argc <- $w0
	;DEBUG_VALUE: main:argv <- $x1
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #3, lsl #12             ; =12288
	sub	sp, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	mov	w23, #34464                     ; =0x86a0
	movk	w23, #1, lsl #16
Ltmp0:
	;DEBUG_VALUE: main:total <- 0
	;DEBUG_VALUE: main:seed <- 0
	.loc	0 56 18 prologue_end            ; loop.c:56:18
	str	wzr, [sp, #52]
Ltmp1:
	;DEBUG_VALUE: main:j <- 0
	.loc	0 0 18 is_stmt 0                ; loop.c:0:18
	add	x20, sp, #2, lsl #12            ; =8192
	add	x20, x20, #56
Ltmp2:
	.loc	0 62 14 is_stmt 1               ; loop.c:62:14
	add	x0, sp, #2, lsl #12             ; =8192
Ltmp3:
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	add	x0, x0, #56
	mov	w1, #4096                       ; =0x1000
Ltmp4:
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	bl	_bzero
Ltmp5:
	.loc	0 0 14 is_stmt 0                ; loop.c:0:14
	add	x21, sp, #1, lsl #12            ; =4096
	add	x21, x21, #56
	.loc	0 63 14 is_stmt 1               ; loop.c:63:14
	add	x0, sp, #1, lsl #12             ; =4096
	add	x0, x0, #56
	mov	w1, #4096                       ; =0x1000
	bl	_bzero
Ltmp6:
	.loc	0 0 14 is_stmt 0                ; loop.c:0:14
	add	x22, sp, #56
	.loc	0 64 14 is_stmt 1               ; loop.c:64:14
	add	x0, sp, #56
	mov	w1, #4096                       ; =0x1000
	bl	_bzero
Ltmp7:
	;DEBUG_VALUE: main:j <- undef
	.loc	3 38 10                         ; ././fasttime.h:38:10
	bl	_mach_absolute_time
Ltmp8:
	mov	x19, x0
Ltmp9:
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:i <- 0
	.loc	3 0 10 is_stmt 0                ; ././fasttime.h:0:10
	mov	w8, #0                          ; =0x0
Ltmp10:
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	;DEBUG_VALUE: main:seed <- 0
	;DEBUG_VALUE: main:total <- 0
	;DEBUG_VALUE: main:j <- 0
	;DEBUG_VALUE: main:i <- $w8
	mov	x9, #0                          ; =0x0
Ltmp11:
LBB0_2:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: main:i <- $w8
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	;DEBUG_VALUE: main:j <- 0
	;DEBUG_VALUE: main:seed <- 0
	;DEBUG_VALUE: main:total <- 0
	.loc	0 71 20 is_stmt 1               ; loop.c:71:20
	add	x10, x20, x9
	ldp	q0, q1, [x10]
	ldp	q2, q3, [x10, #32]
	.loc	0 71 32 is_stmt 0               ; loop.c:71:32
	add	x10, x21, x9
	ldp	q4, q5, [x10]
	ldp	q6, q7, [x10, #32]
	.loc	0 71 25                         ; loop.c:71:25
	add.4s	v0, v4, v0
	add.4s	v1, v5, v1
	add.4s	v2, v6, v2
	add.4s	v3, v7, v3
	.loc	0 71 18                         ; loop.c:71:18
	add	x10, x22, x9
	stp	q0, q1, [x10]
	stp	q2, q3, [x10, #32]
Ltmp12:
	.loc	0 70 29 is_stmt 1               ; loop.c:70:29
	add	x9, x9, #64
	cmp	x9, #1, lsl #12                 ; =4096
	b.ne	LBB0_2
Ltmp13:
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	;DEBUG_VALUE: main:i <- $w8
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	;DEBUG_VALUE: main:j <- 0
	;DEBUG_VALUE: main:seed <- 0
	;DEBUG_VALUE: main:total <- 0
	.loc	0 69 25                         ; loop.c:69:25
	add	w8, w8, #1
Ltmp14:
	;DEBUG_VALUE: main:i <- $w8
	.loc	0 69 5 is_stmt 0                ; loop.c:69:5
	cmp	w8, w23
	b.ne	LBB0_1
Ltmp15:
; %bb.4:
	;DEBUG_VALUE: main:i <- $w8
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	;DEBUG_VALUE: main:j <- 0
	;DEBUG_VALUE: main:seed <- 0
	;DEBUG_VALUE: main:total <- 0
	.loc	3 38 10 is_stmt 1               ; ././fasttime.h:38:10
	bl	_mach_absolute_time
Ltmp16:
	mov	x21, x0
Ltmp17:
	;DEBUG_VALUE: main:seed <- [DW_OP_plus_uconst 52, DW_OP_deref] $sp
	;DEBUG_VALUE: main:time2 <- $x21
	.loc	0 78 16                         ; loop.c:78:16
	add	x0, sp, #52
	bl	_rand_r
Ltmp18:
	.loc	0 78 30 is_stmt 0               ; loop.c:78:30
	negs	w8, w0
	and	w8, w8, #0x3ff
	and	w9, w0, #0x3ff
	csneg	w8, w9, w8, mi
	add	x9, sp, #56
	.loc	0 78 14                         ; loop.c:78:14
	ldr	w20, [x9, w8, sxtw #2]
Ltmp19:
	;DEBUG_VALUE: main:total <- $w20
	;DEBUG_VALUE: tdiff:end <- $x21
	;DEBUG_VALUE: tdiff:start <- $x19
	.loc	3 47 11 is_stmt 1               ; ././fasttime.h:47:11
Lloh3:
	adrp	x22, _tdiff.timebase@PAGE
Lloh4:
	add	x22, x22, _tdiff.timebase@PAGEOFF
	mov	x0, x22
	bl	_mach_timebase_info
Ltmp20:
	;DEBUG_VALUE: tdiff:r <- undef
	.loc	3 49 27                         ; ././fasttime.h:49:27
	sub	x8, x21, x19
Ltmp21:
	;DEBUG_VALUE: tdiff:elapsed <- $x8
	.loc	3 50 15                         ; ././fasttime.h:50:15
	ucvtf	d0, x8
	.loc	3 50 33 is_stmt 0               ; ././fasttime.h:50:33
	ldp	s1, s2, [x22]
	ucvtf	d1, d1
	.loc	3 50 50                         ; ././fasttime.h:50:50
	ucvtf	d2, d2
	mov	x8, #54933                      ; =0xd695
Ltmp22:
	.loc	3 0 50                          ; ././fasttime.h:0:50
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d3, x8
Ltmp23:
	;DEBUG_VALUE: tdiff:ns <- undef
	.loc	3 50 31                         ; ././fasttime.h:50:31
	fmul	d1, d3, d1
	.loc	3 51 12 is_stmt 1               ; ././fasttime.h:51:12
	fmul	d0, d0, d1
	fdiv	d0, d0, d2
Ltmp24:
	;DEBUG_VALUE: main:elapsedf <- $d0
	.loc	0 83 5                          ; loop.c:83:5
Lloh5:
	adrp	x8, l_.str.2@PAGE
Lloh6:
	add	x8, x8, l_.str.2@PAGEOFF
Lloh7:
	adrp	x9, l_.str.1@PAGE
Lloh8:
	add	x9, x9, l_.str.1@PAGEOFF
	stp	x9, x8, [sp, #24]
	mov	w8, #1024                       ; =0x400
	stp	x8, x23, [sp, #8]
	str	d0, [sp]
Lloh9:
	adrp	x0, l_.str@PAGE
Lloh10:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
Ltmp25:
	.loc	0 0 5 is_stmt 0                 ; loop.c:0:5
	ldur	x8, [x29, #-56]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_6
Ltmp26:
; %bb.5:
	;DEBUG_VALUE: main:total <- $w20
	;DEBUG_VALUE: main:time2 <- $x21
	;DEBUG_VALUE: main:seed <- [DW_OP_plus_uconst 52, DW_OP_deref] $sp
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	;DEBUG_VALUE: main:j <- 0
	.loc	0 87 5 is_stmt 1                ; loop.c:87:5
	mov	x0, x20
	.loc	0 87 5 epilogue_begin is_stmt 0 ; loop.c:87:5
	add	sp, sp, #3, lsl #12             ; =12288
Ltmp27:
	add	sp, sp, #64
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
Ltmp28:
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
Ltmp29:
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp30:
LBB0_6:
	;DEBUG_VALUE: tdiff:start <- $x19
	;DEBUG_VALUE: tdiff:end <- $x21
	;DEBUG_VALUE: main:total <- $w20
	;DEBUG_VALUE: main:time2 <- $x21
	;DEBUG_VALUE: main:seed <- [DW_OP_plus_uconst 52, DW_OP_deref] $sp
	;DEBUG_VALUE: main:time1 <- $x19
	;DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	;DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	;DEBUG_VALUE: main:j <- 0
	.loc	0 0 5                           ; loop.c:0:5
	bl	___stack_chk_fail
Ltmp31:
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh3, Lloh4
Lfunc_end0:
	.cfi_endproc
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/_types" "_uint64_t.h" md5 0x77fc5e91653260959605f129691cf9b1
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include" "_stdlib.h" md5 0x17a3e5580239ce2f2af260c9c943ad9b
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include/mach/arm" "kern_return.h" md5 0x9368259efd8fc79657877057a021c1ce
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk/usr/include" "_printf.h" md5 0x2d37517bd0342aa326aa1d3660ad4ab4
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Elapsed execution time: %f sec; N: %d, I: %d, __OP__: %s, __TYPE__: %s\n"

l_.str.1:                               ; @.str.1
	.asciz	"+"

l_.str.2:                               ; @.str.2
	.asciz	"uint32_t"

.zerofill __DATA,__bss,_tdiff.timebase,8,2 ; @tdiff.timebase
	.section	__DWARF,__debug_loclists,regular,debug
Lsection_debug_loc0:
.set Lset0, Ldebug_list_header_end0-Ldebug_list_header_start0 ; Length
	.long	Lset0
Ldebug_list_header_start0:
	.short	5                               ; Version
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
	.long	10                              ; Offset entry count
Lloclists_table_base0:
.set Lset1, Ldebug_loc0-Lloclists_table_base0
	.long	Lset1
.set Lset2, Ldebug_loc1-Lloclists_table_base0
	.long	Lset2
.set Lset3, Ldebug_loc2-Lloclists_table_base0
	.long	Lset3
.set Lset4, Ldebug_loc3-Lloclists_table_base0
	.long	Lset4
.set Lset5, Ldebug_loc4-Lloclists_table_base0
	.long	Lset5
.set Lset6, Ldebug_loc5-Lloclists_table_base0
	.long	Lset6
.set Lset7, Ldebug_loc6-Lloclists_table_base0
	.long	Lset7
.set Lset8, Ldebug_loc7-Lloclists_table_base0
	.long	Lset8
.set Lset9, Ldebug_loc8-Lloclists_table_base0
	.long	Lset9
.set Lset10, Ldebug_loc9-Lloclists_table_base0
	.long	Lset10
Ldebug_loc0:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin0-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp3-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp3-Lfunc_begin0             ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc1:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Lfunc_begin0-Lfunc_begin0      ;   starting offset
	.uleb128 Ltmp4-Lfunc_begin0             ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp4-Lfunc_begin0             ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc2:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp0-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp19-Lfunc_begin0            ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp19-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp28-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp30-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc3:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp0-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp17-Lfunc_begin0            ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp17-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp27-Lfunc_begin0            ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	52                              ; 52
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp30-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	52                              ; 52
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc4:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp1-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp7-Lfunc_begin0             ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp10-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc5:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp9-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp28-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp30-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc6:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp9-Lfunc_begin0             ;   starting offset
	.uleb128 Ltmp10-Lfunc_begin0            ;   ending offset
	.byte	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp10-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp16-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc7:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp17-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp29-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp30-Lfunc_begin0            ;   starting offset
	.uleb128 Lfunc_end0-Lfunc_begin0        ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc8:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp21-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp22-Lfunc_begin0            ;   ending offset
	.byte	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.byte	0                               ; DW_LLE_end_of_list
Ldebug_loc9:
	.byte	4                               ; DW_LLE_offset_pair
	.uleb128 Ltmp24-Lfunc_begin0            ;   starting offset
	.uleb128 Ltmp25-Lfunc_begin0            ;   ending offset
	.byte	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
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
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
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
	.byte	9                               ; Abbreviation Code
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
	.byte	10                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	37                              ; DW_FORM_strx1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
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
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	33                              ; DW_FORM_implicit_const
	.byte	1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
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
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	33                              ; DW_FORM_implicit_const
	.byte	1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
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
	.byte	15                              ; Abbreviation Code
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
	.byte	16                              ; Abbreviation Code
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
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
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
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	21                              ; Abbreviation Code
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
	.byte	22                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	34                              ; DW_FORM_loclistx
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	27                              ; DW_FORM_addrx
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	28                              ; Abbreviation Code
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
	.byte	29                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	30                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
	.byte	24                              ; DW_TAG_unspecified_parameters
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	32                              ; Abbreviation Code
	.byte	55                              ; DW_TAG_restrict_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	33                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	5                               ; DW_FORM_data2
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset11, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset11
Ldebug_info_start0:
	.short	5                               ; DWARF version number
	.byte	1                               ; DWARF Unit Type
	.byte	8                               ; Address Size (in bytes)
.set Lset12, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset12
	.byte	1                               ; Abbrev [1] 0xc:0x255 DW_TAG_compile_unit
	.byte	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.byte	1                               ; DW_AT_name
	.byte	2                               ; DW_AT_LLVM_sysroot
	.byte	3                               ; DW_AT_APPLE_sdk
.set Lset13, Lstr_offsets_base0-Lsection_str_off ; DW_AT_str_offsets_base
	.long	Lset13
.set Lset14, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset14
	.byte	4                               ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.byte	4                               ; DW_AT_low_pc
.set Lset15, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset15
.set Lset16, Laddr_table_base0-Lsection_info0 ; DW_AT_addr_base
	.long	Lset16
.set Lset17, Lloclists_table_base0-Lsection_debug_loc0 ; DW_AT_loclists_base
	.long	Lset17
	.byte	2                               ; Abbrev [2] 0x29:0xa DW_TAG_variable
	.long	51                              ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	83                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ; Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	72                              ; DW_AT_count
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
	.byte	85                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               ; Abbrev [3] 0x51:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x56:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	2                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x5d:0xa DW_TAG_variable
	.long	103                             ; DW_AT_type
	.byte	0                               ; DW_AT_decl_file
	.byte	85                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               ; Abbrev [3] 0x67:0xc DW_TAG_array_type
	.long	63                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x6c:0x6 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.byte	9                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x73:0xd DW_TAG_subprogram
	.byte	8                               ; Abbrev [8] 0x74:0xb DW_TAG_variable
	.byte	7                               ; DW_AT_name
	.long	128                             ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.byte	2                               ; DW_AT_location
	.byte	161
	.byte	3
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x80:0x8 DW_TAG_typedef
	.long	136                             ; DW_AT_type
	.byte	13                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.byte	10                              ; Abbrev [10] 0x88:0x18 DW_TAG_structure_type
	.byte	12                              ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.byte	11                              ; Abbrev [11] 0x8d:0x9 DW_TAG_member
	.byte	8                               ; DW_AT_name
	.long	160                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	11                              ; Abbrev [11] 0x96:0x9 DW_TAG_member
	.byte	11                              ; DW_AT_name
	.long	160                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
	.byte	4                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xa0:0x8 DW_TAG_typedef
	.long	168                             ; DW_AT_type
	.byte	10                              ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xa8:0x4 DW_TAG_base_type
	.byte	9                               ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0xac:0x4 DW_TAG_base_type
	.byte	14                              ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0xb0:0x8 DW_TAG_subprogram
	.byte	15                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	184                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
                                        ; DW_AT_inline
	.byte	9                               ; Abbrev [9] 0xb8:0x8 DW_TAG_typedef
	.long	192                             ; DW_AT_type
	.byte	18                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	9                               ; Abbrev [9] 0xc0:0x8 DW_TAG_typedef
	.long	200                             ; DW_AT_type
	.byte	17                              ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xc8:0x4 DW_TAG_base_type
	.byte	16                              ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0xcc:0x31 DW_TAG_subprogram
	.byte	19                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	45                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	172                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
                                        ; DW_AT_inline
	.byte	14                              ; Abbrev [14] 0xd4:0x8 DW_TAG_formal_parameter
	.byte	20                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	45                              ; DW_AT_decl_line
	.long	184                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0xdc:0x8 DW_TAG_formal_parameter
	.byte	21                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	45                              ; DW_AT_decl_line
	.long	184                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xe4:0x8 DW_TAG_variable
	.byte	22                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	184                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xec:0x8 DW_TAG_variable
	.byte	23                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
	.long	253                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xf4:0x8 DW_TAG_variable
	.byte	25                              ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	50                              ; DW_AT_decl_line
	.long	172                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xfd:0x4 DW_TAG_base_type
	.byte	24                              ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	16                              ; Abbrev [16] 0x101:0xec DW_TAG_subprogram
	.byte	4                               ; DW_AT_low_pc
.set Lset18, Lfunc_end0-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset18
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.byte	31                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	253                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	17                              ; Abbrev [17] 0x110:0x9 DW_TAG_formal_parameter
	.byte	0                               ; DW_AT_location
	.byte	35                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	253                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x119:0x9 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	36                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	598                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x122:0xc DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\310_"
	.byte	32                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	50                              ; DW_AT_decl_line
	.long	585                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x12e:0xc DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\270 "
	.byte	33                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	585                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x13a:0xb DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	56
	.byte	34                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	52                              ; DW_AT_decl_line
	.long	585                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x145:0x9 DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	37                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	160                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x14e:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	38                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.long	168                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x157:0x9 DW_TAG_variable
	.byte	4                               ; DW_AT_location
	.byte	39                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	253                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x160:0x9 DW_TAG_variable
	.byte	5                               ; DW_AT_location
	.byte	40                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	184                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x169:0x9 DW_TAG_variable
	.byte	6                               ; DW_AT_location
	.byte	41                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	253                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x172:0x9 DW_TAG_variable
	.byte	7                               ; DW_AT_location
	.byte	42                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	184                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x17b:0x9 DW_TAG_variable
	.byte	9                               ; DW_AT_location
	.byte	43                              ; DW_AT_name
	.byte	0                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	172                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x184:0xd DW_TAG_inlined_subroutine
	.long	176                             ; DW_AT_abstract_origin
	.byte	5                               ; DW_AT_low_pc
.set Lset19, Ltmp10-Ltmp7               ; DW_AT_high_pc
	.long	Lset19
	.byte	0                               ; DW_AT_call_file
	.byte	67                              ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x191:0xd DW_TAG_inlined_subroutine
	.long	176                             ; DW_AT_abstract_origin
	.byte	6                               ; DW_AT_low_pc
.set Lset20, Ltmp17-Ltmp15              ; DW_AT_high_pc
	.long	Lset20
	.byte	0                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	21                              ; Abbrev [21] 0x19e:0x22 DW_TAG_inlined_subroutine
	.long	204                             ; DW_AT_abstract_origin
	.byte	7                               ; DW_AT_low_pc
.set Lset21, Ltmp24-Ltmp19              ; DW_AT_high_pc
	.long	Lset21
	.byte	0                               ; DW_AT_call_file
	.byte	80                              ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x1ab:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	212                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x1b2:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	220                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x1b9:0x6 DW_TAG_variable
	.byte	8                               ; DW_AT_location
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x1c0:0x6 DW_TAG_call_site
	.long	493                             ; DW_AT_call_origin
	.byte	8                               ; DW_AT_call_return_pc
	.byte	24                              ; Abbrev [24] 0x1c6:0x6 DW_TAG_call_site
	.long	493                             ; DW_AT_call_origin
	.byte	9                               ; DW_AT_call_return_pc
	.byte	25                              ; Abbrev [25] 0x1cc:0xd DW_TAG_call_site
	.long	501                             ; DW_AT_call_origin
	.byte	10                              ; DW_AT_call_return_pc
	.byte	26                              ; Abbrev [26] 0x1d2:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	52
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x1d9:0xd DW_TAG_call_site
	.long	520                             ; DW_AT_call_origin
	.byte	11                              ; DW_AT_call_return_pc
	.byte	26                              ; Abbrev [26] 0x1df:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	134
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x1e6:0x6 DW_TAG_call_site
	.long	555                             ; DW_AT_call_origin
	.byte	12                              ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	27                              ; Abbrev [27] 0x1ed:0x8 DW_TAG_subprogram
	.byte	26                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	192                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	28                              ; Abbrev [28] 0x1f5:0xe DW_TAG_subprogram
	.byte	27                              ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	246                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	253                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	29                              ; Abbrev [29] 0x1fd:0x5 DW_TAG_formal_parameter
	.long	515                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x203:0x5 DW_TAG_pointer_type
	.long	168                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x208:0xe DW_TAG_subprogram
	.byte	12                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	534                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	29                              ; Abbrev [29] 0x210:0x5 DW_TAG_formal_parameter
	.long	542                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x216:0x8 DW_TAG_typedef
	.long	253                             ; DW_AT_type
	.byte	28                              ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.byte	9                               ; Abbrev [9] 0x21e:0x8 DW_TAG_typedef
	.long	550                             ; DW_AT_type
	.byte	29                              ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.byte	30                              ; Abbrev [30] 0x226:0x5 DW_TAG_pointer_type
	.long	136                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x22b:0xf DW_TAG_subprogram
	.byte	30                              ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	253                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	29                              ; Abbrev [29] 0x233:0x5 DW_TAG_formal_parameter
	.long	570                             ; DW_AT_type
	.byte	31                              ; Abbrev [31] 0x238:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ; End Of Children Mark
	.byte	32                              ; Abbrev [32] 0x23a:0x5 DW_TAG_restrict_type
	.long	575                             ; DW_AT_type
	.byte	30                              ; Abbrev [30] 0x23f:0x5 DW_TAG_pointer_type
	.long	580                             ; DW_AT_type
	.byte	33                              ; Abbrev [33] 0x244:0x5 DW_TAG_const_type
	.long	63                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x249:0xd DW_TAG_array_type
	.long	160                             ; DW_AT_type
	.byte	34                              ; Abbrev [34] 0x24e:0x7 DW_TAG_subrange_type
	.long	67                              ; DW_AT_type
	.short	1024                            ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x256:0x5 DW_TAG_pointer_type
	.long	603                             ; DW_AT_type
	.byte	30                              ; Abbrev [30] 0x25b:0x5 DW_TAG_pointer_type
	.long	63                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	180                             ; Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Homebrew clang version 20.1.7" ; string offset=0
	.asciz	"loop.c"                        ; string offset=30
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX15.sdk" ; string offset=37
	.asciz	"MacOSX15.sdk"                  ; string offset=91
	.asciz	"/Users/psjj/Downloads/mit/hw3/homework3" ; string offset=104
	.asciz	"char"                          ; string offset=144
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=149
	.asciz	"timebase"                      ; string offset=169
	.asciz	"mach_timebase_info_data_t"     ; string offset=178
	.asciz	"mach_timebase_info"            ; string offset=204
	.asciz	"numer"                         ; string offset=223
	.asciz	"uint32_t"                      ; string offset=229
	.asciz	"unsigned int"                  ; string offset=238
	.asciz	"denom"                         ; string offset=251
	.asciz	"double"                        ; string offset=257
	.asciz	"gettime"                       ; string offset=264
	.asciz	"fasttime_t"                    ; string offset=272
	.asciz	"uint64_t"                      ; string offset=283
	.asciz	"unsigned long long"            ; string offset=292
	.asciz	"tdiff"                         ; string offset=311
	.asciz	"start"                         ; string offset=317
	.asciz	"end"                           ; string offset=323
	.asciz	"elapsed"                       ; string offset=327
	.asciz	"r"                             ; string offset=335
	.asciz	"int"                           ; string offset=337
	.asciz	"ns"                            ; string offset=341
	.asciz	"main"                          ; string offset=344
	.asciz	"mach_absolute_time"            ; string offset=349
	.asciz	"rand_r"                        ; string offset=368
	.asciz	"kern_return_t"                 ; string offset=375
	.asciz	"mach_timebase_info_t"          ; string offset=389
	.asciz	"printf"                        ; string offset=410
	.asciz	"A"                             ; string offset=417
	.asciz	"B"                             ; string offset=419
	.asciz	"C"                             ; string offset=421
	.asciz	"argc"                          ; string offset=423
	.asciz	"argv"                          ; string offset=428
	.asciz	"total"                         ; string offset=433
	.asciz	"seed"                          ; string offset=439
	.asciz	"j"                             ; string offset=444
	.asciz	"time1"                         ; string offset=446
	.asciz	"i"                             ; string offset=452
	.asciz	"time2"                         ; string offset=454
	.asciz	"elapsedf"                      ; string offset=460
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	30
	.long	37
	.long	91
	.long	104
	.long	144
	.long	149
	.long	169
	.long	223
	.long	238
	.long	229
	.long	251
	.long	204
	.long	178
	.long	257
	.long	264
	.long	292
	.long	283
	.long	272
	.long	311
	.long	317
	.long	323
	.long	327
	.long	335
	.long	337
	.long	341
	.long	349
	.long	368
	.long	375
	.long	389
	.long	410
	.long	344
	.long	417
	.long	419
	.long	421
	.long	423
	.long	428
	.long	433
	.long	439
	.long	444
	.long	446
	.long	452
	.long	454
	.long	460
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset22, Ldebug_addr_end0-Ldebug_addr_start0 ; Length of contribution
	.long	Lset22
Ldebug_addr_start0:
	.short	5                               ; DWARF version number
	.byte	8                               ; Address size
	.byte	0                               ; Segment selector size
Laddr_table_base0:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	_tdiff.timebase
	.quad	Lfunc_begin0
	.quad	Ltmp7
	.quad	Ltmp15
	.quad	Ltmp19
	.quad	Ltmp8
	.quad	Ltmp16
	.quad	Ltmp18
	.quad	Ltmp20
	.quad	Ltmp25
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset23, Lnames_end0-Lnames_start0  ; Header: unit length
	.long	Lset23
Lnames_start0:
	.short	5                               ; Header: version
	.short	0                               ; Header: padding
	.long	1                               ; Header: compilation unit count
	.long	0                               ; Header: local type unit count
	.long	0                               ; Header: foreign type unit count
	.long	8                               ; Header: bucket count
	.long	17                              ; Header: name count
.set Lset24, Lnames_abbrev_end0-Lnames_abbrev_start0 ; Header: abbreviation table size
	.long	Lset24
	.long	8                               ; Header: augmentation string size
	.ascii	"LLVM0700"                      ; Header: augmentation string
.set Lset25, Lcu_begin0-Lsection_info   ; Compilation unit 0
	.long	Lset25
	.long	1                               ; Bucket 0
	.long	0                               ; Bucket 1
	.long	3                               ; Bucket 2
	.long	8                               ; Bucket 3
	.long	10                              ; Bucket 4
	.long	11                              ; Bucket 5
	.long	15                              ; Bucket 6
	.long	16                              ; Bucket 7
	.long	193495088                       ; Hash in Bucket 0
	.long	-113419488                      ; Hash in Bucket 0
	.long	275430578                       ; Hash in Bucket 2
	.long	290821634                       ; Hash in Bucket 2
	.long	857652610                       ; Hash in Bucket 2
	.long	2082075346                      ; Hash in Bucket 2
	.long	2090499946                      ; Hash in Bucket 2
	.long	217009403                       ; Hash in Bucket 3
	.long	2090147939                      ; Hash in Bucket 3
	.long	-260335084                      ; Hash in Bucket 4
	.long	239116757                       ; Hash in Bucket 5
	.long	290711645                       ; Hash in Bucket 5
	.long	-1304652851                     ; Hash in Bucket 5
	.long	-362677243                      ; Hash in Bucket 5
	.long	1349733182                      ; Hash in Bucket 6
	.long	566758287                       ; Hash in Bucket 7
	.long	-287314969                      ; Hash in Bucket 7
	.long	337                             ; String in Bucket 0: int
	.long	257                             ; String in Bucket 0: double
	.long	311                             ; String in Bucket 2: tdiff
	.long	283                             ; String in Bucket 2: uint64_t
	.long	292                             ; String in Bucket 2: unsigned long long
	.long	204                             ; String in Bucket 2: mach_timebase_info
	.long	344                             ; String in Bucket 2: main
	.long	149                             ; String in Bucket 3: __ARRAY_SIZE_TYPE__
	.long	144                             ; String in Bucket 3: char
	.long	264                             ; String in Bucket 4: gettime
	.long	272                             ; String in Bucket 5: fasttime_t
	.long	229                             ; String in Bucket 5: uint32_t
	.long	238                             ; String in Bucket 5: unsigned int
	.long	389                             ; String in Bucket 5: mach_timebase_info_t
	.long	178                             ; String in Bucket 6: mach_timebase_info_data_t
	.long	169                             ; String in Bucket 7: timebase
	.long	375                             ; String in Bucket 7: kern_return_t
.set Lset26, Lnames11-Lnames_entries0   ; Offset in Bucket 0
	.long	Lset26
.set Lset27, Lnames7-Lnames_entries0    ; Offset in Bucket 0
	.long	Lset27
.set Lset28, Lnames14-Lnames_entries0   ; Offset in Bucket 2
	.long	Lset28
.set Lset29, Lnames9-Lnames_entries0    ; Offset in Bucket 2
	.long	Lset29
.set Lset30, Lnames10-Lnames_entries0   ; Offset in Bucket 2
	.long	Lset30
.set Lset31, Lnames3-Lnames_entries0    ; Offset in Bucket 2
	.long	Lset31
.set Lset32, Lnames12-Lnames_entries0   ; Offset in Bucket 2
	.long	Lset32
.set Lset33, Lnames1-Lnames_entries0    ; Offset in Bucket 3
	.long	Lset33
.set Lset34, Lnames0-Lnames_entries0    ; Offset in Bucket 3
	.long	Lset34
.set Lset35, Lnames13-Lnames_entries0   ; Offset in Bucket 4
	.long	Lset35
.set Lset36, Lnames8-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset36
.set Lset37, Lnames4-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset37
.set Lset38, Lnames5-Lnames_entries0    ; Offset in Bucket 5
	.long	Lset38
.set Lset39, Lnames16-Lnames_entries0   ; Offset in Bucket 5
	.long	Lset39
.set Lset40, Lnames2-Lnames_entries0    ; Offset in Bucket 6
	.long	Lset40
.set Lset41, Lnames6-Lnames_entries0    ; Offset in Bucket 7
	.long	Lset41
.set Lset42, Lnames15-Lnames_entries0   ; Offset in Bucket 7
	.long	Lset42
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
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	3                               ; Abbrev code
	.byte	22                              ; DW_TAG_typedef
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	4                               ; Abbrev code
	.byte	19                              ; DW_TAG_structure_type
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	5                               ; Abbrev code
	.byte	46                              ; DW_TAG_subprogram
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	6                               ; Abbrev code
	.byte	52                              ; DW_TAG_variable
	.byte	3                               ; DW_IDX_die_offset
	.byte	19                              ; DW_FORM_ref4
	.byte	4                               ; DW_IDX_parent
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev
	.byte	0                               ; End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames11:
L14:
	.byte	1                               ; Abbreviation code
	.long	253                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: int
Lnames7:
L1:
	.byte	1                               ; Abbreviation code
	.long	172                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: double
Lnames14:
L7:
	.byte	2                               ; Abbreviation code
	.long	414                             ; DW_IDX_die_offset
.set Lset43, L0-Lnames_entries0         ; DW_IDX_parent
	.long	Lset43
	.byte	0                               ; End of list: tdiff
Lnames9:
L11:
	.byte	3                               ; Abbreviation code
	.long	192                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: uint64_t
Lnames10:
L3:
	.byte	1                               ; Abbreviation code
	.long	200                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: unsigned long long
Lnames3:
L15:
	.byte	4                               ; Abbreviation code
	.long	136                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: mach_timebase_info
Lnames12:
L0:
	.byte	5                               ; Abbreviation code
	.long	257                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: main
Lnames1:
L5:
	.byte	1                               ; Abbreviation code
	.long	67                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: __ARRAY_SIZE_TYPE__
Lnames0:
L9:
	.byte	1                               ; Abbreviation code
	.long	63                              ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: char
Lnames13:
L2:
	.byte	2                               ; Abbreviation code
	.long	388                             ; DW_IDX_die_offset
.set Lset44, L0-Lnames_entries0         ; DW_IDX_parent
	.long	Lset44
L12:
	.byte	2                               ; Abbreviation code
	.long	401                             ; DW_IDX_die_offset
.set Lset45, L0-Lnames_entries0         ; DW_IDX_parent
	.long	Lset45
	.byte	0                               ; End of list: gettime
Lnames8:
L16:
	.byte	3                               ; Abbreviation code
	.long	184                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: fasttime_t
Lnames4:
L10:
	.byte	3                               ; Abbreviation code
	.long	160                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: uint32_t
Lnames5:
L13:
	.byte	1                               ; Abbreviation code
	.long	168                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: unsigned int
Lnames16:
L4:
	.byte	3                               ; Abbreviation code
	.long	542                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: mach_timebase_info_t
Lnames2:
L6:
	.byte	3                               ; Abbreviation code
	.long	128                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: mach_timebase_info_data_t
Lnames6:
L17:
	.byte	6                               ; Abbreviation code
	.long	116                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: timebase
Lnames15:
L8:
	.byte	3                               ; Abbreviation code
	.long	534                             ; DW_IDX_die_offset
	.byte	0                               ; DW_IDX_parent
                                        ; End of list: kern_return_t
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
