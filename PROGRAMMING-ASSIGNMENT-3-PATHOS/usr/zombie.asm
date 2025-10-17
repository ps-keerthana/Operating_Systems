
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb0001c6 	bl	728 <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb00026c 	bl	9d4 <sleep>
      20:	eb0001c9 	bl	74c <exit>

00000024 <pg_pte>:
      24:	e92d4800 	push	{fp, lr}
      28:	e28db004 	add	fp, sp, #4
      2c:	e24dd008 	sub	sp, sp, #8
      30:	e50b0008 	str	r0, [fp, #-8]
      34:	e51b1008 	ldr	r1, [fp, #-8]
      38:	e3a00065 	mov	r0, #101	@ 0x65
      3c:	eb0002a3 	bl	ad0 <syscall>
      40:	e1a03000 	mov	r3, r0
      44:	e1a00003 	mov	r0, r3
      48:	e24bd004 	sub	sp, fp, #4
      4c:	e8bd8800 	pop	{fp, pc}

00000050 <pg_pa>:
      50:	e92d4800 	push	{fp, lr}
      54:	e28db004 	add	fp, sp, #4
      58:	e24dd008 	sub	sp, sp, #8
      5c:	e50b0008 	str	r0, [fp, #-8]
      60:	e51b1008 	ldr	r1, [fp, #-8]
      64:	e3a00066 	mov	r0, #102	@ 0x66
      68:	eb000298 	bl	ad0 <syscall>
      6c:	e1a03000 	mov	r3, r0
      70:	e1a00003 	mov	r0, r3
      74:	e24bd004 	sub	sp, fp, #4
      78:	e8bd8800 	pop	{fp, pc}

0000007c <pg_flags>:
      7c:	e92d4800 	push	{fp, lr}
      80:	e28db004 	add	fp, sp, #4
      84:	e24dd008 	sub	sp, sp, #8
      88:	e50b0008 	str	r0, [fp, #-8]
      8c:	e51b1008 	ldr	r1, [fp, #-8]
      90:	e3a00067 	mov	r0, #103	@ 0x67
      94:	eb00028d 	bl	ad0 <syscall>
      98:	e1a03000 	mov	r3, r0
      9c:	e1a00003 	mov	r0, r3
      a0:	e24bd004 	sub	sp, fp, #4
      a4:	e8bd8800 	pop	{fp, pc}

000000a8 <kpt>:
      a8:	e92d4800 	push	{fp, lr}
      ac:	e28db004 	add	fp, sp, #4
      b0:	e3a00068 	mov	r0, #104	@ 0x68
      b4:	eb000285 	bl	ad0 <syscall>
      b8:	e1a03000 	mov	r3, r0
      bc:	e1a00003 	mov	r0, r3
      c0:	e8bd8800 	pop	{fp, pc}

000000c4 <ugetpid>:
      c4:	e92d4800 	push	{fp, lr}
      c8:	e28db004 	add	fp, sp, #4
      cc:	e3a00069 	mov	r0, #105	@ 0x69
      d0:	eb00027e 	bl	ad0 <syscall>
      d4:	e1a03000 	mov	r3, r0
      d8:	e1a00003 	mov	r0, r3
      dc:	e8bd8800 	pop	{fp, pc}

000000e0 <strcpy>:
      e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      e4:	e28db000 	add	fp, sp, #0
      e8:	e24dd014 	sub	sp, sp, #20
      ec:	e50b0010 	str	r0, [fp, #-16]
      f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      f4:	e51b3010 	ldr	r3, [fp, #-16]
      f8:	e50b3008 	str	r3, [fp, #-8]
      fc:	e1a00000 	nop			@ (mov r0, r0)
     100:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     104:	e2823001 	add	r3, r2, #1
     108:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e2831001 	add	r1, r3, #1
     114:	e50b1010 	str	r1, [fp, #-16]
     118:	e5d22000 	ldrb	r2, [r2]
     11c:	e5c32000 	strb	r2, [r3]
     120:	e5d33000 	ldrb	r3, [r3]
     124:	e3530000 	cmp	r3, #0
     128:	1afffff4 	bne	100 <strcpy+0x20>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e1a00003 	mov	r0, r3
     134:	e28bd000 	add	sp, fp, #0
     138:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     13c:	e12fff1e 	bx	lr

00000140 <strcmp>:
     140:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     144:	e28db000 	add	fp, sp, #0
     148:	e24dd00c 	sub	sp, sp, #12
     14c:	e50b0008 	str	r0, [fp, #-8]
     150:	e50b100c 	str	r1, [fp, #-12]
     154:	ea000005 	b	170 <strcmp+0x30>
     158:	e51b3008 	ldr	r3, [fp, #-8]
     15c:	e2833001 	add	r3, r3, #1
     160:	e50b3008 	str	r3, [fp, #-8]
     164:	e51b300c 	ldr	r3, [fp, #-12]
     168:	e2833001 	add	r3, r3, #1
     16c:	e50b300c 	str	r3, [fp, #-12]
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e5d33000 	ldrb	r3, [r3]
     178:	e3530000 	cmp	r3, #0
     17c:	0a000005 	beq	198 <strcmp+0x58>
     180:	e51b3008 	ldr	r3, [fp, #-8]
     184:	e5d32000 	ldrb	r2, [r3]
     188:	e51b300c 	ldr	r3, [fp, #-12]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e1520003 	cmp	r2, r3
     194:	0affffef 	beq	158 <strcmp+0x18>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e1a02003 	mov	r2, r3
     1a4:	e51b300c 	ldr	r3, [fp, #-12]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e0423003 	sub	r3, r2, r3
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e28bd000 	add	sp, fp, #0
     1b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1bc:	e12fff1e 	bx	lr

000001c0 <strlen>:
     1c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c4:	e28db000 	add	fp, sp, #0
     1c8:	e24dd014 	sub	sp, sp, #20
     1cc:	e50b0010 	str	r0, [fp, #-16]
     1d0:	e3a03000 	mov	r3, #0
     1d4:	e50b3008 	str	r3, [fp, #-8]
     1d8:	ea000002 	b	1e8 <strlen+0x28>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e2833001 	add	r3, r3, #1
     1e4:	e50b3008 	str	r3, [fp, #-8]
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e51b2010 	ldr	r2, [fp, #-16]
     1f0:	e0823003 	add	r3, r2, r3
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	1afffff6 	bne	1dc <strlen+0x1c>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e1a00003 	mov	r0, r3
     208:	e28bd000 	add	sp, fp, #0
     20c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     210:	e12fff1e 	bx	lr

00000214 <memset>:
     214:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     218:	e28db000 	add	fp, sp, #0
     21c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     220:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     224:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     228:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     22c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     238:	e54b300d 	strb	r3, [fp, #-13]
     23c:	e55b200d 	ldrb	r2, [fp, #-13]
     240:	e1a03002 	mov	r3, r2
     244:	e1a03403 	lsl	r3, r3, #8
     248:	e0833002 	add	r3, r3, r2
     24c:	e1a03803 	lsl	r3, r3, #16
     250:	e1a02003 	mov	r2, r3
     254:	e55b300d 	ldrb	r3, [fp, #-13]
     258:	e1a03403 	lsl	r3, r3, #8
     25c:	e1822003 	orr	r2, r2, r3
     260:	e55b300d 	ldrb	r3, [fp, #-13]
     264:	e1823003 	orr	r3, r2, r3
     268:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     26c:	ea000008 	b	294 <memset+0x80>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e55b200d 	ldrb	r2, [fp, #-13]
     278:	e5c32000 	strb	r2, [r3]
     27c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     280:	e2433001 	sub	r3, r3, #1
     284:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e2833001 	add	r3, r3, #1
     290:	e50b3008 	str	r3, [fp, #-8]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e3530000 	cmp	r3, #0
     29c:	0a000003 	beq	2b0 <memset+0x9c>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2033003 	and	r3, r3, #3
     2a8:	e3530000 	cmp	r3, #0
     2ac:	1affffef 	bne	270 <memset+0x5c>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e50b300c 	str	r3, [fp, #-12]
     2b8:	ea000008 	b	2e0 <memset+0xcc>
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2c4:	e5832000 	str	r2, [r3]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e2433004 	sub	r3, r3, #4
     2d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e2833004 	add	r3, r3, #4
     2dc:	e50b300c 	str	r3, [fp, #-12]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e3530003 	cmp	r3, #3
     2e8:	8afffff3 	bhi	2bc <memset+0xa8>
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e50b3008 	str	r3, [fp, #-8]
     2f4:	ea000008 	b	31c <memset+0x108>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e55b200d 	ldrb	r2, [fp, #-13]
     300:	e5c32000 	strb	r2, [r3]
     304:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     308:	e2433001 	sub	r3, r3, #1
     30c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833001 	add	r3, r3, #1
     318:	e50b3008 	str	r3, [fp, #-8]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e3530000 	cmp	r3, #0
     324:	1afffff3 	bne	2f8 <memset+0xe4>
     328:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     32c:	e1a00003 	mov	r0, r3
     330:	e28bd000 	add	sp, fp, #0
     334:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     338:	e12fff1e 	bx	lr

0000033c <strchr>:
     33c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     340:	e28db000 	add	fp, sp, #0
     344:	e24dd00c 	sub	sp, sp, #12
     348:	e50b0008 	str	r0, [fp, #-8]
     34c:	e1a03001 	mov	r3, r1
     350:	e54b3009 	strb	r3, [fp, #-9]
     354:	ea000009 	b	380 <strchr+0x44>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e5d33000 	ldrb	r3, [r3]
     360:	e55b2009 	ldrb	r2, [fp, #-9]
     364:	e1520003 	cmp	r2, r3
     368:	1a000001 	bne	374 <strchr+0x38>
     36c:	e51b3008 	ldr	r3, [fp, #-8]
     370:	ea000007 	b	394 <strchr+0x58>
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2833001 	add	r3, r3, #1
     37c:	e50b3008 	str	r3, [fp, #-8]
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5d33000 	ldrb	r3, [r3]
     388:	e3530000 	cmp	r3, #0
     38c:	1afffff1 	bne	358 <strchr+0x1c>
     390:	e3a03000 	mov	r3, #0
     394:	e1a00003 	mov	r0, r3
     398:	e28bd000 	add	sp, fp, #0
     39c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a0:	e12fff1e 	bx	lr

000003a4 <gets>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd018 	sub	sp, sp, #24
     3b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3b8:	e3a03000 	mov	r3, #0
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	ea000016 	b	420 <gets+0x7c>
     3c4:	e24b300d 	sub	r3, fp, #13
     3c8:	e3a02001 	mov	r2, #1
     3cc:	e1a01003 	mov	r1, r3
     3d0:	e3a00000 	mov	r0, #0
     3d4:	eb0000f7 	bl	7b8 <read>
     3d8:	e50b000c 	str	r0, [fp, #-12]
     3dc:	e51b300c 	ldr	r3, [fp, #-12]
     3e0:	e3530000 	cmp	r3, #0
     3e4:	da000013 	ble	438 <gets+0x94>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2832001 	add	r2, r3, #1
     3f0:	e50b2008 	str	r2, [fp, #-8]
     3f4:	e1a02003 	mov	r2, r3
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e0833002 	add	r3, r3, r2
     400:	e55b200d 	ldrb	r2, [fp, #-13]
     404:	e5c32000 	strb	r2, [r3]
     408:	e55b300d 	ldrb	r3, [fp, #-13]
     40c:	e353000a 	cmp	r3, #10
     410:	0a000009 	beq	43c <gets+0x98>
     414:	e55b300d 	ldrb	r3, [fp, #-13]
     418:	e353000d 	cmp	r3, #13
     41c:	0a000006 	beq	43c <gets+0x98>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2833001 	add	r3, r3, #1
     428:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     42c:	e1520003 	cmp	r2, r3
     430:	caffffe3 	bgt	3c4 <gets+0x20>
     434:	ea000000 	b	43c <gets+0x98>
     438:	e1a00000 	nop			@ (mov r0, r0)
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     444:	e0823003 	add	r3, r2, r3
     448:	e3a02000 	mov	r2, #0
     44c:	e5c32000 	strb	r2, [r3]
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}

00000460 <stat>:
     460:	e92d4800 	push	{fp, lr}
     464:	e28db004 	add	fp, sp, #4
     468:	e24dd010 	sub	sp, sp, #16
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     474:	e3a01000 	mov	r1, #0
     478:	e51b0010 	ldr	r0, [fp, #-16]
     47c:	eb0000fa 	bl	86c <open>
     480:	e50b0008 	str	r0, [fp, #-8]
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e3530000 	cmp	r3, #0
     48c:	aa000001 	bge	498 <stat+0x38>
     490:	e3e03000 	mvn	r3, #0
     494:	ea000006 	b	4b4 <stat+0x54>
     498:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     49c:	e51b0008 	ldr	r0, [fp, #-8]
     4a0:	eb00010c 	bl	8d8 <fstat>
     4a4:	e50b000c 	str	r0, [fp, #-12]
     4a8:	e51b0008 	ldr	r0, [fp, #-8]
     4ac:	eb0000d3 	bl	800 <close>
     4b0:	e51b300c 	ldr	r3, [fp, #-12]
     4b4:	e1a00003 	mov	r0, r3
     4b8:	e24bd004 	sub	sp, fp, #4
     4bc:	e8bd8800 	pop	{fp, pc}

000004c0 <atoi>:
     4c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c4:	e28db000 	add	fp, sp, #0
     4c8:	e24dd014 	sub	sp, sp, #20
     4cc:	e50b0010 	str	r0, [fp, #-16]
     4d0:	e3a03000 	mov	r3, #0
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	ea00000c 	b	510 <atoi+0x50>
     4dc:	e51b2008 	ldr	r2, [fp, #-8]
     4e0:	e1a03002 	mov	r3, r2
     4e4:	e1a03103 	lsl	r3, r3, #2
     4e8:	e0833002 	add	r3, r3, r2
     4ec:	e1a03083 	lsl	r3, r3, #1
     4f0:	e1a01003 	mov	r1, r3
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e2832001 	add	r2, r3, #1
     4fc:	e50b2010 	str	r2, [fp, #-16]
     500:	e5d33000 	ldrb	r3, [r3]
     504:	e0813003 	add	r3, r1, r3
     508:	e2433030 	sub	r3, r3, #48	@ 0x30
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	e51b3010 	ldr	r3, [fp, #-16]
     514:	e5d33000 	ldrb	r3, [r3]
     518:	e353002f 	cmp	r3, #47	@ 0x2f
     51c:	9a000003 	bls	530 <atoi+0x70>
     520:	e51b3010 	ldr	r3, [fp, #-16]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e3530039 	cmp	r3, #57	@ 0x39
     52c:	9affffea 	bls	4dc <atoi+0x1c>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e1a00003 	mov	r0, r3
     538:	e28bd000 	add	sp, fp, #0
     53c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     540:	e12fff1e 	bx	lr

00000544 <memmove>:
     544:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     548:	e28db000 	add	fp, sp, #0
     54c:	e24dd01c 	sub	sp, sp, #28
     550:	e50b0010 	str	r0, [fp, #-16]
     554:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     558:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     568:	e50b300c 	str	r3, [fp, #-12]
     56c:	ea000007 	b	590 <memmove+0x4c>
     570:	e51b200c 	ldr	r2, [fp, #-12]
     574:	e2823001 	add	r3, r2, #1
     578:	e50b300c 	str	r3, [fp, #-12]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e2831001 	add	r1, r3, #1
     584:	e50b1008 	str	r1, [fp, #-8]
     588:	e5d22000 	ldrb	r2, [r2]
     58c:	e5c32000 	strb	r2, [r3]
     590:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     594:	e2432001 	sub	r2, r3, #1
     598:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     59c:	e3530000 	cmp	r3, #0
     5a0:	cafffff2 	bgt	570 <memmove+0x2c>
     5a4:	e51b3010 	ldr	r3, [fp, #-16]
     5a8:	e1a00003 	mov	r0, r3
     5ac:	e28bd000 	add	sp, fp, #0
     5b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <strncmp>:
     5b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5bc:	e28db000 	add	fp, sp, #0
     5c0:	e24dd014 	sub	sp, sp, #20
     5c4:	e50b0008 	str	r0, [fp, #-8]
     5c8:	e50b100c 	str	r1, [fp, #-12]
     5cc:	e50b2010 	str	r2, [fp, #-16]
     5d0:	ea000008 	b	5f8 <strncmp+0x40>
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2833001 	add	r3, r3, #1
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b300c 	ldr	r3, [fp, #-12]
     5e4:	e2833001 	add	r3, r3, #1
     5e8:	e50b300c 	str	r3, [fp, #-12]
     5ec:	e51b3010 	ldr	r3, [fp, #-16]
     5f0:	e2433001 	sub	r3, r3, #1
     5f4:	e50b3010 	str	r3, [fp, #-16]
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e3530000 	cmp	r3, #0
     600:	da00000d 	ble	63c <strncmp+0x84>
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e5d33000 	ldrb	r3, [r3]
     60c:	e3530000 	cmp	r3, #0
     610:	0a000009 	beq	63c <strncmp+0x84>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e5d33000 	ldrb	r3, [r3]
     61c:	e3530000 	cmp	r3, #0
     620:	0a000005 	beq	63c <strncmp+0x84>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e5d32000 	ldrb	r2, [r3]
     62c:	e51b300c 	ldr	r3, [fp, #-12]
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e1520003 	cmp	r2, r3
     638:	0affffe5 	beq	5d4 <strncmp+0x1c>
     63c:	e51b3010 	ldr	r3, [fp, #-16]
     640:	e3530000 	cmp	r3, #0
     644:	1a000001 	bne	650 <strncmp+0x98>
     648:	e3a03000 	mov	r3, #0
     64c:	ea000005 	b	668 <strncmp+0xb0>
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e5d33000 	ldrb	r3, [r3]
     658:	e1a02003 	mov	r2, r3
     65c:	e51b300c 	ldr	r3, [fp, #-12]
     660:	e5d33000 	ldrb	r3, [r3]
     664:	e0423003 	sub	r3, r2, r3
     668:	e1a00003 	mov	r0, r3
     66c:	e28bd000 	add	sp, fp, #0
     670:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <strncpy>:
     678:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     67c:	e28db000 	add	fp, sp, #0
     680:	e24dd01c 	sub	sp, sp, #28
     684:	e50b0010 	str	r0, [fp, #-16]
     688:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     68c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     690:	e51b3010 	ldr	r3, [fp, #-16]
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	ea00000a 	b	6c8 <strncpy+0x50>
     69c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6a0:	e2823001 	add	r3, r2, #1
     6a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e2831001 	add	r1, r3, #1
     6b0:	e50b1008 	str	r1, [fp, #-8]
     6b4:	e5d22000 	ldrb	r2, [r2]
     6b8:	e5c32000 	strb	r2, [r3]
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e2433001 	sub	r3, r3, #1
     6c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     6c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6cc:	e3530000 	cmp	r3, #0
     6d0:	da00000c 	ble	708 <strncpy+0x90>
     6d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e3530000 	cmp	r3, #0
     6e0:	1affffed 	bne	69c <strncpy+0x24>
     6e4:	ea000007 	b	708 <strncpy+0x90>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e2832001 	add	r2, r3, #1
     6f0:	e50b2008 	str	r2, [fp, #-8]
     6f4:	e3a02000 	mov	r2, #0
     6f8:	e5c32000 	strb	r2, [r3]
     6fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     700:	e2433001 	sub	r3, r3, #1
     704:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     70c:	e3530000 	cmp	r3, #0
     710:	cafffff4 	bgt	6e8 <strncpy+0x70>
     714:	e51b3010 	ldr	r3, [fp, #-16]
     718:	e1a00003 	mov	r0, r3
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <fork>:
     728:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a00001 	mov	r0, #1
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <exit>:
     74c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00002 	mov	r0, #2
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <wait>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00003 	mov	r0, #3
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <pipe>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a00004 	mov	r0, #4
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <read>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00005 	mov	r0, #5
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <write>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00010 	mov	r0, #16
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <close>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00015 	mov	r0, #21
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <kill>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00006 	mov	r0, #6
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <exec>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00007 	mov	r0, #7
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <open>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a0000f 	mov	r0, #15
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <mknod>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a00011 	mov	r0, #17
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <unlink>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00012 	mov	r0, #18
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <fstat>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00008 	mov	r0, #8
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <link>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00013 	mov	r0, #19
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <mkdir>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00014 	mov	r0, #20
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <chdir>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00009 	mov	r0, #9
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <dup>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a0000a 	mov	r0, #10
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <getpid>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a0000b 	mov	r0, #11
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <sbrk>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a0000c 	mov	r0, #12
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <sleep>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a0000d 	mov	r0, #13
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <uptime>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a0000e 	mov	r0, #14
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <proclist>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a00016 	mov	r0, #22
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <settickets>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a00017 	mov	r0, #23
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <srand>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00018 	mov	r0, #24
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <getpinfo>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00019 	mov	r0, #25
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <print_pt>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a0006a 	mov	r0, #106	@ 0x6a
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <syscall>:
     ad0:	ef000000 	svc	0x00000000
     ad4:	e12fff1e 	bx	lr

00000ad8 <putc>:
     ad8:	e92d4800 	push	{fp, lr}
     adc:	e28db004 	add	fp, sp, #4
     ae0:	e24dd008 	sub	sp, sp, #8
     ae4:	e50b0008 	str	r0, [fp, #-8]
     ae8:	e1a03001 	mov	r3, r1
     aec:	e54b3009 	strb	r3, [fp, #-9]
     af0:	e24b3009 	sub	r3, fp, #9
     af4:	e3a02001 	mov	r2, #1
     af8:	e1a01003 	mov	r1, r3
     afc:	e51b0008 	ldr	r0, [fp, #-8]
     b00:	ebffff35 	bl	7dc <write>
     b04:	e1a00000 	nop			@ (mov r0, r0)
     b08:	e24bd004 	sub	sp, fp, #4
     b0c:	e8bd8800 	pop	{fp, pc}

00000b10 <printint>:
     b10:	e92d4800 	push	{fp, lr}
     b14:	e28db004 	add	fp, sp, #4
     b18:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b1c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b20:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b24:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b28:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b2c:	e3a03000 	mov	r3, #0
     b30:	e50b300c 	str	r3, [fp, #-12]
     b34:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b38:	e3530000 	cmp	r3, #0
     b3c:	0a000008 	beq	b64 <printint+0x54>
     b40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b44:	e3530000 	cmp	r3, #0
     b48:	aa000005 	bge	b64 <printint+0x54>
     b4c:	e3a03001 	mov	r3, #1
     b50:	e50b300c 	str	r3, [fp, #-12]
     b54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b58:	e2633000 	rsb	r3, r3, #0
     b5c:	e50b3010 	str	r3, [fp, #-16]
     b60:	ea000001 	b	b6c <printint+0x5c>
     b64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b68:	e50b3010 	str	r3, [fp, #-16]
     b6c:	e3a03000 	mov	r3, #0
     b70:	e50b3008 	str	r3, [fp, #-8]
     b74:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b78:	e51b3010 	ldr	r3, [fp, #-16]
     b7c:	e1a01002 	mov	r1, r2
     b80:	e1a00003 	mov	r0, r3
     b84:	eb0001d5 	bl	12e0 <__aeabi_uidivmod>
     b88:	e1a03001 	mov	r3, r1
     b8c:	e1a01003 	mov	r1, r3
     b90:	e51b3008 	ldr	r3, [fp, #-8]
     b94:	e2832001 	add	r2, r3, #1
     b98:	e50b2008 	str	r2, [fp, #-8]
     b9c:	e59f20a0 	ldr	r2, [pc, #160]	@ c44 <printint+0x134>
     ba0:	e7d22001 	ldrb	r2, [r2, r1]
     ba4:	e2433004 	sub	r3, r3, #4
     ba8:	e083300b 	add	r3, r3, fp
     bac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bb0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e51b0010 	ldr	r0, [fp, #-16]
     bbc:	eb00018a 	bl	11ec <__udivsi3>
     bc0:	e1a03000 	mov	r3, r0
     bc4:	e50b3010 	str	r3, [fp, #-16]
     bc8:	e51b3010 	ldr	r3, [fp, #-16]
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1affffe7 	bne	b74 <printint+0x64>
     bd4:	e51b300c 	ldr	r3, [fp, #-12]
     bd8:	e3530000 	cmp	r3, #0
     bdc:	0a00000e 	beq	c1c <printint+0x10c>
     be0:	e51b3008 	ldr	r3, [fp, #-8]
     be4:	e2832001 	add	r2, r3, #1
     be8:	e50b2008 	str	r2, [fp, #-8]
     bec:	e2433004 	sub	r3, r3, #4
     bf0:	e083300b 	add	r3, r3, fp
     bf4:	e3a0202d 	mov	r2, #45	@ 0x2d
     bf8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bfc:	ea000006 	b	c1c <printint+0x10c>
     c00:	e24b2020 	sub	r2, fp, #32
     c04:	e51b3008 	ldr	r3, [fp, #-8]
     c08:	e0823003 	add	r3, r2, r3
     c0c:	e5d33000 	ldrb	r3, [r3]
     c10:	e1a01003 	mov	r1, r3
     c14:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c18:	ebffffae 	bl	ad8 <putc>
     c1c:	e51b3008 	ldr	r3, [fp, #-8]
     c20:	e2433001 	sub	r3, r3, #1
     c24:	e50b3008 	str	r3, [fp, #-8]
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e3530000 	cmp	r3, #0
     c30:	aafffff2 	bge	c00 <printint+0xf0>
     c34:	e1a00000 	nop			@ (mov r0, r0)
     c38:	e1a00000 	nop			@ (mov r0, r0)
     c3c:	e24bd004 	sub	sp, fp, #4
     c40:	e8bd8800 	pop	{fp, pc}
     c44:	0000130c 	.word	0x0000130c

00000c48 <printf>:
     c48:	e92d000e 	push	{r1, r2, r3}
     c4c:	e92d4800 	push	{fp, lr}
     c50:	e28db004 	add	fp, sp, #4
     c54:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c58:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c5c:	e3a03000 	mov	r3, #0
     c60:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c64:	e28b3008 	add	r3, fp, #8
     c68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c6c:	e3a03000 	mov	r3, #0
     c70:	e50b3010 	str	r3, [fp, #-16]
     c74:	ea000074 	b	e4c <printf+0x204>
     c78:	e59b2004 	ldr	r2, [fp, #4]
     c7c:	e51b3010 	ldr	r3, [fp, #-16]
     c80:	e0823003 	add	r3, r2, r3
     c84:	e5d33000 	ldrb	r3, [r3]
     c88:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c90:	e3530000 	cmp	r3, #0
     c94:	1a00000b 	bne	cc8 <printf+0x80>
     c98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c9c:	e3530025 	cmp	r3, #37	@ 0x25
     ca0:	1a000002 	bne	cb0 <printf+0x68>
     ca4:	e3a03025 	mov	r3, #37	@ 0x25
     ca8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cac:	ea000063 	b	e40 <printf+0x1f8>
     cb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb4:	e6ef3073 	uxtb	r3, r3
     cb8:	e1a01003 	mov	r1, r3
     cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	ebffff84 	bl	ad8 <putc>
     cc4:	ea00005d 	b	e40 <printf+0x1f8>
     cc8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ccc:	e3530025 	cmp	r3, #37	@ 0x25
     cd0:	1a00005a 	bne	e40 <printf+0x1f8>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd8:	e3530064 	cmp	r3, #100	@ 0x64
     cdc:	1a00000a 	bne	d0c <printf+0xc4>
     ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e1a01003 	mov	r1, r3
     cec:	e3a03001 	mov	r3, #1
     cf0:	e3a0200a 	mov	r2, #10
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf8:	ebffff84 	bl	b10 <printint>
     cfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d00:	e2833004 	add	r3, r3, #4
     d04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d08:	ea00004a 	b	e38 <printf+0x1f0>
     d0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d10:	e3530078 	cmp	r3, #120	@ 0x78
     d14:	0a000002 	beq	d24 <printf+0xdc>
     d18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d1c:	e3530070 	cmp	r3, #112	@ 0x70
     d20:	1a00000a 	bne	d50 <printf+0x108>
     d24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d28:	e5933000 	ldr	r3, [r3]
     d2c:	e1a01003 	mov	r1, r3
     d30:	e3a03000 	mov	r3, #0
     d34:	e3a02010 	mov	r2, #16
     d38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d3c:	ebffff73 	bl	b10 <printint>
     d40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d44:	e2833004 	add	r3, r3, #4
     d48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	ea000039 	b	e38 <printf+0x1f0>
     d50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d54:	e3530073 	cmp	r3, #115	@ 0x73
     d58:	1a000018 	bne	dc0 <printf+0x178>
     d5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e50b300c 	str	r3, [fp, #-12]
     d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	e2833004 	add	r3, r3, #4
     d70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d74:	e51b300c 	ldr	r3, [fp, #-12]
     d78:	e3530000 	cmp	r3, #0
     d7c:	1a00000a 	bne	dac <printf+0x164>
     d80:	e59f30f4 	ldr	r3, [pc, #244]	@ e7c <printf+0x234>
     d84:	e50b300c 	str	r3, [fp, #-12]
     d88:	ea000007 	b	dac <printf+0x164>
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e5d33000 	ldrb	r3, [r3]
     d94:	e1a01003 	mov	r1, r3
     d98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d9c:	ebffff4d 	bl	ad8 <putc>
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e2833001 	add	r3, r3, #1
     da8:	e50b300c 	str	r3, [fp, #-12]
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5d33000 	ldrb	r3, [r3]
     db4:	e3530000 	cmp	r3, #0
     db8:	1afffff3 	bne	d8c <printf+0x144>
     dbc:	ea00001d 	b	e38 <printf+0x1f0>
     dc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc4:	e3530063 	cmp	r3, #99	@ 0x63
     dc8:	1a000009 	bne	df4 <printf+0x1ac>
     dcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e6ef3073 	uxtb	r3, r3
     dd8:	e1a01003 	mov	r1, r3
     ddc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     de0:	ebffff3c 	bl	ad8 <putc>
     de4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de8:	e2833004 	add	r3, r3, #4
     dec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     df0:	ea000010 	b	e38 <printf+0x1f0>
     df4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df8:	e3530025 	cmp	r3, #37	@ 0x25
     dfc:	1a000005 	bne	e18 <printf+0x1d0>
     e00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e04:	e6ef3073 	uxtb	r3, r3
     e08:	e1a01003 	mov	r1, r3
     e0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e10:	ebffff30 	bl	ad8 <putc>
     e14:	ea000007 	b	e38 <printf+0x1f0>
     e18:	e3a01025 	mov	r1, #37	@ 0x25
     e1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e20:	ebffff2c 	bl	ad8 <putc>
     e24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e28:	e6ef3073 	uxtb	r3, r3
     e2c:	e1a01003 	mov	r1, r3
     e30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e34:	ebffff27 	bl	ad8 <putc>
     e38:	e3a03000 	mov	r3, #0
     e3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e40:	e51b3010 	ldr	r3, [fp, #-16]
     e44:	e2833001 	add	r3, r3, #1
     e48:	e50b3010 	str	r3, [fp, #-16]
     e4c:	e59b2004 	ldr	r2, [fp, #4]
     e50:	e51b3010 	ldr	r3, [fp, #-16]
     e54:	e0823003 	add	r3, r2, r3
     e58:	e5d33000 	ldrb	r3, [r3]
     e5c:	e3530000 	cmp	r3, #0
     e60:	1affff84 	bne	c78 <printf+0x30>
     e64:	e1a00000 	nop			@ (mov r0, r0)
     e68:	e1a00000 	nop			@ (mov r0, r0)
     e6c:	e24bd004 	sub	sp, fp, #4
     e70:	e8bd4800 	pop	{fp, lr}
     e74:	e28dd00c 	add	sp, sp, #12
     e78:	e12fff1e 	bx	lr
     e7c:	00001304 	.word	0x00001304

00000e80 <free>:
     e80:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e84:	e28db000 	add	fp, sp, #0
     e88:	e24dd014 	sub	sp, sp, #20
     e8c:	e50b0010 	str	r0, [fp, #-16]
     e90:	e51b3010 	ldr	r3, [fp, #-16]
     e94:	e2433008 	sub	r3, r3, #8
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e59f3154 	ldr	r3, [pc, #340]	@ ff8 <free+0x178>
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e50b3008 	str	r3, [fp, #-8]
     ea8:	ea000010 	b	ef0 <free+0x70>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5933000 	ldr	r3, [r3]
     eb4:	e51b2008 	ldr	r2, [fp, #-8]
     eb8:	e1520003 	cmp	r2, r3
     ebc:	3a000008 	bcc	ee4 <free+0x64>
     ec0:	e51b200c 	ldr	r2, [fp, #-12]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e1520003 	cmp	r2, r3
     ecc:	8a000010 	bhi	f14 <free+0x94>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933000 	ldr	r3, [r3]
     ed8:	e51b200c 	ldr	r2, [fp, #-12]
     edc:	e1520003 	cmp	r2, r3
     ee0:	3a00000b 	bcc	f14 <free+0x94>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e50b3008 	str	r3, [fp, #-8]
     ef0:	e51b200c 	ldr	r2, [fp, #-12]
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e1520003 	cmp	r2, r3
     efc:	9affffea 	bls	eac <free+0x2c>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e51b200c 	ldr	r2, [fp, #-12]
     f0c:	e1520003 	cmp	r2, r3
     f10:	2affffe5 	bcs	eac <free+0x2c>
     f14:	e51b300c 	ldr	r3, [fp, #-12]
     f18:	e5933004 	ldr	r3, [r3, #4]
     f1c:	e1a03183 	lsl	r3, r3, #3
     f20:	e51b200c 	ldr	r2, [fp, #-12]
     f24:	e0822003 	add	r2, r2, r3
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e1520003 	cmp	r2, r3
     f34:	1a00000d 	bne	f70 <free+0xf0>
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5932004 	ldr	r2, [r3, #4]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e5933004 	ldr	r3, [r3, #4]
     f4c:	e0822003 	add	r2, r2, r3
     f50:	e51b300c 	ldr	r3, [fp, #-12]
     f54:	e5832004 	str	r2, [r3, #4]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e5932000 	ldr	r2, [r3]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5832000 	str	r2, [r3]
     f6c:	ea000003 	b	f80 <free+0x100>
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e5932000 	ldr	r2, [r3]
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5832000 	str	r2, [r3]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933004 	ldr	r3, [r3, #4]
     f88:	e1a03183 	lsl	r3, r3, #3
     f8c:	e51b2008 	ldr	r2, [fp, #-8]
     f90:	e0823003 	add	r3, r2, r3
     f94:	e51b200c 	ldr	r2, [fp, #-12]
     f98:	e1520003 	cmp	r2, r3
     f9c:	1a00000b 	bne	fd0 <free+0x150>
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5932004 	ldr	r2, [r3, #4]
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e0822003 	add	r2, r2, r3
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e5832004 	str	r2, [r3, #4]
     fbc:	e51b300c 	ldr	r3, [fp, #-12]
     fc0:	e5932000 	ldr	r2, [r3]
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e5832000 	str	r2, [r3]
     fcc:	ea000002 	b	fdc <free+0x15c>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e51b200c 	ldr	r2, [fp, #-12]
     fd8:	e5832000 	str	r2, [r3]
     fdc:	e59f2014 	ldr	r2, [pc, #20]	@ ff8 <free+0x178>
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5823000 	str	r3, [r2]
     fe8:	e1a00000 	nop			@ (mov r0, r0)
     fec:	e28bd000 	add	sp, fp, #0
     ff0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ff4:	e12fff1e 	bx	lr
     ff8:	00001328 	.word	0x00001328

00000ffc <morecore>:
     ffc:	e92d4800 	push	{fp, lr}
    1000:	e28db004 	add	fp, sp, #4
    1004:	e24dd010 	sub	sp, sp, #16
    1008:	e50b0010 	str	r0, [fp, #-16]
    100c:	e51b3010 	ldr	r3, [fp, #-16]
    1010:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1014:	2a000001 	bcs	1020 <morecore+0x24>
    1018:	e3a03a01 	mov	r3, #4096	@ 0x1000
    101c:	e50b3010 	str	r3, [fp, #-16]
    1020:	e51b3010 	ldr	r3, [fp, #-16]
    1024:	e1a03183 	lsl	r3, r3, #3
    1028:	e1a00003 	mov	r0, r3
    102c:	ebfffe5f 	bl	9b0 <sbrk>
    1030:	e50b0008 	str	r0, [fp, #-8]
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e3730001 	cmn	r3, #1
    103c:	1a000001 	bne	1048 <morecore+0x4c>
    1040:	e3a03000 	mov	r3, #0
    1044:	ea00000a 	b	1074 <morecore+0x78>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e50b300c 	str	r3, [fp, #-12]
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e51b2010 	ldr	r2, [fp, #-16]
    1058:	e5832004 	str	r2, [r3, #4]
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e2833008 	add	r3, r3, #8
    1064:	e1a00003 	mov	r0, r3
    1068:	ebffff84 	bl	e80 <free>
    106c:	e59f300c 	ldr	r3, [pc, #12]	@ 1080 <morecore+0x84>
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e1a00003 	mov	r0, r3
    1078:	e24bd004 	sub	sp, fp, #4
    107c:	e8bd8800 	pop	{fp, pc}
    1080:	00001328 	.word	0x00001328

00001084 <malloc>:
    1084:	e92d4800 	push	{fp, lr}
    1088:	e28db004 	add	fp, sp, #4
    108c:	e24dd018 	sub	sp, sp, #24
    1090:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e2833007 	add	r3, r3, #7
    109c:	e1a031a3 	lsr	r3, r3, #3
    10a0:	e2833001 	add	r3, r3, #1
    10a4:	e50b3010 	str	r3, [fp, #-16]
    10a8:	e59f3134 	ldr	r3, [pc, #308]	@ 11e4 <malloc+0x160>
    10ac:	e5933000 	ldr	r3, [r3]
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e3530000 	cmp	r3, #0
    10bc:	1a00000b 	bne	10f0 <malloc+0x6c>
    10c0:	e59f3120 	ldr	r3, [pc, #288]	@ 11e8 <malloc+0x164>
    10c4:	e50b300c 	str	r3, [fp, #-12]
    10c8:	e59f2114 	ldr	r2, [pc, #276]	@ 11e4 <malloc+0x160>
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e5823000 	str	r3, [r2]
    10d4:	e59f3108 	ldr	r3, [pc, #264]	@ 11e4 <malloc+0x160>
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e59f2104 	ldr	r2, [pc, #260]	@ 11e8 <malloc+0x164>
    10e0:	e5823000 	str	r3, [r2]
    10e4:	e59f30fc 	ldr	r3, [pc, #252]	@ 11e8 <malloc+0x164>
    10e8:	e3a02000 	mov	r2, #0
    10ec:	e5832004 	str	r2, [r3, #4]
    10f0:	e51b300c 	ldr	r3, [fp, #-12]
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e50b3008 	str	r3, [fp, #-8]
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933004 	ldr	r3, [r3, #4]
    1104:	e51b2010 	ldr	r2, [fp, #-16]
    1108:	e1520003 	cmp	r2, r3
    110c:	8a00001e 	bhi	118c <malloc+0x108>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5933004 	ldr	r3, [r3, #4]
    1118:	e51b2010 	ldr	r2, [fp, #-16]
    111c:	e1520003 	cmp	r2, r3
    1120:	1a000004 	bne	1138 <malloc+0xb4>
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5932000 	ldr	r2, [r3]
    112c:	e51b300c 	ldr	r3, [fp, #-12]
    1130:	e5832000 	str	r2, [r3]
    1134:	ea00000e 	b	1174 <malloc+0xf0>
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e5932004 	ldr	r2, [r3, #4]
    1140:	e51b3010 	ldr	r3, [fp, #-16]
    1144:	e0422003 	sub	r2, r2, r3
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e5832004 	str	r2, [r3, #4]
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e5933004 	ldr	r3, [r3, #4]
    1158:	e1a03183 	lsl	r3, r3, #3
    115c:	e51b2008 	ldr	r2, [fp, #-8]
    1160:	e0823003 	add	r3, r2, r3
    1164:	e50b3008 	str	r3, [fp, #-8]
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e51b2010 	ldr	r2, [fp, #-16]
    1170:	e5832004 	str	r2, [r3, #4]
    1174:	e59f2068 	ldr	r2, [pc, #104]	@ 11e4 <malloc+0x160>
    1178:	e51b300c 	ldr	r3, [fp, #-12]
    117c:	e5823000 	str	r3, [r2]
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e2833008 	add	r3, r3, #8
    1188:	ea000012 	b	11d8 <malloc+0x154>
    118c:	e59f3050 	ldr	r3, [pc, #80]	@ 11e4 <malloc+0x160>
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e51b2008 	ldr	r2, [fp, #-8]
    1198:	e1520003 	cmp	r2, r3
    119c:	1a000007 	bne	11c0 <malloc+0x13c>
    11a0:	e51b0010 	ldr	r0, [fp, #-16]
    11a4:	ebffff94 	bl	ffc <morecore>
    11a8:	e50b0008 	str	r0, [fp, #-8]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e3530000 	cmp	r3, #0
    11b4:	1a000001 	bne	11c0 <malloc+0x13c>
    11b8:	e3a03000 	mov	r3, #0
    11bc:	ea000005 	b	11d8 <malloc+0x154>
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e50b300c 	str	r3, [fp, #-12]
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933000 	ldr	r3, [r3]
    11d0:	e50b3008 	str	r3, [fp, #-8]
    11d4:	eaffffc8 	b	10fc <malloc+0x78>
    11d8:	e1a00003 	mov	r0, r3
    11dc:	e24bd004 	sub	sp, fp, #4
    11e0:	e8bd8800 	pop	{fp, pc}
    11e4:	00001328 	.word	0x00001328
    11e8:	00001320 	.word	0x00001320

000011ec <__udivsi3>:
    11ec:	e2512001 	subs	r2, r1, #1
    11f0:	012fff1e 	bxeq	lr
    11f4:	3a000036 	bcc	12d4 <__udivsi3+0xe8>
    11f8:	e1500001 	cmp	r0, r1
    11fc:	9a000022 	bls	128c <__udivsi3+0xa0>
    1200:	e1110002 	tst	r1, r2
    1204:	0a000023 	beq	1298 <__udivsi3+0xac>
    1208:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    120c:	01a01181 	lsleq	r1, r1, #3
    1210:	03a03008 	moveq	r3, #8
    1214:	13a03001 	movne	r3, #1
    1218:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    121c:	31510000 	cmpcc	r1, r0
    1220:	31a01201 	lslcc	r1, r1, #4
    1224:	31a03203 	lslcc	r3, r3, #4
    1228:	3afffffa 	bcc	1218 <__udivsi3+0x2c>
    122c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1230:	31510000 	cmpcc	r1, r0
    1234:	31a01081 	lslcc	r1, r1, #1
    1238:	31a03083 	lslcc	r3, r3, #1
    123c:	3afffffa 	bcc	122c <__udivsi3+0x40>
    1240:	e3a02000 	mov	r2, #0
    1244:	e1500001 	cmp	r0, r1
    1248:	20400001 	subcs	r0, r0, r1
    124c:	21822003 	orrcs	r2, r2, r3
    1250:	e15000a1 	cmp	r0, r1, lsr #1
    1254:	204000a1 	subcs	r0, r0, r1, lsr #1
    1258:	218220a3 	orrcs	r2, r2, r3, lsr #1
    125c:	e1500121 	cmp	r0, r1, lsr #2
    1260:	20400121 	subcs	r0, r0, r1, lsr #2
    1264:	21822123 	orrcs	r2, r2, r3, lsr #2
    1268:	e15001a1 	cmp	r0, r1, lsr #3
    126c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1270:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1274:	e3500000 	cmp	r0, #0
    1278:	11b03223 	lsrsne	r3, r3, #4
    127c:	11a01221 	lsrne	r1, r1, #4
    1280:	1affffef 	bne	1244 <__udivsi3+0x58>
    1284:	e1a00002 	mov	r0, r2
    1288:	e12fff1e 	bx	lr
    128c:	03a00001 	moveq	r0, #1
    1290:	13a00000 	movne	r0, #0
    1294:	e12fff1e 	bx	lr
    1298:	e3510801 	cmp	r1, #65536	@ 0x10000
    129c:	21a01821 	lsrcs	r1, r1, #16
    12a0:	23a02010 	movcs	r2, #16
    12a4:	33a02000 	movcc	r2, #0
    12a8:	e3510c01 	cmp	r1, #256	@ 0x100
    12ac:	21a01421 	lsrcs	r1, r1, #8
    12b0:	22822008 	addcs	r2, r2, #8
    12b4:	e3510010 	cmp	r1, #16
    12b8:	21a01221 	lsrcs	r1, r1, #4
    12bc:	22822004 	addcs	r2, r2, #4
    12c0:	e3510004 	cmp	r1, #4
    12c4:	82822003 	addhi	r2, r2, #3
    12c8:	908220a1 	addls	r2, r2, r1, lsr #1
    12cc:	e1a00230 	lsr	r0, r0, r2
    12d0:	e12fff1e 	bx	lr
    12d4:	e3500000 	cmp	r0, #0
    12d8:	13e00000 	mvnne	r0, #0
    12dc:	ea000007 	b	1300 <__aeabi_idiv0>

000012e0 <__aeabi_uidivmod>:
    12e0:	e3510000 	cmp	r1, #0
    12e4:	0afffffa 	beq	12d4 <__udivsi3+0xe8>
    12e8:	e92d4003 	push	{r0, r1, lr}
    12ec:	ebffffbe 	bl	11ec <__udivsi3>
    12f0:	e8bd4006 	pop	{r1, r2, lr}
    12f4:	e0030092 	mul	r3, r2, r0
    12f8:	e0411003 	sub	r1, r1, r3
    12fc:	e12fff1e 	bx	lr

00001300 <__aeabi_idiv0>:
    1300:	e12fff1e 	bx	lr
