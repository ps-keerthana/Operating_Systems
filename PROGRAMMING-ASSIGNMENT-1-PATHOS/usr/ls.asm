
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb00011a 	bl	484 <strlen>
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
      68:	eb000105 	bl	484 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb0000fe 	bl	484 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb0001da 	bl	808 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb0000f7 	bl	484 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb0000f2 	bl	484 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000101 	bl	4d8 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	0000159c 	.word	0x0000159c

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb00028b 	bl	b30 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000354 	bl	e74 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb000299 	bl	b9c <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb000348 	bl	e74 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb00025a 	bl	ac4 <close>
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
     1b4:	eb00032e 	bl	e74 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb000324 	bl	e74 <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00006b 	bl	3a4 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000a0 	bl	484 <strlen>
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
     250:	eb00016c 	bl	808 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb00012a 	bl	724 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb0002f6 	bl	e74 <printf>
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
     2dc:	eb0002e4 	bl	e74 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb0001df 	bl	a7c <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb0001eb 	bl	ac4 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001530 	.word	0x00001530
     320:	00001544 	.word	0x00001544
     324:	00001558 	.word	0x00001558
     328:	00001568 	.word	0x00001568

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
     354:	eb0001ad 	bl	a10 <exit>
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
     39c:	eb00019b 	bl	a10 <exit>
     3a0:	0000157c 	.word	0x0000157c

