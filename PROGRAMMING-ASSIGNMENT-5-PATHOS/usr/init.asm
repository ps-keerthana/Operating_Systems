
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb000321 	bl	ca0 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb000323 	bl	cc4 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb000317 	bl	ca0 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb000354 	bl	d9c <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb000352 	bl	d9c <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb00046a 	bl	1208 <printf>
      5c:	eb0002be 	bl	b5c <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb000462 	bl	1208 <printf>
      7c:	eb0002bf 	bl	b80 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb0002f8 	bl	c7c <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb000458 	bl	1208 <printf>
      a4:	eb0002b5 	bl	b80 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000454 	bl	1208 <printf>
      b4:	eb0002ba 	bl	ba4 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000018c8 	.word	0x000018c8
      e0:	000018d0 	.word	0x000018d0
      e4:	000018e4 	.word	0x000018e4
      e8:	00001924 	.word	0x00001924
      ec:	000018c4 	.word	0x000018c4
      f0:	000018f8 	.word	0x000018f8
      f4:	00001910 	.word	0x00001910

000000f8 <pg_pte>:
      f8:	e92d4800 	push	{fp, lr}
      fc:	e28db004 	add	fp, sp, #4
     100:	e24dd008 	sub	sp, sp, #8
     104:	e50b0008 	str	r0, [fp, #-8]
     108:	e51b1008 	ldr	r1, [fp, #-8]
     10c:	e3a0001a 	mov	r0, #26
     110:	eb0003de 	bl	1090 <syscall>
     114:	e1a03000 	mov	r3, r0
     118:	e1a00003 	mov	r0, r3
     11c:	e24bd004 	sub	sp, fp, #4
     120:	e8bd8800 	pop	{fp, pc}

00000124 <pg_pa>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dd008 	sub	sp, sp, #8
     130:	e50b0008 	str	r0, [fp, #-8]
     134:	e51b1008 	ldr	r1, [fp, #-8]
     138:	e3a0001b 	mov	r0, #27
     13c:	eb0003d3 	bl	1090 <syscall>
     140:	e1a03000 	mov	r3, r0
     144:	e1a00003 	mov	r0, r3
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}

00000150 <pg_flags>:
     150:	e92d4800 	push	{fp, lr}
     154:	e28db004 	add	fp, sp, #4
     158:	e24dd008 	sub	sp, sp, #8
     15c:	e50b0008 	str	r0, [fp, #-8]
     160:	e51b1008 	ldr	r1, [fp, #-8]
     164:	e3a0001c 	mov	r0, #28
     168:	eb0003c8 	bl	1090 <syscall>
     16c:	e1a03000 	mov	r3, r0
     170:	e1a00003 	mov	r0, r3
     174:	e24bd004 	sub	sp, fp, #4
     178:	e8bd8800 	pop	{fp, pc}

0000017c <kpt>:
     17c:	e92d4800 	push	{fp, lr}
     180:	e28db004 	add	fp, sp, #4
     184:	e3a0001d 	mov	r0, #29
     188:	eb0003c0 	bl	1090 <syscall>
     18c:	e1a03000 	mov	r3, r0
     190:	e1a00003 	mov	r0, r3
     194:	e8bd8800 	pop	{fp, pc}

00000198 <ugetpid>:
     198:	e92d4800 	push	{fp, lr}
     19c:	e28db004 	add	fp, sp, #4
     1a0:	e3a0001e 	mov	r0, #30
     1a4:	eb0003b9 	bl	1090 <syscall>
     1a8:	e1a03000 	mov	r3, r0
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e8bd8800 	pop	{fp, pc}

000001b4 <strcpy>:
     1b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b8:	e28db000 	add	fp, sp, #0
     1bc:	e24dd014 	sub	sp, sp, #20
     1c0:	e50b0010 	str	r0, [fp, #-16]
     1c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1c8:	e51b3010 	ldr	r3, [fp, #-16]
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e1a00000 	nop			@ (mov r0, r0)
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e2823001 	add	r3, r2, #1
     1dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1e0:	e51b3010 	ldr	r3, [fp, #-16]
     1e4:	e2831001 	add	r1, r3, #1
     1e8:	e50b1010 	str	r1, [fp, #-16]
     1ec:	e5d22000 	ldrb	r2, [r2]
     1f0:	e5c32000 	strb	r2, [r3]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	1afffff4 	bne	1d4 <strcpy+0x20>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e1a00003 	mov	r0, r3
     208:	e28bd000 	add	sp, fp, #0
     20c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     210:	e12fff1e 	bx	lr

00000214 <strcmp>:
     214:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     218:	e28db000 	add	fp, sp, #0
     21c:	e24dd00c 	sub	sp, sp, #12
     220:	e50b0008 	str	r0, [fp, #-8]
     224:	e50b100c 	str	r1, [fp, #-12]
     228:	ea000005 	b	244 <strcmp+0x30>
     22c:	e51b3008 	ldr	r3, [fp, #-8]
     230:	e2833001 	add	r3, r3, #1
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	e51b300c 	ldr	r3, [fp, #-12]
     23c:	e2833001 	add	r3, r3, #1
     240:	e50b300c 	str	r3, [fp, #-12]
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e5d33000 	ldrb	r3, [r3]
     24c:	e3530000 	cmp	r3, #0
     250:	0a000005 	beq	26c <strcmp+0x58>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e5d32000 	ldrb	r2, [r3]
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e5d33000 	ldrb	r3, [r3]
     264:	e1520003 	cmp	r2, r3
     268:	0affffef 	beq	22c <strcmp+0x18>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e5d33000 	ldrb	r3, [r3]
     274:	e1a02003 	mov	r2, r3
     278:	e51b300c 	ldr	r3, [fp, #-12]
     27c:	e5d33000 	ldrb	r3, [r3]
     280:	e0423003 	sub	r3, r2, r3
     284:	e1a00003 	mov	r0, r3
     288:	e28bd000 	add	sp, fp, #0
     28c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     290:	e12fff1e 	bx	lr

00000294 <strlen>:
     294:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     298:	e28db000 	add	fp, sp, #0
     29c:	e24dd014 	sub	sp, sp, #20
     2a0:	e50b0010 	str	r0, [fp, #-16]
     2a4:	e3a03000 	mov	r3, #0
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	ea000002 	b	2bc <strlen+0x28>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e2833001 	add	r3, r3, #1
     2b8:	e50b3008 	str	r3, [fp, #-8]
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e51b2010 	ldr	r2, [fp, #-16]
     2c4:	e0823003 	add	r3, r2, r3
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff6 	bne	2b0 <strlen+0x1c>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <memset>:
     2e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ec:	e28db000 	add	fp, sp, #0
     2f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     300:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     304:	e50b3008 	str	r3, [fp, #-8]
     308:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     30c:	e54b300d 	strb	r3, [fp, #-13]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e1a03002 	mov	r3, r2
     318:	e1a03403 	lsl	r3, r3, #8
     31c:	e0833002 	add	r3, r3, r2
     320:	e1a03803 	lsl	r3, r3, #16
     324:	e1a02003 	mov	r2, r3
     328:	e55b300d 	ldrb	r3, [fp, #-13]
     32c:	e1a03403 	lsl	r3, r3, #8
     330:	e1822003 	orr	r2, r2, r3
     334:	e55b300d 	ldrb	r3, [fp, #-13]
     338:	e1823003 	orr	r3, r2, r3
     33c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     340:	ea000008 	b	368 <memset+0x80>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e55b200d 	ldrb	r2, [fp, #-13]
     34c:	e5c32000 	strb	r2, [r3]
     350:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     354:	e2433001 	sub	r3, r3, #1
     358:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     36c:	e3530000 	cmp	r3, #0
     370:	0a000003 	beq	384 <memset+0x9c>
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2033003 	and	r3, r3, #3
     37c:	e3530000 	cmp	r3, #0
     380:	1affffef 	bne	344 <memset+0x5c>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e50b300c 	str	r3, [fp, #-12]
     38c:	ea000008 	b	3b4 <memset+0xcc>
     390:	e51b300c 	ldr	r3, [fp, #-12]
     394:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     398:	e5832000 	str	r2, [r3]
     39c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e2433004 	sub	r3, r3, #4
     3a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a8:	e51b300c 	ldr	r3, [fp, #-12]
     3ac:	e2833004 	add	r3, r3, #4
     3b0:	e50b300c 	str	r3, [fp, #-12]
     3b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e3530003 	cmp	r3, #3
     3bc:	8afffff3 	bhi	390 <memset+0xa8>
     3c0:	e51b300c 	ldr	r3, [fp, #-12]
     3c4:	e50b3008 	str	r3, [fp, #-8]
     3c8:	ea000008 	b	3f0 <memset+0x108>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e55b200d 	ldrb	r2, [fp, #-13]
     3d4:	e5c32000 	strb	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e2433001 	sub	r3, r3, #1
     3e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e50b3008 	str	r3, [fp, #-8]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f4:	e3530000 	cmp	r3, #0
     3f8:	1afffff3 	bne	3cc <memset+0xe4>
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e1a00003 	mov	r0, r3
     404:	e28bd000 	add	sp, fp, #0
     408:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     40c:	e12fff1e 	bx	lr

00000410 <strchr>:
     410:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     414:	e28db000 	add	fp, sp, #0
     418:	e24dd00c 	sub	sp, sp, #12
     41c:	e50b0008 	str	r0, [fp, #-8]
     420:	e1a03001 	mov	r3, r1
     424:	e54b3009 	strb	r3, [fp, #-9]
     428:	ea000009 	b	454 <strchr+0x44>
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e5d33000 	ldrb	r3, [r3]
     434:	e55b2009 	ldrb	r2, [fp, #-9]
     438:	e1520003 	cmp	r2, r3
     43c:	1a000001 	bne	448 <strchr+0x38>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	ea000007 	b	468 <strchr+0x58>
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e2833001 	add	r3, r3, #1
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e3530000 	cmp	r3, #0
     460:	1afffff1 	bne	42c <strchr+0x1c>
     464:	e3a03000 	mov	r3, #0
     468:	e1a00003 	mov	r0, r3
     46c:	e28bd000 	add	sp, fp, #0
     470:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     474:	e12fff1e 	bx	lr

00000478 <gets>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd018 	sub	sp, sp, #24
     484:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     488:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     48c:	e3a03000 	mov	r3, #0
     490:	e50b3008 	str	r3, [fp, #-8]
     494:	ea000016 	b	4f4 <gets+0x7c>
     498:	e24b300d 	sub	r3, fp, #13
     49c:	e3a02001 	mov	r2, #1
     4a0:	e1a01003 	mov	r1, r3
     4a4:	e3a00000 	mov	r0, #0
     4a8:	eb0001cf 	bl	bec <read>
     4ac:	e50b000c 	str	r0, [fp, #-12]
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e3530000 	cmp	r3, #0
     4b8:	da000013 	ble	50c <gets+0x94>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2832001 	add	r2, r3, #1
     4c4:	e50b2008 	str	r2, [fp, #-8]
     4c8:	e1a02003 	mov	r2, r3
     4cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d0:	e0833002 	add	r3, r3, r2
     4d4:	e55b200d 	ldrb	r2, [fp, #-13]
     4d8:	e5c32000 	strb	r2, [r3]
     4dc:	e55b300d 	ldrb	r3, [fp, #-13]
     4e0:	e353000a 	cmp	r3, #10
     4e4:	0a000009 	beq	510 <gets+0x98>
     4e8:	e55b300d 	ldrb	r3, [fp, #-13]
     4ec:	e353000d 	cmp	r3, #13
     4f0:	0a000006 	beq	510 <gets+0x98>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e2833001 	add	r3, r3, #1
     4fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     500:	e1520003 	cmp	r2, r3
     504:	caffffe3 	bgt	498 <gets+0x20>
     508:	ea000000 	b	510 <gets+0x98>
     50c:	e1a00000 	nop			@ (mov r0, r0)
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     518:	e0823003 	add	r3, r2, r3
     51c:	e3a02000 	mov	r2, #0
     520:	e5c32000 	strb	r2, [r3]
     524:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     528:	e1a00003 	mov	r0, r3
     52c:	e24bd004 	sub	sp, fp, #4
     530:	e8bd8800 	pop	{fp, pc}

00000534 <stat>:
     534:	e92d4800 	push	{fp, lr}
     538:	e28db004 	add	fp, sp, #4
     53c:	e24dd010 	sub	sp, sp, #16
     540:	e50b0010 	str	r0, [fp, #-16]
     544:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     548:	e3a01000 	mov	r1, #0
     54c:	e51b0010 	ldr	r0, [fp, #-16]
     550:	eb0001d2 	bl	ca0 <open>
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e3530000 	cmp	r3, #0
     560:	aa000001 	bge	56c <stat+0x38>
     564:	e3e03000 	mvn	r3, #0
     568:	ea000006 	b	588 <stat+0x54>
     56c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     570:	e51b0008 	ldr	r0, [fp, #-8]
     574:	eb0001e4 	bl	d0c <fstat>
     578:	e50b000c 	str	r0, [fp, #-12]
     57c:	e51b0008 	ldr	r0, [fp, #-8]
     580:	eb0001ab 	bl	c34 <close>
     584:	e51b300c 	ldr	r3, [fp, #-12]
     588:	e1a00003 	mov	r0, r3
     58c:	e24bd004 	sub	sp, fp, #4
     590:	e8bd8800 	pop	{fp, pc}

00000594 <atoi>:
     594:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     598:	e28db000 	add	fp, sp, #0
     59c:	e24dd014 	sub	sp, sp, #20
     5a0:	e50b0010 	str	r0, [fp, #-16]
     5a4:	e3a03000 	mov	r3, #0
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	ea00000c 	b	5e4 <atoi+0x50>
     5b0:	e51b2008 	ldr	r2, [fp, #-8]
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a03103 	lsl	r3, r3, #2
     5bc:	e0833002 	add	r3, r3, r2
     5c0:	e1a03083 	lsl	r3, r3, #1
     5c4:	e1a01003 	mov	r1, r3
     5c8:	e51b3010 	ldr	r3, [fp, #-16]
     5cc:	e2832001 	add	r2, r3, #1
     5d0:	e50b2010 	str	r2, [fp, #-16]
     5d4:	e5d33000 	ldrb	r3, [r3]
     5d8:	e0813003 	add	r3, r1, r3
     5dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     5e0:	e50b3008 	str	r3, [fp, #-8]
     5e4:	e51b3010 	ldr	r3, [fp, #-16]
     5e8:	e5d33000 	ldrb	r3, [r3]
     5ec:	e353002f 	cmp	r3, #47	@ 0x2f
     5f0:	9a000003 	bls	604 <atoi+0x70>
     5f4:	e51b3010 	ldr	r3, [fp, #-16]
     5f8:	e5d33000 	ldrb	r3, [r3]
     5fc:	e3530039 	cmp	r3, #57	@ 0x39
     600:	9affffea 	bls	5b0 <atoi+0x1c>
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e1a00003 	mov	r0, r3
     60c:	e28bd000 	add	sp, fp, #0
     610:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <memmove>:
     618:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     61c:	e28db000 	add	fp, sp, #0
     620:	e24dd01c 	sub	sp, sp, #28
     624:	e50b0010 	str	r0, [fp, #-16]
     628:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     62c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e50b3008 	str	r3, [fp, #-8]
     638:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     63c:	e50b300c 	str	r3, [fp, #-12]
     640:	ea000007 	b	664 <memmove+0x4c>
     644:	e51b200c 	ldr	r2, [fp, #-12]
     648:	e2823001 	add	r3, r2, #1
     64c:	e50b300c 	str	r3, [fp, #-12]
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e2831001 	add	r1, r3, #1
     658:	e50b1008 	str	r1, [fp, #-8]
     65c:	e5d22000 	ldrb	r2, [r2]
     660:	e5c32000 	strb	r2, [r3]
     664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     668:	e2432001 	sub	r2, r3, #1
     66c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     670:	e3530000 	cmp	r3, #0
     674:	cafffff2 	bgt	644 <memmove+0x2c>
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e1a00003 	mov	r0, r3
     680:	e28bd000 	add	sp, fp, #0
     684:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <strncmp>:
     68c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     690:	e28db000 	add	fp, sp, #0
     694:	e24dd014 	sub	sp, sp, #20
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	e50b100c 	str	r1, [fp, #-12]
     6a0:	e50b2010 	str	r2, [fp, #-16]
     6a4:	ea000008 	b	6cc <strncmp+0x40>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e2833001 	add	r3, r3, #1
     6b0:	e50b3008 	str	r3, [fp, #-8]
     6b4:	e51b300c 	ldr	r3, [fp, #-12]
     6b8:	e2833001 	add	r3, r3, #1
     6bc:	e50b300c 	str	r3, [fp, #-12]
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e2433001 	sub	r3, r3, #1
     6c8:	e50b3010 	str	r3, [fp, #-16]
     6cc:	e51b3010 	ldr	r3, [fp, #-16]
     6d0:	e3530000 	cmp	r3, #0
     6d4:	da00000d 	ble	710 <strncmp+0x84>
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e5d33000 	ldrb	r3, [r3]
     6e0:	e3530000 	cmp	r3, #0
     6e4:	0a000009 	beq	710 <strncmp+0x84>
     6e8:	e51b300c 	ldr	r3, [fp, #-12]
     6ec:	e5d33000 	ldrb	r3, [r3]
     6f0:	e3530000 	cmp	r3, #0
     6f4:	0a000005 	beq	710 <strncmp+0x84>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5d32000 	ldrb	r2, [r3]
     700:	e51b300c 	ldr	r3, [fp, #-12]
     704:	e5d33000 	ldrb	r3, [r3]
     708:	e1520003 	cmp	r2, r3
     70c:	0affffe5 	beq	6a8 <strncmp+0x1c>
     710:	e51b3010 	ldr	r3, [fp, #-16]
     714:	e3530000 	cmp	r3, #0
     718:	1a000001 	bne	724 <strncmp+0x98>
     71c:	e3a03000 	mov	r3, #0
     720:	ea000005 	b	73c <strncmp+0xb0>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5d33000 	ldrb	r3, [r3]
     72c:	e1a02003 	mov	r2, r3
     730:	e51b300c 	ldr	r3, [fp, #-12]
     734:	e5d33000 	ldrb	r3, [r3]
     738:	e0423003 	sub	r3, r2, r3
     73c:	e1a00003 	mov	r0, r3
     740:	e28bd000 	add	sp, fp, #0
     744:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <strncpy>:
     74c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     750:	e28db000 	add	fp, sp, #0
     754:	e24dd01c 	sub	sp, sp, #28
     758:	e50b0010 	str	r0, [fp, #-16]
     75c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     760:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     764:	e51b3010 	ldr	r3, [fp, #-16]
     768:	e50b3008 	str	r3, [fp, #-8]
     76c:	ea00000a 	b	79c <strncpy+0x50>
     770:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     774:	e2823001 	add	r3, r2, #1
     778:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e2831001 	add	r1, r3, #1
     784:	e50b1008 	str	r1, [fp, #-8]
     788:	e5d22000 	ldrb	r2, [r2]
     78c:	e5c32000 	strb	r2, [r3]
     790:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     794:	e2433001 	sub	r3, r3, #1
     798:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     79c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a0:	e3530000 	cmp	r3, #0
     7a4:	da00000c 	ble	7dc <strncpy+0x90>
     7a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	1affffed 	bne	770 <strncpy+0x24>
     7b8:	ea000007 	b	7dc <strncpy+0x90>
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e2832001 	add	r2, r3, #1
     7c4:	e50b2008 	str	r2, [fp, #-8]
     7c8:	e3a02000 	mov	r2, #0
     7cc:	e5c32000 	strb	r2, [r3]
     7d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d4:	e2433001 	sub	r3, r3, #1
     7d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7e0:	e3530000 	cmp	r3, #0
     7e4:	cafffff4 	bgt	7bc <strncpy+0x70>
     7e8:	e51b3010 	ldr	r3, [fp, #-16]
     7ec:	e1a00003 	mov	r0, r3
     7f0:	e28bd000 	add	sp, fp, #0
     7f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <xchg>:
     7fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     800:	e28db000 	add	fp, sp, #0
     804:	e24dd014 	sub	sp, sp, #20
     808:	e50b0010 	str	r0, [fp, #-16]
     80c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     810:	e51b2010 	ldr	r2, [fp, #-16]
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e1023091 	swp	r3, r1, [r2]
     81c:	e50b3008 	str	r3, [fp, #-8]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e1a00003 	mov	r0, r3
     828:	e28bd000 	add	sp, fp, #0
     82c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <initiateLock>:
     834:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     838:	e28db000 	add	fp, sp, #0
     83c:	e24dd00c 	sub	sp, sp, #12
     840:	e50b0008 	str	r0, [fp, #-8]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e3a02000 	mov	r2, #0
     84c:	e5832000 	str	r2, [r3]
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e3a02001 	mov	r2, #1
     858:	e5832004 	str	r2, [r3, #4]
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e28bd000 	add	sp, fp, #0
     864:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <acquireLock>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd008 	sub	sp, sp, #8
     878:	e50b0008 	str	r0, [fp, #-8]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e5933004 	ldr	r3, [r3, #4]
     884:	e3530000 	cmp	r3, #0
     888:	0a000008 	beq	8b0 <acquireLock+0x44>
     88c:	e1a00000 	nop			@ (mov r0, r0)
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e3a01001 	mov	r1, #1
     898:	e1a00003 	mov	r0, r3
     89c:	ebffffd6 	bl	7fc <xchg>
     8a0:	e1a03000 	mov	r3, r0
     8a4:	e3530000 	cmp	r3, #0
     8a8:	1afffff8 	bne	890 <acquireLock+0x24>
     8ac:	ea000000 	b	8b4 <acquireLock+0x48>
     8b0:	e1a00000 	nop			@ (mov r0, r0)
     8b4:	e24bd004 	sub	sp, fp, #4
     8b8:	e8bd8800 	pop	{fp, pc}

000008bc <releaseLock>:
     8bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c0:	e28db000 	add	fp, sp, #0
     8c4:	e24dd00c 	sub	sp, sp, #12
     8c8:	e50b0008 	str	r0, [fp, #-8]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933004 	ldr	r3, [r3, #4]
     8d4:	e3530000 	cmp	r3, #0
     8d8:	0a000006 	beq	8f8 <releaseLock+0x3c>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5933000 	ldr	r3, [r3]
     8e4:	e3530001 	cmp	r3, #1
     8e8:	1a000002 	bne	8f8 <releaseLock+0x3c>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e3a02000 	mov	r2, #0
     8f4:	e5832000 	str	r2, [r3]
     8f8:	e1a00000 	nop			@ (mov r0, r0)
     8fc:	e28bd000 	add	sp, fp, #0
     900:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <initiateCondVar>:
     908:	e92d4800 	push	{fp, lr}
     90c:	e28db004 	add	fp, sp, #4
     910:	e24dd008 	sub	sp, sp, #8
     914:	e50b0008 	str	r0, [fp, #-8]
     918:	eb0001b8 	bl	1000 <getChannel>
     91c:	e1a02000 	mov	r2, r0
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e5832000 	str	r2, [r3]
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e3a02001 	mov	r2, #1
     930:	e5832004 	str	r2, [r3, #4]
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e24bd004 	sub	sp, fp, #4
     93c:	e8bd8800 	pop	{fp, pc}

00000940 <condWait>:
     940:	e92d4800 	push	{fp, lr}
     944:	e28db004 	add	fp, sp, #4
     948:	e24dd008 	sub	sp, sp, #8
     94c:	e50b0008 	str	r0, [fp, #-8]
     950:	e50b100c 	str	r1, [fp, #-12]
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e5933004 	ldr	r3, [r3, #4]
     95c:	e3530000 	cmp	r3, #0
     960:	0a00000c 	beq	998 <condWait+0x58>
     964:	e51b300c 	ldr	r3, [fp, #-12]
     968:	e5933004 	ldr	r3, [r3, #4]
     96c:	e3530000 	cmp	r3, #0
     970:	0a000008 	beq	998 <condWait+0x58>
     974:	e51b000c 	ldr	r0, [fp, #-12]
     978:	ebffffcf 	bl	8bc <releaseLock>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e5933000 	ldr	r3, [r3]
     984:	e1a00003 	mov	r0, r3
     988:	eb000193 	bl	fdc <sleepChan>
     98c:	e51b000c 	ldr	r0, [fp, #-12]
     990:	ebffffb5 	bl	86c <acquireLock>
     994:	ea000000 	b	99c <condWait+0x5c>
     998:	e1a00000 	nop			@ (mov r0, r0)
     99c:	e24bd004 	sub	sp, fp, #4
     9a0:	e8bd8800 	pop	{fp, pc}

000009a4 <broadcast>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd008 	sub	sp, sp, #8
     9b0:	e50b0008 	str	r0, [fp, #-8]
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933004 	ldr	r3, [r3, #4]
     9bc:	e3530000 	cmp	r3, #0
     9c0:	0a000004 	beq	9d8 <broadcast+0x34>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e5933000 	ldr	r3, [r3]
     9cc:	e1a00003 	mov	r0, r3
     9d0:	eb000193 	bl	1024 <sigChan>
     9d4:	ea000000 	b	9dc <broadcast+0x38>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <signal>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd008 	sub	sp, sp, #8
     9f0:	e50b0008 	str	r0, [fp, #-8]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e5933004 	ldr	r3, [r3, #4]
     9fc:	e3530000 	cmp	r3, #0
     a00:	0a000004 	beq	a18 <signal+0x34>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e5933000 	ldr	r3, [r3]
     a0c:	e1a00003 	mov	r0, r3
     a10:	eb00018c 	bl	1048 <sigOneChan>
     a14:	ea000000 	b	a1c <signal+0x38>
     a18:	e1a00000 	nop			@ (mov r0, r0)
     a1c:	e24bd004 	sub	sp, fp, #4
     a20:	e8bd8800 	pop	{fp, pc}

00000a24 <semInit>:
     a24:	e92d4800 	push	{fp, lr}
     a28:	e28db004 	add	fp, sp, #4
     a2c:	e24dd008 	sub	sp, sp, #8
     a30:	e50b0008 	str	r0, [fp, #-8]
     a34:	e50b100c 	str	r1, [fp, #-12]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2833004 	add	r3, r3, #4
     a40:	e1a00003 	mov	r0, r3
     a44:	ebffff7a 	bl	834 <initiateLock>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e283300c 	add	r3, r3, #12
     a50:	e1a00003 	mov	r0, r3
     a54:	ebffffab 	bl	908 <initiateCondVar>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e51b200c 	ldr	r2, [fp, #-12]
     a60:	e5832000 	str	r2, [r3]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e3a02001 	mov	r2, #1
     a6c:	e5832014 	str	r2, [r3, #20]
     a70:	e1a00000 	nop			@ (mov r0, r0)
     a74:	e24bd004 	sub	sp, fp, #4
     a78:	e8bd8800 	pop	{fp, pc}

00000a7c <semUp>:
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd008 	sub	sp, sp, #8
     a88:	e50b0008 	str	r0, [fp, #-8]
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e2833004 	add	r3, r3, #4
     a94:	e1a00003 	mov	r0, r3
     a98:	ebffff73 	bl	86c <acquireLock>
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e5933000 	ldr	r3, [r3]
     aa4:	e2832001 	add	r2, r3, #1
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e5832000 	str	r2, [r3]
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e283300c 	add	r3, r3, #12
     ab8:	e1a00003 	mov	r0, r3
     abc:	ebffffc8 	bl	9e4 <signal>
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e2833004 	add	r3, r3, #4
     ac8:	e1a00003 	mov	r0, r3
     acc:	ebffff7a 	bl	8bc <releaseLock>
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e24bd004 	sub	sp, fp, #4
     ad8:	e8bd8800 	pop	{fp, pc}

00000adc <semDown>:
     adc:	e92d4800 	push	{fp, lr}
     ae0:	e28db004 	add	fp, sp, #4
     ae4:	e24dd008 	sub	sp, sp, #8
     ae8:	e50b0008 	str	r0, [fp, #-8]
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2833004 	add	r3, r3, #4
     af4:	e1a00003 	mov	r0, r3
     af8:	ebffff5b 	bl	86c <acquireLock>
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e5933000 	ldr	r3, [r3]
     b04:	e2432001 	sub	r2, r3, #1
     b08:	e51b3008 	ldr	r3, [fp, #-8]
     b0c:	e5832000 	str	r2, [r3]
     b10:	ea000006 	b	b30 <semDown+0x54>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e283200c 	add	r2, r3, #12
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e2833004 	add	r3, r3, #4
     b24:	e1a01003 	mov	r1, r3
     b28:	e1a00002 	mov	r0, r2
     b2c:	ebffff83 	bl	940 <condWait>
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e3530000 	cmp	r3, #0
     b3c:	bafffff4 	blt	b14 <semDown+0x38>
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e2833004 	add	r3, r3, #4
     b48:	e1a00003 	mov	r0, r3
     b4c:	ebffff5a 	bl	8bc <releaseLock>
     b50:	e1a00000 	nop			@ (mov r0, r0)
     b54:	e24bd004 	sub	sp, fp, #4
     b58:	e8bd8800 	pop	{fp, pc}

00000b5c <fork>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00001 	mov	r0, #1
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <exit>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00002 	mov	r0, #2
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <wait>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00003 	mov	r0, #3
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <pipe>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00004 	mov	r0, #4
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <read>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00005 	mov	r0, #5
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <write>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00010 	mov	r0, #16
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <close>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00015 	mov	r0, #21
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <kill>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00006 	mov	r0, #6
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <exec>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00007 	mov	r0, #7
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <open>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0000f 	mov	r0, #15
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <mknod>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00011 	mov	r0, #17
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <unlink>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00012 	mov	r0, #18
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <fstat>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00008 	mov	r0, #8
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <link>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00013 	mov	r0, #19
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <mkdir>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00014 	mov	r0, #20
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <chdir>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00009 	mov	r0, #9
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <dup>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a0000a 	mov	r0, #10
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <getpid>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a0000b 	mov	r0, #11
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <sbrk>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0000c 	mov	r0, #12
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <sleep>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0000d 	mov	r0, #13
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <uptime>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0000e 	mov	r0, #14
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <proclist>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a00016 	mov	r0, #22
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <settickets>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00017 	mov	r0, #23
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <srand>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00018 	mov	r0, #24
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <getpinfo>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00019 	mov	r0, #25
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <print_pt>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a0001f 	mov	r0, #31
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <thread_create>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00020 	mov	r0, #32
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <thread_exit>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a00021 	mov	r0, #33	@ 0x21
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <thread_join>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a00022 	mov	r0, #34	@ 0x22
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <waitpid>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a00023 	mov	r0, #35	@ 0x23
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <barrier_init>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a00024 	mov	r0, #36	@ 0x24
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <barrier_check>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a00025 	mov	r0, #37	@ 0x25
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <sleepChan>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a00026 	mov	r0, #38	@ 0x26
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <getChannel>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00027 	mov	r0, #39	@ 0x27
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <sigChan>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00028 	mov	r0, #40	@ 0x28
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <sigOneChan>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a00029 	mov	r0, #41	@ 0x29
    1060:	ef000000 	svc	0x00000000
    1064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1068:	e12fff1e 	bx	lr

0000106c <symlink>:
    106c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1070:	e1a04003 	mov	r4, r3
    1074:	e1a03002 	mov	r3, r2
    1078:	e1a02001 	mov	r2, r1
    107c:	e1a01000 	mov	r1, r0
    1080:	e3a0002a 	mov	r0, #42	@ 0x2a
    1084:	ef000000 	svc	0x00000000
    1088:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    108c:	e12fff1e 	bx	lr

00001090 <syscall>:
    1090:	ef000000 	svc	0x00000000
    1094:	e12fff1e 	bx	lr

00001098 <putc>:
    1098:	e92d4800 	push	{fp, lr}
    109c:	e28db004 	add	fp, sp, #4
    10a0:	e24dd008 	sub	sp, sp, #8
    10a4:	e50b0008 	str	r0, [fp, #-8]
    10a8:	e1a03001 	mov	r3, r1
    10ac:	e54b3009 	strb	r3, [fp, #-9]
    10b0:	e24b3009 	sub	r3, fp, #9
    10b4:	e3a02001 	mov	r2, #1
    10b8:	e1a01003 	mov	r1, r3
    10bc:	e51b0008 	ldr	r0, [fp, #-8]
    10c0:	ebfffed2 	bl	c10 <write>
    10c4:	e1a00000 	nop			@ (mov r0, r0)
    10c8:	e24bd004 	sub	sp, fp, #4
    10cc:	e8bd8800 	pop	{fp, pc}

000010d0 <printint>:
    10d0:	e92d4800 	push	{fp, lr}
    10d4:	e28db004 	add	fp, sp, #4
    10d8:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10dc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10e0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10e4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10e8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10ec:	e3a03000 	mov	r3, #0
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10f8:	e3530000 	cmp	r3, #0
    10fc:	0a000008 	beq	1124 <printint+0x54>
    1100:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1104:	e3530000 	cmp	r3, #0
    1108:	aa000005 	bge	1124 <printint+0x54>
    110c:	e3a03001 	mov	r3, #1
    1110:	e50b300c 	str	r3, [fp, #-12]
    1114:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1118:	e2633000 	rsb	r3, r3, #0
    111c:	e50b3010 	str	r3, [fp, #-16]
    1120:	ea000001 	b	112c <printint+0x5c>
    1124:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1128:	e50b3010 	str	r3, [fp, #-16]
    112c:	e3a03000 	mov	r3, #0
    1130:	e50b3008 	str	r3, [fp, #-8]
    1134:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1138:	e51b3010 	ldr	r3, [fp, #-16]
    113c:	e1a01002 	mov	r1, r2
    1140:	e1a00003 	mov	r0, r3
    1144:	eb0001d5 	bl	18a0 <__aeabi_uidivmod>
    1148:	e1a03001 	mov	r3, r1
    114c:	e1a01003 	mov	r1, r3
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e2832001 	add	r2, r3, #1
    1158:	e50b2008 	str	r2, [fp, #-8]
    115c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1204 <printint+0x134>
    1160:	e7d22001 	ldrb	r2, [r2, r1]
    1164:	e2433004 	sub	r3, r3, #4
    1168:	e083300b 	add	r3, r3, fp
    116c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1170:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1174:	e1a01003 	mov	r1, r3
    1178:	e51b0010 	ldr	r0, [fp, #-16]
    117c:	eb00018a 	bl	17ac <__udivsi3>
    1180:	e1a03000 	mov	r3, r0
    1184:	e50b3010 	str	r3, [fp, #-16]
    1188:	e51b3010 	ldr	r3, [fp, #-16]
    118c:	e3530000 	cmp	r3, #0
    1190:	1affffe7 	bne	1134 <printint+0x64>
    1194:	e51b300c 	ldr	r3, [fp, #-12]
    1198:	e3530000 	cmp	r3, #0
    119c:	0a00000e 	beq	11dc <printint+0x10c>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e2832001 	add	r2, r3, #1
    11a8:	e50b2008 	str	r2, [fp, #-8]
    11ac:	e2433004 	sub	r3, r3, #4
    11b0:	e083300b 	add	r3, r3, fp
    11b4:	e3a0202d 	mov	r2, #45	@ 0x2d
    11b8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11bc:	ea000006 	b	11dc <printint+0x10c>
    11c0:	e24b2020 	sub	r2, fp, #32
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e0823003 	add	r3, r2, r3
    11cc:	e5d33000 	ldrb	r3, [r3]
    11d0:	e1a01003 	mov	r1, r3
    11d4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11d8:	ebffffae 	bl	1098 <putc>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e2433001 	sub	r3, r3, #1
    11e4:	e50b3008 	str	r3, [fp, #-8]
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e3530000 	cmp	r3, #0
    11f0:	aafffff2 	bge	11c0 <printint+0xf0>
    11f4:	e1a00000 	nop			@ (mov r0, r0)
    11f8:	e1a00000 	nop			@ (mov r0, r0)
    11fc:	e24bd004 	sub	sp, fp, #4
    1200:	e8bd8800 	pop	{fp, pc}
    1204:	0000192c 	.word	0x0000192c

00001208 <printf>:
    1208:	e92d000e 	push	{r1, r2, r3}
    120c:	e92d4800 	push	{fp, lr}
    1210:	e28db004 	add	fp, sp, #4
    1214:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1218:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    121c:	e3a03000 	mov	r3, #0
    1220:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1224:	e28b3008 	add	r3, fp, #8
    1228:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    122c:	e3a03000 	mov	r3, #0
    1230:	e50b3010 	str	r3, [fp, #-16]
    1234:	ea000074 	b	140c <printf+0x204>
    1238:	e59b2004 	ldr	r2, [fp, #4]
    123c:	e51b3010 	ldr	r3, [fp, #-16]
    1240:	e0823003 	add	r3, r2, r3
    1244:	e5d33000 	ldrb	r3, [r3]
    1248:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    124c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1250:	e3530000 	cmp	r3, #0
    1254:	1a00000b 	bne	1288 <printf+0x80>
    1258:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    125c:	e3530025 	cmp	r3, #37	@ 0x25
    1260:	1a000002 	bne	1270 <printf+0x68>
    1264:	e3a03025 	mov	r3, #37	@ 0x25
    1268:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    126c:	ea000063 	b	1400 <printf+0x1f8>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e6ef3073 	uxtb	r3, r3
    1278:	e1a01003 	mov	r1, r3
    127c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1280:	ebffff84 	bl	1098 <putc>
    1284:	ea00005d 	b	1400 <printf+0x1f8>
    1288:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    128c:	e3530025 	cmp	r3, #37	@ 0x25
    1290:	1a00005a 	bne	1400 <printf+0x1f8>
    1294:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1298:	e3530064 	cmp	r3, #100	@ 0x64
    129c:	1a00000a 	bne	12cc <printf+0xc4>
    12a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e1a01003 	mov	r1, r3
    12ac:	e3a03001 	mov	r3, #1
    12b0:	e3a0200a 	mov	r2, #10
    12b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12b8:	ebffff84 	bl	10d0 <printint>
    12bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c0:	e2833004 	add	r3, r3, #4
    12c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12c8:	ea00004a 	b	13f8 <printf+0x1f0>
    12cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d0:	e3530078 	cmp	r3, #120	@ 0x78
    12d4:	0a000002 	beq	12e4 <printf+0xdc>
    12d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12dc:	e3530070 	cmp	r3, #112	@ 0x70
    12e0:	1a00000a 	bne	1310 <printf+0x108>
    12e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e1a01003 	mov	r1, r3
    12f0:	e3a03000 	mov	r3, #0
    12f4:	e3a02010 	mov	r2, #16
    12f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12fc:	ebffff73 	bl	10d0 <printint>
    1300:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1304:	e2833004 	add	r3, r3, #4
    1308:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    130c:	ea000039 	b	13f8 <printf+0x1f0>
    1310:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1314:	e3530073 	cmp	r3, #115	@ 0x73
    1318:	1a000018 	bne	1380 <printf+0x178>
    131c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1320:	e5933000 	ldr	r3, [r3]
    1324:	e50b300c 	str	r3, [fp, #-12]
    1328:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    132c:	e2833004 	add	r3, r3, #4
    1330:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1334:	e51b300c 	ldr	r3, [fp, #-12]
    1338:	e3530000 	cmp	r3, #0
    133c:	1a00000a 	bne	136c <printf+0x164>
    1340:	e59f30f4 	ldr	r3, [pc, #244]	@ 143c <printf+0x234>
    1344:	e50b300c 	str	r3, [fp, #-12]
    1348:	ea000007 	b	136c <printf+0x164>
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e5d33000 	ldrb	r3, [r3]
    1354:	e1a01003 	mov	r1, r3
    1358:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    135c:	ebffff4d 	bl	1098 <putc>
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e2833001 	add	r3, r3, #1
    1368:	e50b300c 	str	r3, [fp, #-12]
    136c:	e51b300c 	ldr	r3, [fp, #-12]
    1370:	e5d33000 	ldrb	r3, [r3]
    1374:	e3530000 	cmp	r3, #0
    1378:	1afffff3 	bne	134c <printf+0x144>
    137c:	ea00001d 	b	13f8 <printf+0x1f0>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e3530063 	cmp	r3, #99	@ 0x63
    1388:	1a000009 	bne	13b4 <printf+0x1ac>
    138c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1390:	e5933000 	ldr	r3, [r3]
    1394:	e6ef3073 	uxtb	r3, r3
    1398:	e1a01003 	mov	r1, r3
    139c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a0:	ebffff3c 	bl	1098 <putc>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e2833004 	add	r3, r3, #4
    13ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13b0:	ea000010 	b	13f8 <printf+0x1f0>
    13b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b8:	e3530025 	cmp	r3, #37	@ 0x25
    13bc:	1a000005 	bne	13d8 <printf+0x1d0>
    13c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c4:	e6ef3073 	uxtb	r3, r3
    13c8:	e1a01003 	mov	r1, r3
    13cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13d0:	ebffff30 	bl	1098 <putc>
    13d4:	ea000007 	b	13f8 <printf+0x1f0>
    13d8:	e3a01025 	mov	r1, #37	@ 0x25
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff2c 	bl	1098 <putc>
    13e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13e8:	e6ef3073 	uxtb	r3, r3
    13ec:	e1a01003 	mov	r1, r3
    13f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f4:	ebffff27 	bl	1098 <putc>
    13f8:	e3a03000 	mov	r3, #0
    13fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1400:	e51b3010 	ldr	r3, [fp, #-16]
    1404:	e2833001 	add	r3, r3, #1
    1408:	e50b3010 	str	r3, [fp, #-16]
    140c:	e59b2004 	ldr	r2, [fp, #4]
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e0823003 	add	r3, r2, r3
    1418:	e5d33000 	ldrb	r3, [r3]
    141c:	e3530000 	cmp	r3, #0
    1420:	1affff84 	bne	1238 <printf+0x30>
    1424:	e1a00000 	nop			@ (mov r0, r0)
    1428:	e1a00000 	nop			@ (mov r0, r0)
    142c:	e24bd004 	sub	sp, fp, #4
    1430:	e8bd4800 	pop	{fp, lr}
    1434:	e28dd00c 	add	sp, sp, #12
    1438:	e12fff1e 	bx	lr
    143c:	0000191c 	.word	0x0000191c

00001440 <free>:
    1440:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1444:	e28db000 	add	fp, sp, #0
    1448:	e24dd014 	sub	sp, sp, #20
    144c:	e50b0010 	str	r0, [fp, #-16]
    1450:	e51b3010 	ldr	r3, [fp, #-16]
    1454:	e2433008 	sub	r3, r3, #8
    1458:	e50b300c 	str	r3, [fp, #-12]
    145c:	e59f3154 	ldr	r3, [pc, #340]	@ 15b8 <free+0x178>
    1460:	e5933000 	ldr	r3, [r3]
    1464:	e50b3008 	str	r3, [fp, #-8]
    1468:	ea000010 	b	14b0 <free+0x70>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e51b2008 	ldr	r2, [fp, #-8]
    1478:	e1520003 	cmp	r2, r3
    147c:	3a000008 	bcc	14a4 <free+0x64>
    1480:	e51b200c 	ldr	r2, [fp, #-12]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e1520003 	cmp	r2, r3
    148c:	8a000010 	bhi	14d4 <free+0x94>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5933000 	ldr	r3, [r3]
    1498:	e51b200c 	ldr	r2, [fp, #-12]
    149c:	e1520003 	cmp	r2, r3
    14a0:	3a00000b 	bcc	14d4 <free+0x94>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e50b3008 	str	r3, [fp, #-8]
    14b0:	e51b200c 	ldr	r2, [fp, #-12]
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	9affffea 	bls	146c <free+0x2c>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5933000 	ldr	r3, [r3]
    14c8:	e51b200c 	ldr	r2, [fp, #-12]
    14cc:	e1520003 	cmp	r2, r3
    14d0:	2affffe5 	bcs	146c <free+0x2c>
    14d4:	e51b300c 	ldr	r3, [fp, #-12]
    14d8:	e5933004 	ldr	r3, [r3, #4]
    14dc:	e1a03183 	lsl	r3, r3, #3
    14e0:	e51b200c 	ldr	r2, [fp, #-12]
    14e4:	e0822003 	add	r2, r2, r3
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e1520003 	cmp	r2, r3
    14f4:	1a00000d 	bne	1530 <free+0xf0>
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e5932004 	ldr	r2, [r3, #4]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e5933004 	ldr	r3, [r3, #4]
    150c:	e0822003 	add	r2, r2, r3
    1510:	e51b300c 	ldr	r3, [fp, #-12]
    1514:	e5832004 	str	r2, [r3, #4]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5933000 	ldr	r3, [r3]
    1520:	e5932000 	ldr	r2, [r3]
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e5832000 	str	r2, [r3]
    152c:	ea000003 	b	1540 <free+0x100>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5932000 	ldr	r2, [r3]
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5832000 	str	r2, [r3]
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5933004 	ldr	r3, [r3, #4]
    1548:	e1a03183 	lsl	r3, r3, #3
    154c:	e51b2008 	ldr	r2, [fp, #-8]
    1550:	e0823003 	add	r3, r2, r3
    1554:	e51b200c 	ldr	r2, [fp, #-12]
    1558:	e1520003 	cmp	r2, r3
    155c:	1a00000b 	bne	1590 <free+0x150>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5932004 	ldr	r2, [r3, #4]
    1568:	e51b300c 	ldr	r3, [fp, #-12]
    156c:	e5933004 	ldr	r3, [r3, #4]
    1570:	e0822003 	add	r2, r2, r3
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e5832004 	str	r2, [r3, #4]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5932000 	ldr	r2, [r3]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5832000 	str	r2, [r3]
    158c:	ea000002 	b	159c <free+0x15c>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e51b200c 	ldr	r2, [fp, #-12]
    1598:	e5832000 	str	r2, [r3]
    159c:	e59f2014 	ldr	r2, [pc, #20]	@ 15b8 <free+0x178>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5823000 	str	r3, [r2]
    15a8:	e1a00000 	nop			@ (mov r0, r0)
    15ac:	e28bd000 	add	sp, fp, #0
    15b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15b4:	e12fff1e 	bx	lr
    15b8:	00001948 	.word	0x00001948

000015bc <morecore>:
    15bc:	e92d4800 	push	{fp, lr}
    15c0:	e28db004 	add	fp, sp, #4
    15c4:	e24dd010 	sub	sp, sp, #16
    15c8:	e50b0010 	str	r0, [fp, #-16]
    15cc:	e51b3010 	ldr	r3, [fp, #-16]
    15d0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15d4:	2a000001 	bcs	15e0 <morecore+0x24>
    15d8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15dc:	e50b3010 	str	r3, [fp, #-16]
    15e0:	e51b3010 	ldr	r3, [fp, #-16]
    15e4:	e1a03183 	lsl	r3, r3, #3
    15e8:	e1a00003 	mov	r0, r3
    15ec:	ebfffdfc 	bl	de4 <sbrk>
    15f0:	e50b0008 	str	r0, [fp, #-8]
    15f4:	e51b3008 	ldr	r3, [fp, #-8]
    15f8:	e3730001 	cmn	r3, #1
    15fc:	1a000001 	bne	1608 <morecore+0x4c>
    1600:	e3a03000 	mov	r3, #0
    1604:	ea00000a 	b	1634 <morecore+0x78>
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e50b300c 	str	r3, [fp, #-12]
    1610:	e51b300c 	ldr	r3, [fp, #-12]
    1614:	e51b2010 	ldr	r2, [fp, #-16]
    1618:	e5832004 	str	r2, [r3, #4]
    161c:	e51b300c 	ldr	r3, [fp, #-12]
    1620:	e2833008 	add	r3, r3, #8
    1624:	e1a00003 	mov	r0, r3
    1628:	ebffff84 	bl	1440 <free>
    162c:	e59f300c 	ldr	r3, [pc, #12]	@ 1640 <morecore+0x84>
    1630:	e5933000 	ldr	r3, [r3]
    1634:	e1a00003 	mov	r0, r3
    1638:	e24bd004 	sub	sp, fp, #4
    163c:	e8bd8800 	pop	{fp, pc}
    1640:	00001948 	.word	0x00001948

00001644 <malloc>:
    1644:	e92d4800 	push	{fp, lr}
    1648:	e28db004 	add	fp, sp, #4
    164c:	e24dd018 	sub	sp, sp, #24
    1650:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1654:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1658:	e2833007 	add	r3, r3, #7
    165c:	e1a031a3 	lsr	r3, r3, #3
    1660:	e2833001 	add	r3, r3, #1
    1664:	e50b3010 	str	r3, [fp, #-16]
    1668:	e59f3134 	ldr	r3, [pc, #308]	@ 17a4 <malloc+0x160>
    166c:	e5933000 	ldr	r3, [r3]
    1670:	e50b300c 	str	r3, [fp, #-12]
    1674:	e51b300c 	ldr	r3, [fp, #-12]
    1678:	e3530000 	cmp	r3, #0
    167c:	1a00000b 	bne	16b0 <malloc+0x6c>
    1680:	e59f3120 	ldr	r3, [pc, #288]	@ 17a8 <malloc+0x164>
    1684:	e50b300c 	str	r3, [fp, #-12]
    1688:	e59f2114 	ldr	r2, [pc, #276]	@ 17a4 <malloc+0x160>
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e5823000 	str	r3, [r2]
    1694:	e59f3108 	ldr	r3, [pc, #264]	@ 17a4 <malloc+0x160>
    1698:	e5933000 	ldr	r3, [r3]
    169c:	e59f2104 	ldr	r2, [pc, #260]	@ 17a8 <malloc+0x164>
    16a0:	e5823000 	str	r3, [r2]
    16a4:	e59f30fc 	ldr	r3, [pc, #252]	@ 17a8 <malloc+0x164>
    16a8:	e3a02000 	mov	r2, #0
    16ac:	e5832004 	str	r2, [r3, #4]
    16b0:	e51b300c 	ldr	r3, [fp, #-12]
    16b4:	e5933000 	ldr	r3, [r3]
    16b8:	e50b3008 	str	r3, [fp, #-8]
    16bc:	e51b3008 	ldr	r3, [fp, #-8]
    16c0:	e5933004 	ldr	r3, [r3, #4]
    16c4:	e51b2010 	ldr	r2, [fp, #-16]
    16c8:	e1520003 	cmp	r2, r3
    16cc:	8a00001e 	bhi	174c <malloc+0x108>
    16d0:	e51b3008 	ldr	r3, [fp, #-8]
    16d4:	e5933004 	ldr	r3, [r3, #4]
    16d8:	e51b2010 	ldr	r2, [fp, #-16]
    16dc:	e1520003 	cmp	r2, r3
    16e0:	1a000004 	bne	16f8 <malloc+0xb4>
    16e4:	e51b3008 	ldr	r3, [fp, #-8]
    16e8:	e5932000 	ldr	r2, [r3]
    16ec:	e51b300c 	ldr	r3, [fp, #-12]
    16f0:	e5832000 	str	r2, [r3]
    16f4:	ea00000e 	b	1734 <malloc+0xf0>
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e5932004 	ldr	r2, [r3, #4]
    1700:	e51b3010 	ldr	r3, [fp, #-16]
    1704:	e0422003 	sub	r2, r2, r3
    1708:	e51b3008 	ldr	r3, [fp, #-8]
    170c:	e5832004 	str	r2, [r3, #4]
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5933004 	ldr	r3, [r3, #4]
    1718:	e1a03183 	lsl	r3, r3, #3
    171c:	e51b2008 	ldr	r2, [fp, #-8]
    1720:	e0823003 	add	r3, r2, r3
    1724:	e50b3008 	str	r3, [fp, #-8]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e51b2010 	ldr	r2, [fp, #-16]
    1730:	e5832004 	str	r2, [r3, #4]
    1734:	e59f2068 	ldr	r2, [pc, #104]	@ 17a4 <malloc+0x160>
    1738:	e51b300c 	ldr	r3, [fp, #-12]
    173c:	e5823000 	str	r3, [r2]
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e2833008 	add	r3, r3, #8
    1748:	ea000012 	b	1798 <malloc+0x154>
    174c:	e59f3050 	ldr	r3, [pc, #80]	@ 17a4 <malloc+0x160>
    1750:	e5933000 	ldr	r3, [r3]
    1754:	e51b2008 	ldr	r2, [fp, #-8]
    1758:	e1520003 	cmp	r2, r3
    175c:	1a000007 	bne	1780 <malloc+0x13c>
    1760:	e51b0010 	ldr	r0, [fp, #-16]
    1764:	ebffff94 	bl	15bc <morecore>
    1768:	e50b0008 	str	r0, [fp, #-8]
    176c:	e51b3008 	ldr	r3, [fp, #-8]
    1770:	e3530000 	cmp	r3, #0
    1774:	1a000001 	bne	1780 <malloc+0x13c>
    1778:	e3a03000 	mov	r3, #0
    177c:	ea000005 	b	1798 <malloc+0x154>
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e50b300c 	str	r3, [fp, #-12]
    1788:	e51b3008 	ldr	r3, [fp, #-8]
    178c:	e5933000 	ldr	r3, [r3]
    1790:	e50b3008 	str	r3, [fp, #-8]
    1794:	eaffffc8 	b	16bc <malloc+0x78>
    1798:	e1a00003 	mov	r0, r3
    179c:	e24bd004 	sub	sp, fp, #4
    17a0:	e8bd8800 	pop	{fp, pc}
    17a4:	00001948 	.word	0x00001948
    17a8:	00001940 	.word	0x00001940

000017ac <__udivsi3>:
    17ac:	e2512001 	subs	r2, r1, #1
    17b0:	012fff1e 	bxeq	lr
    17b4:	3a000036 	bcc	1894 <__udivsi3+0xe8>
    17b8:	e1500001 	cmp	r0, r1
    17bc:	9a000022 	bls	184c <__udivsi3+0xa0>
    17c0:	e1110002 	tst	r1, r2
    17c4:	0a000023 	beq	1858 <__udivsi3+0xac>
    17c8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17cc:	01a01181 	lsleq	r1, r1, #3
    17d0:	03a03008 	moveq	r3, #8
    17d4:	13a03001 	movne	r3, #1
    17d8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17dc:	31510000 	cmpcc	r1, r0
    17e0:	31a01201 	lslcc	r1, r1, #4
    17e4:	31a03203 	lslcc	r3, r3, #4
    17e8:	3afffffa 	bcc	17d8 <__udivsi3+0x2c>
    17ec:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17f0:	31510000 	cmpcc	r1, r0
    17f4:	31a01081 	lslcc	r1, r1, #1
    17f8:	31a03083 	lslcc	r3, r3, #1
    17fc:	3afffffa 	bcc	17ec <__udivsi3+0x40>
    1800:	e3a02000 	mov	r2, #0
    1804:	e1500001 	cmp	r0, r1
    1808:	20400001 	subcs	r0, r0, r1
    180c:	21822003 	orrcs	r2, r2, r3
    1810:	e15000a1 	cmp	r0, r1, lsr #1
    1814:	204000a1 	subcs	r0, r0, r1, lsr #1
    1818:	218220a3 	orrcs	r2, r2, r3, lsr #1
    181c:	e1500121 	cmp	r0, r1, lsr #2
    1820:	20400121 	subcs	r0, r0, r1, lsr #2
    1824:	21822123 	orrcs	r2, r2, r3, lsr #2
    1828:	e15001a1 	cmp	r0, r1, lsr #3
    182c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1830:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1834:	e3500000 	cmp	r0, #0
    1838:	11b03223 	lsrsne	r3, r3, #4
    183c:	11a01221 	lsrne	r1, r1, #4
    1840:	1affffef 	bne	1804 <__udivsi3+0x58>
    1844:	e1a00002 	mov	r0, r2
    1848:	e12fff1e 	bx	lr
    184c:	03a00001 	moveq	r0, #1
    1850:	13a00000 	movne	r0, #0
    1854:	e12fff1e 	bx	lr
    1858:	e3510801 	cmp	r1, #65536	@ 0x10000
    185c:	21a01821 	lsrcs	r1, r1, #16
    1860:	23a02010 	movcs	r2, #16
    1864:	33a02000 	movcc	r2, #0
    1868:	e3510c01 	cmp	r1, #256	@ 0x100
    186c:	21a01421 	lsrcs	r1, r1, #8
    1870:	22822008 	addcs	r2, r2, #8
    1874:	e3510010 	cmp	r1, #16
    1878:	21a01221 	lsrcs	r1, r1, #4
    187c:	22822004 	addcs	r2, r2, #4
    1880:	e3510004 	cmp	r1, #4
    1884:	82822003 	addhi	r2, r2, #3
    1888:	908220a1 	addls	r2, r2, r1, lsr #1
    188c:	e1a00230 	lsr	r0, r0, r2
    1890:	e12fff1e 	bx	lr
    1894:	e3500000 	cmp	r0, #0
    1898:	13e00000 	mvnne	r0, #0
    189c:	ea000007 	b	18c0 <__aeabi_idiv0>

000018a0 <__aeabi_uidivmod>:
    18a0:	e3510000 	cmp	r1, #0
    18a4:	0afffffa 	beq	1894 <__udivsi3+0xe8>
    18a8:	e92d4003 	push	{r0, r1, lr}
    18ac:	ebffffbe 	bl	17ac <__udivsi3>
    18b0:	e8bd4006 	pop	{r1, r2, lr}
    18b4:	e0030092 	mul	r3, r2, r0
    18b8:	e0411003 	sub	r1, r1, r3
    18bc:	e12fff1e 	bx	lr

000018c0 <__aeabi_idiv0>:
    18c0:	e12fff1e 	bx	lr
