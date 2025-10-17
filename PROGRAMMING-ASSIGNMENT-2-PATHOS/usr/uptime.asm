
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd020 	sub	sp, sp, #32
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	eb000271 	bl	9e0 <uptime>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e59f2094 	ldr	r2, [pc, #148]	@ bc <main+0xbc>
      24:	e0c21392 	smull	r1, r2, r2, r3
      28:	e1a022c2 	asr	r2, r2, #5
      2c:	e1a03fc3 	asr	r3, r3, #31
      30:	e0423003 	sub	r3, r2, r3
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	e51b2008 	ldr	r2, [fp, #-8]
      3c:	e59f3078 	ldr	r3, [pc, #120]	@ bc <main+0xbc>
      40:	e0c31293 	smull	r1, r3, r3, r2
      44:	e1a012c3 	asr	r1, r3, #5
      48:	e1a03fc2 	asr	r3, r2, #31
      4c:	e0411003 	sub	r1, r1, r3
      50:	e1a03001 	mov	r3, r1
      54:	e1a03103 	lsl	r3, r3, #2
      58:	e0833001 	add	r3, r3, r1
      5c:	e1a01103 	lsl	r1, r3, #2
      60:	e0833001 	add	r3, r3, r1
      64:	e1a03103 	lsl	r3, r3, #2
      68:	e0423003 	sub	r3, r2, r3
      6c:	e50b3010 	str	r3, [fp, #-16]
      70:	e51b3010 	ldr	r3, [fp, #-16]
      74:	e3530009 	cmp	r3, #9
      78:	ca000007 	bgt	9c <main+0x9c>
      7c:	e51b3010 	ldr	r3, [fp, #-16]
      80:	e58d3000 	str	r3, [sp]
      84:	e51b300c 	ldr	r3, [fp, #-12]
      88:	e51b2008 	ldr	r2, [fp, #-8]
      8c:	e59f102c 	ldr	r1, [pc, #44]	@ c0 <main+0xc0>
      90:	e3a00001 	mov	r0, #1
      94:	eb0002da 	bl	c04 <printf>
      98:	ea000006 	b	b8 <main+0xb8>
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e58d3000 	str	r3, [sp]
      a4:	e51b300c 	ldr	r3, [fp, #-12]
      a8:	e51b2008 	ldr	r2, [fp, #-8]
      ac:	e59f1010 	ldr	r1, [pc, #16]	@ c4 <main+0xc4>
      b0:	e3a00001 	mov	r0, #1
      b4:	eb0002d2 	bl	c04 <printf>
      b8:	eb00019d 	bl	734 <exit>
      bc:	51eb851f 	.word	0x51eb851f
      c0:	000012c0 	.word	0x000012c0
      c4:	000012e0 	.word	0x000012e0

000000c8 <strcpy>:
      c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      cc:	e28db000 	add	fp, sp, #0
      d0:	e24dd014 	sub	sp, sp, #20
      d4:	e50b0010 	str	r0, [fp, #-16]
      d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      dc:	e51b3010 	ldr	r3, [fp, #-16]
      e0:	e50b3008 	str	r3, [fp, #-8]
      e4:	e1a00000 	nop			@ (mov r0, r0)
      e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ec:	e2823001 	add	r3, r2, #1
      f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      f4:	e51b3010 	ldr	r3, [fp, #-16]
      f8:	e2831001 	add	r1, r3, #1
      fc:	e50b1010 	str	r1, [fp, #-16]
     100:	e5d22000 	ldrb	r2, [r2]
     104:	e5c32000 	strb	r2, [r3]
     108:	e5d33000 	ldrb	r3, [r3]
     10c:	e3530000 	cmp	r3, #0
     110:	1afffff4 	bne	e8 <strcpy+0x20>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e1a00003 	mov	r0, r3
     11c:	e28bd000 	add	sp, fp, #0
     120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     124:	e12fff1e 	bx	lr

00000128 <strcmp>:
     128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     12c:	e28db000 	add	fp, sp, #0
     130:	e24dd00c 	sub	sp, sp, #12
     134:	e50b0008 	str	r0, [fp, #-8]
     138:	e50b100c 	str	r1, [fp, #-12]
     13c:	ea000005 	b	158 <strcmp+0x30>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e2833001 	add	r3, r3, #1
     154:	e50b300c 	str	r3, [fp, #-12]
     158:	e51b3008 	ldr	r3, [fp, #-8]
     15c:	e5d33000 	ldrb	r3, [r3]
     160:	e3530000 	cmp	r3, #0
     164:	0a000005 	beq	180 <strcmp+0x58>
     168:	e51b3008 	ldr	r3, [fp, #-8]
     16c:	e5d32000 	ldrb	r2, [r3]
     170:	e51b300c 	ldr	r3, [fp, #-12]
     174:	e5d33000 	ldrb	r3, [r3]
     178:	e1520003 	cmp	r2, r3
     17c:	0affffef 	beq	140 <strcmp+0x18>
     180:	e51b3008 	ldr	r3, [fp, #-8]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e1a02003 	mov	r2, r3
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e0423003 	sub	r3, r2, r3
     198:	e1a00003 	mov	r0, r3
     19c:	e28bd000 	add	sp, fp, #0
     1a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a4:	e12fff1e 	bx	lr

000001a8 <strlen>:
     1a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ac:	e28db000 	add	fp, sp, #0
     1b0:	e24dd014 	sub	sp, sp, #20
     1b4:	e50b0010 	str	r0, [fp, #-16]
     1b8:	e3a03000 	mov	r3, #0
     1bc:	e50b3008 	str	r3, [fp, #-8]
     1c0:	ea000002 	b	1d0 <strlen+0x28>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e51b2010 	ldr	r2, [fp, #-16]
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5d33000 	ldrb	r3, [r3]
     1e0:	e3530000 	cmp	r3, #0
     1e4:	1afffff6 	bne	1c4 <strlen+0x1c>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e1a00003 	mov	r0, r3
     1f0:	e28bd000 	add	sp, fp, #0
     1f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f8:	e12fff1e 	bx	lr

000001fc <memset>:
     1fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     200:	e28db000 	add	fp, sp, #0
     204:	e24dd024 	sub	sp, sp, #36	@ 0x24
     208:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     20c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     210:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     214:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     218:	e50b3008 	str	r3, [fp, #-8]
     21c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     220:	e54b300d 	strb	r3, [fp, #-13]
     224:	e55b200d 	ldrb	r2, [fp, #-13]
     228:	e1a03002 	mov	r3, r2
     22c:	e1a03403 	lsl	r3, r3, #8
     230:	e0833002 	add	r3, r3, r2
     234:	e1a03803 	lsl	r3, r3, #16
     238:	e1a02003 	mov	r2, r3
     23c:	e55b300d 	ldrb	r3, [fp, #-13]
     240:	e1a03403 	lsl	r3, r3, #8
     244:	e1822003 	orr	r2, r2, r3
     248:	e55b300d 	ldrb	r3, [fp, #-13]
     24c:	e1823003 	orr	r3, r2, r3
     250:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     254:	ea000008 	b	27c <memset+0x80>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e55b200d 	ldrb	r2, [fp, #-13]
     260:	e5c32000 	strb	r2, [r3]
     264:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     268:	e2433001 	sub	r3, r3, #1
     26c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     280:	e3530000 	cmp	r3, #0
     284:	0a000003 	beq	298 <memset+0x9c>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e2033003 	and	r3, r3, #3
     290:	e3530000 	cmp	r3, #0
     294:	1affffef 	bne	258 <memset+0x5c>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e50b300c 	str	r3, [fp, #-12]
     2a0:	ea000008 	b	2c8 <memset+0xcc>
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2ac:	e5832000 	str	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e2433004 	sub	r3, r3, #4
     2b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e2833004 	add	r3, r3, #4
     2c4:	e50b300c 	str	r3, [fp, #-12]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e3530003 	cmp	r3, #3
     2d0:	8afffff3 	bhi	2a4 <memset+0xa8>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e50b3008 	str	r3, [fp, #-8]
     2dc:	ea000008 	b	304 <memset+0x108>
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e55b200d 	ldrb	r2, [fp, #-13]
     2e8:	e5c32000 	strb	r2, [r3]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e2433001 	sub	r3, r3, #1
     2f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2833001 	add	r3, r3, #1
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff3 	bne	2e0 <memset+0xe4>
     310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strchr>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd00c 	sub	sp, sp, #12
     330:	e50b0008 	str	r0, [fp, #-8]
     334:	e1a03001 	mov	r3, r1
     338:	e54b3009 	strb	r3, [fp, #-9]
     33c:	ea000009 	b	368 <strchr+0x44>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e55b2009 	ldrb	r2, [fp, #-9]
     34c:	e1520003 	cmp	r2, r3
     350:	1a000001 	bne	35c <strchr+0x38>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	ea000007 	b	37c <strchr+0x58>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e5d33000 	ldrb	r3, [r3]
     370:	e3530000 	cmp	r3, #0
     374:	1afffff1 	bne	340 <strchr+0x1c>
     378:	e3a03000 	mov	r3, #0
     37c:	e1a00003 	mov	r0, r3
     380:	e28bd000 	add	sp, fp, #0
     384:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     388:	e12fff1e 	bx	lr

0000038c <gets>:
     38c:	e92d4800 	push	{fp, lr}
     390:	e28db004 	add	fp, sp, #4
     394:	e24dd018 	sub	sp, sp, #24
     398:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     39c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3a0:	e3a03000 	mov	r3, #0
     3a4:	e50b3008 	str	r3, [fp, #-8]
     3a8:	ea000016 	b	408 <gets+0x7c>
     3ac:	e24b300d 	sub	r3, fp, #13
     3b0:	e3a02001 	mov	r2, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e3a00000 	mov	r0, #0
     3bc:	eb0000f7 	bl	7a0 <read>
     3c0:	e50b000c 	str	r0, [fp, #-12]
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e3530000 	cmp	r3, #0
     3cc:	da000013 	ble	420 <gets+0x94>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2832001 	add	r2, r3, #1
     3d8:	e50b2008 	str	r2, [fp, #-8]
     3dc:	e1a02003 	mov	r2, r3
     3e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e4:	e0833002 	add	r3, r3, r2
     3e8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ec:	e5c32000 	strb	r2, [r3]
     3f0:	e55b300d 	ldrb	r3, [fp, #-13]
     3f4:	e353000a 	cmp	r3, #10
     3f8:	0a000009 	beq	424 <gets+0x98>
     3fc:	e55b300d 	ldrb	r3, [fp, #-13]
     400:	e353000d 	cmp	r3, #13
     404:	0a000006 	beq	424 <gets+0x98>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e2833001 	add	r3, r3, #1
     410:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     414:	e1520003 	cmp	r2, r3
     418:	caffffe3 	bgt	3ac <gets+0x20>
     41c:	ea000000 	b	424 <gets+0x98>
     420:	e1a00000 	nop			@ (mov r0, r0)
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     42c:	e0823003 	add	r3, r2, r3
     430:	e3a02000 	mov	r2, #0
     434:	e5c32000 	strb	r2, [r3]
     438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     43c:	e1a00003 	mov	r0, r3
     440:	e24bd004 	sub	sp, fp, #4
     444:	e8bd8800 	pop	{fp, pc}

00000448 <stat>:
     448:	e92d4800 	push	{fp, lr}
     44c:	e28db004 	add	fp, sp, #4
     450:	e24dd010 	sub	sp, sp, #16
     454:	e50b0010 	str	r0, [fp, #-16]
     458:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     45c:	e3a01000 	mov	r1, #0
     460:	e51b0010 	ldr	r0, [fp, #-16]
     464:	eb0000fa 	bl	854 <open>
     468:	e50b0008 	str	r0, [fp, #-8]
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e3530000 	cmp	r3, #0
     474:	aa000001 	bge	480 <stat+0x38>
     478:	e3e03000 	mvn	r3, #0
     47c:	ea000006 	b	49c <stat+0x54>
     480:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     484:	e51b0008 	ldr	r0, [fp, #-8]
     488:	eb00010c 	bl	8c0 <fstat>
     48c:	e50b000c 	str	r0, [fp, #-12]
     490:	e51b0008 	ldr	r0, [fp, #-8]
     494:	eb0000d3 	bl	7e8 <close>
     498:	e51b300c 	ldr	r3, [fp, #-12]
     49c:	e1a00003 	mov	r0, r3
     4a0:	e24bd004 	sub	sp, fp, #4
     4a4:	e8bd8800 	pop	{fp, pc}

000004a8 <atoi>:
     4a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4ac:	e28db000 	add	fp, sp, #0
     4b0:	e24dd014 	sub	sp, sp, #20
     4b4:	e50b0010 	str	r0, [fp, #-16]
     4b8:	e3a03000 	mov	r3, #0
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	ea00000c 	b	4f8 <atoi+0x50>
     4c4:	e51b2008 	ldr	r2, [fp, #-8]
     4c8:	e1a03002 	mov	r3, r2
     4cc:	e1a03103 	lsl	r3, r3, #2
     4d0:	e0833002 	add	r3, r3, r2
     4d4:	e1a03083 	lsl	r3, r3, #1
     4d8:	e1a01003 	mov	r1, r3
     4dc:	e51b3010 	ldr	r3, [fp, #-16]
     4e0:	e2832001 	add	r2, r3, #1
     4e4:	e50b2010 	str	r2, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e0813003 	add	r3, r1, r3
     4f0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b3010 	ldr	r3, [fp, #-16]
     4fc:	e5d33000 	ldrb	r3, [r3]
     500:	e353002f 	cmp	r3, #47	@ 0x2f
     504:	9a000003 	bls	518 <atoi+0x70>
     508:	e51b3010 	ldr	r3, [fp, #-16]
     50c:	e5d33000 	ldrb	r3, [r3]
     510:	e3530039 	cmp	r3, #57	@ 0x39
     514:	9affffea 	bls	4c4 <atoi+0x1c>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e1a00003 	mov	r0, r3
     520:	e28bd000 	add	sp, fp, #0
     524:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     528:	e12fff1e 	bx	lr

0000052c <memmove>:
     52c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     530:	e28db000 	add	fp, sp, #0
     534:	e24dd01c 	sub	sp, sp, #28
     538:	e50b0010 	str	r0, [fp, #-16]
     53c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e50b3008 	str	r3, [fp, #-8]
     54c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     550:	e50b300c 	str	r3, [fp, #-12]
     554:	ea000007 	b	578 <memmove+0x4c>
     558:	e51b200c 	ldr	r2, [fp, #-12]
     55c:	e2823001 	add	r3, r2, #1
     560:	e50b300c 	str	r3, [fp, #-12]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e2831001 	add	r1, r3, #1
     56c:	e50b1008 	str	r1, [fp, #-8]
     570:	e5d22000 	ldrb	r2, [r2]
     574:	e5c32000 	strb	r2, [r3]
     578:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     57c:	e2432001 	sub	r2, r3, #1
     580:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     584:	e3530000 	cmp	r3, #0
     588:	cafffff2 	bgt	558 <memmove+0x2c>
     58c:	e51b3010 	ldr	r3, [fp, #-16]
     590:	e1a00003 	mov	r0, r3
     594:	e28bd000 	add	sp, fp, #0
     598:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     59c:	e12fff1e 	bx	lr

000005a0 <strncmp>:
     5a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5a4:	e28db000 	add	fp, sp, #0
     5a8:	e24dd014 	sub	sp, sp, #20
     5ac:	e50b0008 	str	r0, [fp, #-8]
     5b0:	e50b100c 	str	r1, [fp, #-12]
     5b4:	e50b2010 	str	r2, [fp, #-16]
     5b8:	ea000008 	b	5e0 <strncmp+0x40>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e2833001 	add	r3, r3, #1
     5c4:	e50b3008 	str	r3, [fp, #-8]
     5c8:	e51b300c 	ldr	r3, [fp, #-12]
     5cc:	e2833001 	add	r3, r3, #1
     5d0:	e50b300c 	str	r3, [fp, #-12]
     5d4:	e51b3010 	ldr	r3, [fp, #-16]
     5d8:	e2433001 	sub	r3, r3, #1
     5dc:	e50b3010 	str	r3, [fp, #-16]
     5e0:	e51b3010 	ldr	r3, [fp, #-16]
     5e4:	e3530000 	cmp	r3, #0
     5e8:	da00000d 	ble	624 <strncmp+0x84>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e5d33000 	ldrb	r3, [r3]
     5f4:	e3530000 	cmp	r3, #0
     5f8:	0a000009 	beq	624 <strncmp+0x84>
     5fc:	e51b300c 	ldr	r3, [fp, #-12]
     600:	e5d33000 	ldrb	r3, [r3]
     604:	e3530000 	cmp	r3, #0
     608:	0a000005 	beq	624 <strncmp+0x84>
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e5d32000 	ldrb	r2, [r3]
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e5d33000 	ldrb	r3, [r3]
     61c:	e1520003 	cmp	r2, r3
     620:	0affffe5 	beq	5bc <strncmp+0x1c>
     624:	e51b3010 	ldr	r3, [fp, #-16]
     628:	e3530000 	cmp	r3, #0
     62c:	1a000001 	bne	638 <strncmp+0x98>
     630:	e3a03000 	mov	r3, #0
     634:	ea000005 	b	650 <strncmp+0xb0>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e5d33000 	ldrb	r3, [r3]
     640:	e1a02003 	mov	r2, r3
     644:	e51b300c 	ldr	r3, [fp, #-12]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e0423003 	sub	r3, r2, r3
     650:	e1a00003 	mov	r0, r3
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <strncpy>:
     660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     664:	e28db000 	add	fp, sp, #0
     668:	e24dd01c 	sub	sp, sp, #28
     66c:	e50b0010 	str	r0, [fp, #-16]
     670:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     674:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e50b3008 	str	r3, [fp, #-8]
     680:	ea00000a 	b	6b0 <strncpy+0x50>
     684:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     688:	e2823001 	add	r3, r2, #1
     68c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e2831001 	add	r1, r3, #1
     698:	e50b1008 	str	r1, [fp, #-8]
     69c:	e5d22000 	ldrb	r2, [r2]
     6a0:	e5c32000 	strb	r2, [r3]
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e2433001 	sub	r3, r3, #1
     6ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b4:	e3530000 	cmp	r3, #0
     6b8:	da00000c 	ble	6f0 <strncpy+0x90>
     6bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e3530000 	cmp	r3, #0
     6c8:	1affffed 	bne	684 <strncpy+0x24>
     6cc:	ea000007 	b	6f0 <strncpy+0x90>
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e2832001 	add	r2, r3, #1
     6d8:	e50b2008 	str	r2, [fp, #-8]
     6dc:	e3a02000 	mov	r2, #0
     6e0:	e5c32000 	strb	r2, [r3]
     6e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6e8:	e2433001 	sub	r3, r3, #1
     6ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f4:	e3530000 	cmp	r3, #0
     6f8:	cafffff4 	bgt	6d0 <strncpy+0x70>
     6fc:	e51b3010 	ldr	r3, [fp, #-16]
     700:	e1a00003 	mov	r0, r3
     704:	e28bd000 	add	sp, fp, #0
     708:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <fork>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00001 	mov	r0, #1
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <exit>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00002 	mov	r0, #2
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <wait>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00003 	mov	r0, #3
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <pipe>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00004 	mov	r0, #4
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <read>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00005 	mov	r0, #5
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <write>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00010 	mov	r0, #16
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <close>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00015 	mov	r0, #21
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <kill>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00006 	mov	r0, #6
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <exec>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00007 	mov	r0, #7
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <open>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000f 	mov	r0, #15
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <mknod>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00011 	mov	r0, #17
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <unlink>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00012 	mov	r0, #18
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <fstat>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00008 	mov	r0, #8
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <link>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00013 	mov	r0, #19
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <mkdir>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00014 	mov	r0, #20
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <chdir>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00009 	mov	r0, #9
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <dup>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a0000a 	mov	r0, #10
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <getpid>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a0000b 	mov	r0, #11
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <sbrk>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0000c 	mov	r0, #12
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <sleep>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a0000d 	mov	r0, #13
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <uptime>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a0000e 	mov	r0, #14
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <proclist>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a00016 	mov	r0, #22
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <settickets>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00017 	mov	r0, #23
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <srand>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a00018 	mov	r0, #24
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <getpinfo>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00019 	mov	r0, #25
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <putc>:
     a94:	e92d4800 	push	{fp, lr}
     a98:	e28db004 	add	fp, sp, #4
     a9c:	e24dd008 	sub	sp, sp, #8
     aa0:	e50b0008 	str	r0, [fp, #-8]
     aa4:	e1a03001 	mov	r3, r1
     aa8:	e54b3009 	strb	r3, [fp, #-9]
     aac:	e24b3009 	sub	r3, fp, #9
     ab0:	e3a02001 	mov	r2, #1
     ab4:	e1a01003 	mov	r1, r3
     ab8:	e51b0008 	ldr	r0, [fp, #-8]
     abc:	ebffff40 	bl	7c4 <write>
     ac0:	e1a00000 	nop			@ (mov r0, r0)
     ac4:	e24bd004 	sub	sp, fp, #4
     ac8:	e8bd8800 	pop	{fp, pc}

00000acc <printint>:
     acc:	e92d4800 	push	{fp, lr}
     ad0:	e28db004 	add	fp, sp, #4
     ad4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ad8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     adc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ae0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ae4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ae8:	e3a03000 	mov	r3, #0
     aec:	e50b300c 	str	r3, [fp, #-12]
     af0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     af4:	e3530000 	cmp	r3, #0
     af8:	0a000008 	beq	b20 <printint+0x54>
     afc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b00:	e3530000 	cmp	r3, #0
     b04:	aa000005 	bge	b20 <printint+0x54>
     b08:	e3a03001 	mov	r3, #1
     b0c:	e50b300c 	str	r3, [fp, #-12]
     b10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b14:	e2633000 	rsb	r3, r3, #0
     b18:	e50b3010 	str	r3, [fp, #-16]
     b1c:	ea000001 	b	b28 <printint+0x5c>
     b20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b24:	e50b3010 	str	r3, [fp, #-16]
     b28:	e3a03000 	mov	r3, #0
     b2c:	e50b3008 	str	r3, [fp, #-8]
     b30:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b34:	e51b3010 	ldr	r3, [fp, #-16]
     b38:	e1a01002 	mov	r1, r2
     b3c:	e1a00003 	mov	r0, r3
     b40:	eb0001d5 	bl	129c <__aeabi_uidivmod>
     b44:	e1a03001 	mov	r3, r1
     b48:	e1a01003 	mov	r1, r3
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e2832001 	add	r2, r3, #1
     b54:	e50b2008 	str	r2, [fp, #-8]
     b58:	e59f20a0 	ldr	r2, [pc, #160]	@ c00 <printint+0x134>
     b5c:	e7d22001 	ldrb	r2, [r2, r1]
     b60:	e2433004 	sub	r3, r3, #4
     b64:	e083300b 	add	r3, r3, fp
     b68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b6c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b70:	e1a01003 	mov	r1, r3
     b74:	e51b0010 	ldr	r0, [fp, #-16]
     b78:	eb00018a 	bl	11a8 <__udivsi3>
     b7c:	e1a03000 	mov	r3, r0
     b80:	e50b3010 	str	r3, [fp, #-16]
     b84:	e51b3010 	ldr	r3, [fp, #-16]
     b88:	e3530000 	cmp	r3, #0
     b8c:	1affffe7 	bne	b30 <printint+0x64>
     b90:	e51b300c 	ldr	r3, [fp, #-12]
     b94:	e3530000 	cmp	r3, #0
     b98:	0a00000e 	beq	bd8 <printint+0x10c>
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2832001 	add	r2, r3, #1
     ba4:	e50b2008 	str	r2, [fp, #-8]
     ba8:	e2433004 	sub	r3, r3, #4
     bac:	e083300b 	add	r3, r3, fp
     bb0:	e3a0202d 	mov	r2, #45	@ 0x2d
     bb4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bb8:	ea000006 	b	bd8 <printint+0x10c>
     bbc:	e24b2020 	sub	r2, fp, #32
     bc0:	e51b3008 	ldr	r3, [fp, #-8]
     bc4:	e0823003 	add	r3, r2, r3
     bc8:	e5d33000 	ldrb	r3, [r3]
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     bd4:	ebffffae 	bl	a94 <putc>
     bd8:	e51b3008 	ldr	r3, [fp, #-8]
     bdc:	e2433001 	sub	r3, r3, #1
     be0:	e50b3008 	str	r3, [fp, #-8]
     be4:	e51b3008 	ldr	r3, [fp, #-8]
     be8:	e3530000 	cmp	r3, #0
     bec:	aafffff2 	bge	bbc <printint+0xf0>
     bf0:	e1a00000 	nop			@ (mov r0, r0)
     bf4:	e1a00000 	nop			@ (mov r0, r0)
     bf8:	e24bd004 	sub	sp, fp, #4
     bfc:	e8bd8800 	pop	{fp, pc}
     c00:	00001308 	.word	0x00001308

00000c04 <printf>:
     c04:	e92d000e 	push	{r1, r2, r3}
     c08:	e92d4800 	push	{fp, lr}
     c0c:	e28db004 	add	fp, sp, #4
     c10:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c14:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c18:	e3a03000 	mov	r3, #0
     c1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c20:	e28b3008 	add	r3, fp, #8
     c24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c28:	e3a03000 	mov	r3, #0
     c2c:	e50b3010 	str	r3, [fp, #-16]
     c30:	ea000074 	b	e08 <printf+0x204>
     c34:	e59b2004 	ldr	r2, [fp, #4]
     c38:	e51b3010 	ldr	r3, [fp, #-16]
     c3c:	e0823003 	add	r3, r2, r3
     c40:	e5d33000 	ldrb	r3, [r3]
     c44:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c4c:	e3530000 	cmp	r3, #0
     c50:	1a00000b 	bne	c84 <printf+0x80>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e3530025 	cmp	r3, #37	@ 0x25
     c5c:	1a000002 	bne	c6c <printf+0x68>
     c60:	e3a03025 	mov	r3, #37	@ 0x25
     c64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c68:	ea000063 	b	dfc <printf+0x1f8>
     c6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c70:	e6ef3073 	uxtb	r3, r3
     c74:	e1a01003 	mov	r1, r3
     c78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c7c:	ebffff84 	bl	a94 <putc>
     c80:	ea00005d 	b	dfc <printf+0x1f8>
     c84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c88:	e3530025 	cmp	r3, #37	@ 0x25
     c8c:	1a00005a 	bne	dfc <printf+0x1f8>
     c90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c94:	e3530064 	cmp	r3, #100	@ 0x64
     c98:	1a00000a 	bne	cc8 <printf+0xc4>
     c9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e3a03001 	mov	r3, #1
     cac:	e3a0200a 	mov	r2, #10
     cb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb4:	ebffff84 	bl	acc <printint>
     cb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cbc:	e2833004 	add	r3, r3, #4
     cc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cc4:	ea00004a 	b	df4 <printf+0x1f0>
     cc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ccc:	e3530078 	cmp	r3, #120	@ 0x78
     cd0:	0a000002 	beq	ce0 <printf+0xdc>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd8:	e3530070 	cmp	r3, #112	@ 0x70
     cdc:	1a00000a 	bne	d0c <printf+0x108>
     ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e1a01003 	mov	r1, r3
     cec:	e3a03000 	mov	r3, #0
     cf0:	e3a02010 	mov	r2, #16
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf8:	ebffff73 	bl	acc <printint>
     cfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d00:	e2833004 	add	r3, r3, #4
     d04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d08:	ea000039 	b	df4 <printf+0x1f0>
     d0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d10:	e3530073 	cmp	r3, #115	@ 0x73
     d14:	1a000018 	bne	d7c <printf+0x178>
     d18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e50b300c 	str	r3, [fp, #-12]
     d24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d28:	e2833004 	add	r3, r3, #4
     d2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d30:	e51b300c 	ldr	r3, [fp, #-12]
     d34:	e3530000 	cmp	r3, #0
     d38:	1a00000a 	bne	d68 <printf+0x164>
     d3c:	e59f30f4 	ldr	r3, [pc, #244]	@ e38 <printf+0x234>
     d40:	e50b300c 	str	r3, [fp, #-12]
     d44:	ea000007 	b	d68 <printf+0x164>
     d48:	e51b300c 	ldr	r3, [fp, #-12]
     d4c:	e5d33000 	ldrb	r3, [r3]
     d50:	e1a01003 	mov	r1, r3
     d54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d58:	ebffff4d 	bl	a94 <putc>
     d5c:	e51b300c 	ldr	r3, [fp, #-12]
     d60:	e2833001 	add	r3, r3, #1
     d64:	e50b300c 	str	r3, [fp, #-12]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5d33000 	ldrb	r3, [r3]
     d70:	e3530000 	cmp	r3, #0
     d74:	1afffff3 	bne	d48 <printf+0x144>
     d78:	ea00001d 	b	df4 <printf+0x1f0>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e3530063 	cmp	r3, #99	@ 0x63
     d84:	1a000009 	bne	db0 <printf+0x1ac>
     d88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e6ef3073 	uxtb	r3, r3
     d94:	e1a01003 	mov	r1, r3
     d98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d9c:	ebffff3c 	bl	a94 <putc>
     da0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     da4:	e2833004 	add	r3, r3, #4
     da8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dac:	ea000010 	b	df4 <printf+0x1f0>
     db0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db4:	e3530025 	cmp	r3, #37	@ 0x25
     db8:	1a000005 	bne	dd4 <printf+0x1d0>
     dbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc0:	e6ef3073 	uxtb	r3, r3
     dc4:	e1a01003 	mov	r1, r3
     dc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dcc:	ebffff30 	bl	a94 <putc>
     dd0:	ea000007 	b	df4 <printf+0x1f0>
     dd4:	e3a01025 	mov	r1, #37	@ 0x25
     dd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ddc:	ebffff2c 	bl	a94 <putc>
     de0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e6ef3073 	uxtb	r3, r3
     de8:	e1a01003 	mov	r1, r3
     dec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     df0:	ebffff27 	bl	a94 <putc>
     df4:	e3a03000 	mov	r3, #0
     df8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dfc:	e51b3010 	ldr	r3, [fp, #-16]
     e00:	e2833001 	add	r3, r3, #1
     e04:	e50b3010 	str	r3, [fp, #-16]
     e08:	e59b2004 	ldr	r2, [fp, #4]
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e0823003 	add	r3, r2, r3
     e14:	e5d33000 	ldrb	r3, [r3]
     e18:	e3530000 	cmp	r3, #0
     e1c:	1affff84 	bne	c34 <printf+0x30>
     e20:	e1a00000 	nop			@ (mov r0, r0)
     e24:	e1a00000 	nop			@ (mov r0, r0)
     e28:	e24bd004 	sub	sp, fp, #4
     e2c:	e8bd4800 	pop	{fp, lr}
     e30:	e28dd00c 	add	sp, sp, #12
     e34:	e12fff1e 	bx	lr
     e38:	00001300 	.word	0x00001300

00000e3c <free>:
     e3c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e40:	e28db000 	add	fp, sp, #0
     e44:	e24dd014 	sub	sp, sp, #20
     e48:	e50b0010 	str	r0, [fp, #-16]
     e4c:	e51b3010 	ldr	r3, [fp, #-16]
     e50:	e2433008 	sub	r3, r3, #8
     e54:	e50b300c 	str	r3, [fp, #-12]
     e58:	e59f3154 	ldr	r3, [pc, #340]	@ fb4 <free+0x178>
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e50b3008 	str	r3, [fp, #-8]
     e64:	ea000010 	b	eac <free+0x70>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e51b2008 	ldr	r2, [fp, #-8]
     e74:	e1520003 	cmp	r2, r3
     e78:	3a000008 	bcc	ea0 <free+0x64>
     e7c:	e51b200c 	ldr	r2, [fp, #-12]
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e1520003 	cmp	r2, r3
     e88:	8a000010 	bhi	ed0 <free+0x94>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933000 	ldr	r3, [r3]
     e94:	e51b200c 	ldr	r2, [fp, #-12]
     e98:	e1520003 	cmp	r2, r3
     e9c:	3a00000b 	bcc	ed0 <free+0x94>
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e5933000 	ldr	r3, [r3]
     ea8:	e50b3008 	str	r3, [fp, #-8]
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e1520003 	cmp	r2, r3
     eb8:	9affffea 	bls	e68 <free+0x2c>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	2affffe5 	bcs	e68 <free+0x2c>
     ed0:	e51b300c 	ldr	r3, [fp, #-12]
     ed4:	e5933004 	ldr	r3, [r3, #4]
     ed8:	e1a03183 	lsl	r3, r3, #3
     edc:	e51b200c 	ldr	r2, [fp, #-12]
     ee0:	e0822003 	add	r2, r2, r3
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e1520003 	cmp	r2, r3
     ef0:	1a00000d 	bne	f2c <free+0xf0>
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5932004 	ldr	r2, [r3, #4]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933000 	ldr	r3, [r3]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e0822003 	add	r2, r2, r3
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5832004 	str	r2, [r3, #4]
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e5932000 	ldr	r2, [r3]
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5832000 	str	r2, [r3]
     f28:	ea000003 	b	f3c <free+0x100>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5932000 	ldr	r2, [r3]
     f34:	e51b300c 	ldr	r3, [fp, #-12]
     f38:	e5832000 	str	r2, [r3]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e1a03183 	lsl	r3, r3, #3
     f48:	e51b2008 	ldr	r2, [fp, #-8]
     f4c:	e0823003 	add	r3, r2, r3
     f50:	e51b200c 	ldr	r2, [fp, #-12]
     f54:	e1520003 	cmp	r2, r3
     f58:	1a00000b 	bne	f8c <free+0x150>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5932004 	ldr	r2, [r3, #4]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e0822003 	add	r2, r2, r3
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e5832004 	str	r2, [r3, #4]
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5932000 	ldr	r2, [r3]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5832000 	str	r2, [r3]
     f88:	ea000002 	b	f98 <free+0x15c>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e51b200c 	ldr	r2, [fp, #-12]
     f94:	e5832000 	str	r2, [r3]
     f98:	e59f2014 	ldr	r2, [pc, #20]	@ fb4 <free+0x178>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5823000 	str	r3, [r2]
     fa4:	e1a00000 	nop			@ (mov r0, r0)
     fa8:	e28bd000 	add	sp, fp, #0
     fac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fb0:	e12fff1e 	bx	lr
     fb4:	00001324 	.word	0x00001324

00000fb8 <morecore>:
     fb8:	e92d4800 	push	{fp, lr}
     fbc:	e28db004 	add	fp, sp, #4
     fc0:	e24dd010 	sub	sp, sp, #16
     fc4:	e50b0010 	str	r0, [fp, #-16]
     fc8:	e51b3010 	ldr	r3, [fp, #-16]
     fcc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     fd0:	2a000001 	bcs	fdc <morecore+0x24>
     fd4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     fd8:	e50b3010 	str	r3, [fp, #-16]
     fdc:	e51b3010 	ldr	r3, [fp, #-16]
     fe0:	e1a03183 	lsl	r3, r3, #3
     fe4:	e1a00003 	mov	r0, r3
     fe8:	ebfffe6a 	bl	998 <sbrk>
     fec:	e50b0008 	str	r0, [fp, #-8]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e3730001 	cmn	r3, #1
     ff8:	1a000001 	bne	1004 <morecore+0x4c>
     ffc:	e3a03000 	mov	r3, #0
    1000:	ea00000a 	b	1030 <morecore+0x78>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e50b300c 	str	r3, [fp, #-12]
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e51b2010 	ldr	r2, [fp, #-16]
    1014:	e5832004 	str	r2, [r3, #4]
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e2833008 	add	r3, r3, #8
    1020:	e1a00003 	mov	r0, r3
    1024:	ebffff84 	bl	e3c <free>
    1028:	e59f300c 	ldr	r3, [pc, #12]	@ 103c <morecore+0x84>
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e1a00003 	mov	r0, r3
    1034:	e24bd004 	sub	sp, fp, #4
    1038:	e8bd8800 	pop	{fp, pc}
    103c:	00001324 	.word	0x00001324

00001040 <malloc>:
    1040:	e92d4800 	push	{fp, lr}
    1044:	e28db004 	add	fp, sp, #4
    1048:	e24dd018 	sub	sp, sp, #24
    104c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1050:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1054:	e2833007 	add	r3, r3, #7
    1058:	e1a031a3 	lsr	r3, r3, #3
    105c:	e2833001 	add	r3, r3, #1
    1060:	e50b3010 	str	r3, [fp, #-16]
    1064:	e59f3134 	ldr	r3, [pc, #308]	@ 11a0 <malloc+0x160>
    1068:	e5933000 	ldr	r3, [r3]
    106c:	e50b300c 	str	r3, [fp, #-12]
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e3530000 	cmp	r3, #0
    1078:	1a00000b 	bne	10ac <malloc+0x6c>
    107c:	e59f3120 	ldr	r3, [pc, #288]	@ 11a4 <malloc+0x164>
    1080:	e50b300c 	str	r3, [fp, #-12]
    1084:	e59f2114 	ldr	r2, [pc, #276]	@ 11a0 <malloc+0x160>
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5823000 	str	r3, [r2]
    1090:	e59f3108 	ldr	r3, [pc, #264]	@ 11a0 <malloc+0x160>
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e59f2104 	ldr	r2, [pc, #260]	@ 11a4 <malloc+0x164>
    109c:	e5823000 	str	r3, [r2]
    10a0:	e59f30fc 	ldr	r3, [pc, #252]	@ 11a4 <malloc+0x164>
    10a4:	e3a02000 	mov	r2, #0
    10a8:	e5832004 	str	r2, [r3, #4]
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e5933000 	ldr	r3, [r3]
    10b4:	e50b3008 	str	r3, [fp, #-8]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933004 	ldr	r3, [r3, #4]
    10c0:	e51b2010 	ldr	r2, [fp, #-16]
    10c4:	e1520003 	cmp	r2, r3
    10c8:	8a00001e 	bhi	1148 <malloc+0x108>
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5933004 	ldr	r3, [r3, #4]
    10d4:	e51b2010 	ldr	r2, [fp, #-16]
    10d8:	e1520003 	cmp	r2, r3
    10dc:	1a000004 	bne	10f4 <malloc+0xb4>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5932000 	ldr	r2, [r3]
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e5832000 	str	r2, [r3]
    10f0:	ea00000e 	b	1130 <malloc+0xf0>
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5932004 	ldr	r2, [r3, #4]
    10fc:	e51b3010 	ldr	r3, [fp, #-16]
    1100:	e0422003 	sub	r2, r2, r3
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5832004 	str	r2, [r3, #4]
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e5933004 	ldr	r3, [r3, #4]
    1114:	e1a03183 	lsl	r3, r3, #3
    1118:	e51b2008 	ldr	r2, [fp, #-8]
    111c:	e0823003 	add	r3, r2, r3
    1120:	e50b3008 	str	r3, [fp, #-8]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e51b2010 	ldr	r2, [fp, #-16]
    112c:	e5832004 	str	r2, [r3, #4]
    1130:	e59f2068 	ldr	r2, [pc, #104]	@ 11a0 <malloc+0x160>
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e5823000 	str	r3, [r2]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e2833008 	add	r3, r3, #8
    1144:	ea000012 	b	1194 <malloc+0x154>
    1148:	e59f3050 	ldr	r3, [pc, #80]	@ 11a0 <malloc+0x160>
    114c:	e5933000 	ldr	r3, [r3]
    1150:	e51b2008 	ldr	r2, [fp, #-8]
    1154:	e1520003 	cmp	r2, r3
    1158:	1a000007 	bne	117c <malloc+0x13c>
    115c:	e51b0010 	ldr	r0, [fp, #-16]
    1160:	ebffff94 	bl	fb8 <morecore>
    1164:	e50b0008 	str	r0, [fp, #-8]
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e3530000 	cmp	r3, #0
    1170:	1a000001 	bne	117c <malloc+0x13c>
    1174:	e3a03000 	mov	r3, #0
    1178:	ea000005 	b	1194 <malloc+0x154>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e50b300c 	str	r3, [fp, #-12]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e50b3008 	str	r3, [fp, #-8]
    1190:	eaffffc8 	b	10b8 <malloc+0x78>
    1194:	e1a00003 	mov	r0, r3
    1198:	e24bd004 	sub	sp, fp, #4
    119c:	e8bd8800 	pop	{fp, pc}
    11a0:	00001324 	.word	0x00001324
    11a4:	0000131c 	.word	0x0000131c

000011a8 <__udivsi3>:
    11a8:	e2512001 	subs	r2, r1, #1
    11ac:	012fff1e 	bxeq	lr
    11b0:	3a000036 	bcc	1290 <__udivsi3+0xe8>
    11b4:	e1500001 	cmp	r0, r1
    11b8:	9a000022 	bls	1248 <__udivsi3+0xa0>
    11bc:	e1110002 	tst	r1, r2
    11c0:	0a000023 	beq	1254 <__udivsi3+0xac>
    11c4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11c8:	01a01181 	lsleq	r1, r1, #3
    11cc:	03a03008 	moveq	r3, #8
    11d0:	13a03001 	movne	r3, #1
    11d4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11d8:	31510000 	cmpcc	r1, r0
    11dc:	31a01201 	lslcc	r1, r1, #4
    11e0:	31a03203 	lslcc	r3, r3, #4
    11e4:	3afffffa 	bcc	11d4 <__udivsi3+0x2c>
    11e8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11ec:	31510000 	cmpcc	r1, r0
    11f0:	31a01081 	lslcc	r1, r1, #1
    11f4:	31a03083 	lslcc	r3, r3, #1
    11f8:	3afffffa 	bcc	11e8 <__udivsi3+0x40>
    11fc:	e3a02000 	mov	r2, #0
    1200:	e1500001 	cmp	r0, r1
    1204:	20400001 	subcs	r0, r0, r1
    1208:	21822003 	orrcs	r2, r2, r3
    120c:	e15000a1 	cmp	r0, r1, lsr #1
    1210:	204000a1 	subcs	r0, r0, r1, lsr #1
    1214:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1218:	e1500121 	cmp	r0, r1, lsr #2
    121c:	20400121 	subcs	r0, r0, r1, lsr #2
    1220:	21822123 	orrcs	r2, r2, r3, lsr #2
    1224:	e15001a1 	cmp	r0, r1, lsr #3
    1228:	204001a1 	subcs	r0, r0, r1, lsr #3
    122c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1230:	e3500000 	cmp	r0, #0
    1234:	11b03223 	lsrsne	r3, r3, #4
    1238:	11a01221 	lsrne	r1, r1, #4
    123c:	1affffef 	bne	1200 <__udivsi3+0x58>
    1240:	e1a00002 	mov	r0, r2
    1244:	e12fff1e 	bx	lr
    1248:	03a00001 	moveq	r0, #1
    124c:	13a00000 	movne	r0, #0
    1250:	e12fff1e 	bx	lr
    1254:	e3510801 	cmp	r1, #65536	@ 0x10000
    1258:	21a01821 	lsrcs	r1, r1, #16
    125c:	23a02010 	movcs	r2, #16
    1260:	33a02000 	movcc	r2, #0
    1264:	e3510c01 	cmp	r1, #256	@ 0x100
    1268:	21a01421 	lsrcs	r1, r1, #8
    126c:	22822008 	addcs	r2, r2, #8
    1270:	e3510010 	cmp	r1, #16
    1274:	21a01221 	lsrcs	r1, r1, #4
    1278:	22822004 	addcs	r2, r2, #4
    127c:	e3510004 	cmp	r1, #4
    1280:	82822003 	addhi	r2, r2, #3
    1284:	908220a1 	addls	r2, r2, r1, lsr #1
    1288:	e1a00230 	lsr	r0, r0, r2
    128c:	e12fff1e 	bx	lr
    1290:	e3500000 	cmp	r0, #0
    1294:	13e00000 	mvnne	r0, #0
    1298:	ea000007 	b	12bc <__aeabi_idiv0>

0000129c <__aeabi_uidivmod>:
    129c:	e3510000 	cmp	r1, #0
    12a0:	0afffffa 	beq	1290 <__udivsi3+0xe8>
    12a4:	e92d4003 	push	{r0, r1, lr}
    12a8:	ebffffbe 	bl	11a8 <__udivsi3>
    12ac:	e8bd4006 	pop	{r1, r2, lr}
    12b0:	e0030092 	mul	r3, r2, r0
    12b4:	e0411003 	sub	r1, r1, r3
    12b8:	e12fff1e 	bx	lr

000012bc <__aeabi_idiv0>:
    12bc:	e12fff1e 	bx	lr
