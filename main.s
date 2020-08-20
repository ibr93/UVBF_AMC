	.file	"main.c"
# GNU C17 (Debian 8.3.0-6) version 8.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 8.3.0, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed main.i -mtune=generic -march=x86-64 -g -O
# -Wshadow -Wpedantic -fomit-frame-pointer -fasynchronous-unwind-tables
# -fverbose-asm -finstrument-functions
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fguess-branch-probability -fident -fif-conversion
# -fif-conversion2 -finline -finline-atomics -finline-functions-called-once
# -finstrument-functions -fipa-profile -fipa-pure-const -fipa-reference
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
# -freorder-blocks -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
# -ftree-ter -funit-at-a-time -funwind-tables -fvar-tracking
# -fvar-tracking-assignments -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\n########################### N = %d ###############################\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\tInitialisation du tableau T1"
.LC2:
	.string	"\tInitialisation du tableau T2"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"\n####################### Calcul sequencielle de T3 ##############################"
	.align 8
.LC4:
	.string	"######################### Calcul POSIX de T3 ###################################"
	.align 8
.LC5:
	.string	"######################## Calcul OpenMP de T3 ##################################"
	.text
	.globl	main
	.type	main, @function
main:
.LVL0:
.LFB23:
	.file 1 "main.c"
	.loc 1 4 33 view -0
	.cfi_startproc
	.loc 1 4 33 is_stmt 0 view .LVU1
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
	movq	56(%rsp), %rsi	#,
.LVL1:
	.loc 1 4 33 view .LVU2
	leaq	main(%rip), %rdi	#,
.LVL2:
	.loc 1 4 33 view .LVU3
	call	__cyg_profile_func_enter@PLT	#
.LVL3:
	.loc 1 7 5 is_stmt 1 view .LVU4
# main.c:7:     srand( time( NULL ) );
	.loc 1 7 12 is_stmt 0 view .LVU5
	movl	$0, %edi	#,
	call	time@PLT	#
.LVL4:
# main.c:7:     srand( time( NULL ) );
	.loc 1 7 5 view .LVU6
	movl	%eax, %edi	# _1,
	call	srand@PLT	#
.LVL5:
	.loc 1 9 2 is_stmt 1 view .LVU7
	.loc 1 10 2 view .LVU8
# main.c:10: 	t3 = allouer_espace_memoire();
	.loc 1 10 7 is_stmt 0 view .LVU9
	movl	$0, %eax	#,
	call	allouer_espace_memoire@PLT	#
.LVL6:
	movq	%rax, %r13	#, t3
.LVL7:
	.loc 1 11 2 is_stmt 1 view .LVU10
# main.c:11: 	t3_posix = allouer_espace_memoire();
	.loc 1 11 13 is_stmt 0 view .LVU11
	movl	$0, %eax	#,
.LVL8:
	.loc 1 11 13 view .LVU12
	call	allouer_espace_memoire@PLT	#
.LVL9:
	movq	%rax, %r12	#, t3_posix
.LVL10:
	.loc 1 12 2 is_stmt 1 view .LVU13
# main.c:12: 	t3_omp = allouer_espace_memoire(); 
	.loc 1 12 11 is_stmt 0 view .LVU14
	movl	$0, %eax	#,
.LVL11:
	.loc 1 12 11 view .LVU15
	call	allouer_espace_memoire@PLT	#
.LVL12:
	movq	%rax, %r15	#, t3_omp
.LVL13:
	.loc 1 13 2 is_stmt 1 view .LVU16
	movl	$0, %eax	#,
.LVL14:
	.loc 1 13 2 is_stmt 0 view .LVU17
	call	clearScreen@PLT	#
.LVL15:
	.loc 1 14 2 is_stmt 1 view .LVU18
	movl	$1000000, %esi	#,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
.LVL16:
	.loc 1 15 2 view .LVU19
# main.c:15: 	int nb_thread = get_thread_count();
	.loc 1 15 18 is_stmt 0 view .LVU20
	movl	$0, %eax	#,
	call	get_thread_count@PLT	#
.LVL17:
	movl	%eax, %r14d	#, nb_thread
.LVL18:
	.loc 1 16 2 is_stmt 1 view .LVU21
	leaq	.LC1(%rip), %rdi	#,
	call	puts@PLT	#
.LVL19:
	.loc 1 17 2 view .LVU22
