
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
      58:	eb0002da 	bl	bc8 <printf>
      5c:	eb0001b7 	bl	740 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb0002d2 	bl	bc8 <printf>
      7c:	eb0001b8 	bl	764 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb0001f1 	bl	860 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb0002c8 	bl	bc8 <printf>
      a4:	eb0001ae 	bl	764 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0002c4 	bl	bc8 <printf>
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
      dc:	00001288 	.word	0x00001288
      e0:	00001290 	.word	0x00001290
      e4:	000012a4 	.word	0x000012a4
      e8:	000012e4 	.word	0x000012e4
      ec:	00001284 	.word	0x00001284
      f0:	000012b8 	.word	0x000012b8
      f4:	000012d0 	.word	0x000012d0

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

00000a58 <putc>:
     a58:	e92d4800 	push	{fp, lr}
     a5c:	e28db004 	add	fp, sp, #4
     a60:	e24dd008 	sub	sp, sp, #8
     a64:	e50b0008 	str	r0, [fp, #-8]
     a68:	e1a03001 	mov	r3, r1
     a6c:	e54b3009 	strb	r3, [fp, #-9]
     a70:	e24b3009 	sub	r3, fp, #9
     a74:	e3a02001 	mov	r2, #1
     a78:	e1a01003 	mov	r1, r3
     a7c:	e51b0008 	ldr	r0, [fp, #-8]
     a80:	ebffff5b 	bl	7f4 <write>
     a84:	e1a00000 	nop			@ (mov r0, r0)
     a88:	e24bd004 	sub	sp, fp, #4
     a8c:	e8bd8800 	pop	{fp, pc}

00000a90 <printint>:
     a90:	e92d4800 	push	{fp, lr}
     a94:	e28db004 	add	fp, sp, #4
     a98:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a9c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     aa0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     aa4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     aa8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     aac:	e3a03000 	mov	r3, #0
     ab0:	e50b300c 	str	r3, [fp, #-12]
     ab4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ab8:	e3530000 	cmp	r3, #0
     abc:	0a000008 	beq	ae4 <printint+0x54>
     ac0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ac4:	e3530000 	cmp	r3, #0
     ac8:	aa000005 	bge	ae4 <printint+0x54>
     acc:	e3a03001 	mov	r3, #1
     ad0:	e50b300c 	str	r3, [fp, #-12]
     ad4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ad8:	e2633000 	rsb	r3, r3, #0
     adc:	e50b3010 	str	r3, [fp, #-16]
     ae0:	ea000001 	b	aec <printint+0x5c>
     ae4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ae8:	e50b3010 	str	r3, [fp, #-16]
     aec:	e3a03000 	mov	r3, #0
     af0:	e50b3008 	str	r3, [fp, #-8]
     af4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     af8:	e51b3010 	ldr	r3, [fp, #-16]
     afc:	e1a01002 	mov	r1, r2
     b00:	e1a00003 	mov	r0, r3
     b04:	eb0001d5 	bl	1260 <__aeabi_uidivmod>
     b08:	e1a03001 	mov	r3, r1
     b0c:	e1a01003 	mov	r1, r3
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2832001 	add	r2, r3, #1
     b18:	e50b2008 	str	r2, [fp, #-8]
     b1c:	e59f20a0 	ldr	r2, [pc, #160]	@ bc4 <printint+0x134>
     b20:	e7d22001 	ldrb	r2, [r2, r1]
     b24:	e2433004 	sub	r3, r3, #4
     b28:	e083300b 	add	r3, r3, fp
     b2c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b30:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b34:	e1a01003 	mov	r1, r3
     b38:	e51b0010 	ldr	r0, [fp, #-16]
     b3c:	eb00018a 	bl	116c <__udivsi3>
     b40:	e1a03000 	mov	r3, r0
     b44:	e50b3010 	str	r3, [fp, #-16]
     b48:	e51b3010 	ldr	r3, [fp, #-16]
     b4c:	e3530000 	cmp	r3, #0
     b50:	1affffe7 	bne	af4 <printint+0x64>
     b54:	e51b300c 	ldr	r3, [fp, #-12]
     b58:	e3530000 	cmp	r3, #0
     b5c:	0a00000e 	beq	b9c <printint+0x10c>
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e2832001 	add	r2, r3, #1
     b68:	e50b2008 	str	r2, [fp, #-8]
     b6c:	e2433004 	sub	r3, r3, #4
     b70:	e083300b 	add	r3, r3, fp
     b74:	e3a0202d 	mov	r2, #45	@ 0x2d
     b78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b7c:	ea000006 	b	b9c <printint+0x10c>
     b80:	e24b2020 	sub	r2, fp, #32
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e0823003 	add	r3, r2, r3
     b8c:	e5d33000 	ldrb	r3, [r3]
     b90:	e1a01003 	mov	r1, r3
     b94:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b98:	ebffffae 	bl	a58 <putc>
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2433001 	sub	r3, r3, #1
     ba4:	e50b3008 	str	r3, [fp, #-8]
     ba8:	e51b3008 	ldr	r3, [fp, #-8]
     bac:	e3530000 	cmp	r3, #0
     bb0:	aafffff2 	bge	b80 <printint+0xf0>
     bb4:	e1a00000 	nop			@ (mov r0, r0)
     bb8:	e1a00000 	nop			@ (mov r0, r0)
     bbc:	e24bd004 	sub	sp, fp, #4
     bc0:	e8bd8800 	pop	{fp, pc}
     bc4:	000012ec 	.word	0x000012ec

00000bc8 <printf>:
     bc8:	e92d000e 	push	{r1, r2, r3}
     bcc:	e92d4800 	push	{fp, lr}
     bd0:	e28db004 	add	fp, sp, #4
     bd4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bd8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     bdc:	e3a03000 	mov	r3, #0
     be0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be4:	e28b3008 	add	r3, fp, #8
     be8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bec:	e3a03000 	mov	r3, #0
     bf0:	e50b3010 	str	r3, [fp, #-16]
     bf4:	ea000074 	b	dcc <printf+0x204>
     bf8:	e59b2004 	ldr	r2, [fp, #4]
     bfc:	e51b3010 	ldr	r3, [fp, #-16]
     c00:	e0823003 	add	r3, r2, r3
     c04:	e5d33000 	ldrb	r3, [r3]
     c08:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c10:	e3530000 	cmp	r3, #0
     c14:	1a00000b 	bne	c48 <printf+0x80>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c1c:	e3530025 	cmp	r3, #37	@ 0x25
     c20:	1a000002 	bne	c30 <printf+0x68>
     c24:	e3a03025 	mov	r3, #37	@ 0x25
     c28:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c2c:	ea000063 	b	dc0 <printf+0x1f8>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e6ef3073 	uxtb	r3, r3
     c38:	e1a01003 	mov	r1, r3
     c3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c40:	ebffff84 	bl	a58 <putc>
     c44:	ea00005d 	b	dc0 <printf+0x1f8>
     c48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c4c:	e3530025 	cmp	r3, #37	@ 0x25
     c50:	1a00005a 	bne	dc0 <printf+0x1f8>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e3530064 	cmp	r3, #100	@ 0x64
     c5c:	1a00000a 	bne	c8c <printf+0xc4>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e5933000 	ldr	r3, [r3]
     c68:	e1a01003 	mov	r1, r3
     c6c:	e3a03001 	mov	r3, #1
     c70:	e3a0200a 	mov	r2, #10
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff84 	bl	a90 <printint>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e2833004 	add	r3, r3, #4
     c84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c88:	ea00004a 	b	db8 <printf+0x1f0>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530078 	cmp	r3, #120	@ 0x78
     c94:	0a000002 	beq	ca4 <printf+0xdc>
     c98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c9c:	e3530070 	cmp	r3, #112	@ 0x70
     ca0:	1a00000a 	bne	cd0 <printf+0x108>
     ca4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e1a01003 	mov	r1, r3
     cb0:	e3a03000 	mov	r3, #0
     cb4:	e3a02010 	mov	r2, #16
     cb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cbc:	ebffff73 	bl	a90 <printint>
     cc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc4:	e2833004 	add	r3, r3, #4
     cc8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ccc:	ea000039 	b	db8 <printf+0x1f0>
     cd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd4:	e3530073 	cmp	r3, #115	@ 0x73
     cd8:	1a000018 	bne	d40 <printf+0x178>
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e5933000 	ldr	r3, [r3]
     ce4:	e50b300c 	str	r3, [fp, #-12]
     ce8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cec:	e2833004 	add	r3, r3, #4
     cf0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	e51b300c 	ldr	r3, [fp, #-12]
     cf8:	e3530000 	cmp	r3, #0
     cfc:	1a00000a 	bne	d2c <printf+0x164>
     d00:	e59f30f4 	ldr	r3, [pc, #244]	@ dfc <printf+0x234>
     d04:	e50b300c 	str	r3, [fp, #-12]
     d08:	ea000007 	b	d2c <printf+0x164>
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e5d33000 	ldrb	r3, [r3]
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff4d 	bl	a58 <putc>
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e2833001 	add	r3, r3, #1
     d28:	e50b300c 	str	r3, [fp, #-12]
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e5d33000 	ldrb	r3, [r3]
     d34:	e3530000 	cmp	r3, #0
     d38:	1afffff3 	bne	d0c <printf+0x144>
     d3c:	ea00001d 	b	db8 <printf+0x1f0>
     d40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d44:	e3530063 	cmp	r3, #99	@ 0x63
     d48:	1a000009 	bne	d74 <printf+0x1ac>
     d4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e6ef3073 	uxtb	r3, r3
     d58:	e1a01003 	mov	r1, r3
     d5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d60:	ebffff3c 	bl	a58 <putc>
     d64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d68:	e2833004 	add	r3, r3, #4
     d6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d70:	ea000010 	b	db8 <printf+0x1f0>
     d74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d78:	e3530025 	cmp	r3, #37	@ 0x25
     d7c:	1a000005 	bne	d98 <printf+0x1d0>
     d80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d84:	e6ef3073 	uxtb	r3, r3
     d88:	e1a01003 	mov	r1, r3
     d8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d90:	ebffff30 	bl	a58 <putc>
     d94:	ea000007 	b	db8 <printf+0x1f0>
     d98:	e3a01025 	mov	r1, #37	@ 0x25
     d9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da0:	ebffff2c 	bl	a58 <putc>
     da4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da8:	e6ef3073 	uxtb	r3, r3
     dac:	e1a01003 	mov	r1, r3
     db0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db4:	ebffff27 	bl	a58 <putc>
     db8:	e3a03000 	mov	r3, #0
     dbc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dc0:	e51b3010 	ldr	r3, [fp, #-16]
     dc4:	e2833001 	add	r3, r3, #1
     dc8:	e50b3010 	str	r3, [fp, #-16]
     dcc:	e59b2004 	ldr	r2, [fp, #4]
     dd0:	e51b3010 	ldr	r3, [fp, #-16]
     dd4:	e0823003 	add	r3, r2, r3
     dd8:	e5d33000 	ldrb	r3, [r3]
     ddc:	e3530000 	cmp	r3, #0
     de0:	1affff84 	bne	bf8 <printf+0x30>
     de4:	e1a00000 	nop			@ (mov r0, r0)
     de8:	e1a00000 	nop			@ (mov r0, r0)
     dec:	e24bd004 	sub	sp, fp, #4
     df0:	e8bd4800 	pop	{fp, lr}
     df4:	e28dd00c 	add	sp, sp, #12
     df8:	e12fff1e 	bx	lr
     dfc:	000012dc 	.word	0x000012dc

00000e00 <free>:
     e00:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e04:	e28db000 	add	fp, sp, #0
     e08:	e24dd014 	sub	sp, sp, #20
     e0c:	e50b0010 	str	r0, [fp, #-16]
     e10:	e51b3010 	ldr	r3, [fp, #-16]
     e14:	e2433008 	sub	r3, r3, #8
     e18:	e50b300c 	str	r3, [fp, #-12]
     e1c:	e59f3154 	ldr	r3, [pc, #340]	@ f78 <free+0x178>
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e50b3008 	str	r3, [fp, #-8]
     e28:	ea000010 	b	e70 <free+0x70>
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e51b2008 	ldr	r2, [fp, #-8]
     e38:	e1520003 	cmp	r2, r3
     e3c:	3a000008 	bcc	e64 <free+0x64>
     e40:	e51b200c 	ldr	r2, [fp, #-12]
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e1520003 	cmp	r2, r3
     e4c:	8a000010 	bhi	e94 <free+0x94>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e51b200c 	ldr	r2, [fp, #-12]
     e5c:	e1520003 	cmp	r2, r3
     e60:	3a00000b 	bcc	e94 <free+0x94>
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e50b3008 	str	r3, [fp, #-8]
     e70:	e51b200c 	ldr	r2, [fp, #-12]
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e1520003 	cmp	r2, r3
     e7c:	9affffea 	bls	e2c <free+0x2c>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5933000 	ldr	r3, [r3]
     e88:	e51b200c 	ldr	r2, [fp, #-12]
     e8c:	e1520003 	cmp	r2, r3
     e90:	2affffe5 	bcs	e2c <free+0x2c>
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e5933004 	ldr	r3, [r3, #4]
     e9c:	e1a03183 	lsl	r3, r3, #3
     ea0:	e51b200c 	ldr	r2, [fp, #-12]
     ea4:	e0822003 	add	r2, r2, r3
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e5933000 	ldr	r3, [r3]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	1a00000d 	bne	ef0 <free+0xf0>
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5932004 	ldr	r2, [r3, #4]
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e5933004 	ldr	r3, [r3, #4]
     ecc:	e0822003 	add	r2, r2, r3
     ed0:	e51b300c 	ldr	r3, [fp, #-12]
     ed4:	e5832004 	str	r2, [r3, #4]
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e5932000 	ldr	r2, [r3]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5832000 	str	r2, [r3]
     eec:	ea000003 	b	f00 <free+0x100>
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5932000 	ldr	r2, [r3]
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5832000 	str	r2, [r3]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e1a03183 	lsl	r3, r3, #3
     f0c:	e51b2008 	ldr	r2, [fp, #-8]
     f10:	e0823003 	add	r3, r2, r3
     f14:	e51b200c 	ldr	r2, [fp, #-12]
     f18:	e1520003 	cmp	r2, r3
     f1c:	1a00000b 	bne	f50 <free+0x150>
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5932004 	ldr	r2, [r3, #4]
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e5933004 	ldr	r3, [r3, #4]
     f30:	e0822003 	add	r2, r2, r3
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e5832004 	str	r2, [r3, #4]
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5932000 	ldr	r2, [r3]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5832000 	str	r2, [r3]
     f4c:	ea000002 	b	f5c <free+0x15c>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e51b200c 	ldr	r2, [fp, #-12]
     f58:	e5832000 	str	r2, [r3]
     f5c:	e59f2014 	ldr	r2, [pc, #20]	@ f78 <free+0x178>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5823000 	str	r3, [r2]
     f68:	e1a00000 	nop			@ (mov r0, r0)
     f6c:	e28bd000 	add	sp, fp, #0
     f70:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f74:	e12fff1e 	bx	lr
     f78:	00001308 	.word	0x00001308

00000f7c <morecore>:
     f7c:	e92d4800 	push	{fp, lr}
     f80:	e28db004 	add	fp, sp, #4
     f84:	e24dd010 	sub	sp, sp, #16
     f88:	e50b0010 	str	r0, [fp, #-16]
     f8c:	e51b3010 	ldr	r3, [fp, #-16]
     f90:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f94:	2a000001 	bcs	fa0 <morecore+0x24>
     f98:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f9c:	e50b3010 	str	r3, [fp, #-16]
     fa0:	e51b3010 	ldr	r3, [fp, #-16]
     fa4:	e1a03183 	lsl	r3, r3, #3
     fa8:	e1a00003 	mov	r0, r3
     fac:	ebfffe85 	bl	9c8 <sbrk>
     fb0:	e50b0008 	str	r0, [fp, #-8]
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e3730001 	cmn	r3, #1
     fbc:	1a000001 	bne	fc8 <morecore+0x4c>
     fc0:	e3a03000 	mov	r3, #0
     fc4:	ea00000a 	b	ff4 <morecore+0x78>
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e50b300c 	str	r3, [fp, #-12]
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e51b2010 	ldr	r2, [fp, #-16]
     fd8:	e5832004 	str	r2, [r3, #4]
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e2833008 	add	r3, r3, #8
     fe4:	e1a00003 	mov	r0, r3
     fe8:	ebffff84 	bl	e00 <free>
     fec:	e59f300c 	ldr	r3, [pc, #12]	@ 1000 <morecore+0x84>
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e1a00003 	mov	r0, r3
     ff8:	e24bd004 	sub	sp, fp, #4
     ffc:	e8bd8800 	pop	{fp, pc}
    1000:	00001308 	.word	0x00001308

00001004 <malloc>:
    1004:	e92d4800 	push	{fp, lr}
    1008:	e28db004 	add	fp, sp, #4
    100c:	e24dd018 	sub	sp, sp, #24
    1010:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1014:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1018:	e2833007 	add	r3, r3, #7
    101c:	e1a031a3 	lsr	r3, r3, #3
    1020:	e2833001 	add	r3, r3, #1
    1024:	e50b3010 	str	r3, [fp, #-16]
    1028:	e59f3134 	ldr	r3, [pc, #308]	@ 1164 <malloc+0x160>
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e50b300c 	str	r3, [fp, #-12]
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e3530000 	cmp	r3, #0
    103c:	1a00000b 	bne	1070 <malloc+0x6c>
    1040:	e59f3120 	ldr	r3, [pc, #288]	@ 1168 <malloc+0x164>
    1044:	e50b300c 	str	r3, [fp, #-12]
    1048:	e59f2114 	ldr	r2, [pc, #276]	@ 1164 <malloc+0x160>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5823000 	str	r3, [r2]
    1054:	e59f3108 	ldr	r3, [pc, #264]	@ 1164 <malloc+0x160>
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e59f2104 	ldr	r2, [pc, #260]	@ 1168 <malloc+0x164>
    1060:	e5823000 	str	r3, [r2]
    1064:	e59f30fc 	ldr	r3, [pc, #252]	@ 1168 <malloc+0x164>
    1068:	e3a02000 	mov	r2, #0
    106c:	e5832004 	str	r2, [r3, #4]
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5933000 	ldr	r3, [r3]
    1078:	e50b3008 	str	r3, [fp, #-8]
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e5933004 	ldr	r3, [r3, #4]
    1084:	e51b2010 	ldr	r2, [fp, #-16]
    1088:	e1520003 	cmp	r2, r3
    108c:	8a00001e 	bhi	110c <malloc+0x108>
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5933004 	ldr	r3, [r3, #4]
    1098:	e51b2010 	ldr	r2, [fp, #-16]
    109c:	e1520003 	cmp	r2, r3
    10a0:	1a000004 	bne	10b8 <malloc+0xb4>
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5932000 	ldr	r2, [r3]
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e5832000 	str	r2, [r3]
    10b4:	ea00000e 	b	10f4 <malloc+0xf0>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5932004 	ldr	r2, [r3, #4]
    10c0:	e51b3010 	ldr	r3, [fp, #-16]
    10c4:	e0422003 	sub	r2, r2, r3
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5832004 	str	r2, [r3, #4]
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e5933004 	ldr	r3, [r3, #4]
    10d8:	e1a03183 	lsl	r3, r3, #3
    10dc:	e51b2008 	ldr	r2, [fp, #-8]
    10e0:	e0823003 	add	r3, r2, r3
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e51b2010 	ldr	r2, [fp, #-16]
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e59f2068 	ldr	r2, [pc, #104]	@ 1164 <malloc+0x160>
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5823000 	str	r3, [r2]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e2833008 	add	r3, r3, #8
    1108:	ea000012 	b	1158 <malloc+0x154>
    110c:	e59f3050 	ldr	r3, [pc, #80]	@ 1164 <malloc+0x160>
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e51b2008 	ldr	r2, [fp, #-8]
    1118:	e1520003 	cmp	r2, r3
    111c:	1a000007 	bne	1140 <malloc+0x13c>
    1120:	e51b0010 	ldr	r0, [fp, #-16]
    1124:	ebffff94 	bl	f7c <morecore>
    1128:	e50b0008 	str	r0, [fp, #-8]
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e3530000 	cmp	r3, #0
    1134:	1a000001 	bne	1140 <malloc+0x13c>
    1138:	e3a03000 	mov	r3, #0
    113c:	ea000005 	b	1158 <malloc+0x154>
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e50b300c 	str	r3, [fp, #-12]
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e5933000 	ldr	r3, [r3]
    1150:	e50b3008 	str	r3, [fp, #-8]
    1154:	eaffffc8 	b	107c <malloc+0x78>
    1158:	e1a00003 	mov	r0, r3
    115c:	e24bd004 	sub	sp, fp, #4
    1160:	e8bd8800 	pop	{fp, pc}
    1164:	00001308 	.word	0x00001308
    1168:	00001300 	.word	0x00001300

0000116c <__udivsi3>:
    116c:	e2512001 	subs	r2, r1, #1
    1170:	012fff1e 	bxeq	lr
    1174:	3a000036 	bcc	1254 <__udivsi3+0xe8>
    1178:	e1500001 	cmp	r0, r1
    117c:	9a000022 	bls	120c <__udivsi3+0xa0>
    1180:	e1110002 	tst	r1, r2
    1184:	0a000023 	beq	1218 <__udivsi3+0xac>
    1188:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    118c:	01a01181 	lsleq	r1, r1, #3
    1190:	03a03008 	moveq	r3, #8
    1194:	13a03001 	movne	r3, #1
    1198:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    119c:	31510000 	cmpcc	r1, r0
    11a0:	31a01201 	lslcc	r1, r1, #4
    11a4:	31a03203 	lslcc	r3, r3, #4
    11a8:	3afffffa 	bcc	1198 <__udivsi3+0x2c>
    11ac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11b0:	31510000 	cmpcc	r1, r0
    11b4:	31a01081 	lslcc	r1, r1, #1
    11b8:	31a03083 	lslcc	r3, r3, #1
    11bc:	3afffffa 	bcc	11ac <__udivsi3+0x40>
    11c0:	e3a02000 	mov	r2, #0
    11c4:	e1500001 	cmp	r0, r1
    11c8:	20400001 	subcs	r0, r0, r1
    11cc:	21822003 	orrcs	r2, r2, r3
    11d0:	e15000a1 	cmp	r0, r1, lsr #1
    11d4:	204000a1 	subcs	r0, r0, r1, lsr #1
    11d8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    11dc:	e1500121 	cmp	r0, r1, lsr #2
    11e0:	20400121 	subcs	r0, r0, r1, lsr #2
    11e4:	21822123 	orrcs	r2, r2, r3, lsr #2
    11e8:	e15001a1 	cmp	r0, r1, lsr #3
    11ec:	204001a1 	subcs	r0, r0, r1, lsr #3
    11f0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11f4:	e3500000 	cmp	r0, #0
    11f8:	11b03223 	lsrsne	r3, r3, #4
    11fc:	11a01221 	lsrne	r1, r1, #4
    1200:	1affffef 	bne	11c4 <__udivsi3+0x58>
    1204:	e1a00002 	mov	r0, r2
    1208:	e12fff1e 	bx	lr
    120c:	03a00001 	moveq	r0, #1
    1210:	13a00000 	movne	r0, #0
    1214:	e12fff1e 	bx	lr
    1218:	e3510801 	cmp	r1, #65536	@ 0x10000
    121c:	21a01821 	lsrcs	r1, r1, #16
    1220:	23a02010 	movcs	r2, #16
    1224:	33a02000 	movcc	r2, #0
    1228:	e3510c01 	cmp	r1, #256	@ 0x100
    122c:	21a01421 	lsrcs	r1, r1, #8
    1230:	22822008 	addcs	r2, r2, #8
    1234:	e3510010 	cmp	r1, #16
    1238:	21a01221 	lsrcs	r1, r1, #4
    123c:	22822004 	addcs	r2, r2, #4
    1240:	e3510004 	cmp	r1, #4
    1244:	82822003 	addhi	r2, r2, #3
    1248:	908220a1 	addls	r2, r2, r1, lsr #1
    124c:	e1a00230 	lsr	r0, r0, r2
    1250:	e12fff1e 	bx	lr
    1254:	e3500000 	cmp	r0, #0
    1258:	13e00000 	mvnne	r0, #0
    125c:	ea000007 	b	1280 <__aeabi_idiv0>

00001260 <__aeabi_uidivmod>:
    1260:	e3510000 	cmp	r1, #0
    1264:	0afffffa 	beq	1254 <__udivsi3+0xe8>
    1268:	e92d4003 	push	{r0, r1, lr}
    126c:	ebffffbe 	bl	116c <__udivsi3>
    1270:	e8bd4006 	pop	{r1, r2, lr}
    1274:	e0030092 	mul	r3, r2, r0
    1278:	e0411003 	sub	r1, r1, r3
    127c:	e12fff1e 	bx	lr

00001280 <__aeabi_idiv0>:
    1280:	e12fff1e 	bx	lr
