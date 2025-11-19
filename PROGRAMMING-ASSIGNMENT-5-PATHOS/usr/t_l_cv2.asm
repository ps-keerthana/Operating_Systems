
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
      48:	eb00049e 	bl	12c8 <printf>
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
      94:	000019c0 	.word	0x000019c0
      98:	000019c8 	.word	0x000019c8
      9c:	00001984 	.word	0x00001984

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
      e8:	eb000476 	bl	12c8 <printf>
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
     134:	000019c0 	.word	0x000019c0
     138:	000019c8 	.word	0x000019c8
     13c:	00001994 	.word	0x00001994

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
     1a8:	000019c0 	.word	0x000019c0
     1ac:	000019c8 	.word	0x000019c8
     1b0:	00000000 	.word	0x00000000
     1b4:	000000a0 	.word	0x000000a0

000001b8 <pg_pte>:
     1b8:	e92d4800 	push	{fp, lr}
     1bc:	e28db004 	add	fp, sp, #4
     1c0:	e24dd008 	sub	sp, sp, #8
     1c4:	e50b0008 	str	r0, [fp, #-8]
     1c8:	e51b1008 	ldr	r1, [fp, #-8]
     1cc:	e3a0001a 	mov	r0, #26
     1d0:	eb0003de 	bl	1150 <syscall>
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
     1fc:	eb0003d3 	bl	1150 <syscall>
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
     228:	eb0003c8 	bl	1150 <syscall>
     22c:	e1a03000 	mov	r3, r0
     230:	e1a00003 	mov	r0, r3
     234:	e24bd004 	sub	sp, fp, #4
     238:	e8bd8800 	pop	{fp, pc}

0000023c <kpt>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e3a0001d 	mov	r0, #29
     248:	eb0003c0 	bl	1150 <syscall>
     24c:	e1a03000 	mov	r3, r0
     250:	e1a00003 	mov	r0, r3
     254:	e8bd8800 	pop	{fp, pc}

00000258 <ugetpid>:
     258:	e92d4800 	push	{fp, lr}
     25c:	e28db004 	add	fp, sp, #4
     260:	e3a0001e 	mov	r0, #30
     264:	eb0003b9 	bl	1150 <syscall>
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

0000112c <symlink>:
    112c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1130:	e1a04003 	mov	r4, r3
    1134:	e1a03002 	mov	r3, r2
    1138:	e1a02001 	mov	r2, r1
    113c:	e1a01000 	mov	r1, r0
    1140:	e3a0002a 	mov	r0, #42	@ 0x2a
    1144:	ef000000 	svc	0x00000000
    1148:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    114c:	e12fff1e 	bx	lr

00001150 <syscall>:
    1150:	ef000000 	svc	0x00000000
    1154:	e12fff1e 	bx	lr

00001158 <putc>:
    1158:	e92d4800 	push	{fp, lr}
    115c:	e28db004 	add	fp, sp, #4
    1160:	e24dd008 	sub	sp, sp, #8
    1164:	e50b0008 	str	r0, [fp, #-8]
    1168:	e1a03001 	mov	r3, r1
    116c:	e54b3009 	strb	r3, [fp, #-9]
    1170:	e24b3009 	sub	r3, fp, #9
    1174:	e3a02001 	mov	r2, #1
    1178:	e1a01003 	mov	r1, r3
    117c:	e51b0008 	ldr	r0, [fp, #-8]
    1180:	ebfffed2 	bl	cd0 <write>
    1184:	e1a00000 	nop			@ (mov r0, r0)
    1188:	e24bd004 	sub	sp, fp, #4
    118c:	e8bd8800 	pop	{fp, pc}

00001190 <printint>:
    1190:	e92d4800 	push	{fp, lr}
    1194:	e28db004 	add	fp, sp, #4
    1198:	e24dd030 	sub	sp, sp, #48	@ 0x30
    119c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    11a0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    11a4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    11a8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    11ac:	e3a03000 	mov	r3, #0
    11b0:	e50b300c 	str	r3, [fp, #-12]
    11b4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    11b8:	e3530000 	cmp	r3, #0
    11bc:	0a000008 	beq	11e4 <printint+0x54>
    11c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11c4:	e3530000 	cmp	r3, #0
    11c8:	aa000005 	bge	11e4 <printint+0x54>
    11cc:	e3a03001 	mov	r3, #1
    11d0:	e50b300c 	str	r3, [fp, #-12]
    11d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11d8:	e2633000 	rsb	r3, r3, #0
    11dc:	e50b3010 	str	r3, [fp, #-16]
    11e0:	ea000001 	b	11ec <printint+0x5c>
    11e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11e8:	e50b3010 	str	r3, [fp, #-16]
    11ec:	e3a03000 	mov	r3, #0
    11f0:	e50b3008 	str	r3, [fp, #-8]
    11f4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e1a01002 	mov	r1, r2
    1200:	e1a00003 	mov	r0, r3
    1204:	eb0001d5 	bl	1960 <__aeabi_uidivmod>
    1208:	e1a03001 	mov	r3, r1
    120c:	e1a01003 	mov	r1, r3
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e2832001 	add	r2, r3, #1
    1218:	e50b2008 	str	r2, [fp, #-8]
    121c:	e59f20a0 	ldr	r2, [pc, #160]	@ 12c4 <printint+0x134>
    1220:	e7d22001 	ldrb	r2, [r2, r1]
    1224:	e2433004 	sub	r3, r3, #4
    1228:	e083300b 	add	r3, r3, fp
    122c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1230:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1234:	e1a01003 	mov	r1, r3
    1238:	e51b0010 	ldr	r0, [fp, #-16]
    123c:	eb00018a 	bl	186c <__udivsi3>
    1240:	e1a03000 	mov	r3, r0
    1244:	e50b3010 	str	r3, [fp, #-16]
    1248:	e51b3010 	ldr	r3, [fp, #-16]
    124c:	e3530000 	cmp	r3, #0
    1250:	1affffe7 	bne	11f4 <printint+0x64>
    1254:	e51b300c 	ldr	r3, [fp, #-12]
    1258:	e3530000 	cmp	r3, #0
    125c:	0a00000e 	beq	129c <printint+0x10c>
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e2832001 	add	r2, r3, #1
    1268:	e50b2008 	str	r2, [fp, #-8]
    126c:	e2433004 	sub	r3, r3, #4
    1270:	e083300b 	add	r3, r3, fp
    1274:	e3a0202d 	mov	r2, #45	@ 0x2d
    1278:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    127c:	ea000006 	b	129c <printint+0x10c>
    1280:	e24b2020 	sub	r2, fp, #32
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e0823003 	add	r3, r2, r3
    128c:	e5d33000 	ldrb	r3, [r3]
    1290:	e1a01003 	mov	r1, r3
    1294:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1298:	ebffffae 	bl	1158 <putc>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e2433001 	sub	r3, r3, #1
    12a4:	e50b3008 	str	r3, [fp, #-8]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e3530000 	cmp	r3, #0
    12b0:	aafffff2 	bge	1280 <printint+0xf0>
    12b4:	e1a00000 	nop			@ (mov r0, r0)
    12b8:	e1a00000 	nop			@ (mov r0, r0)
    12bc:	e24bd004 	sub	sp, fp, #4
    12c0:	e8bd8800 	pop	{fp, pc}
    12c4:	000019ac 	.word	0x000019ac

000012c8 <printf>:
    12c8:	e92d000e 	push	{r1, r2, r3}
    12cc:	e92d4800 	push	{fp, lr}
    12d0:	e28db004 	add	fp, sp, #4
    12d4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    12d8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    12dc:	e3a03000 	mov	r3, #0
    12e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12e4:	e28b3008 	add	r3, fp, #8
    12e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12ec:	e3a03000 	mov	r3, #0
    12f0:	e50b3010 	str	r3, [fp, #-16]
    12f4:	ea000074 	b	14cc <printf+0x204>
    12f8:	e59b2004 	ldr	r2, [fp, #4]
    12fc:	e51b3010 	ldr	r3, [fp, #-16]
    1300:	e0823003 	add	r3, r2, r3
    1304:	e5d33000 	ldrb	r3, [r3]
    1308:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    130c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1310:	e3530000 	cmp	r3, #0
    1314:	1a00000b 	bne	1348 <printf+0x80>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530025 	cmp	r3, #37	@ 0x25
    1320:	1a000002 	bne	1330 <printf+0x68>
    1324:	e3a03025 	mov	r3, #37	@ 0x25
    1328:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    132c:	ea000063 	b	14c0 <printf+0x1f8>
    1330:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1334:	e6ef3073 	uxtb	r3, r3
    1338:	e1a01003 	mov	r1, r3
    133c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1340:	ebffff84 	bl	1158 <putc>
    1344:	ea00005d 	b	14c0 <printf+0x1f8>
    1348:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    134c:	e3530025 	cmp	r3, #37	@ 0x25
    1350:	1a00005a 	bne	14c0 <printf+0x1f8>
    1354:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1358:	e3530064 	cmp	r3, #100	@ 0x64
    135c:	1a00000a 	bne	138c <printf+0xc4>
    1360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1364:	e5933000 	ldr	r3, [r3]
    1368:	e1a01003 	mov	r1, r3
    136c:	e3a03001 	mov	r3, #1
    1370:	e3a0200a 	mov	r2, #10
    1374:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1378:	ebffff84 	bl	1190 <printint>
    137c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1380:	e2833004 	add	r3, r3, #4
    1384:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1388:	ea00004a 	b	14b8 <printf+0x1f0>
    138c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1390:	e3530078 	cmp	r3, #120	@ 0x78
    1394:	0a000002 	beq	13a4 <printf+0xdc>
    1398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    139c:	e3530070 	cmp	r3, #112	@ 0x70
    13a0:	1a00000a 	bne	13d0 <printf+0x108>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e1a01003 	mov	r1, r3
    13b0:	e3a03000 	mov	r3, #0
    13b4:	e3a02010 	mov	r2, #16
    13b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13bc:	ebffff73 	bl	1190 <printint>
    13c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	e2833004 	add	r3, r3, #4
    13c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13cc:	ea000039 	b	14b8 <printf+0x1f0>
    13d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d4:	e3530073 	cmp	r3, #115	@ 0x73
    13d8:	1a000018 	bne	1440 <printf+0x178>
    13dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e0:	e5933000 	ldr	r3, [r3]
    13e4:	e50b300c 	str	r3, [fp, #-12]
    13e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13ec:	e2833004 	add	r3, r3, #4
    13f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13f4:	e51b300c 	ldr	r3, [fp, #-12]
    13f8:	e3530000 	cmp	r3, #0
    13fc:	1a00000a 	bne	142c <printf+0x164>
    1400:	e59f30f4 	ldr	r3, [pc, #244]	@ 14fc <printf+0x234>
    1404:	e50b300c 	str	r3, [fp, #-12]
    1408:	ea000007 	b	142c <printf+0x164>
    140c:	e51b300c 	ldr	r3, [fp, #-12]
    1410:	e5d33000 	ldrb	r3, [r3]
    1414:	e1a01003 	mov	r1, r3
    1418:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    141c:	ebffff4d 	bl	1158 <putc>
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e2833001 	add	r3, r3, #1
    1428:	e50b300c 	str	r3, [fp, #-12]
    142c:	e51b300c 	ldr	r3, [fp, #-12]
    1430:	e5d33000 	ldrb	r3, [r3]
    1434:	e3530000 	cmp	r3, #0
    1438:	1afffff3 	bne	140c <printf+0x144>
    143c:	ea00001d 	b	14b8 <printf+0x1f0>
    1440:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1444:	e3530063 	cmp	r3, #99	@ 0x63
    1448:	1a000009 	bne	1474 <printf+0x1ac>
    144c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1450:	e5933000 	ldr	r3, [r3]
    1454:	e6ef3073 	uxtb	r3, r3
    1458:	e1a01003 	mov	r1, r3
    145c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1460:	ebffff3c 	bl	1158 <putc>
    1464:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1468:	e2833004 	add	r3, r3, #4
    146c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1470:	ea000010 	b	14b8 <printf+0x1f0>
    1474:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1478:	e3530025 	cmp	r3, #37	@ 0x25
    147c:	1a000005 	bne	1498 <printf+0x1d0>
    1480:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1484:	e6ef3073 	uxtb	r3, r3
    1488:	e1a01003 	mov	r1, r3
    148c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1490:	ebffff30 	bl	1158 <putc>
    1494:	ea000007 	b	14b8 <printf+0x1f0>
    1498:	e3a01025 	mov	r1, #37	@ 0x25
    149c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14a0:	ebffff2c 	bl	1158 <putc>
    14a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14a8:	e6ef3073 	uxtb	r3, r3
    14ac:	e1a01003 	mov	r1, r3
    14b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14b4:	ebffff27 	bl	1158 <putc>
    14b8:	e3a03000 	mov	r3, #0
    14bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14c0:	e51b3010 	ldr	r3, [fp, #-16]
    14c4:	e2833001 	add	r3, r3, #1
    14c8:	e50b3010 	str	r3, [fp, #-16]
    14cc:	e59b2004 	ldr	r2, [fp, #4]
    14d0:	e51b3010 	ldr	r3, [fp, #-16]
    14d4:	e0823003 	add	r3, r2, r3
    14d8:	e5d33000 	ldrb	r3, [r3]
    14dc:	e3530000 	cmp	r3, #0
    14e0:	1affff84 	bne	12f8 <printf+0x30>
    14e4:	e1a00000 	nop			@ (mov r0, r0)
    14e8:	e1a00000 	nop			@ (mov r0, r0)
    14ec:	e24bd004 	sub	sp, fp, #4
    14f0:	e8bd4800 	pop	{fp, lr}
    14f4:	e28dd00c 	add	sp, sp, #12
    14f8:	e12fff1e 	bx	lr
    14fc:	000019a4 	.word	0x000019a4

00001500 <free>:
    1500:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1504:	e28db000 	add	fp, sp, #0
    1508:	e24dd014 	sub	sp, sp, #20
    150c:	e50b0010 	str	r0, [fp, #-16]
    1510:	e51b3010 	ldr	r3, [fp, #-16]
    1514:	e2433008 	sub	r3, r3, #8
    1518:	e50b300c 	str	r3, [fp, #-12]
    151c:	e59f3154 	ldr	r3, [pc, #340]	@ 1678 <free+0x178>
    1520:	e5933000 	ldr	r3, [r3]
    1524:	e50b3008 	str	r3, [fp, #-8]
    1528:	ea000010 	b	1570 <free+0x70>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e51b2008 	ldr	r2, [fp, #-8]
    1538:	e1520003 	cmp	r2, r3
    153c:	3a000008 	bcc	1564 <free+0x64>
    1540:	e51b200c 	ldr	r2, [fp, #-12]
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e1520003 	cmp	r2, r3
    154c:	8a000010 	bhi	1594 <free+0x94>
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e5933000 	ldr	r3, [r3]
    1558:	e51b200c 	ldr	r2, [fp, #-12]
    155c:	e1520003 	cmp	r2, r3
    1560:	3a00000b 	bcc	1594 <free+0x94>
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e50b3008 	str	r3, [fp, #-8]
    1570:	e51b200c 	ldr	r2, [fp, #-12]
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e1520003 	cmp	r2, r3
    157c:	9affffea 	bls	152c <free+0x2c>
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e5933000 	ldr	r3, [r3]
    1588:	e51b200c 	ldr	r2, [fp, #-12]
    158c:	e1520003 	cmp	r2, r3
    1590:	2affffe5 	bcs	152c <free+0x2c>
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5933004 	ldr	r3, [r3, #4]
    159c:	e1a03183 	lsl	r3, r3, #3
    15a0:	e51b200c 	ldr	r2, [fp, #-12]
    15a4:	e0822003 	add	r2, r2, r3
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e5933000 	ldr	r3, [r3]
    15b0:	e1520003 	cmp	r2, r3
    15b4:	1a00000d 	bne	15f0 <free+0xf0>
    15b8:	e51b300c 	ldr	r3, [fp, #-12]
    15bc:	e5932004 	ldr	r2, [r3, #4]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e5933000 	ldr	r3, [r3]
    15c8:	e5933004 	ldr	r3, [r3, #4]
    15cc:	e0822003 	add	r2, r2, r3
    15d0:	e51b300c 	ldr	r3, [fp, #-12]
    15d4:	e5832004 	str	r2, [r3, #4]
    15d8:	e51b3008 	ldr	r3, [fp, #-8]
    15dc:	e5933000 	ldr	r3, [r3]
    15e0:	e5932000 	ldr	r2, [r3]
    15e4:	e51b300c 	ldr	r3, [fp, #-12]
    15e8:	e5832000 	str	r2, [r3]
    15ec:	ea000003 	b	1600 <free+0x100>
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e5932000 	ldr	r2, [r3]
    15f8:	e51b300c 	ldr	r3, [fp, #-12]
    15fc:	e5832000 	str	r2, [r3]
    1600:	e51b3008 	ldr	r3, [fp, #-8]
    1604:	e5933004 	ldr	r3, [r3, #4]
    1608:	e1a03183 	lsl	r3, r3, #3
    160c:	e51b2008 	ldr	r2, [fp, #-8]
    1610:	e0823003 	add	r3, r2, r3
    1614:	e51b200c 	ldr	r2, [fp, #-12]
    1618:	e1520003 	cmp	r2, r3
    161c:	1a00000b 	bne	1650 <free+0x150>
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e5932004 	ldr	r2, [r3, #4]
    1628:	e51b300c 	ldr	r3, [fp, #-12]
    162c:	e5933004 	ldr	r3, [r3, #4]
    1630:	e0822003 	add	r2, r2, r3
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e5832004 	str	r2, [r3, #4]
    163c:	e51b300c 	ldr	r3, [fp, #-12]
    1640:	e5932000 	ldr	r2, [r3]
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5832000 	str	r2, [r3]
    164c:	ea000002 	b	165c <free+0x15c>
    1650:	e51b3008 	ldr	r3, [fp, #-8]
    1654:	e51b200c 	ldr	r2, [fp, #-12]
    1658:	e5832000 	str	r2, [r3]
    165c:	e59f2014 	ldr	r2, [pc, #20]	@ 1678 <free+0x178>
    1660:	e51b3008 	ldr	r3, [fp, #-8]
    1664:	e5823000 	str	r3, [r2]
    1668:	e1a00000 	nop			@ (mov r0, r0)
    166c:	e28bd000 	add	sp, fp, #0
    1670:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1674:	e12fff1e 	bx	lr
    1678:	000019d8 	.word	0x000019d8

0000167c <morecore>:
    167c:	e92d4800 	push	{fp, lr}
    1680:	e28db004 	add	fp, sp, #4
    1684:	e24dd010 	sub	sp, sp, #16
    1688:	e50b0010 	str	r0, [fp, #-16]
    168c:	e51b3010 	ldr	r3, [fp, #-16]
    1690:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1694:	2a000001 	bcs	16a0 <morecore+0x24>
    1698:	e3a03a01 	mov	r3, #4096	@ 0x1000
    169c:	e50b3010 	str	r3, [fp, #-16]
    16a0:	e51b3010 	ldr	r3, [fp, #-16]
    16a4:	e1a03183 	lsl	r3, r3, #3
    16a8:	e1a00003 	mov	r0, r3
    16ac:	ebfffdfc 	bl	ea4 <sbrk>
    16b0:	e50b0008 	str	r0, [fp, #-8]
    16b4:	e51b3008 	ldr	r3, [fp, #-8]
    16b8:	e3730001 	cmn	r3, #1
    16bc:	1a000001 	bne	16c8 <morecore+0x4c>
    16c0:	e3a03000 	mov	r3, #0
    16c4:	ea00000a 	b	16f4 <morecore+0x78>
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e50b300c 	str	r3, [fp, #-12]
    16d0:	e51b300c 	ldr	r3, [fp, #-12]
    16d4:	e51b2010 	ldr	r2, [fp, #-16]
    16d8:	e5832004 	str	r2, [r3, #4]
    16dc:	e51b300c 	ldr	r3, [fp, #-12]
    16e0:	e2833008 	add	r3, r3, #8
    16e4:	e1a00003 	mov	r0, r3
    16e8:	ebffff84 	bl	1500 <free>
    16ec:	e59f300c 	ldr	r3, [pc, #12]	@ 1700 <morecore+0x84>
    16f0:	e5933000 	ldr	r3, [r3]
    16f4:	e1a00003 	mov	r0, r3
    16f8:	e24bd004 	sub	sp, fp, #4
    16fc:	e8bd8800 	pop	{fp, pc}
    1700:	000019d8 	.word	0x000019d8

00001704 <malloc>:
    1704:	e92d4800 	push	{fp, lr}
    1708:	e28db004 	add	fp, sp, #4
    170c:	e24dd018 	sub	sp, sp, #24
    1710:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1718:	e2833007 	add	r3, r3, #7
    171c:	e1a031a3 	lsr	r3, r3, #3
    1720:	e2833001 	add	r3, r3, #1
    1724:	e50b3010 	str	r3, [fp, #-16]
    1728:	e59f3134 	ldr	r3, [pc, #308]	@ 1864 <malloc+0x160>
    172c:	e5933000 	ldr	r3, [r3]
    1730:	e50b300c 	str	r3, [fp, #-12]
    1734:	e51b300c 	ldr	r3, [fp, #-12]
    1738:	e3530000 	cmp	r3, #0
    173c:	1a00000b 	bne	1770 <malloc+0x6c>
    1740:	e59f3120 	ldr	r3, [pc, #288]	@ 1868 <malloc+0x164>
    1744:	e50b300c 	str	r3, [fp, #-12]
    1748:	e59f2114 	ldr	r2, [pc, #276]	@ 1864 <malloc+0x160>
    174c:	e51b300c 	ldr	r3, [fp, #-12]
    1750:	e5823000 	str	r3, [r2]
    1754:	e59f3108 	ldr	r3, [pc, #264]	@ 1864 <malloc+0x160>
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e59f2104 	ldr	r2, [pc, #260]	@ 1868 <malloc+0x164>
    1760:	e5823000 	str	r3, [r2]
    1764:	e59f30fc 	ldr	r3, [pc, #252]	@ 1868 <malloc+0x164>
    1768:	e3a02000 	mov	r2, #0
    176c:	e5832004 	str	r2, [r3, #4]
    1770:	e51b300c 	ldr	r3, [fp, #-12]
    1774:	e5933000 	ldr	r3, [r3]
    1778:	e50b3008 	str	r3, [fp, #-8]
    177c:	e51b3008 	ldr	r3, [fp, #-8]
    1780:	e5933004 	ldr	r3, [r3, #4]
    1784:	e51b2010 	ldr	r2, [fp, #-16]
    1788:	e1520003 	cmp	r2, r3
    178c:	8a00001e 	bhi	180c <malloc+0x108>
    1790:	e51b3008 	ldr	r3, [fp, #-8]
    1794:	e5933004 	ldr	r3, [r3, #4]
    1798:	e51b2010 	ldr	r2, [fp, #-16]
    179c:	e1520003 	cmp	r2, r3
    17a0:	1a000004 	bne	17b8 <malloc+0xb4>
    17a4:	e51b3008 	ldr	r3, [fp, #-8]
    17a8:	e5932000 	ldr	r2, [r3]
    17ac:	e51b300c 	ldr	r3, [fp, #-12]
    17b0:	e5832000 	str	r2, [r3]
    17b4:	ea00000e 	b	17f4 <malloc+0xf0>
    17b8:	e51b3008 	ldr	r3, [fp, #-8]
    17bc:	e5932004 	ldr	r2, [r3, #4]
    17c0:	e51b3010 	ldr	r3, [fp, #-16]
    17c4:	e0422003 	sub	r2, r2, r3
    17c8:	e51b3008 	ldr	r3, [fp, #-8]
    17cc:	e5832004 	str	r2, [r3, #4]
    17d0:	e51b3008 	ldr	r3, [fp, #-8]
    17d4:	e5933004 	ldr	r3, [r3, #4]
    17d8:	e1a03183 	lsl	r3, r3, #3
    17dc:	e51b2008 	ldr	r2, [fp, #-8]
    17e0:	e0823003 	add	r3, r2, r3
    17e4:	e50b3008 	str	r3, [fp, #-8]
    17e8:	e51b3008 	ldr	r3, [fp, #-8]
    17ec:	e51b2010 	ldr	r2, [fp, #-16]
    17f0:	e5832004 	str	r2, [r3, #4]
    17f4:	e59f2068 	ldr	r2, [pc, #104]	@ 1864 <malloc+0x160>
    17f8:	e51b300c 	ldr	r3, [fp, #-12]
    17fc:	e5823000 	str	r3, [r2]
    1800:	e51b3008 	ldr	r3, [fp, #-8]
    1804:	e2833008 	add	r3, r3, #8
    1808:	ea000012 	b	1858 <malloc+0x154>
    180c:	e59f3050 	ldr	r3, [pc, #80]	@ 1864 <malloc+0x160>
    1810:	e5933000 	ldr	r3, [r3]
    1814:	e51b2008 	ldr	r2, [fp, #-8]
    1818:	e1520003 	cmp	r2, r3
    181c:	1a000007 	bne	1840 <malloc+0x13c>
    1820:	e51b0010 	ldr	r0, [fp, #-16]
    1824:	ebffff94 	bl	167c <morecore>
    1828:	e50b0008 	str	r0, [fp, #-8]
    182c:	e51b3008 	ldr	r3, [fp, #-8]
    1830:	e3530000 	cmp	r3, #0
    1834:	1a000001 	bne	1840 <malloc+0x13c>
    1838:	e3a03000 	mov	r3, #0
    183c:	ea000005 	b	1858 <malloc+0x154>
    1840:	e51b3008 	ldr	r3, [fp, #-8]
    1844:	e50b300c 	str	r3, [fp, #-12]
    1848:	e51b3008 	ldr	r3, [fp, #-8]
    184c:	e5933000 	ldr	r3, [r3]
    1850:	e50b3008 	str	r3, [fp, #-8]
    1854:	eaffffc8 	b	177c <malloc+0x78>
    1858:	e1a00003 	mov	r0, r3
    185c:	e24bd004 	sub	sp, fp, #4
    1860:	e8bd8800 	pop	{fp, pc}
    1864:	000019d8 	.word	0x000019d8
    1868:	000019d0 	.word	0x000019d0

0000186c <__udivsi3>:
    186c:	e2512001 	subs	r2, r1, #1
    1870:	012fff1e 	bxeq	lr
    1874:	3a000036 	bcc	1954 <__udivsi3+0xe8>
    1878:	e1500001 	cmp	r0, r1
    187c:	9a000022 	bls	190c <__udivsi3+0xa0>
    1880:	e1110002 	tst	r1, r2
    1884:	0a000023 	beq	1918 <__udivsi3+0xac>
    1888:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    188c:	01a01181 	lsleq	r1, r1, #3
    1890:	03a03008 	moveq	r3, #8
    1894:	13a03001 	movne	r3, #1
    1898:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    189c:	31510000 	cmpcc	r1, r0
    18a0:	31a01201 	lslcc	r1, r1, #4
    18a4:	31a03203 	lslcc	r3, r3, #4
    18a8:	3afffffa 	bcc	1898 <__udivsi3+0x2c>
    18ac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    18b0:	31510000 	cmpcc	r1, r0
    18b4:	31a01081 	lslcc	r1, r1, #1
    18b8:	31a03083 	lslcc	r3, r3, #1
    18bc:	3afffffa 	bcc	18ac <__udivsi3+0x40>
    18c0:	e3a02000 	mov	r2, #0
    18c4:	e1500001 	cmp	r0, r1
    18c8:	20400001 	subcs	r0, r0, r1
    18cc:	21822003 	orrcs	r2, r2, r3
    18d0:	e15000a1 	cmp	r0, r1, lsr #1
    18d4:	204000a1 	subcs	r0, r0, r1, lsr #1
    18d8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    18dc:	e1500121 	cmp	r0, r1, lsr #2
    18e0:	20400121 	subcs	r0, r0, r1, lsr #2
    18e4:	21822123 	orrcs	r2, r2, r3, lsr #2
    18e8:	e15001a1 	cmp	r0, r1, lsr #3
    18ec:	204001a1 	subcs	r0, r0, r1, lsr #3
    18f0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18f4:	e3500000 	cmp	r0, #0
    18f8:	11b03223 	lsrsne	r3, r3, #4
    18fc:	11a01221 	lsrne	r1, r1, #4
    1900:	1affffef 	bne	18c4 <__udivsi3+0x58>
    1904:	e1a00002 	mov	r0, r2
    1908:	e12fff1e 	bx	lr
    190c:	03a00001 	moveq	r0, #1
    1910:	13a00000 	movne	r0, #0
    1914:	e12fff1e 	bx	lr
    1918:	e3510801 	cmp	r1, #65536	@ 0x10000
    191c:	21a01821 	lsrcs	r1, r1, #16
    1920:	23a02010 	movcs	r2, #16
    1924:	33a02000 	movcc	r2, #0
    1928:	e3510c01 	cmp	r1, #256	@ 0x100
    192c:	21a01421 	lsrcs	r1, r1, #8
    1930:	22822008 	addcs	r2, r2, #8
    1934:	e3510010 	cmp	r1, #16
    1938:	21a01221 	lsrcs	r1, r1, #4
    193c:	22822004 	addcs	r2, r2, #4
    1940:	e3510004 	cmp	r1, #4
    1944:	82822003 	addhi	r2, r2, #3
    1948:	908220a1 	addls	r2, r2, r1, lsr #1
    194c:	e1a00230 	lsr	r0, r0, r2
    1950:	e12fff1e 	bx	lr
    1954:	e3500000 	cmp	r0, #0
    1958:	13e00000 	mvnne	r0, #0
    195c:	ea000007 	b	1980 <__aeabi_idiv0>

00001960 <__aeabi_uidivmod>:
    1960:	e3510000 	cmp	r1, #0
    1964:	0afffffa 	beq	1954 <__udivsi3+0xe8>
    1968:	e92d4003 	push	{r0, r1, lr}
    196c:	ebffffbe 	bl	186c <__udivsi3>
    1970:	e8bd4006 	pop	{r1, r2, lr}
    1974:	e0030092 	mul	r3, r2, r0
    1978:	e0411003 	sub	r1, r1, r3
    197c:	e12fff1e 	bx	lr

00001980 <__aeabi_idiv0>:
    1980:	e12fff1e 	bx	lr