# main.c:17: 	t1 = initialiserTableau();
	.loc 1 17 7 is_stmt 0 view .LVU23
	movl	$0, %eax	#,
	call	initialiserTableau@PLT	#
.LVL20:
	movq	%rax, %rbp	#, t1
.LVL21:
	.loc 1 18 2 is_stmt 1 view .LVU24
	leaq	.LC2(%rip), %rdi	#,
	call	puts@PLT	#
.LVL22:
	.loc 1 19 2 view .LVU25
# main.c:19: 	t2 = initialiserTableau();
	.loc 1 19 7 is_stmt 0 view .LVU26
	movl	$0, %eax	#,
	call	initialiserTableau@PLT	#
.LVL23:
	movq	%rax, %rbx	#, t2
.LVL24:
	.loc 1 20 2 is_stmt 1 view .LVU27
	leaq	.LC3(%rip), %rdi	#,
	call	puts@PLT	#
.LVL25:
	.loc 1 21 2 view .LVU28
	movq	%r13, %rdx	# t3,
	movq	%rbx, %rsi	# t2,
	movq	%rbp, %rdi	# t1,
	call	calculer_t3@PLT	#
.LVL26:
	.loc 1 22 2 view .LVU29
	leaq	.LC4(%rip), %rdi	#,
	call	puts@PLT	#
.LVL27:
	.loc 1 23 2 view .LVU30
	movl	%r14d, %ecx	# nb_thread,
	movq	%r12, %rdx	# t3_posix,
	movq	%rbx, %rsi	# t2,
	movq	%rbp, %rdi	# t1,
	call	calculer_t3_posix@PLT	#
.LVL28:
	.loc 1 24 2 view .LVU31
	leaq	.LC5(%rip), %rdi	#,
	call	puts@PLT	#
.LVL29:
	.loc 1 25 2 view .LVU32
	movl	%r14d, %ecx	# nb_thread,
	movq	%r12, %rdx	# t3_posix,
	movq	%rbx, %rsi	# t2,
	movq	%rbp, %rdi	# t1,
	call	calculer_t3_posix@PLT	#
.LVL30:
	.loc 1 26 2 view .LVU33
.LBB4:
.LBI4:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.loc 2 47 1 view .LVU34
.LBB5:
	.loc 2 49 3 view .LVU35
# /usr/include/x86_64-linux-gnu/bits/stdio.h:49:   return getc (stdin);
	.loc 2 49 10 is_stmt 0 view .LVU36
	movq	stdin(%rip), %rdi	# stdin,
	call	getc@PLT	#
.LVL31:
.LBE5:
.LBE4:
	.loc 1 28 2 is_stmt 1 view .LVU37
	movq	%rbp, %rdi	# t1,
	call	free@PLT	#
.LVL32:
	.loc 1 28 11 view .LVU38
	movq	%rbx, %rdi	# t2,
	call	free@PLT	#
.LVL33:
	.loc 1 28 20 view .LVU39
	movq	%r13, %rdi	# t3,
	call	free@PLT	#
.LVL34:
	.loc 1 28 29 view .LVU40
	movq	%r15, %rdi	# t3_omp,
	call	free@PLT	#
.LVL35:
	.loc 1 28 42 view .LVU41
	movq	%r12, %rdi	# t3_posix,
	call	free@PLT	#
.LVL36:
	.loc 1 29 2 view .LVU42
	movq	56(%rsp), %rsi	#,
	leaq	main(%rip), %rdi	#,
	call	__cyg_profile_func_exit@PLT	#
.LVL37:
# main.c:30: }
	.loc 1 30 1 is_stmt 0 view .LVU43
	movl	$0, %eax	#,
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
.LVL38:
	.loc 1 30 1 view .LVU44
	popq	%rbp	#
	.cfi_def_cfa_offset 40
.LVL39:
	.loc 1 30 1 view .LVU45
	popq	%r12	#
	.cfi_def_cfa_offset 32
.LVL40:
	.loc 1 30 1 view .LVU46
	popq	%r13	#
	.cfi_def_cfa_offset 24
.LVL41:
	.loc 1 30 1 view .LVU47
	popq	%r14	#
	.cfi_def_cfa_offset 16
.LVL42:
	.loc 1 30 1 view .LVU48
	popq	%r15	#
	.cfi_def_cfa_offset 8
.LVL43:
	.loc 1 30 1 view .LVU49
	ret	
	.cfi_endproc
