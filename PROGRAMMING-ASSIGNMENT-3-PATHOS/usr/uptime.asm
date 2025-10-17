
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd020 	sub	sp, sp, #32
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	eb0002a0 	bl	a9c <uptime>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e59f2094 	ldr	r2, [pc, #148]	@ bc <main+0xbc>
      24:	e0c21392 	smull	r1, r2, r2, r3
      28:	e1a022c2 	asr	r2, r2, #5
      2c:	e1a03fc3 	asr	r3, r3, #31
      30:	e0423003 	sub	r3, r2, r3
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	e51b2008 	ldr	r2, [fp, #-8]
      3c:	e59f3078 	ldr	r3, [pc, #120]	@ bc <main+0xbc>
      40:	e0c31293 	smull	r1, r3, r3, r2
      44:	e1a012c3 	asr	r1, r3, #5
      48:	e1a03fc2 	asr	r3, r2, #31
      4c:	e0411003 	sub	r1, r1, r3
      50:	e1a03001 	mov	r3, r1
      54:	e1a03103 	lsl	r3, r3, #2
      58:	e0833001 	add	r3, r3, r1
      5c:	e1a01103 	lsl	r1, r3, #2
      60:	e0833001 	add	r3, r3, r1
      64:	e1a03103 	lsl	r3, r3, #2
      68:	e0423003 	sub	r3, r2, r3
      6c:	e50b3010 	str	r3, [fp, #-16]
      70:	e51b3010 	ldr	r3, [fp, #-16]
      74:	e3530009 	cmp	r3, #9
      78:	ca000007 	bgt	9c <main+0x9c>
      7c:	e51b3010 	ldr	r3, [fp, #-16]
      80:	e58d3000 	str	r3, [sp]
      84:	e51b300c 	ldr	r3, [fp, #-12]
      88:	e51b2008 	ldr	r2, [fp, #-8]
      8c:	e59f102c 	ldr	r1, [pc, #44]	@ c0 <main+0xc0>
      90:	e3a00001 	mov	r0, #1
      94:	eb000314 	bl	cec <printf>
      98:	ea000006 	b	b8 <main+0xb8>
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e58d3000 	str	r3, [sp]
      a4:	e51b300c 	ldr	r3, [fp, #-12]
      a8:	e51b2008 	ldr	r2, [fp, #-8]
      ac:	e59f1010 	ldr	r1, [pc, #16]	@ c4 <main+0xc4>
      b0:	e3a00001 	mov	r0, #1
      b4:	eb00030c 	bl	cec <printf>
      b8:	eb0001cc 	bl	7f0 <exit>
      bc:	51eb851f 	.word	0x51eb851f
      c0:	000013a8 	.word	0x000013a8
      c4:	000013c8 	.word	0x000013c8

000000c8 <pg_pte>:
      c8:	e92d4800 	push	{fp, lr}
      cc:	e28db004 	add	fp, sp, #4
      d0:	e24dd008 	sub	sp, sp, #8
      d4:	e50b0008 	str	r0, [fp, #-8]
      d8:	e51b1008 	ldr	r1, [fp, #-8]
      dc:	e3a00065 	mov	r0, #101	@ 0x65
      e0:	eb0002a3 	bl	b74 <syscall>
      e4:	e1a03000 	mov	r3, r0
      e8:	e1a00003 	mov	r0, r3
      ec:	e24bd004 	sub	sp, fp, #4
      f0:	e8bd8800 	pop	{fp, pc}

000000f4 <pg_pa>:
      f4:	e92d4800 	push	{fp, lr}
      f8:	e28db004 	add	fp, sp, #4
      fc:	e24dd008 	sub	sp, sp, #8
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b1008 	ldr	r1, [fp, #-8]
     108:	e3a00066 	mov	r0, #102	@ 0x66
     10c:	eb000298 	bl	b74 <syscall>
     110:	e1a03000 	mov	r3, r0
     114:	e1a00003 	mov	r0, r3
     118:	e24bd004 	sub	sp, fp, #4
     11c:	e8bd8800 	pop	{fp, pc}

00000120 <pg_flags>:
     120:	e92d4800 	push	{fp, lr}
     124:	e28db004 	add	fp, sp, #4
     128:	e24dd008 	sub	sp, sp, #8
     12c:	e50b0008 	str	r0, [fp, #-8]
     130:	e51b1008 	ldr	r1, [fp, #-8]
     134:	e3a00067 	mov	r0, #103	@ 0x67
     138:	eb00028d 	bl	b74 <syscall>
     13c:	e1a03000 	mov	r3, r0
     140:	e1a00003 	mov	r0, r3
     144:	e24bd004 	sub	sp, fp, #4
     148:	e8bd8800 	pop	{fp, pc}

0000014c <kpt>:
     14c:	e92d4800 	push	{fp, lr}
     150:	e28db004 	add	fp, sp, #4
     154:	e3a00068 	mov	r0, #104	@ 0x68
     158:	eb000285 	bl	b74 <syscall>
     15c:	e1a03000 	mov	r3, r0
     160:	e1a00003 	mov	r0, r3
     164:	e8bd8800 	pop	{fp, pc}

00000168 <ugetpid>:
     168:	e92d4800 	push	{fp, lr}
     16c:	e28db004 	add	fp, sp, #4
     170:	e3a00069 	mov	r0, #105	@ 0x69
     174:	eb00027e 	bl	b74 <syscall>
     178:	e1a03000 	mov	r3, r0
     17c:	e1a00003 	mov	r0, r3
     180:	e8bd8800 	pop	{fp, pc}

00000184 <strcpy>:
     184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     188:	e28db000 	add	fp, sp, #0
     18c:	e24dd014 	sub	sp, sp, #20
     190:	e50b0010 	str	r0, [fp, #-16]
     194:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e50b3008 	str	r3, [fp, #-8]
     1a0:	e1a00000 	nop			@ (mov r0, r0)
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e2823001 	add	r3, r2, #1
     1ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b0:	e51b3010 	ldr	r3, [fp, #-16]
     1b4:	e2831001 	add	r1, r3, #1
     1b8:	e50b1010 	str	r1, [fp, #-16]
     1bc:	e5d22000 	ldrb	r2, [r2]
     1c0:	e5c32000 	strb	r2, [r3]
     1c4:	e5d33000 	ldrb	r3, [r3]
     1c8:	e3530000 	cmp	r3, #0
     1cc:	1afffff4 	bne	1a4 <strcpy+0x20>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e1a00003 	mov	r0, r3
     1d8:	e28bd000 	add	sp, fp, #0
     1dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e0:	e12fff1e 	bx	lr

000001e4 <strcmp>:
     1e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e8:	e28db000 	add	fp, sp, #0
     1ec:	e24dd00c 	sub	sp, sp, #12
     1f0:	e50b0008 	str	r0, [fp, #-8]
     1f4:	e50b100c 	str	r1, [fp, #-12]
     1f8:	ea000005 	b	214 <strcmp+0x30>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e2833001 	add	r3, r3, #1
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e2833001 	add	r3, r3, #1
     210:	e50b300c 	str	r3, [fp, #-12]
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e5d33000 	ldrb	r3, [r3]
     21c:	e3530000 	cmp	r3, #0
     220:	0a000005 	beq	23c <strcmp+0x58>
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e5d32000 	ldrb	r2, [r3]
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e5d33000 	ldrb	r3, [r3]
     234:	e1520003 	cmp	r2, r3
     238:	0affffef 	beq	1fc <strcmp+0x18>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e5d33000 	ldrb	r3, [r3]
     244:	e1a02003 	mov	r2, r3
     248:	e51b300c 	ldr	r3, [fp, #-12]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e0423003 	sub	r3, r2, r3
     254:	e1a00003 	mov	r0, r3
     258:	e28bd000 	add	sp, fp, #0
     25c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     260:	e12fff1e 	bx	lr

00000264 <strlen>:
     264:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     268:	e28db000 	add	fp, sp, #0
     26c:	e24dd014 	sub	sp, sp, #20
     270:	e50b0010 	str	r0, [fp, #-16]
     274:	e3a03000 	mov	r3, #0
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	ea000002 	b	28c <strlen+0x28>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e2833001 	add	r3, r3, #1
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e51b2010 	ldr	r2, [fp, #-16]
     294:	e0823003 	add	r3, r2, r3
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e3530000 	cmp	r3, #0
     2a0:	1afffff6 	bne	280 <strlen+0x1c>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e1a00003 	mov	r0, r3
     2ac:	e28bd000 	add	sp, fp, #0
     2b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2b4:	e12fff1e 	bx	lr

000002b8 <memset>:
     2b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2bc:	e28db000 	add	fp, sp, #0
     2c0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2cc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e50b3008 	str	r3, [fp, #-8]
     2d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2dc:	e54b300d 	strb	r3, [fp, #-13]
     2e0:	e55b200d 	ldrb	r2, [fp, #-13]
     2e4:	e1a03002 	mov	r3, r2
     2e8:	e1a03403 	lsl	r3, r3, #8
     2ec:	e0833002 	add	r3, r3, r2
     2f0:	e1a03803 	lsl	r3, r3, #16
     2f4:	e1a02003 	mov	r2, r3
     2f8:	e55b300d 	ldrb	r3, [fp, #-13]
     2fc:	e1a03403 	lsl	r3, r3, #8
     300:	e1822003 	orr	r2, r2, r3
     304:	e55b300d 	ldrb	r3, [fp, #-13]
     308:	e1823003 	orr	r3, r2, r3
     30c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     310:	ea000008 	b	338 <memset+0x80>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e55b200d 	ldrb	r2, [fp, #-13]
     31c:	e5c32000 	strb	r2, [r3]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e2433001 	sub	r3, r3, #1
     328:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2833001 	add	r3, r3, #1
     334:	e50b3008 	str	r3, [fp, #-8]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e3530000 	cmp	r3, #0
     340:	0a000003 	beq	354 <memset+0x9c>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2033003 	and	r3, r3, #3
     34c:	e3530000 	cmp	r3, #0
     350:	1affffef 	bne	314 <memset+0x5c>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e50b300c 	str	r3, [fp, #-12]
     35c:	ea000008 	b	384 <memset+0xcc>
     360:	e51b300c 	ldr	r3, [fp, #-12]
     364:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     368:	e5832000 	str	r2, [r3]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e2433004 	sub	r3, r3, #4
     374:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     378:	e51b300c 	ldr	r3, [fp, #-12]
     37c:	e2833004 	add	r3, r3, #4
     380:	e50b300c 	str	r3, [fp, #-12]
     384:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     388:	e3530003 	cmp	r3, #3
     38c:	8afffff3 	bhi	360 <memset+0xa8>
     390:	e51b300c 	ldr	r3, [fp, #-12]
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	ea000008 	b	3c0 <memset+0x108>
     39c:	e51b3008 	ldr	r3, [fp, #-8]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e5c32000 	strb	r2, [r3]
     3a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e2433001 	sub	r3, r3, #1
     3b0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e2833001 	add	r3, r3, #1
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c4:	e3530000 	cmp	r3, #0
     3c8:	1afffff3 	bne	39c <memset+0xe4>
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e1a00003 	mov	r0, r3
     3d4:	e28bd000 	add	sp, fp, #0
     3d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3dc:	e12fff1e 	bx	lr

000003e0 <strchr>:
     3e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e4:	e28db000 	add	fp, sp, #0
     3e8:	e24dd00c 	sub	sp, sp, #12
     3ec:	e50b0008 	str	r0, [fp, #-8]
     3f0:	e1a03001 	mov	r3, r1
     3f4:	e54b3009 	strb	r3, [fp, #-9]
     3f8:	ea000009 	b	424 <strchr+0x44>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e5d33000 	ldrb	r3, [r3]
     404:	e55b2009 	ldrb	r2, [fp, #-9]
     408:	e1520003 	cmp	r2, r3
     40c:	1a000001 	bne	418 <strchr+0x38>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	ea000007 	b	438 <strchr+0x58>
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e2833001 	add	r3, r3, #1
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e5d33000 	ldrb	r3, [r3]
     42c:	e3530000 	cmp	r3, #0
     430:	1afffff1 	bne	3fc <strchr+0x1c>
     434:	e3a03000 	mov	r3, #0
     438:	e1a00003 	mov	r0, r3
     43c:	e28bd000 	add	sp, fp, #0
     440:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     444:	e12fff1e 	bx	lr

00000448 <gets>:
     448:	e92d4800 	push	{fp, lr}
     44c:	e28db004 	add	fp, sp, #4
     450:	e24dd018 	sub	sp, sp, #24
     454:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     458:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     45c:	e3a03000 	mov	r3, #0
     460:	e50b3008 	str	r3, [fp, #-8]
     464:	ea000016 	b	4c4 <gets+0x7c>
     468:	e24b300d 	sub	r3, fp, #13
     46c:	e3a02001 	mov	r2, #1
     470:	e1a01003 	mov	r1, r3
     474:	e3a00000 	mov	r0, #0
     478:	eb0000f7 	bl	85c <read>
     47c:	e50b000c 	str	r0, [fp, #-12]
     480:	e51b300c 	ldr	r3, [fp, #-12]
     484:	e3530000 	cmp	r3, #0
     488:	da000013 	ble	4dc <gets+0x94>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e2832001 	add	r2, r3, #1
     494:	e50b2008 	str	r2, [fp, #-8]
     498:	e1a02003 	mov	r2, r3
     49c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a0:	e0833002 	add	r3, r3, r2
     4a4:	e55b200d 	ldrb	r2, [fp, #-13]
     4a8:	e5c32000 	strb	r2, [r3]
     4ac:	e55b300d 	ldrb	r3, [fp, #-13]
     4b0:	e353000a 	cmp	r3, #10
     4b4:	0a000009 	beq	4e0 <gets+0x98>
     4b8:	e55b300d 	ldrb	r3, [fp, #-13]
     4bc:	e353000d 	cmp	r3, #13
     4c0:	0a000006 	beq	4e0 <gets+0x98>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e2833001 	add	r3, r3, #1
     4cc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4d0:	e1520003 	cmp	r2, r3
     4d4:	caffffe3 	bgt	468 <gets+0x20>
     4d8:	ea000000 	b	4e0 <gets+0x98>
     4dc:	e1a00000 	nop			@ (mov r0, r0)
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e8:	e0823003 	add	r3, r2, r3
     4ec:	e3a02000 	mov	r2, #0
     4f0:	e5c32000 	strb	r2, [r3]
     4f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e24bd004 	sub	sp, fp, #4
     500:	e8bd8800 	pop	{fp, pc}

00000504 <stat>:
     504:	e92d4800 	push	{fp, lr}
     508:	e28db004 	add	fp, sp, #4
     50c:	e24dd010 	sub	sp, sp, #16
     510:	e50b0010 	str	r0, [fp, #-16]
     514:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     518:	e3a01000 	mov	r1, #0
     51c:	e51b0010 	ldr	r0, [fp, #-16]
     520:	eb0000fa 	bl	910 <open>
     524:	e50b0008 	str	r0, [fp, #-8]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e3530000 	cmp	r3, #0
     530:	aa000001 	bge	53c <stat+0x38>
     534:	e3e03000 	mvn	r3, #0
     538:	ea000006 	b	558 <stat+0x54>
     53c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     540:	e51b0008 	ldr	r0, [fp, #-8]
     544:	eb00010c 	bl	97c <fstat>
     548:	e50b000c 	str	r0, [fp, #-12]
     54c:	e51b0008 	ldr	r0, [fp, #-8]
     550:	eb0000d3 	bl	8a4 <close>
     554:	e51b300c 	ldr	r3, [fp, #-12]
     558:	e1a00003 	mov	r0, r3
     55c:	e24bd004 	sub	sp, fp, #4
     560:	e8bd8800 	pop	{fp, pc}

00000564 <atoi>:
     564:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     568:	e28db000 	add	fp, sp, #0
     56c:	e24dd014 	sub	sp, sp, #20
     570:	e50b0010 	str	r0, [fp, #-16]
     574:	e3a03000 	mov	r3, #0
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	ea00000c 	b	5b4 <atoi+0x50>
     580:	e51b2008 	ldr	r2, [fp, #-8]
     584:	e1a03002 	mov	r3, r2
     588:	e1a03103 	lsl	r3, r3, #2
     58c:	e0833002 	add	r3, r3, r2
     590:	e1a03083 	lsl	r3, r3, #1
     594:	e1a01003 	mov	r1, r3
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e2832001 	add	r2, r3, #1
     5a0:	e50b2010 	str	r2, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e0813003 	add	r3, r1, r3
     5ac:	e2433030 	sub	r3, r3, #48	@ 0x30
     5b0:	e50b3008 	str	r3, [fp, #-8]
     5b4:	e51b3010 	ldr	r3, [fp, #-16]
     5b8:	e5d33000 	ldrb	r3, [r3]
     5bc:	e353002f 	cmp	r3, #47	@ 0x2f
     5c0:	9a000003 	bls	5d4 <atoi+0x70>
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e5d33000 	ldrb	r3, [r3]
     5cc:	e3530039 	cmp	r3, #57	@ 0x39
     5d0:	9affffea 	bls	580 <atoi+0x1c>
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e1a00003 	mov	r0, r3
     5dc:	e28bd000 	add	sp, fp, #0
     5e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e4:	e12fff1e 	bx	lr

000005e8 <memmove>:
     5e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ec:	e28db000 	add	fp, sp, #0
     5f0:	e24dd01c 	sub	sp, sp, #28
     5f4:	e50b0010 	str	r0, [fp, #-16]
     5f8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e50b3008 	str	r3, [fp, #-8]
     608:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     60c:	e50b300c 	str	r3, [fp, #-12]
     610:	ea000007 	b	634 <memmove+0x4c>
     614:	e51b200c 	ldr	r2, [fp, #-12]
     618:	e2823001 	add	r3, r2, #1
     61c:	e50b300c 	str	r3, [fp, #-12]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e2831001 	add	r1, r3, #1
     628:	e50b1008 	str	r1, [fp, #-8]
     62c:	e5d22000 	ldrb	r2, [r2]
     630:	e5c32000 	strb	r2, [r3]
     634:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     638:	e2432001 	sub	r2, r3, #1
     63c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     640:	e3530000 	cmp	r3, #0
     644:	cafffff2 	bgt	614 <memmove+0x2c>
     648:	e51b3010 	ldr	r3, [fp, #-16]
     64c:	e1a00003 	mov	r0, r3
     650:	e28bd000 	add	sp, fp, #0
     654:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <strncmp>:
     65c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     660:	e28db000 	add	fp, sp, #0
     664:	e24dd014 	sub	sp, sp, #20
     668:	e50b0008 	str	r0, [fp, #-8]
     66c:	e50b100c 	str	r1, [fp, #-12]
     670:	e50b2010 	str	r2, [fp, #-16]
     674:	ea000008 	b	69c <strncmp+0x40>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e2833001 	add	r3, r3, #1
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	e51b300c 	ldr	r3, [fp, #-12]
     688:	e2833001 	add	r3, r3, #1
     68c:	e50b300c 	str	r3, [fp, #-12]
     690:	e51b3010 	ldr	r3, [fp, #-16]
     694:	e2433001 	sub	r3, r3, #1
     698:	e50b3010 	str	r3, [fp, #-16]
     69c:	e51b3010 	ldr	r3, [fp, #-16]
     6a0:	e3530000 	cmp	r3, #0
     6a4:	da00000d 	ble	6e0 <strncmp+0x84>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e5d33000 	ldrb	r3, [r3]
     6b0:	e3530000 	cmp	r3, #0
     6b4:	0a000009 	beq	6e0 <strncmp+0x84>
     6b8:	e51b300c 	ldr	r3, [fp, #-12]
     6bc:	e5d33000 	ldrb	r3, [r3]
     6c0:	e3530000 	cmp	r3, #0
     6c4:	0a000005 	beq	6e0 <strncmp+0x84>
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e5d32000 	ldrb	r2, [r3]
     6d0:	e51b300c 	ldr	r3, [fp, #-12]
     6d4:	e5d33000 	ldrb	r3, [r3]
     6d8:	e1520003 	cmp	r2, r3
     6dc:	0affffe5 	beq	678 <strncmp+0x1c>
     6e0:	e51b3010 	ldr	r3, [fp, #-16]
     6e4:	e3530000 	cmp	r3, #0
     6e8:	1a000001 	bne	6f4 <strncmp+0x98>
     6ec:	e3a03000 	mov	r3, #0
     6f0:	ea000005 	b	70c <strncmp+0xb0>
     6f4:	e51b3008 	ldr	r3, [fp, #-8]
     6f8:	e5d33000 	ldrb	r3, [r3]
     6fc:	e1a02003 	mov	r2, r3
     700:	e51b300c 	ldr	r3, [fp, #-12]
     704:	e5d33000 	ldrb	r3, [r3]
     708:	e0423003 	sub	r3, r2, r3
     70c:	e1a00003 	mov	r0, r3
     710:	e28bd000 	add	sp, fp, #0
     714:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <strncpy>:
     71c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     720:	e28db000 	add	fp, sp, #0
     724:	e24dd01c 	sub	sp, sp, #28
     728:	e50b0010 	str	r0, [fp, #-16]
     72c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     730:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     734:	e51b3010 	ldr	r3, [fp, #-16]
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea00000a 	b	76c <strncpy+0x50>
     740:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     744:	e2823001 	add	r3, r2, #1
     748:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e2831001 	add	r1, r3, #1
     754:	e50b1008 	str	r1, [fp, #-8]
     758:	e5d22000 	ldrb	r2, [r2]
     75c:	e5c32000 	strb	r2, [r3]
     760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     764:	e2433001 	sub	r3, r3, #1
     768:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     76c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     770:	e3530000 	cmp	r3, #0
     774:	da00000c 	ble	7ac <strncpy+0x90>
     778:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     77c:	e5d33000 	ldrb	r3, [r3]
     780:	e3530000 	cmp	r3, #0
     784:	1affffed 	bne	740 <strncpy+0x24>
     788:	ea000007 	b	7ac <strncpy+0x90>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e2832001 	add	r2, r3, #1
     794:	e50b2008 	str	r2, [fp, #-8]
     798:	e3a02000 	mov	r2, #0
     79c:	e5c32000 	strb	r2, [r3]
     7a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a4:	e2433001 	sub	r3, r3, #1
     7a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7b0:	e3530000 	cmp	r3, #0
     7b4:	cafffff4 	bgt	78c <strncpy+0x70>
     7b8:	e51b3010 	ldr	r3, [fp, #-16]
     7bc:	e1a00003 	mov	r0, r3
     7c0:	e28bd000 	add	sp, fp, #0
     7c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <fork>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a00001 	mov	r0, #1
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <exit>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a00002 	mov	r0, #2
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <wait>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a00003 	mov	r0, #3
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <pipe>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00004 	mov	r0, #4
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <read>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00005 	mov	r0, #5
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <write>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00010 	mov	r0, #16
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <close>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00015 	mov	r0, #21
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <kill>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00006 	mov	r0, #6
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <exec>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00007 	mov	r0, #7
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <open>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a0000f 	mov	r0, #15
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <mknod>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00011 	mov	r0, #17
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <unlink>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00012 	mov	r0, #18
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <fstat>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00008 	mov	r0, #8
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <link>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00013 	mov	r0, #19
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <mkdir>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00014 	mov	r0, #20
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <chdir>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00009 	mov	r0, #9
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <dup>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a0000a 	mov	r0, #10
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <getpid>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a0000b 	mov	r0, #11
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <sbrk>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a0000c 	mov	r0, #12
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <sleep>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000d 	mov	r0, #13
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <uptime>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0000e 	mov	r0, #14
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <proclist>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00016 	mov	r0, #22
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <settickets>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00017 	mov	r0, #23
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <srand>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00018 	mov	r0, #24
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <getpinfo>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00019 	mov	r0, #25
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <print_pt>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a0006a 	mov	r0, #106	@ 0x6a
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <syscall>:
     b74:	ef000000 	svc	0x00000000
     b78:	e12fff1e 	bx	lr

00000b7c <putc>:
     b7c:	e92d4800 	push	{fp, lr}
     b80:	e28db004 	add	fp, sp, #4
     b84:	e24dd008 	sub	sp, sp, #8
     b88:	e50b0008 	str	r0, [fp, #-8]
     b8c:	e1a03001 	mov	r3, r1
     b90:	e54b3009 	strb	r3, [fp, #-9]
     b94:	e24b3009 	sub	r3, fp, #9
     b98:	e3a02001 	mov	r2, #1
     b9c:	e1a01003 	mov	r1, r3
     ba0:	e51b0008 	ldr	r0, [fp, #-8]
     ba4:	ebffff35 	bl	880 <write>
     ba8:	e1a00000 	nop			@ (mov r0, r0)
     bac:	e24bd004 	sub	sp, fp, #4
     bb0:	e8bd8800 	pop	{fp, pc}

00000bb4 <printint>:
     bb4:	e92d4800 	push	{fp, lr}
     bb8:	e28db004 	add	fp, sp, #4
     bbc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bc0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bc4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bc8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bcc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     bd0:	e3a03000 	mov	r3, #0
     bd4:	e50b300c 	str	r3, [fp, #-12]
     bd8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bdc:	e3530000 	cmp	r3, #0
     be0:	0a000008 	beq	c08 <printint+0x54>
     be4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     be8:	e3530000 	cmp	r3, #0
     bec:	aa000005 	bge	c08 <printint+0x54>
     bf0:	e3a03001 	mov	r3, #1
     bf4:	e50b300c 	str	r3, [fp, #-12]
     bf8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bfc:	e2633000 	rsb	r3, r3, #0
     c00:	e50b3010 	str	r3, [fp, #-16]
     c04:	ea000001 	b	c10 <printint+0x5c>
     c08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c0c:	e50b3010 	str	r3, [fp, #-16]
     c10:	e3a03000 	mov	r3, #0
     c14:	e50b3008 	str	r3, [fp, #-8]
     c18:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c1c:	e51b3010 	ldr	r3, [fp, #-16]
     c20:	e1a01002 	mov	r1, r2
     c24:	e1a00003 	mov	r0, r3
     c28:	eb0001d5 	bl	1384 <__aeabi_uidivmod>
     c2c:	e1a03001 	mov	r3, r1
     c30:	e1a01003 	mov	r1, r3
     c34:	e51b3008 	ldr	r3, [fp, #-8]
     c38:	e2832001 	add	r2, r3, #1
     c3c:	e50b2008 	str	r2, [fp, #-8]
     c40:	e59f20a0 	ldr	r2, [pc, #160]	@ ce8 <printint+0x134>
     c44:	e7d22001 	ldrb	r2, [r2, r1]
     c48:	e2433004 	sub	r3, r3, #4
     c4c:	e083300b 	add	r3, r3, fp
     c50:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c54:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b0010 	ldr	r0, [fp, #-16]
     c60:	eb00018a 	bl	1290 <__udivsi3>
     c64:	e1a03000 	mov	r3, r0
     c68:	e50b3010 	str	r3, [fp, #-16]
     c6c:	e51b3010 	ldr	r3, [fp, #-16]
     c70:	e3530000 	cmp	r3, #0
     c74:	1affffe7 	bne	c18 <printint+0x64>
     c78:	e51b300c 	ldr	r3, [fp, #-12]
     c7c:	e3530000 	cmp	r3, #0
     c80:	0a00000e 	beq	cc0 <printint+0x10c>
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e2832001 	add	r2, r3, #1
     c8c:	e50b2008 	str	r2, [fp, #-8]
     c90:	e2433004 	sub	r3, r3, #4
     c94:	e083300b 	add	r3, r3, fp
     c98:	e3a0202d 	mov	r2, #45	@ 0x2d
     c9c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ca0:	ea000006 	b	cc0 <printint+0x10c>
     ca4:	e24b2020 	sub	r2, fp, #32
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e0823003 	add	r3, r2, r3
     cb0:	e5d33000 	ldrb	r3, [r3]
     cb4:	e1a01003 	mov	r1, r3
     cb8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cbc:	ebffffae 	bl	b7c <putc>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e2433001 	sub	r3, r3, #1
     cc8:	e50b3008 	str	r3, [fp, #-8]
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e3530000 	cmp	r3, #0
     cd4:	aafffff2 	bge	ca4 <printint+0xf0>
     cd8:	e1a00000 	nop			@ (mov r0, r0)
     cdc:	e1a00000 	nop			@ (mov r0, r0)
     ce0:	e24bd004 	sub	sp, fp, #4
     ce4:	e8bd8800 	pop	{fp, pc}
     ce8:	000013f0 	.word	0x000013f0

00000cec <printf>:
     cec:	e92d000e 	push	{r1, r2, r3}
     cf0:	e92d4800 	push	{fp, lr}
     cf4:	e28db004 	add	fp, sp, #4
     cf8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cfc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d00:	e3a03000 	mov	r3, #0
     d04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d08:	e28b3008 	add	r3, fp, #8
     d0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d10:	e3a03000 	mov	r3, #0
     d14:	e50b3010 	str	r3, [fp, #-16]
     d18:	ea000074 	b	ef0 <printf+0x204>
     d1c:	e59b2004 	ldr	r2, [fp, #4]
     d20:	e51b3010 	ldr	r3, [fp, #-16]
     d24:	e0823003 	add	r3, r2, r3
     d28:	e5d33000 	ldrb	r3, [r3]
     d2c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d34:	e3530000 	cmp	r3, #0
     d38:	1a00000b 	bne	d6c <printf+0x80>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e3530025 	cmp	r3, #37	@ 0x25
     d44:	1a000002 	bne	d54 <printf+0x68>
     d48:	e3a03025 	mov	r3, #37	@ 0x25
     d4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d50:	ea000063 	b	ee4 <printf+0x1f8>
     d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d58:	e6ef3073 	uxtb	r3, r3
     d5c:	e1a01003 	mov	r1, r3
     d60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d64:	ebffff84 	bl	b7c <putc>
     d68:	ea00005d 	b	ee4 <printf+0x1f8>
     d6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d70:	e3530025 	cmp	r3, #37	@ 0x25
     d74:	1a00005a 	bne	ee4 <printf+0x1f8>
     d78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d7c:	e3530064 	cmp	r3, #100	@ 0x64
     d80:	1a00000a 	bne	db0 <printf+0xc4>
     d84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e1a01003 	mov	r1, r3
     d90:	e3a03001 	mov	r3, #1
     d94:	e3a0200a 	mov	r2, #10
     d98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d9c:	ebffff84 	bl	bb4 <printint>
     da0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     da4:	e2833004 	add	r3, r3, #4
     da8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dac:	ea00004a 	b	edc <printf+0x1f0>
     db0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db4:	e3530078 	cmp	r3, #120	@ 0x78
     db8:	0a000002 	beq	dc8 <printf+0xdc>
     dbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc0:	e3530070 	cmp	r3, #112	@ 0x70
     dc4:	1a00000a 	bne	df4 <printf+0x108>
     dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e1a01003 	mov	r1, r3
     dd4:	e3a03000 	mov	r3, #0
     dd8:	e3a02010 	mov	r2, #16
     ddc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     de0:	ebffff73 	bl	bb4 <printint>
     de4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de8:	e2833004 	add	r3, r3, #4
     dec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     df0:	ea000039 	b	edc <printf+0x1f0>
     df4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df8:	e3530073 	cmp	r3, #115	@ 0x73
     dfc:	1a000018 	bne	e64 <printf+0x178>
     e00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e04:	e5933000 	ldr	r3, [r3]
     e08:	e50b300c 	str	r3, [fp, #-12]
     e0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e10:	e2833004 	add	r3, r3, #4
     e14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e3530000 	cmp	r3, #0
     e20:	1a00000a 	bne	e50 <printf+0x164>
     e24:	e59f30f4 	ldr	r3, [pc, #244]	@ f20 <printf+0x234>
     e28:	e50b300c 	str	r3, [fp, #-12]
     e2c:	ea000007 	b	e50 <printf+0x164>
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5d33000 	ldrb	r3, [r3]
     e38:	e1a01003 	mov	r1, r3
     e3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e40:	ebffff4d 	bl	b7c <putc>
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e2833001 	add	r3, r3, #1
     e4c:	e50b300c 	str	r3, [fp, #-12]
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5d33000 	ldrb	r3, [r3]
     e58:	e3530000 	cmp	r3, #0
     e5c:	1afffff3 	bne	e30 <printf+0x144>
     e60:	ea00001d 	b	edc <printf+0x1f0>
     e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e68:	e3530063 	cmp	r3, #99	@ 0x63
     e6c:	1a000009 	bne	e98 <printf+0x1ac>
     e70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e6ef3073 	uxtb	r3, r3
     e7c:	e1a01003 	mov	r1, r3
     e80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e84:	ebffff3c 	bl	b7c <putc>
     e88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	e2833004 	add	r3, r3, #4
     e90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e94:	ea000010 	b	edc <printf+0x1f0>
     e98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e9c:	e3530025 	cmp	r3, #37	@ 0x25
     ea0:	1a000005 	bne	ebc <printf+0x1d0>
     ea4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea8:	e6ef3073 	uxtb	r3, r3
     eac:	e1a01003 	mov	r1, r3
     eb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb4:	ebffff30 	bl	b7c <putc>
     eb8:	ea000007 	b	edc <printf+0x1f0>
     ebc:	e3a01025 	mov	r1, #37	@ 0x25
     ec0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec4:	ebffff2c 	bl	b7c <putc>
     ec8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ecc:	e6ef3073 	uxtb	r3, r3
     ed0:	e1a01003 	mov	r1, r3
     ed4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ed8:	ebffff27 	bl	b7c <putc>
     edc:	e3a03000 	mov	r3, #0
     ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e2833001 	add	r3, r3, #1
     eec:	e50b3010 	str	r3, [fp, #-16]
     ef0:	e59b2004 	ldr	r2, [fp, #4]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e0823003 	add	r3, r2, r3
     efc:	e5d33000 	ldrb	r3, [r3]
     f00:	e3530000 	cmp	r3, #0
     f04:	1affff84 	bne	d1c <printf+0x30>
     f08:	e1a00000 	nop			@ (mov r0, r0)
     f0c:	e1a00000 	nop			@ (mov r0, r0)
     f10:	e24bd004 	sub	sp, fp, #4
     f14:	e8bd4800 	pop	{fp, lr}
     f18:	e28dd00c 	add	sp, sp, #12
     f1c:	e12fff1e 	bx	lr
     f20:	000013e8 	.word	0x000013e8

00000f24 <free>:
     f24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f28:	e28db000 	add	fp, sp, #0
     f2c:	e24dd014 	sub	sp, sp, #20
     f30:	e50b0010 	str	r0, [fp, #-16]
     f34:	e51b3010 	ldr	r3, [fp, #-16]
     f38:	e2433008 	sub	r3, r3, #8
     f3c:	e50b300c 	str	r3, [fp, #-12]
     f40:	e59f3154 	ldr	r3, [pc, #340]	@ 109c <free+0x178>
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b3008 	str	r3, [fp, #-8]
     f4c:	ea000010 	b	f94 <free+0x70>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e51b2008 	ldr	r2, [fp, #-8]
     f5c:	e1520003 	cmp	r2, r3
     f60:	3a000008 	bcc	f88 <free+0x64>
     f64:	e51b200c 	ldr	r2, [fp, #-12]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e1520003 	cmp	r2, r3
     f70:	8a000010 	bhi	fb8 <free+0x94>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e51b200c 	ldr	r2, [fp, #-12]
     f80:	e1520003 	cmp	r2, r3
     f84:	3a00000b 	bcc	fb8 <free+0x94>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b200c 	ldr	r2, [fp, #-12]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	9affffea 	bls	f50 <free+0x2c>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e51b200c 	ldr	r2, [fp, #-12]
     fb0:	e1520003 	cmp	r2, r3
     fb4:	2affffe5 	bcs	f50 <free+0x2c>
     fb8:	e51b300c 	ldr	r3, [fp, #-12]
     fbc:	e5933004 	ldr	r3, [r3, #4]
     fc0:	e1a03183 	lsl	r3, r3, #3
     fc4:	e51b200c 	ldr	r2, [fp, #-12]
     fc8:	e0822003 	add	r2, r2, r3
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e1520003 	cmp	r2, r3
     fd8:	1a00000d 	bne	1014 <free+0xf0>
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e5932004 	ldr	r2, [r3, #4]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e5933004 	ldr	r3, [r3, #4]
     ff0:	e0822003 	add	r2, r2, r3
     ff4:	e51b300c 	ldr	r3, [fp, #-12]
     ff8:	e5832004 	str	r2, [r3, #4]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e5932000 	ldr	r2, [r3]
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5832000 	str	r2, [r3]
    1010:	ea000003 	b	1024 <free+0x100>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5932000 	ldr	r2, [r3]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5832000 	str	r2, [r3]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933004 	ldr	r3, [r3, #4]
    102c:	e1a03183 	lsl	r3, r3, #3
    1030:	e51b2008 	ldr	r2, [fp, #-8]
    1034:	e0823003 	add	r3, r2, r3
    1038:	e51b200c 	ldr	r2, [fp, #-12]
    103c:	e1520003 	cmp	r2, r3
    1040:	1a00000b 	bne	1074 <free+0x150>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5932004 	ldr	r2, [r3, #4]
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e0822003 	add	r2, r2, r3
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5832004 	str	r2, [r3, #4]
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e5932000 	ldr	r2, [r3]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5832000 	str	r2, [r3]
    1070:	ea000002 	b	1080 <free+0x15c>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e51b200c 	ldr	r2, [fp, #-12]
    107c:	e5832000 	str	r2, [r3]
    1080:	e59f2014 	ldr	r2, [pc, #20]	@ 109c <free+0x178>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5823000 	str	r3, [r2]
    108c:	e1a00000 	nop			@ (mov r0, r0)
    1090:	e28bd000 	add	sp, fp, #0
    1094:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1098:	e12fff1e 	bx	lr
    109c:	0000140c 	.word	0x0000140c

000010a0 <morecore>:
    10a0:	e92d4800 	push	{fp, lr}
    10a4:	e28db004 	add	fp, sp, #4
    10a8:	e24dd010 	sub	sp, sp, #16
    10ac:	e50b0010 	str	r0, [fp, #-16]
    10b0:	e51b3010 	ldr	r3, [fp, #-16]
    10b4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10b8:	2a000001 	bcs	10c4 <morecore+0x24>
    10bc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10c0:	e50b3010 	str	r3, [fp, #-16]
    10c4:	e51b3010 	ldr	r3, [fp, #-16]
    10c8:	e1a03183 	lsl	r3, r3, #3
    10cc:	e1a00003 	mov	r0, r3
    10d0:	ebfffe5f 	bl	a54 <sbrk>
    10d4:	e50b0008 	str	r0, [fp, #-8]
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e3730001 	cmn	r3, #1
    10e0:	1a000001 	bne	10ec <morecore+0x4c>
    10e4:	e3a03000 	mov	r3, #0
    10e8:	ea00000a 	b	1118 <morecore+0x78>
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e51b2010 	ldr	r2, [fp, #-16]
    10fc:	e5832004 	str	r2, [r3, #4]
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e2833008 	add	r3, r3, #8
    1108:	e1a00003 	mov	r0, r3
    110c:	ebffff84 	bl	f24 <free>
    1110:	e59f300c 	ldr	r3, [pc, #12]	@ 1124 <morecore+0x84>
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e1a00003 	mov	r0, r3
    111c:	e24bd004 	sub	sp, fp, #4
    1120:	e8bd8800 	pop	{fp, pc}
    1124:	0000140c 	.word	0x0000140c

00001128 <malloc>:
    1128:	e92d4800 	push	{fp, lr}
    112c:	e28db004 	add	fp, sp, #4
    1130:	e24dd018 	sub	sp, sp, #24
    1134:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e2833007 	add	r3, r3, #7
    1140:	e1a031a3 	lsr	r3, r3, #3
    1144:	e2833001 	add	r3, r3, #1
    1148:	e50b3010 	str	r3, [fp, #-16]
    114c:	e59f3134 	ldr	r3, [pc, #308]	@ 1288 <malloc+0x160>
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e50b300c 	str	r3, [fp, #-12]
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e3530000 	cmp	r3, #0
    1160:	1a00000b 	bne	1194 <malloc+0x6c>
    1164:	e59f3120 	ldr	r3, [pc, #288]	@ 128c <malloc+0x164>
    1168:	e50b300c 	str	r3, [fp, #-12]
    116c:	e59f2114 	ldr	r2, [pc, #276]	@ 1288 <malloc+0x160>
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e5823000 	str	r3, [r2]
    1178:	e59f3108 	ldr	r3, [pc, #264]	@ 1288 <malloc+0x160>
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e59f2104 	ldr	r2, [pc, #260]	@ 128c <malloc+0x164>
    1184:	e5823000 	str	r3, [r2]
    1188:	e59f30fc 	ldr	r3, [pc, #252]	@ 128c <malloc+0x164>
    118c:	e3a02000 	mov	r2, #0
    1190:	e5832004 	str	r2, [r3, #4]
    1194:	e51b300c 	ldr	r3, [fp, #-12]
    1198:	e5933000 	ldr	r3, [r3]
    119c:	e50b3008 	str	r3, [fp, #-8]
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933004 	ldr	r3, [r3, #4]
    11a8:	e51b2010 	ldr	r2, [fp, #-16]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	8a00001e 	bhi	1230 <malloc+0x108>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933004 	ldr	r3, [r3, #4]
    11bc:	e51b2010 	ldr	r2, [fp, #-16]
    11c0:	e1520003 	cmp	r2, r3
    11c4:	1a000004 	bne	11dc <malloc+0xb4>
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5932000 	ldr	r2, [r3]
    11d0:	e51b300c 	ldr	r3, [fp, #-12]
    11d4:	e5832000 	str	r2, [r3]
    11d8:	ea00000e 	b	1218 <malloc+0xf0>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5932004 	ldr	r2, [r3, #4]
    11e4:	e51b3010 	ldr	r3, [fp, #-16]
    11e8:	e0422003 	sub	r2, r2, r3
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e5832004 	str	r2, [r3, #4]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933004 	ldr	r3, [r3, #4]
    11fc:	e1a03183 	lsl	r3, r3, #3
    1200:	e51b2008 	ldr	r2, [fp, #-8]
    1204:	e0823003 	add	r3, r2, r3
    1208:	e50b3008 	str	r3, [fp, #-8]
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e51b2010 	ldr	r2, [fp, #-16]
    1214:	e5832004 	str	r2, [r3, #4]
    1218:	e59f2068 	ldr	r2, [pc, #104]	@ 1288 <malloc+0x160>
    121c:	e51b300c 	ldr	r3, [fp, #-12]
    1220:	e5823000 	str	r3, [r2]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e2833008 	add	r3, r3, #8
    122c:	ea000012 	b	127c <malloc+0x154>
    1230:	e59f3050 	ldr	r3, [pc, #80]	@ 1288 <malloc+0x160>
    1234:	e5933000 	ldr	r3, [r3]
    1238:	e51b2008 	ldr	r2, [fp, #-8]
    123c:	e1520003 	cmp	r2, r3
    1240:	1a000007 	bne	1264 <malloc+0x13c>
    1244:	e51b0010 	ldr	r0, [fp, #-16]
    1248:	ebffff94 	bl	10a0 <morecore>
    124c:	e50b0008 	str	r0, [fp, #-8]
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e3530000 	cmp	r3, #0
    1258:	1a000001 	bne	1264 <malloc+0x13c>
    125c:	e3a03000 	mov	r3, #0
    1260:	ea000005 	b	127c <malloc+0x154>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e50b300c 	str	r3, [fp, #-12]
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e50b3008 	str	r3, [fp, #-8]
    1278:	eaffffc8 	b	11a0 <malloc+0x78>
    127c:	e1a00003 	mov	r0, r3
    1280:	e24bd004 	sub	sp, fp, #4
    1284:	e8bd8800 	pop	{fp, pc}
    1288:	0000140c 	.word	0x0000140c
    128c:	00001404 	.word	0x00001404

00001290 <__udivsi3>:
    1290:	e2512001 	subs	r2, r1, #1
    1294:	012fff1e 	bxeq	lr
    1298:	3a000036 	bcc	1378 <__udivsi3+0xe8>
    129c:	e1500001 	cmp	r0, r1
    12a0:	9a000022 	bls	1330 <__udivsi3+0xa0>
    12a4:	e1110002 	tst	r1, r2
    12a8:	0a000023 	beq	133c <__udivsi3+0xac>
    12ac:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12b0:	01a01181 	lsleq	r1, r1, #3
    12b4:	03a03008 	moveq	r3, #8
    12b8:	13a03001 	movne	r3, #1
    12bc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12c0:	31510000 	cmpcc	r1, r0
    12c4:	31a01201 	lslcc	r1, r1, #4
    12c8:	31a03203 	lslcc	r3, r3, #4
    12cc:	3afffffa 	bcc	12bc <__udivsi3+0x2c>
    12d0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12d4:	31510000 	cmpcc	r1, r0
    12d8:	31a01081 	lslcc	r1, r1, #1
    12dc:	31a03083 	lslcc	r3, r3, #1
    12e0:	3afffffa 	bcc	12d0 <__udivsi3+0x40>
    12e4:	e3a02000 	mov	r2, #0
    12e8:	e1500001 	cmp	r0, r1
    12ec:	20400001 	subcs	r0, r0, r1
    12f0:	21822003 	orrcs	r2, r2, r3
    12f4:	e15000a1 	cmp	r0, r1, lsr #1
    12f8:	204000a1 	subcs	r0, r0, r1, lsr #1
    12fc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1300:	e1500121 	cmp	r0, r1, lsr #2
    1304:	20400121 	subcs	r0, r0, r1, lsr #2
    1308:	21822123 	orrcs	r2, r2, r3, lsr #2
    130c:	e15001a1 	cmp	r0, r1, lsr #3
    1310:	204001a1 	subcs	r0, r0, r1, lsr #3
    1314:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1318:	e3500000 	cmp	r0, #0
    131c:	11b03223 	lsrsne	r3, r3, #4
    1320:	11a01221 	lsrne	r1, r1, #4
    1324:	1affffef 	bne	12e8 <__udivsi3+0x58>
    1328:	e1a00002 	mov	r0, r2
    132c:	e12fff1e 	bx	lr
    1330:	03a00001 	moveq	r0, #1
    1334:	13a00000 	movne	r0, #0
    1338:	e12fff1e 	bx	lr
    133c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1340:	21a01821 	lsrcs	r1, r1, #16
    1344:	23a02010 	movcs	r2, #16
    1348:	33a02000 	movcc	r2, #0
    134c:	e3510c01 	cmp	r1, #256	@ 0x100
    1350:	21a01421 	lsrcs	r1, r1, #8
    1354:	22822008 	addcs	r2, r2, #8
    1358:	e3510010 	cmp	r1, #16
    135c:	21a01221 	lsrcs	r1, r1, #4
    1360:	22822004 	addcs	r2, r2, #4
    1364:	e3510004 	cmp	r1, #4
    1368:	82822003 	addhi	r2, r2, #3
    136c:	908220a1 	addls	r2, r2, r1, lsr #1
    1370:	e1a00230 	lsr	r0, r0, r2
    1374:	e12fff1e 	bx	lr
    1378:	e3500000 	cmp	r0, #0
    137c:	13e00000 	mvnne	r0, #0
    1380:	ea000007 	b	13a4 <__aeabi_idiv0>

00001384 <__aeabi_uidivmod>:
    1384:	e3510000 	cmp	r1, #0
    1388:	0afffffa 	beq	1378 <__udivsi3+0xe8>
    138c:	e92d4003 	push	{r0, r1, lr}
    1390:	ebffffbe 	bl	1290 <__udivsi3>
    1394:	e8bd4006 	pop	{r1, r2, lr}
    1398:	e0030092 	mul	r3, r2, r0
    139c:	e0411003 	sub	r1, r1, r3
    13a0:	e12fff1e 	bx	lr

000013a4 <__aeabi_idiv0>:
    13a4:	e12fff1e 	bx	lr
