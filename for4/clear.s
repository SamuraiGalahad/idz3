	.file	"main.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 11.2.0-19ubuntu1) version 11.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fstack-clash-protection -fcf-protection
	.text
	.globl	get_pi
	.type	get_pi, @function
get_pi:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	movsd	QWORD PTR -24[rbp], xmm0	# pi, pi
# ./main.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp95,
	movsd	QWORD PTR -8[rbp], xmm0	# i, tmp95
# ./main.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	jmp	.L2	#
.L3:
# ./main.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm1, QWORD PTR -8[rbp]	# tmp96, i
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp97,
	addsd	xmm0, xmm1	# _1, tmp96
# ./main.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movapd	xmm1, xmm0	# _1, _1
	mulsd	xmm1, QWORD PTR -8[rbp]	# _1, i
# ./main.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm2, QWORD PTR -8[rbp]	# tmp98, i
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp99,
	addsd	xmm0, xmm2	# _3, tmp98
# ./main.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	mulsd	xmm1, xmm0	# _4, _3
# ./main.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp100,
	divsd	xmm0, xmm1	# _5, _4
# ./main.c:5:         pi += 4.0 / (i * (i + 1) * (i + 2));
	movsd	xmm1, QWORD PTR -24[rbp]	# tmp102, pi
	addsd	xmm0, xmm1	# tmp101, tmp102
	movsd	QWORD PTR -24[rbp], xmm0	# pi, tmp101
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm1, QWORD PTR -8[rbp]	# tmp103, i
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp104,
	addsd	xmm1, xmm0	# _6, tmp104
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm2, QWORD PTR -8[rbp]	# tmp105, i
	movsd	xmm0, QWORD PTR .LC3[rip]	# tmp106,
	addsd	xmm0, xmm2	# _7, tmp105
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	mulsd	xmm1, xmm0	# _8, _7
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm2, QWORD PTR -8[rbp]	# tmp107, i
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp108,
	addsd	xmm0, xmm2	# _9, tmp107
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movapd	xmm2, xmm1	# _8, _8
	mulsd	xmm2, xmm0	# _8, _9
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp109,
	movapd	xmm1, xmm0	# tmp109, tmp109
	divsd	xmm1, xmm2	# tmp109, _10
# ./main.c:6:         pi -= 4.0 / ((i + 2) * (i + 3) * (i + 4));
	movsd	xmm0, QWORD PTR -24[rbp]	# tmp111, pi
	subsd	xmm0, xmm1	# tmp110, _11
	movsd	QWORD PTR -24[rbp], xmm0	# pi, tmp110
# ./main.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	movsd	xmm1, QWORD PTR -8[rbp]	# tmp113, i
	movsd	xmm0, QWORD PTR .LC2[rip]	# tmp114,
	addsd	xmm0, xmm1	# tmp112, tmp113
	movsd	QWORD PTR -8[rbp], xmm0	# i, tmp112
.L2:
# ./main.c:4:     for (double i = 2.0; i < 3000000; i += 4) {
	movsd	xmm0, QWORD PTR .LC4[rip]	# tmp115,
	comisd	xmm0, QWORD PTR -8[rbp]	# tmp115, i
	ja	.L3	#,
# ./main.c:8:     return pi;
	movsd	xmm0, QWORD PTR -24[rbp]	# _16, pi
	movq	rax, xmm0	# <retval>, _16
# ./main.c:9: }
	movq	xmm0, rax	#, <retval>
	pop	rbp	#
	ret	
	.size	get_pi, .-get_pi
	.section	.rodata
.LC5:
	.string	"%.14f"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# argc, argc
	mov	QWORD PTR -32[rbp], rsi	# argv, argv
# ./main.c:13:     double pi = 3.0;
	movsd	xmm0, QWORD PTR .LC3[rip]	# tmp85,
	movsd	QWORD PTR -8[rbp], xmm0	# pi, tmp85
# ./main.c:14:     printf("%.14f", get_pi(pi));
	mov	rax, QWORD PTR -8[rbp]	# tmp86, pi
	movq	xmm0, rax	#, tmp86
	call	get_pi	#
	movq	rax, xmm0	# _1,
	movq	xmm0, rax	#, _1
	lea	rax, .LC5[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 1	#,
	call	printf@PLT	#
# ./main.c:15:     return 0;
	mov	eax, 0	# _6,
# ./main.c:16: }
	leave	
	ret	
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1074790400
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	0
	.long	1095164768
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
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
