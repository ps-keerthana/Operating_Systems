
_pagetest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f10a4 	ldr	r1, [pc, #164]	@ b8 <main+0xb8>
      10:	e3a00001 	mov	r0, #1
      14:	eb000469 	bl	11c0 <printf>
      18:	e3a00a01 	mov	r0, #4096	@ 0x1000
      1c:	eb000367 	bl	dc0 <sbrk>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e3730001 	cmn	r3, #1
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1084 	ldr	r1, [pc, #132]	@ bc <main+0xbc>
      34:	e3a00001 	mov	r0, #1
      38:	eb000460 	bl	11c0 <printf>
      3c:	eb0002c6 	bl	b5c <exit>
      40:	e51b2008 	ldr	r2, [fp, #-8]
      44:	e59f1074 	ldr	r1, [pc, #116]	@ c0 <main+0xc0>
      48:	e3a00001 	mov	r0, #1
      4c:	eb00045b 	bl	11c0 <printf>
      50:	e59f106c 	ldr	r1, [pc, #108]	@ c4 <main+0xc4>
      54:	e3a00001 	mov	r0, #1
      58:	eb000458 	bl	11c0 <printf>
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e3a02048 	mov	r2, #72	@ 0x48
      64:	e5c32000 	strb	r2, [r3]
      68:	e51b3008 	ldr	r3, [fp, #-8]
      6c:	e2833b01 	add	r3, r3, #1024	@ 0x400
      70:	e3a02069 	mov	r2, #105	@ 0x69
      74:	e5c32000 	strb	r2, [r3]
      78:	e59f1048 	ldr	r1, [pc, #72]	@ c8 <main+0xc8>
      7c:	e3a00001 	mov	r0, #1
      80:	eb00044e 	bl	11c0 <printf>
      84:	e51b3008 	ldr	r3, [fp, #-8]
      88:	e5d33000 	ldrb	r3, [r3]
      8c:	e1a02003 	mov	r2, r3
      90:	e51b3008 	ldr	r3, [fp, #-8]
      94:	e2833b01 	add	r3, r3, #1024	@ 0x400
      98:	e5d33000 	ldrb	r3, [r3]
      9c:	e59f1028 	ldr	r1, [pc, #40]	@ cc <main+0xcc>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb000445 	bl	11c0 <printf>
      a8:	e59f1020 	ldr	r1, [pc, #32]	@ d0 <main+0xd0>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000442 	bl	11c0 <printf>
      b4:	eb0002a8 	bl	b5c <exit>
      b8:	0000187c 	.word	0x0000187c
      bc:	000018a0 	.word	0x000018a0
      c0:	000018c4 	.word	0x000018c4
      c4:	000018f4 	.word	0x000018f4
      c8:	0000193c 	.word	0x0000193c
      cc:	00001968 	.word	0x00001968
      d0:	0000199c 	.word	0x0000199c

000000d4 <pg_pte>:
      d4:	e92d4800 	push	{fp, lr}
      d8:	e28db004 	add	fp, sp, #4
      dc:	e24dd008 	sub	sp, sp, #8
      e0:	e50b0008 	str	r0, [fp, #-8]
      e4:	e51b1008 	ldr	r1, [fp, #-8]
      e8:	e3a0001a 	mov	r0, #26
      ec:	eb0003d5 	bl	1048 <syscall>
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
     118:	eb0003ca 	bl	1048 <syscall>
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
     144:	eb0003bf 	bl	1048 <syscall>
     148:	e1a03000 	mov	r3, r0
     14c:	e1a00003 	mov	r0, r3
     150:	e24bd004 	sub	sp, fp, #4
     154:	e8bd8800 	pop	{fp, pc}

00000158 <kpt>:
     158:	e92d4800 	push	{fp, lr}
     15c:	e28db004 	add	fp, sp, #4
     160:	e3a0001d 	mov	r0, #29
     164:	eb0003b7 	bl	1048 <syscall>
     168:	e1a03000 	mov	r3, r0
     16c:	e1a00003 	mov	r0, r3
     170:	e8bd8800 	pop	{fp, pc}

00000174 <ugetpid>:
     174:	e92d4800 	push	{fp, lr}
     178:	e28db004 	add	fp, sp, #4
     17c:	e3a0001e 	mov	r0, #30
     180:	eb0003b0 	bl	1048 <syscall>
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

00001048 <syscall>:
    1048:	ef000000 	svc	0x00000000
    104c:	e12fff1e 	bx	lr

00001050 <putc>:
    1050:	e92d4800 	push	{fp, lr}
    1054:	e28db004 	add	fp, sp, #4
    1058:	e24dd008 	sub	sp, sp, #8
    105c:	e50b0008 	str	r0, [fp, #-8]
    1060:	e1a03001 	mov	r3, r1
    1064:	e54b3009 	strb	r3, [fp, #-9]
    1068:	e24b3009 	sub	r3, fp, #9
    106c:	e3a02001 	mov	r2, #1
    1070:	e1a01003 	mov	r1, r3
    1074:	e51b0008 	ldr	r0, [fp, #-8]
    1078:	ebfffedb 	bl	bec <write>
    107c:	e1a00000 	nop			@ (mov r0, r0)
    1080:	e24bd004 	sub	sp, fp, #4
    1084:	e8bd8800 	pop	{fp, pc}

00001088 <printint>:
    1088:	e92d4800 	push	{fp, lr}
    108c:	e28db004 	add	fp, sp, #4
    1090:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1094:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1098:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    109c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10a0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10a4:	e3a03000 	mov	r3, #0
    10a8:	e50b300c 	str	r3, [fp, #-12]
    10ac:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10b0:	e3530000 	cmp	r3, #0
    10b4:	0a000008 	beq	10dc <printint+0x54>
    10b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10bc:	e3530000 	cmp	r3, #0
    10c0:	aa000005 	bge	10dc <printint+0x54>
    10c4:	e3a03001 	mov	r3, #1
    10c8:	e50b300c 	str	r3, [fp, #-12]
    10cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10d0:	e2633000 	rsb	r3, r3, #0
    10d4:	e50b3010 	str	r3, [fp, #-16]
    10d8:	ea000001 	b	10e4 <printint+0x5c>
    10dc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10e0:	e50b3010 	str	r3, [fp, #-16]
    10e4:	e3a03000 	mov	r3, #0
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10f0:	e51b3010 	ldr	r3, [fp, #-16]
    10f4:	e1a01002 	mov	r1, r2
    10f8:	e1a00003 	mov	r0, r3
    10fc:	eb0001d5 	bl	1858 <__aeabi_uidivmod>
    1100:	e1a03001 	mov	r3, r1
    1104:	e1a01003 	mov	r1, r3
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e2832001 	add	r2, r3, #1
    1110:	e50b2008 	str	r2, [fp, #-8]
    1114:	e59f20a0 	ldr	r2, [pc, #160]	@ 11bc <printint+0x134>
    1118:	e7d22001 	ldrb	r2, [r2, r1]
    111c:	e2433004 	sub	r3, r3, #4
    1120:	e083300b 	add	r3, r3, fp
    1124:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1128:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    112c:	e1a01003 	mov	r1, r3
    1130:	e51b0010 	ldr	r0, [fp, #-16]
    1134:	eb00018a 	bl	1764 <__udivsi3>
    1138:	e1a03000 	mov	r3, r0
    113c:	e50b3010 	str	r3, [fp, #-16]
    1140:	e51b3010 	ldr	r3, [fp, #-16]
    1144:	e3530000 	cmp	r3, #0
    1148:	1affffe7 	bne	10ec <printint+0x64>
    114c:	e51b300c 	ldr	r3, [fp, #-12]
    1150:	e3530000 	cmp	r3, #0
    1154:	0a00000e 	beq	1194 <printint+0x10c>
    1158:	e51b3008 	ldr	r3, [fp, #-8]
    115c:	e2832001 	add	r2, r3, #1
    1160:	e50b2008 	str	r2, [fp, #-8]
    1164:	e2433004 	sub	r3, r3, #4
    1168:	e083300b 	add	r3, r3, fp
    116c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1170:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1174:	ea000006 	b	1194 <printint+0x10c>
    1178:	e24b2020 	sub	r2, fp, #32
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e0823003 	add	r3, r2, r3
    1184:	e5d33000 	ldrb	r3, [r3]
    1188:	e1a01003 	mov	r1, r3
    118c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1190:	ebffffae 	bl	1050 <putc>
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e2433001 	sub	r3, r3, #1
    119c:	e50b3008 	str	r3, [fp, #-8]
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e3530000 	cmp	r3, #0
    11a8:	aafffff2 	bge	1178 <printint+0xf0>
    11ac:	e1a00000 	nop			@ (mov r0, r0)
    11b0:	e1a00000 	nop			@ (mov r0, r0)
    11b4:	e24bd004 	sub	sp, fp, #4
    11b8:	e8bd8800 	pop	{fp, pc}
    11bc:	000019c4 	.word	0x000019c4

000011c0 <printf>:
    11c0:	e92d000e 	push	{r1, r2, r3}
    11c4:	e92d4800 	push	{fp, lr}
    11c8:	e28db004 	add	fp, sp, #4
    11cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11d0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11d4:	e3a03000 	mov	r3, #0
    11d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11dc:	e28b3008 	add	r3, fp, #8
    11e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11e4:	e3a03000 	mov	r3, #0
    11e8:	e50b3010 	str	r3, [fp, #-16]
    11ec:	ea000074 	b	13c4 <printf+0x204>
    11f0:	e59b2004 	ldr	r2, [fp, #4]
    11f4:	e51b3010 	ldr	r3, [fp, #-16]
    11f8:	e0823003 	add	r3, r2, r3
    11fc:	e5d33000 	ldrb	r3, [r3]
    1200:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1208:	e3530000 	cmp	r3, #0
    120c:	1a00000b 	bne	1240 <printf+0x80>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e3530025 	cmp	r3, #37	@ 0x25
    1218:	1a000002 	bne	1228 <printf+0x68>
    121c:	e3a03025 	mov	r3, #37	@ 0x25
    1220:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1224:	ea000063 	b	13b8 <printf+0x1f8>
    1228:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    122c:	e6ef3073 	uxtb	r3, r3
    1230:	e1a01003 	mov	r1, r3
    1234:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1238:	ebffff84 	bl	1050 <putc>
    123c:	ea00005d 	b	13b8 <printf+0x1f8>
    1240:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1244:	e3530025 	cmp	r3, #37	@ 0x25
    1248:	1a00005a 	bne	13b8 <printf+0x1f8>
    124c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1250:	e3530064 	cmp	r3, #100	@ 0x64
    1254:	1a00000a 	bne	1284 <printf+0xc4>
    1258:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e1a01003 	mov	r1, r3
    1264:	e3a03001 	mov	r3, #1
    1268:	e3a0200a 	mov	r2, #10
    126c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1270:	ebffff84 	bl	1088 <printint>
    1274:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1278:	e2833004 	add	r3, r3, #4
    127c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1280:	ea00004a 	b	13b0 <printf+0x1f0>
    1284:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1288:	e3530078 	cmp	r3, #120	@ 0x78
    128c:	0a000002 	beq	129c <printf+0xdc>
    1290:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1294:	e3530070 	cmp	r3, #112	@ 0x70
    1298:	1a00000a 	bne	12c8 <printf+0x108>
    129c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e1a01003 	mov	r1, r3
    12a8:	e3a03000 	mov	r3, #0
    12ac:	e3a02010 	mov	r2, #16
    12b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12b4:	ebffff73 	bl	1088 <printint>
    12b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12bc:	e2833004 	add	r3, r3, #4
    12c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	ea000039 	b	13b0 <printf+0x1f0>
    12c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12cc:	e3530073 	cmp	r3, #115	@ 0x73
    12d0:	1a000018 	bne	1338 <printf+0x178>
    12d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e50b300c 	str	r3, [fp, #-12]
    12e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e2833004 	add	r3, r3, #4
    12e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e3530000 	cmp	r3, #0
    12f4:	1a00000a 	bne	1324 <printf+0x164>
    12f8:	e59f30f4 	ldr	r3, [pc, #244]	@ 13f4 <printf+0x234>
    12fc:	e50b300c 	str	r3, [fp, #-12]
    1300:	ea000007 	b	1324 <printf+0x164>
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e5d33000 	ldrb	r3, [r3]
    130c:	e1a01003 	mov	r1, r3
    1310:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1314:	ebffff4d 	bl	1050 <putc>
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e2833001 	add	r3, r3, #1
    1320:	e50b300c 	str	r3, [fp, #-12]
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5d33000 	ldrb	r3, [r3]
    132c:	e3530000 	cmp	r3, #0
    1330:	1afffff3 	bne	1304 <printf+0x144>
    1334:	ea00001d 	b	13b0 <printf+0x1f0>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e3530063 	cmp	r3, #99	@ 0x63
    1340:	1a000009 	bne	136c <printf+0x1ac>
    1344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e6ef3073 	uxtb	r3, r3
    1350:	e1a01003 	mov	r1, r3
    1354:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1358:	ebffff3c 	bl	1050 <putc>
    135c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1360:	e2833004 	add	r3, r3, #4
    1364:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1368:	ea000010 	b	13b0 <printf+0x1f0>
    136c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1370:	e3530025 	cmp	r3, #37	@ 0x25
    1374:	1a000005 	bne	1390 <printf+0x1d0>
    1378:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    137c:	e6ef3073 	uxtb	r3, r3
    1380:	e1a01003 	mov	r1, r3
    1384:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1388:	ebffff30 	bl	1050 <putc>
    138c:	ea000007 	b	13b0 <printf+0x1f0>
    1390:	e3a01025 	mov	r1, #37	@ 0x25
    1394:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1398:	ebffff2c 	bl	1050 <putc>
    139c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13a0:	e6ef3073 	uxtb	r3, r3
    13a4:	e1a01003 	mov	r1, r3
    13a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13ac:	ebffff27 	bl	1050 <putc>
    13b0:	e3a03000 	mov	r3, #0
    13b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13b8:	e51b3010 	ldr	r3, [fp, #-16]
    13bc:	e2833001 	add	r3, r3, #1
    13c0:	e50b3010 	str	r3, [fp, #-16]
    13c4:	e59b2004 	ldr	r2, [fp, #4]
    13c8:	e51b3010 	ldr	r3, [fp, #-16]
    13cc:	e0823003 	add	r3, r2, r3
    13d0:	e5d33000 	ldrb	r3, [r3]
    13d4:	e3530000 	cmp	r3, #0
    13d8:	1affff84 	bne	11f0 <printf+0x30>
    13dc:	e1a00000 	nop			@ (mov r0, r0)
    13e0:	e1a00000 	nop			@ (mov r0, r0)
    13e4:	e24bd004 	sub	sp, fp, #4
    13e8:	e8bd4800 	pop	{fp, lr}
    13ec:	e28dd00c 	add	sp, sp, #12
    13f0:	e12fff1e 	bx	lr
    13f4:	000019bc 	.word	0x000019bc

000013f8 <free>:
    13f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13fc:	e28db000 	add	fp, sp, #0
    1400:	e24dd014 	sub	sp, sp, #20
    1404:	e50b0010 	str	r0, [fp, #-16]
    1408:	e51b3010 	ldr	r3, [fp, #-16]
    140c:	e2433008 	sub	r3, r3, #8
    1410:	e50b300c 	str	r3, [fp, #-12]
    1414:	e59f3154 	ldr	r3, [pc, #340]	@ 1570 <free+0x178>
    1418:	e5933000 	ldr	r3, [r3]
    141c:	e50b3008 	str	r3, [fp, #-8]
    1420:	ea000010 	b	1468 <free+0x70>
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e51b2008 	ldr	r2, [fp, #-8]
    1430:	e1520003 	cmp	r2, r3
    1434:	3a000008 	bcc	145c <free+0x64>
    1438:	e51b200c 	ldr	r2, [fp, #-12]
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e1520003 	cmp	r2, r3
    1444:	8a000010 	bhi	148c <free+0x94>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5933000 	ldr	r3, [r3]
    1450:	e51b200c 	ldr	r2, [fp, #-12]
    1454:	e1520003 	cmp	r2, r3
    1458:	3a00000b 	bcc	148c <free+0x94>
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e5933000 	ldr	r3, [r3]
    1464:	e50b3008 	str	r3, [fp, #-8]
    1468:	e51b200c 	ldr	r2, [fp, #-12]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e1520003 	cmp	r2, r3
    1474:	9affffea 	bls	1424 <free+0x2c>
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e51b200c 	ldr	r2, [fp, #-12]
    1484:	e1520003 	cmp	r2, r3
    1488:	2affffe5 	bcs	1424 <free+0x2c>
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e5933004 	ldr	r3, [r3, #4]
    1494:	e1a03183 	lsl	r3, r3, #3
    1498:	e51b200c 	ldr	r2, [fp, #-12]
    149c:	e0822003 	add	r2, r2, r3
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e1520003 	cmp	r2, r3
    14ac:	1a00000d 	bne	14e8 <free+0xf0>
    14b0:	e51b300c 	ldr	r3, [fp, #-12]
    14b4:	e5932004 	ldr	r2, [r3, #4]
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e5933004 	ldr	r3, [r3, #4]
    14c4:	e0822003 	add	r2, r2, r3
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5832004 	str	r2, [r3, #4]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e5932000 	ldr	r2, [r3]
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e5832000 	str	r2, [r3]
    14e4:	ea000003 	b	14f8 <free+0x100>
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5932000 	ldr	r2, [r3]
    14f0:	e51b300c 	ldr	r3, [fp, #-12]
    14f4:	e5832000 	str	r2, [r3]
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5933004 	ldr	r3, [r3, #4]
    1500:	e1a03183 	lsl	r3, r3, #3
    1504:	e51b2008 	ldr	r2, [fp, #-8]
    1508:	e0823003 	add	r3, r2, r3
    150c:	e51b200c 	ldr	r2, [fp, #-12]
    1510:	e1520003 	cmp	r2, r3
    1514:	1a00000b 	bne	1548 <free+0x150>
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5932004 	ldr	r2, [r3, #4]
    1520:	e51b300c 	ldr	r3, [fp, #-12]
    1524:	e5933004 	ldr	r3, [r3, #4]
    1528:	e0822003 	add	r2, r2, r3
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5832004 	str	r2, [r3, #4]
    1534:	e51b300c 	ldr	r3, [fp, #-12]
    1538:	e5932000 	ldr	r2, [r3]
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e5832000 	str	r2, [r3]
    1544:	ea000002 	b	1554 <free+0x15c>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e51b200c 	ldr	r2, [fp, #-12]
    1550:	e5832000 	str	r2, [r3]
    1554:	e59f2014 	ldr	r2, [pc, #20]	@ 1570 <free+0x178>
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5823000 	str	r3, [r2]
    1560:	e1a00000 	nop			@ (mov r0, r0)
    1564:	e28bd000 	add	sp, fp, #0
    1568:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    156c:	e12fff1e 	bx	lr
    1570:	000019e0 	.word	0x000019e0

00001574 <morecore>:
    1574:	e92d4800 	push	{fp, lr}
    1578:	e28db004 	add	fp, sp, #4
    157c:	e24dd010 	sub	sp, sp, #16
    1580:	e50b0010 	str	r0, [fp, #-16]
    1584:	e51b3010 	ldr	r3, [fp, #-16]
    1588:	e3530a01 	cmp	r3, #4096	@ 0x1000
    158c:	2a000001 	bcs	1598 <morecore+0x24>
    1590:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1594:	e50b3010 	str	r3, [fp, #-16]
    1598:	e51b3010 	ldr	r3, [fp, #-16]
    159c:	e1a03183 	lsl	r3, r3, #3
    15a0:	e1a00003 	mov	r0, r3
    15a4:	ebfffe05 	bl	dc0 <sbrk>
    15a8:	e50b0008 	str	r0, [fp, #-8]
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e3730001 	cmn	r3, #1
    15b4:	1a000001 	bne	15c0 <morecore+0x4c>
    15b8:	e3a03000 	mov	r3, #0
    15bc:	ea00000a 	b	15ec <morecore+0x78>
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e50b300c 	str	r3, [fp, #-12]
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e51b2010 	ldr	r2, [fp, #-16]
    15d0:	e5832004 	str	r2, [r3, #4]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e2833008 	add	r3, r3, #8
    15dc:	e1a00003 	mov	r0, r3
    15e0:	ebffff84 	bl	13f8 <free>
    15e4:	e59f300c 	ldr	r3, [pc, #12]	@ 15f8 <morecore+0x84>
    15e8:	e5933000 	ldr	r3, [r3]
    15ec:	e1a00003 	mov	r0, r3
    15f0:	e24bd004 	sub	sp, fp, #4
    15f4:	e8bd8800 	pop	{fp, pc}
    15f8:	000019e0 	.word	0x000019e0

000015fc <malloc>:
    15fc:	e92d4800 	push	{fp, lr}
    1600:	e28db004 	add	fp, sp, #4
    1604:	e24dd018 	sub	sp, sp, #24
    1608:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    160c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1610:	e2833007 	add	r3, r3, #7
    1614:	e1a031a3 	lsr	r3, r3, #3
    1618:	e2833001 	add	r3, r3, #1
    161c:	e50b3010 	str	r3, [fp, #-16]
    1620:	e59f3134 	ldr	r3, [pc, #308]	@ 175c <malloc+0x160>
    1624:	e5933000 	ldr	r3, [r3]
    1628:	e50b300c 	str	r3, [fp, #-12]
    162c:	e51b300c 	ldr	r3, [fp, #-12]
    1630:	e3530000 	cmp	r3, #0
    1634:	1a00000b 	bne	1668 <malloc+0x6c>
    1638:	e59f3120 	ldr	r3, [pc, #288]	@ 1760 <malloc+0x164>
    163c:	e50b300c 	str	r3, [fp, #-12]
    1640:	e59f2114 	ldr	r2, [pc, #276]	@ 175c <malloc+0x160>
    1644:	e51b300c 	ldr	r3, [fp, #-12]
    1648:	e5823000 	str	r3, [r2]
    164c:	e59f3108 	ldr	r3, [pc, #264]	@ 175c <malloc+0x160>
    1650:	e5933000 	ldr	r3, [r3]
    1654:	e59f2104 	ldr	r2, [pc, #260]	@ 1760 <malloc+0x164>
    1658:	e5823000 	str	r3, [r2]
    165c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1760 <malloc+0x164>
    1660:	e3a02000 	mov	r2, #0
    1664:	e5832004 	str	r2, [r3, #4]
    1668:	e51b300c 	ldr	r3, [fp, #-12]
    166c:	e5933000 	ldr	r3, [r3]
    1670:	e50b3008 	str	r3, [fp, #-8]
    1674:	e51b3008 	ldr	r3, [fp, #-8]
    1678:	e5933004 	ldr	r3, [r3, #4]
    167c:	e51b2010 	ldr	r2, [fp, #-16]
    1680:	e1520003 	cmp	r2, r3
    1684:	8a00001e 	bhi	1704 <malloc+0x108>
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e5933004 	ldr	r3, [r3, #4]
    1690:	e51b2010 	ldr	r2, [fp, #-16]
    1694:	e1520003 	cmp	r2, r3
    1698:	1a000004 	bne	16b0 <malloc+0xb4>
    169c:	e51b3008 	ldr	r3, [fp, #-8]
    16a0:	e5932000 	ldr	r2, [r3]
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5832000 	str	r2, [r3]
    16ac:	ea00000e 	b	16ec <malloc+0xf0>
    16b0:	e51b3008 	ldr	r3, [fp, #-8]
    16b4:	e5932004 	ldr	r2, [r3, #4]
    16b8:	e51b3010 	ldr	r3, [fp, #-16]
    16bc:	e0422003 	sub	r2, r2, r3
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e5832004 	str	r2, [r3, #4]
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e5933004 	ldr	r3, [r3, #4]
    16d0:	e1a03183 	lsl	r3, r3, #3
    16d4:	e51b2008 	ldr	r2, [fp, #-8]
    16d8:	e0823003 	add	r3, r2, r3
    16dc:	e50b3008 	str	r3, [fp, #-8]
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e51b2010 	ldr	r2, [fp, #-16]
    16e8:	e5832004 	str	r2, [r3, #4]
    16ec:	e59f2068 	ldr	r2, [pc, #104]	@ 175c <malloc+0x160>
    16f0:	e51b300c 	ldr	r3, [fp, #-12]
    16f4:	e5823000 	str	r3, [r2]
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e2833008 	add	r3, r3, #8
    1700:	ea000012 	b	1750 <malloc+0x154>
    1704:	e59f3050 	ldr	r3, [pc, #80]	@ 175c <malloc+0x160>
    1708:	e5933000 	ldr	r3, [r3]
    170c:	e51b2008 	ldr	r2, [fp, #-8]
    1710:	e1520003 	cmp	r2, r3
    1714:	1a000007 	bne	1738 <malloc+0x13c>
    1718:	e51b0010 	ldr	r0, [fp, #-16]
    171c:	ebffff94 	bl	1574 <morecore>
    1720:	e50b0008 	str	r0, [fp, #-8]
    1724:	e51b3008 	ldr	r3, [fp, #-8]
    1728:	e3530000 	cmp	r3, #0
    172c:	1a000001 	bne	1738 <malloc+0x13c>
    1730:	e3a03000 	mov	r3, #0
    1734:	ea000005 	b	1750 <malloc+0x154>
    1738:	e51b3008 	ldr	r3, [fp, #-8]
    173c:	e50b300c 	str	r3, [fp, #-12]
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e5933000 	ldr	r3, [r3]
    1748:	e50b3008 	str	r3, [fp, #-8]
    174c:	eaffffc8 	b	1674 <malloc+0x78>
    1750:	e1a00003 	mov	r0, r3
    1754:	e24bd004 	sub	sp, fp, #4
    1758:	e8bd8800 	pop	{fp, pc}
    175c:	000019e0 	.word	0x000019e0
    1760:	000019d8 	.word	0x000019d8

00001764 <__udivsi3>:
    1764:	e2512001 	subs	r2, r1, #1
    1768:	012fff1e 	bxeq	lr
    176c:	3a000036 	bcc	184c <__udivsi3+0xe8>
    1770:	e1500001 	cmp	r0, r1
    1774:	9a000022 	bls	1804 <__udivsi3+0xa0>
    1778:	e1110002 	tst	r1, r2
    177c:	0a000023 	beq	1810 <__udivsi3+0xac>
    1780:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1784:	01a01181 	lsleq	r1, r1, #3
    1788:	03a03008 	moveq	r3, #8
    178c:	13a03001 	movne	r3, #1
    1790:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1794:	31510000 	cmpcc	r1, r0
    1798:	31a01201 	lslcc	r1, r1, #4
    179c:	31a03203 	lslcc	r3, r3, #4
    17a0:	3afffffa 	bcc	1790 <__udivsi3+0x2c>
    17a4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17a8:	31510000 	cmpcc	r1, r0
    17ac:	31a01081 	lslcc	r1, r1, #1
    17b0:	31a03083 	lslcc	r3, r3, #1
    17b4:	3afffffa 	bcc	17a4 <__udivsi3+0x40>
    17b8:	e3a02000 	mov	r2, #0
    17bc:	e1500001 	cmp	r0, r1
    17c0:	20400001 	subcs	r0, r0, r1
    17c4:	21822003 	orrcs	r2, r2, r3
    17c8:	e15000a1 	cmp	r0, r1, lsr #1
    17cc:	204000a1 	subcs	r0, r0, r1, lsr #1
    17d0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17d4:	e1500121 	cmp	r0, r1, lsr #2
    17d8:	20400121 	subcs	r0, r0, r1, lsr #2
    17dc:	21822123 	orrcs	r2, r2, r3, lsr #2
    17e0:	e15001a1 	cmp	r0, r1, lsr #3
    17e4:	204001a1 	subcs	r0, r0, r1, lsr #3
    17e8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17ec:	e3500000 	cmp	r0, #0
    17f0:	11b03223 	lsrsne	r3, r3, #4
    17f4:	11a01221 	lsrne	r1, r1, #4
    17f8:	1affffef 	bne	17bc <__udivsi3+0x58>
    17fc:	e1a00002 	mov	r0, r2
    1800:	e12fff1e 	bx	lr
    1804:	03a00001 	moveq	r0, #1
    1808:	13a00000 	movne	r0, #0
    180c:	e12fff1e 	bx	lr
    1810:	e3510801 	cmp	r1, #65536	@ 0x10000
    1814:	21a01821 	lsrcs	r1, r1, #16
    1818:	23a02010 	movcs	r2, #16
    181c:	33a02000 	movcc	r2, #0
    1820:	e3510c01 	cmp	r1, #256	@ 0x100
    1824:	21a01421 	lsrcs	r1, r1, #8
    1828:	22822008 	addcs	r2, r2, #8
    182c:	e3510010 	cmp	r1, #16
    1830:	21a01221 	lsrcs	r1, r1, #4
    1834:	22822004 	addcs	r2, r2, #4
    1838:	e3510004 	cmp	r1, #4
    183c:	82822003 	addhi	r2, r2, #3
    1840:	908220a1 	addls	r2, r2, r1, lsr #1
    1844:	e1a00230 	lsr	r0, r0, r2
    1848:	e12fff1e 	bx	lr
    184c:	e3500000 	cmp	r0, #0
    1850:	13e00000 	mvnne	r0, #0
    1854:	ea000007 	b	1878 <__aeabi_idiv0>

00001858 <__aeabi_uidivmod>:
    1858:	e3510000 	cmp	r1, #0
    185c:	0afffffa 	beq	184c <__udivsi3+0xe8>
    1860:	e92d4003 	push	{r0, r1, lr}
    1864:	ebffffbe 	bl	1764 <__udivsi3>
    1868:	e8bd4006 	pop	{r1, r2, lr}
    186c:	e0030092 	mul	r3, r2, r0
    1870:	e0411003 	sub	r1, r1, r3
    1874:	e12fff1e 	bx	lr

00001878 <__aeabi_idiv0>:
    1878:	e12fff1e 	bx	lr
