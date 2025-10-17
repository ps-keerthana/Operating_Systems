
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
      28:	eb0002d5 	bl	b84 <printf>
      2c:	eb0001bb 	bl	720 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb00020b 	bl	888 <unlink>
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
      84:	eb0002be 	bl	b84 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb00019c 	bl	720 <exit>
      ac:	00001240 	.word	0x00001240
      b0:	00001254 	.word	0x00001254

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			@ (mov r0, r0)
      d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      d8:	e2823001 	add	r3, r2, #1
      dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e2831001 	add	r1, r3, #1
      e8:	e50b1010 	str	r1, [fp, #-16]
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0423003 	sub	r3, r2, r3
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b200d 	ldrb	r2, [fp, #-13]
     214:	e1a03002 	mov	r3, r2
     218:	e1a03403 	lsl	r3, r3, #8
     21c:	e0833002 	add	r3, r3, r2
     220:	e1a03803 	lsl	r3, r3, #16
     224:	e1a02003 	mov	r2, r3
     228:	e55b300d 	ldrb	r3, [fp, #-13]
     22c:	e1a03403 	lsl	r3, r3, #8
     230:	e1822003 	orr	r2, r2, r3
     234:	e55b300d 	ldrb	r3, [fp, #-13]
     238:	e1823003 	orr	r3, r2, r3
     23c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     240:	ea000008 	b	268 <memset+0x80>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e55b200d 	ldrb	r2, [fp, #-13]
     24c:	e5c32000 	strb	r2, [r3]
     250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     254:	e2433001 	sub	r3, r3, #1
     258:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e3530000 	cmp	r3, #0
     270:	0a000003 	beq	284 <memset+0x9c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2033003 	and	r3, r3, #3
     27c:	e3530000 	cmp	r3, #0
     280:	1affffef 	bne	244 <memset+0x5c>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	ea000008 	b	2b4 <memset+0xcc>
     290:	e51b300c 	ldr	r3, [fp, #-12]
     294:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     298:	e5832000 	str	r2, [r3]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e2433004 	sub	r3, r3, #4
     2a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e2833004 	add	r3, r3, #4
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e3530003 	cmp	r3, #3
     2bc:	8afffff3 	bhi	290 <memset+0xa8>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000008 	b	2f0 <memset+0x108>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e55b200d 	ldrb	r2, [fp, #-13]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1afffff3 	bne	2cc <memset+0xe4>
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e1a00003 	mov	r0, r3
     304:	e28bd000 	add	sp, fp, #0
     308:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     30c:	e12fff1e 	bx	lr

00000310 <strchr>:
     310:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     314:	e28db000 	add	fp, sp, #0
     318:	e24dd00c 	sub	sp, sp, #12
     31c:	e50b0008 	str	r0, [fp, #-8]
     320:	e1a03001 	mov	r3, r1
     324:	e54b3009 	strb	r3, [fp, #-9]
     328:	ea000009 	b	354 <strchr+0x44>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e55b2009 	ldrb	r2, [fp, #-9]
     338:	e1520003 	cmp	r2, r3
     33c:	1a000001 	bne	348 <strchr+0x38>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	ea000007 	b	368 <strchr+0x58>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff1 	bne	32c <strchr+0x1c>
     364:	e3a03000 	mov	r3, #0
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <gets>:
     378:	e92d4800 	push	{fp, lr}
     37c:	e28db004 	add	fp, sp, #4
     380:	e24dd018 	sub	sp, sp, #24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e3a03000 	mov	r3, #0
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	ea000016 	b	3f4 <gets+0x7c>
     398:	e24b300d 	sub	r3, fp, #13
     39c:	e3a02001 	mov	r2, #1
     3a0:	e1a01003 	mov	r1, r3
     3a4:	e3a00000 	mov	r0, #0
     3a8:	eb0000f7 	bl	78c <read>
     3ac:	e50b000c 	str	r0, [fp, #-12]
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	da000013 	ble	40c <gets+0x94>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2832001 	add	r2, r3, #1
     3c4:	e50b2008 	str	r2, [fp, #-8]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e0833002 	add	r3, r3, r2
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e55b300d 	ldrb	r3, [fp, #-13]
     3e0:	e353000a 	cmp	r3, #10
     3e4:	0a000009 	beq	410 <gets+0x98>
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000d 	cmp	r3, #13
     3f0:	0a000006 	beq	410 <gets+0x98>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2833001 	add	r3, r3, #1
     3fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     400:	e1520003 	cmp	r2, r3
     404:	caffffe3 	bgt	398 <gets+0x20>
     408:	ea000000 	b	410 <gets+0x98>
     40c:	e1a00000 	nop			@ (mov r0, r0)
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     418:	e0823003 	add	r3, r2, r3
     41c:	e3a02000 	mov	r2, #0
     420:	e5c32000 	strb	r2, [r3]
     424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     428:	e1a00003 	mov	r0, r3
     42c:	e24bd004 	sub	sp, fp, #4
     430:	e8bd8800 	pop	{fp, pc}

00000434 <stat>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd010 	sub	sp, sp, #16
     440:	e50b0010 	str	r0, [fp, #-16]
     444:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     448:	e3a01000 	mov	r1, #0
     44c:	e51b0010 	ldr	r0, [fp, #-16]
     450:	eb0000fa 	bl	840 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb00010c 	bl	8ac <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb0000d3 	bl	7d4 <close>
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <atoi>:
     494:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     498:	e28db000 	add	fp, sp, #0
     49c:	e24dd014 	sub	sp, sp, #20
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e3a03000 	mov	r3, #0
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	ea00000c 	b	4e4 <atoi+0x50>
     4b0:	e51b2008 	ldr	r2, [fp, #-8]
     4b4:	e1a03002 	mov	r3, r2
     4b8:	e1a03103 	lsl	r3, r3, #2
     4bc:	e0833002 	add	r3, r3, r2
     4c0:	e1a03083 	lsl	r3, r3, #1
     4c4:	e1a01003 	mov	r1, r3
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e2832001 	add	r2, r3, #1
     4d0:	e50b2010 	str	r2, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e0813003 	add	r3, r1, r3
     4dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e353002f 	cmp	r3, #47	@ 0x2f
     4f0:	9a000003 	bls	504 <atoi+0x70>
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530039 	cmp	r3, #57	@ 0x39
     500:	9affffea 	bls	4b0 <atoi+0x1c>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e1a00003 	mov	r0, r3
     50c:	e28bd000 	add	sp, fp, #0
     510:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     514:	e12fff1e 	bx	lr

00000518 <memmove>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd01c 	sub	sp, sp, #28
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     52c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e50b3008 	str	r3, [fp, #-8]
     538:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     53c:	e50b300c 	str	r3, [fp, #-12]
     540:	ea000007 	b	564 <memmove+0x4c>
     544:	e51b200c 	ldr	r2, [fp, #-12]
     548:	e2823001 	add	r3, r2, #1
     54c:	e50b300c 	str	r3, [fp, #-12]
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e2831001 	add	r1, r3, #1
     558:	e50b1008 	str	r1, [fp, #-8]
     55c:	e5d22000 	ldrb	r2, [r2]
     560:	e5c32000 	strb	r2, [r3]
     564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     568:	e2432001 	sub	r2, r3, #1
     56c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     570:	e3530000 	cmp	r3, #0
     574:	cafffff2 	bgt	544 <memmove+0x2c>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e1a00003 	mov	r0, r3
     580:	e28bd000 	add	sp, fp, #0
     584:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <strncmp>:
     58c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     590:	e28db000 	add	fp, sp, #0
     594:	e24dd014 	sub	sp, sp, #20
     598:	e50b0008 	str	r0, [fp, #-8]
     59c:	e50b100c 	str	r1, [fp, #-12]
     5a0:	e50b2010 	str	r2, [fp, #-16]
     5a4:	ea000008 	b	5cc <strncmp+0x40>
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e2833001 	add	r3, r3, #1
     5b0:	e50b3008 	str	r3, [fp, #-8]
     5b4:	e51b300c 	ldr	r3, [fp, #-12]
     5b8:	e2833001 	add	r3, r3, #1
     5bc:	e50b300c 	str	r3, [fp, #-12]
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e2433001 	sub	r3, r3, #1
     5c8:	e50b3010 	str	r3, [fp, #-16]
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e3530000 	cmp	r3, #0
     5d4:	da00000d 	ble	610 <strncmp+0x84>
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e5d33000 	ldrb	r3, [r3]
     5e0:	e3530000 	cmp	r3, #0
     5e4:	0a000009 	beq	610 <strncmp+0x84>
     5e8:	e51b300c 	ldr	r3, [fp, #-12]
     5ec:	e5d33000 	ldrb	r3, [r3]
     5f0:	e3530000 	cmp	r3, #0
     5f4:	0a000005 	beq	610 <strncmp+0x84>
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e5d32000 	ldrb	r2, [r3]
     600:	e51b300c 	ldr	r3, [fp, #-12]
     604:	e5d33000 	ldrb	r3, [r3]
     608:	e1520003 	cmp	r2, r3
     60c:	0affffe5 	beq	5a8 <strncmp+0x1c>
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e3530000 	cmp	r3, #0
     618:	1a000001 	bne	624 <strncmp+0x98>
     61c:	e3a03000 	mov	r3, #0
     620:	ea000005 	b	63c <strncmp+0xb0>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e5d33000 	ldrb	r3, [r3]
     62c:	e1a02003 	mov	r2, r3
     630:	e51b300c 	ldr	r3, [fp, #-12]
     634:	e5d33000 	ldrb	r3, [r3]
     638:	e0423003 	sub	r3, r2, r3
     63c:	e1a00003 	mov	r0, r3
     640:	e28bd000 	add	sp, fp, #0
     644:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <strncpy>:
     64c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     650:	e28db000 	add	fp, sp, #0
     654:	e24dd01c 	sub	sp, sp, #28
     658:	e50b0010 	str	r0, [fp, #-16]
     65c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     660:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     664:	e51b3010 	ldr	r3, [fp, #-16]
     668:	e50b3008 	str	r3, [fp, #-8]
     66c:	ea00000a 	b	69c <strncpy+0x50>
     670:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     674:	e2823001 	add	r3, r2, #1
     678:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2831001 	add	r1, r3, #1
     684:	e50b1008 	str	r1, [fp, #-8]
     688:	e5d22000 	ldrb	r2, [r2]
     68c:	e5c32000 	strb	r2, [r3]
     690:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     694:	e2433001 	sub	r3, r3, #1
     698:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     69c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a0:	e3530000 	cmp	r3, #0
     6a4:	da00000c 	ble	6dc <strncpy+0x90>
     6a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6ac:	e5d33000 	ldrb	r3, [r3]
     6b0:	e3530000 	cmp	r3, #0
     6b4:	1affffed 	bne	670 <strncpy+0x24>
     6b8:	ea000007 	b	6dc <strncpy+0x90>
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e2832001 	add	r2, r3, #1
     6c4:	e50b2008 	str	r2, [fp, #-8]
     6c8:	e3a02000 	mov	r2, #0
     6cc:	e5c32000 	strb	r2, [r3]
     6d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6d4:	e2433001 	sub	r3, r3, #1
     6d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6e0:	e3530000 	cmp	r3, #0
     6e4:	cafffff4 	bgt	6bc <strncpy+0x70>
     6e8:	e51b3010 	ldr	r3, [fp, #-16]
     6ec:	e1a00003 	mov	r0, r3
     6f0:	e28bd000 	add	sp, fp, #0
     6f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <fork>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00001 	mov	r0, #1
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <exit>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00002 	mov	r0, #2
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <wait>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00003 	mov	r0, #3
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <pipe>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00004 	mov	r0, #4
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <read>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00005 	mov	r0, #5
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <write>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00010 	mov	r0, #16
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <close>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a00015 	mov	r0, #21
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <kill>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00006 	mov	r0, #6
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <exec>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00007 	mov	r0, #7
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <open>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a0000f 	mov	r0, #15
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <mknod>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00011 	mov	r0, #17
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <unlink>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00012 	mov	r0, #18
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <fstat>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00008 	mov	r0, #8
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <link>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a00013 	mov	r0, #19
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <mkdir>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a00014 	mov	r0, #20
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <chdir>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a00009 	mov	r0, #9
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <dup>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a0000a 	mov	r0, #10
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <getpid>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a0000b 	mov	r0, #11
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <sbrk>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a0000c 	mov	r0, #12
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <sleep>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a0000d 	mov	r0, #13
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <uptime>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a0000e 	mov	r0, #14
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <proclist>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00016 	mov	r0, #22
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <putc>:
     a14:	e92d4800 	push	{fp, lr}
     a18:	e28db004 	add	fp, sp, #4
     a1c:	e24dd008 	sub	sp, sp, #8
     a20:	e50b0008 	str	r0, [fp, #-8]
     a24:	e1a03001 	mov	r3, r1
     a28:	e54b3009 	strb	r3, [fp, #-9]
     a2c:	e24b3009 	sub	r3, fp, #9
     a30:	e3a02001 	mov	r2, #1
     a34:	e1a01003 	mov	r1, r3
     a38:	e51b0008 	ldr	r0, [fp, #-8]
     a3c:	ebffff5b 	bl	7b0 <write>
     a40:	e1a00000 	nop			@ (mov r0, r0)
     a44:	e24bd004 	sub	sp, fp, #4
     a48:	e8bd8800 	pop	{fp, pc}

00000a4c <printint>:
     a4c:	e92d4800 	push	{fp, lr}
     a50:	e28db004 	add	fp, sp, #4
     a54:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a58:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a5c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a60:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a64:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a68:	e3a03000 	mov	r3, #0
     a6c:	e50b300c 	str	r3, [fp, #-12]
     a70:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a74:	e3530000 	cmp	r3, #0
     a78:	0a000008 	beq	aa0 <printint+0x54>
     a7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a80:	e3530000 	cmp	r3, #0
     a84:	aa000005 	bge	aa0 <printint+0x54>
     a88:	e3a03001 	mov	r3, #1
     a8c:	e50b300c 	str	r3, [fp, #-12]
     a90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a94:	e2633000 	rsb	r3, r3, #0
     a98:	e50b3010 	str	r3, [fp, #-16]
     a9c:	ea000001 	b	aa8 <printint+0x5c>
     aa0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aa4:	e50b3010 	str	r3, [fp, #-16]
     aa8:	e3a03000 	mov	r3, #0
     aac:	e50b3008 	str	r3, [fp, #-8]
     ab0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ab4:	e51b3010 	ldr	r3, [fp, #-16]
     ab8:	e1a01002 	mov	r1, r2
     abc:	e1a00003 	mov	r0, r3
     ac0:	eb0001d5 	bl	121c <__aeabi_uidivmod>
     ac4:	e1a03001 	mov	r3, r1
     ac8:	e1a01003 	mov	r1, r3
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e2832001 	add	r2, r3, #1
     ad4:	e50b2008 	str	r2, [fp, #-8]
     ad8:	e59f20a0 	ldr	r2, [pc, #160]	@ b80 <printint+0x134>
     adc:	e7d22001 	ldrb	r2, [r2, r1]
     ae0:	e2433004 	sub	r3, r3, #4
     ae4:	e083300b 	add	r3, r3, fp
     ae8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     af0:	e1a01003 	mov	r1, r3
     af4:	e51b0010 	ldr	r0, [fp, #-16]
     af8:	eb00018a 	bl	1128 <__udivsi3>
     afc:	e1a03000 	mov	r3, r0
     b00:	e50b3010 	str	r3, [fp, #-16]
     b04:	e51b3010 	ldr	r3, [fp, #-16]
     b08:	e3530000 	cmp	r3, #0
     b0c:	1affffe7 	bne	ab0 <printint+0x64>
     b10:	e51b300c 	ldr	r3, [fp, #-12]
     b14:	e3530000 	cmp	r3, #0
     b18:	0a00000e 	beq	b58 <printint+0x10c>
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e2832001 	add	r2, r3, #1
     b24:	e50b2008 	str	r2, [fp, #-8]
     b28:	e2433004 	sub	r3, r3, #4
     b2c:	e083300b 	add	r3, r3, fp
     b30:	e3a0202d 	mov	r2, #45	@ 0x2d
     b34:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b38:	ea000006 	b	b58 <printint+0x10c>
     b3c:	e24b2020 	sub	r2, fp, #32
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e0823003 	add	r3, r2, r3
     b48:	e5d33000 	ldrb	r3, [r3]
     b4c:	e1a01003 	mov	r1, r3
     b50:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b54:	ebffffae 	bl	a14 <putc>
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e2433001 	sub	r3, r3, #1
     b60:	e50b3008 	str	r3, [fp, #-8]
     b64:	e51b3008 	ldr	r3, [fp, #-8]
     b68:	e3530000 	cmp	r3, #0
     b6c:	aafffff2 	bge	b3c <printint+0xf0>
     b70:	e1a00000 	nop			@ (mov r0, r0)
     b74:	e1a00000 	nop			@ (mov r0, r0)
     b78:	e24bd004 	sub	sp, fp, #4
     b7c:	e8bd8800 	pop	{fp, pc}
     b80:	00001278 	.word	0x00001278

00000b84 <printf>:
     b84:	e92d000e 	push	{r1, r2, r3}
     b88:	e92d4800 	push	{fp, lr}
     b8c:	e28db004 	add	fp, sp, #4
     b90:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b94:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b98:	e3a03000 	mov	r3, #0
     b9c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ba0:	e28b3008 	add	r3, fp, #8
     ba4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	e3a03000 	mov	r3, #0
     bac:	e50b3010 	str	r3, [fp, #-16]
     bb0:	ea000074 	b	d88 <printf+0x204>
     bb4:	e59b2004 	ldr	r2, [fp, #4]
     bb8:	e51b3010 	ldr	r3, [fp, #-16]
     bbc:	e0823003 	add	r3, r2, r3
     bc0:	e5d33000 	ldrb	r3, [r3]
     bc4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1a00000b 	bne	c04 <printf+0x80>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e3530025 	cmp	r3, #37	@ 0x25
     bdc:	1a000002 	bne	bec <printf+0x68>
     be0:	e3a03025 	mov	r3, #37	@ 0x25
     be4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be8:	ea000063 	b	d7c <printf+0x1f8>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e6ef3073 	uxtb	r3, r3
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bfc:	ebffff84 	bl	a14 <putc>
     c00:	ea00005d 	b	d7c <printf+0x1f8>
     c04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c08:	e3530025 	cmp	r3, #37	@ 0x25
     c0c:	1a00005a 	bne	d7c <printf+0x1f8>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530064 	cmp	r3, #100	@ 0x64
     c18:	1a00000a 	bne	c48 <printf+0xc4>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e1a01003 	mov	r1, r3
     c28:	e3a03001 	mov	r3, #1
     c2c:	e3a0200a 	mov	r2, #10
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff84 	bl	a4c <printint>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c44:	ea00004a 	b	d74 <printf+0x1f0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530078 	cmp	r3, #120	@ 0x78
     c50:	0a000002 	beq	c60 <printf+0xdc>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e3530070 	cmp	r3, #112	@ 0x70
     c5c:	1a00000a 	bne	c8c <printf+0x108>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e5933000 	ldr	r3, [r3]
     c68:	e1a01003 	mov	r1, r3
     c6c:	e3a03000 	mov	r3, #0
     c70:	e3a02010 	mov	r2, #16
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff73 	bl	a4c <printint>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e2833004 	add	r3, r3, #4
     c84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c88:	ea000039 	b	d74 <printf+0x1f0>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530073 	cmp	r3, #115	@ 0x73
     c94:	1a000018 	bne	cfc <printf+0x178>
     c98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e50b300c 	str	r3, [fp, #-12]
     ca4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca8:	e2833004 	add	r3, r3, #4
     cac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e3530000 	cmp	r3, #0
     cb8:	1a00000a 	bne	ce8 <printf+0x164>
     cbc:	e59f30f4 	ldr	r3, [pc, #244]	@ db8 <printf+0x234>
     cc0:	e50b300c 	str	r3, [fp, #-12]
     cc4:	ea000007 	b	ce8 <printf+0x164>
     cc8:	e51b300c 	ldr	r3, [fp, #-12]
     ccc:	e5d33000 	ldrb	r3, [r3]
     cd0:	e1a01003 	mov	r1, r3
     cd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd8:	ebffff4d 	bl	a14 <putc>
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e2833001 	add	r3, r3, #1
     ce4:	e50b300c 	str	r3, [fp, #-12]
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5d33000 	ldrb	r3, [r3]
     cf0:	e3530000 	cmp	r3, #0
     cf4:	1afffff3 	bne	cc8 <printf+0x144>
     cf8:	ea00001d 	b	d74 <printf+0x1f0>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e3530063 	cmp	r3, #99	@ 0x63
     d04:	1a000009 	bne	d30 <printf+0x1ac>
     d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e6ef3073 	uxtb	r3, r3
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff3c 	bl	a14 <putc>
     d20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d24:	e2833004 	add	r3, r3, #4
     d28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	ea000010 	b	d74 <printf+0x1f0>
     d30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d34:	e3530025 	cmp	r3, #37	@ 0x25
     d38:	1a000005 	bne	d54 <printf+0x1d0>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e6ef3073 	uxtb	r3, r3
     d44:	e1a01003 	mov	r1, r3
     d48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d4c:	ebffff30 	bl	a14 <putc>
     d50:	ea000007 	b	d74 <printf+0x1f0>
     d54:	e3a01025 	mov	r1, #37	@ 0x25
     d58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d5c:	ebffff2c 	bl	a14 <putc>
     d60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d64:	e6ef3073 	uxtb	r3, r3
     d68:	e1a01003 	mov	r1, r3
     d6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d70:	ebffff27 	bl	a14 <putc>
     d74:	e3a03000 	mov	r3, #0
     d78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d7c:	e51b3010 	ldr	r3, [fp, #-16]
     d80:	e2833001 	add	r3, r3, #1
     d84:	e50b3010 	str	r3, [fp, #-16]
     d88:	e59b2004 	ldr	r2, [fp, #4]
     d8c:	e51b3010 	ldr	r3, [fp, #-16]
     d90:	e0823003 	add	r3, r2, r3
     d94:	e5d33000 	ldrb	r3, [r3]
     d98:	e3530000 	cmp	r3, #0
     d9c:	1affff84 	bne	bb4 <printf+0x30>
     da0:	e1a00000 	nop			@ (mov r0, r0)
     da4:	e1a00000 	nop			@ (mov r0, r0)
     da8:	e24bd004 	sub	sp, fp, #4
     dac:	e8bd4800 	pop	{fp, lr}
     db0:	e28dd00c 	add	sp, sp, #12
     db4:	e12fff1e 	bx	lr
     db8:	00001270 	.word	0x00001270

00000dbc <free>:
     dbc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     dc0:	e28db000 	add	fp, sp, #0
     dc4:	e24dd014 	sub	sp, sp, #20
     dc8:	e50b0010 	str	r0, [fp, #-16]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e2433008 	sub	r3, r3, #8
     dd4:	e50b300c 	str	r3, [fp, #-12]
     dd8:	e59f3154 	ldr	r3, [pc, #340]	@ f34 <free+0x178>
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e50b3008 	str	r3, [fp, #-8]
     de4:	ea000010 	b	e2c <free+0x70>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5933000 	ldr	r3, [r3]
     df0:	e51b2008 	ldr	r2, [fp, #-8]
     df4:	e1520003 	cmp	r2, r3
     df8:	3a000008 	bcc	e20 <free+0x64>
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e1520003 	cmp	r2, r3
     e08:	8a000010 	bhi	e50 <free+0x94>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e51b200c 	ldr	r2, [fp, #-12]
     e18:	e1520003 	cmp	r2, r3
     e1c:	3a00000b 	bcc	e50 <free+0x94>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e50b3008 	str	r3, [fp, #-8]
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e1520003 	cmp	r2, r3
     e38:	9affffea 	bls	de8 <free+0x2c>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e51b200c 	ldr	r2, [fp, #-12]
     e48:	e1520003 	cmp	r2, r3
     e4c:	2affffe5 	bcs	de8 <free+0x2c>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5933004 	ldr	r3, [r3, #4]
     e58:	e1a03183 	lsl	r3, r3, #3
     e5c:	e51b200c 	ldr	r2, [fp, #-12]
     e60:	e0822003 	add	r2, r2, r3
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e1520003 	cmp	r2, r3
     e70:	1a00000d 	bne	eac <free+0xf0>
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5932004 	ldr	r2, [r3, #4]
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e5933004 	ldr	r3, [r3, #4]
     e88:	e0822003 	add	r2, r2, r3
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e5832004 	str	r2, [r3, #4]
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e5932000 	ldr	r2, [r3]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5832000 	str	r2, [r3]
     ea8:	ea000003 	b	ebc <free+0x100>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5932000 	ldr	r2, [r3]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5832000 	str	r2, [r3]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933004 	ldr	r3, [r3, #4]
     ec4:	e1a03183 	lsl	r3, r3, #3
     ec8:	e51b2008 	ldr	r2, [fp, #-8]
     ecc:	e0823003 	add	r3, r2, r3
     ed0:	e51b200c 	ldr	r2, [fp, #-12]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	1a00000b 	bne	f0c <free+0x150>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5932004 	ldr	r2, [r3, #4]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5933004 	ldr	r3, [r3, #4]
     eec:	e0822003 	add	r2, r2, r3
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5832004 	str	r2, [r3, #4]
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5932000 	ldr	r2, [r3]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5832000 	str	r2, [r3]
     f08:	ea000002 	b	f18 <free+0x15c>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e51b200c 	ldr	r2, [fp, #-12]
     f14:	e5832000 	str	r2, [r3]
     f18:	e59f2014 	ldr	r2, [pc, #20]	@ f34 <free+0x178>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e5823000 	str	r3, [r2]
     f24:	e1a00000 	nop			@ (mov r0, r0)
     f28:	e28bd000 	add	sp, fp, #0
     f2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f30:	e12fff1e 	bx	lr
     f34:	00001294 	.word	0x00001294

00000f38 <morecore>:
     f38:	e92d4800 	push	{fp, lr}
     f3c:	e28db004 	add	fp, sp, #4
     f40:	e24dd010 	sub	sp, sp, #16
     f44:	e50b0010 	str	r0, [fp, #-16]
     f48:	e51b3010 	ldr	r3, [fp, #-16]
     f4c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f50:	2a000001 	bcs	f5c <morecore+0x24>
     f54:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f58:	e50b3010 	str	r3, [fp, #-16]
     f5c:	e51b3010 	ldr	r3, [fp, #-16]
     f60:	e1a03183 	lsl	r3, r3, #3
     f64:	e1a00003 	mov	r0, r3
     f68:	ebfffe85 	bl	984 <sbrk>
     f6c:	e50b0008 	str	r0, [fp, #-8]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e3730001 	cmn	r3, #1
     f78:	1a000001 	bne	f84 <morecore+0x4c>
     f7c:	e3a03000 	mov	r3, #0
     f80:	ea00000a 	b	fb0 <morecore+0x78>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e51b2010 	ldr	r2, [fp, #-16]
     f94:	e5832004 	str	r2, [r3, #4]
     f98:	e51b300c 	ldr	r3, [fp, #-12]
     f9c:	e2833008 	add	r3, r3, #8
     fa0:	e1a00003 	mov	r0, r3
     fa4:	ebffff84 	bl	dbc <free>
     fa8:	e59f300c 	ldr	r3, [pc, #12]	@ fbc <morecore+0x84>
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e1a00003 	mov	r0, r3
     fb4:	e24bd004 	sub	sp, fp, #4
     fb8:	e8bd8800 	pop	{fp, pc}
     fbc:	00001294 	.word	0x00001294

00000fc0 <malloc>:
     fc0:	e92d4800 	push	{fp, lr}
     fc4:	e28db004 	add	fp, sp, #4
     fc8:	e24dd018 	sub	sp, sp, #24
     fcc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	e2833007 	add	r3, r3, #7
     fd8:	e1a031a3 	lsr	r3, r3, #3
     fdc:	e2833001 	add	r3, r3, #1
     fe0:	e50b3010 	str	r3, [fp, #-16]
     fe4:	e59f3134 	ldr	r3, [pc, #308]	@ 1120 <malloc+0x160>
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e50b300c 	str	r3, [fp, #-12]
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e3530000 	cmp	r3, #0
     ff8:	1a00000b 	bne	102c <malloc+0x6c>
     ffc:	e59f3120 	ldr	r3, [pc, #288]	@ 1124 <malloc+0x164>
    1000:	e50b300c 	str	r3, [fp, #-12]
    1004:	e59f2114 	ldr	r2, [pc, #276]	@ 1120 <malloc+0x160>
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5823000 	str	r3, [r2]
    1010:	e59f3108 	ldr	r3, [pc, #264]	@ 1120 <malloc+0x160>
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e59f2104 	ldr	r2, [pc, #260]	@ 1124 <malloc+0x164>
    101c:	e5823000 	str	r3, [r2]
    1020:	e59f30fc 	ldr	r3, [pc, #252]	@ 1124 <malloc+0x164>
    1024:	e3a02000 	mov	r2, #0
    1028:	e5832004 	str	r2, [r3, #4]
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e50b3008 	str	r3, [fp, #-8]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5933004 	ldr	r3, [r3, #4]
    1040:	e51b2010 	ldr	r2, [fp, #-16]
    1044:	e1520003 	cmp	r2, r3
    1048:	8a00001e 	bhi	10c8 <malloc+0x108>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e51b2010 	ldr	r2, [fp, #-16]
    1058:	e1520003 	cmp	r2, r3
    105c:	1a000004 	bne	1074 <malloc+0xb4>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5932000 	ldr	r2, [r3]
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e5832000 	str	r2, [r3]
    1070:	ea00000e 	b	10b0 <malloc+0xf0>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5932004 	ldr	r2, [r3, #4]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e0422003 	sub	r2, r2, r3
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5832004 	str	r2, [r3, #4]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933004 	ldr	r3, [r3, #4]
    1094:	e1a03183 	lsl	r3, r3, #3
    1098:	e51b2008 	ldr	r2, [fp, #-8]
    109c:	e0823003 	add	r3, r2, r3
    10a0:	e50b3008 	str	r3, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e51b2010 	ldr	r2, [fp, #-16]
    10ac:	e5832004 	str	r2, [r3, #4]
    10b0:	e59f2068 	ldr	r2, [pc, #104]	@ 1120 <malloc+0x160>
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e5823000 	str	r3, [r2]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e2833008 	add	r3, r3, #8
    10c4:	ea000012 	b	1114 <malloc+0x154>
    10c8:	e59f3050 	ldr	r3, [pc, #80]	@ 1120 <malloc+0x160>
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e51b2008 	ldr	r2, [fp, #-8]
    10d4:	e1520003 	cmp	r2, r3
    10d8:	1a000007 	bne	10fc <malloc+0x13c>
    10dc:	e51b0010 	ldr	r0, [fp, #-16]
    10e0:	ebffff94 	bl	f38 <morecore>
    10e4:	e50b0008 	str	r0, [fp, #-8]
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	1a000001 	bne	10fc <malloc+0x13c>
    10f4:	e3a03000 	mov	r3, #0
    10f8:	ea000005 	b	1114 <malloc+0x154>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e50b300c 	str	r3, [fp, #-12]
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e50b3008 	str	r3, [fp, #-8]
    1110:	eaffffc8 	b	1038 <malloc+0x78>
    1114:	e1a00003 	mov	r0, r3
    1118:	e24bd004 	sub	sp, fp, #4
    111c:	e8bd8800 	pop	{fp, pc}
    1120:	00001294 	.word	0x00001294
    1124:	0000128c 	.word	0x0000128c

00001128 <__udivsi3>:
    1128:	e2512001 	subs	r2, r1, #1
    112c:	012fff1e 	bxeq	lr
    1130:	3a000036 	bcc	1210 <__udivsi3+0xe8>
    1134:	e1500001 	cmp	r0, r1
    1138:	9a000022 	bls	11c8 <__udivsi3+0xa0>
    113c:	e1110002 	tst	r1, r2
    1140:	0a000023 	beq	11d4 <__udivsi3+0xac>
    1144:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1148:	01a01181 	lsleq	r1, r1, #3
    114c:	03a03008 	moveq	r3, #8
    1150:	13a03001 	movne	r3, #1
    1154:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1158:	31510000 	cmpcc	r1, r0
    115c:	31a01201 	lslcc	r1, r1, #4
    1160:	31a03203 	lslcc	r3, r3, #4
    1164:	3afffffa 	bcc	1154 <__udivsi3+0x2c>
    1168:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    116c:	31510000 	cmpcc	r1, r0
    1170:	31a01081 	lslcc	r1, r1, #1
    1174:	31a03083 	lslcc	r3, r3, #1
    1178:	3afffffa 	bcc	1168 <__udivsi3+0x40>
    117c:	e3a02000 	mov	r2, #0
    1180:	e1500001 	cmp	r0, r1
    1184:	20400001 	subcs	r0, r0, r1
    1188:	21822003 	orrcs	r2, r2, r3
    118c:	e15000a1 	cmp	r0, r1, lsr #1
    1190:	204000a1 	subcs	r0, r0, r1, lsr #1
    1194:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1198:	e1500121 	cmp	r0, r1, lsr #2
    119c:	20400121 	subcs	r0, r0, r1, lsr #2
    11a0:	21822123 	orrcs	r2, r2, r3, lsr #2
    11a4:	e15001a1 	cmp	r0, r1, lsr #3
    11a8:	204001a1 	subcs	r0, r0, r1, lsr #3
    11ac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11b0:	e3500000 	cmp	r0, #0
    11b4:	11b03223 	lsrsne	r3, r3, #4
    11b8:	11a01221 	lsrne	r1, r1, #4
    11bc:	1affffef 	bne	1180 <__udivsi3+0x58>
    11c0:	e1a00002 	mov	r0, r2
    11c4:	e12fff1e 	bx	lr
    11c8:	03a00001 	moveq	r0, #1
    11cc:	13a00000 	movne	r0, #0
    11d0:	e12fff1e 	bx	lr
    11d4:	e3510801 	cmp	r1, #65536	@ 0x10000
    11d8:	21a01821 	lsrcs	r1, r1, #16
    11dc:	23a02010 	movcs	r2, #16
    11e0:	33a02000 	movcc	r2, #0
    11e4:	e3510c01 	cmp	r1, #256	@ 0x100
    11e8:	21a01421 	lsrcs	r1, r1, #8
    11ec:	22822008 	addcs	r2, r2, #8
    11f0:	e3510010 	cmp	r1, #16
    11f4:	21a01221 	lsrcs	r1, r1, #4
    11f8:	22822004 	addcs	r2, r2, #4
    11fc:	e3510004 	cmp	r1, #4
    1200:	82822003 	addhi	r2, r2, #3
    1204:	908220a1 	addls	r2, r2, r1, lsr #1
    1208:	e1a00230 	lsr	r0, r0, r2
    120c:	e12fff1e 	bx	lr
    1210:	e3500000 	cmp	r0, #0
    1214:	13e00000 	mvnne	r0, #0
    1218:	ea000007 	b	123c <__aeabi_idiv0>

0000121c <__aeabi_uidivmod>:
    121c:	e3510000 	cmp	r1, #0
    1220:	0afffffa 	beq	1210 <__udivsi3+0xe8>
    1224:	e92d4003 	push	{r0, r1, lr}
    1228:	ebffffbe 	bl	1128 <__udivsi3>
    122c:	e8bd4006 	pop	{r1, r2, lr}
    1230:	e0030092 	mul	r3, r2, r0
    1234:	e0411003 	sub	r1, r1, r3
    1238:	e12fff1e 	bx	lr

0000123c <__aeabi_idiv0>:
    123c:	e12fff1e 	bx	lr
