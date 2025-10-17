
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb00031f 	bl	cac <printf>
      2c:	eb0001df 	bl	7b0 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000132 	bl	524 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb000208 	bl	888 <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb0001ca 	bl	7b0 <exit>
      84:	00001368 	.word	0x00001368

00000088 <pg_pte>:
      88:	e92d4800 	push	{fp, lr}
      8c:	e28db004 	add	fp, sp, #4
      90:	e24dd008 	sub	sp, sp, #8
      94:	e50b0008 	str	r0, [fp, #-8]
      98:	e51b1008 	ldr	r1, [fp, #-8]
      9c:	e3a00065 	mov	r0, #101	@ 0x65
      a0:	eb0002a3 	bl	b34 <syscall>
      a4:	e1a03000 	mov	r3, r0
      a8:	e1a00003 	mov	r0, r3
      ac:	e24bd004 	sub	sp, fp, #4
      b0:	e8bd8800 	pop	{fp, pc}

000000b4 <pg_pa>:
      b4:	e92d4800 	push	{fp, lr}
      b8:	e28db004 	add	fp, sp, #4
      bc:	e24dd008 	sub	sp, sp, #8
      c0:	e50b0008 	str	r0, [fp, #-8]
      c4:	e51b1008 	ldr	r1, [fp, #-8]
      c8:	e3a00066 	mov	r0, #102	@ 0x66
      cc:	eb000298 	bl	b34 <syscall>
      d0:	e1a03000 	mov	r3, r0
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd004 	sub	sp, fp, #4
      dc:	e8bd8800 	pop	{fp, pc}

000000e0 <pg_flags>:
      e0:	e92d4800 	push	{fp, lr}
      e4:	e28db004 	add	fp, sp, #4
      e8:	e24dd008 	sub	sp, sp, #8
      ec:	e50b0008 	str	r0, [fp, #-8]
      f0:	e51b1008 	ldr	r1, [fp, #-8]
      f4:	e3a00067 	mov	r0, #103	@ 0x67
      f8:	eb00028d 	bl	b34 <syscall>
      fc:	e1a03000 	mov	r3, r0
     100:	e1a00003 	mov	r0, r3
     104:	e24bd004 	sub	sp, fp, #4
     108:	e8bd8800 	pop	{fp, pc}

0000010c <kpt>:
     10c:	e92d4800 	push	{fp, lr}
     110:	e28db004 	add	fp, sp, #4
     114:	e3a00068 	mov	r0, #104	@ 0x68
     118:	eb000285 	bl	b34 <syscall>
     11c:	e1a03000 	mov	r3, r0
     120:	e1a00003 	mov	r0, r3
     124:	e8bd8800 	pop	{fp, pc}

00000128 <ugetpid>:
     128:	e92d4800 	push	{fp, lr}
     12c:	e28db004 	add	fp, sp, #4
     130:	e3a00069 	mov	r0, #105	@ 0x69
     134:	eb00027e 	bl	b34 <syscall>
     138:	e1a03000 	mov	r3, r0
     13c:	e1a00003 	mov	r0, r3
     140:	e8bd8800 	pop	{fp, pc}

00000144 <strcpy>:
     144:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     148:	e28db000 	add	fp, sp, #0
     14c:	e24dd014 	sub	sp, sp, #20
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	e1a00000 	nop			@ (mov r0, r0)
     164:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     168:	e2823001 	add	r3, r2, #1
     16c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     170:	e51b3010 	ldr	r3, [fp, #-16]
     174:	e2831001 	add	r1, r3, #1
     178:	e50b1010 	str	r1, [fp, #-16]
     17c:	e5d22000 	ldrb	r2, [r2]
     180:	e5c32000 	strb	r2, [r3]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e3530000 	cmp	r3, #0
     18c:	1afffff4 	bne	164 <strcpy+0x20>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a00003 	mov	r0, r3
     198:	e28bd000 	add	sp, fp, #0
     19c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a0:	e12fff1e 	bx	lr

000001a4 <strcmp>:
     1a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a8:	e28db000 	add	fp, sp, #0
     1ac:	e24dd00c 	sub	sp, sp, #12
     1b0:	e50b0008 	str	r0, [fp, #-8]
     1b4:	e50b100c 	str	r1, [fp, #-12]
     1b8:	ea000005 	b	1d4 <strcmp+0x30>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b3008 	str	r3, [fp, #-8]
     1c8:	e51b300c 	ldr	r3, [fp, #-12]
     1cc:	e2833001 	add	r3, r3, #1
     1d0:	e50b300c 	str	r3, [fp, #-12]
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000005 	beq	1fc <strcmp+0x58>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e5d32000 	ldrb	r2, [r3]
     1ec:	e51b300c 	ldr	r3, [fp, #-12]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e1520003 	cmp	r2, r3
     1f8:	0affffef 	beq	1bc <strcmp+0x18>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e1a02003 	mov	r2, r3
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e0423003 	sub	r3, r2, r3
     214:	e1a00003 	mov	r0, r3
     218:	e28bd000 	add	sp, fp, #0
     21c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     220:	e12fff1e 	bx	lr

00000224 <strlen>:
     224:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     228:	e28db000 	add	fp, sp, #0
     22c:	e24dd014 	sub	sp, sp, #20
     230:	e50b0010 	str	r0, [fp, #-16]
     234:	e3a03000 	mov	r3, #0
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	ea000002 	b	24c <strlen+0x28>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e2833001 	add	r3, r3, #1
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e51b2010 	ldr	r2, [fp, #-16]
     254:	e0823003 	add	r3, r2, r3
     258:	e5d33000 	ldrb	r3, [r3]
     25c:	e3530000 	cmp	r3, #0
     260:	1afffff6 	bne	240 <strlen+0x1c>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e1a00003 	mov	r0, r3
     26c:	e28bd000 	add	sp, fp, #0
     270:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     274:	e12fff1e 	bx	lr

00000278 <memset>:
     278:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     27c:	e28db000 	add	fp, sp, #0
     280:	e24dd024 	sub	sp, sp, #36	@ 0x24
     284:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     288:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     28c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     290:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     29c:	e54b300d 	strb	r3, [fp, #-13]
     2a0:	e55b200d 	ldrb	r2, [fp, #-13]
     2a4:	e1a03002 	mov	r3, r2
     2a8:	e1a03403 	lsl	r3, r3, #8
     2ac:	e0833002 	add	r3, r3, r2
     2b0:	e1a03803 	lsl	r3, r3, #16
     2b4:	e1a02003 	mov	r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1a03403 	lsl	r3, r3, #8
     2c0:	e1822003 	orr	r2, r2, r3
     2c4:	e55b300d 	ldrb	r3, [fp, #-13]
     2c8:	e1823003 	orr	r3, r2, r3
     2cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2d0:	ea000008 	b	2f8 <memset+0x80>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e5c32000 	strb	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433001 	sub	r3, r3, #1
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530000 	cmp	r3, #0
     300:	0a000003 	beq	314 <memset+0x9c>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2033003 	and	r3, r3, #3
     30c:	e3530000 	cmp	r3, #0
     310:	1affffef 	bne	2d4 <memset+0x5c>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e50b300c 	str	r3, [fp, #-12]
     31c:	ea000008 	b	344 <memset+0xcc>
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     328:	e5832000 	str	r2, [r3]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     330:	e2433004 	sub	r3, r3, #4
     334:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     338:	e51b300c 	ldr	r3, [fp, #-12]
     33c:	e2833004 	add	r3, r3, #4
     340:	e50b300c 	str	r3, [fp, #-12]
     344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     348:	e3530003 	cmp	r3, #3
     34c:	8afffff3 	bhi	320 <memset+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e50b3008 	str	r3, [fp, #-8]
     358:	ea000008 	b	380 <memset+0x108>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e55b200d 	ldrb	r2, [fp, #-13]
     364:	e5c32000 	strb	r2, [r3]
     368:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     36c:	e2433001 	sub	r3, r3, #1
     370:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2833001 	add	r3, r3, #1
     37c:	e50b3008 	str	r3, [fp, #-8]
     380:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     384:	e3530000 	cmp	r3, #0
     388:	1afffff3 	bne	35c <memset+0xe4>
     38c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     390:	e1a00003 	mov	r0, r3
     394:	e28bd000 	add	sp, fp, #0
     398:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     39c:	e12fff1e 	bx	lr

000003a0 <strchr>:
     3a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a4:	e28db000 	add	fp, sp, #0
     3a8:	e24dd00c 	sub	sp, sp, #12
     3ac:	e50b0008 	str	r0, [fp, #-8]
     3b0:	e1a03001 	mov	r3, r1
     3b4:	e54b3009 	strb	r3, [fp, #-9]
     3b8:	ea000009 	b	3e4 <strchr+0x44>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e5d33000 	ldrb	r3, [r3]
     3c4:	e55b2009 	ldrb	r2, [fp, #-9]
     3c8:	e1520003 	cmp	r2, r3
     3cc:	1a000001 	bne	3d8 <strchr+0x38>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	ea000007 	b	3f8 <strchr+0x58>
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e2833001 	add	r3, r3, #1
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e5d33000 	ldrb	r3, [r3]
     3ec:	e3530000 	cmp	r3, #0
     3f0:	1afffff1 	bne	3bc <strchr+0x1c>
     3f4:	e3a03000 	mov	r3, #0
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e28bd000 	add	sp, fp, #0
     400:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     404:	e12fff1e 	bx	lr

00000408 <gets>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd018 	sub	sp, sp, #24
     414:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     418:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     41c:	e3a03000 	mov	r3, #0
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	ea000016 	b	484 <gets+0x7c>
     428:	e24b300d 	sub	r3, fp, #13
     42c:	e3a02001 	mov	r2, #1
     430:	e1a01003 	mov	r1, r3
     434:	e3a00000 	mov	r0, #0
     438:	eb0000f7 	bl	81c <read>
     43c:	e50b000c 	str	r0, [fp, #-12]
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e3530000 	cmp	r3, #0
     448:	da000013 	ble	49c <gets+0x94>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2832001 	add	r2, r3, #1
     454:	e50b2008 	str	r2, [fp, #-8]
     458:	e1a02003 	mov	r2, r3
     45c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     460:	e0833002 	add	r3, r3, r2
     464:	e55b200d 	ldrb	r2, [fp, #-13]
     468:	e5c32000 	strb	r2, [r3]
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000a 	cmp	r3, #10
     474:	0a000009 	beq	4a0 <gets+0x98>
     478:	e55b300d 	ldrb	r3, [fp, #-13]
     47c:	e353000d 	cmp	r3, #13
     480:	0a000006 	beq	4a0 <gets+0x98>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2833001 	add	r3, r3, #1
     48c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     490:	e1520003 	cmp	r2, r3
     494:	caffffe3 	bgt	428 <gets+0x20>
     498:	ea000000 	b	4a0 <gets+0x98>
     49c:	e1a00000 	nop			@ (mov r0, r0)
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4a8:	e0823003 	add	r3, r2, r3
     4ac:	e3a02000 	mov	r2, #0
     4b0:	e5c32000 	strb	r2, [r3]
     4b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e24bd004 	sub	sp, fp, #4
     4c0:	e8bd8800 	pop	{fp, pc}

000004c4 <stat>:
     4c4:	e92d4800 	push	{fp, lr}
     4c8:	e28db004 	add	fp, sp, #4
     4cc:	e24dd010 	sub	sp, sp, #16
     4d0:	e50b0010 	str	r0, [fp, #-16]
     4d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4d8:	e3a01000 	mov	r1, #0
     4dc:	e51b0010 	ldr	r0, [fp, #-16]
     4e0:	eb0000fa 	bl	8d0 <open>
     4e4:	e50b0008 	str	r0, [fp, #-8]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	aa000001 	bge	4fc <stat+0x38>
     4f4:	e3e03000 	mvn	r3, #0
     4f8:	ea000006 	b	518 <stat+0x54>
     4fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb00010c 	bl	93c <fstat>
     508:	e50b000c 	str	r0, [fp, #-12]
     50c:	e51b0008 	ldr	r0, [fp, #-8]
     510:	eb0000d3 	bl	864 <close>
     514:	e51b300c 	ldr	r3, [fp, #-12]
     518:	e1a00003 	mov	r0, r3
     51c:	e24bd004 	sub	sp, fp, #4
     520:	e8bd8800 	pop	{fp, pc}

00000524 <atoi>:
     524:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     528:	e28db000 	add	fp, sp, #0
     52c:	e24dd014 	sub	sp, sp, #20
     530:	e50b0010 	str	r0, [fp, #-16]
     534:	e3a03000 	mov	r3, #0
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	ea00000c 	b	574 <atoi+0x50>
     540:	e51b2008 	ldr	r2, [fp, #-8]
     544:	e1a03002 	mov	r3, r2
     548:	e1a03103 	lsl	r3, r3, #2
     54c:	e0833002 	add	r3, r3, r2
     550:	e1a03083 	lsl	r3, r3, #1
     554:	e1a01003 	mov	r1, r3
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e2832001 	add	r2, r3, #1
     560:	e50b2010 	str	r2, [fp, #-16]
     564:	e5d33000 	ldrb	r3, [r3]
     568:	e0813003 	add	r3, r1, r3
     56c:	e2433030 	sub	r3, r3, #48	@ 0x30
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e353002f 	cmp	r3, #47	@ 0x2f
     580:	9a000003 	bls	594 <atoi+0x70>
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e5d33000 	ldrb	r3, [r3]
     58c:	e3530039 	cmp	r3, #57	@ 0x39
     590:	9affffea 	bls	540 <atoi+0x1c>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e1a00003 	mov	r0, r3
     59c:	e28bd000 	add	sp, fp, #0
     5a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <memmove>:
     5a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ac:	e28db000 	add	fp, sp, #0
     5b0:	e24dd01c 	sub	sp, sp, #28
     5b4:	e50b0010 	str	r0, [fp, #-16]
     5b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e50b3008 	str	r3, [fp, #-8]
     5c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5cc:	e50b300c 	str	r3, [fp, #-12]
     5d0:	ea000007 	b	5f4 <memmove+0x4c>
     5d4:	e51b200c 	ldr	r2, [fp, #-12]
     5d8:	e2823001 	add	r3, r2, #1
     5dc:	e50b300c 	str	r3, [fp, #-12]
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e2831001 	add	r1, r3, #1
     5e8:	e50b1008 	str	r1, [fp, #-8]
     5ec:	e5d22000 	ldrb	r2, [r2]
     5f0:	e5c32000 	strb	r2, [r3]
     5f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f8:	e2432001 	sub	r2, r3, #1
     5fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     600:	e3530000 	cmp	r3, #0
     604:	cafffff2 	bgt	5d4 <memmove+0x2c>
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e1a00003 	mov	r0, r3
     610:	e28bd000 	add	sp, fp, #0
     614:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <strncmp>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd014 	sub	sp, sp, #20
     628:	e50b0008 	str	r0, [fp, #-8]
     62c:	e50b100c 	str	r1, [fp, #-12]
     630:	e50b2010 	str	r2, [fp, #-16]
     634:	ea000008 	b	65c <strncmp+0x40>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b300c 	ldr	r3, [fp, #-12]
     648:	e2833001 	add	r3, r3, #1
     64c:	e50b300c 	str	r3, [fp, #-12]
     650:	e51b3010 	ldr	r3, [fp, #-16]
     654:	e2433001 	sub	r3, r3, #1
     658:	e50b3010 	str	r3, [fp, #-16]
     65c:	e51b3010 	ldr	r3, [fp, #-16]
     660:	e3530000 	cmp	r3, #0
     664:	da00000d 	ble	6a0 <strncmp+0x84>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e3530000 	cmp	r3, #0
     674:	0a000009 	beq	6a0 <strncmp+0x84>
     678:	e51b300c 	ldr	r3, [fp, #-12]
     67c:	e5d33000 	ldrb	r3, [r3]
     680:	e3530000 	cmp	r3, #0
     684:	0a000005 	beq	6a0 <strncmp+0x84>
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e5d32000 	ldrb	r2, [r3]
     690:	e51b300c 	ldr	r3, [fp, #-12]
     694:	e5d33000 	ldrb	r3, [r3]
     698:	e1520003 	cmp	r2, r3
     69c:	0affffe5 	beq	638 <strncmp+0x1c>
     6a0:	e51b3010 	ldr	r3, [fp, #-16]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	1a000001 	bne	6b4 <strncmp+0x98>
     6ac:	e3a03000 	mov	r3, #0
     6b0:	ea000005 	b	6cc <strncmp+0xb0>
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e5d33000 	ldrb	r3, [r3]
     6bc:	e1a02003 	mov	r2, r3
     6c0:	e51b300c 	ldr	r3, [fp, #-12]
     6c4:	e5d33000 	ldrb	r3, [r3]
     6c8:	e0423003 	sub	r3, r2, r3
     6cc:	e1a00003 	mov	r0, r3
     6d0:	e28bd000 	add	sp, fp, #0
     6d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <strncpy>:
     6dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e0:	e28db000 	add	fp, sp, #0
     6e4:	e24dd01c 	sub	sp, sp, #28
     6e8:	e50b0010 	str	r0, [fp, #-16]
     6ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6f4:	e51b3010 	ldr	r3, [fp, #-16]
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	ea00000a 	b	72c <strncpy+0x50>
     700:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     704:	e2823001 	add	r3, r2, #1
     708:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e2831001 	add	r1, r3, #1
     714:	e50b1008 	str	r1, [fp, #-8]
     718:	e5d22000 	ldrb	r2, [r2]
     71c:	e5c32000 	strb	r2, [r3]
     720:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     724:	e2433001 	sub	r3, r3, #1
     728:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     72c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     730:	e3530000 	cmp	r3, #0
     734:	da00000c 	ble	76c <strncpy+0x90>
     738:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     73c:	e5d33000 	ldrb	r3, [r3]
     740:	e3530000 	cmp	r3, #0
     744:	1affffed 	bne	700 <strncpy+0x24>
     748:	ea000007 	b	76c <strncpy+0x90>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e2832001 	add	r2, r3, #1
     754:	e50b2008 	str	r2, [fp, #-8]
     758:	e3a02000 	mov	r2, #0
     75c:	e5c32000 	strb	r2, [r3]
     760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     764:	e2433001 	sub	r3, r3, #1
     768:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     76c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     770:	e3530000 	cmp	r3, #0
     774:	cafffff4 	bgt	74c <strncpy+0x70>
     778:	e51b3010 	ldr	r3, [fp, #-16]
     77c:	e1a00003 	mov	r0, r3
     780:	e28bd000 	add	sp, fp, #0
     784:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <fork>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00001 	mov	r0, #1
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <exit>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00002 	mov	r0, #2
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <wait>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a00003 	mov	r0, #3
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <pipe>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00004 	mov	r0, #4
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <read>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00005 	mov	r0, #5
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <write>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00010 	mov	r0, #16
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <close>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00015 	mov	r0, #21
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <kill>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00006 	mov	r0, #6
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <exec>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00007 	mov	r0, #7
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <open>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a0000f 	mov	r0, #15
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <mknod>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a00011 	mov	r0, #17
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <unlink>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a00012 	mov	r0, #18
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <fstat>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a00008 	mov	r0, #8
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <link>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00013 	mov	r0, #19
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <mkdir>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00014 	mov	r0, #20
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <chdir>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00009 	mov	r0, #9
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <dup>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a0000a 	mov	r0, #10
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <getpid>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a0000b 	mov	r0, #11
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <sbrk>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a0000c 	mov	r0, #12
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <sleep>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a0000d 	mov	r0, #13
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <uptime>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a0000e 	mov	r0, #14
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <proclist>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a00016 	mov	r0, #22
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <settickets>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00017 	mov	r0, #23
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <srand>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00018 	mov	r0, #24
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <getpinfo>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00019 	mov	r0, #25
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <print_pt>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a0006a 	mov	r0, #106	@ 0x6a
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <syscall>:
     b34:	ef000000 	svc	0x00000000
     b38:	e12fff1e 	bx	lr

00000b3c <putc>:
     b3c:	e92d4800 	push	{fp, lr}
     b40:	e28db004 	add	fp, sp, #4
     b44:	e24dd008 	sub	sp, sp, #8
     b48:	e50b0008 	str	r0, [fp, #-8]
     b4c:	e1a03001 	mov	r3, r1
     b50:	e54b3009 	strb	r3, [fp, #-9]
     b54:	e24b3009 	sub	r3, fp, #9
     b58:	e3a02001 	mov	r2, #1
     b5c:	e1a01003 	mov	r1, r3
     b60:	e51b0008 	ldr	r0, [fp, #-8]
     b64:	ebffff35 	bl	840 <write>
     b68:	e1a00000 	nop			@ (mov r0, r0)
     b6c:	e24bd004 	sub	sp, fp, #4
     b70:	e8bd8800 	pop	{fp, pc}

00000b74 <printint>:
     b74:	e92d4800 	push	{fp, lr}
     b78:	e28db004 	add	fp, sp, #4
     b7c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b80:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b84:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b88:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b8c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b90:	e3a03000 	mov	r3, #0
     b94:	e50b300c 	str	r3, [fp, #-12]
     b98:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b9c:	e3530000 	cmp	r3, #0
     ba0:	0a000008 	beq	bc8 <printint+0x54>
     ba4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ba8:	e3530000 	cmp	r3, #0
     bac:	aa000005 	bge	bc8 <printint+0x54>
     bb0:	e3a03001 	mov	r3, #1
     bb4:	e50b300c 	str	r3, [fp, #-12]
     bb8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bbc:	e2633000 	rsb	r3, r3, #0
     bc0:	e50b3010 	str	r3, [fp, #-16]
     bc4:	ea000001 	b	bd0 <printint+0x5c>
     bc8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bcc:	e50b3010 	str	r3, [fp, #-16]
     bd0:	e3a03000 	mov	r3, #0
     bd4:	e50b3008 	str	r3, [fp, #-8]
     bd8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     bdc:	e51b3010 	ldr	r3, [fp, #-16]
     be0:	e1a01002 	mov	r1, r2
     be4:	e1a00003 	mov	r0, r3
     be8:	eb0001d5 	bl	1344 <__aeabi_uidivmod>
     bec:	e1a03001 	mov	r3, r1
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e2832001 	add	r2, r3, #1
     bfc:	e50b2008 	str	r2, [fp, #-8]
     c00:	e59f20a0 	ldr	r2, [pc, #160]	@ ca8 <printint+0x134>
     c04:	e7d22001 	ldrb	r2, [r2, r1]
     c08:	e2433004 	sub	r3, r3, #4
     c0c:	e083300b 	add	r3, r3, fp
     c10:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c14:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c18:	e1a01003 	mov	r1, r3
     c1c:	e51b0010 	ldr	r0, [fp, #-16]
     c20:	eb00018a 	bl	1250 <__udivsi3>
     c24:	e1a03000 	mov	r3, r0
     c28:	e50b3010 	str	r3, [fp, #-16]
     c2c:	e51b3010 	ldr	r3, [fp, #-16]
     c30:	e3530000 	cmp	r3, #0
     c34:	1affffe7 	bne	bd8 <printint+0x64>
     c38:	e51b300c 	ldr	r3, [fp, #-12]
     c3c:	e3530000 	cmp	r3, #0
     c40:	0a00000e 	beq	c80 <printint+0x10c>
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e2832001 	add	r2, r3, #1
     c4c:	e50b2008 	str	r2, [fp, #-8]
     c50:	e2433004 	sub	r3, r3, #4
     c54:	e083300b 	add	r3, r3, fp
     c58:	e3a0202d 	mov	r2, #45	@ 0x2d
     c5c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c60:	ea000006 	b	c80 <printint+0x10c>
     c64:	e24b2020 	sub	r2, fp, #32
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e0823003 	add	r3, r2, r3
     c70:	e5d33000 	ldrb	r3, [r3]
     c74:	e1a01003 	mov	r1, r3
     c78:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c7c:	ebffffae 	bl	b3c <putc>
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e2433001 	sub	r3, r3, #1
     c88:	e50b3008 	str	r3, [fp, #-8]
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e3530000 	cmp	r3, #0
     c94:	aafffff2 	bge	c64 <printint+0xf0>
     c98:	e1a00000 	nop			@ (mov r0, r0)
     c9c:	e1a00000 	nop			@ (mov r0, r0)
     ca0:	e24bd004 	sub	sp, fp, #4
     ca4:	e8bd8800 	pop	{fp, pc}
     ca8:	00001384 	.word	0x00001384

00000cac <printf>:
     cac:	e92d000e 	push	{r1, r2, r3}
     cb0:	e92d4800 	push	{fp, lr}
     cb4:	e28db004 	add	fp, sp, #4
     cb8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cbc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cc0:	e3a03000 	mov	r3, #0
     cc4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cc8:	e28b3008 	add	r3, fp, #8
     ccc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e50b3010 	str	r3, [fp, #-16]
     cd8:	ea000074 	b	eb0 <printf+0x204>
     cdc:	e59b2004 	ldr	r2, [fp, #4]
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e0823003 	add	r3, r2, r3
     ce8:	e5d33000 	ldrb	r3, [r3]
     cec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     cf0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cf4:	e3530000 	cmp	r3, #0
     cf8:	1a00000b 	bne	d2c <printf+0x80>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e3530025 	cmp	r3, #37	@ 0x25
     d04:	1a000002 	bne	d14 <printf+0x68>
     d08:	e3a03025 	mov	r3, #37	@ 0x25
     d0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d10:	ea000063 	b	ea4 <printf+0x1f8>
     d14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d18:	e6ef3073 	uxtb	r3, r3
     d1c:	e1a01003 	mov	r1, r3
     d20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d24:	ebffff84 	bl	b3c <putc>
     d28:	ea00005d 	b	ea4 <printf+0x1f8>
     d2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d30:	e3530025 	cmp	r3, #37	@ 0x25
     d34:	1a00005a 	bne	ea4 <printf+0x1f8>
     d38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d3c:	e3530064 	cmp	r3, #100	@ 0x64
     d40:	1a00000a 	bne	d70 <printf+0xc4>
     d44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d48:	e5933000 	ldr	r3, [r3]
     d4c:	e1a01003 	mov	r1, r3
     d50:	e3a03001 	mov	r3, #1
     d54:	e3a0200a 	mov	r2, #10
     d58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d5c:	ebffff84 	bl	b74 <printint>
     d60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d64:	e2833004 	add	r3, r3, #4
     d68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	ea00004a 	b	e9c <printf+0x1f0>
     d70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d74:	e3530078 	cmp	r3, #120	@ 0x78
     d78:	0a000002 	beq	d88 <printf+0xdc>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e3530070 	cmp	r3, #112	@ 0x70
     d84:	1a00000a 	bne	db4 <printf+0x108>
     d88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e1a01003 	mov	r1, r3
     d94:	e3a03000 	mov	r3, #0
     d98:	e3a02010 	mov	r2, #16
     d9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da0:	ebffff73 	bl	b74 <printint>
     da4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     da8:	e2833004 	add	r3, r3, #4
     dac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     db0:	ea000039 	b	e9c <printf+0x1f0>
     db4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db8:	e3530073 	cmp	r3, #115	@ 0x73
     dbc:	1a000018 	bne	e24 <printf+0x178>
     dc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e50b300c 	str	r3, [fp, #-12]
     dcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd0:	e2833004 	add	r3, r3, #4
     dd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e3530000 	cmp	r3, #0
     de0:	1a00000a 	bne	e10 <printf+0x164>
     de4:	e59f30f4 	ldr	r3, [pc, #244]	@ ee0 <printf+0x234>
     de8:	e50b300c 	str	r3, [fp, #-12]
     dec:	ea000007 	b	e10 <printf+0x164>
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5d33000 	ldrb	r3, [r3]
     df8:	e1a01003 	mov	r1, r3
     dfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e00:	ebffff4d 	bl	b3c <putc>
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e2833001 	add	r3, r3, #1
     e0c:	e50b300c 	str	r3, [fp, #-12]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5d33000 	ldrb	r3, [r3]
     e18:	e3530000 	cmp	r3, #0
     e1c:	1afffff3 	bne	df0 <printf+0x144>
     e20:	ea00001d 	b	e9c <printf+0x1f0>
     e24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e28:	e3530063 	cmp	r3, #99	@ 0x63
     e2c:	1a000009 	bne	e58 <printf+0x1ac>
     e30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e6ef3073 	uxtb	r3, r3
     e3c:	e1a01003 	mov	r1, r3
     e40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e44:	ebffff3c 	bl	b3c <putc>
     e48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e4c:	e2833004 	add	r3, r3, #4
     e50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e54:	ea000010 	b	e9c <printf+0x1f0>
     e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e5c:	e3530025 	cmp	r3, #37	@ 0x25
     e60:	1a000005 	bne	e7c <printf+0x1d0>
     e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e68:	e6ef3073 	uxtb	r3, r3
     e6c:	e1a01003 	mov	r1, r3
     e70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e74:	ebffff30 	bl	b3c <putc>
     e78:	ea000007 	b	e9c <printf+0x1f0>
     e7c:	e3a01025 	mov	r1, #37	@ 0x25
     e80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e84:	ebffff2c 	bl	b3c <putc>
     e88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e8c:	e6ef3073 	uxtb	r3, r3
     e90:	e1a01003 	mov	r1, r3
     e94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e98:	ebffff27 	bl	b3c <putc>
     e9c:	e3a03000 	mov	r3, #0
     ea0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ea4:	e51b3010 	ldr	r3, [fp, #-16]
     ea8:	e2833001 	add	r3, r3, #1
     eac:	e50b3010 	str	r3, [fp, #-16]
     eb0:	e59b2004 	ldr	r2, [fp, #4]
     eb4:	e51b3010 	ldr	r3, [fp, #-16]
     eb8:	e0823003 	add	r3, r2, r3
     ebc:	e5d33000 	ldrb	r3, [r3]
     ec0:	e3530000 	cmp	r3, #0
     ec4:	1affff84 	bne	cdc <printf+0x30>
     ec8:	e1a00000 	nop			@ (mov r0, r0)
     ecc:	e1a00000 	nop			@ (mov r0, r0)
     ed0:	e24bd004 	sub	sp, fp, #4
     ed4:	e8bd4800 	pop	{fp, lr}
     ed8:	e28dd00c 	add	sp, sp, #12
     edc:	e12fff1e 	bx	lr
     ee0:	0000137c 	.word	0x0000137c

00000ee4 <free>:
     ee4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ee8:	e28db000 	add	fp, sp, #0
     eec:	e24dd014 	sub	sp, sp, #20
     ef0:	e50b0010 	str	r0, [fp, #-16]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e2433008 	sub	r3, r3, #8
     efc:	e50b300c 	str	r3, [fp, #-12]
     f00:	e59f3154 	ldr	r3, [pc, #340]	@ 105c <free+0x178>
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e50b3008 	str	r3, [fp, #-8]
     f0c:	ea000010 	b	f54 <free+0x70>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933000 	ldr	r3, [r3]
     f18:	e51b2008 	ldr	r2, [fp, #-8]
     f1c:	e1520003 	cmp	r2, r3
     f20:	3a000008 	bcc	f48 <free+0x64>
     f24:	e51b200c 	ldr	r2, [fp, #-12]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e1520003 	cmp	r2, r3
     f30:	8a000010 	bhi	f78 <free+0x94>
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e5933000 	ldr	r3, [r3]
     f3c:	e51b200c 	ldr	r2, [fp, #-12]
     f40:	e1520003 	cmp	r2, r3
     f44:	3a00000b 	bcc	f78 <free+0x94>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e50b3008 	str	r3, [fp, #-8]
     f54:	e51b200c 	ldr	r2, [fp, #-12]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e1520003 	cmp	r2, r3
     f60:	9affffea 	bls	f10 <free+0x2c>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933000 	ldr	r3, [r3]
     f6c:	e51b200c 	ldr	r2, [fp, #-12]
     f70:	e1520003 	cmp	r2, r3
     f74:	2affffe5 	bcs	f10 <free+0x2c>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5933004 	ldr	r3, [r3, #4]
     f80:	e1a03183 	lsl	r3, r3, #3
     f84:	e51b200c 	ldr	r2, [fp, #-12]
     f88:	e0822003 	add	r2, r2, r3
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5933000 	ldr	r3, [r3]
     f94:	e1520003 	cmp	r2, r3
     f98:	1a00000d 	bne	fd4 <free+0xf0>
     f9c:	e51b300c 	ldr	r3, [fp, #-12]
     fa0:	e5932004 	ldr	r2, [r3, #4]
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e0822003 	add	r2, r2, r3
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5832004 	str	r2, [r3, #4]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e5932000 	ldr	r2, [r3]
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5832000 	str	r2, [r3]
     fd0:	ea000003 	b	fe4 <free+0x100>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5932000 	ldr	r2, [r3]
     fdc:	e51b300c 	ldr	r3, [fp, #-12]
     fe0:	e5832000 	str	r2, [r3]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933004 	ldr	r3, [r3, #4]
     fec:	e1a03183 	lsl	r3, r3, #3
     ff0:	e51b2008 	ldr	r2, [fp, #-8]
     ff4:	e0823003 	add	r3, r2, r3
     ff8:	e51b200c 	ldr	r2, [fp, #-12]
     ffc:	e1520003 	cmp	r2, r3
    1000:	1a00000b 	bne	1034 <free+0x150>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5932004 	ldr	r2, [r3, #4]
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5933004 	ldr	r3, [r3, #4]
    1014:	e0822003 	add	r2, r2, r3
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5832004 	str	r2, [r3, #4]
    1020:	e51b300c 	ldr	r3, [fp, #-12]
    1024:	e5932000 	ldr	r2, [r3]
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5832000 	str	r2, [r3]
    1030:	ea000002 	b	1040 <free+0x15c>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e51b200c 	ldr	r2, [fp, #-12]
    103c:	e5832000 	str	r2, [r3]
    1040:	e59f2014 	ldr	r2, [pc, #20]	@ 105c <free+0x178>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5823000 	str	r3, [r2]
    104c:	e1a00000 	nop			@ (mov r0, r0)
    1050:	e28bd000 	add	sp, fp, #0
    1054:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1058:	e12fff1e 	bx	lr
    105c:	000013a0 	.word	0x000013a0

00001060 <morecore>:
    1060:	e92d4800 	push	{fp, lr}
    1064:	e28db004 	add	fp, sp, #4
    1068:	e24dd010 	sub	sp, sp, #16
    106c:	e50b0010 	str	r0, [fp, #-16]
    1070:	e51b3010 	ldr	r3, [fp, #-16]
    1074:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1078:	2a000001 	bcs	1084 <morecore+0x24>
    107c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1080:	e50b3010 	str	r3, [fp, #-16]
    1084:	e51b3010 	ldr	r3, [fp, #-16]
    1088:	e1a03183 	lsl	r3, r3, #3
    108c:	e1a00003 	mov	r0, r3
    1090:	ebfffe5f 	bl	a14 <sbrk>
    1094:	e50b0008 	str	r0, [fp, #-8]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e3730001 	cmn	r3, #1
    10a0:	1a000001 	bne	10ac <morecore+0x4c>
    10a4:	e3a03000 	mov	r3, #0
    10a8:	ea00000a 	b	10d8 <morecore+0x78>
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e50b300c 	str	r3, [fp, #-12]
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e51b2010 	ldr	r2, [fp, #-16]
    10bc:	e5832004 	str	r2, [r3, #4]
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e2833008 	add	r3, r3, #8
    10c8:	e1a00003 	mov	r0, r3
    10cc:	ebffff84 	bl	ee4 <free>
    10d0:	e59f300c 	ldr	r3, [pc, #12]	@ 10e4 <morecore+0x84>
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e1a00003 	mov	r0, r3
    10dc:	e24bd004 	sub	sp, fp, #4
    10e0:	e8bd8800 	pop	{fp, pc}
    10e4:	000013a0 	.word	0x000013a0

000010e8 <malloc>:
    10e8:	e92d4800 	push	{fp, lr}
    10ec:	e28db004 	add	fp, sp, #4
    10f0:	e24dd018 	sub	sp, sp, #24
    10f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    10f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10fc:	e2833007 	add	r3, r3, #7
    1100:	e1a031a3 	lsr	r3, r3, #3
    1104:	e2833001 	add	r3, r3, #1
    1108:	e50b3010 	str	r3, [fp, #-16]
    110c:	e59f3134 	ldr	r3, [pc, #308]	@ 1248 <malloc+0x160>
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e50b300c 	str	r3, [fp, #-12]
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e3530000 	cmp	r3, #0
    1120:	1a00000b 	bne	1154 <malloc+0x6c>
    1124:	e59f3120 	ldr	r3, [pc, #288]	@ 124c <malloc+0x164>
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e59f2114 	ldr	r2, [pc, #276]	@ 1248 <malloc+0x160>
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e5823000 	str	r3, [r2]
    1138:	e59f3108 	ldr	r3, [pc, #264]	@ 1248 <malloc+0x160>
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e59f2104 	ldr	r2, [pc, #260]	@ 124c <malloc+0x164>
    1144:	e5823000 	str	r3, [r2]
    1148:	e59f30fc 	ldr	r3, [pc, #252]	@ 124c <malloc+0x164>
    114c:	e3a02000 	mov	r2, #0
    1150:	e5832004 	str	r2, [r3, #4]
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e5933000 	ldr	r3, [r3]
    115c:	e50b3008 	str	r3, [fp, #-8]
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5933004 	ldr	r3, [r3, #4]
    1168:	e51b2010 	ldr	r2, [fp, #-16]
    116c:	e1520003 	cmp	r2, r3
    1170:	8a00001e 	bhi	11f0 <malloc+0x108>
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5933004 	ldr	r3, [r3, #4]
    117c:	e51b2010 	ldr	r2, [fp, #-16]
    1180:	e1520003 	cmp	r2, r3
    1184:	1a000004 	bne	119c <malloc+0xb4>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5932000 	ldr	r2, [r3]
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e5832000 	str	r2, [r3]
    1198:	ea00000e 	b	11d8 <malloc+0xf0>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5932004 	ldr	r2, [r3, #4]
    11a4:	e51b3010 	ldr	r3, [fp, #-16]
    11a8:	e0422003 	sub	r2, r2, r3
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5832004 	str	r2, [r3, #4]
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933004 	ldr	r3, [r3, #4]
    11bc:	e1a03183 	lsl	r3, r3, #3
    11c0:	e51b2008 	ldr	r2, [fp, #-8]
    11c4:	e0823003 	add	r3, r2, r3
    11c8:	e50b3008 	str	r3, [fp, #-8]
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e51b2010 	ldr	r2, [fp, #-16]
    11d4:	e5832004 	str	r2, [r3, #4]
    11d8:	e59f2068 	ldr	r2, [pc, #104]	@ 1248 <malloc+0x160>
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5823000 	str	r3, [r2]
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e2833008 	add	r3, r3, #8
    11ec:	ea000012 	b	123c <malloc+0x154>
    11f0:	e59f3050 	ldr	r3, [pc, #80]	@ 1248 <malloc+0x160>
    11f4:	e5933000 	ldr	r3, [r3]
    11f8:	e51b2008 	ldr	r2, [fp, #-8]
    11fc:	e1520003 	cmp	r2, r3
    1200:	1a000007 	bne	1224 <malloc+0x13c>
    1204:	e51b0010 	ldr	r0, [fp, #-16]
    1208:	ebffff94 	bl	1060 <morecore>
    120c:	e50b0008 	str	r0, [fp, #-8]
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e3530000 	cmp	r3, #0
    1218:	1a000001 	bne	1224 <malloc+0x13c>
    121c:	e3a03000 	mov	r3, #0
    1220:	ea000005 	b	123c <malloc+0x154>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e50b300c 	str	r3, [fp, #-12]
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e50b3008 	str	r3, [fp, #-8]
    1238:	eaffffc8 	b	1160 <malloc+0x78>
    123c:	e1a00003 	mov	r0, r3
    1240:	e24bd004 	sub	sp, fp, #4
    1244:	e8bd8800 	pop	{fp, pc}
    1248:	000013a0 	.word	0x000013a0
    124c:	00001398 	.word	0x00001398

00001250 <__udivsi3>:
    1250:	e2512001 	subs	r2, r1, #1
    1254:	012fff1e 	bxeq	lr
    1258:	3a000036 	bcc	1338 <__udivsi3+0xe8>
    125c:	e1500001 	cmp	r0, r1
    1260:	9a000022 	bls	12f0 <__udivsi3+0xa0>
    1264:	e1110002 	tst	r1, r2
    1268:	0a000023 	beq	12fc <__udivsi3+0xac>
    126c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1270:	01a01181 	lsleq	r1, r1, #3
    1274:	03a03008 	moveq	r3, #8
    1278:	13a03001 	movne	r3, #1
    127c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1280:	31510000 	cmpcc	r1, r0
    1284:	31a01201 	lslcc	r1, r1, #4
    1288:	31a03203 	lslcc	r3, r3, #4
    128c:	3afffffa 	bcc	127c <__udivsi3+0x2c>
    1290:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1294:	31510000 	cmpcc	r1, r0
    1298:	31a01081 	lslcc	r1, r1, #1
    129c:	31a03083 	lslcc	r3, r3, #1
    12a0:	3afffffa 	bcc	1290 <__udivsi3+0x40>
    12a4:	e3a02000 	mov	r2, #0
    12a8:	e1500001 	cmp	r0, r1
    12ac:	20400001 	subcs	r0, r0, r1
    12b0:	21822003 	orrcs	r2, r2, r3
    12b4:	e15000a1 	cmp	r0, r1, lsr #1
    12b8:	204000a1 	subcs	r0, r0, r1, lsr #1
    12bc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12c0:	e1500121 	cmp	r0, r1, lsr #2
    12c4:	20400121 	subcs	r0, r0, r1, lsr #2
    12c8:	21822123 	orrcs	r2, r2, r3, lsr #2
    12cc:	e15001a1 	cmp	r0, r1, lsr #3
    12d0:	204001a1 	subcs	r0, r0, r1, lsr #3
    12d4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12d8:	e3500000 	cmp	r0, #0
    12dc:	11b03223 	lsrsne	r3, r3, #4
    12e0:	11a01221 	lsrne	r1, r1, #4
    12e4:	1affffef 	bne	12a8 <__udivsi3+0x58>
    12e8:	e1a00002 	mov	r0, r2
    12ec:	e12fff1e 	bx	lr
    12f0:	03a00001 	moveq	r0, #1
    12f4:	13a00000 	movne	r0, #0
    12f8:	e12fff1e 	bx	lr
    12fc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1300:	21a01821 	lsrcs	r1, r1, #16
    1304:	23a02010 	movcs	r2, #16
    1308:	33a02000 	movcc	r2, #0
    130c:	e3510c01 	cmp	r1, #256	@ 0x100
    1310:	21a01421 	lsrcs	r1, r1, #8
    1314:	22822008 	addcs	r2, r2, #8
    1318:	e3510010 	cmp	r1, #16
    131c:	21a01221 	lsrcs	r1, r1, #4
    1320:	22822004 	addcs	r2, r2, #4
    1324:	e3510004 	cmp	r1, #4
    1328:	82822003 	addhi	r2, r2, #3
    132c:	908220a1 	addls	r2, r2, r1, lsr #1
    1330:	e1a00230 	lsr	r0, r0, r2
    1334:	e12fff1e 	bx	lr
    1338:	e3500000 	cmp	r0, #0
    133c:	13e00000 	mvnne	r0, #0
    1340:	ea000007 	b	1364 <__aeabi_idiv0>

00001344 <__aeabi_uidivmod>:
    1344:	e3510000 	cmp	r1, #0
    1348:	0afffffa 	beq	1338 <__udivsi3+0xe8>
    134c:	e92d4003 	push	{r0, r1, lr}
    1350:	ebffffbe 	bl	1250 <__udivsi3>
    1354:	e8bd4006 	pop	{r1, r2, lr}
    1358:	e0030092 	mul	r3, r2, r0
    135c:	e0411003 	sub	r1, r1, r3
    1360:	e12fff1e 	bx	lr

00001364 <__aeabi_idiv0>:
    1364:	e12fff1e 	bx	lr
