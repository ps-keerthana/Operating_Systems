
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
      28:	eb00032a 	bl	cd8 <printf>
      2c:	eb0001ea 	bl	7dc <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb00023a 	bl	944 <unlink>
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
      84:	eb000313 	bl	cd8 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb0001cb 	bl	7dc <exit>
      ac:	00001394 	.word	0x00001394
      b0:	000013a8 	.word	0x000013a8

000000b4 <pg_pte>:
      b4:	e92d4800 	push	{fp, lr}
      b8:	e28db004 	add	fp, sp, #4
      bc:	e24dd008 	sub	sp, sp, #8
      c0:	e50b0008 	str	r0, [fp, #-8]
      c4:	e51b1008 	ldr	r1, [fp, #-8]
      c8:	e3a00065 	mov	r0, #101	@ 0x65
      cc:	eb0002a3 	bl	b60 <syscall>
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
      f4:	e3a00066 	mov	r0, #102	@ 0x66
      f8:	eb000298 	bl	b60 <syscall>
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
     120:	e3a00067 	mov	r0, #103	@ 0x67
     124:	eb00028d 	bl	b60 <syscall>
     128:	e1a03000 	mov	r3, r0
     12c:	e1a00003 	mov	r0, r3
     130:	e24bd004 	sub	sp, fp, #4
     134:	e8bd8800 	pop	{fp, pc}

00000138 <kpt>:
     138:	e92d4800 	push	{fp, lr}
     13c:	e28db004 	add	fp, sp, #4
     140:	e3a00068 	mov	r0, #104	@ 0x68
     144:	eb000285 	bl	b60 <syscall>
     148:	e1a03000 	mov	r3, r0
     14c:	e1a00003 	mov	r0, r3
     150:	e8bd8800 	pop	{fp, pc}

00000154 <ugetpid>:
     154:	e92d4800 	push	{fp, lr}
     158:	e28db004 	add	fp, sp, #4
     15c:	e3a00069 	mov	r0, #105	@ 0x69
     160:	eb00027e 	bl	b60 <syscall>
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
     464:	eb0000f7 	bl	848 <read>
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
     50c:	eb0000fa 	bl	8fc <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb00010c 	bl	968 <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0000d3 	bl	890 <close>
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

000007b8 <fork>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00001 	mov	r0, #1
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <exit>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00002 	mov	r0, #2
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <wait>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00003 	mov	r0, #3
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <pipe>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00004 	mov	r0, #4
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <read>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00005 	mov	r0, #5
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <write>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00010 	mov	r0, #16
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <close>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a00015 	mov	r0, #21
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <kill>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00006 	mov	r0, #6
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <exec>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00007 	mov	r0, #7
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <open>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a0000f 	mov	r0, #15
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <mknod>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00011 	mov	r0, #17
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <unlink>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00012 	mov	r0, #18
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <fstat>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00008 	mov	r0, #8
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <link>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00013 	mov	r0, #19
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <mkdir>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00014 	mov	r0, #20
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <chdir>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00009 	mov	r0, #9
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <dup>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a0000a 	mov	r0, #10
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <getpid>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a0000b 	mov	r0, #11
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <sbrk>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a0000c 	mov	r0, #12
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <sleep>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a0000d 	mov	r0, #13
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <uptime>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a0000e 	mov	r0, #14
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <proclist>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00016 	mov	r0, #22
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <settickets>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00017 	mov	r0, #23
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <srand>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00018 	mov	r0, #24
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <getpinfo>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00019 	mov	r0, #25
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <print_pt>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a0006a 	mov	r0, #106	@ 0x6a
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <syscall>:
     b60:	ef000000 	svc	0x00000000
     b64:	e12fff1e 	bx	lr

00000b68 <putc>:
     b68:	e92d4800 	push	{fp, lr}
     b6c:	e28db004 	add	fp, sp, #4
     b70:	e24dd008 	sub	sp, sp, #8
     b74:	e50b0008 	str	r0, [fp, #-8]
     b78:	e1a03001 	mov	r3, r1
     b7c:	e54b3009 	strb	r3, [fp, #-9]
     b80:	e24b3009 	sub	r3, fp, #9
     b84:	e3a02001 	mov	r2, #1
     b88:	e1a01003 	mov	r1, r3
     b8c:	e51b0008 	ldr	r0, [fp, #-8]
     b90:	ebffff35 	bl	86c <write>
     b94:	e1a00000 	nop			@ (mov r0, r0)
     b98:	e24bd004 	sub	sp, fp, #4
     b9c:	e8bd8800 	pop	{fp, pc}

00000ba0 <printint>:
     ba0:	e92d4800 	push	{fp, lr}
     ba4:	e28db004 	add	fp, sp, #4
     ba8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bac:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bb0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bb4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bb8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     bbc:	e3a03000 	mov	r3, #0
     bc0:	e50b300c 	str	r3, [fp, #-12]
     bc4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bc8:	e3530000 	cmp	r3, #0
     bcc:	0a000008 	beq	bf4 <printint+0x54>
     bd0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bd4:	e3530000 	cmp	r3, #0
     bd8:	aa000005 	bge	bf4 <printint+0x54>
     bdc:	e3a03001 	mov	r3, #1
     be0:	e50b300c 	str	r3, [fp, #-12]
     be4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     be8:	e2633000 	rsb	r3, r3, #0
     bec:	e50b3010 	str	r3, [fp, #-16]
     bf0:	ea000001 	b	bfc <printint+0x5c>
     bf4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bf8:	e50b3010 	str	r3, [fp, #-16]
     bfc:	e3a03000 	mov	r3, #0
     c00:	e50b3008 	str	r3, [fp, #-8]
     c04:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c08:	e51b3010 	ldr	r3, [fp, #-16]
     c0c:	e1a01002 	mov	r1, r2
     c10:	e1a00003 	mov	r0, r3
     c14:	eb0001d5 	bl	1370 <__aeabi_uidivmod>
     c18:	e1a03001 	mov	r3, r1
     c1c:	e1a01003 	mov	r1, r3
     c20:	e51b3008 	ldr	r3, [fp, #-8]
     c24:	e2832001 	add	r2, r3, #1
     c28:	e50b2008 	str	r2, [fp, #-8]
     c2c:	e59f20a0 	ldr	r2, [pc, #160]	@ cd4 <printint+0x134>
     c30:	e7d22001 	ldrb	r2, [r2, r1]
     c34:	e2433004 	sub	r3, r3, #4
     c38:	e083300b 	add	r3, r3, fp
     c3c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c40:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c44:	e1a01003 	mov	r1, r3
     c48:	e51b0010 	ldr	r0, [fp, #-16]
     c4c:	eb00018a 	bl	127c <__udivsi3>
     c50:	e1a03000 	mov	r3, r0
     c54:	e50b3010 	str	r3, [fp, #-16]
     c58:	e51b3010 	ldr	r3, [fp, #-16]
     c5c:	e3530000 	cmp	r3, #0
     c60:	1affffe7 	bne	c04 <printint+0x64>
     c64:	e51b300c 	ldr	r3, [fp, #-12]
     c68:	e3530000 	cmp	r3, #0
     c6c:	0a00000e 	beq	cac <printint+0x10c>
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e2832001 	add	r2, r3, #1
     c78:	e50b2008 	str	r2, [fp, #-8]
     c7c:	e2433004 	sub	r3, r3, #4
     c80:	e083300b 	add	r3, r3, fp
     c84:	e3a0202d 	mov	r2, #45	@ 0x2d
     c88:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c8c:	ea000006 	b	cac <printint+0x10c>
     c90:	e24b2020 	sub	r2, fp, #32
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e0823003 	add	r3, r2, r3
     c9c:	e5d33000 	ldrb	r3, [r3]
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ca8:	ebffffae 	bl	b68 <putc>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e2433001 	sub	r3, r3, #1
     cb4:	e50b3008 	str	r3, [fp, #-8]
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e3530000 	cmp	r3, #0
     cc0:	aafffff2 	bge	c90 <printint+0xf0>
     cc4:	e1a00000 	nop			@ (mov r0, r0)
     cc8:	e1a00000 	nop			@ (mov r0, r0)
     ccc:	e24bd004 	sub	sp, fp, #4
     cd0:	e8bd8800 	pop	{fp, pc}
     cd4:	000013cc 	.word	0x000013cc

00000cd8 <printf>:
     cd8:	e92d000e 	push	{r1, r2, r3}
     cdc:	e92d4800 	push	{fp, lr}
     ce0:	e28db004 	add	fp, sp, #4
     ce4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ce8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cec:	e3a03000 	mov	r3, #0
     cf0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cf4:	e28b3008 	add	r3, fp, #8
     cf8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cfc:	e3a03000 	mov	r3, #0
     d00:	e50b3010 	str	r3, [fp, #-16]
     d04:	ea000074 	b	edc <printf+0x204>
     d08:	e59b2004 	ldr	r2, [fp, #4]
     d0c:	e51b3010 	ldr	r3, [fp, #-16]
     d10:	e0823003 	add	r3, r2, r3
     d14:	e5d33000 	ldrb	r3, [r3]
     d18:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d20:	e3530000 	cmp	r3, #0
     d24:	1a00000b 	bne	d58 <printf+0x80>
     d28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d2c:	e3530025 	cmp	r3, #37	@ 0x25
     d30:	1a000002 	bne	d40 <printf+0x68>
     d34:	e3a03025 	mov	r3, #37	@ 0x25
     d38:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d3c:	ea000063 	b	ed0 <printf+0x1f8>
     d40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d44:	e6ef3073 	uxtb	r3, r3
     d48:	e1a01003 	mov	r1, r3
     d4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d50:	ebffff84 	bl	b68 <putc>
     d54:	ea00005d 	b	ed0 <printf+0x1f8>
     d58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d5c:	e3530025 	cmp	r3, #37	@ 0x25
     d60:	1a00005a 	bne	ed0 <printf+0x1f8>
     d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d68:	e3530064 	cmp	r3, #100	@ 0x64
     d6c:	1a00000a 	bne	d9c <printf+0xc4>
     d70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e1a01003 	mov	r1, r3
     d7c:	e3a03001 	mov	r3, #1
     d80:	e3a0200a 	mov	r2, #10
     d84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d88:	ebffff84 	bl	ba0 <printint>
     d8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d90:	e2833004 	add	r3, r3, #4
     d94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d98:	ea00004a 	b	ec8 <printf+0x1f0>
     d9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da0:	e3530078 	cmp	r3, #120	@ 0x78
     da4:	0a000002 	beq	db4 <printf+0xdc>
     da8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dac:	e3530070 	cmp	r3, #112	@ 0x70
     db0:	1a00000a 	bne	de0 <printf+0x108>
     db4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e1a01003 	mov	r1, r3
     dc0:	e3a03000 	mov	r3, #0
     dc4:	e3a02010 	mov	r2, #16
     dc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dcc:	ebffff73 	bl	ba0 <printint>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e2833004 	add	r3, r3, #4
     dd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	ea000039 	b	ec8 <printf+0x1f0>
     de0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e3530073 	cmp	r3, #115	@ 0x73
     de8:	1a000018 	bne	e50 <printf+0x178>
     dec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e50b300c 	str	r3, [fp, #-12]
     df8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	e2833004 	add	r3, r3, #4
     e00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e3530000 	cmp	r3, #0
     e0c:	1a00000a 	bne	e3c <printf+0x164>
     e10:	e59f30f4 	ldr	r3, [pc, #244]	@ f0c <printf+0x234>
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	ea000007 	b	e3c <printf+0x164>
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e5d33000 	ldrb	r3, [r3]
     e24:	e1a01003 	mov	r1, r3
     e28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e2c:	ebffff4d 	bl	b68 <putc>
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e2833001 	add	r3, r3, #1
     e38:	e50b300c 	str	r3, [fp, #-12]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e5d33000 	ldrb	r3, [r3]
     e44:	e3530000 	cmp	r3, #0
     e48:	1afffff3 	bne	e1c <printf+0x144>
     e4c:	ea00001d 	b	ec8 <printf+0x1f0>
     e50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e54:	e3530063 	cmp	r3, #99	@ 0x63
     e58:	1a000009 	bne	e84 <printf+0x1ac>
     e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e6ef3073 	uxtb	r3, r3
     e68:	e1a01003 	mov	r1, r3
     e6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e70:	ebffff3c 	bl	b68 <putc>
     e74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e78:	e2833004 	add	r3, r3, #4
     e7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e80:	ea000010 	b	ec8 <printf+0x1f0>
     e84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e88:	e3530025 	cmp	r3, #37	@ 0x25
     e8c:	1a000005 	bne	ea8 <printf+0x1d0>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e94:	e6ef3073 	uxtb	r3, r3
     e98:	e1a01003 	mov	r1, r3
     e9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea0:	ebffff30 	bl	b68 <putc>
     ea4:	ea000007 	b	ec8 <printf+0x1f0>
     ea8:	e3a01025 	mov	r1, #37	@ 0x25
     eac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb0:	ebffff2c 	bl	b68 <putc>
     eb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e6ef3073 	uxtb	r3, r3
     ebc:	e1a01003 	mov	r1, r3
     ec0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec4:	ebffff27 	bl	b68 <putc>
     ec8:	e3a03000 	mov	r3, #0
     ecc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ed0:	e51b3010 	ldr	r3, [fp, #-16]
     ed4:	e2833001 	add	r3, r3, #1
     ed8:	e50b3010 	str	r3, [fp, #-16]
     edc:	e59b2004 	ldr	r2, [fp, #4]
     ee0:	e51b3010 	ldr	r3, [fp, #-16]
     ee4:	e0823003 	add	r3, r2, r3
     ee8:	e5d33000 	ldrb	r3, [r3]
     eec:	e3530000 	cmp	r3, #0
     ef0:	1affff84 	bne	d08 <printf+0x30>
     ef4:	e1a00000 	nop			@ (mov r0, r0)
     ef8:	e1a00000 	nop			@ (mov r0, r0)
     efc:	e24bd004 	sub	sp, fp, #4
     f00:	e8bd4800 	pop	{fp, lr}
     f04:	e28dd00c 	add	sp, sp, #12
     f08:	e12fff1e 	bx	lr
     f0c:	000013c4 	.word	0x000013c4

00000f10 <free>:
     f10:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f14:	e28db000 	add	fp, sp, #0
     f18:	e24dd014 	sub	sp, sp, #20
     f1c:	e50b0010 	str	r0, [fp, #-16]
     f20:	e51b3010 	ldr	r3, [fp, #-16]
     f24:	e2433008 	sub	r3, r3, #8
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e59f3154 	ldr	r3, [pc, #340]	@ 1088 <free+0x178>
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e50b3008 	str	r3, [fp, #-8]
     f38:	ea000010 	b	f80 <free+0x70>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e51b2008 	ldr	r2, [fp, #-8]
     f48:	e1520003 	cmp	r2, r3
     f4c:	3a000008 	bcc	f74 <free+0x64>
     f50:	e51b200c 	ldr	r2, [fp, #-12]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e1520003 	cmp	r2, r3
     f5c:	8a000010 	bhi	fa4 <free+0x94>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e51b200c 	ldr	r2, [fp, #-12]
     f6c:	e1520003 	cmp	r2, r3
     f70:	3a00000b 	bcc	fa4 <free+0x94>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e50b3008 	str	r3, [fp, #-8]
     f80:	e51b200c 	ldr	r2, [fp, #-12]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e1520003 	cmp	r2, r3
     f8c:	9affffea 	bls	f3c <free+0x2c>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e51b200c 	ldr	r2, [fp, #-12]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	2affffe5 	bcs	f3c <free+0x2c>
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5933004 	ldr	r3, [r3, #4]
     fac:	e1a03183 	lsl	r3, r3, #3
     fb0:	e51b200c 	ldr	r2, [fp, #-12]
     fb4:	e0822003 	add	r2, r2, r3
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e1520003 	cmp	r2, r3
     fc4:	1a00000d 	bne	1000 <free+0xf0>
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5932004 	ldr	r2, [r3, #4]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5933000 	ldr	r3, [r3]
     fd8:	e5933004 	ldr	r3, [r3, #4]
     fdc:	e0822003 	add	r2, r2, r3
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5832004 	str	r2, [r3, #4]
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e5932000 	ldr	r2, [r3]
     ff4:	e51b300c 	ldr	r3, [fp, #-12]
     ff8:	e5832000 	str	r2, [r3]
     ffc:	ea000003 	b	1010 <free+0x100>
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e5932000 	ldr	r2, [r3]
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5832000 	str	r2, [r3]
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5933004 	ldr	r3, [r3, #4]
    1018:	e1a03183 	lsl	r3, r3, #3
    101c:	e51b2008 	ldr	r2, [fp, #-8]
    1020:	e0823003 	add	r3, r2, r3
    1024:	e51b200c 	ldr	r2, [fp, #-12]
    1028:	e1520003 	cmp	r2, r3
    102c:	1a00000b 	bne	1060 <free+0x150>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5932004 	ldr	r2, [r3, #4]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e5933004 	ldr	r3, [r3, #4]
    1040:	e0822003 	add	r2, r2, r3
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5832004 	str	r2, [r3, #4]
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5932000 	ldr	r2, [r3]
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5832000 	str	r2, [r3]
    105c:	ea000002 	b	106c <free+0x15c>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e51b200c 	ldr	r2, [fp, #-12]
    1068:	e5832000 	str	r2, [r3]
    106c:	e59f2014 	ldr	r2, [pc, #20]	@ 1088 <free+0x178>
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e5823000 	str	r3, [r2]
    1078:	e1a00000 	nop			@ (mov r0, r0)
    107c:	e28bd000 	add	sp, fp, #0
    1080:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1084:	e12fff1e 	bx	lr
    1088:	000013e8 	.word	0x000013e8

0000108c <morecore>:
    108c:	e92d4800 	push	{fp, lr}
    1090:	e28db004 	add	fp, sp, #4
    1094:	e24dd010 	sub	sp, sp, #16
    1098:	e50b0010 	str	r0, [fp, #-16]
    109c:	e51b3010 	ldr	r3, [fp, #-16]
    10a0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10a4:	2a000001 	bcs	10b0 <morecore+0x24>
    10a8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10ac:	e50b3010 	str	r3, [fp, #-16]
    10b0:	e51b3010 	ldr	r3, [fp, #-16]
    10b4:	e1a03183 	lsl	r3, r3, #3
    10b8:	e1a00003 	mov	r0, r3
    10bc:	ebfffe5f 	bl	a40 <sbrk>
    10c0:	e50b0008 	str	r0, [fp, #-8]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e3730001 	cmn	r3, #1
    10cc:	1a000001 	bne	10d8 <morecore+0x4c>
    10d0:	e3a03000 	mov	r3, #0
    10d4:	ea00000a 	b	1104 <morecore+0x78>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e50b300c 	str	r3, [fp, #-12]
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e51b2010 	ldr	r2, [fp, #-16]
    10e8:	e5832004 	str	r2, [r3, #4]
    10ec:	e51b300c 	ldr	r3, [fp, #-12]
    10f0:	e2833008 	add	r3, r3, #8
    10f4:	e1a00003 	mov	r0, r3
    10f8:	ebffff84 	bl	f10 <free>
    10fc:	e59f300c 	ldr	r3, [pc, #12]	@ 1110 <morecore+0x84>
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e1a00003 	mov	r0, r3
    1108:	e24bd004 	sub	sp, fp, #4
    110c:	e8bd8800 	pop	{fp, pc}
    1110:	000013e8 	.word	0x000013e8

00001114 <malloc>:
    1114:	e92d4800 	push	{fp, lr}
    1118:	e28db004 	add	fp, sp, #4
    111c:	e24dd018 	sub	sp, sp, #24
    1120:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1124:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1128:	e2833007 	add	r3, r3, #7
    112c:	e1a031a3 	lsr	r3, r3, #3
    1130:	e2833001 	add	r3, r3, #1
    1134:	e50b3010 	str	r3, [fp, #-16]
    1138:	e59f3134 	ldr	r3, [pc, #308]	@ 1274 <malloc+0x160>
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e50b300c 	str	r3, [fp, #-12]
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e3530000 	cmp	r3, #0
    114c:	1a00000b 	bne	1180 <malloc+0x6c>
    1150:	e59f3120 	ldr	r3, [pc, #288]	@ 1278 <malloc+0x164>
    1154:	e50b300c 	str	r3, [fp, #-12]
    1158:	e59f2114 	ldr	r2, [pc, #276]	@ 1274 <malloc+0x160>
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5823000 	str	r3, [r2]
    1164:	e59f3108 	ldr	r3, [pc, #264]	@ 1274 <malloc+0x160>
    1168:	e5933000 	ldr	r3, [r3]
    116c:	e59f2104 	ldr	r2, [pc, #260]	@ 1278 <malloc+0x164>
    1170:	e5823000 	str	r3, [r2]
    1174:	e59f30fc 	ldr	r3, [pc, #252]	@ 1278 <malloc+0x164>
    1178:	e3a02000 	mov	r2, #0
    117c:	e5832004 	str	r2, [r3, #4]
    1180:	e51b300c 	ldr	r3, [fp, #-12]
    1184:	e5933000 	ldr	r3, [r3]
    1188:	e50b3008 	str	r3, [fp, #-8]
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e5933004 	ldr	r3, [r3, #4]
    1194:	e51b2010 	ldr	r2, [fp, #-16]
    1198:	e1520003 	cmp	r2, r3
    119c:	8a00001e 	bhi	121c <malloc+0x108>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933004 	ldr	r3, [r3, #4]
    11a8:	e51b2010 	ldr	r2, [fp, #-16]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	1a000004 	bne	11c8 <malloc+0xb4>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5932000 	ldr	r2, [r3]
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e5832000 	str	r2, [r3]
    11c4:	ea00000e 	b	1204 <malloc+0xf0>
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5932004 	ldr	r2, [r3, #4]
    11d0:	e51b3010 	ldr	r3, [fp, #-16]
    11d4:	e0422003 	sub	r2, r2, r3
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e5832004 	str	r2, [r3, #4]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933004 	ldr	r3, [r3, #4]
    11e8:	e1a03183 	lsl	r3, r3, #3
    11ec:	e51b2008 	ldr	r2, [fp, #-8]
    11f0:	e0823003 	add	r3, r2, r3
    11f4:	e50b3008 	str	r3, [fp, #-8]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e51b2010 	ldr	r2, [fp, #-16]
    1200:	e5832004 	str	r2, [r3, #4]
    1204:	e59f2068 	ldr	r2, [pc, #104]	@ 1274 <malloc+0x160>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5823000 	str	r3, [r2]
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e2833008 	add	r3, r3, #8
    1218:	ea000012 	b	1268 <malloc+0x154>
    121c:	e59f3050 	ldr	r3, [pc, #80]	@ 1274 <malloc+0x160>
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e51b2008 	ldr	r2, [fp, #-8]
    1228:	e1520003 	cmp	r2, r3
    122c:	1a000007 	bne	1250 <malloc+0x13c>
    1230:	e51b0010 	ldr	r0, [fp, #-16]
    1234:	ebffff94 	bl	108c <morecore>
    1238:	e50b0008 	str	r0, [fp, #-8]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e3530000 	cmp	r3, #0
    1244:	1a000001 	bne	1250 <malloc+0x13c>
    1248:	e3a03000 	mov	r3, #0
    124c:	ea000005 	b	1268 <malloc+0x154>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e50b300c 	str	r3, [fp, #-12]
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e50b3008 	str	r3, [fp, #-8]
    1264:	eaffffc8 	b	118c <malloc+0x78>
    1268:	e1a00003 	mov	r0, r3
    126c:	e24bd004 	sub	sp, fp, #4
    1270:	e8bd8800 	pop	{fp, pc}
    1274:	000013e8 	.word	0x000013e8
    1278:	000013e0 	.word	0x000013e0

0000127c <__udivsi3>:
    127c:	e2512001 	subs	r2, r1, #1
    1280:	012fff1e 	bxeq	lr
    1284:	3a000036 	bcc	1364 <__udivsi3+0xe8>
    1288:	e1500001 	cmp	r0, r1
    128c:	9a000022 	bls	131c <__udivsi3+0xa0>
    1290:	e1110002 	tst	r1, r2
    1294:	0a000023 	beq	1328 <__udivsi3+0xac>
    1298:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    129c:	01a01181 	lsleq	r1, r1, #3
    12a0:	03a03008 	moveq	r3, #8
    12a4:	13a03001 	movne	r3, #1
    12a8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12ac:	31510000 	cmpcc	r1, r0
    12b0:	31a01201 	lslcc	r1, r1, #4
    12b4:	31a03203 	lslcc	r3, r3, #4
    12b8:	3afffffa 	bcc	12a8 <__udivsi3+0x2c>
    12bc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12c0:	31510000 	cmpcc	r1, r0
    12c4:	31a01081 	lslcc	r1, r1, #1
    12c8:	31a03083 	lslcc	r3, r3, #1
    12cc:	3afffffa 	bcc	12bc <__udivsi3+0x40>
    12d0:	e3a02000 	mov	r2, #0
    12d4:	e1500001 	cmp	r0, r1
    12d8:	20400001 	subcs	r0, r0, r1
    12dc:	21822003 	orrcs	r2, r2, r3
    12e0:	e15000a1 	cmp	r0, r1, lsr #1
    12e4:	204000a1 	subcs	r0, r0, r1, lsr #1
    12e8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12ec:	e1500121 	cmp	r0, r1, lsr #2
    12f0:	20400121 	subcs	r0, r0, r1, lsr #2
    12f4:	21822123 	orrcs	r2, r2, r3, lsr #2
    12f8:	e15001a1 	cmp	r0, r1, lsr #3
    12fc:	204001a1 	subcs	r0, r0, r1, lsr #3
    1300:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1304:	e3500000 	cmp	r0, #0
    1308:	11b03223 	lsrsne	r3, r3, #4
    130c:	11a01221 	lsrne	r1, r1, #4
    1310:	1affffef 	bne	12d4 <__udivsi3+0x58>
    1314:	e1a00002 	mov	r0, r2
    1318:	e12fff1e 	bx	lr
    131c:	03a00001 	moveq	r0, #1
    1320:	13a00000 	movne	r0, #0
    1324:	e12fff1e 	bx	lr
    1328:	e3510801 	cmp	r1, #65536	@ 0x10000
    132c:	21a01821 	lsrcs	r1, r1, #16
    1330:	23a02010 	movcs	r2, #16
    1334:	33a02000 	movcc	r2, #0
    1338:	e3510c01 	cmp	r1, #256	@ 0x100
    133c:	21a01421 	lsrcs	r1, r1, #8
    1340:	22822008 	addcs	r2, r2, #8
    1344:	e3510010 	cmp	r1, #16
    1348:	21a01221 	lsrcs	r1, r1, #4
    134c:	22822004 	addcs	r2, r2, #4
    1350:	e3510004 	cmp	r1, #4
    1354:	82822003 	addhi	r2, r2, #3
    1358:	908220a1 	addls	r2, r2, r1, lsr #1
    135c:	e1a00230 	lsr	r0, r0, r2
    1360:	e12fff1e 	bx	lr
    1364:	e3500000 	cmp	r0, #0
    1368:	13e00000 	mvnne	r0, #0
    136c:	ea000007 	b	1390 <__aeabi_idiv0>

00001370 <__aeabi_uidivmod>:
    1370:	e3510000 	cmp	r1, #0
    1374:	0afffffa 	beq	1364 <__udivsi3+0xe8>
    1378:	e92d4003 	push	{r0, r1, lr}
    137c:	ebffffbe 	bl	127c <__udivsi3>
    1380:	e8bd4006 	pop	{r1, r2, lr}
    1384:	e0030092 	mul	r3, r2, r0
    1388:	e0411003 	sub	r1, r1, r3
    138c:	e12fff1e 	bx	lr

00001390 <__aeabi_idiv0>:
    1390:	e12fff1e 	bx	lr
