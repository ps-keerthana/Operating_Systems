
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00029e 	bl	a88 <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb000344 	bl	d34 <sleep>
      20:	eb0002a1 	bl	aac <exit>

00000024 <pg_pte>:
      24:	e92d4800 	push	{fp, lr}
      28:	e28db004 	add	fp, sp, #4
      2c:	e24dd008 	sub	sp, sp, #8
      30:	e50b0008 	str	r0, [fp, #-8]
      34:	e51b1008 	ldr	r1, [fp, #-8]
      38:	e3a0001a 	mov	r0, #26
      3c:	eb0003d5 	bl	f98 <syscall>
      40:	e1a03000 	mov	r3, r0
      44:	e1a00003 	mov	r0, r3
      48:	e24bd004 	sub	sp, fp, #4
      4c:	e8bd8800 	pop	{fp, pc}

00000050 <pg_pa>:
      50:	e92d4800 	push	{fp, lr}
      54:	e28db004 	add	fp, sp, #4
      58:	e24dd008 	sub	sp, sp, #8
      5c:	e50b0008 	str	r0, [fp, #-8]
      60:	e51b1008 	ldr	r1, [fp, #-8]
      64:	e3a0001b 	mov	r0, #27
      68:	eb0003ca 	bl	f98 <syscall>
      6c:	e1a03000 	mov	r3, r0
      70:	e1a00003 	mov	r0, r3
      74:	e24bd004 	sub	sp, fp, #4
      78:	e8bd8800 	pop	{fp, pc}

0000007c <pg_flags>:
      7c:	e92d4800 	push	{fp, lr}
      80:	e28db004 	add	fp, sp, #4
      84:	e24dd008 	sub	sp, sp, #8
      88:	e50b0008 	str	r0, [fp, #-8]
      8c:	e51b1008 	ldr	r1, [fp, #-8]
      90:	e3a0001c 	mov	r0, #28
      94:	eb0003bf 	bl	f98 <syscall>
      98:	e1a03000 	mov	r3, r0
      9c:	e1a00003 	mov	r0, r3
      a0:	e24bd004 	sub	sp, fp, #4
      a4:	e8bd8800 	pop	{fp, pc}

000000a8 <kpt>:
      a8:	e92d4800 	push	{fp, lr}
      ac:	e28db004 	add	fp, sp, #4
      b0:	e3a0001d 	mov	r0, #29
      b4:	eb0003b7 	bl	f98 <syscall>
      b8:	e1a03000 	mov	r3, r0
      bc:	e1a00003 	mov	r0, r3
      c0:	e8bd8800 	pop	{fp, pc}

000000c4 <ugetpid>:
      c4:	e92d4800 	push	{fp, lr}
      c8:	e28db004 	add	fp, sp, #4
      cc:	e3a0001e 	mov	r0, #30
      d0:	eb0003b0 	bl	f98 <syscall>
      d4:	e1a03000 	mov	r3, r0
      d8:	e1a00003 	mov	r0, r3
      dc:	e8bd8800 	pop	{fp, pc}

000000e0 <strcpy>:
      e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      e4:	e28db000 	add	fp, sp, #0
      e8:	e24dd014 	sub	sp, sp, #20
      ec:	e50b0010 	str	r0, [fp, #-16]
      f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      f4:	e51b3010 	ldr	r3, [fp, #-16]
      f8:	e50b3008 	str	r3, [fp, #-8]
      fc:	e1a00000 	nop			@ (mov r0, r0)
     100:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     104:	e2823001 	add	r3, r2, #1
     108:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e2831001 	add	r1, r3, #1
     114:	e50b1010 	str	r1, [fp, #-16]
     118:	e5d22000 	ldrb	r2, [r2]
     11c:	e5c32000 	strb	r2, [r3]
     120:	e5d33000 	ldrb	r3, [r3]
     124:	e3530000 	cmp	r3, #0
     128:	1afffff4 	bne	100 <strcpy+0x20>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e1a00003 	mov	r0, r3
     134:	e28bd000 	add	sp, fp, #0
     138:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     13c:	e12fff1e 	bx	lr

00000140 <strcmp>:
     140:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     144:	e28db000 	add	fp, sp, #0
     148:	e24dd00c 	sub	sp, sp, #12
     14c:	e50b0008 	str	r0, [fp, #-8]
     150:	e50b100c 	str	r1, [fp, #-12]
     154:	ea000005 	b	170 <strcmp+0x30>
     158:	e51b3008 	ldr	r3, [fp, #-8]
     15c:	e2833001 	add	r3, r3, #1
     160:	e50b3008 	str	r3, [fp, #-8]
     164:	e51b300c 	ldr	r3, [fp, #-12]
     168:	e2833001 	add	r3, r3, #1
     16c:	e50b300c 	str	r3, [fp, #-12]
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e5d33000 	ldrb	r3, [r3]
     178:	e3530000 	cmp	r3, #0
     17c:	0a000005 	beq	198 <strcmp+0x58>
     180:	e51b3008 	ldr	r3, [fp, #-8]
     184:	e5d32000 	ldrb	r2, [r3]
     188:	e51b300c 	ldr	r3, [fp, #-12]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e1520003 	cmp	r2, r3
     194:	0affffef 	beq	158 <strcmp+0x18>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e1a02003 	mov	r2, r3
     1a4:	e51b300c 	ldr	r3, [fp, #-12]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e0423003 	sub	r3, r2, r3
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e28bd000 	add	sp, fp, #0
     1b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1bc:	e12fff1e 	bx	lr

000001c0 <strlen>:
     1c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c4:	e28db000 	add	fp, sp, #0
     1c8:	e24dd014 	sub	sp, sp, #20
     1cc:	e50b0010 	str	r0, [fp, #-16]
     1d0:	e3a03000 	mov	r3, #0
     1d4:	e50b3008 	str	r3, [fp, #-8]
     1d8:	ea000002 	b	1e8 <strlen+0x28>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e2833001 	add	r3, r3, #1
     1e4:	e50b3008 	str	r3, [fp, #-8]
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e51b2010 	ldr	r2, [fp, #-16]
     1f0:	e0823003 	add	r3, r2, r3
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	1afffff6 	bne	1dc <strlen+0x1c>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e1a00003 	mov	r0, r3
     208:	e28bd000 	add	sp, fp, #0
     20c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     210:	e12fff1e 	bx	lr

00000214 <memset>:
     214:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     218:	e28db000 	add	fp, sp, #0
     21c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     220:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     224:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     228:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     22c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     238:	e54b300d 	strb	r3, [fp, #-13]
     23c:	e55b200d 	ldrb	r2, [fp, #-13]
     240:	e1a03002 	mov	r3, r2
     244:	e1a03403 	lsl	r3, r3, #8
     248:	e0833002 	add	r3, r3, r2
     24c:	e1a03803 	lsl	r3, r3, #16
     250:	e1a02003 	mov	r2, r3
     254:	e55b300d 	ldrb	r3, [fp, #-13]
     258:	e1a03403 	lsl	r3, r3, #8
     25c:	e1822003 	orr	r2, r2, r3
     260:	e55b300d 	ldrb	r3, [fp, #-13]
     264:	e1823003 	orr	r3, r2, r3
     268:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     26c:	ea000008 	b	294 <memset+0x80>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e55b200d 	ldrb	r2, [fp, #-13]
     278:	e5c32000 	strb	r2, [r3]
     27c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     280:	e2433001 	sub	r3, r3, #1
     284:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e2833001 	add	r3, r3, #1
     290:	e50b3008 	str	r3, [fp, #-8]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e3530000 	cmp	r3, #0
     29c:	0a000003 	beq	2b0 <memset+0x9c>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2033003 	and	r3, r3, #3
     2a8:	e3530000 	cmp	r3, #0
     2ac:	1affffef 	bne	270 <memset+0x5c>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e50b300c 	str	r3, [fp, #-12]
     2b8:	ea000008 	b	2e0 <memset+0xcc>
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2c4:	e5832000 	str	r2, [r3]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e2433004 	sub	r3, r3, #4
     2d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e2833004 	add	r3, r3, #4
     2dc:	e50b300c 	str	r3, [fp, #-12]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e3530003 	cmp	r3, #3
     2e8:	8afffff3 	bhi	2bc <memset+0xa8>
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e50b3008 	str	r3, [fp, #-8]
     2f4:	ea000008 	b	31c <memset+0x108>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e55b200d 	ldrb	r2, [fp, #-13]
     300:	e5c32000 	strb	r2, [r3]
     304:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     308:	e2433001 	sub	r3, r3, #1
     30c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833001 	add	r3, r3, #1
     318:	e50b3008 	str	r3, [fp, #-8]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e3530000 	cmp	r3, #0
     324:	1afffff3 	bne	2f8 <memset+0xe4>
     328:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     32c:	e1a00003 	mov	r0, r3
     330:	e28bd000 	add	sp, fp, #0
     334:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     338:	e12fff1e 	bx	lr

0000033c <strchr>:
     33c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     340:	e28db000 	add	fp, sp, #0
     344:	e24dd00c 	sub	sp, sp, #12
     348:	e50b0008 	str	r0, [fp, #-8]
     34c:	e1a03001 	mov	r3, r1
     350:	e54b3009 	strb	r3, [fp, #-9]
     354:	ea000009 	b	380 <strchr+0x44>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e5d33000 	ldrb	r3, [r3]
     360:	e55b2009 	ldrb	r2, [fp, #-9]
     364:	e1520003 	cmp	r2, r3
     368:	1a000001 	bne	374 <strchr+0x38>
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	ea000007 	b	394 <strchr+0x58>
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2833001 	add	r3, r3, #1
     37c:	e50b3008 	str	r3, [fp, #-8]
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5d33000 	ldrb	r3, [r3]
     388:	e3530000 	cmp	r3, #0
     38c:	1afffff1 	bne	358 <strchr+0x1c>
     390:	e3a03000 	mov	r3, #0
     394:	e1a00003 	mov	r0, r3
     398:	e28bd000 	add	sp, fp, #0
     39c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a0:	e12fff1e 	bx	lr

000003a4 <gets>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd018 	sub	sp, sp, #24
     3b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3b8:	e3a03000 	mov	r3, #0
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	ea000016 	b	420 <gets+0x7c>
     3c4:	e24b300d 	sub	r3, fp, #13
     3c8:	e3a02001 	mov	r2, #1
     3cc:	e1a01003 	mov	r1, r3
     3d0:	e3a00000 	mov	r0, #0
     3d4:	eb0001cf 	bl	b18 <read>
     3d8:	e50b000c 	str	r0, [fp, #-12]
     3dc:	e51b300c 	ldr	r3, [fp, #-12]
     3e0:	e3530000 	cmp	r3, #0
     3e4:	da000013 	ble	438 <gets+0x94>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2832001 	add	r2, r3, #1
     3f0:	e50b2008 	str	r2, [fp, #-8]
     3f4:	e1a02003 	mov	r2, r3
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e0833002 	add	r3, r3, r2
     400:	e55b200d 	ldrb	r2, [fp, #-13]
     404:	e5c32000 	strb	r2, [r3]
     408:	e55b300d 	ldrb	r3, [fp, #-13]
     40c:	e353000a 	cmp	r3, #10
     410:	0a000009 	beq	43c <gets+0x98>
     414:	e55b300d 	ldrb	r3, [fp, #-13]
     418:	e353000d 	cmp	r3, #13
     41c:	0a000006 	beq	43c <gets+0x98>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2833001 	add	r3, r3, #1
     428:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     42c:	e1520003 	cmp	r2, r3
     430:	caffffe3 	bgt	3c4 <gets+0x20>
     434:	ea000000 	b	43c <gets+0x98>
     438:	e1a00000 	nop			@ (mov r0, r0)
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     444:	e0823003 	add	r3, r2, r3
     448:	e3a02000 	mov	r2, #0
     44c:	e5c32000 	strb	r2, [r3]
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <stat>:
     460:	e92d4800 	push	{fp, lr}
     464:	e28db004 	add	fp, sp, #4
     468:	e24dd010 	sub	sp, sp, #16
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     474:	e3a01000 	mov	r1, #0
     478:	e51b0010 	ldr	r0, [fp, #-16]
     47c:	eb0001d2 	bl	bcc <open>
     480:	e50b0008 	str	r0, [fp, #-8]
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e3530000 	cmp	r3, #0
     48c:	aa000001 	bge	498 <stat+0x38>
     490:	e3e03000 	mvn	r3, #0
     494:	ea000006 	b	4b4 <stat+0x54>
     498:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     49c:	e51b0008 	ldr	r0, [fp, #-8]
     4a0:	eb0001e4 	bl	c38 <fstat>
     4a4:	e50b000c 	str	r0, [fp, #-12]
     4a8:	e51b0008 	ldr	r0, [fp, #-8]
     4ac:	eb0001ab 	bl	b60 <close>
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e1a00003 	mov	r0, r3
     4b8:	e24bd004 	sub	sp, fp, #4
     4bc:	e8bd8800 	pop	{fp, pc}

000004c0 <atoi>:
     4c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c4:	e28db000 	add	fp, sp, #0
     4c8:	e24dd014 	sub	sp, sp, #20
     4cc:	e50b0010 	str	r0, [fp, #-16]
     4d0:	e3a03000 	mov	r3, #0
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	ea00000c 	b	510 <atoi+0x50>
     4dc:	e51b2008 	ldr	r2, [fp, #-8]
     4e0:	e1a03002 	mov	r3, r2
     4e4:	e1a03103 	lsl	r3, r3, #2
     4e8:	e0833002 	add	r3, r3, r2
     4ec:	e1a03083 	lsl	r3, r3, #1
     4f0:	e1a01003 	mov	r1, r3
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e2832001 	add	r2, r3, #1
     4fc:	e50b2010 	str	r2, [fp, #-16]
     500:	e5d33000 	ldrb	r3, [r3]
     504:	e0813003 	add	r3, r1, r3
     508:	e2433030 	sub	r3, r3, #48	@ 0x30
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	e51b3010 	ldr	r3, [fp, #-16]
     514:	e5d33000 	ldrb	r3, [r3]
     518:	e353002f 	cmp	r3, #47	@ 0x2f
     51c:	9a000003 	bls	530 <atoi+0x70>
     520:	e51b3010 	ldr	r3, [fp, #-16]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e3530039 	cmp	r3, #57	@ 0x39
     52c:	9affffea 	bls	4dc <atoi+0x1c>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e1a00003 	mov	r0, r3
     538:	e28bd000 	add	sp, fp, #0
     53c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     540:	e12fff1e 	bx	lr

00000544 <memmove>:
     544:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     548:	e28db000 	add	fp, sp, #0
     54c:	e24dd01c 	sub	sp, sp, #28
     550:	e50b0010 	str	r0, [fp, #-16]
     554:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     558:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     568:	e50b300c 	str	r3, [fp, #-12]
     56c:	ea000007 	b	590 <memmove+0x4c>
     570:	e51b200c 	ldr	r2, [fp, #-12]
     574:	e2823001 	add	r3, r2, #1
     578:	e50b300c 	str	r3, [fp, #-12]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e2831001 	add	r1, r3, #1
     584:	e50b1008 	str	r1, [fp, #-8]
     588:	e5d22000 	ldrb	r2, [r2]
     58c:	e5c32000 	strb	r2, [r3]
     590:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     594:	e2432001 	sub	r2, r3, #1
     598:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     59c:	e3530000 	cmp	r3, #0
     5a0:	cafffff2 	bgt	570 <memmove+0x2c>
     5a4:	e51b3010 	ldr	r3, [fp, #-16]
     5a8:	e1a00003 	mov	r0, r3
     5ac:	e28bd000 	add	sp, fp, #0
     5b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <strncmp>:
     5b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5bc:	e28db000 	add	fp, sp, #0
     5c0:	e24dd014 	sub	sp, sp, #20
     5c4:	e50b0008 	str	r0, [fp, #-8]
     5c8:	e50b100c 	str	r1, [fp, #-12]
     5cc:	e50b2010 	str	r2, [fp, #-16]
     5d0:	ea000008 	b	5f8 <strncmp+0x40>
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2833001 	add	r3, r3, #1
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b300c 	ldr	r3, [fp, #-12]
     5e4:	e2833001 	add	r3, r3, #1
     5e8:	e50b300c 	str	r3, [fp, #-12]
     5ec:	e51b3010 	ldr	r3, [fp, #-16]
     5f0:	e2433001 	sub	r3, r3, #1
     5f4:	e50b3010 	str	r3, [fp, #-16]
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e3530000 	cmp	r3, #0
     600:	da00000d 	ble	63c <strncmp+0x84>
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e5d33000 	ldrb	r3, [r3]
     60c:	e3530000 	cmp	r3, #0
     610:	0a000009 	beq	63c <strncmp+0x84>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e5d33000 	ldrb	r3, [r3]
     61c:	e3530000 	cmp	r3, #0
     620:	0a000005 	beq	63c <strncmp+0x84>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e5d32000 	ldrb	r2, [r3]
     62c:	e51b300c 	ldr	r3, [fp, #-12]
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e1520003 	cmp	r2, r3
     638:	0affffe5 	beq	5d4 <strncmp+0x1c>
     63c:	e51b3010 	ldr	r3, [fp, #-16]
     640:	e3530000 	cmp	r3, #0
     644:	1a000001 	bne	650 <strncmp+0x98>
     648:	e3a03000 	mov	r3, #0
     64c:	ea000005 	b	668 <strncmp+0xb0>
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e5d33000 	ldrb	r3, [r3]
     658:	e1a02003 	mov	r2, r3
     65c:	e51b300c 	ldr	r3, [fp, #-12]
     660:	e5d33000 	ldrb	r3, [r3]
     664:	e0423003 	sub	r3, r2, r3
     668:	e1a00003 	mov	r0, r3
     66c:	e28bd000 	add	sp, fp, #0
     670:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <strncpy>:
     678:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     67c:	e28db000 	add	fp, sp, #0
     680:	e24dd01c 	sub	sp, sp, #28
     684:	e50b0010 	str	r0, [fp, #-16]
     688:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     68c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     690:	e51b3010 	ldr	r3, [fp, #-16]
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	ea00000a 	b	6c8 <strncpy+0x50>
     69c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6a0:	e2823001 	add	r3, r2, #1
     6a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e2831001 	add	r1, r3, #1
     6b0:	e50b1008 	str	r1, [fp, #-8]
     6b4:	e5d22000 	ldrb	r2, [r2]
     6b8:	e5c32000 	strb	r2, [r3]
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e2433001 	sub	r3, r3, #1
     6c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6cc:	e3530000 	cmp	r3, #0
     6d0:	da00000c 	ble	708 <strncpy+0x90>
     6d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e3530000 	cmp	r3, #0
     6e0:	1affffed 	bne	69c <strncpy+0x24>
     6e4:	ea000007 	b	708 <strncpy+0x90>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e2832001 	add	r2, r3, #1
     6f0:	e50b2008 	str	r2, [fp, #-8]
     6f4:	e3a02000 	mov	r2, #0
     6f8:	e5c32000 	strb	r2, [r3]
     6fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     700:	e2433001 	sub	r3, r3, #1
     704:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     70c:	e3530000 	cmp	r3, #0
     710:	cafffff4 	bgt	6e8 <strncpy+0x70>
     714:	e51b3010 	ldr	r3, [fp, #-16]
     718:	e1a00003 	mov	r0, r3
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <xchg>:
     728:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     72c:	e28db000 	add	fp, sp, #0
     730:	e24dd014 	sub	sp, sp, #20
     734:	e50b0010 	str	r0, [fp, #-16]
     738:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     73c:	e51b2010 	ldr	r2, [fp, #-16]
     740:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     744:	e1023091 	swp	r3, r1, [r2]
     748:	e50b3008 	str	r3, [fp, #-8]
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e1a00003 	mov	r0, r3
     754:	e28bd000 	add	sp, fp, #0
     758:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <initiateLock>:
     760:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     764:	e28db000 	add	fp, sp, #0
     768:	e24dd00c 	sub	sp, sp, #12
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e3a02000 	mov	r2, #0
     778:	e5832000 	str	r2, [r3]
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e3a02001 	mov	r2, #1
     784:	e5832004 	str	r2, [r3, #4]
     788:	e1a00000 	nop			@ (mov r0, r0)
     78c:	e28bd000 	add	sp, fp, #0
     790:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <acquireLock>:
     798:	e92d4800 	push	{fp, lr}
     79c:	e28db004 	add	fp, sp, #4
     7a0:	e24dd008 	sub	sp, sp, #8
     7a4:	e50b0008 	str	r0, [fp, #-8]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5933004 	ldr	r3, [r3, #4]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	0a000008 	beq	7dc <acquireLock+0x44>
     7b8:	e1a00000 	nop			@ (mov r0, r0)
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e3a01001 	mov	r1, #1
     7c4:	e1a00003 	mov	r0, r3
     7c8:	ebffffd6 	bl	728 <xchg>
     7cc:	e1a03000 	mov	r3, r0
     7d0:	e3530000 	cmp	r3, #0
     7d4:	1afffff8 	bne	7bc <acquireLock+0x24>
     7d8:	ea000000 	b	7e0 <acquireLock+0x48>
     7dc:	e1a00000 	nop			@ (mov r0, r0)
     7e0:	e24bd004 	sub	sp, fp, #4
     7e4:	e8bd8800 	pop	{fp, pc}

000007e8 <releaseLock>:
     7e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7ec:	e28db000 	add	fp, sp, #0
     7f0:	e24dd00c 	sub	sp, sp, #12
     7f4:	e50b0008 	str	r0, [fp, #-8]
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5933004 	ldr	r3, [r3, #4]
     800:	e3530000 	cmp	r3, #0
     804:	0a000006 	beq	824 <releaseLock+0x3c>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5933000 	ldr	r3, [r3]
     810:	e3530001 	cmp	r3, #1
     814:	1a000002 	bne	824 <releaseLock+0x3c>
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e3a02000 	mov	r2, #0
     820:	e5832000 	str	r2, [r3]
     824:	e1a00000 	nop			@ (mov r0, r0)
     828:	e28bd000 	add	sp, fp, #0
     82c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <initiateCondVar>:
     834:	e92d4800 	push	{fp, lr}
     838:	e28db004 	add	fp, sp, #4
     83c:	e24dd008 	sub	sp, sp, #8
     840:	e50b0008 	str	r0, [fp, #-8]
     844:	eb0001b8 	bl	f2c <getChannel>
     848:	e1a02000 	mov	r2, r0
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5832000 	str	r2, [r3]
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e3a02001 	mov	r2, #1
     85c:	e5832004 	str	r2, [r3, #4]
     860:	e1a00000 	nop			@ (mov r0, r0)
     864:	e24bd004 	sub	sp, fp, #4
     868:	e8bd8800 	pop	{fp, pc}

0000086c <condWait>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd008 	sub	sp, sp, #8
     878:	e50b0008 	str	r0, [fp, #-8]
     87c:	e50b100c 	str	r1, [fp, #-12]
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5933004 	ldr	r3, [r3, #4]
     888:	e3530000 	cmp	r3, #0
     88c:	0a00000c 	beq	8c4 <condWait+0x58>
     890:	e51b300c 	ldr	r3, [fp, #-12]
     894:	e5933004 	ldr	r3, [r3, #4]
     898:	e3530000 	cmp	r3, #0
     89c:	0a000008 	beq	8c4 <condWait+0x58>
     8a0:	e51b000c 	ldr	r0, [fp, #-12]
     8a4:	ebffffcf 	bl	7e8 <releaseLock>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933000 	ldr	r3, [r3]
     8b0:	e1a00003 	mov	r0, r3
     8b4:	eb000193 	bl	f08 <sleepChan>
     8b8:	e51b000c 	ldr	r0, [fp, #-12]
     8bc:	ebffffb5 	bl	798 <acquireLock>
     8c0:	ea000000 	b	8c8 <condWait+0x5c>
     8c4:	e1a00000 	nop			@ (mov r0, r0)
     8c8:	e24bd004 	sub	sp, fp, #4
     8cc:	e8bd8800 	pop	{fp, pc}

000008d0 <broadcast>:
     8d0:	e92d4800 	push	{fp, lr}
     8d4:	e28db004 	add	fp, sp, #4
     8d8:	e24dd008 	sub	sp, sp, #8
     8dc:	e50b0008 	str	r0, [fp, #-8]
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e5933004 	ldr	r3, [r3, #4]
     8e8:	e3530000 	cmp	r3, #0
     8ec:	0a000004 	beq	904 <broadcast+0x34>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e5933000 	ldr	r3, [r3]
     8f8:	e1a00003 	mov	r0, r3
     8fc:	eb000193 	bl	f50 <sigChan>
     900:	ea000000 	b	908 <broadcast+0x38>
     904:	e1a00000 	nop			@ (mov r0, r0)
     908:	e24bd004 	sub	sp, fp, #4
     90c:	e8bd8800 	pop	{fp, pc}

00000910 <signal>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd008 	sub	sp, sp, #8
     91c:	e50b0008 	str	r0, [fp, #-8]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e5933004 	ldr	r3, [r3, #4]
     928:	e3530000 	cmp	r3, #0
     92c:	0a000004 	beq	944 <signal+0x34>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933000 	ldr	r3, [r3]
     938:	e1a00003 	mov	r0, r3
     93c:	eb00018c 	bl	f74 <sigOneChan>
     940:	ea000000 	b	948 <signal+0x38>
     944:	e1a00000 	nop			@ (mov r0, r0)
     948:	e24bd004 	sub	sp, fp, #4
     94c:	e8bd8800 	pop	{fp, pc}

00000950 <semInit>:
     950:	e92d4800 	push	{fp, lr}
     954:	e28db004 	add	fp, sp, #4
     958:	e24dd008 	sub	sp, sp, #8
     95c:	e50b0008 	str	r0, [fp, #-8]
     960:	e50b100c 	str	r1, [fp, #-12]
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e2833004 	add	r3, r3, #4
     96c:	e1a00003 	mov	r0, r3
     970:	ebffff7a 	bl	760 <initiateLock>
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e283300c 	add	r3, r3, #12
     97c:	e1a00003 	mov	r0, r3
     980:	ebffffab 	bl	834 <initiateCondVar>
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e51b200c 	ldr	r2, [fp, #-12]
     98c:	e5832000 	str	r2, [r3]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e3a02001 	mov	r2, #1
     998:	e5832014 	str	r2, [r3, #20]
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e24bd004 	sub	sp, fp, #4
     9a4:	e8bd8800 	pop	{fp, pc}

000009a8 <semUp>:
     9a8:	e92d4800 	push	{fp, lr}
     9ac:	e28db004 	add	fp, sp, #4
     9b0:	e24dd008 	sub	sp, sp, #8
     9b4:	e50b0008 	str	r0, [fp, #-8]
     9b8:	e51b3008 	ldr	r3, [fp, #-8]
     9bc:	e2833004 	add	r3, r3, #4
     9c0:	e1a00003 	mov	r0, r3
     9c4:	ebffff73 	bl	798 <acquireLock>
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e5933000 	ldr	r3, [r3]
     9d0:	e2832001 	add	r2, r3, #1
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e5832000 	str	r2, [r3]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e283300c 	add	r3, r3, #12
     9e4:	e1a00003 	mov	r0, r3
     9e8:	ebffffc8 	bl	910 <signal>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2833004 	add	r3, r3, #4
     9f4:	e1a00003 	mov	r0, r3
     9f8:	ebffff7a 	bl	7e8 <releaseLock>
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}

00000a08 <semDown>:
     a08:	e92d4800 	push	{fp, lr}
     a0c:	e28db004 	add	fp, sp, #4
     a10:	e24dd008 	sub	sp, sp, #8
     a14:	e50b0008 	str	r0, [fp, #-8]
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e2833004 	add	r3, r3, #4
     a20:	e1a00003 	mov	r0, r3
     a24:	ebffff5b 	bl	798 <acquireLock>
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e5933000 	ldr	r3, [r3]
     a30:	e2432001 	sub	r2, r3, #1
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e5832000 	str	r2, [r3]
     a3c:	ea000006 	b	a5c <semDown+0x54>
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e283200c 	add	r2, r3, #12
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e2833004 	add	r3, r3, #4
     a50:	e1a01003 	mov	r1, r3
     a54:	e1a00002 	mov	r0, r2
     a58:	ebffff83 	bl	86c <condWait>
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e5933000 	ldr	r3, [r3]
     a64:	e3530000 	cmp	r3, #0
     a68:	bafffff4 	blt	a40 <semDown+0x38>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e2833004 	add	r3, r3, #4
     a74:	e1a00003 	mov	r0, r3
     a78:	ebffff5a 	bl	7e8 <releaseLock>
     a7c:	e1a00000 	nop			@ (mov r0, r0)
     a80:	e24bd004 	sub	sp, fp, #4
     a84:	e8bd8800 	pop	{fp, pc}

00000a88 <fork>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00001 	mov	r0, #1
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <exit>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00002 	mov	r0, #2
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <wait>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00003 	mov	r0, #3
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <pipe>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00004 	mov	r0, #4
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <read>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00005 	mov	r0, #5
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <write>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00010 	mov	r0, #16
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <close>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00015 	mov	r0, #21
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <kill>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00006 	mov	r0, #6
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <exec>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00007 	mov	r0, #7
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <open>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a0000f 	mov	r0, #15
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <mknod>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00011 	mov	r0, #17
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <unlink>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00012 	mov	r0, #18
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <fstat>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00008 	mov	r0, #8
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <link>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00013 	mov	r0, #19
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <mkdir>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00014 	mov	r0, #20
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <chdir>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a00009 	mov	r0, #9
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <dup>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a0000a 	mov	r0, #10
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <getpid>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0000b 	mov	r0, #11
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <sbrk>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a0000c 	mov	r0, #12
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <sleep>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0000d 	mov	r0, #13
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <uptime>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a0000e 	mov	r0, #14
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <proclist>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00016 	mov	r0, #22
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <settickets>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00017 	mov	r0, #23
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <srand>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a00018 	mov	r0, #24
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <getpinfo>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a00019 	mov	r0, #25
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <print_pt>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a0001f 	mov	r0, #31
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <thread_create>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a00020 	mov	r0, #32
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <thread_exit>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a00021 	mov	r0, #33	@ 0x21
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <thread_join>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a00022 	mov	r0, #34	@ 0x22
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <waitpid>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a00023 	mov	r0, #35	@ 0x23
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <barrier_init>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00024 	mov	r0, #36	@ 0x24
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <barrier_check>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a00025 	mov	r0, #37	@ 0x25
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <sleepChan>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00026 	mov	r0, #38	@ 0x26
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <getChannel>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00027 	mov	r0, #39	@ 0x27
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <sigChan>:
     f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f54:	e1a04003 	mov	r4, r3
     f58:	e1a03002 	mov	r3, r2
     f5c:	e1a02001 	mov	r2, r1
     f60:	e1a01000 	mov	r1, r0
     f64:	e3a00028 	mov	r0, #40	@ 0x28
     f68:	ef000000 	svc	0x00000000
     f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f70:	e12fff1e 	bx	lr

00000f74 <sigOneChan>:
     f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f78:	e1a04003 	mov	r4, r3
     f7c:	e1a03002 	mov	r3, r2
     f80:	e1a02001 	mov	r2, r1
     f84:	e1a01000 	mov	r1, r0
     f88:	e3a00029 	mov	r0, #41	@ 0x29
     f8c:	ef000000 	svc	0x00000000
     f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f94:	e12fff1e 	bx	lr

00000f98 <syscall>:
     f98:	ef000000 	svc	0x00000000
     f9c:	e12fff1e 	bx	lr

00000fa0 <putc>:
     fa0:	e92d4800 	push	{fp, lr}
     fa4:	e28db004 	add	fp, sp, #4
     fa8:	e24dd008 	sub	sp, sp, #8
     fac:	e50b0008 	str	r0, [fp, #-8]
     fb0:	e1a03001 	mov	r3, r1
     fb4:	e54b3009 	strb	r3, [fp, #-9]
     fb8:	e24b3009 	sub	r3, fp, #9
     fbc:	e3a02001 	mov	r2, #1
     fc0:	e1a01003 	mov	r1, r3
     fc4:	e51b0008 	ldr	r0, [fp, #-8]
     fc8:	ebfffedb 	bl	b3c <write>
     fcc:	e1a00000 	nop			@ (mov r0, r0)
     fd0:	e24bd004 	sub	sp, fp, #4
     fd4:	e8bd8800 	pop	{fp, pc}

00000fd8 <printint>:
     fd8:	e92d4800 	push	{fp, lr}
     fdc:	e28db004 	add	fp, sp, #4
     fe0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     fe4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     fe8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     fec:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ff0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ff4:	e3a03000 	mov	r3, #0
     ff8:	e50b300c 	str	r3, [fp, #-12]
     ffc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1000:	e3530000 	cmp	r3, #0
    1004:	0a000008 	beq	102c <printint+0x54>
    1008:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    100c:	e3530000 	cmp	r3, #0
    1010:	aa000005 	bge	102c <printint+0x54>
    1014:	e3a03001 	mov	r3, #1
    1018:	e50b300c 	str	r3, [fp, #-12]
    101c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1020:	e2633000 	rsb	r3, r3, #0
    1024:	e50b3010 	str	r3, [fp, #-16]
    1028:	ea000001 	b	1034 <printint+0x5c>
    102c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1030:	e50b3010 	str	r3, [fp, #-16]
    1034:	e3a03000 	mov	r3, #0
    1038:	e50b3008 	str	r3, [fp, #-8]
    103c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1040:	e51b3010 	ldr	r3, [fp, #-16]
    1044:	e1a01002 	mov	r1, r2
    1048:	e1a00003 	mov	r0, r3
    104c:	eb0001d5 	bl	17a8 <__aeabi_uidivmod>
    1050:	e1a03001 	mov	r3, r1
    1054:	e1a01003 	mov	r1, r3
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e2832001 	add	r2, r3, #1
    1060:	e50b2008 	str	r2, [fp, #-8]
    1064:	e59f20a0 	ldr	r2, [pc, #160]	@ 110c <printint+0x134>
    1068:	e7d22001 	ldrb	r2, [r2, r1]
    106c:	e2433004 	sub	r3, r3, #4
    1070:	e083300b 	add	r3, r3, fp
    1074:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1078:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    107c:	e1a01003 	mov	r1, r3
    1080:	e51b0010 	ldr	r0, [fp, #-16]
    1084:	eb00018a 	bl	16b4 <__udivsi3>
    1088:	e1a03000 	mov	r3, r0
    108c:	e50b3010 	str	r3, [fp, #-16]
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e3530000 	cmp	r3, #0
    1098:	1affffe7 	bne	103c <printint+0x64>
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	0a00000e 	beq	10e4 <printint+0x10c>
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e2832001 	add	r2, r3, #1
    10b0:	e50b2008 	str	r2, [fp, #-8]
    10b4:	e2433004 	sub	r3, r3, #4
    10b8:	e083300b 	add	r3, r3, fp
    10bc:	e3a0202d 	mov	r2, #45	@ 0x2d
    10c0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10c4:	ea000006 	b	10e4 <printint+0x10c>
    10c8:	e24b2020 	sub	r2, fp, #32
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e0823003 	add	r3, r2, r3
    10d4:	e5d33000 	ldrb	r3, [r3]
    10d8:	e1a01003 	mov	r1, r3
    10dc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    10e0:	ebffffae 	bl	fa0 <putc>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e2433001 	sub	r3, r3, #1
    10ec:	e50b3008 	str	r3, [fp, #-8]
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e3530000 	cmp	r3, #0
    10f8:	aafffff2 	bge	10c8 <printint+0xf0>
    10fc:	e1a00000 	nop			@ (mov r0, r0)
    1100:	e1a00000 	nop			@ (mov r0, r0)
    1104:	e24bd004 	sub	sp, fp, #4
    1108:	e8bd8800 	pop	{fp, pc}
    110c:	000017d4 	.word	0x000017d4

00001110 <printf>:
    1110:	e92d000e 	push	{r1, r2, r3}
    1114:	e92d4800 	push	{fp, lr}
    1118:	e28db004 	add	fp, sp, #4
    111c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1120:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1124:	e3a03000 	mov	r3, #0
    1128:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    112c:	e28b3008 	add	r3, fp, #8
    1130:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1134:	e3a03000 	mov	r3, #0
    1138:	e50b3010 	str	r3, [fp, #-16]
    113c:	ea000074 	b	1314 <printf+0x204>
    1140:	e59b2004 	ldr	r2, [fp, #4]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e0823003 	add	r3, r2, r3
    114c:	e5d33000 	ldrb	r3, [r3]
    1150:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1158:	e3530000 	cmp	r3, #0
    115c:	1a00000b 	bne	1190 <printf+0x80>
    1160:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1164:	e3530025 	cmp	r3, #37	@ 0x25
    1168:	1a000002 	bne	1178 <printf+0x68>
    116c:	e3a03025 	mov	r3, #37	@ 0x25
    1170:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1174:	ea000063 	b	1308 <printf+0x1f8>
    1178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    117c:	e6ef3073 	uxtb	r3, r3
    1180:	e1a01003 	mov	r1, r3
    1184:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1188:	ebffff84 	bl	fa0 <putc>
    118c:	ea00005d 	b	1308 <printf+0x1f8>
    1190:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1194:	e3530025 	cmp	r3, #37	@ 0x25
    1198:	1a00005a 	bne	1308 <printf+0x1f8>
    119c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a0:	e3530064 	cmp	r3, #100	@ 0x64
    11a4:	1a00000a 	bne	11d4 <printf+0xc4>
    11a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11ac:	e5933000 	ldr	r3, [r3]
    11b0:	e1a01003 	mov	r1, r3
    11b4:	e3a03001 	mov	r3, #1
    11b8:	e3a0200a 	mov	r2, #10
    11bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c0:	ebffff84 	bl	fd8 <printint>
    11c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	e2833004 	add	r3, r3, #4
    11cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11d0:	ea00004a 	b	1300 <printf+0x1f0>
    11d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d8:	e3530078 	cmp	r3, #120	@ 0x78
    11dc:	0a000002 	beq	11ec <printf+0xdc>
    11e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11e4:	e3530070 	cmp	r3, #112	@ 0x70
    11e8:	1a00000a 	bne	1218 <printf+0x108>
    11ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f0:	e5933000 	ldr	r3, [r3]
    11f4:	e1a01003 	mov	r1, r3
    11f8:	e3a03000 	mov	r3, #0
    11fc:	e3a02010 	mov	r2, #16
    1200:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1204:	ebffff73 	bl	fd8 <printint>
    1208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    120c:	e2833004 	add	r3, r3, #4
    1210:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1214:	ea000039 	b	1300 <printf+0x1f0>
    1218:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    121c:	e3530073 	cmp	r3, #115	@ 0x73
    1220:	1a000018 	bne	1288 <printf+0x178>
    1224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e50b300c 	str	r3, [fp, #-12]
    1230:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1234:	e2833004 	add	r3, r3, #4
    1238:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    123c:	e51b300c 	ldr	r3, [fp, #-12]
    1240:	e3530000 	cmp	r3, #0
    1244:	1a00000a 	bne	1274 <printf+0x164>
    1248:	e59f30f4 	ldr	r3, [pc, #244]	@ 1344 <printf+0x234>
    124c:	e50b300c 	str	r3, [fp, #-12]
    1250:	ea000007 	b	1274 <printf+0x164>
    1254:	e51b300c 	ldr	r3, [fp, #-12]
    1258:	e5d33000 	ldrb	r3, [r3]
    125c:	e1a01003 	mov	r1, r3
    1260:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1264:	ebffff4d 	bl	fa0 <putc>
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e2833001 	add	r3, r3, #1
    1270:	e50b300c 	str	r3, [fp, #-12]
    1274:	e51b300c 	ldr	r3, [fp, #-12]
    1278:	e5d33000 	ldrb	r3, [r3]
    127c:	e3530000 	cmp	r3, #0
    1280:	1afffff3 	bne	1254 <printf+0x144>
    1284:	ea00001d 	b	1300 <printf+0x1f0>
    1288:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e3530063 	cmp	r3, #99	@ 0x63
    1290:	1a000009 	bne	12bc <printf+0x1ac>
    1294:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e6ef3073 	uxtb	r3, r3
    12a0:	e1a01003 	mov	r1, r3
    12a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12a8:	ebffff3c 	bl	fa0 <putc>
    12ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e2833004 	add	r3, r3, #4
    12b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	ea000010 	b	1300 <printf+0x1f0>
    12bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c0:	e3530025 	cmp	r3, #37	@ 0x25
    12c4:	1a000005 	bne	12e0 <printf+0x1d0>
    12c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12cc:	e6ef3073 	uxtb	r3, r3
    12d0:	e1a01003 	mov	r1, r3
    12d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12d8:	ebffff30 	bl	fa0 <putc>
    12dc:	ea000007 	b	1300 <printf+0x1f0>
    12e0:	e3a01025 	mov	r1, #37	@ 0x25
    12e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12e8:	ebffff2c 	bl	fa0 <putc>
    12ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e6ef3073 	uxtb	r3, r3
    12f4:	e1a01003 	mov	r1, r3
    12f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12fc:	ebffff27 	bl	fa0 <putc>
    1300:	e3a03000 	mov	r3, #0
    1304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1308:	e51b3010 	ldr	r3, [fp, #-16]
    130c:	e2833001 	add	r3, r3, #1
    1310:	e50b3010 	str	r3, [fp, #-16]
    1314:	e59b2004 	ldr	r2, [fp, #4]
    1318:	e51b3010 	ldr	r3, [fp, #-16]
    131c:	e0823003 	add	r3, r2, r3
    1320:	e5d33000 	ldrb	r3, [r3]
    1324:	e3530000 	cmp	r3, #0
    1328:	1affff84 	bne	1140 <printf+0x30>
    132c:	e1a00000 	nop			@ (mov r0, r0)
    1330:	e1a00000 	nop			@ (mov r0, r0)
    1334:	e24bd004 	sub	sp, fp, #4
    1338:	e8bd4800 	pop	{fp, lr}
    133c:	e28dd00c 	add	sp, sp, #12
    1340:	e12fff1e 	bx	lr
    1344:	000017cc 	.word	0x000017cc

00001348 <free>:
    1348:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    134c:	e28db000 	add	fp, sp, #0
    1350:	e24dd014 	sub	sp, sp, #20
    1354:	e50b0010 	str	r0, [fp, #-16]
    1358:	e51b3010 	ldr	r3, [fp, #-16]
    135c:	e2433008 	sub	r3, r3, #8
    1360:	e50b300c 	str	r3, [fp, #-12]
    1364:	e59f3154 	ldr	r3, [pc, #340]	@ 14c0 <free+0x178>
    1368:	e5933000 	ldr	r3, [r3]
    136c:	e50b3008 	str	r3, [fp, #-8]
    1370:	ea000010 	b	13b8 <free+0x70>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5933000 	ldr	r3, [r3]
    137c:	e51b2008 	ldr	r2, [fp, #-8]
    1380:	e1520003 	cmp	r2, r3
    1384:	3a000008 	bcc	13ac <free+0x64>
    1388:	e51b200c 	ldr	r2, [fp, #-12]
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e1520003 	cmp	r2, r3
    1394:	8a000010 	bhi	13dc <free+0x94>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5933000 	ldr	r3, [r3]
    13a0:	e51b200c 	ldr	r2, [fp, #-12]
    13a4:	e1520003 	cmp	r2, r3
    13a8:	3a00000b 	bcc	13dc <free+0x94>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5933000 	ldr	r3, [r3]
    13b4:	e50b3008 	str	r3, [fp, #-8]
    13b8:	e51b200c 	ldr	r2, [fp, #-12]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e1520003 	cmp	r2, r3
    13c4:	9affffea 	bls	1374 <free+0x2c>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e51b200c 	ldr	r2, [fp, #-12]
    13d4:	e1520003 	cmp	r2, r3
    13d8:	2affffe5 	bcs	1374 <free+0x2c>
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e5933004 	ldr	r3, [r3, #4]
    13e4:	e1a03183 	lsl	r3, r3, #3
    13e8:	e51b200c 	ldr	r2, [fp, #-12]
    13ec:	e0822003 	add	r2, r2, r3
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5933000 	ldr	r3, [r3]
    13f8:	e1520003 	cmp	r2, r3
    13fc:	1a00000d 	bne	1438 <free+0xf0>
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e5932004 	ldr	r2, [r3, #4]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5933000 	ldr	r3, [r3]
    1410:	e5933004 	ldr	r3, [r3, #4]
    1414:	e0822003 	add	r2, r2, r3
    1418:	e51b300c 	ldr	r3, [fp, #-12]
    141c:	e5832004 	str	r2, [r3, #4]
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e5932000 	ldr	r2, [r3]
    142c:	e51b300c 	ldr	r3, [fp, #-12]
    1430:	e5832000 	str	r2, [r3]
    1434:	ea000003 	b	1448 <free+0x100>
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e5932000 	ldr	r2, [r3]
    1440:	e51b300c 	ldr	r3, [fp, #-12]
    1444:	e5832000 	str	r2, [r3]
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5933004 	ldr	r3, [r3, #4]
    1450:	e1a03183 	lsl	r3, r3, #3
    1454:	e51b2008 	ldr	r2, [fp, #-8]
    1458:	e0823003 	add	r3, r2, r3
    145c:	e51b200c 	ldr	r2, [fp, #-12]
    1460:	e1520003 	cmp	r2, r3
    1464:	1a00000b 	bne	1498 <free+0x150>
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5932004 	ldr	r2, [r3, #4]
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5933004 	ldr	r3, [r3, #4]
    1478:	e0822003 	add	r2, r2, r3
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5832004 	str	r2, [r3, #4]
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e5932000 	ldr	r2, [r3]
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e5832000 	str	r2, [r3]
    1494:	ea000002 	b	14a4 <free+0x15c>
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e51b200c 	ldr	r2, [fp, #-12]
    14a0:	e5832000 	str	r2, [r3]
    14a4:	e59f2014 	ldr	r2, [pc, #20]	@ 14c0 <free+0x178>
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5823000 	str	r3, [r2]
    14b0:	e1a00000 	nop			@ (mov r0, r0)
    14b4:	e28bd000 	add	sp, fp, #0
    14b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14bc:	e12fff1e 	bx	lr
    14c0:	000017f0 	.word	0x000017f0

000014c4 <morecore>:
    14c4:	e92d4800 	push	{fp, lr}
    14c8:	e28db004 	add	fp, sp, #4
    14cc:	e24dd010 	sub	sp, sp, #16
    14d0:	e50b0010 	str	r0, [fp, #-16]
    14d4:	e51b3010 	ldr	r3, [fp, #-16]
    14d8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    14dc:	2a000001 	bcs	14e8 <morecore+0x24>
    14e0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    14e4:	e50b3010 	str	r3, [fp, #-16]
    14e8:	e51b3010 	ldr	r3, [fp, #-16]
    14ec:	e1a03183 	lsl	r3, r3, #3
    14f0:	e1a00003 	mov	r0, r3
    14f4:	ebfffe05 	bl	d10 <sbrk>
    14f8:	e50b0008 	str	r0, [fp, #-8]
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e3730001 	cmn	r3, #1
    1504:	1a000001 	bne	1510 <morecore+0x4c>
    1508:	e3a03000 	mov	r3, #0
    150c:	ea00000a 	b	153c <morecore+0x78>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e50b300c 	str	r3, [fp, #-12]
    1518:	e51b300c 	ldr	r3, [fp, #-12]
    151c:	e51b2010 	ldr	r2, [fp, #-16]
    1520:	e5832004 	str	r2, [r3, #4]
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e2833008 	add	r3, r3, #8
    152c:	e1a00003 	mov	r0, r3
    1530:	ebffff84 	bl	1348 <free>
    1534:	e59f300c 	ldr	r3, [pc, #12]	@ 1548 <morecore+0x84>
    1538:	e5933000 	ldr	r3, [r3]
    153c:	e1a00003 	mov	r0, r3
    1540:	e24bd004 	sub	sp, fp, #4
    1544:	e8bd8800 	pop	{fp, pc}
    1548:	000017f0 	.word	0x000017f0

0000154c <malloc>:
    154c:	e92d4800 	push	{fp, lr}
    1550:	e28db004 	add	fp, sp, #4
    1554:	e24dd018 	sub	sp, sp, #24
    1558:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    155c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1560:	e2833007 	add	r3, r3, #7
    1564:	e1a031a3 	lsr	r3, r3, #3
    1568:	e2833001 	add	r3, r3, #1
    156c:	e50b3010 	str	r3, [fp, #-16]
    1570:	e59f3134 	ldr	r3, [pc, #308]	@ 16ac <malloc+0x160>
    1574:	e5933000 	ldr	r3, [r3]
    1578:	e50b300c 	str	r3, [fp, #-12]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e3530000 	cmp	r3, #0
    1584:	1a00000b 	bne	15b8 <malloc+0x6c>
    1588:	e59f3120 	ldr	r3, [pc, #288]	@ 16b0 <malloc+0x164>
    158c:	e50b300c 	str	r3, [fp, #-12]
    1590:	e59f2114 	ldr	r2, [pc, #276]	@ 16ac <malloc+0x160>
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5823000 	str	r3, [r2]
    159c:	e59f3108 	ldr	r3, [pc, #264]	@ 16ac <malloc+0x160>
    15a0:	e5933000 	ldr	r3, [r3]
    15a4:	e59f2104 	ldr	r2, [pc, #260]	@ 16b0 <malloc+0x164>
    15a8:	e5823000 	str	r3, [r2]
    15ac:	e59f30fc 	ldr	r3, [pc, #252]	@ 16b0 <malloc+0x164>
    15b0:	e3a02000 	mov	r2, #0
    15b4:	e5832004 	str	r2, [r3, #4]
    15b8:	e51b300c 	ldr	r3, [fp, #-12]
    15bc:	e5933000 	ldr	r3, [r3]
    15c0:	e50b3008 	str	r3, [fp, #-8]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5933004 	ldr	r3, [r3, #4]
    15cc:	e51b2010 	ldr	r2, [fp, #-16]
    15d0:	e1520003 	cmp	r2, r3
    15d4:	8a00001e 	bhi	1654 <malloc+0x108>
    15d8:	e51b3008 	ldr	r3, [fp, #-8]
    15dc:	e5933004 	ldr	r3, [r3, #4]
    15e0:	e51b2010 	ldr	r2, [fp, #-16]
    15e4:	e1520003 	cmp	r2, r3
    15e8:	1a000004 	bne	1600 <malloc+0xb4>
    15ec:	e51b3008 	ldr	r3, [fp, #-8]
    15f0:	e5932000 	ldr	r2, [r3]
    15f4:	e51b300c 	ldr	r3, [fp, #-12]
    15f8:	e5832000 	str	r2, [r3]
    15fc:	ea00000e 	b	163c <malloc+0xf0>
    1600:	e51b3008 	ldr	r3, [fp, #-8]
    1604:	e5932004 	ldr	r2, [r3, #4]
    1608:	e51b3010 	ldr	r3, [fp, #-16]
    160c:	e0422003 	sub	r2, r2, r3
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5832004 	str	r2, [r3, #4]
    1618:	e51b3008 	ldr	r3, [fp, #-8]
    161c:	e5933004 	ldr	r3, [r3, #4]
    1620:	e1a03183 	lsl	r3, r3, #3
    1624:	e51b2008 	ldr	r2, [fp, #-8]
    1628:	e0823003 	add	r3, r2, r3
    162c:	e50b3008 	str	r3, [fp, #-8]
    1630:	e51b3008 	ldr	r3, [fp, #-8]
    1634:	e51b2010 	ldr	r2, [fp, #-16]
    1638:	e5832004 	str	r2, [r3, #4]
    163c:	e59f2068 	ldr	r2, [pc, #104]	@ 16ac <malloc+0x160>
    1640:	e51b300c 	ldr	r3, [fp, #-12]
    1644:	e5823000 	str	r3, [r2]
    1648:	e51b3008 	ldr	r3, [fp, #-8]
    164c:	e2833008 	add	r3, r3, #8
    1650:	ea000012 	b	16a0 <malloc+0x154>
    1654:	e59f3050 	ldr	r3, [pc, #80]	@ 16ac <malloc+0x160>
    1658:	e5933000 	ldr	r3, [r3]
    165c:	e51b2008 	ldr	r2, [fp, #-8]
    1660:	e1520003 	cmp	r2, r3
    1664:	1a000007 	bne	1688 <malloc+0x13c>
    1668:	e51b0010 	ldr	r0, [fp, #-16]
    166c:	ebffff94 	bl	14c4 <morecore>
    1670:	e50b0008 	str	r0, [fp, #-8]
    1674:	e51b3008 	ldr	r3, [fp, #-8]
    1678:	e3530000 	cmp	r3, #0
    167c:	1a000001 	bne	1688 <malloc+0x13c>
    1680:	e3a03000 	mov	r3, #0
    1684:	ea000005 	b	16a0 <malloc+0x154>
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e50b300c 	str	r3, [fp, #-12]
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e5933000 	ldr	r3, [r3]
    1698:	e50b3008 	str	r3, [fp, #-8]
    169c:	eaffffc8 	b	15c4 <malloc+0x78>
    16a0:	e1a00003 	mov	r0, r3
    16a4:	e24bd004 	sub	sp, fp, #4
    16a8:	e8bd8800 	pop	{fp, pc}
    16ac:	000017f0 	.word	0x000017f0
    16b0:	000017e8 	.word	0x000017e8

000016b4 <__udivsi3>:
    16b4:	e2512001 	subs	r2, r1, #1
    16b8:	012fff1e 	bxeq	lr
    16bc:	3a000036 	bcc	179c <__udivsi3+0xe8>
    16c0:	e1500001 	cmp	r0, r1
    16c4:	9a000022 	bls	1754 <__udivsi3+0xa0>
    16c8:	e1110002 	tst	r1, r2
    16cc:	0a000023 	beq	1760 <__udivsi3+0xac>
    16d0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    16d4:	01a01181 	lsleq	r1, r1, #3
    16d8:	03a03008 	moveq	r3, #8
    16dc:	13a03001 	movne	r3, #1
    16e0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    16e4:	31510000 	cmpcc	r1, r0
    16e8:	31a01201 	lslcc	r1, r1, #4
    16ec:	31a03203 	lslcc	r3, r3, #4
    16f0:	3afffffa 	bcc	16e0 <__udivsi3+0x2c>
    16f4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    16f8:	31510000 	cmpcc	r1, r0
    16fc:	31a01081 	lslcc	r1, r1, #1
    1700:	31a03083 	lslcc	r3, r3, #1
    1704:	3afffffa 	bcc	16f4 <__udivsi3+0x40>
    1708:	e3a02000 	mov	r2, #0
    170c:	e1500001 	cmp	r0, r1
    1710:	20400001 	subcs	r0, r0, r1
    1714:	21822003 	orrcs	r2, r2, r3
    1718:	e15000a1 	cmp	r0, r1, lsr #1
    171c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1720:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1724:	e1500121 	cmp	r0, r1, lsr #2
    1728:	20400121 	subcs	r0, r0, r1, lsr #2
    172c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1730:	e15001a1 	cmp	r0, r1, lsr #3
    1734:	204001a1 	subcs	r0, r0, r1, lsr #3
    1738:	218221a3 	orrcs	r2, r2, r3, lsr #3
    173c:	e3500000 	cmp	r0, #0
    1740:	11b03223 	lsrsne	r3, r3, #4
    1744:	11a01221 	lsrne	r1, r1, #4
    1748:	1affffef 	bne	170c <__udivsi3+0x58>
    174c:	e1a00002 	mov	r0, r2
    1750:	e12fff1e 	bx	lr
    1754:	03a00001 	moveq	r0, #1
    1758:	13a00000 	movne	r0, #0
    175c:	e12fff1e 	bx	lr
    1760:	e3510801 	cmp	r1, #65536	@ 0x10000
    1764:	21a01821 	lsrcs	r1, r1, #16
    1768:	23a02010 	movcs	r2, #16
    176c:	33a02000 	movcc	r2, #0
    1770:	e3510c01 	cmp	r1, #256	@ 0x100
    1774:	21a01421 	lsrcs	r1, r1, #8
    1778:	22822008 	addcs	r2, r2, #8
    177c:	e3510010 	cmp	r1, #16
    1780:	21a01221 	lsrcs	r1, r1, #4
    1784:	22822004 	addcs	r2, r2, #4
    1788:	e3510004 	cmp	r1, #4
    178c:	82822003 	addhi	r2, r2, #3
    1790:	908220a1 	addls	r2, r2, r1, lsr #1
    1794:	e1a00230 	lsr	r0, r0, r2
    1798:	e12fff1e 	bx	lr
    179c:	e3500000 	cmp	r0, #0
    17a0:	13e00000 	mvnne	r0, #0
    17a4:	ea000007 	b	17c8 <__aeabi_idiv0>

000017a8 <__aeabi_uidivmod>:
    17a8:	e3510000 	cmp	r1, #0
    17ac:	0afffffa 	beq	179c <__udivsi3+0xe8>
    17b0:	e92d4003 	push	{r0, r1, lr}
    17b4:	ebffffbe 	bl	16b4 <__udivsi3>
    17b8:	e8bd4006 	pop	{r1, r2, lr}
    17bc:	e0030092 	mul	r3, r2, r0
    17c0:	e0411003 	sub	r1, r1, r3
    17c4:	e12fff1e 	bx	lr

000017c8 <__aeabi_idiv0>:
    17c8:	e12fff1e 	bx	lr
