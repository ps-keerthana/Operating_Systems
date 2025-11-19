
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb00045a 	bl	1198 <printf>
      2c:	eb0002b7 	bl	b10 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000132 	bl	524 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb0002e0 	bl	be8 <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb0002a2 	bl	b10 <exit>
      84:	00001854 	.word	0x00001854

00000088 <pg_pte>:
      88:	e92d4800 	push	{fp, lr}
      8c:	e28db004 	add	fp, sp, #4
      90:	e24dd008 	sub	sp, sp, #8
      94:	e50b0008 	str	r0, [fp, #-8]
      98:	e51b1008 	ldr	r1, [fp, #-8]
      9c:	e3a0001a 	mov	r0, #26
      a0:	eb0003de 	bl	1020 <syscall>
      a4:	e1a03000 	mov	r3, r0
      a8:	e1a00003 	mov	r0, r3
      ac:	e24bd004 	sub	sp, fp, #4
      b0:	e8bd8800 	pop	{fp, pc}

000000b4 <pg_pa>:
      b4:	e92d4800 	push	{fp, lr}
      b8:	e28db004 	add	fp, sp, #4
      bc:	e24dd008 	sub	sp, sp, #8
      c0:	e50b0008 	str	r0, [fp, #-8]
      c4:	e51b1008 	ldr	r1, [fp, #-8]
      c8:	e3a0001b 	mov	r0, #27
      cc:	eb0003d3 	bl	1020 <syscall>
      d0:	e1a03000 	mov	r3, r0
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd004 	sub	sp, fp, #4
      dc:	e8bd8800 	pop	{fp, pc}

000000e0 <pg_flags>:
      e0:	e92d4800 	push	{fp, lr}
      e4:	e28db004 	add	fp, sp, #4
      e8:	e24dd008 	sub	sp, sp, #8
      ec:	e50b0008 	str	r0, [fp, #-8]
      f0:	e51b1008 	ldr	r1, [fp, #-8]
      f4:	e3a0001c 	mov	r0, #28
      f8:	eb0003c8 	bl	1020 <syscall>
      fc:	e1a03000 	mov	r3, r0
     100:	e1a00003 	mov	r0, r3
     104:	e24bd004 	sub	sp, fp, #4
     108:	e8bd8800 	pop	{fp, pc}

0000010c <kpt>:
     10c:	e92d4800 	push	{fp, lr}
     110:	e28db004 	add	fp, sp, #4
     114:	e3a0001d 	mov	r0, #29
     118:	eb0003c0 	bl	1020 <syscall>
     11c:	e1a03000 	mov	r3, r0
     120:	e1a00003 	mov	r0, r3
     124:	e8bd8800 	pop	{fp, pc}

00000128 <ugetpid>:
     128:	e92d4800 	push	{fp, lr}
     12c:	e28db004 	add	fp, sp, #4
     130:	e3a0001e 	mov	r0, #30
     134:	eb0003b9 	bl	1020 <syscall>
     138:	e1a03000 	mov	r3, r0
     13c:	e1a00003 	mov	r0, r3
     140:	e8bd8800 	pop	{fp, pc}

00000144 <strcpy>:
     144:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     148:	e28db000 	add	fp, sp, #0
     14c:	e24dd014 	sub	sp, sp, #20
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	e1a00000 	nop			@ (mov r0, r0)
     164:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     168:	e2823001 	add	r3, r2, #1
     16c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     170:	e51b3010 	ldr	r3, [fp, #-16]
     174:	e2831001 	add	r1, r3, #1
     178:	e50b1010 	str	r1, [fp, #-16]
     17c:	e5d22000 	ldrb	r2, [r2]
     180:	e5c32000 	strb	r2, [r3]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e3530000 	cmp	r3, #0
     18c:	1afffff4 	bne	164 <strcpy+0x20>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a00003 	mov	r0, r3
     198:	e28bd000 	add	sp, fp, #0
     19c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a0:	e12fff1e 	bx	lr

000001a4 <strcmp>:
     1a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a8:	e28db000 	add	fp, sp, #0
     1ac:	e24dd00c 	sub	sp, sp, #12
     1b0:	e50b0008 	str	r0, [fp, #-8]
     1b4:	e50b100c 	str	r1, [fp, #-12]
     1b8:	ea000005 	b	1d4 <strcmp+0x30>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b3008 	str	r3, [fp, #-8]
     1c8:	e51b300c 	ldr	r3, [fp, #-12]
     1cc:	e2833001 	add	r3, r3, #1
     1d0:	e50b300c 	str	r3, [fp, #-12]
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000005 	beq	1fc <strcmp+0x58>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e5d32000 	ldrb	r2, [r3]
     1ec:	e51b300c 	ldr	r3, [fp, #-12]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e1520003 	cmp	r2, r3
     1f8:	0affffef 	beq	1bc <strcmp+0x18>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e1a02003 	mov	r2, r3
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e0423003 	sub	r3, r2, r3
     214:	e1a00003 	mov	r0, r3
     218:	e28bd000 	add	sp, fp, #0
     21c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     220:	e12fff1e 	bx	lr

00000224 <strlen>:
     224:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     228:	e28db000 	add	fp, sp, #0
     22c:	e24dd014 	sub	sp, sp, #20
     230:	e50b0010 	str	r0, [fp, #-16]
     234:	e3a03000 	mov	r3, #0
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	ea000002 	b	24c <strlen+0x28>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e2833001 	add	r3, r3, #1
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e51b2010 	ldr	r2, [fp, #-16]
     254:	e0823003 	add	r3, r2, r3
     258:	e5d33000 	ldrb	r3, [r3]
     25c:	e3530000 	cmp	r3, #0
     260:	1afffff6 	bne	240 <strlen+0x1c>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e1a00003 	mov	r0, r3
     26c:	e28bd000 	add	sp, fp, #0
     270:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     274:	e12fff1e 	bx	lr

00000278 <memset>:
     278:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     27c:	e28db000 	add	fp, sp, #0
     280:	e24dd024 	sub	sp, sp, #36	@ 0x24
     284:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     288:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     28c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     290:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     29c:	e54b300d 	strb	r3, [fp, #-13]
     2a0:	e55b200d 	ldrb	r2, [fp, #-13]
     2a4:	e1a03002 	mov	r3, r2
     2a8:	e1a03403 	lsl	r3, r3, #8
     2ac:	e0833002 	add	r3, r3, r2
     2b0:	e1a03803 	lsl	r3, r3, #16
     2b4:	e1a02003 	mov	r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1a03403 	lsl	r3, r3, #8
     2c0:	e1822003 	orr	r2, r2, r3
     2c4:	e55b300d 	ldrb	r3, [fp, #-13]
     2c8:	e1823003 	orr	r3, r2, r3
     2cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2d0:	ea000008 	b	2f8 <memset+0x80>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e5c32000 	strb	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433001 	sub	r3, r3, #1
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530000 	cmp	r3, #0
     300:	0a000003 	beq	314 <memset+0x9c>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2033003 	and	r3, r3, #3
     30c:	e3530000 	cmp	r3, #0
     310:	1affffef 	bne	2d4 <memset+0x5c>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e50b300c 	str	r3, [fp, #-12]
     31c:	ea000008 	b	344 <memset+0xcc>
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     328:	e5832000 	str	r2, [r3]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     330:	e2433004 	sub	r3, r3, #4
     334:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     338:	e51b300c 	ldr	r3, [fp, #-12]
     33c:	e2833004 	add	r3, r3, #4
     340:	e50b300c 	str	r3, [fp, #-12]
     344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     348:	e3530003 	cmp	r3, #3
     34c:	8afffff3 	bhi	320 <memset+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e50b3008 	str	r3, [fp, #-8]
     358:	ea000008 	b	380 <memset+0x108>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e55b200d 	ldrb	r2, [fp, #-13]
     364:	e5c32000 	strb	r2, [r3]
     368:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     36c:	e2433001 	sub	r3, r3, #1
     370:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2833001 	add	r3, r3, #1
     37c:	e50b3008 	str	r3, [fp, #-8]
     380:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     384:	e3530000 	cmp	r3, #0
     388:	1afffff3 	bne	35c <memset+0xe4>
     38c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     390:	e1a00003 	mov	r0, r3
     394:	e28bd000 	add	sp, fp, #0
     398:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     39c:	e12fff1e 	bx	lr

000003a0 <strchr>:
     3a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a4:	e28db000 	add	fp, sp, #0
     3a8:	e24dd00c 	sub	sp, sp, #12
     3ac:	e50b0008 	str	r0, [fp, #-8]
     3b0:	e1a03001 	mov	r3, r1
     3b4:	e54b3009 	strb	r3, [fp, #-9]
     3b8:	ea000009 	b	3e4 <strchr+0x44>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e5d33000 	ldrb	r3, [r3]
     3c4:	e55b2009 	ldrb	r2, [fp, #-9]
     3c8:	e1520003 	cmp	r2, r3
     3cc:	1a000001 	bne	3d8 <strchr+0x38>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	ea000007 	b	3f8 <strchr+0x58>
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e2833001 	add	r3, r3, #1
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e5d33000 	ldrb	r3, [r3]
     3ec:	e3530000 	cmp	r3, #0
     3f0:	1afffff1 	bne	3bc <strchr+0x1c>
     3f4:	e3a03000 	mov	r3, #0
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e28bd000 	add	sp, fp, #0
     400:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     404:	e12fff1e 	bx	lr

00000408 <gets>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd018 	sub	sp, sp, #24
     414:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     418:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     41c:	e3a03000 	mov	r3, #0
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	ea000016 	b	484 <gets+0x7c>
     428:	e24b300d 	sub	r3, fp, #13
     42c:	e3a02001 	mov	r2, #1
     430:	e1a01003 	mov	r1, r3
     434:	e3a00000 	mov	r0, #0
     438:	eb0001cf 	bl	b7c <read>
     43c:	e50b000c 	str	r0, [fp, #-12]
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e3530000 	cmp	r3, #0
     448:	da000013 	ble	49c <gets+0x94>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2832001 	add	r2, r3, #1
     454:	e50b2008 	str	r2, [fp, #-8]
     458:	e1a02003 	mov	r2, r3
     45c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     460:	e0833002 	add	r3, r3, r2
     464:	e55b200d 	ldrb	r2, [fp, #-13]
     468:	e5c32000 	strb	r2, [r3]
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000a 	cmp	r3, #10
     474:	0a000009 	beq	4a0 <gets+0x98>
     478:	e55b300d 	ldrb	r3, [fp, #-13]
     47c:	e353000d 	cmp	r3, #13
     480:	0a000006 	beq	4a0 <gets+0x98>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2833001 	add	r3, r3, #1
     48c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     490:	e1520003 	cmp	r2, r3
     494:	caffffe3 	bgt	428 <gets+0x20>
     498:	ea000000 	b	4a0 <gets+0x98>
     49c:	e1a00000 	nop			@ (mov r0, r0)
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4a8:	e0823003 	add	r3, r2, r3
     4ac:	e3a02000 	mov	r2, #0
     4b0:	e5c32000 	strb	r2, [r3]
     4b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e24bd004 	sub	sp, fp, #4
     4c0:	e8bd8800 	pop	{fp, pc}

000004c4 <stat>:
     4c4:	e92d4800 	push	{fp, lr}
     4c8:	e28db004 	add	fp, sp, #4
     4cc:	e24dd010 	sub	sp, sp, #16
     4d0:	e50b0010 	str	r0, [fp, #-16]
     4d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4d8:	e3a01000 	mov	r1, #0
     4dc:	e51b0010 	ldr	r0, [fp, #-16]
     4e0:	eb0001d2 	bl	c30 <open>
     4e4:	e50b0008 	str	r0, [fp, #-8]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	aa000001 	bge	4fc <stat+0x38>
     4f4:	e3e03000 	mvn	r3, #0
     4f8:	ea000006 	b	518 <stat+0x54>
     4fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb0001e4 	bl	c9c <fstat>
     508:	e50b000c 	str	r0, [fp, #-12]
     50c:	e51b0008 	ldr	r0, [fp, #-8]
     510:	eb0001ab 	bl	bc4 <close>
     514:	e51b300c 	ldr	r3, [fp, #-12]
     518:	e1a00003 	mov	r0, r3
     51c:	e24bd004 	sub	sp, fp, #4
     520:	e8bd8800 	pop	{fp, pc}

00000524 <atoi>:
     524:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     528:	e28db000 	add	fp, sp, #0
     52c:	e24dd014 	sub	sp, sp, #20
     530:	e50b0010 	str	r0, [fp, #-16]
     534:	e3a03000 	mov	r3, #0
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	ea00000c 	b	574 <atoi+0x50>
     540:	e51b2008 	ldr	r2, [fp, #-8]
     544:	e1a03002 	mov	r3, r2
     548:	e1a03103 	lsl	r3, r3, #2
     54c:	e0833002 	add	r3, r3, r2
     550:	e1a03083 	lsl	r3, r3, #1
     554:	e1a01003 	mov	r1, r3
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e2832001 	add	r2, r3, #1
     560:	e50b2010 	str	r2, [fp, #-16]
     564:	e5d33000 	ldrb	r3, [r3]
     568:	e0813003 	add	r3, r1, r3
     56c:	e2433030 	sub	r3, r3, #48	@ 0x30
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e353002f 	cmp	r3, #47	@ 0x2f
     580:	9a000003 	bls	594 <atoi+0x70>
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e5d33000 	ldrb	r3, [r3]
     58c:	e3530039 	cmp	r3, #57	@ 0x39
     590:	9affffea 	bls	540 <atoi+0x1c>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e1a00003 	mov	r0, r3
     59c:	e28bd000 	add	sp, fp, #0
     5a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <memmove>:
     5a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ac:	e28db000 	add	fp, sp, #0
     5b0:	e24dd01c 	sub	sp, sp, #28
     5b4:	e50b0010 	str	r0, [fp, #-16]
     5b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e50b3008 	str	r3, [fp, #-8]
     5c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5cc:	e50b300c 	str	r3, [fp, #-12]
     5d0:	ea000007 	b	5f4 <memmove+0x4c>
     5d4:	e51b200c 	ldr	r2, [fp, #-12]
     5d8:	e2823001 	add	r3, r2, #1
     5dc:	e50b300c 	str	r3, [fp, #-12]
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e2831001 	add	r1, r3, #1
     5e8:	e50b1008 	str	r1, [fp, #-8]
     5ec:	e5d22000 	ldrb	r2, [r2]
     5f0:	e5c32000 	strb	r2, [r3]
     5f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f8:	e2432001 	sub	r2, r3, #1
     5fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     600:	e3530000 	cmp	r3, #0
     604:	cafffff2 	bgt	5d4 <memmove+0x2c>
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e1a00003 	mov	r0, r3
     610:	e28bd000 	add	sp, fp, #0
     614:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <strncmp>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd014 	sub	sp, sp, #20
     628:	e50b0008 	str	r0, [fp, #-8]
     62c:	e50b100c 	str	r1, [fp, #-12]
     630:	e50b2010 	str	r2, [fp, #-16]
     634:	ea000008 	b	65c <strncmp+0x40>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b300c 	ldr	r3, [fp, #-12]
     648:	e2833001 	add	r3, r3, #1
     64c:	e50b300c 	str	r3, [fp, #-12]
     650:	e51b3010 	ldr	r3, [fp, #-16]
     654:	e2433001 	sub	r3, r3, #1
     658:	e50b3010 	str	r3, [fp, #-16]
     65c:	e51b3010 	ldr	r3, [fp, #-16]
     660:	e3530000 	cmp	r3, #0
     664:	da00000d 	ble	6a0 <strncmp+0x84>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e3530000 	cmp	r3, #0
     674:	0a000009 	beq	6a0 <strncmp+0x84>
     678:	e51b300c 	ldr	r3, [fp, #-12]
     67c:	e5d33000 	ldrb	r3, [r3]
     680:	e3530000 	cmp	r3, #0
     684:	0a000005 	beq	6a0 <strncmp+0x84>
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e5d32000 	ldrb	r2, [r3]
     690:	e51b300c 	ldr	r3, [fp, #-12]
     694:	e5d33000 	ldrb	r3, [r3]
     698:	e1520003 	cmp	r2, r3
     69c:	0affffe5 	beq	638 <strncmp+0x1c>
     6a0:	e51b3010 	ldr	r3, [fp, #-16]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	1a000001 	bne	6b4 <strncmp+0x98>
     6ac:	e3a03000 	mov	r3, #0
     6b0:	ea000005 	b	6cc <strncmp+0xb0>
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e5d33000 	ldrb	r3, [r3]
     6bc:	e1a02003 	mov	r2, r3
     6c0:	e51b300c 	ldr	r3, [fp, #-12]
     6c4:	e5d33000 	ldrb	r3, [r3]
     6c8:	e0423003 	sub	r3, r2, r3
     6cc:	e1a00003 	mov	r0, r3
     6d0:	e28bd000 	add	sp, fp, #0
     6d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <strncpy>:
     6dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e0:	e28db000 	add	fp, sp, #0
     6e4:	e24dd01c 	sub	sp, sp, #28
     6e8:	e50b0010 	str	r0, [fp, #-16]
     6ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6f4:	e51b3010 	ldr	r3, [fp, #-16]
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	ea00000a 	b	72c <strncpy+0x50>
     700:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     704:	e2823001 	add	r3, r2, #1
     708:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e2831001 	add	r1, r3, #1
     714:	e50b1008 	str	r1, [fp, #-8]
     718:	e5d22000 	ldrb	r2, [r2]
     71c:	e5c32000 	strb	r2, [r3]
     720:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     724:	e2433001 	sub	r3, r3, #1
     728:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     72c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     730:	e3530000 	cmp	r3, #0
     734:	da00000c 	ble	76c <strncpy+0x90>
     738:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     73c:	e5d33000 	ldrb	r3, [r3]
     740:	e3530000 	cmp	r3, #0
     744:	1affffed 	bne	700 <strncpy+0x24>
     748:	ea000007 	b	76c <strncpy+0x90>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e2832001 	add	r2, r3, #1
     754:	e50b2008 	str	r2, [fp, #-8]
     758:	e3a02000 	mov	r2, #0
     75c:	e5c32000 	strb	r2, [r3]
     760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     764:	e2433001 	sub	r3, r3, #1
     768:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     76c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     770:	e3530000 	cmp	r3, #0
     774:	cafffff4 	bgt	74c <strncpy+0x70>
     778:	e51b3010 	ldr	r3, [fp, #-16]
     77c:	e1a00003 	mov	r0, r3
     780:	e28bd000 	add	sp, fp, #0
     784:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <xchg>:
     78c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     790:	e28db000 	add	fp, sp, #0
     794:	e24dd014 	sub	sp, sp, #20
     798:	e50b0010 	str	r0, [fp, #-16]
     79c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7a0:	e51b2010 	ldr	r2, [fp, #-16]
     7a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7a8:	e1023091 	swp	r3, r1, [r2]
     7ac:	e50b3008 	str	r3, [fp, #-8]
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e1a00003 	mov	r0, r3
     7b8:	e28bd000 	add	sp, fp, #0
     7bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <initiateLock>:
     7c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7c8:	e28db000 	add	fp, sp, #0
     7cc:	e24dd00c 	sub	sp, sp, #12
     7d0:	e50b0008 	str	r0, [fp, #-8]
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e3a02000 	mov	r2, #0
     7dc:	e5832000 	str	r2, [r3]
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e3a02001 	mov	r2, #1
     7e8:	e5832004 	str	r2, [r3, #4]
     7ec:	e1a00000 	nop			@ (mov r0, r0)
     7f0:	e28bd000 	add	sp, fp, #0
     7f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <acquireLock>:
     7fc:	e92d4800 	push	{fp, lr}
     800:	e28db004 	add	fp, sp, #4
     804:	e24dd008 	sub	sp, sp, #8
     808:	e50b0008 	str	r0, [fp, #-8]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e5933004 	ldr	r3, [r3, #4]
     814:	e3530000 	cmp	r3, #0
     818:	0a000008 	beq	840 <acquireLock+0x44>
     81c:	e1a00000 	nop			@ (mov r0, r0)
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e3a01001 	mov	r1, #1
     828:	e1a00003 	mov	r0, r3
     82c:	ebffffd6 	bl	78c <xchg>
     830:	e1a03000 	mov	r3, r0
     834:	e3530000 	cmp	r3, #0
     838:	1afffff8 	bne	820 <acquireLock+0x24>
     83c:	ea000000 	b	844 <acquireLock+0x48>
     840:	e1a00000 	nop			@ (mov r0, r0)
     844:	e24bd004 	sub	sp, fp, #4
     848:	e8bd8800 	pop	{fp, pc}

0000084c <releaseLock>:
     84c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     850:	e28db000 	add	fp, sp, #0
     854:	e24dd00c 	sub	sp, sp, #12
     858:	e50b0008 	str	r0, [fp, #-8]
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e5933004 	ldr	r3, [r3, #4]
     864:	e3530000 	cmp	r3, #0
     868:	0a000006 	beq	888 <releaseLock+0x3c>
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e5933000 	ldr	r3, [r3]
     874:	e3530001 	cmp	r3, #1
     878:	1a000002 	bne	888 <releaseLock+0x3c>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e3a02000 	mov	r2, #0
     884:	e5832000 	str	r2, [r3]
     888:	e1a00000 	nop			@ (mov r0, r0)
     88c:	e28bd000 	add	sp, fp, #0
     890:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <initiateCondVar>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd008 	sub	sp, sp, #8
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	eb0001b8 	bl	f90 <getChannel>
     8ac:	e1a02000 	mov	r2, r0
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5832000 	str	r2, [r3]
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e3a02001 	mov	r2, #1
     8c0:	e5832004 	str	r2, [r3, #4]
     8c4:	e1a00000 	nop			@ (mov r0, r0)
     8c8:	e24bd004 	sub	sp, fp, #4
     8cc:	e8bd8800 	pop	{fp, pc}

000008d0 <condWait>:
     8d0:	e92d4800 	push	{fp, lr}
     8d4:	e28db004 	add	fp, sp, #4
     8d8:	e24dd008 	sub	sp, sp, #8
     8dc:	e50b0008 	str	r0, [fp, #-8]
     8e0:	e50b100c 	str	r1, [fp, #-12]
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e5933004 	ldr	r3, [r3, #4]
     8ec:	e3530000 	cmp	r3, #0
     8f0:	0a00000c 	beq	928 <condWait+0x58>
     8f4:	e51b300c 	ldr	r3, [fp, #-12]
     8f8:	e5933004 	ldr	r3, [r3, #4]
     8fc:	e3530000 	cmp	r3, #0
     900:	0a000008 	beq	928 <condWait+0x58>
     904:	e51b000c 	ldr	r0, [fp, #-12]
     908:	ebffffcf 	bl	84c <releaseLock>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5933000 	ldr	r3, [r3]
     914:	e1a00003 	mov	r0, r3
     918:	eb000193 	bl	f6c <sleepChan>
     91c:	e51b000c 	ldr	r0, [fp, #-12]
     920:	ebffffb5 	bl	7fc <acquireLock>
     924:	ea000000 	b	92c <condWait+0x5c>
     928:	e1a00000 	nop			@ (mov r0, r0)
     92c:	e24bd004 	sub	sp, fp, #4
     930:	e8bd8800 	pop	{fp, pc}

00000934 <broadcast>:
     934:	e92d4800 	push	{fp, lr}
     938:	e28db004 	add	fp, sp, #4
     93c:	e24dd008 	sub	sp, sp, #8
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e5933004 	ldr	r3, [r3, #4]
     94c:	e3530000 	cmp	r3, #0
     950:	0a000004 	beq	968 <broadcast+0x34>
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e5933000 	ldr	r3, [r3]
     95c:	e1a00003 	mov	r0, r3
     960:	eb000193 	bl	fb4 <sigChan>
     964:	ea000000 	b	96c <broadcast+0x38>
     968:	e1a00000 	nop			@ (mov r0, r0)
     96c:	e24bd004 	sub	sp, fp, #4
     970:	e8bd8800 	pop	{fp, pc}

00000974 <signal>:
     974:	e92d4800 	push	{fp, lr}
     978:	e28db004 	add	fp, sp, #4
     97c:	e24dd008 	sub	sp, sp, #8
     980:	e50b0008 	str	r0, [fp, #-8]
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e5933004 	ldr	r3, [r3, #4]
     98c:	e3530000 	cmp	r3, #0
     990:	0a000004 	beq	9a8 <signal+0x34>
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e5933000 	ldr	r3, [r3]
     99c:	e1a00003 	mov	r0, r3
     9a0:	eb00018c 	bl	fd8 <sigOneChan>
     9a4:	ea000000 	b	9ac <signal+0x38>
     9a8:	e1a00000 	nop			@ (mov r0, r0)
     9ac:	e24bd004 	sub	sp, fp, #4
     9b0:	e8bd8800 	pop	{fp, pc}

000009b4 <semInit>:
     9b4:	e92d4800 	push	{fp, lr}
     9b8:	e28db004 	add	fp, sp, #4
     9bc:	e24dd008 	sub	sp, sp, #8
     9c0:	e50b0008 	str	r0, [fp, #-8]
     9c4:	e50b100c 	str	r1, [fp, #-12]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e2833004 	add	r3, r3, #4
     9d0:	e1a00003 	mov	r0, r3
     9d4:	ebffff7a 	bl	7c4 <initiateLock>
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e283300c 	add	r3, r3, #12
     9e0:	e1a00003 	mov	r0, r3
     9e4:	ebffffab 	bl	898 <initiateCondVar>
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e51b200c 	ldr	r2, [fp, #-12]
     9f0:	e5832000 	str	r2, [r3]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e3a02001 	mov	r2, #1
     9fc:	e5832014 	str	r2, [r3, #20]
     a00:	e1a00000 	nop			@ (mov r0, r0)
     a04:	e24bd004 	sub	sp, fp, #4
     a08:	e8bd8800 	pop	{fp, pc}

00000a0c <semUp>:
     a0c:	e92d4800 	push	{fp, lr}
     a10:	e28db004 	add	fp, sp, #4
     a14:	e24dd008 	sub	sp, sp, #8
     a18:	e50b0008 	str	r0, [fp, #-8]
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e2833004 	add	r3, r3, #4
     a24:	e1a00003 	mov	r0, r3
     a28:	ebffff73 	bl	7fc <acquireLock>
     a2c:	e51b3008 	ldr	r3, [fp, #-8]
     a30:	e5933000 	ldr	r3, [r3]
     a34:	e2832001 	add	r2, r3, #1
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e5832000 	str	r2, [r3]
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e283300c 	add	r3, r3, #12
     a48:	e1a00003 	mov	r0, r3
     a4c:	ebffffc8 	bl	974 <signal>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e2833004 	add	r3, r3, #4
     a58:	e1a00003 	mov	r0, r3
     a5c:	ebffff7a 	bl	84c <releaseLock>
     a60:	e1a00000 	nop			@ (mov r0, r0)
     a64:	e24bd004 	sub	sp, fp, #4
     a68:	e8bd8800 	pop	{fp, pc}

00000a6c <semDown>:
     a6c:	e92d4800 	push	{fp, lr}
     a70:	e28db004 	add	fp, sp, #4
     a74:	e24dd008 	sub	sp, sp, #8
     a78:	e50b0008 	str	r0, [fp, #-8]
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e2833004 	add	r3, r3, #4
     a84:	e1a00003 	mov	r0, r3
     a88:	ebffff5b 	bl	7fc <acquireLock>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5933000 	ldr	r3, [r3]
     a94:	e2432001 	sub	r2, r3, #1
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e5832000 	str	r2, [r3]
     aa0:	ea000006 	b	ac0 <semDown+0x54>
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e283200c 	add	r2, r3, #12
     aac:	e51b3008 	ldr	r3, [fp, #-8]
     ab0:	e2833004 	add	r3, r3, #4
     ab4:	e1a01003 	mov	r1, r3
     ab8:	e1a00002 	mov	r0, r2
     abc:	ebffff83 	bl	8d0 <condWait>
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e5933000 	ldr	r3, [r3]
     ac8:	e3530000 	cmp	r3, #0
     acc:	bafffff4 	blt	aa4 <semDown+0x38>
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e2833004 	add	r3, r3, #4
     ad8:	e1a00003 	mov	r0, r3
     adc:	ebffff5a 	bl	84c <releaseLock>
     ae0:	e1a00000 	nop			@ (mov r0, r0)
     ae4:	e24bd004 	sub	sp, fp, #4
     ae8:	e8bd8800 	pop	{fp, pc}

00000aec <fork>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00001 	mov	r0, #1
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <exit>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00002 	mov	r0, #2
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <wait>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a00003 	mov	r0, #3
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <pipe>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00004 	mov	r0, #4
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <read>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a00005 	mov	r0, #5
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <write>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a00010 	mov	r0, #16
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <close>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a00015 	mov	r0, #21
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <kill>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a00006 	mov	r0, #6
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <exec>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a00007 	mov	r0, #7
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <open>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a0000f 	mov	r0, #15
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <mknod>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00011 	mov	r0, #17
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <unlink>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00012 	mov	r0, #18
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <fstat>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00008 	mov	r0, #8
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <link>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a00013 	mov	r0, #19
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <mkdir>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a00014 	mov	r0, #20
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <chdir>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a00009 	mov	r0, #9
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <dup>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a0000a 	mov	r0, #10
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <getpid>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a0000b 	mov	r0, #11
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <sbrk>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a0000c 	mov	r0, #12
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <sleep>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a0000d 	mov	r0, #13
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <uptime>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a0000e 	mov	r0, #14
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <proclist>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a00016 	mov	r0, #22
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <settickets>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a00017 	mov	r0, #23
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <srand>:
     e28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e2c:	e1a04003 	mov	r4, r3
     e30:	e1a03002 	mov	r3, r2
     e34:	e1a02001 	mov	r2, r1
     e38:	e1a01000 	mov	r1, r0
     e3c:	e3a00018 	mov	r0, #24
     e40:	ef000000 	svc	0x00000000
     e44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e48:	e12fff1e 	bx	lr

00000e4c <getpinfo>:
     e4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e50:	e1a04003 	mov	r4, r3
     e54:	e1a03002 	mov	r3, r2
     e58:	e1a02001 	mov	r2, r1
     e5c:	e1a01000 	mov	r1, r0
     e60:	e3a00019 	mov	r0, #25
     e64:	ef000000 	svc	0x00000000
     e68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e6c:	e12fff1e 	bx	lr

00000e70 <print_pt>:
     e70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e74:	e1a04003 	mov	r4, r3
     e78:	e1a03002 	mov	r3, r2
     e7c:	e1a02001 	mov	r2, r1
     e80:	e1a01000 	mov	r1, r0
     e84:	e3a0001f 	mov	r0, #31
     e88:	ef000000 	svc	0x00000000
     e8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e90:	e12fff1e 	bx	lr

00000e94 <thread_create>:
     e94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e98:	e1a04003 	mov	r4, r3
     e9c:	e1a03002 	mov	r3, r2
     ea0:	e1a02001 	mov	r2, r1
     ea4:	e1a01000 	mov	r1, r0
     ea8:	e3a00020 	mov	r0, #32
     eac:	ef000000 	svc	0x00000000
     eb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb4:	e12fff1e 	bx	lr

00000eb8 <thread_exit>:
     eb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ebc:	e1a04003 	mov	r4, r3
     ec0:	e1a03002 	mov	r3, r2
     ec4:	e1a02001 	mov	r2, r1
     ec8:	e1a01000 	mov	r1, r0
     ecc:	e3a00021 	mov	r0, #33	@ 0x21
     ed0:	ef000000 	svc	0x00000000
     ed4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed8:	e12fff1e 	bx	lr

00000edc <thread_join>:
     edc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee0:	e1a04003 	mov	r4, r3
     ee4:	e1a03002 	mov	r3, r2
     ee8:	e1a02001 	mov	r2, r1
     eec:	e1a01000 	mov	r1, r0
     ef0:	e3a00022 	mov	r0, #34	@ 0x22
     ef4:	ef000000 	svc	0x00000000
     ef8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     efc:	e12fff1e 	bx	lr

00000f00 <waitpid>:
     f00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f04:	e1a04003 	mov	r4, r3
     f08:	e1a03002 	mov	r3, r2
     f0c:	e1a02001 	mov	r2, r1
     f10:	e1a01000 	mov	r1, r0
     f14:	e3a00023 	mov	r0, #35	@ 0x23
     f18:	ef000000 	svc	0x00000000
     f1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f20:	e12fff1e 	bx	lr

00000f24 <barrier_init>:
     f24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f28:	e1a04003 	mov	r4, r3
     f2c:	e1a03002 	mov	r3, r2
     f30:	e1a02001 	mov	r2, r1
     f34:	e1a01000 	mov	r1, r0
     f38:	e3a00024 	mov	r0, #36	@ 0x24
     f3c:	ef000000 	svc	0x00000000
     f40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f44:	e12fff1e 	bx	lr

00000f48 <barrier_check>:
     f48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f4c:	e1a04003 	mov	r4, r3
     f50:	e1a03002 	mov	r3, r2
     f54:	e1a02001 	mov	r2, r1
     f58:	e1a01000 	mov	r1, r0
     f5c:	e3a00025 	mov	r0, #37	@ 0x25
     f60:	ef000000 	svc	0x00000000
     f64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f68:	e12fff1e 	bx	lr

00000f6c <sleepChan>:
     f6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f70:	e1a04003 	mov	r4, r3
     f74:	e1a03002 	mov	r3, r2
     f78:	e1a02001 	mov	r2, r1
     f7c:	e1a01000 	mov	r1, r0
     f80:	e3a00026 	mov	r0, #38	@ 0x26
     f84:	ef000000 	svc	0x00000000
     f88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f8c:	e12fff1e 	bx	lr

00000f90 <getChannel>:
     f90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f94:	e1a04003 	mov	r4, r3
     f98:	e1a03002 	mov	r3, r2
     f9c:	e1a02001 	mov	r2, r1
     fa0:	e1a01000 	mov	r1, r0
     fa4:	e3a00027 	mov	r0, #39	@ 0x27
     fa8:	ef000000 	svc	0x00000000
     fac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb0:	e12fff1e 	bx	lr

00000fb4 <sigChan>:
     fb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb8:	e1a04003 	mov	r4, r3
     fbc:	e1a03002 	mov	r3, r2
     fc0:	e1a02001 	mov	r2, r1
     fc4:	e1a01000 	mov	r1, r0
     fc8:	e3a00028 	mov	r0, #40	@ 0x28
     fcc:	ef000000 	svc	0x00000000
     fd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd4:	e12fff1e 	bx	lr

00000fd8 <sigOneChan>:
     fd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fdc:	e1a04003 	mov	r4, r3
     fe0:	e1a03002 	mov	r3, r2
     fe4:	e1a02001 	mov	r2, r1
     fe8:	e1a01000 	mov	r1, r0
     fec:	e3a00029 	mov	r0, #41	@ 0x29
     ff0:	ef000000 	svc	0x00000000
     ff4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff8:	e12fff1e 	bx	lr

00000ffc <symlink>:
     ffc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1000:	e1a04003 	mov	r4, r3
    1004:	e1a03002 	mov	r3, r2
    1008:	e1a02001 	mov	r2, r1
    100c:	e1a01000 	mov	r1, r0
    1010:	e3a0002a 	mov	r0, #42	@ 0x2a
    1014:	ef000000 	svc	0x00000000
    1018:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    101c:	e12fff1e 	bx	lr

00001020 <syscall>:
    1020:	ef000000 	svc	0x00000000
    1024:	e12fff1e 	bx	lr

00001028 <putc>:
    1028:	e92d4800 	push	{fp, lr}
    102c:	e28db004 	add	fp, sp, #4
    1030:	e24dd008 	sub	sp, sp, #8
    1034:	e50b0008 	str	r0, [fp, #-8]
    1038:	e1a03001 	mov	r3, r1
    103c:	e54b3009 	strb	r3, [fp, #-9]
    1040:	e24b3009 	sub	r3, fp, #9
    1044:	e3a02001 	mov	r2, #1
    1048:	e1a01003 	mov	r1, r3
    104c:	e51b0008 	ldr	r0, [fp, #-8]
    1050:	ebfffed2 	bl	ba0 <write>
    1054:	e1a00000 	nop			@ (mov r0, r0)
    1058:	e24bd004 	sub	sp, fp, #4
    105c:	e8bd8800 	pop	{fp, pc}

00001060 <printint>:
    1060:	e92d4800 	push	{fp, lr}
    1064:	e28db004 	add	fp, sp, #4
    1068:	e24dd030 	sub	sp, sp, #48	@ 0x30
    106c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1070:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1074:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1078:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    107c:	e3a03000 	mov	r3, #0
    1080:	e50b300c 	str	r3, [fp, #-12]
    1084:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1088:	e3530000 	cmp	r3, #0
    108c:	0a000008 	beq	10b4 <printint+0x54>
    1090:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1094:	e3530000 	cmp	r3, #0
    1098:	aa000005 	bge	10b4 <printint+0x54>
    109c:	e3a03001 	mov	r3, #1
    10a0:	e50b300c 	str	r3, [fp, #-12]
    10a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10a8:	e2633000 	rsb	r3, r3, #0
    10ac:	e50b3010 	str	r3, [fp, #-16]
    10b0:	ea000001 	b	10bc <printint+0x5c>
    10b4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10b8:	e50b3010 	str	r3, [fp, #-16]
    10bc:	e3a03000 	mov	r3, #0
    10c0:	e50b3008 	str	r3, [fp, #-8]
    10c4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10c8:	e51b3010 	ldr	r3, [fp, #-16]
    10cc:	e1a01002 	mov	r1, r2
    10d0:	e1a00003 	mov	r0, r3
    10d4:	eb0001d5 	bl	1830 <__aeabi_uidivmod>
    10d8:	e1a03001 	mov	r3, r1
    10dc:	e1a01003 	mov	r1, r3
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e2832001 	add	r2, r3, #1
    10e8:	e50b2008 	str	r2, [fp, #-8]
    10ec:	e59f20a0 	ldr	r2, [pc, #160]	@ 1194 <printint+0x134>
    10f0:	e7d22001 	ldrb	r2, [r2, r1]
    10f4:	e2433004 	sub	r3, r3, #4
    10f8:	e083300b 	add	r3, r3, fp
    10fc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1100:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1104:	e1a01003 	mov	r1, r3
    1108:	e51b0010 	ldr	r0, [fp, #-16]
    110c:	eb00018a 	bl	173c <__udivsi3>
    1110:	e1a03000 	mov	r3, r0
    1114:	e50b3010 	str	r3, [fp, #-16]
    1118:	e51b3010 	ldr	r3, [fp, #-16]
    111c:	e3530000 	cmp	r3, #0
    1120:	1affffe7 	bne	10c4 <printint+0x64>
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e3530000 	cmp	r3, #0
    112c:	0a00000e 	beq	116c <printint+0x10c>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e2832001 	add	r2, r3, #1
    1138:	e50b2008 	str	r2, [fp, #-8]
    113c:	e2433004 	sub	r3, r3, #4
    1140:	e083300b 	add	r3, r3, fp
    1144:	e3a0202d 	mov	r2, #45	@ 0x2d
    1148:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    114c:	ea000006 	b	116c <printint+0x10c>
    1150:	e24b2020 	sub	r2, fp, #32
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e0823003 	add	r3, r2, r3
    115c:	e5d33000 	ldrb	r3, [r3]
    1160:	e1a01003 	mov	r1, r3
    1164:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1168:	ebffffae 	bl	1028 <putc>
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e2433001 	sub	r3, r3, #1
    1174:	e50b3008 	str	r3, [fp, #-8]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e3530000 	cmp	r3, #0
    1180:	aafffff2 	bge	1150 <printint+0xf0>
    1184:	e1a00000 	nop			@ (mov r0, r0)
    1188:	e1a00000 	nop			@ (mov r0, r0)
    118c:	e24bd004 	sub	sp, fp, #4
    1190:	e8bd8800 	pop	{fp, pc}
    1194:	00001870 	.word	0x00001870

00001198 <printf>:
    1198:	e92d000e 	push	{r1, r2, r3}
    119c:	e92d4800 	push	{fp, lr}
    11a0:	e28db004 	add	fp, sp, #4
    11a4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11a8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11ac:	e3a03000 	mov	r3, #0
    11b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11b4:	e28b3008 	add	r3, fp, #8
    11b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11bc:	e3a03000 	mov	r3, #0
    11c0:	e50b3010 	str	r3, [fp, #-16]
    11c4:	ea000074 	b	139c <printf+0x204>
    11c8:	e59b2004 	ldr	r2, [fp, #4]
    11cc:	e51b3010 	ldr	r3, [fp, #-16]
    11d0:	e0823003 	add	r3, r2, r3
    11d4:	e5d33000 	ldrb	r3, [r3]
    11d8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11e0:	e3530000 	cmp	r3, #0
    11e4:	1a00000b 	bne	1218 <printf+0x80>
    11e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11ec:	e3530025 	cmp	r3, #37	@ 0x25
    11f0:	1a000002 	bne	1200 <printf+0x68>
    11f4:	e3a03025 	mov	r3, #37	@ 0x25
    11f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11fc:	ea000063 	b	1390 <printf+0x1f8>
    1200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1204:	e6ef3073 	uxtb	r3, r3
    1208:	e1a01003 	mov	r1, r3
    120c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1210:	ebffff84 	bl	1028 <putc>
    1214:	ea00005d 	b	1390 <printf+0x1f8>
    1218:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    121c:	e3530025 	cmp	r3, #37	@ 0x25
    1220:	1a00005a 	bne	1390 <printf+0x1f8>
    1224:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1228:	e3530064 	cmp	r3, #100	@ 0x64
    122c:	1a00000a 	bne	125c <printf+0xc4>
    1230:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1234:	e5933000 	ldr	r3, [r3]
    1238:	e1a01003 	mov	r1, r3
    123c:	e3a03001 	mov	r3, #1
    1240:	e3a0200a 	mov	r2, #10
    1244:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1248:	ebffff84 	bl	1060 <printint>
    124c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1250:	e2833004 	add	r3, r3, #4
    1254:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1258:	ea00004a 	b	1388 <printf+0x1f0>
    125c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1260:	e3530078 	cmp	r3, #120	@ 0x78
    1264:	0a000002 	beq	1274 <printf+0xdc>
    1268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    126c:	e3530070 	cmp	r3, #112	@ 0x70
    1270:	1a00000a 	bne	12a0 <printf+0x108>
    1274:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1278:	e5933000 	ldr	r3, [r3]
    127c:	e1a01003 	mov	r1, r3
    1280:	e3a03000 	mov	r3, #0
    1284:	e3a02010 	mov	r2, #16
    1288:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    128c:	ebffff73 	bl	1060 <printint>
    1290:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1294:	e2833004 	add	r3, r3, #4
    1298:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    129c:	ea000039 	b	1388 <printf+0x1f0>
    12a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a4:	e3530073 	cmp	r3, #115	@ 0x73
    12a8:	1a000018 	bne	1310 <printf+0x178>
    12ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b300c 	str	r3, [fp, #-12]
    12b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12bc:	e2833004 	add	r3, r3, #4
    12c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	e51b300c 	ldr	r3, [fp, #-12]
    12c8:	e3530000 	cmp	r3, #0
    12cc:	1a00000a 	bne	12fc <printf+0x164>
    12d0:	e59f30f4 	ldr	r3, [pc, #244]	@ 13cc <printf+0x234>
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	ea000007 	b	12fc <printf+0x164>
    12dc:	e51b300c 	ldr	r3, [fp, #-12]
    12e0:	e5d33000 	ldrb	r3, [r3]
    12e4:	e1a01003 	mov	r1, r3
    12e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12ec:	ebffff4d 	bl	1028 <putc>
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e2833001 	add	r3, r3, #1
    12f8:	e50b300c 	str	r3, [fp, #-12]
    12fc:	e51b300c 	ldr	r3, [fp, #-12]
    1300:	e5d33000 	ldrb	r3, [r3]
    1304:	e3530000 	cmp	r3, #0
    1308:	1afffff3 	bne	12dc <printf+0x144>
    130c:	ea00001d 	b	1388 <printf+0x1f0>
    1310:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1314:	e3530063 	cmp	r3, #99	@ 0x63
    1318:	1a000009 	bne	1344 <printf+0x1ac>
    131c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1320:	e5933000 	ldr	r3, [r3]
    1324:	e6ef3073 	uxtb	r3, r3
    1328:	e1a01003 	mov	r1, r3
    132c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1330:	ebffff3c 	bl	1028 <putc>
    1334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1338:	e2833004 	add	r3, r3, #4
    133c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1340:	ea000010 	b	1388 <printf+0x1f0>
    1344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1348:	e3530025 	cmp	r3, #37	@ 0x25
    134c:	1a000005 	bne	1368 <printf+0x1d0>
    1350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1354:	e6ef3073 	uxtb	r3, r3
    1358:	e1a01003 	mov	r1, r3
    135c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1360:	ebffff30 	bl	1028 <putc>
    1364:	ea000007 	b	1388 <printf+0x1f0>
    1368:	e3a01025 	mov	r1, #37	@ 0x25
    136c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1370:	ebffff2c 	bl	1028 <putc>
    1374:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1378:	e6ef3073 	uxtb	r3, r3
    137c:	e1a01003 	mov	r1, r3
    1380:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1384:	ebffff27 	bl	1028 <putc>
    1388:	e3a03000 	mov	r3, #0
    138c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1390:	e51b3010 	ldr	r3, [fp, #-16]
    1394:	e2833001 	add	r3, r3, #1
    1398:	e50b3010 	str	r3, [fp, #-16]
    139c:	e59b2004 	ldr	r2, [fp, #4]
    13a0:	e51b3010 	ldr	r3, [fp, #-16]
    13a4:	e0823003 	add	r3, r2, r3
    13a8:	e5d33000 	ldrb	r3, [r3]
    13ac:	e3530000 	cmp	r3, #0
    13b0:	1affff84 	bne	11c8 <printf+0x30>
    13b4:	e1a00000 	nop			@ (mov r0, r0)
    13b8:	e1a00000 	nop			@ (mov r0, r0)
    13bc:	e24bd004 	sub	sp, fp, #4
    13c0:	e8bd4800 	pop	{fp, lr}
    13c4:	e28dd00c 	add	sp, sp, #12
    13c8:	e12fff1e 	bx	lr
    13cc:	00001868 	.word	0x00001868

000013d0 <free>:
    13d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13d4:	e28db000 	add	fp, sp, #0
    13d8:	e24dd014 	sub	sp, sp, #20
    13dc:	e50b0010 	str	r0, [fp, #-16]
    13e0:	e51b3010 	ldr	r3, [fp, #-16]
    13e4:	e2433008 	sub	r3, r3, #8
    13e8:	e50b300c 	str	r3, [fp, #-12]
    13ec:	e59f3154 	ldr	r3, [pc, #340]	@ 1548 <free+0x178>
    13f0:	e5933000 	ldr	r3, [r3]
    13f4:	e50b3008 	str	r3, [fp, #-8]
    13f8:	ea000010 	b	1440 <free+0x70>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e51b2008 	ldr	r2, [fp, #-8]
    1408:	e1520003 	cmp	r2, r3
    140c:	3a000008 	bcc	1434 <free+0x64>
    1410:	e51b200c 	ldr	r2, [fp, #-12]
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e1520003 	cmp	r2, r3
    141c:	8a000010 	bhi	1464 <free+0x94>
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e51b200c 	ldr	r2, [fp, #-12]
    142c:	e1520003 	cmp	r2, r3
    1430:	3a00000b 	bcc	1464 <free+0x94>
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e5933000 	ldr	r3, [r3]
    143c:	e50b3008 	str	r3, [fp, #-8]
    1440:	e51b200c 	ldr	r2, [fp, #-12]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e1520003 	cmp	r2, r3
    144c:	9affffea 	bls	13fc <free+0x2c>
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e5933000 	ldr	r3, [r3]
    1458:	e51b200c 	ldr	r2, [fp, #-12]
    145c:	e1520003 	cmp	r2, r3
    1460:	2affffe5 	bcs	13fc <free+0x2c>
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5933004 	ldr	r3, [r3, #4]
    146c:	e1a03183 	lsl	r3, r3, #3
    1470:	e51b200c 	ldr	r2, [fp, #-12]
    1474:	e0822003 	add	r2, r2, r3
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e1520003 	cmp	r2, r3
    1484:	1a00000d 	bne	14c0 <free+0xf0>
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e5932004 	ldr	r2, [r3, #4]
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5933000 	ldr	r3, [r3]
    1498:	e5933004 	ldr	r3, [r3, #4]
    149c:	e0822003 	add	r2, r2, r3
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e5832004 	str	r2, [r3, #4]
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e5932000 	ldr	r2, [r3]
    14b4:	e51b300c 	ldr	r3, [fp, #-12]
    14b8:	e5832000 	str	r2, [r3]
    14bc:	ea000003 	b	14d0 <free+0x100>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5932000 	ldr	r2, [r3]
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5832000 	str	r2, [r3]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933004 	ldr	r3, [r3, #4]
    14d8:	e1a03183 	lsl	r3, r3, #3
    14dc:	e51b2008 	ldr	r2, [fp, #-8]
    14e0:	e0823003 	add	r3, r2, r3
    14e4:	e51b200c 	ldr	r2, [fp, #-12]
    14e8:	e1520003 	cmp	r2, r3
    14ec:	1a00000b 	bne	1520 <free+0x150>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5932004 	ldr	r2, [r3, #4]
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e5933004 	ldr	r3, [r3, #4]
    1500:	e0822003 	add	r2, r2, r3
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5832004 	str	r2, [r3, #4]
    150c:	e51b300c 	ldr	r3, [fp, #-12]
    1510:	e5932000 	ldr	r2, [r3]
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5832000 	str	r2, [r3]
    151c:	ea000002 	b	152c <free+0x15c>
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e51b200c 	ldr	r2, [fp, #-12]
    1528:	e5832000 	str	r2, [r3]
    152c:	e59f2014 	ldr	r2, [pc, #20]	@ 1548 <free+0x178>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5823000 	str	r3, [r2]
    1538:	e1a00000 	nop			@ (mov r0, r0)
    153c:	e28bd000 	add	sp, fp, #0
    1540:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1544:	e12fff1e 	bx	lr
    1548:	0000188c 	.word	0x0000188c

0000154c <morecore>:
    154c:	e92d4800 	push	{fp, lr}
    1550:	e28db004 	add	fp, sp, #4
    1554:	e24dd010 	sub	sp, sp, #16
    1558:	e50b0010 	str	r0, [fp, #-16]
    155c:	e51b3010 	ldr	r3, [fp, #-16]
    1560:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1564:	2a000001 	bcs	1570 <morecore+0x24>
    1568:	e3a03a01 	mov	r3, #4096	@ 0x1000
    156c:	e50b3010 	str	r3, [fp, #-16]
    1570:	e51b3010 	ldr	r3, [fp, #-16]
    1574:	e1a03183 	lsl	r3, r3, #3
    1578:	e1a00003 	mov	r0, r3
    157c:	ebfffdfc 	bl	d74 <sbrk>
    1580:	e50b0008 	str	r0, [fp, #-8]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e3730001 	cmn	r3, #1
    158c:	1a000001 	bne	1598 <morecore+0x4c>
    1590:	e3a03000 	mov	r3, #0
    1594:	ea00000a 	b	15c4 <morecore+0x78>
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e50b300c 	str	r3, [fp, #-12]
    15a0:	e51b300c 	ldr	r3, [fp, #-12]
    15a4:	e51b2010 	ldr	r2, [fp, #-16]
    15a8:	e5832004 	str	r2, [r3, #4]
    15ac:	e51b300c 	ldr	r3, [fp, #-12]
    15b0:	e2833008 	add	r3, r3, #8
    15b4:	e1a00003 	mov	r0, r3
    15b8:	ebffff84 	bl	13d0 <free>
    15bc:	e59f300c 	ldr	r3, [pc, #12]	@ 15d0 <morecore+0x84>
    15c0:	e5933000 	ldr	r3, [r3]
    15c4:	e1a00003 	mov	r0, r3
    15c8:	e24bd004 	sub	sp, fp, #4
    15cc:	e8bd8800 	pop	{fp, pc}
    15d0:	0000188c 	.word	0x0000188c

000015d4 <malloc>:
    15d4:	e92d4800 	push	{fp, lr}
    15d8:	e28db004 	add	fp, sp, #4
    15dc:	e24dd018 	sub	sp, sp, #24
    15e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15e8:	e2833007 	add	r3, r3, #7
    15ec:	e1a031a3 	lsr	r3, r3, #3
    15f0:	e2833001 	add	r3, r3, #1
    15f4:	e50b3010 	str	r3, [fp, #-16]
    15f8:	e59f3134 	ldr	r3, [pc, #308]	@ 1734 <malloc+0x160>
    15fc:	e5933000 	ldr	r3, [r3]
    1600:	e50b300c 	str	r3, [fp, #-12]
    1604:	e51b300c 	ldr	r3, [fp, #-12]
    1608:	e3530000 	cmp	r3, #0
    160c:	1a00000b 	bne	1640 <malloc+0x6c>
    1610:	e59f3120 	ldr	r3, [pc, #288]	@ 1738 <malloc+0x164>
    1614:	e50b300c 	str	r3, [fp, #-12]
    1618:	e59f2114 	ldr	r2, [pc, #276]	@ 1734 <malloc+0x160>
    161c:	e51b300c 	ldr	r3, [fp, #-12]
    1620:	e5823000 	str	r3, [r2]
    1624:	e59f3108 	ldr	r3, [pc, #264]	@ 1734 <malloc+0x160>
    1628:	e5933000 	ldr	r3, [r3]
    162c:	e59f2104 	ldr	r2, [pc, #260]	@ 1738 <malloc+0x164>
    1630:	e5823000 	str	r3, [r2]
    1634:	e59f30fc 	ldr	r3, [pc, #252]	@ 1738 <malloc+0x164>
    1638:	e3a02000 	mov	r2, #0
    163c:	e5832004 	str	r2, [r3, #4]
    1640:	e51b300c 	ldr	r3, [fp, #-12]
    1644:	e5933000 	ldr	r3, [r3]
    1648:	e50b3008 	str	r3, [fp, #-8]
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e5933004 	ldr	r3, [r3, #4]
    1654:	e51b2010 	ldr	r2, [fp, #-16]
    1658:	e1520003 	cmp	r2, r3
    165c:	8a00001e 	bhi	16dc <malloc+0x108>
    1660:	e51b3008 	ldr	r3, [fp, #-8]
    1664:	e5933004 	ldr	r3, [r3, #4]
    1668:	e51b2010 	ldr	r2, [fp, #-16]
    166c:	e1520003 	cmp	r2, r3
    1670:	1a000004 	bne	1688 <malloc+0xb4>
    1674:	e51b3008 	ldr	r3, [fp, #-8]
    1678:	e5932000 	ldr	r2, [r3]
    167c:	e51b300c 	ldr	r3, [fp, #-12]
    1680:	e5832000 	str	r2, [r3]
    1684:	ea00000e 	b	16c4 <malloc+0xf0>
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e5932004 	ldr	r2, [r3, #4]
    1690:	e51b3010 	ldr	r3, [fp, #-16]
    1694:	e0422003 	sub	r2, r2, r3
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e5832004 	str	r2, [r3, #4]
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e5933004 	ldr	r3, [r3, #4]
    16a8:	e1a03183 	lsl	r3, r3, #3
    16ac:	e51b2008 	ldr	r2, [fp, #-8]
    16b0:	e0823003 	add	r3, r2, r3
    16b4:	e50b3008 	str	r3, [fp, #-8]
    16b8:	e51b3008 	ldr	r3, [fp, #-8]
    16bc:	e51b2010 	ldr	r2, [fp, #-16]
    16c0:	e5832004 	str	r2, [r3, #4]
    16c4:	e59f2068 	ldr	r2, [pc, #104]	@ 1734 <malloc+0x160>
    16c8:	e51b300c 	ldr	r3, [fp, #-12]
    16cc:	e5823000 	str	r3, [r2]
    16d0:	e51b3008 	ldr	r3, [fp, #-8]
    16d4:	e2833008 	add	r3, r3, #8
    16d8:	ea000012 	b	1728 <malloc+0x154>
    16dc:	e59f3050 	ldr	r3, [pc, #80]	@ 1734 <malloc+0x160>
    16e0:	e5933000 	ldr	r3, [r3]
    16e4:	e51b2008 	ldr	r2, [fp, #-8]
    16e8:	e1520003 	cmp	r2, r3
    16ec:	1a000007 	bne	1710 <malloc+0x13c>
    16f0:	e51b0010 	ldr	r0, [fp, #-16]
    16f4:	ebffff94 	bl	154c <morecore>
    16f8:	e50b0008 	str	r0, [fp, #-8]
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e3530000 	cmp	r3, #0
    1704:	1a000001 	bne	1710 <malloc+0x13c>
    1708:	e3a03000 	mov	r3, #0
    170c:	ea000005 	b	1728 <malloc+0x154>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e50b300c 	str	r3, [fp, #-12]
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e5933000 	ldr	r3, [r3]
    1720:	e50b3008 	str	r3, [fp, #-8]
    1724:	eaffffc8 	b	164c <malloc+0x78>
    1728:	e1a00003 	mov	r0, r3
    172c:	e24bd004 	sub	sp, fp, #4
    1730:	e8bd8800 	pop	{fp, pc}
    1734:	0000188c 	.word	0x0000188c
    1738:	00001884 	.word	0x00001884

0000173c <__udivsi3>:
    173c:	e2512001 	subs	r2, r1, #1
    1740:	012fff1e 	bxeq	lr
    1744:	3a000036 	bcc	1824 <__udivsi3+0xe8>
    1748:	e1500001 	cmp	r0, r1
    174c:	9a000022 	bls	17dc <__udivsi3+0xa0>
    1750:	e1110002 	tst	r1, r2
    1754:	0a000023 	beq	17e8 <__udivsi3+0xac>
    1758:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    175c:	01a01181 	lsleq	r1, r1, #3
    1760:	03a03008 	moveq	r3, #8
    1764:	13a03001 	movne	r3, #1
    1768:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    176c:	31510000 	cmpcc	r1, r0
    1770:	31a01201 	lslcc	r1, r1, #4
    1774:	31a03203 	lslcc	r3, r3, #4
    1778:	3afffffa 	bcc	1768 <__udivsi3+0x2c>
    177c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1780:	31510000 	cmpcc	r1, r0
    1784:	31a01081 	lslcc	r1, r1, #1
    1788:	31a03083 	lslcc	r3, r3, #1
    178c:	3afffffa 	bcc	177c <__udivsi3+0x40>
    1790:	e3a02000 	mov	r2, #0
    1794:	e1500001 	cmp	r0, r1
    1798:	20400001 	subcs	r0, r0, r1
    179c:	21822003 	orrcs	r2, r2, r3
    17a0:	e15000a1 	cmp	r0, r1, lsr #1
    17a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    17a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17ac:	e1500121 	cmp	r0, r1, lsr #2
    17b0:	20400121 	subcs	r0, r0, r1, lsr #2
    17b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    17b8:	e15001a1 	cmp	r0, r1, lsr #3
    17bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    17c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17c4:	e3500000 	cmp	r0, #0
    17c8:	11b03223 	lsrsne	r3, r3, #4
    17cc:	11a01221 	lsrne	r1, r1, #4
    17d0:	1affffef 	bne	1794 <__udivsi3+0x58>
    17d4:	e1a00002 	mov	r0, r2
    17d8:	e12fff1e 	bx	lr
    17dc:	03a00001 	moveq	r0, #1
    17e0:	13a00000 	movne	r0, #0
    17e4:	e12fff1e 	bx	lr
    17e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    17ec:	21a01821 	lsrcs	r1, r1, #16
    17f0:	23a02010 	movcs	r2, #16
    17f4:	33a02000 	movcc	r2, #0
    17f8:	e3510c01 	cmp	r1, #256	@ 0x100
    17fc:	21a01421 	lsrcs	r1, r1, #8
    1800:	22822008 	addcs	r2, r2, #8
    1804:	e3510010 	cmp	r1, #16
    1808:	21a01221 	lsrcs	r1, r1, #4
    180c:	22822004 	addcs	r2, r2, #4
    1810:	e3510004 	cmp	r1, #4
    1814:	82822003 	addhi	r2, r2, #3
    1818:	908220a1 	addls	r2, r2, r1, lsr #1
    181c:	e1a00230 	lsr	r0, r0, r2
    1820:	e12fff1e 	bx	lr
    1824:	e3500000 	cmp	r0, #0
    1828:	13e00000 	mvnne	r0, #0
    182c:	ea000007 	b	1850 <__aeabi_idiv0>

00001830 <__aeabi_uidivmod>:
    1830:	e3510000 	cmp	r1, #0
    1834:	0afffffa 	beq	1824 <__udivsi3+0xe8>
    1838:	e92d4003 	push	{r0, r1, lr}
    183c:	ebffffbe 	bl	173c <__udivsi3>
    1840:	e8bd4006 	pop	{r1, r2, lr}
    1844:	e0030092 	mul	r3, r2, r0
    1848:	e0411003 	sub	r1, r1, r3
    184c:	e12fff1e 	bx	lr

00001850 <__aeabi_idiv0>:
    1850:	e12fff1e 	bx	lr
