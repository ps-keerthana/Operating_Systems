
_t_lock:     file format elf32-littlearm


Disassembly of section .text:

00000000 <count>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e3a03000 	mov	r3, #0
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	ea00000b 	b	4c <count+0x4c>
      1c:	e59f004c 	ldr	r0, [pc, #76]	@ 70 <count+0x70>
      20:	eb000211 	bl	86c <acquireLock>
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e5933000 	ldr	r3, [r3]
      2c:	e2832001 	add	r2, r3, #1
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e5832000 	str	r2, [r3]
      38:	e59f0030 	ldr	r0, [pc, #48]	@ 70 <count+0x70>
      3c:	eb00021e 	bl	8bc <releaseLock>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e2833001 	add	r3, r3, #1
      48:	e50b3008 	str	r3, [fp, #-8]
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e59f201c 	ldr	r2, [pc, #28]	@ 74 <count+0x74>
      54:	e1530002 	cmp	r3, r2
      58:	baffffef 	blt	1c <count+0x1c>
      5c:	eb0003b1 	bl	f28 <thread_exit>
      60:	e3a03000 	mov	r3, #0
      64:	e1a00003 	mov	r0, r3
      68:	e24bd004 	sub	sp, fp, #4
      6c:	e8bd8800 	pop	{fp, pc}
      70:	000018d4 	.word	0x000018d4
      74:	000f4240 	.word	0x000f4240

00000078 <main>:
      78:	e92d4800 	push	{fp, lr}
      7c:	e28db004 	add	fp, sp, #4
      80:	e24dd010 	sub	sp, sp, #16
      84:	e59f0060 	ldr	r0, [pc, #96]	@ ec <main+0x74>
      88:	eb0001e9 	bl	834 <initiateLock>
      8c:	e3a03000 	mov	r3, #0
      90:	e50b3008 	str	r3, [fp, #-8]
      94:	e24b2008 	sub	r2, fp, #8
      98:	e24b300c 	sub	r3, fp, #12
      9c:	e59f104c 	ldr	r1, [pc, #76]	@ f0 <main+0x78>
      a0:	e1a00003 	mov	r0, r3
      a4:	eb000396 	bl	f04 <thread_create>
      a8:	e24b2008 	sub	r2, fp, #8
      ac:	e24b3010 	sub	r3, fp, #16
      b0:	e59f1038 	ldr	r1, [pc, #56]	@ f0 <main+0x78>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000391 	bl	f04 <thread_create>
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e1a00003 	mov	r0, r3
      c4:	eb0003a0 	bl	f4c <thread_join>
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e1a00003 	mov	r0, r3
      d0:	eb00039d 	bl	f4c <thread_join>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a02003 	mov	r2, r3
      dc:	e59f1010 	ldr	r1, [pc, #16]	@ f4 <main+0x7c>
      e0:	e3a00001 	mov	r0, #1
      e4:	eb00043e 	bl	11e4 <printf>
      e8:	eb0002a4 	bl	b80 <exit>
      ec:	000018d4 	.word	0x000018d4
      f0:	00000000 	.word	0x00000000
      f4:	000018a0 	.word	0x000018a0

000000f8 <pg_pte>:
      f8:	e92d4800 	push	{fp, lr}
      fc:	e28db004 	add	fp, sp, #4
     100:	e24dd008 	sub	sp, sp, #8
     104:	e50b0008 	str	r0, [fp, #-8]
     108:	e51b1008 	ldr	r1, [fp, #-8]
     10c:	e3a0001a 	mov	r0, #26
     110:	eb0003d5 	bl	106c <syscall>
     114:	e1a03000 	mov	r3, r0
     118:	e1a00003 	mov	r0, r3
     11c:	e24bd004 	sub	sp, fp, #4
     120:	e8bd8800 	pop	{fp, pc}

00000124 <pg_pa>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dd008 	sub	sp, sp, #8
     130:	e50b0008 	str	r0, [fp, #-8]
     134:	e51b1008 	ldr	r1, [fp, #-8]
     138:	e3a0001b 	mov	r0, #27
     13c:	eb0003ca 	bl	106c <syscall>
     140:	e1a03000 	mov	r3, r0
     144:	e1a00003 	mov	r0, r3
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}

00000150 <pg_flags>:
     150:	e92d4800 	push	{fp, lr}
     154:	e28db004 	add	fp, sp, #4
     158:	e24dd008 	sub	sp, sp, #8
     15c:	e50b0008 	str	r0, [fp, #-8]
     160:	e51b1008 	ldr	r1, [fp, #-8]
     164:	e3a0001c 	mov	r0, #28
     168:	eb0003bf 	bl	106c <syscall>
     16c:	e1a03000 	mov	r3, r0
     170:	e1a00003 	mov	r0, r3
     174:	e24bd004 	sub	sp, fp, #4
     178:	e8bd8800 	pop	{fp, pc}

0000017c <kpt>:
     17c:	e92d4800 	push	{fp, lr}
     180:	e28db004 	add	fp, sp, #4
     184:	e3a0001d 	mov	r0, #29
     188:	eb0003b7 	bl	106c <syscall>
     18c:	e1a03000 	mov	r3, r0
     190:	e1a00003 	mov	r0, r3
     194:	e8bd8800 	pop	{fp, pc}

00000198 <ugetpid>:
     198:	e92d4800 	push	{fp, lr}
     19c:	e28db004 	add	fp, sp, #4
     1a0:	e3a0001e 	mov	r0, #30
     1a4:	eb0003b0 	bl	106c <syscall>
     1a8:	e1a03000 	mov	r3, r0
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e8bd8800 	pop	{fp, pc}

000001b4 <strcpy>:
     1b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b8:	e28db000 	add	fp, sp, #0
     1bc:	e24dd014 	sub	sp, sp, #20
     1c0:	e50b0010 	str	r0, [fp, #-16]
     1c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1c8:	e51b3010 	ldr	r3, [fp, #-16]
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e1a00000 	nop			@ (mov r0, r0)
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e2823001 	add	r3, r2, #1
     1dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1e0:	e51b3010 	ldr	r3, [fp, #-16]
     1e4:	e2831001 	add	r1, r3, #1
     1e8:	e50b1010 	str	r1, [fp, #-16]
     1ec:	e5d22000 	ldrb	r2, [r2]
     1f0:	e5c32000 	strb	r2, [r3]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	1afffff4 	bne	1d4 <strcpy+0x20>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e1a00003 	mov	r0, r3
     208:	e28bd000 	add	sp, fp, #0
     20c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     210:	e12fff1e 	bx	lr

00000214 <strcmp>:
     214:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     218:	e28db000 	add	fp, sp, #0
     21c:	e24dd00c 	sub	sp, sp, #12
     220:	e50b0008 	str	r0, [fp, #-8]
     224:	e50b100c 	str	r1, [fp, #-12]
     228:	ea000005 	b	244 <strcmp+0x30>
     22c:	e51b3008 	ldr	r3, [fp, #-8]
     230:	e2833001 	add	r3, r3, #1
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	e51b300c 	ldr	r3, [fp, #-12]
     23c:	e2833001 	add	r3, r3, #1
     240:	e50b300c 	str	r3, [fp, #-12]
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e5d33000 	ldrb	r3, [r3]
     24c:	e3530000 	cmp	r3, #0
     250:	0a000005 	beq	26c <strcmp+0x58>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e5d32000 	ldrb	r2, [r3]
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e5d33000 	ldrb	r3, [r3]
     264:	e1520003 	cmp	r2, r3
     268:	0affffef 	beq	22c <strcmp+0x18>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e5d33000 	ldrb	r3, [r3]
     274:	e1a02003 	mov	r2, r3
     278:	e51b300c 	ldr	r3, [fp, #-12]
     27c:	e5d33000 	ldrb	r3, [r3]
     280:	e0423003 	sub	r3, r2, r3
     284:	e1a00003 	mov	r0, r3
     288:	e28bd000 	add	sp, fp, #0
     28c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     290:	e12fff1e 	bx	lr

00000294 <strlen>:
     294:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     298:	e28db000 	add	fp, sp, #0
     29c:	e24dd014 	sub	sp, sp, #20
     2a0:	e50b0010 	str	r0, [fp, #-16]
     2a4:	e3a03000 	mov	r3, #0
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	ea000002 	b	2bc <strlen+0x28>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e2833001 	add	r3, r3, #1
     2b8:	e50b3008 	str	r3, [fp, #-8]
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e51b2010 	ldr	r2, [fp, #-16]
     2c4:	e0823003 	add	r3, r2, r3
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff6 	bne	2b0 <strlen+0x1c>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <memset>:
     2e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ec:	e28db000 	add	fp, sp, #0
     2f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     300:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     304:	e50b3008 	str	r3, [fp, #-8]
     308:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     30c:	e54b300d 	strb	r3, [fp, #-13]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e1a03002 	mov	r3, r2
     318:	e1a03403 	lsl	r3, r3, #8
     31c:	e0833002 	add	r3, r3, r2
     320:	e1a03803 	lsl	r3, r3, #16
     324:	e1a02003 	mov	r2, r3
     328:	e55b300d 	ldrb	r3, [fp, #-13]
     32c:	e1a03403 	lsl	r3, r3, #8
     330:	e1822003 	orr	r2, r2, r3
     334:	e55b300d 	ldrb	r3, [fp, #-13]
     338:	e1823003 	orr	r3, r2, r3
     33c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     340:	ea000008 	b	368 <memset+0x80>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e55b200d 	ldrb	r2, [fp, #-13]
     34c:	e5c32000 	strb	r2, [r3]
     350:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     354:	e2433001 	sub	r3, r3, #1
     358:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     36c:	e3530000 	cmp	r3, #0
     370:	0a000003 	beq	384 <memset+0x9c>
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2033003 	and	r3, r3, #3
     37c:	e3530000 	cmp	r3, #0
     380:	1affffef 	bne	344 <memset+0x5c>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e50b300c 	str	r3, [fp, #-12]
     38c:	ea000008 	b	3b4 <memset+0xcc>
     390:	e51b300c 	ldr	r3, [fp, #-12]
     394:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     398:	e5832000 	str	r2, [r3]
     39c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e2433004 	sub	r3, r3, #4
     3a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a8:	e51b300c 	ldr	r3, [fp, #-12]
     3ac:	e2833004 	add	r3, r3, #4
     3b0:	e50b300c 	str	r3, [fp, #-12]
     3b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e3530003 	cmp	r3, #3
     3bc:	8afffff3 	bhi	390 <memset+0xa8>
     3c0:	e51b300c 	ldr	r3, [fp, #-12]
     3c4:	e50b3008 	str	r3, [fp, #-8]
     3c8:	ea000008 	b	3f0 <memset+0x108>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e55b200d 	ldrb	r2, [fp, #-13]
     3d4:	e5c32000 	strb	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e2433001 	sub	r3, r3, #1
     3e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e50b3008 	str	r3, [fp, #-8]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f4:	e3530000 	cmp	r3, #0
     3f8:	1afffff3 	bne	3cc <memset+0xe4>
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e1a00003 	mov	r0, r3
     404:	e28bd000 	add	sp, fp, #0
     408:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     40c:	e12fff1e 	bx	lr

00000410 <strchr>:
     410:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     414:	e28db000 	add	fp, sp, #0
     418:	e24dd00c 	sub	sp, sp, #12
     41c:	e50b0008 	str	r0, [fp, #-8]
     420:	e1a03001 	mov	r3, r1
     424:	e54b3009 	strb	r3, [fp, #-9]
     428:	ea000009 	b	454 <strchr+0x44>
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e5d33000 	ldrb	r3, [r3]
     434:	e55b2009 	ldrb	r2, [fp, #-9]
     438:	e1520003 	cmp	r2, r3
     43c:	1a000001 	bne	448 <strchr+0x38>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	ea000007 	b	468 <strchr+0x58>
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e2833001 	add	r3, r3, #1
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e3530000 	cmp	r3, #0
     460:	1afffff1 	bne	42c <strchr+0x1c>
     464:	e3a03000 	mov	r3, #0
     468:	e1a00003 	mov	r0, r3
     46c:	e28bd000 	add	sp, fp, #0
     470:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     474:	e12fff1e 	bx	lr

00000478 <gets>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd018 	sub	sp, sp, #24
     484:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     488:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     48c:	e3a03000 	mov	r3, #0
     490:	e50b3008 	str	r3, [fp, #-8]
     494:	ea000016 	b	4f4 <gets+0x7c>
     498:	e24b300d 	sub	r3, fp, #13
     49c:	e3a02001 	mov	r2, #1
     4a0:	e1a01003 	mov	r1, r3
     4a4:	e3a00000 	mov	r0, #0
     4a8:	eb0001cf 	bl	bec <read>
     4ac:	e50b000c 	str	r0, [fp, #-12]
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e3530000 	cmp	r3, #0
     4b8:	da000013 	ble	50c <gets+0x94>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2832001 	add	r2, r3, #1
     4c4:	e50b2008 	str	r2, [fp, #-8]
     4c8:	e1a02003 	mov	r2, r3
     4cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d0:	e0833002 	add	r3, r3, r2
     4d4:	e55b200d 	ldrb	r2, [fp, #-13]
     4d8:	e5c32000 	strb	r2, [r3]
     4dc:	e55b300d 	ldrb	r3, [fp, #-13]
     4e0:	e353000a 	cmp	r3, #10
     4e4:	0a000009 	beq	510 <gets+0x98>
     4e8:	e55b300d 	ldrb	r3, [fp, #-13]
     4ec:	e353000d 	cmp	r3, #13
     4f0:	0a000006 	beq	510 <gets+0x98>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e2833001 	add	r3, r3, #1
     4fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     500:	e1520003 	cmp	r2, r3
     504:	caffffe3 	bgt	498 <gets+0x20>
     508:	ea000000 	b	510 <gets+0x98>
     50c:	e1a00000 	nop			@ (mov r0, r0)
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     518:	e0823003 	add	r3, r2, r3
     51c:	e3a02000 	mov	r2, #0
     520:	e5c32000 	strb	r2, [r3]
     524:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     528:	e1a00003 	mov	r0, r3
     52c:	e24bd004 	sub	sp, fp, #4
     530:	e8bd8800 	pop	{fp, pc}

00000534 <stat>:
     534:	e92d4800 	push	{fp, lr}
     538:	e28db004 	add	fp, sp, #4
     53c:	e24dd010 	sub	sp, sp, #16
     540:	e50b0010 	str	r0, [fp, #-16]
     544:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     548:	e3a01000 	mov	r1, #0
     54c:	e51b0010 	ldr	r0, [fp, #-16]
     550:	eb0001d2 	bl	ca0 <open>
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e3530000 	cmp	r3, #0
     560:	aa000001 	bge	56c <stat+0x38>
     564:	e3e03000 	mvn	r3, #0
     568:	ea000006 	b	588 <stat+0x54>
     56c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     570:	e51b0008 	ldr	r0, [fp, #-8]
     574:	eb0001e4 	bl	d0c <fstat>
     578:	e50b000c 	str	r0, [fp, #-12]
     57c:	e51b0008 	ldr	r0, [fp, #-8]
     580:	eb0001ab 	bl	c34 <close>
     584:	e51b300c 	ldr	r3, [fp, #-12]
     588:	e1a00003 	mov	r0, r3
     58c:	e24bd004 	sub	sp, fp, #4
     590:	e8bd8800 	pop	{fp, pc}

00000594 <atoi>:
     594:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     598:	e28db000 	add	fp, sp, #0
     59c:	e24dd014 	sub	sp, sp, #20
     5a0:	e50b0010 	str	r0, [fp, #-16]
     5a4:	e3a03000 	mov	r3, #0
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	ea00000c 	b	5e4 <atoi+0x50>
     5b0:	e51b2008 	ldr	r2, [fp, #-8]
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a03103 	lsl	r3, r3, #2
     5bc:	e0833002 	add	r3, r3, r2
     5c0:	e1a03083 	lsl	r3, r3, #1
     5c4:	e1a01003 	mov	r1, r3
     5c8:	e51b3010 	ldr	r3, [fp, #-16]
     5cc:	e2832001 	add	r2, r3, #1
     5d0:	e50b2010 	str	r2, [fp, #-16]
     5d4:	e5d33000 	ldrb	r3, [r3]
     5d8:	e0813003 	add	r3, r1, r3
     5dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     5e0:	e50b3008 	str	r3, [fp, #-8]
     5e4:	e51b3010 	ldr	r3, [fp, #-16]
     5e8:	e5d33000 	ldrb	r3, [r3]
     5ec:	e353002f 	cmp	r3, #47	@ 0x2f
     5f0:	9a000003 	bls	604 <atoi+0x70>
     5f4:	e51b3010 	ldr	r3, [fp, #-16]
     5f8:	e5d33000 	ldrb	r3, [r3]
     5fc:	e3530039 	cmp	r3, #57	@ 0x39
     600:	9affffea 	bls	5b0 <atoi+0x1c>
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e1a00003 	mov	r0, r3
     60c:	e28bd000 	add	sp, fp, #0
     610:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <memmove>:
     618:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     61c:	e28db000 	add	fp, sp, #0
     620:	e24dd01c 	sub	sp, sp, #28
     624:	e50b0010 	str	r0, [fp, #-16]
     628:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     62c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e50b3008 	str	r3, [fp, #-8]
     638:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     63c:	e50b300c 	str	r3, [fp, #-12]
     640:	ea000007 	b	664 <memmove+0x4c>
     644:	e51b200c 	ldr	r2, [fp, #-12]
     648:	e2823001 	add	r3, r2, #1
     64c:	e50b300c 	str	r3, [fp, #-12]
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e2831001 	add	r1, r3, #1
     658:	e50b1008 	str	r1, [fp, #-8]
     65c:	e5d22000 	ldrb	r2, [r2]
     660:	e5c32000 	strb	r2, [r3]
     664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     668:	e2432001 	sub	r2, r3, #1
     66c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     670:	e3530000 	cmp	r3, #0
     674:	cafffff2 	bgt	644 <memmove+0x2c>
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e1a00003 	mov	r0, r3
     680:	e28bd000 	add	sp, fp, #0
     684:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <strncmp>:
     68c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     690:	e28db000 	add	fp, sp, #0
     694:	e24dd014 	sub	sp, sp, #20
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	e50b100c 	str	r1, [fp, #-12]
     6a0:	e50b2010 	str	r2, [fp, #-16]
     6a4:	ea000008 	b	6cc <strncmp+0x40>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e2833001 	add	r3, r3, #1
     6b0:	e50b3008 	str	r3, [fp, #-8]
     6b4:	e51b300c 	ldr	r3, [fp, #-12]
     6b8:	e2833001 	add	r3, r3, #1
     6bc:	e50b300c 	str	r3, [fp, #-12]
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e2433001 	sub	r3, r3, #1
     6c8:	e50b3010 	str	r3, [fp, #-16]
     6cc:	e51b3010 	ldr	r3, [fp, #-16]
     6d0:	e3530000 	cmp	r3, #0
     6d4:	da00000d 	ble	710 <strncmp+0x84>
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e5d33000 	ldrb	r3, [r3]
     6e0:	e3530000 	cmp	r3, #0
     6e4:	0a000009 	beq	710 <strncmp+0x84>
     6e8:	e51b300c 	ldr	r3, [fp, #-12]
     6ec:	e5d33000 	ldrb	r3, [r3]
     6f0:	e3530000 	cmp	r3, #0
     6f4:	0a000005 	beq	710 <strncmp+0x84>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5d32000 	ldrb	r2, [r3]
     700:	e51b300c 	ldr	r3, [fp, #-12]
     704:	e5d33000 	ldrb	r3, [r3]
     708:	e1520003 	cmp	r2, r3
     70c:	0affffe5 	beq	6a8 <strncmp+0x1c>
     710:	e51b3010 	ldr	r3, [fp, #-16]
     714:	e3530000 	cmp	r3, #0
     718:	1a000001 	bne	724 <strncmp+0x98>
     71c:	e3a03000 	mov	r3, #0
     720:	ea000005 	b	73c <strncmp+0xb0>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5d33000 	ldrb	r3, [r3]
     72c:	e1a02003 	mov	r2, r3
     730:	e51b300c 	ldr	r3, [fp, #-12]
     734:	e5d33000 	ldrb	r3, [r3]
     738:	e0423003 	sub	r3, r2, r3
     73c:	e1a00003 	mov	r0, r3
     740:	e28bd000 	add	sp, fp, #0
     744:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <strncpy>:
     74c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     750:	e28db000 	add	fp, sp, #0
     754:	e24dd01c 	sub	sp, sp, #28
     758:	e50b0010 	str	r0, [fp, #-16]
     75c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     760:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     764:	e51b3010 	ldr	r3, [fp, #-16]
     768:	e50b3008 	str	r3, [fp, #-8]
     76c:	ea00000a 	b	79c <strncpy+0x50>
     770:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     774:	e2823001 	add	r3, r2, #1
     778:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e2831001 	add	r1, r3, #1
     784:	e50b1008 	str	r1, [fp, #-8]
     788:	e5d22000 	ldrb	r2, [r2]
     78c:	e5c32000 	strb	r2, [r3]
     790:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     794:	e2433001 	sub	r3, r3, #1
     798:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     79c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a0:	e3530000 	cmp	r3, #0
     7a4:	da00000c 	ble	7dc <strncpy+0x90>
     7a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	1affffed 	bne	770 <strncpy+0x24>
     7b8:	ea000007 	b	7dc <strncpy+0x90>
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e2832001 	add	r2, r3, #1
     7c4:	e50b2008 	str	r2, [fp, #-8]
     7c8:	e3a02000 	mov	r2, #0
     7cc:	e5c32000 	strb	r2, [r3]
     7d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d4:	e2433001 	sub	r3, r3, #1
     7d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7e0:	e3530000 	cmp	r3, #0
     7e4:	cafffff4 	bgt	7bc <strncpy+0x70>
     7e8:	e51b3010 	ldr	r3, [fp, #-16]
     7ec:	e1a00003 	mov	r0, r3
     7f0:	e28bd000 	add	sp, fp, #0
     7f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <xchg>:
     7fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     800:	e28db000 	add	fp, sp, #0
     804:	e24dd014 	sub	sp, sp, #20
     808:	e50b0010 	str	r0, [fp, #-16]
     80c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     810:	e51b2010 	ldr	r2, [fp, #-16]
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e1023091 	swp	r3, r1, [r2]
     81c:	e50b3008 	str	r3, [fp, #-8]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e1a00003 	mov	r0, r3
     828:	e28bd000 	add	sp, fp, #0
     82c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <initiateLock>:
     834:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     838:	e28db000 	add	fp, sp, #0
     83c:	e24dd00c 	sub	sp, sp, #12
     840:	e50b0008 	str	r0, [fp, #-8]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e3a02000 	mov	r2, #0
     84c:	e5832000 	str	r2, [r3]
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e3a02001 	mov	r2, #1
     858:	e5832004 	str	r2, [r3, #4]
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e28bd000 	add	sp, fp, #0
     864:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <acquireLock>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd008 	sub	sp, sp, #8
     878:	e50b0008 	str	r0, [fp, #-8]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e5933004 	ldr	r3, [r3, #4]
     884:	e3530000 	cmp	r3, #0
     888:	0a000008 	beq	8b0 <acquireLock+0x44>
     88c:	e1a00000 	nop			@ (mov r0, r0)
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e3a01001 	mov	r1, #1
     898:	e1a00003 	mov	r0, r3
     89c:	ebffffd6 	bl	7fc <xchg>
     8a0:	e1a03000 	mov	r3, r0
     8a4:	e3530000 	cmp	r3, #0
     8a8:	1afffff8 	bne	890 <acquireLock+0x24>
     8ac:	ea000000 	b	8b4 <acquireLock+0x48>
     8b0:	e1a00000 	nop			@ (mov r0, r0)
     8b4:	e24bd004 	sub	sp, fp, #4
     8b8:	e8bd8800 	pop	{fp, pc}

000008bc <releaseLock>:
     8bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c0:	e28db000 	add	fp, sp, #0
     8c4:	e24dd00c 	sub	sp, sp, #12
     8c8:	e50b0008 	str	r0, [fp, #-8]
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933004 	ldr	r3, [r3, #4]
     8d4:	e3530000 	cmp	r3, #0
     8d8:	0a000006 	beq	8f8 <releaseLock+0x3c>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5933000 	ldr	r3, [r3]
     8e4:	e3530001 	cmp	r3, #1
     8e8:	1a000002 	bne	8f8 <releaseLock+0x3c>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e3a02000 	mov	r2, #0
     8f4:	e5832000 	str	r2, [r3]
     8f8:	e1a00000 	nop			@ (mov r0, r0)
     8fc:	e28bd000 	add	sp, fp, #0
     900:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <initiateCondVar>:
     908:	e92d4800 	push	{fp, lr}
     90c:	e28db004 	add	fp, sp, #4
     910:	e24dd008 	sub	sp, sp, #8
     914:	e50b0008 	str	r0, [fp, #-8]
     918:	eb0001b8 	bl	1000 <getChannel>
     91c:	e1a02000 	mov	r2, r0
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e5832000 	str	r2, [r3]
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e3a02001 	mov	r2, #1
     930:	e5832004 	str	r2, [r3, #4]
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e24bd004 	sub	sp, fp, #4
     93c:	e8bd8800 	pop	{fp, pc}

00000940 <condWait>:
     940:	e92d4800 	push	{fp, lr}
     944:	e28db004 	add	fp, sp, #4
     948:	e24dd008 	sub	sp, sp, #8
     94c:	e50b0008 	str	r0, [fp, #-8]
     950:	e50b100c 	str	r1, [fp, #-12]
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e5933004 	ldr	r3, [r3, #4]
     95c:	e3530000 	cmp	r3, #0
     960:	0a00000c 	beq	998 <condWait+0x58>
     964:	e51b300c 	ldr	r3, [fp, #-12]
     968:	e5933004 	ldr	r3, [r3, #4]
     96c:	e3530000 	cmp	r3, #0
     970:	0a000008 	beq	998 <condWait+0x58>
     974:	e51b000c 	ldr	r0, [fp, #-12]
     978:	ebffffcf 	bl	8bc <releaseLock>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e5933000 	ldr	r3, [r3]
     984:	e1a00003 	mov	r0, r3
     988:	eb000193 	bl	fdc <sleepChan>
     98c:	e51b000c 	ldr	r0, [fp, #-12]
     990:	ebffffb5 	bl	86c <acquireLock>
     994:	ea000000 	b	99c <condWait+0x5c>
     998:	e1a00000 	nop			@ (mov r0, r0)
     99c:	e24bd004 	sub	sp, fp, #4
     9a0:	e8bd8800 	pop	{fp, pc}

000009a4 <broadcast>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd008 	sub	sp, sp, #8
     9b0:	e50b0008 	str	r0, [fp, #-8]
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933004 	ldr	r3, [r3, #4]
     9bc:	e3530000 	cmp	r3, #0
     9c0:	0a000004 	beq	9d8 <broadcast+0x34>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e5933000 	ldr	r3, [r3]
     9cc:	e1a00003 	mov	r0, r3
     9d0:	eb000193 	bl	1024 <sigChan>
     9d4:	ea000000 	b	9dc <broadcast+0x38>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <signal>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd008 	sub	sp, sp, #8
     9f0:	e50b0008 	str	r0, [fp, #-8]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e5933004 	ldr	r3, [r3, #4]
     9fc:	e3530000 	cmp	r3, #0
     a00:	0a000004 	beq	a18 <signal+0x34>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e5933000 	ldr	r3, [r3]
     a0c:	e1a00003 	mov	r0, r3
     a10:	eb00018c 	bl	1048 <sigOneChan>
     a14:	ea000000 	b	a1c <signal+0x38>
     a18:	e1a00000 	nop			@ (mov r0, r0)
     a1c:	e24bd004 	sub	sp, fp, #4
     a20:	e8bd8800 	pop	{fp, pc}

00000a24 <semInit>:
     a24:	e92d4800 	push	{fp, lr}
     a28:	e28db004 	add	fp, sp, #4
     a2c:	e24dd008 	sub	sp, sp, #8
     a30:	e50b0008 	str	r0, [fp, #-8]
     a34:	e50b100c 	str	r1, [fp, #-12]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2833004 	add	r3, r3, #4
     a40:	e1a00003 	mov	r0, r3
     a44:	ebffff7a 	bl	834 <initiateLock>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e283300c 	add	r3, r3, #12
     a50:	e1a00003 	mov	r0, r3
     a54:	ebffffab 	bl	908 <initiateCondVar>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e51b200c 	ldr	r2, [fp, #-12]
     a60:	e5832000 	str	r2, [r3]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e3a02001 	mov	r2, #1
     a6c:	e5832014 	str	r2, [r3, #20]
     a70:	e1a00000 	nop			@ (mov r0, r0)
     a74:	e24bd004 	sub	sp, fp, #4
     a78:	e8bd8800 	pop	{fp, pc}

00000a7c <semUp>:
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd008 	sub	sp, sp, #8
     a88:	e50b0008 	str	r0, [fp, #-8]
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e2833004 	add	r3, r3, #4
     a94:	e1a00003 	mov	r0, r3
     a98:	ebffff73 	bl	86c <acquireLock>
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e5933000 	ldr	r3, [r3]
     aa4:	e2832001 	add	r2, r3, #1
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e5832000 	str	r2, [r3]
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e283300c 	add	r3, r3, #12
     ab8:	e1a00003 	mov	r0, r3
     abc:	ebffffc8 	bl	9e4 <signal>
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e2833004 	add	r3, r3, #4
     ac8:	e1a00003 	mov	r0, r3
     acc:	ebffff7a 	bl	8bc <releaseLock>
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e24bd004 	sub	sp, fp, #4
     ad8:	e8bd8800 	pop	{fp, pc}

00000adc <semDown>:
     adc:	e92d4800 	push	{fp, lr}
     ae0:	e28db004 	add	fp, sp, #4
     ae4:	e24dd008 	sub	sp, sp, #8
     ae8:	e50b0008 	str	r0, [fp, #-8]
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2833004 	add	r3, r3, #4
     af4:	e1a00003 	mov	r0, r3
     af8:	ebffff5b 	bl	86c <acquireLock>
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e5933000 	ldr	r3, [r3]
     b04:	e2432001 	sub	r2, r3, #1
     b08:	e51b3008 	ldr	r3, [fp, #-8]
     b0c:	e5832000 	str	r2, [r3]
     b10:	ea000006 	b	b30 <semDown+0x54>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e283200c 	add	r2, r3, #12
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e2833004 	add	r3, r3, #4
     b24:	e1a01003 	mov	r1, r3
     b28:	e1a00002 	mov	r0, r2
     b2c:	ebffff83 	bl	940 <condWait>
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e3530000 	cmp	r3, #0
     b3c:	bafffff4 	blt	b14 <semDown+0x38>
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e2833004 	add	r3, r3, #4
     b48:	e1a00003 	mov	r0, r3
     b4c:	ebffff5a 	bl	8bc <releaseLock>
     b50:	e1a00000 	nop			@ (mov r0, r0)
     b54:	e24bd004 	sub	sp, fp, #4
     b58:	e8bd8800 	pop	{fp, pc}

00000b5c <fork>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00001 	mov	r0, #1
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <exit>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00002 	mov	r0, #2
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <wait>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00003 	mov	r0, #3
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <pipe>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00004 	mov	r0, #4
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <read>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00005 	mov	r0, #5
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <write>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00010 	mov	r0, #16
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <close>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00015 	mov	r0, #21
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <kill>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00006 	mov	r0, #6
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <exec>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00007 	mov	r0, #7
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <open>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0000f 	mov	r0, #15
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <mknod>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00011 	mov	r0, #17
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <unlink>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00012 	mov	r0, #18
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <fstat>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00008 	mov	r0, #8
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <link>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00013 	mov	r0, #19
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <mkdir>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00014 	mov	r0, #20
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <chdir>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00009 	mov	r0, #9
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <dup>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a0000a 	mov	r0, #10
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <getpid>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a0000b 	mov	r0, #11
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <sbrk>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0000c 	mov	r0, #12
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <sleep>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0000d 	mov	r0, #13
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <uptime>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0000e 	mov	r0, #14
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <proclist>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a00016 	mov	r0, #22
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <settickets>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00017 	mov	r0, #23
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <srand>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00018 	mov	r0, #24
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <getpinfo>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00019 	mov	r0, #25
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <print_pt>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a0001f 	mov	r0, #31
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <thread_create>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00020 	mov	r0, #32
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <thread_exit>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a00021 	mov	r0, #33	@ 0x21
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <thread_join>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a00022 	mov	r0, #34	@ 0x22
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <waitpid>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a00023 	mov	r0, #35	@ 0x23
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <barrier_init>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a00024 	mov	r0, #36	@ 0x24
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <barrier_check>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a00025 	mov	r0, #37	@ 0x25
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <sleepChan>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a00026 	mov	r0, #38	@ 0x26
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <getChannel>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00027 	mov	r0, #39	@ 0x27
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <sigChan>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00028 	mov	r0, #40	@ 0x28
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <sigOneChan>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a00029 	mov	r0, #41	@ 0x29
    1060:	ef000000 	svc	0x00000000
    1064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1068:	e12fff1e 	bx	lr

0000106c <syscall>:
    106c:	ef000000 	svc	0x00000000
    1070:	e12fff1e 	bx	lr

00001074 <putc>:
    1074:	e92d4800 	push	{fp, lr}
    1078:	e28db004 	add	fp, sp, #4
    107c:	e24dd008 	sub	sp, sp, #8
    1080:	e50b0008 	str	r0, [fp, #-8]
    1084:	e1a03001 	mov	r3, r1
    1088:	e54b3009 	strb	r3, [fp, #-9]
    108c:	e24b3009 	sub	r3, fp, #9
    1090:	e3a02001 	mov	r2, #1
    1094:	e1a01003 	mov	r1, r3
    1098:	e51b0008 	ldr	r0, [fp, #-8]
    109c:	ebfffedb 	bl	c10 <write>
    10a0:	e1a00000 	nop			@ (mov r0, r0)
    10a4:	e24bd004 	sub	sp, fp, #4
    10a8:	e8bd8800 	pop	{fp, pc}

000010ac <printint>:
    10ac:	e92d4800 	push	{fp, lr}
    10b0:	e28db004 	add	fp, sp, #4
    10b4:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10b8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10bc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10c0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10c4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10c8:	e3a03000 	mov	r3, #0
    10cc:	e50b300c 	str	r3, [fp, #-12]
    10d0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10d4:	e3530000 	cmp	r3, #0
    10d8:	0a000008 	beq	1100 <printint+0x54>
    10dc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10e0:	e3530000 	cmp	r3, #0
    10e4:	aa000005 	bge	1100 <printint+0x54>
    10e8:	e3a03001 	mov	r3, #1
    10ec:	e50b300c 	str	r3, [fp, #-12]
    10f0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10f4:	e2633000 	rsb	r3, r3, #0
    10f8:	e50b3010 	str	r3, [fp, #-16]
    10fc:	ea000001 	b	1108 <printint+0x5c>
    1100:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1104:	e50b3010 	str	r3, [fp, #-16]
    1108:	e3a03000 	mov	r3, #0
    110c:	e50b3008 	str	r3, [fp, #-8]
    1110:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1114:	e51b3010 	ldr	r3, [fp, #-16]
    1118:	e1a01002 	mov	r1, r2
    111c:	e1a00003 	mov	r0, r3
    1120:	eb0001d5 	bl	187c <__aeabi_uidivmod>
    1124:	e1a03001 	mov	r3, r1
    1128:	e1a01003 	mov	r1, r3
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e2832001 	add	r2, r3, #1
    1134:	e50b2008 	str	r2, [fp, #-8]
    1138:	e59f20a0 	ldr	r2, [pc, #160]	@ 11e0 <printint+0x134>
    113c:	e7d22001 	ldrb	r2, [r2, r1]
    1140:	e2433004 	sub	r3, r3, #4
    1144:	e083300b 	add	r3, r3, fp
    1148:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    114c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1150:	e1a01003 	mov	r1, r3
    1154:	e51b0010 	ldr	r0, [fp, #-16]
    1158:	eb00018a 	bl	1788 <__udivsi3>
    115c:	e1a03000 	mov	r3, r0
    1160:	e50b3010 	str	r3, [fp, #-16]
    1164:	e51b3010 	ldr	r3, [fp, #-16]
    1168:	e3530000 	cmp	r3, #0
    116c:	1affffe7 	bne	1110 <printint+0x64>
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e3530000 	cmp	r3, #0
    1178:	0a00000e 	beq	11b8 <printint+0x10c>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e2832001 	add	r2, r3, #1
    1184:	e50b2008 	str	r2, [fp, #-8]
    1188:	e2433004 	sub	r3, r3, #4
    118c:	e083300b 	add	r3, r3, fp
    1190:	e3a0202d 	mov	r2, #45	@ 0x2d
    1194:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1198:	ea000006 	b	11b8 <printint+0x10c>
    119c:	e24b2020 	sub	r2, fp, #32
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e0823003 	add	r3, r2, r3
    11a8:	e5d33000 	ldrb	r3, [r3]
    11ac:	e1a01003 	mov	r1, r3
    11b0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11b4:	ebffffae 	bl	1074 <putc>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e2433001 	sub	r3, r3, #1
    11c0:	e50b3008 	str	r3, [fp, #-8]
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e3530000 	cmp	r3, #0
    11cc:	aafffff2 	bge	119c <printint+0xf0>
    11d0:	e1a00000 	nop			@ (mov r0, r0)
    11d4:	e1a00000 	nop			@ (mov r0, r0)
    11d8:	e24bd004 	sub	sp, fp, #4
    11dc:	e8bd8800 	pop	{fp, pc}
    11e0:	000018c0 	.word	0x000018c0

000011e4 <printf>:
    11e4:	e92d000e 	push	{r1, r2, r3}
    11e8:	e92d4800 	push	{fp, lr}
    11ec:	e28db004 	add	fp, sp, #4
    11f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11f4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11f8:	e3a03000 	mov	r3, #0
    11fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1200:	e28b3008 	add	r3, fp, #8
    1204:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1208:	e3a03000 	mov	r3, #0
    120c:	e50b3010 	str	r3, [fp, #-16]
    1210:	ea000074 	b	13e8 <printf+0x204>
    1214:	e59b2004 	ldr	r2, [fp, #4]
    1218:	e51b3010 	ldr	r3, [fp, #-16]
    121c:	e0823003 	add	r3, r2, r3
    1220:	e5d33000 	ldrb	r3, [r3]
    1224:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1228:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    122c:	e3530000 	cmp	r3, #0
    1230:	1a00000b 	bne	1264 <printf+0x80>
    1234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1238:	e3530025 	cmp	r3, #37	@ 0x25
    123c:	1a000002 	bne	124c <printf+0x68>
    1240:	e3a03025 	mov	r3, #37	@ 0x25
    1244:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1248:	ea000063 	b	13dc <printf+0x1f8>
    124c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1250:	e6ef3073 	uxtb	r3, r3
    1254:	e1a01003 	mov	r1, r3
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff84 	bl	1074 <putc>
    1260:	ea00005d 	b	13dc <printf+0x1f8>
    1264:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1268:	e3530025 	cmp	r3, #37	@ 0x25
    126c:	1a00005a 	bne	13dc <printf+0x1f8>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e3530064 	cmp	r3, #100	@ 0x64
    1278:	1a00000a 	bne	12a8 <printf+0xc4>
    127c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1280:	e5933000 	ldr	r3, [r3]
    1284:	e1a01003 	mov	r1, r3
    1288:	e3a03001 	mov	r3, #1
    128c:	e3a0200a 	mov	r2, #10
    1290:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1294:	ebffff84 	bl	10ac <printint>
    1298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    129c:	e2833004 	add	r3, r3, #4
    12a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12a4:	ea00004a 	b	13d4 <printf+0x1f0>
    12a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12ac:	e3530078 	cmp	r3, #120	@ 0x78
    12b0:	0a000002 	beq	12c0 <printf+0xdc>
    12b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b8:	e3530070 	cmp	r3, #112	@ 0x70
    12bc:	1a00000a 	bne	12ec <printf+0x108>
    12c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e1a01003 	mov	r1, r3
    12cc:	e3a03000 	mov	r3, #0
    12d0:	e3a02010 	mov	r2, #16
    12d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12d8:	ebffff73 	bl	10ac <printint>
    12dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e0:	e2833004 	add	r3, r3, #4
    12e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12e8:	ea000039 	b	13d4 <printf+0x1f0>
    12ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e3530073 	cmp	r3, #115	@ 0x73
    12f4:	1a000018 	bne	135c <printf+0x178>
    12f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1308:	e2833004 	add	r3, r3, #4
    130c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e3530000 	cmp	r3, #0
    1318:	1a00000a 	bne	1348 <printf+0x164>
    131c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1418 <printf+0x234>
    1320:	e50b300c 	str	r3, [fp, #-12]
    1324:	ea000007 	b	1348 <printf+0x164>
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5d33000 	ldrb	r3, [r3]
    1330:	e1a01003 	mov	r1, r3
    1334:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1338:	ebffff4d 	bl	1074 <putc>
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e2833001 	add	r3, r3, #1
    1344:	e50b300c 	str	r3, [fp, #-12]
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e5d33000 	ldrb	r3, [r3]
    1350:	e3530000 	cmp	r3, #0
    1354:	1afffff3 	bne	1328 <printf+0x144>
    1358:	ea00001d 	b	13d4 <printf+0x1f0>
    135c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1360:	e3530063 	cmp	r3, #99	@ 0x63
    1364:	1a000009 	bne	1390 <printf+0x1ac>
    1368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e6ef3073 	uxtb	r3, r3
    1374:	e1a01003 	mov	r1, r3
    1378:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    137c:	ebffff3c 	bl	1074 <putc>
    1380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1384:	e2833004 	add	r3, r3, #4
    1388:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    138c:	ea000010 	b	13d4 <printf+0x1f0>
    1390:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1394:	e3530025 	cmp	r3, #37	@ 0x25
    1398:	1a000005 	bne	13b4 <printf+0x1d0>
    139c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13a0:	e6ef3073 	uxtb	r3, r3
    13a4:	e1a01003 	mov	r1, r3
    13a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13ac:	ebffff30 	bl	1074 <putc>
    13b0:	ea000007 	b	13d4 <printf+0x1f0>
    13b4:	e3a01025 	mov	r1, #37	@ 0x25
    13b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13bc:	ebffff2c 	bl	1074 <putc>
    13c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c4:	e6ef3073 	uxtb	r3, r3
    13c8:	e1a01003 	mov	r1, r3
    13cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13d0:	ebffff27 	bl	1074 <putc>
    13d4:	e3a03000 	mov	r3, #0
    13d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13dc:	e51b3010 	ldr	r3, [fp, #-16]
    13e0:	e2833001 	add	r3, r3, #1
    13e4:	e50b3010 	str	r3, [fp, #-16]
    13e8:	e59b2004 	ldr	r2, [fp, #4]
    13ec:	e51b3010 	ldr	r3, [fp, #-16]
    13f0:	e0823003 	add	r3, r2, r3
    13f4:	e5d33000 	ldrb	r3, [r3]
    13f8:	e3530000 	cmp	r3, #0
    13fc:	1affff84 	bne	1214 <printf+0x30>
    1400:	e1a00000 	nop			@ (mov r0, r0)
    1404:	e1a00000 	nop			@ (mov r0, r0)
    1408:	e24bd004 	sub	sp, fp, #4
    140c:	e8bd4800 	pop	{fp, lr}
    1410:	e28dd00c 	add	sp, sp, #12
    1414:	e12fff1e 	bx	lr
    1418:	000018b8 	.word	0x000018b8

0000141c <free>:
    141c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1420:	e28db000 	add	fp, sp, #0
    1424:	e24dd014 	sub	sp, sp, #20
    1428:	e50b0010 	str	r0, [fp, #-16]
    142c:	e51b3010 	ldr	r3, [fp, #-16]
    1430:	e2433008 	sub	r3, r3, #8
    1434:	e50b300c 	str	r3, [fp, #-12]
    1438:	e59f3154 	ldr	r3, [pc, #340]	@ 1594 <free+0x178>
    143c:	e5933000 	ldr	r3, [r3]
    1440:	e50b3008 	str	r3, [fp, #-8]
    1444:	ea000010 	b	148c <free+0x70>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5933000 	ldr	r3, [r3]
    1450:	e51b2008 	ldr	r2, [fp, #-8]
    1454:	e1520003 	cmp	r2, r3
    1458:	3a000008 	bcc	1480 <free+0x64>
    145c:	e51b200c 	ldr	r2, [fp, #-12]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e1520003 	cmp	r2, r3
    1468:	8a000010 	bhi	14b0 <free+0x94>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e51b200c 	ldr	r2, [fp, #-12]
    1478:	e1520003 	cmp	r2, r3
    147c:	3a00000b 	bcc	14b0 <free+0x94>
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e50b3008 	str	r3, [fp, #-8]
    148c:	e51b200c 	ldr	r2, [fp, #-12]
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e1520003 	cmp	r2, r3
    1498:	9affffea 	bls	1448 <free+0x2c>
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e5933000 	ldr	r3, [r3]
    14a4:	e51b200c 	ldr	r2, [fp, #-12]
    14a8:	e1520003 	cmp	r2, r3
    14ac:	2affffe5 	bcs	1448 <free+0x2c>
    14b0:	e51b300c 	ldr	r3, [fp, #-12]
    14b4:	e5933004 	ldr	r3, [r3, #4]
    14b8:	e1a03183 	lsl	r3, r3, #3
    14bc:	e51b200c 	ldr	r2, [fp, #-12]
    14c0:	e0822003 	add	r2, r2, r3
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e1520003 	cmp	r2, r3
    14d0:	1a00000d 	bne	150c <free+0xf0>
    14d4:	e51b300c 	ldr	r3, [fp, #-12]
    14d8:	e5932004 	ldr	r2, [r3, #4]
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5933000 	ldr	r3, [r3]
    14e4:	e5933004 	ldr	r3, [r3, #4]
    14e8:	e0822003 	add	r2, r2, r3
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e5832004 	str	r2, [r3, #4]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e5933000 	ldr	r3, [r3]
    14fc:	e5932000 	ldr	r2, [r3]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5832000 	str	r2, [r3]
    1508:	ea000003 	b	151c <free+0x100>
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5932000 	ldr	r2, [r3]
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e5832000 	str	r2, [r3]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5933004 	ldr	r3, [r3, #4]
    1524:	e1a03183 	lsl	r3, r3, #3
    1528:	e51b2008 	ldr	r2, [fp, #-8]
    152c:	e0823003 	add	r3, r2, r3
    1530:	e51b200c 	ldr	r2, [fp, #-12]
    1534:	e1520003 	cmp	r2, r3
    1538:	1a00000b 	bne	156c <free+0x150>
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e5932004 	ldr	r2, [r3, #4]
    1544:	e51b300c 	ldr	r3, [fp, #-12]
    1548:	e5933004 	ldr	r3, [r3, #4]
    154c:	e0822003 	add	r2, r2, r3
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e5832004 	str	r2, [r3, #4]
    1558:	e51b300c 	ldr	r3, [fp, #-12]
    155c:	e5932000 	ldr	r2, [r3]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5832000 	str	r2, [r3]
    1568:	ea000002 	b	1578 <free+0x15c>
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e51b200c 	ldr	r2, [fp, #-12]
    1574:	e5832000 	str	r2, [r3]
    1578:	e59f2014 	ldr	r2, [pc, #20]	@ 1594 <free+0x178>
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5823000 	str	r3, [r2]
    1584:	e1a00000 	nop			@ (mov r0, r0)
    1588:	e28bd000 	add	sp, fp, #0
    158c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1590:	e12fff1e 	bx	lr
    1594:	000018e4 	.word	0x000018e4

00001598 <morecore>:
    1598:	e92d4800 	push	{fp, lr}
    159c:	e28db004 	add	fp, sp, #4
    15a0:	e24dd010 	sub	sp, sp, #16
    15a4:	e50b0010 	str	r0, [fp, #-16]
    15a8:	e51b3010 	ldr	r3, [fp, #-16]
    15ac:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15b0:	2a000001 	bcs	15bc <morecore+0x24>
    15b4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15b8:	e50b3010 	str	r3, [fp, #-16]
    15bc:	e51b3010 	ldr	r3, [fp, #-16]
    15c0:	e1a03183 	lsl	r3, r3, #3
    15c4:	e1a00003 	mov	r0, r3
    15c8:	ebfffe05 	bl	de4 <sbrk>
    15cc:	e50b0008 	str	r0, [fp, #-8]
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e3730001 	cmn	r3, #1
    15d8:	1a000001 	bne	15e4 <morecore+0x4c>
    15dc:	e3a03000 	mov	r3, #0
    15e0:	ea00000a 	b	1610 <morecore+0x78>
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e50b300c 	str	r3, [fp, #-12]
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e51b2010 	ldr	r2, [fp, #-16]
    15f4:	e5832004 	str	r2, [r3, #4]
    15f8:	e51b300c 	ldr	r3, [fp, #-12]
    15fc:	e2833008 	add	r3, r3, #8
    1600:	e1a00003 	mov	r0, r3
    1604:	ebffff84 	bl	141c <free>
    1608:	e59f300c 	ldr	r3, [pc, #12]	@ 161c <morecore+0x84>
    160c:	e5933000 	ldr	r3, [r3]
    1610:	e1a00003 	mov	r0, r3
    1614:	e24bd004 	sub	sp, fp, #4
    1618:	e8bd8800 	pop	{fp, pc}
    161c:	000018e4 	.word	0x000018e4

00001620 <malloc>:
    1620:	e92d4800 	push	{fp, lr}
    1624:	e28db004 	add	fp, sp, #4
    1628:	e24dd018 	sub	sp, sp, #24
    162c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1630:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1634:	e2833007 	add	r3, r3, #7
    1638:	e1a031a3 	lsr	r3, r3, #3
    163c:	e2833001 	add	r3, r3, #1
    1640:	e50b3010 	str	r3, [fp, #-16]
    1644:	e59f3134 	ldr	r3, [pc, #308]	@ 1780 <malloc+0x160>
    1648:	e5933000 	ldr	r3, [r3]
    164c:	e50b300c 	str	r3, [fp, #-12]
    1650:	e51b300c 	ldr	r3, [fp, #-12]
    1654:	e3530000 	cmp	r3, #0
    1658:	1a00000b 	bne	168c <malloc+0x6c>
    165c:	e59f3120 	ldr	r3, [pc, #288]	@ 1784 <malloc+0x164>
    1660:	e50b300c 	str	r3, [fp, #-12]
    1664:	e59f2114 	ldr	r2, [pc, #276]	@ 1780 <malloc+0x160>
    1668:	e51b300c 	ldr	r3, [fp, #-12]
    166c:	e5823000 	str	r3, [r2]
    1670:	e59f3108 	ldr	r3, [pc, #264]	@ 1780 <malloc+0x160>
    1674:	e5933000 	ldr	r3, [r3]
    1678:	e59f2104 	ldr	r2, [pc, #260]	@ 1784 <malloc+0x164>
    167c:	e5823000 	str	r3, [r2]
    1680:	e59f30fc 	ldr	r3, [pc, #252]	@ 1784 <malloc+0x164>
    1684:	e3a02000 	mov	r2, #0
    1688:	e5832004 	str	r2, [r3, #4]
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e5933000 	ldr	r3, [r3]
    1694:	e50b3008 	str	r3, [fp, #-8]
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e5933004 	ldr	r3, [r3, #4]
    16a0:	e51b2010 	ldr	r2, [fp, #-16]
    16a4:	e1520003 	cmp	r2, r3
    16a8:	8a00001e 	bhi	1728 <malloc+0x108>
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e5933004 	ldr	r3, [r3, #4]
    16b4:	e51b2010 	ldr	r2, [fp, #-16]
    16b8:	e1520003 	cmp	r2, r3
    16bc:	1a000004 	bne	16d4 <malloc+0xb4>
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e5932000 	ldr	r2, [r3]
    16c8:	e51b300c 	ldr	r3, [fp, #-12]
    16cc:	e5832000 	str	r2, [r3]
    16d0:	ea00000e 	b	1710 <malloc+0xf0>
    16d4:	e51b3008 	ldr	r3, [fp, #-8]
    16d8:	e5932004 	ldr	r2, [r3, #4]
    16dc:	e51b3010 	ldr	r3, [fp, #-16]
    16e0:	e0422003 	sub	r2, r2, r3
    16e4:	e51b3008 	ldr	r3, [fp, #-8]
    16e8:	e5832004 	str	r2, [r3, #4]
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e5933004 	ldr	r3, [r3, #4]
    16f4:	e1a03183 	lsl	r3, r3, #3
    16f8:	e51b2008 	ldr	r2, [fp, #-8]
    16fc:	e0823003 	add	r3, r2, r3
    1700:	e50b3008 	str	r3, [fp, #-8]
    1704:	e51b3008 	ldr	r3, [fp, #-8]
    1708:	e51b2010 	ldr	r2, [fp, #-16]
    170c:	e5832004 	str	r2, [r3, #4]
    1710:	e59f2068 	ldr	r2, [pc, #104]	@ 1780 <malloc+0x160>
    1714:	e51b300c 	ldr	r3, [fp, #-12]
    1718:	e5823000 	str	r3, [r2]
    171c:	e51b3008 	ldr	r3, [fp, #-8]
    1720:	e2833008 	add	r3, r3, #8
    1724:	ea000012 	b	1774 <malloc+0x154>
    1728:	e59f3050 	ldr	r3, [pc, #80]	@ 1780 <malloc+0x160>
    172c:	e5933000 	ldr	r3, [r3]
    1730:	e51b2008 	ldr	r2, [fp, #-8]
    1734:	e1520003 	cmp	r2, r3
    1738:	1a000007 	bne	175c <malloc+0x13c>
    173c:	e51b0010 	ldr	r0, [fp, #-16]
    1740:	ebffff94 	bl	1598 <morecore>
    1744:	e50b0008 	str	r0, [fp, #-8]
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e3530000 	cmp	r3, #0
    1750:	1a000001 	bne	175c <malloc+0x13c>
    1754:	e3a03000 	mov	r3, #0
    1758:	ea000005 	b	1774 <malloc+0x154>
    175c:	e51b3008 	ldr	r3, [fp, #-8]
    1760:	e50b300c 	str	r3, [fp, #-12]
    1764:	e51b3008 	ldr	r3, [fp, #-8]
    1768:	e5933000 	ldr	r3, [r3]
    176c:	e50b3008 	str	r3, [fp, #-8]
    1770:	eaffffc8 	b	1698 <malloc+0x78>
    1774:	e1a00003 	mov	r0, r3
    1778:	e24bd004 	sub	sp, fp, #4
    177c:	e8bd8800 	pop	{fp, pc}
    1780:	000018e4 	.word	0x000018e4
    1784:	000018dc 	.word	0x000018dc

00001788 <__udivsi3>:
    1788:	e2512001 	subs	r2, r1, #1
    178c:	012fff1e 	bxeq	lr
    1790:	3a000036 	bcc	1870 <__udivsi3+0xe8>
    1794:	e1500001 	cmp	r0, r1
    1798:	9a000022 	bls	1828 <__udivsi3+0xa0>
    179c:	e1110002 	tst	r1, r2
    17a0:	0a000023 	beq	1834 <__udivsi3+0xac>
    17a4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17a8:	01a01181 	lsleq	r1, r1, #3
    17ac:	03a03008 	moveq	r3, #8
    17b0:	13a03001 	movne	r3, #1
    17b4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17b8:	31510000 	cmpcc	r1, r0
    17bc:	31a01201 	lslcc	r1, r1, #4
    17c0:	31a03203 	lslcc	r3, r3, #4
    17c4:	3afffffa 	bcc	17b4 <__udivsi3+0x2c>
    17c8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17cc:	31510000 	cmpcc	r1, r0
    17d0:	31a01081 	lslcc	r1, r1, #1
    17d4:	31a03083 	lslcc	r3, r3, #1
    17d8:	3afffffa 	bcc	17c8 <__udivsi3+0x40>
    17dc:	e3a02000 	mov	r2, #0
    17e0:	e1500001 	cmp	r0, r1
    17e4:	20400001 	subcs	r0, r0, r1
    17e8:	21822003 	orrcs	r2, r2, r3
    17ec:	e15000a1 	cmp	r0, r1, lsr #1
    17f0:	204000a1 	subcs	r0, r0, r1, lsr #1
    17f4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17f8:	e1500121 	cmp	r0, r1, lsr #2
    17fc:	20400121 	subcs	r0, r0, r1, lsr #2
    1800:	21822123 	orrcs	r2, r2, r3, lsr #2
    1804:	e15001a1 	cmp	r0, r1, lsr #3
    1808:	204001a1 	subcs	r0, r0, r1, lsr #3
    180c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1810:	e3500000 	cmp	r0, #0
    1814:	11b03223 	lsrsne	r3, r3, #4
    1818:	11a01221 	lsrne	r1, r1, #4
    181c:	1affffef 	bne	17e0 <__udivsi3+0x58>
    1820:	e1a00002 	mov	r0, r2
    1824:	e12fff1e 	bx	lr
    1828:	03a00001 	moveq	r0, #1
    182c:	13a00000 	movne	r0, #0
    1830:	e12fff1e 	bx	lr
    1834:	e3510801 	cmp	r1, #65536	@ 0x10000
    1838:	21a01821 	lsrcs	r1, r1, #16
    183c:	23a02010 	movcs	r2, #16
    1840:	33a02000 	movcc	r2, #0
    1844:	e3510c01 	cmp	r1, #256	@ 0x100
    1848:	21a01421 	lsrcs	r1, r1, #8
    184c:	22822008 	addcs	r2, r2, #8
    1850:	e3510010 	cmp	r1, #16
    1854:	21a01221 	lsrcs	r1, r1, #4
    1858:	22822004 	addcs	r2, r2, #4
    185c:	e3510004 	cmp	r1, #4
    1860:	82822003 	addhi	r2, r2, #3
    1864:	908220a1 	addls	r2, r2, r1, lsr #1
    1868:	e1a00230 	lsr	r0, r0, r2
    186c:	e12fff1e 	bx	lr
    1870:	e3500000 	cmp	r0, #0
    1874:	13e00000 	mvnne	r0, #0
    1878:	ea000007 	b	189c <__aeabi_idiv0>

0000187c <__aeabi_uidivmod>:
    187c:	e3510000 	cmp	r1, #0
    1880:	0afffffa 	beq	1870 <__udivsi3+0xe8>
    1884:	e92d4003 	push	{r0, r1, lr}
    1888:	ebffffbe 	bl	1788 <__udivsi3>
    188c:	e8bd4006 	pop	{r1, r2, lr}
    1890:	e0030092 	mul	r3, r2, r0
    1894:	e0411003 	sub	r1, r1, r3
    1898:	e12fff1e 	bx	lr

0000189c <__aeabi_idiv0>:
    189c:	e12fff1e 	bx	lr
