
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
      60:	eb000313 	bl	cb4 <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb0001cc 	bl	7b8 <exit>
      84:	00001370 	.word	0x00001370
      88:	00001374 	.word	0x00001374
      8c:	00001378 	.word	0x00001378

00000090 <pg_pte>:
      90:	e92d4800 	push	{fp, lr}
      94:	e28db004 	add	fp, sp, #4
      98:	e24dd008 	sub	sp, sp, #8
      9c:	e50b0008 	str	r0, [fp, #-8]
      a0:	e51b1008 	ldr	r1, [fp, #-8]
      a4:	e3a00065 	mov	r0, #101	@ 0x65
      a8:	eb0002a3 	bl	b3c <syscall>
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
      d0:	e3a00066 	mov	r0, #102	@ 0x66
      d4:	eb000298 	bl	b3c <syscall>
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
      fc:	e3a00067 	mov	r0, #103	@ 0x67
     100:	eb00028d 	bl	b3c <syscall>
     104:	e1a03000 	mov	r3, r0
     108:	e1a00003 	mov	r0, r3
     10c:	e24bd004 	sub	sp, fp, #4
     110:	e8bd8800 	pop	{fp, pc}

00000114 <kpt>:
     114:	e92d4800 	push	{fp, lr}
     118:	e28db004 	add	fp, sp, #4
     11c:	e3a00068 	mov	r0, #104	@ 0x68
     120:	eb000285 	bl	b3c <syscall>
     124:	e1a03000 	mov	r3, r0
     128:	e1a00003 	mov	r0, r3
     12c:	e8bd8800 	pop	{fp, pc}

00000130 <ugetpid>:
     130:	e92d4800 	push	{fp, lr}
     134:	e28db004 	add	fp, sp, #4
     138:	e3a00069 	mov	r0, #105	@ 0x69
     13c:	eb00027e 	bl	b3c <syscall>
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
     440:	eb0000f7 	bl	824 <read>
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
     4e8:	eb0000fa 	bl	8d8 <open>
     4ec:	e50b0008 	str	r0, [fp, #-8]
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	aa000001 	bge	504 <stat+0x38>
     4fc:	e3e03000 	mvn	r3, #0
     500:	ea000006 	b	520 <stat+0x54>
     504:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     508:	e51b0008 	ldr	r0, [fp, #-8]
     50c:	eb00010c 	bl	944 <fstat>
     510:	e50b000c 	str	r0, [fp, #-12]
     514:	e51b0008 	ldr	r0, [fp, #-8]
     518:	eb0000d3 	bl	86c <close>
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

00000794 <fork>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a00001 	mov	r0, #1
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <exit>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00002 	mov	r0, #2
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <wait>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00003 	mov	r0, #3
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <pipe>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00004 	mov	r0, #4
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <read>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00005 	mov	r0, #5
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <write>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00010 	mov	r0, #16
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <close>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00015 	mov	r0, #21
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <kill>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a00006 	mov	r0, #6
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <exec>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00007 	mov	r0, #7
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <open>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a0000f 	mov	r0, #15
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <mknod>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00011 	mov	r0, #17
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <unlink>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00012 	mov	r0, #18
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <fstat>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00008 	mov	r0, #8
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <link>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00013 	mov	r0, #19
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <mkdir>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00014 	mov	r0, #20
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <chdir>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00009 	mov	r0, #9
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <dup>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a0000a 	mov	r0, #10
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <getpid>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a0000b 	mov	r0, #11
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <sbrk>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a0000c 	mov	r0, #12
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <sleep>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a0000d 	mov	r0, #13
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <uptime>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a0000e 	mov	r0, #14
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <proclist>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00016 	mov	r0, #22
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <settickets>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00017 	mov	r0, #23
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <srand>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00018 	mov	r0, #24
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <getpinfo>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00019 	mov	r0, #25
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <print_pt>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a0006a 	mov	r0, #106	@ 0x6a
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <syscall>:
     b3c:	ef000000 	svc	0x00000000
     b40:	e12fff1e 	bx	lr

00000b44 <putc>:
     b44:	e92d4800 	push	{fp, lr}
     b48:	e28db004 	add	fp, sp, #4
     b4c:	e24dd008 	sub	sp, sp, #8
     b50:	e50b0008 	str	r0, [fp, #-8]
     b54:	e1a03001 	mov	r3, r1
     b58:	e54b3009 	strb	r3, [fp, #-9]
     b5c:	e24b3009 	sub	r3, fp, #9
     b60:	e3a02001 	mov	r2, #1
     b64:	e1a01003 	mov	r1, r3
     b68:	e51b0008 	ldr	r0, [fp, #-8]
     b6c:	ebffff35 	bl	848 <write>
     b70:	e1a00000 	nop			@ (mov r0, r0)
     b74:	e24bd004 	sub	sp, fp, #4
     b78:	e8bd8800 	pop	{fp, pc}

00000b7c <printint>:
     b7c:	e92d4800 	push	{fp, lr}
     b80:	e28db004 	add	fp, sp, #4
     b84:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b88:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b8c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b90:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b94:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b98:	e3a03000 	mov	r3, #0
     b9c:	e50b300c 	str	r3, [fp, #-12]
     ba0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ba4:	e3530000 	cmp	r3, #0
     ba8:	0a000008 	beq	bd0 <printint+0x54>
     bac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bb0:	e3530000 	cmp	r3, #0
     bb4:	aa000005 	bge	bd0 <printint+0x54>
     bb8:	e3a03001 	mov	r3, #1
     bbc:	e50b300c 	str	r3, [fp, #-12]
     bc0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bc4:	e2633000 	rsb	r3, r3, #0
     bc8:	e50b3010 	str	r3, [fp, #-16]
     bcc:	ea000001 	b	bd8 <printint+0x5c>
     bd0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bd4:	e50b3010 	str	r3, [fp, #-16]
     bd8:	e3a03000 	mov	r3, #0
     bdc:	e50b3008 	str	r3, [fp, #-8]
     be0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     be4:	e51b3010 	ldr	r3, [fp, #-16]
     be8:	e1a01002 	mov	r1, r2
     bec:	e1a00003 	mov	r0, r3
     bf0:	eb0001d5 	bl	134c <__aeabi_uidivmod>
     bf4:	e1a03001 	mov	r3, r1
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e2832001 	add	r2, r3, #1
     c04:	e50b2008 	str	r2, [fp, #-8]
     c08:	e59f20a0 	ldr	r2, [pc, #160]	@ cb0 <printint+0x134>
     c0c:	e7d22001 	ldrb	r2, [r2, r1]
     c10:	e2433004 	sub	r3, r3, #4
     c14:	e083300b 	add	r3, r3, fp
     c18:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c1c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c20:	e1a01003 	mov	r1, r3
     c24:	e51b0010 	ldr	r0, [fp, #-16]
     c28:	eb00018a 	bl	1258 <__udivsi3>
     c2c:	e1a03000 	mov	r3, r0
     c30:	e50b3010 	str	r3, [fp, #-16]
     c34:	e51b3010 	ldr	r3, [fp, #-16]
     c38:	e3530000 	cmp	r3, #0
     c3c:	1affffe7 	bne	be0 <printint+0x64>
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e3530000 	cmp	r3, #0
     c48:	0a00000e 	beq	c88 <printint+0x10c>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e2832001 	add	r2, r3, #1
     c54:	e50b2008 	str	r2, [fp, #-8]
     c58:	e2433004 	sub	r3, r3, #4
     c5c:	e083300b 	add	r3, r3, fp
     c60:	e3a0202d 	mov	r2, #45	@ 0x2d
     c64:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c68:	ea000006 	b	c88 <printint+0x10c>
     c6c:	e24b2020 	sub	r2, fp, #32
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e0823003 	add	r3, r2, r3
     c78:	e5d33000 	ldrb	r3, [r3]
     c7c:	e1a01003 	mov	r1, r3
     c80:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c84:	ebffffae 	bl	b44 <putc>
     c88:	e51b3008 	ldr	r3, [fp, #-8]
     c8c:	e2433001 	sub	r3, r3, #1
     c90:	e50b3008 	str	r3, [fp, #-8]
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e3530000 	cmp	r3, #0
     c9c:	aafffff2 	bge	c6c <printint+0xf0>
     ca0:	e1a00000 	nop			@ (mov r0, r0)
     ca4:	e1a00000 	nop			@ (mov r0, r0)
     ca8:	e24bd004 	sub	sp, fp, #4
     cac:	e8bd8800 	pop	{fp, pc}
     cb0:	00001388 	.word	0x00001388

00000cb4 <printf>:
     cb4:	e92d000e 	push	{r1, r2, r3}
     cb8:	e92d4800 	push	{fp, lr}
     cbc:	e28db004 	add	fp, sp, #4
     cc0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cc4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cc8:	e3a03000 	mov	r3, #0
     ccc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd0:	e28b3008 	add	r3, fp, #8
     cd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd8:	e3a03000 	mov	r3, #0
     cdc:	e50b3010 	str	r3, [fp, #-16]
     ce0:	ea000074 	b	eb8 <printf+0x204>
     ce4:	e59b2004 	ldr	r2, [fp, #4]
     ce8:	e51b3010 	ldr	r3, [fp, #-16]
     cec:	e0823003 	add	r3, r2, r3
     cf0:	e5d33000 	ldrb	r3, [r3]
     cf4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     cf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cfc:	e3530000 	cmp	r3, #0
     d00:	1a00000b 	bne	d34 <printf+0x80>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d08:	e3530025 	cmp	r3, #37	@ 0x25
     d0c:	1a000002 	bne	d1c <printf+0x68>
     d10:	e3a03025 	mov	r3, #37	@ 0x25
     d14:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d18:	ea000063 	b	eac <printf+0x1f8>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e6ef3073 	uxtb	r3, r3
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d2c:	ebffff84 	bl	b44 <putc>
     d30:	ea00005d 	b	eac <printf+0x1f8>
     d34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d38:	e3530025 	cmp	r3, #37	@ 0x25
     d3c:	1a00005a 	bne	eac <printf+0x1f8>
     d40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d44:	e3530064 	cmp	r3, #100	@ 0x64
     d48:	1a00000a 	bne	d78 <printf+0xc4>
     d4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e1a01003 	mov	r1, r3
     d58:	e3a03001 	mov	r3, #1
     d5c:	e3a0200a 	mov	r2, #10
     d60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d64:	ebffff84 	bl	b7c <printint>
     d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	e2833004 	add	r3, r3, #4
     d70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d74:	ea00004a 	b	ea4 <printf+0x1f0>
     d78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d7c:	e3530078 	cmp	r3, #120	@ 0x78
     d80:	0a000002 	beq	d90 <printf+0xdc>
     d84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d88:	e3530070 	cmp	r3, #112	@ 0x70
     d8c:	1a00000a 	bne	dbc <printf+0x108>
     d90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e1a01003 	mov	r1, r3
     d9c:	e3a03000 	mov	r3, #0
     da0:	e3a02010 	mov	r2, #16
     da4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da8:	ebffff73 	bl	b7c <printint>
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e2833004 	add	r3, r3, #4
     db4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     db8:	ea000039 	b	ea4 <printf+0x1f0>
     dbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc0:	e3530073 	cmp	r3, #115	@ 0x73
     dc4:	1a000018 	bne	e2c <printf+0x178>
     dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e50b300c 	str	r3, [fp, #-12]
     dd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd8:	e2833004 	add	r3, r3, #4
     ddc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     de0:	e51b300c 	ldr	r3, [fp, #-12]
     de4:	e3530000 	cmp	r3, #0
     de8:	1a00000a 	bne	e18 <printf+0x164>
     dec:	e59f30f4 	ldr	r3, [pc, #244]	@ ee8 <printf+0x234>
     df0:	e50b300c 	str	r3, [fp, #-12]
     df4:	ea000007 	b	e18 <printf+0x164>
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5d33000 	ldrb	r3, [r3]
     e00:	e1a01003 	mov	r1, r3
     e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e08:	ebffff4d 	bl	b44 <putc>
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e2833001 	add	r3, r3, #1
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e5d33000 	ldrb	r3, [r3]
     e20:	e3530000 	cmp	r3, #0
     e24:	1afffff3 	bne	df8 <printf+0x144>
     e28:	ea00001d 	b	ea4 <printf+0x1f0>
     e2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e30:	e3530063 	cmp	r3, #99	@ 0x63
     e34:	1a000009 	bne	e60 <printf+0x1ac>
     e38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e6ef3073 	uxtb	r3, r3
     e44:	e1a01003 	mov	r1, r3
     e48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e4c:	ebffff3c 	bl	b44 <putc>
     e50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e54:	e2833004 	add	r3, r3, #4
     e58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e5c:	ea000010 	b	ea4 <printf+0x1f0>
     e60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e64:	e3530025 	cmp	r3, #37	@ 0x25
     e68:	1a000005 	bne	e84 <printf+0x1d0>
     e6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e70:	e6ef3073 	uxtb	r3, r3
     e74:	e1a01003 	mov	r1, r3
     e78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e7c:	ebffff30 	bl	b44 <putc>
     e80:	ea000007 	b	ea4 <printf+0x1f0>
     e84:	e3a01025 	mov	r1, #37	@ 0x25
     e88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e8c:	ebffff2c 	bl	b44 <putc>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e94:	e6ef3073 	uxtb	r3, r3
     e98:	e1a01003 	mov	r1, r3
     e9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea0:	ebffff27 	bl	b44 <putc>
     ea4:	e3a03000 	mov	r3, #0
     ea8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eac:	e51b3010 	ldr	r3, [fp, #-16]
     eb0:	e2833001 	add	r3, r3, #1
     eb4:	e50b3010 	str	r3, [fp, #-16]
     eb8:	e59b2004 	ldr	r2, [fp, #4]
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e0823003 	add	r3, r2, r3
     ec4:	e5d33000 	ldrb	r3, [r3]
     ec8:	e3530000 	cmp	r3, #0
     ecc:	1affff84 	bne	ce4 <printf+0x30>
     ed0:	e1a00000 	nop			@ (mov r0, r0)
     ed4:	e1a00000 	nop			@ (mov r0, r0)
     ed8:	e24bd004 	sub	sp, fp, #4
     edc:	e8bd4800 	pop	{fp, lr}
     ee0:	e28dd00c 	add	sp, sp, #12
     ee4:	e12fff1e 	bx	lr
     ee8:	00001380 	.word	0x00001380

00000eec <free>:
     eec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ef0:	e28db000 	add	fp, sp, #0
     ef4:	e24dd014 	sub	sp, sp, #20
     ef8:	e50b0010 	str	r0, [fp, #-16]
     efc:	e51b3010 	ldr	r3, [fp, #-16]
     f00:	e2433008 	sub	r3, r3, #8
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	e59f3154 	ldr	r3, [pc, #340]	@ 1064 <free+0x178>
     f0c:	e5933000 	ldr	r3, [r3]
     f10:	e50b3008 	str	r3, [fp, #-8]
     f14:	ea000010 	b	f5c <free+0x70>
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e51b2008 	ldr	r2, [fp, #-8]
     f24:	e1520003 	cmp	r2, r3
     f28:	3a000008 	bcc	f50 <free+0x64>
     f2c:	e51b200c 	ldr	r2, [fp, #-12]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e1520003 	cmp	r2, r3
     f38:	8a000010 	bhi	f80 <free+0x94>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e51b200c 	ldr	r2, [fp, #-12]
     f48:	e1520003 	cmp	r2, r3
     f4c:	3a00000b 	bcc	f80 <free+0x94>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e50b3008 	str	r3, [fp, #-8]
     f5c:	e51b200c 	ldr	r2, [fp, #-12]
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e1520003 	cmp	r2, r3
     f68:	9affffea 	bls	f18 <free+0x2c>
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933000 	ldr	r3, [r3]
     f74:	e51b200c 	ldr	r2, [fp, #-12]
     f78:	e1520003 	cmp	r2, r3
     f7c:	2affffe5 	bcs	f18 <free+0x2c>
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e5933004 	ldr	r3, [r3, #4]
     f88:	e1a03183 	lsl	r3, r3, #3
     f8c:	e51b200c 	ldr	r2, [fp, #-12]
     f90:	e0822003 	add	r2, r2, r3
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	1a00000d 	bne	fdc <free+0xf0>
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5932004 	ldr	r2, [r3, #4]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5933000 	ldr	r3, [r3]
     fb4:	e5933004 	ldr	r3, [r3, #4]
     fb8:	e0822003 	add	r2, r2, r3
     fbc:	e51b300c 	ldr	r3, [fp, #-12]
     fc0:	e5832004 	str	r2, [r3, #4]
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e5932000 	ldr	r2, [r3]
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e5832000 	str	r2, [r3]
     fd8:	ea000003 	b	fec <free+0x100>
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e5932000 	ldr	r2, [r3]
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e5832000 	str	r2, [r3]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933004 	ldr	r3, [r3, #4]
     ff4:	e1a03183 	lsl	r3, r3, #3
     ff8:	e51b2008 	ldr	r2, [fp, #-8]
     ffc:	e0823003 	add	r3, r2, r3
    1000:	e51b200c 	ldr	r2, [fp, #-12]
    1004:	e1520003 	cmp	r2, r3
    1008:	1a00000b 	bne	103c <free+0x150>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5932004 	ldr	r2, [r3, #4]
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e0822003 	add	r2, r2, r3
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5832004 	str	r2, [r3, #4]
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5932000 	ldr	r2, [r3]
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5832000 	str	r2, [r3]
    1038:	ea000002 	b	1048 <free+0x15c>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e51b200c 	ldr	r2, [fp, #-12]
    1044:	e5832000 	str	r2, [r3]
    1048:	e59f2014 	ldr	r2, [pc, #20]	@ 1064 <free+0x178>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5823000 	str	r3, [r2]
    1054:	e1a00000 	nop			@ (mov r0, r0)
    1058:	e28bd000 	add	sp, fp, #0
    105c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1060:	e12fff1e 	bx	lr
    1064:	000013a4 	.word	0x000013a4

00001068 <morecore>:
    1068:	e92d4800 	push	{fp, lr}
    106c:	e28db004 	add	fp, sp, #4
    1070:	e24dd010 	sub	sp, sp, #16
    1074:	e50b0010 	str	r0, [fp, #-16]
    1078:	e51b3010 	ldr	r3, [fp, #-16]
    107c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1080:	2a000001 	bcs	108c <morecore+0x24>
    1084:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1088:	e50b3010 	str	r3, [fp, #-16]
    108c:	e51b3010 	ldr	r3, [fp, #-16]
    1090:	e1a03183 	lsl	r3, r3, #3
    1094:	e1a00003 	mov	r0, r3
    1098:	ebfffe5f 	bl	a1c <sbrk>
    109c:	e50b0008 	str	r0, [fp, #-8]
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e3730001 	cmn	r3, #1
    10a8:	1a000001 	bne	10b4 <morecore+0x4c>
    10ac:	e3a03000 	mov	r3, #0
    10b0:	ea00000a 	b	10e0 <morecore+0x78>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e50b300c 	str	r3, [fp, #-12]
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e51b2010 	ldr	r2, [fp, #-16]
    10c4:	e5832004 	str	r2, [r3, #4]
    10c8:	e51b300c 	ldr	r3, [fp, #-12]
    10cc:	e2833008 	add	r3, r3, #8
    10d0:	e1a00003 	mov	r0, r3
    10d4:	ebffff84 	bl	eec <free>
    10d8:	e59f300c 	ldr	r3, [pc, #12]	@ 10ec <morecore+0x84>
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e1a00003 	mov	r0, r3
    10e4:	e24bd004 	sub	sp, fp, #4
    10e8:	e8bd8800 	pop	{fp, pc}
    10ec:	000013a4 	.word	0x000013a4

000010f0 <malloc>:
    10f0:	e92d4800 	push	{fp, lr}
    10f4:	e28db004 	add	fp, sp, #4
    10f8:	e24dd018 	sub	sp, sp, #24
    10fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1100:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1104:	e2833007 	add	r3, r3, #7
    1108:	e1a031a3 	lsr	r3, r3, #3
    110c:	e2833001 	add	r3, r3, #1
    1110:	e50b3010 	str	r3, [fp, #-16]
    1114:	e59f3134 	ldr	r3, [pc, #308]	@ 1250 <malloc+0x160>
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e50b300c 	str	r3, [fp, #-12]
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e3530000 	cmp	r3, #0
    1128:	1a00000b 	bne	115c <malloc+0x6c>
    112c:	e59f3120 	ldr	r3, [pc, #288]	@ 1254 <malloc+0x164>
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	e59f2114 	ldr	r2, [pc, #276]	@ 1250 <malloc+0x160>
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e5823000 	str	r3, [r2]
    1140:	e59f3108 	ldr	r3, [pc, #264]	@ 1250 <malloc+0x160>
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e59f2104 	ldr	r2, [pc, #260]	@ 1254 <malloc+0x164>
    114c:	e5823000 	str	r3, [r2]
    1150:	e59f30fc 	ldr	r3, [pc, #252]	@ 1254 <malloc+0x164>
    1154:	e3a02000 	mov	r2, #0
    1158:	e5832004 	str	r2, [r3, #4]
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e50b3008 	str	r3, [fp, #-8]
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e5933004 	ldr	r3, [r3, #4]
    1170:	e51b2010 	ldr	r2, [fp, #-16]
    1174:	e1520003 	cmp	r2, r3
    1178:	8a00001e 	bhi	11f8 <malloc+0x108>
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e5933004 	ldr	r3, [r3, #4]
    1184:	e51b2010 	ldr	r2, [fp, #-16]
    1188:	e1520003 	cmp	r2, r3
    118c:	1a000004 	bne	11a4 <malloc+0xb4>
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e5932000 	ldr	r2, [r3]
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e5832000 	str	r2, [r3]
    11a0:	ea00000e 	b	11e0 <malloc+0xf0>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5932004 	ldr	r2, [r3, #4]
    11ac:	e51b3010 	ldr	r3, [fp, #-16]
    11b0:	e0422003 	sub	r2, r2, r3
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5832004 	str	r2, [r3, #4]
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5933004 	ldr	r3, [r3, #4]
    11c4:	e1a03183 	lsl	r3, r3, #3
    11c8:	e51b2008 	ldr	r2, [fp, #-8]
    11cc:	e0823003 	add	r3, r2, r3
    11d0:	e50b3008 	str	r3, [fp, #-8]
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e51b2010 	ldr	r2, [fp, #-16]
    11dc:	e5832004 	str	r2, [r3, #4]
    11e0:	e59f2068 	ldr	r2, [pc, #104]	@ 1250 <malloc+0x160>
    11e4:	e51b300c 	ldr	r3, [fp, #-12]
    11e8:	e5823000 	str	r3, [r2]
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e2833008 	add	r3, r3, #8
    11f4:	ea000012 	b	1244 <malloc+0x154>
    11f8:	e59f3050 	ldr	r3, [pc, #80]	@ 1250 <malloc+0x160>
    11fc:	e5933000 	ldr	r3, [r3]
    1200:	e51b2008 	ldr	r2, [fp, #-8]
    1204:	e1520003 	cmp	r2, r3
    1208:	1a000007 	bne	122c <malloc+0x13c>
    120c:	e51b0010 	ldr	r0, [fp, #-16]
    1210:	ebffff94 	bl	1068 <morecore>
    1214:	e50b0008 	str	r0, [fp, #-8]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e3530000 	cmp	r3, #0
    1220:	1a000001 	bne	122c <malloc+0x13c>
    1224:	e3a03000 	mov	r3, #0
    1228:	ea000005 	b	1244 <malloc+0x154>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e50b300c 	str	r3, [fp, #-12]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e50b3008 	str	r3, [fp, #-8]
    1240:	eaffffc8 	b	1168 <malloc+0x78>
    1244:	e1a00003 	mov	r0, r3
    1248:	e24bd004 	sub	sp, fp, #4
    124c:	e8bd8800 	pop	{fp, pc}
    1250:	000013a4 	.word	0x000013a4
    1254:	0000139c 	.word	0x0000139c

00001258 <__udivsi3>:
    1258:	e2512001 	subs	r2, r1, #1
    125c:	012fff1e 	bxeq	lr
    1260:	3a000036 	bcc	1340 <__udivsi3+0xe8>
    1264:	e1500001 	cmp	r0, r1
    1268:	9a000022 	bls	12f8 <__udivsi3+0xa0>
    126c:	e1110002 	tst	r1, r2
    1270:	0a000023 	beq	1304 <__udivsi3+0xac>
    1274:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1278:	01a01181 	lsleq	r1, r1, #3
    127c:	03a03008 	moveq	r3, #8
    1280:	13a03001 	movne	r3, #1
    1284:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1288:	31510000 	cmpcc	r1, r0
    128c:	31a01201 	lslcc	r1, r1, #4
    1290:	31a03203 	lslcc	r3, r3, #4
    1294:	3afffffa 	bcc	1284 <__udivsi3+0x2c>
    1298:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    129c:	31510000 	cmpcc	r1, r0
    12a0:	31a01081 	lslcc	r1, r1, #1
    12a4:	31a03083 	lslcc	r3, r3, #1
    12a8:	3afffffa 	bcc	1298 <__udivsi3+0x40>
    12ac:	e3a02000 	mov	r2, #0
    12b0:	e1500001 	cmp	r0, r1
    12b4:	20400001 	subcs	r0, r0, r1
    12b8:	21822003 	orrcs	r2, r2, r3
    12bc:	e15000a1 	cmp	r0, r1, lsr #1
    12c0:	204000a1 	subcs	r0, r0, r1, lsr #1
    12c4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12c8:	e1500121 	cmp	r0, r1, lsr #2
    12cc:	20400121 	subcs	r0, r0, r1, lsr #2
    12d0:	21822123 	orrcs	r2, r2, r3, lsr #2
    12d4:	e15001a1 	cmp	r0, r1, lsr #3
    12d8:	204001a1 	subcs	r0, r0, r1, lsr #3
    12dc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12e0:	e3500000 	cmp	r0, #0
    12e4:	11b03223 	lsrsne	r3, r3, #4
    12e8:	11a01221 	lsrne	r1, r1, #4
    12ec:	1affffef 	bne	12b0 <__udivsi3+0x58>
    12f0:	e1a00002 	mov	r0, r2
    12f4:	e12fff1e 	bx	lr
    12f8:	03a00001 	moveq	r0, #1
    12fc:	13a00000 	movne	r0, #0
    1300:	e12fff1e 	bx	lr
    1304:	e3510801 	cmp	r1, #65536	@ 0x10000
    1308:	21a01821 	lsrcs	r1, r1, #16
    130c:	23a02010 	movcs	r2, #16
    1310:	33a02000 	movcc	r2, #0
    1314:	e3510c01 	cmp	r1, #256	@ 0x100
    1318:	21a01421 	lsrcs	r1, r1, #8
    131c:	22822008 	addcs	r2, r2, #8
    1320:	e3510010 	cmp	r1, #16
    1324:	21a01221 	lsrcs	r1, r1, #4
    1328:	22822004 	addcs	r2, r2, #4
    132c:	e3510004 	cmp	r1, #4
    1330:	82822003 	addhi	r2, r2, #3
    1334:	908220a1 	addls	r2, r2, r1, lsr #1
    1338:	e1a00230 	lsr	r0, r0, r2
    133c:	e12fff1e 	bx	lr
    1340:	e3500000 	cmp	r0, #0
    1344:	13e00000 	mvnne	r0, #0
    1348:	ea000007 	b	136c <__aeabi_idiv0>

0000134c <__aeabi_uidivmod>:
    134c:	e3510000 	cmp	r1, #0
    1350:	0afffffa 	beq	1340 <__udivsi3+0xe8>
    1354:	e92d4003 	push	{r0, r1, lr}
    1358:	ebffffbe 	bl	1258 <__udivsi3>
    135c:	e8bd4006 	pop	{r1, r2, lr}
    1360:	e0030092 	mul	r3, r2, r0
    1364:	e0411003 	sub	r1, r1, r3
    1368:	e12fff1e 	bx	lr

0000136c <__aeabi_idiv0>:
    136c:	e12fff1e 	bx	lr
