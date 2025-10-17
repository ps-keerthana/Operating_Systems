
_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a0301e 	mov	r3, #30
      18:	e50b300c 	str	r3, [fp, #-12]
      1c:	e51b300c 	ldr	r3, [fp, #-12]
      20:	e1a03603 	lsl	r3, r3, #12
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	e59f10cc 	ldr	r1, [pc, #204]	@ fc <main+0xfc>
      2c:	e3a00001 	mov	r0, #1
      30:	eb00037d 	bl	e2c <printf>
      34:	e51b200c 	ldr	r2, [fp, #-12]
      38:	e59f10c0 	ldr	r1, [pc, #192]	@ 100 <main+0x100>
      3c:	e3a00001 	mov	r0, #1
      40:	eb000379 	bl	e2c <printf>
      44:	e51b0010 	ldr	r0, [fp, #-16]
      48:	eb0002d1 	bl	b94 <sbrk>
      4c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      54:	e3730001 	cmn	r3, #1
      58:	1a000003 	bne	6c <main+0x6c>
      5c:	e59f10a0 	ldr	r1, [pc, #160]	@ 104 <main+0x104>
      60:	e3a00001 	mov	r0, #1
      64:	eb000370 	bl	e2c <printf>
      68:	eb000230 	bl	930 <exit>
      6c:	e59f1094 	ldr	r1, [pc, #148]	@ 108 <main+0x108>
      70:	e3a00001 	mov	r0, #1
      74:	eb00036c 	bl	e2c <printf>
      78:	e3a03000 	mov	r3, #0
      7c:	e50b3008 	str	r3, [fp, #-8]
      80:	ea00000a 	b	b0 <main+0xb0>
      84:	e51b3008 	ldr	r3, [fp, #-8]
      88:	e1a03603 	lsl	r3, r3, #12
      8c:	e1a02003 	mov	r2, r3
      90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      94:	e0833002 	add	r3, r3, r2
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e6ef2072 	uxtb	r2, r2
      a0:	e5c32000 	strb	r2, [r3]
      a4:	e51b3008 	ldr	r3, [fp, #-8]
      a8:	e2833001 	add	r3, r3, #1
      ac:	e50b3008 	str	r3, [fp, #-8]
      b0:	e51b2008 	ldr	r2, [fp, #-8]
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e1520003 	cmp	r2, r3
      bc:	bafffff0 	blt	84 <main+0x84>
      c0:	e59f1044 	ldr	r1, [pc, #68]	@ 10c <main+0x10c>
      c4:	e3a00001 	mov	r0, #1
      c8:	eb000357 	bl	e2c <printf>
      cc:	e59f103c 	ldr	r1, [pc, #60]	@ 110 <main+0x110>
      d0:	e3a00001 	mov	r0, #1
      d4:	eb000354 	bl	e2c <printf>
      d8:	eb0002ec 	bl	c90 <print_pt>
      dc:	e59f1030 	ldr	r1, [pc, #48]	@ 114 <main+0x114>
      e0:	e3a00001 	mov	r0, #1
      e4:	eb000350 	bl	e2c <printf>
      e8:	eb00001c 	bl	160 <ugetpid_test>
      ec:	e59f1024 	ldr	r1, [pc, #36]	@ 118 <main+0x118>
      f0:	e3a00001 	mov	r0, #1
      f4:	eb00034c 	bl	e2c <printf>
      f8:	eb00020c 	bl	930 <exit>
      fc:	000014e8 	.word	0x000014e8
     100:	00001518 	.word	0x00001518
     104:	00001554 	.word	0x00001554
     108:	00001564 	.word	0x00001564
     10c:	000015b0 	.word	0x000015b0
     110:	000015dc 	.word	0x000015dc
     114:	00001614 	.word	0x00001614
     118:	00001634 	.word	0x00001634

0000011c <err>:
     11c:	e92d4810 	push	{r4, fp, lr}
     120:	e28db008 	add	fp, sp, #8
     124:	e24dd014 	sub	sp, sp, #20
     128:	e50b0010 	str	r0, [fp, #-16]
     12c:	e59f3024 	ldr	r3, [pc, #36]	@ 158 <err+0x3c>
     130:	e5934000 	ldr	r4, [r3]
     134:	eb00028d 	bl	b70 <getpid>
     138:	e1a03000 	mov	r3, r0
     13c:	e58d3000 	str	r3, [sp]
     140:	e51b3010 	ldr	r3, [fp, #-16]
     144:	e1a02004 	mov	r2, r4
     148:	e59f100c 	ldr	r1, [pc, #12]	@ 15c <err+0x40>
     14c:	e3a00001 	mov	r0, #1
     150:	eb000335 	bl	e2c <printf>
     154:	eb0001f5 	bl	930 <exit>
     158:	000016d4 	.word	0x000016d4
     15c:	00001664 	.word	0x00001664

00000160 <ugetpid_test>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd008 	sub	sp, sp, #8
     16c:	e59f1080 	ldr	r1, [pc, #128]	@ 1f4 <ugetpid_test+0x94>
     170:	e3a00001 	mov	r0, #1
     174:	eb00032c 	bl	e2c <printf>
     178:	e59f3078 	ldr	r3, [pc, #120]	@ 1f8 <ugetpid_test+0x98>
     17c:	e59f2078 	ldr	r2, [pc, #120]	@ 1fc <ugetpid_test+0x9c>
     180:	e5832000 	str	r2, [r3]
     184:	e3a03000 	mov	r3, #0
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	ea00000f 	b	1d0 <ugetpid_test+0x70>
     190:	eb0001dd 	bl	90c <fork>
     194:	e50b000c 	str	r0, [fp, #-12]
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e3530000 	cmp	r3, #0
     1a0:	aa000001 	bge	1ac <ugetpid_test+0x4c>
     1a4:	e59f0054 	ldr	r0, [pc, #84]	@ 200 <ugetpid_test+0xa0>
     1a8:	ebffffdb 	bl	11c <err>
     1ac:	e51b300c 	ldr	r3, [fp, #-12]
     1b0:	e3530000 	cmp	r3, #0
     1b4:	da000001 	ble	1c0 <ugetpid_test+0x60>
     1b8:	eb0001e5 	bl	954 <wait>
     1bc:	ea000000 	b	1c4 <ugetpid_test+0x64>
     1c0:	eb0001da 	bl	930 <exit>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e3530009 	cmp	r3, #9
     1d8:	daffffec 	ble	190 <ugetpid_test+0x30>
     1dc:	e59f1020 	ldr	r1, [pc, #32]	@ 204 <ugetpid_test+0xa4>
     1e0:	e3a00001 	mov	r0, #1
     1e4:	eb000310 	bl	e2c <printf>
     1e8:	e1a00000 	nop			@ (mov r0, r0)
     1ec:	e24bd004 	sub	sp, fp, #4
     1f0:	e8bd8800 	pop	{fp, pc}
     1f4:	00001684 	.word	0x00001684
     1f8:	000016d4 	.word	0x000016d4
     1fc:	0000169c 	.word	0x0000169c
     200:	000016ac 	.word	0x000016ac
     204:	000016b8 	.word	0x000016b8

00000208 <pg_pte>:
     208:	e92d4800 	push	{fp, lr}
     20c:	e28db004 	add	fp, sp, #4
     210:	e24dd008 	sub	sp, sp, #8
     214:	e50b0008 	str	r0, [fp, #-8]
     218:	e51b1008 	ldr	r1, [fp, #-8]
     21c:	e3a00065 	mov	r0, #101	@ 0x65
     220:	eb0002a3 	bl	cb4 <syscall>
     224:	e1a03000 	mov	r3, r0
     228:	e1a00003 	mov	r0, r3
     22c:	e24bd004 	sub	sp, fp, #4
     230:	e8bd8800 	pop	{fp, pc}

00000234 <pg_pa>:
     234:	e92d4800 	push	{fp, lr}
     238:	e28db004 	add	fp, sp, #4
     23c:	e24dd008 	sub	sp, sp, #8
     240:	e50b0008 	str	r0, [fp, #-8]
     244:	e51b1008 	ldr	r1, [fp, #-8]
     248:	e3a00066 	mov	r0, #102	@ 0x66
     24c:	eb000298 	bl	cb4 <syscall>
     250:	e1a03000 	mov	r3, r0
     254:	e1a00003 	mov	r0, r3
     258:	e24bd004 	sub	sp, fp, #4
     25c:	e8bd8800 	pop	{fp, pc}

00000260 <pg_flags>:
     260:	e92d4800 	push	{fp, lr}
     264:	e28db004 	add	fp, sp, #4
     268:	e24dd008 	sub	sp, sp, #8
     26c:	e50b0008 	str	r0, [fp, #-8]
     270:	e51b1008 	ldr	r1, [fp, #-8]
     274:	e3a00067 	mov	r0, #103	@ 0x67
     278:	eb00028d 	bl	cb4 <syscall>
     27c:	e1a03000 	mov	r3, r0
     280:	e1a00003 	mov	r0, r3
     284:	e24bd004 	sub	sp, fp, #4
     288:	e8bd8800 	pop	{fp, pc}

0000028c <kpt>:
     28c:	e92d4800 	push	{fp, lr}
     290:	e28db004 	add	fp, sp, #4
     294:	e3a00068 	mov	r0, #104	@ 0x68
     298:	eb000285 	bl	cb4 <syscall>
     29c:	e1a03000 	mov	r3, r0
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e8bd8800 	pop	{fp, pc}

000002a8 <ugetpid>:
     2a8:	e92d4800 	push	{fp, lr}
     2ac:	e28db004 	add	fp, sp, #4
     2b0:	e3a00069 	mov	r0, #105	@ 0x69
     2b4:	eb00027e 	bl	cb4 <syscall>
     2b8:	e1a03000 	mov	r3, r0
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <strcpy>:
     2c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c8:	e28db000 	add	fp, sp, #0
     2cc:	e24dd014 	sub	sp, sp, #20
     2d0:	e50b0010 	str	r0, [fp, #-16]
     2d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     2d8:	e51b3010 	ldr	r3, [fp, #-16]
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	e1a00000 	nop			@ (mov r0, r0)
     2e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2e8:	e2823001 	add	r3, r2, #1
     2ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2f0:	e51b3010 	ldr	r3, [fp, #-16]
     2f4:	e2831001 	add	r1, r3, #1
     2f8:	e50b1010 	str	r1, [fp, #-16]
     2fc:	e5d22000 	ldrb	r2, [r2]
     300:	e5c32000 	strb	r2, [r3]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff4 	bne	2e4 <strcpy+0x20>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strcmp>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd00c 	sub	sp, sp, #12
     330:	e50b0008 	str	r0, [fp, #-8]
     334:	e50b100c 	str	r1, [fp, #-12]
     338:	ea000005 	b	354 <strcmp+0x30>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b300c 	ldr	r3, [fp, #-12]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	0a000005 	beq	37c <strcmp+0x58>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e5d32000 	ldrb	r2, [r3]
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e1520003 	cmp	r2, r3
     378:	0affffef 	beq	33c <strcmp+0x18>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e1a02003 	mov	r2, r3
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e5d33000 	ldrb	r3, [r3]
     390:	e0423003 	sub	r3, r2, r3
     394:	e1a00003 	mov	r0, r3
     398:	e28bd000 	add	sp, fp, #0
     39c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a0:	e12fff1e 	bx	lr

000003a4 <strlen>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e3a03000 	mov	r3, #0
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	ea000002 	b	3cc <strlen+0x28>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e51b2010 	ldr	r2, [fp, #-16]
     3d4:	e0823003 	add	r3, r2, r3
     3d8:	e5d33000 	ldrb	r3, [r3]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	1afffff6 	bne	3c0 <strlen+0x1c>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e1a00003 	mov	r0, r3
     3ec:	e28bd000 	add	sp, fp, #0
     3f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f4:	e12fff1e 	bx	lr

000003f8 <memset>:
     3f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3fc:	e28db000 	add	fp, sp, #0
     400:	e24dd024 	sub	sp, sp, #36	@ 0x24
     404:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     408:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     40c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     41c:	e54b300d 	strb	r3, [fp, #-13]
     420:	e55b200d 	ldrb	r2, [fp, #-13]
     424:	e1a03002 	mov	r3, r2
     428:	e1a03403 	lsl	r3, r3, #8
     42c:	e0833002 	add	r3, r3, r2
     430:	e1a03803 	lsl	r3, r3, #16
     434:	e1a02003 	mov	r2, r3
     438:	e55b300d 	ldrb	r3, [fp, #-13]
     43c:	e1a03403 	lsl	r3, r3, #8
     440:	e1822003 	orr	r2, r2, r3
     444:	e55b300d 	ldrb	r3, [fp, #-13]
     448:	e1823003 	orr	r3, r2, r3
     44c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     450:	ea000008 	b	478 <memset+0x80>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     464:	e2433001 	sub	r3, r3, #1
     468:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2833001 	add	r3, r3, #1
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     47c:	e3530000 	cmp	r3, #0
     480:	0a000003 	beq	494 <memset+0x9c>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2033003 	and	r3, r3, #3
     48c:	e3530000 	cmp	r3, #0
     490:	1affffef 	bne	454 <memset+0x5c>
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e50b300c 	str	r3, [fp, #-12]
     49c:	ea000008 	b	4c4 <memset+0xcc>
     4a0:	e51b300c 	ldr	r3, [fp, #-12]
     4a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4a8:	e5832000 	str	r2, [r3]
     4ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4b0:	e2433004 	sub	r3, r3, #4
     4b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4b8:	e51b300c 	ldr	r3, [fp, #-12]
     4bc:	e2833004 	add	r3, r3, #4
     4c0:	e50b300c 	str	r3, [fp, #-12]
     4c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4c8:	e3530003 	cmp	r3, #3
     4cc:	8afffff3 	bhi	4a0 <memset+0xa8>
     4d0:	e51b300c 	ldr	r3, [fp, #-12]
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	ea000008 	b	500 <memset+0x108>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e55b200d 	ldrb	r2, [fp, #-13]
     4e4:	e5c32000 	strb	r2, [r3]
     4e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4ec:	e2433001 	sub	r3, r3, #1
     4f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e2833001 	add	r3, r3, #1
     4fc:	e50b3008 	str	r3, [fp, #-8]
     500:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     504:	e3530000 	cmp	r3, #0
     508:	1afffff3 	bne	4dc <memset+0xe4>
     50c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     510:	e1a00003 	mov	r0, r3
     514:	e28bd000 	add	sp, fp, #0
     518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <strchr>:
     520:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     524:	e28db000 	add	fp, sp, #0
     528:	e24dd00c 	sub	sp, sp, #12
     52c:	e50b0008 	str	r0, [fp, #-8]
     530:	e1a03001 	mov	r3, r1
     534:	e54b3009 	strb	r3, [fp, #-9]
     538:	ea000009 	b	564 <strchr+0x44>
     53c:	e51b3008 	ldr	r3, [fp, #-8]
     540:	e5d33000 	ldrb	r3, [r3]
     544:	e55b2009 	ldrb	r2, [fp, #-9]
     548:	e1520003 	cmp	r2, r3
     54c:	1a000001 	bne	558 <strchr+0x38>
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	ea000007 	b	578 <strchr+0x58>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e3530000 	cmp	r3, #0
     570:	1afffff1 	bne	53c <strchr+0x1c>
     574:	e3a03000 	mov	r3, #0
     578:	e1a00003 	mov	r0, r3
     57c:	e28bd000 	add	sp, fp, #0
     580:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <gets>:
     588:	e92d4800 	push	{fp, lr}
     58c:	e28db004 	add	fp, sp, #4
     590:	e24dd018 	sub	sp, sp, #24
     594:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     598:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     59c:	e3a03000 	mov	r3, #0
     5a0:	e50b3008 	str	r3, [fp, #-8]
     5a4:	ea000016 	b	604 <gets+0x7c>
     5a8:	e24b300d 	sub	r3, fp, #13
     5ac:	e3a02001 	mov	r2, #1
     5b0:	e1a01003 	mov	r1, r3
     5b4:	e3a00000 	mov	r0, #0
     5b8:	eb0000f7 	bl	99c <read>
     5bc:	e50b000c 	str	r0, [fp, #-12]
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e3530000 	cmp	r3, #0
     5c8:	da000013 	ble	61c <gets+0x94>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e2832001 	add	r2, r3, #1
     5d4:	e50b2008 	str	r2, [fp, #-8]
     5d8:	e1a02003 	mov	r2, r3
     5dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5e0:	e0833002 	add	r3, r3, r2
     5e4:	e55b200d 	ldrb	r2, [fp, #-13]
     5e8:	e5c32000 	strb	r2, [r3]
     5ec:	e55b300d 	ldrb	r3, [fp, #-13]
     5f0:	e353000a 	cmp	r3, #10
     5f4:	0a000009 	beq	620 <gets+0x98>
     5f8:	e55b300d 	ldrb	r3, [fp, #-13]
     5fc:	e353000d 	cmp	r3, #13
     600:	0a000006 	beq	620 <gets+0x98>
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     610:	e1520003 	cmp	r2, r3
     614:	caffffe3 	bgt	5a8 <gets+0x20>
     618:	ea000000 	b	620 <gets+0x98>
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     628:	e0823003 	add	r3, r2, r3
     62c:	e3a02000 	mov	r2, #0
     630:	e5c32000 	strb	r2, [r3]
     634:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     638:	e1a00003 	mov	r0, r3
     63c:	e24bd004 	sub	sp, fp, #4
     640:	e8bd8800 	pop	{fp, pc}

00000644 <stat>:
     644:	e92d4800 	push	{fp, lr}
     648:	e28db004 	add	fp, sp, #4
     64c:	e24dd010 	sub	sp, sp, #16
     650:	e50b0010 	str	r0, [fp, #-16]
     654:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     658:	e3a01000 	mov	r1, #0
     65c:	e51b0010 	ldr	r0, [fp, #-16]
     660:	eb0000fa 	bl	a50 <open>
     664:	e50b0008 	str	r0, [fp, #-8]
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e3530000 	cmp	r3, #0
     670:	aa000001 	bge	67c <stat+0x38>
     674:	e3e03000 	mvn	r3, #0
     678:	ea000006 	b	698 <stat+0x54>
     67c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     680:	e51b0008 	ldr	r0, [fp, #-8]
     684:	eb00010c 	bl	abc <fstat>
     688:	e50b000c 	str	r0, [fp, #-12]
     68c:	e51b0008 	ldr	r0, [fp, #-8]
     690:	eb0000d3 	bl	9e4 <close>
     694:	e51b300c 	ldr	r3, [fp, #-12]
     698:	e1a00003 	mov	r0, r3
     69c:	e24bd004 	sub	sp, fp, #4
     6a0:	e8bd8800 	pop	{fp, pc}

000006a4 <atoi>:
     6a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a8:	e28db000 	add	fp, sp, #0
     6ac:	e24dd014 	sub	sp, sp, #20
     6b0:	e50b0010 	str	r0, [fp, #-16]
     6b4:	e3a03000 	mov	r3, #0
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	ea00000c 	b	6f4 <atoi+0x50>
     6c0:	e51b2008 	ldr	r2, [fp, #-8]
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a03103 	lsl	r3, r3, #2
     6cc:	e0833002 	add	r3, r3, r2
     6d0:	e1a03083 	lsl	r3, r3, #1
     6d4:	e1a01003 	mov	r1, r3
     6d8:	e51b3010 	ldr	r3, [fp, #-16]
     6dc:	e2832001 	add	r2, r3, #1
     6e0:	e50b2010 	str	r2, [fp, #-16]
     6e4:	e5d33000 	ldrb	r3, [r3]
     6e8:	e0813003 	add	r3, r1, r3
     6ec:	e2433030 	sub	r3, r3, #48	@ 0x30
     6f0:	e50b3008 	str	r3, [fp, #-8]
     6f4:	e51b3010 	ldr	r3, [fp, #-16]
     6f8:	e5d33000 	ldrb	r3, [r3]
     6fc:	e353002f 	cmp	r3, #47	@ 0x2f
     700:	9a000003 	bls	714 <atoi+0x70>
     704:	e51b3010 	ldr	r3, [fp, #-16]
     708:	e5d33000 	ldrb	r3, [r3]
     70c:	e3530039 	cmp	r3, #57	@ 0x39
     710:	9affffea 	bls	6c0 <atoi+0x1c>
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e1a00003 	mov	r0, r3
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <memmove>:
     728:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     72c:	e28db000 	add	fp, sp, #0
     730:	e24dd01c 	sub	sp, sp, #28
     734:	e50b0010 	str	r0, [fp, #-16]
     738:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     73c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     740:	e51b3010 	ldr	r3, [fp, #-16]
     744:	e50b3008 	str	r3, [fp, #-8]
     748:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     74c:	e50b300c 	str	r3, [fp, #-12]
     750:	ea000007 	b	774 <memmove+0x4c>
     754:	e51b200c 	ldr	r2, [fp, #-12]
     758:	e2823001 	add	r3, r2, #1
     75c:	e50b300c 	str	r3, [fp, #-12]
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e2831001 	add	r1, r3, #1
     768:	e50b1008 	str	r1, [fp, #-8]
     76c:	e5d22000 	ldrb	r2, [r2]
     770:	e5c32000 	strb	r2, [r3]
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e2432001 	sub	r2, r3, #1
     77c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     780:	e3530000 	cmp	r3, #0
     784:	cafffff2 	bgt	754 <memmove+0x2c>
     788:	e51b3010 	ldr	r3, [fp, #-16]
     78c:	e1a00003 	mov	r0, r3
     790:	e28bd000 	add	sp, fp, #0
     794:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <strncmp>:
     79c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7a0:	e28db000 	add	fp, sp, #0
     7a4:	e24dd014 	sub	sp, sp, #20
     7a8:	e50b0008 	str	r0, [fp, #-8]
     7ac:	e50b100c 	str	r1, [fp, #-12]
     7b0:	e50b2010 	str	r2, [fp, #-16]
     7b4:	ea000008 	b	7dc <strncmp+0x40>
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2833001 	add	r3, r3, #1
     7c0:	e50b3008 	str	r3, [fp, #-8]
     7c4:	e51b300c 	ldr	r3, [fp, #-12]
     7c8:	e2833001 	add	r3, r3, #1
     7cc:	e50b300c 	str	r3, [fp, #-12]
     7d0:	e51b3010 	ldr	r3, [fp, #-16]
     7d4:	e2433001 	sub	r3, r3, #1
     7d8:	e50b3010 	str	r3, [fp, #-16]
     7dc:	e51b3010 	ldr	r3, [fp, #-16]
     7e0:	e3530000 	cmp	r3, #0
     7e4:	da00000d 	ble	820 <strncmp+0x84>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5d33000 	ldrb	r3, [r3]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	0a000009 	beq	820 <strncmp+0x84>
     7f8:	e51b300c 	ldr	r3, [fp, #-12]
     7fc:	e5d33000 	ldrb	r3, [r3]
     800:	e3530000 	cmp	r3, #0
     804:	0a000005 	beq	820 <strncmp+0x84>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5d32000 	ldrb	r2, [r3]
     810:	e51b300c 	ldr	r3, [fp, #-12]
     814:	e5d33000 	ldrb	r3, [r3]
     818:	e1520003 	cmp	r2, r3
     81c:	0affffe5 	beq	7b8 <strncmp+0x1c>
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e3530000 	cmp	r3, #0
     828:	1a000001 	bne	834 <strncmp+0x98>
     82c:	e3a03000 	mov	r3, #0
     830:	ea000005 	b	84c <strncmp+0xb0>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e5d33000 	ldrb	r3, [r3]
     83c:	e1a02003 	mov	r2, r3
     840:	e51b300c 	ldr	r3, [fp, #-12]
     844:	e5d33000 	ldrb	r3, [r3]
     848:	e0423003 	sub	r3, r2, r3
     84c:	e1a00003 	mov	r0, r3
     850:	e28bd000 	add	sp, fp, #0
     854:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <strncpy>:
     85c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     860:	e28db000 	add	fp, sp, #0
     864:	e24dd01c 	sub	sp, sp, #28
     868:	e50b0010 	str	r0, [fp, #-16]
     86c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     870:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     874:	e51b3010 	ldr	r3, [fp, #-16]
     878:	e50b3008 	str	r3, [fp, #-8]
     87c:	ea00000a 	b	8ac <strncpy+0x50>
     880:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     884:	e2823001 	add	r3, r2, #1
     888:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e2831001 	add	r1, r3, #1
     894:	e50b1008 	str	r1, [fp, #-8]
     898:	e5d22000 	ldrb	r2, [r2]
     89c:	e5c32000 	strb	r2, [r3]
     8a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8a4:	e2433001 	sub	r3, r3, #1
     8a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     8ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8b0:	e3530000 	cmp	r3, #0
     8b4:	da00000c 	ble	8ec <strncpy+0x90>
     8b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8bc:	e5d33000 	ldrb	r3, [r3]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	1affffed 	bne	880 <strncpy+0x24>
     8c8:	ea000007 	b	8ec <strncpy+0x90>
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e2832001 	add	r2, r3, #1
     8d4:	e50b2008 	str	r2, [fp, #-8]
     8d8:	e3a02000 	mov	r2, #0
     8dc:	e5c32000 	strb	r2, [r3]
     8e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8e4:	e2433001 	sub	r3, r3, #1
     8e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     8ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8f0:	e3530000 	cmp	r3, #0
     8f4:	cafffff4 	bgt	8cc <strncpy+0x70>
     8f8:	e51b3010 	ldr	r3, [fp, #-16]
     8fc:	e1a00003 	mov	r0, r3
     900:	e28bd000 	add	sp, fp, #0
     904:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <fork>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00001 	mov	r0, #1
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <exit>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00002 	mov	r0, #2
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <wait>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00003 	mov	r0, #3
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <pipe>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00004 	mov	r0, #4
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <read>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00005 	mov	r0, #5
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <write>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00010 	mov	r0, #16
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <close>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00015 	mov	r0, #21
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <kill>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00006 	mov	r0, #6
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <exec>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00007 	mov	r0, #7
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <open>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a0000f 	mov	r0, #15
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <mknod>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00011 	mov	r0, #17
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <unlink>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00012 	mov	r0, #18
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <fstat>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00008 	mov	r0, #8
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <link>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00013 	mov	r0, #19
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <mkdir>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00014 	mov	r0, #20
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <chdir>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00009 	mov	r0, #9
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <dup>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000a 	mov	r0, #10
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <getpid>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a0000b 	mov	r0, #11
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <sbrk>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a0000c 	mov	r0, #12
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <sleep>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000d 	mov	r0, #13
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <uptime>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a0000e 	mov	r0, #14
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <proclist>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00016 	mov	r0, #22
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <settickets>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00017 	mov	r0, #23
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <srand>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00018 	mov	r0, #24
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <getpinfo>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00019 	mov	r0, #25
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <print_pt>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a0006a 	mov	r0, #106	@ 0x6a
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <syscall>:
     cb4:	ef000000 	svc	0x00000000
     cb8:	e12fff1e 	bx	lr

00000cbc <putc>:
     cbc:	e92d4800 	push	{fp, lr}
     cc0:	e28db004 	add	fp, sp, #4
     cc4:	e24dd008 	sub	sp, sp, #8
     cc8:	e50b0008 	str	r0, [fp, #-8]
     ccc:	e1a03001 	mov	r3, r1
     cd0:	e54b3009 	strb	r3, [fp, #-9]
     cd4:	e24b3009 	sub	r3, fp, #9
     cd8:	e3a02001 	mov	r2, #1
     cdc:	e1a01003 	mov	r1, r3
     ce0:	e51b0008 	ldr	r0, [fp, #-8]
     ce4:	ebffff35 	bl	9c0 <write>
     ce8:	e1a00000 	nop			@ (mov r0, r0)
     cec:	e24bd004 	sub	sp, fp, #4
     cf0:	e8bd8800 	pop	{fp, pc}

00000cf4 <printint>:
     cf4:	e92d4800 	push	{fp, lr}
     cf8:	e28db004 	add	fp, sp, #4
     cfc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d00:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d04:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d08:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d0c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d10:	e3a03000 	mov	r3, #0
     d14:	e50b300c 	str	r3, [fp, #-12]
     d18:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d1c:	e3530000 	cmp	r3, #0
     d20:	0a000008 	beq	d48 <printint+0x54>
     d24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d28:	e3530000 	cmp	r3, #0
     d2c:	aa000005 	bge	d48 <printint+0x54>
     d30:	e3a03001 	mov	r3, #1
     d34:	e50b300c 	str	r3, [fp, #-12]
     d38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d3c:	e2633000 	rsb	r3, r3, #0
     d40:	e50b3010 	str	r3, [fp, #-16]
     d44:	ea000001 	b	d50 <printint+0x5c>
     d48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d4c:	e50b3010 	str	r3, [fp, #-16]
     d50:	e3a03000 	mov	r3, #0
     d54:	e50b3008 	str	r3, [fp, #-8]
     d58:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d5c:	e51b3010 	ldr	r3, [fp, #-16]
     d60:	e1a01002 	mov	r1, r2
     d64:	e1a00003 	mov	r0, r3
     d68:	eb0001d5 	bl	14c4 <__aeabi_uidivmod>
     d6c:	e1a03001 	mov	r3, r1
     d70:	e1a01003 	mov	r1, r3
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e2832001 	add	r2, r3, #1
     d7c:	e50b2008 	str	r2, [fp, #-8]
     d80:	e59f20a0 	ldr	r2, [pc, #160]	@ e28 <printint+0x134>
     d84:	e7d22001 	ldrb	r2, [r2, r1]
     d88:	e2433004 	sub	r3, r3, #4
     d8c:	e083300b 	add	r3, r3, fp
     d90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d94:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d98:	e1a01003 	mov	r1, r3
     d9c:	e51b0010 	ldr	r0, [fp, #-16]
     da0:	eb00018a 	bl	13d0 <__udivsi3>
     da4:	e1a03000 	mov	r3, r0
     da8:	e50b3010 	str	r3, [fp, #-16]
     dac:	e51b3010 	ldr	r3, [fp, #-16]
     db0:	e3530000 	cmp	r3, #0
     db4:	1affffe7 	bne	d58 <printint+0x64>
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e3530000 	cmp	r3, #0
     dc0:	0a00000e 	beq	e00 <printint+0x10c>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e2832001 	add	r2, r3, #1
     dcc:	e50b2008 	str	r2, [fp, #-8]
     dd0:	e2433004 	sub	r3, r3, #4
     dd4:	e083300b 	add	r3, r3, fp
     dd8:	e3a0202d 	mov	r2, #45	@ 0x2d
     ddc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     de0:	ea000006 	b	e00 <printint+0x10c>
     de4:	e24b2020 	sub	r2, fp, #32
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e0823003 	add	r3, r2, r3
     df0:	e5d33000 	ldrb	r3, [r3]
     df4:	e1a01003 	mov	r1, r3
     df8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     dfc:	ebffffae 	bl	cbc <putc>
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e2433001 	sub	r3, r3, #1
     e08:	e50b3008 	str	r3, [fp, #-8]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e3530000 	cmp	r3, #0
     e14:	aafffff2 	bge	de4 <printint+0xf0>
     e18:	e1a00000 	nop			@ (mov r0, r0)
     e1c:	e1a00000 	nop			@ (mov r0, r0)
     e20:	e24bd004 	sub	sp, fp, #4
     e24:	e8bd8800 	pop	{fp, pc}
     e28:	000016d8 	.word	0x000016d8

00000e2c <printf>:
     e2c:	e92d000e 	push	{r1, r2, r3}
     e30:	e92d4800 	push	{fp, lr}
     e34:	e28db004 	add	fp, sp, #4
     e38:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e3c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e40:	e3a03000 	mov	r3, #0
     e44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e48:	e28b3008 	add	r3, fp, #8
     e4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e50:	e3a03000 	mov	r3, #0
     e54:	e50b3010 	str	r3, [fp, #-16]
     e58:	ea000074 	b	1030 <printf+0x204>
     e5c:	e59b2004 	ldr	r2, [fp, #4]
     e60:	e51b3010 	ldr	r3, [fp, #-16]
     e64:	e0823003 	add	r3, r2, r3
     e68:	e5d33000 	ldrb	r3, [r3]
     e6c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e74:	e3530000 	cmp	r3, #0
     e78:	1a00000b 	bne	eac <printf+0x80>
     e7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e80:	e3530025 	cmp	r3, #37	@ 0x25
     e84:	1a000002 	bne	e94 <printf+0x68>
     e88:	e3a03025 	mov	r3, #37	@ 0x25
     e8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e90:	ea000063 	b	1024 <printf+0x1f8>
     e94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e98:	e6ef3073 	uxtb	r3, r3
     e9c:	e1a01003 	mov	r1, r3
     ea0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea4:	ebffff84 	bl	cbc <putc>
     ea8:	ea00005d 	b	1024 <printf+0x1f8>
     eac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     eb0:	e3530025 	cmp	r3, #37	@ 0x25
     eb4:	1a00005a 	bne	1024 <printf+0x1f8>
     eb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ebc:	e3530064 	cmp	r3, #100	@ 0x64
     ec0:	1a00000a 	bne	ef0 <printf+0xc4>
     ec4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e1a01003 	mov	r1, r3
     ed0:	e3a03001 	mov	r3, #1
     ed4:	e3a0200a 	mov	r2, #10
     ed8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     edc:	ebffff84 	bl	cf4 <printint>
     ee0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee4:	e2833004 	add	r3, r3, #4
     ee8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eec:	ea00004a 	b	101c <printf+0x1f0>
     ef0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef4:	e3530078 	cmp	r3, #120	@ 0x78
     ef8:	0a000002 	beq	f08 <printf+0xdc>
     efc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f00:	e3530070 	cmp	r3, #112	@ 0x70
     f04:	1a00000a 	bne	f34 <printf+0x108>
     f08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f0c:	e5933000 	ldr	r3, [r3]
     f10:	e1a01003 	mov	r1, r3
     f14:	e3a03000 	mov	r3, #0
     f18:	e3a02010 	mov	r2, #16
     f1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f20:	ebffff73 	bl	cf4 <printint>
     f24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f28:	e2833004 	add	r3, r3, #4
     f2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f30:	ea000039 	b	101c <printf+0x1f0>
     f34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f38:	e3530073 	cmp	r3, #115	@ 0x73
     f3c:	1a000018 	bne	fa4 <printf+0x178>
     f40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f50:	e2833004 	add	r3, r3, #4
     f54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e3530000 	cmp	r3, #0
     f60:	1a00000a 	bne	f90 <printf+0x164>
     f64:	e59f30f4 	ldr	r3, [pc, #244]	@ 1060 <printf+0x234>
     f68:	e50b300c 	str	r3, [fp, #-12]
     f6c:	ea000007 	b	f90 <printf+0x164>
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e5d33000 	ldrb	r3, [r3]
     f78:	e1a01003 	mov	r1, r3
     f7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f80:	ebffff4d 	bl	cbc <putc>
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e2833001 	add	r3, r3, #1
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5d33000 	ldrb	r3, [r3]
     f98:	e3530000 	cmp	r3, #0
     f9c:	1afffff3 	bne	f70 <printf+0x144>
     fa0:	ea00001d 	b	101c <printf+0x1f0>
     fa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fa8:	e3530063 	cmp	r3, #99	@ 0x63
     fac:	1a000009 	bne	fd8 <printf+0x1ac>
     fb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e6ef3073 	uxtb	r3, r3
     fbc:	e1a01003 	mov	r1, r3
     fc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc4:	ebffff3c 	bl	cbc <putc>
     fc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fcc:	e2833004 	add	r3, r3, #4
     fd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	ea000010 	b	101c <printf+0x1f0>
     fd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fdc:	e3530025 	cmp	r3, #37	@ 0x25
     fe0:	1a000005 	bne	ffc <printf+0x1d0>
     fe4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe8:	e6ef3073 	uxtb	r3, r3
     fec:	e1a01003 	mov	r1, r3
     ff0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff4:	ebffff30 	bl	cbc <putc>
     ff8:	ea000007 	b	101c <printf+0x1f0>
     ffc:	e3a01025 	mov	r1, #37	@ 0x25
    1000:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1004:	ebffff2c 	bl	cbc <putc>
    1008:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    100c:	e6ef3073 	uxtb	r3, r3
    1010:	e1a01003 	mov	r1, r3
    1014:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1018:	ebffff27 	bl	cbc <putc>
    101c:	e3a03000 	mov	r3, #0
    1020:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1024:	e51b3010 	ldr	r3, [fp, #-16]
    1028:	e2833001 	add	r3, r3, #1
    102c:	e50b3010 	str	r3, [fp, #-16]
    1030:	e59b2004 	ldr	r2, [fp, #4]
    1034:	e51b3010 	ldr	r3, [fp, #-16]
    1038:	e0823003 	add	r3, r2, r3
    103c:	e5d33000 	ldrb	r3, [r3]
    1040:	e3530000 	cmp	r3, #0
    1044:	1affff84 	bne	e5c <printf+0x30>
    1048:	e1a00000 	nop			@ (mov r0, r0)
    104c:	e1a00000 	nop			@ (mov r0, r0)
    1050:	e24bd004 	sub	sp, fp, #4
    1054:	e8bd4800 	pop	{fp, lr}
    1058:	e28dd00c 	add	sp, sp, #12
    105c:	e12fff1e 	bx	lr
    1060:	000016cc 	.word	0x000016cc

00001064 <free>:
    1064:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1068:	e28db000 	add	fp, sp, #0
    106c:	e24dd014 	sub	sp, sp, #20
    1070:	e50b0010 	str	r0, [fp, #-16]
    1074:	e51b3010 	ldr	r3, [fp, #-16]
    1078:	e2433008 	sub	r3, r3, #8
    107c:	e50b300c 	str	r3, [fp, #-12]
    1080:	e59f3154 	ldr	r3, [pc, #340]	@ 11dc <free+0x178>
    1084:	e5933000 	ldr	r3, [r3]
    1088:	e50b3008 	str	r3, [fp, #-8]
    108c:	ea000010 	b	10d4 <free+0x70>
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e51b2008 	ldr	r2, [fp, #-8]
    109c:	e1520003 	cmp	r2, r3
    10a0:	3a000008 	bcc	10c8 <free+0x64>
    10a4:	e51b200c 	ldr	r2, [fp, #-12]
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e1520003 	cmp	r2, r3
    10b0:	8a000010 	bhi	10f8 <free+0x94>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5933000 	ldr	r3, [r3]
    10bc:	e51b200c 	ldr	r2, [fp, #-12]
    10c0:	e1520003 	cmp	r2, r3
    10c4:	3a00000b 	bcc	10f8 <free+0x94>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e50b3008 	str	r3, [fp, #-8]
    10d4:	e51b200c 	ldr	r2, [fp, #-12]
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e1520003 	cmp	r2, r3
    10e0:	9affffea 	bls	1090 <free+0x2c>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e5933000 	ldr	r3, [r3]
    10ec:	e51b200c 	ldr	r2, [fp, #-12]
    10f0:	e1520003 	cmp	r2, r3
    10f4:	2affffe5 	bcs	1090 <free+0x2c>
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5933004 	ldr	r3, [r3, #4]
    1100:	e1a03183 	lsl	r3, r3, #3
    1104:	e51b200c 	ldr	r2, [fp, #-12]
    1108:	e0822003 	add	r2, r2, r3
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e1520003 	cmp	r2, r3
    1118:	1a00000d 	bne	1154 <free+0xf0>
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e5932004 	ldr	r2, [r3, #4]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e5933004 	ldr	r3, [r3, #4]
    1130:	e0822003 	add	r2, r2, r3
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e5832004 	str	r2, [r3, #4]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933000 	ldr	r3, [r3]
    1144:	e5932000 	ldr	r2, [r3]
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e5832000 	str	r2, [r3]
    1150:	ea000003 	b	1164 <free+0x100>
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5932000 	ldr	r2, [r3]
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5832000 	str	r2, [r3]
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e5933004 	ldr	r3, [r3, #4]
    116c:	e1a03183 	lsl	r3, r3, #3
    1170:	e51b2008 	ldr	r2, [fp, #-8]
    1174:	e0823003 	add	r3, r2, r3
    1178:	e51b200c 	ldr	r2, [fp, #-12]
    117c:	e1520003 	cmp	r2, r3
    1180:	1a00000b 	bne	11b4 <free+0x150>
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5932004 	ldr	r2, [r3, #4]
    118c:	e51b300c 	ldr	r3, [fp, #-12]
    1190:	e5933004 	ldr	r3, [r3, #4]
    1194:	e0822003 	add	r2, r2, r3
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5832004 	str	r2, [r3, #4]
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5932000 	ldr	r2, [r3]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e5832000 	str	r2, [r3]
    11b0:	ea000002 	b	11c0 <free+0x15c>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e51b200c 	ldr	r2, [fp, #-12]
    11bc:	e5832000 	str	r2, [r3]
    11c0:	e59f2014 	ldr	r2, [pc, #20]	@ 11dc <free+0x178>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5823000 	str	r3, [r2]
    11cc:	e1a00000 	nop			@ (mov r0, r0)
    11d0:	e28bd000 	add	sp, fp, #0
    11d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11d8:	e12fff1e 	bx	lr
    11dc:	000016f4 	.word	0x000016f4

000011e0 <morecore>:
    11e0:	e92d4800 	push	{fp, lr}
    11e4:	e28db004 	add	fp, sp, #4
    11e8:	e24dd010 	sub	sp, sp, #16
    11ec:	e50b0010 	str	r0, [fp, #-16]
    11f0:	e51b3010 	ldr	r3, [fp, #-16]
    11f4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    11f8:	2a000001 	bcs	1204 <morecore+0x24>
    11fc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1200:	e50b3010 	str	r3, [fp, #-16]
    1204:	e51b3010 	ldr	r3, [fp, #-16]
    1208:	e1a03183 	lsl	r3, r3, #3
    120c:	e1a00003 	mov	r0, r3
    1210:	ebfffe5f 	bl	b94 <sbrk>
    1214:	e50b0008 	str	r0, [fp, #-8]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e3730001 	cmn	r3, #1
    1220:	1a000001 	bne	122c <morecore+0x4c>
    1224:	e3a03000 	mov	r3, #0
    1228:	ea00000a 	b	1258 <morecore+0x78>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e50b300c 	str	r3, [fp, #-12]
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e51b2010 	ldr	r2, [fp, #-16]
    123c:	e5832004 	str	r2, [r3, #4]
    1240:	e51b300c 	ldr	r3, [fp, #-12]
    1244:	e2833008 	add	r3, r3, #8
    1248:	e1a00003 	mov	r0, r3
    124c:	ebffff84 	bl	1064 <free>
    1250:	e59f300c 	ldr	r3, [pc, #12]	@ 1264 <morecore+0x84>
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e1a00003 	mov	r0, r3
    125c:	e24bd004 	sub	sp, fp, #4
    1260:	e8bd8800 	pop	{fp, pc}
    1264:	000016f4 	.word	0x000016f4

00001268 <malloc>:
    1268:	e92d4800 	push	{fp, lr}
    126c:	e28db004 	add	fp, sp, #4
    1270:	e24dd018 	sub	sp, sp, #24
    1274:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1278:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    127c:	e2833007 	add	r3, r3, #7
    1280:	e1a031a3 	lsr	r3, r3, #3
    1284:	e2833001 	add	r3, r3, #1
    1288:	e50b3010 	str	r3, [fp, #-16]
    128c:	e59f3134 	ldr	r3, [pc, #308]	@ 13c8 <malloc+0x160>
    1290:	e5933000 	ldr	r3, [r3]
    1294:	e50b300c 	str	r3, [fp, #-12]
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e3530000 	cmp	r3, #0
    12a0:	1a00000b 	bne	12d4 <malloc+0x6c>
    12a4:	e59f3120 	ldr	r3, [pc, #288]	@ 13cc <malloc+0x164>
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e59f2114 	ldr	r2, [pc, #276]	@ 13c8 <malloc+0x160>
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e5823000 	str	r3, [r2]
    12b8:	e59f3108 	ldr	r3, [pc, #264]	@ 13c8 <malloc+0x160>
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e59f2104 	ldr	r2, [pc, #260]	@ 13cc <malloc+0x164>
    12c4:	e5823000 	str	r3, [r2]
    12c8:	e59f30fc 	ldr	r3, [pc, #252]	@ 13cc <malloc+0x164>
    12cc:	e3a02000 	mov	r2, #0
    12d0:	e5832004 	str	r2, [r3, #4]
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e50b3008 	str	r3, [fp, #-8]
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5933004 	ldr	r3, [r3, #4]
    12e8:	e51b2010 	ldr	r2, [fp, #-16]
    12ec:	e1520003 	cmp	r2, r3
    12f0:	8a00001e 	bhi	1370 <malloc+0x108>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933004 	ldr	r3, [r3, #4]
    12fc:	e51b2010 	ldr	r2, [fp, #-16]
    1300:	e1520003 	cmp	r2, r3
    1304:	1a000004 	bne	131c <malloc+0xb4>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5932000 	ldr	r2, [r3]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5832000 	str	r2, [r3]
    1318:	ea00000e 	b	1358 <malloc+0xf0>
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5932004 	ldr	r2, [r3, #4]
    1324:	e51b3010 	ldr	r3, [fp, #-16]
    1328:	e0422003 	sub	r2, r2, r3
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e5832004 	str	r2, [r3, #4]
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5933004 	ldr	r3, [r3, #4]
    133c:	e1a03183 	lsl	r3, r3, #3
    1340:	e51b2008 	ldr	r2, [fp, #-8]
    1344:	e0823003 	add	r3, r2, r3
    1348:	e50b3008 	str	r3, [fp, #-8]
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e51b2010 	ldr	r2, [fp, #-16]
    1354:	e5832004 	str	r2, [r3, #4]
    1358:	e59f2068 	ldr	r2, [pc, #104]	@ 13c8 <malloc+0x160>
    135c:	e51b300c 	ldr	r3, [fp, #-12]
    1360:	e5823000 	str	r3, [r2]
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e2833008 	add	r3, r3, #8
    136c:	ea000012 	b	13bc <malloc+0x154>
    1370:	e59f3050 	ldr	r3, [pc, #80]	@ 13c8 <malloc+0x160>
    1374:	e5933000 	ldr	r3, [r3]
    1378:	e51b2008 	ldr	r2, [fp, #-8]
    137c:	e1520003 	cmp	r2, r3
    1380:	1a000007 	bne	13a4 <malloc+0x13c>
    1384:	e51b0010 	ldr	r0, [fp, #-16]
    1388:	ebffff94 	bl	11e0 <morecore>
    138c:	e50b0008 	str	r0, [fp, #-8]
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e3530000 	cmp	r3, #0
    1398:	1a000001 	bne	13a4 <malloc+0x13c>
    139c:	e3a03000 	mov	r3, #0
    13a0:	ea000005 	b	13bc <malloc+0x154>
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e50b300c 	str	r3, [fp, #-12]
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5933000 	ldr	r3, [r3]
    13b4:	e50b3008 	str	r3, [fp, #-8]
    13b8:	eaffffc8 	b	12e0 <malloc+0x78>
    13bc:	e1a00003 	mov	r0, r3
    13c0:	e24bd004 	sub	sp, fp, #4
    13c4:	e8bd8800 	pop	{fp, pc}
    13c8:	000016f4 	.word	0x000016f4
    13cc:	000016ec 	.word	0x000016ec

000013d0 <__udivsi3>:
    13d0:	e2512001 	subs	r2, r1, #1
    13d4:	012fff1e 	bxeq	lr
    13d8:	3a000036 	bcc	14b8 <__udivsi3+0xe8>
    13dc:	e1500001 	cmp	r0, r1
    13e0:	9a000022 	bls	1470 <__udivsi3+0xa0>
    13e4:	e1110002 	tst	r1, r2
    13e8:	0a000023 	beq	147c <__udivsi3+0xac>
    13ec:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    13f0:	01a01181 	lsleq	r1, r1, #3
    13f4:	03a03008 	moveq	r3, #8
    13f8:	13a03001 	movne	r3, #1
    13fc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1400:	31510000 	cmpcc	r1, r0
    1404:	31a01201 	lslcc	r1, r1, #4
    1408:	31a03203 	lslcc	r3, r3, #4
    140c:	3afffffa 	bcc	13fc <__udivsi3+0x2c>
    1410:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1414:	31510000 	cmpcc	r1, r0
    1418:	31a01081 	lslcc	r1, r1, #1
    141c:	31a03083 	lslcc	r3, r3, #1
    1420:	3afffffa 	bcc	1410 <__udivsi3+0x40>
    1424:	e3a02000 	mov	r2, #0
    1428:	e1500001 	cmp	r0, r1
    142c:	20400001 	subcs	r0, r0, r1
    1430:	21822003 	orrcs	r2, r2, r3
    1434:	e15000a1 	cmp	r0, r1, lsr #1
    1438:	204000a1 	subcs	r0, r0, r1, lsr #1
    143c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1440:	e1500121 	cmp	r0, r1, lsr #2
    1444:	20400121 	subcs	r0, r0, r1, lsr #2
    1448:	21822123 	orrcs	r2, r2, r3, lsr #2
    144c:	e15001a1 	cmp	r0, r1, lsr #3
    1450:	204001a1 	subcs	r0, r0, r1, lsr #3
    1454:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1458:	e3500000 	cmp	r0, #0
    145c:	11b03223 	lsrsne	r3, r3, #4
    1460:	11a01221 	lsrne	r1, r1, #4
    1464:	1affffef 	bne	1428 <__udivsi3+0x58>
    1468:	e1a00002 	mov	r0, r2
    146c:	e12fff1e 	bx	lr
    1470:	03a00001 	moveq	r0, #1
    1474:	13a00000 	movne	r0, #0
    1478:	e12fff1e 	bx	lr
    147c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1480:	21a01821 	lsrcs	r1, r1, #16
    1484:	23a02010 	movcs	r2, #16
    1488:	33a02000 	movcc	r2, #0
    148c:	e3510c01 	cmp	r1, #256	@ 0x100
    1490:	21a01421 	lsrcs	r1, r1, #8
    1494:	22822008 	addcs	r2, r2, #8
    1498:	e3510010 	cmp	r1, #16
    149c:	21a01221 	lsrcs	r1, r1, #4
    14a0:	22822004 	addcs	r2, r2, #4
    14a4:	e3510004 	cmp	r1, #4
    14a8:	82822003 	addhi	r2, r2, #3
    14ac:	908220a1 	addls	r2, r2, r1, lsr #1
    14b0:	e1a00230 	lsr	r0, r0, r2
    14b4:	e12fff1e 	bx	lr
    14b8:	e3500000 	cmp	r0, #0
    14bc:	13e00000 	mvnne	r0, #0
    14c0:	ea000007 	b	14e4 <__aeabi_idiv0>

000014c4 <__aeabi_uidivmod>:
    14c4:	e3510000 	cmp	r1, #0
    14c8:	0afffffa 	beq	14b8 <__udivsi3+0xe8>
    14cc:	e92d4003 	push	{r0, r1, lr}
    14d0:	ebffffbe 	bl	13d0 <__udivsi3>
    14d4:	e8bd4006 	pop	{r1, r2, lr}
    14d8:	e0030092 	mul	r3, r2, r0
    14dc:	e0411003 	sub	r1, r1, r3
    14e0:	e12fff1e 	bx	lr

000014e4 <__aeabi_idiv0>:
    14e4:	e12fff1e 	bx	lr
