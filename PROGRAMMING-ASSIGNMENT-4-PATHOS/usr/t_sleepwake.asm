
_t_sleepwake:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb0003d9 	bl	f78 <getChannel>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	eb0002ae 	bl	ad4 <fork>
      18:	e50b000c 	str	r0, [fp, #-12]
      1c:	e51b300c 	ldr	r3, [fp, #-12]
      20:	e3530000 	cmp	r3, #0
      24:	1a000004 	bne	3c <main+0x3c>
      28:	e3a000c8 	mov	r0, #200	@ 0xc8
      2c:	eb000353 	bl	d80 <sleep>
      30:	e51b0008 	ldr	r0, [fp, #-8]
      34:	eb0003d8 	bl	f9c <sigChan>
      38:	eb0002ae 	bl	af8 <exit>
      3c:	e51b2008 	ldr	r2, [fp, #-8]
      40:	e59f1020 	ldr	r1, [pc, #32]	@ 68 <main+0x68>
      44:	e3a00001 	mov	r0, #1
      48:	eb000443 	bl	115c <printf>
      4c:	e51b0008 	ldr	r0, [fp, #-8]
      50:	eb0003bf 	bl	f54 <sleepChan>
      54:	e59f1010 	ldr	r1, [pc, #16]	@ 6c <main+0x6c>
      58:	e3a00001 	mov	r0, #1
      5c:	eb00043e 	bl	115c <printf>
      60:	eb0002ad 	bl	b1c <wait>
      64:	eb0002a3 	bl	af8 <exit>
      68:	00001818 	.word	0x00001818
      6c:	00001838 	.word	0x00001838

00000070 <pg_pte>:
      70:	e92d4800 	push	{fp, lr}
      74:	e28db004 	add	fp, sp, #4
      78:	e24dd008 	sub	sp, sp, #8
      7c:	e50b0008 	str	r0, [fp, #-8]
      80:	e51b1008 	ldr	r1, [fp, #-8]
      84:	e3a0001a 	mov	r0, #26
      88:	eb0003d5 	bl	fe4 <syscall>
      8c:	e1a03000 	mov	r3, r0
      90:	e1a00003 	mov	r0, r3
      94:	e24bd004 	sub	sp, fp, #4
      98:	e8bd8800 	pop	{fp, pc}

0000009c <pg_pa>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd008 	sub	sp, sp, #8
      a8:	e50b0008 	str	r0, [fp, #-8]
      ac:	e51b1008 	ldr	r1, [fp, #-8]
      b0:	e3a0001b 	mov	r0, #27
      b4:	eb0003ca 	bl	fe4 <syscall>
      b8:	e1a03000 	mov	r3, r0
      bc:	e1a00003 	mov	r0, r3
      c0:	e24bd004 	sub	sp, fp, #4
      c4:	e8bd8800 	pop	{fp, pc}

000000c8 <pg_flags>:
      c8:	e92d4800 	push	{fp, lr}
      cc:	e28db004 	add	fp, sp, #4
      d0:	e24dd008 	sub	sp, sp, #8
      d4:	e50b0008 	str	r0, [fp, #-8]
      d8:	e51b1008 	ldr	r1, [fp, #-8]
      dc:	e3a0001c 	mov	r0, #28
      e0:	eb0003bf 	bl	fe4 <syscall>
      e4:	e1a03000 	mov	r3, r0
      e8:	e1a00003 	mov	r0, r3
      ec:	e24bd004 	sub	sp, fp, #4
      f0:	e8bd8800 	pop	{fp, pc}

000000f4 <kpt>:
      f4:	e92d4800 	push	{fp, lr}
      f8:	e28db004 	add	fp, sp, #4
      fc:	e3a0001d 	mov	r0, #29
     100:	eb0003b7 	bl	fe4 <syscall>
     104:	e1a03000 	mov	r3, r0
     108:	e1a00003 	mov	r0, r3
     10c:	e8bd8800 	pop	{fp, pc}

00000110 <ugetpid>:
     110:	e92d4800 	push	{fp, lr}
     114:	e28db004 	add	fp, sp, #4
     118:	e3a0001e 	mov	r0, #30
     11c:	eb0003b0 	bl	fe4 <syscall>
     120:	e1a03000 	mov	r3, r0
     124:	e1a00003 	mov	r0, r3
     128:	e8bd8800 	pop	{fp, pc}

0000012c <strcpy>:
     12c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     130:	e28db000 	add	fp, sp, #0
     134:	e24dd014 	sub	sp, sp, #20
     138:	e50b0010 	str	r0, [fp, #-16]
     13c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     140:	e51b3010 	ldr	r3, [fp, #-16]
     144:	e50b3008 	str	r3, [fp, #-8]
     148:	e1a00000 	nop			@ (mov r0, r0)
     14c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     150:	e2823001 	add	r3, r2, #1
     154:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e2831001 	add	r1, r3, #1
     160:	e50b1010 	str	r1, [fp, #-16]
     164:	e5d22000 	ldrb	r2, [r2]
     168:	e5c32000 	strb	r2, [r3]
     16c:	e5d33000 	ldrb	r3, [r3]
     170:	e3530000 	cmp	r3, #0
     174:	1afffff4 	bne	14c <strcpy+0x20>
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e1a00003 	mov	r0, r3
     180:	e28bd000 	add	sp, fp, #0
     184:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     188:	e12fff1e 	bx	lr

0000018c <strcmp>:
     18c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     190:	e28db000 	add	fp, sp, #0
     194:	e24dd00c 	sub	sp, sp, #12
     198:	e50b0008 	str	r0, [fp, #-8]
     19c:	e50b100c 	str	r1, [fp, #-12]
     1a0:	ea000005 	b	1bc <strcmp+0x30>
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e2833001 	add	r3, r3, #1
     1ac:	e50b3008 	str	r3, [fp, #-8]
     1b0:	e51b300c 	ldr	r3, [fp, #-12]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b300c 	str	r3, [fp, #-12]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	0a000005 	beq	1e4 <strcmp+0x58>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e5d32000 	ldrb	r2, [r3]
     1d4:	e51b300c 	ldr	r3, [fp, #-12]
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e1520003 	cmp	r2, r3
     1e0:	0affffef 	beq	1a4 <strcmp+0x18>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e5d33000 	ldrb	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e51b300c 	ldr	r3, [fp, #-12]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e0423003 	sub	r3, r2, r3
     1fc:	e1a00003 	mov	r0, r3
     200:	e28bd000 	add	sp, fp, #0
     204:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     208:	e12fff1e 	bx	lr

0000020c <strlen>:
     20c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     210:	e28db000 	add	fp, sp, #0
     214:	e24dd014 	sub	sp, sp, #20
     218:	e50b0010 	str	r0, [fp, #-16]
     21c:	e3a03000 	mov	r3, #0
     220:	e50b3008 	str	r3, [fp, #-8]
     224:	ea000002 	b	234 <strlen+0x28>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e2833001 	add	r3, r3, #1
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e51b2010 	ldr	r2, [fp, #-16]
     23c:	e0823003 	add	r3, r2, r3
     240:	e5d33000 	ldrb	r3, [r3]
     244:	e3530000 	cmp	r3, #0
     248:	1afffff6 	bne	228 <strlen+0x1c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e1a00003 	mov	r0, r3
     254:	e28bd000 	add	sp, fp, #0
     258:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     25c:	e12fff1e 	bx	lr

00000260 <memset>:
     260:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     264:	e28db000 	add	fp, sp, #0
     268:	e24dd024 	sub	sp, sp, #36	@ 0x24
     26c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     270:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     274:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     278:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     284:	e54b300d 	strb	r3, [fp, #-13]
     288:	e55b200d 	ldrb	r2, [fp, #-13]
     28c:	e1a03002 	mov	r3, r2
     290:	e1a03403 	lsl	r3, r3, #8
     294:	e0833002 	add	r3, r3, r2
     298:	e1a03803 	lsl	r3, r3, #16
     29c:	e1a02003 	mov	r2, r3
     2a0:	e55b300d 	ldrb	r3, [fp, #-13]
     2a4:	e1a03403 	lsl	r3, r3, #8
     2a8:	e1822003 	orr	r2, r2, r3
     2ac:	e55b300d 	ldrb	r3, [fp, #-13]
     2b0:	e1823003 	orr	r3, r2, r3
     2b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2b8:	ea000008 	b	2e0 <memset+0x80>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e55b200d 	ldrb	r2, [fp, #-13]
     2c4:	e5c32000 	strb	r2, [r3]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e2433001 	sub	r3, r3, #1
     2d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2833001 	add	r3, r3, #1
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e3530000 	cmp	r3, #0
     2e8:	0a000003 	beq	2fc <memset+0x9c>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2033003 	and	r3, r3, #3
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1affffef 	bne	2bc <memset+0x5c>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e50b300c 	str	r3, [fp, #-12]
     304:	ea000008 	b	32c <memset+0xcc>
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     310:	e5832000 	str	r2, [r3]
     314:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     318:	e2433004 	sub	r3, r3, #4
     31c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e2833004 	add	r3, r3, #4
     328:	e50b300c 	str	r3, [fp, #-12]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     330:	e3530003 	cmp	r3, #3
     334:	8afffff3 	bhi	308 <memset+0xa8>
     338:	e51b300c 	ldr	r3, [fp, #-12]
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	ea000008 	b	368 <memset+0x108>
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
     370:	1afffff3 	bne	344 <memset+0xe4>
     374:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     378:	e1a00003 	mov	r0, r3
     37c:	e28bd000 	add	sp, fp, #0
     380:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     384:	e12fff1e 	bx	lr

00000388 <strchr>:
     388:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     38c:	e28db000 	add	fp, sp, #0
     390:	e24dd00c 	sub	sp, sp, #12
     394:	e50b0008 	str	r0, [fp, #-8]
     398:	e1a03001 	mov	r3, r1
     39c:	e54b3009 	strb	r3, [fp, #-9]
     3a0:	ea000009 	b	3cc <strchr+0x44>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e5d33000 	ldrb	r3, [r3]
     3ac:	e55b2009 	ldrb	r2, [fp, #-9]
     3b0:	e1520003 	cmp	r2, r3
     3b4:	1a000001 	bne	3c0 <strchr+0x38>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	ea000007 	b	3e0 <strchr+0x58>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e5d33000 	ldrb	r3, [r3]
     3d4:	e3530000 	cmp	r3, #0
     3d8:	1afffff1 	bne	3a4 <strchr+0x1c>
     3dc:	e3a03000 	mov	r3, #0
     3e0:	e1a00003 	mov	r0, r3
     3e4:	e28bd000 	add	sp, fp, #0
     3e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3ec:	e12fff1e 	bx	lr

000003f0 <gets>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e24dd018 	sub	sp, sp, #24
     3fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     400:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     404:	e3a03000 	mov	r3, #0
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	ea000016 	b	46c <gets+0x7c>
     410:	e24b300d 	sub	r3, fp, #13
     414:	e3a02001 	mov	r2, #1
     418:	e1a01003 	mov	r1, r3
     41c:	e3a00000 	mov	r0, #0
     420:	eb0001cf 	bl	b64 <read>
     424:	e50b000c 	str	r0, [fp, #-12]
     428:	e51b300c 	ldr	r3, [fp, #-12]
     42c:	e3530000 	cmp	r3, #0
     430:	da000013 	ble	484 <gets+0x94>
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e2832001 	add	r2, r3, #1
     43c:	e50b2008 	str	r2, [fp, #-8]
     440:	e1a02003 	mov	r2, r3
     444:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     448:	e0833002 	add	r3, r3, r2
     44c:	e55b200d 	ldrb	r2, [fp, #-13]
     450:	e5c32000 	strb	r2, [r3]
     454:	e55b300d 	ldrb	r3, [fp, #-13]
     458:	e353000a 	cmp	r3, #10
     45c:	0a000009 	beq	488 <gets+0x98>
     460:	e55b300d 	ldrb	r3, [fp, #-13]
     464:	e353000d 	cmp	r3, #13
     468:	0a000006 	beq	488 <gets+0x98>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2833001 	add	r3, r3, #1
     474:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     478:	e1520003 	cmp	r2, r3
     47c:	caffffe3 	bgt	410 <gets+0x20>
     480:	ea000000 	b	488 <gets+0x98>
     484:	e1a00000 	nop			@ (mov r0, r0)
     488:	e51b3008 	ldr	r3, [fp, #-8]
     48c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     490:	e0823003 	add	r3, r2, r3
     494:	e3a02000 	mov	r2, #0
     498:	e5c32000 	strb	r2, [r3]
     49c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a0:	e1a00003 	mov	r0, r3
     4a4:	e24bd004 	sub	sp, fp, #4
     4a8:	e8bd8800 	pop	{fp, pc}

000004ac <stat>:
     4ac:	e92d4800 	push	{fp, lr}
     4b0:	e28db004 	add	fp, sp, #4
     4b4:	e24dd010 	sub	sp, sp, #16
     4b8:	e50b0010 	str	r0, [fp, #-16]
     4bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4c0:	e3a01000 	mov	r1, #0
     4c4:	e51b0010 	ldr	r0, [fp, #-16]
     4c8:	eb0001d2 	bl	c18 <open>
     4cc:	e50b0008 	str	r0, [fp, #-8]
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e3530000 	cmp	r3, #0
     4d8:	aa000001 	bge	4e4 <stat+0x38>
     4dc:	e3e03000 	mvn	r3, #0
     4e0:	ea000006 	b	500 <stat+0x54>
     4e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4e8:	e51b0008 	ldr	r0, [fp, #-8]
     4ec:	eb0001e4 	bl	c84 <fstat>
     4f0:	e50b000c 	str	r0, [fp, #-12]
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb0001ab 	bl	bac <close>
     4fc:	e51b300c 	ldr	r3, [fp, #-12]
     500:	e1a00003 	mov	r0, r3
     504:	e24bd004 	sub	sp, fp, #4
     508:	e8bd8800 	pop	{fp, pc}

0000050c <atoi>:
     50c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     510:	e28db000 	add	fp, sp, #0
     514:	e24dd014 	sub	sp, sp, #20
     518:	e50b0010 	str	r0, [fp, #-16]
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea00000c 	b	55c <atoi+0x50>
     528:	e51b2008 	ldr	r2, [fp, #-8]
     52c:	e1a03002 	mov	r3, r2
     530:	e1a03103 	lsl	r3, r3, #2
     534:	e0833002 	add	r3, r3, r2
     538:	e1a03083 	lsl	r3, r3, #1
     53c:	e1a01003 	mov	r1, r3
     540:	e51b3010 	ldr	r3, [fp, #-16]
     544:	e2832001 	add	r2, r3, #1
     548:	e50b2010 	str	r2, [fp, #-16]
     54c:	e5d33000 	ldrb	r3, [r3]
     550:	e0813003 	add	r3, r1, r3
     554:	e2433030 	sub	r3, r3, #48	@ 0x30
     558:	e50b3008 	str	r3, [fp, #-8]
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e5d33000 	ldrb	r3, [r3]
     564:	e353002f 	cmp	r3, #47	@ 0x2f
     568:	9a000003 	bls	57c <atoi+0x70>
     56c:	e51b3010 	ldr	r3, [fp, #-16]
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e3530039 	cmp	r3, #57	@ 0x39
     578:	9affffea 	bls	528 <atoi+0x1c>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memmove>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd01c 	sub	sp, sp, #28
     59c:	e50b0010 	str	r0, [fp, #-16]
     5a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5b4:	e50b300c 	str	r3, [fp, #-12]
     5b8:	ea000007 	b	5dc <memmove+0x4c>
     5bc:	e51b200c 	ldr	r2, [fp, #-12]
     5c0:	e2823001 	add	r3, r2, #1
     5c4:	e50b300c 	str	r3, [fp, #-12]
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e2831001 	add	r1, r3, #1
     5d0:	e50b1008 	str	r1, [fp, #-8]
     5d4:	e5d22000 	ldrb	r2, [r2]
     5d8:	e5c32000 	strb	r2, [r3]
     5dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5e0:	e2432001 	sub	r2, r3, #1
     5e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5e8:	e3530000 	cmp	r3, #0
     5ec:	cafffff2 	bgt	5bc <memmove+0x2c>
     5f0:	e51b3010 	ldr	r3, [fp, #-16]
     5f4:	e1a00003 	mov	r0, r3
     5f8:	e28bd000 	add	sp, fp, #0
     5fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     600:	e12fff1e 	bx	lr

00000604 <strncmp>:
     604:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     608:	e28db000 	add	fp, sp, #0
     60c:	e24dd014 	sub	sp, sp, #20
     610:	e50b0008 	str	r0, [fp, #-8]
     614:	e50b100c 	str	r1, [fp, #-12]
     618:	e50b2010 	str	r2, [fp, #-16]
     61c:	ea000008 	b	644 <strncmp+0x40>
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e2833001 	add	r3, r3, #1
     628:	e50b3008 	str	r3, [fp, #-8]
     62c:	e51b300c 	ldr	r3, [fp, #-12]
     630:	e2833001 	add	r3, r3, #1
     634:	e50b300c 	str	r3, [fp, #-12]
     638:	e51b3010 	ldr	r3, [fp, #-16]
     63c:	e2433001 	sub	r3, r3, #1
     640:	e50b3010 	str	r3, [fp, #-16]
     644:	e51b3010 	ldr	r3, [fp, #-16]
     648:	e3530000 	cmp	r3, #0
     64c:	da00000d 	ble	688 <strncmp+0x84>
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e5d33000 	ldrb	r3, [r3]
     658:	e3530000 	cmp	r3, #0
     65c:	0a000009 	beq	688 <strncmp+0x84>
     660:	e51b300c 	ldr	r3, [fp, #-12]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e3530000 	cmp	r3, #0
     66c:	0a000005 	beq	688 <strncmp+0x84>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e5d32000 	ldrb	r2, [r3]
     678:	e51b300c 	ldr	r3, [fp, #-12]
     67c:	e5d33000 	ldrb	r3, [r3]
     680:	e1520003 	cmp	r2, r3
     684:	0affffe5 	beq	620 <strncmp+0x1c>
     688:	e51b3010 	ldr	r3, [fp, #-16]
     68c:	e3530000 	cmp	r3, #0
     690:	1a000001 	bne	69c <strncmp+0x98>
     694:	e3a03000 	mov	r3, #0
     698:	ea000005 	b	6b4 <strncmp+0xb0>
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e5d33000 	ldrb	r3, [r3]
     6a4:	e1a02003 	mov	r2, r3
     6a8:	e51b300c 	ldr	r3, [fp, #-12]
     6ac:	e5d33000 	ldrb	r3, [r3]
     6b0:	e0423003 	sub	r3, r2, r3
     6b4:	e1a00003 	mov	r0, r3
     6b8:	e28bd000 	add	sp, fp, #0
     6bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <strncpy>:
     6c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c8:	e28db000 	add	fp, sp, #0
     6cc:	e24dd01c 	sub	sp, sp, #28
     6d0:	e50b0010 	str	r0, [fp, #-16]
     6d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6dc:	e51b3010 	ldr	r3, [fp, #-16]
     6e0:	e50b3008 	str	r3, [fp, #-8]
     6e4:	ea00000a 	b	714 <strncpy+0x50>
     6e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6ec:	e2823001 	add	r3, r2, #1
     6f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e2831001 	add	r1, r3, #1
     6fc:	e50b1008 	str	r1, [fp, #-8]
     700:	e5d22000 	ldrb	r2, [r2]
     704:	e5c32000 	strb	r2, [r3]
     708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     70c:	e2433001 	sub	r3, r3, #1
     710:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e3530000 	cmp	r3, #0
     71c:	da00000c 	ble	754 <strncpy+0x90>
     720:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     724:	e5d33000 	ldrb	r3, [r3]
     728:	e3530000 	cmp	r3, #0
     72c:	1affffed 	bne	6e8 <strncpy+0x24>
     730:	ea000007 	b	754 <strncpy+0x90>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e2832001 	add	r2, r3, #1
     73c:	e50b2008 	str	r2, [fp, #-8]
     740:	e3a02000 	mov	r2, #0
     744:	e5c32000 	strb	r2, [r3]
     748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     74c:	e2433001 	sub	r3, r3, #1
     750:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     754:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     758:	e3530000 	cmp	r3, #0
     75c:	cafffff4 	bgt	734 <strncpy+0x70>
     760:	e51b3010 	ldr	r3, [fp, #-16]
     764:	e1a00003 	mov	r0, r3
     768:	e28bd000 	add	sp, fp, #0
     76c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <xchg>:
     774:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     778:	e28db000 	add	fp, sp, #0
     77c:	e24dd014 	sub	sp, sp, #20
     780:	e50b0010 	str	r0, [fp, #-16]
     784:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     788:	e51b2010 	ldr	r2, [fp, #-16]
     78c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     790:	e1023091 	swp	r3, r1, [r2]
     794:	e50b3008 	str	r3, [fp, #-8]
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e1a00003 	mov	r0, r3
     7a0:	e28bd000 	add	sp, fp, #0
     7a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <initiateLock>:
     7ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7b0:	e28db000 	add	fp, sp, #0
     7b4:	e24dd00c 	sub	sp, sp, #12
     7b8:	e50b0008 	str	r0, [fp, #-8]
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e3a02000 	mov	r2, #0
     7c4:	e5832000 	str	r2, [r3]
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e3a02001 	mov	r2, #1
     7d0:	e5832004 	str	r2, [r3, #4]
     7d4:	e1a00000 	nop			@ (mov r0, r0)
     7d8:	e28bd000 	add	sp, fp, #0
     7dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <acquireLock>:
     7e4:	e92d4800 	push	{fp, lr}
     7e8:	e28db004 	add	fp, sp, #4
     7ec:	e24dd008 	sub	sp, sp, #8
     7f0:	e50b0008 	str	r0, [fp, #-8]
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e5933004 	ldr	r3, [r3, #4]
     7fc:	e3530000 	cmp	r3, #0
     800:	0a000008 	beq	828 <acquireLock+0x44>
     804:	e1a00000 	nop			@ (mov r0, r0)
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e3a01001 	mov	r1, #1
     810:	e1a00003 	mov	r0, r3
     814:	ebffffd6 	bl	774 <xchg>
     818:	e1a03000 	mov	r3, r0
     81c:	e3530000 	cmp	r3, #0
     820:	1afffff8 	bne	808 <acquireLock+0x24>
     824:	ea000000 	b	82c <acquireLock+0x48>
     828:	e1a00000 	nop			@ (mov r0, r0)
     82c:	e24bd004 	sub	sp, fp, #4
     830:	e8bd8800 	pop	{fp, pc}

00000834 <releaseLock>:
     834:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     838:	e28db000 	add	fp, sp, #0
     83c:	e24dd00c 	sub	sp, sp, #12
     840:	e50b0008 	str	r0, [fp, #-8]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e5933004 	ldr	r3, [r3, #4]
     84c:	e3530000 	cmp	r3, #0
     850:	0a000006 	beq	870 <releaseLock+0x3c>
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e5933000 	ldr	r3, [r3]
     85c:	e3530001 	cmp	r3, #1
     860:	1a000002 	bne	870 <releaseLock+0x3c>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e3a02000 	mov	r2, #0
     86c:	e5832000 	str	r2, [r3]
     870:	e1a00000 	nop			@ (mov r0, r0)
     874:	e28bd000 	add	sp, fp, #0
     878:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <initiateCondVar>:
     880:	e92d4800 	push	{fp, lr}
     884:	e28db004 	add	fp, sp, #4
     888:	e24dd008 	sub	sp, sp, #8
     88c:	e50b0008 	str	r0, [fp, #-8]
     890:	eb0001b8 	bl	f78 <getChannel>
     894:	e1a02000 	mov	r2, r0
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5832000 	str	r2, [r3]
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e3a02001 	mov	r2, #1
     8a8:	e5832004 	str	r2, [r3, #4]
     8ac:	e1a00000 	nop			@ (mov r0, r0)
     8b0:	e24bd004 	sub	sp, fp, #4
     8b4:	e8bd8800 	pop	{fp, pc}

000008b8 <condWait>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd008 	sub	sp, sp, #8
     8c4:	e50b0008 	str	r0, [fp, #-8]
     8c8:	e50b100c 	str	r1, [fp, #-12]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933004 	ldr	r3, [r3, #4]
     8d4:	e3530000 	cmp	r3, #0
     8d8:	0a00000c 	beq	910 <condWait+0x58>
     8dc:	e51b300c 	ldr	r3, [fp, #-12]
     8e0:	e5933004 	ldr	r3, [r3, #4]
     8e4:	e3530000 	cmp	r3, #0
     8e8:	0a000008 	beq	910 <condWait+0x58>
     8ec:	e51b000c 	ldr	r0, [fp, #-12]
     8f0:	ebffffcf 	bl	834 <releaseLock>
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e5933000 	ldr	r3, [r3]
     8fc:	e1a00003 	mov	r0, r3
     900:	eb000193 	bl	f54 <sleepChan>
     904:	e51b000c 	ldr	r0, [fp, #-12]
     908:	ebffffb5 	bl	7e4 <acquireLock>
     90c:	ea000000 	b	914 <condWait+0x5c>
     910:	e1a00000 	nop			@ (mov r0, r0)
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}

0000091c <broadcast>:
     91c:	e92d4800 	push	{fp, lr}
     920:	e28db004 	add	fp, sp, #4
     924:	e24dd008 	sub	sp, sp, #8
     928:	e50b0008 	str	r0, [fp, #-8]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5933004 	ldr	r3, [r3, #4]
     934:	e3530000 	cmp	r3, #0
     938:	0a000004 	beq	950 <broadcast+0x34>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5933000 	ldr	r3, [r3]
     944:	e1a00003 	mov	r0, r3
     948:	eb000193 	bl	f9c <sigChan>
     94c:	ea000000 	b	954 <broadcast+0x38>
     950:	e1a00000 	nop			@ (mov r0, r0)
     954:	e24bd004 	sub	sp, fp, #4
     958:	e8bd8800 	pop	{fp, pc}

0000095c <signal>:
     95c:	e92d4800 	push	{fp, lr}
     960:	e28db004 	add	fp, sp, #4
     964:	e24dd008 	sub	sp, sp, #8
     968:	e50b0008 	str	r0, [fp, #-8]
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e5933004 	ldr	r3, [r3, #4]
     974:	e3530000 	cmp	r3, #0
     978:	0a000004 	beq	990 <signal+0x34>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e5933000 	ldr	r3, [r3]
     984:	e1a00003 	mov	r0, r3
     988:	eb00018c 	bl	fc0 <sigOneChan>
     98c:	ea000000 	b	994 <signal+0x38>
     990:	e1a00000 	nop			@ (mov r0, r0)
     994:	e24bd004 	sub	sp, fp, #4
     998:	e8bd8800 	pop	{fp, pc}

0000099c <semInit>:
     99c:	e92d4800 	push	{fp, lr}
     9a0:	e28db004 	add	fp, sp, #4
     9a4:	e24dd008 	sub	sp, sp, #8
     9a8:	e50b0008 	str	r0, [fp, #-8]
     9ac:	e50b100c 	str	r1, [fp, #-12]
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2833004 	add	r3, r3, #4
     9b8:	e1a00003 	mov	r0, r3
     9bc:	ebffff7a 	bl	7ac <initiateLock>
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e283300c 	add	r3, r3, #12
     9c8:	e1a00003 	mov	r0, r3
     9cc:	ebffffab 	bl	880 <initiateCondVar>
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e51b200c 	ldr	r2, [fp, #-12]
     9d8:	e5832000 	str	r2, [r3]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e3a02001 	mov	r2, #1
     9e4:	e5832014 	str	r2, [r3, #20]
     9e8:	e1a00000 	nop			@ (mov r0, r0)
     9ec:	e24bd004 	sub	sp, fp, #4
     9f0:	e8bd8800 	pop	{fp, pc}

000009f4 <semUp>:
     9f4:	e92d4800 	push	{fp, lr}
     9f8:	e28db004 	add	fp, sp, #4
     9fc:	e24dd008 	sub	sp, sp, #8
     a00:	e50b0008 	str	r0, [fp, #-8]
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e2833004 	add	r3, r3, #4
     a0c:	e1a00003 	mov	r0, r3
     a10:	ebffff73 	bl	7e4 <acquireLock>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e5933000 	ldr	r3, [r3]
     a1c:	e2832001 	add	r2, r3, #1
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e5832000 	str	r2, [r3]
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e283300c 	add	r3, r3, #12
     a30:	e1a00003 	mov	r0, r3
     a34:	ebffffc8 	bl	95c <signal>
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2833004 	add	r3, r3, #4
     a40:	e1a00003 	mov	r0, r3
     a44:	ebffff7a 	bl	834 <releaseLock>
     a48:	e1a00000 	nop			@ (mov r0, r0)
     a4c:	e24bd004 	sub	sp, fp, #4
     a50:	e8bd8800 	pop	{fp, pc}

00000a54 <semDown>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd008 	sub	sp, sp, #8
     a60:	e50b0008 	str	r0, [fp, #-8]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e2833004 	add	r3, r3, #4
     a6c:	e1a00003 	mov	r0, r3
     a70:	ebffff5b 	bl	7e4 <acquireLock>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e5933000 	ldr	r3, [r3]
     a7c:	e2432001 	sub	r2, r3, #1
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e5832000 	str	r2, [r3]
     a88:	ea000006 	b	aa8 <semDown+0x54>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e283200c 	add	r2, r3, #12
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e2833004 	add	r3, r3, #4
     a9c:	e1a01003 	mov	r1, r3
     aa0:	e1a00002 	mov	r0, r2
     aa4:	ebffff83 	bl	8b8 <condWait>
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e5933000 	ldr	r3, [r3]
     ab0:	e3530000 	cmp	r3, #0
     ab4:	bafffff4 	blt	a8c <semDown+0x38>
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e2833004 	add	r3, r3, #4
     ac0:	e1a00003 	mov	r0, r3
     ac4:	ebffff5a 	bl	834 <releaseLock>
     ac8:	e1a00000 	nop			@ (mov r0, r0)
     acc:	e24bd004 	sub	sp, fp, #4
     ad0:	e8bd8800 	pop	{fp, pc}

00000ad4 <fork>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00001 	mov	r0, #1
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <exit>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00002 	mov	r0, #2
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <wait>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00003 	mov	r0, #3
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <pipe>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00004 	mov	r0, #4
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <read>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00005 	mov	r0, #5
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <write>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00010 	mov	r0, #16
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <close>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00015 	mov	r0, #21
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <kill>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00006 	mov	r0, #6
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <exec>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00007 	mov	r0, #7
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <open>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0000f 	mov	r0, #15
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <mknod>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00011 	mov	r0, #17
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <unlink>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00012 	mov	r0, #18
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <fstat>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00008 	mov	r0, #8
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <link>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00013 	mov	r0, #19
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <mkdir>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00014 	mov	r0, #20
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <chdir>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00009 	mov	r0, #9
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <dup>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a0000a 	mov	r0, #10
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <getpid>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a0000b 	mov	r0, #11
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <sbrk>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a0000c 	mov	r0, #12
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <sleep>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a0000d 	mov	r0, #13
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <uptime>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a0000e 	mov	r0, #14
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <proclist>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a00016 	mov	r0, #22
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <settickets>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a00017 	mov	r0, #23
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <srand>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a00018 	mov	r0, #24
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <getpinfo>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00019 	mov	r0, #25
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <print_pt>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a0001f 	mov	r0, #31
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <thread_create>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00020 	mov	r0, #32
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <thread_exit>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00021 	mov	r0, #33	@ 0x21
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <thread_join>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00022 	mov	r0, #34	@ 0x22
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <waitpid>:
     ee8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eec:	e1a04003 	mov	r4, r3
     ef0:	e1a03002 	mov	r3, r2
     ef4:	e1a02001 	mov	r2, r1
     ef8:	e1a01000 	mov	r1, r0
     efc:	e3a00023 	mov	r0, #35	@ 0x23
     f00:	ef000000 	svc	0x00000000
     f04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f08:	e12fff1e 	bx	lr

00000f0c <barrier_init>:
     f0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f10:	e1a04003 	mov	r4, r3
     f14:	e1a03002 	mov	r3, r2
     f18:	e1a02001 	mov	r2, r1
     f1c:	e1a01000 	mov	r1, r0
     f20:	e3a00024 	mov	r0, #36	@ 0x24
     f24:	ef000000 	svc	0x00000000
     f28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f2c:	e12fff1e 	bx	lr

00000f30 <barrier_check>:
     f30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f34:	e1a04003 	mov	r4, r3
     f38:	e1a03002 	mov	r3, r2
     f3c:	e1a02001 	mov	r2, r1
     f40:	e1a01000 	mov	r1, r0
     f44:	e3a00025 	mov	r0, #37	@ 0x25
     f48:	ef000000 	svc	0x00000000
     f4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f50:	e12fff1e 	bx	lr

00000f54 <sleepChan>:
     f54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f58:	e1a04003 	mov	r4, r3
     f5c:	e1a03002 	mov	r3, r2
     f60:	e1a02001 	mov	r2, r1
     f64:	e1a01000 	mov	r1, r0
     f68:	e3a00026 	mov	r0, #38	@ 0x26
     f6c:	ef000000 	svc	0x00000000
     f70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f74:	e12fff1e 	bx	lr

00000f78 <getChannel>:
     f78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f7c:	e1a04003 	mov	r4, r3
     f80:	e1a03002 	mov	r3, r2
     f84:	e1a02001 	mov	r2, r1
     f88:	e1a01000 	mov	r1, r0
     f8c:	e3a00027 	mov	r0, #39	@ 0x27
     f90:	ef000000 	svc	0x00000000
     f94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f98:	e12fff1e 	bx	lr

00000f9c <sigChan>:
     f9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa0:	e1a04003 	mov	r4, r3
     fa4:	e1a03002 	mov	r3, r2
     fa8:	e1a02001 	mov	r2, r1
     fac:	e1a01000 	mov	r1, r0
     fb0:	e3a00028 	mov	r0, #40	@ 0x28
     fb4:	ef000000 	svc	0x00000000
     fb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fbc:	e12fff1e 	bx	lr

00000fc0 <sigOneChan>:
     fc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc4:	e1a04003 	mov	r4, r3
     fc8:	e1a03002 	mov	r3, r2
     fcc:	e1a02001 	mov	r2, r1
     fd0:	e1a01000 	mov	r1, r0
     fd4:	e3a00029 	mov	r0, #41	@ 0x29
     fd8:	ef000000 	svc	0x00000000
     fdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe0:	e12fff1e 	bx	lr

00000fe4 <syscall>:
     fe4:	ef000000 	svc	0x00000000
     fe8:	e12fff1e 	bx	lr

00000fec <putc>:
     fec:	e92d4800 	push	{fp, lr}
     ff0:	e28db004 	add	fp, sp, #4
     ff4:	e24dd008 	sub	sp, sp, #8
     ff8:	e50b0008 	str	r0, [fp, #-8]
     ffc:	e1a03001 	mov	r3, r1
    1000:	e54b3009 	strb	r3, [fp, #-9]
    1004:	e24b3009 	sub	r3, fp, #9
    1008:	e3a02001 	mov	r2, #1
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0008 	ldr	r0, [fp, #-8]
    1014:	ebfffedb 	bl	b88 <write>
    1018:	e1a00000 	nop			@ (mov r0, r0)
    101c:	e24bd004 	sub	sp, fp, #4
    1020:	e8bd8800 	pop	{fp, pc}

00001024 <printint>:
    1024:	e92d4800 	push	{fp, lr}
    1028:	e28db004 	add	fp, sp, #4
    102c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1030:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1034:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1038:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    103c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1040:	e3a03000 	mov	r3, #0
    1044:	e50b300c 	str	r3, [fp, #-12]
    1048:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    104c:	e3530000 	cmp	r3, #0
    1050:	0a000008 	beq	1078 <printint+0x54>
    1054:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1058:	e3530000 	cmp	r3, #0
    105c:	aa000005 	bge	1078 <printint+0x54>
    1060:	e3a03001 	mov	r3, #1
    1064:	e50b300c 	str	r3, [fp, #-12]
    1068:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    106c:	e2633000 	rsb	r3, r3, #0
    1070:	e50b3010 	str	r3, [fp, #-16]
    1074:	ea000001 	b	1080 <printint+0x5c>
    1078:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    107c:	e50b3010 	str	r3, [fp, #-16]
    1080:	e3a03000 	mov	r3, #0
    1084:	e50b3008 	str	r3, [fp, #-8]
    1088:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    108c:	e51b3010 	ldr	r3, [fp, #-16]
    1090:	e1a01002 	mov	r1, r2
    1094:	e1a00003 	mov	r0, r3
    1098:	eb0001d5 	bl	17f4 <__aeabi_uidivmod>
    109c:	e1a03001 	mov	r3, r1
    10a0:	e1a01003 	mov	r1, r3
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e2832001 	add	r2, r3, #1
    10ac:	e50b2008 	str	r2, [fp, #-8]
    10b0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1158 <printint+0x134>
    10b4:	e7d22001 	ldrb	r2, [r2, r1]
    10b8:	e2433004 	sub	r3, r3, #4
    10bc:	e083300b 	add	r3, r3, fp
    10c0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10c4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e51b0010 	ldr	r0, [fp, #-16]
    10d0:	eb00018a 	bl	1700 <__udivsi3>
    10d4:	e1a03000 	mov	r3, r0
    10d8:	e50b3010 	str	r3, [fp, #-16]
    10dc:	e51b3010 	ldr	r3, [fp, #-16]
    10e0:	e3530000 	cmp	r3, #0
    10e4:	1affffe7 	bne	1088 <printint+0x64>
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	0a00000e 	beq	1130 <printint+0x10c>
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e2832001 	add	r2, r3, #1
    10fc:	e50b2008 	str	r2, [fp, #-8]
    1100:	e2433004 	sub	r3, r3, #4
    1104:	e083300b 	add	r3, r3, fp
    1108:	e3a0202d 	mov	r2, #45	@ 0x2d
    110c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1110:	ea000006 	b	1130 <printint+0x10c>
    1114:	e24b2020 	sub	r2, fp, #32
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e0823003 	add	r3, r2, r3
    1120:	e5d33000 	ldrb	r3, [r3]
    1124:	e1a01003 	mov	r1, r3
    1128:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    112c:	ebffffae 	bl	fec <putc>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e2433001 	sub	r3, r3, #1
    1138:	e50b3008 	str	r3, [fp, #-8]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e3530000 	cmp	r3, #0
    1144:	aafffff2 	bge	1114 <printint+0xf0>
    1148:	e1a00000 	nop			@ (mov r0, r0)
    114c:	e1a00000 	nop			@ (mov r0, r0)
    1150:	e24bd004 	sub	sp, fp, #4
    1154:	e8bd8800 	pop	{fp, pc}
    1158:	00001854 	.word	0x00001854

0000115c <printf>:
    115c:	e92d000e 	push	{r1, r2, r3}
    1160:	e92d4800 	push	{fp, lr}
    1164:	e28db004 	add	fp, sp, #4
    1168:	e24dd024 	sub	sp, sp, #36	@ 0x24
    116c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1170:	e3a03000 	mov	r3, #0
    1174:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1178:	e28b3008 	add	r3, fp, #8
    117c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e3a03000 	mov	r3, #0
    1184:	e50b3010 	str	r3, [fp, #-16]
    1188:	ea000074 	b	1360 <printf+0x204>
    118c:	e59b2004 	ldr	r2, [fp, #4]
    1190:	e51b3010 	ldr	r3, [fp, #-16]
    1194:	e0823003 	add	r3, r2, r3
    1198:	e5d33000 	ldrb	r3, [r3]
    119c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11a4:	e3530000 	cmp	r3, #0
    11a8:	1a00000b 	bne	11dc <printf+0x80>
    11ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b0:	e3530025 	cmp	r3, #37	@ 0x25
    11b4:	1a000002 	bne	11c4 <printf+0x68>
    11b8:	e3a03025 	mov	r3, #37	@ 0x25
    11bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11c0:	ea000063 	b	1354 <printf+0x1f8>
    11c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c8:	e6ef3073 	uxtb	r3, r3
    11cc:	e1a01003 	mov	r1, r3
    11d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d4:	ebffff84 	bl	fec <putc>
    11d8:	ea00005d 	b	1354 <printf+0x1f8>
    11dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11e0:	e3530025 	cmp	r3, #37	@ 0x25
    11e4:	1a00005a 	bne	1354 <printf+0x1f8>
    11e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11ec:	e3530064 	cmp	r3, #100	@ 0x64
    11f0:	1a00000a 	bne	1220 <printf+0xc4>
    11f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e1a01003 	mov	r1, r3
    1200:	e3a03001 	mov	r3, #1
    1204:	e3a0200a 	mov	r2, #10
    1208:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    120c:	ebffff84 	bl	1024 <printint>
    1210:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1214:	e2833004 	add	r3, r3, #4
    1218:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    121c:	ea00004a 	b	134c <printf+0x1f0>
    1220:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1224:	e3530078 	cmp	r3, #120	@ 0x78
    1228:	0a000002 	beq	1238 <printf+0xdc>
    122c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1230:	e3530070 	cmp	r3, #112	@ 0x70
    1234:	1a00000a 	bne	1264 <printf+0x108>
    1238:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e1a01003 	mov	r1, r3
    1244:	e3a03000 	mov	r3, #0
    1248:	e3a02010 	mov	r2, #16
    124c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1250:	ebffff73 	bl	1024 <printint>
    1254:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1258:	e2833004 	add	r3, r3, #4
    125c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1260:	ea000039 	b	134c <printf+0x1f0>
    1264:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1268:	e3530073 	cmp	r3, #115	@ 0x73
    126c:	1a000018 	bne	12d4 <printf+0x178>
    1270:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e50b300c 	str	r3, [fp, #-12]
    127c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1280:	e2833004 	add	r3, r3, #4
    1284:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e3530000 	cmp	r3, #0
    1290:	1a00000a 	bne	12c0 <printf+0x164>
    1294:	e59f30f4 	ldr	r3, [pc, #244]	@ 1390 <printf+0x234>
    1298:	e50b300c 	str	r3, [fp, #-12]
    129c:	ea000007 	b	12c0 <printf+0x164>
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e5d33000 	ldrb	r3, [r3]
    12a8:	e1a01003 	mov	r1, r3
    12ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12b0:	ebffff4d 	bl	fec <putc>
    12b4:	e51b300c 	ldr	r3, [fp, #-12]
    12b8:	e2833001 	add	r3, r3, #1
    12bc:	e50b300c 	str	r3, [fp, #-12]
    12c0:	e51b300c 	ldr	r3, [fp, #-12]
    12c4:	e5d33000 	ldrb	r3, [r3]
    12c8:	e3530000 	cmp	r3, #0
    12cc:	1afffff3 	bne	12a0 <printf+0x144>
    12d0:	ea00001d 	b	134c <printf+0x1f0>
    12d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d8:	e3530063 	cmp	r3, #99	@ 0x63
    12dc:	1a000009 	bne	1308 <printf+0x1ac>
    12e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e6ef3073 	uxtb	r3, r3
    12ec:	e1a01003 	mov	r1, r3
    12f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f4:	ebffff3c 	bl	fec <putc>
    12f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e2833004 	add	r3, r3, #4
    1300:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1304:	ea000010 	b	134c <printf+0x1f0>
    1308:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    130c:	e3530025 	cmp	r3, #37	@ 0x25
    1310:	1a000005 	bne	132c <printf+0x1d0>
    1314:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1318:	e6ef3073 	uxtb	r3, r3
    131c:	e1a01003 	mov	r1, r3
    1320:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1324:	ebffff30 	bl	fec <putc>
    1328:	ea000007 	b	134c <printf+0x1f0>
    132c:	e3a01025 	mov	r1, #37	@ 0x25
    1330:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1334:	ebffff2c 	bl	fec <putc>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e6ef3073 	uxtb	r3, r3
    1340:	e1a01003 	mov	r1, r3
    1344:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1348:	ebffff27 	bl	fec <putc>
    134c:	e3a03000 	mov	r3, #0
    1350:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1354:	e51b3010 	ldr	r3, [fp, #-16]
    1358:	e2833001 	add	r3, r3, #1
    135c:	e50b3010 	str	r3, [fp, #-16]
    1360:	e59b2004 	ldr	r2, [fp, #4]
    1364:	e51b3010 	ldr	r3, [fp, #-16]
    1368:	e0823003 	add	r3, r2, r3
    136c:	e5d33000 	ldrb	r3, [r3]
    1370:	e3530000 	cmp	r3, #0
    1374:	1affff84 	bne	118c <printf+0x30>
    1378:	e1a00000 	nop			@ (mov r0, r0)
    137c:	e1a00000 	nop			@ (mov r0, r0)
    1380:	e24bd004 	sub	sp, fp, #4
    1384:	e8bd4800 	pop	{fp, lr}
    1388:	e28dd00c 	add	sp, sp, #12
    138c:	e12fff1e 	bx	lr
    1390:	0000184c 	.word	0x0000184c

00001394 <free>:
    1394:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1398:	e28db000 	add	fp, sp, #0
    139c:	e24dd014 	sub	sp, sp, #20
    13a0:	e50b0010 	str	r0, [fp, #-16]
    13a4:	e51b3010 	ldr	r3, [fp, #-16]
    13a8:	e2433008 	sub	r3, r3, #8
    13ac:	e50b300c 	str	r3, [fp, #-12]
    13b0:	e59f3154 	ldr	r3, [pc, #340]	@ 150c <free+0x178>
    13b4:	e5933000 	ldr	r3, [r3]
    13b8:	e50b3008 	str	r3, [fp, #-8]
    13bc:	ea000010 	b	1404 <free+0x70>
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e51b2008 	ldr	r2, [fp, #-8]
    13cc:	e1520003 	cmp	r2, r3
    13d0:	3a000008 	bcc	13f8 <free+0x64>
    13d4:	e51b200c 	ldr	r2, [fp, #-12]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e1520003 	cmp	r2, r3
    13e0:	8a000010 	bhi	1428 <free+0x94>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e5933000 	ldr	r3, [r3]
    13ec:	e51b200c 	ldr	r2, [fp, #-12]
    13f0:	e1520003 	cmp	r2, r3
    13f4:	3a00000b 	bcc	1428 <free+0x94>
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e5933000 	ldr	r3, [r3]
    1400:	e50b3008 	str	r3, [fp, #-8]
    1404:	e51b200c 	ldr	r2, [fp, #-12]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e1520003 	cmp	r2, r3
    1410:	9affffea 	bls	13c0 <free+0x2c>
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e5933000 	ldr	r3, [r3]
    141c:	e51b200c 	ldr	r2, [fp, #-12]
    1420:	e1520003 	cmp	r2, r3
    1424:	2affffe5 	bcs	13c0 <free+0x2c>
    1428:	e51b300c 	ldr	r3, [fp, #-12]
    142c:	e5933004 	ldr	r3, [r3, #4]
    1430:	e1a03183 	lsl	r3, r3, #3
    1434:	e51b200c 	ldr	r2, [fp, #-12]
    1438:	e0822003 	add	r2, r2, r3
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e1520003 	cmp	r2, r3
    1448:	1a00000d 	bne	1484 <free+0xf0>
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e5932004 	ldr	r2, [r3, #4]
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5933000 	ldr	r3, [r3]
    145c:	e5933004 	ldr	r3, [r3, #4]
    1460:	e0822003 	add	r2, r2, r3
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5832004 	str	r2, [r3, #4]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e5932000 	ldr	r2, [r3]
    1478:	e51b300c 	ldr	r3, [fp, #-12]
    147c:	e5832000 	str	r2, [r3]
    1480:	ea000003 	b	1494 <free+0x100>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5932000 	ldr	r2, [r3]
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e5832000 	str	r2, [r3]
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e5933004 	ldr	r3, [r3, #4]
    149c:	e1a03183 	lsl	r3, r3, #3
    14a0:	e51b2008 	ldr	r2, [fp, #-8]
    14a4:	e0823003 	add	r3, r2, r3
    14a8:	e51b200c 	ldr	r2, [fp, #-12]
    14ac:	e1520003 	cmp	r2, r3
    14b0:	1a00000b 	bne	14e4 <free+0x150>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5932004 	ldr	r2, [r3, #4]
    14bc:	e51b300c 	ldr	r3, [fp, #-12]
    14c0:	e5933004 	ldr	r3, [r3, #4]
    14c4:	e0822003 	add	r2, r2, r3
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5832004 	str	r2, [r3, #4]
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e5932000 	ldr	r2, [r3]
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5832000 	str	r2, [r3]
    14e0:	ea000002 	b	14f0 <free+0x15c>
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e51b200c 	ldr	r2, [fp, #-12]
    14ec:	e5832000 	str	r2, [r3]
    14f0:	e59f2014 	ldr	r2, [pc, #20]	@ 150c <free+0x178>
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e5823000 	str	r3, [r2]
    14fc:	e1a00000 	nop			@ (mov r0, r0)
    1500:	e28bd000 	add	sp, fp, #0
    1504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1508:	e12fff1e 	bx	lr
    150c:	00001870 	.word	0x00001870

00001510 <morecore>:
    1510:	e92d4800 	push	{fp, lr}
    1514:	e28db004 	add	fp, sp, #4
    1518:	e24dd010 	sub	sp, sp, #16
    151c:	e50b0010 	str	r0, [fp, #-16]
    1520:	e51b3010 	ldr	r3, [fp, #-16]
    1524:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1528:	2a000001 	bcs	1534 <morecore+0x24>
    152c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1530:	e50b3010 	str	r3, [fp, #-16]
    1534:	e51b3010 	ldr	r3, [fp, #-16]
    1538:	e1a03183 	lsl	r3, r3, #3
    153c:	e1a00003 	mov	r0, r3
    1540:	ebfffe05 	bl	d5c <sbrk>
    1544:	e50b0008 	str	r0, [fp, #-8]
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e3730001 	cmn	r3, #1
    1550:	1a000001 	bne	155c <morecore+0x4c>
    1554:	e3a03000 	mov	r3, #0
    1558:	ea00000a 	b	1588 <morecore+0x78>
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e50b300c 	str	r3, [fp, #-12]
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e51b2010 	ldr	r2, [fp, #-16]
    156c:	e5832004 	str	r2, [r3, #4]
    1570:	e51b300c 	ldr	r3, [fp, #-12]
    1574:	e2833008 	add	r3, r3, #8
    1578:	e1a00003 	mov	r0, r3
    157c:	ebffff84 	bl	1394 <free>
    1580:	e59f300c 	ldr	r3, [pc, #12]	@ 1594 <morecore+0x84>
    1584:	e5933000 	ldr	r3, [r3]
    1588:	e1a00003 	mov	r0, r3
    158c:	e24bd004 	sub	sp, fp, #4
    1590:	e8bd8800 	pop	{fp, pc}
    1594:	00001870 	.word	0x00001870

00001598 <malloc>:
    1598:	e92d4800 	push	{fp, lr}
    159c:	e28db004 	add	fp, sp, #4
    15a0:	e24dd018 	sub	sp, sp, #24
    15a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15ac:	e2833007 	add	r3, r3, #7
    15b0:	e1a031a3 	lsr	r3, r3, #3
    15b4:	e2833001 	add	r3, r3, #1
    15b8:	e50b3010 	str	r3, [fp, #-16]
    15bc:	e59f3134 	ldr	r3, [pc, #308]	@ 16f8 <malloc+0x160>
    15c0:	e5933000 	ldr	r3, [r3]
    15c4:	e50b300c 	str	r3, [fp, #-12]
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e3530000 	cmp	r3, #0
    15d0:	1a00000b 	bne	1604 <malloc+0x6c>
    15d4:	e59f3120 	ldr	r3, [pc, #288]	@ 16fc <malloc+0x164>
    15d8:	e50b300c 	str	r3, [fp, #-12]
    15dc:	e59f2114 	ldr	r2, [pc, #276]	@ 16f8 <malloc+0x160>
    15e0:	e51b300c 	ldr	r3, [fp, #-12]
    15e4:	e5823000 	str	r3, [r2]
    15e8:	e59f3108 	ldr	r3, [pc, #264]	@ 16f8 <malloc+0x160>
    15ec:	e5933000 	ldr	r3, [r3]
    15f0:	e59f2104 	ldr	r2, [pc, #260]	@ 16fc <malloc+0x164>
    15f4:	e5823000 	str	r3, [r2]
    15f8:	e59f30fc 	ldr	r3, [pc, #252]	@ 16fc <malloc+0x164>
    15fc:	e3a02000 	mov	r2, #0
    1600:	e5832004 	str	r2, [r3, #4]
    1604:	e51b300c 	ldr	r3, [fp, #-12]
    1608:	e5933000 	ldr	r3, [r3]
    160c:	e50b3008 	str	r3, [fp, #-8]
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5933004 	ldr	r3, [r3, #4]
    1618:	e51b2010 	ldr	r2, [fp, #-16]
    161c:	e1520003 	cmp	r2, r3
    1620:	8a00001e 	bhi	16a0 <malloc+0x108>
    1624:	e51b3008 	ldr	r3, [fp, #-8]
    1628:	e5933004 	ldr	r3, [r3, #4]
    162c:	e51b2010 	ldr	r2, [fp, #-16]
    1630:	e1520003 	cmp	r2, r3
    1634:	1a000004 	bne	164c <malloc+0xb4>
    1638:	e51b3008 	ldr	r3, [fp, #-8]
    163c:	e5932000 	ldr	r2, [r3]
    1640:	e51b300c 	ldr	r3, [fp, #-12]
    1644:	e5832000 	str	r2, [r3]
    1648:	ea00000e 	b	1688 <malloc+0xf0>
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e5932004 	ldr	r2, [r3, #4]
    1654:	e51b3010 	ldr	r3, [fp, #-16]
    1658:	e0422003 	sub	r2, r2, r3
    165c:	e51b3008 	ldr	r3, [fp, #-8]
    1660:	e5832004 	str	r2, [r3, #4]
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e5933004 	ldr	r3, [r3, #4]
    166c:	e1a03183 	lsl	r3, r3, #3
    1670:	e51b2008 	ldr	r2, [fp, #-8]
    1674:	e0823003 	add	r3, r2, r3
    1678:	e50b3008 	str	r3, [fp, #-8]
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e51b2010 	ldr	r2, [fp, #-16]
    1684:	e5832004 	str	r2, [r3, #4]
    1688:	e59f2068 	ldr	r2, [pc, #104]	@ 16f8 <malloc+0x160>
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e5823000 	str	r3, [r2]
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e2833008 	add	r3, r3, #8
    169c:	ea000012 	b	16ec <malloc+0x154>
    16a0:	e59f3050 	ldr	r3, [pc, #80]	@ 16f8 <malloc+0x160>
    16a4:	e5933000 	ldr	r3, [r3]
    16a8:	e51b2008 	ldr	r2, [fp, #-8]
    16ac:	e1520003 	cmp	r2, r3
    16b0:	1a000007 	bne	16d4 <malloc+0x13c>
    16b4:	e51b0010 	ldr	r0, [fp, #-16]
    16b8:	ebffff94 	bl	1510 <morecore>
    16bc:	e50b0008 	str	r0, [fp, #-8]
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e3530000 	cmp	r3, #0
    16c8:	1a000001 	bne	16d4 <malloc+0x13c>
    16cc:	e3a03000 	mov	r3, #0
    16d0:	ea000005 	b	16ec <malloc+0x154>
    16d4:	e51b3008 	ldr	r3, [fp, #-8]
    16d8:	e50b300c 	str	r3, [fp, #-12]
    16dc:	e51b3008 	ldr	r3, [fp, #-8]
    16e0:	e5933000 	ldr	r3, [r3]
    16e4:	e50b3008 	str	r3, [fp, #-8]
    16e8:	eaffffc8 	b	1610 <malloc+0x78>
    16ec:	e1a00003 	mov	r0, r3
    16f0:	e24bd004 	sub	sp, fp, #4
    16f4:	e8bd8800 	pop	{fp, pc}
    16f8:	00001870 	.word	0x00001870
    16fc:	00001868 	.word	0x00001868

00001700 <__udivsi3>:
    1700:	e2512001 	subs	r2, r1, #1
    1704:	012fff1e 	bxeq	lr
    1708:	3a000036 	bcc	17e8 <__udivsi3+0xe8>
    170c:	e1500001 	cmp	r0, r1
    1710:	9a000022 	bls	17a0 <__udivsi3+0xa0>
    1714:	e1110002 	tst	r1, r2
    1718:	0a000023 	beq	17ac <__udivsi3+0xac>
    171c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1720:	01a01181 	lsleq	r1, r1, #3
    1724:	03a03008 	moveq	r3, #8
    1728:	13a03001 	movne	r3, #1
    172c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1730:	31510000 	cmpcc	r1, r0
    1734:	31a01201 	lslcc	r1, r1, #4
    1738:	31a03203 	lslcc	r3, r3, #4
    173c:	3afffffa 	bcc	172c <__udivsi3+0x2c>
    1740:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1744:	31510000 	cmpcc	r1, r0
    1748:	31a01081 	lslcc	r1, r1, #1
    174c:	31a03083 	lslcc	r3, r3, #1
    1750:	3afffffa 	bcc	1740 <__udivsi3+0x40>
    1754:	e3a02000 	mov	r2, #0
    1758:	e1500001 	cmp	r0, r1
    175c:	20400001 	subcs	r0, r0, r1
    1760:	21822003 	orrcs	r2, r2, r3
    1764:	e15000a1 	cmp	r0, r1, lsr #1
    1768:	204000a1 	subcs	r0, r0, r1, lsr #1
    176c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1770:	e1500121 	cmp	r0, r1, lsr #2
    1774:	20400121 	subcs	r0, r0, r1, lsr #2
    1778:	21822123 	orrcs	r2, r2, r3, lsr #2
    177c:	e15001a1 	cmp	r0, r1, lsr #3
    1780:	204001a1 	subcs	r0, r0, r1, lsr #3
    1784:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1788:	e3500000 	cmp	r0, #0
    178c:	11b03223 	lsrsne	r3, r3, #4
    1790:	11a01221 	lsrne	r1, r1, #4
    1794:	1affffef 	bne	1758 <__udivsi3+0x58>
    1798:	e1a00002 	mov	r0, r2
    179c:	e12fff1e 	bx	lr
    17a0:	03a00001 	moveq	r0, #1
    17a4:	13a00000 	movne	r0, #0
    17a8:	e12fff1e 	bx	lr
    17ac:	e3510801 	cmp	r1, #65536	@ 0x10000
    17b0:	21a01821 	lsrcs	r1, r1, #16
    17b4:	23a02010 	movcs	r2, #16
    17b8:	33a02000 	movcc	r2, #0
    17bc:	e3510c01 	cmp	r1, #256	@ 0x100
    17c0:	21a01421 	lsrcs	r1, r1, #8
    17c4:	22822008 	addcs	r2, r2, #8
    17c8:	e3510010 	cmp	r1, #16
    17cc:	21a01221 	lsrcs	r1, r1, #4
    17d0:	22822004 	addcs	r2, r2, #4
    17d4:	e3510004 	cmp	r1, #4
    17d8:	82822003 	addhi	r2, r2, #3
    17dc:	908220a1 	addls	r2, r2, r1, lsr #1
    17e0:	e1a00230 	lsr	r0, r0, r2
    17e4:	e12fff1e 	bx	lr
    17e8:	e3500000 	cmp	r0, #0
    17ec:	13e00000 	mvnne	r0, #0
    17f0:	ea000007 	b	1814 <__aeabi_idiv0>

000017f4 <__aeabi_uidivmod>:
    17f4:	e3510000 	cmp	r1, #0
    17f8:	0afffffa 	beq	17e8 <__udivsi3+0xe8>
    17fc:	e92d4003 	push	{r0, r1, lr}
    1800:	ebffffbe 	bl	1700 <__udivsi3>
    1804:	e8bd4006 	pop	{r1, r2, lr}
    1808:	e0030092 	mul	r3, r2, r0
    180c:	e0411003 	sub	r1, r1, r3
    1810:	e12fff1e 	bx	lr

00001814 <__aeabi_idiv0>:
    1814:	e12fff1e 	bx	lr