.LFE23:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "operation.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x768
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF76
	.byte	0xc
	.long	.LASF77
	.long	.LASF78
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd8
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x96
	.byte	0x12
	.long	0x6c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x97
	.byte	0x12
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x91
	.uleb128 0x8
	.long	.LASF79
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x224
	.uleb128 0x9
	.long	.LASF11
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x8b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x8b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x8b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x8b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x8b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x8b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x8b
	.byte	0x38
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x8b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x8b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x8b
	.byte	0x50
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x8b
	.byte	0x58
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x23d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x243
	.byte	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x73
	.byte	0x78
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x249
	.byte	0x83
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x259
	.byte	0x88
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x7f
	.byte	0x90
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x264
	.byte	0x98
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x26f
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x243
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x9d
	.uleb128 0xa
	.long	.LASF80
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF41
	.uleb128 0x6
	.byte	0x8
	.long	0x238
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0xc
	.long	0x91
	.long	0x259
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x230
	.uleb128 0xb
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x25f
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0xc
	.long	0x91
	.long	0x285
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x291
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0xe
	.long	.LASF45
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x291
	.uleb128 0xe
	.long	.LASF46
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x291
	.uleb128 0xe
	.long	.LASF47
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	0x2d1
	.long	0x2c6
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2bb
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x7
	.long	0x2cb
	.uleb128 0xe
	.long	.LASF48
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2c6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0xc
	.long	0x8b
	.long	0x300
	.uleb128 0xd
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x2f0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xe
	.long	.LASF53
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x6c
	.uleb128 0xe
	.long	.LASF54
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x2f0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xe
	.long	.LASF56
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0x65
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.long	0x65
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ad
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x4
	.byte	0xe
	.long	0x65
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.byte	0x4
	.byte	0x1b
	.long	0x6ad
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x12
	.string	"t1"
	.byte	0x1
	.byte	0x9
	.byte	0x7
	.long	0x348
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x12
	.string	"t2"
	.byte	0x1
	.byte	0x9
	.byte	0xb
	.long	0x348
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x12
	.string	"t3"
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.long	0x348
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x9
	.byte	0x15
	.long	0x348
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x13
	.long	.LASF60
	.byte	0x1
	.byte	0x9
	.byte	0x20
	.long	0x348
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.long	0x65
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x14
	.long	0x6b3
	.quad	.LBI4
	.byte	.LVU34
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.long	0x440
	.uleb128 0x15
	.quad	.LVL31
	.long	0x6c0
	.byte	0
	.uleb128 0x16
	.quad	.LVL3
	.long	0x6cd
	.long	0x45f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main
	.byte	0
	.uleb128 0x16
	.quad	.LVL4
	.long	0x6d8
	.long	0x476
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.quad	.LVL5
	.long	0x6e4
	.uleb128 0x15
	.quad	.LVL6
	.long	0x6f1
	.uleb128 0x15
	.quad	.LVL9
	.long	0x6f1
	.uleb128 0x15
	.quad	.LVL12
	.long	0x6f1
	.uleb128 0x15
	.quad	.LVL15
	.long	0x6fd
	.uleb128 0x16
	.quad	.LVL16
	.long	0x709
	.long	0x4df
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0xf4240
	.byte	0
	.uleb128 0x15
	.quad	.LVL17
	.long	0x716
	.uleb128 0x16
	.quad	.LVL19
	.long	0x722
	.long	0x50b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x15
	.quad	.LVL20
	.long	0x72f
	.uleb128 0x16
	.quad	.LVL22
	.long	0x722
	.long	0x537
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x15
	.quad	.LVL23
	.long	0x72f
	.uleb128 0x16
	.quad	.LVL25
	.long	0x722
	.long	0x563
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x16
	.quad	.LVL26
	.long	0x73b
	.long	0x587
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL27
	.long	0x722
	.long	0x5a6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x16
	.quad	.LVL28
	.long	0x747
	.long	0x5d0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL29
	.long	0x722
	.long	0x5ef
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x16
	.quad	.LVL30
	.long	0x747
	.long	0x619
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL32
	.long	0x753
	.long	0x631
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL33
	.long	0x753
	.long	0x649
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL34
	.long	0x753
	.long	0x661
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL35
	.long	0x753
	.long	0x679
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.quad	.LVL36
	.long	0x753
	.long	0x691
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.quad	.LVL37
	.long	0x760
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8b
	.uleb128 0x19
	.long	.LASF82
	.byte	0x2
	.byte	0x2f
	.byte	0x1
	.long	0x65
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF62
	.long	.LASF62
	.byte	0x7
	.value	0x1ec
	.byte	0xc
	.uleb128 0x1b
	.long	.LASF74
	.long	.LASF74
	.byte	0xc
	.byte	0
	.uleb128 0x1c
	.long	.LASF63
	.long	.LASF63
	.byte	0x9
	.byte	0x4b
	.byte	0xf
	.uleb128 0x1a
	.long	.LASF64
	.long	.LASF64
	.byte	0xa
	.value	0x1c7
	.byte	0xd
	.uleb128 0x1c
	.long	.LASF65
	.long	.LASF65
	.byte	0xb
	.byte	0x1f
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF66
	.long	.LASF66
	.byte	0xb
	.byte	0x2c
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF67
	.long	.LASF67
	.byte	0x7
	.value	0x14c
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF68
	.long	.LASF68
	.byte	0xb
	.byte	0x25
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF69
	.long	.LASF69
	.byte	0x7
	.value	0x27e
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF70
	.long	.LASF70
	.byte	0xb
	.byte	0x1a
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF71
	.long	.LASF71
	.byte	0xb
	.byte	0x1b
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF72
	.long	.LASF72
	.byte	0xb
	.byte	0x1c
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF73
	.long	.LASF73
	.byte	0xa
	.value	0x233
	.byte	0xd
	.uleb128 0x1b
	.long	.LASF75
	.long	.LASF75
	.byte	0xc
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL1-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU24
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU45
.LLST2:
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL22-1-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU44
.LLST3:
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL25-1-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU47
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL8-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU46
.LLST5:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL11-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU49
.LLST6:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU48
.LLST7:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-1-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"getc"
.LASF79:
	.string	"_IO_FILE"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF65:
	.string	"allouer_espace_memoire"
