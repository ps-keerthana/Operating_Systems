
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb00021a 	bl	884 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb00021c 	bl	8a8 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb000210 	bl	884 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb00024d 	bl	980 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb00024b 	bl	980 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002f5 	bl	c34 <printf>
      5c:	eb0001b7 	bl	740 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb0002ed 	bl	c34 <printf>
      7c:	eb0001b8 	bl	764 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb0001f1 	bl	860 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb0002e3 	bl	c34 <printf>
      a4:	eb0001ae 	bl	764 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0002df 	bl	c34 <printf>
      b4:	eb0001b3 	bl	788 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000012f4 	.word	0x000012f4
      e0:	000012fc 	.word	0x000012fc
      e4:	00001310 	.word	0x00001310
      e8:	00001350 	.word	0x00001350
      ec:	000012f0 	.word	0x000012f0
      f0:	00001324 	.word	0x00001324
      f4:	0000133c 	.word	0x0000133c

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strcmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd00c 	sub	sp, sp, #12
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	ea000005 	b	188 <strcmp+0x30>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3008 	str	r3, [fp, #-8]
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b300c 	str	r3, [fp, #-12]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e3530000 	cmp	r3, #0
     194:	0a000005 	beq	1b0 <strcmp+0x58>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d32000 	ldrb	r2, [r3]
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e1520003 	cmp	r2, r3
     1ac:	0affffef 	beq	170 <strcmp+0x18>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d33000 	ldrb	r3, [r3]
     1b8:	e1a02003 	mov	r2, r3
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e0423003 	sub	r3, r2, r3
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strlen>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd014 	sub	sp, sp, #20
     1e4:	e50b0010 	str	r0, [fp, #-16]
     1e8:	e3a03000 	mov	r3, #0
     1ec:	e50b3008 	str	r3, [fp, #-8]
     1f0:	ea000002 	b	200 <strlen+0x28>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e51b2010 	ldr	r2, [fp, #-16]
     208:	e0823003 	add	r3, r2, r3
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	1afffff6 	bne	1f4 <strlen+0x1c>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e1a00003 	mov	r0, r3
     220:	e28bd000 	add	sp, fp, #0
     224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     228:	e12fff1e 	bx	lr

0000022c <memset>:
     22c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     230:	e28db000 	add	fp, sp, #0
     234:	e24dd024 	sub	sp, sp, #36	@ 0x24
     238:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     23c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     240:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     250:	e54b300d 	strb	r3, [fp, #-13]
     254:	e55b200d 	ldrb	r2, [fp, #-13]
     258:	e1a03002 	mov	r3, r2
     25c:	e1a03403 	lsl	r3, r3, #8
     260:	e0833002 	add	r3, r3, r2
     264:	e1a03803 	lsl	r3, r3, #16
     268:	e1a02003 	mov	r2, r3
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e1822003 	orr	r2, r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1823003 	orr	r3, r2, r3
     280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     284:	ea000008 	b	2ac <memset+0x80>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	0a000003 	beq	2c8 <memset+0x9c>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2033003 	and	r3, r3, #3
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1affffef 	bne	288 <memset+0x5c>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	ea000008 	b	2f8 <memset+0xcc>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2dc:	e5832000 	str	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e2833004 	add	r3, r3, #4
     2f4:	e50b300c 	str	r3, [fp, #-12]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530003 	cmp	r3, #3
     300:	8afffff3 	bhi	2d4 <memset+0xa8>
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000008 	b	334 <memset+0x108>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e5c32000 	strb	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e2433001 	sub	r3, r3, #1
     324:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff3 	bne	310 <memset+0xe4>
     340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strchr>:
     354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd00c 	sub	sp, sp, #12
     360:	e50b0008 	str	r0, [fp, #-8]
     364:	e1a03001 	mov	r3, r1
     368:	e54b3009 	strb	r3, [fp, #-9]
     36c:	ea000009 	b	398 <strchr+0x44>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e55b2009 	ldrb	r2, [fp, #-9]
     37c:	e1520003 	cmp	r2, r3
     380:	1a000001 	bne	38c <strchr+0x38>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	ea000007 	b	3ac <strchr+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff1 	bne	370 <strchr+0x1c>
     3a8:	e3a03000 	mov	r3, #0
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e28bd000 	add	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <gets>:
     3bc:	e92d4800 	push	{fp, lr}
     3c0:	e28db004 	add	fp, sp, #4
     3c4:	e24dd018 	sub	sp, sp, #24
     3c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	ea000016 	b	438 <gets+0x7c>
     3dc:	e24b300d 	sub	r3, fp, #13
     3e0:	e3a02001 	mov	r2, #1
     3e4:	e1a01003 	mov	r1, r3
     3e8:	e3a00000 	mov	r0, #0
     3ec:	eb0000f7 	bl	7d0 <read>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	da000013 	ble	450 <gets+0x94>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2832001 	add	r2, r3, #1
     408:	e50b2008 	str	r2, [fp, #-8]
     40c:	e1a02003 	mov	r2, r3
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e0833002 	add	r3, r3, r2
     418:	e55b200d 	ldrb	r2, [fp, #-13]
     41c:	e5c32000 	strb	r2, [r3]
     420:	e55b300d 	ldrb	r3, [fp, #-13]
     424:	e353000a 	cmp	r3, #10
     428:	0a000009 	beq	454 <gets+0x98>
     42c:	e55b300d 	ldrb	r3, [fp, #-13]
     430:	e353000d 	cmp	r3, #13
     434:	0a000006 	beq	454 <gets+0x98>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     444:	e1520003 	cmp	r2, r3
     448:	caffffe3 	bgt	3dc <gets+0x20>
     44c:	ea000000 	b	454 <gets+0x98>
     450:	e1a00000 	nop			@ (mov r0, r0)
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     45c:	e0823003 	add	r3, r2, r3
     460:	e3a02000 	mov	r2, #0
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     46c:	e1a00003 	mov	r0, r3
     470:	e24bd004 	sub	sp, fp, #4
     474:	e8bd8800 	pop	{fp, pc}

00000478 <stat>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd010 	sub	sp, sp, #16
     484:	e50b0010 	str	r0, [fp, #-16]
     488:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     48c:	e3a01000 	mov	r1, #0
     490:	e51b0010 	ldr	r0, [fp, #-16]
     494:	eb0000fa 	bl	884 <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb00010c 	bl	8f0 <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb0000d3 	bl	818 <close>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e1a00003 	mov	r0, r3
     4d0:	e24bd004 	sub	sp, fp, #4
     4d4:	e8bd8800 	pop	{fp, pc}

000004d8 <atoi>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd014 	sub	sp, sp, #20
     4e4:	e50b0010 	str	r0, [fp, #-16]
     4e8:	e3a03000 	mov	r3, #0
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	ea00000c 	b	528 <atoi+0x50>
     4f4:	e51b2008 	ldr	r2, [fp, #-8]
     4f8:	e1a03002 	mov	r3, r2
     4fc:	e1a03103 	lsl	r3, r3, #2
     500:	e0833002 	add	r3, r3, r2
     504:	e1a03083 	lsl	r3, r3, #1
     508:	e1a01003 	mov	r1, r3
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e2832001 	add	r2, r3, #1
     514:	e50b2010 	str	r2, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e0813003 	add	r3, r1, r3
     520:	e2433030 	sub	r3, r3, #48	@ 0x30
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e353002f 	cmp	r3, #47	@ 0x2f
     534:	9a000003 	bls	548 <atoi+0x70>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530039 	cmp	r3, #57	@ 0x39
     544:	9affffea 	bls	4f4 <atoi+0x1c>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <memmove>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd01c 	sub	sp, sp, #28
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     570:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     580:	e50b300c 	str	r3, [fp, #-12]
     584:	ea000007 	b	5a8 <memmove+0x4c>
     588:	e51b200c 	ldr	r2, [fp, #-12]
     58c:	e2823001 	add	r3, r2, #1
     590:	e50b300c 	str	r3, [fp, #-12]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e2831001 	add	r1, r3, #1
     59c:	e50b1008 	str	r1, [fp, #-8]
     5a0:	e5d22000 	ldrb	r2, [r2]
     5a4:	e5c32000 	strb	r2, [r3]
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e2432001 	sub	r2, r3, #1
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e3530000 	cmp	r3, #0
     5b8:	cafffff2 	bgt	588 <memmove+0x2c>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e28bd000 	add	sp, fp, #0
     5c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <strncmp>:
     5d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d4:	e28db000 	add	fp, sp, #0
     5d8:	e24dd014 	sub	sp, sp, #20
     5dc:	e50b0008 	str	r0, [fp, #-8]
     5e0:	e50b100c 	str	r1, [fp, #-12]
     5e4:	e50b2010 	str	r2, [fp, #-16]
     5e8:	ea000008 	b	610 <strncmp+0x40>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e2833001 	add	r3, r3, #1
     5f4:	e50b3008 	str	r3, [fp, #-8]
     5f8:	e51b300c 	ldr	r3, [fp, #-12]
     5fc:	e2833001 	add	r3, r3, #1
     600:	e50b300c 	str	r3, [fp, #-12]
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e2433001 	sub	r3, r3, #1
     60c:	e50b3010 	str	r3, [fp, #-16]
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e3530000 	cmp	r3, #0
     618:	da00000d 	ble	654 <strncmp+0x84>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e3530000 	cmp	r3, #0
     628:	0a000009 	beq	654 <strncmp+0x84>
     62c:	e51b300c 	ldr	r3, [fp, #-12]
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e3530000 	cmp	r3, #0
     638:	0a000005 	beq	654 <strncmp+0x84>
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5d32000 	ldrb	r2, [r3]
     644:	e51b300c 	ldr	r3, [fp, #-12]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e1520003 	cmp	r2, r3
     650:	0affffe5 	beq	5ec <strncmp+0x1c>
     654:	e51b3010 	ldr	r3, [fp, #-16]
     658:	e3530000 	cmp	r3, #0
     65c:	1a000001 	bne	668 <strncmp+0x98>
     660:	e3a03000 	mov	r3, #0
     664:	ea000005 	b	680 <strncmp+0xb0>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e1a02003 	mov	r2, r3
     674:	e51b300c 	ldr	r3, [fp, #-12]
     678:	e5d33000 	ldrb	r3, [r3]
     67c:	e0423003 	sub	r3, r2, r3
     680:	e1a00003 	mov	r0, r3
     684:	e28bd000 	add	sp, fp, #0
     688:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <strncpy>:
     690:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     694:	e28db000 	add	fp, sp, #0
     698:	e24dd01c 	sub	sp, sp, #28
     69c:	e50b0010 	str	r0, [fp, #-16]
     6a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6a8:	e51b3010 	ldr	r3, [fp, #-16]
     6ac:	e50b3008 	str	r3, [fp, #-8]
     6b0:	ea00000a 	b	6e0 <strncpy+0x50>
     6b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6b8:	e2823001 	add	r3, r2, #1
     6bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e2831001 	add	r1, r3, #1
     6c8:	e50b1008 	str	r1, [fp, #-8]
     6cc:	e5d22000 	ldrb	r2, [r2]
     6d0:	e5c32000 	strb	r2, [r3]
     6d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6d8:	e2433001 	sub	r3, r3, #1
     6dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6e4:	e3530000 	cmp	r3, #0
     6e8:	da00000c 	ble	720 <strncpy+0x90>
     6ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6f0:	e5d33000 	ldrb	r3, [r3]
     6f4:	e3530000 	cmp	r3, #0
     6f8:	1affffed 	bne	6b4 <strncpy+0x24>
     6fc:	ea000007 	b	720 <strncpy+0x90>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e2832001 	add	r2, r3, #1
     708:	e50b2008 	str	r2, [fp, #-8]
     70c:	e3a02000 	mov	r2, #0
     710:	e5c32000 	strb	r2, [r3]
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e2433001 	sub	r3, r3, #1
     71c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     720:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     724:	e3530000 	cmp	r3, #0
     728:	cafffff4 	bgt	700 <strncpy+0x70>
     72c:	e51b3010 	ldr	r3, [fp, #-16]
     730:	e1a00003 	mov	r0, r3
     734:	e28bd000 	add	sp, fp, #0
     738:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <fork>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00001 	mov	r0, #1
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <exit>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00002 	mov	r0, #2
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <wait>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00003 	mov	r0, #3
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <pipe>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00004 	mov	r0, #4
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <read>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00005 	mov	r0, #5
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <write>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00010 	mov	r0, #16
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <close>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00015 	mov	r0, #21
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <kill>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00006 	mov	r0, #6
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <exec>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00007 	mov	r0, #7
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <open>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a0000f 	mov	r0, #15
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <mknod>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00011 	mov	r0, #17
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <unlink>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00012 	mov	r0, #18
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <fstat>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00008 	mov	r0, #8
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <link>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00013 	mov	r0, #19
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <mkdir>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00014 	mov	r0, #20
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <chdir>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00009 	mov	r0, #9
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <dup>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a0000a 	mov	r0, #10
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <getpid>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a0000b 	mov	r0, #11
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <sbrk>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a0000c 	mov	r0, #12
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <sleep>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a0000d 	mov	r0, #13
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <uptime>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a0000e 	mov	r0, #14
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <proclist>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00016 	mov	r0, #22
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <settickets>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00017 	mov	r0, #23
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <srand>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00018 	mov	r0, #24
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <getpinfo>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a00019 	mov	r0, #25
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <putc>:
     ac4:	e92d4800 	push	{fp, lr}
     ac8:	e28db004 	add	fp, sp, #4
     acc:	e24dd008 	sub	sp, sp, #8
     ad0:	e50b0008 	str	r0, [fp, #-8]
     ad4:	e1a03001 	mov	r3, r1
     ad8:	e54b3009 	strb	r3, [fp, #-9]
     adc:	e24b3009 	sub	r3, fp, #9
     ae0:	e3a02001 	mov	r2, #1
     ae4:	e1a01003 	mov	r1, r3
     ae8:	e51b0008 	ldr	r0, [fp, #-8]
     aec:	ebffff40 	bl	7f4 <write>
     af0:	e1a00000 	nop			@ (mov r0, r0)
     af4:	e24bd004 	sub	sp, fp, #4
     af8:	e8bd8800 	pop	{fp, pc}

00000afc <printint>:
     afc:	e92d4800 	push	{fp, lr}
     b00:	e28db004 	add	fp, sp, #4
     b04:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b08:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b0c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b10:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b14:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b18:	e3a03000 	mov	r3, #0
     b1c:	e50b300c 	str	r3, [fp, #-12]
     b20:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b24:	e3530000 	cmp	r3, #0
     b28:	0a000008 	beq	b50 <printint+0x54>
     b2c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b30:	e3530000 	cmp	r3, #0
     b34:	aa000005 	bge	b50 <printint+0x54>
     b38:	e3a03001 	mov	r3, #1
     b3c:	e50b300c 	str	r3, [fp, #-12]
     b40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b44:	e2633000 	rsb	r3, r3, #0
     b48:	e50b3010 	str	r3, [fp, #-16]
     b4c:	ea000001 	b	b58 <printint+0x5c>
     b50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b54:	e50b3010 	str	r3, [fp, #-16]
     b58:	e3a03000 	mov	r3, #0
     b5c:	e50b3008 	str	r3, [fp, #-8]
     b60:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b64:	e51b3010 	ldr	r3, [fp, #-16]
     b68:	e1a01002 	mov	r1, r2
     b6c:	e1a00003 	mov	r0, r3
     b70:	eb0001d5 	bl	12cc <__aeabi_uidivmod>
     b74:	e1a03001 	mov	r3, r1
     b78:	e1a01003 	mov	r1, r3
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e2832001 	add	r2, r3, #1
     b84:	e50b2008 	str	r2, [fp, #-8]
     b88:	e59f20a0 	ldr	r2, [pc, #160]	@ c30 <printint+0x134>
     b8c:	e7d22001 	ldrb	r2, [r2, r1]
     b90:	e2433004 	sub	r3, r3, #4
     b94:	e083300b 	add	r3, r3, fp
     b98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b9c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ba0:	e1a01003 	mov	r1, r3
     ba4:	e51b0010 	ldr	r0, [fp, #-16]
     ba8:	eb00018a 	bl	11d8 <__udivsi3>
     bac:	e1a03000 	mov	r3, r0
     bb0:	e50b3010 	str	r3, [fp, #-16]
     bb4:	e51b3010 	ldr	r3, [fp, #-16]
     bb8:	e3530000 	cmp	r3, #0
     bbc:	1affffe7 	bne	b60 <printint+0x64>
     bc0:	e51b300c 	ldr	r3, [fp, #-12]
     bc4:	e3530000 	cmp	r3, #0
     bc8:	0a00000e 	beq	c08 <printint+0x10c>
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e2832001 	add	r2, r3, #1
     bd4:	e50b2008 	str	r2, [fp, #-8]
     bd8:	e2433004 	sub	r3, r3, #4
     bdc:	e083300b 	add	r3, r3, fp
     be0:	e3a0202d 	mov	r2, #45	@ 0x2d
     be4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     be8:	ea000006 	b	c08 <printint+0x10c>
     bec:	e24b2020 	sub	r2, fp, #32
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e0823003 	add	r3, r2, r3
     bf8:	e5d33000 	ldrb	r3, [r3]
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c04:	ebffffae 	bl	ac4 <putc>
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e2433001 	sub	r3, r3, #1
     c10:	e50b3008 	str	r3, [fp, #-8]
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e3530000 	cmp	r3, #0
     c1c:	aafffff2 	bge	bec <printint+0xf0>
     c20:	e1a00000 	nop			@ (mov r0, r0)
     c24:	e1a00000 	nop			@ (mov r0, r0)
     c28:	e24bd004 	sub	sp, fp, #4
     c2c:	e8bd8800 	pop	{fp, pc}
     c30:	00001358 	.word	0x00001358

00000c34 <printf>:
     c34:	e92d000e 	push	{r1, r2, r3}
     c38:	e92d4800 	push	{fp, lr}
     c3c:	e28db004 	add	fp, sp, #4
     c40:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c44:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c48:	e3a03000 	mov	r3, #0
     c4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c50:	e28b3008 	add	r3, fp, #8
     c54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e3a03000 	mov	r3, #0
     c5c:	e50b3010 	str	r3, [fp, #-16]
     c60:	ea000074 	b	e38 <printf+0x204>
     c64:	e59b2004 	ldr	r2, [fp, #4]
     c68:	e51b3010 	ldr	r3, [fp, #-16]
     c6c:	e0823003 	add	r3, r2, r3
     c70:	e5d33000 	ldrb	r3, [r3]
     c74:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c7c:	e3530000 	cmp	r3, #0
     c80:	1a00000b 	bne	cb4 <printf+0x80>
     c84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c88:	e3530025 	cmp	r3, #37	@ 0x25
     c8c:	1a000002 	bne	c9c <printf+0x68>
     c90:	e3a03025 	mov	r3, #37	@ 0x25
     c94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c98:	ea000063 	b	e2c <printf+0x1f8>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e6ef3073 	uxtb	r3, r3
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cac:	ebffff84 	bl	ac4 <putc>
     cb0:	ea00005d 	b	e2c <printf+0x1f8>
     cb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cb8:	e3530025 	cmp	r3, #37	@ 0x25
     cbc:	1a00005a 	bne	e2c <printf+0x1f8>
     cc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc4:	e3530064 	cmp	r3, #100	@ 0x64
     cc8:	1a00000a 	bne	cf8 <printf+0xc4>
     ccc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e1a01003 	mov	r1, r3
     cd8:	e3a03001 	mov	r3, #1
     cdc:	e3a0200a 	mov	r2, #10
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce4:	ebffff84 	bl	afc <printint>
     ce8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cec:	e2833004 	add	r3, r3, #4
     cf0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	ea00004a 	b	e24 <printf+0x1f0>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e3530078 	cmp	r3, #120	@ 0x78
     d00:	0a000002 	beq	d10 <printf+0xdc>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d08:	e3530070 	cmp	r3, #112	@ 0x70
     d0c:	1a00000a 	bne	d3c <printf+0x108>
     d10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e1a01003 	mov	r1, r3
     d1c:	e3a03000 	mov	r3, #0
     d20:	e3a02010 	mov	r2, #16
     d24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d28:	ebffff73 	bl	afc <printint>
     d2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d30:	e2833004 	add	r3, r3, #4
     d34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d38:	ea000039 	b	e24 <printf+0x1f0>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e3530073 	cmp	r3, #115	@ 0x73
     d44:	1a000018 	bne	dac <printf+0x178>
     d48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e50b300c 	str	r3, [fp, #-12]
     d54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d58:	e2833004 	add	r3, r3, #4
     d5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d60:	e51b300c 	ldr	r3, [fp, #-12]
     d64:	e3530000 	cmp	r3, #0
     d68:	1a00000a 	bne	d98 <printf+0x164>
     d6c:	e59f30f4 	ldr	r3, [pc, #244]	@ e68 <printf+0x234>
     d70:	e50b300c 	str	r3, [fp, #-12]
     d74:	ea000007 	b	d98 <printf+0x164>
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5d33000 	ldrb	r3, [r3]
     d80:	e1a01003 	mov	r1, r3
     d84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d88:	ebffff4d 	bl	ac4 <putc>
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e2833001 	add	r3, r3, #1
     d94:	e50b300c 	str	r3, [fp, #-12]
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e5d33000 	ldrb	r3, [r3]
     da0:	e3530000 	cmp	r3, #0
     da4:	1afffff3 	bne	d78 <printf+0x144>
     da8:	ea00001d 	b	e24 <printf+0x1f0>
     dac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db0:	e3530063 	cmp	r3, #99	@ 0x63
     db4:	1a000009 	bne	de0 <printf+0x1ac>
     db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e6ef3073 	uxtb	r3, r3
     dc4:	e1a01003 	mov	r1, r3
     dc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dcc:	ebffff3c 	bl	ac4 <putc>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e2833004 	add	r3, r3, #4
     dd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	ea000010 	b	e24 <printf+0x1f0>
     de0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e3530025 	cmp	r3, #37	@ 0x25
     de8:	1a000005 	bne	e04 <printf+0x1d0>
     dec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e6ef3073 	uxtb	r3, r3
     df4:	e1a01003 	mov	r1, r3
     df8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dfc:	ebffff30 	bl	ac4 <putc>
     e00:	ea000007 	b	e24 <printf+0x1f0>
     e04:	e3a01025 	mov	r1, #37	@ 0x25
     e08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e0c:	ebffff2c 	bl	ac4 <putc>
     e10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e14:	e6ef3073 	uxtb	r3, r3
     e18:	e1a01003 	mov	r1, r3
     e1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e20:	ebffff27 	bl	ac4 <putc>
     e24:	e3a03000 	mov	r3, #0
     e28:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e2c:	e51b3010 	ldr	r3, [fp, #-16]
     e30:	e2833001 	add	r3, r3, #1
     e34:	e50b3010 	str	r3, [fp, #-16]
     e38:	e59b2004 	ldr	r2, [fp, #4]
     e3c:	e51b3010 	ldr	r3, [fp, #-16]
     e40:	e0823003 	add	r3, r2, r3
     e44:	e5d33000 	ldrb	r3, [r3]
     e48:	e3530000 	cmp	r3, #0
     e4c:	1affff84 	bne	c64 <printf+0x30>
     e50:	e1a00000 	nop			@ (mov r0, r0)
     e54:	e1a00000 	nop			@ (mov r0, r0)
     e58:	e24bd004 	sub	sp, fp, #4
     e5c:	e8bd4800 	pop	{fp, lr}
     e60:	e28dd00c 	add	sp, sp, #12
     e64:	e12fff1e 	bx	lr
     e68:	00001348 	.word	0x00001348

00000e6c <free>:
     e6c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e70:	e28db000 	add	fp, sp, #0
     e74:	e24dd014 	sub	sp, sp, #20
     e78:	e50b0010 	str	r0, [fp, #-16]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e2433008 	sub	r3, r3, #8
     e84:	e50b300c 	str	r3, [fp, #-12]
     e88:	e59f3154 	ldr	r3, [pc, #340]	@ fe4 <free+0x178>
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e50b3008 	str	r3, [fp, #-8]
     e94:	ea000010 	b	edc <free+0x70>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e51b2008 	ldr	r2, [fp, #-8]
     ea4:	e1520003 	cmp	r2, r3
     ea8:	3a000008 	bcc	ed0 <free+0x64>
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e1520003 	cmp	r2, r3
     eb8:	8a000010 	bhi	f00 <free+0x94>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	3a00000b 	bcc	f00 <free+0x94>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933000 	ldr	r3, [r3]
     ed8:	e50b3008 	str	r3, [fp, #-8]
     edc:	e51b200c 	ldr	r2, [fp, #-12]
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e1520003 	cmp	r2, r3
     ee8:	9affffea 	bls	e98 <free+0x2c>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5933000 	ldr	r3, [r3]
     ef4:	e51b200c 	ldr	r2, [fp, #-12]
     ef8:	e1520003 	cmp	r2, r3
     efc:	2affffe5 	bcs	e98 <free+0x2c>
     f00:	e51b300c 	ldr	r3, [fp, #-12]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e1a03183 	lsl	r3, r3, #3
     f0c:	e51b200c 	ldr	r2, [fp, #-12]
     f10:	e0822003 	add	r2, r2, r3
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e1520003 	cmp	r2, r3
     f20:	1a00000d 	bne	f5c <free+0xf0>
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e5932004 	ldr	r2, [r3, #4]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e5933004 	ldr	r3, [r3, #4]
     f38:	e0822003 	add	r2, r2, r3
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e5932000 	ldr	r2, [r3]
     f50:	e51b300c 	ldr	r3, [fp, #-12]
     f54:	e5832000 	str	r2, [r3]
     f58:	ea000003 	b	f6c <free+0x100>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5932000 	ldr	r2, [r3]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5832000 	str	r2, [r3]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e1a03183 	lsl	r3, r3, #3
     f78:	e51b2008 	ldr	r2, [fp, #-8]
     f7c:	e0823003 	add	r3, r2, r3
     f80:	e51b200c 	ldr	r2, [fp, #-12]
     f84:	e1520003 	cmp	r2, r3
     f88:	1a00000b 	bne	fbc <free+0x150>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5932004 	ldr	r2, [r3, #4]
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e5933004 	ldr	r3, [r3, #4]
     f9c:	e0822003 	add	r2, r2, r3
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5832004 	str	r2, [r3, #4]
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5932000 	ldr	r2, [r3]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5832000 	str	r2, [r3]
     fb8:	ea000002 	b	fc8 <free+0x15c>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e51b200c 	ldr	r2, [fp, #-12]
     fc4:	e5832000 	str	r2, [r3]
     fc8:	e59f2014 	ldr	r2, [pc, #20]	@ fe4 <free+0x178>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5823000 	str	r3, [r2]
     fd4:	e1a00000 	nop			@ (mov r0, r0)
     fd8:	e28bd000 	add	sp, fp, #0
     fdc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fe0:	e12fff1e 	bx	lr
     fe4:	00001374 	.word	0x00001374

00000fe8 <morecore>:
     fe8:	e92d4800 	push	{fp, lr}
     fec:	e28db004 	add	fp, sp, #4
     ff0:	e24dd010 	sub	sp, sp, #16
     ff4:	e50b0010 	str	r0, [fp, #-16]
     ff8:	e51b3010 	ldr	r3, [fp, #-16]
     ffc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1000:	2a000001 	bcs	100c <morecore+0x24>
    1004:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1008:	e50b3010 	str	r3, [fp, #-16]
    100c:	e51b3010 	ldr	r3, [fp, #-16]
    1010:	e1a03183 	lsl	r3, r3, #3
    1014:	e1a00003 	mov	r0, r3
    1018:	ebfffe6a 	bl	9c8 <sbrk>
    101c:	e50b0008 	str	r0, [fp, #-8]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e3730001 	cmn	r3, #1
    1028:	1a000001 	bne	1034 <morecore+0x4c>
    102c:	e3a03000 	mov	r3, #0
    1030:	ea00000a 	b	1060 <morecore+0x78>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e50b300c 	str	r3, [fp, #-12]
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e51b2010 	ldr	r2, [fp, #-16]
    1044:	e5832004 	str	r2, [r3, #4]
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e2833008 	add	r3, r3, #8
    1050:	e1a00003 	mov	r0, r3
    1054:	ebffff84 	bl	e6c <free>
    1058:	e59f300c 	ldr	r3, [pc, #12]	@ 106c <morecore+0x84>
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e1a00003 	mov	r0, r3
    1064:	e24bd004 	sub	sp, fp, #4
    1068:	e8bd8800 	pop	{fp, pc}
    106c:	00001374 	.word	0x00001374

00001070 <malloc>:
    1070:	e92d4800 	push	{fp, lr}
    1074:	e28db004 	add	fp, sp, #4
    1078:	e24dd018 	sub	sp, sp, #24
    107c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1080:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1084:	e2833007 	add	r3, r3, #7
    1088:	e1a031a3 	lsr	r3, r3, #3
    108c:	e2833001 	add	r3, r3, #1
    1090:	e50b3010 	str	r3, [fp, #-16]
    1094:	e59f3134 	ldr	r3, [pc, #308]	@ 11d0 <malloc+0x160>
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e3530000 	cmp	r3, #0
    10a8:	1a00000b 	bne	10dc <malloc+0x6c>
    10ac:	e59f3120 	ldr	r3, [pc, #288]	@ 11d4 <malloc+0x164>
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	e59f2114 	ldr	r2, [pc, #276]	@ 11d0 <malloc+0x160>
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e5823000 	str	r3, [r2]
    10c0:	e59f3108 	ldr	r3, [pc, #264]	@ 11d0 <malloc+0x160>
    10c4:	e5933000 	ldr	r3, [r3]
    10c8:	e59f2104 	ldr	r2, [pc, #260]	@ 11d4 <malloc+0x164>
    10cc:	e5823000 	str	r3, [r2]
    10d0:	e59f30fc 	ldr	r3, [pc, #252]	@ 11d4 <malloc+0x164>
    10d4:	e3a02000 	mov	r2, #0
    10d8:	e5832004 	str	r2, [r3, #4]
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e5933004 	ldr	r3, [r3, #4]
    10f0:	e51b2010 	ldr	r2, [fp, #-16]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	8a00001e 	bhi	1178 <malloc+0x108>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933004 	ldr	r3, [r3, #4]
    1104:	e51b2010 	ldr	r2, [fp, #-16]
    1108:	e1520003 	cmp	r2, r3
    110c:	1a000004 	bne	1124 <malloc+0xb4>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5932000 	ldr	r2, [r3]
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e5832000 	str	r2, [r3]
    1120:	ea00000e 	b	1160 <malloc+0xf0>
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5932004 	ldr	r2, [r3, #4]
    112c:	e51b3010 	ldr	r3, [fp, #-16]
    1130:	e0422003 	sub	r2, r2, r3
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e5832004 	str	r2, [r3, #4]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933004 	ldr	r3, [r3, #4]
    1144:	e1a03183 	lsl	r3, r3, #3
    1148:	e51b2008 	ldr	r2, [fp, #-8]
    114c:	e0823003 	add	r3, r2, r3
    1150:	e50b3008 	str	r3, [fp, #-8]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e51b2010 	ldr	r2, [fp, #-16]
    115c:	e5832004 	str	r2, [r3, #4]
    1160:	e59f2068 	ldr	r2, [pc, #104]	@ 11d0 <malloc+0x160>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5823000 	str	r3, [r2]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e2833008 	add	r3, r3, #8
    1174:	ea000012 	b	11c4 <malloc+0x154>
    1178:	e59f3050 	ldr	r3, [pc, #80]	@ 11d0 <malloc+0x160>
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e51b2008 	ldr	r2, [fp, #-8]
    1184:	e1520003 	cmp	r2, r3
    1188:	1a000007 	bne	11ac <malloc+0x13c>
    118c:	e51b0010 	ldr	r0, [fp, #-16]
    1190:	ebffff94 	bl	fe8 <morecore>
    1194:	e50b0008 	str	r0, [fp, #-8]
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e3530000 	cmp	r3, #0
    11a0:	1a000001 	bne	11ac <malloc+0x13c>
    11a4:	e3a03000 	mov	r3, #0
    11a8:	ea000005 	b	11c4 <malloc+0x154>
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e50b300c 	str	r3, [fp, #-12]
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e50b3008 	str	r3, [fp, #-8]
    11c0:	eaffffc8 	b	10e8 <malloc+0x78>
    11c4:	e1a00003 	mov	r0, r3
    11c8:	e24bd004 	sub	sp, fp, #4
    11cc:	e8bd8800 	pop	{fp, pc}
    11d0:	00001374 	.word	0x00001374
    11d4:	0000136c 	.word	0x0000136c

000011d8 <__udivsi3>:
    11d8:	e2512001 	subs	r2, r1, #1
    11dc:	012fff1e 	bxeq	lr
    11e0:	3a000036 	bcc	12c0 <__udivsi3+0xe8>
    11e4:	e1500001 	cmp	r0, r1
    11e8:	9a000022 	bls	1278 <__udivsi3+0xa0>
    11ec:	e1110002 	tst	r1, r2
    11f0:	0a000023 	beq	1284 <__udivsi3+0xac>
    11f4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11f8:	01a01181 	lsleq	r1, r1, #3
    11fc:	03a03008 	moveq	r3, #8
    1200:	13a03001 	movne	r3, #1
    1204:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1208:	31510000 	cmpcc	r1, r0
    120c:	31a01201 	lslcc	r1, r1, #4
    1210:	31a03203 	lslcc	r3, r3, #4
    1214:	3afffffa 	bcc	1204 <__udivsi3+0x2c>
    1218:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    121c:	31510000 	cmpcc	r1, r0
    1220:	31a01081 	lslcc	r1, r1, #1
    1224:	31a03083 	lslcc	r3, r3, #1
    1228:	3afffffa 	bcc	1218 <__udivsi3+0x40>
    122c:	e3a02000 	mov	r2, #0
    1230:	e1500001 	cmp	r0, r1
    1234:	20400001 	subcs	r0, r0, r1
    1238:	21822003 	orrcs	r2, r2, r3
    123c:	e15000a1 	cmp	r0, r1, lsr #1
    1240:	204000a1 	subcs	r0, r0, r1, lsr #1
    1244:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1248:	e1500121 	cmp	r0, r1, lsr #2
    124c:	20400121 	subcs	r0, r0, r1, lsr #2
    1250:	21822123 	orrcs	r2, r2, r3, lsr #2
    1254:	e15001a1 	cmp	r0, r1, lsr #3
    1258:	204001a1 	subcs	r0, r0, r1, lsr #3
    125c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1260:	e3500000 	cmp	r0, #0
    1264:	11b03223 	lsrsne	r3, r3, #4
    1268:	11a01221 	lsrne	r1, r1, #4
    126c:	1affffef 	bne	1230 <__udivsi3+0x58>
    1270:	e1a00002 	mov	r0, r2
    1274:	e12fff1e 	bx	lr
    1278:	03a00001 	moveq	r0, #1
    127c:	13a00000 	movne	r0, #0
    1280:	e12fff1e 	bx	lr
    1284:	e3510801 	cmp	r1, #65536	@ 0x10000
    1288:	21a01821 	lsrcs	r1, r1, #16
    128c:	23a02010 	movcs	r2, #16
    1290:	33a02000 	movcc	r2, #0
    1294:	e3510c01 	cmp	r1, #256	@ 0x100
    1298:	21a01421 	lsrcs	r1, r1, #8
    129c:	22822008 	addcs	r2, r2, #8
    12a0:	e3510010 	cmp	r1, #16
    12a4:	21a01221 	lsrcs	r1, r1, #4
    12a8:	22822004 	addcs	r2, r2, #4
    12ac:	e3510004 	cmp	r1, #4
    12b0:	82822003 	addhi	r2, r2, #3
    12b4:	908220a1 	addls	r2, r2, r1, lsr #1
    12b8:	e1a00230 	lsr	r0, r0, r2
    12bc:	e12fff1e 	bx	lr
    12c0:	e3500000 	cmp	r0, #0
    12c4:	13e00000 	mvnne	r0, #0
    12c8:	ea000007 	b	12ec <__aeabi_idiv0>

000012cc <__aeabi_uidivmod>:
    12cc:	e3510000 	cmp	r1, #0
    12d0:	0afffffa 	beq	12c0 <__udivsi3+0xe8>
    12d4:	e92d4003 	push	{r0, r1, lr}
    12d8:	ebffffbe 	bl	11d8 <__udivsi3>
    12dc:	e8bd4006 	pop	{r1, r2, lr}
    12e0:	e0030092 	mul	r3, r2, r0
    12e4:	e0411003 	sub	r1, r1, r3
    12e8:	e12fff1e 	bx	lr

000012ec <__aeabi_idiv0>:
    12ec:	e12fff1e 	bx	lr
