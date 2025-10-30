
_t_barrier:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a00003 	mov	r0, #3
      10:	eb0003d4 	bl	f68 <barrier_init>
      14:	eb0002c5 	bl	b30 <fork>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e3530000 	cmp	r3, #0
      24:	1a000009 	bne	50 <main+0x50>
      28:	e3a0000a 	mov	r0, #10
      2c:	eb00036a 	bl	ddc <sleep>
      30:	e59f107c 	ldr	r1, [pc, #124]	@ b4 <main+0xb4>
      34:	e3a00001 	mov	r0, #1
      38:	eb00045e 	bl	11b8 <printf>
      3c:	eb0003d2 	bl	f8c <barrier_check>
      40:	e59f1070 	ldr	r1, [pc, #112]	@ b8 <main+0xb8>
      44:	e3a00001 	mov	r0, #1
      48:	eb00045a 	bl	11b8 <printf>
      4c:	eb0002c0 	bl	b54 <exit>
      50:	eb0002b6 	bl	b30 <fork>
      54:	e50b000c 	str	r0, [fp, #-12]
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e3530000 	cmp	r3, #0
      60:	1a000009 	bne	8c <main+0x8c>
      64:	e3a00014 	mov	r0, #20
      68:	eb00035b 	bl	ddc <sleep>
      6c:	e59f1048 	ldr	r1, [pc, #72]	@ bc <main+0xbc>
      70:	e3a00001 	mov	r0, #1
      74:	eb00044f 	bl	11b8 <printf>
      78:	eb0003c3 	bl	f8c <barrier_check>
      7c:	e59f103c 	ldr	r1, [pc, #60]	@ c0 <main+0xc0>
      80:	e3a00001 	mov	r0, #1
      84:	eb00044b 	bl	11b8 <printf>
      88:	eb0002b1 	bl	b54 <exit>
      8c:	e59f1030 	ldr	r1, [pc, #48]	@ c4 <main+0xc4>
      90:	e3a00001 	mov	r0, #1
      94:	eb000447 	bl	11b8 <printf>
      98:	eb0003bb 	bl	f8c <barrier_check>
      9c:	e59f1024 	ldr	r1, [pc, #36]	@ c8 <main+0xc8>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb000443 	bl	11b8 <printf>
      a8:	eb0002b2 	bl	b78 <wait>
      ac:	eb0002b1 	bl	b78 <wait>
      b0:	eb0002a7 	bl	b54 <exit>
      b4:	00001874 	.word	0x00001874
      b8:	00001888 	.word	0x00001888
      bc:	000018a4 	.word	0x000018a4
      c0:	000018b8 	.word	0x000018b8
      c4:	000018d4 	.word	0x000018d4
      c8:	000018e8 	.word	0x000018e8

000000cc <pg_pte>:
      cc:	e92d4800 	push	{fp, lr}
      d0:	e28db004 	add	fp, sp, #4
      d4:	e24dd008 	sub	sp, sp, #8
      d8:	e50b0008 	str	r0, [fp, #-8]
      dc:	e51b1008 	ldr	r1, [fp, #-8]
      e0:	e3a0001a 	mov	r0, #26
      e4:	eb0003d5 	bl	1040 <syscall>
      e8:	e1a03000 	mov	r3, r0
      ec:	e1a00003 	mov	r0, r3
      f0:	e24bd004 	sub	sp, fp, #4
      f4:	e8bd8800 	pop	{fp, pc}

000000f8 <pg_pa>:
      f8:	e92d4800 	push	{fp, lr}
      fc:	e28db004 	add	fp, sp, #4
     100:	e24dd008 	sub	sp, sp, #8
     104:	e50b0008 	str	r0, [fp, #-8]
     108:	e51b1008 	ldr	r1, [fp, #-8]
     10c:	e3a0001b 	mov	r0, #27
     110:	eb0003ca 	bl	1040 <syscall>
     114:	e1a03000 	mov	r3, r0
     118:	e1a00003 	mov	r0, r3
     11c:	e24bd004 	sub	sp, fp, #4
     120:	e8bd8800 	pop	{fp, pc}

00000124 <pg_flags>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dd008 	sub	sp, sp, #8
     130:	e50b0008 	str	r0, [fp, #-8]
     134:	e51b1008 	ldr	r1, [fp, #-8]
     138:	e3a0001c 	mov	r0, #28
     13c:	eb0003bf 	bl	1040 <syscall>
     140:	e1a03000 	mov	r3, r0
     144:	e1a00003 	mov	r0, r3
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}

00000150 <kpt>:
     150:	e92d4800 	push	{fp, lr}
     154:	e28db004 	add	fp, sp, #4
     158:	e3a0001d 	mov	r0, #29
     15c:	eb0003b7 	bl	1040 <syscall>
     160:	e1a03000 	mov	r3, r0
     164:	e1a00003 	mov	r0, r3
     168:	e8bd8800 	pop	{fp, pc}

0000016c <ugetpid>:
     16c:	e92d4800 	push	{fp, lr}
     170:	e28db004 	add	fp, sp, #4
     174:	e3a0001e 	mov	r0, #30
     178:	eb0003b0 	bl	1040 <syscall>
     17c:	e1a03000 	mov	r3, r0
     180:	e1a00003 	mov	r0, r3
     184:	e8bd8800 	pop	{fp, pc}

00000188 <strcpy>:
     188:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     18c:	e28db000 	add	fp, sp, #0
     190:	e24dd014 	sub	sp, sp, #20
     194:	e50b0010 	str	r0, [fp, #-16]
     198:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	e1a00000 	nop			@ (mov r0, r0)
     1a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1ac:	e2823001 	add	r3, r2, #1
     1b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b4:	e51b3010 	ldr	r3, [fp, #-16]
     1b8:	e2831001 	add	r1, r3, #1
     1bc:	e50b1010 	str	r1, [fp, #-16]
     1c0:	e5d22000 	ldrb	r2, [r2]
     1c4:	e5c32000 	strb	r2, [r3]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff4 	bne	1a8 <strcpy+0x20>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <strcmp>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd00c 	sub	sp, sp, #12
     1f4:	e50b0008 	str	r0, [fp, #-8]
     1f8:	e50b100c 	str	r1, [fp, #-12]
     1fc:	ea000005 	b	218 <strcmp+0x30>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	e51b300c 	ldr	r3, [fp, #-12]
     210:	e2833001 	add	r3, r3, #1
     214:	e50b300c 	str	r3, [fp, #-12]
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e3530000 	cmp	r3, #0
     224:	0a000005 	beq	240 <strcmp+0x58>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d32000 	ldrb	r2, [r3]
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e1520003 	cmp	r2, r3
     23c:	0affffef 	beq	200 <strcmp+0x18>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e1a02003 	mov	r2, r3
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e5d33000 	ldrb	r3, [r3]
     254:	e0423003 	sub	r3, r2, r3
     258:	e1a00003 	mov	r0, r3
     25c:	e28bd000 	add	sp, fp, #0
     260:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     264:	e12fff1e 	bx	lr

00000268 <strlen>:
     268:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     26c:	e28db000 	add	fp, sp, #0
     270:	e24dd014 	sub	sp, sp, #20
     274:	e50b0010 	str	r0, [fp, #-16]
     278:	e3a03000 	mov	r3, #0
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	ea000002 	b	290 <strlen+0x28>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e2833001 	add	r3, r3, #1
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e51b2010 	ldr	r2, [fp, #-16]
     298:	e0823003 	add	r3, r2, r3
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e3530000 	cmp	r3, #0
     2a4:	1afffff6 	bne	284 <strlen+0x1c>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e1a00003 	mov	r0, r3
     2b0:	e28bd000 	add	sp, fp, #0
     2b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2b8:	e12fff1e 	bx	lr

000002bc <memset>:
     2bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c0:	e28db000 	add	fp, sp, #0
     2c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d8:	e50b3008 	str	r3, [fp, #-8]
     2dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2e0:	e54b300d 	strb	r3, [fp, #-13]
     2e4:	e55b200d 	ldrb	r2, [fp, #-13]
     2e8:	e1a03002 	mov	r3, r2
     2ec:	e1a03403 	lsl	r3, r3, #8
     2f0:	e0833002 	add	r3, r3, r2
     2f4:	e1a03803 	lsl	r3, r3, #16
     2f8:	e1a02003 	mov	r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1a03403 	lsl	r3, r3, #8
     304:	e1822003 	orr	r2, r2, r3
     308:	e55b300d 	ldrb	r3, [fp, #-13]
     30c:	e1823003 	orr	r3, r2, r3
     310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     314:	ea000008 	b	33c <memset+0x80>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e55b200d 	ldrb	r2, [fp, #-13]
     320:	e5c32000 	strb	r2, [r3]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e2433001 	sub	r3, r3, #1
     32c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2833001 	add	r3, r3, #1
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     340:	e3530000 	cmp	r3, #0
     344:	0a000003 	beq	358 <memset+0x9c>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2033003 	and	r3, r3, #3
     350:	e3530000 	cmp	r3, #0
     354:	1affffef 	bne	318 <memset+0x5c>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e50b300c 	str	r3, [fp, #-12]
     360:	ea000008 	b	388 <memset+0xcc>
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     36c:	e5832000 	str	r2, [r3]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e2433004 	sub	r3, r3, #4
     378:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e2833004 	add	r3, r3, #4
     384:	e50b300c 	str	r3, [fp, #-12]
     388:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     38c:	e3530003 	cmp	r3, #3
     390:	8afffff3 	bhi	364 <memset+0xa8>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	ea000008 	b	3c4 <memset+0x108>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e55b200d 	ldrb	r2, [fp, #-13]
     3a8:	e5c32000 	strb	r2, [r3]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e2433001 	sub	r3, r3, #1
     3b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e2833001 	add	r3, r3, #1
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c8:	e3530000 	cmp	r3, #0
     3cc:	1afffff3 	bne	3a0 <memset+0xe4>
     3d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d4:	e1a00003 	mov	r0, r3
     3d8:	e28bd000 	add	sp, fp, #0
     3dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3e0:	e12fff1e 	bx	lr

000003e4 <strchr>:
     3e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e8:	e28db000 	add	fp, sp, #0
     3ec:	e24dd00c 	sub	sp, sp, #12
     3f0:	e50b0008 	str	r0, [fp, #-8]
     3f4:	e1a03001 	mov	r3, r1
     3f8:	e54b3009 	strb	r3, [fp, #-9]
     3fc:	ea000009 	b	428 <strchr+0x44>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e55b2009 	ldrb	r2, [fp, #-9]
     40c:	e1520003 	cmp	r2, r3
     410:	1a000001 	bne	41c <strchr+0x38>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	ea000007 	b	43c <strchr+0x58>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e3530000 	cmp	r3, #0
     434:	1afffff1 	bne	400 <strchr+0x1c>
     438:	e3a03000 	mov	r3, #0
     43c:	e1a00003 	mov	r0, r3
     440:	e28bd000 	add	sp, fp, #0
     444:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     448:	e12fff1e 	bx	lr

0000044c <gets>:
     44c:	e92d4800 	push	{fp, lr}
     450:	e28db004 	add	fp, sp, #4
     454:	e24dd018 	sub	sp, sp, #24
     458:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     45c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     460:	e3a03000 	mov	r3, #0
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	ea000016 	b	4c8 <gets+0x7c>
     46c:	e24b300d 	sub	r3, fp, #13
     470:	e3a02001 	mov	r2, #1
     474:	e1a01003 	mov	r1, r3
     478:	e3a00000 	mov	r0, #0
     47c:	eb0001cf 	bl	bc0 <read>
     480:	e50b000c 	str	r0, [fp, #-12]
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e3530000 	cmp	r3, #0
     48c:	da000013 	ble	4e0 <gets+0x94>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e2832001 	add	r2, r3, #1
     498:	e50b2008 	str	r2, [fp, #-8]
     49c:	e1a02003 	mov	r2, r3
     4a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a4:	e0833002 	add	r3, r3, r2
     4a8:	e55b200d 	ldrb	r2, [fp, #-13]
     4ac:	e5c32000 	strb	r2, [r3]
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000a 	cmp	r3, #10
     4b8:	0a000009 	beq	4e4 <gets+0x98>
     4bc:	e55b300d 	ldrb	r3, [fp, #-13]
     4c0:	e353000d 	cmp	r3, #13
     4c4:	0a000006 	beq	4e4 <gets+0x98>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4d4:	e1520003 	cmp	r2, r3
     4d8:	caffffe3 	bgt	46c <gets+0x20>
     4dc:	ea000000 	b	4e4 <gets+0x98>
     4e0:	e1a00000 	nop			@ (mov r0, r0)
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4ec:	e0823003 	add	r3, r2, r3
     4f0:	e3a02000 	mov	r2, #0
     4f4:	e5c32000 	strb	r2, [r3]
     4f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4fc:	e1a00003 	mov	r0, r3
     500:	e24bd004 	sub	sp, fp, #4
     504:	e8bd8800 	pop	{fp, pc}

00000508 <stat>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd010 	sub	sp, sp, #16
     514:	e50b0010 	str	r0, [fp, #-16]
     518:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     51c:	e3a01000 	mov	r1, #0
     520:	e51b0010 	ldr	r0, [fp, #-16]
     524:	eb0001d2 	bl	c74 <open>
     528:	e50b0008 	str	r0, [fp, #-8]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e3530000 	cmp	r3, #0
     534:	aa000001 	bge	540 <stat+0x38>
     538:	e3e03000 	mvn	r3, #0
     53c:	ea000006 	b	55c <stat+0x54>
     540:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb0001e4 	bl	ce0 <fstat>
     54c:	e50b000c 	str	r0, [fp, #-12]
     550:	e51b0008 	ldr	r0, [fp, #-8]
     554:	eb0001ab 	bl	c08 <close>
     558:	e51b300c 	ldr	r3, [fp, #-12]
     55c:	e1a00003 	mov	r0, r3
     560:	e24bd004 	sub	sp, fp, #4
     564:	e8bd8800 	pop	{fp, pc}

00000568 <atoi>:
     568:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     56c:	e28db000 	add	fp, sp, #0
     570:	e24dd014 	sub	sp, sp, #20
     574:	e50b0010 	str	r0, [fp, #-16]
     578:	e3a03000 	mov	r3, #0
     57c:	e50b3008 	str	r3, [fp, #-8]
     580:	ea00000c 	b	5b8 <atoi+0x50>
     584:	e51b2008 	ldr	r2, [fp, #-8]
     588:	e1a03002 	mov	r3, r2
     58c:	e1a03103 	lsl	r3, r3, #2
     590:	e0833002 	add	r3, r3, r2
     594:	e1a03083 	lsl	r3, r3, #1
     598:	e1a01003 	mov	r1, r3
     59c:	e51b3010 	ldr	r3, [fp, #-16]
     5a0:	e2832001 	add	r2, r3, #1
     5a4:	e50b2010 	str	r2, [fp, #-16]
     5a8:	e5d33000 	ldrb	r3, [r3]
     5ac:	e0813003 	add	r3, r1, r3
     5b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e353002f 	cmp	r3, #47	@ 0x2f
     5c4:	9a000003 	bls	5d8 <atoi+0x70>
     5c8:	e51b3010 	ldr	r3, [fp, #-16]
     5cc:	e5d33000 	ldrb	r3, [r3]
     5d0:	e3530039 	cmp	r3, #57	@ 0x39
     5d4:	9affffea 	bls	584 <atoi+0x1c>
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e1a00003 	mov	r0, r3
     5e0:	e28bd000 	add	sp, fp, #0
     5e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <memmove>:
     5ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f0:	e28db000 	add	fp, sp, #0
     5f4:	e24dd01c 	sub	sp, sp, #28
     5f8:	e50b0010 	str	r0, [fp, #-16]
     5fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     600:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e50b3008 	str	r3, [fp, #-8]
     60c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     610:	e50b300c 	str	r3, [fp, #-12]
     614:	ea000007 	b	638 <memmove+0x4c>
     618:	e51b200c 	ldr	r2, [fp, #-12]
     61c:	e2823001 	add	r3, r2, #1
     620:	e50b300c 	str	r3, [fp, #-12]
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e2831001 	add	r1, r3, #1
     62c:	e50b1008 	str	r1, [fp, #-8]
     630:	e5d22000 	ldrb	r2, [r2]
     634:	e5c32000 	strb	r2, [r3]
     638:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     63c:	e2432001 	sub	r2, r3, #1
     640:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     644:	e3530000 	cmp	r3, #0
     648:	cafffff2 	bgt	618 <memmove+0x2c>
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e1a00003 	mov	r0, r3
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <strncmp>:
     660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     664:	e28db000 	add	fp, sp, #0
     668:	e24dd014 	sub	sp, sp, #20
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e50b100c 	str	r1, [fp, #-12]
     674:	e50b2010 	str	r2, [fp, #-16]
     678:	ea000008 	b	6a0 <strncmp+0x40>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2833001 	add	r3, r3, #1
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	e51b300c 	ldr	r3, [fp, #-12]
     68c:	e2833001 	add	r3, r3, #1
     690:	e50b300c 	str	r3, [fp, #-12]
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e2433001 	sub	r3, r3, #1
     69c:	e50b3010 	str	r3, [fp, #-16]
     6a0:	e51b3010 	ldr	r3, [fp, #-16]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	da00000d 	ble	6e4 <strncmp+0x84>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e3530000 	cmp	r3, #0
     6b8:	0a000009 	beq	6e4 <strncmp+0x84>
     6bc:	e51b300c 	ldr	r3, [fp, #-12]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e3530000 	cmp	r3, #0
     6c8:	0a000005 	beq	6e4 <strncmp+0x84>
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e5d32000 	ldrb	r2, [r3]
     6d4:	e51b300c 	ldr	r3, [fp, #-12]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e1520003 	cmp	r2, r3
     6e0:	0affffe5 	beq	67c <strncmp+0x1c>
     6e4:	e51b3010 	ldr	r3, [fp, #-16]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	1a000001 	bne	6f8 <strncmp+0x98>
     6f0:	e3a03000 	mov	r3, #0
     6f4:	ea000005 	b	710 <strncmp+0xb0>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5d33000 	ldrb	r3, [r3]
     700:	e1a02003 	mov	r2, r3
     704:	e51b300c 	ldr	r3, [fp, #-12]
     708:	e5d33000 	ldrb	r3, [r3]
     70c:	e0423003 	sub	r3, r2, r3
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <strncpy>:
     720:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     724:	e28db000 	add	fp, sp, #0
     728:	e24dd01c 	sub	sp, sp, #28
     72c:	e50b0010 	str	r0, [fp, #-16]
     730:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     734:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     738:	e51b3010 	ldr	r3, [fp, #-16]
     73c:	e50b3008 	str	r3, [fp, #-8]
     740:	ea00000a 	b	770 <strncpy+0x50>
     744:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     748:	e2823001 	add	r3, r2, #1
     74c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e2831001 	add	r1, r3, #1
     758:	e50b1008 	str	r1, [fp, #-8]
     75c:	e5d22000 	ldrb	r2, [r2]
     760:	e5c32000 	strb	r2, [r3]
     764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     768:	e2433001 	sub	r3, r3, #1
     76c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     770:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     774:	e3530000 	cmp	r3, #0
     778:	da00000c 	ble	7b0 <strncpy+0x90>
     77c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     780:	e5d33000 	ldrb	r3, [r3]
     784:	e3530000 	cmp	r3, #0
     788:	1affffed 	bne	744 <strncpy+0x24>
     78c:	ea000007 	b	7b0 <strncpy+0x90>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e2832001 	add	r2, r3, #1
     798:	e50b2008 	str	r2, [fp, #-8]
     79c:	e3a02000 	mov	r2, #0
     7a0:	e5c32000 	strb	r2, [r3]
     7a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a8:	e2433001 	sub	r3, r3, #1
     7ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7b4:	e3530000 	cmp	r3, #0
     7b8:	cafffff4 	bgt	790 <strncpy+0x70>
     7bc:	e51b3010 	ldr	r3, [fp, #-16]
     7c0:	e1a00003 	mov	r0, r3
     7c4:	e28bd000 	add	sp, fp, #0
     7c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <xchg>:
     7d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d4:	e28db000 	add	fp, sp, #0
     7d8:	e24dd014 	sub	sp, sp, #20
     7dc:	e50b0010 	str	r0, [fp, #-16]
     7e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7e4:	e51b2010 	ldr	r2, [fp, #-16]
     7e8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7ec:	e1023091 	swp	r3, r1, [r2]
     7f0:	e50b3008 	str	r3, [fp, #-8]
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e1a00003 	mov	r0, r3
     7fc:	e28bd000 	add	sp, fp, #0
     800:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <initiateLock>:
     808:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     80c:	e28db000 	add	fp, sp, #0
     810:	e24dd00c 	sub	sp, sp, #12
     814:	e50b0008 	str	r0, [fp, #-8]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e3a02000 	mov	r2, #0
     820:	e5832000 	str	r2, [r3]
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e3a02001 	mov	r2, #1
     82c:	e5832004 	str	r2, [r3, #4]
     830:	e1a00000 	nop			@ (mov r0, r0)
     834:	e28bd000 	add	sp, fp, #0
     838:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <acquireLock>:
     840:	e92d4800 	push	{fp, lr}
     844:	e28db004 	add	fp, sp, #4
     848:	e24dd008 	sub	sp, sp, #8
     84c:	e50b0008 	str	r0, [fp, #-8]
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e5933004 	ldr	r3, [r3, #4]
     858:	e3530000 	cmp	r3, #0
     85c:	0a000008 	beq	884 <acquireLock+0x44>
     860:	e1a00000 	nop			@ (mov r0, r0)
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e3a01001 	mov	r1, #1
     86c:	e1a00003 	mov	r0, r3
     870:	ebffffd6 	bl	7d0 <xchg>
     874:	e1a03000 	mov	r3, r0
     878:	e3530000 	cmp	r3, #0
     87c:	1afffff8 	bne	864 <acquireLock+0x24>
     880:	ea000000 	b	888 <acquireLock+0x48>
     884:	e1a00000 	nop			@ (mov r0, r0)
     888:	e24bd004 	sub	sp, fp, #4
     88c:	e8bd8800 	pop	{fp, pc}

00000890 <releaseLock>:
     890:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     894:	e28db000 	add	fp, sp, #0
     898:	e24dd00c 	sub	sp, sp, #12
     89c:	e50b0008 	str	r0, [fp, #-8]
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e5933004 	ldr	r3, [r3, #4]
     8a8:	e3530000 	cmp	r3, #0
     8ac:	0a000006 	beq	8cc <releaseLock+0x3c>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5933000 	ldr	r3, [r3]
     8b8:	e3530001 	cmp	r3, #1
     8bc:	1a000002 	bne	8cc <releaseLock+0x3c>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e3a02000 	mov	r2, #0
     8c8:	e5832000 	str	r2, [r3]
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e28bd000 	add	sp, fp, #0
     8d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <initiateCondVar>:
     8dc:	e92d4800 	push	{fp, lr}
     8e0:	e28db004 	add	fp, sp, #4
     8e4:	e24dd008 	sub	sp, sp, #8
     8e8:	e50b0008 	str	r0, [fp, #-8]
     8ec:	eb0001b8 	bl	fd4 <getChannel>
     8f0:	e1a02000 	mov	r2, r0
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e5832000 	str	r2, [r3]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e3a02001 	mov	r2, #1
     904:	e5832004 	str	r2, [r3, #4]
     908:	e1a00000 	nop			@ (mov r0, r0)
     90c:	e24bd004 	sub	sp, fp, #4
     910:	e8bd8800 	pop	{fp, pc}

00000914 <condWait>:
     914:	e92d4800 	push	{fp, lr}
     918:	e28db004 	add	fp, sp, #4
     91c:	e24dd008 	sub	sp, sp, #8
     920:	e50b0008 	str	r0, [fp, #-8]
     924:	e50b100c 	str	r1, [fp, #-12]
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e5933004 	ldr	r3, [r3, #4]
     930:	e3530000 	cmp	r3, #0
     934:	0a00000c 	beq	96c <condWait+0x58>
     938:	e51b300c 	ldr	r3, [fp, #-12]
     93c:	e5933004 	ldr	r3, [r3, #4]
     940:	e3530000 	cmp	r3, #0
     944:	0a000008 	beq	96c <condWait+0x58>
     948:	e51b000c 	ldr	r0, [fp, #-12]
     94c:	ebffffcf 	bl	890 <releaseLock>
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e5933000 	ldr	r3, [r3]
     958:	e1a00003 	mov	r0, r3
     95c:	eb000193 	bl	fb0 <sleepChan>
     960:	e51b000c 	ldr	r0, [fp, #-12]
     964:	ebffffb5 	bl	840 <acquireLock>
     968:	ea000000 	b	970 <condWait+0x5c>
     96c:	e1a00000 	nop			@ (mov r0, r0)
     970:	e24bd004 	sub	sp, fp, #4
     974:	e8bd8800 	pop	{fp, pc}

00000978 <broadcast>:
     978:	e92d4800 	push	{fp, lr}
     97c:	e28db004 	add	fp, sp, #4
     980:	e24dd008 	sub	sp, sp, #8
     984:	e50b0008 	str	r0, [fp, #-8]
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e5933004 	ldr	r3, [r3, #4]
     990:	e3530000 	cmp	r3, #0
     994:	0a000004 	beq	9ac <broadcast+0x34>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5933000 	ldr	r3, [r3]
     9a0:	e1a00003 	mov	r0, r3
     9a4:	eb000193 	bl	ff8 <sigChan>
     9a8:	ea000000 	b	9b0 <broadcast+0x38>
     9ac:	e1a00000 	nop			@ (mov r0, r0)
     9b0:	e24bd004 	sub	sp, fp, #4
     9b4:	e8bd8800 	pop	{fp, pc}

000009b8 <signal>:
     9b8:	e92d4800 	push	{fp, lr}
     9bc:	e28db004 	add	fp, sp, #4
     9c0:	e24dd008 	sub	sp, sp, #8
     9c4:	e50b0008 	str	r0, [fp, #-8]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e5933004 	ldr	r3, [r3, #4]
     9d0:	e3530000 	cmp	r3, #0
     9d4:	0a000004 	beq	9ec <signal+0x34>
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e5933000 	ldr	r3, [r3]
     9e0:	e1a00003 	mov	r0, r3
     9e4:	eb00018c 	bl	101c <sigOneChan>
     9e8:	ea000000 	b	9f0 <signal+0x38>
     9ec:	e1a00000 	nop			@ (mov r0, r0)
     9f0:	e24bd004 	sub	sp, fp, #4
     9f4:	e8bd8800 	pop	{fp, pc}

000009f8 <semInit>:
     9f8:	e92d4800 	push	{fp, lr}
     9fc:	e28db004 	add	fp, sp, #4
     a00:	e24dd008 	sub	sp, sp, #8
     a04:	e50b0008 	str	r0, [fp, #-8]
     a08:	e50b100c 	str	r1, [fp, #-12]
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e2833004 	add	r3, r3, #4
     a14:	e1a00003 	mov	r0, r3
     a18:	ebffff7a 	bl	808 <initiateLock>
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e283300c 	add	r3, r3, #12
     a24:	e1a00003 	mov	r0, r3
     a28:	ebffffab 	bl	8dc <initiateCondVar>
     a2c:	e51b3008 	ldr	r3, [fp, #-8]
     a30:	e51b200c 	ldr	r2, [fp, #-12]
     a34:	e5832000 	str	r2, [r3]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e3a02001 	mov	r2, #1
     a40:	e5832014 	str	r2, [r3, #20]
     a44:	e1a00000 	nop			@ (mov r0, r0)
     a48:	e24bd004 	sub	sp, fp, #4
     a4c:	e8bd8800 	pop	{fp, pc}

00000a50 <semUp>:
     a50:	e92d4800 	push	{fp, lr}
     a54:	e28db004 	add	fp, sp, #4
     a58:	e24dd008 	sub	sp, sp, #8
     a5c:	e50b0008 	str	r0, [fp, #-8]
     a60:	e51b3008 	ldr	r3, [fp, #-8]
     a64:	e2833004 	add	r3, r3, #4
     a68:	e1a00003 	mov	r0, r3
     a6c:	ebffff73 	bl	840 <acquireLock>
     a70:	e51b3008 	ldr	r3, [fp, #-8]
     a74:	e5933000 	ldr	r3, [r3]
     a78:	e2832001 	add	r2, r3, #1
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e5832000 	str	r2, [r3]
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e283300c 	add	r3, r3, #12
     a8c:	e1a00003 	mov	r0, r3
     a90:	ebffffc8 	bl	9b8 <signal>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e2833004 	add	r3, r3, #4
     a9c:	e1a00003 	mov	r0, r3
     aa0:	ebffff7a 	bl	890 <releaseLock>
     aa4:	e1a00000 	nop			@ (mov r0, r0)
     aa8:	e24bd004 	sub	sp, fp, #4
     aac:	e8bd8800 	pop	{fp, pc}

00000ab0 <semDown>:
     ab0:	e92d4800 	push	{fp, lr}
     ab4:	e28db004 	add	fp, sp, #4
     ab8:	e24dd008 	sub	sp, sp, #8
     abc:	e50b0008 	str	r0, [fp, #-8]
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e2833004 	add	r3, r3, #4
     ac8:	e1a00003 	mov	r0, r3
     acc:	ebffff5b 	bl	840 <acquireLock>
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e5933000 	ldr	r3, [r3]
     ad8:	e2432001 	sub	r2, r3, #1
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e5832000 	str	r2, [r3]
     ae4:	ea000006 	b	b04 <semDown+0x54>
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e283200c 	add	r2, r3, #12
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e2833004 	add	r3, r3, #4
     af8:	e1a01003 	mov	r1, r3
     afc:	e1a00002 	mov	r0, r2
     b00:	ebffff83 	bl	914 <condWait>
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e5933000 	ldr	r3, [r3]
     b0c:	e3530000 	cmp	r3, #0
     b10:	bafffff4 	blt	ae8 <semDown+0x38>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e2833004 	add	r3, r3, #4
     b1c:	e1a00003 	mov	r0, r3
     b20:	ebffff5a 	bl	890 <releaseLock>
     b24:	e1a00000 	nop			@ (mov r0, r0)
     b28:	e24bd004 	sub	sp, fp, #4
     b2c:	e8bd8800 	pop	{fp, pc}

00000b30 <fork>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00001 	mov	r0, #1
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <exit>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00002 	mov	r0, #2
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <wait>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00003 	mov	r0, #3
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <pipe>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00004 	mov	r0, #4
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <read>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00005 	mov	r0, #5
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <write>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00010 	mov	r0, #16
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <close>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00015 	mov	r0, #21
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <kill>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00006 	mov	r0, #6
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <exec>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00007 	mov	r0, #7
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <open>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a0000f 	mov	r0, #15
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <mknod>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00011 	mov	r0, #17
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <unlink>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00012 	mov	r0, #18
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <fstat>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00008 	mov	r0, #8
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <link>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00013 	mov	r0, #19
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <mkdir>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a00014 	mov	r0, #20
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <chdir>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a00009 	mov	r0, #9
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <dup>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0000a 	mov	r0, #10
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <getpid>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0000b 	mov	r0, #11
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <sbrk>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a0000c 	mov	r0, #12
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <sleep>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a0000d 	mov	r0, #13
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <uptime>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a0000e 	mov	r0, #14
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <proclist>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00016 	mov	r0, #22
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <settickets>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a00017 	mov	r0, #23
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <srand>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a00018 	mov	r0, #24
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <getpinfo>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a00019 	mov	r0, #25
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <print_pt>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a0001f 	mov	r0, #31
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <thread_create>:
     ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     edc:	e1a04003 	mov	r4, r3
     ee0:	e1a03002 	mov	r3, r2
     ee4:	e1a02001 	mov	r2, r1
     ee8:	e1a01000 	mov	r1, r0
     eec:	e3a00020 	mov	r0, #32
     ef0:	ef000000 	svc	0x00000000
     ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef8:	e12fff1e 	bx	lr

00000efc <thread_exit>:
     efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f00:	e1a04003 	mov	r4, r3
     f04:	e1a03002 	mov	r3, r2
     f08:	e1a02001 	mov	r2, r1
     f0c:	e1a01000 	mov	r1, r0
     f10:	e3a00021 	mov	r0, #33	@ 0x21
     f14:	ef000000 	svc	0x00000000
     f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f1c:	e12fff1e 	bx	lr

00000f20 <thread_join>:
     f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f24:	e1a04003 	mov	r4, r3
     f28:	e1a03002 	mov	r3, r2
     f2c:	e1a02001 	mov	r2, r1
     f30:	e1a01000 	mov	r1, r0
     f34:	e3a00022 	mov	r0, #34	@ 0x22
     f38:	ef000000 	svc	0x00000000
     f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f40:	e12fff1e 	bx	lr

00000f44 <waitpid>:
     f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f48:	e1a04003 	mov	r4, r3
     f4c:	e1a03002 	mov	r3, r2
     f50:	e1a02001 	mov	r2, r1
     f54:	e1a01000 	mov	r1, r0
     f58:	e3a00023 	mov	r0, #35	@ 0x23
     f5c:	ef000000 	svc	0x00000000
     f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f64:	e12fff1e 	bx	lr

00000f68 <barrier_init>:
     f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f6c:	e1a04003 	mov	r4, r3
     f70:	e1a03002 	mov	r3, r2
     f74:	e1a02001 	mov	r2, r1
     f78:	e1a01000 	mov	r1, r0
     f7c:	e3a00024 	mov	r0, #36	@ 0x24
     f80:	ef000000 	svc	0x00000000
     f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f88:	e12fff1e 	bx	lr

00000f8c <barrier_check>:
     f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f90:	e1a04003 	mov	r4, r3
     f94:	e1a03002 	mov	r3, r2
     f98:	e1a02001 	mov	r2, r1
     f9c:	e1a01000 	mov	r1, r0
     fa0:	e3a00025 	mov	r0, #37	@ 0x25
     fa4:	ef000000 	svc	0x00000000
     fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fac:	e12fff1e 	bx	lr

00000fb0 <sleepChan>:
     fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb4:	e1a04003 	mov	r4, r3
     fb8:	e1a03002 	mov	r3, r2
     fbc:	e1a02001 	mov	r2, r1
     fc0:	e1a01000 	mov	r1, r0
     fc4:	e3a00026 	mov	r0, #38	@ 0x26
     fc8:	ef000000 	svc	0x00000000
     fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd0:	e12fff1e 	bx	lr

00000fd4 <getChannel>:
     fd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd8:	e1a04003 	mov	r4, r3
     fdc:	e1a03002 	mov	r3, r2
     fe0:	e1a02001 	mov	r2, r1
     fe4:	e1a01000 	mov	r1, r0
     fe8:	e3a00027 	mov	r0, #39	@ 0x27
     fec:	ef000000 	svc	0x00000000
     ff0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff4:	e12fff1e 	bx	lr

00000ff8 <sigChan>:
     ff8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ffc:	e1a04003 	mov	r4, r3
    1000:	e1a03002 	mov	r3, r2
    1004:	e1a02001 	mov	r2, r1
    1008:	e1a01000 	mov	r1, r0
    100c:	e3a00028 	mov	r0, #40	@ 0x28
    1010:	ef000000 	svc	0x00000000
    1014:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1018:	e12fff1e 	bx	lr

0000101c <sigOneChan>:
    101c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1020:	e1a04003 	mov	r4, r3
    1024:	e1a03002 	mov	r3, r2
    1028:	e1a02001 	mov	r2, r1
    102c:	e1a01000 	mov	r1, r0
    1030:	e3a00029 	mov	r0, #41	@ 0x29
    1034:	ef000000 	svc	0x00000000
    1038:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    103c:	e12fff1e 	bx	lr

00001040 <syscall>:
    1040:	ef000000 	svc	0x00000000
    1044:	e12fff1e 	bx	lr

00001048 <putc>:
    1048:	e92d4800 	push	{fp, lr}
    104c:	e28db004 	add	fp, sp, #4
    1050:	e24dd008 	sub	sp, sp, #8
    1054:	e50b0008 	str	r0, [fp, #-8]
    1058:	e1a03001 	mov	r3, r1
    105c:	e54b3009 	strb	r3, [fp, #-9]
    1060:	e24b3009 	sub	r3, fp, #9
    1064:	e3a02001 	mov	r2, #1
    1068:	e1a01003 	mov	r1, r3
    106c:	e51b0008 	ldr	r0, [fp, #-8]
    1070:	ebfffedb 	bl	be4 <write>
    1074:	e1a00000 	nop			@ (mov r0, r0)
    1078:	e24bd004 	sub	sp, fp, #4
    107c:	e8bd8800 	pop	{fp, pc}

00001080 <printint>:
    1080:	e92d4800 	push	{fp, lr}
    1084:	e28db004 	add	fp, sp, #4
    1088:	e24dd030 	sub	sp, sp, #48	@ 0x30
    108c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1090:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1094:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1098:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    109c:	e3a03000 	mov	r3, #0
    10a0:	e50b300c 	str	r3, [fp, #-12]
    10a4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10a8:	e3530000 	cmp	r3, #0
    10ac:	0a000008 	beq	10d4 <printint+0x54>
    10b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10b4:	e3530000 	cmp	r3, #0
    10b8:	aa000005 	bge	10d4 <printint+0x54>
    10bc:	e3a03001 	mov	r3, #1
    10c0:	e50b300c 	str	r3, [fp, #-12]
    10c4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10c8:	e2633000 	rsb	r3, r3, #0
    10cc:	e50b3010 	str	r3, [fp, #-16]
    10d0:	ea000001 	b	10dc <printint+0x5c>
    10d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10d8:	e50b3010 	str	r3, [fp, #-16]
    10dc:	e3a03000 	mov	r3, #0
    10e0:	e50b3008 	str	r3, [fp, #-8]
    10e4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10e8:	e51b3010 	ldr	r3, [fp, #-16]
    10ec:	e1a01002 	mov	r1, r2
    10f0:	e1a00003 	mov	r0, r3
    10f4:	eb0001d5 	bl	1850 <__aeabi_uidivmod>
    10f8:	e1a03001 	mov	r3, r1
    10fc:	e1a01003 	mov	r1, r3
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e2832001 	add	r2, r3, #1
    1108:	e50b2008 	str	r2, [fp, #-8]
    110c:	e59f20a0 	ldr	r2, [pc, #160]	@ 11b4 <printint+0x134>
    1110:	e7d22001 	ldrb	r2, [r2, r1]
    1114:	e2433004 	sub	r3, r3, #4
    1118:	e083300b 	add	r3, r3, fp
    111c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1120:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1124:	e1a01003 	mov	r1, r3
    1128:	e51b0010 	ldr	r0, [fp, #-16]
    112c:	eb00018a 	bl	175c <__udivsi3>
    1130:	e1a03000 	mov	r3, r0
    1134:	e50b3010 	str	r3, [fp, #-16]
    1138:	e51b3010 	ldr	r3, [fp, #-16]
    113c:	e3530000 	cmp	r3, #0
    1140:	1affffe7 	bne	10e4 <printint+0x64>
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e3530000 	cmp	r3, #0
    114c:	0a00000e 	beq	118c <printint+0x10c>
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e2832001 	add	r2, r3, #1
    1158:	e50b2008 	str	r2, [fp, #-8]
    115c:	e2433004 	sub	r3, r3, #4
    1160:	e083300b 	add	r3, r3, fp
    1164:	e3a0202d 	mov	r2, #45	@ 0x2d
    1168:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    116c:	ea000006 	b	118c <printint+0x10c>
    1170:	e24b2020 	sub	r2, fp, #32
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e0823003 	add	r3, r2, r3
    117c:	e5d33000 	ldrb	r3, [r3]
    1180:	e1a01003 	mov	r1, r3
    1184:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1188:	ebffffae 	bl	1048 <putc>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e2433001 	sub	r3, r3, #1
    1194:	e50b3008 	str	r3, [fp, #-8]
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e3530000 	cmp	r3, #0
    11a0:	aafffff2 	bge	1170 <printint+0xf0>
    11a4:	e1a00000 	nop			@ (mov r0, r0)
    11a8:	e1a00000 	nop			@ (mov r0, r0)
    11ac:	e24bd004 	sub	sp, fp, #4
    11b0:	e8bd8800 	pop	{fp, pc}
    11b4:	00001908 	.word	0x00001908

000011b8 <printf>:
    11b8:	e92d000e 	push	{r1, r2, r3}
    11bc:	e92d4800 	push	{fp, lr}
    11c0:	e28db004 	add	fp, sp, #4
    11c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11c8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11cc:	e3a03000 	mov	r3, #0
    11d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11d4:	e28b3008 	add	r3, fp, #8
    11d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11dc:	e3a03000 	mov	r3, #0
    11e0:	e50b3010 	str	r3, [fp, #-16]
    11e4:	ea000074 	b	13bc <printf+0x204>
    11e8:	e59b2004 	ldr	r2, [fp, #4]
    11ec:	e51b3010 	ldr	r3, [fp, #-16]
    11f0:	e0823003 	add	r3, r2, r3
    11f4:	e5d33000 	ldrb	r3, [r3]
    11f8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1200:	e3530000 	cmp	r3, #0
    1204:	1a00000b 	bne	1238 <printf+0x80>
    1208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    120c:	e3530025 	cmp	r3, #37	@ 0x25
    1210:	1a000002 	bne	1220 <printf+0x68>
    1214:	e3a03025 	mov	r3, #37	@ 0x25
    1218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    121c:	ea000063 	b	13b0 <printf+0x1f8>
    1220:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1224:	e6ef3073 	uxtb	r3, r3
    1228:	e1a01003 	mov	r1, r3
    122c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1230:	ebffff84 	bl	1048 <putc>
    1234:	ea00005d 	b	13b0 <printf+0x1f8>
    1238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    123c:	e3530025 	cmp	r3, #37	@ 0x25
    1240:	1a00005a 	bne	13b0 <printf+0x1f8>
    1244:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1248:	e3530064 	cmp	r3, #100	@ 0x64
    124c:	1a00000a 	bne	127c <printf+0xc4>
    1250:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e1a01003 	mov	r1, r3
    125c:	e3a03001 	mov	r3, #1
    1260:	e3a0200a 	mov	r2, #10
    1264:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1268:	ebffff84 	bl	1080 <printint>
    126c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1270:	e2833004 	add	r3, r3, #4
    1274:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1278:	ea00004a 	b	13a8 <printf+0x1f0>
    127c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1280:	e3530078 	cmp	r3, #120	@ 0x78
    1284:	0a000002 	beq	1294 <printf+0xdc>
    1288:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e3530070 	cmp	r3, #112	@ 0x70
    1290:	1a00000a 	bne	12c0 <printf+0x108>
    1294:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e1a01003 	mov	r1, r3
    12a0:	e3a03000 	mov	r3, #0
    12a4:	e3a02010 	mov	r2, #16
    12a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12ac:	ebffff73 	bl	1080 <printint>
    12b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b4:	e2833004 	add	r3, r3, #4
    12b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12bc:	ea000039 	b	13a8 <printf+0x1f0>
    12c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c4:	e3530073 	cmp	r3, #115	@ 0x73
    12c8:	1a000018 	bne	1330 <printf+0x178>
    12cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12dc:	e2833004 	add	r3, r3, #4
    12e0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e3530000 	cmp	r3, #0
    12ec:	1a00000a 	bne	131c <printf+0x164>
    12f0:	e59f30f4 	ldr	r3, [pc, #244]	@ 13ec <printf+0x234>
    12f4:	e50b300c 	str	r3, [fp, #-12]
    12f8:	ea000007 	b	131c <printf+0x164>
    12fc:	e51b300c 	ldr	r3, [fp, #-12]
    1300:	e5d33000 	ldrb	r3, [r3]
    1304:	e1a01003 	mov	r1, r3
    1308:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    130c:	ebffff4d 	bl	1048 <putc>
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e2833001 	add	r3, r3, #1
    1318:	e50b300c 	str	r3, [fp, #-12]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5d33000 	ldrb	r3, [r3]
    1324:	e3530000 	cmp	r3, #0
    1328:	1afffff3 	bne	12fc <printf+0x144>
    132c:	ea00001d 	b	13a8 <printf+0x1f0>
    1330:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1334:	e3530063 	cmp	r3, #99	@ 0x63
    1338:	1a000009 	bne	1364 <printf+0x1ac>
    133c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e6ef3073 	uxtb	r3, r3
    1348:	e1a01003 	mov	r1, r3
    134c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1350:	ebffff3c 	bl	1048 <putc>
    1354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1358:	e2833004 	add	r3, r3, #4
    135c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1360:	ea000010 	b	13a8 <printf+0x1f0>
    1364:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1368:	e3530025 	cmp	r3, #37	@ 0x25
    136c:	1a000005 	bne	1388 <printf+0x1d0>
    1370:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e6ef3073 	uxtb	r3, r3
    1378:	e1a01003 	mov	r1, r3
    137c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1380:	ebffff30 	bl	1048 <putc>
    1384:	ea000007 	b	13a8 <printf+0x1f0>
    1388:	e3a01025 	mov	r1, #37	@ 0x25
    138c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1390:	ebffff2c 	bl	1048 <putc>
    1394:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1398:	e6ef3073 	uxtb	r3, r3
    139c:	e1a01003 	mov	r1, r3
    13a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a4:	ebffff27 	bl	1048 <putc>
    13a8:	e3a03000 	mov	r3, #0
    13ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13b0:	e51b3010 	ldr	r3, [fp, #-16]
    13b4:	e2833001 	add	r3, r3, #1
    13b8:	e50b3010 	str	r3, [fp, #-16]
    13bc:	e59b2004 	ldr	r2, [fp, #4]
    13c0:	e51b3010 	ldr	r3, [fp, #-16]
    13c4:	e0823003 	add	r3, r2, r3
    13c8:	e5d33000 	ldrb	r3, [r3]
    13cc:	e3530000 	cmp	r3, #0
    13d0:	1affff84 	bne	11e8 <printf+0x30>
    13d4:	e1a00000 	nop			@ (mov r0, r0)
    13d8:	e1a00000 	nop			@ (mov r0, r0)
    13dc:	e24bd004 	sub	sp, fp, #4
    13e0:	e8bd4800 	pop	{fp, lr}
    13e4:	e28dd00c 	add	sp, sp, #12
    13e8:	e12fff1e 	bx	lr
    13ec:	00001900 	.word	0x00001900

000013f0 <free>:
    13f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13f4:	e28db000 	add	fp, sp, #0
    13f8:	e24dd014 	sub	sp, sp, #20
    13fc:	e50b0010 	str	r0, [fp, #-16]
    1400:	e51b3010 	ldr	r3, [fp, #-16]
    1404:	e2433008 	sub	r3, r3, #8
    1408:	e50b300c 	str	r3, [fp, #-12]
    140c:	e59f3154 	ldr	r3, [pc, #340]	@ 1568 <free+0x178>
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e50b3008 	str	r3, [fp, #-8]
    1418:	ea000010 	b	1460 <free+0x70>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e51b2008 	ldr	r2, [fp, #-8]
    1428:	e1520003 	cmp	r2, r3
    142c:	3a000008 	bcc	1454 <free+0x64>
    1430:	e51b200c 	ldr	r2, [fp, #-12]
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e1520003 	cmp	r2, r3
    143c:	8a000010 	bhi	1484 <free+0x94>
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e51b200c 	ldr	r2, [fp, #-12]
    144c:	e1520003 	cmp	r2, r3
    1450:	3a00000b 	bcc	1484 <free+0x94>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5933000 	ldr	r3, [r3]
    145c:	e50b3008 	str	r3, [fp, #-8]
    1460:	e51b200c 	ldr	r2, [fp, #-12]
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e1520003 	cmp	r2, r3
    146c:	9affffea 	bls	141c <free+0x2c>
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e51b200c 	ldr	r2, [fp, #-12]
    147c:	e1520003 	cmp	r2, r3
    1480:	2affffe5 	bcs	141c <free+0x2c>
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e5933004 	ldr	r3, [r3, #4]
    148c:	e1a03183 	lsl	r3, r3, #3
    1490:	e51b200c 	ldr	r2, [fp, #-12]
    1494:	e0822003 	add	r2, r2, r3
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933000 	ldr	r3, [r3]
    14a0:	e1520003 	cmp	r2, r3
    14a4:	1a00000d 	bne	14e0 <free+0xf0>
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5932004 	ldr	r2, [r3, #4]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5933000 	ldr	r3, [r3]
    14b8:	e5933004 	ldr	r3, [r3, #4]
    14bc:	e0822003 	add	r2, r2, r3
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e5832004 	str	r2, [r3, #4]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5933000 	ldr	r3, [r3]
    14d0:	e5932000 	ldr	r2, [r3]
    14d4:	e51b300c 	ldr	r3, [fp, #-12]
    14d8:	e5832000 	str	r2, [r3]
    14dc:	ea000003 	b	14f0 <free+0x100>
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e5932000 	ldr	r2, [r3]
    14e8:	e51b300c 	ldr	r3, [fp, #-12]
    14ec:	e5832000 	str	r2, [r3]
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5933004 	ldr	r3, [r3, #4]
    14f8:	e1a03183 	lsl	r3, r3, #3
    14fc:	e51b2008 	ldr	r2, [fp, #-8]
    1500:	e0823003 	add	r3, r2, r3
    1504:	e51b200c 	ldr	r2, [fp, #-12]
    1508:	e1520003 	cmp	r2, r3
    150c:	1a00000b 	bne	1540 <free+0x150>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5932004 	ldr	r2, [r3, #4]
    1518:	e51b300c 	ldr	r3, [fp, #-12]
    151c:	e5933004 	ldr	r3, [r3, #4]
    1520:	e0822003 	add	r2, r2, r3
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5832004 	str	r2, [r3, #4]
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5932000 	ldr	r2, [r3]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5832000 	str	r2, [r3]
    153c:	ea000002 	b	154c <free+0x15c>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e51b200c 	ldr	r2, [fp, #-12]
    1548:	e5832000 	str	r2, [r3]
    154c:	e59f2014 	ldr	r2, [pc, #20]	@ 1568 <free+0x178>
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e5823000 	str	r3, [r2]
    1558:	e1a00000 	nop			@ (mov r0, r0)
    155c:	e28bd000 	add	sp, fp, #0
    1560:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1564:	e12fff1e 	bx	lr
    1568:	00001924 	.word	0x00001924

0000156c <morecore>:
    156c:	e92d4800 	push	{fp, lr}
    1570:	e28db004 	add	fp, sp, #4
    1574:	e24dd010 	sub	sp, sp, #16
    1578:	e50b0010 	str	r0, [fp, #-16]
    157c:	e51b3010 	ldr	r3, [fp, #-16]
    1580:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1584:	2a000001 	bcs	1590 <morecore+0x24>
    1588:	e3a03a01 	mov	r3, #4096	@ 0x1000
    158c:	e50b3010 	str	r3, [fp, #-16]
    1590:	e51b3010 	ldr	r3, [fp, #-16]
    1594:	e1a03183 	lsl	r3, r3, #3
    1598:	e1a00003 	mov	r0, r3
    159c:	ebfffe05 	bl	db8 <sbrk>
    15a0:	e50b0008 	str	r0, [fp, #-8]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e3730001 	cmn	r3, #1
    15ac:	1a000001 	bne	15b8 <morecore+0x4c>
    15b0:	e3a03000 	mov	r3, #0
    15b4:	ea00000a 	b	15e4 <morecore+0x78>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e50b300c 	str	r3, [fp, #-12]
    15c0:	e51b300c 	ldr	r3, [fp, #-12]
    15c4:	e51b2010 	ldr	r2, [fp, #-16]
    15c8:	e5832004 	str	r2, [r3, #4]
    15cc:	e51b300c 	ldr	r3, [fp, #-12]
    15d0:	e2833008 	add	r3, r3, #8
    15d4:	e1a00003 	mov	r0, r3
    15d8:	ebffff84 	bl	13f0 <free>
    15dc:	e59f300c 	ldr	r3, [pc, #12]	@ 15f0 <morecore+0x84>
    15e0:	e5933000 	ldr	r3, [r3]
    15e4:	e1a00003 	mov	r0, r3
    15e8:	e24bd004 	sub	sp, fp, #4
    15ec:	e8bd8800 	pop	{fp, pc}
    15f0:	00001924 	.word	0x00001924

000015f4 <malloc>:
    15f4:	e92d4800 	push	{fp, lr}
    15f8:	e28db004 	add	fp, sp, #4
    15fc:	e24dd018 	sub	sp, sp, #24
    1600:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1604:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1608:	e2833007 	add	r3, r3, #7
    160c:	e1a031a3 	lsr	r3, r3, #3
    1610:	e2833001 	add	r3, r3, #1
    1614:	e50b3010 	str	r3, [fp, #-16]
    1618:	e59f3134 	ldr	r3, [pc, #308]	@ 1754 <malloc+0x160>
    161c:	e5933000 	ldr	r3, [r3]
    1620:	e50b300c 	str	r3, [fp, #-12]
    1624:	e51b300c 	ldr	r3, [fp, #-12]
    1628:	e3530000 	cmp	r3, #0
    162c:	1a00000b 	bne	1660 <malloc+0x6c>
    1630:	e59f3120 	ldr	r3, [pc, #288]	@ 1758 <malloc+0x164>
    1634:	e50b300c 	str	r3, [fp, #-12]
    1638:	e59f2114 	ldr	r2, [pc, #276]	@ 1754 <malloc+0x160>
    163c:	e51b300c 	ldr	r3, [fp, #-12]
    1640:	e5823000 	str	r3, [r2]
    1644:	e59f3108 	ldr	r3, [pc, #264]	@ 1754 <malloc+0x160>
    1648:	e5933000 	ldr	r3, [r3]
    164c:	e59f2104 	ldr	r2, [pc, #260]	@ 1758 <malloc+0x164>
    1650:	e5823000 	str	r3, [r2]
    1654:	e59f30fc 	ldr	r3, [pc, #252]	@ 1758 <malloc+0x164>
    1658:	e3a02000 	mov	r2, #0
    165c:	e5832004 	str	r2, [r3, #4]
    1660:	e51b300c 	ldr	r3, [fp, #-12]
    1664:	e5933000 	ldr	r3, [r3]
    1668:	e50b3008 	str	r3, [fp, #-8]
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e5933004 	ldr	r3, [r3, #4]
    1674:	e51b2010 	ldr	r2, [fp, #-16]
    1678:	e1520003 	cmp	r2, r3
    167c:	8a00001e 	bhi	16fc <malloc+0x108>
    1680:	e51b3008 	ldr	r3, [fp, #-8]
    1684:	e5933004 	ldr	r3, [r3, #4]
    1688:	e51b2010 	ldr	r2, [fp, #-16]
    168c:	e1520003 	cmp	r2, r3
    1690:	1a000004 	bne	16a8 <malloc+0xb4>
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e5932000 	ldr	r2, [r3]
    169c:	e51b300c 	ldr	r3, [fp, #-12]
    16a0:	e5832000 	str	r2, [r3]
    16a4:	ea00000e 	b	16e4 <malloc+0xf0>
    16a8:	e51b3008 	ldr	r3, [fp, #-8]
    16ac:	e5932004 	ldr	r2, [r3, #4]
    16b0:	e51b3010 	ldr	r3, [fp, #-16]
    16b4:	e0422003 	sub	r2, r2, r3
    16b8:	e51b3008 	ldr	r3, [fp, #-8]
    16bc:	e5832004 	str	r2, [r3, #4]
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e5933004 	ldr	r3, [r3, #4]
    16c8:	e1a03183 	lsl	r3, r3, #3
    16cc:	e51b2008 	ldr	r2, [fp, #-8]
    16d0:	e0823003 	add	r3, r2, r3
    16d4:	e50b3008 	str	r3, [fp, #-8]
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e51b2010 	ldr	r2, [fp, #-16]
    16e0:	e5832004 	str	r2, [r3, #4]
    16e4:	e59f2068 	ldr	r2, [pc, #104]	@ 1754 <malloc+0x160>
    16e8:	e51b300c 	ldr	r3, [fp, #-12]
    16ec:	e5823000 	str	r3, [r2]
    16f0:	e51b3008 	ldr	r3, [fp, #-8]
    16f4:	e2833008 	add	r3, r3, #8
    16f8:	ea000012 	b	1748 <malloc+0x154>
    16fc:	e59f3050 	ldr	r3, [pc, #80]	@ 1754 <malloc+0x160>
    1700:	e5933000 	ldr	r3, [r3]
    1704:	e51b2008 	ldr	r2, [fp, #-8]
    1708:	e1520003 	cmp	r2, r3
    170c:	1a000007 	bne	1730 <malloc+0x13c>
    1710:	e51b0010 	ldr	r0, [fp, #-16]
    1714:	ebffff94 	bl	156c <morecore>
    1718:	e50b0008 	str	r0, [fp, #-8]
    171c:	e51b3008 	ldr	r3, [fp, #-8]
    1720:	e3530000 	cmp	r3, #0
    1724:	1a000001 	bne	1730 <malloc+0x13c>
    1728:	e3a03000 	mov	r3, #0
    172c:	ea000005 	b	1748 <malloc+0x154>
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e50b300c 	str	r3, [fp, #-12]
    1738:	e51b3008 	ldr	r3, [fp, #-8]
    173c:	e5933000 	ldr	r3, [r3]
    1740:	e50b3008 	str	r3, [fp, #-8]
    1744:	eaffffc8 	b	166c <malloc+0x78>
    1748:	e1a00003 	mov	r0, r3
    174c:	e24bd004 	sub	sp, fp, #4
    1750:	e8bd8800 	pop	{fp, pc}
    1754:	00001924 	.word	0x00001924
    1758:	0000191c 	.word	0x0000191c

0000175c <__udivsi3>:
    175c:	e2512001 	subs	r2, r1, #1
    1760:	012fff1e 	bxeq	lr
    1764:	3a000036 	bcc	1844 <__udivsi3+0xe8>
    1768:	e1500001 	cmp	r0, r1
    176c:	9a000022 	bls	17fc <__udivsi3+0xa0>
    1770:	e1110002 	tst	r1, r2
    1774:	0a000023 	beq	1808 <__udivsi3+0xac>
    1778:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    177c:	01a01181 	lsleq	r1, r1, #3
    1780:	03a03008 	moveq	r3, #8
    1784:	13a03001 	movne	r3, #1
    1788:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    178c:	31510000 	cmpcc	r1, r0
    1790:	31a01201 	lslcc	r1, r1, #4
    1794:	31a03203 	lslcc	r3, r3, #4
    1798:	3afffffa 	bcc	1788 <__udivsi3+0x2c>
    179c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17a0:	31510000 	cmpcc	r1, r0
    17a4:	31a01081 	lslcc	r1, r1, #1
    17a8:	31a03083 	lslcc	r3, r3, #1
    17ac:	3afffffa 	bcc	179c <__udivsi3+0x40>
    17b0:	e3a02000 	mov	r2, #0
    17b4:	e1500001 	cmp	r0, r1
    17b8:	20400001 	subcs	r0, r0, r1
    17bc:	21822003 	orrcs	r2, r2, r3
    17c0:	e15000a1 	cmp	r0, r1, lsr #1
    17c4:	204000a1 	subcs	r0, r0, r1, lsr #1
    17c8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17cc:	e1500121 	cmp	r0, r1, lsr #2
    17d0:	20400121 	subcs	r0, r0, r1, lsr #2
    17d4:	21822123 	orrcs	r2, r2, r3, lsr #2
    17d8:	e15001a1 	cmp	r0, r1, lsr #3
    17dc:	204001a1 	subcs	r0, r0, r1, lsr #3
    17e0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17e4:	e3500000 	cmp	r0, #0
    17e8:	11b03223 	lsrsne	r3, r3, #4
    17ec:	11a01221 	lsrne	r1, r1, #4
    17f0:	1affffef 	bne	17b4 <__udivsi3+0x58>
    17f4:	e1a00002 	mov	r0, r2
    17f8:	e12fff1e 	bx	lr
    17fc:	03a00001 	moveq	r0, #1
    1800:	13a00000 	movne	r0, #0
    1804:	e12fff1e 	bx	lr
    1808:	e3510801 	cmp	r1, #65536	@ 0x10000
    180c:	21a01821 	lsrcs	r1, r1, #16
    1810:	23a02010 	movcs	r2, #16
    1814:	33a02000 	movcc	r2, #0
    1818:	e3510c01 	cmp	r1, #256	@ 0x100
    181c:	21a01421 	lsrcs	r1, r1, #8
    1820:	22822008 	addcs	r2, r2, #8
    1824:	e3510010 	cmp	r1, #16
    1828:	21a01221 	lsrcs	r1, r1, #4
    182c:	22822004 	addcs	r2, r2, #4
    1830:	e3510004 	cmp	r1, #4
    1834:	82822003 	addhi	r2, r2, #3
    1838:	908220a1 	addls	r2, r2, r1, lsr #1
    183c:	e1a00230 	lsr	r0, r0, r2
    1840:	e12fff1e 	bx	lr
    1844:	e3500000 	cmp	r0, #0
    1848:	13e00000 	mvnne	r0, #0
    184c:	ea000007 	b	1870 <__aeabi_idiv0>

00001850 <__aeabi_uidivmod>:
    1850:	e3510000 	cmp	r1, #0
    1854:	0afffffa 	beq	1844 <__udivsi3+0xe8>
    1858:	e92d4003 	push	{r0, r1, lr}
    185c:	ebffffbe 	bl	175c <__udivsi3>
    1860:	e8bd4006 	pop	{r1, r2, lr}
    1864:	e0030092 	mul	r3, r2, r0
    1868:	e0411003 	sub	r1, r1, r3
    186c:	e12fff1e 	bx	lr

00001870 <__aeabi_idiv0>:
    1870:	e12fff1e 	bx	lr
