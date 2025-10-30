
_t_waitpid:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb0002bd 	bl	b08 <fork>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530000 	cmp	r3, #0
      1c:	1a000002 	bne	2c <main+0x2c>
      20:	e3a0000a 	mov	r0, #10
      24:	eb000362 	bl	db4 <sleep>
      28:	eb0002bf 	bl	b2c <exit>
      2c:	e51b3008 	ldr	r3, [fp, #-8]
      30:	e2833001 	add	r3, r3, #1
      34:	e1a00003 	mov	r0, r3
      38:	eb0003b7 	bl	f1c <waitpid>
      3c:	e50b000c 	str	r0, [fp, #-12]
      40:	e51b200c 	ldr	r2, [fp, #-12]
      44:	e59f1048 	ldr	r1, [pc, #72]	@ 94 <main+0x94>
      48:	e3a00001 	mov	r0, #1
      4c:	eb00044f 	bl	1190 <printf>
      50:	e51b0008 	ldr	r0, [fp, #-8]
      54:	eb0003b0 	bl	f1c <waitpid>
      58:	e50b000c 	str	r0, [fp, #-12]
      5c:	e51b200c 	ldr	r2, [fp, #-12]
      60:	e59f1030 	ldr	r1, [pc, #48]	@ 98 <main+0x98>
      64:	e3a00001 	mov	r0, #1
      68:	eb000448 	bl	1190 <printf>
      6c:	eb0002b7 	bl	b50 <wait>
      70:	e50b000c 	str	r0, [fp, #-12]
      74:	e51b200c 	ldr	r2, [fp, #-12]
      78:	e59f101c 	ldr	r1, [pc, #28]	@ 9c <main+0x9c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb000442 	bl	1190 <printf>
      84:	e59f1014 	ldr	r1, [pc, #20]	@ a0 <main+0xa0>
      88:	e3a00001 	mov	r0, #1
      8c:	eb00043f 	bl	1190 <printf>
      90:	eb0002a5 	bl	b2c <exit>
      94:	0000184c 	.word	0x0000184c
      98:	00001870 	.word	0x00001870
      9c:	00001894 	.word	0x00001894
      a0:	000018b0 	.word	0x000018b0

000000a4 <pg_pte>:
      a4:	e92d4800 	push	{fp, lr}
      a8:	e28db004 	add	fp, sp, #4
      ac:	e24dd008 	sub	sp, sp, #8
      b0:	e50b0008 	str	r0, [fp, #-8]
      b4:	e51b1008 	ldr	r1, [fp, #-8]
      b8:	e3a0001a 	mov	r0, #26
      bc:	eb0003d5 	bl	1018 <syscall>
      c0:	e1a03000 	mov	r3, r0
      c4:	e1a00003 	mov	r0, r3
      c8:	e24bd004 	sub	sp, fp, #4
      cc:	e8bd8800 	pop	{fp, pc}

000000d0 <pg_pa>:
      d0:	e92d4800 	push	{fp, lr}
      d4:	e28db004 	add	fp, sp, #4
      d8:	e24dd008 	sub	sp, sp, #8
      dc:	e50b0008 	str	r0, [fp, #-8]
      e0:	e51b1008 	ldr	r1, [fp, #-8]
      e4:	e3a0001b 	mov	r0, #27
      e8:	eb0003ca 	bl	1018 <syscall>
      ec:	e1a03000 	mov	r3, r0
      f0:	e1a00003 	mov	r0, r3
      f4:	e24bd004 	sub	sp, fp, #4
      f8:	e8bd8800 	pop	{fp, pc}

000000fc <pg_flags>:
      fc:	e92d4800 	push	{fp, lr}
     100:	e28db004 	add	fp, sp, #4
     104:	e24dd008 	sub	sp, sp, #8
     108:	e50b0008 	str	r0, [fp, #-8]
     10c:	e51b1008 	ldr	r1, [fp, #-8]
     110:	e3a0001c 	mov	r0, #28
     114:	eb0003bf 	bl	1018 <syscall>
     118:	e1a03000 	mov	r3, r0
     11c:	e1a00003 	mov	r0, r3
     120:	e24bd004 	sub	sp, fp, #4
     124:	e8bd8800 	pop	{fp, pc}

00000128 <kpt>:
     128:	e92d4800 	push	{fp, lr}
     12c:	e28db004 	add	fp, sp, #4
     130:	e3a0001d 	mov	r0, #29
     134:	eb0003b7 	bl	1018 <syscall>
     138:	e1a03000 	mov	r3, r0
     13c:	e1a00003 	mov	r0, r3
     140:	e8bd8800 	pop	{fp, pc}

00000144 <ugetpid>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e3a0001e 	mov	r0, #30
     150:	eb0003b0 	bl	1018 <syscall>
     154:	e1a03000 	mov	r3, r0
     158:	e1a00003 	mov	r0, r3
     15c:	e8bd8800 	pop	{fp, pc}

00000160 <strcpy>:
     160:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     164:	e28db000 	add	fp, sp, #0
     168:	e24dd014 	sub	sp, sp, #20
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e50b3008 	str	r3, [fp, #-8]
     17c:	e1a00000 	nop			@ (mov r0, r0)
     180:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     184:	e2823001 	add	r3, r2, #1
     188:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     18c:	e51b3010 	ldr	r3, [fp, #-16]
     190:	e2831001 	add	r1, r3, #1
     194:	e50b1010 	str	r1, [fp, #-16]
     198:	e5d22000 	ldrb	r2, [r2]
     19c:	e5c32000 	strb	r2, [r3]
     1a0:	e5d33000 	ldrb	r3, [r3]
     1a4:	e3530000 	cmp	r3, #0
     1a8:	1afffff4 	bne	180 <strcpy+0x20>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e28bd000 	add	sp, fp, #0
     1b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1bc:	e12fff1e 	bx	lr

000001c0 <strcmp>:
     1c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c4:	e28db000 	add	fp, sp, #0
     1c8:	e24dd00c 	sub	sp, sp, #12
     1cc:	e50b0008 	str	r0, [fp, #-8]
     1d0:	e50b100c 	str	r1, [fp, #-12]
     1d4:	ea000005 	b	1f0 <strcmp+0x30>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e2833001 	add	r3, r3, #1
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b300c 	ldr	r3, [fp, #-12]
     1e8:	e2833001 	add	r3, r3, #1
     1ec:	e50b300c 	str	r3, [fp, #-12]
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	0a000005 	beq	218 <strcmp+0x58>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e5d32000 	ldrb	r2, [r3]
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e1520003 	cmp	r2, r3
     214:	0affffef 	beq	1d8 <strcmp+0x18>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e1a02003 	mov	r2, r3
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e0423003 	sub	r3, r2, r3
     230:	e1a00003 	mov	r0, r3
     234:	e28bd000 	add	sp, fp, #0
     238:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     23c:	e12fff1e 	bx	lr

00000240 <strlen>:
     240:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     244:	e28db000 	add	fp, sp, #0
     248:	e24dd014 	sub	sp, sp, #20
     24c:	e50b0010 	str	r0, [fp, #-16]
     250:	e3a03000 	mov	r3, #0
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	ea000002 	b	268 <strlen+0x28>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e51b2010 	ldr	r2, [fp, #-16]
     270:	e0823003 	add	r3, r2, r3
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e3530000 	cmp	r3, #0
     27c:	1afffff6 	bne	25c <strlen+0x1c>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e1a00003 	mov	r0, r3
     288:	e28bd000 	add	sp, fp, #0
     28c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     290:	e12fff1e 	bx	lr

00000294 <memset>:
     294:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     298:	e28db000 	add	fp, sp, #0
     29c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2a4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2a8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2b0:	e50b3008 	str	r3, [fp, #-8]
     2b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2b8:	e54b300d 	strb	r3, [fp, #-13]
     2bc:	e55b200d 	ldrb	r2, [fp, #-13]
     2c0:	e1a03002 	mov	r3, r2
     2c4:	e1a03403 	lsl	r3, r3, #8
     2c8:	e0833002 	add	r3, r3, r2
     2cc:	e1a03803 	lsl	r3, r3, #16
     2d0:	e1a02003 	mov	r2, r3
     2d4:	e55b300d 	ldrb	r3, [fp, #-13]
     2d8:	e1a03403 	lsl	r3, r3, #8
     2dc:	e1822003 	orr	r2, r2, r3
     2e0:	e55b300d 	ldrb	r3, [fp, #-13]
     2e4:	e1823003 	orr	r3, r2, r3
     2e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2ec:	ea000008 	b	314 <memset+0x80>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e55b200d 	ldrb	r2, [fp, #-13]
     2f8:	e5c32000 	strb	r2, [r3]
     2fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     300:	e2433001 	sub	r3, r3, #1
     304:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e2833001 	add	r3, r3, #1
     310:	e50b3008 	str	r3, [fp, #-8]
     314:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     318:	e3530000 	cmp	r3, #0
     31c:	0a000003 	beq	330 <memset+0x9c>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2033003 	and	r3, r3, #3
     328:	e3530000 	cmp	r3, #0
     32c:	1affffef 	bne	2f0 <memset+0x5c>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e50b300c 	str	r3, [fp, #-12]
     338:	ea000008 	b	360 <memset+0xcc>
     33c:	e51b300c 	ldr	r3, [fp, #-12]
     340:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     344:	e5832000 	str	r2, [r3]
     348:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     34c:	e2433004 	sub	r3, r3, #4
     350:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     354:	e51b300c 	ldr	r3, [fp, #-12]
     358:	e2833004 	add	r3, r3, #4
     35c:	e50b300c 	str	r3, [fp, #-12]
     360:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     364:	e3530003 	cmp	r3, #3
     368:	8afffff3 	bhi	33c <memset+0xa8>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	ea000008 	b	39c <memset+0x108>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e55b200d 	ldrb	r2, [fp, #-13]
     380:	e5c32000 	strb	r2, [r3]
     384:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     388:	e2433001 	sub	r3, r3, #1
     38c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2833001 	add	r3, r3, #1
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff3 	bne	378 <memset+0xe4>
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e28bd000 	add	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <strchr>:
     3bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3c0:	e28db000 	add	fp, sp, #0
     3c4:	e24dd00c 	sub	sp, sp, #12
     3c8:	e50b0008 	str	r0, [fp, #-8]
     3cc:	e1a03001 	mov	r3, r1
     3d0:	e54b3009 	strb	r3, [fp, #-9]
     3d4:	ea000009 	b	400 <strchr+0x44>
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e5d33000 	ldrb	r3, [r3]
     3e0:	e55b2009 	ldrb	r2, [fp, #-9]
     3e4:	e1520003 	cmp	r2, r3
     3e8:	1a000001 	bne	3f4 <strchr+0x38>
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	ea000007 	b	414 <strchr+0x58>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2833001 	add	r3, r3, #1
     3fc:	e50b3008 	str	r3, [fp, #-8]
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e3530000 	cmp	r3, #0
     40c:	1afffff1 	bne	3d8 <strchr+0x1c>
     410:	e3a03000 	mov	r3, #0
     414:	e1a00003 	mov	r0, r3
     418:	e28bd000 	add	sp, fp, #0
     41c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     420:	e12fff1e 	bx	lr

00000424 <gets>:
     424:	e92d4800 	push	{fp, lr}
     428:	e28db004 	add	fp, sp, #4
     42c:	e24dd018 	sub	sp, sp, #24
     430:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     434:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     438:	e3a03000 	mov	r3, #0
     43c:	e50b3008 	str	r3, [fp, #-8]
     440:	ea000016 	b	4a0 <gets+0x7c>
     444:	e24b300d 	sub	r3, fp, #13
     448:	e3a02001 	mov	r2, #1
     44c:	e1a01003 	mov	r1, r3
     450:	e3a00000 	mov	r0, #0
     454:	eb0001cf 	bl	b98 <read>
     458:	e50b000c 	str	r0, [fp, #-12]
     45c:	e51b300c 	ldr	r3, [fp, #-12]
     460:	e3530000 	cmp	r3, #0
     464:	da000013 	ble	4b8 <gets+0x94>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e2832001 	add	r2, r3, #1
     470:	e50b2008 	str	r2, [fp, #-8]
     474:	e1a02003 	mov	r2, r3
     478:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     47c:	e0833002 	add	r3, r3, r2
     480:	e55b200d 	ldrb	r2, [fp, #-13]
     484:	e5c32000 	strb	r2, [r3]
     488:	e55b300d 	ldrb	r3, [fp, #-13]
     48c:	e353000a 	cmp	r3, #10
     490:	0a000009 	beq	4bc <gets+0x98>
     494:	e55b300d 	ldrb	r3, [fp, #-13]
     498:	e353000d 	cmp	r3, #13
     49c:	0a000006 	beq	4bc <gets+0x98>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4ac:	e1520003 	cmp	r2, r3
     4b0:	caffffe3 	bgt	444 <gets+0x20>
     4b4:	ea000000 	b	4bc <gets+0x98>
     4b8:	e1a00000 	nop			@ (mov r0, r0)
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4c4:	e0823003 	add	r3, r2, r3
     4c8:	e3a02000 	mov	r2, #0
     4cc:	e5c32000 	strb	r2, [r3]
     4d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d4:	e1a00003 	mov	r0, r3
     4d8:	e24bd004 	sub	sp, fp, #4
     4dc:	e8bd8800 	pop	{fp, pc}

000004e0 <stat>:
     4e0:	e92d4800 	push	{fp, lr}
     4e4:	e28db004 	add	fp, sp, #4
     4e8:	e24dd010 	sub	sp, sp, #16
     4ec:	e50b0010 	str	r0, [fp, #-16]
     4f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e3a01000 	mov	r1, #0
     4f8:	e51b0010 	ldr	r0, [fp, #-16]
     4fc:	eb0001d2 	bl	c4c <open>
     500:	e50b0008 	str	r0, [fp, #-8]
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e3530000 	cmp	r3, #0
     50c:	aa000001 	bge	518 <stat+0x38>
     510:	e3e03000 	mvn	r3, #0
     514:	ea000006 	b	534 <stat+0x54>
     518:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     51c:	e51b0008 	ldr	r0, [fp, #-8]
     520:	eb0001e4 	bl	cb8 <fstat>
     524:	e50b000c 	str	r0, [fp, #-12]
     528:	e51b0008 	ldr	r0, [fp, #-8]
     52c:	eb0001ab 	bl	be0 <close>
     530:	e51b300c 	ldr	r3, [fp, #-12]
     534:	e1a00003 	mov	r0, r3
     538:	e24bd004 	sub	sp, fp, #4
     53c:	e8bd8800 	pop	{fp, pc}

00000540 <atoi>:
     540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     544:	e28db000 	add	fp, sp, #0
     548:	e24dd014 	sub	sp, sp, #20
     54c:	e50b0010 	str	r0, [fp, #-16]
     550:	e3a03000 	mov	r3, #0
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	ea00000c 	b	590 <atoi+0x50>
     55c:	e51b2008 	ldr	r2, [fp, #-8]
     560:	e1a03002 	mov	r3, r2
     564:	e1a03103 	lsl	r3, r3, #2
     568:	e0833002 	add	r3, r3, r2
     56c:	e1a03083 	lsl	r3, r3, #1
     570:	e1a01003 	mov	r1, r3
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e2832001 	add	r2, r3, #1
     57c:	e50b2010 	str	r2, [fp, #-16]
     580:	e5d33000 	ldrb	r3, [r3]
     584:	e0813003 	add	r3, r1, r3
     588:	e2433030 	sub	r3, r3, #48	@ 0x30
     58c:	e50b3008 	str	r3, [fp, #-8]
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e5d33000 	ldrb	r3, [r3]
     598:	e353002f 	cmp	r3, #47	@ 0x2f
     59c:	9a000003 	bls	5b0 <atoi+0x70>
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e3530039 	cmp	r3, #57	@ 0x39
     5ac:	9affffea 	bls	55c <atoi+0x1c>
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e1a00003 	mov	r0, r3
     5b8:	e28bd000 	add	sp, fp, #0
     5bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c0:	e12fff1e 	bx	lr

000005c4 <memmove>:
     5c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5c8:	e28db000 	add	fp, sp, #0
     5cc:	e24dd01c 	sub	sp, sp, #28
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5dc:	e51b3010 	ldr	r3, [fp, #-16]
     5e0:	e50b3008 	str	r3, [fp, #-8]
     5e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5e8:	e50b300c 	str	r3, [fp, #-12]
     5ec:	ea000007 	b	610 <memmove+0x4c>
     5f0:	e51b200c 	ldr	r2, [fp, #-12]
     5f4:	e2823001 	add	r3, r2, #1
     5f8:	e50b300c 	str	r3, [fp, #-12]
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e2831001 	add	r1, r3, #1
     604:	e50b1008 	str	r1, [fp, #-8]
     608:	e5d22000 	ldrb	r2, [r2]
     60c:	e5c32000 	strb	r2, [r3]
     610:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     614:	e2432001 	sub	r2, r3, #1
     618:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     61c:	e3530000 	cmp	r3, #0
     620:	cafffff2 	bgt	5f0 <memmove+0x2c>
     624:	e51b3010 	ldr	r3, [fp, #-16]
     628:	e1a00003 	mov	r0, r3
     62c:	e28bd000 	add	sp, fp, #0
     630:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <strncmp>:
     638:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     63c:	e28db000 	add	fp, sp, #0
     640:	e24dd014 	sub	sp, sp, #20
     644:	e50b0008 	str	r0, [fp, #-8]
     648:	e50b100c 	str	r1, [fp, #-12]
     64c:	e50b2010 	str	r2, [fp, #-16]
     650:	ea000008 	b	678 <strncmp+0x40>
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e2833001 	add	r3, r3, #1
     65c:	e50b3008 	str	r3, [fp, #-8]
     660:	e51b300c 	ldr	r3, [fp, #-12]
     664:	e2833001 	add	r3, r3, #1
     668:	e50b300c 	str	r3, [fp, #-12]
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e2433001 	sub	r3, r3, #1
     674:	e50b3010 	str	r3, [fp, #-16]
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e3530000 	cmp	r3, #0
     680:	da00000d 	ble	6bc <strncmp+0x84>
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530000 	cmp	r3, #0
     690:	0a000009 	beq	6bc <strncmp+0x84>
     694:	e51b300c 	ldr	r3, [fp, #-12]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e3530000 	cmp	r3, #0
     6a0:	0a000005 	beq	6bc <strncmp+0x84>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5d32000 	ldrb	r2, [r3]
     6ac:	e51b300c 	ldr	r3, [fp, #-12]
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e1520003 	cmp	r2, r3
     6b8:	0affffe5 	beq	654 <strncmp+0x1c>
     6bc:	e51b3010 	ldr	r3, [fp, #-16]
     6c0:	e3530000 	cmp	r3, #0
     6c4:	1a000001 	bne	6d0 <strncmp+0x98>
     6c8:	e3a03000 	mov	r3, #0
     6cc:	ea000005 	b	6e8 <strncmp+0xb0>
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e5d33000 	ldrb	r3, [r3]
     6d8:	e1a02003 	mov	r2, r3
     6dc:	e51b300c 	ldr	r3, [fp, #-12]
     6e0:	e5d33000 	ldrb	r3, [r3]
     6e4:	e0423003 	sub	r3, r2, r3
     6e8:	e1a00003 	mov	r0, r3
     6ec:	e28bd000 	add	sp, fp, #0
     6f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <strncpy>:
     6f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6fc:	e28db000 	add	fp, sp, #0
     700:	e24dd01c 	sub	sp, sp, #28
     704:	e50b0010 	str	r0, [fp, #-16]
     708:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     70c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     710:	e51b3010 	ldr	r3, [fp, #-16]
     714:	e50b3008 	str	r3, [fp, #-8]
     718:	ea00000a 	b	748 <strncpy+0x50>
     71c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     720:	e2823001 	add	r3, r2, #1
     724:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e2831001 	add	r1, r3, #1
     730:	e50b1008 	str	r1, [fp, #-8]
     734:	e5d22000 	ldrb	r2, [r2]
     738:	e5c32000 	strb	r2, [r3]
     73c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     740:	e2433001 	sub	r3, r3, #1
     744:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     74c:	e3530000 	cmp	r3, #0
     750:	da00000c 	ble	788 <strncpy+0x90>
     754:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     758:	e5d33000 	ldrb	r3, [r3]
     75c:	e3530000 	cmp	r3, #0
     760:	1affffed 	bne	71c <strncpy+0x24>
     764:	ea000007 	b	788 <strncpy+0x90>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2832001 	add	r2, r3, #1
     770:	e50b2008 	str	r2, [fp, #-8]
     774:	e3a02000 	mov	r2, #0
     778:	e5c32000 	strb	r2, [r3]
     77c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     780:	e2433001 	sub	r3, r3, #1
     784:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     788:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     78c:	e3530000 	cmp	r3, #0
     790:	cafffff4 	bgt	768 <strncpy+0x70>
     794:	e51b3010 	ldr	r3, [fp, #-16]
     798:	e1a00003 	mov	r0, r3
     79c:	e28bd000 	add	sp, fp, #0
     7a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <xchg>:
     7a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7ac:	e28db000 	add	fp, sp, #0
     7b0:	e24dd014 	sub	sp, sp, #20
     7b4:	e50b0010 	str	r0, [fp, #-16]
     7b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7bc:	e51b2010 	ldr	r2, [fp, #-16]
     7c0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7c4:	e1023091 	swp	r3, r1, [r2]
     7c8:	e50b3008 	str	r3, [fp, #-8]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e28bd000 	add	sp, fp, #0
     7d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <initiateLock>:
     7e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7e4:	e28db000 	add	fp, sp, #0
     7e8:	e24dd00c 	sub	sp, sp, #12
     7ec:	e50b0008 	str	r0, [fp, #-8]
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e3a02000 	mov	r2, #0
     7f8:	e5832000 	str	r2, [r3]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e3a02001 	mov	r2, #1
     804:	e5832004 	str	r2, [r3, #4]
     808:	e1a00000 	nop			@ (mov r0, r0)
     80c:	e28bd000 	add	sp, fp, #0
     810:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <acquireLock>:
     818:	e92d4800 	push	{fp, lr}
     81c:	e28db004 	add	fp, sp, #4
     820:	e24dd008 	sub	sp, sp, #8
     824:	e50b0008 	str	r0, [fp, #-8]
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e5933004 	ldr	r3, [r3, #4]
     830:	e3530000 	cmp	r3, #0
     834:	0a000008 	beq	85c <acquireLock+0x44>
     838:	e1a00000 	nop			@ (mov r0, r0)
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e3a01001 	mov	r1, #1
     844:	e1a00003 	mov	r0, r3
     848:	ebffffd6 	bl	7a8 <xchg>
     84c:	e1a03000 	mov	r3, r0
     850:	e3530000 	cmp	r3, #0
     854:	1afffff8 	bne	83c <acquireLock+0x24>
     858:	ea000000 	b	860 <acquireLock+0x48>
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e24bd004 	sub	sp, fp, #4
     864:	e8bd8800 	pop	{fp, pc}

00000868 <releaseLock>:
     868:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     86c:	e28db000 	add	fp, sp, #0
     870:	e24dd00c 	sub	sp, sp, #12
     874:	e50b0008 	str	r0, [fp, #-8]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e5933004 	ldr	r3, [r3, #4]
     880:	e3530000 	cmp	r3, #0
     884:	0a000006 	beq	8a4 <releaseLock+0x3c>
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5933000 	ldr	r3, [r3]
     890:	e3530001 	cmp	r3, #1
     894:	1a000002 	bne	8a4 <releaseLock+0x3c>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e3a02000 	mov	r2, #0
     8a0:	e5832000 	str	r2, [r3]
     8a4:	e1a00000 	nop			@ (mov r0, r0)
     8a8:	e28bd000 	add	sp, fp, #0
     8ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <initiateCondVar>:
     8b4:	e92d4800 	push	{fp, lr}
     8b8:	e28db004 	add	fp, sp, #4
     8bc:	e24dd008 	sub	sp, sp, #8
     8c0:	e50b0008 	str	r0, [fp, #-8]
     8c4:	eb0001b8 	bl	fac <getChannel>
     8c8:	e1a02000 	mov	r2, r0
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5832000 	str	r2, [r3]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e3a02001 	mov	r2, #1
     8dc:	e5832004 	str	r2, [r3, #4]
     8e0:	e1a00000 	nop			@ (mov r0, r0)
     8e4:	e24bd004 	sub	sp, fp, #4
     8e8:	e8bd8800 	pop	{fp, pc}

000008ec <condWait>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e50b100c 	str	r1, [fp, #-12]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e5933004 	ldr	r3, [r3, #4]
     908:	e3530000 	cmp	r3, #0
     90c:	0a00000c 	beq	944 <condWait+0x58>
     910:	e51b300c 	ldr	r3, [fp, #-12]
     914:	e5933004 	ldr	r3, [r3, #4]
     918:	e3530000 	cmp	r3, #0
     91c:	0a000008 	beq	944 <condWait+0x58>
     920:	e51b000c 	ldr	r0, [fp, #-12]
     924:	ebffffcf 	bl	868 <releaseLock>
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e5933000 	ldr	r3, [r3]
     930:	e1a00003 	mov	r0, r3
     934:	eb000193 	bl	f88 <sleepChan>
     938:	e51b000c 	ldr	r0, [fp, #-12]
     93c:	ebffffb5 	bl	818 <acquireLock>
     940:	ea000000 	b	948 <condWait+0x5c>
     944:	e1a00000 	nop			@ (mov r0, r0)
     948:	e24bd004 	sub	sp, fp, #4
     94c:	e8bd8800 	pop	{fp, pc}

00000950 <broadcast>:
     950:	e92d4800 	push	{fp, lr}
     954:	e28db004 	add	fp, sp, #4
     958:	e24dd008 	sub	sp, sp, #8
     95c:	e50b0008 	str	r0, [fp, #-8]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5933004 	ldr	r3, [r3, #4]
     968:	e3530000 	cmp	r3, #0
     96c:	0a000004 	beq	984 <broadcast+0x34>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933000 	ldr	r3, [r3]
     978:	e1a00003 	mov	r0, r3
     97c:	eb000193 	bl	fd0 <sigChan>
     980:	ea000000 	b	988 <broadcast+0x38>
     984:	e1a00000 	nop			@ (mov r0, r0)
     988:	e24bd004 	sub	sp, fp, #4
     98c:	e8bd8800 	pop	{fp, pc}

00000990 <signal>:
     990:	e92d4800 	push	{fp, lr}
     994:	e28db004 	add	fp, sp, #4
     998:	e24dd008 	sub	sp, sp, #8
     99c:	e50b0008 	str	r0, [fp, #-8]
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e5933004 	ldr	r3, [r3, #4]
     9a8:	e3530000 	cmp	r3, #0
     9ac:	0a000004 	beq	9c4 <signal+0x34>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e5933000 	ldr	r3, [r3]
     9b8:	e1a00003 	mov	r0, r3
     9bc:	eb00018c 	bl	ff4 <sigOneChan>
     9c0:	ea000000 	b	9c8 <signal+0x38>
     9c4:	e1a00000 	nop			@ (mov r0, r0)
     9c8:	e24bd004 	sub	sp, fp, #4
     9cc:	e8bd8800 	pop	{fp, pc}

000009d0 <semInit>:
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd008 	sub	sp, sp, #8
     9dc:	e50b0008 	str	r0, [fp, #-8]
     9e0:	e50b100c 	str	r1, [fp, #-12]
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e2833004 	add	r3, r3, #4
     9ec:	e1a00003 	mov	r0, r3
     9f0:	ebffff7a 	bl	7e0 <initiateLock>
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e283300c 	add	r3, r3, #12
     9fc:	e1a00003 	mov	r0, r3
     a00:	ebffffab 	bl	8b4 <initiateCondVar>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e51b200c 	ldr	r2, [fp, #-12]
     a0c:	e5832000 	str	r2, [r3]
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e3a02001 	mov	r2, #1
     a18:	e5832014 	str	r2, [r3, #20]
     a1c:	e1a00000 	nop			@ (mov r0, r0)
     a20:	e24bd004 	sub	sp, fp, #4
     a24:	e8bd8800 	pop	{fp, pc}

00000a28 <semUp>:
     a28:	e92d4800 	push	{fp, lr}
     a2c:	e28db004 	add	fp, sp, #4
     a30:	e24dd008 	sub	sp, sp, #8
     a34:	e50b0008 	str	r0, [fp, #-8]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2833004 	add	r3, r3, #4
     a40:	e1a00003 	mov	r0, r3
     a44:	ebffff73 	bl	818 <acquireLock>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e5933000 	ldr	r3, [r3]
     a50:	e2832001 	add	r2, r3, #1
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e5832000 	str	r2, [r3]
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e283300c 	add	r3, r3, #12
     a64:	e1a00003 	mov	r0, r3
     a68:	ebffffc8 	bl	990 <signal>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e2833004 	add	r3, r3, #4
     a74:	e1a00003 	mov	r0, r3
     a78:	ebffff7a 	bl	868 <releaseLock>
     a7c:	e1a00000 	nop			@ (mov r0, r0)
     a80:	e24bd004 	sub	sp, fp, #4
     a84:	e8bd8800 	pop	{fp, pc}

00000a88 <semDown>:
     a88:	e92d4800 	push	{fp, lr}
     a8c:	e28db004 	add	fp, sp, #4
     a90:	e24dd008 	sub	sp, sp, #8
     a94:	e50b0008 	str	r0, [fp, #-8]
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e2833004 	add	r3, r3, #4
     aa0:	e1a00003 	mov	r0, r3
     aa4:	ebffff5b 	bl	818 <acquireLock>
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e5933000 	ldr	r3, [r3]
     ab0:	e2432001 	sub	r2, r3, #1
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e5832000 	str	r2, [r3]
     abc:	ea000006 	b	adc <semDown+0x54>
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e283200c 	add	r2, r3, #12
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e1a00002 	mov	r0, r2
     ad8:	ebffff83 	bl	8ec <condWait>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e5933000 	ldr	r3, [r3]
     ae4:	e3530000 	cmp	r3, #0
     ae8:	bafffff4 	blt	ac0 <semDown+0x38>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2833004 	add	r3, r3, #4
     af4:	e1a00003 	mov	r0, r3
     af8:	ebffff5a 	bl	868 <releaseLock>
     afc:	e1a00000 	nop			@ (mov r0, r0)
     b00:	e24bd004 	sub	sp, fp, #4
     b04:	e8bd8800 	pop	{fp, pc}

00000b08 <fork>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00001 	mov	r0, #1
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <exit>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00002 	mov	r0, #2
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <wait>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00003 	mov	r0, #3
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <pipe>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00004 	mov	r0, #4
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <read>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00005 	mov	r0, #5
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <write>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00010 	mov	r0, #16
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <close>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00015 	mov	r0, #21
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <kill>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00006 	mov	r0, #6
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <exec>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00007 	mov	r0, #7
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <open>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a0000f 	mov	r0, #15
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <mknod>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00011 	mov	r0, #17
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <unlink>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00012 	mov	r0, #18
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <fstat>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00008 	mov	r0, #8
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <link>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00013 	mov	r0, #19
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <mkdir>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00014 	mov	r0, #20
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <chdir>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00009 	mov	r0, #9
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <dup>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a0000a 	mov	r0, #10
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <getpid>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0000b 	mov	r0, #11
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <sbrk>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0000c 	mov	r0, #12
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <sleep>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a0000d 	mov	r0, #13
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <uptime>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0000e 	mov	r0, #14
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <proclist>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00016 	mov	r0, #22
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <settickets>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00017 	mov	r0, #23
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <srand>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00018 	mov	r0, #24
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <getpinfo>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00019 	mov	r0, #25
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <print_pt>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a0001f 	mov	r0, #31
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <thread_create>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a00020 	mov	r0, #32
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <thread_exit>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a00021 	mov	r0, #33	@ 0x21
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <thread_join>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a00022 	mov	r0, #34	@ 0x22
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <waitpid>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a00023 	mov	r0, #35	@ 0x23
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <barrier_init>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00024 	mov	r0, #36	@ 0x24
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <barrier_check>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a00025 	mov	r0, #37	@ 0x25
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <sleepChan>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00026 	mov	r0, #38	@ 0x26
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <getChannel>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00027 	mov	r0, #39	@ 0x27
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <sigChan>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00028 	mov	r0, #40	@ 0x28
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <sigOneChan>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00029 	mov	r0, #41	@ 0x29
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <syscall>:
    1018:	ef000000 	svc	0x00000000
    101c:	e12fff1e 	bx	lr

00001020 <putc>:
    1020:	e92d4800 	push	{fp, lr}
    1024:	e28db004 	add	fp, sp, #4
    1028:	e24dd008 	sub	sp, sp, #8
    102c:	e50b0008 	str	r0, [fp, #-8]
    1030:	e1a03001 	mov	r3, r1
    1034:	e54b3009 	strb	r3, [fp, #-9]
    1038:	e24b3009 	sub	r3, fp, #9
    103c:	e3a02001 	mov	r2, #1
    1040:	e1a01003 	mov	r1, r3
    1044:	e51b0008 	ldr	r0, [fp, #-8]
    1048:	ebfffedb 	bl	bbc <write>
    104c:	e1a00000 	nop			@ (mov r0, r0)
    1050:	e24bd004 	sub	sp, fp, #4
    1054:	e8bd8800 	pop	{fp, pc}

00001058 <printint>:
    1058:	e92d4800 	push	{fp, lr}
    105c:	e28db004 	add	fp, sp, #4
    1060:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1064:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1068:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    106c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1070:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1074:	e3a03000 	mov	r3, #0
    1078:	e50b300c 	str	r3, [fp, #-12]
    107c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1080:	e3530000 	cmp	r3, #0
    1084:	0a000008 	beq	10ac <printint+0x54>
    1088:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    108c:	e3530000 	cmp	r3, #0
    1090:	aa000005 	bge	10ac <printint+0x54>
    1094:	e3a03001 	mov	r3, #1
    1098:	e50b300c 	str	r3, [fp, #-12]
    109c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10a0:	e2633000 	rsb	r3, r3, #0
    10a4:	e50b3010 	str	r3, [fp, #-16]
    10a8:	ea000001 	b	10b4 <printint+0x5c>
    10ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10b0:	e50b3010 	str	r3, [fp, #-16]
    10b4:	e3a03000 	mov	r3, #0
    10b8:	e50b3008 	str	r3, [fp, #-8]
    10bc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10c0:	e51b3010 	ldr	r3, [fp, #-16]
    10c4:	e1a01002 	mov	r1, r2
    10c8:	e1a00003 	mov	r0, r3
    10cc:	eb0001d5 	bl	1828 <__aeabi_uidivmod>
    10d0:	e1a03001 	mov	r3, r1
    10d4:	e1a01003 	mov	r1, r3
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e2832001 	add	r2, r3, #1
    10e0:	e50b2008 	str	r2, [fp, #-8]
    10e4:	e59f20a0 	ldr	r2, [pc, #160]	@ 118c <printint+0x134>
    10e8:	e7d22001 	ldrb	r2, [r2, r1]
    10ec:	e2433004 	sub	r3, r3, #4
    10f0:	e083300b 	add	r3, r3, fp
    10f4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10f8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10fc:	e1a01003 	mov	r1, r3
    1100:	e51b0010 	ldr	r0, [fp, #-16]
    1104:	eb00018a 	bl	1734 <__udivsi3>
    1108:	e1a03000 	mov	r3, r0
    110c:	e50b3010 	str	r3, [fp, #-16]
    1110:	e51b3010 	ldr	r3, [fp, #-16]
    1114:	e3530000 	cmp	r3, #0
    1118:	1affffe7 	bne	10bc <printint+0x64>
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e3530000 	cmp	r3, #0
    1124:	0a00000e 	beq	1164 <printint+0x10c>
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e2832001 	add	r2, r3, #1
    1130:	e50b2008 	str	r2, [fp, #-8]
    1134:	e2433004 	sub	r3, r3, #4
    1138:	e083300b 	add	r3, r3, fp
    113c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1140:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1144:	ea000006 	b	1164 <printint+0x10c>
    1148:	e24b2020 	sub	r2, fp, #32
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e0823003 	add	r3, r2, r3
    1154:	e5d33000 	ldrb	r3, [r3]
    1158:	e1a01003 	mov	r1, r3
    115c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1160:	ebffffae 	bl	1020 <putc>
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e2433001 	sub	r3, r3, #1
    116c:	e50b3008 	str	r3, [fp, #-8]
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e3530000 	cmp	r3, #0
    1178:	aafffff2 	bge	1148 <printint+0xf0>
    117c:	e1a00000 	nop			@ (mov r0, r0)
    1180:	e1a00000 	nop			@ (mov r0, r0)
    1184:	e24bd004 	sub	sp, fp, #4
    1188:	e8bd8800 	pop	{fp, pc}
    118c:	000018c8 	.word	0x000018c8

00001190 <printf>:
    1190:	e92d000e 	push	{r1, r2, r3}
    1194:	e92d4800 	push	{fp, lr}
    1198:	e28db004 	add	fp, sp, #4
    119c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11a0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11a4:	e3a03000 	mov	r3, #0
    11a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11ac:	e28b3008 	add	r3, fp, #8
    11b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11b4:	e3a03000 	mov	r3, #0
    11b8:	e50b3010 	str	r3, [fp, #-16]
    11bc:	ea000074 	b	1394 <printf+0x204>
    11c0:	e59b2004 	ldr	r2, [fp, #4]
    11c4:	e51b3010 	ldr	r3, [fp, #-16]
    11c8:	e0823003 	add	r3, r2, r3
    11cc:	e5d33000 	ldrb	r3, [r3]
    11d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11d8:	e3530000 	cmp	r3, #0
    11dc:	1a00000b 	bne	1210 <printf+0x80>
    11e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11e4:	e3530025 	cmp	r3, #37	@ 0x25
    11e8:	1a000002 	bne	11f8 <printf+0x68>
    11ec:	e3a03025 	mov	r3, #37	@ 0x25
    11f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f4:	ea000063 	b	1388 <printf+0x1f8>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e6ef3073 	uxtb	r3, r3
    1200:	e1a01003 	mov	r1, r3
    1204:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1208:	ebffff84 	bl	1020 <putc>
    120c:	ea00005d 	b	1388 <printf+0x1f8>
    1210:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1214:	e3530025 	cmp	r3, #37	@ 0x25
    1218:	1a00005a 	bne	1388 <printf+0x1f8>
    121c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1220:	e3530064 	cmp	r3, #100	@ 0x64
    1224:	1a00000a 	bne	1254 <printf+0xc4>
    1228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    122c:	e5933000 	ldr	r3, [r3]
    1230:	e1a01003 	mov	r1, r3
    1234:	e3a03001 	mov	r3, #1
    1238:	e3a0200a 	mov	r2, #10
    123c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1240:	ebffff84 	bl	1058 <printint>
    1244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1248:	e2833004 	add	r3, r3, #4
    124c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1250:	ea00004a 	b	1380 <printf+0x1f0>
    1254:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1258:	e3530078 	cmp	r3, #120	@ 0x78
    125c:	0a000002 	beq	126c <printf+0xdc>
    1260:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1264:	e3530070 	cmp	r3, #112	@ 0x70
    1268:	1a00000a 	bne	1298 <printf+0x108>
    126c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e1a01003 	mov	r1, r3
    1278:	e3a03000 	mov	r3, #0
    127c:	e3a02010 	mov	r2, #16
    1280:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1284:	ebffff73 	bl	1058 <printint>
    1288:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    128c:	e2833004 	add	r3, r3, #4
    1290:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1294:	ea000039 	b	1380 <printf+0x1f0>
    1298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    129c:	e3530073 	cmp	r3, #115	@ 0x73
    12a0:	1a000018 	bne	1308 <printf+0x178>
    12a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a8:	e5933000 	ldr	r3, [r3]
    12ac:	e50b300c 	str	r3, [fp, #-12]
    12b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b4:	e2833004 	add	r3, r3, #4
    12b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12bc:	e51b300c 	ldr	r3, [fp, #-12]
    12c0:	e3530000 	cmp	r3, #0
    12c4:	1a00000a 	bne	12f4 <printf+0x164>
    12c8:	e59f30f4 	ldr	r3, [pc, #244]	@ 13c4 <printf+0x234>
    12cc:	e50b300c 	str	r3, [fp, #-12]
    12d0:	ea000007 	b	12f4 <printf+0x164>
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e5d33000 	ldrb	r3, [r3]
    12dc:	e1a01003 	mov	r1, r3
    12e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12e4:	ebffff4d 	bl	1020 <putc>
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e2833001 	add	r3, r3, #1
    12f0:	e50b300c 	str	r3, [fp, #-12]
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e5d33000 	ldrb	r3, [r3]
    12fc:	e3530000 	cmp	r3, #0
    1300:	1afffff3 	bne	12d4 <printf+0x144>
    1304:	ea00001d 	b	1380 <printf+0x1f0>
    1308:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    130c:	e3530063 	cmp	r3, #99	@ 0x63
    1310:	1a000009 	bne	133c <printf+0x1ac>
    1314:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1318:	e5933000 	ldr	r3, [r3]
    131c:	e6ef3073 	uxtb	r3, r3
    1320:	e1a01003 	mov	r1, r3
    1324:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1328:	ebffff3c 	bl	1020 <putc>
    132c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1330:	e2833004 	add	r3, r3, #4
    1334:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1338:	ea000010 	b	1380 <printf+0x1f0>
    133c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1340:	e3530025 	cmp	r3, #37	@ 0x25
    1344:	1a000005 	bne	1360 <printf+0x1d0>
    1348:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    134c:	e6ef3073 	uxtb	r3, r3
    1350:	e1a01003 	mov	r1, r3
    1354:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1358:	ebffff30 	bl	1020 <putc>
    135c:	ea000007 	b	1380 <printf+0x1f0>
    1360:	e3a01025 	mov	r1, #37	@ 0x25
    1364:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1368:	ebffff2c 	bl	1020 <putc>
    136c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1370:	e6ef3073 	uxtb	r3, r3
    1374:	e1a01003 	mov	r1, r3
    1378:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    137c:	ebffff27 	bl	1020 <putc>
    1380:	e3a03000 	mov	r3, #0
    1384:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1388:	e51b3010 	ldr	r3, [fp, #-16]
    138c:	e2833001 	add	r3, r3, #1
    1390:	e50b3010 	str	r3, [fp, #-16]
    1394:	e59b2004 	ldr	r2, [fp, #4]
    1398:	e51b3010 	ldr	r3, [fp, #-16]
    139c:	e0823003 	add	r3, r2, r3
    13a0:	e5d33000 	ldrb	r3, [r3]
    13a4:	e3530000 	cmp	r3, #0
    13a8:	1affff84 	bne	11c0 <printf+0x30>
    13ac:	e1a00000 	nop			@ (mov r0, r0)
    13b0:	e1a00000 	nop			@ (mov r0, r0)
    13b4:	e24bd004 	sub	sp, fp, #4
    13b8:	e8bd4800 	pop	{fp, lr}
    13bc:	e28dd00c 	add	sp, sp, #12
    13c0:	e12fff1e 	bx	lr
    13c4:	000018c0 	.word	0x000018c0

000013c8 <free>:
    13c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13cc:	e28db000 	add	fp, sp, #0
    13d0:	e24dd014 	sub	sp, sp, #20
    13d4:	e50b0010 	str	r0, [fp, #-16]
    13d8:	e51b3010 	ldr	r3, [fp, #-16]
    13dc:	e2433008 	sub	r3, r3, #8
    13e0:	e50b300c 	str	r3, [fp, #-12]
    13e4:	e59f3154 	ldr	r3, [pc, #340]	@ 1540 <free+0x178>
    13e8:	e5933000 	ldr	r3, [r3]
    13ec:	e50b3008 	str	r3, [fp, #-8]
    13f0:	ea000010 	b	1438 <free+0x70>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e51b2008 	ldr	r2, [fp, #-8]
    1400:	e1520003 	cmp	r2, r3
    1404:	3a000008 	bcc	142c <free+0x64>
    1408:	e51b200c 	ldr	r2, [fp, #-12]
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e1520003 	cmp	r2, r3
    1414:	8a000010 	bhi	145c <free+0x94>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e51b200c 	ldr	r2, [fp, #-12]
    1424:	e1520003 	cmp	r2, r3
    1428:	3a00000b 	bcc	145c <free+0x94>
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e50b3008 	str	r3, [fp, #-8]
    1438:	e51b200c 	ldr	r2, [fp, #-12]
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e1520003 	cmp	r2, r3
    1444:	9affffea 	bls	13f4 <free+0x2c>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5933000 	ldr	r3, [r3]
    1450:	e51b200c 	ldr	r2, [fp, #-12]
    1454:	e1520003 	cmp	r2, r3
    1458:	2affffe5 	bcs	13f4 <free+0x2c>
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5933004 	ldr	r3, [r3, #4]
    1464:	e1a03183 	lsl	r3, r3, #3
    1468:	e51b200c 	ldr	r2, [fp, #-12]
    146c:	e0822003 	add	r2, r2, r3
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e1520003 	cmp	r2, r3
    147c:	1a00000d 	bne	14b8 <free+0xf0>
    1480:	e51b300c 	ldr	r3, [fp, #-12]
    1484:	e5932004 	ldr	r2, [r3, #4]
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e5933004 	ldr	r3, [r3, #4]
    1494:	e0822003 	add	r2, r2, r3
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e5832004 	str	r2, [r3, #4]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e5932000 	ldr	r2, [r3]
    14ac:	e51b300c 	ldr	r3, [fp, #-12]
    14b0:	e5832000 	str	r2, [r3]
    14b4:	ea000003 	b	14c8 <free+0x100>
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5932000 	ldr	r2, [r3]
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e5832000 	str	r2, [r3]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5933004 	ldr	r3, [r3, #4]
    14d0:	e1a03183 	lsl	r3, r3, #3
    14d4:	e51b2008 	ldr	r2, [fp, #-8]
    14d8:	e0823003 	add	r3, r2, r3
    14dc:	e51b200c 	ldr	r2, [fp, #-12]
    14e0:	e1520003 	cmp	r2, r3
    14e4:	1a00000b 	bne	1518 <free+0x150>
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5932004 	ldr	r2, [r3, #4]
    14f0:	e51b300c 	ldr	r3, [fp, #-12]
    14f4:	e5933004 	ldr	r3, [r3, #4]
    14f8:	e0822003 	add	r2, r2, r3
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5832004 	str	r2, [r3, #4]
    1504:	e51b300c 	ldr	r3, [fp, #-12]
    1508:	e5932000 	ldr	r2, [r3]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5832000 	str	r2, [r3]
    1514:	ea000002 	b	1524 <free+0x15c>
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e51b200c 	ldr	r2, [fp, #-12]
    1520:	e5832000 	str	r2, [r3]
    1524:	e59f2014 	ldr	r2, [pc, #20]	@ 1540 <free+0x178>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5823000 	str	r3, [r2]
    1530:	e1a00000 	nop			@ (mov r0, r0)
    1534:	e28bd000 	add	sp, fp, #0
    1538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    153c:	e12fff1e 	bx	lr
    1540:	000018e4 	.word	0x000018e4

00001544 <morecore>:
    1544:	e92d4800 	push	{fp, lr}
    1548:	e28db004 	add	fp, sp, #4
    154c:	e24dd010 	sub	sp, sp, #16
    1550:	e50b0010 	str	r0, [fp, #-16]
    1554:	e51b3010 	ldr	r3, [fp, #-16]
    1558:	e3530a01 	cmp	r3, #4096	@ 0x1000
    155c:	2a000001 	bcs	1568 <morecore+0x24>
    1560:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1564:	e50b3010 	str	r3, [fp, #-16]
    1568:	e51b3010 	ldr	r3, [fp, #-16]
    156c:	e1a03183 	lsl	r3, r3, #3
    1570:	e1a00003 	mov	r0, r3
    1574:	ebfffe05 	bl	d90 <sbrk>
    1578:	e50b0008 	str	r0, [fp, #-8]
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e3730001 	cmn	r3, #1
    1584:	1a000001 	bne	1590 <morecore+0x4c>
    1588:	e3a03000 	mov	r3, #0
    158c:	ea00000a 	b	15bc <morecore+0x78>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e50b300c 	str	r3, [fp, #-12]
    1598:	e51b300c 	ldr	r3, [fp, #-12]
    159c:	e51b2010 	ldr	r2, [fp, #-16]
    15a0:	e5832004 	str	r2, [r3, #4]
    15a4:	e51b300c 	ldr	r3, [fp, #-12]
    15a8:	e2833008 	add	r3, r3, #8
    15ac:	e1a00003 	mov	r0, r3
    15b0:	ebffff84 	bl	13c8 <free>
    15b4:	e59f300c 	ldr	r3, [pc, #12]	@ 15c8 <morecore+0x84>
    15b8:	e5933000 	ldr	r3, [r3]
    15bc:	e1a00003 	mov	r0, r3
    15c0:	e24bd004 	sub	sp, fp, #4
    15c4:	e8bd8800 	pop	{fp, pc}
    15c8:	000018e4 	.word	0x000018e4

000015cc <malloc>:
    15cc:	e92d4800 	push	{fp, lr}
    15d0:	e28db004 	add	fp, sp, #4
    15d4:	e24dd018 	sub	sp, sp, #24
    15d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15e0:	e2833007 	add	r3, r3, #7
    15e4:	e1a031a3 	lsr	r3, r3, #3
    15e8:	e2833001 	add	r3, r3, #1
    15ec:	e50b3010 	str	r3, [fp, #-16]
    15f0:	e59f3134 	ldr	r3, [pc, #308]	@ 172c <malloc+0x160>
    15f4:	e5933000 	ldr	r3, [r3]
    15f8:	e50b300c 	str	r3, [fp, #-12]
    15fc:	e51b300c 	ldr	r3, [fp, #-12]
    1600:	e3530000 	cmp	r3, #0
    1604:	1a00000b 	bne	1638 <malloc+0x6c>
    1608:	e59f3120 	ldr	r3, [pc, #288]	@ 1730 <malloc+0x164>
    160c:	e50b300c 	str	r3, [fp, #-12]
    1610:	e59f2114 	ldr	r2, [pc, #276]	@ 172c <malloc+0x160>
    1614:	e51b300c 	ldr	r3, [fp, #-12]
    1618:	e5823000 	str	r3, [r2]
    161c:	e59f3108 	ldr	r3, [pc, #264]	@ 172c <malloc+0x160>
    1620:	e5933000 	ldr	r3, [r3]
    1624:	e59f2104 	ldr	r2, [pc, #260]	@ 1730 <malloc+0x164>
    1628:	e5823000 	str	r3, [r2]
    162c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1730 <malloc+0x164>
    1630:	e3a02000 	mov	r2, #0
    1634:	e5832004 	str	r2, [r3, #4]
    1638:	e51b300c 	ldr	r3, [fp, #-12]
    163c:	e5933000 	ldr	r3, [r3]
    1640:	e50b3008 	str	r3, [fp, #-8]
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5933004 	ldr	r3, [r3, #4]
    164c:	e51b2010 	ldr	r2, [fp, #-16]
    1650:	e1520003 	cmp	r2, r3
    1654:	8a00001e 	bhi	16d4 <malloc+0x108>
    1658:	e51b3008 	ldr	r3, [fp, #-8]
    165c:	e5933004 	ldr	r3, [r3, #4]
    1660:	e51b2010 	ldr	r2, [fp, #-16]
    1664:	e1520003 	cmp	r2, r3
    1668:	1a000004 	bne	1680 <malloc+0xb4>
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e5932000 	ldr	r2, [r3]
    1674:	e51b300c 	ldr	r3, [fp, #-12]
    1678:	e5832000 	str	r2, [r3]
    167c:	ea00000e 	b	16bc <malloc+0xf0>
    1680:	e51b3008 	ldr	r3, [fp, #-8]
    1684:	e5932004 	ldr	r2, [r3, #4]
    1688:	e51b3010 	ldr	r3, [fp, #-16]
    168c:	e0422003 	sub	r2, r2, r3
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e5832004 	str	r2, [r3, #4]
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e5933004 	ldr	r3, [r3, #4]
    16a0:	e1a03183 	lsl	r3, r3, #3
    16a4:	e51b2008 	ldr	r2, [fp, #-8]
    16a8:	e0823003 	add	r3, r2, r3
    16ac:	e50b3008 	str	r3, [fp, #-8]
    16b0:	e51b3008 	ldr	r3, [fp, #-8]
    16b4:	e51b2010 	ldr	r2, [fp, #-16]
    16b8:	e5832004 	str	r2, [r3, #4]
    16bc:	e59f2068 	ldr	r2, [pc, #104]	@ 172c <malloc+0x160>
    16c0:	e51b300c 	ldr	r3, [fp, #-12]
    16c4:	e5823000 	str	r3, [r2]
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e2833008 	add	r3, r3, #8
    16d0:	ea000012 	b	1720 <malloc+0x154>
    16d4:	e59f3050 	ldr	r3, [pc, #80]	@ 172c <malloc+0x160>
    16d8:	e5933000 	ldr	r3, [r3]
    16dc:	e51b2008 	ldr	r2, [fp, #-8]
    16e0:	e1520003 	cmp	r2, r3
    16e4:	1a000007 	bne	1708 <malloc+0x13c>
    16e8:	e51b0010 	ldr	r0, [fp, #-16]
    16ec:	ebffff94 	bl	1544 <morecore>
    16f0:	e50b0008 	str	r0, [fp, #-8]
    16f4:	e51b3008 	ldr	r3, [fp, #-8]
    16f8:	e3530000 	cmp	r3, #0
    16fc:	1a000001 	bne	1708 <malloc+0x13c>
    1700:	e3a03000 	mov	r3, #0
    1704:	ea000005 	b	1720 <malloc+0x154>
    1708:	e51b3008 	ldr	r3, [fp, #-8]
    170c:	e50b300c 	str	r3, [fp, #-12]
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5933000 	ldr	r3, [r3]
    1718:	e50b3008 	str	r3, [fp, #-8]
    171c:	eaffffc8 	b	1644 <malloc+0x78>
    1720:	e1a00003 	mov	r0, r3
    1724:	e24bd004 	sub	sp, fp, #4
    1728:	e8bd8800 	pop	{fp, pc}
    172c:	000018e4 	.word	0x000018e4
    1730:	000018dc 	.word	0x000018dc

00001734 <__udivsi3>:
    1734:	e2512001 	subs	r2, r1, #1
    1738:	012fff1e 	bxeq	lr
    173c:	3a000036 	bcc	181c <__udivsi3+0xe8>
    1740:	e1500001 	cmp	r0, r1
    1744:	9a000022 	bls	17d4 <__udivsi3+0xa0>
    1748:	e1110002 	tst	r1, r2
    174c:	0a000023 	beq	17e0 <__udivsi3+0xac>
    1750:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1754:	01a01181 	lsleq	r1, r1, #3
    1758:	03a03008 	moveq	r3, #8
    175c:	13a03001 	movne	r3, #1
    1760:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1764:	31510000 	cmpcc	r1, r0
    1768:	31a01201 	lslcc	r1, r1, #4
    176c:	31a03203 	lslcc	r3, r3, #4
    1770:	3afffffa 	bcc	1760 <__udivsi3+0x2c>
    1774:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1778:	31510000 	cmpcc	r1, r0
    177c:	31a01081 	lslcc	r1, r1, #1
    1780:	31a03083 	lslcc	r3, r3, #1
    1784:	3afffffa 	bcc	1774 <__udivsi3+0x40>
    1788:	e3a02000 	mov	r2, #0
    178c:	e1500001 	cmp	r0, r1
    1790:	20400001 	subcs	r0, r0, r1
    1794:	21822003 	orrcs	r2, r2, r3
    1798:	e15000a1 	cmp	r0, r1, lsr #1
    179c:	204000a1 	subcs	r0, r0, r1, lsr #1
    17a0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17a4:	e1500121 	cmp	r0, r1, lsr #2
    17a8:	20400121 	subcs	r0, r0, r1, lsr #2
    17ac:	21822123 	orrcs	r2, r2, r3, lsr #2
    17b0:	e15001a1 	cmp	r0, r1, lsr #3
    17b4:	204001a1 	subcs	r0, r0, r1, lsr #3
    17b8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17bc:	e3500000 	cmp	r0, #0
    17c0:	11b03223 	lsrsne	r3, r3, #4
    17c4:	11a01221 	lsrne	r1, r1, #4
    17c8:	1affffef 	bne	178c <__udivsi3+0x58>
    17cc:	e1a00002 	mov	r0, r2
    17d0:	e12fff1e 	bx	lr
    17d4:	03a00001 	moveq	r0, #1
    17d8:	13a00000 	movne	r0, #0
    17dc:	e12fff1e 	bx	lr
    17e0:	e3510801 	cmp	r1, #65536	@ 0x10000
    17e4:	21a01821 	lsrcs	r1, r1, #16
    17e8:	23a02010 	movcs	r2, #16
    17ec:	33a02000 	movcc	r2, #0
    17f0:	e3510c01 	cmp	r1, #256	@ 0x100
    17f4:	21a01421 	lsrcs	r1, r1, #8
    17f8:	22822008 	addcs	r2, r2, #8
    17fc:	e3510010 	cmp	r1, #16
    1800:	21a01221 	lsrcs	r1, r1, #4
    1804:	22822004 	addcs	r2, r2, #4
    1808:	e3510004 	cmp	r1, #4
    180c:	82822003 	addhi	r2, r2, #3
    1810:	908220a1 	addls	r2, r2, r1, lsr #1
    1814:	e1a00230 	lsr	r0, r0, r2
    1818:	e12fff1e 	bx	lr
    181c:	e3500000 	cmp	r0, #0
    1820:	13e00000 	mvnne	r0, #0
    1824:	ea000007 	b	1848 <__aeabi_idiv0>

00001828 <__aeabi_uidivmod>:
    1828:	e3510000 	cmp	r1, #0
    182c:	0afffffa 	beq	181c <__udivsi3+0xe8>
    1830:	e92d4003 	push	{r0, r1, lr}
    1834:	ebffffbe 	bl	1734 <__udivsi3>
    1838:	e8bd4006 	pop	{r1, r2, lr}
    183c:	e0030092 	mul	r3, r2, r0
    1840:	e0411003 	sub	r1, r1, r3
    1844:	e12fff1e 	bx	lr

00001848 <__aeabi_idiv0>:
    1848:	e12fff1e 	bx	lr
