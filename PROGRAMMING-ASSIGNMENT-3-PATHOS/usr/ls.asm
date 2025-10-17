
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb000149 	bl	540 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	@ 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000134 	bl	540 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb00012d 	bl	540 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb000209 	bl	8c4 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb000126 	bl	540 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb000121 	bl	540 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000130 	bl	594 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	000016f0 	.word	0x000016f0

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb0002ba 	bl	bec <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb0003a9 	bl	fc8 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb0002c8 	bl	c58 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb00039d 	bl	fc8 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb000289 	bl	b80 <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000064 	bne	30c <ls+0x228>
     178:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	@ 324 <ls+0x240>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb000383 	bl	fc8 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000de 	bl	540 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb000379 	bl	fc8 <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00009a 	bl	460 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000cf 	bl	540 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	@ 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002f 	b	2e8 <ls+0x204>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	@ 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	0a000029 	beq	2e4 <ls+0x200>
     23c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     240:	e2833002 	add	r3, r3, #2
     244:	e3a0200e 	mov	r2, #14
     248:	e1a01003 	mov	r1, r3
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	eb00019b 	bl	8c4 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb000159 	bl	7e0 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb00034b 	bl	fc8 <printf>
     298:	ea000012 	b	2e8 <ls+0x204>
     29c:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     2a0:	e1a00003 	mov	r0, r3
     2a4:	ebffff55 	bl	0 <fmtname>
     2a8:	e1a01000 	mov	r1, r0
     2ac:	e24b3004 	sub	r3, fp, #4
     2b0:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     2b4:	e1d330f0 	ldrsh	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     2c0:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     2c4:	e58d2004 	str	r2, [sp, #4]
     2c8:	e58d3000 	str	r3, [sp]
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e1a02001 	mov	r2, r1
     2d4:	e59f1048 	ldr	r1, [pc, #72]	@ 324 <ls+0x240>
     2d8:	e3a00001 	mov	r0, #1
     2dc:	eb000339 	bl	fc8 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb00020e 	bl	b38 <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb00021a 	bl	b80 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001684 	.word	0x00001684
     320:	00001698 	.word	0x00001698
     324:	000016ac 	.word	0x000016ac
     328:	000016bc 	.word	0x000016bc

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	@ 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb0001dc 	bl	acc <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb0001ca 	bl	acc <exit>
     3a0:	000016d0 	.word	0x000016d0

000003a4 <pg_pte>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd008 	sub	sp, sp, #8
     3b0:	e50b0008 	str	r0, [fp, #-8]
     3b4:	e51b1008 	ldr	r1, [fp, #-8]
     3b8:	e3a00065 	mov	r0, #101	@ 0x65
     3bc:	eb0002a3 	bl	e50 <syscall>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	e1a00003 	mov	r0, r3
     3c8:	e24bd004 	sub	sp, fp, #4
     3cc:	e8bd8800 	pop	{fp, pc}

000003d0 <pg_pa>:
     3d0:	e92d4800 	push	{fp, lr}
     3d4:	e28db004 	add	fp, sp, #4
     3d8:	e24dd008 	sub	sp, sp, #8
     3dc:	e50b0008 	str	r0, [fp, #-8]
     3e0:	e51b1008 	ldr	r1, [fp, #-8]
     3e4:	e3a00066 	mov	r0, #102	@ 0x66
     3e8:	eb000298 	bl	e50 <syscall>
     3ec:	e1a03000 	mov	r3, r0
     3f0:	e1a00003 	mov	r0, r3
     3f4:	e24bd004 	sub	sp, fp, #4
     3f8:	e8bd8800 	pop	{fp, pc}

000003fc <pg_flags>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd008 	sub	sp, sp, #8
     408:	e50b0008 	str	r0, [fp, #-8]
     40c:	e51b1008 	ldr	r1, [fp, #-8]
     410:	e3a00067 	mov	r0, #103	@ 0x67
     414:	eb00028d 	bl	e50 <syscall>
     418:	e1a03000 	mov	r3, r0
     41c:	e1a00003 	mov	r0, r3
     420:	e24bd004 	sub	sp, fp, #4
     424:	e8bd8800 	pop	{fp, pc}

00000428 <kpt>:
     428:	e92d4800 	push	{fp, lr}
     42c:	e28db004 	add	fp, sp, #4
     430:	e3a00068 	mov	r0, #104	@ 0x68
     434:	eb000285 	bl	e50 <syscall>
     438:	e1a03000 	mov	r3, r0
     43c:	e1a00003 	mov	r0, r3
     440:	e8bd8800 	pop	{fp, pc}

00000444 <ugetpid>:
     444:	e92d4800 	push	{fp, lr}
     448:	e28db004 	add	fp, sp, #4
     44c:	e3a00069 	mov	r0, #105	@ 0x69
     450:	eb00027e 	bl	e50 <syscall>
     454:	e1a03000 	mov	r3, r0
     458:	e1a00003 	mov	r0, r3
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <strcpy>:
     460:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     464:	e28db000 	add	fp, sp, #0
     468:	e24dd014 	sub	sp, sp, #20
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     474:	e51b3010 	ldr	r3, [fp, #-16]
     478:	e50b3008 	str	r3, [fp, #-8]
     47c:	e1a00000 	nop			@ (mov r0, r0)
     480:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     484:	e2823001 	add	r3, r2, #1
     488:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     48c:	e51b3010 	ldr	r3, [fp, #-16]
     490:	e2831001 	add	r1, r3, #1
     494:	e50b1010 	str	r1, [fp, #-16]
     498:	e5d22000 	ldrb	r2, [r2]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e5d33000 	ldrb	r3, [r3]
     4a4:	e3530000 	cmp	r3, #0
     4a8:	1afffff4 	bne	480 <strcpy+0x20>
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e1a00003 	mov	r0, r3
     4b4:	e28bd000 	add	sp, fp, #0
     4b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4bc:	e12fff1e 	bx	lr

000004c0 <strcmp>:
     4c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c4:	e28db000 	add	fp, sp, #0
     4c8:	e24dd00c 	sub	sp, sp, #12
     4cc:	e50b0008 	str	r0, [fp, #-8]
     4d0:	e50b100c 	str	r1, [fp, #-12]
     4d4:	ea000005 	b	4f0 <strcmp+0x30>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e2833001 	add	r3, r3, #1
     4ec:	e50b300c 	str	r3, [fp, #-12]
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e3530000 	cmp	r3, #0
     4fc:	0a000005 	beq	518 <strcmp+0x58>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e5d32000 	ldrb	r2, [r3]
     508:	e51b300c 	ldr	r3, [fp, #-12]
     50c:	e5d33000 	ldrb	r3, [r3]
     510:	e1520003 	cmp	r2, r3
     514:	0affffef 	beq	4d8 <strcmp+0x18>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e5d33000 	ldrb	r3, [r3]
     520:	e1a02003 	mov	r2, r3
     524:	e51b300c 	ldr	r3, [fp, #-12]
     528:	e5d33000 	ldrb	r3, [r3]
     52c:	e0423003 	sub	r3, r2, r3
     530:	e1a00003 	mov	r0, r3
     534:	e28bd000 	add	sp, fp, #0
     538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <strlen>:
     540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     544:	e28db000 	add	fp, sp, #0
     548:	e24dd014 	sub	sp, sp, #20
     54c:	e50b0010 	str	r0, [fp, #-16]
     550:	e3a03000 	mov	r3, #0
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	ea000002 	b	568 <strlen+0x28>
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e2833001 	add	r3, r3, #1
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e51b2010 	ldr	r2, [fp, #-16]
     570:	e0823003 	add	r3, r2, r3
     574:	e5d33000 	ldrb	r3, [r3]
     578:	e3530000 	cmp	r3, #0
     57c:	1afffff6 	bne	55c <strlen+0x1c>
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e1a00003 	mov	r0, r3
     588:	e28bd000 	add	sp, fp, #0
     58c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <memset>:
     594:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     598:	e28db000 	add	fp, sp, #0
     59c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     5a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5a8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b0:	e50b3008 	str	r3, [fp, #-8]
     5b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5b8:	e54b300d 	strb	r3, [fp, #-13]
     5bc:	e55b200d 	ldrb	r2, [fp, #-13]
     5c0:	e1a03002 	mov	r3, r2
     5c4:	e1a03403 	lsl	r3, r3, #8
     5c8:	e0833002 	add	r3, r3, r2
     5cc:	e1a03803 	lsl	r3, r3, #16
     5d0:	e1a02003 	mov	r2, r3
     5d4:	e55b300d 	ldrb	r3, [fp, #-13]
     5d8:	e1a03403 	lsl	r3, r3, #8
     5dc:	e1822003 	orr	r2, r2, r3
     5e0:	e55b300d 	ldrb	r3, [fp, #-13]
     5e4:	e1823003 	orr	r3, r2, r3
     5e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5ec:	ea000008 	b	614 <memset+0x80>
     5f0:	e51b3008 	ldr	r3, [fp, #-8]
     5f4:	e55b200d 	ldrb	r2, [fp, #-13]
     5f8:	e5c32000 	strb	r2, [r3]
     5fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     600:	e2433001 	sub	r3, r3, #1
     604:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e2833001 	add	r3, r3, #1
     610:	e50b3008 	str	r3, [fp, #-8]
     614:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     618:	e3530000 	cmp	r3, #0
     61c:	0a000003 	beq	630 <memset+0x9c>
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e2033003 	and	r3, r3, #3
     628:	e3530000 	cmp	r3, #0
     62c:	1affffef 	bne	5f0 <memset+0x5c>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e50b300c 	str	r3, [fp, #-12]
     638:	ea000008 	b	660 <memset+0xcc>
     63c:	e51b300c 	ldr	r3, [fp, #-12]
     640:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     644:	e5832000 	str	r2, [r3]
     648:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     64c:	e2433004 	sub	r3, r3, #4
     650:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     654:	e51b300c 	ldr	r3, [fp, #-12]
     658:	e2833004 	add	r3, r3, #4
     65c:	e50b300c 	str	r3, [fp, #-12]
     660:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     664:	e3530003 	cmp	r3, #3
     668:	8afffff3 	bhi	63c <memset+0xa8>
     66c:	e51b300c 	ldr	r3, [fp, #-12]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	ea000008 	b	69c <memset+0x108>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e55b200d 	ldrb	r2, [fp, #-13]
     680:	e5c32000 	strb	r2, [r3]
     684:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     688:	e2433001 	sub	r3, r3, #1
     68c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e2833001 	add	r3, r3, #1
     698:	e50b3008 	str	r3, [fp, #-8]
     69c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6a0:	e3530000 	cmp	r3, #0
     6a4:	1afffff3 	bne	678 <memset+0xe4>
     6a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6ac:	e1a00003 	mov	r0, r3
     6b0:	e28bd000 	add	sp, fp, #0
     6b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <strchr>:
     6bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c0:	e28db000 	add	fp, sp, #0
     6c4:	e24dd00c 	sub	sp, sp, #12
     6c8:	e50b0008 	str	r0, [fp, #-8]
     6cc:	e1a03001 	mov	r3, r1
     6d0:	e54b3009 	strb	r3, [fp, #-9]
     6d4:	ea000009 	b	700 <strchr+0x44>
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e5d33000 	ldrb	r3, [r3]
     6e0:	e55b2009 	ldrb	r2, [fp, #-9]
     6e4:	e1520003 	cmp	r2, r3
     6e8:	1a000001 	bne	6f4 <strchr+0x38>
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	ea000007 	b	714 <strchr+0x58>
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e2833001 	add	r3, r3, #1
     6fc:	e50b3008 	str	r3, [fp, #-8]
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e5d33000 	ldrb	r3, [r3]
     708:	e3530000 	cmp	r3, #0
     70c:	1afffff1 	bne	6d8 <strchr+0x1c>
     710:	e3a03000 	mov	r3, #0
     714:	e1a00003 	mov	r0, r3
     718:	e28bd000 	add	sp, fp, #0
     71c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <gets>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd018 	sub	sp, sp, #24
     730:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     734:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     738:	e3a03000 	mov	r3, #0
     73c:	e50b3008 	str	r3, [fp, #-8]
     740:	ea000016 	b	7a0 <gets+0x7c>
     744:	e24b300d 	sub	r3, fp, #13
     748:	e3a02001 	mov	r2, #1
     74c:	e1a01003 	mov	r1, r3
     750:	e3a00000 	mov	r0, #0
     754:	eb0000f7 	bl	b38 <read>
     758:	e50b000c 	str	r0, [fp, #-12]
     75c:	e51b300c 	ldr	r3, [fp, #-12]
     760:	e3530000 	cmp	r3, #0
     764:	da000013 	ble	7b8 <gets+0x94>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2832001 	add	r2, r3, #1
     770:	e50b2008 	str	r2, [fp, #-8]
     774:	e1a02003 	mov	r2, r3
     778:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     77c:	e0833002 	add	r3, r3, r2
     780:	e55b200d 	ldrb	r2, [fp, #-13]
     784:	e5c32000 	strb	r2, [r3]
     788:	e55b300d 	ldrb	r3, [fp, #-13]
     78c:	e353000a 	cmp	r3, #10
     790:	0a000009 	beq	7bc <gets+0x98>
     794:	e55b300d 	ldrb	r3, [fp, #-13]
     798:	e353000d 	cmp	r3, #13
     79c:	0a000006 	beq	7bc <gets+0x98>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e2833001 	add	r3, r3, #1
     7a8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7ac:	e1520003 	cmp	r2, r3
     7b0:	caffffe3 	bgt	744 <gets+0x20>
     7b4:	ea000000 	b	7bc <gets+0x98>
     7b8:	e1a00000 	nop			@ (mov r0, r0)
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     7c4:	e0823003 	add	r3, r2, r3
     7c8:	e3a02000 	mov	r2, #0
     7cc:	e5c32000 	strb	r2, [r3]
     7d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d4:	e1a00003 	mov	r0, r3
     7d8:	e24bd004 	sub	sp, fp, #4
     7dc:	e8bd8800 	pop	{fp, pc}

000007e0 <stat>:
     7e0:	e92d4800 	push	{fp, lr}
     7e4:	e28db004 	add	fp, sp, #4
     7e8:	e24dd010 	sub	sp, sp, #16
     7ec:	e50b0010 	str	r0, [fp, #-16]
     7f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f4:	e3a01000 	mov	r1, #0
     7f8:	e51b0010 	ldr	r0, [fp, #-16]
     7fc:	eb0000fa 	bl	bec <open>
     800:	e50b0008 	str	r0, [fp, #-8]
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e3530000 	cmp	r3, #0
     80c:	aa000001 	bge	818 <stat+0x38>
     810:	e3e03000 	mvn	r3, #0
     814:	ea000006 	b	834 <stat+0x54>
     818:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     81c:	e51b0008 	ldr	r0, [fp, #-8]
     820:	eb00010c 	bl	c58 <fstat>
     824:	e50b000c 	str	r0, [fp, #-12]
     828:	e51b0008 	ldr	r0, [fp, #-8]
     82c:	eb0000d3 	bl	b80 <close>
     830:	e51b300c 	ldr	r3, [fp, #-12]
     834:	e1a00003 	mov	r0, r3
     838:	e24bd004 	sub	sp, fp, #4
     83c:	e8bd8800 	pop	{fp, pc}

00000840 <atoi>:
     840:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     844:	e28db000 	add	fp, sp, #0
     848:	e24dd014 	sub	sp, sp, #20
     84c:	e50b0010 	str	r0, [fp, #-16]
     850:	e3a03000 	mov	r3, #0
     854:	e50b3008 	str	r3, [fp, #-8]
     858:	ea00000c 	b	890 <atoi+0x50>
     85c:	e51b2008 	ldr	r2, [fp, #-8]
     860:	e1a03002 	mov	r3, r2
     864:	e1a03103 	lsl	r3, r3, #2
     868:	e0833002 	add	r3, r3, r2
     86c:	e1a03083 	lsl	r3, r3, #1
     870:	e1a01003 	mov	r1, r3
     874:	e51b3010 	ldr	r3, [fp, #-16]
     878:	e2832001 	add	r2, r3, #1
     87c:	e50b2010 	str	r2, [fp, #-16]
     880:	e5d33000 	ldrb	r3, [r3]
     884:	e0813003 	add	r3, r1, r3
     888:	e2433030 	sub	r3, r3, #48	@ 0x30
     88c:	e50b3008 	str	r3, [fp, #-8]
     890:	e51b3010 	ldr	r3, [fp, #-16]
     894:	e5d33000 	ldrb	r3, [r3]
     898:	e353002f 	cmp	r3, #47	@ 0x2f
     89c:	9a000003 	bls	8b0 <atoi+0x70>
     8a0:	e51b3010 	ldr	r3, [fp, #-16]
     8a4:	e5d33000 	ldrb	r3, [r3]
     8a8:	e3530039 	cmp	r3, #57	@ 0x39
     8ac:	9affffea 	bls	85c <atoi+0x1c>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e1a00003 	mov	r0, r3
     8b8:	e28bd000 	add	sp, fp, #0
     8bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <memmove>:
     8c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c8:	e28db000 	add	fp, sp, #0
     8cc:	e24dd01c 	sub	sp, sp, #28
     8d0:	e50b0010 	str	r0, [fp, #-16]
     8d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8dc:	e51b3010 	ldr	r3, [fp, #-16]
     8e0:	e50b3008 	str	r3, [fp, #-8]
     8e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8e8:	e50b300c 	str	r3, [fp, #-12]
     8ec:	ea000007 	b	910 <memmove+0x4c>
     8f0:	e51b200c 	ldr	r2, [fp, #-12]
     8f4:	e2823001 	add	r3, r2, #1
     8f8:	e50b300c 	str	r3, [fp, #-12]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e2831001 	add	r1, r3, #1
     904:	e50b1008 	str	r1, [fp, #-8]
     908:	e5d22000 	ldrb	r2, [r2]
     90c:	e5c32000 	strb	r2, [r3]
     910:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     914:	e2432001 	sub	r2, r3, #1
     918:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     91c:	e3530000 	cmp	r3, #0
     920:	cafffff2 	bgt	8f0 <memmove+0x2c>
     924:	e51b3010 	ldr	r3, [fp, #-16]
     928:	e1a00003 	mov	r0, r3
     92c:	e28bd000 	add	sp, fp, #0
     930:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <strncmp>:
     938:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     93c:	e28db000 	add	fp, sp, #0
     940:	e24dd014 	sub	sp, sp, #20
     944:	e50b0008 	str	r0, [fp, #-8]
     948:	e50b100c 	str	r1, [fp, #-12]
     94c:	e50b2010 	str	r2, [fp, #-16]
     950:	ea000008 	b	978 <strncmp+0x40>
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e2833001 	add	r3, r3, #1
     95c:	e50b3008 	str	r3, [fp, #-8]
     960:	e51b300c 	ldr	r3, [fp, #-12]
     964:	e2833001 	add	r3, r3, #1
     968:	e50b300c 	str	r3, [fp, #-12]
     96c:	e51b3010 	ldr	r3, [fp, #-16]
     970:	e2433001 	sub	r3, r3, #1
     974:	e50b3010 	str	r3, [fp, #-16]
     978:	e51b3010 	ldr	r3, [fp, #-16]
     97c:	e3530000 	cmp	r3, #0
     980:	da00000d 	ble	9bc <strncmp+0x84>
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e5d33000 	ldrb	r3, [r3]
     98c:	e3530000 	cmp	r3, #0
     990:	0a000009 	beq	9bc <strncmp+0x84>
     994:	e51b300c 	ldr	r3, [fp, #-12]
     998:	e5d33000 	ldrb	r3, [r3]
     99c:	e3530000 	cmp	r3, #0
     9a0:	0a000005 	beq	9bc <strncmp+0x84>
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5d32000 	ldrb	r2, [r3]
     9ac:	e51b300c 	ldr	r3, [fp, #-12]
     9b0:	e5d33000 	ldrb	r3, [r3]
     9b4:	e1520003 	cmp	r2, r3
     9b8:	0affffe5 	beq	954 <strncmp+0x1c>
     9bc:	e51b3010 	ldr	r3, [fp, #-16]
     9c0:	e3530000 	cmp	r3, #0
     9c4:	1a000001 	bne	9d0 <strncmp+0x98>
     9c8:	e3a03000 	mov	r3, #0
     9cc:	ea000005 	b	9e8 <strncmp+0xb0>
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e5d33000 	ldrb	r3, [r3]
     9d8:	e1a02003 	mov	r2, r3
     9dc:	e51b300c 	ldr	r3, [fp, #-12]
     9e0:	e5d33000 	ldrb	r3, [r3]
     9e4:	e0423003 	sub	r3, r2, r3
     9e8:	e1a00003 	mov	r0, r3
     9ec:	e28bd000 	add	sp, fp, #0
     9f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <strncpy>:
     9f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9fc:	e28db000 	add	fp, sp, #0
     a00:	e24dd01c 	sub	sp, sp, #28
     a04:	e50b0010 	str	r0, [fp, #-16]
     a08:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a0c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a10:	e51b3010 	ldr	r3, [fp, #-16]
     a14:	e50b3008 	str	r3, [fp, #-8]
     a18:	ea00000a 	b	a48 <strncpy+0x50>
     a1c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     a20:	e2823001 	add	r3, r2, #1
     a24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e2831001 	add	r1, r3, #1
     a30:	e50b1008 	str	r1, [fp, #-8]
     a34:	e5d22000 	ldrb	r2, [r2]
     a38:	e5c32000 	strb	r2, [r3]
     a3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a40:	e2433001 	sub	r3, r3, #1
     a44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a4c:	e3530000 	cmp	r3, #0
     a50:	da00000c 	ble	a88 <strncpy+0x90>
     a54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a58:	e5d33000 	ldrb	r3, [r3]
     a5c:	e3530000 	cmp	r3, #0
     a60:	1affffed 	bne	a1c <strncpy+0x24>
     a64:	ea000007 	b	a88 <strncpy+0x90>
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e2832001 	add	r2, r3, #1
     a70:	e50b2008 	str	r2, [fp, #-8]
     a74:	e3a02000 	mov	r2, #0
     a78:	e5c32000 	strb	r2, [r3]
     a7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a80:	e2433001 	sub	r3, r3, #1
     a84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a8c:	e3530000 	cmp	r3, #0
     a90:	cafffff4 	bgt	a68 <strncpy+0x70>
     a94:	e51b3010 	ldr	r3, [fp, #-16]
     a98:	e1a00003 	mov	r0, r3
     a9c:	e28bd000 	add	sp, fp, #0
     aa0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <fork>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00001 	mov	r0, #1
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <exit>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00002 	mov	r0, #2
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <wait>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00003 	mov	r0, #3
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <pipe>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00004 	mov	r0, #4
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <read>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00005 	mov	r0, #5
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <write>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00010 	mov	r0, #16
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <close>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00015 	mov	r0, #21
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <kill>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00006 	mov	r0, #6
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <exec>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00007 	mov	r0, #7
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <open>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a0000f 	mov	r0, #15
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <mknod>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00011 	mov	r0, #17
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <unlink>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00012 	mov	r0, #18
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <fstat>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00008 	mov	r0, #8
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <link>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00013 	mov	r0, #19
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <mkdir>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a00014 	mov	r0, #20
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <chdir>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00009 	mov	r0, #9
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <dup>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0000a 	mov	r0, #10
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <getpid>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a0000b 	mov	r0, #11
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <sbrk>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a0000c 	mov	r0, #12
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <sleep>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a0000d 	mov	r0, #13
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <uptime>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a0000e 	mov	r0, #14
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <proclist>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00016 	mov	r0, #22
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <settickets>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00017 	mov	r0, #23
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <srand>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a00018 	mov	r0, #24
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <getpinfo>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a00019 	mov	r0, #25
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <print_pt>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0006a 	mov	r0, #106	@ 0x6a
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <syscall>:
     e50:	ef000000 	svc	0x00000000
     e54:	e12fff1e 	bx	lr

00000e58 <putc>:
     e58:	e92d4800 	push	{fp, lr}
     e5c:	e28db004 	add	fp, sp, #4
     e60:	e24dd008 	sub	sp, sp, #8
     e64:	e50b0008 	str	r0, [fp, #-8]
     e68:	e1a03001 	mov	r3, r1
     e6c:	e54b3009 	strb	r3, [fp, #-9]
     e70:	e24b3009 	sub	r3, fp, #9
     e74:	e3a02001 	mov	r2, #1
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b0008 	ldr	r0, [fp, #-8]
     e80:	ebffff35 	bl	b5c <write>
     e84:	e1a00000 	nop			@ (mov r0, r0)
     e88:	e24bd004 	sub	sp, fp, #4
     e8c:	e8bd8800 	pop	{fp, pc}

00000e90 <printint>:
     e90:	e92d4800 	push	{fp, lr}
     e94:	e28db004 	add	fp, sp, #4
     e98:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e9c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ea0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ea4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ea8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     eac:	e3a03000 	mov	r3, #0
     eb0:	e50b300c 	str	r3, [fp, #-12]
     eb4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     eb8:	e3530000 	cmp	r3, #0
     ebc:	0a000008 	beq	ee4 <printint+0x54>
     ec0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ec4:	e3530000 	cmp	r3, #0
     ec8:	aa000005 	bge	ee4 <printint+0x54>
     ecc:	e3a03001 	mov	r3, #1
     ed0:	e50b300c 	str	r3, [fp, #-12]
     ed4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ed8:	e2633000 	rsb	r3, r3, #0
     edc:	e50b3010 	str	r3, [fp, #-16]
     ee0:	ea000001 	b	eec <printint+0x5c>
     ee4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ee8:	e50b3010 	str	r3, [fp, #-16]
     eec:	e3a03000 	mov	r3, #0
     ef0:	e50b3008 	str	r3, [fp, #-8]
     ef4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ef8:	e51b3010 	ldr	r3, [fp, #-16]
     efc:	e1a01002 	mov	r1, r2
     f00:	e1a00003 	mov	r0, r3
     f04:	eb0001d5 	bl	1660 <__aeabi_uidivmod>
     f08:	e1a03001 	mov	r3, r1
     f0c:	e1a01003 	mov	r1, r3
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e2832001 	add	r2, r3, #1
     f18:	e50b2008 	str	r2, [fp, #-8]
     f1c:	e59f20a0 	ldr	r2, [pc, #160]	@ fc4 <printint+0x134>
     f20:	e7d22001 	ldrb	r2, [r2, r1]
     f24:	e2433004 	sub	r3, r3, #4
     f28:	e083300b 	add	r3, r3, fp
     f2c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f30:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f34:	e1a01003 	mov	r1, r3
     f38:	e51b0010 	ldr	r0, [fp, #-16]
     f3c:	eb00018a 	bl	156c <__udivsi3>
     f40:	e1a03000 	mov	r3, r0
     f44:	e50b3010 	str	r3, [fp, #-16]
     f48:	e51b3010 	ldr	r3, [fp, #-16]
     f4c:	e3530000 	cmp	r3, #0
     f50:	1affffe7 	bne	ef4 <printint+0x64>
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e3530000 	cmp	r3, #0
     f5c:	0a00000e 	beq	f9c <printint+0x10c>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e2832001 	add	r2, r3, #1
     f68:	e50b2008 	str	r2, [fp, #-8]
     f6c:	e2433004 	sub	r3, r3, #4
     f70:	e083300b 	add	r3, r3, fp
     f74:	e3a0202d 	mov	r2, #45	@ 0x2d
     f78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f7c:	ea000006 	b	f9c <printint+0x10c>
     f80:	e24b2020 	sub	r2, fp, #32
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e0823003 	add	r3, r2, r3
     f8c:	e5d33000 	ldrb	r3, [r3]
     f90:	e1a01003 	mov	r1, r3
     f94:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f98:	ebffffae 	bl	e58 <putc>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e2433001 	sub	r3, r3, #1
     fa4:	e50b3008 	str	r3, [fp, #-8]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e3530000 	cmp	r3, #0
     fb0:	aafffff2 	bge	f80 <printint+0xf0>
     fb4:	e1a00000 	nop			@ (mov r0, r0)
     fb8:	e1a00000 	nop			@ (mov r0, r0)
     fbc:	e24bd004 	sub	sp, fp, #4
     fc0:	e8bd8800 	pop	{fp, pc}
     fc4:	000016dc 	.word	0x000016dc

00000fc8 <printf>:
     fc8:	e92d000e 	push	{r1, r2, r3}
     fcc:	e92d4800 	push	{fp, lr}
     fd0:	e28db004 	add	fp, sp, #4
     fd4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fd8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fdc:	e3a03000 	mov	r3, #0
     fe0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fe4:	e28b3008 	add	r3, fp, #8
     fe8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fec:	e3a03000 	mov	r3, #0
     ff0:	e50b3010 	str	r3, [fp, #-16]
     ff4:	ea000074 	b	11cc <printf+0x204>
     ff8:	e59b2004 	ldr	r2, [fp, #4]
     ffc:	e51b3010 	ldr	r3, [fp, #-16]
    1000:	e0823003 	add	r3, r2, r3
    1004:	e5d33000 	ldrb	r3, [r3]
    1008:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    100c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1010:	e3530000 	cmp	r3, #0
    1014:	1a00000b 	bne	1048 <printf+0x80>
    1018:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    101c:	e3530025 	cmp	r3, #37	@ 0x25
    1020:	1a000002 	bne	1030 <printf+0x68>
    1024:	e3a03025 	mov	r3, #37	@ 0x25
    1028:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    102c:	ea000063 	b	11c0 <printf+0x1f8>
    1030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1034:	e6ef3073 	uxtb	r3, r3
    1038:	e1a01003 	mov	r1, r3
    103c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1040:	ebffff84 	bl	e58 <putc>
    1044:	ea00005d 	b	11c0 <printf+0x1f8>
    1048:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    104c:	e3530025 	cmp	r3, #37	@ 0x25
    1050:	1a00005a 	bne	11c0 <printf+0x1f8>
    1054:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1058:	e3530064 	cmp	r3, #100	@ 0x64
    105c:	1a00000a 	bne	108c <printf+0xc4>
    1060:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e1a01003 	mov	r1, r3
    106c:	e3a03001 	mov	r3, #1
    1070:	e3a0200a 	mov	r2, #10
    1074:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1078:	ebffff84 	bl	e90 <printint>
    107c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1080:	e2833004 	add	r3, r3, #4
    1084:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1088:	ea00004a 	b	11b8 <printf+0x1f0>
    108c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1090:	e3530078 	cmp	r3, #120	@ 0x78
    1094:	0a000002 	beq	10a4 <printf+0xdc>
    1098:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    109c:	e3530070 	cmp	r3, #112	@ 0x70
    10a0:	1a00000a 	bne	10d0 <printf+0x108>
    10a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e1a01003 	mov	r1, r3
    10b0:	e3a03000 	mov	r3, #0
    10b4:	e3a02010 	mov	r2, #16
    10b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10bc:	ebffff73 	bl	e90 <printint>
    10c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e2833004 	add	r3, r3, #4
    10c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10cc:	ea000039 	b	11b8 <printf+0x1f0>
    10d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d4:	e3530073 	cmp	r3, #115	@ 0x73
    10d8:	1a000018 	bne	1140 <printf+0x178>
    10dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e50b300c 	str	r3, [fp, #-12]
    10e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10ec:	e2833004 	add	r3, r3, #4
    10f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e3530000 	cmp	r3, #0
    10fc:	1a00000a 	bne	112c <printf+0x164>
    1100:	e59f30f4 	ldr	r3, [pc, #244]	@ 11fc <printf+0x234>
    1104:	e50b300c 	str	r3, [fp, #-12]
    1108:	ea000007 	b	112c <printf+0x164>
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5d33000 	ldrb	r3, [r3]
    1114:	e1a01003 	mov	r1, r3
    1118:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    111c:	ebffff4d 	bl	e58 <putc>
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e2833001 	add	r3, r3, #1
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e51b300c 	ldr	r3, [fp, #-12]
    1130:	e5d33000 	ldrb	r3, [r3]
    1134:	e3530000 	cmp	r3, #0
    1138:	1afffff3 	bne	110c <printf+0x144>
    113c:	ea00001d 	b	11b8 <printf+0x1f0>
    1140:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1144:	e3530063 	cmp	r3, #99	@ 0x63
    1148:	1a000009 	bne	1174 <printf+0x1ac>
    114c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e6ef3073 	uxtb	r3, r3
    1158:	e1a01003 	mov	r1, r3
    115c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1160:	ebffff3c 	bl	e58 <putc>
    1164:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1168:	e2833004 	add	r3, r3, #4
    116c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1170:	ea000010 	b	11b8 <printf+0x1f0>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e3530025 	cmp	r3, #37	@ 0x25
    117c:	1a000005 	bne	1198 <printf+0x1d0>
    1180:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1184:	e6ef3073 	uxtb	r3, r3
    1188:	e1a01003 	mov	r1, r3
    118c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1190:	ebffff30 	bl	e58 <putc>
    1194:	ea000007 	b	11b8 <printf+0x1f0>
    1198:	e3a01025 	mov	r1, #37	@ 0x25
    119c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a0:	ebffff2c 	bl	e58 <putc>
    11a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a8:	e6ef3073 	uxtb	r3, r3
    11ac:	e1a01003 	mov	r1, r3
    11b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	ebffff27 	bl	e58 <putc>
    11b8:	e3a03000 	mov	r3, #0
    11bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11c0:	e51b3010 	ldr	r3, [fp, #-16]
    11c4:	e2833001 	add	r3, r3, #1
    11c8:	e50b3010 	str	r3, [fp, #-16]
    11cc:	e59b2004 	ldr	r2, [fp, #4]
    11d0:	e51b3010 	ldr	r3, [fp, #-16]
    11d4:	e0823003 	add	r3, r2, r3
    11d8:	e5d33000 	ldrb	r3, [r3]
    11dc:	e3530000 	cmp	r3, #0
    11e0:	1affff84 	bne	ff8 <printf+0x30>
    11e4:	e1a00000 	nop			@ (mov r0, r0)
    11e8:	e1a00000 	nop			@ (mov r0, r0)
    11ec:	e24bd004 	sub	sp, fp, #4
    11f0:	e8bd4800 	pop	{fp, lr}
    11f4:	e28dd00c 	add	sp, sp, #12
    11f8:	e12fff1e 	bx	lr
    11fc:	000016d4 	.word	0x000016d4

00001200 <free>:
    1200:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1204:	e28db000 	add	fp, sp, #0
    1208:	e24dd014 	sub	sp, sp, #20
    120c:	e50b0010 	str	r0, [fp, #-16]
    1210:	e51b3010 	ldr	r3, [fp, #-16]
    1214:	e2433008 	sub	r3, r3, #8
    1218:	e50b300c 	str	r3, [fp, #-12]
    121c:	e59f3154 	ldr	r3, [pc, #340]	@ 1378 <free+0x178>
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e50b3008 	str	r3, [fp, #-8]
    1228:	ea000010 	b	1270 <free+0x70>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e51b2008 	ldr	r2, [fp, #-8]
    1238:	e1520003 	cmp	r2, r3
    123c:	3a000008 	bcc	1264 <free+0x64>
    1240:	e51b200c 	ldr	r2, [fp, #-12]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e1520003 	cmp	r2, r3
    124c:	8a000010 	bhi	1294 <free+0x94>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e1520003 	cmp	r2, r3
    1260:	3a00000b 	bcc	1294 <free+0x94>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5933000 	ldr	r3, [r3]
    126c:	e50b3008 	str	r3, [fp, #-8]
    1270:	e51b200c 	ldr	r2, [fp, #-12]
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e1520003 	cmp	r2, r3
    127c:	9affffea 	bls	122c <free+0x2c>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e1520003 	cmp	r2, r3
    1290:	2affffe5 	bcs	122c <free+0x2c>
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e5933004 	ldr	r3, [r3, #4]
    129c:	e1a03183 	lsl	r3, r3, #3
    12a0:	e51b200c 	ldr	r2, [fp, #-12]
    12a4:	e0822003 	add	r2, r2, r3
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	1a00000d 	bne	12f0 <free+0xf0>
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5932004 	ldr	r2, [r3, #4]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e5933004 	ldr	r3, [r3, #4]
    12cc:	e0822003 	add	r2, r2, r3
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5832004 	str	r2, [r3, #4]
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e5932000 	ldr	r2, [r3]
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5832000 	str	r2, [r3]
    12ec:	ea000003 	b	1300 <free+0x100>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5932000 	ldr	r2, [r3]
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5832000 	str	r2, [r3]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933004 	ldr	r3, [r3, #4]
    1308:	e1a03183 	lsl	r3, r3, #3
    130c:	e51b2008 	ldr	r2, [fp, #-8]
    1310:	e0823003 	add	r3, r2, r3
    1314:	e51b200c 	ldr	r2, [fp, #-12]
    1318:	e1520003 	cmp	r2, r3
    131c:	1a00000b 	bne	1350 <free+0x150>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5932004 	ldr	r2, [r3, #4]
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5933004 	ldr	r3, [r3, #4]
    1330:	e0822003 	add	r2, r2, r3
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5832004 	str	r2, [r3, #4]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5932000 	ldr	r2, [r3]
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5832000 	str	r2, [r3]
    134c:	ea000002 	b	135c <free+0x15c>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e51b200c 	ldr	r2, [fp, #-12]
    1358:	e5832000 	str	r2, [r3]
    135c:	e59f2014 	ldr	r2, [pc, #20]	@ 1378 <free+0x178>
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5823000 	str	r3, [r2]
    1368:	e1a00000 	nop			@ (mov r0, r0)
    136c:	e28bd000 	add	sp, fp, #0
    1370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1374:	e12fff1e 	bx	lr
    1378:	00001708 	.word	0x00001708

0000137c <morecore>:
    137c:	e92d4800 	push	{fp, lr}
    1380:	e28db004 	add	fp, sp, #4
    1384:	e24dd010 	sub	sp, sp, #16
    1388:	e50b0010 	str	r0, [fp, #-16]
    138c:	e51b3010 	ldr	r3, [fp, #-16]
    1390:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1394:	2a000001 	bcs	13a0 <morecore+0x24>
    1398:	e3a03a01 	mov	r3, #4096	@ 0x1000
    139c:	e50b3010 	str	r3, [fp, #-16]
    13a0:	e51b3010 	ldr	r3, [fp, #-16]
    13a4:	e1a03183 	lsl	r3, r3, #3
    13a8:	e1a00003 	mov	r0, r3
    13ac:	ebfffe5f 	bl	d30 <sbrk>
    13b0:	e50b0008 	str	r0, [fp, #-8]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e3730001 	cmn	r3, #1
    13bc:	1a000001 	bne	13c8 <morecore+0x4c>
    13c0:	e3a03000 	mov	r3, #0
    13c4:	ea00000a 	b	13f4 <morecore+0x78>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e50b300c 	str	r3, [fp, #-12]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e51b2010 	ldr	r2, [fp, #-16]
    13d8:	e5832004 	str	r2, [r3, #4]
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e2833008 	add	r3, r3, #8
    13e4:	e1a00003 	mov	r0, r3
    13e8:	ebffff84 	bl	1200 <free>
    13ec:	e59f300c 	ldr	r3, [pc, #12]	@ 1400 <morecore+0x84>
    13f0:	e5933000 	ldr	r3, [r3]
    13f4:	e1a00003 	mov	r0, r3
    13f8:	e24bd004 	sub	sp, fp, #4
    13fc:	e8bd8800 	pop	{fp, pc}
    1400:	00001708 	.word	0x00001708

00001404 <malloc>:
    1404:	e92d4800 	push	{fp, lr}
    1408:	e28db004 	add	fp, sp, #4
    140c:	e24dd018 	sub	sp, sp, #24
    1410:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1418:	e2833007 	add	r3, r3, #7
    141c:	e1a031a3 	lsr	r3, r3, #3
    1420:	e2833001 	add	r3, r3, #1
    1424:	e50b3010 	str	r3, [fp, #-16]
    1428:	e59f3134 	ldr	r3, [pc, #308]	@ 1564 <malloc+0x160>
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e50b300c 	str	r3, [fp, #-12]
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e3530000 	cmp	r3, #0
    143c:	1a00000b 	bne	1470 <malloc+0x6c>
    1440:	e59f3120 	ldr	r3, [pc, #288]	@ 1568 <malloc+0x164>
    1444:	e50b300c 	str	r3, [fp, #-12]
    1448:	e59f2114 	ldr	r2, [pc, #276]	@ 1564 <malloc+0x160>
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e5823000 	str	r3, [r2]
    1454:	e59f3108 	ldr	r3, [pc, #264]	@ 1564 <malloc+0x160>
    1458:	e5933000 	ldr	r3, [r3]
    145c:	e59f2104 	ldr	r2, [pc, #260]	@ 1568 <malloc+0x164>
    1460:	e5823000 	str	r3, [r2]
    1464:	e59f30fc 	ldr	r3, [pc, #252]	@ 1568 <malloc+0x164>
    1468:	e3a02000 	mov	r2, #0
    146c:	e5832004 	str	r2, [r3, #4]
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e50b3008 	str	r3, [fp, #-8]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933004 	ldr	r3, [r3, #4]
    1484:	e51b2010 	ldr	r2, [fp, #-16]
    1488:	e1520003 	cmp	r2, r3
    148c:	8a00001e 	bhi	150c <malloc+0x108>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5933004 	ldr	r3, [r3, #4]
    1498:	e51b2010 	ldr	r2, [fp, #-16]
    149c:	e1520003 	cmp	r2, r3
    14a0:	1a000004 	bne	14b8 <malloc+0xb4>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5932000 	ldr	r2, [r3]
    14ac:	e51b300c 	ldr	r3, [fp, #-12]
    14b0:	e5832000 	str	r2, [r3]
    14b4:	ea00000e 	b	14f4 <malloc+0xf0>
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5932004 	ldr	r2, [r3, #4]
    14c0:	e51b3010 	ldr	r3, [fp, #-16]
    14c4:	e0422003 	sub	r2, r2, r3
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5832004 	str	r2, [r3, #4]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933004 	ldr	r3, [r3, #4]
    14d8:	e1a03183 	lsl	r3, r3, #3
    14dc:	e51b2008 	ldr	r2, [fp, #-8]
    14e0:	e0823003 	add	r3, r2, r3
    14e4:	e50b3008 	str	r3, [fp, #-8]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e51b2010 	ldr	r2, [fp, #-16]
    14f0:	e5832004 	str	r2, [r3, #4]
    14f4:	e59f2068 	ldr	r2, [pc, #104]	@ 1564 <malloc+0x160>
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e5823000 	str	r3, [r2]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e2833008 	add	r3, r3, #8
    1508:	ea000012 	b	1558 <malloc+0x154>
    150c:	e59f3050 	ldr	r3, [pc, #80]	@ 1564 <malloc+0x160>
    1510:	e5933000 	ldr	r3, [r3]
    1514:	e51b2008 	ldr	r2, [fp, #-8]
    1518:	e1520003 	cmp	r2, r3
    151c:	1a000007 	bne	1540 <malloc+0x13c>
    1520:	e51b0010 	ldr	r0, [fp, #-16]
    1524:	ebffff94 	bl	137c <morecore>
    1528:	e50b0008 	str	r0, [fp, #-8]
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e3530000 	cmp	r3, #0
    1534:	1a000001 	bne	1540 <malloc+0x13c>
    1538:	e3a03000 	mov	r3, #0
    153c:	ea000005 	b	1558 <malloc+0x154>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e50b300c 	str	r3, [fp, #-12]
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	eaffffc8 	b	147c <malloc+0x78>
    1558:	e1a00003 	mov	r0, r3
    155c:	e24bd004 	sub	sp, fp, #4
    1560:	e8bd8800 	pop	{fp, pc}
    1564:	00001708 	.word	0x00001708
    1568:	00001700 	.word	0x00001700

0000156c <__udivsi3>:
    156c:	e2512001 	subs	r2, r1, #1
    1570:	012fff1e 	bxeq	lr
    1574:	3a000036 	bcc	1654 <__udivsi3+0xe8>
    1578:	e1500001 	cmp	r0, r1
    157c:	9a000022 	bls	160c <__udivsi3+0xa0>
    1580:	e1110002 	tst	r1, r2
    1584:	0a000023 	beq	1618 <__udivsi3+0xac>
    1588:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    158c:	01a01181 	lsleq	r1, r1, #3
    1590:	03a03008 	moveq	r3, #8
    1594:	13a03001 	movne	r3, #1
    1598:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    159c:	31510000 	cmpcc	r1, r0
    15a0:	31a01201 	lslcc	r1, r1, #4
    15a4:	31a03203 	lslcc	r3, r3, #4
    15a8:	3afffffa 	bcc	1598 <__udivsi3+0x2c>
    15ac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15b0:	31510000 	cmpcc	r1, r0
    15b4:	31a01081 	lslcc	r1, r1, #1
    15b8:	31a03083 	lslcc	r3, r3, #1
    15bc:	3afffffa 	bcc	15ac <__udivsi3+0x40>
    15c0:	e3a02000 	mov	r2, #0
    15c4:	e1500001 	cmp	r0, r1
    15c8:	20400001 	subcs	r0, r0, r1
    15cc:	21822003 	orrcs	r2, r2, r3
    15d0:	e15000a1 	cmp	r0, r1, lsr #1
    15d4:	204000a1 	subcs	r0, r0, r1, lsr #1
    15d8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15dc:	e1500121 	cmp	r0, r1, lsr #2
    15e0:	20400121 	subcs	r0, r0, r1, lsr #2
    15e4:	21822123 	orrcs	r2, r2, r3, lsr #2
    15e8:	e15001a1 	cmp	r0, r1, lsr #3
    15ec:	204001a1 	subcs	r0, r0, r1, lsr #3
    15f0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15f4:	e3500000 	cmp	r0, #0
    15f8:	11b03223 	lsrsne	r3, r3, #4
    15fc:	11a01221 	lsrne	r1, r1, #4
    1600:	1affffef 	bne	15c4 <__udivsi3+0x58>
    1604:	e1a00002 	mov	r0, r2
    1608:	e12fff1e 	bx	lr
    160c:	03a00001 	moveq	r0, #1
    1610:	13a00000 	movne	r0, #0
    1614:	e12fff1e 	bx	lr
    1618:	e3510801 	cmp	r1, #65536	@ 0x10000
    161c:	21a01821 	lsrcs	r1, r1, #16
    1620:	23a02010 	movcs	r2, #16
    1624:	33a02000 	movcc	r2, #0
    1628:	e3510c01 	cmp	r1, #256	@ 0x100
    162c:	21a01421 	lsrcs	r1, r1, #8
    1630:	22822008 	addcs	r2, r2, #8
    1634:	e3510010 	cmp	r1, #16
    1638:	21a01221 	lsrcs	r1, r1, #4
    163c:	22822004 	addcs	r2, r2, #4
    1640:	e3510004 	cmp	r1, #4
    1644:	82822003 	addhi	r2, r2, #3
    1648:	908220a1 	addls	r2, r2, r1, lsr #1
    164c:	e1a00230 	lsr	r0, r0, r2
    1650:	e12fff1e 	bx	lr
    1654:	e3500000 	cmp	r0, #0
    1658:	13e00000 	mvnne	r0, #0
    165c:	ea000007 	b	1680 <__aeabi_idiv0>

00001660 <__aeabi_uidivmod>:
    1660:	e3510000 	cmp	r1, #0
    1664:	0afffffa 	beq	1654 <__udivsi3+0xe8>
    1668:	e92d4003 	push	{r0, r1, lr}
    166c:	ebffffbe 	bl	156c <__udivsi3>
    1670:	e8bd4006 	pop	{r1, r2, lr}
    1674:	e0030092 	mul	r3, r2, r0
    1678:	e0411003 	sub	r1, r1, r3
    167c:	e12fff1e 	bx	lr

00001680 <__aeabi_idiv0>:
    1680:	e12fff1e 	bx	lr