000003a4 <strcpy>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e51b3010 	ldr	r3, [fp, #-16]
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e1a00000 	nop			@ (mov r0, r0)
     3c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3c8:	e2823001 	add	r3, r2, #1
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	e51b3010 	ldr	r3, [fp, #-16]
     3d4:	e2831001 	add	r1, r3, #1
     3d8:	e50b1010 	str	r1, [fp, #-16]
     3dc:	e5d22000 	ldrb	r2, [r2]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e5d33000 	ldrb	r3, [r3]
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff4 	bne	3c4 <strcpy+0x20>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e28bd000 	add	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strcmp>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd00c 	sub	sp, sp, #12
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e50b100c 	str	r1, [fp, #-12]
     418:	ea000005 	b	434 <strcmp+0x30>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b300c 	ldr	r3, [fp, #-12]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b300c 	str	r3, [fp, #-12]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e5d33000 	ldrb	r3, [r3]
     43c:	e3530000 	cmp	r3, #0
     440:	0a000005 	beq	45c <strcmp+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e5d32000 	ldrb	r2, [r3]
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e1520003 	cmp	r2, r3
     458:	0affffef 	beq	41c <strcmp+0x18>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e1a02003 	mov	r2, r3
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e0423003 	sub	r3, r2, r3
     474:	e1a00003 	mov	r0, r3
     478:	e28bd000 	add	sp, fp, #0
     47c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <strlen>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea000002 	b	4ac <strlen+0x28>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e51b2010 	ldr	r2, [fp, #-16]
     4b4:	e0823003 	add	r3, r2, r3
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	1afffff6 	bne	4a0 <strlen+0x1c>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e28bd000 	add	sp, fp, #0
     4d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d4:	e12fff1e 	bx	lr

000004d8 <memset>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     4e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     4f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4fc:	e54b300d 	strb	r3, [fp, #-13]
     500:	e55b200d 	ldrb	r2, [fp, #-13]
     504:	e1a03002 	mov	r3, r2
     508:	e1a03403 	lsl	r3, r3, #8
     50c:	e0833002 	add	r3, r3, r2
     510:	e1a03803 	lsl	r3, r3, #16
     514:	e1a02003 	mov	r2, r3
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e1a03403 	lsl	r3, r3, #8
     520:	e1822003 	orr	r2, r2, r3
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e1823003 	orr	r3, r2, r3
     52c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     530:	ea000008 	b	558 <memset+0x80>
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e55b200d 	ldrb	r2, [fp, #-13]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     544:	e2433001 	sub	r3, r3, #1
     548:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2833001 	add	r3, r3, #1
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     55c:	e3530000 	cmp	r3, #0
     560:	0a000003 	beq	574 <memset+0x9c>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e2033003 	and	r3, r3, #3
     56c:	e3530000 	cmp	r3, #0
     570:	1affffef 	bne	534 <memset+0x5c>
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e50b300c 	str	r3, [fp, #-12]
     57c:	ea000008 	b	5a4 <memset+0xcc>
     580:	e51b300c 	ldr	r3, [fp, #-12]
     584:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     588:	e5832000 	str	r2, [r3]
     58c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     590:	e2433004 	sub	r3, r3, #4
     594:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e2833004 	add	r3, r3, #4
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5a8:	e3530003 	cmp	r3, #3
     5ac:	8afffff3 	bhi	580 <memset+0xa8>
     5b0:	e51b300c 	ldr	r3, [fp, #-12]
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	ea000008 	b	5e0 <memset+0x108>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e55b200d 	ldrb	r2, [fp, #-13]
     5c4:	e5c32000 	strb	r2, [r3]
     5c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5cc:	e2433001 	sub	r3, r3, #1
     5d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2833001 	add	r3, r3, #1
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5e4:	e3530000 	cmp	r3, #0
     5e8:	1afffff3 	bne	5bc <memset+0xe4>
     5ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e28bd000 	add	sp, fp, #0
     5f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <strchr>:
     600:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     604:	e28db000 	add	fp, sp, #0
     608:	e24dd00c 	sub	sp, sp, #12
     60c:	e50b0008 	str	r0, [fp, #-8]
     610:	e1a03001 	mov	r3, r1
     614:	e54b3009 	strb	r3, [fp, #-9]
     618:	ea000009 	b	644 <strchr+0x44>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e55b2009 	ldrb	r2, [fp, #-9]
     628:	e1520003 	cmp	r2, r3
     62c:	1a000001 	bne	638 <strchr+0x38>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	ea000007 	b	658 <strchr+0x58>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e3530000 	cmp	r3, #0
     650:	1afffff1 	bne	61c <strchr+0x1c>
     654:	e3a03000 	mov	r3, #0
     658:	e1a00003 	mov	r0, r3
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <gets>:
     668:	e92d4800 	push	{fp, lr}
     66c:	e28db004 	add	fp, sp, #4
     670:	e24dd018 	sub	sp, sp, #24
     674:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     678:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     67c:	e3a03000 	mov	r3, #0
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	ea000016 	b	6e4 <gets+0x7c>
     688:	e24b300d 	sub	r3, fp, #13
     68c:	e3a02001 	mov	r2, #1
     690:	e1a01003 	mov	r1, r3
     694:	e3a00000 	mov	r0, #0
     698:	eb0000f7 	bl	a7c <read>
     69c:	e50b000c 	str	r0, [fp, #-12]
     6a0:	e51b300c 	ldr	r3, [fp, #-12]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	da000013 	ble	6fc <gets+0x94>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e2832001 	add	r2, r3, #1
     6b4:	e50b2008 	str	r2, [fp, #-8]
     6b8:	e1a02003 	mov	r2, r3
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e0833002 	add	r3, r3, r2
     6c4:	e55b200d 	ldrb	r2, [fp, #-13]
     6c8:	e5c32000 	strb	r2, [r3]
     6cc:	e55b300d 	ldrb	r3, [fp, #-13]
     6d0:	e353000a 	cmp	r3, #10
     6d4:	0a000009 	beq	700 <gets+0x98>
     6d8:	e55b300d 	ldrb	r3, [fp, #-13]
     6dc:	e353000d 	cmp	r3, #13
     6e0:	0a000006 	beq	700 <gets+0x98>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2833001 	add	r3, r3, #1
     6ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     6f0:	e1520003 	cmp	r2, r3
     6f4:	caffffe3 	bgt	688 <gets+0x20>
     6f8:	ea000000 	b	700 <gets+0x98>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     708:	e0823003 	add	r3, r2, r3
     70c:	e3a02000 	mov	r2, #0
     710:	e5c32000 	strb	r2, [r3]
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e1a00003 	mov	r0, r3
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <stat>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd010 	sub	sp, sp, #16
     730:	e50b0010 	str	r0, [fp, #-16]
     734:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     738:	e3a01000 	mov	r1, #0
     73c:	e51b0010 	ldr	r0, [fp, #-16]
     740:	eb0000fa 	bl	b30 <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb00010c 	bl	b9c <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb0000d3 	bl	ac4 <close>
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e1a00003 	mov	r0, r3
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <atoi>:
     784:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     788:	e28db000 	add	fp, sp, #0
     78c:	e24dd014 	sub	sp, sp, #20
     790:	e50b0010 	str	r0, [fp, #-16]
     794:	e3a03000 	mov	r3, #0
     798:	e50b3008 	str	r3, [fp, #-8]
     79c:	ea00000c 	b	7d4 <atoi+0x50>
     7a0:	e51b2008 	ldr	r2, [fp, #-8]
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a03103 	lsl	r3, r3, #2
     7ac:	e0833002 	add	r3, r3, r2
     7b0:	e1a03083 	lsl	r3, r3, #1
     7b4:	e1a01003 	mov	r1, r3
     7b8:	e51b3010 	ldr	r3, [fp, #-16]
     7bc:	e2832001 	add	r2, r3, #1
     7c0:	e50b2010 	str	r2, [fp, #-16]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e0813003 	add	r3, r1, r3
     7cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     7d0:	e50b3008 	str	r3, [fp, #-8]
     7d4:	e51b3010 	ldr	r3, [fp, #-16]
     7d8:	e5d33000 	ldrb	r3, [r3]
     7dc:	e353002f 	cmp	r3, #47	@ 0x2f
     7e0:	9a000003 	bls	7f4 <atoi+0x70>
     7e4:	e51b3010 	ldr	r3, [fp, #-16]
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e3530039 	cmp	r3, #57	@ 0x39
     7f0:	9affffea 	bls	7a0 <atoi+0x1c>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e1a00003 	mov	r0, r3
     7fc:	e28bd000 	add	sp, fp, #0
     800:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <memmove>:
     808:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     80c:	e28db000 	add	fp, sp, #0
     810:	e24dd01c 	sub	sp, sp, #28
     814:	e50b0010 	str	r0, [fp, #-16]
     818:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     81c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e50b3008 	str	r3, [fp, #-8]
     828:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     82c:	e50b300c 	str	r3, [fp, #-12]
     830:	ea000007 	b	854 <memmove+0x4c>
     834:	e51b200c 	ldr	r2, [fp, #-12]
     838:	e2823001 	add	r3, r2, #1
     83c:	e50b300c 	str	r3, [fp, #-12]
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e2831001 	add	r1, r3, #1
     848:	e50b1008 	str	r1, [fp, #-8]
     84c:	e5d22000 	ldrb	r2, [r2]
     850:	e5c32000 	strb	r2, [r3]
     854:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     858:	e2432001 	sub	r2, r3, #1
     85c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     860:	e3530000 	cmp	r3, #0
     864:	cafffff2 	bgt	834 <memmove+0x2c>
     868:	e51b3010 	ldr	r3, [fp, #-16]
     86c:	e1a00003 	mov	r0, r3
     870:	e28bd000 	add	sp, fp, #0
     874:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <strncmp>:
     87c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     880:	e28db000 	add	fp, sp, #0
     884:	e24dd014 	sub	sp, sp, #20
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e50b100c 	str	r1, [fp, #-12]
     890:	e50b2010 	str	r2, [fp, #-16]
     894:	ea000008 	b	8bc <strncmp+0x40>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e2833001 	add	r3, r3, #1
     8a0:	e50b3008 	str	r3, [fp, #-8]
     8a4:	e51b300c 	ldr	r3, [fp, #-12]
     8a8:	e2833001 	add	r3, r3, #1
     8ac:	e50b300c 	str	r3, [fp, #-12]
     8b0:	e51b3010 	ldr	r3, [fp, #-16]
     8b4:	e2433001 	sub	r3, r3, #1
     8b8:	e50b3010 	str	r3, [fp, #-16]
     8bc:	e51b3010 	ldr	r3, [fp, #-16]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	da00000d 	ble	900 <strncmp+0x84>
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e5d33000 	ldrb	r3, [r3]
     8d0:	e3530000 	cmp	r3, #0
     8d4:	0a000009 	beq	900 <strncmp+0x84>
     8d8:	e51b300c 	ldr	r3, [fp, #-12]
     8dc:	e5d33000 	ldrb	r3, [r3]
     8e0:	e3530000 	cmp	r3, #0
     8e4:	0a000005 	beq	900 <strncmp+0x84>
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e5d32000 	ldrb	r2, [r3]
     8f0:	e51b300c 	ldr	r3, [fp, #-12]
     8f4:	e5d33000 	ldrb	r3, [r3]
     8f8:	e1520003 	cmp	r2, r3
     8fc:	0affffe5 	beq	898 <strncmp+0x1c>
     900:	e51b3010 	ldr	r3, [fp, #-16]
     904:	e3530000 	cmp	r3, #0
     908:	1a000001 	bne	914 <strncmp+0x98>
     90c:	e3a03000 	mov	r3, #0
     910:	ea000005 	b	92c <strncmp+0xb0>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5d33000 	ldrb	r3, [r3]
     91c:	e1a02003 	mov	r2, r3
     920:	e51b300c 	ldr	r3, [fp, #-12]
     924:	e5d33000 	ldrb	r3, [r3]
     928:	e0423003 	sub	r3, r2, r3
     92c:	e1a00003 	mov	r0, r3
     930:	e28bd000 	add	sp, fp, #0
     934:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <strncpy>:
     93c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     940:	e28db000 	add	fp, sp, #0
     944:	e24dd01c 	sub	sp, sp, #28
     948:	e50b0010 	str	r0, [fp, #-16]
     94c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     950:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     954:	e51b3010 	ldr	r3, [fp, #-16]
     958:	e50b3008 	str	r3, [fp, #-8]
     95c:	ea00000a 	b	98c <strncpy+0x50>
     960:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     964:	e2823001 	add	r3, r2, #1
     968:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e2831001 	add	r1, r3, #1
     974:	e50b1008 	str	r1, [fp, #-8]
     978:	e5d22000 	ldrb	r2, [r2]
     97c:	e5c32000 	strb	r2, [r3]
     980:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     984:	e2433001 	sub	r3, r3, #1
     988:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     98c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     990:	e3530000 	cmp	r3, #0
     994:	da00000c 	ble	9cc <strncpy+0x90>
     998:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     99c:	e5d33000 	ldrb	r3, [r3]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	1affffed 	bne	960 <strncpy+0x24>
     9a8:	ea000007 	b	9cc <strncpy+0x90>
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e2832001 	add	r2, r3, #1
     9b4:	e50b2008 	str	r2, [fp, #-8]
     9b8:	e3a02000 	mov	r2, #0
     9bc:	e5c32000 	strb	r2, [r3]
     9c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9c4:	e2433001 	sub	r3, r3, #1
     9c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9d0:	e3530000 	cmp	r3, #0
     9d4:	cafffff4 	bgt	9ac <strncpy+0x70>
     9d8:	e51b3010 	ldr	r3, [fp, #-16]
     9dc:	e1a00003 	mov	r0, r3
     9e0:	e28bd000 	add	sp, fp, #0
     9e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <fork>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00001 	mov	r0, #1
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <exit>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00002 	mov	r0, #2
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <wait>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00003 	mov	r0, #3
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <pipe>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00004 	mov	r0, #4
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <read>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00005 	mov	r0, #5
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <write>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a00010 	mov	r0, #16
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <close>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00015 	mov	r0, #21
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <kill>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00006 	mov	r0, #6
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <exec>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00007 	mov	r0, #7
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <open>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a0000f 	mov	r0, #15
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <mknod>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00011 	mov	r0, #17
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <unlink>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00012 	mov	r0, #18
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <fstat>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00008 	mov	r0, #8
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <link>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00013 	mov	r0, #19
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <mkdir>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00014 	mov	r0, #20
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <chdir>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00009 	mov	r0, #9
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <dup>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0000a 	mov	r0, #10
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <getpid>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a0000b 	mov	r0, #11
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <sbrk>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a0000c 	mov	r0, #12
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <sleep>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a0000d 	mov	r0, #13
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <uptime>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a0000e 	mov	r0, #14
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <proclist>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00016 	mov	r0, #22
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <putc>:
     d04:	e92d4800 	push	{fp, lr}
     d08:	e28db004 	add	fp, sp, #4
     d0c:	e24dd008 	sub	sp, sp, #8
     d10:	e50b0008 	str	r0, [fp, #-8]
     d14:	e1a03001 	mov	r3, r1
     d18:	e54b3009 	strb	r3, [fp, #-9]
     d1c:	e24b3009 	sub	r3, fp, #9
     d20:	e3a02001 	mov	r2, #1
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0008 	ldr	r0, [fp, #-8]
     d2c:	ebffff5b 	bl	aa0 <write>
     d30:	e1a00000 	nop			@ (mov r0, r0)
     d34:	e24bd004 	sub	sp, fp, #4
     d38:	e8bd8800 	pop	{fp, pc}

00000d3c <printint>:
     d3c:	e92d4800 	push	{fp, lr}
     d40:	e28db004 	add	fp, sp, #4
     d44:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d48:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d4c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d50:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d54:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d58:	e3a03000 	mov	r3, #0
     d5c:	e50b300c 	str	r3, [fp, #-12]
     d60:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d64:	e3530000 	cmp	r3, #0
     d68:	0a000008 	beq	d90 <printint+0x54>
     d6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d70:	e3530000 	cmp	r3, #0
     d74:	aa000005 	bge	d90 <printint+0x54>
     d78:	e3a03001 	mov	r3, #1
     d7c:	e50b300c 	str	r3, [fp, #-12]
     d80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d84:	e2633000 	rsb	r3, r3, #0
     d88:	e50b3010 	str	r3, [fp, #-16]
     d8c:	ea000001 	b	d98 <printint+0x5c>
     d90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d94:	e50b3010 	str	r3, [fp, #-16]
     d98:	e3a03000 	mov	r3, #0
     d9c:	e50b3008 	str	r3, [fp, #-8]
     da0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     da4:	e51b3010 	ldr	r3, [fp, #-16]
     da8:	e1a01002 	mov	r1, r2
     dac:	e1a00003 	mov	r0, r3
     db0:	eb0001d5 	bl	150c <__aeabi_uidivmod>
     db4:	e1a03001 	mov	r3, r1
     db8:	e1a01003 	mov	r1, r3
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e2832001 	add	r2, r3, #1
     dc4:	e50b2008 	str	r2, [fp, #-8]
     dc8:	e59f20a0 	ldr	r2, [pc, #160]	@ e70 <printint+0x134>
     dcc:	e7d22001 	ldrb	r2, [r2, r1]
     dd0:	e2433004 	sub	r3, r3, #4
     dd4:	e083300b 	add	r3, r3, fp
     dd8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ddc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     de0:	e1a01003 	mov	r1, r3
     de4:	e51b0010 	ldr	r0, [fp, #-16]
     de8:	eb00018a 	bl	1418 <__udivsi3>
     dec:	e1a03000 	mov	r3, r0
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	e51b3010 	ldr	r3, [fp, #-16]
     df8:	e3530000 	cmp	r3, #0
     dfc:	1affffe7 	bne	da0 <printint+0x64>
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e3530000 	cmp	r3, #0
     e08:	0a00000e 	beq	e48 <printint+0x10c>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e2832001 	add	r2, r3, #1
     e14:	e50b2008 	str	r2, [fp, #-8]
     e18:	e2433004 	sub	r3, r3, #4
     e1c:	e083300b 	add	r3, r3, fp
     e20:	e3a0202d 	mov	r2, #45	@ 0x2d
     e24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e28:	ea000006 	b	e48 <printint+0x10c>
     e2c:	e24b2020 	sub	r2, fp, #32
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e0823003 	add	r3, r2, r3
     e38:	e5d33000 	ldrb	r3, [r3]
     e3c:	e1a01003 	mov	r1, r3
     e40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e44:	ebffffae 	bl	d04 <putc>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e2433001 	sub	r3, r3, #1
     e50:	e50b3008 	str	r3, [fp, #-8]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e3530000 	cmp	r3, #0
     e5c:	aafffff2 	bge	e2c <printint+0xf0>
     e60:	e1a00000 	nop			@ (mov r0, r0)
     e64:	e1a00000 	nop			@ (mov r0, r0)
     e68:	e24bd004 	sub	sp, fp, #4
     e6c:	e8bd8800 	pop	{fp, pc}
     e70:	00001588 	.word	0x00001588

00000e74 <printf>:
     e74:	e92d000e 	push	{r1, r2, r3}
     e78:	e92d4800 	push	{fp, lr}
     e7c:	e28db004 	add	fp, sp, #4
     e80:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e88:	e3a03000 	mov	r3, #0
     e8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e90:	e28b3008 	add	r3, fp, #8
     e94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e98:	e3a03000 	mov	r3, #0
     e9c:	e50b3010 	str	r3, [fp, #-16]
     ea0:	ea000074 	b	1078 <printf+0x204>
     ea4:	e59b2004 	ldr	r2, [fp, #4]
     ea8:	e51b3010 	ldr	r3, [fp, #-16]
     eac:	e0823003 	add	r3, r2, r3
     eb0:	e5d33000 	ldrb	r3, [r3]
     eb4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ebc:	e3530000 	cmp	r3, #0
     ec0:	1a00000b 	bne	ef4 <printf+0x80>
     ec4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec8:	e3530025 	cmp	r3, #37	@ 0x25
     ecc:	1a000002 	bne	edc <printf+0x68>
     ed0:	e3a03025 	mov	r3, #37	@ 0x25
     ed4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ed8:	ea000063 	b	106c <printf+0x1f8>
     edc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee0:	e6ef3073 	uxtb	r3, r3
     ee4:	e1a01003 	mov	r1, r3
     ee8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eec:	ebffff84 	bl	d04 <putc>
     ef0:	ea00005d 	b	106c <printf+0x1f8>
     ef4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ef8:	e3530025 	cmp	r3, #37	@ 0x25
     efc:	1a00005a 	bne	106c <printf+0x1f8>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f04:	e3530064 	cmp	r3, #100	@ 0x64
     f08:	1a00000a 	bne	f38 <printf+0xc4>
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e1a01003 	mov	r1, r3
     f18:	e3a03001 	mov	r3, #1
     f1c:	e3a0200a 	mov	r2, #10
     f20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f24:	ebffff84 	bl	d3c <printint>
     f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e2833004 	add	r3, r3, #4
     f30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f34:	ea00004a 	b	1064 <printf+0x1f0>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e3530078 	cmp	r3, #120	@ 0x78
     f40:	0a000002 	beq	f50 <printf+0xdc>
     f44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f48:	e3530070 	cmp	r3, #112	@ 0x70
     f4c:	1a00000a 	bne	f7c <printf+0x108>
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e1a01003 	mov	r1, r3
     f5c:	e3a03000 	mov	r3, #0
     f60:	e3a02010 	mov	r2, #16
     f64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f68:	ebffff73 	bl	d3c <printint>
     f6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f70:	e2833004 	add	r3, r3, #4
     f74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f78:	ea000039 	b	1064 <printf+0x1f0>
     f7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e3530073 	cmp	r3, #115	@ 0x73
     f84:	1a000018 	bne	fec <printf+0x178>
     f88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b300c 	str	r3, [fp, #-12]
     f94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f98:	e2833004 	add	r3, r3, #4
     f9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e3530000 	cmp	r3, #0
     fa8:	1a00000a 	bne	fd8 <printf+0x164>
     fac:	e59f30f4 	ldr	r3, [pc, #244]	@ 10a8 <printf+0x234>
     fb0:	e50b300c 	str	r3, [fp, #-12]
     fb4:	ea000007 	b	fd8 <printf+0x164>
     fb8:	e51b300c 	ldr	r3, [fp, #-12]
     fbc:	e5d33000 	ldrb	r3, [r3]
     fc0:	e1a01003 	mov	r1, r3
     fc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc8:	ebffff4d 	bl	d04 <putc>
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e2833001 	add	r3, r3, #1
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5d33000 	ldrb	r3, [r3]
     fe0:	e3530000 	cmp	r3, #0
     fe4:	1afffff3 	bne	fb8 <printf+0x144>
     fe8:	ea00001d 	b	1064 <printf+0x1f0>
     fec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff0:	e3530063 	cmp	r3, #99	@ 0x63
     ff4:	1a000009 	bne	1020 <printf+0x1ac>
     ff8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ffc:	e5933000 	ldr	r3, [r3]
    1000:	e6ef3073 	uxtb	r3, r3
    1004:	e1a01003 	mov	r1, r3
    1008:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    100c:	ebffff3c 	bl	d04 <putc>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e2833004 	add	r3, r3, #4
    1018:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    101c:	ea000010 	b	1064 <printf+0x1f0>
    1020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1024:	e3530025 	cmp	r3, #37	@ 0x25
    1028:	1a000005 	bne	1044 <printf+0x1d0>
    102c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1030:	e6ef3073 	uxtb	r3, r3
    1034:	e1a01003 	mov	r1, r3
    1038:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    103c:	ebffff30 	bl	d04 <putc>
    1040:	ea000007 	b	1064 <printf+0x1f0>
    1044:	e3a01025 	mov	r1, #37	@ 0x25
    1048:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    104c:	ebffff2c 	bl	d04 <putc>
    1050:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1054:	e6ef3073 	uxtb	r3, r3
    1058:	e1a01003 	mov	r1, r3
    105c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1060:	ebffff27 	bl	d04 <putc>
    1064:	e3a03000 	mov	r3, #0
    1068:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    106c:	e51b3010 	ldr	r3, [fp, #-16]
    1070:	e2833001 	add	r3, r3, #1
    1074:	e50b3010 	str	r3, [fp, #-16]
    1078:	e59b2004 	ldr	r2, [fp, #4]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e0823003 	add	r3, r2, r3
    1084:	e5d33000 	ldrb	r3, [r3]
    1088:	e3530000 	cmp	r3, #0
    108c:	1affff84 	bne	ea4 <printf+0x30>
    1090:	e1a00000 	nop			@ (mov r0, r0)
    1094:	e1a00000 	nop			@ (mov r0, r0)
    1098:	e24bd004 	sub	sp, fp, #4
    109c:	e8bd4800 	pop	{fp, lr}
    10a0:	e28dd00c 	add	sp, sp, #12
    10a4:	e12fff1e 	bx	lr
    10a8:	00001580 	.word	0x00001580

000010ac <free>:
    10ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10b0:	e28db000 	add	fp, sp, #0
    10b4:	e24dd014 	sub	sp, sp, #20
    10b8:	e50b0010 	str	r0, [fp, #-16]
    10bc:	e51b3010 	ldr	r3, [fp, #-16]
    10c0:	e2433008 	sub	r3, r3, #8
    10c4:	e50b300c 	str	r3, [fp, #-12]
    10c8:	e59f3154 	ldr	r3, [pc, #340]	@ 1224 <free+0x178>
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e50b3008 	str	r3, [fp, #-8]
    10d4:	ea000010 	b	111c <free+0x70>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e51b2008 	ldr	r2, [fp, #-8]
    10e4:	e1520003 	cmp	r2, r3
    10e8:	3a000008 	bcc	1110 <free+0x64>
    10ec:	e51b200c 	ldr	r2, [fp, #-12]
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	8a000010 	bhi	1140 <free+0x94>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e51b200c 	ldr	r2, [fp, #-12]
    1108:	e1520003 	cmp	r2, r3
    110c:	3a00000b 	bcc	1140 <free+0x94>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e50b3008 	str	r3, [fp, #-8]
    111c:	e51b200c 	ldr	r2, [fp, #-12]
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e1520003 	cmp	r2, r3
    1128:	9affffea 	bls	10d8 <free+0x2c>
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5933000 	ldr	r3, [r3]
    1134:	e51b200c 	ldr	r2, [fp, #-12]
    1138:	e1520003 	cmp	r2, r3
    113c:	2affffe5 	bcs	10d8 <free+0x2c>
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5933004 	ldr	r3, [r3, #4]
    1148:	e1a03183 	lsl	r3, r3, #3
    114c:	e51b200c 	ldr	r2, [fp, #-12]
    1150:	e0822003 	add	r2, r2, r3
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5933000 	ldr	r3, [r3]
    115c:	e1520003 	cmp	r2, r3
    1160:	1a00000d 	bne	119c <free+0xf0>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5932004 	ldr	r2, [r3, #4]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e5933004 	ldr	r3, [r3, #4]
    1178:	e0822003 	add	r2, r2, r3
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5832004 	str	r2, [r3, #4]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e5932000 	ldr	r2, [r3]
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e5832000 	str	r2, [r3]
    1198:	ea000003 	b	11ac <free+0x100>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5932000 	ldr	r2, [r3]
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e5832000 	str	r2, [r3]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5933004 	ldr	r3, [r3, #4]
    11b4:	e1a03183 	lsl	r3, r3, #3
    11b8:	e51b2008 	ldr	r2, [fp, #-8]
    11bc:	e0823003 	add	r3, r2, r3
    11c0:	e51b200c 	ldr	r2, [fp, #-12]
    11c4:	e1520003 	cmp	r2, r3
    11c8:	1a00000b 	bne	11fc <free+0x150>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5932004 	ldr	r2, [r3, #4]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e5933004 	ldr	r3, [r3, #4]
    11dc:	e0822003 	add	r2, r2, r3
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5832004 	str	r2, [r3, #4]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5932000 	ldr	r2, [r3]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5832000 	str	r2, [r3]
    11f8:	ea000002 	b	1208 <free+0x15c>
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e51b200c 	ldr	r2, [fp, #-12]
    1204:	e5832000 	str	r2, [r3]
    1208:	e59f2014 	ldr	r2, [pc, #20]	@ 1224 <free+0x178>
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5823000 	str	r3, [r2]
    1214:	e1a00000 	nop			@ (mov r0, r0)
    1218:	e28bd000 	add	sp, fp, #0
    121c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1220:	e12fff1e 	bx	lr
    1224:	000015b4 	.word	0x000015b4

00001228 <morecore>:
    1228:	e92d4800 	push	{fp, lr}
    122c:	e28db004 	add	fp, sp, #4
    1230:	e24dd010 	sub	sp, sp, #16
    1234:	e50b0010 	str	r0, [fp, #-16]
    1238:	e51b3010 	ldr	r3, [fp, #-16]
    123c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1240:	2a000001 	bcs	124c <morecore+0x24>
    1244:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1248:	e50b3010 	str	r3, [fp, #-16]
    124c:	e51b3010 	ldr	r3, [fp, #-16]
    1250:	e1a03183 	lsl	r3, r3, #3
    1254:	e1a00003 	mov	r0, r3
    1258:	ebfffe85 	bl	c74 <sbrk>
    125c:	e50b0008 	str	r0, [fp, #-8]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e3730001 	cmn	r3, #1
    1268:	1a000001 	bne	1274 <morecore+0x4c>
    126c:	e3a03000 	mov	r3, #0
    1270:	ea00000a 	b	12a0 <morecore+0x78>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e50b300c 	str	r3, [fp, #-12]
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e51b2010 	ldr	r2, [fp, #-16]
    1284:	e5832004 	str	r2, [r3, #4]
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e2833008 	add	r3, r3, #8
    1290:	e1a00003 	mov	r0, r3
    1294:	ebffff84 	bl	10ac <free>
    1298:	e59f300c 	ldr	r3, [pc, #12]	@ 12ac <morecore+0x84>
    129c:	e5933000 	ldr	r3, [r3]
    12a0:	e1a00003 	mov	r0, r3
    12a4:	e24bd004 	sub	sp, fp, #4
    12a8:	e8bd8800 	pop	{fp, pc}
    12ac:	000015b4 	.word	0x000015b4

000012b0 <malloc>:
    12b0:	e92d4800 	push	{fp, lr}
    12b4:	e28db004 	add	fp, sp, #4
    12b8:	e24dd018 	sub	sp, sp, #24
    12bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	e2833007 	add	r3, r3, #7
    12c8:	e1a031a3 	lsr	r3, r3, #3
    12cc:	e2833001 	add	r3, r3, #1
    12d0:	e50b3010 	str	r3, [fp, #-16]
    12d4:	e59f3134 	ldr	r3, [pc, #308]	@ 1410 <malloc+0x160>
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e50b300c 	str	r3, [fp, #-12]
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e3530000 	cmp	r3, #0
    12e8:	1a00000b 	bne	131c <malloc+0x6c>
    12ec:	e59f3120 	ldr	r3, [pc, #288]	@ 1414 <malloc+0x164>
    12f0:	e50b300c 	str	r3, [fp, #-12]
    12f4:	e59f2114 	ldr	r2, [pc, #276]	@ 1410 <malloc+0x160>
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5823000 	str	r3, [r2]
    1300:	e59f3108 	ldr	r3, [pc, #264]	@ 1410 <malloc+0x160>
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e59f2104 	ldr	r2, [pc, #260]	@ 1414 <malloc+0x164>
    130c:	e5823000 	str	r3, [r2]
    1310:	e59f30fc 	ldr	r3, [pc, #252]	@ 1414 <malloc+0x164>
    1314:	e3a02000 	mov	r2, #0
    1318:	e5832004 	str	r2, [r3, #4]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5933000 	ldr	r3, [r3]
    1324:	e50b3008 	str	r3, [fp, #-8]
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933004 	ldr	r3, [r3, #4]
    1330:	e51b2010 	ldr	r2, [fp, #-16]
    1334:	e1520003 	cmp	r2, r3
    1338:	8a00001e 	bhi	13b8 <malloc+0x108>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933004 	ldr	r3, [r3, #4]
    1344:	e51b2010 	ldr	r2, [fp, #-16]
    1348:	e1520003 	cmp	r2, r3
    134c:	1a000004 	bne	1364 <malloc+0xb4>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5932000 	ldr	r2, [r3]
    1358:	e51b300c 	ldr	r3, [fp, #-12]
    135c:	e5832000 	str	r2, [r3]
    1360:	ea00000e 	b	13a0 <malloc+0xf0>
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5932004 	ldr	r2, [r3, #4]
    136c:	e51b3010 	ldr	r3, [fp, #-16]
    1370:	e0422003 	sub	r2, r2, r3
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5832004 	str	r2, [r3, #4]
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5933004 	ldr	r3, [r3, #4]
    1384:	e1a03183 	lsl	r3, r3, #3
    1388:	e51b2008 	ldr	r2, [fp, #-8]
    138c:	e0823003 	add	r3, r2, r3
    1390:	e50b3008 	str	r3, [fp, #-8]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e51b2010 	ldr	r2, [fp, #-16]
    139c:	e5832004 	str	r2, [r3, #4]
    13a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1410 <malloc+0x160>
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e5823000 	str	r3, [r2]
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e2833008 	add	r3, r3, #8
    13b4:	ea000012 	b	1404 <malloc+0x154>
    13b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1410 <malloc+0x160>
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e51b2008 	ldr	r2, [fp, #-8]
    13c4:	e1520003 	cmp	r2, r3
    13c8:	1a000007 	bne	13ec <malloc+0x13c>
    13cc:	e51b0010 	ldr	r0, [fp, #-16]
    13d0:	ebffff94 	bl	1228 <morecore>
    13d4:	e50b0008 	str	r0, [fp, #-8]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e3530000 	cmp	r3, #0
    13e0:	1a000001 	bne	13ec <malloc+0x13c>
    13e4:	e3a03000 	mov	r3, #0
    13e8:	ea000005 	b	1404 <malloc+0x154>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e50b300c 	str	r3, [fp, #-12]
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e50b3008 	str	r3, [fp, #-8]
    1400:	eaffffc8 	b	1328 <malloc+0x78>
    1404:	e1a00003 	mov	r0, r3
    1408:	e24bd004 	sub	sp, fp, #4
    140c:	e8bd8800 	pop	{fp, pc}
    1410:	000015b4 	.word	0x000015b4
    1414:	000015ac 	.word	0x000015ac

00001418 <__udivsi3>:
    1418:	e2512001 	subs	r2, r1, #1
    141c:	012fff1e 	bxeq	lr
    1420:	3a000036 	bcc	1500 <__udivsi3+0xe8>
    1424:	e1500001 	cmp	r0, r1
    1428:	9a000022 	bls	14b8 <__udivsi3+0xa0>
    142c:	e1110002 	tst	r1, r2
    1430:	0a000023 	beq	14c4 <__udivsi3+0xac>
    1434:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1438:	01a01181 	lsleq	r1, r1, #3
    143c:	03a03008 	moveq	r3, #8
    1440:	13a03001 	movne	r3, #1
    1444:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1448:	31510000 	cmpcc	r1, r0
    144c:	31a01201 	lslcc	r1, r1, #4
    1450:	31a03203 	lslcc	r3, r3, #4
    1454:	3afffffa 	bcc	1444 <__udivsi3+0x2c>
    1458:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    145c:	31510000 	cmpcc	r1, r0
    1460:	31a01081 	lslcc	r1, r1, #1
    1464:	31a03083 	lslcc	r3, r3, #1
    1468:	3afffffa 	bcc	1458 <__udivsi3+0x40>
    146c:	e3a02000 	mov	r2, #0
    1470:	e1500001 	cmp	r0, r1
    1474:	20400001 	subcs	r0, r0, r1
    1478:	21822003 	orrcs	r2, r2, r3
    147c:	e15000a1 	cmp	r0, r1, lsr #1
    1480:	204000a1 	subcs	r0, r0, r1, lsr #1
    1484:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1488:	e1500121 	cmp	r0, r1, lsr #2
    148c:	20400121 	subcs	r0, r0, r1, lsr #2
    1490:	21822123 	orrcs	r2, r2, r3, lsr #2
    1494:	e15001a1 	cmp	r0, r1, lsr #3
    1498:	204001a1 	subcs	r0, r0, r1, lsr #3
    149c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14a0:	e3500000 	cmp	r0, #0
    14a4:	11b03223 	lsrsne	r3, r3, #4
    14a8:	11a01221 	lsrne	r1, r1, #4
    14ac:	1affffef 	bne	1470 <__udivsi3+0x58>
    14b0:	e1a00002 	mov	r0, r2
    14b4:	e12fff1e 	bx	lr
    14b8:	03a00001 	moveq	r0, #1
    14bc:	13a00000 	movne	r0, #0
    14c0:	e12fff1e 	bx	lr
    14c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    14c8:	21a01821 	lsrcs	r1, r1, #16
    14cc:	23a02010 	movcs	r2, #16
    14d0:	33a02000 	movcc	r2, #0
    14d4:	e3510c01 	cmp	r1, #256	@ 0x100
    14d8:	21a01421 	lsrcs	r1, r1, #8
    14dc:	22822008 	addcs	r2, r2, #8
    14e0:	e3510010 	cmp	r1, #16
    14e4:	21a01221 	lsrcs	r1, r1, #4
    14e8:	22822004 	addcs	r2, r2, #4
    14ec:	e3510004 	cmp	r1, #4
    14f0:	82822003 	addhi	r2, r2, #3
    14f4:	908220a1 	addls	r2, r2, r1, lsr #1
    14f8:	e1a00230 	lsr	r0, r0, r2
    14fc:	e12fff1e 	bx	lr
    1500:	e3500000 	cmp	r0, #0
    1504:	13e00000 	mvnne	r0, #0
    1508:	ea000007 	b	152c <__aeabi_idiv0>

0000150c <__aeabi_uidivmod>:
    150c:	e3510000 	cmp	r1, #0
    1510:	0afffffa 	beq	1500 <__udivsi3+0xe8>
    1514:	e92d4003 	push	{r0, r1, lr}
    1518:	ebffffbe 	bl	1418 <__udivsi3>
    151c:	e8bd4006 	pop	{r1, r2, lr}
    1520:	e0030092 	mul	r3, r2, r0
    1524:	e0411003 	sub	r1, r1, r3
    1528:	e12fff1e 	bx	lr

0000152c <__aeabi_idiv0>:
    152c:	e12fff1e 	bx	lr
