
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
      28:	eb000451 	bl	1174 <printf>
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
      84:	00001830 	.word	0x00001830

00000088 <pg_pte>:
      88:	e92d4800 	push	{fp, lr}
      8c:	e28db004 	add	fp, sp, #4
      90:	e24dd008 	sub	sp, sp, #8
      94:	e50b0008 	str	r0, [fp, #-8]
      98:	e51b1008 	ldr	r1, [fp, #-8]
      9c:	e3a0001a 	mov	r0, #26
      a0:	eb0003d5 	bl	ffc <syscall>
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
      cc:	eb0003ca 	bl	ffc <syscall>
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
      f8:	eb0003bf 	bl	ffc <syscall>
      fc:	e1a03000 	mov	r3, r0
     100:	e1a00003 	mov	r0, r3
     104:	e24bd004 	sub	sp, fp, #4
     108:	e8bd8800 	pop	{fp, pc}

0000010c <kpt>:
     10c:	e92d4800 	push	{fp, lr}
     110:	e28db004 	add	fp, sp, #4
     114:	e3a0001d 	mov	r0, #29
     118:	eb0003b7 	bl	ffc <syscall>
     11c:	e1a03000 	mov	r3, r0
     120:	e1a00003 	mov	r0, r3
     124:	e8bd8800 	pop	{fp, pc}

00000128 <ugetpid>:
     128:	e92d4800 	push	{fp, lr}
     12c:	e28db004 	add	fp, sp, #4
     130:	e3a0001e 	mov	r0, #30
     134:	eb0003b0 	bl	ffc <syscall>
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

00000ffc <syscall>:
     ffc:	ef000000 	svc	0x00000000
    1000:	e12fff1e 	bx	lr

00001004 <putc>:
    1004:	e92d4800 	push	{fp, lr}
    1008:	e28db004 	add	fp, sp, #4
    100c:	e24dd008 	sub	sp, sp, #8
    1010:	e50b0008 	str	r0, [fp, #-8]
    1014:	e1a03001 	mov	r3, r1
    1018:	e54b3009 	strb	r3, [fp, #-9]
    101c:	e24b3009 	sub	r3, fp, #9
    1020:	e3a02001 	mov	r2, #1
    1024:	e1a01003 	mov	r1, r3
    1028:	e51b0008 	ldr	r0, [fp, #-8]
    102c:	ebfffedb 	bl	ba0 <write>
    1030:	e1a00000 	nop			@ (mov r0, r0)
    1034:	e24bd004 	sub	sp, fp, #4
    1038:	e8bd8800 	pop	{fp, pc}

0000103c <printint>:
    103c:	e92d4800 	push	{fp, lr}
    1040:	e28db004 	add	fp, sp, #4
    1044:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1048:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    104c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1050:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1054:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1058:	e3a03000 	mov	r3, #0
    105c:	e50b300c 	str	r3, [fp, #-12]
    1060:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1064:	e3530000 	cmp	r3, #0
    1068:	0a000008 	beq	1090 <printint+0x54>
    106c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1070:	e3530000 	cmp	r3, #0
    1074:	aa000005 	bge	1090 <printint+0x54>
    1078:	e3a03001 	mov	r3, #1
    107c:	e50b300c 	str	r3, [fp, #-12]
    1080:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1084:	e2633000 	rsb	r3, r3, #0
    1088:	e50b3010 	str	r3, [fp, #-16]
    108c:	ea000001 	b	1098 <printint+0x5c>
    1090:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1094:	e50b3010 	str	r3, [fp, #-16]
    1098:	e3a03000 	mov	r3, #0
    109c:	e50b3008 	str	r3, [fp, #-8]
    10a0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10a4:	e51b3010 	ldr	r3, [fp, #-16]
    10a8:	e1a01002 	mov	r1, r2
    10ac:	e1a00003 	mov	r0, r3
    10b0:	eb0001d5 	bl	180c <__aeabi_uidivmod>
    10b4:	e1a03001 	mov	r3, r1
    10b8:	e1a01003 	mov	r1, r3
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e2832001 	add	r2, r3, #1
    10c4:	e50b2008 	str	r2, [fp, #-8]
    10c8:	e59f20a0 	ldr	r2, [pc, #160]	@ 1170 <printint+0x134>
    10cc:	e7d22001 	ldrb	r2, [r2, r1]
    10d0:	e2433004 	sub	r3, r3, #4
    10d4:	e083300b 	add	r3, r3, fp
    10d8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10dc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10e0:	e1a01003 	mov	r1, r3
    10e4:	e51b0010 	ldr	r0, [fp, #-16]
    10e8:	eb00018a 	bl	1718 <__udivsi3>
    10ec:	e1a03000 	mov	r3, r0
    10f0:	e50b3010 	str	r3, [fp, #-16]
    10f4:	e51b3010 	ldr	r3, [fp, #-16]
    10f8:	e3530000 	cmp	r3, #0
    10fc:	1affffe7 	bne	10a0 <printint+0x64>
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e3530000 	cmp	r3, #0
    1108:	0a00000e 	beq	1148 <printint+0x10c>
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e2832001 	add	r2, r3, #1
    1114:	e50b2008 	str	r2, [fp, #-8]
    1118:	e2433004 	sub	r3, r3, #4
    111c:	e083300b 	add	r3, r3, fp
    1120:	e3a0202d 	mov	r2, #45	@ 0x2d
    1124:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1128:	ea000006 	b	1148 <printint+0x10c>
    112c:	e24b2020 	sub	r2, fp, #32
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e0823003 	add	r3, r2, r3
    1138:	e5d33000 	ldrb	r3, [r3]
    113c:	e1a01003 	mov	r1, r3
    1140:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1144:	ebffffae 	bl	1004 <putc>
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e2433001 	sub	r3, r3, #1
    1150:	e50b3008 	str	r3, [fp, #-8]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e3530000 	cmp	r3, #0
    115c:	aafffff2 	bge	112c <printint+0xf0>
    1160:	e1a00000 	nop			@ (mov r0, r0)
    1164:	e1a00000 	nop			@ (mov r0, r0)
    1168:	e24bd004 	sub	sp, fp, #4
    116c:	e8bd8800 	pop	{fp, pc}
    1170:	0000184c 	.word	0x0000184c

00001174 <printf>:
    1174:	e92d000e 	push	{r1, r2, r3}
    1178:	e92d4800 	push	{fp, lr}
    117c:	e28db004 	add	fp, sp, #4
    1180:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1184:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1188:	e3a03000 	mov	r3, #0
    118c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1190:	e28b3008 	add	r3, fp, #8
    1194:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1198:	e3a03000 	mov	r3, #0
    119c:	e50b3010 	str	r3, [fp, #-16]
    11a0:	ea000074 	b	1378 <printf+0x204>
    11a4:	e59b2004 	ldr	r2, [fp, #4]
    11a8:	e51b3010 	ldr	r3, [fp, #-16]
    11ac:	e0823003 	add	r3, r2, r3
    11b0:	e5d33000 	ldrb	r3, [r3]
    11b4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11bc:	e3530000 	cmp	r3, #0
    11c0:	1a00000b 	bne	11f4 <printf+0x80>
    11c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c8:	e3530025 	cmp	r3, #37	@ 0x25
    11cc:	1a000002 	bne	11dc <printf+0x68>
    11d0:	e3a03025 	mov	r3, #37	@ 0x25
    11d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11d8:	ea000063 	b	136c <printf+0x1f8>
    11dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11e0:	e6ef3073 	uxtb	r3, r3
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ec:	ebffff84 	bl	1004 <putc>
    11f0:	ea00005d 	b	136c <printf+0x1f8>
    11f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11f8:	e3530025 	cmp	r3, #37	@ 0x25
    11fc:	1a00005a 	bne	136c <printf+0x1f8>
    1200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1204:	e3530064 	cmp	r3, #100	@ 0x64
    1208:	1a00000a 	bne	1238 <printf+0xc4>
    120c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1210:	e5933000 	ldr	r3, [r3]
    1214:	e1a01003 	mov	r1, r3
    1218:	e3a03001 	mov	r3, #1
    121c:	e3a0200a 	mov	r2, #10
    1220:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1224:	ebffff84 	bl	103c <printint>
    1228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    122c:	e2833004 	add	r3, r3, #4
    1230:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1234:	ea00004a 	b	1364 <printf+0x1f0>
    1238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    123c:	e3530078 	cmp	r3, #120	@ 0x78
    1240:	0a000002 	beq	1250 <printf+0xdc>
    1244:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1248:	e3530070 	cmp	r3, #112	@ 0x70
    124c:	1a00000a 	bne	127c <printf+0x108>
    1250:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e1a01003 	mov	r1, r3
    125c:	e3a03000 	mov	r3, #0
    1260:	e3a02010 	mov	r2, #16
    1264:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1268:	ebffff73 	bl	103c <printint>
    126c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1270:	e2833004 	add	r3, r3, #4
    1274:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1278:	ea000039 	b	1364 <printf+0x1f0>
    127c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1280:	e3530073 	cmp	r3, #115	@ 0x73
    1284:	1a000018 	bne	12ec <printf+0x178>
    1288:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e50b300c 	str	r3, [fp, #-12]
    1294:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1298:	e2833004 	add	r3, r3, #4
    129c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e3530000 	cmp	r3, #0
    12a8:	1a00000a 	bne	12d8 <printf+0x164>
    12ac:	e59f30f4 	ldr	r3, [pc, #244]	@ 13a8 <printf+0x234>
    12b0:	e50b300c 	str	r3, [fp, #-12]
    12b4:	ea000007 	b	12d8 <printf+0x164>
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5d33000 	ldrb	r3, [r3]
    12c0:	e1a01003 	mov	r1, r3
    12c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c8:	ebffff4d 	bl	1004 <putc>
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e2833001 	add	r3, r3, #1
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e5d33000 	ldrb	r3, [r3]
    12e0:	e3530000 	cmp	r3, #0
    12e4:	1afffff3 	bne	12b8 <printf+0x144>
    12e8:	ea00001d 	b	1364 <printf+0x1f0>
    12ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e3530063 	cmp	r3, #99	@ 0x63
    12f4:	1a000009 	bne	1320 <printf+0x1ac>
    12f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e6ef3073 	uxtb	r3, r3
    1304:	e1a01003 	mov	r1, r3
    1308:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    130c:	ebffff3c 	bl	1004 <putc>
    1310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1314:	e2833004 	add	r3, r3, #4
    1318:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    131c:	ea000010 	b	1364 <printf+0x1f0>
    1320:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1324:	e3530025 	cmp	r3, #37	@ 0x25
    1328:	1a000005 	bne	1344 <printf+0x1d0>
    132c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1330:	e6ef3073 	uxtb	r3, r3
    1334:	e1a01003 	mov	r1, r3
    1338:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    133c:	ebffff30 	bl	1004 <putc>
    1340:	ea000007 	b	1364 <printf+0x1f0>
    1344:	e3a01025 	mov	r1, #37	@ 0x25
    1348:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    134c:	ebffff2c 	bl	1004 <putc>
    1350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1354:	e6ef3073 	uxtb	r3, r3
    1358:	e1a01003 	mov	r1, r3
    135c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1360:	ebffff27 	bl	1004 <putc>
    1364:	e3a03000 	mov	r3, #0
    1368:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    136c:	e51b3010 	ldr	r3, [fp, #-16]
    1370:	e2833001 	add	r3, r3, #1
    1374:	e50b3010 	str	r3, [fp, #-16]
    1378:	e59b2004 	ldr	r2, [fp, #4]
    137c:	e51b3010 	ldr	r3, [fp, #-16]
    1380:	e0823003 	add	r3, r2, r3
    1384:	e5d33000 	ldrb	r3, [r3]
    1388:	e3530000 	cmp	r3, #0
    138c:	1affff84 	bne	11a4 <printf+0x30>
    1390:	e1a00000 	nop			@ (mov r0, r0)
    1394:	e1a00000 	nop			@ (mov r0, r0)
    1398:	e24bd004 	sub	sp, fp, #4
    139c:	e8bd4800 	pop	{fp, lr}
    13a0:	e28dd00c 	add	sp, sp, #12
    13a4:	e12fff1e 	bx	lr
    13a8:	00001844 	.word	0x00001844

000013ac <free>:
    13ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13b0:	e28db000 	add	fp, sp, #0
    13b4:	e24dd014 	sub	sp, sp, #20
    13b8:	e50b0010 	str	r0, [fp, #-16]
    13bc:	e51b3010 	ldr	r3, [fp, #-16]
    13c0:	e2433008 	sub	r3, r3, #8
    13c4:	e50b300c 	str	r3, [fp, #-12]
    13c8:	e59f3154 	ldr	r3, [pc, #340]	@ 1524 <free+0x178>
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e50b3008 	str	r3, [fp, #-8]
    13d4:	ea000010 	b	141c <free+0x70>
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5933000 	ldr	r3, [r3]
    13e0:	e51b2008 	ldr	r2, [fp, #-8]
    13e4:	e1520003 	cmp	r2, r3
    13e8:	3a000008 	bcc	1410 <free+0x64>
    13ec:	e51b200c 	ldr	r2, [fp, #-12]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e1520003 	cmp	r2, r3
    13f8:	8a000010 	bhi	1440 <free+0x94>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e51b200c 	ldr	r2, [fp, #-12]
    1408:	e1520003 	cmp	r2, r3
    140c:	3a00000b 	bcc	1440 <free+0x94>
    1410:	e51b3008 	ldr	r3, [fp, #-8]
    1414:	e5933000 	ldr	r3, [r3]
    1418:	e50b3008 	str	r3, [fp, #-8]
    141c:	e51b200c 	ldr	r2, [fp, #-12]
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e1520003 	cmp	r2, r3
    1428:	9affffea 	bls	13d8 <free+0x2c>
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e51b200c 	ldr	r2, [fp, #-12]
    1438:	e1520003 	cmp	r2, r3
    143c:	2affffe5 	bcs	13d8 <free+0x2c>
    1440:	e51b300c 	ldr	r3, [fp, #-12]
    1444:	e5933004 	ldr	r3, [r3, #4]
    1448:	e1a03183 	lsl	r3, r3, #3
    144c:	e51b200c 	ldr	r2, [fp, #-12]
    1450:	e0822003 	add	r2, r2, r3
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5933000 	ldr	r3, [r3]
    145c:	e1520003 	cmp	r2, r3
    1460:	1a00000d 	bne	149c <free+0xf0>
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5932004 	ldr	r2, [r3, #4]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e5933004 	ldr	r3, [r3, #4]
    1478:	e0822003 	add	r2, r2, r3
    147c:	e51b300c 	ldr	r3, [fp, #-12]
    1480:	e5832004 	str	r2, [r3, #4]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5933000 	ldr	r3, [r3]
    148c:	e5932000 	ldr	r2, [r3]
    1490:	e51b300c 	ldr	r3, [fp, #-12]
    1494:	e5832000 	str	r2, [r3]
    1498:	ea000003 	b	14ac <free+0x100>
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e5932000 	ldr	r2, [r3]
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5832000 	str	r2, [r3]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933004 	ldr	r3, [r3, #4]
    14b4:	e1a03183 	lsl	r3, r3, #3
    14b8:	e51b2008 	ldr	r2, [fp, #-8]
    14bc:	e0823003 	add	r3, r2, r3
    14c0:	e51b200c 	ldr	r2, [fp, #-12]
    14c4:	e1520003 	cmp	r2, r3
    14c8:	1a00000b 	bne	14fc <free+0x150>
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e5932004 	ldr	r2, [r3, #4]
    14d4:	e51b300c 	ldr	r3, [fp, #-12]
    14d8:	e5933004 	ldr	r3, [r3, #4]
    14dc:	e0822003 	add	r2, r2, r3
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e5832004 	str	r2, [r3, #4]
    14e8:	e51b300c 	ldr	r3, [fp, #-12]
    14ec:	e5932000 	ldr	r2, [r3]
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5832000 	str	r2, [r3]
    14f8:	ea000002 	b	1508 <free+0x15c>
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e51b200c 	ldr	r2, [fp, #-12]
    1504:	e5832000 	str	r2, [r3]
    1508:	e59f2014 	ldr	r2, [pc, #20]	@ 1524 <free+0x178>
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5823000 	str	r3, [r2]
    1514:	e1a00000 	nop			@ (mov r0, r0)
    1518:	e28bd000 	add	sp, fp, #0
    151c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1520:	e12fff1e 	bx	lr
    1524:	00001868 	.word	0x00001868

00001528 <morecore>:
    1528:	e92d4800 	push	{fp, lr}
    152c:	e28db004 	add	fp, sp, #4
    1530:	e24dd010 	sub	sp, sp, #16
    1534:	e50b0010 	str	r0, [fp, #-16]
    1538:	e51b3010 	ldr	r3, [fp, #-16]
    153c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1540:	2a000001 	bcs	154c <morecore+0x24>
    1544:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1548:	e50b3010 	str	r3, [fp, #-16]
    154c:	e51b3010 	ldr	r3, [fp, #-16]
    1550:	e1a03183 	lsl	r3, r3, #3
    1554:	e1a00003 	mov	r0, r3
    1558:	ebfffe05 	bl	d74 <sbrk>
    155c:	e50b0008 	str	r0, [fp, #-8]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e3730001 	cmn	r3, #1
    1568:	1a000001 	bne	1574 <morecore+0x4c>
    156c:	e3a03000 	mov	r3, #0
    1570:	ea00000a 	b	15a0 <morecore+0x78>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e50b300c 	str	r3, [fp, #-12]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e51b2010 	ldr	r2, [fp, #-16]
    1584:	e5832004 	str	r2, [r3, #4]
    1588:	e51b300c 	ldr	r3, [fp, #-12]
    158c:	e2833008 	add	r3, r3, #8
    1590:	e1a00003 	mov	r0, r3
    1594:	ebffff84 	bl	13ac <free>
    1598:	e59f300c 	ldr	r3, [pc, #12]	@ 15ac <morecore+0x84>
    159c:	e5933000 	ldr	r3, [r3]
    15a0:	e1a00003 	mov	r0, r3
    15a4:	e24bd004 	sub	sp, fp, #4
    15a8:	e8bd8800 	pop	{fp, pc}
    15ac:	00001868 	.word	0x00001868

000015b0 <malloc>:
    15b0:	e92d4800 	push	{fp, lr}
    15b4:	e28db004 	add	fp, sp, #4
    15b8:	e24dd018 	sub	sp, sp, #24
    15bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15c4:	e2833007 	add	r3, r3, #7
    15c8:	e1a031a3 	lsr	r3, r3, #3
    15cc:	e2833001 	add	r3, r3, #1
    15d0:	e50b3010 	str	r3, [fp, #-16]
    15d4:	e59f3134 	ldr	r3, [pc, #308]	@ 1710 <malloc+0x160>
    15d8:	e5933000 	ldr	r3, [r3]
    15dc:	e50b300c 	str	r3, [fp, #-12]
    15e0:	e51b300c 	ldr	r3, [fp, #-12]
    15e4:	e3530000 	cmp	r3, #0
    15e8:	1a00000b 	bne	161c <malloc+0x6c>
    15ec:	e59f3120 	ldr	r3, [pc, #288]	@ 1714 <malloc+0x164>
    15f0:	e50b300c 	str	r3, [fp, #-12]
    15f4:	e59f2114 	ldr	r2, [pc, #276]	@ 1710 <malloc+0x160>
    15f8:	e51b300c 	ldr	r3, [fp, #-12]
    15fc:	e5823000 	str	r3, [r2]
    1600:	e59f3108 	ldr	r3, [pc, #264]	@ 1710 <malloc+0x160>
    1604:	e5933000 	ldr	r3, [r3]
    1608:	e59f2104 	ldr	r2, [pc, #260]	@ 1714 <malloc+0x164>
    160c:	e5823000 	str	r3, [r2]
    1610:	e59f30fc 	ldr	r3, [pc, #252]	@ 1714 <malloc+0x164>
    1614:	e3a02000 	mov	r2, #0
    1618:	e5832004 	str	r2, [r3, #4]
    161c:	e51b300c 	ldr	r3, [fp, #-12]
    1620:	e5933000 	ldr	r3, [r3]
    1624:	e50b3008 	str	r3, [fp, #-8]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e5933004 	ldr	r3, [r3, #4]
    1630:	e51b2010 	ldr	r2, [fp, #-16]
    1634:	e1520003 	cmp	r2, r3
    1638:	8a00001e 	bhi	16b8 <malloc+0x108>
    163c:	e51b3008 	ldr	r3, [fp, #-8]
    1640:	e5933004 	ldr	r3, [r3, #4]
    1644:	e51b2010 	ldr	r2, [fp, #-16]
    1648:	e1520003 	cmp	r2, r3
    164c:	1a000004 	bne	1664 <malloc+0xb4>
    1650:	e51b3008 	ldr	r3, [fp, #-8]
    1654:	e5932000 	ldr	r2, [r3]
    1658:	e51b300c 	ldr	r3, [fp, #-12]
    165c:	e5832000 	str	r2, [r3]
    1660:	ea00000e 	b	16a0 <malloc+0xf0>
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e5932004 	ldr	r2, [r3, #4]
    166c:	e51b3010 	ldr	r3, [fp, #-16]
    1670:	e0422003 	sub	r2, r2, r3
    1674:	e51b3008 	ldr	r3, [fp, #-8]
    1678:	e5832004 	str	r2, [r3, #4]
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e5933004 	ldr	r3, [r3, #4]
    1684:	e1a03183 	lsl	r3, r3, #3
    1688:	e51b2008 	ldr	r2, [fp, #-8]
    168c:	e0823003 	add	r3, r2, r3
    1690:	e50b3008 	str	r3, [fp, #-8]
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e51b2010 	ldr	r2, [fp, #-16]
    169c:	e5832004 	str	r2, [r3, #4]
    16a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1710 <malloc+0x160>
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5823000 	str	r3, [r2]
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e2833008 	add	r3, r3, #8
    16b4:	ea000012 	b	1704 <malloc+0x154>
    16b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1710 <malloc+0x160>
    16bc:	e5933000 	ldr	r3, [r3]
    16c0:	e51b2008 	ldr	r2, [fp, #-8]
    16c4:	e1520003 	cmp	r2, r3
    16c8:	1a000007 	bne	16ec <malloc+0x13c>
    16cc:	e51b0010 	ldr	r0, [fp, #-16]
    16d0:	ebffff94 	bl	1528 <morecore>
    16d4:	e50b0008 	str	r0, [fp, #-8]
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e3530000 	cmp	r3, #0
    16e0:	1a000001 	bne	16ec <malloc+0x13c>
    16e4:	e3a03000 	mov	r3, #0
    16e8:	ea000005 	b	1704 <malloc+0x154>
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e50b300c 	str	r3, [fp, #-12]
    16f4:	e51b3008 	ldr	r3, [fp, #-8]
    16f8:	e5933000 	ldr	r3, [r3]
    16fc:	e50b3008 	str	r3, [fp, #-8]
    1700:	eaffffc8 	b	1628 <malloc+0x78>
    1704:	e1a00003 	mov	r0, r3
    1708:	e24bd004 	sub	sp, fp, #4
    170c:	e8bd8800 	pop	{fp, pc}
    1710:	00001868 	.word	0x00001868
    1714:	00001860 	.word	0x00001860

00001718 <__udivsi3>:
    1718:	e2512001 	subs	r2, r1, #1
    171c:	012fff1e 	bxeq	lr
    1720:	3a000036 	bcc	1800 <__udivsi3+0xe8>
    1724:	e1500001 	cmp	r0, r1
    1728:	9a000022 	bls	17b8 <__udivsi3+0xa0>
    172c:	e1110002 	tst	r1, r2
    1730:	0a000023 	beq	17c4 <__udivsi3+0xac>
    1734:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1738:	01a01181 	lsleq	r1, r1, #3
    173c:	03a03008 	moveq	r3, #8
    1740:	13a03001 	movne	r3, #1
    1744:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1748:	31510000 	cmpcc	r1, r0
    174c:	31a01201 	lslcc	r1, r1, #4
    1750:	31a03203 	lslcc	r3, r3, #4
    1754:	3afffffa 	bcc	1744 <__udivsi3+0x2c>
    1758:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    175c:	31510000 	cmpcc	r1, r0
    1760:	31a01081 	lslcc	r1, r1, #1
    1764:	31a03083 	lslcc	r3, r3, #1
    1768:	3afffffa 	bcc	1758 <__udivsi3+0x40>
    176c:	e3a02000 	mov	r2, #0
    1770:	e1500001 	cmp	r0, r1
    1774:	20400001 	subcs	r0, r0, r1
    1778:	21822003 	orrcs	r2, r2, r3
    177c:	e15000a1 	cmp	r0, r1, lsr #1
    1780:	204000a1 	subcs	r0, r0, r1, lsr #1
    1784:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1788:	e1500121 	cmp	r0, r1, lsr #2
    178c:	20400121 	subcs	r0, r0, r1, lsr #2
    1790:	21822123 	orrcs	r2, r2, r3, lsr #2
    1794:	e15001a1 	cmp	r0, r1, lsr #3
    1798:	204001a1 	subcs	r0, r0, r1, lsr #3
    179c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17a0:	e3500000 	cmp	r0, #0
    17a4:	11b03223 	lsrsne	r3, r3, #4
    17a8:	11a01221 	lsrne	r1, r1, #4
    17ac:	1affffef 	bne	1770 <__udivsi3+0x58>
    17b0:	e1a00002 	mov	r0, r2
    17b4:	e12fff1e 	bx	lr
    17b8:	03a00001 	moveq	r0, #1
    17bc:	13a00000 	movne	r0, #0
    17c0:	e12fff1e 	bx	lr
    17c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    17c8:	21a01821 	lsrcs	r1, r1, #16
    17cc:	23a02010 	movcs	r2, #16
    17d0:	33a02000 	movcc	r2, #0
    17d4:	e3510c01 	cmp	r1, #256	@ 0x100
    17d8:	21a01421 	lsrcs	r1, r1, #8
    17dc:	22822008 	addcs	r2, r2, #8
    17e0:	e3510010 	cmp	r1, #16
    17e4:	21a01221 	lsrcs	r1, r1, #4
    17e8:	22822004 	addcs	r2, r2, #4
    17ec:	e3510004 	cmp	r1, #4
    17f0:	82822003 	addhi	r2, r2, #3
    17f4:	908220a1 	addls	r2, r2, r1, lsr #1
    17f8:	e1a00230 	lsr	r0, r0, r2
    17fc:	e12fff1e 	bx	lr
    1800:	e3500000 	cmp	r0, #0
    1804:	13e00000 	mvnne	r0, #0
    1808:	ea000007 	b	182c <__aeabi_idiv0>

0000180c <__aeabi_uidivmod>:
    180c:	e3510000 	cmp	r1, #0
    1810:	0afffffa 	beq	1800 <__udivsi3+0xe8>
    1814:	e92d4003 	push	{r0, r1, lr}
    1818:	ebffffbe 	bl	1718 <__udivsi3>
    181c:	e8bd4006 	pop	{r1, r2, lr}
    1820:	e0030092 	mul	r3, r2, r0
    1824:	e0411003 	sub	r1, r1, r3
    1828:	e12fff1e 	bx	lr

0000182c <__aeabi_idiv0>:
    182c:	e12fff1e 	bx	lr
