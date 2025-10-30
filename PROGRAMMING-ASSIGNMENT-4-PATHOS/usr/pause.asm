
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <isdigit>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e1a03000 	mov	r3, r0
      10:	e54b3005 	strb	r3, [fp, #-5]
      14:	e55b3005 	ldrb	r3, [fp, #-5]
      18:	e353002f 	cmp	r3, #47	@ 0x2f
      1c:	9a000004 	bls	34 <isdigit+0x34>
      20:	e55b3005 	ldrb	r3, [fp, #-5]
      24:	e3530039 	cmp	r3, #57	@ 0x39
      28:	8a000001 	bhi	34 <isdigit+0x34>
      2c:	e3a03001 	mov	r3, #1
      30:	ea000000 	b	38 <isdigit+0x38>
      34:	e3a03000 	mov	r3, #0
      38:	e1a00003 	mov	r0, r3
      3c:	e28bd000 	add	sp, fp, #0
      40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      44:	e12fff1e 	bx	lr

00000048 <main>:
      48:	e92d4800 	push	{fp, lr}
      4c:	e28db004 	add	fp, sp, #4
      50:	e24dd018 	sub	sp, sp, #24
      54:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      58:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      60:	e3530001 	cmp	r3, #1
      64:	ca000003 	bgt	78 <main+0x30>
      68:	e59f10b8 	ldr	r1, [pc, #184]	@ 128 <main+0xe0>
      6c:	e3a00001 	mov	r0, #1
      70:	eb00046a 	bl	1220 <printf>
      74:	eb0002d0 	bl	bbc <exit>
      78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      7c:	e5933004 	ldr	r3, [r3, #4]
      80:	e50b3008 	str	r3, [fp, #-8]
      84:	ea00000d 	b	c0 <main+0x78>
      88:	e51b3008 	ldr	r3, [fp, #-8]
      8c:	e5d33000 	ldrb	r3, [r3]
      90:	e1a00003 	mov	r0, r3
      94:	ebffffd9 	bl	0 <isdigit>
      98:	e1a03000 	mov	r3, r0
      9c:	e3530000 	cmp	r3, #0
      a0:	1a000003 	bne	b4 <main+0x6c>
      a4:	e59f1080 	ldr	r1, [pc, #128]	@ 12c <main+0xe4>
      a8:	e3a00001 	mov	r0, #1
      ac:	eb00045b 	bl	1220 <printf>
      b0:	eb0002c1 	bl	bbc <exit>
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	e51b3008 	ldr	r3, [fp, #-8]
      c4:	e5d33000 	ldrb	r3, [r3]
      c8:	e3530000 	cmp	r3, #0
      cc:	1affffed 	bne	88 <main+0x40>
      d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      d4:	e2833004 	add	r3, r3, #4
      d8:	e5933000 	ldr	r3, [r3]
      dc:	e1a00003 	mov	r0, r3
      e0:	eb00013a 	bl	5d0 <atoi>
      e4:	e50b000c 	str	r0, [fp, #-12]
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e3530000 	cmp	r3, #0
      f0:	aa000003 	bge	104 <main+0xbc>
      f4:	e59f1034 	ldr	r1, [pc, #52]	@ 130 <main+0xe8>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000447 	bl	1220 <printf>
     100:	eb0002ad 	bl	bbc <exit>
     104:	e51b200c 	ldr	r2, [fp, #-12]
     108:	e1a03002 	mov	r3, r2
     10c:	e1a03103 	lsl	r3, r3, #2
     110:	e0833002 	add	r3, r3, r2
     114:	e1a03083 	lsl	r3, r3, #1
     118:	e50b3010 	str	r3, [fp, #-16]
     11c:	e51b0010 	ldr	r0, [fp, #-16]
     120:	eb000347 	bl	e44 <sleep>
     124:	eb0002a4 	bl	bbc <exit>
     128:	000018dc 	.word	0x000018dc
     12c:	000018f4 	.word	0x000018f4
     130:	00001924 	.word	0x00001924

00000134 <pg_pte>:
     134:	e92d4800 	push	{fp, lr}
     138:	e28db004 	add	fp, sp, #4
     13c:	e24dd008 	sub	sp, sp, #8
     140:	e50b0008 	str	r0, [fp, #-8]
     144:	e51b1008 	ldr	r1, [fp, #-8]
     148:	e3a0001a 	mov	r0, #26
     14c:	eb0003d5 	bl	10a8 <syscall>
     150:	e1a03000 	mov	r3, r0
     154:	e1a00003 	mov	r0, r3
     158:	e24bd004 	sub	sp, fp, #4
     15c:	e8bd8800 	pop	{fp, pc}

00000160 <pg_pa>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd008 	sub	sp, sp, #8
     16c:	e50b0008 	str	r0, [fp, #-8]
     170:	e51b1008 	ldr	r1, [fp, #-8]
     174:	e3a0001b 	mov	r0, #27
     178:	eb0003ca 	bl	10a8 <syscall>
     17c:	e1a03000 	mov	r3, r0
     180:	e1a00003 	mov	r0, r3
     184:	e24bd004 	sub	sp, fp, #4
     188:	e8bd8800 	pop	{fp, pc}

0000018c <pg_flags>:
     18c:	e92d4800 	push	{fp, lr}
     190:	e28db004 	add	fp, sp, #4
     194:	e24dd008 	sub	sp, sp, #8
     198:	e50b0008 	str	r0, [fp, #-8]
     19c:	e51b1008 	ldr	r1, [fp, #-8]
     1a0:	e3a0001c 	mov	r0, #28
     1a4:	eb0003bf 	bl	10a8 <syscall>
     1a8:	e1a03000 	mov	r3, r0
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e24bd004 	sub	sp, fp, #4
     1b4:	e8bd8800 	pop	{fp, pc}

000001b8 <kpt>:
     1b8:	e92d4800 	push	{fp, lr}
     1bc:	e28db004 	add	fp, sp, #4
     1c0:	e3a0001d 	mov	r0, #29
     1c4:	eb0003b7 	bl	10a8 <syscall>
     1c8:	e1a03000 	mov	r3, r0
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e8bd8800 	pop	{fp, pc}

000001d4 <ugetpid>:
     1d4:	e92d4800 	push	{fp, lr}
     1d8:	e28db004 	add	fp, sp, #4
     1dc:	e3a0001e 	mov	r0, #30
     1e0:	eb0003b0 	bl	10a8 <syscall>
     1e4:	e1a03000 	mov	r3, r0
     1e8:	e1a00003 	mov	r0, r3
     1ec:	e8bd8800 	pop	{fp, pc}

000001f0 <strcpy>:
     1f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f4:	e28db000 	add	fp, sp, #0
     1f8:	e24dd014 	sub	sp, sp, #20
     1fc:	e50b0010 	str	r0, [fp, #-16]
     200:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     204:	e51b3010 	ldr	r3, [fp, #-16]
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	e1a00000 	nop			@ (mov r0, r0)
     210:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     214:	e2823001 	add	r3, r2, #1
     218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     21c:	e51b3010 	ldr	r3, [fp, #-16]
     220:	e2831001 	add	r1, r3, #1
     224:	e50b1010 	str	r1, [fp, #-16]
     228:	e5d22000 	ldrb	r2, [r2]
     22c:	e5c32000 	strb	r2, [r3]
     230:	e5d33000 	ldrb	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	1afffff4 	bne	210 <strcpy+0x20>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strcmp>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd00c 	sub	sp, sp, #12
     25c:	e50b0008 	str	r0, [fp, #-8]
     260:	e50b100c 	str	r1, [fp, #-12]
     264:	ea000005 	b	280 <strcmp+0x30>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e2833001 	add	r3, r3, #1
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e2833001 	add	r3, r3, #1
     27c:	e50b300c 	str	r3, [fp, #-12]
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	0a000005 	beq	2a8 <strcmp+0x58>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e5d32000 	ldrb	r2, [r3]
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e1520003 	cmp	r2, r3
     2a4:	0affffef 	beq	268 <strcmp+0x18>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e5d33000 	ldrb	r3, [r3]
     2b0:	e1a02003 	mov	r2, r3
     2b4:	e51b300c 	ldr	r3, [fp, #-12]
     2b8:	e5d33000 	ldrb	r3, [r3]
     2bc:	e0423003 	sub	r3, r2, r3
     2c0:	e1a00003 	mov	r0, r3
     2c4:	e28bd000 	add	sp, fp, #0
     2c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2cc:	e12fff1e 	bx	lr

000002d0 <strlen>:
     2d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d4:	e28db000 	add	fp, sp, #0
     2d8:	e24dd014 	sub	sp, sp, #20
     2dc:	e50b0010 	str	r0, [fp, #-16]
     2e0:	e3a03000 	mov	r3, #0
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	ea000002 	b	2f8 <strlen+0x28>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e51b2010 	ldr	r2, [fp, #-16]
     300:	e0823003 	add	r3, r2, r3
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff6 	bne	2ec <strlen+0x1c>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <memset>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     330:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     334:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     338:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     348:	e54b300d 	strb	r3, [fp, #-13]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e1a03002 	mov	r3, r2
     354:	e1a03403 	lsl	r3, r3, #8
     358:	e0833002 	add	r3, r3, r2
     35c:	e1a03803 	lsl	r3, r3, #16
     360:	e1a02003 	mov	r2, r3
     364:	e55b300d 	ldrb	r3, [fp, #-13]
     368:	e1a03403 	lsl	r3, r3, #8
     36c:	e1822003 	orr	r2, r2, r3
     370:	e55b300d 	ldrb	r3, [fp, #-13]
     374:	e1823003 	orr	r3, r2, r3
     378:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     37c:	ea000008 	b	3a4 <memset+0x80>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e55b200d 	ldrb	r2, [fp, #-13]
     388:	e5c32000 	strb	r2, [r3]
     38c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     390:	e2433001 	sub	r3, r3, #1
     394:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2833001 	add	r3, r3, #1
     3a0:	e50b3008 	str	r3, [fp, #-8]
     3a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a8:	e3530000 	cmp	r3, #0
     3ac:	0a000003 	beq	3c0 <memset+0x9c>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2033003 	and	r3, r3, #3
     3b8:	e3530000 	cmp	r3, #0
     3bc:	1affffef 	bne	380 <memset+0x5c>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e50b300c 	str	r3, [fp, #-12]
     3c8:	ea000008 	b	3f0 <memset+0xcc>
     3cc:	e51b300c 	ldr	r3, [fp, #-12]
     3d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3d4:	e5832000 	str	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e2433004 	sub	r3, r3, #4
     3e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b300c 	ldr	r3, [fp, #-12]
     3e8:	e2833004 	add	r3, r3, #4
     3ec:	e50b300c 	str	r3, [fp, #-12]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f4:	e3530003 	cmp	r3, #3
     3f8:	8afffff3 	bhi	3cc <memset+0xa8>
     3fc:	e51b300c 	ldr	r3, [fp, #-12]
     400:	e50b3008 	str	r3, [fp, #-8]
     404:	ea000008 	b	42c <memset+0x108>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e55b200d 	ldrb	r2, [fp, #-13]
     410:	e5c32000 	strb	r2, [r3]
     414:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     418:	e2433001 	sub	r3, r3, #1
     41c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2833001 	add	r3, r3, #1
     428:	e50b3008 	str	r3, [fp, #-8]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e3530000 	cmp	r3, #0
     434:	1afffff3 	bne	408 <memset+0xe4>
     438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     43c:	e1a00003 	mov	r0, r3
     440:	e28bd000 	add	sp, fp, #0
     444:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     448:	e12fff1e 	bx	lr

0000044c <strchr>:
     44c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     450:	e28db000 	add	fp, sp, #0
     454:	e24dd00c 	sub	sp, sp, #12
     458:	e50b0008 	str	r0, [fp, #-8]
     45c:	e1a03001 	mov	r3, r1
     460:	e54b3009 	strb	r3, [fp, #-9]
     464:	ea000009 	b	490 <strchr+0x44>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e55b2009 	ldrb	r2, [fp, #-9]
     474:	e1520003 	cmp	r2, r3
     478:	1a000001 	bne	484 <strchr+0x38>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	ea000007 	b	4a4 <strchr+0x58>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2833001 	add	r3, r3, #1
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e3530000 	cmp	r3, #0
     49c:	1afffff1 	bne	468 <strchr+0x1c>
     4a0:	e3a03000 	mov	r3, #0
     4a4:	e1a00003 	mov	r0, r3
     4a8:	e28bd000 	add	sp, fp, #0
     4ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b0:	e12fff1e 	bx	lr

000004b4 <gets>:
     4b4:	e92d4800 	push	{fp, lr}
     4b8:	e28db004 	add	fp, sp, #4
     4bc:	e24dd018 	sub	sp, sp, #24
     4c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4c8:	e3a03000 	mov	r3, #0
     4cc:	e50b3008 	str	r3, [fp, #-8]
     4d0:	ea000016 	b	530 <gets+0x7c>
     4d4:	e24b300d 	sub	r3, fp, #13
     4d8:	e3a02001 	mov	r2, #1
     4dc:	e1a01003 	mov	r1, r3
     4e0:	e3a00000 	mov	r0, #0
     4e4:	eb0001cf 	bl	c28 <read>
     4e8:	e50b000c 	str	r0, [fp, #-12]
     4ec:	e51b300c 	ldr	r3, [fp, #-12]
     4f0:	e3530000 	cmp	r3, #0
     4f4:	da000013 	ble	548 <gets+0x94>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2832001 	add	r2, r3, #1
     500:	e50b2008 	str	r2, [fp, #-8]
     504:	e1a02003 	mov	r2, r3
     508:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     50c:	e0833002 	add	r3, r3, r2
     510:	e55b200d 	ldrb	r2, [fp, #-13]
     514:	e5c32000 	strb	r2, [r3]
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e353000a 	cmp	r3, #10
     520:	0a000009 	beq	54c <gets+0x98>
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e353000d 	cmp	r3, #13
     52c:	0a000006 	beq	54c <gets+0x98>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e2833001 	add	r3, r3, #1
     538:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     53c:	e1520003 	cmp	r2, r3
     540:	caffffe3 	bgt	4d4 <gets+0x20>
     544:	ea000000 	b	54c <gets+0x98>
     548:	e1a00000 	nop			@ (mov r0, r0)
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     554:	e0823003 	add	r3, r2, r3
     558:	e3a02000 	mov	r2, #0
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     564:	e1a00003 	mov	r0, r3
     568:	e24bd004 	sub	sp, fp, #4
     56c:	e8bd8800 	pop	{fp, pc}

00000570 <stat>:
     570:	e92d4800 	push	{fp, lr}
     574:	e28db004 	add	fp, sp, #4
     578:	e24dd010 	sub	sp, sp, #16
     57c:	e50b0010 	str	r0, [fp, #-16]
     580:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     584:	e3a01000 	mov	r1, #0
     588:	e51b0010 	ldr	r0, [fp, #-16]
     58c:	eb0001d2 	bl	cdc <open>
     590:	e50b0008 	str	r0, [fp, #-8]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e3530000 	cmp	r3, #0
     59c:	aa000001 	bge	5a8 <stat+0x38>
     5a0:	e3e03000 	mvn	r3, #0
     5a4:	ea000006 	b	5c4 <stat+0x54>
     5a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5ac:	e51b0008 	ldr	r0, [fp, #-8]
     5b0:	eb0001e4 	bl	d48 <fstat>
     5b4:	e50b000c 	str	r0, [fp, #-12]
     5b8:	e51b0008 	ldr	r0, [fp, #-8]
     5bc:	eb0001ab 	bl	c70 <close>
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e24bd004 	sub	sp, fp, #4
     5cc:	e8bd8800 	pop	{fp, pc}

000005d0 <atoi>:
     5d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d4:	e28db000 	add	fp, sp, #0
     5d8:	e24dd014 	sub	sp, sp, #20
     5dc:	e50b0010 	str	r0, [fp, #-16]
     5e0:	e3a03000 	mov	r3, #0
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	ea00000c 	b	620 <atoi+0x50>
     5ec:	e51b2008 	ldr	r2, [fp, #-8]
     5f0:	e1a03002 	mov	r3, r2
     5f4:	e1a03103 	lsl	r3, r3, #2
     5f8:	e0833002 	add	r3, r3, r2
     5fc:	e1a03083 	lsl	r3, r3, #1
     600:	e1a01003 	mov	r1, r3
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e2832001 	add	r2, r3, #1
     60c:	e50b2010 	str	r2, [fp, #-16]
     610:	e5d33000 	ldrb	r3, [r3]
     614:	e0813003 	add	r3, r1, r3
     618:	e2433030 	sub	r3, r3, #48	@ 0x30
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	e51b3010 	ldr	r3, [fp, #-16]
     624:	e5d33000 	ldrb	r3, [r3]
     628:	e353002f 	cmp	r3, #47	@ 0x2f
     62c:	9a000003 	bls	640 <atoi+0x70>
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e5d33000 	ldrb	r3, [r3]
     638:	e3530039 	cmp	r3, #57	@ 0x39
     63c:	9affffea 	bls	5ec <atoi+0x1c>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <memmove>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd01c 	sub	sp, sp, #28
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     678:	e50b300c 	str	r3, [fp, #-12]
     67c:	ea000007 	b	6a0 <memmove+0x4c>
     680:	e51b200c 	ldr	r2, [fp, #-12]
     684:	e2823001 	add	r3, r2, #1
     688:	e50b300c 	str	r3, [fp, #-12]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2831001 	add	r1, r3, #1
     694:	e50b1008 	str	r1, [fp, #-8]
     698:	e5d22000 	ldrb	r2, [r2]
     69c:	e5c32000 	strb	r2, [r3]
     6a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a4:	e2432001 	sub	r2, r3, #1
     6a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6ac:	e3530000 	cmp	r3, #0
     6b0:	cafffff2 	bgt	680 <memmove+0x2c>
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e1a00003 	mov	r0, r3
     6bc:	e28bd000 	add	sp, fp, #0
     6c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <strncmp>:
     6c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6cc:	e28db000 	add	fp, sp, #0
     6d0:	e24dd014 	sub	sp, sp, #20
     6d4:	e50b0008 	str	r0, [fp, #-8]
     6d8:	e50b100c 	str	r1, [fp, #-12]
     6dc:	e50b2010 	str	r2, [fp, #-16]
     6e0:	ea000008 	b	708 <strncmp+0x40>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2833001 	add	r3, r3, #1
     6ec:	e50b3008 	str	r3, [fp, #-8]
     6f0:	e51b300c 	ldr	r3, [fp, #-12]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b300c 	str	r3, [fp, #-12]
     6fc:	e51b3010 	ldr	r3, [fp, #-16]
     700:	e2433001 	sub	r3, r3, #1
     704:	e50b3010 	str	r3, [fp, #-16]
     708:	e51b3010 	ldr	r3, [fp, #-16]
     70c:	e3530000 	cmp	r3, #0
     710:	da00000d 	ble	74c <strncmp+0x84>
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e5d33000 	ldrb	r3, [r3]
     71c:	e3530000 	cmp	r3, #0
     720:	0a000009 	beq	74c <strncmp+0x84>
     724:	e51b300c 	ldr	r3, [fp, #-12]
     728:	e5d33000 	ldrb	r3, [r3]
     72c:	e3530000 	cmp	r3, #0
     730:	0a000005 	beq	74c <strncmp+0x84>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5d32000 	ldrb	r2, [r3]
     73c:	e51b300c 	ldr	r3, [fp, #-12]
     740:	e5d33000 	ldrb	r3, [r3]
     744:	e1520003 	cmp	r2, r3
     748:	0affffe5 	beq	6e4 <strncmp+0x1c>
     74c:	e51b3010 	ldr	r3, [fp, #-16]
     750:	e3530000 	cmp	r3, #0
     754:	1a000001 	bne	760 <strncmp+0x98>
     758:	e3a03000 	mov	r3, #0
     75c:	ea000005 	b	778 <strncmp+0xb0>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5d33000 	ldrb	r3, [r3]
     768:	e1a02003 	mov	r2, r3
     76c:	e51b300c 	ldr	r3, [fp, #-12]
     770:	e5d33000 	ldrb	r3, [r3]
     774:	e0423003 	sub	r3, r2, r3
     778:	e1a00003 	mov	r0, r3
     77c:	e28bd000 	add	sp, fp, #0
     780:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <strncpy>:
     788:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     78c:	e28db000 	add	fp, sp, #0
     790:	e24dd01c 	sub	sp, sp, #28
     794:	e50b0010 	str	r0, [fp, #-16]
     798:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     79c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7a0:	e51b3010 	ldr	r3, [fp, #-16]
     7a4:	e50b3008 	str	r3, [fp, #-8]
     7a8:	ea00000a 	b	7d8 <strncpy+0x50>
     7ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7b0:	e2823001 	add	r3, r2, #1
     7b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2831001 	add	r1, r3, #1
     7c0:	e50b1008 	str	r1, [fp, #-8]
     7c4:	e5d22000 	ldrb	r2, [r2]
     7c8:	e5c32000 	strb	r2, [r3]
     7cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d0:	e2433001 	sub	r3, r3, #1
     7d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7dc:	e3530000 	cmp	r3, #0
     7e0:	da00000c 	ble	818 <strncpy+0x90>
     7e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e3530000 	cmp	r3, #0
     7f0:	1affffed 	bne	7ac <strncpy+0x24>
     7f4:	ea000007 	b	818 <strncpy+0x90>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e2832001 	add	r2, r3, #1
     800:	e50b2008 	str	r2, [fp, #-8]
     804:	e3a02000 	mov	r2, #0
     808:	e5c32000 	strb	r2, [r3]
     80c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     810:	e2433001 	sub	r3, r3, #1
     814:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     81c:	e3530000 	cmp	r3, #0
     820:	cafffff4 	bgt	7f8 <strncpy+0x70>
     824:	e51b3010 	ldr	r3, [fp, #-16]
     828:	e1a00003 	mov	r0, r3
     82c:	e28bd000 	add	sp, fp, #0
     830:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <xchg>:
     838:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     83c:	e28db000 	add	fp, sp, #0
     840:	e24dd014 	sub	sp, sp, #20
     844:	e50b0010 	str	r0, [fp, #-16]
     848:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     84c:	e51b2010 	ldr	r2, [fp, #-16]
     850:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     854:	e1023091 	swp	r3, r1, [r2]
     858:	e50b3008 	str	r3, [fp, #-8]
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e1a00003 	mov	r0, r3
     864:	e28bd000 	add	sp, fp, #0
     868:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <initiateLock>:
     870:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     874:	e28db000 	add	fp, sp, #0
     878:	e24dd00c 	sub	sp, sp, #12
     87c:	e50b0008 	str	r0, [fp, #-8]
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e3a02000 	mov	r2, #0
     888:	e5832000 	str	r2, [r3]
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e3a02001 	mov	r2, #1
     894:	e5832004 	str	r2, [r3, #4]
     898:	e1a00000 	nop			@ (mov r0, r0)
     89c:	e28bd000 	add	sp, fp, #0
     8a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <acquireLock>:
     8a8:	e92d4800 	push	{fp, lr}
     8ac:	e28db004 	add	fp, sp, #4
     8b0:	e24dd008 	sub	sp, sp, #8
     8b4:	e50b0008 	str	r0, [fp, #-8]
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933004 	ldr	r3, [r3, #4]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	0a000008 	beq	8ec <acquireLock+0x44>
     8c8:	e1a00000 	nop			@ (mov r0, r0)
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e3a01001 	mov	r1, #1
     8d4:	e1a00003 	mov	r0, r3
     8d8:	ebffffd6 	bl	838 <xchg>
     8dc:	e1a03000 	mov	r3, r0
     8e0:	e3530000 	cmp	r3, #0
     8e4:	1afffff8 	bne	8cc <acquireLock+0x24>
     8e8:	ea000000 	b	8f0 <acquireLock+0x48>
     8ec:	e1a00000 	nop			@ (mov r0, r0)
     8f0:	e24bd004 	sub	sp, fp, #4
     8f4:	e8bd8800 	pop	{fp, pc}

000008f8 <releaseLock>:
     8f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8fc:	e28db000 	add	fp, sp, #0
     900:	e24dd00c 	sub	sp, sp, #12
     904:	e50b0008 	str	r0, [fp, #-8]
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e5933004 	ldr	r3, [r3, #4]
     910:	e3530000 	cmp	r3, #0
     914:	0a000006 	beq	934 <releaseLock+0x3c>
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e5933000 	ldr	r3, [r3]
     920:	e3530001 	cmp	r3, #1
     924:	1a000002 	bne	934 <releaseLock+0x3c>
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e3a02000 	mov	r2, #0
     930:	e5832000 	str	r2, [r3]
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e28bd000 	add	sp, fp, #0
     93c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <initiateCondVar>:
     944:	e92d4800 	push	{fp, lr}
     948:	e28db004 	add	fp, sp, #4
     94c:	e24dd008 	sub	sp, sp, #8
     950:	e50b0008 	str	r0, [fp, #-8]
     954:	eb0001b8 	bl	103c <getChannel>
     958:	e1a02000 	mov	r2, r0
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e5832000 	str	r2, [r3]
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e3a02001 	mov	r2, #1
     96c:	e5832004 	str	r2, [r3, #4]
     970:	e1a00000 	nop			@ (mov r0, r0)
     974:	e24bd004 	sub	sp, fp, #4
     978:	e8bd8800 	pop	{fp, pc}

0000097c <condWait>:
     97c:	e92d4800 	push	{fp, lr}
     980:	e28db004 	add	fp, sp, #4
     984:	e24dd008 	sub	sp, sp, #8
     988:	e50b0008 	str	r0, [fp, #-8]
     98c:	e50b100c 	str	r1, [fp, #-12]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e5933004 	ldr	r3, [r3, #4]
     998:	e3530000 	cmp	r3, #0
     99c:	0a00000c 	beq	9d4 <condWait+0x58>
     9a0:	e51b300c 	ldr	r3, [fp, #-12]
     9a4:	e5933004 	ldr	r3, [r3, #4]
     9a8:	e3530000 	cmp	r3, #0
     9ac:	0a000008 	beq	9d4 <condWait+0x58>
     9b0:	e51b000c 	ldr	r0, [fp, #-12]
     9b4:	ebffffcf 	bl	8f8 <releaseLock>
     9b8:	e51b3008 	ldr	r3, [fp, #-8]
     9bc:	e5933000 	ldr	r3, [r3]
     9c0:	e1a00003 	mov	r0, r3
     9c4:	eb000193 	bl	1018 <sleepChan>
     9c8:	e51b000c 	ldr	r0, [fp, #-12]
     9cc:	ebffffb5 	bl	8a8 <acquireLock>
     9d0:	ea000000 	b	9d8 <condWait+0x5c>
     9d4:	e1a00000 	nop			@ (mov r0, r0)
     9d8:	e24bd004 	sub	sp, fp, #4
     9dc:	e8bd8800 	pop	{fp, pc}

000009e0 <broadcast>:
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd008 	sub	sp, sp, #8
     9ec:	e50b0008 	str	r0, [fp, #-8]
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e5933004 	ldr	r3, [r3, #4]
     9f8:	e3530000 	cmp	r3, #0
     9fc:	0a000004 	beq	a14 <broadcast+0x34>
     a00:	e51b3008 	ldr	r3, [fp, #-8]
     a04:	e5933000 	ldr	r3, [r3]
     a08:	e1a00003 	mov	r0, r3
     a0c:	eb000193 	bl	1060 <sigChan>
     a10:	ea000000 	b	a18 <broadcast+0x38>
     a14:	e1a00000 	nop			@ (mov r0, r0)
     a18:	e24bd004 	sub	sp, fp, #4
     a1c:	e8bd8800 	pop	{fp, pc}

00000a20 <signal>:
     a20:	e92d4800 	push	{fp, lr}
     a24:	e28db004 	add	fp, sp, #4
     a28:	e24dd008 	sub	sp, sp, #8
     a2c:	e50b0008 	str	r0, [fp, #-8]
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5933004 	ldr	r3, [r3, #4]
     a38:	e3530000 	cmp	r3, #0
     a3c:	0a000004 	beq	a54 <signal+0x34>
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e5933000 	ldr	r3, [r3]
     a48:	e1a00003 	mov	r0, r3
     a4c:	eb00018c 	bl	1084 <sigOneChan>
     a50:	ea000000 	b	a58 <signal+0x38>
     a54:	e1a00000 	nop			@ (mov r0, r0)
     a58:	e24bd004 	sub	sp, fp, #4
     a5c:	e8bd8800 	pop	{fp, pc}

00000a60 <semInit>:
     a60:	e92d4800 	push	{fp, lr}
     a64:	e28db004 	add	fp, sp, #4
     a68:	e24dd008 	sub	sp, sp, #8
     a6c:	e50b0008 	str	r0, [fp, #-8]
     a70:	e50b100c 	str	r1, [fp, #-12]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2833004 	add	r3, r3, #4
     a7c:	e1a00003 	mov	r0, r3
     a80:	ebffff7a 	bl	870 <initiateLock>
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e283300c 	add	r3, r3, #12
     a8c:	e1a00003 	mov	r0, r3
     a90:	ebffffab 	bl	944 <initiateCondVar>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e51b200c 	ldr	r2, [fp, #-12]
     a9c:	e5832000 	str	r2, [r3]
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e3a02001 	mov	r2, #1
     aa8:	e5832014 	str	r2, [r3, #20]
     aac:	e1a00000 	nop			@ (mov r0, r0)
     ab0:	e24bd004 	sub	sp, fp, #4
     ab4:	e8bd8800 	pop	{fp, pc}

00000ab8 <semUp>:
     ab8:	e92d4800 	push	{fp, lr}
     abc:	e28db004 	add	fp, sp, #4
     ac0:	e24dd008 	sub	sp, sp, #8
     ac4:	e50b0008 	str	r0, [fp, #-8]
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e1a00003 	mov	r0, r3
     ad4:	ebffff73 	bl	8a8 <acquireLock>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e5933000 	ldr	r3, [r3]
     ae0:	e2832001 	add	r2, r3, #1
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e5832000 	str	r2, [r3]
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e283300c 	add	r3, r3, #12
     af4:	e1a00003 	mov	r0, r3
     af8:	ebffffc8 	bl	a20 <signal>
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e2833004 	add	r3, r3, #4
     b04:	e1a00003 	mov	r0, r3
     b08:	ebffff7a 	bl	8f8 <releaseLock>
     b0c:	e1a00000 	nop			@ (mov r0, r0)
     b10:	e24bd004 	sub	sp, fp, #4
     b14:	e8bd8800 	pop	{fp, pc}

00000b18 <semDown>:
     b18:	e92d4800 	push	{fp, lr}
     b1c:	e28db004 	add	fp, sp, #4
     b20:	e24dd008 	sub	sp, sp, #8
     b24:	e50b0008 	str	r0, [fp, #-8]
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e2833004 	add	r3, r3, #4
     b30:	e1a00003 	mov	r0, r3
     b34:	ebffff5b 	bl	8a8 <acquireLock>
     b38:	e51b3008 	ldr	r3, [fp, #-8]
     b3c:	e5933000 	ldr	r3, [r3]
     b40:	e2432001 	sub	r2, r3, #1
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e5832000 	str	r2, [r3]
     b4c:	ea000006 	b	b6c <semDown+0x54>
     b50:	e51b3008 	ldr	r3, [fp, #-8]
     b54:	e283200c 	add	r2, r3, #12
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e2833004 	add	r3, r3, #4
     b60:	e1a01003 	mov	r1, r3
     b64:	e1a00002 	mov	r0, r2
     b68:	ebffff83 	bl	97c <condWait>
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e5933000 	ldr	r3, [r3]
     b74:	e3530000 	cmp	r3, #0
     b78:	bafffff4 	blt	b50 <semDown+0x38>
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e2833004 	add	r3, r3, #4
     b84:	e1a00003 	mov	r0, r3
     b88:	ebffff5a 	bl	8f8 <releaseLock>
     b8c:	e1a00000 	nop			@ (mov r0, r0)
     b90:	e24bd004 	sub	sp, fp, #4
     b94:	e8bd8800 	pop	{fp, pc}

00000b98 <fork>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00001 	mov	r0, #1
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <exit>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00002 	mov	r0, #2
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <wait>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00003 	mov	r0, #3
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <pipe>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00004 	mov	r0, #4
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <read>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00005 	mov	r0, #5
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <write>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00010 	mov	r0, #16
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <close>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00015 	mov	r0, #21
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <kill>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00006 	mov	r0, #6
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <exec>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00007 	mov	r0, #7
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <open>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a0000f 	mov	r0, #15
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <mknod>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00011 	mov	r0, #17
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <unlink>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00012 	mov	r0, #18
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <fstat>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00008 	mov	r0, #8
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <link>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a00013 	mov	r0, #19
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <mkdir>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a00014 	mov	r0, #20
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <chdir>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00009 	mov	r0, #9
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <dup>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0000a 	mov	r0, #10
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <getpid>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a0000b 	mov	r0, #11
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <sbrk>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a0000c 	mov	r0, #12
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <sleep>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a0000d 	mov	r0, #13
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <uptime>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a0000e 	mov	r0, #14
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <proclist>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a00016 	mov	r0, #22
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <settickets>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a00017 	mov	r0, #23
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <srand>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a00018 	mov	r0, #24
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <getpinfo>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a00019 	mov	r0, #25
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <print_pt>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a0001f 	mov	r0, #31
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <thread_create>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00020 	mov	r0, #32
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <thread_exit>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a00021 	mov	r0, #33	@ 0x21
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <thread_join>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00022 	mov	r0, #34	@ 0x22
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <waitpid>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00023 	mov	r0, #35	@ 0x23
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <barrier_init>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00024 	mov	r0, #36	@ 0x24
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <barrier_check>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00025 	mov	r0, #37	@ 0x25
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <sleepChan>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a00026 	mov	r0, #38	@ 0x26
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <getChannel>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a00027 	mov	r0, #39	@ 0x27
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <sigChan>:
    1060:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1064:	e1a04003 	mov	r4, r3
    1068:	e1a03002 	mov	r3, r2
    106c:	e1a02001 	mov	r2, r1
    1070:	e1a01000 	mov	r1, r0
    1074:	e3a00028 	mov	r0, #40	@ 0x28
    1078:	ef000000 	svc	0x00000000
    107c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1080:	e12fff1e 	bx	lr

00001084 <sigOneChan>:
    1084:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1088:	e1a04003 	mov	r4, r3
    108c:	e1a03002 	mov	r3, r2
    1090:	e1a02001 	mov	r2, r1
    1094:	e1a01000 	mov	r1, r0
    1098:	e3a00029 	mov	r0, #41	@ 0x29
    109c:	ef000000 	svc	0x00000000
    10a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <syscall>:
    10a8:	ef000000 	svc	0x00000000
    10ac:	e12fff1e 	bx	lr

000010b0 <putc>:
    10b0:	e92d4800 	push	{fp, lr}
    10b4:	e28db004 	add	fp, sp, #4
    10b8:	e24dd008 	sub	sp, sp, #8
    10bc:	e50b0008 	str	r0, [fp, #-8]
    10c0:	e1a03001 	mov	r3, r1
    10c4:	e54b3009 	strb	r3, [fp, #-9]
    10c8:	e24b3009 	sub	r3, fp, #9
    10cc:	e3a02001 	mov	r2, #1
    10d0:	e1a01003 	mov	r1, r3
    10d4:	e51b0008 	ldr	r0, [fp, #-8]
    10d8:	ebfffedb 	bl	c4c <write>
    10dc:	e1a00000 	nop			@ (mov r0, r0)
    10e0:	e24bd004 	sub	sp, fp, #4
    10e4:	e8bd8800 	pop	{fp, pc}

000010e8 <printint>:
    10e8:	e92d4800 	push	{fp, lr}
    10ec:	e28db004 	add	fp, sp, #4
    10f0:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10f4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10f8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10fc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1100:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1104:	e3a03000 	mov	r3, #0
    1108:	e50b300c 	str	r3, [fp, #-12]
    110c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1110:	e3530000 	cmp	r3, #0
    1114:	0a000008 	beq	113c <printint+0x54>
    1118:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    111c:	e3530000 	cmp	r3, #0
    1120:	aa000005 	bge	113c <printint+0x54>
    1124:	e3a03001 	mov	r3, #1
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1130:	e2633000 	rsb	r3, r3, #0
    1134:	e50b3010 	str	r3, [fp, #-16]
    1138:	ea000001 	b	1144 <printint+0x5c>
    113c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1140:	e50b3010 	str	r3, [fp, #-16]
    1144:	e3a03000 	mov	r3, #0
    1148:	e50b3008 	str	r3, [fp, #-8]
    114c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1150:	e51b3010 	ldr	r3, [fp, #-16]
    1154:	e1a01002 	mov	r1, r2
    1158:	e1a00003 	mov	r0, r3
    115c:	eb0001d5 	bl	18b8 <__aeabi_uidivmod>
    1160:	e1a03001 	mov	r3, r1
    1164:	e1a01003 	mov	r1, r3
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e2832001 	add	r2, r3, #1
    1170:	e50b2008 	str	r2, [fp, #-8]
    1174:	e59f20a0 	ldr	r2, [pc, #160]	@ 121c <printint+0x134>
    1178:	e7d22001 	ldrb	r2, [r2, r1]
    117c:	e2433004 	sub	r3, r3, #4
    1180:	e083300b 	add	r3, r3, fp
    1184:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1188:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b0010 	ldr	r0, [fp, #-16]
    1194:	eb00018a 	bl	17c4 <__udivsi3>
    1198:	e1a03000 	mov	r3, r0
    119c:	e50b3010 	str	r3, [fp, #-16]
    11a0:	e51b3010 	ldr	r3, [fp, #-16]
    11a4:	e3530000 	cmp	r3, #0
    11a8:	1affffe7 	bne	114c <printint+0x64>
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e3530000 	cmp	r3, #0
    11b4:	0a00000e 	beq	11f4 <printint+0x10c>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e2832001 	add	r2, r3, #1
    11c0:	e50b2008 	str	r2, [fp, #-8]
    11c4:	e2433004 	sub	r3, r3, #4
    11c8:	e083300b 	add	r3, r3, fp
    11cc:	e3a0202d 	mov	r2, #45	@ 0x2d
    11d0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11d4:	ea000006 	b	11f4 <printint+0x10c>
    11d8:	e24b2020 	sub	r2, fp, #32
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e0823003 	add	r3, r2, r3
    11e4:	e5d33000 	ldrb	r3, [r3]
    11e8:	e1a01003 	mov	r1, r3
    11ec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11f0:	ebffffae 	bl	10b0 <putc>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2433001 	sub	r3, r3, #1
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e3530000 	cmp	r3, #0
    1208:	aafffff2 	bge	11d8 <printint+0xf0>
    120c:	e1a00000 	nop			@ (mov r0, r0)
    1210:	e1a00000 	nop			@ (mov r0, r0)
    1214:	e24bd004 	sub	sp, fp, #4
    1218:	e8bd8800 	pop	{fp, pc}
    121c:	00001954 	.word	0x00001954

00001220 <printf>:
    1220:	e92d000e 	push	{r1, r2, r3}
    1224:	e92d4800 	push	{fp, lr}
    1228:	e28db004 	add	fp, sp, #4
    122c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1230:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1234:	e3a03000 	mov	r3, #0
    1238:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    123c:	e28b3008 	add	r3, fp, #8
    1240:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1244:	e3a03000 	mov	r3, #0
    1248:	e50b3010 	str	r3, [fp, #-16]
    124c:	ea000074 	b	1424 <printf+0x204>
    1250:	e59b2004 	ldr	r2, [fp, #4]
    1254:	e51b3010 	ldr	r3, [fp, #-16]
    1258:	e0823003 	add	r3, r2, r3
    125c:	e5d33000 	ldrb	r3, [r3]
    1260:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1264:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1268:	e3530000 	cmp	r3, #0
    126c:	1a00000b 	bne	12a0 <printf+0x80>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e3530025 	cmp	r3, #37	@ 0x25
    1278:	1a000002 	bne	1288 <printf+0x68>
    127c:	e3a03025 	mov	r3, #37	@ 0x25
    1280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1284:	ea000063 	b	1418 <printf+0x1f8>
    1288:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e6ef3073 	uxtb	r3, r3
    1290:	e1a01003 	mov	r1, r3
    1294:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1298:	ebffff84 	bl	10b0 <putc>
    129c:	ea00005d 	b	1418 <printf+0x1f8>
    12a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12a4:	e3530025 	cmp	r3, #37	@ 0x25
    12a8:	1a00005a 	bne	1418 <printf+0x1f8>
    12ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b0:	e3530064 	cmp	r3, #100	@ 0x64
    12b4:	1a00000a 	bne	12e4 <printf+0xc4>
    12b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e1a01003 	mov	r1, r3
    12c4:	e3a03001 	mov	r3, #1
    12c8:	e3a0200a 	mov	r2, #10
    12cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12d0:	ebffff84 	bl	10e8 <printint>
    12d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d8:	e2833004 	add	r3, r3, #4
    12dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12e0:	ea00004a 	b	1410 <printf+0x1f0>
    12e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e8:	e3530078 	cmp	r3, #120	@ 0x78
    12ec:	0a000002 	beq	12fc <printf+0xdc>
    12f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f4:	e3530070 	cmp	r3, #112	@ 0x70
    12f8:	1a00000a 	bne	1328 <printf+0x108>
    12fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1300:	e5933000 	ldr	r3, [r3]
    1304:	e1a01003 	mov	r1, r3
    1308:	e3a03000 	mov	r3, #0
    130c:	e3a02010 	mov	r2, #16
    1310:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1314:	ebffff73 	bl	10e8 <printint>
    1318:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    131c:	e2833004 	add	r3, r3, #4
    1320:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1324:	ea000039 	b	1410 <printf+0x1f0>
    1328:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    132c:	e3530073 	cmp	r3, #115	@ 0x73
    1330:	1a000018 	bne	1398 <printf+0x178>
    1334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1338:	e5933000 	ldr	r3, [r3]
    133c:	e50b300c 	str	r3, [fp, #-12]
    1340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1344:	e2833004 	add	r3, r3, #4
    1348:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e3530000 	cmp	r3, #0
    1354:	1a00000a 	bne	1384 <printf+0x164>
    1358:	e59f30f4 	ldr	r3, [pc, #244]	@ 1454 <printf+0x234>
    135c:	e50b300c 	str	r3, [fp, #-12]
    1360:	ea000007 	b	1384 <printf+0x164>
    1364:	e51b300c 	ldr	r3, [fp, #-12]
    1368:	e5d33000 	ldrb	r3, [r3]
    136c:	e1a01003 	mov	r1, r3
    1370:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1374:	ebffff4d 	bl	10b0 <putc>
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e2833001 	add	r3, r3, #1
    1380:	e50b300c 	str	r3, [fp, #-12]
    1384:	e51b300c 	ldr	r3, [fp, #-12]
    1388:	e5d33000 	ldrb	r3, [r3]
    138c:	e3530000 	cmp	r3, #0
    1390:	1afffff3 	bne	1364 <printf+0x144>
    1394:	ea00001d 	b	1410 <printf+0x1f0>
    1398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    139c:	e3530063 	cmp	r3, #99	@ 0x63
    13a0:	1a000009 	bne	13cc <printf+0x1ac>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e6ef3073 	uxtb	r3, r3
    13b0:	e1a01003 	mov	r1, r3
    13b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b8:	ebffff3c 	bl	10b0 <putc>
    13bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c0:	e2833004 	add	r3, r3, #4
    13c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13c8:	ea000010 	b	1410 <printf+0x1f0>
    13cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d0:	e3530025 	cmp	r3, #37	@ 0x25
    13d4:	1a000005 	bne	13f0 <printf+0x1d0>
    13d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13dc:	e6ef3073 	uxtb	r3, r3
    13e0:	e1a01003 	mov	r1, r3
    13e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e8:	ebffff30 	bl	10b0 <putc>
    13ec:	ea000007 	b	1410 <printf+0x1f0>
    13f0:	e3a01025 	mov	r1, #37	@ 0x25
    13f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f8:	ebffff2c 	bl	10b0 <putc>
    13fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1400:	e6ef3073 	uxtb	r3, r3
    1404:	e1a01003 	mov	r1, r3
    1408:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    140c:	ebffff27 	bl	10b0 <putc>
    1410:	e3a03000 	mov	r3, #0
    1414:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1418:	e51b3010 	ldr	r3, [fp, #-16]
    141c:	e2833001 	add	r3, r3, #1
    1420:	e50b3010 	str	r3, [fp, #-16]
    1424:	e59b2004 	ldr	r2, [fp, #4]
    1428:	e51b3010 	ldr	r3, [fp, #-16]
    142c:	e0823003 	add	r3, r2, r3
    1430:	e5d33000 	ldrb	r3, [r3]
    1434:	e3530000 	cmp	r3, #0
    1438:	1affff84 	bne	1250 <printf+0x30>
    143c:	e1a00000 	nop			@ (mov r0, r0)
    1440:	e1a00000 	nop			@ (mov r0, r0)
    1444:	e24bd004 	sub	sp, fp, #4
    1448:	e8bd4800 	pop	{fp, lr}
    144c:	e28dd00c 	add	sp, sp, #12
    1450:	e12fff1e 	bx	lr
    1454:	0000194c 	.word	0x0000194c

00001458 <free>:
    1458:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    145c:	e28db000 	add	fp, sp, #0
    1460:	e24dd014 	sub	sp, sp, #20
    1464:	e50b0010 	str	r0, [fp, #-16]
    1468:	e51b3010 	ldr	r3, [fp, #-16]
    146c:	e2433008 	sub	r3, r3, #8
    1470:	e50b300c 	str	r3, [fp, #-12]
    1474:	e59f3154 	ldr	r3, [pc, #340]	@ 15d0 <free+0x178>
    1478:	e5933000 	ldr	r3, [r3]
    147c:	e50b3008 	str	r3, [fp, #-8]
    1480:	ea000010 	b	14c8 <free+0x70>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5933000 	ldr	r3, [r3]
    148c:	e51b2008 	ldr	r2, [fp, #-8]
    1490:	e1520003 	cmp	r2, r3
    1494:	3a000008 	bcc	14bc <free+0x64>
    1498:	e51b200c 	ldr	r2, [fp, #-12]
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e1520003 	cmp	r2, r3
    14a4:	8a000010 	bhi	14ec <free+0x94>
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e51b200c 	ldr	r2, [fp, #-12]
    14b4:	e1520003 	cmp	r2, r3
    14b8:	3a00000b 	bcc	14ec <free+0x94>
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e50b3008 	str	r3, [fp, #-8]
    14c8:	e51b200c 	ldr	r2, [fp, #-12]
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e1520003 	cmp	r2, r3
    14d4:	9affffea 	bls	1484 <free+0x2c>
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5933000 	ldr	r3, [r3]
    14e0:	e51b200c 	ldr	r2, [fp, #-12]
    14e4:	e1520003 	cmp	r2, r3
    14e8:	2affffe5 	bcs	1484 <free+0x2c>
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e5933004 	ldr	r3, [r3, #4]
    14f4:	e1a03183 	lsl	r3, r3, #3
    14f8:	e51b200c 	ldr	r2, [fp, #-12]
    14fc:	e0822003 	add	r2, r2, r3
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e1520003 	cmp	r2, r3
    150c:	1a00000d 	bne	1548 <free+0xf0>
    1510:	e51b300c 	ldr	r3, [fp, #-12]
    1514:	e5932004 	ldr	r2, [r3, #4]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5933000 	ldr	r3, [r3]
    1520:	e5933004 	ldr	r3, [r3, #4]
    1524:	e0822003 	add	r2, r2, r3
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5832004 	str	r2, [r3, #4]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5933000 	ldr	r3, [r3]
    1538:	e5932000 	ldr	r2, [r3]
    153c:	e51b300c 	ldr	r3, [fp, #-12]
    1540:	e5832000 	str	r2, [r3]
    1544:	ea000003 	b	1558 <free+0x100>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5932000 	ldr	r2, [r3]
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5832000 	str	r2, [r3]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933004 	ldr	r3, [r3, #4]
    1560:	e1a03183 	lsl	r3, r3, #3
    1564:	e51b2008 	ldr	r2, [fp, #-8]
    1568:	e0823003 	add	r3, r2, r3
    156c:	e51b200c 	ldr	r2, [fp, #-12]
    1570:	e1520003 	cmp	r2, r3
    1574:	1a00000b 	bne	15a8 <free+0x150>
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5932004 	ldr	r2, [r3, #4]
    1580:	e51b300c 	ldr	r3, [fp, #-12]
    1584:	e5933004 	ldr	r3, [r3, #4]
    1588:	e0822003 	add	r2, r2, r3
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5832004 	str	r2, [r3, #4]
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5932000 	ldr	r2, [r3]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5832000 	str	r2, [r3]
    15a4:	ea000002 	b	15b4 <free+0x15c>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e51b200c 	ldr	r2, [fp, #-12]
    15b0:	e5832000 	str	r2, [r3]
    15b4:	e59f2014 	ldr	r2, [pc, #20]	@ 15d0 <free+0x178>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5823000 	str	r3, [r2]
    15c0:	e1a00000 	nop			@ (mov r0, r0)
    15c4:	e28bd000 	add	sp, fp, #0
    15c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15cc:	e12fff1e 	bx	lr
    15d0:	00001970 	.word	0x00001970

000015d4 <morecore>:
    15d4:	e92d4800 	push	{fp, lr}
    15d8:	e28db004 	add	fp, sp, #4
    15dc:	e24dd010 	sub	sp, sp, #16
    15e0:	e50b0010 	str	r0, [fp, #-16]
    15e4:	e51b3010 	ldr	r3, [fp, #-16]
    15e8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15ec:	2a000001 	bcs	15f8 <morecore+0x24>
    15f0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15f4:	e50b3010 	str	r3, [fp, #-16]
    15f8:	e51b3010 	ldr	r3, [fp, #-16]
    15fc:	e1a03183 	lsl	r3, r3, #3
    1600:	e1a00003 	mov	r0, r3
    1604:	ebfffe05 	bl	e20 <sbrk>
    1608:	e50b0008 	str	r0, [fp, #-8]
    160c:	e51b3008 	ldr	r3, [fp, #-8]
    1610:	e3730001 	cmn	r3, #1
    1614:	1a000001 	bne	1620 <morecore+0x4c>
    1618:	e3a03000 	mov	r3, #0
    161c:	ea00000a 	b	164c <morecore+0x78>
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e50b300c 	str	r3, [fp, #-12]
    1628:	e51b300c 	ldr	r3, [fp, #-12]
    162c:	e51b2010 	ldr	r2, [fp, #-16]
    1630:	e5832004 	str	r2, [r3, #4]
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e2833008 	add	r3, r3, #8
    163c:	e1a00003 	mov	r0, r3
    1640:	ebffff84 	bl	1458 <free>
    1644:	e59f300c 	ldr	r3, [pc, #12]	@ 1658 <morecore+0x84>
    1648:	e5933000 	ldr	r3, [r3]
    164c:	e1a00003 	mov	r0, r3
    1650:	e24bd004 	sub	sp, fp, #4
    1654:	e8bd8800 	pop	{fp, pc}
    1658:	00001970 	.word	0x00001970

0000165c <malloc>:
    165c:	e92d4800 	push	{fp, lr}
    1660:	e28db004 	add	fp, sp, #4
    1664:	e24dd018 	sub	sp, sp, #24
    1668:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    166c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1670:	e2833007 	add	r3, r3, #7
    1674:	e1a031a3 	lsr	r3, r3, #3
    1678:	e2833001 	add	r3, r3, #1
    167c:	e50b3010 	str	r3, [fp, #-16]
    1680:	e59f3134 	ldr	r3, [pc, #308]	@ 17bc <malloc+0x160>
    1684:	e5933000 	ldr	r3, [r3]
    1688:	e50b300c 	str	r3, [fp, #-12]
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e3530000 	cmp	r3, #0
    1694:	1a00000b 	bne	16c8 <malloc+0x6c>
    1698:	e59f3120 	ldr	r3, [pc, #288]	@ 17c0 <malloc+0x164>
    169c:	e50b300c 	str	r3, [fp, #-12]
    16a0:	e59f2114 	ldr	r2, [pc, #276]	@ 17bc <malloc+0x160>
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5823000 	str	r3, [r2]
    16ac:	e59f3108 	ldr	r3, [pc, #264]	@ 17bc <malloc+0x160>
    16b0:	e5933000 	ldr	r3, [r3]
    16b4:	e59f2104 	ldr	r2, [pc, #260]	@ 17c0 <malloc+0x164>
    16b8:	e5823000 	str	r3, [r2]
    16bc:	e59f30fc 	ldr	r3, [pc, #252]	@ 17c0 <malloc+0x164>
    16c0:	e3a02000 	mov	r2, #0
    16c4:	e5832004 	str	r2, [r3, #4]
    16c8:	e51b300c 	ldr	r3, [fp, #-12]
    16cc:	e5933000 	ldr	r3, [r3]
    16d0:	e50b3008 	str	r3, [fp, #-8]
    16d4:	e51b3008 	ldr	r3, [fp, #-8]
    16d8:	e5933004 	ldr	r3, [r3, #4]
    16dc:	e51b2010 	ldr	r2, [fp, #-16]
    16e0:	e1520003 	cmp	r2, r3
    16e4:	8a00001e 	bhi	1764 <malloc+0x108>
    16e8:	e51b3008 	ldr	r3, [fp, #-8]
    16ec:	e5933004 	ldr	r3, [r3, #4]
    16f0:	e51b2010 	ldr	r2, [fp, #-16]
    16f4:	e1520003 	cmp	r2, r3
    16f8:	1a000004 	bne	1710 <malloc+0xb4>
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e5932000 	ldr	r2, [r3]
    1704:	e51b300c 	ldr	r3, [fp, #-12]
    1708:	e5832000 	str	r2, [r3]
    170c:	ea00000e 	b	174c <malloc+0xf0>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5932004 	ldr	r2, [r3, #4]
    1718:	e51b3010 	ldr	r3, [fp, #-16]
    171c:	e0422003 	sub	r2, r2, r3
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e5832004 	str	r2, [r3, #4]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e5933004 	ldr	r3, [r3, #4]
    1730:	e1a03183 	lsl	r3, r3, #3
    1734:	e51b2008 	ldr	r2, [fp, #-8]
    1738:	e0823003 	add	r3, r2, r3
    173c:	e50b3008 	str	r3, [fp, #-8]
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e51b2010 	ldr	r2, [fp, #-16]
    1748:	e5832004 	str	r2, [r3, #4]
    174c:	e59f2068 	ldr	r2, [pc, #104]	@ 17bc <malloc+0x160>
    1750:	e51b300c 	ldr	r3, [fp, #-12]
    1754:	e5823000 	str	r3, [r2]
    1758:	e51b3008 	ldr	r3, [fp, #-8]
    175c:	e2833008 	add	r3, r3, #8
    1760:	ea000012 	b	17b0 <malloc+0x154>
    1764:	e59f3050 	ldr	r3, [pc, #80]	@ 17bc <malloc+0x160>
    1768:	e5933000 	ldr	r3, [r3]
    176c:	e51b2008 	ldr	r2, [fp, #-8]
    1770:	e1520003 	cmp	r2, r3
    1774:	1a000007 	bne	1798 <malloc+0x13c>
    1778:	e51b0010 	ldr	r0, [fp, #-16]
    177c:	ebffff94 	bl	15d4 <morecore>
    1780:	e50b0008 	str	r0, [fp, #-8]
    1784:	e51b3008 	ldr	r3, [fp, #-8]
    1788:	e3530000 	cmp	r3, #0
    178c:	1a000001 	bne	1798 <malloc+0x13c>
    1790:	e3a03000 	mov	r3, #0
    1794:	ea000005 	b	17b0 <malloc+0x154>
    1798:	e51b3008 	ldr	r3, [fp, #-8]
    179c:	e50b300c 	str	r3, [fp, #-12]
    17a0:	e51b3008 	ldr	r3, [fp, #-8]
    17a4:	e5933000 	ldr	r3, [r3]
    17a8:	e50b3008 	str	r3, [fp, #-8]
    17ac:	eaffffc8 	b	16d4 <malloc+0x78>
    17b0:	e1a00003 	mov	r0, r3
    17b4:	e24bd004 	sub	sp, fp, #4
    17b8:	e8bd8800 	pop	{fp, pc}
    17bc:	00001970 	.word	0x00001970
    17c0:	00001968 	.word	0x00001968

000017c4 <__udivsi3>:
    17c4:	e2512001 	subs	r2, r1, #1
    17c8:	012fff1e 	bxeq	lr
    17cc:	3a000036 	bcc	18ac <__udivsi3+0xe8>
    17d0:	e1500001 	cmp	r0, r1
    17d4:	9a000022 	bls	1864 <__udivsi3+0xa0>
    17d8:	e1110002 	tst	r1, r2
    17dc:	0a000023 	beq	1870 <__udivsi3+0xac>
    17e0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17e4:	01a01181 	lsleq	r1, r1, #3
    17e8:	03a03008 	moveq	r3, #8
    17ec:	13a03001 	movne	r3, #1
    17f0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17f4:	31510000 	cmpcc	r1, r0
    17f8:	31a01201 	lslcc	r1, r1, #4
    17fc:	31a03203 	lslcc	r3, r3, #4
    1800:	3afffffa 	bcc	17f0 <__udivsi3+0x2c>
    1804:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1808:	31510000 	cmpcc	r1, r0
    180c:	31a01081 	lslcc	r1, r1, #1
    1810:	31a03083 	lslcc	r3, r3, #1
    1814:	3afffffa 	bcc	1804 <__udivsi3+0x40>
    1818:	e3a02000 	mov	r2, #0
    181c:	e1500001 	cmp	r0, r1
    1820:	20400001 	subcs	r0, r0, r1
    1824:	21822003 	orrcs	r2, r2, r3
    1828:	e15000a1 	cmp	r0, r1, lsr #1
    182c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1830:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1834:	e1500121 	cmp	r0, r1, lsr #2
    1838:	20400121 	subcs	r0, r0, r1, lsr #2
    183c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1840:	e15001a1 	cmp	r0, r1, lsr #3
    1844:	204001a1 	subcs	r0, r0, r1, lsr #3
    1848:	218221a3 	orrcs	r2, r2, r3, lsr #3
    184c:	e3500000 	cmp	r0, #0
    1850:	11b03223 	lsrsne	r3, r3, #4
    1854:	11a01221 	lsrne	r1, r1, #4
    1858:	1affffef 	bne	181c <__udivsi3+0x58>
    185c:	e1a00002 	mov	r0, r2
    1860:	e12fff1e 	bx	lr
    1864:	03a00001 	moveq	r0, #1
    1868:	13a00000 	movne	r0, #0
    186c:	e12fff1e 	bx	lr
    1870:	e3510801 	cmp	r1, #65536	@ 0x10000
    1874:	21a01821 	lsrcs	r1, r1, #16
    1878:	23a02010 	movcs	r2, #16
    187c:	33a02000 	movcc	r2, #0
    1880:	e3510c01 	cmp	r1, #256	@ 0x100
    1884:	21a01421 	lsrcs	r1, r1, #8
    1888:	22822008 	addcs	r2, r2, #8
    188c:	e3510010 	cmp	r1, #16
    1890:	21a01221 	lsrcs	r1, r1, #4
    1894:	22822004 	addcs	r2, r2, #4
    1898:	e3510004 	cmp	r1, #4
    189c:	82822003 	addhi	r2, r2, #3
    18a0:	908220a1 	addls	r2, r2, r1, lsr #1
    18a4:	e1a00230 	lsr	r0, r0, r2
    18a8:	e12fff1e 	bx	lr
    18ac:	e3500000 	cmp	r0, #0
    18b0:	13e00000 	mvnne	r0, #0
    18b4:	ea000007 	b	18d8 <__aeabi_idiv0>

000018b8 <__aeabi_uidivmod>:
    18b8:	e3510000 	cmp	r1, #0
    18bc:	0afffffa 	beq	18ac <__udivsi3+0xe8>
    18c0:	e92d4003 	push	{r0, r1, lr}
    18c4:	ebffffbe 	bl	17c4 <__udivsi3>
    18c8:	e8bd4006 	pop	{r1, r2, lr}
    18cc:	e0030092 	mul	r3, r2, r0
    18d0:	e0411003 	sub	r1, r1, r3
    18d4:	e12fff1e 	bx	lr

000018d8 <__aeabi_idiv0>:
    18d8:	e12fff1e 	bx	lr
