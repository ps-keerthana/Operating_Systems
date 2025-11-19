
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
      e0:	00001bdc 	.word	0x00001bdc

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb000392 	bl	f4c <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb0004e4 	bl	14b4 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb0003a0 	bl	fb8 <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb0004d8 	bl	14b4 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb000361 	bl	ee0 <close>
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
     1b4:	eb0004be 	bl	14b4 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000de 	bl	540 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0004b4 	bl	14b4 <printf>
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
     294:	eb000486 	bl	14b4 <printf>
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
     2dc:	eb000474 	bl	14b4 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb0002e6 	bl	e98 <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb0002f2 	bl	ee0 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001b70 	.word	0x00001b70
     320:	00001b84 	.word	0x00001b84
     324:	00001b98 	.word	0x00001b98
     328:	00001ba8 	.word	0x00001ba8

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
     354:	eb0002b4 	bl	e2c <exit>
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
     39c:	eb0002a2 	bl	e2c <exit>
     3a0:	00001bbc 	.word	0x00001bbc

000003a4 <pg_pte>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd008 	sub	sp, sp, #8
     3b0:	e50b0008 	str	r0, [fp, #-8]
     3b4:	e51b1008 	ldr	r1, [fp, #-8]
     3b8:	e3a0001a 	mov	r0, #26
     3bc:	eb0003de 	bl	133c <syscall>
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
     3e4:	e3a0001b 	mov	r0, #27
     3e8:	eb0003d3 	bl	133c <syscall>
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
     410:	e3a0001c 	mov	r0, #28
     414:	eb0003c8 	bl	133c <syscall>
     418:	e1a03000 	mov	r3, r0
     41c:	e1a00003 	mov	r0, r3
     420:	e24bd004 	sub	sp, fp, #4
     424:	e8bd8800 	pop	{fp, pc}

00000428 <kpt>:
     428:	e92d4800 	push	{fp, lr}
     42c:	e28db004 	add	fp, sp, #4
     430:	e3a0001d 	mov	r0, #29
     434:	eb0003c0 	bl	133c <syscall>
     438:	e1a03000 	mov	r3, r0
     43c:	e1a00003 	mov	r0, r3
     440:	e8bd8800 	pop	{fp, pc}

00000444 <ugetpid>:
     444:	e92d4800 	push	{fp, lr}
     448:	e28db004 	add	fp, sp, #4
     44c:	e3a0001e 	mov	r0, #30
     450:	eb0003b9 	bl	133c <syscall>
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
     754:	eb0001cf 	bl	e98 <read>
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
     7fc:	eb0001d2 	bl	f4c <open>
     800:	e50b0008 	str	r0, [fp, #-8]
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e3530000 	cmp	r3, #0
     80c:	aa000001 	bge	818 <stat+0x38>
     810:	e3e03000 	mvn	r3, #0
     814:	ea000006 	b	834 <stat+0x54>
     818:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     81c:	e51b0008 	ldr	r0, [fp, #-8]
     820:	eb0001e4 	bl	fb8 <fstat>
     824:	e50b000c 	str	r0, [fp, #-12]
     828:	e51b0008 	ldr	r0, [fp, #-8]
     82c:	eb0001ab 	bl	ee0 <close>
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

00000aa8 <xchg>:
     aa8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     aac:	e28db000 	add	fp, sp, #0
     ab0:	e24dd014 	sub	sp, sp, #20
     ab4:	e50b0010 	str	r0, [fp, #-16]
     ab8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     abc:	e51b2010 	ldr	r2, [fp, #-16]
     ac0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ac4:	e1023091 	swp	r3, r1, [r2]
     ac8:	e50b3008 	str	r3, [fp, #-8]
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e1a00003 	mov	r0, r3
     ad4:	e28bd000 	add	sp, fp, #0
     ad8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <initiateLock>:
     ae0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ae4:	e28db000 	add	fp, sp, #0
     ae8:	e24dd00c 	sub	sp, sp, #12
     aec:	e50b0008 	str	r0, [fp, #-8]
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e3a02000 	mov	r2, #0
     af8:	e5832000 	str	r2, [r3]
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e3a02001 	mov	r2, #1
     b04:	e5832004 	str	r2, [r3, #4]
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	e28bd000 	add	sp, fp, #0
     b10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <acquireLock>:
     b18:	e92d4800 	push	{fp, lr}
     b1c:	e28db004 	add	fp, sp, #4
     b20:	e24dd008 	sub	sp, sp, #8
     b24:	e50b0008 	str	r0, [fp, #-8]
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e5933004 	ldr	r3, [r3, #4]
     b30:	e3530000 	cmp	r3, #0
     b34:	0a000008 	beq	b5c <acquireLock+0x44>
     b38:	e1a00000 	nop			@ (mov r0, r0)
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e3a01001 	mov	r1, #1
     b44:	e1a00003 	mov	r0, r3
     b48:	ebffffd6 	bl	aa8 <xchg>
     b4c:	e1a03000 	mov	r3, r0
     b50:	e3530000 	cmp	r3, #0
     b54:	1afffff8 	bne	b3c <acquireLock+0x24>
     b58:	ea000000 	b	b60 <acquireLock+0x48>
     b5c:	e1a00000 	nop			@ (mov r0, r0)
     b60:	e24bd004 	sub	sp, fp, #4
     b64:	e8bd8800 	pop	{fp, pc}

00000b68 <releaseLock>:
     b68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     b6c:	e28db000 	add	fp, sp, #0
     b70:	e24dd00c 	sub	sp, sp, #12
     b74:	e50b0008 	str	r0, [fp, #-8]
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e5933004 	ldr	r3, [r3, #4]
     b80:	e3530000 	cmp	r3, #0
     b84:	0a000006 	beq	ba4 <releaseLock+0x3c>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e5933000 	ldr	r3, [r3]
     b90:	e3530001 	cmp	r3, #1
     b94:	1a000002 	bne	ba4 <releaseLock+0x3c>
     b98:	e51b3008 	ldr	r3, [fp, #-8]
     b9c:	e3a02000 	mov	r2, #0
     ba0:	e5832000 	str	r2, [r3]
     ba4:	e1a00000 	nop			@ (mov r0, r0)
     ba8:	e28bd000 	add	sp, fp, #0
     bac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <initiateCondVar>:
     bb4:	e92d4800 	push	{fp, lr}
     bb8:	e28db004 	add	fp, sp, #4
     bbc:	e24dd008 	sub	sp, sp, #8
     bc0:	e50b0008 	str	r0, [fp, #-8]
     bc4:	eb0001b8 	bl	12ac <getChannel>
     bc8:	e1a02000 	mov	r2, r0
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e5832000 	str	r2, [r3]
     bd4:	e51b3008 	ldr	r3, [fp, #-8]
     bd8:	e3a02001 	mov	r2, #1
     bdc:	e5832004 	str	r2, [r3, #4]
     be0:	e1a00000 	nop			@ (mov r0, r0)
     be4:	e24bd004 	sub	sp, fp, #4
     be8:	e8bd8800 	pop	{fp, pc}

00000bec <condWait>:
     bec:	e92d4800 	push	{fp, lr}
     bf0:	e28db004 	add	fp, sp, #4
     bf4:	e24dd008 	sub	sp, sp, #8
     bf8:	e50b0008 	str	r0, [fp, #-8]
     bfc:	e50b100c 	str	r1, [fp, #-12]
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e5933004 	ldr	r3, [r3, #4]
     c08:	e3530000 	cmp	r3, #0
     c0c:	0a00000c 	beq	c44 <condWait+0x58>
     c10:	e51b300c 	ldr	r3, [fp, #-12]
     c14:	e5933004 	ldr	r3, [r3, #4]
     c18:	e3530000 	cmp	r3, #0
     c1c:	0a000008 	beq	c44 <condWait+0x58>
     c20:	e51b000c 	ldr	r0, [fp, #-12]
     c24:	ebffffcf 	bl	b68 <releaseLock>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e1a00003 	mov	r0, r3
     c34:	eb000193 	bl	1288 <sleepChan>
     c38:	e51b000c 	ldr	r0, [fp, #-12]
     c3c:	ebffffb5 	bl	b18 <acquireLock>
     c40:	ea000000 	b	c48 <condWait+0x5c>
     c44:	e1a00000 	nop			@ (mov r0, r0)
     c48:	e24bd004 	sub	sp, fp, #4
     c4c:	e8bd8800 	pop	{fp, pc}

00000c50 <broadcast>:
     c50:	e92d4800 	push	{fp, lr}
     c54:	e28db004 	add	fp, sp, #4
     c58:	e24dd008 	sub	sp, sp, #8
     c5c:	e50b0008 	str	r0, [fp, #-8]
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e5933004 	ldr	r3, [r3, #4]
     c68:	e3530000 	cmp	r3, #0
     c6c:	0a000004 	beq	c84 <broadcast+0x34>
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e5933000 	ldr	r3, [r3]
     c78:	e1a00003 	mov	r0, r3
     c7c:	eb000193 	bl	12d0 <sigChan>
     c80:	ea000000 	b	c88 <broadcast+0x38>
     c84:	e1a00000 	nop			@ (mov r0, r0)
     c88:	e24bd004 	sub	sp, fp, #4
     c8c:	e8bd8800 	pop	{fp, pc}

00000c90 <signal>:
     c90:	e92d4800 	push	{fp, lr}
     c94:	e28db004 	add	fp, sp, #4
     c98:	e24dd008 	sub	sp, sp, #8
     c9c:	e50b0008 	str	r0, [fp, #-8]
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5933004 	ldr	r3, [r3, #4]
     ca8:	e3530000 	cmp	r3, #0
     cac:	0a000004 	beq	cc4 <signal+0x34>
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e5933000 	ldr	r3, [r3]
     cb8:	e1a00003 	mov	r0, r3
     cbc:	eb00018c 	bl	12f4 <sigOneChan>
     cc0:	ea000000 	b	cc8 <signal+0x38>
     cc4:	e1a00000 	nop			@ (mov r0, r0)
     cc8:	e24bd004 	sub	sp, fp, #4
     ccc:	e8bd8800 	pop	{fp, pc}

00000cd0 <semInit>:
     cd0:	e92d4800 	push	{fp, lr}
     cd4:	e28db004 	add	fp, sp, #4
     cd8:	e24dd008 	sub	sp, sp, #8
     cdc:	e50b0008 	str	r0, [fp, #-8]
     ce0:	e50b100c 	str	r1, [fp, #-12]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e2833004 	add	r3, r3, #4
     cec:	e1a00003 	mov	r0, r3
     cf0:	ebffff7a 	bl	ae0 <initiateLock>
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e283300c 	add	r3, r3, #12
     cfc:	e1a00003 	mov	r0, r3
     d00:	ebffffab 	bl	bb4 <initiateCondVar>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e5832000 	str	r2, [r3]
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e3a02001 	mov	r2, #1
     d18:	e5832014 	str	r2, [r3, #20]
     d1c:	e1a00000 	nop			@ (mov r0, r0)
     d20:	e24bd004 	sub	sp, fp, #4
     d24:	e8bd8800 	pop	{fp, pc}

00000d28 <semUp>:
     d28:	e92d4800 	push	{fp, lr}
     d2c:	e28db004 	add	fp, sp, #4
     d30:	e24dd008 	sub	sp, sp, #8
     d34:	e50b0008 	str	r0, [fp, #-8]
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e2833004 	add	r3, r3, #4
     d40:	e1a00003 	mov	r0, r3
     d44:	ebffff73 	bl	b18 <acquireLock>
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e2832001 	add	r2, r3, #1
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5832000 	str	r2, [r3]
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e283300c 	add	r3, r3, #12
     d64:	e1a00003 	mov	r0, r3
     d68:	ebffffc8 	bl	c90 <signal>
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e2833004 	add	r3, r3, #4
     d74:	e1a00003 	mov	r0, r3
     d78:	ebffff7a 	bl	b68 <releaseLock>
     d7c:	e1a00000 	nop			@ (mov r0, r0)
     d80:	e24bd004 	sub	sp, fp, #4
     d84:	e8bd8800 	pop	{fp, pc}

00000d88 <semDown>:
     d88:	e92d4800 	push	{fp, lr}
     d8c:	e28db004 	add	fp, sp, #4
     d90:	e24dd008 	sub	sp, sp, #8
     d94:	e50b0008 	str	r0, [fp, #-8]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e2833004 	add	r3, r3, #4
     da0:	e1a00003 	mov	r0, r3
     da4:	ebffff5b 	bl	b18 <acquireLock>
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e2432001 	sub	r2, r3, #1
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000006 	b	ddc <semDown+0x54>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e283200c 	add	r2, r3, #12
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e2833004 	add	r3, r3, #4
     dd0:	e1a01003 	mov	r1, r3
     dd4:	e1a00002 	mov	r0, r2
     dd8:	ebffff83 	bl	bec <condWait>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e3530000 	cmp	r3, #0
     de8:	bafffff4 	blt	dc0 <semDown+0x38>
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e2833004 	add	r3, r3, #4
     df4:	e1a00003 	mov	r0, r3
     df8:	ebffff5a 	bl	b68 <releaseLock>
     dfc:	e1a00000 	nop			@ (mov r0, r0)
     e00:	e24bd004 	sub	sp, fp, #4
     e04:	e8bd8800 	pop	{fp, pc}

00000e08 <fork>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a00001 	mov	r0, #1
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <exit>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a00002 	mov	r0, #2
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <wait>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a00003 	mov	r0, #3
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <pipe>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00004 	mov	r0, #4
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <read>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00005 	mov	r0, #5
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <write>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00010 	mov	r0, #16
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <close>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00015 	mov	r0, #21
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <kill>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00006 	mov	r0, #6
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <exec>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a00007 	mov	r0, #7
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <open>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a0000f 	mov	r0, #15
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <mknod>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a00011 	mov	r0, #17
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <unlink>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a00012 	mov	r0, #18
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <fstat>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a00008 	mov	r0, #8
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <link>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a00013 	mov	r0, #19
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <mkdir>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00014 	mov	r0, #20
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <chdir>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00009 	mov	r0, #9
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <dup>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a0000a 	mov	r0, #10
    1060:	ef000000 	svc	0x00000000
    1064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1068:	e12fff1e 	bx	lr

0000106c <getpid>:
    106c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1070:	e1a04003 	mov	r4, r3
    1074:	e1a03002 	mov	r3, r2
    1078:	e1a02001 	mov	r2, r1
    107c:	e1a01000 	mov	r1, r0
    1080:	e3a0000b 	mov	r0, #11
    1084:	ef000000 	svc	0x00000000
    1088:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    108c:	e12fff1e 	bx	lr

00001090 <sbrk>:
    1090:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1094:	e1a04003 	mov	r4, r3
    1098:	e1a03002 	mov	r3, r2
    109c:	e1a02001 	mov	r2, r1
    10a0:	e1a01000 	mov	r1, r0
    10a4:	e3a0000c 	mov	r0, #12
    10a8:	ef000000 	svc	0x00000000
    10ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b0:	e12fff1e 	bx	lr

000010b4 <sleep>:
    10b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b8:	e1a04003 	mov	r4, r3
    10bc:	e1a03002 	mov	r3, r2
    10c0:	e1a02001 	mov	r2, r1
    10c4:	e1a01000 	mov	r1, r0
    10c8:	e3a0000d 	mov	r0, #13
    10cc:	ef000000 	svc	0x00000000
    10d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10d4:	e12fff1e 	bx	lr

000010d8 <uptime>:
    10d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10dc:	e1a04003 	mov	r4, r3
    10e0:	e1a03002 	mov	r3, r2
    10e4:	e1a02001 	mov	r2, r1
    10e8:	e1a01000 	mov	r1, r0
    10ec:	e3a0000e 	mov	r0, #14
    10f0:	ef000000 	svc	0x00000000
    10f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10f8:	e12fff1e 	bx	lr

000010fc <proclist>:
    10fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1100:	e1a04003 	mov	r4, r3
    1104:	e1a03002 	mov	r3, r2
    1108:	e1a02001 	mov	r2, r1
    110c:	e1a01000 	mov	r1, r0
    1110:	e3a00016 	mov	r0, #22
    1114:	ef000000 	svc	0x00000000
    1118:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    111c:	e12fff1e 	bx	lr

00001120 <settickets>:
    1120:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1124:	e1a04003 	mov	r4, r3
    1128:	e1a03002 	mov	r3, r2
    112c:	e1a02001 	mov	r2, r1
    1130:	e1a01000 	mov	r1, r0
    1134:	e3a00017 	mov	r0, #23
    1138:	ef000000 	svc	0x00000000
    113c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1140:	e12fff1e 	bx	lr

00001144 <srand>:
    1144:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1148:	e1a04003 	mov	r4, r3
    114c:	e1a03002 	mov	r3, r2
    1150:	e1a02001 	mov	r2, r1
    1154:	e1a01000 	mov	r1, r0
    1158:	e3a00018 	mov	r0, #24
    115c:	ef000000 	svc	0x00000000
    1160:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1164:	e12fff1e 	bx	lr

00001168 <getpinfo>:
    1168:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    116c:	e1a04003 	mov	r4, r3
    1170:	e1a03002 	mov	r3, r2
    1174:	e1a02001 	mov	r2, r1
    1178:	e1a01000 	mov	r1, r0
    117c:	e3a00019 	mov	r0, #25
    1180:	ef000000 	svc	0x00000000
    1184:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1188:	e12fff1e 	bx	lr

0000118c <print_pt>:
    118c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1190:	e1a04003 	mov	r4, r3
    1194:	e1a03002 	mov	r3, r2
    1198:	e1a02001 	mov	r2, r1
    119c:	e1a01000 	mov	r1, r0
    11a0:	e3a0001f 	mov	r0, #31
    11a4:	ef000000 	svc	0x00000000
    11a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11ac:	e12fff1e 	bx	lr

000011b0 <thread_create>:
    11b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11b4:	e1a04003 	mov	r4, r3
    11b8:	e1a03002 	mov	r3, r2
    11bc:	e1a02001 	mov	r2, r1
    11c0:	e1a01000 	mov	r1, r0
    11c4:	e3a00020 	mov	r0, #32
    11c8:	ef000000 	svc	0x00000000
    11cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11d0:	e12fff1e 	bx	lr

000011d4 <thread_exit>:
    11d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11d8:	e1a04003 	mov	r4, r3
    11dc:	e1a03002 	mov	r3, r2
    11e0:	e1a02001 	mov	r2, r1
    11e4:	e1a01000 	mov	r1, r0
    11e8:	e3a00021 	mov	r0, #33	@ 0x21
    11ec:	ef000000 	svc	0x00000000
    11f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11f4:	e12fff1e 	bx	lr

000011f8 <thread_join>:
    11f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11fc:	e1a04003 	mov	r4, r3
    1200:	e1a03002 	mov	r3, r2
    1204:	e1a02001 	mov	r2, r1
    1208:	e1a01000 	mov	r1, r0
    120c:	e3a00022 	mov	r0, #34	@ 0x22
    1210:	ef000000 	svc	0x00000000
    1214:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1218:	e12fff1e 	bx	lr

0000121c <waitpid>:
    121c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1220:	e1a04003 	mov	r4, r3
    1224:	e1a03002 	mov	r3, r2
    1228:	e1a02001 	mov	r2, r1
    122c:	e1a01000 	mov	r1, r0
    1230:	e3a00023 	mov	r0, #35	@ 0x23
    1234:	ef000000 	svc	0x00000000
    1238:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    123c:	e12fff1e 	bx	lr

00001240 <barrier_init>:
    1240:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1244:	e1a04003 	mov	r4, r3
    1248:	e1a03002 	mov	r3, r2
    124c:	e1a02001 	mov	r2, r1
    1250:	e1a01000 	mov	r1, r0
    1254:	e3a00024 	mov	r0, #36	@ 0x24
    1258:	ef000000 	svc	0x00000000
    125c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1260:	e12fff1e 	bx	lr

00001264 <barrier_check>:
    1264:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1268:	e1a04003 	mov	r4, r3
    126c:	e1a03002 	mov	r3, r2
    1270:	e1a02001 	mov	r2, r1
    1274:	e1a01000 	mov	r1, r0
    1278:	e3a00025 	mov	r0, #37	@ 0x25
    127c:	ef000000 	svc	0x00000000
    1280:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1284:	e12fff1e 	bx	lr

00001288 <sleepChan>:
    1288:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    128c:	e1a04003 	mov	r4, r3
    1290:	e1a03002 	mov	r3, r2
    1294:	e1a02001 	mov	r2, r1
    1298:	e1a01000 	mov	r1, r0
    129c:	e3a00026 	mov	r0, #38	@ 0x26
    12a0:	ef000000 	svc	0x00000000
    12a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12a8:	e12fff1e 	bx	lr

000012ac <getChannel>:
    12ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12b0:	e1a04003 	mov	r4, r3
    12b4:	e1a03002 	mov	r3, r2
    12b8:	e1a02001 	mov	r2, r1
    12bc:	e1a01000 	mov	r1, r0
    12c0:	e3a00027 	mov	r0, #39	@ 0x27
    12c4:	ef000000 	svc	0x00000000
    12c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12cc:	e12fff1e 	bx	lr

000012d0 <sigChan>:
    12d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12d4:	e1a04003 	mov	r4, r3
    12d8:	e1a03002 	mov	r3, r2
    12dc:	e1a02001 	mov	r2, r1
    12e0:	e1a01000 	mov	r1, r0
    12e4:	e3a00028 	mov	r0, #40	@ 0x28
    12e8:	ef000000 	svc	0x00000000
    12ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12f0:	e12fff1e 	bx	lr

000012f4 <sigOneChan>:
    12f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12f8:	e1a04003 	mov	r4, r3
    12fc:	e1a03002 	mov	r3, r2
    1300:	e1a02001 	mov	r2, r1
    1304:	e1a01000 	mov	r1, r0
    1308:	e3a00029 	mov	r0, #41	@ 0x29
    130c:	ef000000 	svc	0x00000000
    1310:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1314:	e12fff1e 	bx	lr

00001318 <symlink>:
    1318:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    131c:	e1a04003 	mov	r4, r3
    1320:	e1a03002 	mov	r3, r2
    1324:	e1a02001 	mov	r2, r1
    1328:	e1a01000 	mov	r1, r0
    132c:	e3a0002a 	mov	r0, #42	@ 0x2a
    1330:	ef000000 	svc	0x00000000
    1334:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1338:	e12fff1e 	bx	lr

0000133c <syscall>:
    133c:	ef000000 	svc	0x00000000
    1340:	e12fff1e 	bx	lr

00001344 <putc>:
    1344:	e92d4800 	push	{fp, lr}
    1348:	e28db004 	add	fp, sp, #4
    134c:	e24dd008 	sub	sp, sp, #8
    1350:	e50b0008 	str	r0, [fp, #-8]
    1354:	e1a03001 	mov	r3, r1
    1358:	e54b3009 	strb	r3, [fp, #-9]
    135c:	e24b3009 	sub	r3, fp, #9
    1360:	e3a02001 	mov	r2, #1
    1364:	e1a01003 	mov	r1, r3
    1368:	e51b0008 	ldr	r0, [fp, #-8]
    136c:	ebfffed2 	bl	ebc <write>
    1370:	e1a00000 	nop			@ (mov r0, r0)
    1374:	e24bd004 	sub	sp, fp, #4
    1378:	e8bd8800 	pop	{fp, pc}

0000137c <printint>:
    137c:	e92d4800 	push	{fp, lr}
    1380:	e28db004 	add	fp, sp, #4
    1384:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1388:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    138c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1390:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1394:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1398:	e3a03000 	mov	r3, #0
    139c:	e50b300c 	str	r3, [fp, #-12]
    13a0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    13a4:	e3530000 	cmp	r3, #0
    13a8:	0a000008 	beq	13d0 <printint+0x54>
    13ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    13b0:	e3530000 	cmp	r3, #0
    13b4:	aa000005 	bge	13d0 <printint+0x54>
    13b8:	e3a03001 	mov	r3, #1
    13bc:	e50b300c 	str	r3, [fp, #-12]
    13c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    13c4:	e2633000 	rsb	r3, r3, #0
    13c8:	e50b3010 	str	r3, [fp, #-16]
    13cc:	ea000001 	b	13d8 <printint+0x5c>
    13d0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    13d4:	e50b3010 	str	r3, [fp, #-16]
    13d8:	e3a03000 	mov	r3, #0
    13dc:	e50b3008 	str	r3, [fp, #-8]
    13e0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    13e4:	e51b3010 	ldr	r3, [fp, #-16]
    13e8:	e1a01002 	mov	r1, r2
    13ec:	e1a00003 	mov	r0, r3
    13f0:	eb0001d5 	bl	1b4c <__aeabi_uidivmod>
    13f4:	e1a03001 	mov	r3, r1
    13f8:	e1a01003 	mov	r1, r3
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e2832001 	add	r2, r3, #1
    1404:	e50b2008 	str	r2, [fp, #-8]
    1408:	e59f20a0 	ldr	r2, [pc, #160]	@ 14b0 <printint+0x134>
    140c:	e7d22001 	ldrb	r2, [r2, r1]
    1410:	e2433004 	sub	r3, r3, #4
    1414:	e083300b 	add	r3, r3, fp
    1418:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    141c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1420:	e1a01003 	mov	r1, r3
    1424:	e51b0010 	ldr	r0, [fp, #-16]
    1428:	eb00018a 	bl	1a58 <__udivsi3>
    142c:	e1a03000 	mov	r3, r0
    1430:	e50b3010 	str	r3, [fp, #-16]
    1434:	e51b3010 	ldr	r3, [fp, #-16]
    1438:	e3530000 	cmp	r3, #0
    143c:	1affffe7 	bne	13e0 <printint+0x64>
    1440:	e51b300c 	ldr	r3, [fp, #-12]
    1444:	e3530000 	cmp	r3, #0
    1448:	0a00000e 	beq	1488 <printint+0x10c>
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e2832001 	add	r2, r3, #1
    1454:	e50b2008 	str	r2, [fp, #-8]
    1458:	e2433004 	sub	r3, r3, #4
    145c:	e083300b 	add	r3, r3, fp
    1460:	e3a0202d 	mov	r2, #45	@ 0x2d
    1464:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1468:	ea000006 	b	1488 <printint+0x10c>
    146c:	e24b2020 	sub	r2, fp, #32
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e0823003 	add	r3, r2, r3
    1478:	e5d33000 	ldrb	r3, [r3]
    147c:	e1a01003 	mov	r1, r3
    1480:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1484:	ebffffae 	bl	1344 <putc>
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e2433001 	sub	r3, r3, #1
    1490:	e50b3008 	str	r3, [fp, #-8]
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e3530000 	cmp	r3, #0
    149c:	aafffff2 	bge	146c <printint+0xf0>
    14a0:	e1a00000 	nop			@ (mov r0, r0)
    14a4:	e1a00000 	nop			@ (mov r0, r0)
    14a8:	e24bd004 	sub	sp, fp, #4
    14ac:	e8bd8800 	pop	{fp, pc}
    14b0:	00001bc8 	.word	0x00001bc8

000014b4 <printf>:
    14b4:	e92d000e 	push	{r1, r2, r3}
    14b8:	e92d4800 	push	{fp, lr}
    14bc:	e28db004 	add	fp, sp, #4
    14c0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    14c4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    14c8:	e3a03000 	mov	r3, #0
    14cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14d0:	e28b3008 	add	r3, fp, #8
    14d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14d8:	e3a03000 	mov	r3, #0
    14dc:	e50b3010 	str	r3, [fp, #-16]
    14e0:	ea000074 	b	16b8 <printf+0x204>
    14e4:	e59b2004 	ldr	r2, [fp, #4]
    14e8:	e51b3010 	ldr	r3, [fp, #-16]
    14ec:	e0823003 	add	r3, r2, r3
    14f0:	e5d33000 	ldrb	r3, [r3]
    14f4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    14f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14fc:	e3530000 	cmp	r3, #0
    1500:	1a00000b 	bne	1534 <printf+0x80>
    1504:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1508:	e3530025 	cmp	r3, #37	@ 0x25
    150c:	1a000002 	bne	151c <printf+0x68>
    1510:	e3a03025 	mov	r3, #37	@ 0x25
    1514:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1518:	ea000063 	b	16ac <printf+0x1f8>
    151c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1520:	e6ef3073 	uxtb	r3, r3
    1524:	e1a01003 	mov	r1, r3
    1528:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    152c:	ebffff84 	bl	1344 <putc>
    1530:	ea00005d 	b	16ac <printf+0x1f8>
    1534:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1538:	e3530025 	cmp	r3, #37	@ 0x25
    153c:	1a00005a 	bne	16ac <printf+0x1f8>
    1540:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1544:	e3530064 	cmp	r3, #100	@ 0x64
    1548:	1a00000a 	bne	1578 <printf+0xc4>
    154c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1550:	e5933000 	ldr	r3, [r3]
    1554:	e1a01003 	mov	r1, r3
    1558:	e3a03001 	mov	r3, #1
    155c:	e3a0200a 	mov	r2, #10
    1560:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1564:	ebffff84 	bl	137c <printint>
    1568:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    156c:	e2833004 	add	r3, r3, #4
    1570:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1574:	ea00004a 	b	16a4 <printf+0x1f0>
    1578:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    157c:	e3530078 	cmp	r3, #120	@ 0x78
    1580:	0a000002 	beq	1590 <printf+0xdc>
    1584:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1588:	e3530070 	cmp	r3, #112	@ 0x70
    158c:	1a00000a 	bne	15bc <printf+0x108>
    1590:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1594:	e5933000 	ldr	r3, [r3]
    1598:	e1a01003 	mov	r1, r3
    159c:	e3a03000 	mov	r3, #0
    15a0:	e3a02010 	mov	r2, #16
    15a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    15a8:	ebffff73 	bl	137c <printint>
    15ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15b0:	e2833004 	add	r3, r3, #4
    15b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    15b8:	ea000039 	b	16a4 <printf+0x1f0>
    15bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    15c0:	e3530073 	cmp	r3, #115	@ 0x73
    15c4:	1a000018 	bne	162c <printf+0x178>
    15c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15cc:	e5933000 	ldr	r3, [r3]
    15d0:	e50b300c 	str	r3, [fp, #-12]
    15d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15d8:	e2833004 	add	r3, r3, #4
    15dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    15e0:	e51b300c 	ldr	r3, [fp, #-12]
    15e4:	e3530000 	cmp	r3, #0
    15e8:	1a00000a 	bne	1618 <printf+0x164>
    15ec:	e59f30f4 	ldr	r3, [pc, #244]	@ 16e8 <printf+0x234>
    15f0:	e50b300c 	str	r3, [fp, #-12]
    15f4:	ea000007 	b	1618 <printf+0x164>
    15f8:	e51b300c 	ldr	r3, [fp, #-12]
    15fc:	e5d33000 	ldrb	r3, [r3]
    1600:	e1a01003 	mov	r1, r3
    1604:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1608:	ebffff4d 	bl	1344 <putc>
    160c:	e51b300c 	ldr	r3, [fp, #-12]
    1610:	e2833001 	add	r3, r3, #1
    1614:	e50b300c 	str	r3, [fp, #-12]
    1618:	e51b300c 	ldr	r3, [fp, #-12]
    161c:	e5d33000 	ldrb	r3, [r3]
    1620:	e3530000 	cmp	r3, #0
    1624:	1afffff3 	bne	15f8 <printf+0x144>
    1628:	ea00001d 	b	16a4 <printf+0x1f0>
    162c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1630:	e3530063 	cmp	r3, #99	@ 0x63
    1634:	1a000009 	bne	1660 <printf+0x1ac>
    1638:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    163c:	e5933000 	ldr	r3, [r3]
    1640:	e6ef3073 	uxtb	r3, r3
    1644:	e1a01003 	mov	r1, r3
    1648:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    164c:	ebffff3c 	bl	1344 <putc>
    1650:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1654:	e2833004 	add	r3, r3, #4
    1658:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    165c:	ea000010 	b	16a4 <printf+0x1f0>
    1660:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1664:	e3530025 	cmp	r3, #37	@ 0x25
    1668:	1a000005 	bne	1684 <printf+0x1d0>
    166c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1670:	e6ef3073 	uxtb	r3, r3
    1674:	e1a01003 	mov	r1, r3
    1678:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    167c:	ebffff30 	bl	1344 <putc>
    1680:	ea000007 	b	16a4 <printf+0x1f0>
    1684:	e3a01025 	mov	r1, #37	@ 0x25
    1688:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    168c:	ebffff2c 	bl	1344 <putc>
    1690:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1694:	e6ef3073 	uxtb	r3, r3
    1698:	e1a01003 	mov	r1, r3
    169c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    16a0:	ebffff27 	bl	1344 <putc>
    16a4:	e3a03000 	mov	r3, #0
    16a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    16ac:	e51b3010 	ldr	r3, [fp, #-16]
    16b0:	e2833001 	add	r3, r3, #1
    16b4:	e50b3010 	str	r3, [fp, #-16]
    16b8:	e59b2004 	ldr	r2, [fp, #4]
    16bc:	e51b3010 	ldr	r3, [fp, #-16]
    16c0:	e0823003 	add	r3, r2, r3
    16c4:	e5d33000 	ldrb	r3, [r3]
    16c8:	e3530000 	cmp	r3, #0
    16cc:	1affff84 	bne	14e4 <printf+0x30>
    16d0:	e1a00000 	nop			@ (mov r0, r0)
    16d4:	e1a00000 	nop			@ (mov r0, r0)
    16d8:	e24bd004 	sub	sp, fp, #4
    16dc:	e8bd4800 	pop	{fp, lr}
    16e0:	e28dd00c 	add	sp, sp, #12
    16e4:	e12fff1e 	bx	lr
    16e8:	00001bc0 	.word	0x00001bc0

000016ec <free>:
    16ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    16f0:	e28db000 	add	fp, sp, #0
    16f4:	e24dd014 	sub	sp, sp, #20
    16f8:	e50b0010 	str	r0, [fp, #-16]
    16fc:	e51b3010 	ldr	r3, [fp, #-16]
    1700:	e2433008 	sub	r3, r3, #8
    1704:	e50b300c 	str	r3, [fp, #-12]
    1708:	e59f3154 	ldr	r3, [pc, #340]	@ 1864 <free+0x178>
    170c:	e5933000 	ldr	r3, [r3]
    1710:	e50b3008 	str	r3, [fp, #-8]
    1714:	ea000010 	b	175c <free+0x70>
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e5933000 	ldr	r3, [r3]
    1720:	e51b2008 	ldr	r2, [fp, #-8]
    1724:	e1520003 	cmp	r2, r3
    1728:	3a000008 	bcc	1750 <free+0x64>
    172c:	e51b200c 	ldr	r2, [fp, #-12]
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e1520003 	cmp	r2, r3
    1738:	8a000010 	bhi	1780 <free+0x94>
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e5933000 	ldr	r3, [r3]
    1744:	e51b200c 	ldr	r2, [fp, #-12]
    1748:	e1520003 	cmp	r2, r3
    174c:	3a00000b 	bcc	1780 <free+0x94>
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e5933000 	ldr	r3, [r3]
    1758:	e50b3008 	str	r3, [fp, #-8]
    175c:	e51b200c 	ldr	r2, [fp, #-12]
    1760:	e51b3008 	ldr	r3, [fp, #-8]
    1764:	e1520003 	cmp	r2, r3
    1768:	9affffea 	bls	1718 <free+0x2c>
    176c:	e51b3008 	ldr	r3, [fp, #-8]
    1770:	e5933000 	ldr	r3, [r3]
    1774:	e51b200c 	ldr	r2, [fp, #-12]
    1778:	e1520003 	cmp	r2, r3
    177c:	2affffe5 	bcs	1718 <free+0x2c>
    1780:	e51b300c 	ldr	r3, [fp, #-12]
    1784:	e5933004 	ldr	r3, [r3, #4]
    1788:	e1a03183 	lsl	r3, r3, #3
    178c:	e51b200c 	ldr	r2, [fp, #-12]
    1790:	e0822003 	add	r2, r2, r3
    1794:	e51b3008 	ldr	r3, [fp, #-8]
    1798:	e5933000 	ldr	r3, [r3]
    179c:	e1520003 	cmp	r2, r3
    17a0:	1a00000d 	bne	17dc <free+0xf0>
    17a4:	e51b300c 	ldr	r3, [fp, #-12]
    17a8:	e5932004 	ldr	r2, [r3, #4]
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e5933000 	ldr	r3, [r3]
    17b4:	e5933004 	ldr	r3, [r3, #4]
    17b8:	e0822003 	add	r2, r2, r3
    17bc:	e51b300c 	ldr	r3, [fp, #-12]
    17c0:	e5832004 	str	r2, [r3, #4]
    17c4:	e51b3008 	ldr	r3, [fp, #-8]
    17c8:	e5933000 	ldr	r3, [r3]
    17cc:	e5932000 	ldr	r2, [r3]
    17d0:	e51b300c 	ldr	r3, [fp, #-12]
    17d4:	e5832000 	str	r2, [r3]
    17d8:	ea000003 	b	17ec <free+0x100>
    17dc:	e51b3008 	ldr	r3, [fp, #-8]
    17e0:	e5932000 	ldr	r2, [r3]
    17e4:	e51b300c 	ldr	r3, [fp, #-12]
    17e8:	e5832000 	str	r2, [r3]
    17ec:	e51b3008 	ldr	r3, [fp, #-8]
    17f0:	e5933004 	ldr	r3, [r3, #4]
    17f4:	e1a03183 	lsl	r3, r3, #3
    17f8:	e51b2008 	ldr	r2, [fp, #-8]
    17fc:	e0823003 	add	r3, r2, r3
    1800:	e51b200c 	ldr	r2, [fp, #-12]
    1804:	e1520003 	cmp	r2, r3
    1808:	1a00000b 	bne	183c <free+0x150>
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5932004 	ldr	r2, [r3, #4]
    1814:	e51b300c 	ldr	r3, [fp, #-12]
    1818:	e5933004 	ldr	r3, [r3, #4]
    181c:	e0822003 	add	r2, r2, r3
    1820:	e51b3008 	ldr	r3, [fp, #-8]
    1824:	e5832004 	str	r2, [r3, #4]
    1828:	e51b300c 	ldr	r3, [fp, #-12]
    182c:	e5932000 	ldr	r2, [r3]
    1830:	e51b3008 	ldr	r3, [fp, #-8]
    1834:	e5832000 	str	r2, [r3]
    1838:	ea000002 	b	1848 <free+0x15c>
    183c:	e51b3008 	ldr	r3, [fp, #-8]
    1840:	e51b200c 	ldr	r2, [fp, #-12]
    1844:	e5832000 	str	r2, [r3]
    1848:	e59f2014 	ldr	r2, [pc, #20]	@ 1864 <free+0x178>
    184c:	e51b3008 	ldr	r3, [fp, #-8]
    1850:	e5823000 	str	r3, [r2]
    1854:	e1a00000 	nop			@ (mov r0, r0)
    1858:	e28bd000 	add	sp, fp, #0
    185c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1860:	e12fff1e 	bx	lr
    1864:	00001bf4 	.word	0x00001bf4

00001868 <morecore>:
    1868:	e92d4800 	push	{fp, lr}
    186c:	e28db004 	add	fp, sp, #4
    1870:	e24dd010 	sub	sp, sp, #16
    1874:	e50b0010 	str	r0, [fp, #-16]
    1878:	e51b3010 	ldr	r3, [fp, #-16]
    187c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1880:	2a000001 	bcs	188c <morecore+0x24>
    1884:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1888:	e50b3010 	str	r3, [fp, #-16]
    188c:	e51b3010 	ldr	r3, [fp, #-16]
    1890:	e1a03183 	lsl	r3, r3, #3
    1894:	e1a00003 	mov	r0, r3
    1898:	ebfffdfc 	bl	1090 <sbrk>
    189c:	e50b0008 	str	r0, [fp, #-8]
    18a0:	e51b3008 	ldr	r3, [fp, #-8]
    18a4:	e3730001 	cmn	r3, #1
    18a8:	1a000001 	bne	18b4 <morecore+0x4c>
    18ac:	e3a03000 	mov	r3, #0
    18b0:	ea00000a 	b	18e0 <morecore+0x78>
    18b4:	e51b3008 	ldr	r3, [fp, #-8]
    18b8:	e50b300c 	str	r3, [fp, #-12]
    18bc:	e51b300c 	ldr	r3, [fp, #-12]
    18c0:	e51b2010 	ldr	r2, [fp, #-16]
    18c4:	e5832004 	str	r2, [r3, #4]
    18c8:	e51b300c 	ldr	r3, [fp, #-12]
    18cc:	e2833008 	add	r3, r3, #8
    18d0:	e1a00003 	mov	r0, r3
    18d4:	ebffff84 	bl	16ec <free>
    18d8:	e59f300c 	ldr	r3, [pc, #12]	@ 18ec <morecore+0x84>
    18dc:	e5933000 	ldr	r3, [r3]
    18e0:	e1a00003 	mov	r0, r3
    18e4:	e24bd004 	sub	sp, fp, #4
    18e8:	e8bd8800 	pop	{fp, pc}
    18ec:	00001bf4 	.word	0x00001bf4

000018f0 <malloc>:
    18f0:	e92d4800 	push	{fp, lr}
    18f4:	e28db004 	add	fp, sp, #4
    18f8:	e24dd018 	sub	sp, sp, #24
    18fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1900:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1904:	e2833007 	add	r3, r3, #7
    1908:	e1a031a3 	lsr	r3, r3, #3
    190c:	e2833001 	add	r3, r3, #1
    1910:	e50b3010 	str	r3, [fp, #-16]
    1914:	e59f3134 	ldr	r3, [pc, #308]	@ 1a50 <malloc+0x160>
    1918:	e5933000 	ldr	r3, [r3]
    191c:	e50b300c 	str	r3, [fp, #-12]
    1920:	e51b300c 	ldr	r3, [fp, #-12]
    1924:	e3530000 	cmp	r3, #0
    1928:	1a00000b 	bne	195c <malloc+0x6c>
    192c:	e59f3120 	ldr	r3, [pc, #288]	@ 1a54 <malloc+0x164>
    1930:	e50b300c 	str	r3, [fp, #-12]
    1934:	e59f2114 	ldr	r2, [pc, #276]	@ 1a50 <malloc+0x160>
    1938:	e51b300c 	ldr	r3, [fp, #-12]
    193c:	e5823000 	str	r3, [r2]
    1940:	e59f3108 	ldr	r3, [pc, #264]	@ 1a50 <malloc+0x160>
    1944:	e5933000 	ldr	r3, [r3]
    1948:	e59f2104 	ldr	r2, [pc, #260]	@ 1a54 <malloc+0x164>
    194c:	e5823000 	str	r3, [r2]
    1950:	e59f30fc 	ldr	r3, [pc, #252]	@ 1a54 <malloc+0x164>
    1954:	e3a02000 	mov	r2, #0
    1958:	e5832004 	str	r2, [r3, #4]
    195c:	e51b300c 	ldr	r3, [fp, #-12]
    1960:	e5933000 	ldr	r3, [r3]
    1964:	e50b3008 	str	r3, [fp, #-8]
    1968:	e51b3008 	ldr	r3, [fp, #-8]
    196c:	e5933004 	ldr	r3, [r3, #4]
    1970:	e51b2010 	ldr	r2, [fp, #-16]
    1974:	e1520003 	cmp	r2, r3
    1978:	8a00001e 	bhi	19f8 <malloc+0x108>
    197c:	e51b3008 	ldr	r3, [fp, #-8]
    1980:	e5933004 	ldr	r3, [r3, #4]
    1984:	e51b2010 	ldr	r2, [fp, #-16]
    1988:	e1520003 	cmp	r2, r3
    198c:	1a000004 	bne	19a4 <malloc+0xb4>
    1990:	e51b3008 	ldr	r3, [fp, #-8]
    1994:	e5932000 	ldr	r2, [r3]
    1998:	e51b300c 	ldr	r3, [fp, #-12]
    199c:	e5832000 	str	r2, [r3]
    19a0:	ea00000e 	b	19e0 <malloc+0xf0>
    19a4:	e51b3008 	ldr	r3, [fp, #-8]
    19a8:	e5932004 	ldr	r2, [r3, #4]
    19ac:	e51b3010 	ldr	r3, [fp, #-16]
    19b0:	e0422003 	sub	r2, r2, r3
    19b4:	e51b3008 	ldr	r3, [fp, #-8]
    19b8:	e5832004 	str	r2, [r3, #4]
    19bc:	e51b3008 	ldr	r3, [fp, #-8]
    19c0:	e5933004 	ldr	r3, [r3, #4]
    19c4:	e1a03183 	lsl	r3, r3, #3
    19c8:	e51b2008 	ldr	r2, [fp, #-8]
    19cc:	e0823003 	add	r3, r2, r3
    19d0:	e50b3008 	str	r3, [fp, #-8]
    19d4:	e51b3008 	ldr	r3, [fp, #-8]
    19d8:	e51b2010 	ldr	r2, [fp, #-16]
    19dc:	e5832004 	str	r2, [r3, #4]
    19e0:	e59f2068 	ldr	r2, [pc, #104]	@ 1a50 <malloc+0x160>
    19e4:	e51b300c 	ldr	r3, [fp, #-12]
    19e8:	e5823000 	str	r3, [r2]
    19ec:	e51b3008 	ldr	r3, [fp, #-8]
    19f0:	e2833008 	add	r3, r3, #8
    19f4:	ea000012 	b	1a44 <malloc+0x154>
    19f8:	e59f3050 	ldr	r3, [pc, #80]	@ 1a50 <malloc+0x160>
    19fc:	e5933000 	ldr	r3, [r3]
    1a00:	e51b2008 	ldr	r2, [fp, #-8]
    1a04:	e1520003 	cmp	r2, r3
    1a08:	1a000007 	bne	1a2c <malloc+0x13c>
    1a0c:	e51b0010 	ldr	r0, [fp, #-16]
    1a10:	ebffff94 	bl	1868 <morecore>
    1a14:	e50b0008 	str	r0, [fp, #-8]
    1a18:	e51b3008 	ldr	r3, [fp, #-8]
    1a1c:	e3530000 	cmp	r3, #0
    1a20:	1a000001 	bne	1a2c <malloc+0x13c>
    1a24:	e3a03000 	mov	r3, #0
    1a28:	ea000005 	b	1a44 <malloc+0x154>
    1a2c:	e51b3008 	ldr	r3, [fp, #-8]
    1a30:	e50b300c 	str	r3, [fp, #-12]
    1a34:	e51b3008 	ldr	r3, [fp, #-8]
    1a38:	e5933000 	ldr	r3, [r3]
    1a3c:	e50b3008 	str	r3, [fp, #-8]
    1a40:	eaffffc8 	b	1968 <malloc+0x78>
    1a44:	e1a00003 	mov	r0, r3
    1a48:	e24bd004 	sub	sp, fp, #4
    1a4c:	e8bd8800 	pop	{fp, pc}
    1a50:	00001bf4 	.word	0x00001bf4
    1a54:	00001bec 	.word	0x00001bec

00001a58 <__udivsi3>:
    1a58:	e2512001 	subs	r2, r1, #1
    1a5c:	012fff1e 	bxeq	lr
    1a60:	3a000036 	bcc	1b40 <__udivsi3+0xe8>
    1a64:	e1500001 	cmp	r0, r1
    1a68:	9a000022 	bls	1af8 <__udivsi3+0xa0>
    1a6c:	e1110002 	tst	r1, r2
    1a70:	0a000023 	beq	1b04 <__udivsi3+0xac>
    1a74:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1a78:	01a01181 	lsleq	r1, r1, #3
    1a7c:	03a03008 	moveq	r3, #8
    1a80:	13a03001 	movne	r3, #1
    1a84:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1a88:	31510000 	cmpcc	r1, r0
    1a8c:	31a01201 	lslcc	r1, r1, #4
    1a90:	31a03203 	lslcc	r3, r3, #4
    1a94:	3afffffa 	bcc	1a84 <__udivsi3+0x2c>
    1a98:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1a9c:	31510000 	cmpcc	r1, r0
    1aa0:	31a01081 	lslcc	r1, r1, #1
    1aa4:	31a03083 	lslcc	r3, r3, #1
    1aa8:	3afffffa 	bcc	1a98 <__udivsi3+0x40>
    1aac:	e3a02000 	mov	r2, #0
    1ab0:	e1500001 	cmp	r0, r1
    1ab4:	20400001 	subcs	r0, r0, r1
    1ab8:	21822003 	orrcs	r2, r2, r3
    1abc:	e15000a1 	cmp	r0, r1, lsr #1
    1ac0:	204000a1 	subcs	r0, r0, r1, lsr #1
    1ac4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1ac8:	e1500121 	cmp	r0, r1, lsr #2
    1acc:	20400121 	subcs	r0, r0, r1, lsr #2
    1ad0:	21822123 	orrcs	r2, r2, r3, lsr #2
    1ad4:	e15001a1 	cmp	r0, r1, lsr #3
    1ad8:	204001a1 	subcs	r0, r0, r1, lsr #3
    1adc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1ae0:	e3500000 	cmp	r0, #0
    1ae4:	11b03223 	lsrsne	r3, r3, #4
    1ae8:	11a01221 	lsrne	r1, r1, #4
    1aec:	1affffef 	bne	1ab0 <__udivsi3+0x58>
    1af0:	e1a00002 	mov	r0, r2
    1af4:	e12fff1e 	bx	lr
    1af8:	03a00001 	moveq	r0, #1
    1afc:	13a00000 	movne	r0, #0
    1b00:	e12fff1e 	bx	lr
    1b04:	e3510801 	cmp	r1, #65536	@ 0x10000
    1b08:	21a01821 	lsrcs	r1, r1, #16
    1b0c:	23a02010 	movcs	r2, #16
    1b10:	33a02000 	movcc	r2, #0
    1b14:	e3510c01 	cmp	r1, #256	@ 0x100
    1b18:	21a01421 	lsrcs	r1, r1, #8
    1b1c:	22822008 	addcs	r2, r2, #8
    1b20:	e3510010 	cmp	r1, #16
    1b24:	21a01221 	lsrcs	r1, r1, #4
    1b28:	22822004 	addcs	r2, r2, #4
    1b2c:	e3510004 	cmp	r1, #4
    1b30:	82822003 	addhi	r2, r2, #3
    1b34:	908220a1 	addls	r2, r2, r1, lsr #1
    1b38:	e1a00230 	lsr	r0, r0, r2
    1b3c:	e12fff1e 	bx	lr
    1b40:	e3500000 	cmp	r0, #0
    1b44:	13e00000 	mvnne	r0, #0
    1b48:	ea000007 	b	1b6c <__aeabi_idiv0>

00001b4c <__aeabi_uidivmod>:
    1b4c:	e3510000 	cmp	r1, #0
    1b50:	0afffffa 	beq	1b40 <__udivsi3+0xe8>
    1b54:	e92d4003 	push	{r0, r1, lr}
    1b58:	ebffffbe 	bl	1a58 <__udivsi3>
    1b5c:	e8bd4006 	pop	{r1, r2, lr}
    1b60:	e0030092 	mul	r3, r2, r0
    1b64:	e0411003 	sub	r1, r1, r3
    1b68:	e12fff1e 	bx	lr

00001b6c <__aeabi_idiv0>:
    1b6c:	e12fff1e 	bx	lr
