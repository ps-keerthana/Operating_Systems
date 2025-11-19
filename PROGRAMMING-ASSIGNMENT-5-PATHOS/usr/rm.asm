
_rm:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb000465 	bl	11c4 <printf>
      2c:	eb0002c2 	bl	b3c <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000312 	bl	ca4 <unlink>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	@ b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb00044e 	bl	11c4 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb0002a3 	bl	b3c <exit>
      ac:	00001880 	.word	0x00001880
      b0:	00001894 	.word	0x00001894

000000b4 <pg_pte>:
      b4:	e92d4800 	push	{fp, lr}
      b8:	e28db004 	add	fp, sp, #4
      bc:	e24dd008 	sub	sp, sp, #8
      c0:	e50b0008 	str	r0, [fp, #-8]
      c4:	e51b1008 	ldr	r1, [fp, #-8]
      c8:	e3a0001a 	mov	r0, #26
      cc:	eb0003de 	bl	104c <syscall>
      d0:	e1a03000 	mov	r3, r0
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd004 	sub	sp, fp, #4
      dc:	e8bd8800 	pop	{fp, pc}

000000e0 <pg_pa>:
      e0:	e92d4800 	push	{fp, lr}
      e4:	e28db004 	add	fp, sp, #4
      e8:	e24dd008 	sub	sp, sp, #8
      ec:	e50b0008 	str	r0, [fp, #-8]
      f0:	e51b1008 	ldr	r1, [fp, #-8]
      f4:	e3a0001b 	mov	r0, #27
      f8:	eb0003d3 	bl	104c <syscall>
      fc:	e1a03000 	mov	r3, r0
     100:	e1a00003 	mov	r0, r3
     104:	e24bd004 	sub	sp, fp, #4
     108:	e8bd8800 	pop	{fp, pc}

0000010c <pg_flags>:
     10c:	e92d4800 	push	{fp, lr}
     110:	e28db004 	add	fp, sp, #4
     114:	e24dd008 	sub	sp, sp, #8
     118:	e50b0008 	str	r0, [fp, #-8]
     11c:	e51b1008 	ldr	r1, [fp, #-8]
     120:	e3a0001c 	mov	r0, #28
     124:	eb0003c8 	bl	104c <syscall>
     128:	e1a03000 	mov	r3, r0
     12c:	e1a00003 	mov	r0, r3
     130:	e24bd004 	sub	sp, fp, #4
     134:	e8bd8800 	pop	{fp, pc}

00000138 <kpt>:
     138:	e92d4800 	push	{fp, lr}
     13c:	e28db004 	add	fp, sp, #4
     140:	e3a0001d 	mov	r0, #29
     144:	eb0003c0 	bl	104c <syscall>
     148:	e1a03000 	mov	r3, r0
     14c:	e1a00003 	mov	r0, r3
     150:	e8bd8800 	pop	{fp, pc}

00000154 <ugetpid>:
     154:	e92d4800 	push	{fp, lr}
     158:	e28db004 	add	fp, sp, #4
     15c:	e3a0001e 	mov	r0, #30
     160:	eb0003b9 	bl	104c <syscall>
     164:	e1a03000 	mov	r3, r0
     168:	e1a00003 	mov	r0, r3
     16c:	e8bd8800 	pop	{fp, pc}

00000170 <strcpy>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	e1a00000 	nop			@ (mov r0, r0)
     190:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     194:	e2823001 	add	r3, r2, #1
     198:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e2831001 	add	r1, r3, #1
     1a4:	e50b1010 	str	r1, [fp, #-16]
     1a8:	e5d22000 	ldrb	r2, [r2]
     1ac:	e5c32000 	strb	r2, [r3]
     1b0:	e5d33000 	ldrb	r3, [r3]
     1b4:	e3530000 	cmp	r3, #0
     1b8:	1afffff4 	bne	190 <strcpy+0x20>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e1a00003 	mov	r0, r3
     1c4:	e28bd000 	add	sp, fp, #0
     1c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1cc:	e12fff1e 	bx	lr

000001d0 <strcmp>:
     1d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1d4:	e28db000 	add	fp, sp, #0
     1d8:	e24dd00c 	sub	sp, sp, #12
     1dc:	e50b0008 	str	r0, [fp, #-8]
     1e0:	e50b100c 	str	r1, [fp, #-12]
     1e4:	ea000005 	b	200 <strcmp+0x30>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e2833001 	add	r3, r3, #1
     1f0:	e50b3008 	str	r3, [fp, #-8]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b300c 	str	r3, [fp, #-12]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e5d33000 	ldrb	r3, [r3]
     208:	e3530000 	cmp	r3, #0
     20c:	0a000005 	beq	228 <strcmp+0x58>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e5d32000 	ldrb	r2, [r3]
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e1520003 	cmp	r2, r3
     224:	0affffef 	beq	1e8 <strcmp+0x18>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e1a02003 	mov	r2, r3
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e0423003 	sub	r3, r2, r3
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strlen>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd014 	sub	sp, sp, #20
     25c:	e50b0010 	str	r0, [fp, #-16]
     260:	e3a03000 	mov	r3, #0
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	ea000002 	b	278 <strlen+0x28>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e2833001 	add	r3, r3, #1
     274:	e50b3008 	str	r3, [fp, #-8]
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e51b2010 	ldr	r2, [fp, #-16]
     280:	e0823003 	add	r3, r2, r3
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff6 	bne	26c <strlen+0x1c>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <memset>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2c8:	e54b300d 	strb	r3, [fp, #-13]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e1a03002 	mov	r3, r2
     2d4:	e1a03403 	lsl	r3, r3, #8
     2d8:	e0833002 	add	r3, r3, r2
     2dc:	e1a03803 	lsl	r3, r3, #16
     2e0:	e1a02003 	mov	r2, r3
     2e4:	e55b300d 	ldrb	r3, [fp, #-13]
     2e8:	e1a03403 	lsl	r3, r3, #8
     2ec:	e1822003 	orr	r2, r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1823003 	orr	r3, r2, r3
     2f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2fc:	ea000008 	b	324 <memset+0x80>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e55b200d 	ldrb	r2, [fp, #-13]
     308:	e5c32000 	strb	r2, [r3]
     30c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     310:	e2433001 	sub	r3, r3, #1
     314:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e2833001 	add	r3, r3, #1
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e3530000 	cmp	r3, #0
     32c:	0a000003 	beq	340 <memset+0x9c>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2033003 	and	r3, r3, #3
     338:	e3530000 	cmp	r3, #0
     33c:	1affffef 	bne	300 <memset+0x5c>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e50b300c 	str	r3, [fp, #-12]
     348:	ea000008 	b	370 <memset+0xcc>
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     354:	e5832000 	str	r2, [r3]
     358:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e2433004 	sub	r3, r3, #4
     360:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e2833004 	add	r3, r3, #4
     36c:	e50b300c 	str	r3, [fp, #-12]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e3530003 	cmp	r3, #3
     378:	8afffff3 	bhi	34c <memset+0xa8>
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	ea000008 	b	3ac <memset+0x108>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e55b200d 	ldrb	r2, [fp, #-13]
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     398:	e2433001 	sub	r3, r3, #1
     39c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e3530000 	cmp	r3, #0
     3b4:	1afffff3 	bne	388 <memset+0xe4>
     3b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3bc:	e1a00003 	mov	r0, r3
     3c0:	e28bd000 	add	sp, fp, #0
     3c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c8:	e12fff1e 	bx	lr

000003cc <strchr>:
     3cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d0:	e28db000 	add	fp, sp, #0
     3d4:	e24dd00c 	sub	sp, sp, #12
     3d8:	e50b0008 	str	r0, [fp, #-8]
     3dc:	e1a03001 	mov	r3, r1
     3e0:	e54b3009 	strb	r3, [fp, #-9]
     3e4:	ea000009 	b	410 <strchr+0x44>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e5d33000 	ldrb	r3, [r3]
     3f0:	e55b2009 	ldrb	r2, [fp, #-9]
     3f4:	e1520003 	cmp	r2, r3
     3f8:	1a000001 	bne	404 <strchr+0x38>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	ea000007 	b	424 <strchr+0x58>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2833001 	add	r3, r3, #1
     40c:	e50b3008 	str	r3, [fp, #-8]
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	1afffff1 	bne	3e8 <strchr+0x1c>
     420:	e3a03000 	mov	r3, #0
     424:	e1a00003 	mov	r0, r3
     428:	e28bd000 	add	sp, fp, #0
     42c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     430:	e12fff1e 	bx	lr

00000434 <gets>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd018 	sub	sp, sp, #24
     440:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     444:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     448:	e3a03000 	mov	r3, #0
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	ea000016 	b	4b0 <gets+0x7c>
     454:	e24b300d 	sub	r3, fp, #13
     458:	e3a02001 	mov	r2, #1
     45c:	e1a01003 	mov	r1, r3
     460:	e3a00000 	mov	r0, #0
     464:	eb0001cf 	bl	ba8 <read>
     468:	e50b000c 	str	r0, [fp, #-12]
     46c:	e51b300c 	ldr	r3, [fp, #-12]
     470:	e3530000 	cmp	r3, #0
     474:	da000013 	ble	4c8 <gets+0x94>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2832001 	add	r2, r3, #1
     480:	e50b2008 	str	r2, [fp, #-8]
     484:	e1a02003 	mov	r2, r3
     488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     48c:	e0833002 	add	r3, r3, r2
     490:	e55b200d 	ldrb	r2, [fp, #-13]
     494:	e5c32000 	strb	r2, [r3]
     498:	e55b300d 	ldrb	r3, [fp, #-13]
     49c:	e353000a 	cmp	r3, #10
     4a0:	0a000009 	beq	4cc <gets+0x98>
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000d 	cmp	r3, #13
     4ac:	0a000006 	beq	4cc <gets+0x98>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e2833001 	add	r3, r3, #1
     4b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4bc:	e1520003 	cmp	r2, r3
     4c0:	caffffe3 	bgt	454 <gets+0x20>
     4c4:	ea000000 	b	4cc <gets+0x98>
     4c8:	e1a00000 	nop			@ (mov r0, r0)
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4d4:	e0823003 	add	r3, r2, r3
     4d8:	e3a02000 	mov	r2, #0
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e24bd004 	sub	sp, fp, #4
     4ec:	e8bd8800 	pop	{fp, pc}

000004f0 <stat>:
     4f0:	e92d4800 	push	{fp, lr}
     4f4:	e28db004 	add	fp, sp, #4
     4f8:	e24dd010 	sub	sp, sp, #16
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     504:	e3a01000 	mov	r1, #0
     508:	e51b0010 	ldr	r0, [fp, #-16]
     50c:	eb0001d2 	bl	c5c <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb0001e4 	bl	cc8 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0001ab 	bl	bf0 <close>
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e1a00003 	mov	r0, r3
     548:	e24bd004 	sub	sp, fp, #4
     54c:	e8bd8800 	pop	{fp, pc}

00000550 <atoi>:
     550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     554:	e28db000 	add	fp, sp, #0
     558:	e24dd014 	sub	sp, sp, #20
     55c:	e50b0010 	str	r0, [fp, #-16]
     560:	e3a03000 	mov	r3, #0
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	ea00000c 	b	5a0 <atoi+0x50>
     56c:	e51b2008 	ldr	r2, [fp, #-8]
     570:	e1a03002 	mov	r3, r2
     574:	e1a03103 	lsl	r3, r3, #2
     578:	e0833002 	add	r3, r3, r2
     57c:	e1a03083 	lsl	r3, r3, #1
     580:	e1a01003 	mov	r1, r3
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e2832001 	add	r2, r3, #1
     58c:	e50b2010 	str	r2, [fp, #-16]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e0813003 	add	r3, r1, r3
     598:	e2433030 	sub	r3, r3, #48	@ 0x30
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e353002f 	cmp	r3, #47	@ 0x2f
     5ac:	9a000003 	bls	5c0 <atoi+0x70>
     5b0:	e51b3010 	ldr	r3, [fp, #-16]
     5b4:	e5d33000 	ldrb	r3, [r3]
     5b8:	e3530039 	cmp	r3, #57	@ 0x39
     5bc:	9affffea 	bls	56c <atoi+0x1c>
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e28bd000 	add	sp, fp, #0
     5cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <memmove>:
     5d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d8:	e28db000 	add	fp, sp, #0
     5dc:	e24dd01c 	sub	sp, sp, #28
     5e0:	e50b0010 	str	r0, [fp, #-16]
     5e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5ec:	e51b3010 	ldr	r3, [fp, #-16]
     5f0:	e50b3008 	str	r3, [fp, #-8]
     5f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5f8:	e50b300c 	str	r3, [fp, #-12]
     5fc:	ea000007 	b	620 <memmove+0x4c>
     600:	e51b200c 	ldr	r2, [fp, #-12]
     604:	e2823001 	add	r3, r2, #1
     608:	e50b300c 	str	r3, [fp, #-12]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e2831001 	add	r1, r3, #1
     614:	e50b1008 	str	r1, [fp, #-8]
     618:	e5d22000 	ldrb	r2, [r2]
     61c:	e5c32000 	strb	r2, [r3]
     620:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     624:	e2432001 	sub	r2, r3, #1
     628:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     62c:	e3530000 	cmp	r3, #0
     630:	cafffff2 	bgt	600 <memmove+0x2c>
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e1a00003 	mov	r0, r3
     63c:	e28bd000 	add	sp, fp, #0
     640:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <strncmp>:
     648:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     64c:	e28db000 	add	fp, sp, #0
     650:	e24dd014 	sub	sp, sp, #20
     654:	e50b0008 	str	r0, [fp, #-8]
     658:	e50b100c 	str	r1, [fp, #-12]
     65c:	e50b2010 	str	r2, [fp, #-16]
     660:	ea000008 	b	688 <strncmp+0x40>
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e2833001 	add	r3, r3, #1
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	e51b300c 	ldr	r3, [fp, #-12]
     674:	e2833001 	add	r3, r3, #1
     678:	e50b300c 	str	r3, [fp, #-12]
     67c:	e51b3010 	ldr	r3, [fp, #-16]
     680:	e2433001 	sub	r3, r3, #1
     684:	e50b3010 	str	r3, [fp, #-16]
     688:	e51b3010 	ldr	r3, [fp, #-16]
     68c:	e3530000 	cmp	r3, #0
     690:	da00000d 	ble	6cc <strncmp+0x84>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e3530000 	cmp	r3, #0
     6a0:	0a000009 	beq	6cc <strncmp+0x84>
     6a4:	e51b300c 	ldr	r3, [fp, #-12]
     6a8:	e5d33000 	ldrb	r3, [r3]
     6ac:	e3530000 	cmp	r3, #0
     6b0:	0a000005 	beq	6cc <strncmp+0x84>
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e5d32000 	ldrb	r2, [r3]
     6bc:	e51b300c 	ldr	r3, [fp, #-12]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e1520003 	cmp	r2, r3
     6c8:	0affffe5 	beq	664 <strncmp+0x1c>
     6cc:	e51b3010 	ldr	r3, [fp, #-16]
     6d0:	e3530000 	cmp	r3, #0
     6d4:	1a000001 	bne	6e0 <strncmp+0x98>
     6d8:	e3a03000 	mov	r3, #0
     6dc:	ea000005 	b	6f8 <strncmp+0xb0>
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5d33000 	ldrb	r3, [r3]
     6e8:	e1a02003 	mov	r2, r3
     6ec:	e51b300c 	ldr	r3, [fp, #-12]
     6f0:	e5d33000 	ldrb	r3, [r3]
     6f4:	e0423003 	sub	r3, r2, r3
     6f8:	e1a00003 	mov	r0, r3
     6fc:	e28bd000 	add	sp, fp, #0
     700:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <strncpy>:
     708:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     70c:	e28db000 	add	fp, sp, #0
     710:	e24dd01c 	sub	sp, sp, #28
     714:	e50b0010 	str	r0, [fp, #-16]
     718:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     71c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     720:	e51b3010 	ldr	r3, [fp, #-16]
     724:	e50b3008 	str	r3, [fp, #-8]
     728:	ea00000a 	b	758 <strncpy+0x50>
     72c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     730:	e2823001 	add	r3, r2, #1
     734:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e2831001 	add	r1, r3, #1
     740:	e50b1008 	str	r1, [fp, #-8]
     744:	e5d22000 	ldrb	r2, [r2]
     748:	e5c32000 	strb	r2, [r3]
     74c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     750:	e2433001 	sub	r3, r3, #1
     754:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     758:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     75c:	e3530000 	cmp	r3, #0
     760:	da00000c 	ble	798 <strncpy+0x90>
     764:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     768:	e5d33000 	ldrb	r3, [r3]
     76c:	e3530000 	cmp	r3, #0
     770:	1affffed 	bne	72c <strncpy+0x24>
     774:	ea000007 	b	798 <strncpy+0x90>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e2832001 	add	r2, r3, #1
     780:	e50b2008 	str	r2, [fp, #-8]
     784:	e3a02000 	mov	r2, #0
     788:	e5c32000 	strb	r2, [r3]
     78c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     790:	e2433001 	sub	r3, r3, #1
     794:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     798:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     79c:	e3530000 	cmp	r3, #0
     7a0:	cafffff4 	bgt	778 <strncpy+0x70>
     7a4:	e51b3010 	ldr	r3, [fp, #-16]
     7a8:	e1a00003 	mov	r0, r3
     7ac:	e28bd000 	add	sp, fp, #0
     7b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <xchg>:
     7b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7bc:	e28db000 	add	fp, sp, #0
     7c0:	e24dd014 	sub	sp, sp, #20
     7c4:	e50b0010 	str	r0, [fp, #-16]
     7c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7cc:	e51b2010 	ldr	r2, [fp, #-16]
     7d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7d4:	e1023091 	swp	r3, r1, [r2]
     7d8:	e50b3008 	str	r3, [fp, #-8]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e1a00003 	mov	r0, r3
     7e4:	e28bd000 	add	sp, fp, #0
     7e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <initiateLock>:
     7f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7f4:	e28db000 	add	fp, sp, #0
     7f8:	e24dd00c 	sub	sp, sp, #12
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3a02000 	mov	r2, #0
     808:	e5832000 	str	r2, [r3]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e3a02001 	mov	r2, #1
     814:	e5832004 	str	r2, [r3, #4]
     818:	e1a00000 	nop			@ (mov r0, r0)
     81c:	e28bd000 	add	sp, fp, #0
     820:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <acquireLock>:
     828:	e92d4800 	push	{fp, lr}
     82c:	e28db004 	add	fp, sp, #4
     830:	e24dd008 	sub	sp, sp, #8
     834:	e50b0008 	str	r0, [fp, #-8]
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e5933004 	ldr	r3, [r3, #4]
     840:	e3530000 	cmp	r3, #0
     844:	0a000008 	beq	86c <acquireLock+0x44>
     848:	e1a00000 	nop			@ (mov r0, r0)
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e3a01001 	mov	r1, #1
     854:	e1a00003 	mov	r0, r3
     858:	ebffffd6 	bl	7b8 <xchg>
     85c:	e1a03000 	mov	r3, r0
     860:	e3530000 	cmp	r3, #0
     864:	1afffff8 	bne	84c <acquireLock+0x24>
     868:	ea000000 	b	870 <acquireLock+0x48>
     86c:	e1a00000 	nop			@ (mov r0, r0)
     870:	e24bd004 	sub	sp, fp, #4
     874:	e8bd8800 	pop	{fp, pc}

00000878 <releaseLock>:
     878:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     87c:	e28db000 	add	fp, sp, #0
     880:	e24dd00c 	sub	sp, sp, #12
     884:	e50b0008 	str	r0, [fp, #-8]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5933004 	ldr	r3, [r3, #4]
     890:	e3530000 	cmp	r3, #0
     894:	0a000006 	beq	8b4 <releaseLock+0x3c>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5933000 	ldr	r3, [r3]
     8a0:	e3530001 	cmp	r3, #1
     8a4:	1a000002 	bne	8b4 <releaseLock+0x3c>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e3a02000 	mov	r2, #0
     8b0:	e5832000 	str	r2, [r3]
     8b4:	e1a00000 	nop			@ (mov r0, r0)
     8b8:	e28bd000 	add	sp, fp, #0
     8bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <initiateCondVar>:
     8c4:	e92d4800 	push	{fp, lr}
     8c8:	e28db004 	add	fp, sp, #4
     8cc:	e24dd008 	sub	sp, sp, #8
     8d0:	e50b0008 	str	r0, [fp, #-8]
     8d4:	eb0001b8 	bl	fbc <getChannel>
     8d8:	e1a02000 	mov	r2, r0
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5832000 	str	r2, [r3]
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e3a02001 	mov	r2, #1
     8ec:	e5832004 	str	r2, [r3, #4]
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}

000008fc <condWait>:
     8fc:	e92d4800 	push	{fp, lr}
     900:	e28db004 	add	fp, sp, #4
     904:	e24dd008 	sub	sp, sp, #8
     908:	e50b0008 	str	r0, [fp, #-8]
     90c:	e50b100c 	str	r1, [fp, #-12]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5933004 	ldr	r3, [r3, #4]
     918:	e3530000 	cmp	r3, #0
     91c:	0a00000c 	beq	954 <condWait+0x58>
     920:	e51b300c 	ldr	r3, [fp, #-12]
     924:	e5933004 	ldr	r3, [r3, #4]
     928:	e3530000 	cmp	r3, #0
     92c:	0a000008 	beq	954 <condWait+0x58>
     930:	e51b000c 	ldr	r0, [fp, #-12]
     934:	ebffffcf 	bl	878 <releaseLock>
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e5933000 	ldr	r3, [r3]
     940:	e1a00003 	mov	r0, r3
     944:	eb000193 	bl	f98 <sleepChan>
     948:	e51b000c 	ldr	r0, [fp, #-12]
     94c:	ebffffb5 	bl	828 <acquireLock>
     950:	ea000000 	b	958 <condWait+0x5c>
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e24bd004 	sub	sp, fp, #4
     95c:	e8bd8800 	pop	{fp, pc}

00000960 <broadcast>:
     960:	e92d4800 	push	{fp, lr}
     964:	e28db004 	add	fp, sp, #4
     968:	e24dd008 	sub	sp, sp, #8
     96c:	e50b0008 	str	r0, [fp, #-8]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933004 	ldr	r3, [r3, #4]
     978:	e3530000 	cmp	r3, #0
     97c:	0a000004 	beq	994 <broadcast+0x34>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e5933000 	ldr	r3, [r3]
     988:	e1a00003 	mov	r0, r3
     98c:	eb000193 	bl	fe0 <sigChan>
     990:	ea000000 	b	998 <broadcast+0x38>
     994:	e1a00000 	nop			@ (mov r0, r0)
     998:	e24bd004 	sub	sp, fp, #4
     99c:	e8bd8800 	pop	{fp, pc}

000009a0 <signal>:
     9a0:	e92d4800 	push	{fp, lr}
     9a4:	e28db004 	add	fp, sp, #4
     9a8:	e24dd008 	sub	sp, sp, #8
     9ac:	e50b0008 	str	r0, [fp, #-8]
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e5933004 	ldr	r3, [r3, #4]
     9b8:	e3530000 	cmp	r3, #0
     9bc:	0a000004 	beq	9d4 <signal+0x34>
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e5933000 	ldr	r3, [r3]
     9c8:	e1a00003 	mov	r0, r3
     9cc:	eb00018c 	bl	1004 <sigOneChan>
     9d0:	ea000000 	b	9d8 <signal+0x38>
     9d4:	e1a00000 	nop			@ (mov r0, r0)
     9d8:	e24bd004 	sub	sp, fp, #4
     9dc:	e8bd8800 	pop	{fp, pc}

000009e0 <semInit>:
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd008 	sub	sp, sp, #8
     9ec:	e50b0008 	str	r0, [fp, #-8]
     9f0:	e50b100c 	str	r1, [fp, #-12]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e2833004 	add	r3, r3, #4
     9fc:	e1a00003 	mov	r0, r3
     a00:	ebffff7a 	bl	7f0 <initiateLock>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e283300c 	add	r3, r3, #12
     a0c:	e1a00003 	mov	r0, r3
     a10:	ebffffab 	bl	8c4 <initiateCondVar>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e51b200c 	ldr	r2, [fp, #-12]
     a1c:	e5832000 	str	r2, [r3]
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e3a02001 	mov	r2, #1
     a28:	e5832014 	str	r2, [r3, #20]
     a2c:	e1a00000 	nop			@ (mov r0, r0)
     a30:	e24bd004 	sub	sp, fp, #4
     a34:	e8bd8800 	pop	{fp, pc}

00000a38 <semUp>:
     a38:	e92d4800 	push	{fp, lr}
     a3c:	e28db004 	add	fp, sp, #4
     a40:	e24dd008 	sub	sp, sp, #8
     a44:	e50b0008 	str	r0, [fp, #-8]
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e2833004 	add	r3, r3, #4
     a50:	e1a00003 	mov	r0, r3
     a54:	ebffff73 	bl	828 <acquireLock>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e5933000 	ldr	r3, [r3]
     a60:	e2832001 	add	r2, r3, #1
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e5832000 	str	r2, [r3]
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e283300c 	add	r3, r3, #12
     a74:	e1a00003 	mov	r0, r3
     a78:	ebffffc8 	bl	9a0 <signal>
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e2833004 	add	r3, r3, #4
     a84:	e1a00003 	mov	r0, r3
     a88:	ebffff7a 	bl	878 <releaseLock>
     a8c:	e1a00000 	nop			@ (mov r0, r0)
     a90:	e24bd004 	sub	sp, fp, #4
     a94:	e8bd8800 	pop	{fp, pc}

00000a98 <semDown>:
     a98:	e92d4800 	push	{fp, lr}
     a9c:	e28db004 	add	fp, sp, #4
     aa0:	e24dd008 	sub	sp, sp, #8
     aa4:	e50b0008 	str	r0, [fp, #-8]
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e2833004 	add	r3, r3, #4
     ab0:	e1a00003 	mov	r0, r3
     ab4:	ebffff5b 	bl	828 <acquireLock>
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e5933000 	ldr	r3, [r3]
     ac0:	e2432001 	sub	r2, r3, #1
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e5832000 	str	r2, [r3]
     acc:	ea000006 	b	aec <semDown+0x54>
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e283200c 	add	r2, r3, #12
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e2833004 	add	r3, r3, #4
     ae0:	e1a01003 	mov	r1, r3
     ae4:	e1a00002 	mov	r0, r2
     ae8:	ebffff83 	bl	8fc <condWait>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e5933000 	ldr	r3, [r3]
     af4:	e3530000 	cmp	r3, #0
     af8:	bafffff4 	blt	ad0 <semDown+0x38>
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e2833004 	add	r3, r3, #4
     b04:	e1a00003 	mov	r0, r3
     b08:	ebffff5a 	bl	878 <releaseLock>
     b0c:	e1a00000 	nop			@ (mov r0, r0)
     b10:	e24bd004 	sub	sp, fp, #4
     b14:	e8bd8800 	pop	{fp, pc}

00000b18 <fork>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00001 	mov	r0, #1
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <exit>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00002 	mov	r0, #2
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <wait>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00003 	mov	r0, #3
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <pipe>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00004 	mov	r0, #4
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <read>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00005 	mov	r0, #5
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <write>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00010 	mov	r0, #16
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <close>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00015 	mov	r0, #21
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <kill>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00006 	mov	r0, #6
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <exec>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00007 	mov	r0, #7
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <open>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a0000f 	mov	r0, #15
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <mknod>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00011 	mov	r0, #17
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <unlink>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a00012 	mov	r0, #18
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <fstat>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a00008 	mov	r0, #8
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <link>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a00013 	mov	r0, #19
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <mkdir>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a00014 	mov	r0, #20
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <chdir>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a00009 	mov	r0, #9
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <dup>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a0000a 	mov	r0, #10
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <getpid>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a0000b 	mov	r0, #11
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <sbrk>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a0000c 	mov	r0, #12
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <sleep>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a0000d 	mov	r0, #13
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <uptime>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a0000e 	mov	r0, #14
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <proclist>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a00016 	mov	r0, #22
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <settickets>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a00017 	mov	r0, #23
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <srand>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a00018 	mov	r0, #24
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <getpinfo>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a00019 	mov	r0, #25
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <print_pt>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a0001f 	mov	r0, #31
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <thread_create>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00020 	mov	r0, #32
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <thread_exit>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a00021 	mov	r0, #33	@ 0x21
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <thread_join>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00022 	mov	r0, #34	@ 0x22
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <waitpid>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00023 	mov	r0, #35	@ 0x23
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <barrier_init>:
     f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f54:	e1a04003 	mov	r4, r3
     f58:	e1a03002 	mov	r3, r2
     f5c:	e1a02001 	mov	r2, r1
     f60:	e1a01000 	mov	r1, r0
     f64:	e3a00024 	mov	r0, #36	@ 0x24
     f68:	ef000000 	svc	0x00000000
     f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f70:	e12fff1e 	bx	lr

00000f74 <barrier_check>:
     f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f78:	e1a04003 	mov	r4, r3
     f7c:	e1a03002 	mov	r3, r2
     f80:	e1a02001 	mov	r2, r1
     f84:	e1a01000 	mov	r1, r0
     f88:	e3a00025 	mov	r0, #37	@ 0x25
     f8c:	ef000000 	svc	0x00000000
     f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f94:	e12fff1e 	bx	lr

00000f98 <sleepChan>:
     f98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f9c:	e1a04003 	mov	r4, r3
     fa0:	e1a03002 	mov	r3, r2
     fa4:	e1a02001 	mov	r2, r1
     fa8:	e1a01000 	mov	r1, r0
     fac:	e3a00026 	mov	r0, #38	@ 0x26
     fb0:	ef000000 	svc	0x00000000
     fb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb8:	e12fff1e 	bx	lr

00000fbc <getChannel>:
     fbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc0:	e1a04003 	mov	r4, r3
     fc4:	e1a03002 	mov	r3, r2
     fc8:	e1a02001 	mov	r2, r1
     fcc:	e1a01000 	mov	r1, r0
     fd0:	e3a00027 	mov	r0, #39	@ 0x27
     fd4:	ef000000 	svc	0x00000000
     fd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fdc:	e12fff1e 	bx	lr

00000fe0 <sigChan>:
     fe0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe4:	e1a04003 	mov	r4, r3
     fe8:	e1a03002 	mov	r3, r2
     fec:	e1a02001 	mov	r2, r1
     ff0:	e1a01000 	mov	r1, r0
     ff4:	e3a00028 	mov	r0, #40	@ 0x28
     ff8:	ef000000 	svc	0x00000000
     ffc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1000:	e12fff1e 	bx	lr

00001004 <sigOneChan>:
    1004:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1008:	e1a04003 	mov	r4, r3
    100c:	e1a03002 	mov	r3, r2
    1010:	e1a02001 	mov	r2, r1
    1014:	e1a01000 	mov	r1, r0
    1018:	e3a00029 	mov	r0, #41	@ 0x29
    101c:	ef000000 	svc	0x00000000
    1020:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1024:	e12fff1e 	bx	lr

00001028 <symlink>:
    1028:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    102c:	e1a04003 	mov	r4, r3
    1030:	e1a03002 	mov	r3, r2
    1034:	e1a02001 	mov	r2, r1
    1038:	e1a01000 	mov	r1, r0
    103c:	e3a0002a 	mov	r0, #42	@ 0x2a
    1040:	ef000000 	svc	0x00000000
    1044:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1048:	e12fff1e 	bx	lr

0000104c <syscall>:
    104c:	ef000000 	svc	0x00000000
    1050:	e12fff1e 	bx	lr

00001054 <putc>:
    1054:	e92d4800 	push	{fp, lr}
    1058:	e28db004 	add	fp, sp, #4
    105c:	e24dd008 	sub	sp, sp, #8
    1060:	e50b0008 	str	r0, [fp, #-8]
    1064:	e1a03001 	mov	r3, r1
    1068:	e54b3009 	strb	r3, [fp, #-9]
    106c:	e24b3009 	sub	r3, fp, #9
    1070:	e3a02001 	mov	r2, #1
    1074:	e1a01003 	mov	r1, r3
    1078:	e51b0008 	ldr	r0, [fp, #-8]
    107c:	ebfffed2 	bl	bcc <write>
    1080:	e1a00000 	nop			@ (mov r0, r0)
    1084:	e24bd004 	sub	sp, fp, #4
    1088:	e8bd8800 	pop	{fp, pc}

0000108c <printint>:
    108c:	e92d4800 	push	{fp, lr}
    1090:	e28db004 	add	fp, sp, #4
    1094:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1098:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    109c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10a0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10a4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10a8:	e3a03000 	mov	r3, #0
    10ac:	e50b300c 	str	r3, [fp, #-12]
    10b0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10b4:	e3530000 	cmp	r3, #0
    10b8:	0a000008 	beq	10e0 <printint+0x54>
    10bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10c0:	e3530000 	cmp	r3, #0
    10c4:	aa000005 	bge	10e0 <printint+0x54>
    10c8:	e3a03001 	mov	r3, #1
    10cc:	e50b300c 	str	r3, [fp, #-12]
    10d0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10d4:	e2633000 	rsb	r3, r3, #0
    10d8:	e50b3010 	str	r3, [fp, #-16]
    10dc:	ea000001 	b	10e8 <printint+0x5c>
    10e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10e4:	e50b3010 	str	r3, [fp, #-16]
    10e8:	e3a03000 	mov	r3, #0
    10ec:	e50b3008 	str	r3, [fp, #-8]
    10f0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10f4:	e51b3010 	ldr	r3, [fp, #-16]
    10f8:	e1a01002 	mov	r1, r2
    10fc:	e1a00003 	mov	r0, r3
    1100:	eb0001d5 	bl	185c <__aeabi_uidivmod>
    1104:	e1a03001 	mov	r3, r1
    1108:	e1a01003 	mov	r1, r3
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e2832001 	add	r2, r3, #1
    1114:	e50b2008 	str	r2, [fp, #-8]
    1118:	e59f20a0 	ldr	r2, [pc, #160]	@ 11c0 <printint+0x134>
    111c:	e7d22001 	ldrb	r2, [r2, r1]
    1120:	e2433004 	sub	r3, r3, #4
    1124:	e083300b 	add	r3, r3, fp
    1128:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    112c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1130:	e1a01003 	mov	r1, r3
    1134:	e51b0010 	ldr	r0, [fp, #-16]
    1138:	eb00018a 	bl	1768 <__udivsi3>
    113c:	e1a03000 	mov	r3, r0
    1140:	e50b3010 	str	r3, [fp, #-16]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e3530000 	cmp	r3, #0
    114c:	1affffe7 	bne	10f0 <printint+0x64>
    1150:	e51b300c 	ldr	r3, [fp, #-12]
    1154:	e3530000 	cmp	r3, #0
    1158:	0a00000e 	beq	1198 <printint+0x10c>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e2832001 	add	r2, r3, #1
    1164:	e50b2008 	str	r2, [fp, #-8]
    1168:	e2433004 	sub	r3, r3, #4
    116c:	e083300b 	add	r3, r3, fp
    1170:	e3a0202d 	mov	r2, #45	@ 0x2d
    1174:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1178:	ea000006 	b	1198 <printint+0x10c>
    117c:	e24b2020 	sub	r2, fp, #32
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e0823003 	add	r3, r2, r3
    1188:	e5d33000 	ldrb	r3, [r3]
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1194:	ebffffae 	bl	1054 <putc>
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e2433001 	sub	r3, r3, #1
    11a0:	e50b3008 	str	r3, [fp, #-8]
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e3530000 	cmp	r3, #0
    11ac:	aafffff2 	bge	117c <printint+0xf0>
    11b0:	e1a00000 	nop			@ (mov r0, r0)
    11b4:	e1a00000 	nop			@ (mov r0, r0)
    11b8:	e24bd004 	sub	sp, fp, #4
    11bc:	e8bd8800 	pop	{fp, pc}
    11c0:	000018b8 	.word	0x000018b8

000011c4 <printf>:
    11c4:	e92d000e 	push	{r1, r2, r3}
    11c8:	e92d4800 	push	{fp, lr}
    11cc:	e28db004 	add	fp, sp, #4
    11d0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11d4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11d8:	e3a03000 	mov	r3, #0
    11dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11e0:	e28b3008 	add	r3, fp, #8
    11e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11e8:	e3a03000 	mov	r3, #0
    11ec:	e50b3010 	str	r3, [fp, #-16]
    11f0:	ea000074 	b	13c8 <printf+0x204>
    11f4:	e59b2004 	ldr	r2, [fp, #4]
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e0823003 	add	r3, r2, r3
    1200:	e5d33000 	ldrb	r3, [r3]
    1204:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1208:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    120c:	e3530000 	cmp	r3, #0
    1210:	1a00000b 	bne	1244 <printf+0x80>
    1214:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1218:	e3530025 	cmp	r3, #37	@ 0x25
    121c:	1a000002 	bne	122c <printf+0x68>
    1220:	e3a03025 	mov	r3, #37	@ 0x25
    1224:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1228:	ea000063 	b	13bc <printf+0x1f8>
    122c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1230:	e6ef3073 	uxtb	r3, r3
    1234:	e1a01003 	mov	r1, r3
    1238:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    123c:	ebffff84 	bl	1054 <putc>
    1240:	ea00005d 	b	13bc <printf+0x1f8>
    1244:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1248:	e3530025 	cmp	r3, #37	@ 0x25
    124c:	1a00005a 	bne	13bc <printf+0x1f8>
    1250:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1254:	e3530064 	cmp	r3, #100	@ 0x64
    1258:	1a00000a 	bne	1288 <printf+0xc4>
    125c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1260:	e5933000 	ldr	r3, [r3]
    1264:	e1a01003 	mov	r1, r3
    1268:	e3a03001 	mov	r3, #1
    126c:	e3a0200a 	mov	r2, #10
    1270:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1274:	ebffff84 	bl	108c <printint>
    1278:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    127c:	e2833004 	add	r3, r3, #4
    1280:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1284:	ea00004a 	b	13b4 <printf+0x1f0>
    1288:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e3530078 	cmp	r3, #120	@ 0x78
    1290:	0a000002 	beq	12a0 <printf+0xdc>
    1294:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1298:	e3530070 	cmp	r3, #112	@ 0x70
    129c:	1a00000a 	bne	12cc <printf+0x108>
    12a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e1a01003 	mov	r1, r3
    12ac:	e3a03000 	mov	r3, #0
    12b0:	e3a02010 	mov	r2, #16
    12b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12b8:	ebffff73 	bl	108c <printint>
    12bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c0:	e2833004 	add	r3, r3, #4
    12c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12c8:	ea000039 	b	13b4 <printf+0x1f0>
    12cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d0:	e3530073 	cmp	r3, #115	@ 0x73
    12d4:	1a000018 	bne	133c <printf+0x178>
    12d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e50b300c 	str	r3, [fp, #-12]
    12e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e8:	e2833004 	add	r3, r3, #4
    12ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e3530000 	cmp	r3, #0
    12f8:	1a00000a 	bne	1328 <printf+0x164>
    12fc:	e59f30f4 	ldr	r3, [pc, #244]	@ 13f8 <printf+0x234>
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	ea000007 	b	1328 <printf+0x164>
    1308:	e51b300c 	ldr	r3, [fp, #-12]
    130c:	e5d33000 	ldrb	r3, [r3]
    1310:	e1a01003 	mov	r1, r3
    1314:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1318:	ebffff4d 	bl	1054 <putc>
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e2833001 	add	r3, r3, #1
    1324:	e50b300c 	str	r3, [fp, #-12]
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5d33000 	ldrb	r3, [r3]
    1330:	e3530000 	cmp	r3, #0
    1334:	1afffff3 	bne	1308 <printf+0x144>
    1338:	ea00001d 	b	13b4 <printf+0x1f0>
    133c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1340:	e3530063 	cmp	r3, #99	@ 0x63
    1344:	1a000009 	bne	1370 <printf+0x1ac>
    1348:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    134c:	e5933000 	ldr	r3, [r3]
    1350:	e6ef3073 	uxtb	r3, r3
    1354:	e1a01003 	mov	r1, r3
    1358:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    135c:	ebffff3c 	bl	1054 <putc>
    1360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1364:	e2833004 	add	r3, r3, #4
    1368:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    136c:	ea000010 	b	13b4 <printf+0x1f0>
    1370:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e3530025 	cmp	r3, #37	@ 0x25
    1378:	1a000005 	bne	1394 <printf+0x1d0>
    137c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1380:	e6ef3073 	uxtb	r3, r3
    1384:	e1a01003 	mov	r1, r3
    1388:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    138c:	ebffff30 	bl	1054 <putc>
    1390:	ea000007 	b	13b4 <printf+0x1f0>
    1394:	e3a01025 	mov	r1, #37	@ 0x25
    1398:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    139c:	ebffff2c 	bl	1054 <putc>
    13a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13a4:	e6ef3073 	uxtb	r3, r3
    13a8:	e1a01003 	mov	r1, r3
    13ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b0:	ebffff27 	bl	1054 <putc>
    13b4:	e3a03000 	mov	r3, #0
    13b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13bc:	e51b3010 	ldr	r3, [fp, #-16]
    13c0:	e2833001 	add	r3, r3, #1
    13c4:	e50b3010 	str	r3, [fp, #-16]
    13c8:	e59b2004 	ldr	r2, [fp, #4]
    13cc:	e51b3010 	ldr	r3, [fp, #-16]
    13d0:	e0823003 	add	r3, r2, r3
    13d4:	e5d33000 	ldrb	r3, [r3]
    13d8:	e3530000 	cmp	r3, #0
    13dc:	1affff84 	bne	11f4 <printf+0x30>
    13e0:	e1a00000 	nop			@ (mov r0, r0)
    13e4:	e1a00000 	nop			@ (mov r0, r0)
    13e8:	e24bd004 	sub	sp, fp, #4
    13ec:	e8bd4800 	pop	{fp, lr}
    13f0:	e28dd00c 	add	sp, sp, #12
    13f4:	e12fff1e 	bx	lr
    13f8:	000018b0 	.word	0x000018b0

000013fc <free>:
    13fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1400:	e28db000 	add	fp, sp, #0
    1404:	e24dd014 	sub	sp, sp, #20
    1408:	e50b0010 	str	r0, [fp, #-16]
    140c:	e51b3010 	ldr	r3, [fp, #-16]
    1410:	e2433008 	sub	r3, r3, #8
    1414:	e50b300c 	str	r3, [fp, #-12]
    1418:	e59f3154 	ldr	r3, [pc, #340]	@ 1574 <free+0x178>
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e50b3008 	str	r3, [fp, #-8]
    1424:	ea000010 	b	146c <free+0x70>
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e51b2008 	ldr	r2, [fp, #-8]
    1434:	e1520003 	cmp	r2, r3
    1438:	3a000008 	bcc	1460 <free+0x64>
    143c:	e51b200c 	ldr	r2, [fp, #-12]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e1520003 	cmp	r2, r3
    1448:	8a000010 	bhi	1490 <free+0x94>
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e5933000 	ldr	r3, [r3]
    1454:	e51b200c 	ldr	r2, [fp, #-12]
    1458:	e1520003 	cmp	r2, r3
    145c:	3a00000b 	bcc	1490 <free+0x94>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5933000 	ldr	r3, [r3]
    1468:	e50b3008 	str	r3, [fp, #-8]
    146c:	e51b200c 	ldr	r2, [fp, #-12]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e1520003 	cmp	r2, r3
    1478:	9affffea 	bls	1428 <free+0x2c>
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e51b200c 	ldr	r2, [fp, #-12]
    1488:	e1520003 	cmp	r2, r3
    148c:	2affffe5 	bcs	1428 <free+0x2c>
    1490:	e51b300c 	ldr	r3, [fp, #-12]
    1494:	e5933004 	ldr	r3, [r3, #4]
    1498:	e1a03183 	lsl	r3, r3, #3
    149c:	e51b200c 	ldr	r2, [fp, #-12]
    14a0:	e0822003 	add	r2, r2, r3
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e1520003 	cmp	r2, r3
    14b0:	1a00000d 	bne	14ec <free+0xf0>
    14b4:	e51b300c 	ldr	r3, [fp, #-12]
    14b8:	e5932004 	ldr	r2, [r3, #4]
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e5933004 	ldr	r3, [r3, #4]
    14c8:	e0822003 	add	r2, r2, r3
    14cc:	e51b300c 	ldr	r3, [fp, #-12]
    14d0:	e5832004 	str	r2, [r3, #4]
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e5933000 	ldr	r3, [r3]
    14dc:	e5932000 	ldr	r2, [r3]
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5832000 	str	r2, [r3]
    14e8:	ea000003 	b	14fc <free+0x100>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5932000 	ldr	r2, [r3]
    14f4:	e51b300c 	ldr	r3, [fp, #-12]
    14f8:	e5832000 	str	r2, [r3]
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5933004 	ldr	r3, [r3, #4]
    1504:	e1a03183 	lsl	r3, r3, #3
    1508:	e51b2008 	ldr	r2, [fp, #-8]
    150c:	e0823003 	add	r3, r2, r3
    1510:	e51b200c 	ldr	r2, [fp, #-12]
    1514:	e1520003 	cmp	r2, r3
    1518:	1a00000b 	bne	154c <free+0x150>
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5932004 	ldr	r2, [r3, #4]
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e5933004 	ldr	r3, [r3, #4]
    152c:	e0822003 	add	r2, r2, r3
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5832004 	str	r2, [r3, #4]
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5932000 	ldr	r2, [r3]
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5832000 	str	r2, [r3]
    1548:	ea000002 	b	1558 <free+0x15c>
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e51b200c 	ldr	r2, [fp, #-12]
    1554:	e5832000 	str	r2, [r3]
    1558:	e59f2014 	ldr	r2, [pc, #20]	@ 1574 <free+0x178>
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5823000 	str	r3, [r2]
    1564:	e1a00000 	nop			@ (mov r0, r0)
    1568:	e28bd000 	add	sp, fp, #0
    156c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1570:	e12fff1e 	bx	lr
    1574:	000018d4 	.word	0x000018d4

00001578 <morecore>:
    1578:	e92d4800 	push	{fp, lr}
    157c:	e28db004 	add	fp, sp, #4
    1580:	e24dd010 	sub	sp, sp, #16
    1584:	e50b0010 	str	r0, [fp, #-16]
    1588:	e51b3010 	ldr	r3, [fp, #-16]
    158c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1590:	2a000001 	bcs	159c <morecore+0x24>
    1594:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1598:	e50b3010 	str	r3, [fp, #-16]
    159c:	e51b3010 	ldr	r3, [fp, #-16]
    15a0:	e1a03183 	lsl	r3, r3, #3
    15a4:	e1a00003 	mov	r0, r3
    15a8:	ebfffdfc 	bl	da0 <sbrk>
    15ac:	e50b0008 	str	r0, [fp, #-8]
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e3730001 	cmn	r3, #1
    15b8:	1a000001 	bne	15c4 <morecore+0x4c>
    15bc:	e3a03000 	mov	r3, #0
    15c0:	ea00000a 	b	15f0 <morecore+0x78>
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e50b300c 	str	r3, [fp, #-12]
    15cc:	e51b300c 	ldr	r3, [fp, #-12]
    15d0:	e51b2010 	ldr	r2, [fp, #-16]
    15d4:	e5832004 	str	r2, [r3, #4]
    15d8:	e51b300c 	ldr	r3, [fp, #-12]
    15dc:	e2833008 	add	r3, r3, #8
    15e0:	e1a00003 	mov	r0, r3
    15e4:	ebffff84 	bl	13fc <free>
    15e8:	e59f300c 	ldr	r3, [pc, #12]	@ 15fc <morecore+0x84>
    15ec:	e5933000 	ldr	r3, [r3]
    15f0:	e1a00003 	mov	r0, r3
    15f4:	e24bd004 	sub	sp, fp, #4
    15f8:	e8bd8800 	pop	{fp, pc}
    15fc:	000018d4 	.word	0x000018d4

00001600 <malloc>:
    1600:	e92d4800 	push	{fp, lr}
    1604:	e28db004 	add	fp, sp, #4
    1608:	e24dd018 	sub	sp, sp, #24
    160c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1610:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1614:	e2833007 	add	r3, r3, #7
    1618:	e1a031a3 	lsr	r3, r3, #3
    161c:	e2833001 	add	r3, r3, #1
    1620:	e50b3010 	str	r3, [fp, #-16]
    1624:	e59f3134 	ldr	r3, [pc, #308]	@ 1760 <malloc+0x160>
    1628:	e5933000 	ldr	r3, [r3]
    162c:	e50b300c 	str	r3, [fp, #-12]
    1630:	e51b300c 	ldr	r3, [fp, #-12]
    1634:	e3530000 	cmp	r3, #0
    1638:	1a00000b 	bne	166c <malloc+0x6c>
    163c:	e59f3120 	ldr	r3, [pc, #288]	@ 1764 <malloc+0x164>
    1640:	e50b300c 	str	r3, [fp, #-12]
    1644:	e59f2114 	ldr	r2, [pc, #276]	@ 1760 <malloc+0x160>
    1648:	e51b300c 	ldr	r3, [fp, #-12]
    164c:	e5823000 	str	r3, [r2]
    1650:	e59f3108 	ldr	r3, [pc, #264]	@ 1760 <malloc+0x160>
    1654:	e5933000 	ldr	r3, [r3]
    1658:	e59f2104 	ldr	r2, [pc, #260]	@ 1764 <malloc+0x164>
    165c:	e5823000 	str	r3, [r2]
    1660:	e59f30fc 	ldr	r3, [pc, #252]	@ 1764 <malloc+0x164>
    1664:	e3a02000 	mov	r2, #0
    1668:	e5832004 	str	r2, [r3, #4]
    166c:	e51b300c 	ldr	r3, [fp, #-12]
    1670:	e5933000 	ldr	r3, [r3]
    1674:	e50b3008 	str	r3, [fp, #-8]
    1678:	e51b3008 	ldr	r3, [fp, #-8]
    167c:	e5933004 	ldr	r3, [r3, #4]
    1680:	e51b2010 	ldr	r2, [fp, #-16]
    1684:	e1520003 	cmp	r2, r3
    1688:	8a00001e 	bhi	1708 <malloc+0x108>
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e5933004 	ldr	r3, [r3, #4]
    1694:	e51b2010 	ldr	r2, [fp, #-16]
    1698:	e1520003 	cmp	r2, r3
    169c:	1a000004 	bne	16b4 <malloc+0xb4>
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e5932000 	ldr	r2, [r3]
    16a8:	e51b300c 	ldr	r3, [fp, #-12]
    16ac:	e5832000 	str	r2, [r3]
    16b0:	ea00000e 	b	16f0 <malloc+0xf0>
    16b4:	e51b3008 	ldr	r3, [fp, #-8]
    16b8:	e5932004 	ldr	r2, [r3, #4]
    16bc:	e51b3010 	ldr	r3, [fp, #-16]
    16c0:	e0422003 	sub	r2, r2, r3
    16c4:	e51b3008 	ldr	r3, [fp, #-8]
    16c8:	e5832004 	str	r2, [r3, #4]
    16cc:	e51b3008 	ldr	r3, [fp, #-8]
    16d0:	e5933004 	ldr	r3, [r3, #4]
    16d4:	e1a03183 	lsl	r3, r3, #3
    16d8:	e51b2008 	ldr	r2, [fp, #-8]
    16dc:	e0823003 	add	r3, r2, r3
    16e0:	e50b3008 	str	r3, [fp, #-8]
    16e4:	e51b3008 	ldr	r3, [fp, #-8]
    16e8:	e51b2010 	ldr	r2, [fp, #-16]
    16ec:	e5832004 	str	r2, [r3, #4]
    16f0:	e59f2068 	ldr	r2, [pc, #104]	@ 1760 <malloc+0x160>
    16f4:	e51b300c 	ldr	r3, [fp, #-12]
    16f8:	e5823000 	str	r3, [r2]
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e2833008 	add	r3, r3, #8
    1704:	ea000012 	b	1754 <malloc+0x154>
    1708:	e59f3050 	ldr	r3, [pc, #80]	@ 1760 <malloc+0x160>
    170c:	e5933000 	ldr	r3, [r3]
    1710:	e51b2008 	ldr	r2, [fp, #-8]
    1714:	e1520003 	cmp	r2, r3
    1718:	1a000007 	bne	173c <malloc+0x13c>
    171c:	e51b0010 	ldr	r0, [fp, #-16]
    1720:	ebffff94 	bl	1578 <morecore>
    1724:	e50b0008 	str	r0, [fp, #-8]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e3530000 	cmp	r3, #0
    1730:	1a000001 	bne	173c <malloc+0x13c>
    1734:	e3a03000 	mov	r3, #0
    1738:	ea000005 	b	1754 <malloc+0x154>
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e50b300c 	str	r3, [fp, #-12]
    1744:	e51b3008 	ldr	r3, [fp, #-8]
    1748:	e5933000 	ldr	r3, [r3]
    174c:	e50b3008 	str	r3, [fp, #-8]
    1750:	eaffffc8 	b	1678 <malloc+0x78>
    1754:	e1a00003 	mov	r0, r3
    1758:	e24bd004 	sub	sp, fp, #4
    175c:	e8bd8800 	pop	{fp, pc}
    1760:	000018d4 	.word	0x000018d4
    1764:	000018cc 	.word	0x000018cc

00001768 <__udivsi3>:
    1768:	e2512001 	subs	r2, r1, #1
    176c:	012fff1e 	bxeq	lr
    1770:	3a000036 	bcc	1850 <__udivsi3+0xe8>
    1774:	e1500001 	cmp	r0, r1
    1778:	9a000022 	bls	1808 <__udivsi3+0xa0>
    177c:	e1110002 	tst	r1, r2
    1780:	0a000023 	beq	1814 <__udivsi3+0xac>
    1784:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1788:	01a01181 	lsleq	r1, r1, #3
    178c:	03a03008 	moveq	r3, #8
    1790:	13a03001 	movne	r3, #1
    1794:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1798:	31510000 	cmpcc	r1, r0
    179c:	31a01201 	lslcc	r1, r1, #4
    17a0:	31a03203 	lslcc	r3, r3, #4
    17a4:	3afffffa 	bcc	1794 <__udivsi3+0x2c>
    17a8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17ac:	31510000 	cmpcc	r1, r0
    17b0:	31a01081 	lslcc	r1, r1, #1
    17b4:	31a03083 	lslcc	r3, r3, #1
    17b8:	3afffffa 	bcc	17a8 <__udivsi3+0x40>
    17bc:	e3a02000 	mov	r2, #0
    17c0:	e1500001 	cmp	r0, r1
    17c4:	20400001 	subcs	r0, r0, r1
    17c8:	21822003 	orrcs	r2, r2, r3
    17cc:	e15000a1 	cmp	r0, r1, lsr #1
    17d0:	204000a1 	subcs	r0, r0, r1, lsr #1
    17d4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17d8:	e1500121 	cmp	r0, r1, lsr #2
    17dc:	20400121 	subcs	r0, r0, r1, lsr #2
    17e0:	21822123 	orrcs	r2, r2, r3, lsr #2
    17e4:	e15001a1 	cmp	r0, r1, lsr #3
    17e8:	204001a1 	subcs	r0, r0, r1, lsr #3
    17ec:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17f0:	e3500000 	cmp	r0, #0
    17f4:	11b03223 	lsrsne	r3, r3, #4
    17f8:	11a01221 	lsrne	r1, r1, #4
    17fc:	1affffef 	bne	17c0 <__udivsi3+0x58>
    1800:	e1a00002 	mov	r0, r2
    1804:	e12fff1e 	bx	lr
    1808:	03a00001 	moveq	r0, #1
    180c:	13a00000 	movne	r0, #0
    1810:	e12fff1e 	bx	lr
    1814:	e3510801 	cmp	r1, #65536	@ 0x10000
    1818:	21a01821 	lsrcs	r1, r1, #16
    181c:	23a02010 	movcs	r2, #16
    1820:	33a02000 	movcc	r2, #0
    1824:	e3510c01 	cmp	r1, #256	@ 0x100
    1828:	21a01421 	lsrcs	r1, r1, #8
    182c:	22822008 	addcs	r2, r2, #8
    1830:	e3510010 	cmp	r1, #16
    1834:	21a01221 	lsrcs	r1, r1, #4
    1838:	22822004 	addcs	r2, r2, #4
    183c:	e3510004 	cmp	r1, #4
    1840:	82822003 	addhi	r2, r2, #3
    1844:	908220a1 	addls	r2, r2, r1, lsr #1
    1848:	e1a00230 	lsr	r0, r0, r2
    184c:	e12fff1e 	bx	lr
    1850:	e3500000 	cmp	r0, #0
    1854:	13e00000 	mvnne	r0, #0
    1858:	ea000007 	b	187c <__aeabi_idiv0>

0000185c <__aeabi_uidivmod>:
    185c:	e3510000 	cmp	r1, #0
    1860:	0afffffa 	beq	1850 <__udivsi3+0xe8>
    1864:	e92d4003 	push	{r0, r1, lr}
    1868:	ebffffbe 	bl	1768 <__udivsi3>
    186c:	e8bd4006 	pop	{r1, r2, lr}
    1870:	e0030092 	mul	r3, r2, r0
    1874:	e0411003 	sub	r1, r1, r3
    1878:	e12fff1e 	bx	lr

0000187c <__aeabi_idiv0>:
    187c:	e12fff1e 	bx	lr
