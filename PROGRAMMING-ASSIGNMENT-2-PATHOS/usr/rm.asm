
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
      28:	eb0002f0 	bl	bf0 <printf>
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
      84:	eb0002d9 	bl	bf0 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb00019c 	bl	720 <exit>
      ac:	000012ac 	.word	0x000012ac
      b0:	000012c0 	.word	0x000012c0

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

00000a14 <settickets>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00017 	mov	r0, #23
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <srand>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00018 	mov	r0, #24
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <getpinfo>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00019 	mov	r0, #25
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <putc>:
     a80:	e92d4800 	push	{fp, lr}
     a84:	e28db004 	add	fp, sp, #4
     a88:	e24dd008 	sub	sp, sp, #8
     a8c:	e50b0008 	str	r0, [fp, #-8]
     a90:	e1a03001 	mov	r3, r1
     a94:	e54b3009 	strb	r3, [fp, #-9]
     a98:	e24b3009 	sub	r3, fp, #9
     a9c:	e3a02001 	mov	r2, #1
     aa0:	e1a01003 	mov	r1, r3
     aa4:	e51b0008 	ldr	r0, [fp, #-8]
     aa8:	ebffff40 	bl	7b0 <write>
     aac:	e1a00000 	nop			@ (mov r0, r0)
     ab0:	e24bd004 	sub	sp, fp, #4
     ab4:	e8bd8800 	pop	{fp, pc}

00000ab8 <printint>:
     ab8:	e92d4800 	push	{fp, lr}
     abc:	e28db004 	add	fp, sp, #4
     ac0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ac4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ac8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     acc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ad0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ad4:	e3a03000 	mov	r3, #0
     ad8:	e50b300c 	str	r3, [fp, #-12]
     adc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ae0:	e3530000 	cmp	r3, #0
     ae4:	0a000008 	beq	b0c <printint+0x54>
     ae8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aec:	e3530000 	cmp	r3, #0
     af0:	aa000005 	bge	b0c <printint+0x54>
     af4:	e3a03001 	mov	r3, #1
     af8:	e50b300c 	str	r3, [fp, #-12]
     afc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b00:	e2633000 	rsb	r3, r3, #0
     b04:	e50b3010 	str	r3, [fp, #-16]
     b08:	ea000001 	b	b14 <printint+0x5c>
     b0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b10:	e50b3010 	str	r3, [fp, #-16]
     b14:	e3a03000 	mov	r3, #0
     b18:	e50b3008 	str	r3, [fp, #-8]
     b1c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b20:	e51b3010 	ldr	r3, [fp, #-16]
     b24:	e1a01002 	mov	r1, r2
     b28:	e1a00003 	mov	r0, r3
     b2c:	eb0001d5 	bl	1288 <__aeabi_uidivmod>
     b30:	e1a03001 	mov	r3, r1
     b34:	e1a01003 	mov	r1, r3
     b38:	e51b3008 	ldr	r3, [fp, #-8]
     b3c:	e2832001 	add	r2, r3, #1
     b40:	e50b2008 	str	r2, [fp, #-8]
     b44:	e59f20a0 	ldr	r2, [pc, #160]	@ bec <printint+0x134>
     b48:	e7d22001 	ldrb	r2, [r2, r1]
     b4c:	e2433004 	sub	r3, r3, #4
     b50:	e083300b 	add	r3, r3, fp
     b54:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b58:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b5c:	e1a01003 	mov	r1, r3
     b60:	e51b0010 	ldr	r0, [fp, #-16]
     b64:	eb00018a 	bl	1194 <__udivsi3>
     b68:	e1a03000 	mov	r3, r0
     b6c:	e50b3010 	str	r3, [fp, #-16]
     b70:	e51b3010 	ldr	r3, [fp, #-16]
     b74:	e3530000 	cmp	r3, #0
     b78:	1affffe7 	bne	b1c <printint+0x64>
     b7c:	e51b300c 	ldr	r3, [fp, #-12]
     b80:	e3530000 	cmp	r3, #0
     b84:	0a00000e 	beq	bc4 <printint+0x10c>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e2832001 	add	r2, r3, #1
     b90:	e50b2008 	str	r2, [fp, #-8]
     b94:	e2433004 	sub	r3, r3, #4
     b98:	e083300b 	add	r3, r3, fp
     b9c:	e3a0202d 	mov	r2, #45	@ 0x2d
     ba0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ba4:	ea000006 	b	bc4 <printint+0x10c>
     ba8:	e24b2020 	sub	r2, fp, #32
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e0823003 	add	r3, r2, r3
     bb4:	e5d33000 	ldrb	r3, [r3]
     bb8:	e1a01003 	mov	r1, r3
     bbc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     bc0:	ebffffae 	bl	a80 <putc>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e2433001 	sub	r3, r3, #1
     bcc:	e50b3008 	str	r3, [fp, #-8]
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e3530000 	cmp	r3, #0
     bd8:	aafffff2 	bge	ba8 <printint+0xf0>
     bdc:	e1a00000 	nop			@ (mov r0, r0)
     be0:	e1a00000 	nop			@ (mov r0, r0)
     be4:	e24bd004 	sub	sp, fp, #4
     be8:	e8bd8800 	pop	{fp, pc}
     bec:	000012e4 	.word	0x000012e4

00000bf0 <printf>:
     bf0:	e92d000e 	push	{r1, r2, r3}
     bf4:	e92d4800 	push	{fp, lr}
     bf8:	e28db004 	add	fp, sp, #4
     bfc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c00:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c04:	e3a03000 	mov	r3, #0
     c08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c0c:	e28b3008 	add	r3, fp, #8
     c10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c14:	e3a03000 	mov	r3, #0
     c18:	e50b3010 	str	r3, [fp, #-16]
     c1c:	ea000074 	b	df4 <printf+0x204>
     c20:	e59b2004 	ldr	r2, [fp, #4]
     c24:	e51b3010 	ldr	r3, [fp, #-16]
     c28:	e0823003 	add	r3, r2, r3
     c2c:	e5d33000 	ldrb	r3, [r3]
     c30:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c38:	e3530000 	cmp	r3, #0
     c3c:	1a00000b 	bne	c70 <printf+0x80>
     c40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c44:	e3530025 	cmp	r3, #37	@ 0x25
     c48:	1a000002 	bne	c58 <printf+0x68>
     c4c:	e3a03025 	mov	r3, #37	@ 0x25
     c50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c54:	ea000063 	b	de8 <printf+0x1f8>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e6ef3073 	uxtb	r3, r3
     c60:	e1a01003 	mov	r1, r3
     c64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c68:	ebffff84 	bl	a80 <putc>
     c6c:	ea00005d 	b	de8 <printf+0x1f8>
     c70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c74:	e3530025 	cmp	r3, #37	@ 0x25
     c78:	1a00005a 	bne	de8 <printf+0x1f8>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e3530064 	cmp	r3, #100	@ 0x64
     c84:	1a00000a 	bne	cb4 <printf+0xc4>
     c88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e1a01003 	mov	r1, r3
     c94:	e3a03001 	mov	r3, #1
     c98:	e3a0200a 	mov	r2, #10
     c9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca0:	ebffff84 	bl	ab8 <printint>
     ca4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca8:	e2833004 	add	r3, r3, #4
     cac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cb0:	ea00004a 	b	de0 <printf+0x1f0>
     cb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb8:	e3530078 	cmp	r3, #120	@ 0x78
     cbc:	0a000002 	beq	ccc <printf+0xdc>
     cc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc4:	e3530070 	cmp	r3, #112	@ 0x70
     cc8:	1a00000a 	bne	cf8 <printf+0x108>
     ccc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e1a01003 	mov	r1, r3
     cd8:	e3a03000 	mov	r3, #0
     cdc:	e3a02010 	mov	r2, #16
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce4:	ebffff73 	bl	ab8 <printint>
     ce8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cec:	e2833004 	add	r3, r3, #4
     cf0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	ea000039 	b	de0 <printf+0x1f0>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e3530073 	cmp	r3, #115	@ 0x73
     d00:	1a000018 	bne	d68 <printf+0x178>
     d04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e50b300c 	str	r3, [fp, #-12]
     d10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d14:	e2833004 	add	r3, r3, #4
     d18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d1c:	e51b300c 	ldr	r3, [fp, #-12]
     d20:	e3530000 	cmp	r3, #0
     d24:	1a00000a 	bne	d54 <printf+0x164>
     d28:	e59f30f4 	ldr	r3, [pc, #244]	@ e24 <printf+0x234>
     d2c:	e50b300c 	str	r3, [fp, #-12]
     d30:	ea000007 	b	d54 <printf+0x164>
     d34:	e51b300c 	ldr	r3, [fp, #-12]
     d38:	e5d33000 	ldrb	r3, [r3]
     d3c:	e1a01003 	mov	r1, r3
     d40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d44:	ebffff4d 	bl	a80 <putc>
     d48:	e51b300c 	ldr	r3, [fp, #-12]
     d4c:	e2833001 	add	r3, r3, #1
     d50:	e50b300c 	str	r3, [fp, #-12]
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e5d33000 	ldrb	r3, [r3]
     d5c:	e3530000 	cmp	r3, #0
     d60:	1afffff3 	bne	d34 <printf+0x144>
     d64:	ea00001d 	b	de0 <printf+0x1f0>
     d68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d6c:	e3530063 	cmp	r3, #99	@ 0x63
     d70:	1a000009 	bne	d9c <printf+0x1ac>
     d74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d78:	e5933000 	ldr	r3, [r3]
     d7c:	e6ef3073 	uxtb	r3, r3
     d80:	e1a01003 	mov	r1, r3
     d84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d88:	ebffff3c 	bl	a80 <putc>
     d8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d90:	e2833004 	add	r3, r3, #4
     d94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d98:	ea000010 	b	de0 <printf+0x1f0>
     d9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da0:	e3530025 	cmp	r3, #37	@ 0x25
     da4:	1a000005 	bne	dc0 <printf+0x1d0>
     da8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dac:	e6ef3073 	uxtb	r3, r3
     db0:	e1a01003 	mov	r1, r3
     db4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db8:	ebffff30 	bl	a80 <putc>
     dbc:	ea000007 	b	de0 <printf+0x1f0>
     dc0:	e3a01025 	mov	r1, #37	@ 0x25
     dc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc8:	ebffff2c 	bl	a80 <putc>
     dcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd0:	e6ef3073 	uxtb	r3, r3
     dd4:	e1a01003 	mov	r1, r3
     dd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ddc:	ebffff27 	bl	a80 <putc>
     de0:	e3a03000 	mov	r3, #0
     de4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     de8:	e51b3010 	ldr	r3, [fp, #-16]
     dec:	e2833001 	add	r3, r3, #1
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	e59b2004 	ldr	r2, [fp, #4]
     df8:	e51b3010 	ldr	r3, [fp, #-16]
     dfc:	e0823003 	add	r3, r2, r3
     e00:	e5d33000 	ldrb	r3, [r3]
     e04:	e3530000 	cmp	r3, #0
     e08:	1affff84 	bne	c20 <printf+0x30>
     e0c:	e1a00000 	nop			@ (mov r0, r0)
     e10:	e1a00000 	nop			@ (mov r0, r0)
     e14:	e24bd004 	sub	sp, fp, #4
     e18:	e8bd4800 	pop	{fp, lr}
     e1c:	e28dd00c 	add	sp, sp, #12
     e20:	e12fff1e 	bx	lr
     e24:	000012dc 	.word	0x000012dc

00000e28 <free>:
     e28:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e2c:	e28db000 	add	fp, sp, #0
     e30:	e24dd014 	sub	sp, sp, #20
     e34:	e50b0010 	str	r0, [fp, #-16]
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e2433008 	sub	r3, r3, #8
     e40:	e50b300c 	str	r3, [fp, #-12]
     e44:	e59f3154 	ldr	r3, [pc, #340]	@ fa0 <free+0x178>
     e48:	e5933000 	ldr	r3, [r3]
     e4c:	e50b3008 	str	r3, [fp, #-8]
     e50:	ea000010 	b	e98 <free+0x70>
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e51b2008 	ldr	r2, [fp, #-8]
     e60:	e1520003 	cmp	r2, r3
     e64:	3a000008 	bcc	e8c <free+0x64>
     e68:	e51b200c 	ldr	r2, [fp, #-12]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e1520003 	cmp	r2, r3
     e74:	8a000010 	bhi	ebc <free+0x94>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e51b200c 	ldr	r2, [fp, #-12]
     e84:	e1520003 	cmp	r2, r3
     e88:	3a00000b 	bcc	ebc <free+0x94>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933000 	ldr	r3, [r3]
     e94:	e50b3008 	str	r3, [fp, #-8]
     e98:	e51b200c 	ldr	r2, [fp, #-12]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e1520003 	cmp	r2, r3
     ea4:	9affffea 	bls	e54 <free+0x2c>
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e5933000 	ldr	r3, [r3]
     eb0:	e51b200c 	ldr	r2, [fp, #-12]
     eb4:	e1520003 	cmp	r2, r3
     eb8:	2affffe5 	bcs	e54 <free+0x2c>
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5933004 	ldr	r3, [r3, #4]
     ec4:	e1a03183 	lsl	r3, r3, #3
     ec8:	e51b200c 	ldr	r2, [fp, #-12]
     ecc:	e0822003 	add	r2, r2, r3
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933000 	ldr	r3, [r3]
     ed8:	e1520003 	cmp	r2, r3
     edc:	1a00000d 	bne	f18 <free+0xf0>
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5932004 	ldr	r2, [r3, #4]
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e5933004 	ldr	r3, [r3, #4]
     ef4:	e0822003 	add	r2, r2, r3
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5832004 	str	r2, [r3, #4]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e5932000 	ldr	r2, [r3]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5832000 	str	r2, [r3]
     f14:	ea000003 	b	f28 <free+0x100>
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5932000 	ldr	r2, [r3]
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5832000 	str	r2, [r3]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933004 	ldr	r3, [r3, #4]
     f30:	e1a03183 	lsl	r3, r3, #3
     f34:	e51b2008 	ldr	r2, [fp, #-8]
     f38:	e0823003 	add	r3, r2, r3
     f3c:	e51b200c 	ldr	r2, [fp, #-12]
     f40:	e1520003 	cmp	r2, r3
     f44:	1a00000b 	bne	f78 <free+0x150>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5932004 	ldr	r2, [r3, #4]
     f50:	e51b300c 	ldr	r3, [fp, #-12]
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e0822003 	add	r2, r2, r3
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5832004 	str	r2, [r3, #4]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5932000 	ldr	r2, [r3]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5832000 	str	r2, [r3]
     f74:	ea000002 	b	f84 <free+0x15c>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e51b200c 	ldr	r2, [fp, #-12]
     f80:	e5832000 	str	r2, [r3]
     f84:	e59f2014 	ldr	r2, [pc, #20]	@ fa0 <free+0x178>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5823000 	str	r3, [r2]
     f90:	e1a00000 	nop			@ (mov r0, r0)
     f94:	e28bd000 	add	sp, fp, #0
     f98:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f9c:	e12fff1e 	bx	lr
     fa0:	00001300 	.word	0x00001300

00000fa4 <morecore>:
     fa4:	e92d4800 	push	{fp, lr}
     fa8:	e28db004 	add	fp, sp, #4
     fac:	e24dd010 	sub	sp, sp, #16
     fb0:	e50b0010 	str	r0, [fp, #-16]
     fb4:	e51b3010 	ldr	r3, [fp, #-16]
     fb8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     fbc:	2a000001 	bcs	fc8 <morecore+0x24>
     fc0:	e3a03a01 	mov	r3, #4096	@ 0x1000
     fc4:	e50b3010 	str	r3, [fp, #-16]
     fc8:	e51b3010 	ldr	r3, [fp, #-16]
     fcc:	e1a03183 	lsl	r3, r3, #3
     fd0:	e1a00003 	mov	r0, r3
     fd4:	ebfffe6a 	bl	984 <sbrk>
     fd8:	e50b0008 	str	r0, [fp, #-8]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e3730001 	cmn	r3, #1
     fe4:	1a000001 	bne	ff0 <morecore+0x4c>
     fe8:	e3a03000 	mov	r3, #0
     fec:	ea00000a 	b	101c <morecore+0x78>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e50b300c 	str	r3, [fp, #-12]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e51b2010 	ldr	r2, [fp, #-16]
    1000:	e5832004 	str	r2, [r3, #4]
    1004:	e51b300c 	ldr	r3, [fp, #-12]
    1008:	e2833008 	add	r3, r3, #8
    100c:	e1a00003 	mov	r0, r3
    1010:	ebffff84 	bl	e28 <free>
    1014:	e59f300c 	ldr	r3, [pc, #12]	@ 1028 <morecore+0x84>
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e1a00003 	mov	r0, r3
    1020:	e24bd004 	sub	sp, fp, #4
    1024:	e8bd8800 	pop	{fp, pc}
    1028:	00001300 	.word	0x00001300

0000102c <malloc>:
    102c:	e92d4800 	push	{fp, lr}
    1030:	e28db004 	add	fp, sp, #4
    1034:	e24dd018 	sub	sp, sp, #24
    1038:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    103c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1040:	e2833007 	add	r3, r3, #7
    1044:	e1a031a3 	lsr	r3, r3, #3
    1048:	e2833001 	add	r3, r3, #1
    104c:	e50b3010 	str	r3, [fp, #-16]
    1050:	e59f3134 	ldr	r3, [pc, #308]	@ 118c <malloc+0x160>
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e50b300c 	str	r3, [fp, #-12]
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e3530000 	cmp	r3, #0
    1064:	1a00000b 	bne	1098 <malloc+0x6c>
    1068:	e59f3120 	ldr	r3, [pc, #288]	@ 1190 <malloc+0x164>
    106c:	e50b300c 	str	r3, [fp, #-12]
    1070:	e59f2114 	ldr	r2, [pc, #276]	@ 118c <malloc+0x160>
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5823000 	str	r3, [r2]
    107c:	e59f3108 	ldr	r3, [pc, #264]	@ 118c <malloc+0x160>
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e59f2104 	ldr	r2, [pc, #260]	@ 1190 <malloc+0x164>
    1088:	e5823000 	str	r3, [r2]
    108c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1190 <malloc+0x164>
    1090:	e3a02000 	mov	r2, #0
    1094:	e5832004 	str	r2, [r3, #4]
    1098:	e51b300c 	ldr	r3, [fp, #-12]
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e50b3008 	str	r3, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5933004 	ldr	r3, [r3, #4]
    10ac:	e51b2010 	ldr	r2, [fp, #-16]
    10b0:	e1520003 	cmp	r2, r3
    10b4:	8a00001e 	bhi	1134 <malloc+0x108>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933004 	ldr	r3, [r3, #4]
    10c0:	e51b2010 	ldr	r2, [fp, #-16]
    10c4:	e1520003 	cmp	r2, r3
    10c8:	1a000004 	bne	10e0 <malloc+0xb4>
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5932000 	ldr	r2, [r3]
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5832000 	str	r2, [r3]
    10dc:	ea00000e 	b	111c <malloc+0xf0>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5932004 	ldr	r2, [r3, #4]
    10e8:	e51b3010 	ldr	r3, [fp, #-16]
    10ec:	e0422003 	sub	r2, r2, r3
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5832004 	str	r2, [r3, #4]
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5933004 	ldr	r3, [r3, #4]
    1100:	e1a03183 	lsl	r3, r3, #3
    1104:	e51b2008 	ldr	r2, [fp, #-8]
    1108:	e0823003 	add	r3, r2, r3
    110c:	e50b3008 	str	r3, [fp, #-8]
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e51b2010 	ldr	r2, [fp, #-16]
    1118:	e5832004 	str	r2, [r3, #4]
    111c:	e59f2068 	ldr	r2, [pc, #104]	@ 118c <malloc+0x160>
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5823000 	str	r3, [r2]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e2833008 	add	r3, r3, #8
    1130:	ea000012 	b	1180 <malloc+0x154>
    1134:	e59f3050 	ldr	r3, [pc, #80]	@ 118c <malloc+0x160>
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e51b2008 	ldr	r2, [fp, #-8]
    1140:	e1520003 	cmp	r2, r3
    1144:	1a000007 	bne	1168 <malloc+0x13c>
    1148:	e51b0010 	ldr	r0, [fp, #-16]
    114c:	ebffff94 	bl	fa4 <morecore>
    1150:	e50b0008 	str	r0, [fp, #-8]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e3530000 	cmp	r3, #0
    115c:	1a000001 	bne	1168 <malloc+0x13c>
    1160:	e3a03000 	mov	r3, #0
    1164:	ea000005 	b	1180 <malloc+0x154>
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e50b300c 	str	r3, [fp, #-12]
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e50b3008 	str	r3, [fp, #-8]
    117c:	eaffffc8 	b	10a4 <malloc+0x78>
    1180:	e1a00003 	mov	r0, r3
    1184:	e24bd004 	sub	sp, fp, #4
    1188:	e8bd8800 	pop	{fp, pc}
    118c:	00001300 	.word	0x00001300
    1190:	000012f8 	.word	0x000012f8

00001194 <__udivsi3>:
    1194:	e2512001 	subs	r2, r1, #1
    1198:	012fff1e 	bxeq	lr
    119c:	3a000036 	bcc	127c <__udivsi3+0xe8>
    11a0:	e1500001 	cmp	r0, r1
    11a4:	9a000022 	bls	1234 <__udivsi3+0xa0>
    11a8:	e1110002 	tst	r1, r2
    11ac:	0a000023 	beq	1240 <__udivsi3+0xac>
    11b0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11b4:	01a01181 	lsleq	r1, r1, #3
    11b8:	03a03008 	moveq	r3, #8
    11bc:	13a03001 	movne	r3, #1
    11c0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11c4:	31510000 	cmpcc	r1, r0
    11c8:	31a01201 	lslcc	r1, r1, #4
    11cc:	31a03203 	lslcc	r3, r3, #4
    11d0:	3afffffa 	bcc	11c0 <__udivsi3+0x2c>
    11d4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11d8:	31510000 	cmpcc	r1, r0
    11dc:	31a01081 	lslcc	r1, r1, #1
    11e0:	31a03083 	lslcc	r3, r3, #1
    11e4:	3afffffa 	bcc	11d4 <__udivsi3+0x40>
    11e8:	e3a02000 	mov	r2, #0
    11ec:	e1500001 	cmp	r0, r1
    11f0:	20400001 	subcs	r0, r0, r1
    11f4:	21822003 	orrcs	r2, r2, r3
    11f8:	e15000a1 	cmp	r0, r1, lsr #1
    11fc:	204000a1 	subcs	r0, r0, r1, lsr #1
    1200:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1204:	e1500121 	cmp	r0, r1, lsr #2
    1208:	20400121 	subcs	r0, r0, r1, lsr #2
    120c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1210:	e15001a1 	cmp	r0, r1, lsr #3
    1214:	204001a1 	subcs	r0, r0, r1, lsr #3
    1218:	218221a3 	orrcs	r2, r2, r3, lsr #3
    121c:	e3500000 	cmp	r0, #0
    1220:	11b03223 	lsrsne	r3, r3, #4
    1224:	11a01221 	lsrne	r1, r1, #4
    1228:	1affffef 	bne	11ec <__udivsi3+0x58>
    122c:	e1a00002 	mov	r0, r2
    1230:	e12fff1e 	bx	lr
    1234:	03a00001 	moveq	r0, #1
    1238:	13a00000 	movne	r0, #0
    123c:	e12fff1e 	bx	lr
    1240:	e3510801 	cmp	r1, #65536	@ 0x10000
    1244:	21a01821 	lsrcs	r1, r1, #16
    1248:	23a02010 	movcs	r2, #16
    124c:	33a02000 	movcc	r2, #0
    1250:	e3510c01 	cmp	r1, #256	@ 0x100
    1254:	21a01421 	lsrcs	r1, r1, #8
    1258:	22822008 	addcs	r2, r2, #8
    125c:	e3510010 	cmp	r1, #16
    1260:	21a01221 	lsrcs	r1, r1, #4
    1264:	22822004 	addcs	r2, r2, #4
    1268:	e3510004 	cmp	r1, #4
    126c:	82822003 	addhi	r2, r2, #3
    1270:	908220a1 	addls	r2, r2, r1, lsr #1
    1274:	e1a00230 	lsr	r0, r0, r2
    1278:	e12fff1e 	bx	lr
    127c:	e3500000 	cmp	r0, #0
    1280:	13e00000 	mvnne	r0, #0
    1284:	ea000007 	b	12a8 <__aeabi_idiv0>

00001288 <__aeabi_uidivmod>:
    1288:	e3510000 	cmp	r1, #0
    128c:	0afffffa 	beq	127c <__udivsi3+0xe8>
    1290:	e92d4003 	push	{r0, r1, lr}
    1294:	ebffffbe 	bl	1194 <__udivsi3>
    1298:	e8bd4006 	pop	{r1, r2, lr}
    129c:	e0030092 	mul	r3, r2, r0
    12a0:	e0411003 	sub	r1, r1, r3
    12a4:	e12fff1e 	bx	lr

000012a8 <__aeabi_idiv0>:
    12a8:	e12fff1e 	bx	lr
