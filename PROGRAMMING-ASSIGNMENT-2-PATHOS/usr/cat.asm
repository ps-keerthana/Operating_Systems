
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000203 	bl	834 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb0001f6 	bl	810 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb000305 	bl	c74 <printf>
      5c:	eb0001d0 	bl	7a4 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001378 	.word	0x00001378
      70:	00001330 	.word	0x00001330

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb0001c0 	bl	7a4 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0001fd 	bl	8c4 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb0002dc 	bl	c74 <printf>
     100:	eb0001a7 	bl	7a4 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb0001d0 	bl	858 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb00019b 	bl	7a4 <exit>
     134:	00001344 	.word	0x00001344

00000138 <strcpy>:
     138:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e1a00000 	nop			@ (mov r0, r0)
     158:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     15c:	e2823001 	add	r3, r2, #1
     160:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e2831001 	add	r1, r3, #1
     16c:	e50b1010 	str	r1, [fp, #-16]
     170:	e5d22000 	ldrb	r2, [r2]
     174:	e5c32000 	strb	r2, [r3]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff4 	bne	158 <strcpy+0x20>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <strcmp>:
     198:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd00c 	sub	sp, sp, #12
     1a4:	e50b0008 	str	r0, [fp, #-8]
     1a8:	e50b100c 	str	r1, [fp, #-12]
     1ac:	ea000005 	b	1c8 <strcmp+0x30>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b300c 	str	r3, [fp, #-12]
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	0a000005 	beq	1f0 <strcmp+0x58>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e5d32000 	ldrb	r2, [r3]
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e1520003 	cmp	r2, r3
     1ec:	0affffef 	beq	1b0 <strcmp+0x18>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strlen>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd014 	sub	sp, sp, #20
     224:	e50b0010 	str	r0, [fp, #-16]
     228:	e3a03000 	mov	r3, #0
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	ea000002 	b	240 <strlen+0x28>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e51b2010 	ldr	r2, [fp, #-16]
     248:	e0823003 	add	r3, r2, r3
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	1afffff6 	bne	234 <strlen+0x1c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e1a00003 	mov	r0, r3
     260:	e28bd000 	add	sp, fp, #0
     264:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     268:	e12fff1e 	bx	lr

0000026c <memset>:
     26c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     270:	e28db000 	add	fp, sp, #0
     274:	e24dd024 	sub	sp, sp, #36	@ 0x24
     278:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     27c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     280:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     290:	e54b300d 	strb	r3, [fp, #-13]
     294:	e55b200d 	ldrb	r2, [fp, #-13]
     298:	e1a03002 	mov	r3, r2
     29c:	e1a03403 	lsl	r3, r3, #8
     2a0:	e0833002 	add	r3, r3, r2
     2a4:	e1a03803 	lsl	r3, r3, #16
     2a8:	e1a02003 	mov	r2, r3
     2ac:	e55b300d 	ldrb	r3, [fp, #-13]
     2b0:	e1a03403 	lsl	r3, r3, #8
     2b4:	e1822003 	orr	r2, r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1823003 	orr	r3, r2, r3
     2c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2c4:	ea000008 	b	2ec <memset+0x80>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e5c32000 	strb	r2, [r3]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e2433001 	sub	r3, r3, #1
     2dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e3530000 	cmp	r3, #0
     2f4:	0a000003 	beq	308 <memset+0x9c>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2033003 	and	r3, r3, #3
     300:	e3530000 	cmp	r3, #0
     304:	1affffef 	bne	2c8 <memset+0x5c>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e50b300c 	str	r3, [fp, #-12]
     310:	ea000008 	b	338 <memset+0xcc>
     314:	e51b300c 	ldr	r3, [fp, #-12]
     318:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     31c:	e5832000 	str	r2, [r3]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e2433004 	sub	r3, r3, #4
     328:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e51b300c 	ldr	r3, [fp, #-12]
     330:	e2833004 	add	r3, r3, #4
     334:	e50b300c 	str	r3, [fp, #-12]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e3530003 	cmp	r3, #3
     340:	8afffff3 	bhi	314 <memset+0xa8>
     344:	e51b300c 	ldr	r3, [fp, #-12]
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	ea000008 	b	374 <memset+0x108>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e55b200d 	ldrb	r2, [fp, #-13]
     358:	e5c32000 	strb	r2, [r3]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     360:	e2433001 	sub	r3, r3, #1
     364:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     378:	e3530000 	cmp	r3, #0
     37c:	1afffff3 	bne	350 <memset+0xe4>
     380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     384:	e1a00003 	mov	r0, r3
     388:	e28bd000 	add	sp, fp, #0
     38c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     390:	e12fff1e 	bx	lr

00000394 <strchr>:
     394:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     398:	e28db000 	add	fp, sp, #0
     39c:	e24dd00c 	sub	sp, sp, #12
     3a0:	e50b0008 	str	r0, [fp, #-8]
     3a4:	e1a03001 	mov	r3, r1
     3a8:	e54b3009 	strb	r3, [fp, #-9]
     3ac:	ea000009 	b	3d8 <strchr+0x44>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e5d33000 	ldrb	r3, [r3]
     3b8:	e55b2009 	ldrb	r2, [fp, #-9]
     3bc:	e1520003 	cmp	r2, r3
     3c0:	1a000001 	bne	3cc <strchr+0x38>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	ea000007 	b	3ec <strchr+0x58>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e5d33000 	ldrb	r3, [r3]
     3e0:	e3530000 	cmp	r3, #0
     3e4:	1afffff1 	bne	3b0 <strchr+0x1c>
     3e8:	e3a03000 	mov	r3, #0
     3ec:	e1a00003 	mov	r0, r3
     3f0:	e28bd000 	add	sp, fp, #0
     3f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f8:	e12fff1e 	bx	lr

000003fc <gets>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd018 	sub	sp, sp, #24
     408:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     40c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     410:	e3a03000 	mov	r3, #0
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	ea000016 	b	478 <gets+0x7c>
     41c:	e24b300d 	sub	r3, fp, #13
     420:	e3a02001 	mov	r2, #1
     424:	e1a01003 	mov	r1, r3
     428:	e3a00000 	mov	r0, #0
     42c:	eb0000f7 	bl	810 <read>
     430:	e50b000c 	str	r0, [fp, #-12]
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e3530000 	cmp	r3, #0
     43c:	da000013 	ble	490 <gets+0x94>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e2832001 	add	r2, r3, #1
     448:	e50b2008 	str	r2, [fp, #-8]
     44c:	e1a02003 	mov	r2, r3
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e0833002 	add	r3, r3, r2
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e55b300d 	ldrb	r3, [fp, #-13]
     464:	e353000a 	cmp	r3, #10
     468:	0a000009 	beq	494 <gets+0x98>
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000d 	cmp	r3, #13
     474:	0a000006 	beq	494 <gets+0x98>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2833001 	add	r3, r3, #1
     480:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     484:	e1520003 	cmp	r2, r3
     488:	caffffe3 	bgt	41c <gets+0x20>
     48c:	ea000000 	b	494 <gets+0x98>
     490:	e1a00000 	nop			@ (mov r0, r0)
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     49c:	e0823003 	add	r3, r2, r3
     4a0:	e3a02000 	mov	r2, #0
     4a4:	e5c32000 	strb	r2, [r3]
     4a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e24bd004 	sub	sp, fp, #4
     4b4:	e8bd8800 	pop	{fp, pc}

000004b8 <stat>:
     4b8:	e92d4800 	push	{fp, lr}
     4bc:	e28db004 	add	fp, sp, #4
     4c0:	e24dd010 	sub	sp, sp, #16
     4c4:	e50b0010 	str	r0, [fp, #-16]
     4c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4cc:	e3a01000 	mov	r1, #0
     4d0:	e51b0010 	ldr	r0, [fp, #-16]
     4d4:	eb0000fa 	bl	8c4 <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb00010c 	bl	930 <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb0000d3 	bl	858 <close>
     508:	e51b300c 	ldr	r3, [fp, #-12]
     50c:	e1a00003 	mov	r0, r3
     510:	e24bd004 	sub	sp, fp, #4
     514:	e8bd8800 	pop	{fp, pc}

00000518 <atoi>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd014 	sub	sp, sp, #20
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e3a03000 	mov	r3, #0
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	ea00000c 	b	568 <atoi+0x50>
     534:	e51b2008 	ldr	r2, [fp, #-8]
     538:	e1a03002 	mov	r3, r2
     53c:	e1a03103 	lsl	r3, r3, #2
     540:	e0833002 	add	r3, r3, r2
     544:	e1a03083 	lsl	r3, r3, #1
     548:	e1a01003 	mov	r1, r3
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2010 	str	r2, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e0813003 	add	r3, r1, r3
     560:	e2433030 	sub	r3, r3, #48	@ 0x30
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3010 	ldr	r3, [fp, #-16]
     56c:	e5d33000 	ldrb	r3, [r3]
     570:	e353002f 	cmp	r3, #47	@ 0x2f
     574:	9a000003 	bls	588 <atoi+0x70>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e5d33000 	ldrb	r3, [r3]
     580:	e3530039 	cmp	r3, #57	@ 0x39
     584:	9affffea 	bls	534 <atoi+0x1c>
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e1a00003 	mov	r0, r3
     590:	e28bd000 	add	sp, fp, #0
     594:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     598:	e12fff1e 	bx	lr

0000059c <memmove>:
     59c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5a0:	e28db000 	add	fp, sp, #0
     5a4:	e24dd01c 	sub	sp, sp, #28
     5a8:	e50b0010 	str	r0, [fp, #-16]
     5ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e51b3010 	ldr	r3, [fp, #-16]
     5b8:	e50b3008 	str	r3, [fp, #-8]
     5bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5c0:	e50b300c 	str	r3, [fp, #-12]
     5c4:	ea000007 	b	5e8 <memmove+0x4c>
     5c8:	e51b200c 	ldr	r2, [fp, #-12]
     5cc:	e2823001 	add	r3, r2, #1
     5d0:	e50b300c 	str	r3, [fp, #-12]
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2831001 	add	r1, r3, #1
     5dc:	e50b1008 	str	r1, [fp, #-8]
     5e0:	e5d22000 	ldrb	r2, [r2]
     5e4:	e5c32000 	strb	r2, [r3]
     5e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ec:	e2432001 	sub	r2, r3, #1
     5f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f4:	e3530000 	cmp	r3, #0
     5f8:	cafffff2 	bgt	5c8 <memmove+0x2c>
     5fc:	e51b3010 	ldr	r3, [fp, #-16]
     600:	e1a00003 	mov	r0, r3
     604:	e28bd000 	add	sp, fp, #0
     608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <strncmp>:
     610:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     614:	e28db000 	add	fp, sp, #0
     618:	e24dd014 	sub	sp, sp, #20
     61c:	e50b0008 	str	r0, [fp, #-8]
     620:	e50b100c 	str	r1, [fp, #-12]
     624:	e50b2010 	str	r2, [fp, #-16]
     628:	ea000008 	b	650 <strncmp+0x40>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e2833001 	add	r3, r3, #1
     634:	e50b3008 	str	r3, [fp, #-8]
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b300c 	str	r3, [fp, #-12]
     644:	e51b3010 	ldr	r3, [fp, #-16]
     648:	e2433001 	sub	r3, r3, #1
     64c:	e50b3010 	str	r3, [fp, #-16]
     650:	e51b3010 	ldr	r3, [fp, #-16]
     654:	e3530000 	cmp	r3, #0
     658:	da00000d 	ble	694 <strncmp+0x84>
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e5d33000 	ldrb	r3, [r3]
     664:	e3530000 	cmp	r3, #0
     668:	0a000009 	beq	694 <strncmp+0x84>
     66c:	e51b300c 	ldr	r3, [fp, #-12]
     670:	e5d33000 	ldrb	r3, [r3]
     674:	e3530000 	cmp	r3, #0
     678:	0a000005 	beq	694 <strncmp+0x84>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e5d32000 	ldrb	r2, [r3]
     684:	e51b300c 	ldr	r3, [fp, #-12]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e1520003 	cmp	r2, r3
     690:	0affffe5 	beq	62c <strncmp+0x1c>
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e3530000 	cmp	r3, #0
     69c:	1a000001 	bne	6a8 <strncmp+0x98>
     6a0:	e3a03000 	mov	r3, #0
     6a4:	ea000005 	b	6c0 <strncmp+0xb0>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e5d33000 	ldrb	r3, [r3]
     6b0:	e1a02003 	mov	r2, r3
     6b4:	e51b300c 	ldr	r3, [fp, #-12]
     6b8:	e5d33000 	ldrb	r3, [r3]
     6bc:	e0423003 	sub	r3, r2, r3
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e28bd000 	add	sp, fp, #0
     6c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <strncpy>:
     6d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d4:	e28db000 	add	fp, sp, #0
     6d8:	e24dd01c 	sub	sp, sp, #28
     6dc:	e50b0010 	str	r0, [fp, #-16]
     6e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6e8:	e51b3010 	ldr	r3, [fp, #-16]
     6ec:	e50b3008 	str	r3, [fp, #-8]
     6f0:	ea00000a 	b	720 <strncpy+0x50>
     6f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6f8:	e2823001 	add	r3, r2, #1
     6fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e2831001 	add	r1, r3, #1
     708:	e50b1008 	str	r1, [fp, #-8]
     70c:	e5d22000 	ldrb	r2, [r2]
     710:	e5c32000 	strb	r2, [r3]
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e2433001 	sub	r3, r3, #1
     71c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     720:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     724:	e3530000 	cmp	r3, #0
     728:	da00000c 	ble	760 <strncpy+0x90>
     72c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     730:	e5d33000 	ldrb	r3, [r3]
     734:	e3530000 	cmp	r3, #0
     738:	1affffed 	bne	6f4 <strncpy+0x24>
     73c:	ea000007 	b	760 <strncpy+0x90>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e2832001 	add	r2, r3, #1
     748:	e50b2008 	str	r2, [fp, #-8]
     74c:	e3a02000 	mov	r2, #0
     750:	e5c32000 	strb	r2, [r3]
     754:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     758:	e2433001 	sub	r3, r3, #1
     75c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     764:	e3530000 	cmp	r3, #0
     768:	cafffff4 	bgt	740 <strncpy+0x70>
     76c:	e51b3010 	ldr	r3, [fp, #-16]
     770:	e1a00003 	mov	r0, r3
     774:	e28bd000 	add	sp, fp, #0
     778:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <fork>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00001 	mov	r0, #1
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <exit>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00002 	mov	r0, #2
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <wait>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00003 	mov	r0, #3
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <pipe>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00004 	mov	r0, #4
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <read>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00005 	mov	r0, #5
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <write>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00010 	mov	r0, #16
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <close>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00015 	mov	r0, #21
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <kill>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00006 	mov	r0, #6
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <exec>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00007 	mov	r0, #7
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <open>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a0000f 	mov	r0, #15
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <mknod>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00011 	mov	r0, #17
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <unlink>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00012 	mov	r0, #18
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <fstat>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00008 	mov	r0, #8
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <link>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00013 	mov	r0, #19
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <mkdir>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00014 	mov	r0, #20
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <chdir>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00009 	mov	r0, #9
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <dup>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a0000a 	mov	r0, #10
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <getpid>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a0000b 	mov	r0, #11
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <sbrk>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a0000c 	mov	r0, #12
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <sleep>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a0000d 	mov	r0, #13
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <uptime>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a0000e 	mov	r0, #14
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <proclist>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00016 	mov	r0, #22
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <settickets>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00017 	mov	r0, #23
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <srand>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00018 	mov	r0, #24
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <getpinfo>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00019 	mov	r0, #25
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <putc>:
     b04:	e92d4800 	push	{fp, lr}
     b08:	e28db004 	add	fp, sp, #4
     b0c:	e24dd008 	sub	sp, sp, #8
     b10:	e50b0008 	str	r0, [fp, #-8]
     b14:	e1a03001 	mov	r3, r1
     b18:	e54b3009 	strb	r3, [fp, #-9]
     b1c:	e24b3009 	sub	r3, fp, #9
     b20:	e3a02001 	mov	r2, #1
     b24:	e1a01003 	mov	r1, r3
     b28:	e51b0008 	ldr	r0, [fp, #-8]
     b2c:	ebffff40 	bl	834 <write>
     b30:	e1a00000 	nop			@ (mov r0, r0)
     b34:	e24bd004 	sub	sp, fp, #4
     b38:	e8bd8800 	pop	{fp, pc}

00000b3c <printint>:
     b3c:	e92d4800 	push	{fp, lr}
     b40:	e28db004 	add	fp, sp, #4
     b44:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b48:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b4c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b50:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b54:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b58:	e3a03000 	mov	r3, #0
     b5c:	e50b300c 	str	r3, [fp, #-12]
     b60:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b64:	e3530000 	cmp	r3, #0
     b68:	0a000008 	beq	b90 <printint+0x54>
     b6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b70:	e3530000 	cmp	r3, #0
     b74:	aa000005 	bge	b90 <printint+0x54>
     b78:	e3a03001 	mov	r3, #1
     b7c:	e50b300c 	str	r3, [fp, #-12]
     b80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b84:	e2633000 	rsb	r3, r3, #0
     b88:	e50b3010 	str	r3, [fp, #-16]
     b8c:	ea000001 	b	b98 <printint+0x5c>
     b90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b94:	e50b3010 	str	r3, [fp, #-16]
     b98:	e3a03000 	mov	r3, #0
     b9c:	e50b3008 	str	r3, [fp, #-8]
     ba0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ba4:	e51b3010 	ldr	r3, [fp, #-16]
     ba8:	e1a01002 	mov	r1, r2
     bac:	e1a00003 	mov	r0, r3
     bb0:	eb0001d5 	bl	130c <__aeabi_uidivmod>
     bb4:	e1a03001 	mov	r3, r1
     bb8:	e1a01003 	mov	r1, r3
     bbc:	e51b3008 	ldr	r3, [fp, #-8]
     bc0:	e2832001 	add	r2, r3, #1
     bc4:	e50b2008 	str	r2, [fp, #-8]
     bc8:	e59f20a0 	ldr	r2, [pc, #160]	@ c70 <printint+0x134>
     bcc:	e7d22001 	ldrb	r2, [r2, r1]
     bd0:	e2433004 	sub	r3, r3, #4
     bd4:	e083300b 	add	r3, r3, fp
     bd8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bdc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     be0:	e1a01003 	mov	r1, r3
     be4:	e51b0010 	ldr	r0, [fp, #-16]
     be8:	eb00018a 	bl	1218 <__udivsi3>
     bec:	e1a03000 	mov	r3, r0
     bf0:	e50b3010 	str	r3, [fp, #-16]
     bf4:	e51b3010 	ldr	r3, [fp, #-16]
     bf8:	e3530000 	cmp	r3, #0
     bfc:	1affffe7 	bne	ba0 <printint+0x64>
     c00:	e51b300c 	ldr	r3, [fp, #-12]
     c04:	e3530000 	cmp	r3, #0
     c08:	0a00000e 	beq	c48 <printint+0x10c>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e2832001 	add	r2, r3, #1
     c14:	e50b2008 	str	r2, [fp, #-8]
     c18:	e2433004 	sub	r3, r3, #4
     c1c:	e083300b 	add	r3, r3, fp
     c20:	e3a0202d 	mov	r2, #45	@ 0x2d
     c24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c28:	ea000006 	b	c48 <printint+0x10c>
     c2c:	e24b2020 	sub	r2, fp, #32
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e0823003 	add	r3, r2, r3
     c38:	e5d33000 	ldrb	r3, [r3]
     c3c:	e1a01003 	mov	r1, r3
     c40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c44:	ebffffae 	bl	b04 <putc>
     c48:	e51b3008 	ldr	r3, [fp, #-8]
     c4c:	e2433001 	sub	r3, r3, #1
     c50:	e50b3008 	str	r3, [fp, #-8]
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e3530000 	cmp	r3, #0
     c5c:	aafffff2 	bge	c2c <printint+0xf0>
     c60:	e1a00000 	nop			@ (mov r0, r0)
     c64:	e1a00000 	nop			@ (mov r0, r0)
     c68:	e24bd004 	sub	sp, fp, #4
     c6c:	e8bd8800 	pop	{fp, pc}
     c70:	00001364 	.word	0x00001364

00000c74 <printf>:
     c74:	e92d000e 	push	{r1, r2, r3}
     c78:	e92d4800 	push	{fp, lr}
     c7c:	e28db004 	add	fp, sp, #4
     c80:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c88:	e3a03000 	mov	r3, #0
     c8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c90:	e28b3008 	add	r3, fp, #8
     c94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e3a03000 	mov	r3, #0
     c9c:	e50b3010 	str	r3, [fp, #-16]
     ca0:	ea000074 	b	e78 <printf+0x204>
     ca4:	e59b2004 	ldr	r2, [fp, #4]
     ca8:	e51b3010 	ldr	r3, [fp, #-16]
     cac:	e0823003 	add	r3, r2, r3
     cb0:	e5d33000 	ldrb	r3, [r3]
     cb4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     cb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cbc:	e3530000 	cmp	r3, #0
     cc0:	1a00000b 	bne	cf4 <printf+0x80>
     cc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc8:	e3530025 	cmp	r3, #37	@ 0x25
     ccc:	1a000002 	bne	cdc <printf+0x68>
     cd0:	e3a03025 	mov	r3, #37	@ 0x25
     cd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd8:	ea000063 	b	e6c <printf+0x1f8>
     cdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce0:	e6ef3073 	uxtb	r3, r3
     ce4:	e1a01003 	mov	r1, r3
     ce8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cec:	ebffff84 	bl	b04 <putc>
     cf0:	ea00005d 	b	e6c <printf+0x1f8>
     cf4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cf8:	e3530025 	cmp	r3, #37	@ 0x25
     cfc:	1a00005a 	bne	e6c <printf+0x1f8>
     d00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d04:	e3530064 	cmp	r3, #100	@ 0x64
     d08:	1a00000a 	bne	d38 <printf+0xc4>
     d0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d10:	e5933000 	ldr	r3, [r3]
     d14:	e1a01003 	mov	r1, r3
     d18:	e3a03001 	mov	r3, #1
     d1c:	e3a0200a 	mov	r2, #10
     d20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d24:	ebffff84 	bl	b3c <printint>
     d28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	e2833004 	add	r3, r3, #4
     d30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d34:	ea00004a 	b	e64 <printf+0x1f0>
     d38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d3c:	e3530078 	cmp	r3, #120	@ 0x78
     d40:	0a000002 	beq	d50 <printf+0xdc>
     d44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d48:	e3530070 	cmp	r3, #112	@ 0x70
     d4c:	1a00000a 	bne	d7c <printf+0x108>
     d50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d54:	e5933000 	ldr	r3, [r3]
     d58:	e1a01003 	mov	r1, r3
     d5c:	e3a03000 	mov	r3, #0
     d60:	e3a02010 	mov	r2, #16
     d64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d68:	ebffff73 	bl	b3c <printint>
     d6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d70:	e2833004 	add	r3, r3, #4
     d74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d78:	ea000039 	b	e64 <printf+0x1f0>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e3530073 	cmp	r3, #115	@ 0x73
     d84:	1a000018 	bne	dec <printf+0x178>
     d88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e50b300c 	str	r3, [fp, #-12]
     d94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d98:	e2833004 	add	r3, r3, #4
     d9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e3530000 	cmp	r3, #0
     da8:	1a00000a 	bne	dd8 <printf+0x164>
     dac:	e59f30f4 	ldr	r3, [pc, #244]	@ ea8 <printf+0x234>
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	ea000007 	b	dd8 <printf+0x164>
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e5d33000 	ldrb	r3, [r3]
     dc0:	e1a01003 	mov	r1, r3
     dc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc8:	ebffff4d 	bl	b04 <putc>
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e2833001 	add	r3, r3, #1
     dd4:	e50b300c 	str	r3, [fp, #-12]
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e5d33000 	ldrb	r3, [r3]
     de0:	e3530000 	cmp	r3, #0
     de4:	1afffff3 	bne	db8 <printf+0x144>
     de8:	ea00001d 	b	e64 <printf+0x1f0>
     dec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e3530063 	cmp	r3, #99	@ 0x63
     df4:	1a000009 	bne	e20 <printf+0x1ac>
     df8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e6ef3073 	uxtb	r3, r3
     e04:	e1a01003 	mov	r1, r3
     e08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e0c:	ebffff3c 	bl	b04 <putc>
     e10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e14:	e2833004 	add	r3, r3, #4
     e18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e1c:	ea000010 	b	e64 <printf+0x1f0>
     e20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e24:	e3530025 	cmp	r3, #37	@ 0x25
     e28:	1a000005 	bne	e44 <printf+0x1d0>
     e2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e30:	e6ef3073 	uxtb	r3, r3
     e34:	e1a01003 	mov	r1, r3
     e38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e3c:	ebffff30 	bl	b04 <putc>
     e40:	ea000007 	b	e64 <printf+0x1f0>
     e44:	e3a01025 	mov	r1, #37	@ 0x25
     e48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e4c:	ebffff2c 	bl	b04 <putc>
     e50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e54:	e6ef3073 	uxtb	r3, r3
     e58:	e1a01003 	mov	r1, r3
     e5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e60:	ebffff27 	bl	b04 <putc>
     e64:	e3a03000 	mov	r3, #0
     e68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e6c:	e51b3010 	ldr	r3, [fp, #-16]
     e70:	e2833001 	add	r3, r3, #1
     e74:	e50b3010 	str	r3, [fp, #-16]
     e78:	e59b2004 	ldr	r2, [fp, #4]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e0823003 	add	r3, r2, r3
     e84:	e5d33000 	ldrb	r3, [r3]
     e88:	e3530000 	cmp	r3, #0
     e8c:	1affff84 	bne	ca4 <printf+0x30>
     e90:	e1a00000 	nop			@ (mov r0, r0)
     e94:	e1a00000 	nop			@ (mov r0, r0)
     e98:	e24bd004 	sub	sp, fp, #4
     e9c:	e8bd4800 	pop	{fp, lr}
     ea0:	e28dd00c 	add	sp, sp, #12
     ea4:	e12fff1e 	bx	lr
     ea8:	0000135c 	.word	0x0000135c

00000eac <free>:
     eac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     eb0:	e28db000 	add	fp, sp, #0
     eb4:	e24dd014 	sub	sp, sp, #20
     eb8:	e50b0010 	str	r0, [fp, #-16]
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e2433008 	sub	r3, r3, #8
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e59f3154 	ldr	r3, [pc, #340]	@ 1024 <free+0x178>
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e50b3008 	str	r3, [fp, #-8]
     ed4:	ea000010 	b	f1c <free+0x70>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e51b2008 	ldr	r2, [fp, #-8]
     ee4:	e1520003 	cmp	r2, r3
     ee8:	3a000008 	bcc	f10 <free+0x64>
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e1520003 	cmp	r2, r3
     ef8:	8a000010 	bhi	f40 <free+0x94>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933000 	ldr	r3, [r3]
     f04:	e51b200c 	ldr	r2, [fp, #-12]
     f08:	e1520003 	cmp	r2, r3
     f0c:	3a00000b 	bcc	f40 <free+0x94>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933000 	ldr	r3, [r3]
     f18:	e50b3008 	str	r3, [fp, #-8]
     f1c:	e51b200c 	ldr	r2, [fp, #-12]
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e1520003 	cmp	r2, r3
     f28:	9affffea 	bls	ed8 <free+0x2c>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e51b200c 	ldr	r2, [fp, #-12]
     f38:	e1520003 	cmp	r2, r3
     f3c:	2affffe5 	bcs	ed8 <free+0x2c>
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5933004 	ldr	r3, [r3, #4]
     f48:	e1a03183 	lsl	r3, r3, #3
     f4c:	e51b200c 	ldr	r2, [fp, #-12]
     f50:	e0822003 	add	r2, r2, r3
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e1520003 	cmp	r2, r3
     f60:	1a00000d 	bne	f9c <free+0xf0>
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5932004 	ldr	r2, [r3, #4]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933000 	ldr	r3, [r3]
     f74:	e5933004 	ldr	r3, [r3, #4]
     f78:	e0822003 	add	r2, r2, r3
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5832004 	str	r2, [r3, #4]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e5932000 	ldr	r2, [r3]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5832000 	str	r2, [r3]
     f98:	ea000003 	b	fac <free+0x100>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5932000 	ldr	r2, [r3]
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5832000 	str	r2, [r3]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e1a03183 	lsl	r3, r3, #3
     fb8:	e51b2008 	ldr	r2, [fp, #-8]
     fbc:	e0823003 	add	r3, r2, r3
     fc0:	e51b200c 	ldr	r2, [fp, #-12]
     fc4:	e1520003 	cmp	r2, r3
     fc8:	1a00000b 	bne	ffc <free+0x150>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5932004 	ldr	r2, [r3, #4]
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e5933004 	ldr	r3, [r3, #4]
     fdc:	e0822003 	add	r2, r2, r3
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5832004 	str	r2, [r3, #4]
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5932000 	ldr	r2, [r3]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5832000 	str	r2, [r3]
     ff8:	ea000002 	b	1008 <free+0x15c>
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e51b200c 	ldr	r2, [fp, #-12]
    1004:	e5832000 	str	r2, [r3]
    1008:	e59f2014 	ldr	r2, [pc, #20]	@ 1024 <free+0x178>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5823000 	str	r3, [r2]
    1014:	e1a00000 	nop			@ (mov r0, r0)
    1018:	e28bd000 	add	sp, fp, #0
    101c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1020:	e12fff1e 	bx	lr
    1024:	00001580 	.word	0x00001580

00001028 <morecore>:
    1028:	e92d4800 	push	{fp, lr}
    102c:	e28db004 	add	fp, sp, #4
    1030:	e24dd010 	sub	sp, sp, #16
    1034:	e50b0010 	str	r0, [fp, #-16]
    1038:	e51b3010 	ldr	r3, [fp, #-16]
    103c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1040:	2a000001 	bcs	104c <morecore+0x24>
    1044:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1048:	e50b3010 	str	r3, [fp, #-16]
    104c:	e51b3010 	ldr	r3, [fp, #-16]
    1050:	e1a03183 	lsl	r3, r3, #3
    1054:	e1a00003 	mov	r0, r3
    1058:	ebfffe6a 	bl	a08 <sbrk>
    105c:	e50b0008 	str	r0, [fp, #-8]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e3730001 	cmn	r3, #1
    1068:	1a000001 	bne	1074 <morecore+0x4c>
    106c:	e3a03000 	mov	r3, #0
    1070:	ea00000a 	b	10a0 <morecore+0x78>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e50b300c 	str	r3, [fp, #-12]
    107c:	e51b300c 	ldr	r3, [fp, #-12]
    1080:	e51b2010 	ldr	r2, [fp, #-16]
    1084:	e5832004 	str	r2, [r3, #4]
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e2833008 	add	r3, r3, #8
    1090:	e1a00003 	mov	r0, r3
    1094:	ebffff84 	bl	eac <free>
    1098:	e59f300c 	ldr	r3, [pc, #12]	@ 10ac <morecore+0x84>
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e1a00003 	mov	r0, r3
    10a4:	e24bd004 	sub	sp, fp, #4
    10a8:	e8bd8800 	pop	{fp, pc}
    10ac:	00001580 	.word	0x00001580

000010b0 <malloc>:
    10b0:	e92d4800 	push	{fp, lr}
    10b4:	e28db004 	add	fp, sp, #4
    10b8:	e24dd018 	sub	sp, sp, #24
    10bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    10c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e2833007 	add	r3, r3, #7
    10c8:	e1a031a3 	lsr	r3, r3, #3
    10cc:	e2833001 	add	r3, r3, #1
    10d0:	e50b3010 	str	r3, [fp, #-16]
    10d4:	e59f3134 	ldr	r3, [pc, #308]	@ 1210 <malloc+0x160>
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e3530000 	cmp	r3, #0
    10e8:	1a00000b 	bne	111c <malloc+0x6c>
    10ec:	e59f3120 	ldr	r3, [pc, #288]	@ 1214 <malloc+0x164>
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	e59f2114 	ldr	r2, [pc, #276]	@ 1210 <malloc+0x160>
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5823000 	str	r3, [r2]
    1100:	e59f3108 	ldr	r3, [pc, #264]	@ 1210 <malloc+0x160>
    1104:	e5933000 	ldr	r3, [r3]
    1108:	e59f2104 	ldr	r2, [pc, #260]	@ 1214 <malloc+0x164>
    110c:	e5823000 	str	r3, [r2]
    1110:	e59f30fc 	ldr	r3, [pc, #252]	@ 1214 <malloc+0x164>
    1114:	e3a02000 	mov	r2, #0
    1118:	e5832004 	str	r2, [r3, #4]
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e50b3008 	str	r3, [fp, #-8]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5933004 	ldr	r3, [r3, #4]
    1130:	e51b2010 	ldr	r2, [fp, #-16]
    1134:	e1520003 	cmp	r2, r3
    1138:	8a00001e 	bhi	11b8 <malloc+0x108>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933004 	ldr	r3, [r3, #4]
    1144:	e51b2010 	ldr	r2, [fp, #-16]
    1148:	e1520003 	cmp	r2, r3
    114c:	1a000004 	bne	1164 <malloc+0xb4>
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e5932000 	ldr	r2, [r3]
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5832000 	str	r2, [r3]
    1160:	ea00000e 	b	11a0 <malloc+0xf0>
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e5932004 	ldr	r2, [r3, #4]
    116c:	e51b3010 	ldr	r3, [fp, #-16]
    1170:	e0422003 	sub	r2, r2, r3
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5832004 	str	r2, [r3, #4]
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e5933004 	ldr	r3, [r3, #4]
    1184:	e1a03183 	lsl	r3, r3, #3
    1188:	e51b2008 	ldr	r2, [fp, #-8]
    118c:	e0823003 	add	r3, r2, r3
    1190:	e50b3008 	str	r3, [fp, #-8]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e51b2010 	ldr	r2, [fp, #-16]
    119c:	e5832004 	str	r2, [r3, #4]
    11a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1210 <malloc+0x160>
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e5823000 	str	r3, [r2]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e2833008 	add	r3, r3, #8
    11b4:	ea000012 	b	1204 <malloc+0x154>
    11b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1210 <malloc+0x160>
    11bc:	e5933000 	ldr	r3, [r3]
    11c0:	e51b2008 	ldr	r2, [fp, #-8]
    11c4:	e1520003 	cmp	r2, r3
    11c8:	1a000007 	bne	11ec <malloc+0x13c>
    11cc:	e51b0010 	ldr	r0, [fp, #-16]
    11d0:	ebffff94 	bl	1028 <morecore>
    11d4:	e50b0008 	str	r0, [fp, #-8]
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e3530000 	cmp	r3, #0
    11e0:	1a000001 	bne	11ec <malloc+0x13c>
    11e4:	e3a03000 	mov	r3, #0
    11e8:	ea000005 	b	1204 <malloc+0x154>
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e50b300c 	str	r3, [fp, #-12]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	eaffffc8 	b	1128 <malloc+0x78>
    1204:	e1a00003 	mov	r0, r3
    1208:	e24bd004 	sub	sp, fp, #4
    120c:	e8bd8800 	pop	{fp, pc}
    1210:	00001580 	.word	0x00001580
    1214:	00001578 	.word	0x00001578

00001218 <__udivsi3>:
    1218:	e2512001 	subs	r2, r1, #1
    121c:	012fff1e 	bxeq	lr
    1220:	3a000036 	bcc	1300 <__udivsi3+0xe8>
    1224:	e1500001 	cmp	r0, r1
    1228:	9a000022 	bls	12b8 <__udivsi3+0xa0>
    122c:	e1110002 	tst	r1, r2
    1230:	0a000023 	beq	12c4 <__udivsi3+0xac>
    1234:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1238:	01a01181 	lsleq	r1, r1, #3
    123c:	03a03008 	moveq	r3, #8
    1240:	13a03001 	movne	r3, #1
    1244:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1248:	31510000 	cmpcc	r1, r0
    124c:	31a01201 	lslcc	r1, r1, #4
    1250:	31a03203 	lslcc	r3, r3, #4
    1254:	3afffffa 	bcc	1244 <__udivsi3+0x2c>
    1258:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    125c:	31510000 	cmpcc	r1, r0
    1260:	31a01081 	lslcc	r1, r1, #1
    1264:	31a03083 	lslcc	r3, r3, #1
    1268:	3afffffa 	bcc	1258 <__udivsi3+0x40>
    126c:	e3a02000 	mov	r2, #0
    1270:	e1500001 	cmp	r0, r1
    1274:	20400001 	subcs	r0, r0, r1
    1278:	21822003 	orrcs	r2, r2, r3
    127c:	e15000a1 	cmp	r0, r1, lsr #1
    1280:	204000a1 	subcs	r0, r0, r1, lsr #1
    1284:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1288:	e1500121 	cmp	r0, r1, lsr #2
    128c:	20400121 	subcs	r0, r0, r1, lsr #2
    1290:	21822123 	orrcs	r2, r2, r3, lsr #2
    1294:	e15001a1 	cmp	r0, r1, lsr #3
    1298:	204001a1 	subcs	r0, r0, r1, lsr #3
    129c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12a0:	e3500000 	cmp	r0, #0
    12a4:	11b03223 	lsrsne	r3, r3, #4
    12a8:	11a01221 	lsrne	r1, r1, #4
    12ac:	1affffef 	bne	1270 <__udivsi3+0x58>
    12b0:	e1a00002 	mov	r0, r2
    12b4:	e12fff1e 	bx	lr
    12b8:	03a00001 	moveq	r0, #1
    12bc:	13a00000 	movne	r0, #0
    12c0:	e12fff1e 	bx	lr
    12c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    12c8:	21a01821 	lsrcs	r1, r1, #16
    12cc:	23a02010 	movcs	r2, #16
    12d0:	33a02000 	movcc	r2, #0
    12d4:	e3510c01 	cmp	r1, #256	@ 0x100
    12d8:	21a01421 	lsrcs	r1, r1, #8
    12dc:	22822008 	addcs	r2, r2, #8
    12e0:	e3510010 	cmp	r1, #16
    12e4:	21a01221 	lsrcs	r1, r1, #4
    12e8:	22822004 	addcs	r2, r2, #4
    12ec:	e3510004 	cmp	r1, #4
    12f0:	82822003 	addhi	r2, r2, #3
    12f4:	908220a1 	addls	r2, r2, r1, lsr #1
    12f8:	e1a00230 	lsr	r0, r0, r2
    12fc:	e12fff1e 	bx	lr
    1300:	e3500000 	cmp	r0, #0
    1304:	13e00000 	mvnne	r0, #0
    1308:	ea000007 	b	132c <__aeabi_idiv0>

0000130c <__aeabi_uidivmod>:
    130c:	e3510000 	cmp	r1, #0
    1310:	0afffffa 	beq	1300 <__udivsi3+0xe8>
    1314:	e92d4003 	push	{r0, r1, lr}
    1318:	ebffffbe 	bl	1218 <__udivsi3>
    131c:	e8bd4006 	pop	{r1, r2, lr}
    1320:	e0030092 	mul	r3, r2, r0
    1324:	e0411003 	sub	r1, r1, r3
    1328:	e12fff1e 	bx	lr

0000132c <__aeabi_idiv0>:
    132c:	e12fff1e 	bx	lr
