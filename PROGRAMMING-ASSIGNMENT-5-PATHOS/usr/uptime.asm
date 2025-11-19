
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd020 	sub	sp, sp, #32
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	eb000378 	bl	dfc <uptime>
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
      94:	eb00044f 	bl	11d8 <printf>
      98:	ea000006 	b	b8 <main+0xb8>
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e58d3000 	str	r3, [sp]
      a4:	e51b300c 	ldr	r3, [fp, #-12]
      a8:	e51b2008 	ldr	r2, [fp, #-8]
      ac:	e59f1010 	ldr	r1, [pc, #16]	@ c4 <main+0xc4>
      b0:	e3a00001 	mov	r0, #1
      b4:	eb000447 	bl	11d8 <printf>
      b8:	eb0002a4 	bl	b50 <exit>
      bc:	51eb851f 	.word	0x51eb851f
      c0:	00001894 	.word	0x00001894
      c4:	000018b4 	.word	0x000018b4

000000c8 <pg_pte>:
      c8:	e92d4800 	push	{fp, lr}
      cc:	e28db004 	add	fp, sp, #4
      d0:	e24dd008 	sub	sp, sp, #8
      d4:	e50b0008 	str	r0, [fp, #-8]
      d8:	e51b1008 	ldr	r1, [fp, #-8]
      dc:	e3a0001a 	mov	r0, #26
      e0:	eb0003de 	bl	1060 <syscall>
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
     108:	e3a0001b 	mov	r0, #27
     10c:	eb0003d3 	bl	1060 <syscall>
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
     134:	e3a0001c 	mov	r0, #28
     138:	eb0003c8 	bl	1060 <syscall>
     13c:	e1a03000 	mov	r3, r0
     140:	e1a00003 	mov	r0, r3
     144:	e24bd004 	sub	sp, fp, #4
     148:	e8bd8800 	pop	{fp, pc}

0000014c <kpt>:
     14c:	e92d4800 	push	{fp, lr}
     150:	e28db004 	add	fp, sp, #4
     154:	e3a0001d 	mov	r0, #29
     158:	eb0003c0 	bl	1060 <syscall>
     15c:	e1a03000 	mov	r3, r0
     160:	e1a00003 	mov	r0, r3
     164:	e8bd8800 	pop	{fp, pc}

00000168 <ugetpid>:
     168:	e92d4800 	push	{fp, lr}
     16c:	e28db004 	add	fp, sp, #4
     170:	e3a0001e 	mov	r0, #30
     174:	eb0003b9 	bl	1060 <syscall>
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
     478:	eb0001cf 	bl	bbc <read>
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
     520:	eb0001d2 	bl	c70 <open>
     524:	e50b0008 	str	r0, [fp, #-8]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e3530000 	cmp	r3, #0
     530:	aa000001 	bge	53c <stat+0x38>
     534:	e3e03000 	mvn	r3, #0
     538:	ea000006 	b	558 <stat+0x54>
     53c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     540:	e51b0008 	ldr	r0, [fp, #-8]
     544:	eb0001e4 	bl	cdc <fstat>
     548:	e50b000c 	str	r0, [fp, #-12]
     54c:	e51b0008 	ldr	r0, [fp, #-8]
     550:	eb0001ab 	bl	c04 <close>
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

000007cc <xchg>:
     7cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d0:	e28db000 	add	fp, sp, #0
     7d4:	e24dd014 	sub	sp, sp, #20
     7d8:	e50b0010 	str	r0, [fp, #-16]
     7dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7e0:	e51b2010 	ldr	r2, [fp, #-16]
     7e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7e8:	e1023091 	swp	r3, r1, [r2]
     7ec:	e50b3008 	str	r3, [fp, #-8]
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e1a00003 	mov	r0, r3
     7f8:	e28bd000 	add	sp, fp, #0
     7fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <initiateLock>:
     804:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     808:	e28db000 	add	fp, sp, #0
     80c:	e24dd00c 	sub	sp, sp, #12
     810:	e50b0008 	str	r0, [fp, #-8]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e3a02000 	mov	r2, #0
     81c:	e5832000 	str	r2, [r3]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e3a02001 	mov	r2, #1
     828:	e5832004 	str	r2, [r3, #4]
     82c:	e1a00000 	nop			@ (mov r0, r0)
     830:	e28bd000 	add	sp, fp, #0
     834:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <acquireLock>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933004 	ldr	r3, [r3, #4]
     854:	e3530000 	cmp	r3, #0
     858:	0a000008 	beq	880 <acquireLock+0x44>
     85c:	e1a00000 	nop			@ (mov r0, r0)
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e3a01001 	mov	r1, #1
     868:	e1a00003 	mov	r0, r3
     86c:	ebffffd6 	bl	7cc <xchg>
     870:	e1a03000 	mov	r3, r0
     874:	e3530000 	cmp	r3, #0
     878:	1afffff8 	bne	860 <acquireLock+0x24>
     87c:	ea000000 	b	884 <acquireLock+0x48>
     880:	e1a00000 	nop			@ (mov r0, r0)
     884:	e24bd004 	sub	sp, fp, #4
     888:	e8bd8800 	pop	{fp, pc}

0000088c <releaseLock>:
     88c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     890:	e28db000 	add	fp, sp, #0
     894:	e24dd00c 	sub	sp, sp, #12
     898:	e50b0008 	str	r0, [fp, #-8]
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e5933004 	ldr	r3, [r3, #4]
     8a4:	e3530000 	cmp	r3, #0
     8a8:	0a000006 	beq	8c8 <releaseLock+0x3c>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e5933000 	ldr	r3, [r3]
     8b4:	e3530001 	cmp	r3, #1
     8b8:	1a000002 	bne	8c8 <releaseLock+0x3c>
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e3a02000 	mov	r2, #0
     8c4:	e5832000 	str	r2, [r3]
     8c8:	e1a00000 	nop			@ (mov r0, r0)
     8cc:	e28bd000 	add	sp, fp, #0
     8d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <initiateCondVar>:
     8d8:	e92d4800 	push	{fp, lr}
     8dc:	e28db004 	add	fp, sp, #4
     8e0:	e24dd008 	sub	sp, sp, #8
     8e4:	e50b0008 	str	r0, [fp, #-8]
     8e8:	eb0001b8 	bl	fd0 <getChannel>
     8ec:	e1a02000 	mov	r2, r0
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e5832000 	str	r2, [r3]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e3a02001 	mov	r2, #1
     900:	e5832004 	str	r2, [r3, #4]
     904:	e1a00000 	nop			@ (mov r0, r0)
     908:	e24bd004 	sub	sp, fp, #4
     90c:	e8bd8800 	pop	{fp, pc}

00000910 <condWait>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd008 	sub	sp, sp, #8
     91c:	e50b0008 	str	r0, [fp, #-8]
     920:	e50b100c 	str	r1, [fp, #-12]
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e5933004 	ldr	r3, [r3, #4]
     92c:	e3530000 	cmp	r3, #0
     930:	0a00000c 	beq	968 <condWait+0x58>
     934:	e51b300c 	ldr	r3, [fp, #-12]
     938:	e5933004 	ldr	r3, [r3, #4]
     93c:	e3530000 	cmp	r3, #0
     940:	0a000008 	beq	968 <condWait+0x58>
     944:	e51b000c 	ldr	r0, [fp, #-12]
     948:	ebffffcf 	bl	88c <releaseLock>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5933000 	ldr	r3, [r3]
     954:	e1a00003 	mov	r0, r3
     958:	eb000193 	bl	fac <sleepChan>
     95c:	e51b000c 	ldr	r0, [fp, #-12]
     960:	ebffffb5 	bl	83c <acquireLock>
     964:	ea000000 	b	96c <condWait+0x5c>
     968:	e1a00000 	nop			@ (mov r0, r0)
     96c:	e24bd004 	sub	sp, fp, #4
     970:	e8bd8800 	pop	{fp, pc}

00000974 <broadcast>:
     974:	e92d4800 	push	{fp, lr}
     978:	e28db004 	add	fp, sp, #4
     97c:	e24dd008 	sub	sp, sp, #8
     980:	e50b0008 	str	r0, [fp, #-8]
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e5933004 	ldr	r3, [r3, #4]
     98c:	e3530000 	cmp	r3, #0
     990:	0a000004 	beq	9a8 <broadcast+0x34>
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e5933000 	ldr	r3, [r3]
     99c:	e1a00003 	mov	r0, r3
     9a0:	eb000193 	bl	ff4 <sigChan>
     9a4:	ea000000 	b	9ac <broadcast+0x38>
     9a8:	e1a00000 	nop			@ (mov r0, r0)
     9ac:	e24bd004 	sub	sp, fp, #4
     9b0:	e8bd8800 	pop	{fp, pc}

000009b4 <signal>:
     9b4:	e92d4800 	push	{fp, lr}
     9b8:	e28db004 	add	fp, sp, #4
     9bc:	e24dd008 	sub	sp, sp, #8
     9c0:	e50b0008 	str	r0, [fp, #-8]
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e5933004 	ldr	r3, [r3, #4]
     9cc:	e3530000 	cmp	r3, #0
     9d0:	0a000004 	beq	9e8 <signal+0x34>
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e5933000 	ldr	r3, [r3]
     9dc:	e1a00003 	mov	r0, r3
     9e0:	eb00018c 	bl	1018 <sigOneChan>
     9e4:	ea000000 	b	9ec <signal+0x38>
     9e8:	e1a00000 	nop			@ (mov r0, r0)
     9ec:	e24bd004 	sub	sp, fp, #4
     9f0:	e8bd8800 	pop	{fp, pc}

000009f4 <semInit>:
     9f4:	e92d4800 	push	{fp, lr}
     9f8:	e28db004 	add	fp, sp, #4
     9fc:	e24dd008 	sub	sp, sp, #8
     a00:	e50b0008 	str	r0, [fp, #-8]
     a04:	e50b100c 	str	r1, [fp, #-12]
     a08:	e51b3008 	ldr	r3, [fp, #-8]
     a0c:	e2833004 	add	r3, r3, #4
     a10:	e1a00003 	mov	r0, r3
     a14:	ebffff7a 	bl	804 <initiateLock>
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e283300c 	add	r3, r3, #12
     a20:	e1a00003 	mov	r0, r3
     a24:	ebffffab 	bl	8d8 <initiateCondVar>
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e51b200c 	ldr	r2, [fp, #-12]
     a30:	e5832000 	str	r2, [r3]
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e3a02001 	mov	r2, #1
     a3c:	e5832014 	str	r2, [r3, #20]
     a40:	e1a00000 	nop			@ (mov r0, r0)
     a44:	e24bd004 	sub	sp, fp, #4
     a48:	e8bd8800 	pop	{fp, pc}

00000a4c <semUp>:
     a4c:	e92d4800 	push	{fp, lr}
     a50:	e28db004 	add	fp, sp, #4
     a54:	e24dd008 	sub	sp, sp, #8
     a58:	e50b0008 	str	r0, [fp, #-8]
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e2833004 	add	r3, r3, #4
     a64:	e1a00003 	mov	r0, r3
     a68:	ebffff73 	bl	83c <acquireLock>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e5933000 	ldr	r3, [r3]
     a74:	e2832001 	add	r2, r3, #1
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e5832000 	str	r2, [r3]
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e283300c 	add	r3, r3, #12
     a88:	e1a00003 	mov	r0, r3
     a8c:	ebffffc8 	bl	9b4 <signal>
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e2833004 	add	r3, r3, #4
     a98:	e1a00003 	mov	r0, r3
     a9c:	ebffff7a 	bl	88c <releaseLock>
     aa0:	e1a00000 	nop			@ (mov r0, r0)
     aa4:	e24bd004 	sub	sp, fp, #4
     aa8:	e8bd8800 	pop	{fp, pc}

00000aac <semDown>:
     aac:	e92d4800 	push	{fp, lr}
     ab0:	e28db004 	add	fp, sp, #4
     ab4:	e24dd008 	sub	sp, sp, #8
     ab8:	e50b0008 	str	r0, [fp, #-8]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2833004 	add	r3, r3, #4
     ac4:	e1a00003 	mov	r0, r3
     ac8:	ebffff5b 	bl	83c <acquireLock>
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e5933000 	ldr	r3, [r3]
     ad4:	e2432001 	sub	r2, r3, #1
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e5832000 	str	r2, [r3]
     ae0:	ea000006 	b	b00 <semDown+0x54>
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e283200c 	add	r2, r3, #12
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2833004 	add	r3, r3, #4
     af4:	e1a01003 	mov	r1, r3
     af8:	e1a00002 	mov	r0, r2
     afc:	ebffff83 	bl	910 <condWait>
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e5933000 	ldr	r3, [r3]
     b08:	e3530000 	cmp	r3, #0
     b0c:	bafffff4 	blt	ae4 <semDown+0x38>
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2833004 	add	r3, r3, #4
     b18:	e1a00003 	mov	r0, r3
     b1c:	ebffff5a 	bl	88c <releaseLock>
     b20:	e1a00000 	nop			@ (mov r0, r0)
     b24:	e24bd004 	sub	sp, fp, #4
     b28:	e8bd8800 	pop	{fp, pc}

00000b2c <fork>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00001 	mov	r0, #1
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <exit>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00002 	mov	r0, #2
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <wait>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00003 	mov	r0, #3
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <pipe>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00004 	mov	r0, #4
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <read>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00005 	mov	r0, #5
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <write>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00010 	mov	r0, #16
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <close>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00015 	mov	r0, #21
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <kill>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00006 	mov	r0, #6
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <exec>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00007 	mov	r0, #7
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <open>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a0000f 	mov	r0, #15
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <mknod>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00011 	mov	r0, #17
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <unlink>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00012 	mov	r0, #18
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <fstat>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00008 	mov	r0, #8
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <link>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00013 	mov	r0, #19
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <mkdir>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00014 	mov	r0, #20
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <chdir>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00009 	mov	r0, #9
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <dup>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0000a 	mov	r0, #10
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <getpid>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0000b 	mov	r0, #11
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <sbrk>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a0000c 	mov	r0, #12
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <sleep>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0000d 	mov	r0, #13
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <uptime>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a0000e 	mov	r0, #14
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <proclist>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00016 	mov	r0, #22
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <settickets>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00017 	mov	r0, #23
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <srand>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00018 	mov	r0, #24
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <getpinfo>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a00019 	mov	r0, #25
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <print_pt>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a0001f 	mov	r0, #31
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <thread_create>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a00020 	mov	r0, #32
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <thread_exit>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a00021 	mov	r0, #33	@ 0x21
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <thread_join>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a00022 	mov	r0, #34	@ 0x22
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <waitpid>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00023 	mov	r0, #35	@ 0x23
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <barrier_init>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a00024 	mov	r0, #36	@ 0x24
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <barrier_check>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00025 	mov	r0, #37	@ 0x25
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <sleepChan>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00026 	mov	r0, #38	@ 0x26
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <getChannel>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00027 	mov	r0, #39	@ 0x27
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <sigChan>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00028 	mov	r0, #40	@ 0x28
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <sigOneChan>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a00029 	mov	r0, #41	@ 0x29
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <symlink>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a0002a 	mov	r0, #42	@ 0x2a
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <syscall>:
    1060:	ef000000 	svc	0x00000000
    1064:	e12fff1e 	bx	lr

00001068 <putc>:
    1068:	e92d4800 	push	{fp, lr}
    106c:	e28db004 	add	fp, sp, #4
    1070:	e24dd008 	sub	sp, sp, #8
    1074:	e50b0008 	str	r0, [fp, #-8]
    1078:	e1a03001 	mov	r3, r1
    107c:	e54b3009 	strb	r3, [fp, #-9]
    1080:	e24b3009 	sub	r3, fp, #9
    1084:	e3a02001 	mov	r2, #1
    1088:	e1a01003 	mov	r1, r3
    108c:	e51b0008 	ldr	r0, [fp, #-8]
    1090:	ebfffed2 	bl	be0 <write>
    1094:	e1a00000 	nop			@ (mov r0, r0)
    1098:	e24bd004 	sub	sp, fp, #4
    109c:	e8bd8800 	pop	{fp, pc}

000010a0 <printint>:
    10a0:	e92d4800 	push	{fp, lr}
    10a4:	e28db004 	add	fp, sp, #4
    10a8:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10ac:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10b0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10b4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10b8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10bc:	e3a03000 	mov	r3, #0
    10c0:	e50b300c 	str	r3, [fp, #-12]
    10c4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10c8:	e3530000 	cmp	r3, #0
    10cc:	0a000008 	beq	10f4 <printint+0x54>
    10d0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10d4:	e3530000 	cmp	r3, #0
    10d8:	aa000005 	bge	10f4 <printint+0x54>
    10dc:	e3a03001 	mov	r3, #1
    10e0:	e50b300c 	str	r3, [fp, #-12]
    10e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10e8:	e2633000 	rsb	r3, r3, #0
    10ec:	e50b3010 	str	r3, [fp, #-16]
    10f0:	ea000001 	b	10fc <printint+0x5c>
    10f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10f8:	e50b3010 	str	r3, [fp, #-16]
    10fc:	e3a03000 	mov	r3, #0
    1100:	e50b3008 	str	r3, [fp, #-8]
    1104:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1108:	e51b3010 	ldr	r3, [fp, #-16]
    110c:	e1a01002 	mov	r1, r2
    1110:	e1a00003 	mov	r0, r3
    1114:	eb0001d5 	bl	1870 <__aeabi_uidivmod>
    1118:	e1a03001 	mov	r3, r1
    111c:	e1a01003 	mov	r1, r3
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e2832001 	add	r2, r3, #1
    1128:	e50b2008 	str	r2, [fp, #-8]
    112c:	e59f20a0 	ldr	r2, [pc, #160]	@ 11d4 <printint+0x134>
    1130:	e7d22001 	ldrb	r2, [r2, r1]
    1134:	e2433004 	sub	r3, r3, #4
    1138:	e083300b 	add	r3, r3, fp
    113c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1140:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1144:	e1a01003 	mov	r1, r3
    1148:	e51b0010 	ldr	r0, [fp, #-16]
    114c:	eb00018a 	bl	177c <__udivsi3>
    1150:	e1a03000 	mov	r3, r0
    1154:	e50b3010 	str	r3, [fp, #-16]
    1158:	e51b3010 	ldr	r3, [fp, #-16]
    115c:	e3530000 	cmp	r3, #0
    1160:	1affffe7 	bne	1104 <printint+0x64>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e3530000 	cmp	r3, #0
    116c:	0a00000e 	beq	11ac <printint+0x10c>
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e2832001 	add	r2, r3, #1
    1178:	e50b2008 	str	r2, [fp, #-8]
    117c:	e2433004 	sub	r3, r3, #4
    1180:	e083300b 	add	r3, r3, fp
    1184:	e3a0202d 	mov	r2, #45	@ 0x2d
    1188:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    118c:	ea000006 	b	11ac <printint+0x10c>
    1190:	e24b2020 	sub	r2, fp, #32
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e0823003 	add	r3, r2, r3
    119c:	e5d33000 	ldrb	r3, [r3]
    11a0:	e1a01003 	mov	r1, r3
    11a4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11a8:	ebffffae 	bl	1068 <putc>
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e2433001 	sub	r3, r3, #1
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e3530000 	cmp	r3, #0
    11c0:	aafffff2 	bge	1190 <printint+0xf0>
    11c4:	e1a00000 	nop			@ (mov r0, r0)
    11c8:	e1a00000 	nop			@ (mov r0, r0)
    11cc:	e24bd004 	sub	sp, fp, #4
    11d0:	e8bd8800 	pop	{fp, pc}
    11d4:	000018dc 	.word	0x000018dc

000011d8 <printf>:
    11d8:	e92d000e 	push	{r1, r2, r3}
    11dc:	e92d4800 	push	{fp, lr}
    11e0:	e28db004 	add	fp, sp, #4
    11e4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11e8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11ec:	e3a03000 	mov	r3, #0
    11f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f4:	e28b3008 	add	r3, fp, #8
    11f8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11fc:	e3a03000 	mov	r3, #0
    1200:	e50b3010 	str	r3, [fp, #-16]
    1204:	ea000074 	b	13dc <printf+0x204>
    1208:	e59b2004 	ldr	r2, [fp, #4]
    120c:	e51b3010 	ldr	r3, [fp, #-16]
    1210:	e0823003 	add	r3, r2, r3
    1214:	e5d33000 	ldrb	r3, [r3]
    1218:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    121c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1220:	e3530000 	cmp	r3, #0
    1224:	1a00000b 	bne	1258 <printf+0x80>
    1228:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    122c:	e3530025 	cmp	r3, #37	@ 0x25
    1230:	1a000002 	bne	1240 <printf+0x68>
    1234:	e3a03025 	mov	r3, #37	@ 0x25
    1238:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    123c:	ea000063 	b	13d0 <printf+0x1f8>
    1240:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1244:	e6ef3073 	uxtb	r3, r3
    1248:	e1a01003 	mov	r1, r3
    124c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1250:	ebffff84 	bl	1068 <putc>
    1254:	ea00005d 	b	13d0 <printf+0x1f8>
    1258:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    125c:	e3530025 	cmp	r3, #37	@ 0x25
    1260:	1a00005a 	bne	13d0 <printf+0x1f8>
    1264:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1268:	e3530064 	cmp	r3, #100	@ 0x64
    126c:	1a00000a 	bne	129c <printf+0xc4>
    1270:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e1a01003 	mov	r1, r3
    127c:	e3a03001 	mov	r3, #1
    1280:	e3a0200a 	mov	r2, #10
    1284:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1288:	ebffff84 	bl	10a0 <printint>
    128c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1290:	e2833004 	add	r3, r3, #4
    1294:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1298:	ea00004a 	b	13c8 <printf+0x1f0>
    129c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a0:	e3530078 	cmp	r3, #120	@ 0x78
    12a4:	0a000002 	beq	12b4 <printf+0xdc>
    12a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12ac:	e3530070 	cmp	r3, #112	@ 0x70
    12b0:	1a00000a 	bne	12e0 <printf+0x108>
    12b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e1a01003 	mov	r1, r3
    12c0:	e3a03000 	mov	r3, #0
    12c4:	e3a02010 	mov	r2, #16
    12c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12cc:	ebffff73 	bl	10a0 <printint>
    12d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d4:	e2833004 	add	r3, r3, #4
    12d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12dc:	ea000039 	b	13c8 <printf+0x1f0>
    12e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e4:	e3530073 	cmp	r3, #115	@ 0x73
    12e8:	1a000018 	bne	1350 <printf+0x178>
    12ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e50b300c 	str	r3, [fp, #-12]
    12f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e2833004 	add	r3, r3, #4
    1300:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e3530000 	cmp	r3, #0
    130c:	1a00000a 	bne	133c <printf+0x164>
    1310:	e59f30f4 	ldr	r3, [pc, #244]	@ 140c <printf+0x234>
    1314:	e50b300c 	str	r3, [fp, #-12]
    1318:	ea000007 	b	133c <printf+0x164>
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5d33000 	ldrb	r3, [r3]
    1324:	e1a01003 	mov	r1, r3
    1328:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    132c:	ebffff4d 	bl	1068 <putc>
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e2833001 	add	r3, r3, #1
    1338:	e50b300c 	str	r3, [fp, #-12]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5d33000 	ldrb	r3, [r3]
    1344:	e3530000 	cmp	r3, #0
    1348:	1afffff3 	bne	131c <printf+0x144>
    134c:	ea00001d 	b	13c8 <printf+0x1f0>
    1350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1354:	e3530063 	cmp	r3, #99	@ 0x63
    1358:	1a000009 	bne	1384 <printf+0x1ac>
    135c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e6ef3073 	uxtb	r3, r3
    1368:	e1a01003 	mov	r1, r3
    136c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1370:	ebffff3c 	bl	1068 <putc>
    1374:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1378:	e2833004 	add	r3, r3, #4
    137c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1380:	ea000010 	b	13c8 <printf+0x1f0>
    1384:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1388:	e3530025 	cmp	r3, #37	@ 0x25
    138c:	1a000005 	bne	13a8 <printf+0x1d0>
    1390:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1394:	e6ef3073 	uxtb	r3, r3
    1398:	e1a01003 	mov	r1, r3
    139c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a0:	ebffff30 	bl	1068 <putc>
    13a4:	ea000007 	b	13c8 <printf+0x1f0>
    13a8:	e3a01025 	mov	r1, #37	@ 0x25
    13ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b0:	ebffff2c 	bl	1068 <putc>
    13b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b8:	e6ef3073 	uxtb	r3, r3
    13bc:	e1a01003 	mov	r1, r3
    13c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13c4:	ebffff27 	bl	1068 <putc>
    13c8:	e3a03000 	mov	r3, #0
    13cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13d0:	e51b3010 	ldr	r3, [fp, #-16]
    13d4:	e2833001 	add	r3, r3, #1
    13d8:	e50b3010 	str	r3, [fp, #-16]
    13dc:	e59b2004 	ldr	r2, [fp, #4]
    13e0:	e51b3010 	ldr	r3, [fp, #-16]
    13e4:	e0823003 	add	r3, r2, r3
    13e8:	e5d33000 	ldrb	r3, [r3]
    13ec:	e3530000 	cmp	r3, #0
    13f0:	1affff84 	bne	1208 <printf+0x30>
    13f4:	e1a00000 	nop			@ (mov r0, r0)
    13f8:	e1a00000 	nop			@ (mov r0, r0)
    13fc:	e24bd004 	sub	sp, fp, #4
    1400:	e8bd4800 	pop	{fp, lr}
    1404:	e28dd00c 	add	sp, sp, #12
    1408:	e12fff1e 	bx	lr
    140c:	000018d4 	.word	0x000018d4

00001410 <free>:
    1410:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1414:	e28db000 	add	fp, sp, #0
    1418:	e24dd014 	sub	sp, sp, #20
    141c:	e50b0010 	str	r0, [fp, #-16]
    1420:	e51b3010 	ldr	r3, [fp, #-16]
    1424:	e2433008 	sub	r3, r3, #8
    1428:	e50b300c 	str	r3, [fp, #-12]
    142c:	e59f3154 	ldr	r3, [pc, #340]	@ 1588 <free+0x178>
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e50b3008 	str	r3, [fp, #-8]
    1438:	ea000010 	b	1480 <free+0x70>
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e51b2008 	ldr	r2, [fp, #-8]
    1448:	e1520003 	cmp	r2, r3
    144c:	3a000008 	bcc	1474 <free+0x64>
    1450:	e51b200c 	ldr	r2, [fp, #-12]
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e1520003 	cmp	r2, r3
    145c:	8a000010 	bhi	14a4 <free+0x94>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5933000 	ldr	r3, [r3]
    1468:	e51b200c 	ldr	r2, [fp, #-12]
    146c:	e1520003 	cmp	r2, r3
    1470:	3a00000b 	bcc	14a4 <free+0x94>
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e5933000 	ldr	r3, [r3]
    147c:	e50b3008 	str	r3, [fp, #-8]
    1480:	e51b200c 	ldr	r2, [fp, #-12]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e1520003 	cmp	r2, r3
    148c:	9affffea 	bls	143c <free+0x2c>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5933000 	ldr	r3, [r3]
    1498:	e51b200c 	ldr	r2, [fp, #-12]
    149c:	e1520003 	cmp	r2, r3
    14a0:	2affffe5 	bcs	143c <free+0x2c>
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e1a03183 	lsl	r3, r3, #3
    14b0:	e51b200c 	ldr	r2, [fp, #-12]
    14b4:	e0822003 	add	r2, r2, r3
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e1520003 	cmp	r2, r3
    14c4:	1a00000d 	bne	1500 <free+0xf0>
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5932004 	ldr	r2, [r3, #4]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e5933004 	ldr	r3, [r3, #4]
    14dc:	e0822003 	add	r2, r2, r3
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5832004 	str	r2, [r3, #4]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e5932000 	ldr	r2, [r3]
    14f4:	e51b300c 	ldr	r3, [fp, #-12]
    14f8:	e5832000 	str	r2, [r3]
    14fc:	ea000003 	b	1510 <free+0x100>
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5932000 	ldr	r2, [r3]
    1508:	e51b300c 	ldr	r3, [fp, #-12]
    150c:	e5832000 	str	r2, [r3]
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933004 	ldr	r3, [r3, #4]
    1518:	e1a03183 	lsl	r3, r3, #3
    151c:	e51b2008 	ldr	r2, [fp, #-8]
    1520:	e0823003 	add	r3, r2, r3
    1524:	e51b200c 	ldr	r2, [fp, #-12]
    1528:	e1520003 	cmp	r2, r3
    152c:	1a00000b 	bne	1560 <free+0x150>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5932004 	ldr	r2, [r3, #4]
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5933004 	ldr	r3, [r3, #4]
    1540:	e0822003 	add	r2, r2, r3
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e5832004 	str	r2, [r3, #4]
    154c:	e51b300c 	ldr	r3, [fp, #-12]
    1550:	e5932000 	ldr	r2, [r3]
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5832000 	str	r2, [r3]
    155c:	ea000002 	b	156c <free+0x15c>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e51b200c 	ldr	r2, [fp, #-12]
    1568:	e5832000 	str	r2, [r3]
    156c:	e59f2014 	ldr	r2, [pc, #20]	@ 1588 <free+0x178>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5823000 	str	r3, [r2]
    1578:	e1a00000 	nop			@ (mov r0, r0)
    157c:	e28bd000 	add	sp, fp, #0
    1580:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1584:	e12fff1e 	bx	lr
    1588:	000018f8 	.word	0x000018f8

0000158c <morecore>:
    158c:	e92d4800 	push	{fp, lr}
    1590:	e28db004 	add	fp, sp, #4
    1594:	e24dd010 	sub	sp, sp, #16
    1598:	e50b0010 	str	r0, [fp, #-16]
    159c:	e51b3010 	ldr	r3, [fp, #-16]
    15a0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15a4:	2a000001 	bcs	15b0 <morecore+0x24>
    15a8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15ac:	e50b3010 	str	r3, [fp, #-16]
    15b0:	e51b3010 	ldr	r3, [fp, #-16]
    15b4:	e1a03183 	lsl	r3, r3, #3
    15b8:	e1a00003 	mov	r0, r3
    15bc:	ebfffdfc 	bl	db4 <sbrk>
    15c0:	e50b0008 	str	r0, [fp, #-8]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e3730001 	cmn	r3, #1
    15cc:	1a000001 	bne	15d8 <morecore+0x4c>
    15d0:	e3a03000 	mov	r3, #0
    15d4:	ea00000a 	b	1604 <morecore+0x78>
    15d8:	e51b3008 	ldr	r3, [fp, #-8]
    15dc:	e50b300c 	str	r3, [fp, #-12]
    15e0:	e51b300c 	ldr	r3, [fp, #-12]
    15e4:	e51b2010 	ldr	r2, [fp, #-16]
    15e8:	e5832004 	str	r2, [r3, #4]
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e2833008 	add	r3, r3, #8
    15f4:	e1a00003 	mov	r0, r3
    15f8:	ebffff84 	bl	1410 <free>
    15fc:	e59f300c 	ldr	r3, [pc, #12]	@ 1610 <morecore+0x84>
    1600:	e5933000 	ldr	r3, [r3]
    1604:	e1a00003 	mov	r0, r3
    1608:	e24bd004 	sub	sp, fp, #4
    160c:	e8bd8800 	pop	{fp, pc}
    1610:	000018f8 	.word	0x000018f8

00001614 <malloc>:
    1614:	e92d4800 	push	{fp, lr}
    1618:	e28db004 	add	fp, sp, #4
    161c:	e24dd018 	sub	sp, sp, #24
    1620:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1624:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1628:	e2833007 	add	r3, r3, #7
    162c:	e1a031a3 	lsr	r3, r3, #3
    1630:	e2833001 	add	r3, r3, #1
    1634:	e50b3010 	str	r3, [fp, #-16]
    1638:	e59f3134 	ldr	r3, [pc, #308]	@ 1774 <malloc+0x160>
    163c:	e5933000 	ldr	r3, [r3]
    1640:	e50b300c 	str	r3, [fp, #-12]
    1644:	e51b300c 	ldr	r3, [fp, #-12]
    1648:	e3530000 	cmp	r3, #0
    164c:	1a00000b 	bne	1680 <malloc+0x6c>
    1650:	e59f3120 	ldr	r3, [pc, #288]	@ 1778 <malloc+0x164>
    1654:	e50b300c 	str	r3, [fp, #-12]
    1658:	e59f2114 	ldr	r2, [pc, #276]	@ 1774 <malloc+0x160>
    165c:	e51b300c 	ldr	r3, [fp, #-12]
    1660:	e5823000 	str	r3, [r2]
    1664:	e59f3108 	ldr	r3, [pc, #264]	@ 1774 <malloc+0x160>
    1668:	e5933000 	ldr	r3, [r3]
    166c:	e59f2104 	ldr	r2, [pc, #260]	@ 1778 <malloc+0x164>
    1670:	e5823000 	str	r3, [r2]
    1674:	e59f30fc 	ldr	r3, [pc, #252]	@ 1778 <malloc+0x164>
    1678:	e3a02000 	mov	r2, #0
    167c:	e5832004 	str	r2, [r3, #4]
    1680:	e51b300c 	ldr	r3, [fp, #-12]
    1684:	e5933000 	ldr	r3, [r3]
    1688:	e50b3008 	str	r3, [fp, #-8]
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e5933004 	ldr	r3, [r3, #4]
    1694:	e51b2010 	ldr	r2, [fp, #-16]
    1698:	e1520003 	cmp	r2, r3
    169c:	8a00001e 	bhi	171c <malloc+0x108>
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e5933004 	ldr	r3, [r3, #4]
    16a8:	e51b2010 	ldr	r2, [fp, #-16]
    16ac:	e1520003 	cmp	r2, r3
    16b0:	1a000004 	bne	16c8 <malloc+0xb4>
    16b4:	e51b3008 	ldr	r3, [fp, #-8]
    16b8:	e5932000 	ldr	r2, [r3]
    16bc:	e51b300c 	ldr	r3, [fp, #-12]
    16c0:	e5832000 	str	r2, [r3]
    16c4:	ea00000e 	b	1704 <malloc+0xf0>
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e5932004 	ldr	r2, [r3, #4]
    16d0:	e51b3010 	ldr	r3, [fp, #-16]
    16d4:	e0422003 	sub	r2, r2, r3
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e5832004 	str	r2, [r3, #4]
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e5933004 	ldr	r3, [r3, #4]
    16e8:	e1a03183 	lsl	r3, r3, #3
    16ec:	e51b2008 	ldr	r2, [fp, #-8]
    16f0:	e0823003 	add	r3, r2, r3
    16f4:	e50b3008 	str	r3, [fp, #-8]
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e51b2010 	ldr	r2, [fp, #-16]
    1700:	e5832004 	str	r2, [r3, #4]
    1704:	e59f2068 	ldr	r2, [pc, #104]	@ 1774 <malloc+0x160>
    1708:	e51b300c 	ldr	r3, [fp, #-12]
    170c:	e5823000 	str	r3, [r2]
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e2833008 	add	r3, r3, #8
    1718:	ea000012 	b	1768 <malloc+0x154>
    171c:	e59f3050 	ldr	r3, [pc, #80]	@ 1774 <malloc+0x160>
    1720:	e5933000 	ldr	r3, [r3]
    1724:	e51b2008 	ldr	r2, [fp, #-8]
    1728:	e1520003 	cmp	r2, r3
    172c:	1a000007 	bne	1750 <malloc+0x13c>
    1730:	e51b0010 	ldr	r0, [fp, #-16]
    1734:	ebffff94 	bl	158c <morecore>
    1738:	e50b0008 	str	r0, [fp, #-8]
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e3530000 	cmp	r3, #0
    1744:	1a000001 	bne	1750 <malloc+0x13c>
    1748:	e3a03000 	mov	r3, #0
    174c:	ea000005 	b	1768 <malloc+0x154>
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e50b300c 	str	r3, [fp, #-12]
    1758:	e51b3008 	ldr	r3, [fp, #-8]
    175c:	e5933000 	ldr	r3, [r3]
    1760:	e50b3008 	str	r3, [fp, #-8]
    1764:	eaffffc8 	b	168c <malloc+0x78>
    1768:	e1a00003 	mov	r0, r3
    176c:	e24bd004 	sub	sp, fp, #4
    1770:	e8bd8800 	pop	{fp, pc}
    1774:	000018f8 	.word	0x000018f8
    1778:	000018f0 	.word	0x000018f0

0000177c <__udivsi3>:
    177c:	e2512001 	subs	r2, r1, #1
    1780:	012fff1e 	bxeq	lr
    1784:	3a000036 	bcc	1864 <__udivsi3+0xe8>
    1788:	e1500001 	cmp	r0, r1
    178c:	9a000022 	bls	181c <__udivsi3+0xa0>
    1790:	e1110002 	tst	r1, r2
    1794:	0a000023 	beq	1828 <__udivsi3+0xac>
    1798:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    179c:	01a01181 	lsleq	r1, r1, #3
    17a0:	03a03008 	moveq	r3, #8
    17a4:	13a03001 	movne	r3, #1
    17a8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17ac:	31510000 	cmpcc	r1, r0
    17b0:	31a01201 	lslcc	r1, r1, #4
    17b4:	31a03203 	lslcc	r3, r3, #4
    17b8:	3afffffa 	bcc	17a8 <__udivsi3+0x2c>
    17bc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17c0:	31510000 	cmpcc	r1, r0
    17c4:	31a01081 	lslcc	r1, r1, #1
    17c8:	31a03083 	lslcc	r3, r3, #1
    17cc:	3afffffa 	bcc	17bc <__udivsi3+0x40>
    17d0:	e3a02000 	mov	r2, #0
    17d4:	e1500001 	cmp	r0, r1
    17d8:	20400001 	subcs	r0, r0, r1
    17dc:	21822003 	orrcs	r2, r2, r3
    17e0:	e15000a1 	cmp	r0, r1, lsr #1
    17e4:	204000a1 	subcs	r0, r0, r1, lsr #1
    17e8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17ec:	e1500121 	cmp	r0, r1, lsr #2
    17f0:	20400121 	subcs	r0, r0, r1, lsr #2
    17f4:	21822123 	orrcs	r2, r2, r3, lsr #2
    17f8:	e15001a1 	cmp	r0, r1, lsr #3
    17fc:	204001a1 	subcs	r0, r0, r1, lsr #3
    1800:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1804:	e3500000 	cmp	r0, #0
    1808:	11b03223 	lsrsne	r3, r3, #4
    180c:	11a01221 	lsrne	r1, r1, #4
    1810:	1affffef 	bne	17d4 <__udivsi3+0x58>
    1814:	e1a00002 	mov	r0, r2
    1818:	e12fff1e 	bx	lr
    181c:	03a00001 	moveq	r0, #1
    1820:	13a00000 	movne	r0, #0
    1824:	e12fff1e 	bx	lr
    1828:	e3510801 	cmp	r1, #65536	@ 0x10000
    182c:	21a01821 	lsrcs	r1, r1, #16
    1830:	23a02010 	movcs	r2, #16
    1834:	33a02000 	movcc	r2, #0
    1838:	e3510c01 	cmp	r1, #256	@ 0x100
    183c:	21a01421 	lsrcs	r1, r1, #8
    1840:	22822008 	addcs	r2, r2, #8
    1844:	e3510010 	cmp	r1, #16
    1848:	21a01221 	lsrcs	r1, r1, #4
    184c:	22822004 	addcs	r2, r2, #4
    1850:	e3510004 	cmp	r1, #4
    1854:	82822003 	addhi	r2, r2, #3
    1858:	908220a1 	addls	r2, r2, r1, lsr #1
    185c:	e1a00230 	lsr	r0, r0, r2
    1860:	e12fff1e 	bx	lr
    1864:	e3500000 	cmp	r0, #0
    1868:	13e00000 	mvnne	r0, #0
    186c:	ea000007 	b	1890 <__aeabi_idiv0>

00001870 <__aeabi_uidivmod>:
    1870:	e3510000 	cmp	r1, #0
    1874:	0afffffa 	beq	1864 <__udivsi3+0xe8>
    1878:	e92d4003 	push	{r0, r1, lr}
    187c:	ebffffbe 	bl	177c <__udivsi3>
    1880:	e8bd4006 	pop	{r1, r2, lr}
    1884:	e0030092 	mul	r3, r2, r0
    1888:	e0411003 	sub	r1, r1, r3
    188c:	e12fff1e 	bx	lr

00001890 <__aeabi_idiv0>:
    1890:	e12fff1e 	bx	lr
