	.att_syntax
	.text
	.p2align	5
	.globl	_blake2b_jazz
	.globl	blake2b_jazz
_blake2b_jazz:
blake2b_jazz:
	movq	%rsp, %rax
	leaq	-496(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 488(%rsp)
	movq	%rbx, 464(%rsp)
	movq	%rbp, 472(%rsp)
	movq	%r12, 480(%rsp)
	movq	$0, %rax
	cmpq	$0, %rsi
	je  	Lblake2b_jazz$1
	cmpq	$64, %rsi
	jnbe	Lblake2b_jazz$3
	cmpq	$64, %rcx
	jnbe	Lblake2b_jazz$5
	movq	glob_data + 0(%rip), %r10
	movq	%r10, 16(%rsp)
	movq	glob_data + 8(%rip), %r10
	movq	%r10, 24(%rsp)
	movq	glob_data + 16(%rip), %r10
	movq	%r10, 32(%rsp)
	movq	glob_data + 24(%rip), %r10
	movq	%r10, 40(%rsp)
	movq	glob_data + 32(%rip), %r10
	movq	%r10, 48(%rsp)
	movq	glob_data + 40(%rip), %r10
	movq	%r10, 56(%rsp)
	movq	glob_data + 48(%rip), %r10
	movq	%r10, 64(%rsp)
	movq	glob_data + 56(%rip), %r10
	movq	%r10, 72(%rsp)
	movq	%rcx, %r10
	shlq	$8, %r10
	xorq	$16842752, %r10
	xorq	%rsi, %r10
	xorq	%r10, 16(%rsp)
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, %rbx
	movq	%rcx, %r10
	jmp 	Lblake2b_jazz$24
Lblake2b_jazz$25:
	movb	$0, 80(%rsp,%r10)
	incq	%r10
Lblake2b_jazz$24:
	cmpq	$128, %r10
	jb  	Lblake2b_jazz$25
	cmpq	$0, %rcx
	jbe 	Lblake2b_jazz$18
	movq	$0, %r10
	jmp 	Lblake2b_jazz$19
Lblake2b_jazz$20:
	cmpq	$128, %rbx
	jne 	Lblake2b_jazz$21
	addq	%rbx, (%rsp)
	cmpq	%rbx, (%rsp)
	jnb 	Lblake2b_jazz$23
	incq	8(%rsp)
Lblake2b_jazz$23:
	movb	$0, %r11b
	movq	(%rsp), %rbx
	movq	8(%rsp), %rbp
	movq	16(%rsp), %r12
	movq	%r12, 208(%rsp)
	movq	glob_data + 0(%rip), %r12
	movq	%r12, 272(%rsp)
	movq	24(%rsp), %r12
	movq	%r12, 216(%rsp)
	movq	glob_data + 8(%rip), %r12
	movq	%r12, 280(%rsp)
	movq	32(%rsp), %r12
	movq	%r12, 224(%rsp)
	movq	glob_data + 16(%rip), %r12
	movq	%r12, 288(%rsp)
	movq	40(%rsp), %r12
	movq	%r12, 232(%rsp)
	movq	glob_data + 24(%rip), %r12
	movq	%r12, 296(%rsp)
	movq	48(%rsp), %r12
	movq	%r12, 240(%rsp)
	movq	glob_data + 32(%rip), %r12
	movq	%r12, 304(%rsp)
	movq	56(%rsp), %r12
	movq	%r12, 248(%rsp)
	movq	glob_data + 40(%rip), %r12
	movq	%r12, 312(%rsp)
	movq	64(%rsp), %r12
	movq	%r12, 256(%rsp)
	movq	glob_data + 48(%rip), %r12
	movq	%r12, 320(%rsp)
	movq	72(%rsp), %r12
	movq	%r12, 264(%rsp)
	movq	glob_data + 56(%rip), %r12
	movq	%r12, 328(%rsp)
	movq	80(%rsp), %r12
	movq	%r12, 336(%rsp)
	movq	88(%rsp), %r12
	movq	%r12, 344(%rsp)
	movq	96(%rsp), %r12
	movq	%r12, 352(%rsp)
	movq	104(%rsp), %r12
	movq	%r12, 360(%rsp)
	movq	112(%rsp), %r12
	movq	%r12, 368(%rsp)
	movq	120(%rsp), %r12
	movq	%r12, 376(%rsp)
	movq	128(%rsp), %r12
	movq	%r12, 384(%rsp)
	movq	136(%rsp), %r12
	movq	%r12, 392(%rsp)
	movq	144(%rsp), %r12
	movq	%r12, 400(%rsp)
	movq	152(%rsp), %r12
	movq	%r12, 408(%rsp)
	movq	160(%rsp), %r12
	movq	%r12, 416(%rsp)
	movq	168(%rsp), %r12
	movq	%r12, 424(%rsp)
	movq	176(%rsp), %r12
	movq	%r12, 432(%rsp)
	movq	184(%rsp), %r12
	movq	%r12, 440(%rsp)
	movq	192(%rsp), %r12
	movq	%r12, 448(%rsp)
	movq	200(%rsp), %r12
	movq	%r12, 456(%rsp)
	xorq	%rbx, 304(%rsp)
	xorq	%rbp, 312(%rsp)
	cmpb	$1, %r11b
	jne 	Lblake2b_jazz$22
	xorq	$-1, 320(%rsp)
Lblake2b_jazz$22:
	movq	glob_data + 64(%rip), %r11
	movq	glob_data + 72(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 80(%rip), %r11
	movq	glob_data + 88(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 96(%rip), %r11
	movq	glob_data + 104(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 112(%rip), %r11
	movq	glob_data + 120(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 128(%rip), %r11
	movq	glob_data + 136(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 144(%rip), %r11
	movq	glob_data + 152(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 160(%rip), %r11
	movq	glob_data + 168(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 176(%rip), %r11
	movq	glob_data + 184(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 192(%rip), %r11
	movq	glob_data + 200(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 208(%rip), %r11
	movq	glob_data + 216(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 224(%rip), %r11
	movq	glob_data + 232(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 240(%rip), %r11
	movq	glob_data + 248(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 256(%rip), %r11
	movq	glob_data + 264(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 272(%rip), %r11
	movq	glob_data + 280(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 288(%rip), %r11
	movq	glob_data + 296(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 304(%rip), %r11
	movq	glob_data + 312(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 320(%rip), %r11
	movq	glob_data + 328(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 336(%rip), %r11
	movq	glob_data + 344(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 352(%rip), %r11
	movq	glob_data + 360(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 368(%rip), %r11
	movq	glob_data + 376(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 384(%rip), %r11
	movq	glob_data + 392(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 400(%rip), %r11
	movq	glob_data + 408(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 416(%rip), %r11
	movq	glob_data + 424(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 432(%rip), %r11
	movq	glob_data + 440(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 448(%rip), %r11
	movq	glob_data + 456(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 464(%rip), %r11
	movq	glob_data + 472(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 480(%rip), %r11
	movq	glob_data + 488(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 496(%rip), %r11
	movq	glob_data + 504(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 512(%rip), %r11
	movq	glob_data + 520(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 528(%rip), %r11
	movq	glob_data + 536(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 544(%rip), %r11
	movq	glob_data + 552(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 560(%rip), %r11
	movq	glob_data + 568(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 576(%rip), %r11
	movq	glob_data + 584(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 592(%rip), %r11
	movq	glob_data + 600(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 608(%rip), %r11
	movq	glob_data + 616(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 624(%rip), %r11
	movq	glob_data + 632(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 640(%rip), %r11
	movq	glob_data + 648(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 656(%rip), %r11
	movq	glob_data + 664(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 672(%rip), %r11
	movq	glob_data + 680(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 688(%rip), %r11
	movq	glob_data + 696(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 704(%rip), %r11
	movq	glob_data + 712(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 720(%rip), %r11
	movq	glob_data + 728(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 736(%rip), %r11
	movq	glob_data + 744(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 752(%rip), %r11
	movq	glob_data + 760(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 768(%rip), %r11
	movq	glob_data + 776(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 784(%rip), %r11
	movq	glob_data + 792(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 800(%rip), %r11
	movq	glob_data + 808(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 816(%rip), %r11
	movq	glob_data + 824(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 832(%rip), %r11
	movq	glob_data + 840(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 848(%rip), %r11
	movq	glob_data + 856(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 864(%rip), %r11
	movq	glob_data + 872(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 880(%rip), %r11
	movq	glob_data + 888(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 896(%rip), %r11
	movq	glob_data + 904(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 912(%rip), %r11
	movq	glob_data + 920(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 928(%rip), %r11
	movq	glob_data + 936(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 944(%rip), %r11
	movq	glob_data + 952(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 960(%rip), %r11
	movq	glob_data + 968(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 976(%rip), %r11
	movq	glob_data + 984(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 992(%rip), %r11
	movq	glob_data + 1000(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1008(%rip), %r11
	movq	glob_data + 1016(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1024(%rip), %r11
	movq	glob_data + 1032(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1040(%rip), %r11
	movq	glob_data + 1048(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1056(%rip), %r11
	movq	glob_data + 1064(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1072(%rip), %r11
	movq	glob_data + 1080(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1088(%rip), %r11
	movq	glob_data + 1096(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1104(%rip), %r11
	movq	glob_data + 1112(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1120(%rip), %r11
	movq	glob_data + 1128(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1136(%rip), %r11
	movq	glob_data + 1144(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1152(%rip), %r11
	movq	glob_data + 1160(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1168(%rip), %r11
	movq	glob_data + 1176(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1184(%rip), %r11
	movq	glob_data + 1192(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1200(%rip), %r11
	movq	glob_data + 1208(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1216(%rip), %r11
	movq	glob_data + 1224(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1232(%rip), %r11
	movq	glob_data + 1240(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1248(%rip), %r11
	movq	glob_data + 1256(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1264(%rip), %r11
	movq	glob_data + 1272(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1280(%rip), %r11
	movq	glob_data + 1288(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1296(%rip), %r11
	movq	glob_data + 1304(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1312(%rip), %r11
	movq	glob_data + 1320(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1328(%rip), %r11
	movq	glob_data + 1336(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1344(%rip), %r11
	movq	glob_data + 1352(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1360(%rip), %r11
	movq	glob_data + 1368(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1376(%rip), %r11
	movq	glob_data + 1384(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1392(%rip), %r11
	movq	glob_data + 1400(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1408(%rip), %r11
	movq	glob_data + 1416(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1424(%rip), %r11
	movq	glob_data + 1432(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1440(%rip), %r11
	movq	glob_data + 1448(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1456(%rip), %r11
	movq	glob_data + 1464(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1472(%rip), %r11
	movq	glob_data + 1480(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	glob_data + 1488(%rip), %r11
	movq	glob_data + 1496(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1504(%rip), %r11
	movq	glob_data + 1512(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1520(%rip), %r11
	movq	glob_data + 1528(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1536(%rip), %r11
	movq	glob_data + 1544(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%rbp, 208(%rsp)
	movq	208(%rsp), %rbx
	xorq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 328(%rsp)
	movq	328(%rsp), %rbx
	addq	%rbx, 288(%rsp)
	movq	288(%rsp), %rbx
	xorq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 248(%rsp)
	movq	248(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	addq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 328(%rsp)
	movq	328(%rsp), %r11
	addq	%r11, 288(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 248(%rsp)
	movq	glob_data + 1552(%rip), %r11
	movq	glob_data + 1560(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%rbp, 216(%rsp)
	movq	216(%rsp), %rbx
	xorq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 304(%rsp)
	movq	304(%rsp), %rbx
	addq	%rbx, 296(%rsp)
	movq	296(%rsp), %rbx
	xorq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 256(%rsp)
	movq	256(%rsp), %rbx
	addq	%rbx, 216(%rsp)
	addq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 304(%rsp)
	movq	304(%rsp), %r11
	addq	%r11, 296(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 256(%rsp)
	movq	glob_data + 1568(%rip), %r11
	movq	glob_data + 1576(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%rbp, 224(%rsp)
	movq	224(%rsp), %rbx
	xorq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 312(%rsp)
	movq	312(%rsp), %rbx
	addq	%rbx, 272(%rsp)
	movq	272(%rsp), %rbx
	xorq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 264(%rsp)
	movq	264(%rsp), %rbx
	addq	%rbx, 224(%rsp)
	addq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 312(%rsp)
	movq	312(%rsp), %r11
	addq	%r11, 272(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 264(%rsp)
	movq	glob_data + 1584(%rip), %r11
	movq	glob_data + 1592(%rip), %rbx
	movq	336(%rsp,%r11,8), %rbp
	movq	336(%rsp,%rbx,8), %r11
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%rbp, 232(%rsp)
	movq	232(%rsp), %rbx
	xorq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	rorq	$32, %rbx
	movq	%rbx, 320(%rsp)
	movq	320(%rsp), %rbx
	addq	%rbx, 280(%rsp)
	movq	280(%rsp), %rbx
	xorq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	rorq	$24, %rbx
	movq	%rbx, 240(%rsp)
	movq	240(%rsp), %rbx
	addq	%rbx, 232(%rsp)
	addq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	rorq	$16, %r11
	movq	%r11, 320(%rsp)
	movq	320(%rsp), %r11
	addq	%r11, 280(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	rorq	$63, %r11
	movq	%r11, 240(%rsp)
	movq	272(%rsp), %r11
	xorq	%r11, 208(%rsp)
	movq	208(%rsp), %r11
	xorq	%r11, 16(%rsp)
	movq	280(%rsp), %r11
	xorq	%r11, 216(%rsp)
	movq	216(%rsp), %r11
	xorq	%r11, 24(%rsp)
	movq	288(%rsp), %r11
	xorq	%r11, 224(%rsp)
	movq	224(%rsp), %r11
	xorq	%r11, 32(%rsp)
	movq	296(%rsp), %r11
	xorq	%r11, 232(%rsp)
	movq	232(%rsp), %r11
	xorq	%r11, 40(%rsp)
	movq	304(%rsp), %r11
	xorq	%r11, 240(%rsp)
	movq	240(%rsp), %r11
	xorq	%r11, 48(%rsp)
	movq	312(%rsp), %r11
	xorq	%r11, 248(%rsp)
	movq	248(%rsp), %r11
	xorq	%r11, 56(%rsp)
	movq	320(%rsp), %r11
	xorq	%r11, 256(%rsp)
	movq	256(%rsp), %r11
	xorq	%r11, 64(%rsp)
	movq	328(%rsp), %r11
	xorq	%r11, 264(%rsp)
	movq	264(%rsp), %r11
	xorq	%r11, 72(%rsp)
	movq	$0, %rbx
Lblake2b_jazz$21:
	movb	(%rdx,%r10), %r11b
	movb	%r11b, 80(%rsp,%rbx)
	incq	%rbx
	incq	%r10
Lblake2b_jazz$19:
	cmpq	%rcx, %r10
	jb  	Lblake2b_jazz$20
	movq	$128, %rbx
Lblake2b_jazz$18:
	movq	$0, %rcx
	jmp 	Lblake2b_jazz$13
Lblake2b_jazz$14:
	cmpq	$128, %rbx
	jne 	Lblake2b_jazz$15
	addq	%rbx, (%rsp)
	cmpq	%rbx, (%rsp)
	jnb 	Lblake2b_jazz$17
	incq	8(%rsp)
Lblake2b_jazz$17:
	movb	$0, %dl
	movq	(%rsp), %r10
	movq	8(%rsp), %r11
	movq	16(%rsp), %rbx
	movq	%rbx, 208(%rsp)
	movq	glob_data + 0(%rip), %rbx
	movq	%rbx, 272(%rsp)
	movq	24(%rsp), %rbx
	movq	%rbx, 216(%rsp)
	movq	glob_data + 8(%rip), %rbx
	movq	%rbx, 280(%rsp)
	movq	32(%rsp), %rbx
	movq	%rbx, 224(%rsp)
	movq	glob_data + 16(%rip), %rbx
	movq	%rbx, 288(%rsp)
	movq	40(%rsp), %rbx
	movq	%rbx, 232(%rsp)
	movq	glob_data + 24(%rip), %rbx
	movq	%rbx, 296(%rsp)
	movq	48(%rsp), %rbx
	movq	%rbx, 240(%rsp)
	movq	glob_data + 32(%rip), %rbx
	movq	%rbx, 304(%rsp)
	movq	56(%rsp), %rbx
	movq	%rbx, 248(%rsp)
	movq	glob_data + 40(%rip), %rbx
	movq	%rbx, 312(%rsp)
	movq	64(%rsp), %rbx
	movq	%rbx, 256(%rsp)
	movq	glob_data + 48(%rip), %rbx
	movq	%rbx, 320(%rsp)
	movq	72(%rsp), %rbx
	movq	%rbx, 264(%rsp)
	movq	glob_data + 56(%rip), %rbx
	movq	%rbx, 328(%rsp)
	movq	80(%rsp), %rbx
	movq	%rbx, 336(%rsp)
	movq	88(%rsp), %rbx
	movq	%rbx, 344(%rsp)
	movq	96(%rsp), %rbx
	movq	%rbx, 352(%rsp)
	movq	104(%rsp), %rbx
	movq	%rbx, 360(%rsp)
	movq	112(%rsp), %rbx
	movq	%rbx, 368(%rsp)
	movq	120(%rsp), %rbx
	movq	%rbx, 376(%rsp)
	movq	128(%rsp), %rbx
	movq	%rbx, 384(%rsp)
	movq	136(%rsp), %rbx
	movq	%rbx, 392(%rsp)
	movq	144(%rsp), %rbx
	movq	%rbx, 400(%rsp)
	movq	152(%rsp), %rbx
	movq	%rbx, 408(%rsp)
	movq	160(%rsp), %rbx
	movq	%rbx, 416(%rsp)
	movq	168(%rsp), %rbx
	movq	%rbx, 424(%rsp)
	movq	176(%rsp), %rbx
	movq	%rbx, 432(%rsp)
	movq	184(%rsp), %rbx
	movq	%rbx, 440(%rsp)
	movq	192(%rsp), %rbx
	movq	%rbx, 448(%rsp)
	movq	200(%rsp), %rbx
	movq	%rbx, 456(%rsp)
	xorq	%r10, 304(%rsp)
	xorq	%r11, 312(%rsp)
	cmpb	$1, %dl
	jne 	Lblake2b_jazz$16
	xorq	$-1, 320(%rsp)
Lblake2b_jazz$16:
	movq	glob_data + 64(%rip), %rdx
	movq	glob_data + 72(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 80(%rip), %rdx
	movq	glob_data + 88(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 96(%rip), %rdx
	movq	glob_data + 104(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 112(%rip), %rdx
	movq	glob_data + 120(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 128(%rip), %rdx
	movq	glob_data + 136(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 144(%rip), %rdx
	movq	glob_data + 152(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 160(%rip), %rdx
	movq	glob_data + 168(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 176(%rip), %rdx
	movq	glob_data + 184(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 192(%rip), %rdx
	movq	glob_data + 200(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 208(%rip), %rdx
	movq	glob_data + 216(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 224(%rip), %rdx
	movq	glob_data + 232(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 240(%rip), %rdx
	movq	glob_data + 248(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 256(%rip), %rdx
	movq	glob_data + 264(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 272(%rip), %rdx
	movq	glob_data + 280(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 288(%rip), %rdx
	movq	glob_data + 296(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 304(%rip), %rdx
	movq	glob_data + 312(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 320(%rip), %rdx
	movq	glob_data + 328(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 336(%rip), %rdx
	movq	glob_data + 344(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 352(%rip), %rdx
	movq	glob_data + 360(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 368(%rip), %rdx
	movq	glob_data + 376(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 384(%rip), %rdx
	movq	glob_data + 392(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 400(%rip), %rdx
	movq	glob_data + 408(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 416(%rip), %rdx
	movq	glob_data + 424(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 432(%rip), %rdx
	movq	glob_data + 440(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 448(%rip), %rdx
	movq	glob_data + 456(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 464(%rip), %rdx
	movq	glob_data + 472(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 480(%rip), %rdx
	movq	glob_data + 488(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 496(%rip), %rdx
	movq	glob_data + 504(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 512(%rip), %rdx
	movq	glob_data + 520(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 528(%rip), %rdx
	movq	glob_data + 536(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 544(%rip), %rdx
	movq	glob_data + 552(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 560(%rip), %rdx
	movq	glob_data + 568(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 576(%rip), %rdx
	movq	glob_data + 584(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 592(%rip), %rdx
	movq	glob_data + 600(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 608(%rip), %rdx
	movq	glob_data + 616(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 624(%rip), %rdx
	movq	glob_data + 632(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 640(%rip), %rdx
	movq	glob_data + 648(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 656(%rip), %rdx
	movq	glob_data + 664(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 672(%rip), %rdx
	movq	glob_data + 680(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 688(%rip), %rdx
	movq	glob_data + 696(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 704(%rip), %rdx
	movq	glob_data + 712(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 720(%rip), %rdx
	movq	glob_data + 728(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 736(%rip), %rdx
	movq	glob_data + 744(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 752(%rip), %rdx
	movq	glob_data + 760(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 768(%rip), %rdx
	movq	glob_data + 776(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 784(%rip), %rdx
	movq	glob_data + 792(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 800(%rip), %rdx
	movq	glob_data + 808(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 816(%rip), %rdx
	movq	glob_data + 824(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 832(%rip), %rdx
	movq	glob_data + 840(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 848(%rip), %rdx
	movq	glob_data + 856(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 864(%rip), %rdx
	movq	glob_data + 872(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 880(%rip), %rdx
	movq	glob_data + 888(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 896(%rip), %rdx
	movq	glob_data + 904(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 912(%rip), %rdx
	movq	glob_data + 920(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 928(%rip), %rdx
	movq	glob_data + 936(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 944(%rip), %rdx
	movq	glob_data + 952(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 960(%rip), %rdx
	movq	glob_data + 968(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 976(%rip), %rdx
	movq	glob_data + 984(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 992(%rip), %rdx
	movq	glob_data + 1000(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1008(%rip), %rdx
	movq	glob_data + 1016(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1024(%rip), %rdx
	movq	glob_data + 1032(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1040(%rip), %rdx
	movq	glob_data + 1048(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1056(%rip), %rdx
	movq	glob_data + 1064(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1072(%rip), %rdx
	movq	glob_data + 1080(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1088(%rip), %rdx
	movq	glob_data + 1096(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1104(%rip), %rdx
	movq	glob_data + 1112(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1120(%rip), %rdx
	movq	glob_data + 1128(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1136(%rip), %rdx
	movq	glob_data + 1144(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1152(%rip), %rdx
	movq	glob_data + 1160(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1168(%rip), %rdx
	movq	glob_data + 1176(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1184(%rip), %rdx
	movq	glob_data + 1192(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1200(%rip), %rdx
	movq	glob_data + 1208(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1216(%rip), %rdx
	movq	glob_data + 1224(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1232(%rip), %rdx
	movq	glob_data + 1240(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1248(%rip), %rdx
	movq	glob_data + 1256(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1264(%rip), %rdx
	movq	glob_data + 1272(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1280(%rip), %rdx
	movq	glob_data + 1288(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1296(%rip), %rdx
	movq	glob_data + 1304(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1312(%rip), %rdx
	movq	glob_data + 1320(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1328(%rip), %rdx
	movq	glob_data + 1336(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1344(%rip), %rdx
	movq	glob_data + 1352(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1360(%rip), %rdx
	movq	glob_data + 1368(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1376(%rip), %rdx
	movq	glob_data + 1384(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1392(%rip), %rdx
	movq	glob_data + 1400(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1408(%rip), %rdx
	movq	glob_data + 1416(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1424(%rip), %rdx
	movq	glob_data + 1432(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1440(%rip), %rdx
	movq	glob_data + 1448(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1456(%rip), %rdx
	movq	glob_data + 1464(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1472(%rip), %rdx
	movq	glob_data + 1480(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	glob_data + 1488(%rip), %rdx
	movq	glob_data + 1496(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1504(%rip), %rdx
	movq	glob_data + 1512(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1520(%rip), %rdx
	movq	glob_data + 1528(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1536(%rip), %rdx
	movq	glob_data + 1544(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	248(%rsp), %r11
	addq	%r11, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	addq	%rdx, 208(%rsp)
	addq	%r10, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 328(%rsp)
	movq	328(%rsp), %rdx
	addq	%rdx, 288(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 248(%rsp)
	movq	glob_data + 1552(%rip), %rdx
	movq	glob_data + 1560(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	256(%rsp), %r11
	addq	%r11, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	addq	%rdx, 216(%rsp)
	addq	%r10, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 304(%rsp)
	movq	304(%rsp), %rdx
	addq	%rdx, 296(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 256(%rsp)
	movq	glob_data + 1568(%rip), %rdx
	movq	glob_data + 1576(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	264(%rsp), %r11
	addq	%r11, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	addq	%rdx, 224(%rsp)
	addq	%r10, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 312(%rsp)
	movq	312(%rsp), %rdx
	addq	%rdx, 272(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 264(%rsp)
	movq	glob_data + 1584(%rip), %rdx
	movq	glob_data + 1592(%rip), %r10
	movq	336(%rsp,%rdx,8), %rdx
	movq	336(%rsp,%r10,8), %r10
	movq	240(%rsp), %r11
	addq	%r11, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$32, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$24, %rdx
	movq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	addq	%rdx, 232(%rsp)
	addq	%r10, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	rorq	$16, %rdx
	movq	%rdx, 320(%rsp)
	movq	320(%rsp), %rdx
	addq	%rdx, 280(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	rorq	$63, %rdx
	movq	%rdx, 240(%rsp)
	movq	272(%rsp), %rdx
	xorq	%rdx, 208(%rsp)
	movq	208(%rsp), %rdx
	xorq	%rdx, 16(%rsp)
	movq	280(%rsp), %rdx
	xorq	%rdx, 216(%rsp)
	movq	216(%rsp), %rdx
	xorq	%rdx, 24(%rsp)
	movq	288(%rsp), %rdx
	xorq	%rdx, 224(%rsp)
	movq	224(%rsp), %rdx
	xorq	%rdx, 32(%rsp)
	movq	296(%rsp), %rdx
	xorq	%rdx, 232(%rsp)
	movq	232(%rsp), %rdx
	xorq	%rdx, 40(%rsp)
	movq	304(%rsp), %rdx
	xorq	%rdx, 240(%rsp)
	movq	240(%rsp), %rdx
	xorq	%rdx, 48(%rsp)
	movq	312(%rsp), %rdx
	xorq	%rdx, 248(%rsp)
	movq	248(%rsp), %rdx
	xorq	%rdx, 56(%rsp)
	movq	320(%rsp), %rdx
	xorq	%rdx, 256(%rsp)
	movq	256(%rsp), %rdx
	xorq	%rdx, 64(%rsp)
	movq	328(%rsp), %rdx
	xorq	%rdx, 264(%rsp)
	movq	264(%rsp), %rdx
	xorq	%rdx, 72(%rsp)
	movq	$0, %rbx
Lblake2b_jazz$15:
	movb	(%r8,%rcx), %dl
	movb	%dl, 80(%rsp,%rbx)
	incq	%rbx
	incq	%rcx
Lblake2b_jazz$13:
	cmpq	%r9, %rcx
	jb  	Lblake2b_jazz$14
	addq	%rbx, (%rsp)
	cmpq	%rbx, (%rsp)
	jnb 	Lblake2b_jazz$10
	incq	8(%rsp)
Lblake2b_jazz$12:
	jmp 	Lblake2b_jazz$10
Lblake2b_jazz$11:
	movb	$0, 80(%rsp,%rbx)
	incq	%rbx
Lblake2b_jazz$10:
	cmpq	$128, %rbx
	jb  	Lblake2b_jazz$11
	movb	$1, %cl
	movq	(%rsp), %rdx
	movq	8(%rsp), %r8
	movq	16(%rsp), %r9
	movq	%r9, 208(%rsp)
	movq	glob_data + 0(%rip), %r9
	movq	%r9, 272(%rsp)
	movq	24(%rsp), %r9
	movq	%r9, 216(%rsp)
	movq	glob_data + 8(%rip), %r9
	movq	%r9, 280(%rsp)
	movq	32(%rsp), %r9
	movq	%r9, 224(%rsp)
	movq	glob_data + 16(%rip), %r9
	movq	%r9, 288(%rsp)
	movq	40(%rsp), %r9
	movq	%r9, 232(%rsp)
	movq	glob_data + 24(%rip), %r9
	movq	%r9, 296(%rsp)
	movq	48(%rsp), %r9
	movq	%r9, 240(%rsp)
	movq	glob_data + 32(%rip), %r9
	movq	%r9, 304(%rsp)
	movq	56(%rsp), %r9
	movq	%r9, 248(%rsp)
	movq	glob_data + 40(%rip), %r9
	movq	%r9, 312(%rsp)
	movq	64(%rsp), %r9
	movq	%r9, 256(%rsp)
	movq	glob_data + 48(%rip), %r9
	movq	%r9, 320(%rsp)
	movq	72(%rsp), %r9
	movq	%r9, 264(%rsp)
	movq	glob_data + 56(%rip), %r9
	movq	%r9, 328(%rsp)
	movq	80(%rsp), %r9
	movq	%r9, 336(%rsp)
	movq	88(%rsp), %r9
	movq	%r9, 344(%rsp)
	movq	96(%rsp), %r9
	movq	%r9, 352(%rsp)
	movq	104(%rsp), %r9
	movq	%r9, 360(%rsp)
	movq	112(%rsp), %r9
	movq	%r9, 368(%rsp)
	movq	120(%rsp), %r9
	movq	%r9, 376(%rsp)
	movq	128(%rsp), %r9
	movq	%r9, 384(%rsp)
	movq	136(%rsp), %r9
	movq	%r9, 392(%rsp)
	movq	144(%rsp), %r9
	movq	%r9, 400(%rsp)
	movq	152(%rsp), %r9
	movq	%r9, 408(%rsp)
	movq	160(%rsp), %r9
	movq	%r9, 416(%rsp)
	movq	168(%rsp), %r9
	movq	%r9, 424(%rsp)
	movq	176(%rsp), %r9
	movq	%r9, 432(%rsp)
	movq	184(%rsp), %r9
	movq	%r9, 440(%rsp)
	movq	192(%rsp), %r9
	movq	%r9, 448(%rsp)
	movq	200(%rsp), %r9
	movq	%r9, 456(%rsp)
	xorq	%rdx, 304(%rsp)
	xorq	%r8, 312(%rsp)
	cmpb	$1, %cl
	jne 	Lblake2b_jazz$9
	xorq	$-1, 320(%rsp)
Lblake2b_jazz$9:
	movq	glob_data + 64(%rip), %rcx
	movq	glob_data + 72(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 80(%rip), %rcx
	movq	glob_data + 88(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 96(%rip), %rcx
	movq	glob_data + 104(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 112(%rip), %rcx
	movq	glob_data + 120(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 128(%rip), %rcx
	movq	glob_data + 136(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 144(%rip), %rcx
	movq	glob_data + 152(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 160(%rip), %rcx
	movq	glob_data + 168(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 176(%rip), %rcx
	movq	glob_data + 184(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 192(%rip), %rcx
	movq	glob_data + 200(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 208(%rip), %rcx
	movq	glob_data + 216(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 224(%rip), %rcx
	movq	glob_data + 232(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 240(%rip), %rcx
	movq	glob_data + 248(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 256(%rip), %rcx
	movq	glob_data + 264(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 272(%rip), %rcx
	movq	glob_data + 280(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 288(%rip), %rcx
	movq	glob_data + 296(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 304(%rip), %rcx
	movq	glob_data + 312(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 320(%rip), %rcx
	movq	glob_data + 328(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 336(%rip), %rcx
	movq	glob_data + 344(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 352(%rip), %rcx
	movq	glob_data + 360(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 368(%rip), %rcx
	movq	glob_data + 376(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 384(%rip), %rcx
	movq	glob_data + 392(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 400(%rip), %rcx
	movq	glob_data + 408(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 416(%rip), %rcx
	movq	glob_data + 424(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 432(%rip), %rcx
	movq	glob_data + 440(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 448(%rip), %rcx
	movq	glob_data + 456(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 464(%rip), %rcx
	movq	glob_data + 472(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 480(%rip), %rcx
	movq	glob_data + 488(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 496(%rip), %rcx
	movq	glob_data + 504(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 512(%rip), %rcx
	movq	glob_data + 520(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 528(%rip), %rcx
	movq	glob_data + 536(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 544(%rip), %rcx
	movq	glob_data + 552(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 560(%rip), %rcx
	movq	glob_data + 568(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 576(%rip), %rcx
	movq	glob_data + 584(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 592(%rip), %rcx
	movq	glob_data + 600(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 608(%rip), %rcx
	movq	glob_data + 616(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 624(%rip), %rcx
	movq	glob_data + 632(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 640(%rip), %rcx
	movq	glob_data + 648(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 656(%rip), %rcx
	movq	glob_data + 664(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 672(%rip), %rcx
	movq	glob_data + 680(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 688(%rip), %rcx
	movq	glob_data + 696(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 704(%rip), %rcx
	movq	glob_data + 712(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 720(%rip), %rcx
	movq	glob_data + 728(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 736(%rip), %rcx
	movq	glob_data + 744(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 752(%rip), %rcx
	movq	glob_data + 760(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 768(%rip), %rcx
	movq	glob_data + 776(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 784(%rip), %rcx
	movq	glob_data + 792(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 800(%rip), %rcx
	movq	glob_data + 808(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 816(%rip), %rcx
	movq	glob_data + 824(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 832(%rip), %rcx
	movq	glob_data + 840(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 848(%rip), %rcx
	movq	glob_data + 856(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 864(%rip), %rcx
	movq	glob_data + 872(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 880(%rip), %rcx
	movq	glob_data + 888(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 896(%rip), %rcx
	movq	glob_data + 904(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 912(%rip), %rcx
	movq	glob_data + 920(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 928(%rip), %rcx
	movq	glob_data + 936(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 944(%rip), %rcx
	movq	glob_data + 952(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 960(%rip), %rcx
	movq	glob_data + 968(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 976(%rip), %rcx
	movq	glob_data + 984(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 992(%rip), %rcx
	movq	glob_data + 1000(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1008(%rip), %rcx
	movq	glob_data + 1016(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1024(%rip), %rcx
	movq	glob_data + 1032(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1040(%rip), %rcx
	movq	glob_data + 1048(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1056(%rip), %rcx
	movq	glob_data + 1064(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1072(%rip), %rcx
	movq	glob_data + 1080(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1088(%rip), %rcx
	movq	glob_data + 1096(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1104(%rip), %rcx
	movq	glob_data + 1112(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1120(%rip), %rcx
	movq	glob_data + 1128(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1136(%rip), %rcx
	movq	glob_data + 1144(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1152(%rip), %rcx
	movq	glob_data + 1160(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1168(%rip), %rcx
	movq	glob_data + 1176(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1184(%rip), %rcx
	movq	glob_data + 1192(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1200(%rip), %rcx
	movq	glob_data + 1208(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1216(%rip), %rcx
	movq	glob_data + 1224(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1232(%rip), %rcx
	movq	glob_data + 1240(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1248(%rip), %rcx
	movq	glob_data + 1256(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1264(%rip), %rcx
	movq	glob_data + 1272(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1280(%rip), %rcx
	movq	glob_data + 1288(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1296(%rip), %rcx
	movq	glob_data + 1304(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1312(%rip), %rcx
	movq	glob_data + 1320(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1328(%rip), %rcx
	movq	glob_data + 1336(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1344(%rip), %rcx
	movq	glob_data + 1352(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1360(%rip), %rcx
	movq	glob_data + 1368(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1376(%rip), %rcx
	movq	glob_data + 1384(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1392(%rip), %rcx
	movq	glob_data + 1400(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1408(%rip), %rcx
	movq	glob_data + 1416(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1424(%rip), %rcx
	movq	glob_data + 1432(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1440(%rip), %rcx
	movq	glob_data + 1448(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1456(%rip), %rcx
	movq	glob_data + 1464(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1472(%rip), %rcx
	movq	glob_data + 1480(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	glob_data + 1488(%rip), %rcx
	movq	glob_data + 1496(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1504(%rip), %rcx
	movq	glob_data + 1512(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1520(%rip), %rcx
	movq	glob_data + 1528(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1536(%rip), %rcx
	movq	glob_data + 1544(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	248(%rsp), %r8
	addq	%r8, 208(%rsp)
	addq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	addq	%rcx, 208(%rsp)
	addq	%rdx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 328(%rsp)
	movq	328(%rsp), %rcx
	addq	%rcx, 288(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 248(%rsp)
	movq	glob_data + 1552(%rip), %rcx
	movq	glob_data + 1560(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	256(%rsp), %r8
	addq	%r8, 216(%rsp)
	addq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, 216(%rsp)
	addq	%rdx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 304(%rsp)
	movq	304(%rsp), %rcx
	addq	%rcx, 296(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 256(%rsp)
	movq	glob_data + 1568(%rip), %rcx
	movq	glob_data + 1576(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	264(%rsp), %r8
	addq	%r8, 224(%rsp)
	addq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	addq	%rcx, 224(%rsp)
	addq	%rdx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 312(%rsp)
	movq	312(%rsp), %rcx
	addq	%rcx, 272(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 264(%rsp)
	movq	glob_data + 1584(%rip), %rcx
	movq	glob_data + 1592(%rip), %rdx
	movq	336(%rsp,%rcx,8), %rcx
	movq	336(%rsp,%rdx,8), %rdx
	movq	240(%rsp), %r8
	addq	%r8, 232(%rsp)
	addq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$32, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$24, %rcx
	movq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	addq	%rcx, 232(%rsp)
	addq	%rdx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	rorq	$16, %rcx
	movq	%rcx, 320(%rsp)
	movq	320(%rsp), %rcx
	addq	%rcx, 280(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	rorq	$63, %rcx
	movq	%rcx, 240(%rsp)
	movq	272(%rsp), %rcx
	xorq	%rcx, 208(%rsp)
	movq	208(%rsp), %rcx
	xorq	%rcx, 16(%rsp)
	movq	280(%rsp), %rcx
	xorq	%rcx, 216(%rsp)
	movq	216(%rsp), %rcx
	xorq	%rcx, 24(%rsp)
	movq	288(%rsp), %rcx
	xorq	%rcx, 224(%rsp)
	movq	224(%rsp), %rcx
	xorq	%rcx, 32(%rsp)
	movq	296(%rsp), %rcx
	xorq	%rcx, 232(%rsp)
	movq	232(%rsp), %rcx
	xorq	%rcx, 40(%rsp)
	movq	304(%rsp), %rcx
	xorq	%rcx, 240(%rsp)
	movq	240(%rsp), %rcx
	xorq	%rcx, 48(%rsp)
	movq	312(%rsp), %rcx
	xorq	%rcx, 248(%rsp)
	movq	248(%rsp), %rcx
	xorq	%rcx, 56(%rsp)
	movq	320(%rsp), %rcx
	xorq	%rcx, 256(%rsp)
	movq	256(%rsp), %rcx
	xorq	%rcx, 64(%rsp)
	movq	328(%rsp), %rcx
	xorq	%rcx, 264(%rsp)
	movq	264(%rsp), %rcx
	xorq	%rcx, 72(%rsp)
	movq	$0, %rdx
	jmp 	Lblake2b_jazz$7
Lblake2b_jazz$8:
	movq	%rdx, %r8
	rorq	$3, %r8
	movq	%rdx, %rcx
	andq	$7, %rcx
	imulq	$8, %rcx, %rcx
	movq	16(%rsp,%r8,8), %r8
	rorq	%cl, %r8
	andq	$255, %r8
	movq	%r8, (%rdi,%rdx)
	incq	%rdx
Lblake2b_jazz$7:
	cmpq	%rsi, %rdx
	jb  	Lblake2b_jazz$8
	jmp 	Lblake2b_jazz$2
Lblake2b_jazz$5:
	movq	$-1, %rax
Lblake2b_jazz$6:
	jmp 	Lblake2b_jazz$2
Lblake2b_jazz$3:
	movq	$-1, %rax
Lblake2b_jazz$4:
	jmp 	Lblake2b_jazz$2
Lblake2b_jazz$1:
	movq	$-1, %rax
Lblake2b_jazz$2:
	movq	464(%rsp), %rbx
	movq	472(%rsp), %rbp
	movq	480(%rsp), %r12
	movq	488(%rsp), %rsp
	ret 
	.data
	.p2align	5
_glob_data:
glob_data:
      .byte 8
      .byte -55
      .byte -68
      .byte -13
      .byte 103
      .byte -26
      .byte 9
      .byte 106
      .byte 59
      .byte -89
      .byte -54
      .byte -124
      .byte -123
      .byte -82
      .byte 103
      .byte -69
      .byte 43
      .byte -8
      .byte -108
      .byte -2
      .byte 114
      .byte -13
      .byte 110
      .byte 60
      .byte -15
      .byte 54
      .byte 29
      .byte 95
      .byte 58
      .byte -11
      .byte 79
      .byte -91
      .byte -47
      .byte -126
      .byte -26
      .byte -83
      .byte 127
      .byte 82
      .byte 14
      .byte 81
      .byte 31
      .byte 108
      .byte 62
      .byte 43
      .byte -116
      .byte 104
      .byte 5
      .byte -101
      .byte 107
      .byte -67
      .byte 65
      .byte -5
      .byte -85
      .byte -39
      .byte -125
      .byte 31
      .byte 121
      .byte 33
      .byte 126
      .byte 19
      .byte 25
      .byte -51
      .byte -32
      .byte 91
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 14
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 10
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 4
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 8
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 9
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 15
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 13
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 6
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 1
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 12
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 2
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 11
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 7
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 5
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 3
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
      .byte 0