.LASF76:
	.string	"GNU C17 8.3.0 -mtune=generic -march=x86-64 -g -O -fomit-frame-pointer -fasynchronous-unwind-tables -finstrument-functions"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF82:
	.string	"getchar"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF55:
	.string	"daylight"
.LASF60:
	.string	"t3_omp"
.LASF56:
	.string	"timezone"
.LASF73:
	.string	"free"
.LASF59:
	.string	"t3_posix"
.LASF75:
	.string	"__cyg_profile_func_exit"
.LASF46:
	.string	"stderr"
.LASF41:
	.string	"_IO_marker"
.LASF49:
	.string	"long long int"
.LASF53:
	.string	"__timezone"
.LASF31:
	.string	"_lock"
.LASF52:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"printf"
.LASF28:
	.string	"_cur_column"
.LASF15:
	.string	"_IO_write_base"
.LASF58:
	.string	"argv"
.LASF27:
	.string	"_old_offset"
.LASF2:
	.string	"unsigned char"
.LASF70:
	.string	"initialiserTableau"
.LASF57:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF50:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF30:
	.string	"_shortbuf"
.LASF74:
	.string	"__cyg_profile_func_enter"
.LASF68:
	.string	"get_thread_count"
.LASF69:
	.string	"puts"
.LASF54:
	.string	"tzname"
.LASF63:
	.string	"time"
.LASF12:
	.string	"_IO_read_ptr"
.LASF19:
	.string	"_IO_buf_end"
.LASF61:
	.string	"nb_thread"
.LASF10:
	.string	"char"
.LASF81:
	.string	"main"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF66:
	.string	"clearScreen"
.LASF39:
	.string	"_unused2"
.LASF37:
	.string	"__pad5"
.LASF3:
	.string	"short unsigned int"
.LASF77:
	.string	"main.c"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF25:
	.string	"_fileno"
.LASF24:
	.string	"_chain"
.LASF43:
	.string	"_IO_wide_data"
.LASF71:
	.string	"calculer_t3"
.LASF38:
	.string	"_mode"
.LASF51:
	.string	"__tzname"
.LASF72:
	.string	"calculer_t3_posix"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF8:
	.string	"__off_t"
.LASF26:
	.string	"_flags2"
.LASF42:
	.string	"_IO_codecvt"
.LASF14:
	.string	"_IO_read_base"
.LASF78:
	.string	"/home/ibr/UVBF_AMC"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF40:
	.string	"FILE"
.LASF64:
	.string	"srand"
.LASF45:
	.string	"stdout"
.LASF80:
	.string	"_IO_lock_t"
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
