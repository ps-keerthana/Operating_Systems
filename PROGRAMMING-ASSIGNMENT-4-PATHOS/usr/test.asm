
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
      30:	eb0004af 	bl	12f4 <printf>
      34:	e51b200c 	ldr	r2, [fp, #-12]
      38:	e59f10c0 	ldr	r1, [pc, #192]	@ 100 <main+0x100>
      3c:	e3a00001 	mov	r0, #1
      40:	eb0004ab 	bl	12f4 <printf>
      44:	e51b0010 	ldr	r0, [fp, #-16]
      48:	eb0003a9 	bl	ef4 <sbrk>
      4c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      54:	e3730001 	cmn	r3, #1
      58:	1a000003 	bne	6c <main+0x6c>
      5c:	e59f10a0 	ldr	r1, [pc, #160]	@ 104 <main+0x104>
      60:	e3a00001 	mov	r0, #1
      64:	eb0004a2 	bl	12f4 <printf>
      68:	eb000308 	bl	c90 <exit>
      6c:	e59f1094 	ldr	r1, [pc, #148]	@ 108 <main+0x108>
      70:	e3a00001 	mov	r0, #1
      74:	eb00049e 	bl	12f4 <printf>
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
      c8:	eb000489 	bl	12f4 <printf>
      cc:	e59f103c 	ldr	r1, [pc, #60]	@ 110 <main+0x110>
      d0:	e3a00001 	mov	r0, #1
      d4:	eb000486 	bl	12f4 <printf>
      d8:	eb0003c4 	bl	ff0 <print_pt>
      dc:	e59f1030 	ldr	r1, [pc, #48]	@ 114 <main+0x114>
      e0:	e3a00001 	mov	r0, #1
      e4:	eb000482 	bl	12f4 <printf>
      e8:	eb00001c 	bl	160 <ugetpid_test>
      ec:	e59f1024 	ldr	r1, [pc, #36]	@ 118 <main+0x118>
      f0:	e3a00001 	mov	r0, #1
      f4:	eb00047e 	bl	12f4 <printf>
      f8:	eb0002e4 	bl	c90 <exit>
      fc:	000019b0 	.word	0x000019b0
     100:	000019e0 	.word	0x000019e0
     104:	00001a1c 	.word	0x00001a1c
     108:	00001a2c 	.word	0x00001a2c
     10c:	00001a78 	.word	0x00001a78
     110:	00001aa4 	.word	0x00001aa4
     114:	00001adc 	.word	0x00001adc
     118:	00001afc 	.word	0x00001afc

0000011c <err>:
     11c:	e92d4810 	push	{r4, fp, lr}
     120:	e28db008 	add	fp, sp, #8
     124:	e24dd014 	sub	sp, sp, #20
     128:	e50b0010 	str	r0, [fp, #-16]
     12c:	e59f3024 	ldr	r3, [pc, #36]	@ 158 <err+0x3c>
     130:	e5934000 	ldr	r4, [r3]
     134:	eb000365 	bl	ed0 <getpid>
     138:	e1a03000 	mov	r3, r0
     13c:	e58d3000 	str	r3, [sp]
     140:	e51b3010 	ldr	r3, [fp, #-16]
     144:	e1a02004 	mov	r2, r4
     148:	e59f100c 	ldr	r1, [pc, #12]	@ 15c <err+0x40>
     14c:	e3a00001 	mov	r0, #1
     150:	eb000467 	bl	12f4 <printf>
     154:	eb0002cd 	bl	c90 <exit>
     158:	00001b9c 	.word	0x00001b9c
     15c:	00001b2c 	.word	0x00001b2c

00000160 <ugetpid_test>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd008 	sub	sp, sp, #8
     16c:	e59f1080 	ldr	r1, [pc, #128]	@ 1f4 <ugetpid_test+0x94>
     170:	e3a00001 	mov	r0, #1
     174:	eb00045e 	bl	12f4 <printf>
     178:	e59f3078 	ldr	r3, [pc, #120]	@ 1f8 <ugetpid_test+0x98>
     17c:	e59f2078 	ldr	r2, [pc, #120]	@ 1fc <ugetpid_test+0x9c>
     180:	e5832000 	str	r2, [r3]
     184:	e3a03000 	mov	r3, #0
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	ea00000f 	b	1d0 <ugetpid_test+0x70>
     190:	eb0002b5 	bl	c6c <fork>
     194:	e50b000c 	str	r0, [fp, #-12]
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e3530000 	cmp	r3, #0
     1a0:	aa000001 	bge	1ac <ugetpid_test+0x4c>
     1a4:	e59f0054 	ldr	r0, [pc, #84]	@ 200 <ugetpid_test+0xa0>
     1a8:	ebffffdb 	bl	11c <err>
     1ac:	e51b300c 	ldr	r3, [fp, #-12]
     1b0:	e3530000 	cmp	r3, #0
     1b4:	da000001 	ble	1c0 <ugetpid_test+0x60>
     1b8:	eb0002bd 	bl	cb4 <wait>
     1bc:	ea000000 	b	1c4 <ugetpid_test+0x64>
     1c0:	eb0002b2 	bl	c90 <exit>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e3530009 	cmp	r3, #9
     1d8:	daffffec 	ble	190 <ugetpid_test+0x30>
     1dc:	e59f1020 	ldr	r1, [pc, #32]	@ 204 <ugetpid_test+0xa4>
     1e0:	e3a00001 	mov	r0, #1
     1e4:	eb000442 	bl	12f4 <printf>
     1e8:	e1a00000 	nop			@ (mov r0, r0)
     1ec:	e24bd004 	sub	sp, fp, #4
     1f0:	e8bd8800 	pop	{fp, pc}
     1f4:	00001b4c 	.word	0x00001b4c
     1f8:	00001b9c 	.word	0x00001b9c
     1fc:	00001b64 	.word	0x00001b64
     200:	00001b74 	.word	0x00001b74
     204:	00001b80 	.word	0x00001b80

00000208 <pg_pte>:
     208:	e92d4800 	push	{fp, lr}
     20c:	e28db004 	add	fp, sp, #4
     210:	e24dd008 	sub	sp, sp, #8
     214:	e50b0008 	str	r0, [fp, #-8]
     218:	e51b1008 	ldr	r1, [fp, #-8]
     21c:	e3a0001a 	mov	r0, #26
     220:	eb0003d5 	bl	117c <syscall>
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
     248:	e3a0001b 	mov	r0, #27
     24c:	eb0003ca 	bl	117c <syscall>
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
     274:	e3a0001c 	mov	r0, #28
     278:	eb0003bf 	bl	117c <syscall>
     27c:	e1a03000 	mov	r3, r0
     280:	e1a00003 	mov	r0, r3
     284:	e24bd004 	sub	sp, fp, #4
     288:	e8bd8800 	pop	{fp, pc}

0000028c <kpt>:
     28c:	e92d4800 	push	{fp, lr}
     290:	e28db004 	add	fp, sp, #4
     294:	e3a0001d 	mov	r0, #29
     298:	eb0003b7 	bl	117c <syscall>
     29c:	e1a03000 	mov	r3, r0
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e8bd8800 	pop	{fp, pc}

000002a8 <ugetpid>:
     2a8:	e92d4800 	push	{fp, lr}
     2ac:	e28db004 	add	fp, sp, #4
     2b0:	e3a0001e 	mov	r0, #30
     2b4:	eb0003b0 	bl	117c <syscall>
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
     5b8:	eb0001cf 	bl	cfc <read>
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
     660:	eb0001d2 	bl	db0 <open>
     664:	e50b0008 	str	r0, [fp, #-8]
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e3530000 	cmp	r3, #0
     670:	aa000001 	bge	67c <stat+0x38>
     674:	e3e03000 	mvn	r3, #0
     678:	ea000006 	b	698 <stat+0x54>
     67c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     680:	e51b0008 	ldr	r0, [fp, #-8]
     684:	eb0001e4 	bl	e1c <fstat>
     688:	e50b000c 	str	r0, [fp, #-12]
     68c:	e51b0008 	ldr	r0, [fp, #-8]
     690:	eb0001ab 	bl	d44 <close>
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

0000090c <xchg>:
     90c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     910:	e28db000 	add	fp, sp, #0
     914:	e24dd014 	sub	sp, sp, #20
     918:	e50b0010 	str	r0, [fp, #-16]
     91c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     920:	e51b2010 	ldr	r2, [fp, #-16]
     924:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     928:	e1023091 	swp	r3, r1, [r2]
     92c:	e50b3008 	str	r3, [fp, #-8]
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e1a00003 	mov	r0, r3
     938:	e28bd000 	add	sp, fp, #0
     93c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <initiateLock>:
     944:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     948:	e28db000 	add	fp, sp, #0
     94c:	e24dd00c 	sub	sp, sp, #12
     950:	e50b0008 	str	r0, [fp, #-8]
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e3a02000 	mov	r2, #0
     95c:	e5832000 	str	r2, [r3]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e3a02001 	mov	r2, #1
     968:	e5832004 	str	r2, [r3, #4]
     96c:	e1a00000 	nop			@ (mov r0, r0)
     970:	e28bd000 	add	sp, fp, #0
     974:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <acquireLock>:
     97c:	e92d4800 	push	{fp, lr}
     980:	e28db004 	add	fp, sp, #4
     984:	e24dd008 	sub	sp, sp, #8
     988:	e50b0008 	str	r0, [fp, #-8]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933004 	ldr	r3, [r3, #4]
     994:	e3530000 	cmp	r3, #0
     998:	0a000008 	beq	9c0 <acquireLock+0x44>
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e3a01001 	mov	r1, #1
     9a8:	e1a00003 	mov	r0, r3
     9ac:	ebffffd6 	bl	90c <xchg>
     9b0:	e1a03000 	mov	r3, r0
     9b4:	e3530000 	cmp	r3, #0
     9b8:	1afffff8 	bne	9a0 <acquireLock+0x24>
     9bc:	ea000000 	b	9c4 <acquireLock+0x48>
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	e24bd004 	sub	sp, fp, #4
     9c8:	e8bd8800 	pop	{fp, pc}

000009cc <releaseLock>:
     9cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9d0:	e28db000 	add	fp, sp, #0
     9d4:	e24dd00c 	sub	sp, sp, #12
     9d8:	e50b0008 	str	r0, [fp, #-8]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e5933004 	ldr	r3, [r3, #4]
     9e4:	e3530000 	cmp	r3, #0
     9e8:	0a000006 	beq	a08 <releaseLock+0x3c>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e5933000 	ldr	r3, [r3]
     9f4:	e3530001 	cmp	r3, #1
     9f8:	1a000002 	bne	a08 <releaseLock+0x3c>
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e3a02000 	mov	r2, #0
     a04:	e5832000 	str	r2, [r3]
     a08:	e1a00000 	nop			@ (mov r0, r0)
     a0c:	e28bd000 	add	sp, fp, #0
     a10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <initiateCondVar>:
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd008 	sub	sp, sp, #8
     a24:	e50b0008 	str	r0, [fp, #-8]
     a28:	eb0001b8 	bl	1110 <getChannel>
     a2c:	e1a02000 	mov	r2, r0
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5832000 	str	r2, [r3]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e3a02001 	mov	r2, #1
     a40:	e5832004 	str	r2, [r3, #4]
     a44:	e1a00000 	nop			@ (mov r0, r0)
     a48:	e24bd004 	sub	sp, fp, #4
     a4c:	e8bd8800 	pop	{fp, pc}

00000a50 <condWait>:
     a50:	e92d4800 	push	{fp, lr}
     a54:	e28db004 	add	fp, sp, #4
     a58:	e24dd008 	sub	sp, sp, #8
     a5c:	e50b0008 	str	r0, [fp, #-8]
     a60:	e50b100c 	str	r1, [fp, #-12]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e5933004 	ldr	r3, [r3, #4]
     a6c:	e3530000 	cmp	r3, #0
     a70:	0a00000c 	beq	aa8 <condWait+0x58>
     a74:	e51b300c 	ldr	r3, [fp, #-12]
     a78:	e5933004 	ldr	r3, [r3, #4]
     a7c:	e3530000 	cmp	r3, #0
     a80:	0a000008 	beq	aa8 <condWait+0x58>
     a84:	e51b000c 	ldr	r0, [fp, #-12]
     a88:	ebffffcf 	bl	9cc <releaseLock>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5933000 	ldr	r3, [r3]
     a94:	e1a00003 	mov	r0, r3
     a98:	eb000193 	bl	10ec <sleepChan>
     a9c:	e51b000c 	ldr	r0, [fp, #-12]
     aa0:	ebffffb5 	bl	97c <acquireLock>
     aa4:	ea000000 	b	aac <condWait+0x5c>
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}

00000ab4 <broadcast>:
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd008 	sub	sp, sp, #8
     ac0:	e50b0008 	str	r0, [fp, #-8]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e5933004 	ldr	r3, [r3, #4]
     acc:	e3530000 	cmp	r3, #0
     ad0:	0a000004 	beq	ae8 <broadcast+0x34>
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb000193 	bl	1134 <sigChan>
     ae4:	ea000000 	b	aec <broadcast+0x38>
     ae8:	e1a00000 	nop			@ (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}

00000af4 <signal>:
     af4:	e92d4800 	push	{fp, lr}
     af8:	e28db004 	add	fp, sp, #4
     afc:	e24dd008 	sub	sp, sp, #8
     b00:	e50b0008 	str	r0, [fp, #-8]
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e5933004 	ldr	r3, [r3, #4]
     b0c:	e3530000 	cmp	r3, #0
     b10:	0a000004 	beq	b28 <signal+0x34>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e5933000 	ldr	r3, [r3]
     b1c:	e1a00003 	mov	r0, r3
     b20:	eb00018c 	bl	1158 <sigOneChan>
     b24:	ea000000 	b	b2c <signal+0x38>
     b28:	e1a00000 	nop			@ (mov r0, r0)
     b2c:	e24bd004 	sub	sp, fp, #4
     b30:	e8bd8800 	pop	{fp, pc}

00000b34 <semInit>:
     b34:	e92d4800 	push	{fp, lr}
     b38:	e28db004 	add	fp, sp, #4
     b3c:	e24dd008 	sub	sp, sp, #8
     b40:	e50b0008 	str	r0, [fp, #-8]
     b44:	e50b100c 	str	r1, [fp, #-12]
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e2833004 	add	r3, r3, #4
     b50:	e1a00003 	mov	r0, r3
     b54:	ebffff7a 	bl	944 <initiateLock>
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e283300c 	add	r3, r3, #12
     b60:	e1a00003 	mov	r0, r3
     b64:	ebffffab 	bl	a18 <initiateCondVar>
     b68:	e51b3008 	ldr	r3, [fp, #-8]
     b6c:	e51b200c 	ldr	r2, [fp, #-12]
     b70:	e5832000 	str	r2, [r3]
     b74:	e51b3008 	ldr	r3, [fp, #-8]
     b78:	e3a02001 	mov	r2, #1
     b7c:	e5832014 	str	r2, [r3, #20]
     b80:	e1a00000 	nop			@ (mov r0, r0)
     b84:	e24bd004 	sub	sp, fp, #4
     b88:	e8bd8800 	pop	{fp, pc}

00000b8c <semUp>:
     b8c:	e92d4800 	push	{fp, lr}
     b90:	e28db004 	add	fp, sp, #4
     b94:	e24dd008 	sub	sp, sp, #8
     b98:	e50b0008 	str	r0, [fp, #-8]
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e1a00003 	mov	r0, r3
     ba8:	ebffff73 	bl	97c <acquireLock>
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e5933000 	ldr	r3, [r3]
     bb4:	e2832001 	add	r2, r3, #1
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e5832000 	str	r2, [r3]
     bc0:	e51b3008 	ldr	r3, [fp, #-8]
     bc4:	e283300c 	add	r3, r3, #12
     bc8:	e1a00003 	mov	r0, r3
     bcc:	ebffffc8 	bl	af4 <signal>
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e2833004 	add	r3, r3, #4
     bd8:	e1a00003 	mov	r0, r3
     bdc:	ebffff7a 	bl	9cc <releaseLock>
     be0:	e1a00000 	nop			@ (mov r0, r0)
     be4:	e24bd004 	sub	sp, fp, #4
     be8:	e8bd8800 	pop	{fp, pc}

00000bec <semDown>:
     bec:	e92d4800 	push	{fp, lr}
     bf0:	e28db004 	add	fp, sp, #4
     bf4:	e24dd008 	sub	sp, sp, #8
     bf8:	e50b0008 	str	r0, [fp, #-8]
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e2833004 	add	r3, r3, #4
     c04:	e1a00003 	mov	r0, r3
     c08:	ebffff5b 	bl	97c <acquireLock>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e2432001 	sub	r2, r3, #1
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e5832000 	str	r2, [r3]
     c20:	ea000006 	b	c40 <semDown+0x54>
     c24:	e51b3008 	ldr	r3, [fp, #-8]
     c28:	e283200c 	add	r2, r3, #12
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e2833004 	add	r3, r3, #4
     c34:	e1a01003 	mov	r1, r3
     c38:	e1a00002 	mov	r0, r2
     c3c:	ebffff83 	bl	a50 <condWait>
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e5933000 	ldr	r3, [r3]
     c48:	e3530000 	cmp	r3, #0
     c4c:	bafffff4 	blt	c24 <semDown+0x38>
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e2833004 	add	r3, r3, #4
     c58:	e1a00003 	mov	r0, r3
     c5c:	ebffff5a 	bl	9cc <releaseLock>
     c60:	e1a00000 	nop			@ (mov r0, r0)
     c64:	e24bd004 	sub	sp, fp, #4
     c68:	e8bd8800 	pop	{fp, pc}

00000c6c <fork>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00001 	mov	r0, #1
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <exit>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00002 	mov	r0, #2
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <wait>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00003 	mov	r0, #3
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <pipe>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00004 	mov	r0, #4
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <read>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00005 	mov	r0, #5
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <write>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00010 	mov	r0, #16
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <close>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00015 	mov	r0, #21
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <kill>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00006 	mov	r0, #6
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <exec>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00007 	mov	r0, #7
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <open>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a0000f 	mov	r0, #15
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <mknod>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00011 	mov	r0, #17
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <unlink>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00012 	mov	r0, #18
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <fstat>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00008 	mov	r0, #8
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <link>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00013 	mov	r0, #19
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <mkdir>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00014 	mov	r0, #20
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <chdir>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00009 	mov	r0, #9
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <dup>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a0000a 	mov	r0, #10
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <getpid>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a0000b 	mov	r0, #11
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <sbrk>:
     ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef8:	e1a04003 	mov	r4, r3
     efc:	e1a03002 	mov	r3, r2
     f00:	e1a02001 	mov	r2, r1
     f04:	e1a01000 	mov	r1, r0
     f08:	e3a0000c 	mov	r0, #12
     f0c:	ef000000 	svc	0x00000000
     f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f14:	e12fff1e 	bx	lr

00000f18 <sleep>:
     f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f1c:	e1a04003 	mov	r4, r3
     f20:	e1a03002 	mov	r3, r2
     f24:	e1a02001 	mov	r2, r1
     f28:	e1a01000 	mov	r1, r0
     f2c:	e3a0000d 	mov	r0, #13
     f30:	ef000000 	svc	0x00000000
     f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <uptime>:
     f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f40:	e1a04003 	mov	r4, r3
     f44:	e1a03002 	mov	r3, r2
     f48:	e1a02001 	mov	r2, r1
     f4c:	e1a01000 	mov	r1, r0
     f50:	e3a0000e 	mov	r0, #14
     f54:	ef000000 	svc	0x00000000
     f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f5c:	e12fff1e 	bx	lr

00000f60 <proclist>:
     f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f64:	e1a04003 	mov	r4, r3
     f68:	e1a03002 	mov	r3, r2
     f6c:	e1a02001 	mov	r2, r1
     f70:	e1a01000 	mov	r1, r0
     f74:	e3a00016 	mov	r0, #22
     f78:	ef000000 	svc	0x00000000
     f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f80:	e12fff1e 	bx	lr

00000f84 <settickets>:
     f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f88:	e1a04003 	mov	r4, r3
     f8c:	e1a03002 	mov	r3, r2
     f90:	e1a02001 	mov	r2, r1
     f94:	e1a01000 	mov	r1, r0
     f98:	e3a00017 	mov	r0, #23
     f9c:	ef000000 	svc	0x00000000
     fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa4:	e12fff1e 	bx	lr

00000fa8 <srand>:
     fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fac:	e1a04003 	mov	r4, r3
     fb0:	e1a03002 	mov	r3, r2
     fb4:	e1a02001 	mov	r2, r1
     fb8:	e1a01000 	mov	r1, r0
     fbc:	e3a00018 	mov	r0, #24
     fc0:	ef000000 	svc	0x00000000
     fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc8:	e12fff1e 	bx	lr

00000fcc <getpinfo>:
     fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd0:	e1a04003 	mov	r4, r3
     fd4:	e1a03002 	mov	r3, r2
     fd8:	e1a02001 	mov	r2, r1
     fdc:	e1a01000 	mov	r1, r0
     fe0:	e3a00019 	mov	r0, #25
     fe4:	ef000000 	svc	0x00000000
     fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fec:	e12fff1e 	bx	lr

00000ff0 <print_pt>:
     ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff4:	e1a04003 	mov	r4, r3
     ff8:	e1a03002 	mov	r3, r2
     ffc:	e1a02001 	mov	r2, r1
    1000:	e1a01000 	mov	r1, r0
    1004:	e3a0001f 	mov	r0, #31
    1008:	ef000000 	svc	0x00000000
    100c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1010:	e12fff1e 	bx	lr

00001014 <thread_create>:
    1014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1018:	e1a04003 	mov	r4, r3
    101c:	e1a03002 	mov	r3, r2
    1020:	e1a02001 	mov	r2, r1
    1024:	e1a01000 	mov	r1, r0
    1028:	e3a00020 	mov	r0, #32
    102c:	ef000000 	svc	0x00000000
    1030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1034:	e12fff1e 	bx	lr

00001038 <thread_exit>:
    1038:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    103c:	e1a04003 	mov	r4, r3
    1040:	e1a03002 	mov	r3, r2
    1044:	e1a02001 	mov	r2, r1
    1048:	e1a01000 	mov	r1, r0
    104c:	e3a00021 	mov	r0, #33	@ 0x21
    1050:	ef000000 	svc	0x00000000
    1054:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <thread_join>:
    105c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1060:	e1a04003 	mov	r4, r3
    1064:	e1a03002 	mov	r3, r2
    1068:	e1a02001 	mov	r2, r1
    106c:	e1a01000 	mov	r1, r0
    1070:	e3a00022 	mov	r0, #34	@ 0x22
    1074:	ef000000 	svc	0x00000000
    1078:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    107c:	e12fff1e 	bx	lr

00001080 <waitpid>:
    1080:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1084:	e1a04003 	mov	r4, r3
    1088:	e1a03002 	mov	r3, r2
    108c:	e1a02001 	mov	r2, r1
    1090:	e1a01000 	mov	r1, r0
    1094:	e3a00023 	mov	r0, #35	@ 0x23
    1098:	ef000000 	svc	0x00000000
    109c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a0:	e12fff1e 	bx	lr

000010a4 <barrier_init>:
    10a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a8:	e1a04003 	mov	r4, r3
    10ac:	e1a03002 	mov	r3, r2
    10b0:	e1a02001 	mov	r2, r1
    10b4:	e1a01000 	mov	r1, r0
    10b8:	e3a00024 	mov	r0, #36	@ 0x24
    10bc:	ef000000 	svc	0x00000000
    10c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c4:	e12fff1e 	bx	lr

000010c8 <barrier_check>:
    10c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10cc:	e1a04003 	mov	r4, r3
    10d0:	e1a03002 	mov	r3, r2
    10d4:	e1a02001 	mov	r2, r1
    10d8:	e1a01000 	mov	r1, r0
    10dc:	e3a00025 	mov	r0, #37	@ 0x25
    10e0:	ef000000 	svc	0x00000000
    10e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e8:	e12fff1e 	bx	lr

000010ec <sleepChan>:
    10ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f0:	e1a04003 	mov	r4, r3
    10f4:	e1a03002 	mov	r3, r2
    10f8:	e1a02001 	mov	r2, r1
    10fc:	e1a01000 	mov	r1, r0
    1100:	e3a00026 	mov	r0, #38	@ 0x26
    1104:	ef000000 	svc	0x00000000
    1108:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    110c:	e12fff1e 	bx	lr

00001110 <getChannel>:
    1110:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1114:	e1a04003 	mov	r4, r3
    1118:	e1a03002 	mov	r3, r2
    111c:	e1a02001 	mov	r2, r1
    1120:	e1a01000 	mov	r1, r0
    1124:	e3a00027 	mov	r0, #39	@ 0x27
    1128:	ef000000 	svc	0x00000000
    112c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1130:	e12fff1e 	bx	lr

00001134 <sigChan>:
    1134:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1138:	e1a04003 	mov	r4, r3
    113c:	e1a03002 	mov	r3, r2
    1140:	e1a02001 	mov	r2, r1
    1144:	e1a01000 	mov	r1, r0
    1148:	e3a00028 	mov	r0, #40	@ 0x28
    114c:	ef000000 	svc	0x00000000
    1150:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1154:	e12fff1e 	bx	lr

00001158 <sigOneChan>:
    1158:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    115c:	e1a04003 	mov	r4, r3
    1160:	e1a03002 	mov	r3, r2
    1164:	e1a02001 	mov	r2, r1
    1168:	e1a01000 	mov	r1, r0
    116c:	e3a00029 	mov	r0, #41	@ 0x29
    1170:	ef000000 	svc	0x00000000
    1174:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1178:	e12fff1e 	bx	lr

0000117c <syscall>:
    117c:	ef000000 	svc	0x00000000
    1180:	e12fff1e 	bx	lr

00001184 <putc>:
    1184:	e92d4800 	push	{fp, lr}
    1188:	e28db004 	add	fp, sp, #4
    118c:	e24dd008 	sub	sp, sp, #8
    1190:	e50b0008 	str	r0, [fp, #-8]
    1194:	e1a03001 	mov	r3, r1
    1198:	e54b3009 	strb	r3, [fp, #-9]
    119c:	e24b3009 	sub	r3, fp, #9
    11a0:	e3a02001 	mov	r2, #1
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e51b0008 	ldr	r0, [fp, #-8]
    11ac:	ebfffedb 	bl	d20 <write>
    11b0:	e1a00000 	nop			@ (mov r0, r0)
    11b4:	e24bd004 	sub	sp, fp, #4
    11b8:	e8bd8800 	pop	{fp, pc}

000011bc <printint>:
    11bc:	e92d4800 	push	{fp, lr}
    11c0:	e28db004 	add	fp, sp, #4
    11c4:	e24dd030 	sub	sp, sp, #48	@ 0x30
    11c8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    11cc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    11d0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    11d4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    11d8:	e3a03000 	mov	r3, #0
    11dc:	e50b300c 	str	r3, [fp, #-12]
    11e0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    11e4:	e3530000 	cmp	r3, #0
    11e8:	0a000008 	beq	1210 <printint+0x54>
    11ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11f0:	e3530000 	cmp	r3, #0
    11f4:	aa000005 	bge	1210 <printint+0x54>
    11f8:	e3a03001 	mov	r3, #1
    11fc:	e50b300c 	str	r3, [fp, #-12]
    1200:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1204:	e2633000 	rsb	r3, r3, #0
    1208:	e50b3010 	str	r3, [fp, #-16]
    120c:	ea000001 	b	1218 <printint+0x5c>
    1210:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1214:	e50b3010 	str	r3, [fp, #-16]
    1218:	e3a03000 	mov	r3, #0
    121c:	e50b3008 	str	r3, [fp, #-8]
    1220:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e1a01002 	mov	r1, r2
    122c:	e1a00003 	mov	r0, r3
    1230:	eb0001d5 	bl	198c <__aeabi_uidivmod>
    1234:	e1a03001 	mov	r3, r1
    1238:	e1a01003 	mov	r1, r3
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e2832001 	add	r2, r3, #1
    1244:	e50b2008 	str	r2, [fp, #-8]
    1248:	e59f20a0 	ldr	r2, [pc, #160]	@ 12f0 <printint+0x134>
    124c:	e7d22001 	ldrb	r2, [r2, r1]
    1250:	e2433004 	sub	r3, r3, #4
    1254:	e083300b 	add	r3, r3, fp
    1258:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    125c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1260:	e1a01003 	mov	r1, r3
    1264:	e51b0010 	ldr	r0, [fp, #-16]
    1268:	eb00018a 	bl	1898 <__udivsi3>
    126c:	e1a03000 	mov	r3, r0
    1270:	e50b3010 	str	r3, [fp, #-16]
    1274:	e51b3010 	ldr	r3, [fp, #-16]
    1278:	e3530000 	cmp	r3, #0
    127c:	1affffe7 	bne	1220 <printint+0x64>
    1280:	e51b300c 	ldr	r3, [fp, #-12]
    1284:	e3530000 	cmp	r3, #0
    1288:	0a00000e 	beq	12c8 <printint+0x10c>
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e2832001 	add	r2, r3, #1
    1294:	e50b2008 	str	r2, [fp, #-8]
    1298:	e2433004 	sub	r3, r3, #4
    129c:	e083300b 	add	r3, r3, fp
    12a0:	e3a0202d 	mov	r2, #45	@ 0x2d
    12a4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12a8:	ea000006 	b	12c8 <printint+0x10c>
    12ac:	e24b2020 	sub	r2, fp, #32
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e0823003 	add	r3, r2, r3
    12b8:	e5d33000 	ldrb	r3, [r3]
    12bc:	e1a01003 	mov	r1, r3
    12c0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    12c4:	ebffffae 	bl	1184 <putc>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e2433001 	sub	r3, r3, #1
    12d0:	e50b3008 	str	r3, [fp, #-8]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e3530000 	cmp	r3, #0
    12dc:	aafffff2 	bge	12ac <printint+0xf0>
    12e0:	e1a00000 	nop			@ (mov r0, r0)
    12e4:	e1a00000 	nop			@ (mov r0, r0)
    12e8:	e24bd004 	sub	sp, fp, #4
    12ec:	e8bd8800 	pop	{fp, pc}
    12f0:	00001ba0 	.word	0x00001ba0

000012f4 <printf>:
    12f4:	e92d000e 	push	{r1, r2, r3}
    12f8:	e92d4800 	push	{fp, lr}
    12fc:	e28db004 	add	fp, sp, #4
    1300:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1304:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1308:	e3a03000 	mov	r3, #0
    130c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1310:	e28b3008 	add	r3, fp, #8
    1314:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1318:	e3a03000 	mov	r3, #0
    131c:	e50b3010 	str	r3, [fp, #-16]
    1320:	ea000074 	b	14f8 <printf+0x204>
    1324:	e59b2004 	ldr	r2, [fp, #4]
    1328:	e51b3010 	ldr	r3, [fp, #-16]
    132c:	e0823003 	add	r3, r2, r3
    1330:	e5d33000 	ldrb	r3, [r3]
    1334:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1338:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    133c:	e3530000 	cmp	r3, #0
    1340:	1a00000b 	bne	1374 <printf+0x80>
    1344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1348:	e3530025 	cmp	r3, #37	@ 0x25
    134c:	1a000002 	bne	135c <printf+0x68>
    1350:	e3a03025 	mov	r3, #37	@ 0x25
    1354:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1358:	ea000063 	b	14ec <printf+0x1f8>
    135c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1360:	e6ef3073 	uxtb	r3, r3
    1364:	e1a01003 	mov	r1, r3
    1368:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    136c:	ebffff84 	bl	1184 <putc>
    1370:	ea00005d 	b	14ec <printf+0x1f8>
    1374:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1378:	e3530025 	cmp	r3, #37	@ 0x25
    137c:	1a00005a 	bne	14ec <printf+0x1f8>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e3530064 	cmp	r3, #100	@ 0x64
    1388:	1a00000a 	bne	13b8 <printf+0xc4>
    138c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1390:	e5933000 	ldr	r3, [r3]
    1394:	e1a01003 	mov	r1, r3
    1398:	e3a03001 	mov	r3, #1
    139c:	e3a0200a 	mov	r2, #10
    13a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a4:	ebffff84 	bl	11bc <printint>
    13a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13ac:	e2833004 	add	r3, r3, #4
    13b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13b4:	ea00004a 	b	14e4 <printf+0x1f0>
    13b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13bc:	e3530078 	cmp	r3, #120	@ 0x78
    13c0:	0a000002 	beq	13d0 <printf+0xdc>
    13c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c8:	e3530070 	cmp	r3, #112	@ 0x70
    13cc:	1a00000a 	bne	13fc <printf+0x108>
    13d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e1a01003 	mov	r1, r3
    13dc:	e3a03000 	mov	r3, #0
    13e0:	e3a02010 	mov	r2, #16
    13e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e8:	ebffff73 	bl	11bc <printint>
    13ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13f0:	e2833004 	add	r3, r3, #4
    13f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13f8:	ea000039 	b	14e4 <printf+0x1f0>
    13fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1400:	e3530073 	cmp	r3, #115	@ 0x73
    1404:	1a000018 	bne	146c <printf+0x178>
    1408:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    140c:	e5933000 	ldr	r3, [r3]
    1410:	e50b300c 	str	r3, [fp, #-12]
    1414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1418:	e2833004 	add	r3, r3, #4
    141c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e3530000 	cmp	r3, #0
    1428:	1a00000a 	bne	1458 <printf+0x164>
    142c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1528 <printf+0x234>
    1430:	e50b300c 	str	r3, [fp, #-12]
    1434:	ea000007 	b	1458 <printf+0x164>
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5d33000 	ldrb	r3, [r3]
    1440:	e1a01003 	mov	r1, r3
    1444:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1448:	ebffff4d 	bl	1184 <putc>
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e2833001 	add	r3, r3, #1
    1454:	e50b300c 	str	r3, [fp, #-12]
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e5d33000 	ldrb	r3, [r3]
    1460:	e3530000 	cmp	r3, #0
    1464:	1afffff3 	bne	1438 <printf+0x144>
    1468:	ea00001d 	b	14e4 <printf+0x1f0>
    146c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1470:	e3530063 	cmp	r3, #99	@ 0x63
    1474:	1a000009 	bne	14a0 <printf+0x1ac>
    1478:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e6ef3073 	uxtb	r3, r3
    1484:	e1a01003 	mov	r1, r3
    1488:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    148c:	ebffff3c 	bl	1184 <putc>
    1490:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1494:	e2833004 	add	r3, r3, #4
    1498:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    149c:	ea000010 	b	14e4 <printf+0x1f0>
    14a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14a4:	e3530025 	cmp	r3, #37	@ 0x25
    14a8:	1a000005 	bne	14c4 <printf+0x1d0>
    14ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14b0:	e6ef3073 	uxtb	r3, r3
    14b4:	e1a01003 	mov	r1, r3
    14b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14bc:	ebffff30 	bl	1184 <putc>
    14c0:	ea000007 	b	14e4 <printf+0x1f0>
    14c4:	e3a01025 	mov	r1, #37	@ 0x25
    14c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14cc:	ebffff2c 	bl	1184 <putc>
    14d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14d4:	e6ef3073 	uxtb	r3, r3
    14d8:	e1a01003 	mov	r1, r3
    14dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14e0:	ebffff27 	bl	1184 <putc>
    14e4:	e3a03000 	mov	r3, #0
    14e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14ec:	e51b3010 	ldr	r3, [fp, #-16]
    14f0:	e2833001 	add	r3, r3, #1
    14f4:	e50b3010 	str	r3, [fp, #-16]
    14f8:	e59b2004 	ldr	r2, [fp, #4]
    14fc:	e51b3010 	ldr	r3, [fp, #-16]
    1500:	e0823003 	add	r3, r2, r3
    1504:	e5d33000 	ldrb	r3, [r3]
    1508:	e3530000 	cmp	r3, #0
    150c:	1affff84 	bne	1324 <printf+0x30>
    1510:	e1a00000 	nop			@ (mov r0, r0)
    1514:	e1a00000 	nop			@ (mov r0, r0)
    1518:	e24bd004 	sub	sp, fp, #4
    151c:	e8bd4800 	pop	{fp, lr}
    1520:	e28dd00c 	add	sp, sp, #12
    1524:	e12fff1e 	bx	lr
    1528:	00001b94 	.word	0x00001b94

0000152c <free>:
    152c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1530:	e28db000 	add	fp, sp, #0
    1534:	e24dd014 	sub	sp, sp, #20
    1538:	e50b0010 	str	r0, [fp, #-16]
    153c:	e51b3010 	ldr	r3, [fp, #-16]
    1540:	e2433008 	sub	r3, r3, #8
    1544:	e50b300c 	str	r3, [fp, #-12]
    1548:	e59f3154 	ldr	r3, [pc, #340]	@ 16a4 <free+0x178>
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	ea000010 	b	159c <free+0x70>
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e51b2008 	ldr	r2, [fp, #-8]
    1564:	e1520003 	cmp	r2, r3
    1568:	3a000008 	bcc	1590 <free+0x64>
    156c:	e51b200c 	ldr	r2, [fp, #-12]
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e1520003 	cmp	r2, r3
    1578:	8a000010 	bhi	15c0 <free+0x94>
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5933000 	ldr	r3, [r3]
    1584:	e51b200c 	ldr	r2, [fp, #-12]
    1588:	e1520003 	cmp	r2, r3
    158c:	3a00000b 	bcc	15c0 <free+0x94>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e5933000 	ldr	r3, [r3]
    1598:	e50b3008 	str	r3, [fp, #-8]
    159c:	e51b200c 	ldr	r2, [fp, #-12]
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e1520003 	cmp	r2, r3
    15a8:	9affffea 	bls	1558 <free+0x2c>
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e5933000 	ldr	r3, [r3]
    15b4:	e51b200c 	ldr	r2, [fp, #-12]
    15b8:	e1520003 	cmp	r2, r3
    15bc:	2affffe5 	bcs	1558 <free+0x2c>
    15c0:	e51b300c 	ldr	r3, [fp, #-12]
    15c4:	e5933004 	ldr	r3, [r3, #4]
    15c8:	e1a03183 	lsl	r3, r3, #3
    15cc:	e51b200c 	ldr	r2, [fp, #-12]
    15d0:	e0822003 	add	r2, r2, r3
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e5933000 	ldr	r3, [r3]
    15dc:	e1520003 	cmp	r2, r3
    15e0:	1a00000d 	bne	161c <free+0xf0>
    15e4:	e51b300c 	ldr	r3, [fp, #-12]
    15e8:	e5932004 	ldr	r2, [r3, #4]
    15ec:	e51b3008 	ldr	r3, [fp, #-8]
    15f0:	e5933000 	ldr	r3, [r3]
    15f4:	e5933004 	ldr	r3, [r3, #4]
    15f8:	e0822003 	add	r2, r2, r3
    15fc:	e51b300c 	ldr	r3, [fp, #-12]
    1600:	e5832004 	str	r2, [r3, #4]
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e5933000 	ldr	r3, [r3]
    160c:	e5932000 	ldr	r2, [r3]
    1610:	e51b300c 	ldr	r3, [fp, #-12]
    1614:	e5832000 	str	r2, [r3]
    1618:	ea000003 	b	162c <free+0x100>
    161c:	e51b3008 	ldr	r3, [fp, #-8]
    1620:	e5932000 	ldr	r2, [r3]
    1624:	e51b300c 	ldr	r3, [fp, #-12]
    1628:	e5832000 	str	r2, [r3]
    162c:	e51b3008 	ldr	r3, [fp, #-8]
    1630:	e5933004 	ldr	r3, [r3, #4]
    1634:	e1a03183 	lsl	r3, r3, #3
    1638:	e51b2008 	ldr	r2, [fp, #-8]
    163c:	e0823003 	add	r3, r2, r3
    1640:	e51b200c 	ldr	r2, [fp, #-12]
    1644:	e1520003 	cmp	r2, r3
    1648:	1a00000b 	bne	167c <free+0x150>
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e5932004 	ldr	r2, [r3, #4]
    1654:	e51b300c 	ldr	r3, [fp, #-12]
    1658:	e5933004 	ldr	r3, [r3, #4]
    165c:	e0822003 	add	r2, r2, r3
    1660:	e51b3008 	ldr	r3, [fp, #-8]
    1664:	e5832004 	str	r2, [r3, #4]
    1668:	e51b300c 	ldr	r3, [fp, #-12]
    166c:	e5932000 	ldr	r2, [r3]
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5832000 	str	r2, [r3]
    1678:	ea000002 	b	1688 <free+0x15c>
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e51b200c 	ldr	r2, [fp, #-12]
    1684:	e5832000 	str	r2, [r3]
    1688:	e59f2014 	ldr	r2, [pc, #20]	@ 16a4 <free+0x178>
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e5823000 	str	r3, [r2]
    1694:	e1a00000 	nop			@ (mov r0, r0)
    1698:	e28bd000 	add	sp, fp, #0
    169c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16a0:	e12fff1e 	bx	lr
    16a4:	00001bbc 	.word	0x00001bbc

000016a8 <morecore>:
    16a8:	e92d4800 	push	{fp, lr}
    16ac:	e28db004 	add	fp, sp, #4
    16b0:	e24dd010 	sub	sp, sp, #16
    16b4:	e50b0010 	str	r0, [fp, #-16]
    16b8:	e51b3010 	ldr	r3, [fp, #-16]
    16bc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    16c0:	2a000001 	bcs	16cc <morecore+0x24>
    16c4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    16c8:	e50b3010 	str	r3, [fp, #-16]
    16cc:	e51b3010 	ldr	r3, [fp, #-16]
    16d0:	e1a03183 	lsl	r3, r3, #3
    16d4:	e1a00003 	mov	r0, r3
    16d8:	ebfffe05 	bl	ef4 <sbrk>
    16dc:	e50b0008 	str	r0, [fp, #-8]
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e3730001 	cmn	r3, #1
    16e8:	1a000001 	bne	16f4 <morecore+0x4c>
    16ec:	e3a03000 	mov	r3, #0
    16f0:	ea00000a 	b	1720 <morecore+0x78>
    16f4:	e51b3008 	ldr	r3, [fp, #-8]
    16f8:	e50b300c 	str	r3, [fp, #-12]
    16fc:	e51b300c 	ldr	r3, [fp, #-12]
    1700:	e51b2010 	ldr	r2, [fp, #-16]
    1704:	e5832004 	str	r2, [r3, #4]
    1708:	e51b300c 	ldr	r3, [fp, #-12]
    170c:	e2833008 	add	r3, r3, #8
    1710:	e1a00003 	mov	r0, r3
    1714:	ebffff84 	bl	152c <free>
    1718:	e59f300c 	ldr	r3, [pc, #12]	@ 172c <morecore+0x84>
    171c:	e5933000 	ldr	r3, [r3]
    1720:	e1a00003 	mov	r0, r3
    1724:	e24bd004 	sub	sp, fp, #4
    1728:	e8bd8800 	pop	{fp, pc}
    172c:	00001bbc 	.word	0x00001bbc

00001730 <malloc>:
    1730:	e92d4800 	push	{fp, lr}
    1734:	e28db004 	add	fp, sp, #4
    1738:	e24dd018 	sub	sp, sp, #24
    173c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1740:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1744:	e2833007 	add	r3, r3, #7
    1748:	e1a031a3 	lsr	r3, r3, #3
    174c:	e2833001 	add	r3, r3, #1
    1750:	e50b3010 	str	r3, [fp, #-16]
    1754:	e59f3134 	ldr	r3, [pc, #308]	@ 1890 <malloc+0x160>
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e50b300c 	str	r3, [fp, #-12]
    1760:	e51b300c 	ldr	r3, [fp, #-12]
    1764:	e3530000 	cmp	r3, #0
    1768:	1a00000b 	bne	179c <malloc+0x6c>
    176c:	e59f3120 	ldr	r3, [pc, #288]	@ 1894 <malloc+0x164>
    1770:	e50b300c 	str	r3, [fp, #-12]
    1774:	e59f2114 	ldr	r2, [pc, #276]	@ 1890 <malloc+0x160>
    1778:	e51b300c 	ldr	r3, [fp, #-12]
    177c:	e5823000 	str	r3, [r2]
    1780:	e59f3108 	ldr	r3, [pc, #264]	@ 1890 <malloc+0x160>
    1784:	e5933000 	ldr	r3, [r3]
    1788:	e59f2104 	ldr	r2, [pc, #260]	@ 1894 <malloc+0x164>
    178c:	e5823000 	str	r3, [r2]
    1790:	e59f30fc 	ldr	r3, [pc, #252]	@ 1894 <malloc+0x164>
    1794:	e3a02000 	mov	r2, #0
    1798:	e5832004 	str	r2, [r3, #4]
    179c:	e51b300c 	ldr	r3, [fp, #-12]
    17a0:	e5933000 	ldr	r3, [r3]
    17a4:	e50b3008 	str	r3, [fp, #-8]
    17a8:	e51b3008 	ldr	r3, [fp, #-8]
    17ac:	e5933004 	ldr	r3, [r3, #4]
    17b0:	e51b2010 	ldr	r2, [fp, #-16]
    17b4:	e1520003 	cmp	r2, r3
    17b8:	8a00001e 	bhi	1838 <malloc+0x108>
    17bc:	e51b3008 	ldr	r3, [fp, #-8]
    17c0:	e5933004 	ldr	r3, [r3, #4]
    17c4:	e51b2010 	ldr	r2, [fp, #-16]
    17c8:	e1520003 	cmp	r2, r3
    17cc:	1a000004 	bne	17e4 <malloc+0xb4>
    17d0:	e51b3008 	ldr	r3, [fp, #-8]
    17d4:	e5932000 	ldr	r2, [r3]
    17d8:	e51b300c 	ldr	r3, [fp, #-12]
    17dc:	e5832000 	str	r2, [r3]
    17e0:	ea00000e 	b	1820 <malloc+0xf0>
    17e4:	e51b3008 	ldr	r3, [fp, #-8]
    17e8:	e5932004 	ldr	r2, [r3, #4]
    17ec:	e51b3010 	ldr	r3, [fp, #-16]
    17f0:	e0422003 	sub	r2, r2, r3
    17f4:	e51b3008 	ldr	r3, [fp, #-8]
    17f8:	e5832004 	str	r2, [r3, #4]
    17fc:	e51b3008 	ldr	r3, [fp, #-8]
    1800:	e5933004 	ldr	r3, [r3, #4]
    1804:	e1a03183 	lsl	r3, r3, #3
    1808:	e51b2008 	ldr	r2, [fp, #-8]
    180c:	e0823003 	add	r3, r2, r3
    1810:	e50b3008 	str	r3, [fp, #-8]
    1814:	e51b3008 	ldr	r3, [fp, #-8]
    1818:	e51b2010 	ldr	r2, [fp, #-16]
    181c:	e5832004 	str	r2, [r3, #4]
    1820:	e59f2068 	ldr	r2, [pc, #104]	@ 1890 <malloc+0x160>
    1824:	e51b300c 	ldr	r3, [fp, #-12]
    1828:	e5823000 	str	r3, [r2]
    182c:	e51b3008 	ldr	r3, [fp, #-8]
    1830:	e2833008 	add	r3, r3, #8
    1834:	ea000012 	b	1884 <malloc+0x154>
    1838:	e59f3050 	ldr	r3, [pc, #80]	@ 1890 <malloc+0x160>
    183c:	e5933000 	ldr	r3, [r3]
    1840:	e51b2008 	ldr	r2, [fp, #-8]
    1844:	e1520003 	cmp	r2, r3
    1848:	1a000007 	bne	186c <malloc+0x13c>
    184c:	e51b0010 	ldr	r0, [fp, #-16]
    1850:	ebffff94 	bl	16a8 <morecore>
    1854:	e50b0008 	str	r0, [fp, #-8]
    1858:	e51b3008 	ldr	r3, [fp, #-8]
    185c:	e3530000 	cmp	r3, #0
    1860:	1a000001 	bne	186c <malloc+0x13c>
    1864:	e3a03000 	mov	r3, #0
    1868:	ea000005 	b	1884 <malloc+0x154>
    186c:	e51b3008 	ldr	r3, [fp, #-8]
    1870:	e50b300c 	str	r3, [fp, #-12]
    1874:	e51b3008 	ldr	r3, [fp, #-8]
    1878:	e5933000 	ldr	r3, [r3]
    187c:	e50b3008 	str	r3, [fp, #-8]
    1880:	eaffffc8 	b	17a8 <malloc+0x78>
    1884:	e1a00003 	mov	r0, r3
    1888:	e24bd004 	sub	sp, fp, #4
    188c:	e8bd8800 	pop	{fp, pc}
    1890:	00001bbc 	.word	0x00001bbc
    1894:	00001bb4 	.word	0x00001bb4

00001898 <__udivsi3>:
    1898:	e2512001 	subs	r2, r1, #1
    189c:	012fff1e 	bxeq	lr
    18a0:	3a000036 	bcc	1980 <__udivsi3+0xe8>
    18a4:	e1500001 	cmp	r0, r1
    18a8:	9a000022 	bls	1938 <__udivsi3+0xa0>
    18ac:	e1110002 	tst	r1, r2
    18b0:	0a000023 	beq	1944 <__udivsi3+0xac>
    18b4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    18b8:	01a01181 	lsleq	r1, r1, #3
    18bc:	03a03008 	moveq	r3, #8
    18c0:	13a03001 	movne	r3, #1
    18c4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    18c8:	31510000 	cmpcc	r1, r0
    18cc:	31a01201 	lslcc	r1, r1, #4
    18d0:	31a03203 	lslcc	r3, r3, #4
    18d4:	3afffffa 	bcc	18c4 <__udivsi3+0x2c>
    18d8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    18dc:	31510000 	cmpcc	r1, r0
    18e0:	31a01081 	lslcc	r1, r1, #1
    18e4:	31a03083 	lslcc	r3, r3, #1
    18e8:	3afffffa 	bcc	18d8 <__udivsi3+0x40>
    18ec:	e3a02000 	mov	r2, #0
    18f0:	e1500001 	cmp	r0, r1
    18f4:	20400001 	subcs	r0, r0, r1
    18f8:	21822003 	orrcs	r2, r2, r3
    18fc:	e15000a1 	cmp	r0, r1, lsr #1
    1900:	204000a1 	subcs	r0, r0, r1, lsr #1
    1904:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1908:	e1500121 	cmp	r0, r1, lsr #2
    190c:	20400121 	subcs	r0, r0, r1, lsr #2
    1910:	21822123 	orrcs	r2, r2, r3, lsr #2
    1914:	e15001a1 	cmp	r0, r1, lsr #3
    1918:	204001a1 	subcs	r0, r0, r1, lsr #3
    191c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1920:	e3500000 	cmp	r0, #0
    1924:	11b03223 	lsrsne	r3, r3, #4
    1928:	11a01221 	lsrne	r1, r1, #4
    192c:	1affffef 	bne	18f0 <__udivsi3+0x58>
    1930:	e1a00002 	mov	r0, r2
    1934:	e12fff1e 	bx	lr
    1938:	03a00001 	moveq	r0, #1
    193c:	13a00000 	movne	r0, #0
    1940:	e12fff1e 	bx	lr
    1944:	e3510801 	cmp	r1, #65536	@ 0x10000
    1948:	21a01821 	lsrcs	r1, r1, #16
    194c:	23a02010 	movcs	r2, #16
    1950:	33a02000 	movcc	r2, #0
    1954:	e3510c01 	cmp	r1, #256	@ 0x100
    1958:	21a01421 	lsrcs	r1, r1, #8
    195c:	22822008 	addcs	r2, r2, #8
    1960:	e3510010 	cmp	r1, #16
    1964:	21a01221 	lsrcs	r1, r1, #4
    1968:	22822004 	addcs	r2, r2, #4
    196c:	e3510004 	cmp	r1, #4
    1970:	82822003 	addhi	r2, r2, #3
    1974:	908220a1 	addls	r2, r2, r1, lsr #1
    1978:	e1a00230 	lsr	r0, r0, r2
    197c:	e12fff1e 	bx	lr
    1980:	e3500000 	cmp	r0, #0
    1984:	13e00000 	mvnne	r0, #0
    1988:	ea000007 	b	19ac <__aeabi_idiv0>

0000198c <__aeabi_uidivmod>:
    198c:	e3510000 	cmp	r1, #0
    1990:	0afffffa 	beq	1980 <__udivsi3+0xe8>
    1994:	e92d4003 	push	{r0, r1, lr}
    1998:	ebffffbe 	bl	1898 <__udivsi3>
    199c:	e8bd4006 	pop	{r1, r2, lr}
    19a0:	e0030092 	mul	r3, r2, r0
    19a4:	e0411003 	sub	r1, r1, r3
    19a8:	e12fff1e 	bx	lr

000019ac <__aeabi_idiv0>:
    19ac:	e12fff1e 	bx	lr
