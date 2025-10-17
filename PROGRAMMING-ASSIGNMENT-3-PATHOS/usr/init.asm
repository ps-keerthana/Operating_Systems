
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb000249 	bl	940 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb00024b 	bl	964 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb00023f 	bl	940 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb00027c 	bl	a3c <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb00027a 	bl	a3c <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb00032f 	bl	d1c <printf>
      5c:	eb0001e6 	bl	7fc <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb000327 	bl	d1c <printf>
      7c:	eb0001e7 	bl	820 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb000220 	bl	91c <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb00031d 	bl	d1c <printf>
      a4:	eb0001dd 	bl	820 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000319 	bl	d1c <printf>
      b4:	eb0001e2 	bl	844 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000013dc 	.word	0x000013dc
      e0:	000013e4 	.word	0x000013e4
      e4:	000013f8 	.word	0x000013f8
      e8:	00001438 	.word	0x00001438
      ec:	000013d8 	.word	0x000013d8
      f0:	0000140c 	.word	0x0000140c
      f4:	00001424 	.word	0x00001424

000000f8 <pg_pte>:
      f8:	e92d4800 	push	{fp, lr}
      fc:	e28db004 	add	fp, sp, #4
     100:	e24dd008 	sub	sp, sp, #8
     104:	e50b0008 	str	r0, [fp, #-8]
     108:	e51b1008 	ldr	r1, [fp, #-8]
     10c:	e3a00065 	mov	r0, #101	@ 0x65
     110:	eb0002a3 	bl	ba4 <syscall>
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
     138:	e3a00066 	mov	r0, #102	@ 0x66
     13c:	eb000298 	bl	ba4 <syscall>
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
     164:	e3a00067 	mov	r0, #103	@ 0x67
     168:	eb00028d 	bl	ba4 <syscall>
     16c:	e1a03000 	mov	r3, r0
     170:	e1a00003 	mov	r0, r3
     174:	e24bd004 	sub	sp, fp, #4
     178:	e8bd8800 	pop	{fp, pc}

0000017c <kpt>:
     17c:	e92d4800 	push	{fp, lr}
     180:	e28db004 	add	fp, sp, #4
     184:	e3a00068 	mov	r0, #104	@ 0x68
     188:	eb000285 	bl	ba4 <syscall>
     18c:	e1a03000 	mov	r3, r0
     190:	e1a00003 	mov	r0, r3
     194:	e8bd8800 	pop	{fp, pc}

00000198 <ugetpid>:
     198:	e92d4800 	push	{fp, lr}
     19c:	e28db004 	add	fp, sp, #4
     1a0:	e3a00069 	mov	r0, #105	@ 0x69
     1a4:	eb00027e 	bl	ba4 <syscall>
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
     4a8:	eb0000f7 	bl	88c <read>
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
     550:	eb0000fa 	bl	940 <open>
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e3530000 	cmp	r3, #0
     560:	aa000001 	bge	56c <stat+0x38>
     564:	e3e03000 	mvn	r3, #0
     568:	ea000006 	b	588 <stat+0x54>
     56c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     570:	e51b0008 	ldr	r0, [fp, #-8]
     574:	eb00010c 	bl	9ac <fstat>
     578:	e50b000c 	str	r0, [fp, #-12]
     57c:	e51b0008 	ldr	r0, [fp, #-8]
     580:	eb0000d3 	bl	8d4 <close>
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

000007fc <fork>:
     7fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a00001 	mov	r0, #1
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <exit>:
     820:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a00002 	mov	r0, #2
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <wait>:
     844:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a00003 	mov	r0, #3
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <pipe>:
     868:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a00004 	mov	r0, #4
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <read>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a00005 	mov	r0, #5
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <write>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a00010 	mov	r0, #16
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <close>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a00015 	mov	r0, #21
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <kill>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a00006 	mov	r0, #6
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <exec>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00007 	mov	r0, #7
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <open>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a0000f 	mov	r0, #15
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <mknod>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00011 	mov	r0, #17
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <unlink>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00012 	mov	r0, #18
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <fstat>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00008 	mov	r0, #8
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <link>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00013 	mov	r0, #19
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <mkdir>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00014 	mov	r0, #20
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <chdir>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00009 	mov	r0, #9
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <dup>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a0000a 	mov	r0, #10
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <getpid>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a0000b 	mov	r0, #11
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <sbrk>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a0000c 	mov	r0, #12
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <sleep>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a0000d 	mov	r0, #13
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <uptime>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a0000e 	mov	r0, #14
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <proclist>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00016 	mov	r0, #22
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <settickets>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00017 	mov	r0, #23
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <srand>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00018 	mov	r0, #24
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <getpinfo>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00019 	mov	r0, #25
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <print_pt>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a0006a 	mov	r0, #106	@ 0x6a
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <syscall>:
     ba4:	ef000000 	svc	0x00000000
     ba8:	e12fff1e 	bx	lr

00000bac <putc>:
     bac:	e92d4800 	push	{fp, lr}
     bb0:	e28db004 	add	fp, sp, #4
     bb4:	e24dd008 	sub	sp, sp, #8
     bb8:	e50b0008 	str	r0, [fp, #-8]
     bbc:	e1a03001 	mov	r3, r1
     bc0:	e54b3009 	strb	r3, [fp, #-9]
     bc4:	e24b3009 	sub	r3, fp, #9
     bc8:	e3a02001 	mov	r2, #1
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0008 	ldr	r0, [fp, #-8]
     bd4:	ebffff35 	bl	8b0 <write>
     bd8:	e1a00000 	nop			@ (mov r0, r0)
     bdc:	e24bd004 	sub	sp, fp, #4
     be0:	e8bd8800 	pop	{fp, pc}

00000be4 <printint>:
     be4:	e92d4800 	push	{fp, lr}
     be8:	e28db004 	add	fp, sp, #4
     bec:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bf0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bf4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bf8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bfc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c00:	e3a03000 	mov	r3, #0
     c04:	e50b300c 	str	r3, [fp, #-12]
     c08:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c0c:	e3530000 	cmp	r3, #0
     c10:	0a000008 	beq	c38 <printint+0x54>
     c14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c18:	e3530000 	cmp	r3, #0
     c1c:	aa000005 	bge	c38 <printint+0x54>
     c20:	e3a03001 	mov	r3, #1
     c24:	e50b300c 	str	r3, [fp, #-12]
     c28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c2c:	e2633000 	rsb	r3, r3, #0
     c30:	e50b3010 	str	r3, [fp, #-16]
     c34:	ea000001 	b	c40 <printint+0x5c>
     c38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c3c:	e50b3010 	str	r3, [fp, #-16]
     c40:	e3a03000 	mov	r3, #0
     c44:	e50b3008 	str	r3, [fp, #-8]
     c48:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c4c:	e51b3010 	ldr	r3, [fp, #-16]
     c50:	e1a01002 	mov	r1, r2
     c54:	e1a00003 	mov	r0, r3
     c58:	eb0001d5 	bl	13b4 <__aeabi_uidivmod>
     c5c:	e1a03001 	mov	r3, r1
     c60:	e1a01003 	mov	r1, r3
     c64:	e51b3008 	ldr	r3, [fp, #-8]
     c68:	e2832001 	add	r2, r3, #1
     c6c:	e50b2008 	str	r2, [fp, #-8]
     c70:	e59f20a0 	ldr	r2, [pc, #160]	@ d18 <printint+0x134>
     c74:	e7d22001 	ldrb	r2, [r2, r1]
     c78:	e2433004 	sub	r3, r3, #4
     c7c:	e083300b 	add	r3, r3, fp
     c80:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c84:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c88:	e1a01003 	mov	r1, r3
     c8c:	e51b0010 	ldr	r0, [fp, #-16]
     c90:	eb00018a 	bl	12c0 <__udivsi3>
     c94:	e1a03000 	mov	r3, r0
     c98:	e50b3010 	str	r3, [fp, #-16]
     c9c:	e51b3010 	ldr	r3, [fp, #-16]
     ca0:	e3530000 	cmp	r3, #0
     ca4:	1affffe7 	bne	c48 <printint+0x64>
     ca8:	e51b300c 	ldr	r3, [fp, #-12]
     cac:	e3530000 	cmp	r3, #0
     cb0:	0a00000e 	beq	cf0 <printint+0x10c>
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e2832001 	add	r2, r3, #1
     cbc:	e50b2008 	str	r2, [fp, #-8]
     cc0:	e2433004 	sub	r3, r3, #4
     cc4:	e083300b 	add	r3, r3, fp
     cc8:	e3a0202d 	mov	r2, #45	@ 0x2d
     ccc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cd0:	ea000006 	b	cf0 <printint+0x10c>
     cd4:	e24b2020 	sub	r2, fp, #32
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e0823003 	add	r3, r2, r3
     ce0:	e5d33000 	ldrb	r3, [r3]
     ce4:	e1a01003 	mov	r1, r3
     ce8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cec:	ebffffae 	bl	bac <putc>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e2433001 	sub	r3, r3, #1
     cf8:	e50b3008 	str	r3, [fp, #-8]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e3530000 	cmp	r3, #0
     d04:	aafffff2 	bge	cd4 <printint+0xf0>
     d08:	e1a00000 	nop			@ (mov r0, r0)
     d0c:	e1a00000 	nop			@ (mov r0, r0)
     d10:	e24bd004 	sub	sp, fp, #4
     d14:	e8bd8800 	pop	{fp, pc}
     d18:	00001440 	.word	0x00001440

00000d1c <printf>:
     d1c:	e92d000e 	push	{r1, r2, r3}
     d20:	e92d4800 	push	{fp, lr}
     d24:	e28db004 	add	fp, sp, #4
     d28:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d2c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d30:	e3a03000 	mov	r3, #0
     d34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d38:	e28b3008 	add	r3, fp, #8
     d3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d40:	e3a03000 	mov	r3, #0
     d44:	e50b3010 	str	r3, [fp, #-16]
     d48:	ea000074 	b	f20 <printf+0x204>
     d4c:	e59b2004 	ldr	r2, [fp, #4]
     d50:	e51b3010 	ldr	r3, [fp, #-16]
     d54:	e0823003 	add	r3, r2, r3
     d58:	e5d33000 	ldrb	r3, [r3]
     d5c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d64:	e3530000 	cmp	r3, #0
     d68:	1a00000b 	bne	d9c <printf+0x80>
     d6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d70:	e3530025 	cmp	r3, #37	@ 0x25
     d74:	1a000002 	bne	d84 <printf+0x68>
     d78:	e3a03025 	mov	r3, #37	@ 0x25
     d7c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d80:	ea000063 	b	f14 <printf+0x1f8>
     d84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d88:	e6ef3073 	uxtb	r3, r3
     d8c:	e1a01003 	mov	r1, r3
     d90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d94:	ebffff84 	bl	bac <putc>
     d98:	ea00005d 	b	f14 <printf+0x1f8>
     d9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da0:	e3530025 	cmp	r3, #37	@ 0x25
     da4:	1a00005a 	bne	f14 <printf+0x1f8>
     da8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dac:	e3530064 	cmp	r3, #100	@ 0x64
     db0:	1a00000a 	bne	de0 <printf+0xc4>
     db4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e1a01003 	mov	r1, r3
     dc0:	e3a03001 	mov	r3, #1
     dc4:	e3a0200a 	mov	r2, #10
     dc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dcc:	ebffff84 	bl	be4 <printint>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e2833004 	add	r3, r3, #4
     dd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	ea00004a 	b	f0c <printf+0x1f0>
     de0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e3530078 	cmp	r3, #120	@ 0x78
     de8:	0a000002 	beq	df8 <printf+0xdc>
     dec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e3530070 	cmp	r3, #112	@ 0x70
     df4:	1a00000a 	bne	e24 <printf+0x108>
     df8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e1a01003 	mov	r1, r3
     e04:	e3a03000 	mov	r3, #0
     e08:	e3a02010 	mov	r2, #16
     e0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e10:	ebffff73 	bl	be4 <printint>
     e14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e18:	e2833004 	add	r3, r3, #4
     e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e20:	ea000039 	b	f0c <printf+0x1f0>
     e24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e28:	e3530073 	cmp	r3, #115	@ 0x73
     e2c:	1a000018 	bne	e94 <printf+0x178>
     e30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e50b300c 	str	r3, [fp, #-12]
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e40:	e2833004 	add	r3, r3, #4
     e44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e3530000 	cmp	r3, #0
     e50:	1a00000a 	bne	e80 <printf+0x164>
     e54:	e59f30f4 	ldr	r3, [pc, #244]	@ f50 <printf+0x234>
     e58:	e50b300c 	str	r3, [fp, #-12]
     e5c:	ea000007 	b	e80 <printf+0x164>
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e5d33000 	ldrb	r3, [r3]
     e68:	e1a01003 	mov	r1, r3
     e6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e70:	ebffff4d 	bl	bac <putc>
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e2833001 	add	r3, r3, #1
     e7c:	e50b300c 	str	r3, [fp, #-12]
     e80:	e51b300c 	ldr	r3, [fp, #-12]
     e84:	e5d33000 	ldrb	r3, [r3]
     e88:	e3530000 	cmp	r3, #0
     e8c:	1afffff3 	bne	e60 <printf+0x144>
     e90:	ea00001d 	b	f0c <printf+0x1f0>
     e94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e98:	e3530063 	cmp	r3, #99	@ 0x63
     e9c:	1a000009 	bne	ec8 <printf+0x1ac>
     ea0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea4:	e5933000 	ldr	r3, [r3]
     ea8:	e6ef3073 	uxtb	r3, r3
     eac:	e1a01003 	mov	r1, r3
     eb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb4:	ebffff3c 	bl	bac <putc>
     eb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ebc:	e2833004 	add	r3, r3, #4
     ec0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	ea000010 	b	f0c <printf+0x1f0>
     ec8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ecc:	e3530025 	cmp	r3, #37	@ 0x25
     ed0:	1a000005 	bne	eec <printf+0x1d0>
     ed4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed8:	e6ef3073 	uxtb	r3, r3
     edc:	e1a01003 	mov	r1, r3
     ee0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ee4:	ebffff30 	bl	bac <putc>
     ee8:	ea000007 	b	f0c <printf+0x1f0>
     eec:	e3a01025 	mov	r1, #37	@ 0x25
     ef0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef4:	ebffff2c 	bl	bac <putc>
     ef8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e6ef3073 	uxtb	r3, r3
     f00:	e1a01003 	mov	r1, r3
     f04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f08:	ebffff27 	bl	bac <putc>
     f0c:	e3a03000 	mov	r3, #0
     f10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f14:	e51b3010 	ldr	r3, [fp, #-16]
     f18:	e2833001 	add	r3, r3, #1
     f1c:	e50b3010 	str	r3, [fp, #-16]
     f20:	e59b2004 	ldr	r2, [fp, #4]
     f24:	e51b3010 	ldr	r3, [fp, #-16]
     f28:	e0823003 	add	r3, r2, r3
     f2c:	e5d33000 	ldrb	r3, [r3]
     f30:	e3530000 	cmp	r3, #0
     f34:	1affff84 	bne	d4c <printf+0x30>
     f38:	e1a00000 	nop			@ (mov r0, r0)
     f3c:	e1a00000 	nop			@ (mov r0, r0)
     f40:	e24bd004 	sub	sp, fp, #4
     f44:	e8bd4800 	pop	{fp, lr}
     f48:	e28dd00c 	add	sp, sp, #12
     f4c:	e12fff1e 	bx	lr
     f50:	00001430 	.word	0x00001430

00000f54 <free>:
     f54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f58:	e28db000 	add	fp, sp, #0
     f5c:	e24dd014 	sub	sp, sp, #20
     f60:	e50b0010 	str	r0, [fp, #-16]
     f64:	e51b3010 	ldr	r3, [fp, #-16]
     f68:	e2433008 	sub	r3, r3, #8
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	e59f3154 	ldr	r3, [pc, #340]	@ 10cc <free+0x178>
     f74:	e5933000 	ldr	r3, [r3]
     f78:	e50b3008 	str	r3, [fp, #-8]
     f7c:	ea000010 	b	fc4 <free+0x70>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e51b2008 	ldr	r2, [fp, #-8]
     f8c:	e1520003 	cmp	r2, r3
     f90:	3a000008 	bcc	fb8 <free+0x64>
     f94:	e51b200c 	ldr	r2, [fp, #-12]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	8a000010 	bhi	fe8 <free+0x94>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e51b200c 	ldr	r2, [fp, #-12]
     fb0:	e1520003 	cmp	r2, r3
     fb4:	3a00000b 	bcc	fe8 <free+0x94>
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e50b3008 	str	r3, [fp, #-8]
     fc4:	e51b200c 	ldr	r2, [fp, #-12]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e1520003 	cmp	r2, r3
     fd0:	9affffea 	bls	f80 <free+0x2c>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e51b200c 	ldr	r2, [fp, #-12]
     fe0:	e1520003 	cmp	r2, r3
     fe4:	2affffe5 	bcs	f80 <free+0x2c>
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5933004 	ldr	r3, [r3, #4]
     ff0:	e1a03183 	lsl	r3, r3, #3
     ff4:	e51b200c 	ldr	r2, [fp, #-12]
     ff8:	e0822003 	add	r2, r2, r3
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e1520003 	cmp	r2, r3
    1008:	1a00000d 	bne	1044 <free+0xf0>
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5932004 	ldr	r2, [r3, #4]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e5933004 	ldr	r3, [r3, #4]
    1020:	e0822003 	add	r2, r2, r3
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5832004 	str	r2, [r3, #4]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e5932000 	ldr	r2, [r3]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e5832000 	str	r2, [r3]
    1040:	ea000003 	b	1054 <free+0x100>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5932000 	ldr	r2, [r3]
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5832000 	str	r2, [r3]
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5933004 	ldr	r3, [r3, #4]
    105c:	e1a03183 	lsl	r3, r3, #3
    1060:	e51b2008 	ldr	r2, [fp, #-8]
    1064:	e0823003 	add	r3, r2, r3
    1068:	e51b200c 	ldr	r2, [fp, #-12]
    106c:	e1520003 	cmp	r2, r3
    1070:	1a00000b 	bne	10a4 <free+0x150>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5932004 	ldr	r2, [r3, #4]
    107c:	e51b300c 	ldr	r3, [fp, #-12]
    1080:	e5933004 	ldr	r3, [r3, #4]
    1084:	e0822003 	add	r2, r2, r3
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e5832004 	str	r2, [r3, #4]
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5932000 	ldr	r2, [r3]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5832000 	str	r2, [r3]
    10a0:	ea000002 	b	10b0 <free+0x15c>
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e51b200c 	ldr	r2, [fp, #-12]
    10ac:	e5832000 	str	r2, [r3]
    10b0:	e59f2014 	ldr	r2, [pc, #20]	@ 10cc <free+0x178>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5823000 	str	r3, [r2]
    10bc:	e1a00000 	nop			@ (mov r0, r0)
    10c0:	e28bd000 	add	sp, fp, #0
    10c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10c8:	e12fff1e 	bx	lr
    10cc:	0000145c 	.word	0x0000145c

000010d0 <morecore>:
    10d0:	e92d4800 	push	{fp, lr}
    10d4:	e28db004 	add	fp, sp, #4
    10d8:	e24dd010 	sub	sp, sp, #16
    10dc:	e50b0010 	str	r0, [fp, #-16]
    10e0:	e51b3010 	ldr	r3, [fp, #-16]
    10e4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10e8:	2a000001 	bcs	10f4 <morecore+0x24>
    10ec:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10f0:	e50b3010 	str	r3, [fp, #-16]
    10f4:	e51b3010 	ldr	r3, [fp, #-16]
    10f8:	e1a03183 	lsl	r3, r3, #3
    10fc:	e1a00003 	mov	r0, r3
    1100:	ebfffe5f 	bl	a84 <sbrk>
    1104:	e50b0008 	str	r0, [fp, #-8]
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e3730001 	cmn	r3, #1
    1110:	1a000001 	bne	111c <morecore+0x4c>
    1114:	e3a03000 	mov	r3, #0
    1118:	ea00000a 	b	1148 <morecore+0x78>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e50b300c 	str	r3, [fp, #-12]
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e51b2010 	ldr	r2, [fp, #-16]
    112c:	e5832004 	str	r2, [r3, #4]
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e2833008 	add	r3, r3, #8
    1138:	e1a00003 	mov	r0, r3
    113c:	ebffff84 	bl	f54 <free>
    1140:	e59f300c 	ldr	r3, [pc, #12]	@ 1154 <morecore+0x84>
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e1a00003 	mov	r0, r3
    114c:	e24bd004 	sub	sp, fp, #4
    1150:	e8bd8800 	pop	{fp, pc}
    1154:	0000145c 	.word	0x0000145c

00001158 <malloc>:
    1158:	e92d4800 	push	{fp, lr}
    115c:	e28db004 	add	fp, sp, #4
    1160:	e24dd018 	sub	sp, sp, #24
    1164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    116c:	e2833007 	add	r3, r3, #7
    1170:	e1a031a3 	lsr	r3, r3, #3
    1174:	e2833001 	add	r3, r3, #1
    1178:	e50b3010 	str	r3, [fp, #-16]
    117c:	e59f3134 	ldr	r3, [pc, #308]	@ 12b8 <malloc+0x160>
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e50b300c 	str	r3, [fp, #-12]
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e3530000 	cmp	r3, #0
    1190:	1a00000b 	bne	11c4 <malloc+0x6c>
    1194:	e59f3120 	ldr	r3, [pc, #288]	@ 12bc <malloc+0x164>
    1198:	e50b300c 	str	r3, [fp, #-12]
    119c:	e59f2114 	ldr	r2, [pc, #276]	@ 12b8 <malloc+0x160>
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5823000 	str	r3, [r2]
    11a8:	e59f3108 	ldr	r3, [pc, #264]	@ 12b8 <malloc+0x160>
    11ac:	e5933000 	ldr	r3, [r3]
    11b0:	e59f2104 	ldr	r2, [pc, #260]	@ 12bc <malloc+0x164>
    11b4:	e5823000 	str	r3, [r2]
    11b8:	e59f30fc 	ldr	r3, [pc, #252]	@ 12bc <malloc+0x164>
    11bc:	e3a02000 	mov	r2, #0
    11c0:	e5832004 	str	r2, [r3, #4]
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e50b3008 	str	r3, [fp, #-8]
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5933004 	ldr	r3, [r3, #4]
    11d8:	e51b2010 	ldr	r2, [fp, #-16]
    11dc:	e1520003 	cmp	r2, r3
    11e0:	8a00001e 	bhi	1260 <malloc+0x108>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5933004 	ldr	r3, [r3, #4]
    11ec:	e51b2010 	ldr	r2, [fp, #-16]
    11f0:	e1520003 	cmp	r2, r3
    11f4:	1a000004 	bne	120c <malloc+0xb4>
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5932000 	ldr	r2, [r3]
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5832000 	str	r2, [r3]
    1208:	ea00000e 	b	1248 <malloc+0xf0>
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5932004 	ldr	r2, [r3, #4]
    1214:	e51b3010 	ldr	r3, [fp, #-16]
    1218:	e0422003 	sub	r2, r2, r3
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5832004 	str	r2, [r3, #4]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5933004 	ldr	r3, [r3, #4]
    122c:	e1a03183 	lsl	r3, r3, #3
    1230:	e51b2008 	ldr	r2, [fp, #-8]
    1234:	e0823003 	add	r3, r2, r3
    1238:	e50b3008 	str	r3, [fp, #-8]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e51b2010 	ldr	r2, [fp, #-16]
    1244:	e5832004 	str	r2, [r3, #4]
    1248:	e59f2068 	ldr	r2, [pc, #104]	@ 12b8 <malloc+0x160>
    124c:	e51b300c 	ldr	r3, [fp, #-12]
    1250:	e5823000 	str	r3, [r2]
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e2833008 	add	r3, r3, #8
    125c:	ea000012 	b	12ac <malloc+0x154>
    1260:	e59f3050 	ldr	r3, [pc, #80]	@ 12b8 <malloc+0x160>
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e51b2008 	ldr	r2, [fp, #-8]
    126c:	e1520003 	cmp	r2, r3
    1270:	1a000007 	bne	1294 <malloc+0x13c>
    1274:	e51b0010 	ldr	r0, [fp, #-16]
    1278:	ebffff94 	bl	10d0 <morecore>
    127c:	e50b0008 	str	r0, [fp, #-8]
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e3530000 	cmp	r3, #0
    1288:	1a000001 	bne	1294 <malloc+0x13c>
    128c:	e3a03000 	mov	r3, #0
    1290:	ea000005 	b	12ac <malloc+0x154>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e50b300c 	str	r3, [fp, #-12]
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e50b3008 	str	r3, [fp, #-8]
    12a8:	eaffffc8 	b	11d0 <malloc+0x78>
    12ac:	e1a00003 	mov	r0, r3
    12b0:	e24bd004 	sub	sp, fp, #4
    12b4:	e8bd8800 	pop	{fp, pc}
    12b8:	0000145c 	.word	0x0000145c
    12bc:	00001454 	.word	0x00001454

000012c0 <__udivsi3>:
    12c0:	e2512001 	subs	r2, r1, #1
    12c4:	012fff1e 	bxeq	lr
    12c8:	3a000036 	bcc	13a8 <__udivsi3+0xe8>
    12cc:	e1500001 	cmp	r0, r1
    12d0:	9a000022 	bls	1360 <__udivsi3+0xa0>
    12d4:	e1110002 	tst	r1, r2
    12d8:	0a000023 	beq	136c <__udivsi3+0xac>
    12dc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12e0:	01a01181 	lsleq	r1, r1, #3
    12e4:	03a03008 	moveq	r3, #8
    12e8:	13a03001 	movne	r3, #1
    12ec:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12f0:	31510000 	cmpcc	r1, r0
    12f4:	31a01201 	lslcc	r1, r1, #4
    12f8:	31a03203 	lslcc	r3, r3, #4
    12fc:	3afffffa 	bcc	12ec <__udivsi3+0x2c>
    1300:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1304:	31510000 	cmpcc	r1, r0
    1308:	31a01081 	lslcc	r1, r1, #1
    130c:	31a03083 	lslcc	r3, r3, #1
    1310:	3afffffa 	bcc	1300 <__udivsi3+0x40>
    1314:	e3a02000 	mov	r2, #0
    1318:	e1500001 	cmp	r0, r1
    131c:	20400001 	subcs	r0, r0, r1
    1320:	21822003 	orrcs	r2, r2, r3
    1324:	e15000a1 	cmp	r0, r1, lsr #1
    1328:	204000a1 	subcs	r0, r0, r1, lsr #1
    132c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1330:	e1500121 	cmp	r0, r1, lsr #2
    1334:	20400121 	subcs	r0, r0, r1, lsr #2
    1338:	21822123 	orrcs	r2, r2, r3, lsr #2
    133c:	e15001a1 	cmp	r0, r1, lsr #3
    1340:	204001a1 	subcs	r0, r0, r1, lsr #3
    1344:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1348:	e3500000 	cmp	r0, #0
    134c:	11b03223 	lsrsne	r3, r3, #4
    1350:	11a01221 	lsrne	r1, r1, #4
    1354:	1affffef 	bne	1318 <__udivsi3+0x58>
    1358:	e1a00002 	mov	r0, r2
    135c:	e12fff1e 	bx	lr
    1360:	03a00001 	moveq	r0, #1
    1364:	13a00000 	movne	r0, #0
    1368:	e12fff1e 	bx	lr
    136c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1370:	21a01821 	lsrcs	r1, r1, #16
    1374:	23a02010 	movcs	r2, #16
    1378:	33a02000 	movcc	r2, #0
    137c:	e3510c01 	cmp	r1, #256	@ 0x100
    1380:	21a01421 	lsrcs	r1, r1, #8
    1384:	22822008 	addcs	r2, r2, #8
    1388:	e3510010 	cmp	r1, #16
    138c:	21a01221 	lsrcs	r1, r1, #4
    1390:	22822004 	addcs	r2, r2, #4
    1394:	e3510004 	cmp	r1, #4
    1398:	82822003 	addhi	r2, r2, #3
    139c:	908220a1 	addls	r2, r2, r1, lsr #1
    13a0:	e1a00230 	lsr	r0, r0, r2
    13a4:	e12fff1e 	bx	lr
    13a8:	e3500000 	cmp	r0, #0
    13ac:	13e00000 	mvnne	r0, #0
    13b0:	ea000007 	b	13d4 <__aeabi_idiv0>

000013b4 <__aeabi_uidivmod>:
    13b4:	e3510000 	cmp	r1, #0
    13b8:	0afffffa 	beq	13a8 <__udivsi3+0xe8>
    13bc:	e92d4003 	push	{r0, r1, lr}
    13c0:	ebffffbe 	bl	12c0 <__udivsi3>
    13c4:	e8bd4006 	pop	{r1, r2, lr}
    13c8:	e0030092 	mul	r3, r2, r0
    13cc:	e0411003 	sub	r1, r1, r3
    13d0:	e12fff1e 	bx	lr

000013d4 <__aeabi_idiv0>:
    13d4:	e12fff1e 	bx	lr
