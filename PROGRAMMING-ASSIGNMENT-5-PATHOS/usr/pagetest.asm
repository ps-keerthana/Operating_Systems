
_pagetest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f10a4 	ldr	r1, [pc, #164]	@ b8 <main+0xb8>
      10:	e3a00001 	mov	r0, #1
      14:	eb000472 	bl	11e4 <printf>
      18:	e3a00a01 	mov	r0, #4096	@ 0x1000
      1c:	eb000367 	bl	dc0 <sbrk>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e3730001 	cmn	r3, #1
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1084 	ldr	r1, [pc, #132]	@ bc <main+0xbc>
      34:	e3a00001 	mov	r0, #1
      38:	eb000469 	bl	11e4 <printf>
      3c:	eb0002c6 	bl	b5c <exit>
      40:	e51b2008 	ldr	r2, [fp, #-8]
      44:	e59f1074 	ldr	r1, [pc, #116]	@ c0 <main+0xc0>
      48:	e3a00001 	mov	r0, #1
      4c:	eb000464 	bl	11e4 <printf>
      50:	e59f106c 	ldr	r1, [pc, #108]	@ c4 <main+0xc4>
      54:	e3a00001 	mov	r0, #1
      58:	eb000461 	bl	11e4 <printf>
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e3a02048 	mov	r2, #72	@ 0x48
      64:	e5c32000 	strb	r2, [r3]
      68:	e51b3008 	ldr	r3, [fp, #-8]
      6c:	e2833b01 	add	r3, r3, #1024	@ 0x400
      70:	e3a02069 	mov	r2, #105	@ 0x69
      74:	e5c32000 	strb	r2, [r3]
      78:	e59f1048 	ldr	r1, [pc, #72]	@ c8 <main+0xc8>
      7c:	e3a00001 	mov	r0, #1
      80:	eb000457 	bl	11e4 <printf>
      84:	e51b3008 	ldr	r3, [fp, #-8]
      88:	e5d33000 	ldrb	r3, [r3]
      8c:	e1a02003 	mov	r2, r3
      90:	e51b3008 	ldr	r3, [fp, #-8]
      94:	e2833b01 	add	r3, r3, #1024	@ 0x400
      98:	e5d33000 	ldrb	r3, [r3]
      9c:	e59f1028 	ldr	r1, [pc, #40]	@ cc <main+0xcc>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb00044e 	bl	11e4 <printf>
      a8:	e59f1020 	ldr	r1, [pc, #32]	@ d0 <main+0xd0>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00044b 	bl	11e4 <printf>
      b4:	eb0002a8 	bl	b5c <exit>
      b8:	000018a0 	.word	0x000018a0
      bc:	000018c4 	.word	0x000018c4
      c0:	000018e8 	.word	0x000018e8
      c4:	00001918 	.word	0x00001918
      c8:	00001960 	.word	0x00001960
      cc:	0000198c 	.word	0x0000198c
      d0:	000019c0 	.word	0x000019c0

000000d4 <pg_pte>:
      d4:	e92d4800 	push	{fp, lr}
      d8:	e28db004 	add	fp, sp, #4
      dc:	e24dd008 	sub	sp, sp, #8
      e0:	e50b0008 	str	r0, [fp, #-8]
      e4:	e51b1008 	ldr	r1, [fp, #-8]
      e8:	e3a0001a 	mov	r0, #26
      ec:	eb0003de 	bl	106c <syscall>
      f0:	e1a03000 	mov	r3, r0
      f4:	e1a00003 	mov	r0, r3
      f8:	e24bd004 	sub	sp, fp, #4
      fc:	e8bd8800 	pop	{fp, pc}

00000100 <pg_pa>:
     100:	e92d4800 	push	{fp, lr}
     104:	e28db004 	add	fp, sp, #4
     108:	e24dd008 	sub	sp, sp, #8
     10c:	e50b0008 	str	r0, [fp, #-8]
     110:	e51b1008 	ldr	r1, [fp, #-8]
     114:	e3a0001b 	mov	r0, #27
     118:	eb0003d3 	bl	106c <syscall>
     11c:	e1a03000 	mov	r3, r0
     120:	e1a00003 	mov	r0, r3
     124:	e24bd004 	sub	sp, fp, #4
     128:	e8bd8800 	pop	{fp, pc}

0000012c <pg_flags>:
     12c:	e92d4800 	push	{fp, lr}
     130:	e28db004 	add	fp, sp, #4
     134:	e24dd008 	sub	sp, sp, #8
     138:	e50b0008 	str	r0, [fp, #-8]
     13c:	e51b1008 	ldr	r1, [fp, #-8]
     140:	e3a0001c 	mov	r0, #28
     144:	eb0003c8 	bl	106c <syscall>
     148:	e1a03000 	mov	r3, r0
     14c:	e1a00003 	mov	r0, r3
     150:	e24bd004 	sub	sp, fp, #4
     154:	e8bd8800 	pop	{fp, pc}

00000158 <kpt>:
     158:	e92d4800 	push	{fp, lr}
     15c:	e28db004 	add	fp, sp, #4
     160:	e3a0001d 	mov	r0, #29
     164:	eb0003c0 	bl	106c <syscall>
     168:	e1a03000 	mov	r3, r0
     16c:	e1a00003 	mov	r0, r3
     170:	e8bd8800 	pop	{fp, pc}

00000174 <ugetpid>:
     174:	e92d4800 	push	{fp, lr}
     178:	e28db004 	add	fp, sp, #4
     17c:	e3a0001e 	mov	r0, #30
     180:	eb0003b9 	bl	106c <syscall>
     184:	e1a03000 	mov	r3, r0
     188:	e1a00003 	mov	r0, r3
     18c:	e8bd8800 	pop	{fp, pc}

00000190 <strcpy>:
     190:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     194:	e28db000 	add	fp, sp, #0
     198:	e24dd014 	sub	sp, sp, #20
     19c:	e50b0010 	str	r0, [fp, #-16]
     1a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1a4:	e51b3010 	ldr	r3, [fp, #-16]
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	e1a00000 	nop			@ (mov r0, r0)
     1b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1b4:	e2823001 	add	r3, r2, #1
     1b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1bc:	e51b3010 	ldr	r3, [fp, #-16]
     1c0:	e2831001 	add	r1, r3, #1
     1c4:	e50b1010 	str	r1, [fp, #-16]
     1c8:	e5d22000 	ldrb	r2, [r2]
     1cc:	e5c32000 	strb	r2, [r3]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e3530000 	cmp	r3, #0
     1d8:	1afffff4 	bne	1b0 <strcpy+0x20>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e1a00003 	mov	r0, r3
     1e4:	e28bd000 	add	sp, fp, #0
     1e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1ec:	e12fff1e 	bx	lr

000001f0 <strcmp>:
     1f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f4:	e28db000 	add	fp, sp, #0
     1f8:	e24dd00c 	sub	sp, sp, #12
     1fc:	e50b0008 	str	r0, [fp, #-8]
     200:	e50b100c 	str	r1, [fp, #-12]
     204:	ea000005 	b	220 <strcmp+0x30>
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e2833001 	add	r3, r3, #1
     210:	e50b3008 	str	r3, [fp, #-8]
     214:	e51b300c 	ldr	r3, [fp, #-12]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b300c 	str	r3, [fp, #-12]
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e5d33000 	ldrb	r3, [r3]
     228:	e3530000 	cmp	r3, #0
     22c:	0a000005 	beq	248 <strcmp+0x58>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e5d32000 	ldrb	r2, [r3]
     238:	e51b300c 	ldr	r3, [fp, #-12]
     23c:	e5d33000 	ldrb	r3, [r3]
     240:	e1520003 	cmp	r2, r3
     244:	0affffef 	beq	208 <strcmp+0x18>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e1a02003 	mov	r2, r3
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e5d33000 	ldrb	r3, [r3]
     25c:	e0423003 	sub	r3, r2, r3
     260:	e1a00003 	mov	r0, r3
     264:	e28bd000 	add	sp, fp, #0
     268:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     26c:	e12fff1e 	bx	lr

00000270 <strlen>:
     270:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     274:	e28db000 	add	fp, sp, #0
     278:	e24dd014 	sub	sp, sp, #20
     27c:	e50b0010 	str	r0, [fp, #-16]
     280:	e3a03000 	mov	r3, #0
     284:	e50b3008 	str	r3, [fp, #-8]
     288:	ea000002 	b	298 <strlen+0x28>
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e2833001 	add	r3, r3, #1
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e51b2010 	ldr	r2, [fp, #-16]
     2a0:	e0823003 	add	r3, r2, r3
     2a4:	e5d33000 	ldrb	r3, [r3]
     2a8:	e3530000 	cmp	r3, #0
     2ac:	1afffff6 	bne	28c <strlen+0x1c>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e1a00003 	mov	r0, r3
     2b8:	e28bd000 	add	sp, fp, #0
     2bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2c0:	e12fff1e 	bx	lr

000002c4 <memset>:
     2c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c8:	e28db000 	add	fp, sp, #0
     2cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2e0:	e50b3008 	str	r3, [fp, #-8]
     2e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2e8:	e54b300d 	strb	r3, [fp, #-13]
     2ec:	e55b200d 	ldrb	r2, [fp, #-13]
     2f0:	e1a03002 	mov	r3, r2
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e0833002 	add	r3, r3, r2
     2fc:	e1a03803 	lsl	r3, r3, #16
     300:	e1a02003 	mov	r2, r3
     304:	e55b300d 	ldrb	r3, [fp, #-13]
     308:	e1a03403 	lsl	r3, r3, #8
     30c:	e1822003 	orr	r2, r2, r3
     310:	e55b300d 	ldrb	r3, [fp, #-13]
     314:	e1823003 	orr	r3, r2, r3
     318:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     31c:	ea000008 	b	344 <memset+0x80>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e55b200d 	ldrb	r2, [fp, #-13]
     328:	e5c32000 	strb	r2, [r3]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     330:	e2433001 	sub	r3, r3, #1
     334:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e2833001 	add	r3, r3, #1
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     348:	e3530000 	cmp	r3, #0
     34c:	0a000003 	beq	360 <memset+0x9c>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e2033003 	and	r3, r3, #3
     358:	e3530000 	cmp	r3, #0
     35c:	1affffef 	bne	320 <memset+0x5c>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e50b300c 	str	r3, [fp, #-12]
     368:	ea000008 	b	390 <memset+0xcc>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     374:	e5832000 	str	r2, [r3]
     378:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     37c:	e2433004 	sub	r3, r3, #4
     380:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e2833004 	add	r3, r3, #4
     38c:	e50b300c 	str	r3, [fp, #-12]
     390:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     394:	e3530003 	cmp	r3, #3
     398:	8afffff3 	bhi	36c <memset+0xa8>
     39c:	e51b300c 	ldr	r3, [fp, #-12]
     3a0:	e50b3008 	str	r3, [fp, #-8]
     3a4:	ea000008 	b	3cc <memset+0x108>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e55b200d 	ldrb	r2, [fp, #-13]
     3b0:	e5c32000 	strb	r2, [r3]
     3b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e2433001 	sub	r3, r3, #1
     3bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d0:	e3530000 	cmp	r3, #0
     3d4:	1afffff3 	bne	3a8 <memset+0xe4>
     3d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3dc:	e1a00003 	mov	r0, r3
     3e0:	e28bd000 	add	sp, fp, #0
     3e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3e8:	e12fff1e 	bx	lr

000003ec <strchr>:
     3ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3f0:	e28db000 	add	fp, sp, #0
     3f4:	e24dd00c 	sub	sp, sp, #12
     3f8:	e50b0008 	str	r0, [fp, #-8]
     3fc:	e1a03001 	mov	r3, r1
     400:	e54b3009 	strb	r3, [fp, #-9]
     404:	ea000009 	b	430 <strchr+0x44>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e5d33000 	ldrb	r3, [r3]
     410:	e55b2009 	ldrb	r2, [fp, #-9]
     414:	e1520003 	cmp	r2, r3
     418:	1a000001 	bne	424 <strchr+0x38>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	ea000007 	b	444 <strchr+0x58>
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e2833001 	add	r3, r3, #1
     42c:	e50b3008 	str	r3, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e5d33000 	ldrb	r3, [r3]
     438:	e3530000 	cmp	r3, #0
     43c:	1afffff1 	bne	408 <strchr+0x1c>
     440:	e3a03000 	mov	r3, #0
     444:	e1a00003 	mov	r0, r3
     448:	e28bd000 	add	sp, fp, #0
     44c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     450:	e12fff1e 	bx	lr

00000454 <gets>:
     454:	e92d4800 	push	{fp, lr}
     458:	e28db004 	add	fp, sp, #4
     45c:	e24dd018 	sub	sp, sp, #24
     460:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     464:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     468:	e3a03000 	mov	r3, #0
     46c:	e50b3008 	str	r3, [fp, #-8]
     470:	ea000016 	b	4d0 <gets+0x7c>
     474:	e24b300d 	sub	r3, fp, #13
     478:	e3a02001 	mov	r2, #1
     47c:	e1a01003 	mov	r1, r3
     480:	e3a00000 	mov	r0, #0
     484:	eb0001cf 	bl	bc8 <read>
     488:	e50b000c 	str	r0, [fp, #-12]
     48c:	e51b300c 	ldr	r3, [fp, #-12]
     490:	e3530000 	cmp	r3, #0
     494:	da000013 	ble	4e8 <gets+0x94>
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e2832001 	add	r2, r3, #1
     4a0:	e50b2008 	str	r2, [fp, #-8]
     4a4:	e1a02003 	mov	r2, r3
     4a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ac:	e0833002 	add	r3, r3, r2
     4b0:	e55b200d 	ldrb	r2, [fp, #-13]
     4b4:	e5c32000 	strb	r2, [r3]
     4b8:	e55b300d 	ldrb	r3, [fp, #-13]
     4bc:	e353000a 	cmp	r3, #10
     4c0:	0a000009 	beq	4ec <gets+0x98>
     4c4:	e55b300d 	ldrb	r3, [fp, #-13]
     4c8:	e353000d 	cmp	r3, #13
     4cc:	0a000006 	beq	4ec <gets+0x98>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e2833001 	add	r3, r3, #1
     4d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4dc:	e1520003 	cmp	r2, r3
     4e0:	caffffe3 	bgt	474 <gets+0x20>
     4e4:	ea000000 	b	4ec <gets+0x98>
     4e8:	e1a00000 	nop			@ (mov r0, r0)
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4f4:	e0823003 	add	r3, r2, r3
     4f8:	e3a02000 	mov	r2, #0
     4fc:	e5c32000 	strb	r2, [r3]
     500:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     504:	e1a00003 	mov	r0, r3
     508:	e24bd004 	sub	sp, fp, #4
     50c:	e8bd8800 	pop	{fp, pc}

00000510 <stat>:
     510:	e92d4800 	push	{fp, lr}
     514:	e28db004 	add	fp, sp, #4
     518:	e24dd010 	sub	sp, sp, #16
     51c:	e50b0010 	str	r0, [fp, #-16]
     520:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     524:	e3a01000 	mov	r1, #0
     528:	e51b0010 	ldr	r0, [fp, #-16]
     52c:	eb0001d2 	bl	c7c <open>
     530:	e50b0008 	str	r0, [fp, #-8]
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e3530000 	cmp	r3, #0
     53c:	aa000001 	bge	548 <stat+0x38>
     540:	e3e03000 	mvn	r3, #0
     544:	ea000006 	b	564 <stat+0x54>
     548:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     54c:	e51b0008 	ldr	r0, [fp, #-8]
     550:	eb0001e4 	bl	ce8 <fstat>
     554:	e50b000c 	str	r0, [fp, #-12]
     558:	e51b0008 	ldr	r0, [fp, #-8]
     55c:	eb0001ab 	bl	c10 <close>
     560:	e51b300c 	ldr	r3, [fp, #-12]
     564:	e1a00003 	mov	r0, r3
     568:	e24bd004 	sub	sp, fp, #4
     56c:	e8bd8800 	pop	{fp, pc}

00000570 <atoi>:
     570:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     574:	e28db000 	add	fp, sp, #0
     578:	e24dd014 	sub	sp, sp, #20
     57c:	e50b0010 	str	r0, [fp, #-16]
     580:	e3a03000 	mov	r3, #0
     584:	e50b3008 	str	r3, [fp, #-8]
     588:	ea00000c 	b	5c0 <atoi+0x50>
     58c:	e51b2008 	ldr	r2, [fp, #-8]
     590:	e1a03002 	mov	r3, r2
     594:	e1a03103 	lsl	r3, r3, #2
     598:	e0833002 	add	r3, r3, r2
     59c:	e1a03083 	lsl	r3, r3, #1
     5a0:	e1a01003 	mov	r1, r3
     5a4:	e51b3010 	ldr	r3, [fp, #-16]
     5a8:	e2832001 	add	r2, r3, #1
     5ac:	e50b2010 	str	r2, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e0813003 	add	r3, r1, r3
     5b8:	e2433030 	sub	r3, r3, #48	@ 0x30
     5bc:	e50b3008 	str	r3, [fp, #-8]
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e5d33000 	ldrb	r3, [r3]
     5c8:	e353002f 	cmp	r3, #47	@ 0x2f
     5cc:	9a000003 	bls	5e0 <atoi+0x70>
     5d0:	e51b3010 	ldr	r3, [fp, #-16]
     5d4:	e5d33000 	ldrb	r3, [r3]
     5d8:	e3530039 	cmp	r3, #57	@ 0x39
     5dc:	9affffea 	bls	58c <atoi+0x1c>
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e1a00003 	mov	r0, r3
     5e8:	e28bd000 	add	sp, fp, #0
     5ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <memmove>:
     5f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f8:	e28db000 	add	fp, sp, #0
     5fc:	e24dd01c 	sub	sp, sp, #28
     600:	e50b0010 	str	r0, [fp, #-16]
     604:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     608:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     60c:	e51b3010 	ldr	r3, [fp, #-16]
     610:	e50b3008 	str	r3, [fp, #-8]
     614:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     618:	e50b300c 	str	r3, [fp, #-12]
     61c:	ea000007 	b	640 <memmove+0x4c>
     620:	e51b200c 	ldr	r2, [fp, #-12]
     624:	e2823001 	add	r3, r2, #1
     628:	e50b300c 	str	r3, [fp, #-12]
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e2831001 	add	r1, r3, #1
     634:	e50b1008 	str	r1, [fp, #-8]
     638:	e5d22000 	ldrb	r2, [r2]
     63c:	e5c32000 	strb	r2, [r3]
     640:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     644:	e2432001 	sub	r2, r3, #1
     648:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     64c:	e3530000 	cmp	r3, #0
     650:	cafffff2 	bgt	620 <memmove+0x2c>
     654:	e51b3010 	ldr	r3, [fp, #-16]
     658:	e1a00003 	mov	r0, r3
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <strncmp>:
     668:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     66c:	e28db000 	add	fp, sp, #0
     670:	e24dd014 	sub	sp, sp, #20
     674:	e50b0008 	str	r0, [fp, #-8]
     678:	e50b100c 	str	r1, [fp, #-12]
     67c:	e50b2010 	str	r2, [fp, #-16]
     680:	ea000008 	b	6a8 <strncmp+0x40>
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e2833001 	add	r3, r3, #1
     68c:	e50b3008 	str	r3, [fp, #-8]
     690:	e51b300c 	ldr	r3, [fp, #-12]
     694:	e2833001 	add	r3, r3, #1
     698:	e50b300c 	str	r3, [fp, #-12]
     69c:	e51b3010 	ldr	r3, [fp, #-16]
     6a0:	e2433001 	sub	r3, r3, #1
     6a4:	e50b3010 	str	r3, [fp, #-16]
     6a8:	e51b3010 	ldr	r3, [fp, #-16]
     6ac:	e3530000 	cmp	r3, #0
     6b0:	da00000d 	ble	6ec <strncmp+0x84>
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e5d33000 	ldrb	r3, [r3]
     6bc:	e3530000 	cmp	r3, #0
     6c0:	0a000009 	beq	6ec <strncmp+0x84>
     6c4:	e51b300c 	ldr	r3, [fp, #-12]
     6c8:	e5d33000 	ldrb	r3, [r3]
     6cc:	e3530000 	cmp	r3, #0
     6d0:	0a000005 	beq	6ec <strncmp+0x84>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d32000 	ldrb	r2, [r3]
     6dc:	e51b300c 	ldr	r3, [fp, #-12]
     6e0:	e5d33000 	ldrb	r3, [r3]
     6e4:	e1520003 	cmp	r2, r3
     6e8:	0affffe5 	beq	684 <strncmp+0x1c>
     6ec:	e51b3010 	ldr	r3, [fp, #-16]
     6f0:	e3530000 	cmp	r3, #0
     6f4:	1a000001 	bne	700 <strncmp+0x98>
     6f8:	e3a03000 	mov	r3, #0
     6fc:	ea000005 	b	718 <strncmp+0xb0>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e5d33000 	ldrb	r3, [r3]
     708:	e1a02003 	mov	r2, r3
     70c:	e51b300c 	ldr	r3, [fp, #-12]
     710:	e5d33000 	ldrb	r3, [r3]
     714:	e0423003 	sub	r3, r2, r3
     718:	e1a00003 	mov	r0, r3
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <strncpy>:
     728:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     72c:	e28db000 	add	fp, sp, #0
     730:	e24dd01c 	sub	sp, sp, #28
     734:	e50b0010 	str	r0, [fp, #-16]
     738:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     73c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     740:	e51b3010 	ldr	r3, [fp, #-16]
     744:	e50b3008 	str	r3, [fp, #-8]
     748:	ea00000a 	b	778 <strncpy+0x50>
     74c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     750:	e2823001 	add	r3, r2, #1
     754:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e2831001 	add	r1, r3, #1
     760:	e50b1008 	str	r1, [fp, #-8]
     764:	e5d22000 	ldrb	r2, [r2]
     768:	e5c32000 	strb	r2, [r3]
     76c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     770:	e2433001 	sub	r3, r3, #1
     774:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     778:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     77c:	e3530000 	cmp	r3, #0
     780:	da00000c 	ble	7b8 <strncpy+0x90>
     784:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     788:	e5d33000 	ldrb	r3, [r3]
     78c:	e3530000 	cmp	r3, #0
     790:	1affffed 	bne	74c <strncpy+0x24>
     794:	ea000007 	b	7b8 <strncpy+0x90>
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e2832001 	add	r2, r3, #1
     7a0:	e50b2008 	str	r2, [fp, #-8]
     7a4:	e3a02000 	mov	r2, #0
     7a8:	e5c32000 	strb	r2, [r3]
     7ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7b0:	e2433001 	sub	r3, r3, #1
     7b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7bc:	e3530000 	cmp	r3, #0
     7c0:	cafffff4 	bgt	798 <strncpy+0x70>
     7c4:	e51b3010 	ldr	r3, [fp, #-16]
     7c8:	e1a00003 	mov	r0, r3
     7cc:	e28bd000 	add	sp, fp, #0
     7d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <xchg>:
     7d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7dc:	e28db000 	add	fp, sp, #0
     7e0:	e24dd014 	sub	sp, sp, #20
     7e4:	e50b0010 	str	r0, [fp, #-16]
     7e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7ec:	e51b2010 	ldr	r2, [fp, #-16]
     7f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7f4:	e1023091 	swp	r3, r1, [r2]
     7f8:	e50b3008 	str	r3, [fp, #-8]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e1a00003 	mov	r0, r3
     804:	e28bd000 	add	sp, fp, #0
     808:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <initiateLock>:
     810:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     814:	e28db000 	add	fp, sp, #0
     818:	e24dd00c 	sub	sp, sp, #12
     81c:	e50b0008 	str	r0, [fp, #-8]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e3a02000 	mov	r2, #0
     828:	e5832000 	str	r2, [r3]
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e3a02001 	mov	r2, #1
     834:	e5832004 	str	r2, [r3, #4]
     838:	e1a00000 	nop			@ (mov r0, r0)
     83c:	e28bd000 	add	sp, fp, #0
     840:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <acquireLock>:
     848:	e92d4800 	push	{fp, lr}
     84c:	e28db004 	add	fp, sp, #4
     850:	e24dd008 	sub	sp, sp, #8
     854:	e50b0008 	str	r0, [fp, #-8]
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5933004 	ldr	r3, [r3, #4]
     860:	e3530000 	cmp	r3, #0
     864:	0a000008 	beq	88c <acquireLock+0x44>
     868:	e1a00000 	nop			@ (mov r0, r0)
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e3a01001 	mov	r1, #1
     874:	e1a00003 	mov	r0, r3
     878:	ebffffd6 	bl	7d8 <xchg>
     87c:	e1a03000 	mov	r3, r0
     880:	e3530000 	cmp	r3, #0
     884:	1afffff8 	bne	86c <acquireLock+0x24>
     888:	ea000000 	b	890 <acquireLock+0x48>
     88c:	e1a00000 	nop			@ (mov r0, r0)
     890:	e24bd004 	sub	sp, fp, #4
     894:	e8bd8800 	pop	{fp, pc}

00000898 <releaseLock>:
     898:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     89c:	e28db000 	add	fp, sp, #0
     8a0:	e24dd00c 	sub	sp, sp, #12
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933004 	ldr	r3, [r3, #4]
     8b0:	e3530000 	cmp	r3, #0
     8b4:	0a000006 	beq	8d4 <releaseLock+0x3c>
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933000 	ldr	r3, [r3]
     8c0:	e3530001 	cmp	r3, #1
     8c4:	1a000002 	bne	8d4 <releaseLock+0x3c>
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e3a02000 	mov	r2, #0
     8d0:	e5832000 	str	r2, [r3]
     8d4:	e1a00000 	nop			@ (mov r0, r0)
     8d8:	e28bd000 	add	sp, fp, #0
     8dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <initiateCondVar>:
     8e4:	e92d4800 	push	{fp, lr}
     8e8:	e28db004 	add	fp, sp, #4
     8ec:	e24dd008 	sub	sp, sp, #8
     8f0:	e50b0008 	str	r0, [fp, #-8]
     8f4:	eb0001b8 	bl	fdc <getChannel>
     8f8:	e1a02000 	mov	r2, r0
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e5832000 	str	r2, [r3]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e3a02001 	mov	r2, #1
     90c:	e5832004 	str	r2, [r3, #4]
     910:	e1a00000 	nop			@ (mov r0, r0)
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}

0000091c <condWait>:
     91c:	e92d4800 	push	{fp, lr}
     920:	e28db004 	add	fp, sp, #4
     924:	e24dd008 	sub	sp, sp, #8
     928:	e50b0008 	str	r0, [fp, #-8]
     92c:	e50b100c 	str	r1, [fp, #-12]
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933004 	ldr	r3, [r3, #4]
     938:	e3530000 	cmp	r3, #0
     93c:	0a00000c 	beq	974 <condWait+0x58>
     940:	e51b300c 	ldr	r3, [fp, #-12]
     944:	e5933004 	ldr	r3, [r3, #4]
     948:	e3530000 	cmp	r3, #0
     94c:	0a000008 	beq	974 <condWait+0x58>
     950:	e51b000c 	ldr	r0, [fp, #-12]
     954:	ebffffcf 	bl	898 <releaseLock>
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e5933000 	ldr	r3, [r3]
     960:	e1a00003 	mov	r0, r3
     964:	eb000193 	bl	fb8 <sleepChan>
     968:	e51b000c 	ldr	r0, [fp, #-12]
     96c:	ebffffb5 	bl	848 <acquireLock>
     970:	ea000000 	b	978 <condWait+0x5c>
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e24bd004 	sub	sp, fp, #4
     97c:	e8bd8800 	pop	{fp, pc}

00000980 <broadcast>:
     980:	e92d4800 	push	{fp, lr}
     984:	e28db004 	add	fp, sp, #4
     988:	e24dd008 	sub	sp, sp, #8
     98c:	e50b0008 	str	r0, [fp, #-8]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e5933004 	ldr	r3, [r3, #4]
     998:	e3530000 	cmp	r3, #0
     99c:	0a000004 	beq	9b4 <broadcast+0x34>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e5933000 	ldr	r3, [r3]
     9a8:	e1a00003 	mov	r0, r3
     9ac:	eb000193 	bl	1000 <sigChan>
     9b0:	ea000000 	b	9b8 <broadcast+0x38>
     9b4:	e1a00000 	nop			@ (mov r0, r0)
     9b8:	e24bd004 	sub	sp, fp, #4
     9bc:	e8bd8800 	pop	{fp, pc}

000009c0 <signal>:
     9c0:	e92d4800 	push	{fp, lr}
     9c4:	e28db004 	add	fp, sp, #4
     9c8:	e24dd008 	sub	sp, sp, #8
     9cc:	e50b0008 	str	r0, [fp, #-8]
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e5933004 	ldr	r3, [r3, #4]
     9d8:	e3530000 	cmp	r3, #0
     9dc:	0a000004 	beq	9f4 <signal+0x34>
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e5933000 	ldr	r3, [r3]
     9e8:	e1a00003 	mov	r0, r3
     9ec:	eb00018c 	bl	1024 <sigOneChan>
     9f0:	ea000000 	b	9f8 <signal+0x38>
     9f4:	e1a00000 	nop			@ (mov r0, r0)
     9f8:	e24bd004 	sub	sp, fp, #4
     9fc:	e8bd8800 	pop	{fp, pc}

00000a00 <semInit>:
     a00:	e92d4800 	push	{fp, lr}
     a04:	e28db004 	add	fp, sp, #4
     a08:	e24dd008 	sub	sp, sp, #8
     a0c:	e50b0008 	str	r0, [fp, #-8]
     a10:	e50b100c 	str	r1, [fp, #-12]
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e2833004 	add	r3, r3, #4
     a1c:	e1a00003 	mov	r0, r3
     a20:	ebffff7a 	bl	810 <initiateLock>
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e283300c 	add	r3, r3, #12
     a2c:	e1a00003 	mov	r0, r3
     a30:	ebffffab 	bl	8e4 <initiateCondVar>
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e51b200c 	ldr	r2, [fp, #-12]
     a3c:	e5832000 	str	r2, [r3]
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e3a02001 	mov	r2, #1
     a48:	e5832014 	str	r2, [r3, #20]
     a4c:	e1a00000 	nop			@ (mov r0, r0)
     a50:	e24bd004 	sub	sp, fp, #4
     a54:	e8bd8800 	pop	{fp, pc}

00000a58 <semUp>:
     a58:	e92d4800 	push	{fp, lr}
     a5c:	e28db004 	add	fp, sp, #4
     a60:	e24dd008 	sub	sp, sp, #8
     a64:	e50b0008 	str	r0, [fp, #-8]
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e2833004 	add	r3, r3, #4
     a70:	e1a00003 	mov	r0, r3
     a74:	ebffff73 	bl	848 <acquireLock>
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e5933000 	ldr	r3, [r3]
     a80:	e2832001 	add	r2, r3, #1
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e5832000 	str	r2, [r3]
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e283300c 	add	r3, r3, #12
     a94:	e1a00003 	mov	r0, r3
     a98:	ebffffc8 	bl	9c0 <signal>
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e2833004 	add	r3, r3, #4
     aa4:	e1a00003 	mov	r0, r3
     aa8:	ebffff7a 	bl	898 <releaseLock>
     aac:	e1a00000 	nop			@ (mov r0, r0)
     ab0:	e24bd004 	sub	sp, fp, #4
     ab4:	e8bd8800 	pop	{fp, pc}

00000ab8 <semDown>:
     ab8:	e92d4800 	push	{fp, lr}
     abc:	e28db004 	add	fp, sp, #4
     ac0:	e24dd008 	sub	sp, sp, #8
     ac4:	e50b0008 	str	r0, [fp, #-8]
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e1a00003 	mov	r0, r3
     ad4:	ebffff5b 	bl	848 <acquireLock>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e5933000 	ldr	r3, [r3]
     ae0:	e2432001 	sub	r2, r3, #1
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e5832000 	str	r2, [r3]
     aec:	ea000006 	b	b0c <semDown+0x54>
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e283200c 	add	r2, r3, #12
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2833004 	add	r3, r3, #4
     b00:	e1a01003 	mov	r1, r3
     b04:	e1a00002 	mov	r0, r2
     b08:	ebffff83 	bl	91c <condWait>
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e5933000 	ldr	r3, [r3]
     b14:	e3530000 	cmp	r3, #0
     b18:	bafffff4 	blt	af0 <semDown+0x38>
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e2833004 	add	r3, r3, #4
     b24:	e1a00003 	mov	r0, r3
     b28:	ebffff5a 	bl	898 <releaseLock>
     b2c:	e1a00000 	nop			@ (mov r0, r0)
     b30:	e24bd004 	sub	sp, fp, #4
     b34:	e8bd8800 	pop	{fp, pc}

00000b38 <fork>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00001 	mov	r0, #1
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <exit>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00002 	mov	r0, #2
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <wait>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00003 	mov	r0, #3
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <pipe>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00004 	mov	r0, #4
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <read>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00005 	mov	r0, #5
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <write>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00010 	mov	r0, #16
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <close>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00015 	mov	r0, #21
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <kill>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00006 	mov	r0, #6
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <exec>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00007 	mov	r0, #7
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <open>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0000f 	mov	r0, #15
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <mknod>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a00011 	mov	r0, #17
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <unlink>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00012 	mov	r0, #18
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <fstat>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00008 	mov	r0, #8
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <link>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00013 	mov	r0, #19
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <mkdir>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00014 	mov	r0, #20
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <chdir>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00009 	mov	r0, #9
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <dup>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a0000a 	mov	r0, #10
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <getpid>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a0000b 	mov	r0, #11
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <sbrk>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a0000c 	mov	r0, #12
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <sleep>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0000d 	mov	r0, #13
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <uptime>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0000e 	mov	r0, #14
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <proclist>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a00016 	mov	r0, #22
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <settickets>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a00017 	mov	r0, #23
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <srand>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00018 	mov	r0, #24
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <getpinfo>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00019 	mov	r0, #25
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <print_pt>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a0001f 	mov	r0, #31
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <thread_create>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00020 	mov	r0, #32
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <thread_exit>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00021 	mov	r0, #33	@ 0x21
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <thread_join>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a00022 	mov	r0, #34	@ 0x22
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <waitpid>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a00023 	mov	r0, #35	@ 0x23
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <barrier_init>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a00024 	mov	r0, #36	@ 0x24
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <barrier_check>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a00025 	mov	r0, #37	@ 0x25
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <sleepChan>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a00026 	mov	r0, #38	@ 0x26
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <getChannel>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a00027 	mov	r0, #39	@ 0x27
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <sigChan>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00028 	mov	r0, #40	@ 0x28
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <sigOneChan>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00029 	mov	r0, #41	@ 0x29
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <symlink>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a0002a 	mov	r0, #42	@ 0x2a
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
    109c:	ebfffed2 	bl	bec <write>
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
    11e0:	000019e8 	.word	0x000019e8

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
    1418:	000019e0 	.word	0x000019e0

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
    1594:	00001a04 	.word	0x00001a04

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
    15c8:	ebfffdfc 	bl	dc0 <sbrk>
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
    161c:	00001a04 	.word	0x00001a04

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
    1780:	00001a04 	.word	0x00001a04
    1784:	000019fc 	.word	0x000019fc

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
