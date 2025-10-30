
_t_l_cv2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <toggle1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e59f007c 	ldr	r0, [pc, #124]	@ 94 <toggle1+0x94>
      14:	eb000244 	bl	92c <acquireLock>
      18:	e3a03000 	mov	r3, #0
      1c:	e50b3008 	str	r3, [fp, #-8]
      20:	ea000011 	b	6c <toggle1+0x6c>
      24:	e59f1068 	ldr	r1, [pc, #104]	@ 94 <toggle1+0x94>
      28:	e59f0068 	ldr	r0, [pc, #104]	@ 98 <toggle1+0x98>
      2c:	eb000273 	bl	a00 <condWait>
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e5933000 	ldr	r3, [r3]
      38:	e3530001 	cmp	r3, #1
      3c:	0afffff8 	beq	24 <toggle1+0x24>
      40:	e59f1054 	ldr	r1, [pc, #84]	@ 9c <toggle1+0x9c>
      44:	e3a00001 	mov	r0, #1
      48:	eb000495 	bl	12a4 <printf>
      4c:	e51b3010 	ldr	r3, [fp, #-16]
      50:	e3a02001 	mov	r2, #1
      54:	e5832000 	str	r2, [r3]
      58:	e59f0038 	ldr	r0, [pc, #56]	@ 98 <toggle1+0x98>
      5c:	eb000280 	bl	a64 <broadcast>
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e2833001 	add	r3, r3, #1
      68:	e50b3008 	str	r3, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530009 	cmp	r3, #9
      74:	daffffed 	ble	30 <toggle1+0x30>
      78:	e59f0014 	ldr	r0, [pc, #20]	@ 94 <toggle1+0x94>
      7c:	eb00023e 	bl	97c <releaseLock>
      80:	eb0003d8 	bl	fe8 <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	0000199c 	.word	0x0000199c
      98:	000019a4 	.word	0x000019a4
      9c:	00001960 	.word	0x00001960

000000a0 <toggle2>:
      a0:	e92d4800 	push	{fp, lr}
      a4:	e28db004 	add	fp, sp, #4
      a8:	e24dd010 	sub	sp, sp, #16
      ac:	e50b0010 	str	r0, [fp, #-16]
      b0:	e59f007c 	ldr	r0, [pc, #124]	@ 134 <toggle2+0x94>
      b4:	eb00021c 	bl	92c <acquireLock>
      b8:	e3a03000 	mov	r3, #0
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	ea000011 	b	10c <toggle2+0x6c>
      c4:	e59f1068 	ldr	r1, [pc, #104]	@ 134 <toggle2+0x94>
      c8:	e59f0068 	ldr	r0, [pc, #104]	@ 138 <toggle2+0x98>
      cc:	eb00024b 	bl	a00 <condWait>
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e5933000 	ldr	r3, [r3]
      d8:	e3530000 	cmp	r3, #0
      dc:	0afffff8 	beq	c4 <toggle2+0x24>
      e0:	e59f1054 	ldr	r1, [pc, #84]	@ 13c <toggle2+0x9c>
      e4:	e3a00001 	mov	r0, #1
      e8:	eb00046d 	bl	12a4 <printf>
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e3a02000 	mov	r2, #0
      f4:	e5832000 	str	r2, [r3]
      f8:	e59f0038 	ldr	r0, [pc, #56]	@ 138 <toggle2+0x98>
      fc:	eb000258 	bl	a64 <broadcast>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e3530009 	cmp	r3, #9
     114:	daffffed 	ble	d0 <toggle2+0x30>
     118:	e59f0014 	ldr	r0, [pc, #20]	@ 134 <toggle2+0x94>
     11c:	eb000216 	bl	97c <releaseLock>
     120:	eb0003b0 	bl	fe8 <thread_exit>
     124:	e3a03000 	mov	r3, #0
     128:	e1a00003 	mov	r0, r3
     12c:	e24bd004 	sub	sp, fp, #4
     130:	e8bd8800 	pop	{fp, pc}
     134:	0000199c 	.word	0x0000199c
     138:	000019a4 	.word	0x000019a4
     13c:	00001970 	.word	0x00001970

00000140 <main>:
     140:	e92d4800 	push	{fp, lr}
     144:	e28db004 	add	fp, sp, #4
     148:	e24dd010 	sub	sp, sp, #16
     14c:	e59f0054 	ldr	r0, [pc, #84]	@ 1a8 <main+0x68>
     150:	eb0001e7 	bl	8f4 <initiateLock>
     154:	e59f0050 	ldr	r0, [pc, #80]	@ 1ac <main+0x6c>
     158:	eb00021a 	bl	9c8 <initiateCondVar>
     15c:	e3a03000 	mov	r3, #0
     160:	e50b3008 	str	r3, [fp, #-8]
     164:	e24b2008 	sub	r2, fp, #8
     168:	e24b300c 	sub	r3, fp, #12
     16c:	e59f103c 	ldr	r1, [pc, #60]	@ 1b0 <main+0x70>
     170:	e1a00003 	mov	r0, r3
     174:	eb000392 	bl	fc4 <thread_create>
     178:	e24b2008 	sub	r2, fp, #8
     17c:	e24b3010 	sub	r3, fp, #16
     180:	e59f102c 	ldr	r1, [pc, #44]	@ 1b4 <main+0x74>
     184:	e1a00003 	mov	r0, r3
     188:	eb00038d 	bl	fc4 <thread_create>
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e1a00003 	mov	r0, r3
     194:	eb00039c 	bl	100c <thread_join>
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e1a00003 	mov	r0, r3
     1a0:	eb000399 	bl	100c <thread_join>
     1a4:	eb0002a5 	bl	c40 <exit>
     1a8:	0000199c 	.word	0x0000199c
     1ac:	000019a4 	.word	0x000019a4
     1b0:	00000000 	.word	0x00000000
     1b4:	000000a0 	.word	0x000000a0

000001b8 <pg_pte>:
     1b8:	e92d4800 	push	{fp, lr}
     1bc:	e28db004 	add	fp, sp, #4
     1c0:	e24dd008 	sub	sp, sp, #8
     1c4:	e50b0008 	str	r0, [fp, #-8]
     1c8:	e51b1008 	ldr	r1, [fp, #-8]
     1cc:	e3a0001a 	mov	r0, #26
     1d0:	eb0003d5 	bl	112c <syscall>
     1d4:	e1a03000 	mov	r3, r0
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e24bd004 	sub	sp, fp, #4
     1e0:	e8bd8800 	pop	{fp, pc}

000001e4 <pg_pa>:
     1e4:	e92d4800 	push	{fp, lr}
     1e8:	e28db004 	add	fp, sp, #4
     1ec:	e24dd008 	sub	sp, sp, #8
     1f0:	e50b0008 	str	r0, [fp, #-8]
     1f4:	e51b1008 	ldr	r1, [fp, #-8]
     1f8:	e3a0001b 	mov	r0, #27
     1fc:	eb0003ca 	bl	112c <syscall>
     200:	e1a03000 	mov	r3, r0
     204:	e1a00003 	mov	r0, r3
     208:	e24bd004 	sub	sp, fp, #4
     20c:	e8bd8800 	pop	{fp, pc}

00000210 <pg_flags>:
     210:	e92d4800 	push	{fp, lr}
     214:	e28db004 	add	fp, sp, #4
     218:	e24dd008 	sub	sp, sp, #8
     21c:	e50b0008 	str	r0, [fp, #-8]
     220:	e51b1008 	ldr	r1, [fp, #-8]
     224:	e3a0001c 	mov	r0, #28
     228:	eb0003bf 	bl	112c <syscall>
     22c:	e1a03000 	mov	r3, r0
     230:	e1a00003 	mov	r0, r3
     234:	e24bd004 	sub	sp, fp, #4
     238:	e8bd8800 	pop	{fp, pc}

0000023c <kpt>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e3a0001d 	mov	r0, #29
     248:	eb0003b7 	bl	112c <syscall>
     24c:	e1a03000 	mov	r3, r0
     250:	e1a00003 	mov	r0, r3
     254:	e8bd8800 	pop	{fp, pc}

00000258 <ugetpid>:
     258:	e92d4800 	push	{fp, lr}
     25c:	e28db004 	add	fp, sp, #4
     260:	e3a0001e 	mov	r0, #30
     264:	eb0003b0 	bl	112c <syscall>
     268:	e1a03000 	mov	r3, r0
     26c:	e1a00003 	mov	r0, r3
     270:	e8bd8800 	pop	{fp, pc}

00000274 <strcpy>:
     274:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     278:	e28db000 	add	fp, sp, #0
     27c:	e24dd014 	sub	sp, sp, #20
     280:	e50b0010 	str	r0, [fp, #-16]
     284:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     288:	e51b3010 	ldr	r3, [fp, #-16]
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	e1a00000 	nop			@ (mov r0, r0)
     294:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     298:	e2823001 	add	r3, r2, #1
     29c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a0:	e51b3010 	ldr	r3, [fp, #-16]
     2a4:	e2831001 	add	r1, r3, #1
     2a8:	e50b1010 	str	r1, [fp, #-16]
     2ac:	e5d22000 	ldrb	r2, [r2]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e5d33000 	ldrb	r3, [r3]
     2b8:	e3530000 	cmp	r3, #0
     2bc:	1afffff4 	bne	294 <strcpy+0x20>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e1a00003 	mov	r0, r3
     2c8:	e28bd000 	add	sp, fp, #0
     2cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d0:	e12fff1e 	bx	lr

000002d4 <strcmp>:
     2d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d8:	e28db000 	add	fp, sp, #0
     2dc:	e24dd00c 	sub	sp, sp, #12
     2e0:	e50b0008 	str	r0, [fp, #-8]
     2e4:	e50b100c 	str	r1, [fp, #-12]
     2e8:	ea000005 	b	304 <strcmp+0x30>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b300c 	ldr	r3, [fp, #-12]
     2fc:	e2833001 	add	r3, r3, #1
     300:	e50b300c 	str	r3, [fp, #-12]
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e3530000 	cmp	r3, #0
     310:	0a000005 	beq	32c <strcmp+0x58>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e5d32000 	ldrb	r2, [r3]
     31c:	e51b300c 	ldr	r3, [fp, #-12]
     320:	e5d33000 	ldrb	r3, [r3]
     324:	e1520003 	cmp	r2, r3
     328:	0affffef 	beq	2ec <strcmp+0x18>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e1a02003 	mov	r2, r3
     338:	e51b300c 	ldr	r3, [fp, #-12]
     33c:	e5d33000 	ldrb	r3, [r3]
     340:	e0423003 	sub	r3, r2, r3
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strlen>:
     354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd014 	sub	sp, sp, #20
     360:	e50b0010 	str	r0, [fp, #-16]
     364:	e3a03000 	mov	r3, #0
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	ea000002 	b	37c <strlen+0x28>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e2833001 	add	r3, r3, #1
     378:	e50b3008 	str	r3, [fp, #-8]
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e51b2010 	ldr	r2, [fp, #-16]
     384:	e0823003 	add	r3, r2, r3
     388:	e5d33000 	ldrb	r3, [r3]
     38c:	e3530000 	cmp	r3, #0
     390:	1afffff6 	bne	370 <strlen+0x1c>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e1a00003 	mov	r0, r3
     39c:	e28bd000 	add	sp, fp, #0
     3a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a4:	e12fff1e 	bx	lr

000003a8 <memset>:
     3a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3ac:	e28db000 	add	fp, sp, #0
     3b0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     3b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3bc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     3c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c4:	e50b3008 	str	r3, [fp, #-8]
     3c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3cc:	e54b300d 	strb	r3, [fp, #-13]
     3d0:	e55b200d 	ldrb	r2, [fp, #-13]
     3d4:	e1a03002 	mov	r3, r2
     3d8:	e1a03403 	lsl	r3, r3, #8
     3dc:	e0833002 	add	r3, r3, r2
     3e0:	e1a03803 	lsl	r3, r3, #16
     3e4:	e1a02003 	mov	r2, r3
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e1a03403 	lsl	r3, r3, #8
     3f0:	e1822003 	orr	r2, r2, r3
     3f4:	e55b300d 	ldrb	r3, [fp, #-13]
     3f8:	e1823003 	orr	r3, r2, r3
     3fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     400:	ea000008 	b	428 <memset+0x80>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e55b200d 	ldrb	r2, [fp, #-13]
     40c:	e5c32000 	strb	r2, [r3]
     410:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     414:	e2433001 	sub	r3, r3, #1
     418:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     42c:	e3530000 	cmp	r3, #0
     430:	0a000003 	beq	444 <memset+0x9c>
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e2033003 	and	r3, r3, #3
     43c:	e3530000 	cmp	r3, #0
     440:	1affffef 	bne	404 <memset+0x5c>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e50b300c 	str	r3, [fp, #-12]
     44c:	ea000008 	b	474 <memset+0xcc>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     458:	e5832000 	str	r2, [r3]
     45c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     460:	e2433004 	sub	r3, r3, #4
     464:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e2833004 	add	r3, r3, #4
     470:	e50b300c 	str	r3, [fp, #-12]
     474:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     478:	e3530003 	cmp	r3, #3
     47c:	8afffff3 	bhi	450 <memset+0xa8>
     480:	e51b300c 	ldr	r3, [fp, #-12]
     484:	e50b3008 	str	r3, [fp, #-8]
     488:	ea000008 	b	4b0 <memset+0x108>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e55b200d 	ldrb	r2, [fp, #-13]
     494:	e5c32000 	strb	r2, [r3]
     498:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     49c:	e2433001 	sub	r3, r3, #1
     4a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4a4:	e51b3008 	ldr	r3, [fp, #-8]
     4a8:	e2833001 	add	r3, r3, #1
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4b4:	e3530000 	cmp	r3, #0
     4b8:	1afffff3 	bne	48c <memset+0xe4>
     4bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4c0:	e1a00003 	mov	r0, r3
     4c4:	e28bd000 	add	sp, fp, #0
     4c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4cc:	e12fff1e 	bx	lr

000004d0 <strchr>:
     4d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4d4:	e28db000 	add	fp, sp, #0
     4d8:	e24dd00c 	sub	sp, sp, #12
     4dc:	e50b0008 	str	r0, [fp, #-8]
     4e0:	e1a03001 	mov	r3, r1
     4e4:	e54b3009 	strb	r3, [fp, #-9]
     4e8:	ea000009 	b	514 <strchr+0x44>
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e55b2009 	ldrb	r2, [fp, #-9]
     4f8:	e1520003 	cmp	r2, r3
     4fc:	1a000001 	bne	508 <strchr+0x38>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	ea000007 	b	528 <strchr+0x58>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e2833001 	add	r3, r3, #1
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e3530000 	cmp	r3, #0
     520:	1afffff1 	bne	4ec <strchr+0x1c>
     524:	e3a03000 	mov	r3, #0
     528:	e1a00003 	mov	r0, r3
     52c:	e28bd000 	add	sp, fp, #0
     530:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     534:	e12fff1e 	bx	lr

00000538 <gets>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd018 	sub	sp, sp, #24
     544:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     548:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     54c:	e3a03000 	mov	r3, #0
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	ea000016 	b	5b4 <gets+0x7c>
     558:	e24b300d 	sub	r3, fp, #13
     55c:	e3a02001 	mov	r2, #1
     560:	e1a01003 	mov	r1, r3
     564:	e3a00000 	mov	r0, #0
     568:	eb0001cf 	bl	cac <read>
     56c:	e50b000c 	str	r0, [fp, #-12]
     570:	e51b300c 	ldr	r3, [fp, #-12]
     574:	e3530000 	cmp	r3, #0
     578:	da000013 	ble	5cc <gets+0x94>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e2832001 	add	r2, r3, #1
     584:	e50b2008 	str	r2, [fp, #-8]
     588:	e1a02003 	mov	r2, r3
     58c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     590:	e0833002 	add	r3, r3, r2
     594:	e55b200d 	ldrb	r2, [fp, #-13]
     598:	e5c32000 	strb	r2, [r3]
     59c:	e55b300d 	ldrb	r3, [fp, #-13]
     5a0:	e353000a 	cmp	r3, #10
     5a4:	0a000009 	beq	5d0 <gets+0x98>
     5a8:	e55b300d 	ldrb	r3, [fp, #-13]
     5ac:	e353000d 	cmp	r3, #13
     5b0:	0a000006 	beq	5d0 <gets+0x98>
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e2833001 	add	r3, r3, #1
     5bc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     5c0:	e1520003 	cmp	r2, r3
     5c4:	caffffe3 	bgt	558 <gets+0x20>
     5c8:	ea000000 	b	5d0 <gets+0x98>
     5cc:	e1a00000 	nop			@ (mov r0, r0)
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5d8:	e0823003 	add	r3, r2, r3
     5dc:	e3a02000 	mov	r2, #0
     5e0:	e5c32000 	strb	r2, [r3]
     5e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5e8:	e1a00003 	mov	r0, r3
     5ec:	e24bd004 	sub	sp, fp, #4
     5f0:	e8bd8800 	pop	{fp, pc}

000005f4 <stat>:
     5f4:	e92d4800 	push	{fp, lr}
     5f8:	e28db004 	add	fp, sp, #4
     5fc:	e24dd010 	sub	sp, sp, #16
     600:	e50b0010 	str	r0, [fp, #-16]
     604:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     608:	e3a01000 	mov	r1, #0
     60c:	e51b0010 	ldr	r0, [fp, #-16]
     610:	eb0001d2 	bl	d60 <open>
     614:	e50b0008 	str	r0, [fp, #-8]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e3530000 	cmp	r3, #0
     620:	aa000001 	bge	62c <stat+0x38>
     624:	e3e03000 	mvn	r3, #0
     628:	ea000006 	b	648 <stat+0x54>
     62c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     630:	e51b0008 	ldr	r0, [fp, #-8]
     634:	eb0001e4 	bl	dcc <fstat>
     638:	e50b000c 	str	r0, [fp, #-12]
     63c:	e51b0008 	ldr	r0, [fp, #-8]
     640:	eb0001ab 	bl	cf4 <close>
     644:	e51b300c 	ldr	r3, [fp, #-12]
     648:	e1a00003 	mov	r0, r3
     64c:	e24bd004 	sub	sp, fp, #4
     650:	e8bd8800 	pop	{fp, pc}

00000654 <atoi>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd014 	sub	sp, sp, #20
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e3a03000 	mov	r3, #0
     668:	e50b3008 	str	r3, [fp, #-8]
     66c:	ea00000c 	b	6a4 <atoi+0x50>
     670:	e51b2008 	ldr	r2, [fp, #-8]
     674:	e1a03002 	mov	r3, r2
     678:	e1a03103 	lsl	r3, r3, #2
     67c:	e0833002 	add	r3, r3, r2
     680:	e1a03083 	lsl	r3, r3, #1
     684:	e1a01003 	mov	r1, r3
     688:	e51b3010 	ldr	r3, [fp, #-16]
     68c:	e2832001 	add	r2, r3, #1
     690:	e50b2010 	str	r2, [fp, #-16]
     694:	e5d33000 	ldrb	r3, [r3]
     698:	e0813003 	add	r3, r1, r3
     69c:	e2433030 	sub	r3, r3, #48	@ 0x30
     6a0:	e50b3008 	str	r3, [fp, #-8]
     6a4:	e51b3010 	ldr	r3, [fp, #-16]
     6a8:	e5d33000 	ldrb	r3, [r3]
     6ac:	e353002f 	cmp	r3, #47	@ 0x2f
     6b0:	9a000003 	bls	6c4 <atoi+0x70>
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e5d33000 	ldrb	r3, [r3]
     6bc:	e3530039 	cmp	r3, #57	@ 0x39
     6c0:	9affffea 	bls	670 <atoi+0x1c>
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e1a00003 	mov	r0, r3
     6cc:	e28bd000 	add	sp, fp, #0
     6d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <memmove>:
     6d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6dc:	e28db000 	add	fp, sp, #0
     6e0:	e24dd01c 	sub	sp, sp, #28
     6e4:	e50b0010 	str	r0, [fp, #-16]
     6e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6f0:	e51b3010 	ldr	r3, [fp, #-16]
     6f4:	e50b3008 	str	r3, [fp, #-8]
     6f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6fc:	e50b300c 	str	r3, [fp, #-12]
     700:	ea000007 	b	724 <memmove+0x4c>
     704:	e51b200c 	ldr	r2, [fp, #-12]
     708:	e2823001 	add	r3, r2, #1
     70c:	e50b300c 	str	r3, [fp, #-12]
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e2831001 	add	r1, r3, #1
     718:	e50b1008 	str	r1, [fp, #-8]
     71c:	e5d22000 	ldrb	r2, [r2]
     720:	e5c32000 	strb	r2, [r3]
     724:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     728:	e2432001 	sub	r2, r3, #1
     72c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     730:	e3530000 	cmp	r3, #0
     734:	cafffff2 	bgt	704 <memmove+0x2c>
     738:	e51b3010 	ldr	r3, [fp, #-16]
     73c:	e1a00003 	mov	r0, r3
     740:	e28bd000 	add	sp, fp, #0
     744:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <strncmp>:
     74c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     750:	e28db000 	add	fp, sp, #0
     754:	e24dd014 	sub	sp, sp, #20
     758:	e50b0008 	str	r0, [fp, #-8]
     75c:	e50b100c 	str	r1, [fp, #-12]
     760:	e50b2010 	str	r2, [fp, #-16]
     764:	ea000008 	b	78c <strncmp+0x40>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2833001 	add	r3, r3, #1
     770:	e50b3008 	str	r3, [fp, #-8]
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e2833001 	add	r3, r3, #1
     77c:	e50b300c 	str	r3, [fp, #-12]
     780:	e51b3010 	ldr	r3, [fp, #-16]
     784:	e2433001 	sub	r3, r3, #1
     788:	e50b3010 	str	r3, [fp, #-16]
     78c:	e51b3010 	ldr	r3, [fp, #-16]
     790:	e3530000 	cmp	r3, #0
     794:	da00000d 	ble	7d0 <strncmp+0x84>
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e5d33000 	ldrb	r3, [r3]
     7a0:	e3530000 	cmp	r3, #0
     7a4:	0a000009 	beq	7d0 <strncmp+0x84>
     7a8:	e51b300c 	ldr	r3, [fp, #-12]
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	0a000005 	beq	7d0 <strncmp+0x84>
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e5d32000 	ldrb	r2, [r3]
     7c0:	e51b300c 	ldr	r3, [fp, #-12]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e1520003 	cmp	r2, r3
     7cc:	0affffe5 	beq	768 <strncmp+0x1c>
     7d0:	e51b3010 	ldr	r3, [fp, #-16]
     7d4:	e3530000 	cmp	r3, #0
     7d8:	1a000001 	bne	7e4 <strncmp+0x98>
     7dc:	e3a03000 	mov	r3, #0
     7e0:	ea000005 	b	7fc <strncmp+0xb0>
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e1a02003 	mov	r2, r3
     7f0:	e51b300c 	ldr	r3, [fp, #-12]
     7f4:	e5d33000 	ldrb	r3, [r3]
     7f8:	e0423003 	sub	r3, r2, r3
     7fc:	e1a00003 	mov	r0, r3
     800:	e28bd000 	add	sp, fp, #0
     804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <strncpy>:
     80c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     810:	e28db000 	add	fp, sp, #0
     814:	e24dd01c 	sub	sp, sp, #28
     818:	e50b0010 	str	r0, [fp, #-16]
     81c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     820:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     824:	e51b3010 	ldr	r3, [fp, #-16]
     828:	e50b3008 	str	r3, [fp, #-8]
     82c:	ea00000a 	b	85c <strncpy+0x50>
     830:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     834:	e2823001 	add	r3, r2, #1
     838:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e2831001 	add	r1, r3, #1
     844:	e50b1008 	str	r1, [fp, #-8]
     848:	e5d22000 	ldrb	r2, [r2]
     84c:	e5c32000 	strb	r2, [r3]
     850:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     854:	e2433001 	sub	r3, r3, #1
     858:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     85c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     860:	e3530000 	cmp	r3, #0
     864:	da00000c 	ble	89c <strncpy+0x90>
     868:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     86c:	e5d33000 	ldrb	r3, [r3]
     870:	e3530000 	cmp	r3, #0
     874:	1affffed 	bne	830 <strncpy+0x24>
     878:	ea000007 	b	89c <strncpy+0x90>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e2832001 	add	r2, r3, #1
     884:	e50b2008 	str	r2, [fp, #-8]
     888:	e3a02000 	mov	r2, #0
     88c:	e5c32000 	strb	r2, [r3]
     890:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     894:	e2433001 	sub	r3, r3, #1
     898:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     89c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8a0:	e3530000 	cmp	r3, #0
     8a4:	cafffff4 	bgt	87c <strncpy+0x70>
     8a8:	e51b3010 	ldr	r3, [fp, #-16]
     8ac:	e1a00003 	mov	r0, r3
     8b0:	e28bd000 	add	sp, fp, #0
     8b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <xchg>:
     8bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c0:	e28db000 	add	fp, sp, #0
     8c4:	e24dd014 	sub	sp, sp, #20
     8c8:	e50b0010 	str	r0, [fp, #-16]
     8cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8d0:	e51b2010 	ldr	r2, [fp, #-16]
     8d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8d8:	e1023091 	swp	r3, r1, [r2]
     8dc:	e50b3008 	str	r3, [fp, #-8]
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e1a00003 	mov	r0, r3
     8e8:	e28bd000 	add	sp, fp, #0
     8ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <initiateLock>:
     8f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8f8:	e28db000 	add	fp, sp, #0
     8fc:	e24dd00c 	sub	sp, sp, #12
     900:	e50b0008 	str	r0, [fp, #-8]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e3a02000 	mov	r2, #0
     90c:	e5832000 	str	r2, [r3]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e3a02001 	mov	r2, #1
     918:	e5832004 	str	r2, [r3, #4]
     91c:	e1a00000 	nop			@ (mov r0, r0)
     920:	e28bd000 	add	sp, fp, #0
     924:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <acquireLock>:
     92c:	e92d4800 	push	{fp, lr}
     930:	e28db004 	add	fp, sp, #4
     934:	e24dd008 	sub	sp, sp, #8
     938:	e50b0008 	str	r0, [fp, #-8]
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5933004 	ldr	r3, [r3, #4]
     944:	e3530000 	cmp	r3, #0
     948:	0a000008 	beq	970 <acquireLock+0x44>
     94c:	e1a00000 	nop			@ (mov r0, r0)
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e3a01001 	mov	r1, #1
     958:	e1a00003 	mov	r0, r3
     95c:	ebffffd6 	bl	8bc <xchg>
     960:	e1a03000 	mov	r3, r0
     964:	e3530000 	cmp	r3, #0
     968:	1afffff8 	bne	950 <acquireLock+0x24>
     96c:	ea000000 	b	974 <acquireLock+0x48>
     970:	e1a00000 	nop			@ (mov r0, r0)
     974:	e24bd004 	sub	sp, fp, #4
     978:	e8bd8800 	pop	{fp, pc}

0000097c <releaseLock>:
     97c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     980:	e28db000 	add	fp, sp, #0
     984:	e24dd00c 	sub	sp, sp, #12
     988:	e50b0008 	str	r0, [fp, #-8]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933004 	ldr	r3, [r3, #4]
     994:	e3530000 	cmp	r3, #0
     998:	0a000006 	beq	9b8 <releaseLock+0x3c>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e5933000 	ldr	r3, [r3]
     9a4:	e3530001 	cmp	r3, #1
     9a8:	1a000002 	bne	9b8 <releaseLock+0x3c>
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e3a02000 	mov	r2, #0
     9b4:	e5832000 	str	r2, [r3]
     9b8:	e1a00000 	nop			@ (mov r0, r0)
     9bc:	e28bd000 	add	sp, fp, #0
     9c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <initiateCondVar>:
     9c8:	e92d4800 	push	{fp, lr}
     9cc:	e28db004 	add	fp, sp, #4
     9d0:	e24dd008 	sub	sp, sp, #8
     9d4:	e50b0008 	str	r0, [fp, #-8]
     9d8:	eb0001b8 	bl	10c0 <getChannel>
     9dc:	e1a02000 	mov	r2, r0
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e5832000 	str	r2, [r3]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e3a02001 	mov	r2, #1
     9f0:	e5832004 	str	r2, [r3, #4]
     9f4:	e1a00000 	nop			@ (mov r0, r0)
     9f8:	e24bd004 	sub	sp, fp, #4
     9fc:	e8bd8800 	pop	{fp, pc}

00000a00 <condWait>:
     a00:	e92d4800 	push	{fp, lr}
     a04:	e28db004 	add	fp, sp, #4
     a08:	e24dd008 	sub	sp, sp, #8
     a0c:	e50b0008 	str	r0, [fp, #-8]
     a10:	e50b100c 	str	r1, [fp, #-12]
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e5933004 	ldr	r3, [r3, #4]
     a1c:	e3530000 	cmp	r3, #0
     a20:	0a00000c 	beq	a58 <condWait+0x58>
     a24:	e51b300c 	ldr	r3, [fp, #-12]
     a28:	e5933004 	ldr	r3, [r3, #4]
     a2c:	e3530000 	cmp	r3, #0
     a30:	0a000008 	beq	a58 <condWait+0x58>
     a34:	e51b000c 	ldr	r0, [fp, #-12]
     a38:	ebffffcf 	bl	97c <releaseLock>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e5933000 	ldr	r3, [r3]
     a44:	e1a00003 	mov	r0, r3
     a48:	eb000193 	bl	109c <sleepChan>
     a4c:	e51b000c 	ldr	r0, [fp, #-12]
     a50:	ebffffb5 	bl	92c <acquireLock>
     a54:	ea000000 	b	a5c <condWait+0x5c>
     a58:	e1a00000 	nop			@ (mov r0, r0)
     a5c:	e24bd004 	sub	sp, fp, #4
     a60:	e8bd8800 	pop	{fp, pc}

00000a64 <broadcast>:
     a64:	e92d4800 	push	{fp, lr}
     a68:	e28db004 	add	fp, sp, #4
     a6c:	e24dd008 	sub	sp, sp, #8
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e5933004 	ldr	r3, [r3, #4]
     a7c:	e3530000 	cmp	r3, #0
     a80:	0a000004 	beq	a98 <broadcast+0x34>
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e5933000 	ldr	r3, [r3]
     a8c:	e1a00003 	mov	r0, r3
     a90:	eb000193 	bl	10e4 <sigChan>
     a94:	ea000000 	b	a9c <broadcast+0x38>
     a98:	e1a00000 	nop			@ (mov r0, r0)
     a9c:	e24bd004 	sub	sp, fp, #4
     aa0:	e8bd8800 	pop	{fp, pc}

00000aa4 <signal>:
     aa4:	e92d4800 	push	{fp, lr}
     aa8:	e28db004 	add	fp, sp, #4
     aac:	e24dd008 	sub	sp, sp, #8
     ab0:	e50b0008 	str	r0, [fp, #-8]
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e5933004 	ldr	r3, [r3, #4]
     abc:	e3530000 	cmp	r3, #0
     ac0:	0a000004 	beq	ad8 <signal+0x34>
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e5933000 	ldr	r3, [r3]
     acc:	e1a00003 	mov	r0, r3
     ad0:	eb00018c 	bl	1108 <sigOneChan>
     ad4:	ea000000 	b	adc <signal+0x38>
     ad8:	e1a00000 	nop			@ (mov r0, r0)
     adc:	e24bd004 	sub	sp, fp, #4
     ae0:	e8bd8800 	pop	{fp, pc}

00000ae4 <semInit>:
     ae4:	e92d4800 	push	{fp, lr}
     ae8:	e28db004 	add	fp, sp, #4
     aec:	e24dd008 	sub	sp, sp, #8
     af0:	e50b0008 	str	r0, [fp, #-8]
     af4:	e50b100c 	str	r1, [fp, #-12]
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2833004 	add	r3, r3, #4
     b00:	e1a00003 	mov	r0, r3
     b04:	ebffff7a 	bl	8f4 <initiateLock>
     b08:	e51b3008 	ldr	r3, [fp, #-8]
     b0c:	e283300c 	add	r3, r3, #12
     b10:	e1a00003 	mov	r0, r3
     b14:	ebffffab 	bl	9c8 <initiateCondVar>
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e51b200c 	ldr	r2, [fp, #-12]
     b20:	e5832000 	str	r2, [r3]
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e3a02001 	mov	r2, #1
     b2c:	e5832014 	str	r2, [r3, #20]
     b30:	e1a00000 	nop			@ (mov r0, r0)
     b34:	e24bd004 	sub	sp, fp, #4
     b38:	e8bd8800 	pop	{fp, pc}

00000b3c <semUp>:
     b3c:	e92d4800 	push	{fp, lr}
     b40:	e28db004 	add	fp, sp, #4
     b44:	e24dd008 	sub	sp, sp, #8
     b48:	e50b0008 	str	r0, [fp, #-8]
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e2833004 	add	r3, r3, #4
     b54:	e1a00003 	mov	r0, r3
     b58:	ebffff73 	bl	92c <acquireLock>
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e5933000 	ldr	r3, [r3]
     b64:	e2832001 	add	r2, r3, #1
     b68:	e51b3008 	ldr	r3, [fp, #-8]
     b6c:	e5832000 	str	r2, [r3]
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e283300c 	add	r3, r3, #12
     b78:	e1a00003 	mov	r0, r3
     b7c:	ebffffc8 	bl	aa4 <signal>
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e2833004 	add	r3, r3, #4
     b88:	e1a00003 	mov	r0, r3
     b8c:	ebffff7a 	bl	97c <releaseLock>
     b90:	e1a00000 	nop			@ (mov r0, r0)
     b94:	e24bd004 	sub	sp, fp, #4
     b98:	e8bd8800 	pop	{fp, pc}

00000b9c <semDown>:
     b9c:	e92d4800 	push	{fp, lr}
     ba0:	e28db004 	add	fp, sp, #4
     ba4:	e24dd008 	sub	sp, sp, #8
     ba8:	e50b0008 	str	r0, [fp, #-8]
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e2833004 	add	r3, r3, #4
     bb4:	e1a00003 	mov	r0, r3
     bb8:	ebffff5b 	bl	92c <acquireLock>
     bbc:	e51b3008 	ldr	r3, [fp, #-8]
     bc0:	e5933000 	ldr	r3, [r3]
     bc4:	e2432001 	sub	r2, r3, #1
     bc8:	e51b3008 	ldr	r3, [fp, #-8]
     bcc:	e5832000 	str	r2, [r3]
     bd0:	ea000006 	b	bf0 <semDown+0x54>
     bd4:	e51b3008 	ldr	r3, [fp, #-8]
     bd8:	e283200c 	add	r2, r3, #12
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e2833004 	add	r3, r3, #4
     be4:	e1a01003 	mov	r1, r3
     be8:	e1a00002 	mov	r0, r2
     bec:	ebffff83 	bl	a00 <condWait>
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e3530000 	cmp	r3, #0
     bfc:	bafffff4 	blt	bd4 <semDown+0x38>
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e2833004 	add	r3, r3, #4
     c08:	e1a00003 	mov	r0, r3
     c0c:	ebffff5a 	bl	97c <releaseLock>
     c10:	e1a00000 	nop			@ (mov r0, r0)
     c14:	e24bd004 	sub	sp, fp, #4
     c18:	e8bd8800 	pop	{fp, pc}

00000c1c <fork>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a00001 	mov	r0, #1
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <exit>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a00002 	mov	r0, #2
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <wait>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a00003 	mov	r0, #3
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <pipe>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a00004 	mov	r0, #4
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <read>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a00005 	mov	r0, #5
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <write>:
     cd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd4:	e1a04003 	mov	r4, r3
     cd8:	e1a03002 	mov	r3, r2
     cdc:	e1a02001 	mov	r2, r1
     ce0:	e1a01000 	mov	r1, r0
     ce4:	e3a00010 	mov	r0, #16
     ce8:	ef000000 	svc	0x00000000
     cec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf0:	e12fff1e 	bx	lr

00000cf4 <close>:
     cf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf8:	e1a04003 	mov	r4, r3
     cfc:	e1a03002 	mov	r3, r2
     d00:	e1a02001 	mov	r2, r1
     d04:	e1a01000 	mov	r1, r0
     d08:	e3a00015 	mov	r0, #21
     d0c:	ef000000 	svc	0x00000000
     d10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d14:	e12fff1e 	bx	lr

00000d18 <kill>:
     d18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d1c:	e1a04003 	mov	r4, r3
     d20:	e1a03002 	mov	r3, r2
     d24:	e1a02001 	mov	r2, r1
     d28:	e1a01000 	mov	r1, r0
     d2c:	e3a00006 	mov	r0, #6
     d30:	ef000000 	svc	0x00000000
     d34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d38:	e12fff1e 	bx	lr

00000d3c <exec>:
     d3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d40:	e1a04003 	mov	r4, r3
     d44:	e1a03002 	mov	r3, r2
     d48:	e1a02001 	mov	r2, r1
     d4c:	e1a01000 	mov	r1, r0
     d50:	e3a00007 	mov	r0, #7
     d54:	ef000000 	svc	0x00000000
     d58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d5c:	e12fff1e 	bx	lr

00000d60 <open>:
     d60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d64:	e1a04003 	mov	r4, r3
     d68:	e1a03002 	mov	r3, r2
     d6c:	e1a02001 	mov	r2, r1
     d70:	e1a01000 	mov	r1, r0
     d74:	e3a0000f 	mov	r0, #15
     d78:	ef000000 	svc	0x00000000
     d7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d80:	e12fff1e 	bx	lr

00000d84 <mknod>:
     d84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d88:	e1a04003 	mov	r4, r3
     d8c:	e1a03002 	mov	r3, r2
     d90:	e1a02001 	mov	r2, r1
     d94:	e1a01000 	mov	r1, r0
     d98:	e3a00011 	mov	r0, #17
     d9c:	ef000000 	svc	0x00000000
     da0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da4:	e12fff1e 	bx	lr

00000da8 <unlink>:
     da8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dac:	e1a04003 	mov	r4, r3
     db0:	e1a03002 	mov	r3, r2
     db4:	e1a02001 	mov	r2, r1
     db8:	e1a01000 	mov	r1, r0
     dbc:	e3a00012 	mov	r0, #18
     dc0:	ef000000 	svc	0x00000000
     dc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc8:	e12fff1e 	bx	lr

00000dcc <fstat>:
     dcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd0:	e1a04003 	mov	r4, r3
     dd4:	e1a03002 	mov	r3, r2
     dd8:	e1a02001 	mov	r2, r1
     ddc:	e1a01000 	mov	r1, r0
     de0:	e3a00008 	mov	r0, #8
     de4:	ef000000 	svc	0x00000000
     de8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dec:	e12fff1e 	bx	lr

00000df0 <link>:
     df0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df4:	e1a04003 	mov	r4, r3
     df8:	e1a03002 	mov	r3, r2
     dfc:	e1a02001 	mov	r2, r1
     e00:	e1a01000 	mov	r1, r0
     e04:	e3a00013 	mov	r0, #19
     e08:	ef000000 	svc	0x00000000
     e0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e10:	e12fff1e 	bx	lr

00000e14 <mkdir>:
     e14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e18:	e1a04003 	mov	r4, r3
     e1c:	e1a03002 	mov	r3, r2
     e20:	e1a02001 	mov	r2, r1
     e24:	e1a01000 	mov	r1, r0
     e28:	e3a00014 	mov	r0, #20
     e2c:	ef000000 	svc	0x00000000
     e30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e34:	e12fff1e 	bx	lr

00000e38 <chdir>:
     e38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e3c:	e1a04003 	mov	r4, r3
     e40:	e1a03002 	mov	r3, r2
     e44:	e1a02001 	mov	r2, r1
     e48:	e1a01000 	mov	r1, r0
     e4c:	e3a00009 	mov	r0, #9
     e50:	ef000000 	svc	0x00000000
     e54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e58:	e12fff1e 	bx	lr

00000e5c <dup>:
     e5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e60:	e1a04003 	mov	r4, r3
     e64:	e1a03002 	mov	r3, r2
     e68:	e1a02001 	mov	r2, r1
     e6c:	e1a01000 	mov	r1, r0
     e70:	e3a0000a 	mov	r0, #10
     e74:	ef000000 	svc	0x00000000
     e78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e7c:	e12fff1e 	bx	lr

00000e80 <getpid>:
     e80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e84:	e1a04003 	mov	r4, r3
     e88:	e1a03002 	mov	r3, r2
     e8c:	e1a02001 	mov	r2, r1
     e90:	e1a01000 	mov	r1, r0
     e94:	e3a0000b 	mov	r0, #11
     e98:	ef000000 	svc	0x00000000
     e9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea0:	e12fff1e 	bx	lr

00000ea4 <sbrk>:
     ea4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea8:	e1a04003 	mov	r4, r3
     eac:	e1a03002 	mov	r3, r2
     eb0:	e1a02001 	mov	r2, r1
     eb4:	e1a01000 	mov	r1, r0
     eb8:	e3a0000c 	mov	r0, #12
     ebc:	ef000000 	svc	0x00000000
     ec0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec4:	e12fff1e 	bx	lr

00000ec8 <sleep>:
     ec8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ecc:	e1a04003 	mov	r4, r3
     ed0:	e1a03002 	mov	r3, r2
     ed4:	e1a02001 	mov	r2, r1
     ed8:	e1a01000 	mov	r1, r0
     edc:	e3a0000d 	mov	r0, #13
     ee0:	ef000000 	svc	0x00000000
     ee4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee8:	e12fff1e 	bx	lr

00000eec <uptime>:
     eec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef0:	e1a04003 	mov	r4, r3
     ef4:	e1a03002 	mov	r3, r2
     ef8:	e1a02001 	mov	r2, r1
     efc:	e1a01000 	mov	r1, r0
     f00:	e3a0000e 	mov	r0, #14
     f04:	ef000000 	svc	0x00000000
     f08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f0c:	e12fff1e 	bx	lr

00000f10 <proclist>:
     f10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f14:	e1a04003 	mov	r4, r3
     f18:	e1a03002 	mov	r3, r2
     f1c:	e1a02001 	mov	r2, r1
     f20:	e1a01000 	mov	r1, r0
     f24:	e3a00016 	mov	r0, #22
     f28:	ef000000 	svc	0x00000000
     f2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f30:	e12fff1e 	bx	lr

00000f34 <settickets>:
     f34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f38:	e1a04003 	mov	r4, r3
     f3c:	e1a03002 	mov	r3, r2
     f40:	e1a02001 	mov	r2, r1
     f44:	e1a01000 	mov	r1, r0
     f48:	e3a00017 	mov	r0, #23
     f4c:	ef000000 	svc	0x00000000
     f50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f54:	e12fff1e 	bx	lr

00000f58 <srand>:
     f58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f5c:	e1a04003 	mov	r4, r3
     f60:	e1a03002 	mov	r3, r2
     f64:	e1a02001 	mov	r2, r1
     f68:	e1a01000 	mov	r1, r0
     f6c:	e3a00018 	mov	r0, #24
     f70:	ef000000 	svc	0x00000000
     f74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f78:	e12fff1e 	bx	lr

00000f7c <getpinfo>:
     f7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f80:	e1a04003 	mov	r4, r3
     f84:	e1a03002 	mov	r3, r2
     f88:	e1a02001 	mov	r2, r1
     f8c:	e1a01000 	mov	r1, r0
     f90:	e3a00019 	mov	r0, #25
     f94:	ef000000 	svc	0x00000000
     f98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f9c:	e12fff1e 	bx	lr

00000fa0 <print_pt>:
     fa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa4:	e1a04003 	mov	r4, r3
     fa8:	e1a03002 	mov	r3, r2
     fac:	e1a02001 	mov	r2, r1
     fb0:	e1a01000 	mov	r1, r0
     fb4:	e3a0001f 	mov	r0, #31
     fb8:	ef000000 	svc	0x00000000
     fbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc0:	e12fff1e 	bx	lr

00000fc4 <thread_create>:
     fc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc8:	e1a04003 	mov	r4, r3
     fcc:	e1a03002 	mov	r3, r2
     fd0:	e1a02001 	mov	r2, r1
     fd4:	e1a01000 	mov	r1, r0
     fd8:	e3a00020 	mov	r0, #32
     fdc:	ef000000 	svc	0x00000000
     fe0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe4:	e12fff1e 	bx	lr

00000fe8 <thread_exit>:
     fe8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fec:	e1a04003 	mov	r4, r3
     ff0:	e1a03002 	mov	r3, r2
     ff4:	e1a02001 	mov	r2, r1
     ff8:	e1a01000 	mov	r1, r0
     ffc:	e3a00021 	mov	r0, #33	@ 0x21
    1000:	ef000000 	svc	0x00000000
    1004:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1008:	e12fff1e 	bx	lr

0000100c <thread_join>:
    100c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1010:	e1a04003 	mov	r4, r3
    1014:	e1a03002 	mov	r3, r2
    1018:	e1a02001 	mov	r2, r1
    101c:	e1a01000 	mov	r1, r0
    1020:	e3a00022 	mov	r0, #34	@ 0x22
    1024:	ef000000 	svc	0x00000000
    1028:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    102c:	e12fff1e 	bx	lr

00001030 <waitpid>:
    1030:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1034:	e1a04003 	mov	r4, r3
    1038:	e1a03002 	mov	r3, r2
    103c:	e1a02001 	mov	r2, r1
    1040:	e1a01000 	mov	r1, r0
    1044:	e3a00023 	mov	r0, #35	@ 0x23
    1048:	ef000000 	svc	0x00000000
    104c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1050:	e12fff1e 	bx	lr

00001054 <barrier_init>:
    1054:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1058:	e1a04003 	mov	r4, r3
    105c:	e1a03002 	mov	r3, r2
    1060:	e1a02001 	mov	r2, r1
    1064:	e1a01000 	mov	r1, r0
    1068:	e3a00024 	mov	r0, #36	@ 0x24
    106c:	ef000000 	svc	0x00000000
    1070:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1074:	e12fff1e 	bx	lr

00001078 <barrier_check>:
    1078:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    107c:	e1a04003 	mov	r4, r3
    1080:	e1a03002 	mov	r3, r2
    1084:	e1a02001 	mov	r2, r1
    1088:	e1a01000 	mov	r1, r0
    108c:	e3a00025 	mov	r0, #37	@ 0x25
    1090:	ef000000 	svc	0x00000000
    1094:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1098:	e12fff1e 	bx	lr

0000109c <sleepChan>:
    109c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a0:	e1a04003 	mov	r4, r3
    10a4:	e1a03002 	mov	r3, r2
    10a8:	e1a02001 	mov	r2, r1
    10ac:	e1a01000 	mov	r1, r0
    10b0:	e3a00026 	mov	r0, #38	@ 0x26
    10b4:	ef000000 	svc	0x00000000
    10b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10bc:	e12fff1e 	bx	lr

000010c0 <getChannel>:
    10c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10c4:	e1a04003 	mov	r4, r3
    10c8:	e1a03002 	mov	r3, r2
    10cc:	e1a02001 	mov	r2, r1
    10d0:	e1a01000 	mov	r1, r0
    10d4:	e3a00027 	mov	r0, #39	@ 0x27
    10d8:	ef000000 	svc	0x00000000
    10dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e0:	e12fff1e 	bx	lr

000010e4 <sigChan>:
    10e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10e8:	e1a04003 	mov	r4, r3
    10ec:	e1a03002 	mov	r3, r2
    10f0:	e1a02001 	mov	r2, r1
    10f4:	e1a01000 	mov	r1, r0
    10f8:	e3a00028 	mov	r0, #40	@ 0x28
    10fc:	ef000000 	svc	0x00000000
    1100:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1104:	e12fff1e 	bx	lr

00001108 <sigOneChan>:
    1108:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    110c:	e1a04003 	mov	r4, r3
    1110:	e1a03002 	mov	r3, r2
    1114:	e1a02001 	mov	r2, r1
    1118:	e1a01000 	mov	r1, r0
    111c:	e3a00029 	mov	r0, #41	@ 0x29
    1120:	ef000000 	svc	0x00000000
    1124:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1128:	e12fff1e 	bx	lr

0000112c <syscall>:
    112c:	ef000000 	svc	0x00000000
    1130:	e12fff1e 	bx	lr

00001134 <putc>:
    1134:	e92d4800 	push	{fp, lr}
    1138:	e28db004 	add	fp, sp, #4
    113c:	e24dd008 	sub	sp, sp, #8
    1140:	e50b0008 	str	r0, [fp, #-8]
    1144:	e1a03001 	mov	r3, r1
    1148:	e54b3009 	strb	r3, [fp, #-9]
    114c:	e24b3009 	sub	r3, fp, #9
    1150:	e3a02001 	mov	r2, #1
    1154:	e1a01003 	mov	r1, r3
    1158:	e51b0008 	ldr	r0, [fp, #-8]
    115c:	ebfffedb 	bl	cd0 <write>
    1160:	e1a00000 	nop			@ (mov r0, r0)
    1164:	e24bd004 	sub	sp, fp, #4
    1168:	e8bd8800 	pop	{fp, pc}

0000116c <printint>:
    116c:	e92d4800 	push	{fp, lr}
    1170:	e28db004 	add	fp, sp, #4
    1174:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1178:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    117c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1180:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1184:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1188:	e3a03000 	mov	r3, #0
    118c:	e50b300c 	str	r3, [fp, #-12]
    1190:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1194:	e3530000 	cmp	r3, #0
    1198:	0a000008 	beq	11c0 <printint+0x54>
    119c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11a0:	e3530000 	cmp	r3, #0
    11a4:	aa000005 	bge	11c0 <printint+0x54>
    11a8:	e3a03001 	mov	r3, #1
    11ac:	e50b300c 	str	r3, [fp, #-12]
    11b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11b4:	e2633000 	rsb	r3, r3, #0
    11b8:	e50b3010 	str	r3, [fp, #-16]
    11bc:	ea000001 	b	11c8 <printint+0x5c>
    11c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11c4:	e50b3010 	str	r3, [fp, #-16]
    11c8:	e3a03000 	mov	r3, #0
    11cc:	e50b3008 	str	r3, [fp, #-8]
    11d0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11d4:	e51b3010 	ldr	r3, [fp, #-16]
    11d8:	e1a01002 	mov	r1, r2
    11dc:	e1a00003 	mov	r0, r3
    11e0:	eb0001d5 	bl	193c <__aeabi_uidivmod>
    11e4:	e1a03001 	mov	r3, r1
    11e8:	e1a01003 	mov	r1, r3
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e2832001 	add	r2, r3, #1
    11f4:	e50b2008 	str	r2, [fp, #-8]
    11f8:	e59f20a0 	ldr	r2, [pc, #160]	@ 12a0 <printint+0x134>
    11fc:	e7d22001 	ldrb	r2, [r2, r1]
    1200:	e2433004 	sub	r3, r3, #4
    1204:	e083300b 	add	r3, r3, fp
    1208:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    120c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1210:	e1a01003 	mov	r1, r3
    1214:	e51b0010 	ldr	r0, [fp, #-16]
    1218:	eb00018a 	bl	1848 <__udivsi3>
    121c:	e1a03000 	mov	r3, r0
    1220:	e50b3010 	str	r3, [fp, #-16]
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e3530000 	cmp	r3, #0
    122c:	1affffe7 	bne	11d0 <printint+0x64>
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e3530000 	cmp	r3, #0
    1238:	0a00000e 	beq	1278 <printint+0x10c>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e2832001 	add	r2, r3, #1
    1244:	e50b2008 	str	r2, [fp, #-8]
    1248:	e2433004 	sub	r3, r3, #4
    124c:	e083300b 	add	r3, r3, fp
    1250:	e3a0202d 	mov	r2, #45	@ 0x2d
    1254:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1258:	ea000006 	b	1278 <printint+0x10c>
    125c:	e24b2020 	sub	r2, fp, #32
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e0823003 	add	r3, r2, r3
    1268:	e5d33000 	ldrb	r3, [r3]
    126c:	e1a01003 	mov	r1, r3
    1270:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1274:	ebffffae 	bl	1134 <putc>
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e2433001 	sub	r3, r3, #1
    1280:	e50b3008 	str	r3, [fp, #-8]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e3530000 	cmp	r3, #0
    128c:	aafffff2 	bge	125c <printint+0xf0>
    1290:	e1a00000 	nop			@ (mov r0, r0)
    1294:	e1a00000 	nop			@ (mov r0, r0)
    1298:	e24bd004 	sub	sp, fp, #4
    129c:	e8bd8800 	pop	{fp, pc}
    12a0:	00001988 	.word	0x00001988

000012a4 <printf>:
    12a4:	e92d000e 	push	{r1, r2, r3}
    12a8:	e92d4800 	push	{fp, lr}
    12ac:	e28db004 	add	fp, sp, #4
    12b0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    12b4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    12b8:	e3a03000 	mov	r3, #0
    12bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12c0:	e28b3008 	add	r3, fp, #8
    12c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12c8:	e3a03000 	mov	r3, #0
    12cc:	e50b3010 	str	r3, [fp, #-16]
    12d0:	ea000074 	b	14a8 <printf+0x204>
    12d4:	e59b2004 	ldr	r2, [fp, #4]
    12d8:	e51b3010 	ldr	r3, [fp, #-16]
    12dc:	e0823003 	add	r3, r2, r3
    12e0:	e5d33000 	ldrb	r3, [r3]
    12e4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12ec:	e3530000 	cmp	r3, #0
    12f0:	1a00000b 	bne	1324 <printf+0x80>
    12f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f8:	e3530025 	cmp	r3, #37	@ 0x25
    12fc:	1a000002 	bne	130c <printf+0x68>
    1300:	e3a03025 	mov	r3, #37	@ 0x25
    1304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1308:	ea000063 	b	149c <printf+0x1f8>
    130c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1310:	e6ef3073 	uxtb	r3, r3
    1314:	e1a01003 	mov	r1, r3
    1318:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    131c:	ebffff84 	bl	1134 <putc>
    1320:	ea00005d 	b	149c <printf+0x1f8>
    1324:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1328:	e3530025 	cmp	r3, #37	@ 0x25
    132c:	1a00005a 	bne	149c <printf+0x1f8>
    1330:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1334:	e3530064 	cmp	r3, #100	@ 0x64
    1338:	1a00000a 	bne	1368 <printf+0xc4>
    133c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e1a01003 	mov	r1, r3
    1348:	e3a03001 	mov	r3, #1
    134c:	e3a0200a 	mov	r2, #10
    1350:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1354:	ebffff84 	bl	116c <printint>
    1358:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    135c:	e2833004 	add	r3, r3, #4
    1360:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1364:	ea00004a 	b	1494 <printf+0x1f0>
    1368:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    136c:	e3530078 	cmp	r3, #120	@ 0x78
    1370:	0a000002 	beq	1380 <printf+0xdc>
    1374:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1378:	e3530070 	cmp	r3, #112	@ 0x70
    137c:	1a00000a 	bne	13ac <printf+0x108>
    1380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1384:	e5933000 	ldr	r3, [r3]
    1388:	e1a01003 	mov	r1, r3
    138c:	e3a03000 	mov	r3, #0
    1390:	e3a02010 	mov	r2, #16
    1394:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1398:	ebffff73 	bl	116c <printint>
    139c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a0:	e2833004 	add	r3, r3, #4
    13a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	ea000039 	b	1494 <printf+0x1f0>
    13ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b0:	e3530073 	cmp	r3, #115	@ 0x73
    13b4:	1a000018 	bne	141c <printf+0x178>
    13b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e50b300c 	str	r3, [fp, #-12]
    13c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c8:	e2833004 	add	r3, r3, #4
    13cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e3530000 	cmp	r3, #0
    13d8:	1a00000a 	bne	1408 <printf+0x164>
    13dc:	e59f30f4 	ldr	r3, [pc, #244]	@ 14d8 <printf+0x234>
    13e0:	e50b300c 	str	r3, [fp, #-12]
    13e4:	ea000007 	b	1408 <printf+0x164>
    13e8:	e51b300c 	ldr	r3, [fp, #-12]
    13ec:	e5d33000 	ldrb	r3, [r3]
    13f0:	e1a01003 	mov	r1, r3
    13f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f8:	ebffff4d 	bl	1134 <putc>
    13fc:	e51b300c 	ldr	r3, [fp, #-12]
    1400:	e2833001 	add	r3, r3, #1
    1404:	e50b300c 	str	r3, [fp, #-12]
    1408:	e51b300c 	ldr	r3, [fp, #-12]
    140c:	e5d33000 	ldrb	r3, [r3]
    1410:	e3530000 	cmp	r3, #0
    1414:	1afffff3 	bne	13e8 <printf+0x144>
    1418:	ea00001d 	b	1494 <printf+0x1f0>
    141c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1420:	e3530063 	cmp	r3, #99	@ 0x63
    1424:	1a000009 	bne	1450 <printf+0x1ac>
    1428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e6ef3073 	uxtb	r3, r3
    1434:	e1a01003 	mov	r1, r3
    1438:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    143c:	ebffff3c 	bl	1134 <putc>
    1440:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1444:	e2833004 	add	r3, r3, #4
    1448:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    144c:	ea000010 	b	1494 <printf+0x1f0>
    1450:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1454:	e3530025 	cmp	r3, #37	@ 0x25
    1458:	1a000005 	bne	1474 <printf+0x1d0>
    145c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1460:	e6ef3073 	uxtb	r3, r3
    1464:	e1a01003 	mov	r1, r3
    1468:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    146c:	ebffff30 	bl	1134 <putc>
    1470:	ea000007 	b	1494 <printf+0x1f0>
    1474:	e3a01025 	mov	r1, #37	@ 0x25
    1478:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    147c:	ebffff2c 	bl	1134 <putc>
    1480:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1484:	e6ef3073 	uxtb	r3, r3
    1488:	e1a01003 	mov	r1, r3
    148c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1490:	ebffff27 	bl	1134 <putc>
    1494:	e3a03000 	mov	r3, #0
    1498:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    149c:	e51b3010 	ldr	r3, [fp, #-16]
    14a0:	e2833001 	add	r3, r3, #1
    14a4:	e50b3010 	str	r3, [fp, #-16]
    14a8:	e59b2004 	ldr	r2, [fp, #4]
    14ac:	e51b3010 	ldr	r3, [fp, #-16]
    14b0:	e0823003 	add	r3, r2, r3
    14b4:	e5d33000 	ldrb	r3, [r3]
    14b8:	e3530000 	cmp	r3, #0
    14bc:	1affff84 	bne	12d4 <printf+0x30>
    14c0:	e1a00000 	nop			@ (mov r0, r0)
    14c4:	e1a00000 	nop			@ (mov r0, r0)
    14c8:	e24bd004 	sub	sp, fp, #4
    14cc:	e8bd4800 	pop	{fp, lr}
    14d0:	e28dd00c 	add	sp, sp, #12
    14d4:	e12fff1e 	bx	lr
    14d8:	00001980 	.word	0x00001980

000014dc <free>:
    14dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14e0:	e28db000 	add	fp, sp, #0
    14e4:	e24dd014 	sub	sp, sp, #20
    14e8:	e50b0010 	str	r0, [fp, #-16]
    14ec:	e51b3010 	ldr	r3, [fp, #-16]
    14f0:	e2433008 	sub	r3, r3, #8
    14f4:	e50b300c 	str	r3, [fp, #-12]
    14f8:	e59f3154 	ldr	r3, [pc, #340]	@ 1654 <free+0x178>
    14fc:	e5933000 	ldr	r3, [r3]
    1500:	e50b3008 	str	r3, [fp, #-8]
    1504:	ea000010 	b	154c <free+0x70>
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5933000 	ldr	r3, [r3]
    1510:	e51b2008 	ldr	r2, [fp, #-8]
    1514:	e1520003 	cmp	r2, r3
    1518:	3a000008 	bcc	1540 <free+0x64>
    151c:	e51b200c 	ldr	r2, [fp, #-12]
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e1520003 	cmp	r2, r3
    1528:	8a000010 	bhi	1570 <free+0x94>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e51b200c 	ldr	r2, [fp, #-12]
    1538:	e1520003 	cmp	r2, r3
    153c:	3a00000b 	bcc	1570 <free+0x94>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e50b3008 	str	r3, [fp, #-8]
    154c:	e51b200c 	ldr	r2, [fp, #-12]
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e1520003 	cmp	r2, r3
    1558:	9affffea 	bls	1508 <free+0x2c>
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5933000 	ldr	r3, [r3]
    1564:	e51b200c 	ldr	r2, [fp, #-12]
    1568:	e1520003 	cmp	r2, r3
    156c:	2affffe5 	bcs	1508 <free+0x2c>
    1570:	e51b300c 	ldr	r3, [fp, #-12]
    1574:	e5933004 	ldr	r3, [r3, #4]
    1578:	e1a03183 	lsl	r3, r3, #3
    157c:	e51b200c 	ldr	r2, [fp, #-12]
    1580:	e0822003 	add	r2, r2, r3
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5933000 	ldr	r3, [r3]
    158c:	e1520003 	cmp	r2, r3
    1590:	1a00000d 	bne	15cc <free+0xf0>
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5932004 	ldr	r2, [r3, #4]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5933000 	ldr	r3, [r3]
    15a4:	e5933004 	ldr	r3, [r3, #4]
    15a8:	e0822003 	add	r2, r2, r3
    15ac:	e51b300c 	ldr	r3, [fp, #-12]
    15b0:	e5832004 	str	r2, [r3, #4]
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5933000 	ldr	r3, [r3]
    15bc:	e5932000 	ldr	r2, [r3]
    15c0:	e51b300c 	ldr	r3, [fp, #-12]
    15c4:	e5832000 	str	r2, [r3]
    15c8:	ea000003 	b	15dc <free+0x100>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5932000 	ldr	r2, [r3]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e5832000 	str	r2, [r3]
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e5933004 	ldr	r3, [r3, #4]
    15e4:	e1a03183 	lsl	r3, r3, #3
    15e8:	e51b2008 	ldr	r2, [fp, #-8]
    15ec:	e0823003 	add	r3, r2, r3
    15f0:	e51b200c 	ldr	r2, [fp, #-12]
    15f4:	e1520003 	cmp	r2, r3
    15f8:	1a00000b 	bne	162c <free+0x150>
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e5932004 	ldr	r2, [r3, #4]
    1604:	e51b300c 	ldr	r3, [fp, #-12]
    1608:	e5933004 	ldr	r3, [r3, #4]
    160c:	e0822003 	add	r2, r2, r3
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5832004 	str	r2, [r3, #4]
    1618:	e51b300c 	ldr	r3, [fp, #-12]
    161c:	e5932000 	ldr	r2, [r3]
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e5832000 	str	r2, [r3]
    1628:	ea000002 	b	1638 <free+0x15c>
    162c:	e51b3008 	ldr	r3, [fp, #-8]
    1630:	e51b200c 	ldr	r2, [fp, #-12]
    1634:	e5832000 	str	r2, [r3]
    1638:	e59f2014 	ldr	r2, [pc, #20]	@ 1654 <free+0x178>
    163c:	e51b3008 	ldr	r3, [fp, #-8]
    1640:	e5823000 	str	r3, [r2]
    1644:	e1a00000 	nop			@ (mov r0, r0)
    1648:	e28bd000 	add	sp, fp, #0
    164c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1650:	e12fff1e 	bx	lr
    1654:	000019b4 	.word	0x000019b4

00001658 <morecore>:
    1658:	e92d4800 	push	{fp, lr}
    165c:	e28db004 	add	fp, sp, #4
    1660:	e24dd010 	sub	sp, sp, #16
    1664:	e50b0010 	str	r0, [fp, #-16]
    1668:	e51b3010 	ldr	r3, [fp, #-16]
    166c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1670:	2a000001 	bcs	167c <morecore+0x24>
    1674:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1678:	e50b3010 	str	r3, [fp, #-16]
    167c:	e51b3010 	ldr	r3, [fp, #-16]
    1680:	e1a03183 	lsl	r3, r3, #3
    1684:	e1a00003 	mov	r0, r3
    1688:	ebfffe05 	bl	ea4 <sbrk>
    168c:	e50b0008 	str	r0, [fp, #-8]
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e3730001 	cmn	r3, #1
    1698:	1a000001 	bne	16a4 <morecore+0x4c>
    169c:	e3a03000 	mov	r3, #0
    16a0:	ea00000a 	b	16d0 <morecore+0x78>
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e50b300c 	str	r3, [fp, #-12]
    16ac:	e51b300c 	ldr	r3, [fp, #-12]
    16b0:	e51b2010 	ldr	r2, [fp, #-16]
    16b4:	e5832004 	str	r2, [r3, #4]
    16b8:	e51b300c 	ldr	r3, [fp, #-12]
    16bc:	e2833008 	add	r3, r3, #8
    16c0:	e1a00003 	mov	r0, r3
    16c4:	ebffff84 	bl	14dc <free>
    16c8:	e59f300c 	ldr	r3, [pc, #12]	@ 16dc <morecore+0x84>
    16cc:	e5933000 	ldr	r3, [r3]
    16d0:	e1a00003 	mov	r0, r3
    16d4:	e24bd004 	sub	sp, fp, #4
    16d8:	e8bd8800 	pop	{fp, pc}
    16dc:	000019b4 	.word	0x000019b4

000016e0 <malloc>:
    16e0:	e92d4800 	push	{fp, lr}
    16e4:	e28db004 	add	fp, sp, #4
    16e8:	e24dd018 	sub	sp, sp, #24
    16ec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16f4:	e2833007 	add	r3, r3, #7
    16f8:	e1a031a3 	lsr	r3, r3, #3
    16fc:	e2833001 	add	r3, r3, #1
    1700:	e50b3010 	str	r3, [fp, #-16]
    1704:	e59f3134 	ldr	r3, [pc, #308]	@ 1840 <malloc+0x160>
    1708:	e5933000 	ldr	r3, [r3]
    170c:	e50b300c 	str	r3, [fp, #-12]
    1710:	e51b300c 	ldr	r3, [fp, #-12]
    1714:	e3530000 	cmp	r3, #0
    1718:	1a00000b 	bne	174c <malloc+0x6c>
    171c:	e59f3120 	ldr	r3, [pc, #288]	@ 1844 <malloc+0x164>
    1720:	e50b300c 	str	r3, [fp, #-12]
    1724:	e59f2114 	ldr	r2, [pc, #276]	@ 1840 <malloc+0x160>
    1728:	e51b300c 	ldr	r3, [fp, #-12]
    172c:	e5823000 	str	r3, [r2]
    1730:	e59f3108 	ldr	r3, [pc, #264]	@ 1840 <malloc+0x160>
    1734:	e5933000 	ldr	r3, [r3]
    1738:	e59f2104 	ldr	r2, [pc, #260]	@ 1844 <malloc+0x164>
    173c:	e5823000 	str	r3, [r2]
    1740:	e59f30fc 	ldr	r3, [pc, #252]	@ 1844 <malloc+0x164>
    1744:	e3a02000 	mov	r2, #0
    1748:	e5832004 	str	r2, [r3, #4]
    174c:	e51b300c 	ldr	r3, [fp, #-12]
    1750:	e5933000 	ldr	r3, [r3]
    1754:	e50b3008 	str	r3, [fp, #-8]
    1758:	e51b3008 	ldr	r3, [fp, #-8]
    175c:	e5933004 	ldr	r3, [r3, #4]
    1760:	e51b2010 	ldr	r2, [fp, #-16]
    1764:	e1520003 	cmp	r2, r3
    1768:	8a00001e 	bhi	17e8 <malloc+0x108>
    176c:	e51b3008 	ldr	r3, [fp, #-8]
    1770:	e5933004 	ldr	r3, [r3, #4]
    1774:	e51b2010 	ldr	r2, [fp, #-16]
    1778:	e1520003 	cmp	r2, r3
    177c:	1a000004 	bne	1794 <malloc+0xb4>
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e5932000 	ldr	r2, [r3]
    1788:	e51b300c 	ldr	r3, [fp, #-12]
    178c:	e5832000 	str	r2, [r3]
    1790:	ea00000e 	b	17d0 <malloc+0xf0>
    1794:	e51b3008 	ldr	r3, [fp, #-8]
    1798:	e5932004 	ldr	r2, [r3, #4]
    179c:	e51b3010 	ldr	r3, [fp, #-16]
    17a0:	e0422003 	sub	r2, r2, r3
    17a4:	e51b3008 	ldr	r3, [fp, #-8]
    17a8:	e5832004 	str	r2, [r3, #4]
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e5933004 	ldr	r3, [r3, #4]
    17b4:	e1a03183 	lsl	r3, r3, #3
    17b8:	e51b2008 	ldr	r2, [fp, #-8]
    17bc:	e0823003 	add	r3, r2, r3
    17c0:	e50b3008 	str	r3, [fp, #-8]
    17c4:	e51b3008 	ldr	r3, [fp, #-8]
    17c8:	e51b2010 	ldr	r2, [fp, #-16]
    17cc:	e5832004 	str	r2, [r3, #4]
    17d0:	e59f2068 	ldr	r2, [pc, #104]	@ 1840 <malloc+0x160>
    17d4:	e51b300c 	ldr	r3, [fp, #-12]
    17d8:	e5823000 	str	r3, [r2]
    17dc:	e51b3008 	ldr	r3, [fp, #-8]
    17e0:	e2833008 	add	r3, r3, #8
    17e4:	ea000012 	b	1834 <malloc+0x154>
    17e8:	e59f3050 	ldr	r3, [pc, #80]	@ 1840 <malloc+0x160>
    17ec:	e5933000 	ldr	r3, [r3]
    17f0:	e51b2008 	ldr	r2, [fp, #-8]
    17f4:	e1520003 	cmp	r2, r3
    17f8:	1a000007 	bne	181c <malloc+0x13c>
    17fc:	e51b0010 	ldr	r0, [fp, #-16]
    1800:	ebffff94 	bl	1658 <morecore>
    1804:	e50b0008 	str	r0, [fp, #-8]
    1808:	e51b3008 	ldr	r3, [fp, #-8]
    180c:	e3530000 	cmp	r3, #0
    1810:	1a000001 	bne	181c <malloc+0x13c>
    1814:	e3a03000 	mov	r3, #0
    1818:	ea000005 	b	1834 <malloc+0x154>
    181c:	e51b3008 	ldr	r3, [fp, #-8]
    1820:	e50b300c 	str	r3, [fp, #-12]
    1824:	e51b3008 	ldr	r3, [fp, #-8]
    1828:	e5933000 	ldr	r3, [r3]
    182c:	e50b3008 	str	r3, [fp, #-8]
    1830:	eaffffc8 	b	1758 <malloc+0x78>
    1834:	e1a00003 	mov	r0, r3
    1838:	e24bd004 	sub	sp, fp, #4
    183c:	e8bd8800 	pop	{fp, pc}
    1840:	000019b4 	.word	0x000019b4
    1844:	000019ac 	.word	0x000019ac

00001848 <__udivsi3>:
    1848:	e2512001 	subs	r2, r1, #1
    184c:	012fff1e 	bxeq	lr
    1850:	3a000036 	bcc	1930 <__udivsi3+0xe8>
    1854:	e1500001 	cmp	r0, r1
    1858:	9a000022 	bls	18e8 <__udivsi3+0xa0>
    185c:	e1110002 	tst	r1, r2
    1860:	0a000023 	beq	18f4 <__udivsi3+0xac>
    1864:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1868:	01a01181 	lsleq	r1, r1, #3
    186c:	03a03008 	moveq	r3, #8
    1870:	13a03001 	movne	r3, #1
    1874:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1878:	31510000 	cmpcc	r1, r0
    187c:	31a01201 	lslcc	r1, r1, #4
    1880:	31a03203 	lslcc	r3, r3, #4
    1884:	3afffffa 	bcc	1874 <__udivsi3+0x2c>
    1888:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    188c:	31510000 	cmpcc	r1, r0
    1890:	31a01081 	lslcc	r1, r1, #1
    1894:	31a03083 	lslcc	r3, r3, #1
    1898:	3afffffa 	bcc	1888 <__udivsi3+0x40>
    189c:	e3a02000 	mov	r2, #0
    18a0:	e1500001 	cmp	r0, r1
    18a4:	20400001 	subcs	r0, r0, r1
    18a8:	21822003 	orrcs	r2, r2, r3
    18ac:	e15000a1 	cmp	r0, r1, lsr #1
    18b0:	204000a1 	subcs	r0, r0, r1, lsr #1
    18b4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    18b8:	e1500121 	cmp	r0, r1, lsr #2
    18bc:	20400121 	subcs	r0, r0, r1, lsr #2
    18c0:	21822123 	orrcs	r2, r2, r3, lsr #2
    18c4:	e15001a1 	cmp	r0, r1, lsr #3
    18c8:	204001a1 	subcs	r0, r0, r1, lsr #3
    18cc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18d0:	e3500000 	cmp	r0, #0
    18d4:	11b03223 	lsrsne	r3, r3, #4
    18d8:	11a01221 	lsrne	r1, r1, #4
    18dc:	1affffef 	bne	18a0 <__udivsi3+0x58>
    18e0:	e1a00002 	mov	r0, r2
    18e4:	e12fff1e 	bx	lr
    18e8:	03a00001 	moveq	r0, #1
    18ec:	13a00000 	movne	r0, #0
    18f0:	e12fff1e 	bx	lr
    18f4:	e3510801 	cmp	r1, #65536	@ 0x10000
    18f8:	21a01821 	lsrcs	r1, r1, #16
    18fc:	23a02010 	movcs	r2, #16
    1900:	33a02000 	movcc	r2, #0
    1904:	e3510c01 	cmp	r1, #256	@ 0x100
    1908:	21a01421 	lsrcs	r1, r1, #8
    190c:	22822008 	addcs	r2, r2, #8
    1910:	e3510010 	cmp	r1, #16
    1914:	21a01221 	lsrcs	r1, r1, #4
    1918:	22822004 	addcs	r2, r2, #4
    191c:	e3510004 	cmp	r1, #4
    1920:	82822003 	addhi	r2, r2, #3
    1924:	908220a1 	addls	r2, r2, r1, lsr #1
    1928:	e1a00230 	lsr	r0, r0, r2
    192c:	e12fff1e 	bx	lr
    1930:	e3500000 	cmp	r0, #0
    1934:	13e00000 	mvnne	r0, #0
    1938:	ea000007 	b	195c <__aeabi_idiv0>

0000193c <__aeabi_uidivmod>:
    193c:	e3510000 	cmp	r1, #0
    1940:	0afffffa 	beq	1930 <__udivsi3+0xe8>
    1944:	e92d4003 	push	{r0, r1, lr}
    1948:	ebffffbe 	bl	1848 <__udivsi3>
    194c:	e8bd4006 	pop	{r1, r2, lr}
    1950:	e0030092 	mul	r3, r2, r0
    1954:	e0411003 	sub	r1, r1, r3
    1958:	e12fff1e 	bx	lr

0000195c <__aeabi_idiv0>:
    195c:	e12fff1e 	bx	lr
