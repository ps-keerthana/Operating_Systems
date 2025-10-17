
_pagetest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f10a4 	ldr	r1, [pc, #164]	@ b8 <main+0xb8>
      10:	e3a00001 	mov	r0, #1
      14:	eb000337 	bl	cf8 <printf>
      18:	e3a00a01 	mov	r0, #4096	@ 0x1000
      1c:	eb00028f 	bl	a60 <sbrk>
      20:	e50b0008 	str	r0, [fp, #-8]
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e3730001 	cmn	r3, #1
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1084 	ldr	r1, [pc, #132]	@ bc <main+0xbc>
      34:	e3a00001 	mov	r0, #1
      38:	eb00032e 	bl	cf8 <printf>
      3c:	eb0001ee 	bl	7fc <exit>
      40:	e51b2008 	ldr	r2, [fp, #-8]
      44:	e59f1074 	ldr	r1, [pc, #116]	@ c0 <main+0xc0>
      48:	e3a00001 	mov	r0, #1
      4c:	eb000329 	bl	cf8 <printf>
      50:	e59f106c 	ldr	r1, [pc, #108]	@ c4 <main+0xc4>
      54:	e3a00001 	mov	r0, #1
      58:	eb000326 	bl	cf8 <printf>
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e3a02048 	mov	r2, #72	@ 0x48
      64:	e5c32000 	strb	r2, [r3]
      68:	e51b3008 	ldr	r3, [fp, #-8]
      6c:	e2833b01 	add	r3, r3, #1024	@ 0x400
      70:	e3a02069 	mov	r2, #105	@ 0x69
      74:	e5c32000 	strb	r2, [r3]
      78:	e59f1048 	ldr	r1, [pc, #72]	@ c8 <main+0xc8>
      7c:	e3a00001 	mov	r0, #1
      80:	eb00031c 	bl	cf8 <printf>
      84:	e51b3008 	ldr	r3, [fp, #-8]
      88:	e5d33000 	ldrb	r3, [r3]
      8c:	e1a02003 	mov	r2, r3
      90:	e51b3008 	ldr	r3, [fp, #-8]
      94:	e2833b01 	add	r3, r3, #1024	@ 0x400
      98:	e5d33000 	ldrb	r3, [r3]
      9c:	e59f1028 	ldr	r1, [pc, #40]	@ cc <main+0xcc>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb000313 	bl	cf8 <printf>
      a8:	e59f1020 	ldr	r1, [pc, #32]	@ d0 <main+0xd0>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000310 	bl	cf8 <printf>
      b4:	eb0001d0 	bl	7fc <exit>
      b8:	000013b4 	.word	0x000013b4
      bc:	000013d8 	.word	0x000013d8
      c0:	000013fc 	.word	0x000013fc
      c4:	0000142c 	.word	0x0000142c
      c8:	00001474 	.word	0x00001474
      cc:	000014a0 	.word	0x000014a0
      d0:	000014d4 	.word	0x000014d4

000000d4 <pg_pte>:
      d4:	e92d4800 	push	{fp, lr}
      d8:	e28db004 	add	fp, sp, #4
      dc:	e24dd008 	sub	sp, sp, #8
      e0:	e50b0008 	str	r0, [fp, #-8]
      e4:	e51b1008 	ldr	r1, [fp, #-8]
      e8:	e3a00065 	mov	r0, #101	@ 0x65
      ec:	eb0002a3 	bl	b80 <syscall>
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
     114:	e3a00066 	mov	r0, #102	@ 0x66
     118:	eb000298 	bl	b80 <syscall>
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
     140:	e3a00067 	mov	r0, #103	@ 0x67
     144:	eb00028d 	bl	b80 <syscall>
     148:	e1a03000 	mov	r3, r0
     14c:	e1a00003 	mov	r0, r3
     150:	e24bd004 	sub	sp, fp, #4
     154:	e8bd8800 	pop	{fp, pc}

00000158 <kpt>:
     158:	e92d4800 	push	{fp, lr}
     15c:	e28db004 	add	fp, sp, #4
     160:	e3a00068 	mov	r0, #104	@ 0x68
     164:	eb000285 	bl	b80 <syscall>
     168:	e1a03000 	mov	r3, r0
     16c:	e1a00003 	mov	r0, r3
     170:	e8bd8800 	pop	{fp, pc}

00000174 <ugetpid>:
     174:	e92d4800 	push	{fp, lr}
     178:	e28db004 	add	fp, sp, #4
     17c:	e3a00069 	mov	r0, #105	@ 0x69
     180:	eb00027e 	bl	b80 <syscall>
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
     484:	eb0000f7 	bl	868 <read>
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
     52c:	eb0000fa 	bl	91c <open>
     530:	e50b0008 	str	r0, [fp, #-8]
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e3530000 	cmp	r3, #0
     53c:	aa000001 	bge	548 <stat+0x38>
     540:	e3e03000 	mvn	r3, #0
     544:	ea000006 	b	564 <stat+0x54>
     548:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     54c:	e51b0008 	ldr	r0, [fp, #-8]
     550:	eb00010c 	bl	988 <fstat>
     554:	e50b000c 	str	r0, [fp, #-12]
     558:	e51b0008 	ldr	r0, [fp, #-8]
     55c:	eb0000d3 	bl	8b0 <close>
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

000007d8 <fork>:
     7d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7dc:	e1a04003 	mov	r4, r3
     7e0:	e1a03002 	mov	r3, r2
     7e4:	e1a02001 	mov	r2, r1
     7e8:	e1a01000 	mov	r1, r0
     7ec:	e3a00001 	mov	r0, #1
     7f0:	ef000000 	svc	0x00000000
     7f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <exit>:
     7fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a00002 	mov	r0, #2
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <wait>:
     820:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a00003 	mov	r0, #3
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <pipe>:
     844:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a00004 	mov	r0, #4
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <read>:
     868:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a00005 	mov	r0, #5
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <write>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a00010 	mov	r0, #16
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <close>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a00015 	mov	r0, #21
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <kill>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a00006 	mov	r0, #6
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <exec>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a00007 	mov	r0, #7
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <open>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a0000f 	mov	r0, #15
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <mknod>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00011 	mov	r0, #17
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <unlink>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00012 	mov	r0, #18
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <fstat>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00008 	mov	r0, #8
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <link>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00013 	mov	r0, #19
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <mkdir>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00014 	mov	r0, #20
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <chdir>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00009 	mov	r0, #9
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <dup>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a0000a 	mov	r0, #10
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <getpid>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a0000b 	mov	r0, #11
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <sbrk>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a0000c 	mov	r0, #12
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <sleep>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a0000d 	mov	r0, #13
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <uptime>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a0000e 	mov	r0, #14
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <proclist>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00016 	mov	r0, #22
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <settickets>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00017 	mov	r0, #23
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <srand>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00018 	mov	r0, #24
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <getpinfo>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00019 	mov	r0, #25
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <print_pt>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0006a 	mov	r0, #106	@ 0x6a
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <syscall>:
     b80:	ef000000 	svc	0x00000000
     b84:	e12fff1e 	bx	lr

00000b88 <putc>:
     b88:	e92d4800 	push	{fp, lr}
     b8c:	e28db004 	add	fp, sp, #4
     b90:	e24dd008 	sub	sp, sp, #8
     b94:	e50b0008 	str	r0, [fp, #-8]
     b98:	e1a03001 	mov	r3, r1
     b9c:	e54b3009 	strb	r3, [fp, #-9]
     ba0:	e24b3009 	sub	r3, fp, #9
     ba4:	e3a02001 	mov	r2, #1
     ba8:	e1a01003 	mov	r1, r3
     bac:	e51b0008 	ldr	r0, [fp, #-8]
     bb0:	ebffff35 	bl	88c <write>
     bb4:	e1a00000 	nop			@ (mov r0, r0)
     bb8:	e24bd004 	sub	sp, fp, #4
     bbc:	e8bd8800 	pop	{fp, pc}

00000bc0 <printint>:
     bc0:	e92d4800 	push	{fp, lr}
     bc4:	e28db004 	add	fp, sp, #4
     bc8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bcc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bd0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bd4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bd8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     bdc:	e3a03000 	mov	r3, #0
     be0:	e50b300c 	str	r3, [fp, #-12]
     be4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     be8:	e3530000 	cmp	r3, #0
     bec:	0a000008 	beq	c14 <printint+0x54>
     bf0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bf4:	e3530000 	cmp	r3, #0
     bf8:	aa000005 	bge	c14 <printint+0x54>
     bfc:	e3a03001 	mov	r3, #1
     c00:	e50b300c 	str	r3, [fp, #-12]
     c04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c08:	e2633000 	rsb	r3, r3, #0
     c0c:	e50b3010 	str	r3, [fp, #-16]
     c10:	ea000001 	b	c1c <printint+0x5c>
     c14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c18:	e50b3010 	str	r3, [fp, #-16]
     c1c:	e3a03000 	mov	r3, #0
     c20:	e50b3008 	str	r3, [fp, #-8]
     c24:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c28:	e51b3010 	ldr	r3, [fp, #-16]
     c2c:	e1a01002 	mov	r1, r2
     c30:	e1a00003 	mov	r0, r3
     c34:	eb0001d5 	bl	1390 <__aeabi_uidivmod>
     c38:	e1a03001 	mov	r3, r1
     c3c:	e1a01003 	mov	r1, r3
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e2832001 	add	r2, r3, #1
     c48:	e50b2008 	str	r2, [fp, #-8]
     c4c:	e59f20a0 	ldr	r2, [pc, #160]	@ cf4 <printint+0x134>
     c50:	e7d22001 	ldrb	r2, [r2, r1]
     c54:	e2433004 	sub	r3, r3, #4
     c58:	e083300b 	add	r3, r3, fp
     c5c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c60:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c64:	e1a01003 	mov	r1, r3
     c68:	e51b0010 	ldr	r0, [fp, #-16]
     c6c:	eb00018a 	bl	129c <__udivsi3>
     c70:	e1a03000 	mov	r3, r0
     c74:	e50b3010 	str	r3, [fp, #-16]
     c78:	e51b3010 	ldr	r3, [fp, #-16]
     c7c:	e3530000 	cmp	r3, #0
     c80:	1affffe7 	bne	c24 <printint+0x64>
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e3530000 	cmp	r3, #0
     c8c:	0a00000e 	beq	ccc <printint+0x10c>
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e2832001 	add	r2, r3, #1
     c98:	e50b2008 	str	r2, [fp, #-8]
     c9c:	e2433004 	sub	r3, r3, #4
     ca0:	e083300b 	add	r3, r3, fp
     ca4:	e3a0202d 	mov	r2, #45	@ 0x2d
     ca8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cac:	ea000006 	b	ccc <printint+0x10c>
     cb0:	e24b2020 	sub	r2, fp, #32
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e0823003 	add	r3, r2, r3
     cbc:	e5d33000 	ldrb	r3, [r3]
     cc0:	e1a01003 	mov	r1, r3
     cc4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cc8:	ebffffae 	bl	b88 <putc>
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e2433001 	sub	r3, r3, #1
     cd4:	e50b3008 	str	r3, [fp, #-8]
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e3530000 	cmp	r3, #0
     ce0:	aafffff2 	bge	cb0 <printint+0xf0>
     ce4:	e1a00000 	nop			@ (mov r0, r0)
     ce8:	e1a00000 	nop			@ (mov r0, r0)
     cec:	e24bd004 	sub	sp, fp, #4
     cf0:	e8bd8800 	pop	{fp, pc}
     cf4:	000014fc 	.word	0x000014fc

00000cf8 <printf>:
     cf8:	e92d000e 	push	{r1, r2, r3}
     cfc:	e92d4800 	push	{fp, lr}
     d00:	e28db004 	add	fp, sp, #4
     d04:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d08:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d0c:	e3a03000 	mov	r3, #0
     d10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d14:	e28b3008 	add	r3, fp, #8
     d18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d1c:	e3a03000 	mov	r3, #0
     d20:	e50b3010 	str	r3, [fp, #-16]
     d24:	ea000074 	b	efc <printf+0x204>
     d28:	e59b2004 	ldr	r2, [fp, #4]
     d2c:	e51b3010 	ldr	r3, [fp, #-16]
     d30:	e0823003 	add	r3, r2, r3
     d34:	e5d33000 	ldrb	r3, [r3]
     d38:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d40:	e3530000 	cmp	r3, #0
     d44:	1a00000b 	bne	d78 <printf+0x80>
     d48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d4c:	e3530025 	cmp	r3, #37	@ 0x25
     d50:	1a000002 	bne	d60 <printf+0x68>
     d54:	e3a03025 	mov	r3, #37	@ 0x25
     d58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d5c:	ea000063 	b	ef0 <printf+0x1f8>
     d60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d64:	e6ef3073 	uxtb	r3, r3
     d68:	e1a01003 	mov	r1, r3
     d6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d70:	ebffff84 	bl	b88 <putc>
     d74:	ea00005d 	b	ef0 <printf+0x1f8>
     d78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d7c:	e3530025 	cmp	r3, #37	@ 0x25
     d80:	1a00005a 	bne	ef0 <printf+0x1f8>
     d84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d88:	e3530064 	cmp	r3, #100	@ 0x64
     d8c:	1a00000a 	bne	dbc <printf+0xc4>
     d90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e1a01003 	mov	r1, r3
     d9c:	e3a03001 	mov	r3, #1
     da0:	e3a0200a 	mov	r2, #10
     da4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da8:	ebffff84 	bl	bc0 <printint>
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e2833004 	add	r3, r3, #4
     db4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     db8:	ea00004a 	b	ee8 <printf+0x1f0>
     dbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc0:	e3530078 	cmp	r3, #120	@ 0x78
     dc4:	0a000002 	beq	dd4 <printf+0xdc>
     dc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dcc:	e3530070 	cmp	r3, #112	@ 0x70
     dd0:	1a00000a 	bne	e00 <printf+0x108>
     dd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e1a01003 	mov	r1, r3
     de0:	e3a03000 	mov	r3, #0
     de4:	e3a02010 	mov	r2, #16
     de8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dec:	ebffff73 	bl	bc0 <printint>
     df0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df4:	e2833004 	add	r3, r3, #4
     df8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	ea000039 	b	ee8 <printf+0x1f0>
     e00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e04:	e3530073 	cmp	r3, #115	@ 0x73
     e08:	1a000018 	bne	e70 <printf+0x178>
     e0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e1c:	e2833004 	add	r3, r3, #4
     e20:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e3530000 	cmp	r3, #0
     e2c:	1a00000a 	bne	e5c <printf+0x164>
     e30:	e59f30f4 	ldr	r3, [pc, #244]	@ f2c <printf+0x234>
     e34:	e50b300c 	str	r3, [fp, #-12]
     e38:	ea000007 	b	e5c <printf+0x164>
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e5d33000 	ldrb	r3, [r3]
     e44:	e1a01003 	mov	r1, r3
     e48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e4c:	ebffff4d 	bl	b88 <putc>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e2833001 	add	r3, r3, #1
     e58:	e50b300c 	str	r3, [fp, #-12]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5d33000 	ldrb	r3, [r3]
     e64:	e3530000 	cmp	r3, #0
     e68:	1afffff3 	bne	e3c <printf+0x144>
     e6c:	ea00001d 	b	ee8 <printf+0x1f0>
     e70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e3530063 	cmp	r3, #99	@ 0x63
     e78:	1a000009 	bne	ea4 <printf+0x1ac>
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e6ef3073 	uxtb	r3, r3
     e88:	e1a01003 	mov	r1, r3
     e8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e90:	ebffff3c 	bl	b88 <putc>
     e94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e98:	e2833004 	add	r3, r3, #4
     e9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ea0:	ea000010 	b	ee8 <printf+0x1f0>
     ea4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea8:	e3530025 	cmp	r3, #37	@ 0x25
     eac:	1a000005 	bne	ec8 <printf+0x1d0>
     eb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb4:	e6ef3073 	uxtb	r3, r3
     eb8:	e1a01003 	mov	r1, r3
     ebc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ec0:	ebffff30 	bl	b88 <putc>
     ec4:	ea000007 	b	ee8 <printf+0x1f0>
     ec8:	e3a01025 	mov	r1, #37	@ 0x25
     ecc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ed0:	ebffff2c 	bl	b88 <putc>
     ed4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed8:	e6ef3073 	uxtb	r3, r3
     edc:	e1a01003 	mov	r1, r3
     ee0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ee4:	ebffff27 	bl	b88 <putc>
     ee8:	e3a03000 	mov	r3, #0
     eec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ef0:	e51b3010 	ldr	r3, [fp, #-16]
     ef4:	e2833001 	add	r3, r3, #1
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	e59b2004 	ldr	r2, [fp, #4]
     f00:	e51b3010 	ldr	r3, [fp, #-16]
     f04:	e0823003 	add	r3, r2, r3
     f08:	e5d33000 	ldrb	r3, [r3]
     f0c:	e3530000 	cmp	r3, #0
     f10:	1affff84 	bne	d28 <printf+0x30>
     f14:	e1a00000 	nop			@ (mov r0, r0)
     f18:	e1a00000 	nop			@ (mov r0, r0)
     f1c:	e24bd004 	sub	sp, fp, #4
     f20:	e8bd4800 	pop	{fp, lr}
     f24:	e28dd00c 	add	sp, sp, #12
     f28:	e12fff1e 	bx	lr
     f2c:	000014f4 	.word	0x000014f4

00000f30 <free>:
     f30:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f34:	e28db000 	add	fp, sp, #0
     f38:	e24dd014 	sub	sp, sp, #20
     f3c:	e50b0010 	str	r0, [fp, #-16]
     f40:	e51b3010 	ldr	r3, [fp, #-16]
     f44:	e2433008 	sub	r3, r3, #8
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e59f3154 	ldr	r3, [pc, #340]	@ 10a8 <free+0x178>
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	ea000010 	b	fa0 <free+0x70>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e51b2008 	ldr	r2, [fp, #-8]
     f68:	e1520003 	cmp	r2, r3
     f6c:	3a000008 	bcc	f94 <free+0x64>
     f70:	e51b200c 	ldr	r2, [fp, #-12]
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e1520003 	cmp	r2, r3
     f7c:	8a000010 	bhi	fc4 <free+0x94>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e51b200c 	ldr	r2, [fp, #-12]
     f8c:	e1520003 	cmp	r2, r3
     f90:	3a00000b 	bcc	fc4 <free+0x94>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5933000 	ldr	r3, [r3]
     f9c:	e50b3008 	str	r3, [fp, #-8]
     fa0:	e51b200c 	ldr	r2, [fp, #-12]
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e1520003 	cmp	r2, r3
     fac:	9affffea 	bls	f5c <free+0x2c>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e51b200c 	ldr	r2, [fp, #-12]
     fbc:	e1520003 	cmp	r2, r3
     fc0:	2affffe5 	bcs	f5c <free+0x2c>
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5933004 	ldr	r3, [r3, #4]
     fcc:	e1a03183 	lsl	r3, r3, #3
     fd0:	e51b200c 	ldr	r2, [fp, #-12]
     fd4:	e0822003 	add	r2, r2, r3
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e1520003 	cmp	r2, r3
     fe4:	1a00000d 	bne	1020 <free+0xf0>
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5932004 	ldr	r2, [r3, #4]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5933000 	ldr	r3, [r3]
     ff8:	e5933004 	ldr	r3, [r3, #4]
     ffc:	e0822003 	add	r2, r2, r3
    1000:	e51b300c 	ldr	r3, [fp, #-12]
    1004:	e5832004 	str	r2, [r3, #4]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e5932000 	ldr	r2, [r3]
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e5832000 	str	r2, [r3]
    101c:	ea000003 	b	1030 <free+0x100>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5932000 	ldr	r2, [r3]
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5832000 	str	r2, [r3]
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5933004 	ldr	r3, [r3, #4]
    1038:	e1a03183 	lsl	r3, r3, #3
    103c:	e51b2008 	ldr	r2, [fp, #-8]
    1040:	e0823003 	add	r3, r2, r3
    1044:	e51b200c 	ldr	r2, [fp, #-12]
    1048:	e1520003 	cmp	r2, r3
    104c:	1a00000b 	bne	1080 <free+0x150>
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5932004 	ldr	r2, [r3, #4]
    1058:	e51b300c 	ldr	r3, [fp, #-12]
    105c:	e5933004 	ldr	r3, [r3, #4]
    1060:	e0822003 	add	r2, r2, r3
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5832004 	str	r2, [r3, #4]
    106c:	e51b300c 	ldr	r3, [fp, #-12]
    1070:	e5932000 	ldr	r2, [r3]
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5832000 	str	r2, [r3]
    107c:	ea000002 	b	108c <free+0x15c>
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e51b200c 	ldr	r2, [fp, #-12]
    1088:	e5832000 	str	r2, [r3]
    108c:	e59f2014 	ldr	r2, [pc, #20]	@ 10a8 <free+0x178>
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5823000 	str	r3, [r2]
    1098:	e1a00000 	nop			@ (mov r0, r0)
    109c:	e28bd000 	add	sp, fp, #0
    10a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10a4:	e12fff1e 	bx	lr
    10a8:	00001518 	.word	0x00001518

000010ac <morecore>:
    10ac:	e92d4800 	push	{fp, lr}
    10b0:	e28db004 	add	fp, sp, #4
    10b4:	e24dd010 	sub	sp, sp, #16
    10b8:	e50b0010 	str	r0, [fp, #-16]
    10bc:	e51b3010 	ldr	r3, [fp, #-16]
    10c0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10c4:	2a000001 	bcs	10d0 <morecore+0x24>
    10c8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10cc:	e50b3010 	str	r3, [fp, #-16]
    10d0:	e51b3010 	ldr	r3, [fp, #-16]
    10d4:	e1a03183 	lsl	r3, r3, #3
    10d8:	e1a00003 	mov	r0, r3
    10dc:	ebfffe5f 	bl	a60 <sbrk>
    10e0:	e50b0008 	str	r0, [fp, #-8]
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e3730001 	cmn	r3, #1
    10ec:	1a000001 	bne	10f8 <morecore+0x4c>
    10f0:	e3a03000 	mov	r3, #0
    10f4:	ea00000a 	b	1124 <morecore+0x78>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e50b300c 	str	r3, [fp, #-12]
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e51b2010 	ldr	r2, [fp, #-16]
    1108:	e5832004 	str	r2, [r3, #4]
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e2833008 	add	r3, r3, #8
    1114:	e1a00003 	mov	r0, r3
    1118:	ebffff84 	bl	f30 <free>
    111c:	e59f300c 	ldr	r3, [pc, #12]	@ 1130 <morecore+0x84>
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e1a00003 	mov	r0, r3
    1128:	e24bd004 	sub	sp, fp, #4
    112c:	e8bd8800 	pop	{fp, pc}
    1130:	00001518 	.word	0x00001518

00001134 <malloc>:
    1134:	e92d4800 	push	{fp, lr}
    1138:	e28db004 	add	fp, sp, #4
    113c:	e24dd018 	sub	sp, sp, #24
    1140:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1144:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1148:	e2833007 	add	r3, r3, #7
    114c:	e1a031a3 	lsr	r3, r3, #3
    1150:	e2833001 	add	r3, r3, #1
    1154:	e50b3010 	str	r3, [fp, #-16]
    1158:	e59f3134 	ldr	r3, [pc, #308]	@ 1294 <malloc+0x160>
    115c:	e5933000 	ldr	r3, [r3]
    1160:	e50b300c 	str	r3, [fp, #-12]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e3530000 	cmp	r3, #0
    116c:	1a00000b 	bne	11a0 <malloc+0x6c>
    1170:	e59f3120 	ldr	r3, [pc, #288]	@ 1298 <malloc+0x164>
    1174:	e50b300c 	str	r3, [fp, #-12]
    1178:	e59f2114 	ldr	r2, [pc, #276]	@ 1294 <malloc+0x160>
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5823000 	str	r3, [r2]
    1184:	e59f3108 	ldr	r3, [pc, #264]	@ 1294 <malloc+0x160>
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e59f2104 	ldr	r2, [pc, #260]	@ 1298 <malloc+0x164>
    1190:	e5823000 	str	r3, [r2]
    1194:	e59f30fc 	ldr	r3, [pc, #252]	@ 1298 <malloc+0x164>
    1198:	e3a02000 	mov	r2, #0
    119c:	e5832004 	str	r2, [r3, #4]
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e50b3008 	str	r3, [fp, #-8]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5933004 	ldr	r3, [r3, #4]
    11b4:	e51b2010 	ldr	r2, [fp, #-16]
    11b8:	e1520003 	cmp	r2, r3
    11bc:	8a00001e 	bhi	123c <malloc+0x108>
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5933004 	ldr	r3, [r3, #4]
    11c8:	e51b2010 	ldr	r2, [fp, #-16]
    11cc:	e1520003 	cmp	r2, r3
    11d0:	1a000004 	bne	11e8 <malloc+0xb4>
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e5932000 	ldr	r2, [r3]
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5832000 	str	r2, [r3]
    11e4:	ea00000e 	b	1224 <malloc+0xf0>
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e5932004 	ldr	r2, [r3, #4]
    11f0:	e51b3010 	ldr	r3, [fp, #-16]
    11f4:	e0422003 	sub	r2, r2, r3
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5832004 	str	r2, [r3, #4]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5933004 	ldr	r3, [r3, #4]
    1208:	e1a03183 	lsl	r3, r3, #3
    120c:	e51b2008 	ldr	r2, [fp, #-8]
    1210:	e0823003 	add	r3, r2, r3
    1214:	e50b3008 	str	r3, [fp, #-8]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e51b2010 	ldr	r2, [fp, #-16]
    1220:	e5832004 	str	r2, [r3, #4]
    1224:	e59f2068 	ldr	r2, [pc, #104]	@ 1294 <malloc+0x160>
    1228:	e51b300c 	ldr	r3, [fp, #-12]
    122c:	e5823000 	str	r3, [r2]
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e2833008 	add	r3, r3, #8
    1238:	ea000012 	b	1288 <malloc+0x154>
    123c:	e59f3050 	ldr	r3, [pc, #80]	@ 1294 <malloc+0x160>
    1240:	e5933000 	ldr	r3, [r3]
    1244:	e51b2008 	ldr	r2, [fp, #-8]
    1248:	e1520003 	cmp	r2, r3
    124c:	1a000007 	bne	1270 <malloc+0x13c>
    1250:	e51b0010 	ldr	r0, [fp, #-16]
    1254:	ebffff94 	bl	10ac <morecore>
    1258:	e50b0008 	str	r0, [fp, #-8]
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e3530000 	cmp	r3, #0
    1264:	1a000001 	bne	1270 <malloc+0x13c>
    1268:	e3a03000 	mov	r3, #0
    126c:	ea000005 	b	1288 <malloc+0x154>
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e50b300c 	str	r3, [fp, #-12]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933000 	ldr	r3, [r3]
    1280:	e50b3008 	str	r3, [fp, #-8]
    1284:	eaffffc8 	b	11ac <malloc+0x78>
    1288:	e1a00003 	mov	r0, r3
    128c:	e24bd004 	sub	sp, fp, #4
    1290:	e8bd8800 	pop	{fp, pc}
    1294:	00001518 	.word	0x00001518
    1298:	00001510 	.word	0x00001510

0000129c <__udivsi3>:
    129c:	e2512001 	subs	r2, r1, #1
    12a0:	012fff1e 	bxeq	lr
    12a4:	3a000036 	bcc	1384 <__udivsi3+0xe8>
    12a8:	e1500001 	cmp	r0, r1
    12ac:	9a000022 	bls	133c <__udivsi3+0xa0>
    12b0:	e1110002 	tst	r1, r2
    12b4:	0a000023 	beq	1348 <__udivsi3+0xac>
    12b8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12bc:	01a01181 	lsleq	r1, r1, #3
    12c0:	03a03008 	moveq	r3, #8
    12c4:	13a03001 	movne	r3, #1
    12c8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12cc:	31510000 	cmpcc	r1, r0
    12d0:	31a01201 	lslcc	r1, r1, #4
    12d4:	31a03203 	lslcc	r3, r3, #4
    12d8:	3afffffa 	bcc	12c8 <__udivsi3+0x2c>
    12dc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12e0:	31510000 	cmpcc	r1, r0
    12e4:	31a01081 	lslcc	r1, r1, #1
    12e8:	31a03083 	lslcc	r3, r3, #1
    12ec:	3afffffa 	bcc	12dc <__udivsi3+0x40>
    12f0:	e3a02000 	mov	r2, #0
    12f4:	e1500001 	cmp	r0, r1
    12f8:	20400001 	subcs	r0, r0, r1
    12fc:	21822003 	orrcs	r2, r2, r3
    1300:	e15000a1 	cmp	r0, r1, lsr #1
    1304:	204000a1 	subcs	r0, r0, r1, lsr #1
    1308:	218220a3 	orrcs	r2, r2, r3, lsr #1
    130c:	e1500121 	cmp	r0, r1, lsr #2
    1310:	20400121 	subcs	r0, r0, r1, lsr #2
    1314:	21822123 	orrcs	r2, r2, r3, lsr #2
    1318:	e15001a1 	cmp	r0, r1, lsr #3
    131c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1320:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1324:	e3500000 	cmp	r0, #0
    1328:	11b03223 	lsrsne	r3, r3, #4
    132c:	11a01221 	lsrne	r1, r1, #4
    1330:	1affffef 	bne	12f4 <__udivsi3+0x58>
    1334:	e1a00002 	mov	r0, r2
    1338:	e12fff1e 	bx	lr
    133c:	03a00001 	moveq	r0, #1
    1340:	13a00000 	movne	r0, #0
    1344:	e12fff1e 	bx	lr
    1348:	e3510801 	cmp	r1, #65536	@ 0x10000
    134c:	21a01821 	lsrcs	r1, r1, #16
    1350:	23a02010 	movcs	r2, #16
    1354:	33a02000 	movcc	r2, #0
    1358:	e3510c01 	cmp	r1, #256	@ 0x100
    135c:	21a01421 	lsrcs	r1, r1, #8
    1360:	22822008 	addcs	r2, r2, #8
    1364:	e3510010 	cmp	r1, #16
    1368:	21a01221 	lsrcs	r1, r1, #4
    136c:	22822004 	addcs	r2, r2, #4
    1370:	e3510004 	cmp	r1, #4
    1374:	82822003 	addhi	r2, r2, #3
    1378:	908220a1 	addls	r2, r2, r1, lsr #1
    137c:	e1a00230 	lsr	r0, r0, r2
    1380:	e12fff1e 	bx	lr
    1384:	e3500000 	cmp	r0, #0
    1388:	13e00000 	mvnne	r0, #0
    138c:	ea000007 	b	13b0 <__aeabi_idiv0>

00001390 <__aeabi_uidivmod>:
    1390:	e3510000 	cmp	r1, #0
    1394:	0afffffa 	beq	1384 <__udivsi3+0xe8>
    1398:	e92d4003 	push	{r0, r1, lr}
    139c:	ebffffbe 	bl	129c <__udivsi3>
    13a0:	e8bd4006 	pop	{r1, r2, lr}
    13a4:	e0030092 	mul	r3, r2, r0
    13a8:	e0411003 	sub	r1, r1, r3
    13ac:	e12fff1e 	bx	lr

000013b0 <__aeabi_idiv0>:
    13b0:	e12fff1e 	bx	lr
