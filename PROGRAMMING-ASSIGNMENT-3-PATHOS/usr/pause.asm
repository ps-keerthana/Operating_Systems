
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <isdigit>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e1a03000 	mov	r3, r0
      10:	e54b3005 	strb	r3, [fp, #-5]
      14:	e55b3005 	ldrb	r3, [fp, #-5]
      18:	e353002f 	cmp	r3, #47	@ 0x2f
      1c:	9a000004 	bls	34 <isdigit+0x34>
      20:	e55b3005 	ldrb	r3, [fp, #-5]
      24:	e3530039 	cmp	r3, #57	@ 0x39
      28:	8a000001 	bhi	34 <isdigit+0x34>
      2c:	e3a03001 	mov	r3, #1
      30:	ea000000 	b	38 <isdigit+0x38>
      34:	e3a03000 	mov	r3, #0
      38:	e1a00003 	mov	r0, r3
      3c:	e28bd000 	add	sp, fp, #0
      40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      44:	e12fff1e 	bx	lr

00000048 <main>:
      48:	e92d4800 	push	{fp, lr}
      4c:	e28db004 	add	fp, sp, #4
      50:	e24dd018 	sub	sp, sp, #24
      54:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      58:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      60:	e3530001 	cmp	r3, #1
      64:	ca000003 	bgt	78 <main+0x30>
      68:	e59f10b8 	ldr	r1, [pc, #184]	@ 128 <main+0xe0>
      6c:	e3a00001 	mov	r0, #1
      70:	eb000338 	bl	d58 <printf>
      74:	eb0001f8 	bl	85c <exit>
      78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      7c:	e5933004 	ldr	r3, [r3, #4]
      80:	e50b3008 	str	r3, [fp, #-8]
      84:	ea00000d 	b	c0 <main+0x78>
      88:	e51b3008 	ldr	r3, [fp, #-8]
      8c:	e5d33000 	ldrb	r3, [r3]
      90:	e1a00003 	mov	r0, r3
      94:	ebffffd9 	bl	0 <isdigit>
      98:	e1a03000 	mov	r3, r0
      9c:	e3530000 	cmp	r3, #0
      a0:	1a000003 	bne	b4 <main+0x6c>
      a4:	e59f1080 	ldr	r1, [pc, #128]	@ 12c <main+0xe4>
      a8:	e3a00001 	mov	r0, #1
      ac:	eb000329 	bl	d58 <printf>
      b0:	eb0001e9 	bl	85c <exit>
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	e51b3008 	ldr	r3, [fp, #-8]
      c4:	e5d33000 	ldrb	r3, [r3]
      c8:	e3530000 	cmp	r3, #0
      cc:	1affffed 	bne	88 <main+0x40>
      d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      d4:	e2833004 	add	r3, r3, #4
      d8:	e5933000 	ldr	r3, [r3]
      dc:	e1a00003 	mov	r0, r3
      e0:	eb00013a 	bl	5d0 <atoi>
      e4:	e50b000c 	str	r0, [fp, #-12]
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e3530000 	cmp	r3, #0
      f0:	aa000003 	bge	104 <main+0xbc>
      f4:	e59f1034 	ldr	r1, [pc, #52]	@ 130 <main+0xe8>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000315 	bl	d58 <printf>
     100:	eb0001d5 	bl	85c <exit>
     104:	e51b200c 	ldr	r2, [fp, #-12]
     108:	e1a03002 	mov	r3, r2
     10c:	e1a03103 	lsl	r3, r3, #2
     110:	e0833002 	add	r3, r3, r2
     114:	e1a03083 	lsl	r3, r3, #1
     118:	e50b3010 	str	r3, [fp, #-16]
     11c:	e51b0010 	ldr	r0, [fp, #-16]
     120:	eb00026f 	bl	ae4 <sleep>
     124:	eb0001cc 	bl	85c <exit>
     128:	00001414 	.word	0x00001414
     12c:	0000142c 	.word	0x0000142c
     130:	0000145c 	.word	0x0000145c

00000134 <pg_pte>:
     134:	e92d4800 	push	{fp, lr}
     138:	e28db004 	add	fp, sp, #4
     13c:	e24dd008 	sub	sp, sp, #8
     140:	e50b0008 	str	r0, [fp, #-8]
     144:	e51b1008 	ldr	r1, [fp, #-8]
     148:	e3a00065 	mov	r0, #101	@ 0x65
     14c:	eb0002a3 	bl	be0 <syscall>
     150:	e1a03000 	mov	r3, r0
     154:	e1a00003 	mov	r0, r3
     158:	e24bd004 	sub	sp, fp, #4
     15c:	e8bd8800 	pop	{fp, pc}

00000160 <pg_pa>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd008 	sub	sp, sp, #8
     16c:	e50b0008 	str	r0, [fp, #-8]
     170:	e51b1008 	ldr	r1, [fp, #-8]
     174:	e3a00066 	mov	r0, #102	@ 0x66
     178:	eb000298 	bl	be0 <syscall>
     17c:	e1a03000 	mov	r3, r0
     180:	e1a00003 	mov	r0, r3
     184:	e24bd004 	sub	sp, fp, #4
     188:	e8bd8800 	pop	{fp, pc}

0000018c <pg_flags>:
     18c:	e92d4800 	push	{fp, lr}
     190:	e28db004 	add	fp, sp, #4
     194:	e24dd008 	sub	sp, sp, #8
     198:	e50b0008 	str	r0, [fp, #-8]
     19c:	e51b1008 	ldr	r1, [fp, #-8]
     1a0:	e3a00067 	mov	r0, #103	@ 0x67
     1a4:	eb00028d 	bl	be0 <syscall>
     1a8:	e1a03000 	mov	r3, r0
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e24bd004 	sub	sp, fp, #4
     1b4:	e8bd8800 	pop	{fp, pc}

000001b8 <kpt>:
     1b8:	e92d4800 	push	{fp, lr}
     1bc:	e28db004 	add	fp, sp, #4
     1c0:	e3a00068 	mov	r0, #104	@ 0x68
     1c4:	eb000285 	bl	be0 <syscall>
     1c8:	e1a03000 	mov	r3, r0
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e8bd8800 	pop	{fp, pc}

000001d4 <ugetpid>:
     1d4:	e92d4800 	push	{fp, lr}
     1d8:	e28db004 	add	fp, sp, #4
     1dc:	e3a00069 	mov	r0, #105	@ 0x69
     1e0:	eb00027e 	bl	be0 <syscall>
     1e4:	e1a03000 	mov	r3, r0
     1e8:	e1a00003 	mov	r0, r3
     1ec:	e8bd8800 	pop	{fp, pc}

000001f0 <strcpy>:
     1f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f4:	e28db000 	add	fp, sp, #0
     1f8:	e24dd014 	sub	sp, sp, #20
     1fc:	e50b0010 	str	r0, [fp, #-16]
     200:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     204:	e51b3010 	ldr	r3, [fp, #-16]
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	e1a00000 	nop			@ (mov r0, r0)
     210:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     214:	e2823001 	add	r3, r2, #1
     218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     21c:	e51b3010 	ldr	r3, [fp, #-16]
     220:	e2831001 	add	r1, r3, #1
     224:	e50b1010 	str	r1, [fp, #-16]
     228:	e5d22000 	ldrb	r2, [r2]
     22c:	e5c32000 	strb	r2, [r3]
     230:	e5d33000 	ldrb	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	1afffff4 	bne	210 <strcpy+0x20>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strcmp>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd00c 	sub	sp, sp, #12
     25c:	e50b0008 	str	r0, [fp, #-8]
     260:	e50b100c 	str	r1, [fp, #-12]
     264:	ea000005 	b	280 <strcmp+0x30>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e2833001 	add	r3, r3, #1
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e2833001 	add	r3, r3, #1
     27c:	e50b300c 	str	r3, [fp, #-12]
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	0a000005 	beq	2a8 <strcmp+0x58>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e5d32000 	ldrb	r2, [r3]
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e1520003 	cmp	r2, r3
     2a4:	0affffef 	beq	268 <strcmp+0x18>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e5d33000 	ldrb	r3, [r3]
     2b0:	e1a02003 	mov	r2, r3
     2b4:	e51b300c 	ldr	r3, [fp, #-12]
     2b8:	e5d33000 	ldrb	r3, [r3]
     2bc:	e0423003 	sub	r3, r2, r3
     2c0:	e1a00003 	mov	r0, r3
     2c4:	e28bd000 	add	sp, fp, #0
     2c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2cc:	e12fff1e 	bx	lr

000002d0 <strlen>:
     2d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d4:	e28db000 	add	fp, sp, #0
     2d8:	e24dd014 	sub	sp, sp, #20
     2dc:	e50b0010 	str	r0, [fp, #-16]
     2e0:	e3a03000 	mov	r3, #0
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	ea000002 	b	2f8 <strlen+0x28>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e51b2010 	ldr	r2, [fp, #-16]
     300:	e0823003 	add	r3, r2, r3
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff6 	bne	2ec <strlen+0x1c>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <memset>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     330:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     334:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     338:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     348:	e54b300d 	strb	r3, [fp, #-13]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e1a03002 	mov	r3, r2
     354:	e1a03403 	lsl	r3, r3, #8
     358:	e0833002 	add	r3, r3, r2
     35c:	e1a03803 	lsl	r3, r3, #16
     360:	e1a02003 	mov	r2, r3
     364:	e55b300d 	ldrb	r3, [fp, #-13]
     368:	e1a03403 	lsl	r3, r3, #8
     36c:	e1822003 	orr	r2, r2, r3
     370:	e55b300d 	ldrb	r3, [fp, #-13]
     374:	e1823003 	orr	r3, r2, r3
     378:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     37c:	ea000008 	b	3a4 <memset+0x80>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e55b200d 	ldrb	r2, [fp, #-13]
     388:	e5c32000 	strb	r2, [r3]
     38c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     390:	e2433001 	sub	r3, r3, #1
     394:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2833001 	add	r3, r3, #1
     3a0:	e50b3008 	str	r3, [fp, #-8]
     3a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a8:	e3530000 	cmp	r3, #0
     3ac:	0a000003 	beq	3c0 <memset+0x9c>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2033003 	and	r3, r3, #3
     3b8:	e3530000 	cmp	r3, #0
     3bc:	1affffef 	bne	380 <memset+0x5c>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e50b300c 	str	r3, [fp, #-12]
     3c8:	ea000008 	b	3f0 <memset+0xcc>
     3cc:	e51b300c 	ldr	r3, [fp, #-12]
     3d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3d4:	e5832000 	str	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e2433004 	sub	r3, r3, #4
     3e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b300c 	ldr	r3, [fp, #-12]
     3e8:	e2833004 	add	r3, r3, #4
     3ec:	e50b300c 	str	r3, [fp, #-12]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f4:	e3530003 	cmp	r3, #3
     3f8:	8afffff3 	bhi	3cc <memset+0xa8>
     3fc:	e51b300c 	ldr	r3, [fp, #-12]
     400:	e50b3008 	str	r3, [fp, #-8]
     404:	ea000008 	b	42c <memset+0x108>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e55b200d 	ldrb	r2, [fp, #-13]
     410:	e5c32000 	strb	r2, [r3]
     414:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     418:	e2433001 	sub	r3, r3, #1
     41c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2833001 	add	r3, r3, #1
     428:	e50b3008 	str	r3, [fp, #-8]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e3530000 	cmp	r3, #0
     434:	1afffff3 	bne	408 <memset+0xe4>
     438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     43c:	e1a00003 	mov	r0, r3
     440:	e28bd000 	add	sp, fp, #0
     444:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     448:	e12fff1e 	bx	lr

0000044c <strchr>:
     44c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     450:	e28db000 	add	fp, sp, #0
     454:	e24dd00c 	sub	sp, sp, #12
     458:	e50b0008 	str	r0, [fp, #-8]
     45c:	e1a03001 	mov	r3, r1
     460:	e54b3009 	strb	r3, [fp, #-9]
     464:	ea000009 	b	490 <strchr+0x44>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e55b2009 	ldrb	r2, [fp, #-9]
     474:	e1520003 	cmp	r2, r3
     478:	1a000001 	bne	484 <strchr+0x38>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	ea000007 	b	4a4 <strchr+0x58>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2833001 	add	r3, r3, #1
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e3530000 	cmp	r3, #0
     49c:	1afffff1 	bne	468 <strchr+0x1c>
     4a0:	e3a03000 	mov	r3, #0
     4a4:	e1a00003 	mov	r0, r3
     4a8:	e28bd000 	add	sp, fp, #0
     4ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b0:	e12fff1e 	bx	lr

000004b4 <gets>:
     4b4:	e92d4800 	push	{fp, lr}
     4b8:	e28db004 	add	fp, sp, #4
     4bc:	e24dd018 	sub	sp, sp, #24
     4c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4c8:	e3a03000 	mov	r3, #0
     4cc:	e50b3008 	str	r3, [fp, #-8]
     4d0:	ea000016 	b	530 <gets+0x7c>
     4d4:	e24b300d 	sub	r3, fp, #13
     4d8:	e3a02001 	mov	r2, #1
     4dc:	e1a01003 	mov	r1, r3
     4e0:	e3a00000 	mov	r0, #0
     4e4:	eb0000f7 	bl	8c8 <read>
     4e8:	e50b000c 	str	r0, [fp, #-12]
     4ec:	e51b300c 	ldr	r3, [fp, #-12]
     4f0:	e3530000 	cmp	r3, #0
     4f4:	da000013 	ble	548 <gets+0x94>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2832001 	add	r2, r3, #1
     500:	e50b2008 	str	r2, [fp, #-8]
     504:	e1a02003 	mov	r2, r3
     508:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     50c:	e0833002 	add	r3, r3, r2
     510:	e55b200d 	ldrb	r2, [fp, #-13]
     514:	e5c32000 	strb	r2, [r3]
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e353000a 	cmp	r3, #10
     520:	0a000009 	beq	54c <gets+0x98>
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e353000d 	cmp	r3, #13
     52c:	0a000006 	beq	54c <gets+0x98>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e2833001 	add	r3, r3, #1
     538:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     53c:	e1520003 	cmp	r2, r3
     540:	caffffe3 	bgt	4d4 <gets+0x20>
     544:	ea000000 	b	54c <gets+0x98>
     548:	e1a00000 	nop			@ (mov r0, r0)
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     554:	e0823003 	add	r3, r2, r3
     558:	e3a02000 	mov	r2, #0
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     564:	e1a00003 	mov	r0, r3
     568:	e24bd004 	sub	sp, fp, #4
     56c:	e8bd8800 	pop	{fp, pc}

00000570 <stat>:
     570:	e92d4800 	push	{fp, lr}
     574:	e28db004 	add	fp, sp, #4
     578:	e24dd010 	sub	sp, sp, #16
     57c:	e50b0010 	str	r0, [fp, #-16]
     580:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     584:	e3a01000 	mov	r1, #0
     588:	e51b0010 	ldr	r0, [fp, #-16]
     58c:	eb0000fa 	bl	97c <open>
     590:	e50b0008 	str	r0, [fp, #-8]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e3530000 	cmp	r3, #0
     59c:	aa000001 	bge	5a8 <stat+0x38>
     5a0:	e3e03000 	mvn	r3, #0
     5a4:	ea000006 	b	5c4 <stat+0x54>
     5a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5ac:	e51b0008 	ldr	r0, [fp, #-8]
     5b0:	eb00010c 	bl	9e8 <fstat>
     5b4:	e50b000c 	str	r0, [fp, #-12]
     5b8:	e51b0008 	ldr	r0, [fp, #-8]
     5bc:	eb0000d3 	bl	910 <close>
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e24bd004 	sub	sp, fp, #4
     5cc:	e8bd8800 	pop	{fp, pc}

000005d0 <atoi>:
     5d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d4:	e28db000 	add	fp, sp, #0
     5d8:	e24dd014 	sub	sp, sp, #20
     5dc:	e50b0010 	str	r0, [fp, #-16]
     5e0:	e3a03000 	mov	r3, #0
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	ea00000c 	b	620 <atoi+0x50>
     5ec:	e51b2008 	ldr	r2, [fp, #-8]
     5f0:	e1a03002 	mov	r3, r2
     5f4:	e1a03103 	lsl	r3, r3, #2
     5f8:	e0833002 	add	r3, r3, r2
     5fc:	e1a03083 	lsl	r3, r3, #1
     600:	e1a01003 	mov	r1, r3
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e2832001 	add	r2, r3, #1
     60c:	e50b2010 	str	r2, [fp, #-16]
     610:	e5d33000 	ldrb	r3, [r3]
     614:	e0813003 	add	r3, r1, r3
     618:	e2433030 	sub	r3, r3, #48	@ 0x30
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	e51b3010 	ldr	r3, [fp, #-16]
     624:	e5d33000 	ldrb	r3, [r3]
     628:	e353002f 	cmp	r3, #47	@ 0x2f
     62c:	9a000003 	bls	640 <atoi+0x70>
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e5d33000 	ldrb	r3, [r3]
     638:	e3530039 	cmp	r3, #57	@ 0x39
     63c:	9affffea 	bls	5ec <atoi+0x1c>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <memmove>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd01c 	sub	sp, sp, #28
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     678:	e50b300c 	str	r3, [fp, #-12]
     67c:	ea000007 	b	6a0 <memmove+0x4c>
     680:	e51b200c 	ldr	r2, [fp, #-12]
     684:	e2823001 	add	r3, r2, #1
     688:	e50b300c 	str	r3, [fp, #-12]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2831001 	add	r1, r3, #1
     694:	e50b1008 	str	r1, [fp, #-8]
     698:	e5d22000 	ldrb	r2, [r2]
     69c:	e5c32000 	strb	r2, [r3]
     6a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a4:	e2432001 	sub	r2, r3, #1
     6a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6ac:	e3530000 	cmp	r3, #0
     6b0:	cafffff2 	bgt	680 <memmove+0x2c>
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e1a00003 	mov	r0, r3
     6bc:	e28bd000 	add	sp, fp, #0
     6c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <strncmp>:
     6c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6cc:	e28db000 	add	fp, sp, #0
     6d0:	e24dd014 	sub	sp, sp, #20
     6d4:	e50b0008 	str	r0, [fp, #-8]
     6d8:	e50b100c 	str	r1, [fp, #-12]
     6dc:	e50b2010 	str	r2, [fp, #-16]
     6e0:	ea000008 	b	708 <strncmp+0x40>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2833001 	add	r3, r3, #1
     6ec:	e50b3008 	str	r3, [fp, #-8]
     6f0:	e51b300c 	ldr	r3, [fp, #-12]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b300c 	str	r3, [fp, #-12]
     6fc:	e51b3010 	ldr	r3, [fp, #-16]
     700:	e2433001 	sub	r3, r3, #1
     704:	e50b3010 	str	r3, [fp, #-16]
     708:	e51b3010 	ldr	r3, [fp, #-16]
     70c:	e3530000 	cmp	r3, #0
     710:	da00000d 	ble	74c <strncmp+0x84>
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e5d33000 	ldrb	r3, [r3]
     71c:	e3530000 	cmp	r3, #0
     720:	0a000009 	beq	74c <strncmp+0x84>
     724:	e51b300c 	ldr	r3, [fp, #-12]
     728:	e5d33000 	ldrb	r3, [r3]
     72c:	e3530000 	cmp	r3, #0
     730:	0a000005 	beq	74c <strncmp+0x84>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5d32000 	ldrb	r2, [r3]
     73c:	e51b300c 	ldr	r3, [fp, #-12]
     740:	e5d33000 	ldrb	r3, [r3]
     744:	e1520003 	cmp	r2, r3
     748:	0affffe5 	beq	6e4 <strncmp+0x1c>
     74c:	e51b3010 	ldr	r3, [fp, #-16]
     750:	e3530000 	cmp	r3, #0
     754:	1a000001 	bne	760 <strncmp+0x98>
     758:	e3a03000 	mov	r3, #0
     75c:	ea000005 	b	778 <strncmp+0xb0>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5d33000 	ldrb	r3, [r3]
     768:	e1a02003 	mov	r2, r3
     76c:	e51b300c 	ldr	r3, [fp, #-12]
     770:	e5d33000 	ldrb	r3, [r3]
     774:	e0423003 	sub	r3, r2, r3
     778:	e1a00003 	mov	r0, r3
     77c:	e28bd000 	add	sp, fp, #0
     780:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <strncpy>:
     788:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     78c:	e28db000 	add	fp, sp, #0
     790:	e24dd01c 	sub	sp, sp, #28
     794:	e50b0010 	str	r0, [fp, #-16]
     798:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     79c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7a0:	e51b3010 	ldr	r3, [fp, #-16]
     7a4:	e50b3008 	str	r3, [fp, #-8]
     7a8:	ea00000a 	b	7d8 <strncpy+0x50>
     7ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7b0:	e2823001 	add	r3, r2, #1
     7b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2831001 	add	r1, r3, #1
     7c0:	e50b1008 	str	r1, [fp, #-8]
     7c4:	e5d22000 	ldrb	r2, [r2]
     7c8:	e5c32000 	strb	r2, [r3]
     7cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d0:	e2433001 	sub	r3, r3, #1
     7d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7dc:	e3530000 	cmp	r3, #0
     7e0:	da00000c 	ble	818 <strncpy+0x90>
     7e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e3530000 	cmp	r3, #0
     7f0:	1affffed 	bne	7ac <strncpy+0x24>
     7f4:	ea000007 	b	818 <strncpy+0x90>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e2832001 	add	r2, r3, #1
     800:	e50b2008 	str	r2, [fp, #-8]
     804:	e3a02000 	mov	r2, #0
     808:	e5c32000 	strb	r2, [r3]
     80c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     810:	e2433001 	sub	r3, r3, #1
     814:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     81c:	e3530000 	cmp	r3, #0
     820:	cafffff4 	bgt	7f8 <strncpy+0x70>
     824:	e51b3010 	ldr	r3, [fp, #-16]
     828:	e1a00003 	mov	r0, r3
     82c:	e28bd000 	add	sp, fp, #0
     830:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <fork>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00001 	mov	r0, #1
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <exit>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00002 	mov	r0, #2
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <wait>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00003 	mov	r0, #3
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <pipe>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00004 	mov	r0, #4
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <read>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00005 	mov	r0, #5
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <write>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00010 	mov	r0, #16
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <close>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00015 	mov	r0, #21
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <kill>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00006 	mov	r0, #6
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <exec>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00007 	mov	r0, #7
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <open>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a0000f 	mov	r0, #15
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <mknod>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00011 	mov	r0, #17
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <unlink>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00012 	mov	r0, #18
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <fstat>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00008 	mov	r0, #8
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <link>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00013 	mov	r0, #19
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <mkdir>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00014 	mov	r0, #20
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <chdir>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00009 	mov	r0, #9
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <dup>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000a 	mov	r0, #10
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <getpid>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0000b 	mov	r0, #11
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <sbrk>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0000c 	mov	r0, #12
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <sleep>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000d 	mov	r0, #13
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <uptime>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a0000e 	mov	r0, #14
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <proclist>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00016 	mov	r0, #22
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <settickets>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00017 	mov	r0, #23
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <srand>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00018 	mov	r0, #24
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <getpinfo>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00019 	mov	r0, #25
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <print_pt>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0006a 	mov	r0, #106	@ 0x6a
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <syscall>:
     be0:	ef000000 	svc	0x00000000
     be4:	e12fff1e 	bx	lr

00000be8 <putc>:
     be8:	e92d4800 	push	{fp, lr}
     bec:	e28db004 	add	fp, sp, #4
     bf0:	e24dd008 	sub	sp, sp, #8
     bf4:	e50b0008 	str	r0, [fp, #-8]
     bf8:	e1a03001 	mov	r3, r1
     bfc:	e54b3009 	strb	r3, [fp, #-9]
     c00:	e24b3009 	sub	r3, fp, #9
     c04:	e3a02001 	mov	r2, #1
     c08:	e1a01003 	mov	r1, r3
     c0c:	e51b0008 	ldr	r0, [fp, #-8]
     c10:	ebffff35 	bl	8ec <write>
     c14:	e1a00000 	nop			@ (mov r0, r0)
     c18:	e24bd004 	sub	sp, fp, #4
     c1c:	e8bd8800 	pop	{fp, pc}

00000c20 <printint>:
     c20:	e92d4800 	push	{fp, lr}
     c24:	e28db004 	add	fp, sp, #4
     c28:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c2c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c30:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c34:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c38:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c3c:	e3a03000 	mov	r3, #0
     c40:	e50b300c 	str	r3, [fp, #-12]
     c44:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c48:	e3530000 	cmp	r3, #0
     c4c:	0a000008 	beq	c74 <printint+0x54>
     c50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c54:	e3530000 	cmp	r3, #0
     c58:	aa000005 	bge	c74 <printint+0x54>
     c5c:	e3a03001 	mov	r3, #1
     c60:	e50b300c 	str	r3, [fp, #-12]
     c64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c68:	e2633000 	rsb	r3, r3, #0
     c6c:	e50b3010 	str	r3, [fp, #-16]
     c70:	ea000001 	b	c7c <printint+0x5c>
     c74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c78:	e50b3010 	str	r3, [fp, #-16]
     c7c:	e3a03000 	mov	r3, #0
     c80:	e50b3008 	str	r3, [fp, #-8]
     c84:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c88:	e51b3010 	ldr	r3, [fp, #-16]
     c8c:	e1a01002 	mov	r1, r2
     c90:	e1a00003 	mov	r0, r3
     c94:	eb0001d5 	bl	13f0 <__aeabi_uidivmod>
     c98:	e1a03001 	mov	r3, r1
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e2832001 	add	r2, r3, #1
     ca8:	e50b2008 	str	r2, [fp, #-8]
     cac:	e59f20a0 	ldr	r2, [pc, #160]	@ d54 <printint+0x134>
     cb0:	e7d22001 	ldrb	r2, [r2, r1]
     cb4:	e2433004 	sub	r3, r3, #4
     cb8:	e083300b 	add	r3, r3, fp
     cbc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cc0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b0010 	ldr	r0, [fp, #-16]
     ccc:	eb00018a 	bl	12fc <__udivsi3>
     cd0:	e1a03000 	mov	r3, r0
     cd4:	e50b3010 	str	r3, [fp, #-16]
     cd8:	e51b3010 	ldr	r3, [fp, #-16]
     cdc:	e3530000 	cmp	r3, #0
     ce0:	1affffe7 	bne	c84 <printint+0x64>
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e3530000 	cmp	r3, #0
     cec:	0a00000e 	beq	d2c <printint+0x10c>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e2832001 	add	r2, r3, #1
     cf8:	e50b2008 	str	r2, [fp, #-8]
     cfc:	e2433004 	sub	r3, r3, #4
     d00:	e083300b 	add	r3, r3, fp
     d04:	e3a0202d 	mov	r2, #45	@ 0x2d
     d08:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d0c:	ea000006 	b	d2c <printint+0x10c>
     d10:	e24b2020 	sub	r2, fp, #32
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e0823003 	add	r3, r2, r3
     d1c:	e5d33000 	ldrb	r3, [r3]
     d20:	e1a01003 	mov	r1, r3
     d24:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d28:	ebffffae 	bl	be8 <putc>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e2433001 	sub	r3, r3, #1
     d34:	e50b3008 	str	r3, [fp, #-8]
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e3530000 	cmp	r3, #0
     d40:	aafffff2 	bge	d10 <printint+0xf0>
     d44:	e1a00000 	nop			@ (mov r0, r0)
     d48:	e1a00000 	nop			@ (mov r0, r0)
     d4c:	e24bd004 	sub	sp, fp, #4
     d50:	e8bd8800 	pop	{fp, pc}
     d54:	0000148c 	.word	0x0000148c

00000d58 <printf>:
     d58:	e92d000e 	push	{r1, r2, r3}
     d5c:	e92d4800 	push	{fp, lr}
     d60:	e28db004 	add	fp, sp, #4
     d64:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d68:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d6c:	e3a03000 	mov	r3, #0
     d70:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d74:	e28b3008 	add	r3, fp, #8
     d78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d7c:	e3a03000 	mov	r3, #0
     d80:	e50b3010 	str	r3, [fp, #-16]
     d84:	ea000074 	b	f5c <printf+0x204>
     d88:	e59b2004 	ldr	r2, [fp, #4]
     d8c:	e51b3010 	ldr	r3, [fp, #-16]
     d90:	e0823003 	add	r3, r2, r3
     d94:	e5d33000 	ldrb	r3, [r3]
     d98:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da0:	e3530000 	cmp	r3, #0
     da4:	1a00000b 	bne	dd8 <printf+0x80>
     da8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dac:	e3530025 	cmp	r3, #37	@ 0x25
     db0:	1a000002 	bne	dc0 <printf+0x68>
     db4:	e3a03025 	mov	r3, #37	@ 0x25
     db8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dbc:	ea000063 	b	f50 <printf+0x1f8>
     dc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc4:	e6ef3073 	uxtb	r3, r3
     dc8:	e1a01003 	mov	r1, r3
     dcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd0:	ebffff84 	bl	be8 <putc>
     dd4:	ea00005d 	b	f50 <printf+0x1f8>
     dd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ddc:	e3530025 	cmp	r3, #37	@ 0x25
     de0:	1a00005a 	bne	f50 <printf+0x1f8>
     de4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de8:	e3530064 	cmp	r3, #100	@ 0x64
     dec:	1a00000a 	bne	e1c <printf+0xc4>
     df0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e1a01003 	mov	r1, r3
     dfc:	e3a03001 	mov	r3, #1
     e00:	e3a0200a 	mov	r2, #10
     e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e08:	ebffff84 	bl	c20 <printint>
     e0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e10:	e2833004 	add	r3, r3, #4
     e14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e18:	ea00004a 	b	f48 <printf+0x1f0>
     e1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e20:	e3530078 	cmp	r3, #120	@ 0x78
     e24:	0a000002 	beq	e34 <printf+0xdc>
     e28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e2c:	e3530070 	cmp	r3, #112	@ 0x70
     e30:	1a00000a 	bne	e60 <printf+0x108>
     e34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e1a01003 	mov	r1, r3
     e40:	e3a03000 	mov	r3, #0
     e44:	e3a02010 	mov	r2, #16
     e48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e4c:	ebffff73 	bl	c20 <printint>
     e50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e54:	e2833004 	add	r3, r3, #4
     e58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e5c:	ea000039 	b	f48 <printf+0x1f0>
     e60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e64:	e3530073 	cmp	r3, #115	@ 0x73
     e68:	1a000018 	bne	ed0 <printf+0x178>
     e6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e70:	e5933000 	ldr	r3, [r3]
     e74:	e50b300c 	str	r3, [fp, #-12]
     e78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e7c:	e2833004 	add	r3, r3, #4
     e80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e3530000 	cmp	r3, #0
     e8c:	1a00000a 	bne	ebc <printf+0x164>
     e90:	e59f30f4 	ldr	r3, [pc, #244]	@ f8c <printf+0x234>
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	ea000007 	b	ebc <printf+0x164>
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e5d33000 	ldrb	r3, [r3]
     ea4:	e1a01003 	mov	r1, r3
     ea8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eac:	ebffff4d 	bl	be8 <putc>
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e2833001 	add	r3, r3, #1
     eb8:	e50b300c 	str	r3, [fp, #-12]
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5d33000 	ldrb	r3, [r3]
     ec4:	e3530000 	cmp	r3, #0
     ec8:	1afffff3 	bne	e9c <printf+0x144>
     ecc:	ea00001d 	b	f48 <printf+0x1f0>
     ed0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed4:	e3530063 	cmp	r3, #99	@ 0x63
     ed8:	1a000009 	bne	f04 <printf+0x1ac>
     edc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e6ef3073 	uxtb	r3, r3
     ee8:	e1a01003 	mov	r1, r3
     eec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef0:	ebffff3c 	bl	be8 <putc>
     ef4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ef8:	e2833004 	add	r3, r3, #4
     efc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f00:	ea000010 	b	f48 <printf+0x1f0>
     f04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f08:	e3530025 	cmp	r3, #37	@ 0x25
     f0c:	1a000005 	bne	f28 <printf+0x1d0>
     f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e6ef3073 	uxtb	r3, r3
     f18:	e1a01003 	mov	r1, r3
     f1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f20:	ebffff30 	bl	be8 <putc>
     f24:	ea000007 	b	f48 <printf+0x1f0>
     f28:	e3a01025 	mov	r1, #37	@ 0x25
     f2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f30:	ebffff2c 	bl	be8 <putc>
     f34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f38:	e6ef3073 	uxtb	r3, r3
     f3c:	e1a01003 	mov	r1, r3
     f40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f44:	ebffff27 	bl	be8 <putc>
     f48:	e3a03000 	mov	r3, #0
     f4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f50:	e51b3010 	ldr	r3, [fp, #-16]
     f54:	e2833001 	add	r3, r3, #1
     f58:	e50b3010 	str	r3, [fp, #-16]
     f5c:	e59b2004 	ldr	r2, [fp, #4]
     f60:	e51b3010 	ldr	r3, [fp, #-16]
     f64:	e0823003 	add	r3, r2, r3
     f68:	e5d33000 	ldrb	r3, [r3]
     f6c:	e3530000 	cmp	r3, #0
     f70:	1affff84 	bne	d88 <printf+0x30>
     f74:	e1a00000 	nop			@ (mov r0, r0)
     f78:	e1a00000 	nop			@ (mov r0, r0)
     f7c:	e24bd004 	sub	sp, fp, #4
     f80:	e8bd4800 	pop	{fp, lr}
     f84:	e28dd00c 	add	sp, sp, #12
     f88:	e12fff1e 	bx	lr
     f8c:	00001484 	.word	0x00001484

00000f90 <free>:
     f90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f94:	e28db000 	add	fp, sp, #0
     f98:	e24dd014 	sub	sp, sp, #20
     f9c:	e50b0010 	str	r0, [fp, #-16]
     fa0:	e51b3010 	ldr	r3, [fp, #-16]
     fa4:	e2433008 	sub	r3, r3, #8
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e59f3154 	ldr	r3, [pc, #340]	@ 1108 <free+0x178>
     fb0:	e5933000 	ldr	r3, [r3]
     fb4:	e50b3008 	str	r3, [fp, #-8]
     fb8:	ea000010 	b	1000 <free+0x70>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e51b2008 	ldr	r2, [fp, #-8]
     fc8:	e1520003 	cmp	r2, r3
     fcc:	3a000008 	bcc	ff4 <free+0x64>
     fd0:	e51b200c 	ldr	r2, [fp, #-12]
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e1520003 	cmp	r2, r3
     fdc:	8a000010 	bhi	1024 <free+0x94>
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e51b200c 	ldr	r2, [fp, #-12]
     fec:	e1520003 	cmp	r2, r3
     ff0:	3a00000b 	bcc	1024 <free+0x94>
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	e51b200c 	ldr	r2, [fp, #-12]
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e1520003 	cmp	r2, r3
    100c:	9affffea 	bls	fbc <free+0x2c>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e51b200c 	ldr	r2, [fp, #-12]
    101c:	e1520003 	cmp	r2, r3
    1020:	2affffe5 	bcs	fbc <free+0x2c>
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5933004 	ldr	r3, [r3, #4]
    102c:	e1a03183 	lsl	r3, r3, #3
    1030:	e51b200c 	ldr	r2, [fp, #-12]
    1034:	e0822003 	add	r2, r2, r3
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e1520003 	cmp	r2, r3
    1044:	1a00000d 	bne	1080 <free+0xf0>
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e5932004 	ldr	r2, [r3, #4]
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e5933004 	ldr	r3, [r3, #4]
    105c:	e0822003 	add	r2, r2, r3
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e5832004 	str	r2, [r3, #4]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e5932000 	ldr	r2, [r3]
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5832000 	str	r2, [r3]
    107c:	ea000003 	b	1090 <free+0x100>
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5932000 	ldr	r2, [r3]
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5832000 	str	r2, [r3]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5933004 	ldr	r3, [r3, #4]
    1098:	e1a03183 	lsl	r3, r3, #3
    109c:	e51b2008 	ldr	r2, [fp, #-8]
    10a0:	e0823003 	add	r3, r2, r3
    10a4:	e51b200c 	ldr	r2, [fp, #-12]
    10a8:	e1520003 	cmp	r2, r3
    10ac:	1a00000b 	bne	10e0 <free+0x150>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e5932004 	ldr	r2, [r3, #4]
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e5933004 	ldr	r3, [r3, #4]
    10c0:	e0822003 	add	r2, r2, r3
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5832004 	str	r2, [r3, #4]
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e5932000 	ldr	r2, [r3]
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5832000 	str	r2, [r3]
    10dc:	ea000002 	b	10ec <free+0x15c>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e51b200c 	ldr	r2, [fp, #-12]
    10e8:	e5832000 	str	r2, [r3]
    10ec:	e59f2014 	ldr	r2, [pc, #20]	@ 1108 <free+0x178>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5823000 	str	r3, [r2]
    10f8:	e1a00000 	nop			@ (mov r0, r0)
    10fc:	e28bd000 	add	sp, fp, #0
    1100:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1104:	e12fff1e 	bx	lr
    1108:	000014a8 	.word	0x000014a8

0000110c <morecore>:
    110c:	e92d4800 	push	{fp, lr}
    1110:	e28db004 	add	fp, sp, #4
    1114:	e24dd010 	sub	sp, sp, #16
    1118:	e50b0010 	str	r0, [fp, #-16]
    111c:	e51b3010 	ldr	r3, [fp, #-16]
    1120:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1124:	2a000001 	bcs	1130 <morecore+0x24>
    1128:	e3a03a01 	mov	r3, #4096	@ 0x1000
    112c:	e50b3010 	str	r3, [fp, #-16]
    1130:	e51b3010 	ldr	r3, [fp, #-16]
    1134:	e1a03183 	lsl	r3, r3, #3
    1138:	e1a00003 	mov	r0, r3
    113c:	ebfffe5f 	bl	ac0 <sbrk>
    1140:	e50b0008 	str	r0, [fp, #-8]
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e3730001 	cmn	r3, #1
    114c:	1a000001 	bne	1158 <morecore+0x4c>
    1150:	e3a03000 	mov	r3, #0
    1154:	ea00000a 	b	1184 <morecore+0x78>
    1158:	e51b3008 	ldr	r3, [fp, #-8]
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e51b2010 	ldr	r2, [fp, #-16]
    1168:	e5832004 	str	r2, [r3, #4]
    116c:	e51b300c 	ldr	r3, [fp, #-12]
    1170:	e2833008 	add	r3, r3, #8
    1174:	e1a00003 	mov	r0, r3
    1178:	ebffff84 	bl	f90 <free>
    117c:	e59f300c 	ldr	r3, [pc, #12]	@ 1190 <morecore+0x84>
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e1a00003 	mov	r0, r3
    1188:	e24bd004 	sub	sp, fp, #4
    118c:	e8bd8800 	pop	{fp, pc}
    1190:	000014a8 	.word	0x000014a8

00001194 <malloc>:
    1194:	e92d4800 	push	{fp, lr}
    1198:	e28db004 	add	fp, sp, #4
    119c:	e24dd018 	sub	sp, sp, #24
    11a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a8:	e2833007 	add	r3, r3, #7
    11ac:	e1a031a3 	lsr	r3, r3, #3
    11b0:	e2833001 	add	r3, r3, #1
    11b4:	e50b3010 	str	r3, [fp, #-16]
    11b8:	e59f3134 	ldr	r3, [pc, #308]	@ 12f4 <malloc+0x160>
    11bc:	e5933000 	ldr	r3, [r3]
    11c0:	e50b300c 	str	r3, [fp, #-12]
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e3530000 	cmp	r3, #0
    11cc:	1a00000b 	bne	1200 <malloc+0x6c>
    11d0:	e59f3120 	ldr	r3, [pc, #288]	@ 12f8 <malloc+0x164>
    11d4:	e50b300c 	str	r3, [fp, #-12]
    11d8:	e59f2114 	ldr	r2, [pc, #276]	@ 12f4 <malloc+0x160>
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5823000 	str	r3, [r2]
    11e4:	e59f3108 	ldr	r3, [pc, #264]	@ 12f4 <malloc+0x160>
    11e8:	e5933000 	ldr	r3, [r3]
    11ec:	e59f2104 	ldr	r2, [pc, #260]	@ 12f8 <malloc+0x164>
    11f0:	e5823000 	str	r3, [r2]
    11f4:	e59f30fc 	ldr	r3, [pc, #252]	@ 12f8 <malloc+0x164>
    11f8:	e3a02000 	mov	r2, #0
    11fc:	e5832004 	str	r2, [r3, #4]
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e50b3008 	str	r3, [fp, #-8]
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5933004 	ldr	r3, [r3, #4]
    1214:	e51b2010 	ldr	r2, [fp, #-16]
    1218:	e1520003 	cmp	r2, r3
    121c:	8a00001e 	bhi	129c <malloc+0x108>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e5933004 	ldr	r3, [r3, #4]
    1228:	e51b2010 	ldr	r2, [fp, #-16]
    122c:	e1520003 	cmp	r2, r3
    1230:	1a000004 	bne	1248 <malloc+0xb4>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5932000 	ldr	r2, [r3]
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e5832000 	str	r2, [r3]
    1244:	ea00000e 	b	1284 <malloc+0xf0>
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e5932004 	ldr	r2, [r3, #4]
    1250:	e51b3010 	ldr	r3, [fp, #-16]
    1254:	e0422003 	sub	r2, r2, r3
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5832004 	str	r2, [r3, #4]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933004 	ldr	r3, [r3, #4]
    1268:	e1a03183 	lsl	r3, r3, #3
    126c:	e51b2008 	ldr	r2, [fp, #-8]
    1270:	e0823003 	add	r3, r2, r3
    1274:	e50b3008 	str	r3, [fp, #-8]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e51b2010 	ldr	r2, [fp, #-16]
    1280:	e5832004 	str	r2, [r3, #4]
    1284:	e59f2068 	ldr	r2, [pc, #104]	@ 12f4 <malloc+0x160>
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5823000 	str	r3, [r2]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e2833008 	add	r3, r3, #8
    1298:	ea000012 	b	12e8 <malloc+0x154>
    129c:	e59f3050 	ldr	r3, [pc, #80]	@ 12f4 <malloc+0x160>
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e51b2008 	ldr	r2, [fp, #-8]
    12a8:	e1520003 	cmp	r2, r3
    12ac:	1a000007 	bne	12d0 <malloc+0x13c>
    12b0:	e51b0010 	ldr	r0, [fp, #-16]
    12b4:	ebffff94 	bl	110c <morecore>
    12b8:	e50b0008 	str	r0, [fp, #-8]
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e3530000 	cmp	r3, #0
    12c4:	1a000001 	bne	12d0 <malloc+0x13c>
    12c8:	e3a03000 	mov	r3, #0
    12cc:	ea000005 	b	12e8 <malloc+0x154>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e50b3008 	str	r3, [fp, #-8]
    12e4:	eaffffc8 	b	120c <malloc+0x78>
    12e8:	e1a00003 	mov	r0, r3
    12ec:	e24bd004 	sub	sp, fp, #4
    12f0:	e8bd8800 	pop	{fp, pc}
    12f4:	000014a8 	.word	0x000014a8
    12f8:	000014a0 	.word	0x000014a0

000012fc <__udivsi3>:
    12fc:	e2512001 	subs	r2, r1, #1
    1300:	012fff1e 	bxeq	lr
    1304:	3a000036 	bcc	13e4 <__udivsi3+0xe8>
    1308:	e1500001 	cmp	r0, r1
    130c:	9a000022 	bls	139c <__udivsi3+0xa0>
    1310:	e1110002 	tst	r1, r2
    1314:	0a000023 	beq	13a8 <__udivsi3+0xac>
    1318:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    131c:	01a01181 	lsleq	r1, r1, #3
    1320:	03a03008 	moveq	r3, #8
    1324:	13a03001 	movne	r3, #1
    1328:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    132c:	31510000 	cmpcc	r1, r0
    1330:	31a01201 	lslcc	r1, r1, #4
    1334:	31a03203 	lslcc	r3, r3, #4
    1338:	3afffffa 	bcc	1328 <__udivsi3+0x2c>
    133c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1340:	31510000 	cmpcc	r1, r0
    1344:	31a01081 	lslcc	r1, r1, #1
    1348:	31a03083 	lslcc	r3, r3, #1
    134c:	3afffffa 	bcc	133c <__udivsi3+0x40>
    1350:	e3a02000 	mov	r2, #0
    1354:	e1500001 	cmp	r0, r1
    1358:	20400001 	subcs	r0, r0, r1
    135c:	21822003 	orrcs	r2, r2, r3
    1360:	e15000a1 	cmp	r0, r1, lsr #1
    1364:	204000a1 	subcs	r0, r0, r1, lsr #1
    1368:	218220a3 	orrcs	r2, r2, r3, lsr #1
    136c:	e1500121 	cmp	r0, r1, lsr #2
    1370:	20400121 	subcs	r0, r0, r1, lsr #2
    1374:	21822123 	orrcs	r2, r2, r3, lsr #2
    1378:	e15001a1 	cmp	r0, r1, lsr #3
    137c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1380:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1384:	e3500000 	cmp	r0, #0
    1388:	11b03223 	lsrsne	r3, r3, #4
    138c:	11a01221 	lsrne	r1, r1, #4
    1390:	1affffef 	bne	1354 <__udivsi3+0x58>
    1394:	e1a00002 	mov	r0, r2
    1398:	e12fff1e 	bx	lr
    139c:	03a00001 	moveq	r0, #1
    13a0:	13a00000 	movne	r0, #0
    13a4:	e12fff1e 	bx	lr
    13a8:	e3510801 	cmp	r1, #65536	@ 0x10000
    13ac:	21a01821 	lsrcs	r1, r1, #16
    13b0:	23a02010 	movcs	r2, #16
    13b4:	33a02000 	movcc	r2, #0
    13b8:	e3510c01 	cmp	r1, #256	@ 0x100
    13bc:	21a01421 	lsrcs	r1, r1, #8
    13c0:	22822008 	addcs	r2, r2, #8
    13c4:	e3510010 	cmp	r1, #16
    13c8:	21a01221 	lsrcs	r1, r1, #4
    13cc:	22822004 	addcs	r2, r2, #4
    13d0:	e3510004 	cmp	r1, #4
    13d4:	82822003 	addhi	r2, r2, #3
    13d8:	908220a1 	addls	r2, r2, r1, lsr #1
    13dc:	e1a00230 	lsr	r0, r0, r2
    13e0:	e12fff1e 	bx	lr
    13e4:	e3500000 	cmp	r0, #0
    13e8:	13e00000 	mvnne	r0, #0
    13ec:	ea000007 	b	1410 <__aeabi_idiv0>

000013f0 <__aeabi_uidivmod>:
    13f0:	e3510000 	cmp	r1, #0
    13f4:	0afffffa 	beq	13e4 <__udivsi3+0xe8>
    13f8:	e92d4003 	push	{r0, r1, lr}
    13fc:	ebffffbe 	bl	12fc <__udivsi3>
    1400:	e8bd4006 	pop	{r1, r2, lr}
    1404:	e0030092 	mul	r3, r2, r0
    1408:	e0411003 	sub	r1, r1, r3
    140c:	e12fff1e 	bx	lr

00001410 <__aeabi_idiv0>:
    1410:	e12fff1e 	bx	lr
