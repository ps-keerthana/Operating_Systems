
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
      28:	eb0002ca 	bl	b58 <printf>
      2c:	eb0001b0 	bl	6f4 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000103 	bl	468 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb0001d9 	bl	7cc <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb00019b 	bl	6f4 <exit>
      84:	00001214 	.word	0x00001214

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb0000f7 	bl	760 <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb0000fa 	bl	814 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb00010c 	bl	880 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb0000d3 	bl	7a8 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b200c 	ldr	r2, [fp, #-12]
     51c:	e2823001 	add	r3, r2, #1
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2831001 	add	r1, r3, #1
     52c:	e50b1008 	str	r1, [fp, #-8]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <strncmp>:
     560:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     564:	e28db000 	add	fp, sp, #0
     568:	e24dd014 	sub	sp, sp, #20
     56c:	e50b0008 	str	r0, [fp, #-8]
     570:	e50b100c 	str	r1, [fp, #-12]
     574:	e50b2010 	str	r2, [fp, #-16]
     578:	ea000008 	b	5a0 <strncmp+0x40>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e2833001 	add	r3, r3, #1
     584:	e50b3008 	str	r3, [fp, #-8]
     588:	e51b300c 	ldr	r3, [fp, #-12]
     58c:	e2833001 	add	r3, r3, #1
     590:	e50b300c 	str	r3, [fp, #-12]
     594:	e51b3010 	ldr	r3, [fp, #-16]
     598:	e2433001 	sub	r3, r3, #1
     59c:	e50b3010 	str	r3, [fp, #-16]
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e3530000 	cmp	r3, #0
     5a8:	da00000d 	ble	5e4 <strncmp+0x84>
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e3530000 	cmp	r3, #0
     5b8:	0a000009 	beq	5e4 <strncmp+0x84>
     5bc:	e51b300c 	ldr	r3, [fp, #-12]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530000 	cmp	r3, #0
     5c8:	0a000005 	beq	5e4 <strncmp+0x84>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e5d32000 	ldrb	r2, [r3]
     5d4:	e51b300c 	ldr	r3, [fp, #-12]
     5d8:	e5d33000 	ldrb	r3, [r3]
     5dc:	e1520003 	cmp	r2, r3
     5e0:	0affffe5 	beq	57c <strncmp+0x1c>
     5e4:	e51b3010 	ldr	r3, [fp, #-16]
     5e8:	e3530000 	cmp	r3, #0
     5ec:	1a000001 	bne	5f8 <strncmp+0x98>
     5f0:	e3a03000 	mov	r3, #0
     5f4:	ea000005 	b	610 <strncmp+0xb0>
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e5d33000 	ldrb	r3, [r3]
     600:	e1a02003 	mov	r2, r3
     604:	e51b300c 	ldr	r3, [fp, #-12]
     608:	e5d33000 	ldrb	r3, [r3]
     60c:	e0423003 	sub	r3, r2, r3
     610:	e1a00003 	mov	r0, r3
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <strncpy>:
     620:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     624:	e28db000 	add	fp, sp, #0
     628:	e24dd01c 	sub	sp, sp, #28
     62c:	e50b0010 	str	r0, [fp, #-16]
     630:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e51b3010 	ldr	r3, [fp, #-16]
     63c:	e50b3008 	str	r3, [fp, #-8]
     640:	ea00000a 	b	670 <strncpy+0x50>
     644:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     648:	e2823001 	add	r3, r2, #1
     64c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e2831001 	add	r1, r3, #1
     658:	e50b1008 	str	r1, [fp, #-8]
     65c:	e5d22000 	ldrb	r2, [r2]
     660:	e5c32000 	strb	r2, [r3]
     664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     668:	e2433001 	sub	r3, r3, #1
     66c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     670:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     674:	e3530000 	cmp	r3, #0
     678:	da00000c 	ble	6b0 <strncpy+0x90>
     67c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     680:	e5d33000 	ldrb	r3, [r3]
     684:	e3530000 	cmp	r3, #0
     688:	1affffed 	bne	644 <strncpy+0x24>
     68c:	ea000007 	b	6b0 <strncpy+0x90>
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e2832001 	add	r2, r3, #1
     698:	e50b2008 	str	r2, [fp, #-8]
     69c:	e3a02000 	mov	r2, #0
     6a0:	e5c32000 	strb	r2, [r3]
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e2433001 	sub	r3, r3, #1
     6ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b4:	e3530000 	cmp	r3, #0
     6b8:	cafffff4 	bgt	690 <strncpy+0x70>
     6bc:	e51b3010 	ldr	r3, [fp, #-16]
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e28bd000 	add	sp, fp, #0
     6c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <fork>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00001 	mov	r0, #1
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <exit>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00002 	mov	r0, #2
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <wait>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00003 	mov	r0, #3
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <pipe>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00004 	mov	r0, #4
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <read>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00005 	mov	r0, #5
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <write>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00010 	mov	r0, #16
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <close>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a00015 	mov	r0, #21
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <kill>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a00006 	mov	r0, #6
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <exec>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a00007 	mov	r0, #7
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <open>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000f 	mov	r0, #15
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <mknod>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00011 	mov	r0, #17
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <unlink>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00012 	mov	r0, #18
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <fstat>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00008 	mov	r0, #8
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <link>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00013 	mov	r0, #19
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <mkdir>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00014 	mov	r0, #20
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <chdir>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00009 	mov	r0, #9
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <dup>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a0000a 	mov	r0, #10
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <getpid>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a0000b 	mov	r0, #11
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <sbrk>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a0000c 	mov	r0, #12
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <sleep>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a0000d 	mov	r0, #13
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <uptime>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a0000e 	mov	r0, #14
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <proclist>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00016 	mov	r0, #22
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <putc>:
     9e8:	e92d4800 	push	{fp, lr}
     9ec:	e28db004 	add	fp, sp, #4
     9f0:	e24dd008 	sub	sp, sp, #8
     9f4:	e50b0008 	str	r0, [fp, #-8]
     9f8:	e1a03001 	mov	r3, r1
     9fc:	e54b3009 	strb	r3, [fp, #-9]
     a00:	e24b3009 	sub	r3, fp, #9
     a04:	e3a02001 	mov	r2, #1
     a08:	e1a01003 	mov	r1, r3
     a0c:	e51b0008 	ldr	r0, [fp, #-8]
     a10:	ebffff5b 	bl	784 <write>
     a14:	e1a00000 	nop			@ (mov r0, r0)
     a18:	e24bd004 	sub	sp, fp, #4
     a1c:	e8bd8800 	pop	{fp, pc}

00000a20 <printint>:
     a20:	e92d4800 	push	{fp, lr}
     a24:	e28db004 	add	fp, sp, #4
     a28:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a2c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a30:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a34:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a38:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a3c:	e3a03000 	mov	r3, #0
     a40:	e50b300c 	str	r3, [fp, #-12]
     a44:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a48:	e3530000 	cmp	r3, #0
     a4c:	0a000008 	beq	a74 <printint+0x54>
     a50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a54:	e3530000 	cmp	r3, #0
     a58:	aa000005 	bge	a74 <printint+0x54>
     a5c:	e3a03001 	mov	r3, #1
     a60:	e50b300c 	str	r3, [fp, #-12]
     a64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a68:	e2633000 	rsb	r3, r3, #0
     a6c:	e50b3010 	str	r3, [fp, #-16]
     a70:	ea000001 	b	a7c <printint+0x5c>
     a74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a78:	e50b3010 	str	r3, [fp, #-16]
     a7c:	e3a03000 	mov	r3, #0
     a80:	e50b3008 	str	r3, [fp, #-8]
     a84:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a88:	e51b3010 	ldr	r3, [fp, #-16]
     a8c:	e1a01002 	mov	r1, r2
     a90:	e1a00003 	mov	r0, r3
     a94:	eb0001d5 	bl	11f0 <__aeabi_uidivmod>
     a98:	e1a03001 	mov	r3, r1
     a9c:	e1a01003 	mov	r1, r3
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e2832001 	add	r2, r3, #1
     aa8:	e50b2008 	str	r2, [fp, #-8]
     aac:	e59f20a0 	ldr	r2, [pc, #160]	@ b54 <printint+0x134>
     ab0:	e7d22001 	ldrb	r2, [r2, r1]
     ab4:	e2433004 	sub	r3, r3, #4
     ab8:	e083300b 	add	r3, r3, fp
     abc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ac0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ac4:	e1a01003 	mov	r1, r3
     ac8:	e51b0010 	ldr	r0, [fp, #-16]
     acc:	eb00018a 	bl	10fc <__udivsi3>
     ad0:	e1a03000 	mov	r3, r0
     ad4:	e50b3010 	str	r3, [fp, #-16]
     ad8:	e51b3010 	ldr	r3, [fp, #-16]
     adc:	e3530000 	cmp	r3, #0
     ae0:	1affffe7 	bne	a84 <printint+0x64>
     ae4:	e51b300c 	ldr	r3, [fp, #-12]
     ae8:	e3530000 	cmp	r3, #0
     aec:	0a00000e 	beq	b2c <printint+0x10c>
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e2832001 	add	r2, r3, #1
     af8:	e50b2008 	str	r2, [fp, #-8]
     afc:	e2433004 	sub	r3, r3, #4
     b00:	e083300b 	add	r3, r3, fp
     b04:	e3a0202d 	mov	r2, #45	@ 0x2d
     b08:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b0c:	ea000006 	b	b2c <printint+0x10c>
     b10:	e24b2020 	sub	r2, fp, #32
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e0823003 	add	r3, r2, r3
     b1c:	e5d33000 	ldrb	r3, [r3]
     b20:	e1a01003 	mov	r1, r3
     b24:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b28:	ebffffae 	bl	9e8 <putc>
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e2433001 	sub	r3, r3, #1
     b34:	e50b3008 	str	r3, [fp, #-8]
     b38:	e51b3008 	ldr	r3, [fp, #-8]
     b3c:	e3530000 	cmp	r3, #0
     b40:	aafffff2 	bge	b10 <printint+0xf0>
     b44:	e1a00000 	nop			@ (mov r0, r0)
     b48:	e1a00000 	nop			@ (mov r0, r0)
     b4c:	e24bd004 	sub	sp, fp, #4
     b50:	e8bd8800 	pop	{fp, pc}
     b54:	00001230 	.word	0x00001230

00000b58 <printf>:
     b58:	e92d000e 	push	{r1, r2, r3}
     b5c:	e92d4800 	push	{fp, lr}
     b60:	e28db004 	add	fp, sp, #4
     b64:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b68:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b6c:	e3a03000 	mov	r3, #0
     b70:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b74:	e28b3008 	add	r3, fp, #8
     b78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e3a03000 	mov	r3, #0
     b80:	e50b3010 	str	r3, [fp, #-16]
     b84:	ea000074 	b	d5c <printf+0x204>
     b88:	e59b2004 	ldr	r2, [fp, #4]
     b8c:	e51b3010 	ldr	r3, [fp, #-16]
     b90:	e0823003 	add	r3, r2, r3
     b94:	e5d33000 	ldrb	r3, [r3]
     b98:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ba0:	e3530000 	cmp	r3, #0
     ba4:	1a00000b 	bne	bd8 <printf+0x80>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e3530025 	cmp	r3, #37	@ 0x25
     bb0:	1a000002 	bne	bc0 <printf+0x68>
     bb4:	e3a03025 	mov	r3, #37	@ 0x25
     bb8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bbc:	ea000063 	b	d50 <printf+0x1f8>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e6ef3073 	uxtb	r3, r3
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff84 	bl	9e8 <putc>
     bd4:	ea00005d 	b	d50 <printf+0x1f8>
     bd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bdc:	e3530025 	cmp	r3, #37	@ 0x25
     be0:	1a00005a 	bne	d50 <printf+0x1f8>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e3530064 	cmp	r3, #100	@ 0x64
     bec:	1a00000a 	bne	c1c <printf+0xc4>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e3a03001 	mov	r3, #1
     c00:	e3a0200a 	mov	r2, #10
     c04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c08:	ebffff84 	bl	a20 <printint>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e2833004 	add	r3, r3, #4
     c14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c18:	ea00004a 	b	d48 <printf+0x1f0>
     c1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c20:	e3530078 	cmp	r3, #120	@ 0x78
     c24:	0a000002 	beq	c34 <printf+0xdc>
     c28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c2c:	e3530070 	cmp	r3, #112	@ 0x70
     c30:	1a00000a 	bne	c60 <printf+0x108>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e5933000 	ldr	r3, [r3]
     c3c:	e1a01003 	mov	r1, r3
     c40:	e3a03000 	mov	r3, #0
     c44:	e3a02010 	mov	r2, #16
     c48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c4c:	ebffff73 	bl	a20 <printint>
     c50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c54:	e2833004 	add	r3, r3, #4
     c58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c5c:	ea000039 	b	d48 <printf+0x1f0>
     c60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c64:	e3530073 	cmp	r3, #115	@ 0x73
     c68:	1a000018 	bne	cd0 <printf+0x178>
     c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e50b300c 	str	r3, [fp, #-12]
     c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e2833004 	add	r3, r3, #4
     c80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e3530000 	cmp	r3, #0
     c8c:	1a00000a 	bne	cbc <printf+0x164>
     c90:	e59f30f4 	ldr	r3, [pc, #244]	@ d8c <printf+0x234>
     c94:	e50b300c 	str	r3, [fp, #-12]
     c98:	ea000007 	b	cbc <printf+0x164>
     c9c:	e51b300c 	ldr	r3, [fp, #-12]
     ca0:	e5d33000 	ldrb	r3, [r3]
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cac:	ebffff4d 	bl	9e8 <putc>
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e2833001 	add	r3, r3, #1
     cb8:	e50b300c 	str	r3, [fp, #-12]
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e5d33000 	ldrb	r3, [r3]
     cc4:	e3530000 	cmp	r3, #0
     cc8:	1afffff3 	bne	c9c <printf+0x144>
     ccc:	ea00001d 	b	d48 <printf+0x1f0>
     cd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd4:	e3530063 	cmp	r3, #99	@ 0x63
     cd8:	1a000009 	bne	d04 <printf+0x1ac>
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e5933000 	ldr	r3, [r3]
     ce4:	e6ef3073 	uxtb	r3, r3
     ce8:	e1a01003 	mov	r1, r3
     cec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf0:	ebffff3c 	bl	9e8 <putc>
     cf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf8:	e2833004 	add	r3, r3, #4
     cfc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d00:	ea000010 	b	d48 <printf+0x1f0>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d08:	e3530025 	cmp	r3, #37	@ 0x25
     d0c:	1a000005 	bne	d28 <printf+0x1d0>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d14:	e6ef3073 	uxtb	r3, r3
     d18:	e1a01003 	mov	r1, r3
     d1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d20:	ebffff30 	bl	9e8 <putc>
     d24:	ea000007 	b	d48 <printf+0x1f0>
     d28:	e3a01025 	mov	r1, #37	@ 0x25
     d2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d30:	ebffff2c 	bl	9e8 <putc>
     d34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d38:	e6ef3073 	uxtb	r3, r3
     d3c:	e1a01003 	mov	r1, r3
     d40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d44:	ebffff27 	bl	9e8 <putc>
     d48:	e3a03000 	mov	r3, #0
     d4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d50:	e51b3010 	ldr	r3, [fp, #-16]
     d54:	e2833001 	add	r3, r3, #1
     d58:	e50b3010 	str	r3, [fp, #-16]
     d5c:	e59b2004 	ldr	r2, [fp, #4]
     d60:	e51b3010 	ldr	r3, [fp, #-16]
     d64:	e0823003 	add	r3, r2, r3
     d68:	e5d33000 	ldrb	r3, [r3]
     d6c:	e3530000 	cmp	r3, #0
     d70:	1affff84 	bne	b88 <printf+0x30>
     d74:	e1a00000 	nop			@ (mov r0, r0)
     d78:	e1a00000 	nop			@ (mov r0, r0)
     d7c:	e24bd004 	sub	sp, fp, #4
     d80:	e8bd4800 	pop	{fp, lr}
     d84:	e28dd00c 	add	sp, sp, #12
     d88:	e12fff1e 	bx	lr
     d8c:	00001228 	.word	0x00001228

00000d90 <free>:
     d90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d94:	e28db000 	add	fp, sp, #0
     d98:	e24dd014 	sub	sp, sp, #20
     d9c:	e50b0010 	str	r0, [fp, #-16]
     da0:	e51b3010 	ldr	r3, [fp, #-16]
     da4:	e2433008 	sub	r3, r3, #8
     da8:	e50b300c 	str	r3, [fp, #-12]
     dac:	e59f3154 	ldr	r3, [pc, #340]	@ f08 <free+0x178>
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e50b3008 	str	r3, [fp, #-8]
     db8:	ea000010 	b	e00 <free+0x70>
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e5933000 	ldr	r3, [r3]
     dc4:	e51b2008 	ldr	r2, [fp, #-8]
     dc8:	e1520003 	cmp	r2, r3
     dcc:	3a000008 	bcc	df4 <free+0x64>
     dd0:	e51b200c 	ldr	r2, [fp, #-12]
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e1520003 	cmp	r2, r3
     ddc:	8a000010 	bhi	e24 <free+0x94>
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5933000 	ldr	r3, [r3]
     de8:	e51b200c 	ldr	r2, [fp, #-12]
     dec:	e1520003 	cmp	r2, r3
     df0:	3a00000b 	bcc	e24 <free+0x94>
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e50b3008 	str	r3, [fp, #-8]
     e00:	e51b200c 	ldr	r2, [fp, #-12]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e1520003 	cmp	r2, r3
     e0c:	9affffea 	bls	dbc <free+0x2c>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e51b200c 	ldr	r2, [fp, #-12]
     e1c:	e1520003 	cmp	r2, r3
     e20:	2affffe5 	bcs	dbc <free+0x2c>
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5933004 	ldr	r3, [r3, #4]
     e2c:	e1a03183 	lsl	r3, r3, #3
     e30:	e51b200c 	ldr	r2, [fp, #-12]
     e34:	e0822003 	add	r2, r2, r3
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e1520003 	cmp	r2, r3
     e44:	1a00000d 	bne	e80 <free+0xf0>
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5932004 	ldr	r2, [r3, #4]
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e5933004 	ldr	r3, [r3, #4]
     e5c:	e0822003 	add	r2, r2, r3
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e5932000 	ldr	r2, [r3]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5832000 	str	r2, [r3]
     e7c:	ea000003 	b	e90 <free+0x100>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5932000 	ldr	r2, [r3]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e5832000 	str	r2, [r3]
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5933004 	ldr	r3, [r3, #4]
     e98:	e1a03183 	lsl	r3, r3, #3
     e9c:	e51b2008 	ldr	r2, [fp, #-8]
     ea0:	e0823003 	add	r3, r2, r3
     ea4:	e51b200c 	ldr	r2, [fp, #-12]
     ea8:	e1520003 	cmp	r2, r3
     eac:	1a00000b 	bne	ee0 <free+0x150>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5932004 	ldr	r2, [r3, #4]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5933004 	ldr	r3, [r3, #4]
     ec0:	e0822003 	add	r2, r2, r3
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5832004 	str	r2, [r3, #4]
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5932000 	ldr	r2, [r3]
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5832000 	str	r2, [r3]
     edc:	ea000002 	b	eec <free+0x15c>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e51b200c 	ldr	r2, [fp, #-12]
     ee8:	e5832000 	str	r2, [r3]
     eec:	e59f2014 	ldr	r2, [pc, #20]	@ f08 <free+0x178>
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5823000 	str	r3, [r2]
     ef8:	e1a00000 	nop			@ (mov r0, r0)
     efc:	e28bd000 	add	sp, fp, #0
     f00:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f04:	e12fff1e 	bx	lr
     f08:	0000124c 	.word	0x0000124c

00000f0c <morecore>:
     f0c:	e92d4800 	push	{fp, lr}
     f10:	e28db004 	add	fp, sp, #4
     f14:	e24dd010 	sub	sp, sp, #16
     f18:	e50b0010 	str	r0, [fp, #-16]
     f1c:	e51b3010 	ldr	r3, [fp, #-16]
     f20:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f24:	2a000001 	bcs	f30 <morecore+0x24>
     f28:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f2c:	e50b3010 	str	r3, [fp, #-16]
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e1a03183 	lsl	r3, r3, #3
     f38:	e1a00003 	mov	r0, r3
     f3c:	ebfffe85 	bl	958 <sbrk>
     f40:	e50b0008 	str	r0, [fp, #-8]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e3730001 	cmn	r3, #1
     f4c:	1a000001 	bne	f58 <morecore+0x4c>
     f50:	e3a03000 	mov	r3, #0
     f54:	ea00000a 	b	f84 <morecore+0x78>
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e51b2010 	ldr	r2, [fp, #-16]
     f68:	e5832004 	str	r2, [r3, #4]
     f6c:	e51b300c 	ldr	r3, [fp, #-12]
     f70:	e2833008 	add	r3, r3, #8
     f74:	e1a00003 	mov	r0, r3
     f78:	ebffff84 	bl	d90 <free>
     f7c:	e59f300c 	ldr	r3, [pc, #12]	@ f90 <morecore+0x84>
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e1a00003 	mov	r0, r3
     f88:	e24bd004 	sub	sp, fp, #4
     f8c:	e8bd8800 	pop	{fp, pc}
     f90:	0000124c 	.word	0x0000124c

00000f94 <malloc>:
     f94:	e92d4800 	push	{fp, lr}
     f98:	e28db004 	add	fp, sp, #4
     f9c:	e24dd018 	sub	sp, sp, #24
     fa0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa8:	e2833007 	add	r3, r3, #7
     fac:	e1a031a3 	lsr	r3, r3, #3
     fb0:	e2833001 	add	r3, r3, #1
     fb4:	e50b3010 	str	r3, [fp, #-16]
     fb8:	e59f3134 	ldr	r3, [pc, #308]	@ 10f4 <malloc+0x160>
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e50b300c 	str	r3, [fp, #-12]
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e3530000 	cmp	r3, #0
     fcc:	1a00000b 	bne	1000 <malloc+0x6c>
     fd0:	e59f3120 	ldr	r3, [pc, #288]	@ 10f8 <malloc+0x164>
     fd4:	e50b300c 	str	r3, [fp, #-12]
     fd8:	e59f2114 	ldr	r2, [pc, #276]	@ 10f4 <malloc+0x160>
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e5823000 	str	r3, [r2]
     fe4:	e59f3108 	ldr	r3, [pc, #264]	@ 10f4 <malloc+0x160>
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e59f2104 	ldr	r2, [pc, #260]	@ 10f8 <malloc+0x164>
     ff0:	e5823000 	str	r3, [r2]
     ff4:	e59f30fc 	ldr	r3, [pc, #252]	@ 10f8 <malloc+0x164>
     ff8:	e3a02000 	mov	r2, #0
     ffc:	e5832004 	str	r2, [r3, #4]
    1000:	e51b300c 	ldr	r3, [fp, #-12]
    1004:	e5933000 	ldr	r3, [r3]
    1008:	e50b3008 	str	r3, [fp, #-8]
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933004 	ldr	r3, [r3, #4]
    1014:	e51b2010 	ldr	r2, [fp, #-16]
    1018:	e1520003 	cmp	r2, r3
    101c:	8a00001e 	bhi	109c <malloc+0x108>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5933004 	ldr	r3, [r3, #4]
    1028:	e51b2010 	ldr	r2, [fp, #-16]
    102c:	e1520003 	cmp	r2, r3
    1030:	1a000004 	bne	1048 <malloc+0xb4>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5932000 	ldr	r2, [r3]
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e5832000 	str	r2, [r3]
    1044:	ea00000e 	b	1084 <malloc+0xf0>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5932004 	ldr	r2, [r3, #4]
    1050:	e51b3010 	ldr	r3, [fp, #-16]
    1054:	e0422003 	sub	r2, r2, r3
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5832004 	str	r2, [r3, #4]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933004 	ldr	r3, [r3, #4]
    1068:	e1a03183 	lsl	r3, r3, #3
    106c:	e51b2008 	ldr	r2, [fp, #-8]
    1070:	e0823003 	add	r3, r2, r3
    1074:	e50b3008 	str	r3, [fp, #-8]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e51b2010 	ldr	r2, [fp, #-16]
    1080:	e5832004 	str	r2, [r3, #4]
    1084:	e59f2068 	ldr	r2, [pc, #104]	@ 10f4 <malloc+0x160>
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5823000 	str	r3, [r2]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e2833008 	add	r3, r3, #8
    1098:	ea000012 	b	10e8 <malloc+0x154>
    109c:	e59f3050 	ldr	r3, [pc, #80]	@ 10f4 <malloc+0x160>
    10a0:	e5933000 	ldr	r3, [r3]
    10a4:	e51b2008 	ldr	r2, [fp, #-8]
    10a8:	e1520003 	cmp	r2, r3
    10ac:	1a000007 	bne	10d0 <malloc+0x13c>
    10b0:	e51b0010 	ldr	r0, [fp, #-16]
    10b4:	ebffff94 	bl	f0c <morecore>
    10b8:	e50b0008 	str	r0, [fp, #-8]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e3530000 	cmp	r3, #0
    10c4:	1a000001 	bne	10d0 <malloc+0x13c>
    10c8:	e3a03000 	mov	r3, #0
    10cc:	ea000005 	b	10e8 <malloc+0x154>
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e50b300c 	str	r3, [fp, #-12]
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e50b3008 	str	r3, [fp, #-8]
    10e4:	eaffffc8 	b	100c <malloc+0x78>
    10e8:	e1a00003 	mov	r0, r3
    10ec:	e24bd004 	sub	sp, fp, #4
    10f0:	e8bd8800 	pop	{fp, pc}
    10f4:	0000124c 	.word	0x0000124c
    10f8:	00001244 	.word	0x00001244

000010fc <__udivsi3>:
    10fc:	e2512001 	subs	r2, r1, #1
    1100:	012fff1e 	bxeq	lr
    1104:	3a000036 	bcc	11e4 <__udivsi3+0xe8>
    1108:	e1500001 	cmp	r0, r1
    110c:	9a000022 	bls	119c <__udivsi3+0xa0>
    1110:	e1110002 	tst	r1, r2
    1114:	0a000023 	beq	11a8 <__udivsi3+0xac>
    1118:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    111c:	01a01181 	lsleq	r1, r1, #3
    1120:	03a03008 	moveq	r3, #8
    1124:	13a03001 	movne	r3, #1
    1128:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    112c:	31510000 	cmpcc	r1, r0
    1130:	31a01201 	lslcc	r1, r1, #4
    1134:	31a03203 	lslcc	r3, r3, #4
    1138:	3afffffa 	bcc	1128 <__udivsi3+0x2c>
    113c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1140:	31510000 	cmpcc	r1, r0
    1144:	31a01081 	lslcc	r1, r1, #1
    1148:	31a03083 	lslcc	r3, r3, #1
    114c:	3afffffa 	bcc	113c <__udivsi3+0x40>
    1150:	e3a02000 	mov	r2, #0
    1154:	e1500001 	cmp	r0, r1
    1158:	20400001 	subcs	r0, r0, r1
    115c:	21822003 	orrcs	r2, r2, r3
    1160:	e15000a1 	cmp	r0, r1, lsr #1
    1164:	204000a1 	subcs	r0, r0, r1, lsr #1
    1168:	218220a3 	orrcs	r2, r2, r3, lsr #1
    116c:	e1500121 	cmp	r0, r1, lsr #2
    1170:	20400121 	subcs	r0, r0, r1, lsr #2
    1174:	21822123 	orrcs	r2, r2, r3, lsr #2
    1178:	e15001a1 	cmp	r0, r1, lsr #3
    117c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1180:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1184:	e3500000 	cmp	r0, #0
    1188:	11b03223 	lsrsne	r3, r3, #4
    118c:	11a01221 	lsrne	r1, r1, #4
    1190:	1affffef 	bne	1154 <__udivsi3+0x58>
    1194:	e1a00002 	mov	r0, r2
    1198:	e12fff1e 	bx	lr
    119c:	03a00001 	moveq	r0, #1
    11a0:	13a00000 	movne	r0, #0
    11a4:	e12fff1e 	bx	lr
    11a8:	e3510801 	cmp	r1, #65536	@ 0x10000
    11ac:	21a01821 	lsrcs	r1, r1, #16
    11b0:	23a02010 	movcs	r2, #16
    11b4:	33a02000 	movcc	r2, #0
    11b8:	e3510c01 	cmp	r1, #256	@ 0x100
    11bc:	21a01421 	lsrcs	r1, r1, #8
    11c0:	22822008 	addcs	r2, r2, #8
    11c4:	e3510010 	cmp	r1, #16
    11c8:	21a01221 	lsrcs	r1, r1, #4
    11cc:	22822004 	addcs	r2, r2, #4
    11d0:	e3510004 	cmp	r1, #4
    11d4:	82822003 	addhi	r2, r2, #3
    11d8:	908220a1 	addls	r2, r2, r1, lsr #1
    11dc:	e1a00230 	lsr	r0, r0, r2
    11e0:	e12fff1e 	bx	lr
    11e4:	e3500000 	cmp	r0, #0
    11e8:	13e00000 	mvnne	r0, #0
    11ec:	ea000007 	b	1210 <__aeabi_idiv0>

000011f0 <__aeabi_uidivmod>:
    11f0:	e3510000 	cmp	r1, #0
    11f4:	0afffffa 	beq	11e4 <__udivsi3+0xe8>
    11f8:	e92d4003 	push	{r0, r1, lr}
    11fc:	ebffffbe 	bl	10fc <__udivsi3>
    1200:	e8bd4006 	pop	{r1, r2, lr}
    1204:	e0030092 	mul	r3, r2, r0
    1208:	e0411003 	sub	r1, r1, r3
    120c:	e12fff1e 	bx	lr

00001210 <__aeabi_idiv0>:
    1210:	e12fff1e 	bx	lr
