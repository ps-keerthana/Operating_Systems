
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
      4c:	eb000458 	bl	11b4 <printf>
      50:	e51b0008 	ldr	r0, [fp, #-8]
      54:	eb0003b0 	bl	f1c <waitpid>
      58:	e50b000c 	str	r0, [fp, #-12]
      5c:	e51b200c 	ldr	r2, [fp, #-12]
      60:	e59f1030 	ldr	r1, [pc, #48]	@ 98 <main+0x98>
      64:	e3a00001 	mov	r0, #1
      68:	eb000451 	bl	11b4 <printf>
      6c:	eb0002b7 	bl	b50 <wait>
      70:	e50b000c 	str	r0, [fp, #-12]
      74:	e51b200c 	ldr	r2, [fp, #-12]
      78:	e59f101c 	ldr	r1, [pc, #28]	@ 9c <main+0x9c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb00044b 	bl	11b4 <printf>
      84:	e59f1014 	ldr	r1, [pc, #20]	@ a0 <main+0xa0>
      88:	e3a00001 	mov	r0, #1
      8c:	eb000448 	bl	11b4 <printf>
      90:	eb0002a5 	bl	b2c <exit>
      94:	00001870 	.word	0x00001870
      98:	00001894 	.word	0x00001894
      9c:	000018b8 	.word	0x000018b8
      a0:	000018d4 	.word	0x000018d4

000000a4 <pg_pte>:
      a4:	e92d4800 	push	{fp, lr}
      a8:	e28db004 	add	fp, sp, #4
      ac:	e24dd008 	sub	sp, sp, #8
      b0:	e50b0008 	str	r0, [fp, #-8]
      b4:	e51b1008 	ldr	r1, [fp, #-8]
      b8:	e3a0001a 	mov	r0, #26
      bc:	eb0003de 	bl	103c <syscall>
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
      e8:	eb0003d3 	bl	103c <syscall>
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
     114:	eb0003c8 	bl	103c <syscall>
     118:	e1a03000 	mov	r3, r0
     11c:	e1a00003 	mov	r0, r3
     120:	e24bd004 	sub	sp, fp, #4
     124:	e8bd8800 	pop	{fp, pc}

00000128 <kpt>:
     128:	e92d4800 	push	{fp, lr}
     12c:	e28db004 	add	fp, sp, #4
     130:	e3a0001d 	mov	r0, #29
     134:	eb0003c0 	bl	103c <syscall>
     138:	e1a03000 	mov	r3, r0
     13c:	e1a00003 	mov	r0, r3
     140:	e8bd8800 	pop	{fp, pc}

00000144 <ugetpid>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e3a0001e 	mov	r0, #30
     150:	eb0003b9 	bl	103c <syscall>
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

00001018 <symlink>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a0002a 	mov	r0, #42	@ 0x2a
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <syscall>:
    103c:	ef000000 	svc	0x00000000
    1040:	e12fff1e 	bx	lr

00001044 <putc>:
    1044:	e92d4800 	push	{fp, lr}
    1048:	e28db004 	add	fp, sp, #4
    104c:	e24dd008 	sub	sp, sp, #8
    1050:	e50b0008 	str	r0, [fp, #-8]
    1054:	e1a03001 	mov	r3, r1
    1058:	e54b3009 	strb	r3, [fp, #-9]
    105c:	e24b3009 	sub	r3, fp, #9
    1060:	e3a02001 	mov	r2, #1
    1064:	e1a01003 	mov	r1, r3
    1068:	e51b0008 	ldr	r0, [fp, #-8]
    106c:	ebfffed2 	bl	bbc <write>
    1070:	e1a00000 	nop			@ (mov r0, r0)
    1074:	e24bd004 	sub	sp, fp, #4
    1078:	e8bd8800 	pop	{fp, pc}

0000107c <printint>:
    107c:	e92d4800 	push	{fp, lr}
    1080:	e28db004 	add	fp, sp, #4
    1084:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1088:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    108c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1090:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1094:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1098:	e3a03000 	mov	r3, #0
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10a4:	e3530000 	cmp	r3, #0
    10a8:	0a000008 	beq	10d0 <printint+0x54>
    10ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10b0:	e3530000 	cmp	r3, #0
    10b4:	aa000005 	bge	10d0 <printint+0x54>
    10b8:	e3a03001 	mov	r3, #1
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10c4:	e2633000 	rsb	r3, r3, #0
    10c8:	e50b3010 	str	r3, [fp, #-16]
    10cc:	ea000001 	b	10d8 <printint+0x5c>
    10d0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10d4:	e50b3010 	str	r3, [fp, #-16]
    10d8:	e3a03000 	mov	r3, #0
    10dc:	e50b3008 	str	r3, [fp, #-8]
    10e0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10e4:	e51b3010 	ldr	r3, [fp, #-16]
    10e8:	e1a01002 	mov	r1, r2
    10ec:	e1a00003 	mov	r0, r3
    10f0:	eb0001d5 	bl	184c <__aeabi_uidivmod>
    10f4:	e1a03001 	mov	r3, r1
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e2832001 	add	r2, r3, #1
    1104:	e50b2008 	str	r2, [fp, #-8]
    1108:	e59f20a0 	ldr	r2, [pc, #160]	@ 11b0 <printint+0x134>
    110c:	e7d22001 	ldrb	r2, [r2, r1]
    1110:	e2433004 	sub	r3, r3, #4
    1114:	e083300b 	add	r3, r3, fp
    1118:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    111c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1120:	e1a01003 	mov	r1, r3
    1124:	e51b0010 	ldr	r0, [fp, #-16]
    1128:	eb00018a 	bl	1758 <__udivsi3>
    112c:	e1a03000 	mov	r3, r0
    1130:	e50b3010 	str	r3, [fp, #-16]
    1134:	e51b3010 	ldr	r3, [fp, #-16]
    1138:	e3530000 	cmp	r3, #0
    113c:	1affffe7 	bne	10e0 <printint+0x64>
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e3530000 	cmp	r3, #0
    1148:	0a00000e 	beq	1188 <printint+0x10c>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e2832001 	add	r2, r3, #1
    1154:	e50b2008 	str	r2, [fp, #-8]
    1158:	e2433004 	sub	r3, r3, #4
    115c:	e083300b 	add	r3, r3, fp
    1160:	e3a0202d 	mov	r2, #45	@ 0x2d
    1164:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1168:	ea000006 	b	1188 <printint+0x10c>
    116c:	e24b2020 	sub	r2, fp, #32
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e0823003 	add	r3, r2, r3
    1178:	e5d33000 	ldrb	r3, [r3]
    117c:	e1a01003 	mov	r1, r3
    1180:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1184:	ebffffae 	bl	1044 <putc>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e2433001 	sub	r3, r3, #1
    1190:	e50b3008 	str	r3, [fp, #-8]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e3530000 	cmp	r3, #0
    119c:	aafffff2 	bge	116c <printint+0xf0>
    11a0:	e1a00000 	nop			@ (mov r0, r0)
    11a4:	e1a00000 	nop			@ (mov r0, r0)
    11a8:	e24bd004 	sub	sp, fp, #4
    11ac:	e8bd8800 	pop	{fp, pc}
    11b0:	000018ec 	.word	0x000018ec

000011b4 <printf>:
    11b4:	e92d000e 	push	{r1, r2, r3}
    11b8:	e92d4800 	push	{fp, lr}
    11bc:	e28db004 	add	fp, sp, #4
    11c0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11c4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11c8:	e3a03000 	mov	r3, #0
    11cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11d0:	e28b3008 	add	r3, fp, #8
    11d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11d8:	e3a03000 	mov	r3, #0
    11dc:	e50b3010 	str	r3, [fp, #-16]
    11e0:	ea000074 	b	13b8 <printf+0x204>
    11e4:	e59b2004 	ldr	r2, [fp, #4]
    11e8:	e51b3010 	ldr	r3, [fp, #-16]
    11ec:	e0823003 	add	r3, r2, r3
    11f0:	e5d33000 	ldrb	r3, [r3]
    11f4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11fc:	e3530000 	cmp	r3, #0
    1200:	1a00000b 	bne	1234 <printf+0x80>
    1204:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1208:	e3530025 	cmp	r3, #37	@ 0x25
    120c:	1a000002 	bne	121c <printf+0x68>
    1210:	e3a03025 	mov	r3, #37	@ 0x25
    1214:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1218:	ea000063 	b	13ac <printf+0x1f8>
    121c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1220:	e6ef3073 	uxtb	r3, r3
    1224:	e1a01003 	mov	r1, r3
    1228:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    122c:	ebffff84 	bl	1044 <putc>
    1230:	ea00005d 	b	13ac <printf+0x1f8>
    1234:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1238:	e3530025 	cmp	r3, #37	@ 0x25
    123c:	1a00005a 	bne	13ac <printf+0x1f8>
    1240:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1244:	e3530064 	cmp	r3, #100	@ 0x64
    1248:	1a00000a 	bne	1278 <printf+0xc4>
    124c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1250:	e5933000 	ldr	r3, [r3]
    1254:	e1a01003 	mov	r1, r3
    1258:	e3a03001 	mov	r3, #1
    125c:	e3a0200a 	mov	r2, #10
    1260:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1264:	ebffff84 	bl	107c <printint>
    1268:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    126c:	e2833004 	add	r3, r3, #4
    1270:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1274:	ea00004a 	b	13a4 <printf+0x1f0>
    1278:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    127c:	e3530078 	cmp	r3, #120	@ 0x78
    1280:	0a000002 	beq	1290 <printf+0xdc>
    1284:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1288:	e3530070 	cmp	r3, #112	@ 0x70
    128c:	1a00000a 	bne	12bc <printf+0x108>
    1290:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e1a01003 	mov	r1, r3
    129c:	e3a03000 	mov	r3, #0
    12a0:	e3a02010 	mov	r2, #16
    12a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12a8:	ebffff73 	bl	107c <printint>
    12ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e2833004 	add	r3, r3, #4
    12b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	ea000039 	b	13a4 <printf+0x1f0>
    12bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c0:	e3530073 	cmp	r3, #115	@ 0x73
    12c4:	1a000018 	bne	132c <printf+0x178>
    12c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e5933000 	ldr	r3, [r3]
    12d0:	e50b300c 	str	r3, [fp, #-12]
    12d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d8:	e2833004 	add	r3, r3, #4
    12dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e3530000 	cmp	r3, #0
    12e8:	1a00000a 	bne	1318 <printf+0x164>
    12ec:	e59f30f4 	ldr	r3, [pc, #244]	@ 13e8 <printf+0x234>
    12f0:	e50b300c 	str	r3, [fp, #-12]
    12f4:	ea000007 	b	1318 <printf+0x164>
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5d33000 	ldrb	r3, [r3]
    1300:	e1a01003 	mov	r1, r3
    1304:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1308:	ebffff4d 	bl	1044 <putc>
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e2833001 	add	r3, r3, #1
    1314:	e50b300c 	str	r3, [fp, #-12]
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e5d33000 	ldrb	r3, [r3]
    1320:	e3530000 	cmp	r3, #0
    1324:	1afffff3 	bne	12f8 <printf+0x144>
    1328:	ea00001d 	b	13a4 <printf+0x1f0>
    132c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1330:	e3530063 	cmp	r3, #99	@ 0x63
    1334:	1a000009 	bne	1360 <printf+0x1ac>
    1338:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e6ef3073 	uxtb	r3, r3
    1344:	e1a01003 	mov	r1, r3
    1348:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    134c:	ebffff3c 	bl	1044 <putc>
    1350:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1354:	e2833004 	add	r3, r3, #4
    1358:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    135c:	ea000010 	b	13a4 <printf+0x1f0>
    1360:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1364:	e3530025 	cmp	r3, #37	@ 0x25
    1368:	1a000005 	bne	1384 <printf+0x1d0>
    136c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1370:	e6ef3073 	uxtb	r3, r3
    1374:	e1a01003 	mov	r1, r3
    1378:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    137c:	ebffff30 	bl	1044 <putc>
    1380:	ea000007 	b	13a4 <printf+0x1f0>
    1384:	e3a01025 	mov	r1, #37	@ 0x25
    1388:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    138c:	ebffff2c 	bl	1044 <putc>
    1390:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1394:	e6ef3073 	uxtb	r3, r3
    1398:	e1a01003 	mov	r1, r3
    139c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a0:	ebffff27 	bl	1044 <putc>
    13a4:	e3a03000 	mov	r3, #0
    13a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13ac:	e51b3010 	ldr	r3, [fp, #-16]
    13b0:	e2833001 	add	r3, r3, #1
    13b4:	e50b3010 	str	r3, [fp, #-16]
    13b8:	e59b2004 	ldr	r2, [fp, #4]
    13bc:	e51b3010 	ldr	r3, [fp, #-16]
    13c0:	e0823003 	add	r3, r2, r3
    13c4:	e5d33000 	ldrb	r3, [r3]
    13c8:	e3530000 	cmp	r3, #0
    13cc:	1affff84 	bne	11e4 <printf+0x30>
    13d0:	e1a00000 	nop			@ (mov r0, r0)
    13d4:	e1a00000 	nop			@ (mov r0, r0)
    13d8:	e24bd004 	sub	sp, fp, #4
    13dc:	e8bd4800 	pop	{fp, lr}
    13e0:	e28dd00c 	add	sp, sp, #12
    13e4:	e12fff1e 	bx	lr
    13e8:	000018e4 	.word	0x000018e4

000013ec <free>:
    13ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13f0:	e28db000 	add	fp, sp, #0
    13f4:	e24dd014 	sub	sp, sp, #20
    13f8:	e50b0010 	str	r0, [fp, #-16]
    13fc:	e51b3010 	ldr	r3, [fp, #-16]
    1400:	e2433008 	sub	r3, r3, #8
    1404:	e50b300c 	str	r3, [fp, #-12]
    1408:	e59f3154 	ldr	r3, [pc, #340]	@ 1564 <free+0x178>
    140c:	e5933000 	ldr	r3, [r3]
    1410:	e50b3008 	str	r3, [fp, #-8]
    1414:	ea000010 	b	145c <free+0x70>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e51b2008 	ldr	r2, [fp, #-8]
    1424:	e1520003 	cmp	r2, r3
    1428:	3a000008 	bcc	1450 <free+0x64>
    142c:	e51b200c 	ldr	r2, [fp, #-12]
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e1520003 	cmp	r2, r3
    1438:	8a000010 	bhi	1480 <free+0x94>
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e51b200c 	ldr	r2, [fp, #-12]
    1448:	e1520003 	cmp	r2, r3
    144c:	3a00000b 	bcc	1480 <free+0x94>
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e5933000 	ldr	r3, [r3]
    1458:	e50b3008 	str	r3, [fp, #-8]
    145c:	e51b200c 	ldr	r2, [fp, #-12]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e1520003 	cmp	r2, r3
    1468:	9affffea 	bls	1418 <free+0x2c>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e51b200c 	ldr	r2, [fp, #-12]
    1478:	e1520003 	cmp	r2, r3
    147c:	2affffe5 	bcs	1418 <free+0x2c>
    1480:	e51b300c 	ldr	r3, [fp, #-12]
    1484:	e5933004 	ldr	r3, [r3, #4]
    1488:	e1a03183 	lsl	r3, r3, #3
    148c:	e51b200c 	ldr	r2, [fp, #-12]
    1490:	e0822003 	add	r2, r2, r3
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e5933000 	ldr	r3, [r3]
    149c:	e1520003 	cmp	r2, r3
    14a0:	1a00000d 	bne	14dc <free+0xf0>
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5932004 	ldr	r2, [r3, #4]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e5933004 	ldr	r3, [r3, #4]
    14b8:	e0822003 	add	r2, r2, r3
    14bc:	e51b300c 	ldr	r3, [fp, #-12]
    14c0:	e5832004 	str	r2, [r3, #4]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e5932000 	ldr	r2, [r3]
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e5832000 	str	r2, [r3]
    14d8:	ea000003 	b	14ec <free+0x100>
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5932000 	ldr	r2, [r3]
    14e4:	e51b300c 	ldr	r3, [fp, #-12]
    14e8:	e5832000 	str	r2, [r3]
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5933004 	ldr	r3, [r3, #4]
    14f4:	e1a03183 	lsl	r3, r3, #3
    14f8:	e51b2008 	ldr	r2, [fp, #-8]
    14fc:	e0823003 	add	r3, r2, r3
    1500:	e51b200c 	ldr	r2, [fp, #-12]
    1504:	e1520003 	cmp	r2, r3
    1508:	1a00000b 	bne	153c <free+0x150>
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5932004 	ldr	r2, [r3, #4]
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e5933004 	ldr	r3, [r3, #4]
    151c:	e0822003 	add	r2, r2, r3
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5832004 	str	r2, [r3, #4]
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5932000 	ldr	r2, [r3]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5832000 	str	r2, [r3]
    1538:	ea000002 	b	1548 <free+0x15c>
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e51b200c 	ldr	r2, [fp, #-12]
    1544:	e5832000 	str	r2, [r3]
    1548:	e59f2014 	ldr	r2, [pc, #20]	@ 1564 <free+0x178>
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5823000 	str	r3, [r2]
    1554:	e1a00000 	nop			@ (mov r0, r0)
    1558:	e28bd000 	add	sp, fp, #0
    155c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1560:	e12fff1e 	bx	lr
    1564:	00001908 	.word	0x00001908

00001568 <morecore>:
    1568:	e92d4800 	push	{fp, lr}
    156c:	e28db004 	add	fp, sp, #4
    1570:	e24dd010 	sub	sp, sp, #16
    1574:	e50b0010 	str	r0, [fp, #-16]
    1578:	e51b3010 	ldr	r3, [fp, #-16]
    157c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1580:	2a000001 	bcs	158c <morecore+0x24>
    1584:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1588:	e50b3010 	str	r3, [fp, #-16]
    158c:	e51b3010 	ldr	r3, [fp, #-16]
    1590:	e1a03183 	lsl	r3, r3, #3
    1594:	e1a00003 	mov	r0, r3
    1598:	ebfffdfc 	bl	d90 <sbrk>
    159c:	e50b0008 	str	r0, [fp, #-8]
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e3730001 	cmn	r3, #1
    15a8:	1a000001 	bne	15b4 <morecore+0x4c>
    15ac:	e3a03000 	mov	r3, #0
    15b0:	ea00000a 	b	15e0 <morecore+0x78>
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e50b300c 	str	r3, [fp, #-12]
    15bc:	e51b300c 	ldr	r3, [fp, #-12]
    15c0:	e51b2010 	ldr	r2, [fp, #-16]
    15c4:	e5832004 	str	r2, [r3, #4]
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e2833008 	add	r3, r3, #8
    15d0:	e1a00003 	mov	r0, r3
    15d4:	ebffff84 	bl	13ec <free>
    15d8:	e59f300c 	ldr	r3, [pc, #12]	@ 15ec <morecore+0x84>
    15dc:	e5933000 	ldr	r3, [r3]
    15e0:	e1a00003 	mov	r0, r3
    15e4:	e24bd004 	sub	sp, fp, #4
    15e8:	e8bd8800 	pop	{fp, pc}
    15ec:	00001908 	.word	0x00001908

000015f0 <malloc>:
    15f0:	e92d4800 	push	{fp, lr}
    15f4:	e28db004 	add	fp, sp, #4
    15f8:	e24dd018 	sub	sp, sp, #24
    15fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1604:	e2833007 	add	r3, r3, #7
    1608:	e1a031a3 	lsr	r3, r3, #3
    160c:	e2833001 	add	r3, r3, #1
    1610:	e50b3010 	str	r3, [fp, #-16]
    1614:	e59f3134 	ldr	r3, [pc, #308]	@ 1750 <malloc+0x160>
    1618:	e5933000 	ldr	r3, [r3]
    161c:	e50b300c 	str	r3, [fp, #-12]
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e3530000 	cmp	r3, #0
    1628:	1a00000b 	bne	165c <malloc+0x6c>
    162c:	e59f3120 	ldr	r3, [pc, #288]	@ 1754 <malloc+0x164>
    1630:	e50b300c 	str	r3, [fp, #-12]
    1634:	e59f2114 	ldr	r2, [pc, #276]	@ 1750 <malloc+0x160>
    1638:	e51b300c 	ldr	r3, [fp, #-12]
    163c:	e5823000 	str	r3, [r2]
    1640:	e59f3108 	ldr	r3, [pc, #264]	@ 1750 <malloc+0x160>
    1644:	e5933000 	ldr	r3, [r3]
    1648:	e59f2104 	ldr	r2, [pc, #260]	@ 1754 <malloc+0x164>
    164c:	e5823000 	str	r3, [r2]
    1650:	e59f30fc 	ldr	r3, [pc, #252]	@ 1754 <malloc+0x164>
    1654:	e3a02000 	mov	r2, #0
    1658:	e5832004 	str	r2, [r3, #4]
    165c:	e51b300c 	ldr	r3, [fp, #-12]
    1660:	e5933000 	ldr	r3, [r3]
    1664:	e50b3008 	str	r3, [fp, #-8]
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e5933004 	ldr	r3, [r3, #4]
    1670:	e51b2010 	ldr	r2, [fp, #-16]
    1674:	e1520003 	cmp	r2, r3
    1678:	8a00001e 	bhi	16f8 <malloc+0x108>
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e5933004 	ldr	r3, [r3, #4]
    1684:	e51b2010 	ldr	r2, [fp, #-16]
    1688:	e1520003 	cmp	r2, r3
    168c:	1a000004 	bne	16a4 <malloc+0xb4>
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e5932000 	ldr	r2, [r3]
    1698:	e51b300c 	ldr	r3, [fp, #-12]
    169c:	e5832000 	str	r2, [r3]
    16a0:	ea00000e 	b	16e0 <malloc+0xf0>
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e5932004 	ldr	r2, [r3, #4]
    16ac:	e51b3010 	ldr	r3, [fp, #-16]
    16b0:	e0422003 	sub	r2, r2, r3
    16b4:	e51b3008 	ldr	r3, [fp, #-8]
    16b8:	e5832004 	str	r2, [r3, #4]
    16bc:	e51b3008 	ldr	r3, [fp, #-8]
    16c0:	e5933004 	ldr	r3, [r3, #4]
    16c4:	e1a03183 	lsl	r3, r3, #3
    16c8:	e51b2008 	ldr	r2, [fp, #-8]
    16cc:	e0823003 	add	r3, r2, r3
    16d0:	e50b3008 	str	r3, [fp, #-8]
    16d4:	e51b3008 	ldr	r3, [fp, #-8]
    16d8:	e51b2010 	ldr	r2, [fp, #-16]
    16dc:	e5832004 	str	r2, [r3, #4]
    16e0:	e59f2068 	ldr	r2, [pc, #104]	@ 1750 <malloc+0x160>
    16e4:	e51b300c 	ldr	r3, [fp, #-12]
    16e8:	e5823000 	str	r3, [r2]
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e2833008 	add	r3, r3, #8
    16f4:	ea000012 	b	1744 <malloc+0x154>
    16f8:	e59f3050 	ldr	r3, [pc, #80]	@ 1750 <malloc+0x160>
    16fc:	e5933000 	ldr	r3, [r3]
    1700:	e51b2008 	ldr	r2, [fp, #-8]
    1704:	e1520003 	cmp	r2, r3
    1708:	1a000007 	bne	172c <malloc+0x13c>
    170c:	e51b0010 	ldr	r0, [fp, #-16]
    1710:	ebffff94 	bl	1568 <morecore>
    1714:	e50b0008 	str	r0, [fp, #-8]
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e3530000 	cmp	r3, #0
    1720:	1a000001 	bne	172c <malloc+0x13c>
    1724:	e3a03000 	mov	r3, #0
    1728:	ea000005 	b	1744 <malloc+0x154>
    172c:	e51b3008 	ldr	r3, [fp, #-8]
    1730:	e50b300c 	str	r3, [fp, #-12]
    1734:	e51b3008 	ldr	r3, [fp, #-8]
    1738:	e5933000 	ldr	r3, [r3]
    173c:	e50b3008 	str	r3, [fp, #-8]
    1740:	eaffffc8 	b	1668 <malloc+0x78>
    1744:	e1a00003 	mov	r0, r3
    1748:	e24bd004 	sub	sp, fp, #4
    174c:	e8bd8800 	pop	{fp, pc}
    1750:	00001908 	.word	0x00001908
    1754:	00001900 	.word	0x00001900

00001758 <__udivsi3>:
    1758:	e2512001 	subs	r2, r1, #1
    175c:	012fff1e 	bxeq	lr
    1760:	3a000036 	bcc	1840 <__udivsi3+0xe8>
    1764:	e1500001 	cmp	r0, r1
    1768:	9a000022 	bls	17f8 <__udivsi3+0xa0>
    176c:	e1110002 	tst	r1, r2
    1770:	0a000023 	beq	1804 <__udivsi3+0xac>
    1774:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1778:	01a01181 	lsleq	r1, r1, #3
    177c:	03a03008 	moveq	r3, #8
    1780:	13a03001 	movne	r3, #1
    1784:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1788:	31510000 	cmpcc	r1, r0
    178c:	31a01201 	lslcc	r1, r1, #4
    1790:	31a03203 	lslcc	r3, r3, #4
    1794:	3afffffa 	bcc	1784 <__udivsi3+0x2c>
    1798:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    179c:	31510000 	cmpcc	r1, r0
    17a0:	31a01081 	lslcc	r1, r1, #1
    17a4:	31a03083 	lslcc	r3, r3, #1
    17a8:	3afffffa 	bcc	1798 <__udivsi3+0x40>
    17ac:	e3a02000 	mov	r2, #0
    17b0:	e1500001 	cmp	r0, r1
    17b4:	20400001 	subcs	r0, r0, r1
    17b8:	21822003 	orrcs	r2, r2, r3
    17bc:	e15000a1 	cmp	r0, r1, lsr #1
    17c0:	204000a1 	subcs	r0, r0, r1, lsr #1
    17c4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17c8:	e1500121 	cmp	r0, r1, lsr #2
    17cc:	20400121 	subcs	r0, r0, r1, lsr #2
    17d0:	21822123 	orrcs	r2, r2, r3, lsr #2
    17d4:	e15001a1 	cmp	r0, r1, lsr #3
    17d8:	204001a1 	subcs	r0, r0, r1, lsr #3
    17dc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17e0:	e3500000 	cmp	r0, #0
    17e4:	11b03223 	lsrsne	r3, r3, #4
    17e8:	11a01221 	lsrne	r1, r1, #4
    17ec:	1affffef 	bne	17b0 <__udivsi3+0x58>
    17f0:	e1a00002 	mov	r0, r2
    17f4:	e12fff1e 	bx	lr
    17f8:	03a00001 	moveq	r0, #1
    17fc:	13a00000 	movne	r0, #0
    1800:	e12fff1e 	bx	lr
    1804:	e3510801 	cmp	r1, #65536	@ 0x10000
    1808:	21a01821 	lsrcs	r1, r1, #16
    180c:	23a02010 	movcs	r2, #16
    1810:	33a02000 	movcc	r2, #0
    1814:	e3510c01 	cmp	r1, #256	@ 0x100
    1818:	21a01421 	lsrcs	r1, r1, #8
    181c:	22822008 	addcs	r2, r2, #8
    1820:	e3510010 	cmp	r1, #16
    1824:	21a01221 	lsrcs	r1, r1, #4
    1828:	22822004 	addcs	r2, r2, #4
    182c:	e3510004 	cmp	r1, #4
    1830:	82822003 	addhi	r2, r2, #3
    1834:	908220a1 	addls	r2, r2, r1, lsr #1
    1838:	e1a00230 	lsr	r0, r0, r2
    183c:	e12fff1e 	bx	lr
    1840:	e3500000 	cmp	r0, #0
    1844:	13e00000 	mvnne	r0, #0
    1848:	ea000007 	b	186c <__aeabi_idiv0>

0000184c <__aeabi_uidivmod>:
    184c:	e3510000 	cmp	r1, #0
    1850:	0afffffa 	beq	1840 <__udivsi3+0xe8>
    1854:	e92d4003 	push	{r0, r1, lr}
    1858:	ebffffbe 	bl	1758 <__udivsi3>
    185c:	e8bd4006 	pop	{r1, r2, lr}
    1860:	e0030092 	mul	r3, r2, r0
    1864:	e0411003 	sub	r1, r1, r3
    1868:	e12fff1e 	bx	lr

0000186c <__aeabi_idiv0>:
    186c:	e12fff1e 	bx	lr
