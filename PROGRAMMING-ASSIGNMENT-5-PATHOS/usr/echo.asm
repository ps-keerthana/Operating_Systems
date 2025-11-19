
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e5931000 	ldr	r1, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2833001 	add	r3, r3, #1
      3c:	e51b2010 	ldr	r2, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	da000001 	ble	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	@ 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	@ 88 <main+0x88>
      54:	e1a02001 	mov	r2, r1
      58:	e59f102c 	ldr	r1, [pc, #44]	@ 8c <main+0x8c>
      5c:	e3a00001 	mov	r0, #1
      60:	eb00044e 	bl	11a0 <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb0002a4 	bl	b18 <exit>
      84:	0000185c 	.word	0x0000185c
      88:	00001860 	.word	0x00001860
      8c:	00001864 	.word	0x00001864

00000090 <pg_pte>:
      90:	e92d4800 	push	{fp, lr}
      94:	e28db004 	add	fp, sp, #4
      98:	e24dd008 	sub	sp, sp, #8
      9c:	e50b0008 	str	r0, [fp, #-8]
      a0:	e51b1008 	ldr	r1, [fp, #-8]
      a4:	e3a0001a 	mov	r0, #26
      a8:	eb0003de 	bl	1028 <syscall>
      ac:	e1a03000 	mov	r3, r0
      b0:	e1a00003 	mov	r0, r3
      b4:	e24bd004 	sub	sp, fp, #4
      b8:	e8bd8800 	pop	{fp, pc}

000000bc <pg_pa>:
      bc:	e92d4800 	push	{fp, lr}
      c0:	e28db004 	add	fp, sp, #4
      c4:	e24dd008 	sub	sp, sp, #8
      c8:	e50b0008 	str	r0, [fp, #-8]
      cc:	e51b1008 	ldr	r1, [fp, #-8]
      d0:	e3a0001b 	mov	r0, #27
      d4:	eb0003d3 	bl	1028 <syscall>
      d8:	e1a03000 	mov	r3, r0
      dc:	e1a00003 	mov	r0, r3
      e0:	e24bd004 	sub	sp, fp, #4
      e4:	e8bd8800 	pop	{fp, pc}

000000e8 <pg_flags>:
      e8:	e92d4800 	push	{fp, lr}
      ec:	e28db004 	add	fp, sp, #4
      f0:	e24dd008 	sub	sp, sp, #8
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e51b1008 	ldr	r1, [fp, #-8]
      fc:	e3a0001c 	mov	r0, #28
     100:	eb0003c8 	bl	1028 <syscall>
     104:	e1a03000 	mov	r3, r0
     108:	e1a00003 	mov	r0, r3
     10c:	e24bd004 	sub	sp, fp, #4
     110:	e8bd8800 	pop	{fp, pc}

00000114 <kpt>:
     114:	e92d4800 	push	{fp, lr}
     118:	e28db004 	add	fp, sp, #4
     11c:	e3a0001d 	mov	r0, #29
     120:	eb0003c0 	bl	1028 <syscall>
     124:	e1a03000 	mov	r3, r0
     128:	e1a00003 	mov	r0, r3
     12c:	e8bd8800 	pop	{fp, pc}

00000130 <ugetpid>:
     130:	e92d4800 	push	{fp, lr}
     134:	e28db004 	add	fp, sp, #4
     138:	e3a0001e 	mov	r0, #30
     13c:	eb0003b9 	bl	1028 <syscall>
     140:	e1a03000 	mov	r3, r0
     144:	e1a00003 	mov	r0, r3
     148:	e8bd8800 	pop	{fp, pc}

0000014c <strcpy>:
     14c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     150:	e28db000 	add	fp, sp, #0
     154:	e24dd014 	sub	sp, sp, #20
     158:	e50b0010 	str	r0, [fp, #-16]
     15c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     160:	e51b3010 	ldr	r3, [fp, #-16]
     164:	e50b3008 	str	r3, [fp, #-8]
     168:	e1a00000 	nop			@ (mov r0, r0)
     16c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     170:	e2823001 	add	r3, r2, #1
     174:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     178:	e51b3010 	ldr	r3, [fp, #-16]
     17c:	e2831001 	add	r1, r3, #1
     180:	e50b1010 	str	r1, [fp, #-16]
     184:	e5d22000 	ldrb	r2, [r2]
     188:	e5c32000 	strb	r2, [r3]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e3530000 	cmp	r3, #0
     194:	1afffff4 	bne	16c <strcpy+0x20>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e1a00003 	mov	r0, r3
     1a0:	e28bd000 	add	sp, fp, #0
     1a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a8:	e12fff1e 	bx	lr

000001ac <strcmp>:
     1ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b0:	e28db000 	add	fp, sp, #0
     1b4:	e24dd00c 	sub	sp, sp, #12
     1b8:	e50b0008 	str	r0, [fp, #-8]
     1bc:	e50b100c 	str	r1, [fp, #-12]
     1c0:	ea000005 	b	1dc <strcmp+0x30>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b300c 	ldr	r3, [fp, #-12]
     1d4:	e2833001 	add	r3, r3, #1
     1d8:	e50b300c 	str	r3, [fp, #-12]
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e3530000 	cmp	r3, #0
     1e8:	0a000005 	beq	204 <strcmp+0x58>
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e5d32000 	ldrb	r2, [r3]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e1520003 	cmp	r2, r3
     200:	0affffef 	beq	1c4 <strcmp+0x18>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e5d33000 	ldrb	r3, [r3]
     20c:	e1a02003 	mov	r2, r3
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e5d33000 	ldrb	r3, [r3]
     218:	e0423003 	sub	r3, r2, r3
     21c:	e1a00003 	mov	r0, r3
     220:	e28bd000 	add	sp, fp, #0
     224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     228:	e12fff1e 	bx	lr

0000022c <strlen>:
     22c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     230:	e28db000 	add	fp, sp, #0
     234:	e24dd014 	sub	sp, sp, #20
     238:	e50b0010 	str	r0, [fp, #-16]
     23c:	e3a03000 	mov	r3, #0
     240:	e50b3008 	str	r3, [fp, #-8]
     244:	ea000002 	b	254 <strlen+0x28>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2833001 	add	r3, r3, #1
     250:	e50b3008 	str	r3, [fp, #-8]
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e51b2010 	ldr	r2, [fp, #-16]
     25c:	e0823003 	add	r3, r2, r3
     260:	e5d33000 	ldrb	r3, [r3]
     264:	e3530000 	cmp	r3, #0
     268:	1afffff6 	bne	248 <strlen+0x1c>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e1a00003 	mov	r0, r3
     274:	e28bd000 	add	sp, fp, #0
     278:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     27c:	e12fff1e 	bx	lr

00000280 <memset>:
     280:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     284:	e28db000 	add	fp, sp, #0
     288:	e24dd024 	sub	sp, sp, #36	@ 0x24
     28c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     290:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     294:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2a4:	e54b300d 	strb	r3, [fp, #-13]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e1a03002 	mov	r3, r2
     2b0:	e1a03403 	lsl	r3, r3, #8
     2b4:	e0833002 	add	r3, r3, r2
     2b8:	e1a03803 	lsl	r3, r3, #16
     2bc:	e1a02003 	mov	r2, r3
     2c0:	e55b300d 	ldrb	r3, [fp, #-13]
     2c4:	e1a03403 	lsl	r3, r3, #8
     2c8:	e1822003 	orr	r2, r2, r3
     2cc:	e55b300d 	ldrb	r3, [fp, #-13]
     2d0:	e1823003 	orr	r3, r2, r3
     2d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2d8:	ea000008 	b	300 <memset+0x80>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e55b200d 	ldrb	r2, [fp, #-13]
     2e4:	e5c32000 	strb	r2, [r3]
     2e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e2433001 	sub	r3, r3, #1
     2f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e2833001 	add	r3, r3, #1
     2fc:	e50b3008 	str	r3, [fp, #-8]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e3530000 	cmp	r3, #0
     308:	0a000003 	beq	31c <memset+0x9c>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e2033003 	and	r3, r3, #3
     314:	e3530000 	cmp	r3, #0
     318:	1affffef 	bne	2dc <memset+0x5c>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e50b300c 	str	r3, [fp, #-12]
     324:	ea000008 	b	34c <memset+0xcc>
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     330:	e5832000 	str	r2, [r3]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e2433004 	sub	r3, r3, #4
     33c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e2833004 	add	r3, r3, #4
     348:	e50b300c 	str	r3, [fp, #-12]
     34c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     350:	e3530003 	cmp	r3, #3
     354:	8afffff3 	bhi	328 <memset+0xa8>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000008 	b	388 <memset+0x108>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e55b200d 	ldrb	r2, [fp, #-13]
     36c:	e5c32000 	strb	r2, [r3]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e2433001 	sub	r3, r3, #1
     378:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e2833001 	add	r3, r3, #1
     384:	e50b3008 	str	r3, [fp, #-8]
     388:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     38c:	e3530000 	cmp	r3, #0
     390:	1afffff3 	bne	364 <memset+0xe4>
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e1a00003 	mov	r0, r3
     39c:	e28bd000 	add	sp, fp, #0
     3a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a4:	e12fff1e 	bx	lr

000003a8 <strchr>:
     3a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3ac:	e28db000 	add	fp, sp, #0
     3b0:	e24dd00c 	sub	sp, sp, #12
     3b4:	e50b0008 	str	r0, [fp, #-8]
     3b8:	e1a03001 	mov	r3, r1
     3bc:	e54b3009 	strb	r3, [fp, #-9]
     3c0:	ea000009 	b	3ec <strchr+0x44>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e5d33000 	ldrb	r3, [r3]
     3cc:	e55b2009 	ldrb	r2, [fp, #-9]
     3d0:	e1520003 	cmp	r2, r3
     3d4:	1a000001 	bne	3e0 <strchr+0x38>
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	ea000007 	b	400 <strchr+0x58>
     3e0:	e51b3008 	ldr	r3, [fp, #-8]
     3e4:	e2833001 	add	r3, r3, #1
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e5d33000 	ldrb	r3, [r3]
     3f4:	e3530000 	cmp	r3, #0
     3f8:	1afffff1 	bne	3c4 <strchr+0x1c>
     3fc:	e3a03000 	mov	r3, #0
     400:	e1a00003 	mov	r0, r3
     404:	e28bd000 	add	sp, fp, #0
     408:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     40c:	e12fff1e 	bx	lr

00000410 <gets>:
     410:	e92d4800 	push	{fp, lr}
     414:	e28db004 	add	fp, sp, #4
     418:	e24dd018 	sub	sp, sp, #24
     41c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     420:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     424:	e3a03000 	mov	r3, #0
     428:	e50b3008 	str	r3, [fp, #-8]
     42c:	ea000016 	b	48c <gets+0x7c>
     430:	e24b300d 	sub	r3, fp, #13
     434:	e3a02001 	mov	r2, #1
     438:	e1a01003 	mov	r1, r3
     43c:	e3a00000 	mov	r0, #0
     440:	eb0001cf 	bl	b84 <read>
     444:	e50b000c 	str	r0, [fp, #-12]
     448:	e51b300c 	ldr	r3, [fp, #-12]
     44c:	e3530000 	cmp	r3, #0
     450:	da000013 	ble	4a4 <gets+0x94>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e2832001 	add	r2, r3, #1
     45c:	e50b2008 	str	r2, [fp, #-8]
     460:	e1a02003 	mov	r2, r3
     464:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     468:	e0833002 	add	r3, r3, r2
     46c:	e55b200d 	ldrb	r2, [fp, #-13]
     470:	e5c32000 	strb	r2, [r3]
     474:	e55b300d 	ldrb	r3, [fp, #-13]
     478:	e353000a 	cmp	r3, #10
     47c:	0a000009 	beq	4a8 <gets+0x98>
     480:	e55b300d 	ldrb	r3, [fp, #-13]
     484:	e353000d 	cmp	r3, #13
     488:	0a000006 	beq	4a8 <gets+0x98>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e2833001 	add	r3, r3, #1
     494:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     498:	e1520003 	cmp	r2, r3
     49c:	caffffe3 	bgt	430 <gets+0x20>
     4a0:	ea000000 	b	4a8 <gets+0x98>
     4a4:	e1a00000 	nop			@ (mov r0, r0)
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4b0:	e0823003 	add	r3, r2, r3
     4b4:	e3a02000 	mov	r2, #0
     4b8:	e5c32000 	strb	r2, [r3]
     4bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4c0:	e1a00003 	mov	r0, r3
     4c4:	e24bd004 	sub	sp, fp, #4
     4c8:	e8bd8800 	pop	{fp, pc}

000004cc <stat>:
     4cc:	e92d4800 	push	{fp, lr}
     4d0:	e28db004 	add	fp, sp, #4
     4d4:	e24dd010 	sub	sp, sp, #16
     4d8:	e50b0010 	str	r0, [fp, #-16]
     4dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4e0:	e3a01000 	mov	r1, #0
     4e4:	e51b0010 	ldr	r0, [fp, #-16]
     4e8:	eb0001d2 	bl	c38 <open>
     4ec:	e50b0008 	str	r0, [fp, #-8]
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	aa000001 	bge	504 <stat+0x38>
     4fc:	e3e03000 	mvn	r3, #0
     500:	ea000006 	b	520 <stat+0x54>
     504:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     508:	e51b0008 	ldr	r0, [fp, #-8]
     50c:	eb0001e4 	bl	ca4 <fstat>
     510:	e50b000c 	str	r0, [fp, #-12]
     514:	e51b0008 	ldr	r0, [fp, #-8]
     518:	eb0001ab 	bl	bcc <close>
     51c:	e51b300c 	ldr	r3, [fp, #-12]
     520:	e1a00003 	mov	r0, r3
     524:	e24bd004 	sub	sp, fp, #4
     528:	e8bd8800 	pop	{fp, pc}

0000052c <atoi>:
     52c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     530:	e28db000 	add	fp, sp, #0
     534:	e24dd014 	sub	sp, sp, #20
     538:	e50b0010 	str	r0, [fp, #-16]
     53c:	e3a03000 	mov	r3, #0
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	ea00000c 	b	57c <atoi+0x50>
     548:	e51b2008 	ldr	r2, [fp, #-8]
     54c:	e1a03002 	mov	r3, r2
     550:	e1a03103 	lsl	r3, r3, #2
     554:	e0833002 	add	r3, r3, r2
     558:	e1a03083 	lsl	r3, r3, #1
     55c:	e1a01003 	mov	r1, r3
     560:	e51b3010 	ldr	r3, [fp, #-16]
     564:	e2832001 	add	r2, r3, #1
     568:	e50b2010 	str	r2, [fp, #-16]
     56c:	e5d33000 	ldrb	r3, [r3]
     570:	e0813003 	add	r3, r1, r3
     574:	e2433030 	sub	r3, r3, #48	@ 0x30
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	e51b3010 	ldr	r3, [fp, #-16]
     580:	e5d33000 	ldrb	r3, [r3]
     584:	e353002f 	cmp	r3, #47	@ 0x2f
     588:	9a000003 	bls	59c <atoi+0x70>
     58c:	e51b3010 	ldr	r3, [fp, #-16]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e3530039 	cmp	r3, #57	@ 0x39
     598:	9affffea 	bls	548 <atoi+0x1c>
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e1a00003 	mov	r0, r3
     5a4:	e28bd000 	add	sp, fp, #0
     5a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <memmove>:
     5b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b4:	e28db000 	add	fp, sp, #0
     5b8:	e24dd01c 	sub	sp, sp, #28
     5bc:	e50b0010 	str	r0, [fp, #-16]
     5c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c8:	e51b3010 	ldr	r3, [fp, #-16]
     5cc:	e50b3008 	str	r3, [fp, #-8]
     5d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d4:	e50b300c 	str	r3, [fp, #-12]
     5d8:	ea000007 	b	5fc <memmove+0x4c>
     5dc:	e51b200c 	ldr	r2, [fp, #-12]
     5e0:	e2823001 	add	r3, r2, #1
     5e4:	e50b300c 	str	r3, [fp, #-12]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e2831001 	add	r1, r3, #1
     5f0:	e50b1008 	str	r1, [fp, #-8]
     5f4:	e5d22000 	ldrb	r2, [r2]
     5f8:	e5c32000 	strb	r2, [r3]
     5fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     600:	e2432001 	sub	r2, r3, #1
     604:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     608:	e3530000 	cmp	r3, #0
     60c:	cafffff2 	bgt	5dc <memmove+0x2c>
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e1a00003 	mov	r0, r3
     618:	e28bd000 	add	sp, fp, #0
     61c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <strncmp>:
     624:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     628:	e28db000 	add	fp, sp, #0
     62c:	e24dd014 	sub	sp, sp, #20
     630:	e50b0008 	str	r0, [fp, #-8]
     634:	e50b100c 	str	r1, [fp, #-12]
     638:	e50b2010 	str	r2, [fp, #-16]
     63c:	ea000008 	b	664 <strncmp+0x40>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e2833001 	add	r3, r3, #1
     648:	e50b3008 	str	r3, [fp, #-8]
     64c:	e51b300c 	ldr	r3, [fp, #-12]
     650:	e2833001 	add	r3, r3, #1
     654:	e50b300c 	str	r3, [fp, #-12]
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e2433001 	sub	r3, r3, #1
     660:	e50b3010 	str	r3, [fp, #-16]
     664:	e51b3010 	ldr	r3, [fp, #-16]
     668:	e3530000 	cmp	r3, #0
     66c:	da00000d 	ble	6a8 <strncmp+0x84>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e5d33000 	ldrb	r3, [r3]
     678:	e3530000 	cmp	r3, #0
     67c:	0a000009 	beq	6a8 <strncmp+0x84>
     680:	e51b300c 	ldr	r3, [fp, #-12]
     684:	e5d33000 	ldrb	r3, [r3]
     688:	e3530000 	cmp	r3, #0
     68c:	0a000005 	beq	6a8 <strncmp+0x84>
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e5d32000 	ldrb	r2, [r3]
     698:	e51b300c 	ldr	r3, [fp, #-12]
     69c:	e5d33000 	ldrb	r3, [r3]
     6a0:	e1520003 	cmp	r2, r3
     6a4:	0affffe5 	beq	640 <strncmp+0x1c>
     6a8:	e51b3010 	ldr	r3, [fp, #-16]
     6ac:	e3530000 	cmp	r3, #0
     6b0:	1a000001 	bne	6bc <strncmp+0x98>
     6b4:	e3a03000 	mov	r3, #0
     6b8:	ea000005 	b	6d4 <strncmp+0xb0>
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e1a02003 	mov	r2, r3
     6c8:	e51b300c 	ldr	r3, [fp, #-12]
     6cc:	e5d33000 	ldrb	r3, [r3]
     6d0:	e0423003 	sub	r3, r2, r3
     6d4:	e1a00003 	mov	r0, r3
     6d8:	e28bd000 	add	sp, fp, #0
     6dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <strncpy>:
     6e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e8:	e28db000 	add	fp, sp, #0
     6ec:	e24dd01c 	sub	sp, sp, #28
     6f0:	e50b0010 	str	r0, [fp, #-16]
     6f4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6f8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6fc:	e51b3010 	ldr	r3, [fp, #-16]
     700:	e50b3008 	str	r3, [fp, #-8]
     704:	ea00000a 	b	734 <strncpy+0x50>
     708:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     70c:	e2823001 	add	r3, r2, #1
     710:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e2831001 	add	r1, r3, #1
     71c:	e50b1008 	str	r1, [fp, #-8]
     720:	e5d22000 	ldrb	r2, [r2]
     724:	e5c32000 	strb	r2, [r3]
     728:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     72c:	e2433001 	sub	r3, r3, #1
     730:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     734:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     738:	e3530000 	cmp	r3, #0
     73c:	da00000c 	ble	774 <strncpy+0x90>
     740:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     744:	e5d33000 	ldrb	r3, [r3]
     748:	e3530000 	cmp	r3, #0
     74c:	1affffed 	bne	708 <strncpy+0x24>
     750:	ea000007 	b	774 <strncpy+0x90>
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e2832001 	add	r2, r3, #1
     75c:	e50b2008 	str	r2, [fp, #-8]
     760:	e3a02000 	mov	r2, #0
     764:	e5c32000 	strb	r2, [r3]
     768:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     76c:	e2433001 	sub	r3, r3, #1
     770:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e3530000 	cmp	r3, #0
     77c:	cafffff4 	bgt	754 <strncpy+0x70>
     780:	e51b3010 	ldr	r3, [fp, #-16]
     784:	e1a00003 	mov	r0, r3
     788:	e28bd000 	add	sp, fp, #0
     78c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <xchg>:
     794:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     798:	e28db000 	add	fp, sp, #0
     79c:	e24dd014 	sub	sp, sp, #20
     7a0:	e50b0010 	str	r0, [fp, #-16]
     7a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7a8:	e51b2010 	ldr	r2, [fp, #-16]
     7ac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7b0:	e1023091 	swp	r3, r1, [r2]
     7b4:	e50b3008 	str	r3, [fp, #-8]
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e1a00003 	mov	r0, r3
     7c0:	e28bd000 	add	sp, fp, #0
     7c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <initiateLock>:
     7cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d0:	e28db000 	add	fp, sp, #0
     7d4:	e24dd00c 	sub	sp, sp, #12
     7d8:	e50b0008 	str	r0, [fp, #-8]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e3a02000 	mov	r2, #0
     7e4:	e5832000 	str	r2, [r3]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e3a02001 	mov	r2, #1
     7f0:	e5832004 	str	r2, [r3, #4]
     7f4:	e1a00000 	nop			@ (mov r0, r0)
     7f8:	e28bd000 	add	sp, fp, #0
     7fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <acquireLock>:
     804:	e92d4800 	push	{fp, lr}
     808:	e28db004 	add	fp, sp, #4
     80c:	e24dd008 	sub	sp, sp, #8
     810:	e50b0008 	str	r0, [fp, #-8]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5933004 	ldr	r3, [r3, #4]
     81c:	e3530000 	cmp	r3, #0
     820:	0a000008 	beq	848 <acquireLock+0x44>
     824:	e1a00000 	nop			@ (mov r0, r0)
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e3a01001 	mov	r1, #1
     830:	e1a00003 	mov	r0, r3
     834:	ebffffd6 	bl	794 <xchg>
     838:	e1a03000 	mov	r3, r0
     83c:	e3530000 	cmp	r3, #0
     840:	1afffff8 	bne	828 <acquireLock+0x24>
     844:	ea000000 	b	84c <acquireLock+0x48>
     848:	e1a00000 	nop			@ (mov r0, r0)
     84c:	e24bd004 	sub	sp, fp, #4
     850:	e8bd8800 	pop	{fp, pc}

00000854 <releaseLock>:
     854:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     858:	e28db000 	add	fp, sp, #0
     85c:	e24dd00c 	sub	sp, sp, #12
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e5933004 	ldr	r3, [r3, #4]
     86c:	e3530000 	cmp	r3, #0
     870:	0a000006 	beq	890 <releaseLock+0x3c>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5933000 	ldr	r3, [r3]
     87c:	e3530001 	cmp	r3, #1
     880:	1a000002 	bne	890 <releaseLock+0x3c>
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e3a02000 	mov	r2, #0
     88c:	e5832000 	str	r2, [r3]
     890:	e1a00000 	nop			@ (mov r0, r0)
     894:	e28bd000 	add	sp, fp, #0
     898:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <initiateCondVar>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	eb0001b8 	bl	f98 <getChannel>
     8b4:	e1a02000 	mov	r2, r0
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5832000 	str	r2, [r3]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e3a02001 	mov	r2, #1
     8c8:	e5832004 	str	r2, [r3, #4]
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e24bd004 	sub	sp, fp, #4
     8d4:	e8bd8800 	pop	{fp, pc}

000008d8 <condWait>:
     8d8:	e92d4800 	push	{fp, lr}
     8dc:	e28db004 	add	fp, sp, #4
     8e0:	e24dd008 	sub	sp, sp, #8
     8e4:	e50b0008 	str	r0, [fp, #-8]
     8e8:	e50b100c 	str	r1, [fp, #-12]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5933004 	ldr	r3, [r3, #4]
     8f4:	e3530000 	cmp	r3, #0
     8f8:	0a00000c 	beq	930 <condWait+0x58>
     8fc:	e51b300c 	ldr	r3, [fp, #-12]
     900:	e5933004 	ldr	r3, [r3, #4]
     904:	e3530000 	cmp	r3, #0
     908:	0a000008 	beq	930 <condWait+0x58>
     90c:	e51b000c 	ldr	r0, [fp, #-12]
     910:	ebffffcf 	bl	854 <releaseLock>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5933000 	ldr	r3, [r3]
     91c:	e1a00003 	mov	r0, r3
     920:	eb000193 	bl	f74 <sleepChan>
     924:	e51b000c 	ldr	r0, [fp, #-12]
     928:	ebffffb5 	bl	804 <acquireLock>
     92c:	ea000000 	b	934 <condWait+0x5c>
     930:	e1a00000 	nop			@ (mov r0, r0)
     934:	e24bd004 	sub	sp, fp, #4
     938:	e8bd8800 	pop	{fp, pc}

0000093c <broadcast>:
     93c:	e92d4800 	push	{fp, lr}
     940:	e28db004 	add	fp, sp, #4
     944:	e24dd008 	sub	sp, sp, #8
     948:	e50b0008 	str	r0, [fp, #-8]
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5933004 	ldr	r3, [r3, #4]
     954:	e3530000 	cmp	r3, #0
     958:	0a000004 	beq	970 <broadcast+0x34>
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e5933000 	ldr	r3, [r3]
     964:	e1a00003 	mov	r0, r3
     968:	eb000193 	bl	fbc <sigChan>
     96c:	ea000000 	b	974 <broadcast+0x38>
     970:	e1a00000 	nop			@ (mov r0, r0)
     974:	e24bd004 	sub	sp, fp, #4
     978:	e8bd8800 	pop	{fp, pc}

0000097c <signal>:
     97c:	e92d4800 	push	{fp, lr}
     980:	e28db004 	add	fp, sp, #4
     984:	e24dd008 	sub	sp, sp, #8
     988:	e50b0008 	str	r0, [fp, #-8]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933004 	ldr	r3, [r3, #4]
     994:	e3530000 	cmp	r3, #0
     998:	0a000004 	beq	9b0 <signal+0x34>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e5933000 	ldr	r3, [r3]
     9a4:	e1a00003 	mov	r0, r3
     9a8:	eb00018c 	bl	fe0 <sigOneChan>
     9ac:	ea000000 	b	9b4 <signal+0x38>
     9b0:	e1a00000 	nop			@ (mov r0, r0)
     9b4:	e24bd004 	sub	sp, fp, #4
     9b8:	e8bd8800 	pop	{fp, pc}

000009bc <semInit>:
     9bc:	e92d4800 	push	{fp, lr}
     9c0:	e28db004 	add	fp, sp, #4
     9c4:	e24dd008 	sub	sp, sp, #8
     9c8:	e50b0008 	str	r0, [fp, #-8]
     9cc:	e50b100c 	str	r1, [fp, #-12]
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e2833004 	add	r3, r3, #4
     9d8:	e1a00003 	mov	r0, r3
     9dc:	ebffff7a 	bl	7cc <initiateLock>
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e283300c 	add	r3, r3, #12
     9e8:	e1a00003 	mov	r0, r3
     9ec:	ebffffab 	bl	8a0 <initiateCondVar>
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e51b200c 	ldr	r2, [fp, #-12]
     9f8:	e5832000 	str	r2, [r3]
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e3a02001 	mov	r2, #1
     a04:	e5832014 	str	r2, [r3, #20]
     a08:	e1a00000 	nop			@ (mov r0, r0)
     a0c:	e24bd004 	sub	sp, fp, #4
     a10:	e8bd8800 	pop	{fp, pc}

00000a14 <semUp>:
     a14:	e92d4800 	push	{fp, lr}
     a18:	e28db004 	add	fp, sp, #4
     a1c:	e24dd008 	sub	sp, sp, #8
     a20:	e50b0008 	str	r0, [fp, #-8]
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e2833004 	add	r3, r3, #4
     a2c:	e1a00003 	mov	r0, r3
     a30:	ebffff73 	bl	804 <acquireLock>
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e5933000 	ldr	r3, [r3]
     a3c:	e2832001 	add	r2, r3, #1
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e5832000 	str	r2, [r3]
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e283300c 	add	r3, r3, #12
     a50:	e1a00003 	mov	r0, r3
     a54:	ebffffc8 	bl	97c <signal>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e2833004 	add	r3, r3, #4
     a60:	e1a00003 	mov	r0, r3
     a64:	ebffff7a 	bl	854 <releaseLock>
     a68:	e1a00000 	nop			@ (mov r0, r0)
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}

00000a74 <semDown>:
     a74:	e92d4800 	push	{fp, lr}
     a78:	e28db004 	add	fp, sp, #4
     a7c:	e24dd008 	sub	sp, sp, #8
     a80:	e50b0008 	str	r0, [fp, #-8]
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e2833004 	add	r3, r3, #4
     a8c:	e1a00003 	mov	r0, r3
     a90:	ebffff5b 	bl	804 <acquireLock>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e5933000 	ldr	r3, [r3]
     a9c:	e2432001 	sub	r2, r3, #1
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e5832000 	str	r2, [r3]
     aa8:	ea000006 	b	ac8 <semDown+0x54>
     aac:	e51b3008 	ldr	r3, [fp, #-8]
     ab0:	e283200c 	add	r2, r3, #12
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e2833004 	add	r3, r3, #4
     abc:	e1a01003 	mov	r1, r3
     ac0:	e1a00002 	mov	r0, r2
     ac4:	ebffff83 	bl	8d8 <condWait>
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e5933000 	ldr	r3, [r3]
     ad0:	e3530000 	cmp	r3, #0
     ad4:	bafffff4 	blt	aac <semDown+0x38>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e2833004 	add	r3, r3, #4
     ae0:	e1a00003 	mov	r0, r3
     ae4:	ebffff5a 	bl	854 <releaseLock>
     ae8:	e1a00000 	nop			@ (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}

00000af4 <fork>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00001 	mov	r0, #1
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <exit>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00002 	mov	r0, #2
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <wait>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00003 	mov	r0, #3
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <pipe>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00004 	mov	r0, #4
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <read>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00005 	mov	r0, #5
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <write>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00010 	mov	r0, #16
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <close>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00015 	mov	r0, #21
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <kill>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00006 	mov	r0, #6
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <exec>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00007 	mov	r0, #7
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <open>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a0000f 	mov	r0, #15
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <mknod>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00011 	mov	r0, #17
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <unlink>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00012 	mov	r0, #18
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <fstat>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a00008 	mov	r0, #8
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <link>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a00013 	mov	r0, #19
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <mkdir>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a00014 	mov	r0, #20
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <chdir>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a00009 	mov	r0, #9
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <dup>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0000a 	mov	r0, #10
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <getpid>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a0000b 	mov	r0, #11
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <sbrk>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a0000c 	mov	r0, #12
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <sleep>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a0000d 	mov	r0, #13
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <uptime>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a0000e 	mov	r0, #14
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <proclist>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a00016 	mov	r0, #22
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <settickets>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a00017 	mov	r0, #23
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <srand>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a00018 	mov	r0, #24
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <getpinfo>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a00019 	mov	r0, #25
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <print_pt>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a0001f 	mov	r0, #31
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <thread_create>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a00020 	mov	r0, #32
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <thread_exit>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00021 	mov	r0, #33	@ 0x21
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <thread_join>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a00022 	mov	r0, #34	@ 0x22
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <waitpid>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00023 	mov	r0, #35	@ 0x23
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <barrier_init>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00024 	mov	r0, #36	@ 0x24
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <barrier_check>:
     f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f54:	e1a04003 	mov	r4, r3
     f58:	e1a03002 	mov	r3, r2
     f5c:	e1a02001 	mov	r2, r1
     f60:	e1a01000 	mov	r1, r0
     f64:	e3a00025 	mov	r0, #37	@ 0x25
     f68:	ef000000 	svc	0x00000000
     f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f70:	e12fff1e 	bx	lr

00000f74 <sleepChan>:
     f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f78:	e1a04003 	mov	r4, r3
     f7c:	e1a03002 	mov	r3, r2
     f80:	e1a02001 	mov	r2, r1
     f84:	e1a01000 	mov	r1, r0
     f88:	e3a00026 	mov	r0, #38	@ 0x26
     f8c:	ef000000 	svc	0x00000000
     f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f94:	e12fff1e 	bx	lr

00000f98 <getChannel>:
     f98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f9c:	e1a04003 	mov	r4, r3
     fa0:	e1a03002 	mov	r3, r2
     fa4:	e1a02001 	mov	r2, r1
     fa8:	e1a01000 	mov	r1, r0
     fac:	e3a00027 	mov	r0, #39	@ 0x27
     fb0:	ef000000 	svc	0x00000000
     fb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb8:	e12fff1e 	bx	lr

00000fbc <sigChan>:
     fbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc0:	e1a04003 	mov	r4, r3
     fc4:	e1a03002 	mov	r3, r2
     fc8:	e1a02001 	mov	r2, r1
     fcc:	e1a01000 	mov	r1, r0
     fd0:	e3a00028 	mov	r0, #40	@ 0x28
     fd4:	ef000000 	svc	0x00000000
     fd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fdc:	e12fff1e 	bx	lr

00000fe0 <sigOneChan>:
     fe0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe4:	e1a04003 	mov	r4, r3
     fe8:	e1a03002 	mov	r3, r2
     fec:	e1a02001 	mov	r2, r1
     ff0:	e1a01000 	mov	r1, r0
     ff4:	e3a00029 	mov	r0, #41	@ 0x29
     ff8:	ef000000 	svc	0x00000000
     ffc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1000:	e12fff1e 	bx	lr

00001004 <symlink>:
    1004:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1008:	e1a04003 	mov	r4, r3
    100c:	e1a03002 	mov	r3, r2
    1010:	e1a02001 	mov	r2, r1
    1014:	e1a01000 	mov	r1, r0
    1018:	e3a0002a 	mov	r0, #42	@ 0x2a
    101c:	ef000000 	svc	0x00000000
    1020:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1024:	e12fff1e 	bx	lr

00001028 <syscall>:
    1028:	ef000000 	svc	0x00000000
    102c:	e12fff1e 	bx	lr

00001030 <putc>:
    1030:	e92d4800 	push	{fp, lr}
    1034:	e28db004 	add	fp, sp, #4
    1038:	e24dd008 	sub	sp, sp, #8
    103c:	e50b0008 	str	r0, [fp, #-8]
    1040:	e1a03001 	mov	r3, r1
    1044:	e54b3009 	strb	r3, [fp, #-9]
    1048:	e24b3009 	sub	r3, fp, #9
    104c:	e3a02001 	mov	r2, #1
    1050:	e1a01003 	mov	r1, r3
    1054:	e51b0008 	ldr	r0, [fp, #-8]
    1058:	ebfffed2 	bl	ba8 <write>
    105c:	e1a00000 	nop			@ (mov r0, r0)
    1060:	e24bd004 	sub	sp, fp, #4
    1064:	e8bd8800 	pop	{fp, pc}

00001068 <printint>:
    1068:	e92d4800 	push	{fp, lr}
    106c:	e28db004 	add	fp, sp, #4
    1070:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1074:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1078:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    107c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1080:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1084:	e3a03000 	mov	r3, #0
    1088:	e50b300c 	str	r3, [fp, #-12]
    108c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1090:	e3530000 	cmp	r3, #0
    1094:	0a000008 	beq	10bc <printint+0x54>
    1098:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    109c:	e3530000 	cmp	r3, #0
    10a0:	aa000005 	bge	10bc <printint+0x54>
    10a4:	e3a03001 	mov	r3, #1
    10a8:	e50b300c 	str	r3, [fp, #-12]
    10ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10b0:	e2633000 	rsb	r3, r3, #0
    10b4:	e50b3010 	str	r3, [fp, #-16]
    10b8:	ea000001 	b	10c4 <printint+0x5c>
    10bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10c0:	e50b3010 	str	r3, [fp, #-16]
    10c4:	e3a03000 	mov	r3, #0
    10c8:	e50b3008 	str	r3, [fp, #-8]
    10cc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    10d0:	e51b3010 	ldr	r3, [fp, #-16]
    10d4:	e1a01002 	mov	r1, r2
    10d8:	e1a00003 	mov	r0, r3
    10dc:	eb0001d5 	bl	1838 <__aeabi_uidivmod>
    10e0:	e1a03001 	mov	r3, r1
    10e4:	e1a01003 	mov	r1, r3
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e2832001 	add	r2, r3, #1
    10f0:	e50b2008 	str	r2, [fp, #-8]
    10f4:	e59f20a0 	ldr	r2, [pc, #160]	@ 119c <printint+0x134>
    10f8:	e7d22001 	ldrb	r2, [r2, r1]
    10fc:	e2433004 	sub	r3, r3, #4
    1100:	e083300b 	add	r3, r3, fp
    1104:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1108:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    110c:	e1a01003 	mov	r1, r3
    1110:	e51b0010 	ldr	r0, [fp, #-16]
    1114:	eb00018a 	bl	1744 <__udivsi3>
    1118:	e1a03000 	mov	r3, r0
    111c:	e50b3010 	str	r3, [fp, #-16]
    1120:	e51b3010 	ldr	r3, [fp, #-16]
    1124:	e3530000 	cmp	r3, #0
    1128:	1affffe7 	bne	10cc <printint+0x64>
    112c:	e51b300c 	ldr	r3, [fp, #-12]
    1130:	e3530000 	cmp	r3, #0
    1134:	0a00000e 	beq	1174 <printint+0x10c>
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e2832001 	add	r2, r3, #1
    1140:	e50b2008 	str	r2, [fp, #-8]
    1144:	e2433004 	sub	r3, r3, #4
    1148:	e083300b 	add	r3, r3, fp
    114c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1150:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1154:	ea000006 	b	1174 <printint+0x10c>
    1158:	e24b2020 	sub	r2, fp, #32
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e0823003 	add	r3, r2, r3
    1164:	e5d33000 	ldrb	r3, [r3]
    1168:	e1a01003 	mov	r1, r3
    116c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1170:	ebffffae 	bl	1030 <putc>
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e2433001 	sub	r3, r3, #1
    117c:	e50b3008 	str	r3, [fp, #-8]
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e3530000 	cmp	r3, #0
    1188:	aafffff2 	bge	1158 <printint+0xf0>
    118c:	e1a00000 	nop			@ (mov r0, r0)
    1190:	e1a00000 	nop			@ (mov r0, r0)
    1194:	e24bd004 	sub	sp, fp, #4
    1198:	e8bd8800 	pop	{fp, pc}
    119c:	00001874 	.word	0x00001874

000011a0 <printf>:
    11a0:	e92d000e 	push	{r1, r2, r3}
    11a4:	e92d4800 	push	{fp, lr}
    11a8:	e28db004 	add	fp, sp, #4
    11ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11b0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	e3a03000 	mov	r3, #0
    11b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11bc:	e28b3008 	add	r3, fp, #8
    11c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c4:	e3a03000 	mov	r3, #0
    11c8:	e50b3010 	str	r3, [fp, #-16]
    11cc:	ea000074 	b	13a4 <printf+0x204>
    11d0:	e59b2004 	ldr	r2, [fp, #4]
    11d4:	e51b3010 	ldr	r3, [fp, #-16]
    11d8:	e0823003 	add	r3, r2, r3
    11dc:	e5d33000 	ldrb	r3, [r3]
    11e0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11e8:	e3530000 	cmp	r3, #0
    11ec:	1a00000b 	bne	1220 <printf+0x80>
    11f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f4:	e3530025 	cmp	r3, #37	@ 0x25
    11f8:	1a000002 	bne	1208 <printf+0x68>
    11fc:	e3a03025 	mov	r3, #37	@ 0x25
    1200:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1204:	ea000063 	b	1398 <printf+0x1f8>
    1208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    120c:	e6ef3073 	uxtb	r3, r3
    1210:	e1a01003 	mov	r1, r3
    1214:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1218:	ebffff84 	bl	1030 <putc>
    121c:	ea00005d 	b	1398 <printf+0x1f8>
    1220:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1224:	e3530025 	cmp	r3, #37	@ 0x25
    1228:	1a00005a 	bne	1398 <printf+0x1f8>
    122c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1230:	e3530064 	cmp	r3, #100	@ 0x64
    1234:	1a00000a 	bne	1264 <printf+0xc4>
    1238:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e1a01003 	mov	r1, r3
    1244:	e3a03001 	mov	r3, #1
    1248:	e3a0200a 	mov	r2, #10
    124c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1250:	ebffff84 	bl	1068 <printint>
    1254:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1258:	e2833004 	add	r3, r3, #4
    125c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1260:	ea00004a 	b	1390 <printf+0x1f0>
    1264:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1268:	e3530078 	cmp	r3, #120	@ 0x78
    126c:	0a000002 	beq	127c <printf+0xdc>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e3530070 	cmp	r3, #112	@ 0x70
    1278:	1a00000a 	bne	12a8 <printf+0x108>
    127c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1280:	e5933000 	ldr	r3, [r3]
    1284:	e1a01003 	mov	r1, r3
    1288:	e3a03000 	mov	r3, #0
    128c:	e3a02010 	mov	r2, #16
    1290:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1294:	ebffff73 	bl	1068 <printint>
    1298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    129c:	e2833004 	add	r3, r3, #4
    12a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12a4:	ea000039 	b	1390 <printf+0x1f0>
    12a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12ac:	e3530073 	cmp	r3, #115	@ 0x73
    12b0:	1a000018 	bne	1318 <printf+0x178>
    12b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e50b300c 	str	r3, [fp, #-12]
    12c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c4:	e2833004 	add	r3, r3, #4
    12c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e3530000 	cmp	r3, #0
    12d4:	1a00000a 	bne	1304 <printf+0x164>
    12d8:	e59f30f4 	ldr	r3, [pc, #244]	@ 13d4 <printf+0x234>
    12dc:	e50b300c 	str	r3, [fp, #-12]
    12e0:	ea000007 	b	1304 <printf+0x164>
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5d33000 	ldrb	r3, [r3]
    12ec:	e1a01003 	mov	r1, r3
    12f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f4:	ebffff4d 	bl	1030 <putc>
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e2833001 	add	r3, r3, #1
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e5d33000 	ldrb	r3, [r3]
    130c:	e3530000 	cmp	r3, #0
    1310:	1afffff3 	bne	12e4 <printf+0x144>
    1314:	ea00001d 	b	1390 <printf+0x1f0>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530063 	cmp	r3, #99	@ 0x63
    1320:	1a000009 	bne	134c <printf+0x1ac>
    1324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e6ef3073 	uxtb	r3, r3
    1330:	e1a01003 	mov	r1, r3
    1334:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1338:	ebffff3c 	bl	1030 <putc>
    133c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1340:	e2833004 	add	r3, r3, #4
    1344:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1348:	ea000010 	b	1390 <printf+0x1f0>
    134c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1350:	e3530025 	cmp	r3, #37	@ 0x25
    1354:	1a000005 	bne	1370 <printf+0x1d0>
    1358:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    135c:	e6ef3073 	uxtb	r3, r3
    1360:	e1a01003 	mov	r1, r3
    1364:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1368:	ebffff30 	bl	1030 <putc>
    136c:	ea000007 	b	1390 <printf+0x1f0>
    1370:	e3a01025 	mov	r1, #37	@ 0x25
    1374:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1378:	ebffff2c 	bl	1030 <putc>
    137c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1380:	e6ef3073 	uxtb	r3, r3
    1384:	e1a01003 	mov	r1, r3
    1388:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    138c:	ebffff27 	bl	1030 <putc>
    1390:	e3a03000 	mov	r3, #0
    1394:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1398:	e51b3010 	ldr	r3, [fp, #-16]
    139c:	e2833001 	add	r3, r3, #1
    13a0:	e50b3010 	str	r3, [fp, #-16]
    13a4:	e59b2004 	ldr	r2, [fp, #4]
    13a8:	e51b3010 	ldr	r3, [fp, #-16]
    13ac:	e0823003 	add	r3, r2, r3
    13b0:	e5d33000 	ldrb	r3, [r3]
    13b4:	e3530000 	cmp	r3, #0
    13b8:	1affff84 	bne	11d0 <printf+0x30>
    13bc:	e1a00000 	nop			@ (mov r0, r0)
    13c0:	e1a00000 	nop			@ (mov r0, r0)
    13c4:	e24bd004 	sub	sp, fp, #4
    13c8:	e8bd4800 	pop	{fp, lr}
    13cc:	e28dd00c 	add	sp, sp, #12
    13d0:	e12fff1e 	bx	lr
    13d4:	0000186c 	.word	0x0000186c

000013d8 <free>:
    13d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13dc:	e28db000 	add	fp, sp, #0
    13e0:	e24dd014 	sub	sp, sp, #20
    13e4:	e50b0010 	str	r0, [fp, #-16]
    13e8:	e51b3010 	ldr	r3, [fp, #-16]
    13ec:	e2433008 	sub	r3, r3, #8
    13f0:	e50b300c 	str	r3, [fp, #-12]
    13f4:	e59f3154 	ldr	r3, [pc, #340]	@ 1550 <free+0x178>
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e50b3008 	str	r3, [fp, #-8]
    1400:	ea000010 	b	1448 <free+0x70>
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e51b2008 	ldr	r2, [fp, #-8]
    1410:	e1520003 	cmp	r2, r3
    1414:	3a000008 	bcc	143c <free+0x64>
    1418:	e51b200c 	ldr	r2, [fp, #-12]
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e1520003 	cmp	r2, r3
    1424:	8a000010 	bhi	146c <free+0x94>
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e51b200c 	ldr	r2, [fp, #-12]
    1434:	e1520003 	cmp	r2, r3
    1438:	3a00000b 	bcc	146c <free+0x94>
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e50b3008 	str	r3, [fp, #-8]
    1448:	e51b200c 	ldr	r2, [fp, #-12]
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e1520003 	cmp	r2, r3
    1454:	9affffea 	bls	1404 <free+0x2c>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5933000 	ldr	r3, [r3]
    1460:	e51b200c 	ldr	r2, [fp, #-12]
    1464:	e1520003 	cmp	r2, r3
    1468:	2affffe5 	bcs	1404 <free+0x2c>
    146c:	e51b300c 	ldr	r3, [fp, #-12]
    1470:	e5933004 	ldr	r3, [r3, #4]
    1474:	e1a03183 	lsl	r3, r3, #3
    1478:	e51b200c 	ldr	r2, [fp, #-12]
    147c:	e0822003 	add	r2, r2, r3
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e1520003 	cmp	r2, r3
    148c:	1a00000d 	bne	14c8 <free+0xf0>
    1490:	e51b300c 	ldr	r3, [fp, #-12]
    1494:	e5932004 	ldr	r2, [r3, #4]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933000 	ldr	r3, [r3]
    14a0:	e5933004 	ldr	r3, [r3, #4]
    14a4:	e0822003 	add	r2, r2, r3
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5832004 	str	r2, [r3, #4]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5933000 	ldr	r3, [r3]
    14b8:	e5932000 	ldr	r2, [r3]
    14bc:	e51b300c 	ldr	r3, [fp, #-12]
    14c0:	e5832000 	str	r2, [r3]
    14c4:	ea000003 	b	14d8 <free+0x100>
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5932000 	ldr	r2, [r3]
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e5832000 	str	r2, [r3]
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5933004 	ldr	r3, [r3, #4]
    14e0:	e1a03183 	lsl	r3, r3, #3
    14e4:	e51b2008 	ldr	r2, [fp, #-8]
    14e8:	e0823003 	add	r3, r2, r3
    14ec:	e51b200c 	ldr	r2, [fp, #-12]
    14f0:	e1520003 	cmp	r2, r3
    14f4:	1a00000b 	bne	1528 <free+0x150>
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5932004 	ldr	r2, [r3, #4]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5933004 	ldr	r3, [r3, #4]
    1508:	e0822003 	add	r2, r2, r3
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5832004 	str	r2, [r3, #4]
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e5932000 	ldr	r2, [r3]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5832000 	str	r2, [r3]
    1524:	ea000002 	b	1534 <free+0x15c>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e51b200c 	ldr	r2, [fp, #-12]
    1530:	e5832000 	str	r2, [r3]
    1534:	e59f2014 	ldr	r2, [pc, #20]	@ 1550 <free+0x178>
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5823000 	str	r3, [r2]
    1540:	e1a00000 	nop			@ (mov r0, r0)
    1544:	e28bd000 	add	sp, fp, #0
    1548:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    154c:	e12fff1e 	bx	lr
    1550:	00001890 	.word	0x00001890

00001554 <morecore>:
    1554:	e92d4800 	push	{fp, lr}
    1558:	e28db004 	add	fp, sp, #4
    155c:	e24dd010 	sub	sp, sp, #16
    1560:	e50b0010 	str	r0, [fp, #-16]
    1564:	e51b3010 	ldr	r3, [fp, #-16]
    1568:	e3530a01 	cmp	r3, #4096	@ 0x1000
    156c:	2a000001 	bcs	1578 <morecore+0x24>
    1570:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1574:	e50b3010 	str	r3, [fp, #-16]
    1578:	e51b3010 	ldr	r3, [fp, #-16]
    157c:	e1a03183 	lsl	r3, r3, #3
    1580:	e1a00003 	mov	r0, r3
    1584:	ebfffdfc 	bl	d7c <sbrk>
    1588:	e50b0008 	str	r0, [fp, #-8]
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e3730001 	cmn	r3, #1
    1594:	1a000001 	bne	15a0 <morecore+0x4c>
    1598:	e3a03000 	mov	r3, #0
    159c:	ea00000a 	b	15cc <morecore+0x78>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e50b300c 	str	r3, [fp, #-12]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e51b2010 	ldr	r2, [fp, #-16]
    15b0:	e5832004 	str	r2, [r3, #4]
    15b4:	e51b300c 	ldr	r3, [fp, #-12]
    15b8:	e2833008 	add	r3, r3, #8
    15bc:	e1a00003 	mov	r0, r3
    15c0:	ebffff84 	bl	13d8 <free>
    15c4:	e59f300c 	ldr	r3, [pc, #12]	@ 15d8 <morecore+0x84>
    15c8:	e5933000 	ldr	r3, [r3]
    15cc:	e1a00003 	mov	r0, r3
    15d0:	e24bd004 	sub	sp, fp, #4
    15d4:	e8bd8800 	pop	{fp, pc}
    15d8:	00001890 	.word	0x00001890

000015dc <malloc>:
    15dc:	e92d4800 	push	{fp, lr}
    15e0:	e28db004 	add	fp, sp, #4
    15e4:	e24dd018 	sub	sp, sp, #24
    15e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15f0:	e2833007 	add	r3, r3, #7
    15f4:	e1a031a3 	lsr	r3, r3, #3
    15f8:	e2833001 	add	r3, r3, #1
    15fc:	e50b3010 	str	r3, [fp, #-16]
    1600:	e59f3134 	ldr	r3, [pc, #308]	@ 173c <malloc+0x160>
    1604:	e5933000 	ldr	r3, [r3]
    1608:	e50b300c 	str	r3, [fp, #-12]
    160c:	e51b300c 	ldr	r3, [fp, #-12]
    1610:	e3530000 	cmp	r3, #0
    1614:	1a00000b 	bne	1648 <malloc+0x6c>
    1618:	e59f3120 	ldr	r3, [pc, #288]	@ 1740 <malloc+0x164>
    161c:	e50b300c 	str	r3, [fp, #-12]
    1620:	e59f2114 	ldr	r2, [pc, #276]	@ 173c <malloc+0x160>
    1624:	e51b300c 	ldr	r3, [fp, #-12]
    1628:	e5823000 	str	r3, [r2]
    162c:	e59f3108 	ldr	r3, [pc, #264]	@ 173c <malloc+0x160>
    1630:	e5933000 	ldr	r3, [r3]
    1634:	e59f2104 	ldr	r2, [pc, #260]	@ 1740 <malloc+0x164>
    1638:	e5823000 	str	r3, [r2]
    163c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1740 <malloc+0x164>
    1640:	e3a02000 	mov	r2, #0
    1644:	e5832004 	str	r2, [r3, #4]
    1648:	e51b300c 	ldr	r3, [fp, #-12]
    164c:	e5933000 	ldr	r3, [r3]
    1650:	e50b3008 	str	r3, [fp, #-8]
    1654:	e51b3008 	ldr	r3, [fp, #-8]
    1658:	e5933004 	ldr	r3, [r3, #4]
    165c:	e51b2010 	ldr	r2, [fp, #-16]
    1660:	e1520003 	cmp	r2, r3
    1664:	8a00001e 	bhi	16e4 <malloc+0x108>
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e5933004 	ldr	r3, [r3, #4]
    1670:	e51b2010 	ldr	r2, [fp, #-16]
    1674:	e1520003 	cmp	r2, r3
    1678:	1a000004 	bne	1690 <malloc+0xb4>
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e5932000 	ldr	r2, [r3]
    1684:	e51b300c 	ldr	r3, [fp, #-12]
    1688:	e5832000 	str	r2, [r3]
    168c:	ea00000e 	b	16cc <malloc+0xf0>
    1690:	e51b3008 	ldr	r3, [fp, #-8]
    1694:	e5932004 	ldr	r2, [r3, #4]
    1698:	e51b3010 	ldr	r3, [fp, #-16]
    169c:	e0422003 	sub	r2, r2, r3
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e5832004 	str	r2, [r3, #4]
    16a8:	e51b3008 	ldr	r3, [fp, #-8]
    16ac:	e5933004 	ldr	r3, [r3, #4]
    16b0:	e1a03183 	lsl	r3, r3, #3
    16b4:	e51b2008 	ldr	r2, [fp, #-8]
    16b8:	e0823003 	add	r3, r2, r3
    16bc:	e50b3008 	str	r3, [fp, #-8]
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e51b2010 	ldr	r2, [fp, #-16]
    16c8:	e5832004 	str	r2, [r3, #4]
    16cc:	e59f2068 	ldr	r2, [pc, #104]	@ 173c <malloc+0x160>
    16d0:	e51b300c 	ldr	r3, [fp, #-12]
    16d4:	e5823000 	str	r3, [r2]
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e2833008 	add	r3, r3, #8
    16e0:	ea000012 	b	1730 <malloc+0x154>
    16e4:	e59f3050 	ldr	r3, [pc, #80]	@ 173c <malloc+0x160>
    16e8:	e5933000 	ldr	r3, [r3]
    16ec:	e51b2008 	ldr	r2, [fp, #-8]
    16f0:	e1520003 	cmp	r2, r3
    16f4:	1a000007 	bne	1718 <malloc+0x13c>
    16f8:	e51b0010 	ldr	r0, [fp, #-16]
    16fc:	ebffff94 	bl	1554 <morecore>
    1700:	e50b0008 	str	r0, [fp, #-8]
    1704:	e51b3008 	ldr	r3, [fp, #-8]
    1708:	e3530000 	cmp	r3, #0
    170c:	1a000001 	bne	1718 <malloc+0x13c>
    1710:	e3a03000 	mov	r3, #0
    1714:	ea000005 	b	1730 <malloc+0x154>
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e50b300c 	str	r3, [fp, #-12]
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e5933000 	ldr	r3, [r3]
    1728:	e50b3008 	str	r3, [fp, #-8]
    172c:	eaffffc8 	b	1654 <malloc+0x78>
    1730:	e1a00003 	mov	r0, r3
    1734:	e24bd004 	sub	sp, fp, #4
    1738:	e8bd8800 	pop	{fp, pc}
    173c:	00001890 	.word	0x00001890
    1740:	00001888 	.word	0x00001888

00001744 <__udivsi3>:
    1744:	e2512001 	subs	r2, r1, #1
    1748:	012fff1e 	bxeq	lr
    174c:	3a000036 	bcc	182c <__udivsi3+0xe8>
    1750:	e1500001 	cmp	r0, r1
    1754:	9a000022 	bls	17e4 <__udivsi3+0xa0>
    1758:	e1110002 	tst	r1, r2
    175c:	0a000023 	beq	17f0 <__udivsi3+0xac>
    1760:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1764:	01a01181 	lsleq	r1, r1, #3
    1768:	03a03008 	moveq	r3, #8
    176c:	13a03001 	movne	r3, #1
    1770:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1774:	31510000 	cmpcc	r1, r0
    1778:	31a01201 	lslcc	r1, r1, #4
    177c:	31a03203 	lslcc	r3, r3, #4
    1780:	3afffffa 	bcc	1770 <__udivsi3+0x2c>
    1784:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1788:	31510000 	cmpcc	r1, r0
    178c:	31a01081 	lslcc	r1, r1, #1
    1790:	31a03083 	lslcc	r3, r3, #1
    1794:	3afffffa 	bcc	1784 <__udivsi3+0x40>
    1798:	e3a02000 	mov	r2, #0
    179c:	e1500001 	cmp	r0, r1
    17a0:	20400001 	subcs	r0, r0, r1
    17a4:	21822003 	orrcs	r2, r2, r3
    17a8:	e15000a1 	cmp	r0, r1, lsr #1
    17ac:	204000a1 	subcs	r0, r0, r1, lsr #1
    17b0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17b4:	e1500121 	cmp	r0, r1, lsr #2
    17b8:	20400121 	subcs	r0, r0, r1, lsr #2
    17bc:	21822123 	orrcs	r2, r2, r3, lsr #2
    17c0:	e15001a1 	cmp	r0, r1, lsr #3
    17c4:	204001a1 	subcs	r0, r0, r1, lsr #3
    17c8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17cc:	e3500000 	cmp	r0, #0
    17d0:	11b03223 	lsrsne	r3, r3, #4
    17d4:	11a01221 	lsrne	r1, r1, #4
    17d8:	1affffef 	bne	179c <__udivsi3+0x58>
    17dc:	e1a00002 	mov	r0, r2
    17e0:	e12fff1e 	bx	lr
    17e4:	03a00001 	moveq	r0, #1
    17e8:	13a00000 	movne	r0, #0
    17ec:	e12fff1e 	bx	lr
    17f0:	e3510801 	cmp	r1, #65536	@ 0x10000
    17f4:	21a01821 	lsrcs	r1, r1, #16
    17f8:	23a02010 	movcs	r2, #16
    17fc:	33a02000 	movcc	r2, #0
    1800:	e3510c01 	cmp	r1, #256	@ 0x100
    1804:	21a01421 	lsrcs	r1, r1, #8
    1808:	22822008 	addcs	r2, r2, #8
    180c:	e3510010 	cmp	r1, #16
    1810:	21a01221 	lsrcs	r1, r1, #4
    1814:	22822004 	addcs	r2, r2, #4
    1818:	e3510004 	cmp	r1, #4
    181c:	82822003 	addhi	r2, r2, #3
    1820:	908220a1 	addls	r2, r2, r1, lsr #1
    1824:	e1a00230 	lsr	r0, r0, r2
    1828:	e12fff1e 	bx	lr
    182c:	e3500000 	cmp	r0, #0
    1830:	13e00000 	mvnne	r0, #0
    1834:	ea000007 	b	1858 <__aeabi_idiv0>

00001838 <__aeabi_uidivmod>:
    1838:	e3510000 	cmp	r1, #0
    183c:	0afffffa 	beq	182c <__udivsi3+0xe8>
    1840:	e92d4003 	push	{r0, r1, lr}
    1844:	ebffffbe 	bl	1744 <__udivsi3>
    1848:	e8bd4006 	pop	{r1, r2, lr}
    184c:	e0030092 	mul	r3, r2, r0
    1850:	e0411003 	sub	r1, r1, r3
    1854:	e12fff1e 	bx	lr

00001858 <__aeabi_idiv0>:
    1858:	e12fff1e 	bx	lr
