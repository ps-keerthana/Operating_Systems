
_testtickets:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde51 	sub	sp, sp, #1296	@ 0x510
       c:	eb0002b7 	bl	af0 <getpid>
      10:	e50b000c 	str	r0, [fp, #-12]
      14:	e51b200c 	ldr	r2, [fp, #-12]
      18:	e59f114c 	ldr	r1, [pc, #332]	@ 16c <main+0x16c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000361 	bl	dac <printf>
      24:	e3a01005 	mov	r1, #5
      28:	e51b000c 	ldr	r0, [fp, #-12]
      2c:	eb0002dc 	bl	ba4 <settickets>
      30:	e1a03000 	mov	r3, r0
      34:	e3530000 	cmp	r3, #0
      38:	1a000004 	bne	50 <main+0x50>
      3c:	e51b200c 	ldr	r2, [fp, #-12]
      40:	e59f1128 	ldr	r1, [pc, #296]	@ 170 <main+0x170>
      44:	e3a00001 	mov	r0, #1
      48:	eb000357 	bl	dac <printf>
      4c:	ea000002 	b	5c <main+0x5c>
      50:	e59f111c 	ldr	r1, [pc, #284]	@ 174 <main+0x174>
      54:	e3a00001 	mov	r0, #1
      58:	eb000353 	bl	dac <printf>
      5c:	e3a0007b 	mov	r0, #123	@ 0x7b
      60:	eb0002d8 	bl	bc8 <srand>
      64:	e59f110c 	ldr	r1, [pc, #268]	@ 178 <main+0x178>
      68:	e3a00001 	mov	r0, #1
      6c:	eb00034e 	bl	dac <printf>
      70:	e24b3c05 	sub	r3, fp, #1280	@ 0x500
      74:	e2433004 	sub	r3, r3, #4
      78:	e2433008 	sub	r3, r3, #8
      7c:	e1a00003 	mov	r0, r3
      80:	eb0002d9 	bl	bec <getpinfo>
      84:	e1a03000 	mov	r3, r0
      88:	e3530000 	cmp	r3, #0
      8c:	1a000032 	bne	15c <main+0x15c>
      90:	e59f10e4 	ldr	r1, [pc, #228]	@ 17c <main+0x17c>
      94:	e3a00001 	mov	r0, #1
      98:	eb000343 	bl	dac <printf>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	ea000028 	b	14c <main+0x14c>
      a8:	e51b3008 	ldr	r3, [fp, #-8]
      ac:	e1a03103 	lsl	r3, r3, #2
      b0:	e2433004 	sub	r3, r3, #4
      b4:	e083300b 	add	r3, r3, fp
      b8:	e5133508 	ldr	r3, [r3, #-1288]	@ 0xfffffaf8
      bc:	e3530000 	cmp	r3, #0
      c0:	0a00001e 	beq	140 <main+0x140>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e2833040 	add	r3, r3, #64	@ 0x40
      cc:	e1a03103 	lsl	r3, r3, #2
      d0:	e2433004 	sub	r3, r3, #4
      d4:	e083300b 	add	r3, r3, fp
      d8:	e5131508 	ldr	r1, [r3, #-1288]	@ 0xfffffaf8
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e2833080 	add	r3, r3, #128	@ 0x80
      e4:	e1a03103 	lsl	r3, r3, #2
      e8:	e2433004 	sub	r3, r3, #4
      ec:	e083300b 	add	r3, r3, fp
      f0:	e5130508 	ldr	r0, [r3, #-1288]	@ 0xfffffaf8
      f4:	e51b3008 	ldr	r3, [fp, #-8]
      f8:	e28330c0 	add	r3, r3, #192	@ 0xc0
      fc:	e1a03103 	lsl	r3, r3, #2
     100:	e2433004 	sub	r3, r3, #4
     104:	e083300b 	add	r3, r3, fp
     108:	e5132508 	ldr	r2, [r3, #-1288]	@ 0xfffffaf8
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2833c01 	add	r3, r3, #256	@ 0x100
     114:	e1a03103 	lsl	r3, r3, #2
     118:	e2433004 	sub	r3, r3, #4
     11c:	e083300b 	add	r3, r3, fp
     120:	e5133508 	ldr	r3, [r3, #-1288]	@ 0xfffffaf8
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e58d2000 	str	r2, [sp]
     12c:	e1a03000 	mov	r3, r0
     130:	e1a02001 	mov	r2, r1
     134:	e59f1044 	ldr	r1, [pc, #68]	@ 180 <main+0x180>
     138:	e3a00001 	mov	r0, #1
     13c:	eb00031a 	bl	dac <printf>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e353003f 	cmp	r3, #63	@ 0x3f
     154:	daffffd3 	ble	a8 <main+0xa8>
     158:	ea000002 	b	168 <main+0x168>
     15c:	e59f1020 	ldr	r1, [pc, #32]	@ 184 <main+0x184>
     160:	e3a00001 	mov	r0, #1
     164:	eb000310 	bl	dac <printf>
     168:	eb0001d0 	bl	8b0 <exit>
     16c:	00001468 	.word	0x00001468
     170:	0000147c 	.word	0x0000147c
     174:	000014a4 	.word	0x000014a4
     178:	000014bc 	.word	0x000014bc
     17c:	000014d8 	.word	0x000014d8
     180:	000014e8 	.word	0x000014e8
     184:	00001518 	.word	0x00001518

00000188 <pg_pte>:
     188:	e92d4800 	push	{fp, lr}
     18c:	e28db004 	add	fp, sp, #4
     190:	e24dd008 	sub	sp, sp, #8
     194:	e50b0008 	str	r0, [fp, #-8]
     198:	e51b1008 	ldr	r1, [fp, #-8]
     19c:	e3a00065 	mov	r0, #101	@ 0x65
     1a0:	eb0002a3 	bl	c34 <syscall>
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a00003 	mov	r0, r3
     1ac:	e24bd004 	sub	sp, fp, #4
     1b0:	e8bd8800 	pop	{fp, pc}

000001b4 <pg_pa>:
     1b4:	e92d4800 	push	{fp, lr}
     1b8:	e28db004 	add	fp, sp, #4
     1bc:	e24dd008 	sub	sp, sp, #8
     1c0:	e50b0008 	str	r0, [fp, #-8]
     1c4:	e51b1008 	ldr	r1, [fp, #-8]
     1c8:	e3a00066 	mov	r0, #102	@ 0x66
     1cc:	eb000298 	bl	c34 <syscall>
     1d0:	e1a03000 	mov	r3, r0
     1d4:	e1a00003 	mov	r0, r3
     1d8:	e24bd004 	sub	sp, fp, #4
     1dc:	e8bd8800 	pop	{fp, pc}

000001e0 <pg_flags>:
     1e0:	e92d4800 	push	{fp, lr}
     1e4:	e28db004 	add	fp, sp, #4
     1e8:	e24dd008 	sub	sp, sp, #8
     1ec:	e50b0008 	str	r0, [fp, #-8]
     1f0:	e51b1008 	ldr	r1, [fp, #-8]
     1f4:	e3a00067 	mov	r0, #103	@ 0x67
     1f8:	eb00028d 	bl	c34 <syscall>
     1fc:	e1a03000 	mov	r3, r0
     200:	e1a00003 	mov	r0, r3
     204:	e24bd004 	sub	sp, fp, #4
     208:	e8bd8800 	pop	{fp, pc}

0000020c <kpt>:
     20c:	e92d4800 	push	{fp, lr}
     210:	e28db004 	add	fp, sp, #4
     214:	e3a00068 	mov	r0, #104	@ 0x68
     218:	eb000285 	bl	c34 <syscall>
     21c:	e1a03000 	mov	r3, r0
     220:	e1a00003 	mov	r0, r3
     224:	e8bd8800 	pop	{fp, pc}

00000228 <ugetpid>:
     228:	e92d4800 	push	{fp, lr}
     22c:	e28db004 	add	fp, sp, #4
     230:	e3a00069 	mov	r0, #105	@ 0x69
     234:	eb00027e 	bl	c34 <syscall>
     238:	e1a03000 	mov	r3, r0
     23c:	e1a00003 	mov	r0, r3
     240:	e8bd8800 	pop	{fp, pc}

00000244 <strcpy>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b3010 	ldr	r3, [fp, #-16]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     268:	e2823001 	add	r3, r2, #1
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	e51b3010 	ldr	r3, [fp, #-16]
     274:	e2831001 	add	r1, r3, #1
     278:	e50b1010 	str	r1, [fp, #-16]
     27c:	e5d22000 	ldrb	r2, [r2]
     280:	e5c32000 	strb	r2, [r3]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff4 	bne	264 <strcpy+0x20>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <strcmp>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd00c 	sub	sp, sp, #12
     2b0:	e50b0008 	str	r0, [fp, #-8]
     2b4:	e50b100c 	str	r1, [fp, #-12]
     2b8:	ea000005 	b	2d4 <strcmp+0x30>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e2833001 	add	r3, r3, #1
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	0a000005 	beq	2fc <strcmp+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e5d32000 	ldrb	r2, [r3]
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	0affffef 	beq	2bc <strcmp+0x18>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e1a02003 	mov	r2, r3
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e0423003 	sub	r3, r2, r3
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strlen>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd014 	sub	sp, sp, #20
     330:	e50b0010 	str	r0, [fp, #-16]
     334:	e3a03000 	mov	r3, #0
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	ea000002 	b	34c <strlen+0x28>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e2833001 	add	r3, r3, #1
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e51b2010 	ldr	r2, [fp, #-16]
     354:	e0823003 	add	r3, r2, r3
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff6 	bne	340 <strlen+0x1c>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <memset>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd024 	sub	sp, sp, #36	@ 0x24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     39c:	e54b300d 	strb	r3, [fp, #-13]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e1a03002 	mov	r3, r2
     3a8:	e1a03403 	lsl	r3, r3, #8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e1a03803 	lsl	r3, r3, #16
     3b4:	e1a02003 	mov	r2, r3
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e1a03403 	lsl	r3, r3, #8
     3c0:	e1822003 	orr	r2, r2, r3
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e1823003 	orr	r3, r2, r3
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	ea000008 	b	3f8 <memset+0x80>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e55b200d 	ldrb	r2, [fp, #-13]
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e2433001 	sub	r3, r3, #1
     3e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3fc:	e3530000 	cmp	r3, #0
     400:	0a000003 	beq	414 <memset+0x9c>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2033003 	and	r3, r3, #3
     40c:	e3530000 	cmp	r3, #0
     410:	1affffef 	bne	3d4 <memset+0x5c>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	ea000008 	b	444 <memset+0xcc>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     428:	e5832000 	str	r2, [r3]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e2433004 	sub	r3, r3, #4
     434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     438:	e51b300c 	ldr	r3, [fp, #-12]
     43c:	e2833004 	add	r3, r3, #4
     440:	e50b300c 	str	r3, [fp, #-12]
     444:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     448:	e3530003 	cmp	r3, #3
     44c:	8afffff3 	bhi	420 <memset+0xa8>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000008 	b	480 <memset+0x108>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e55b200d 	ldrb	r2, [fp, #-13]
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e2433001 	sub	r3, r3, #1
     470:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     484:	e3530000 	cmp	r3, #0
     488:	1afffff3 	bne	45c <memset+0xe4>
     48c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     490:	e1a00003 	mov	r0, r3
     494:	e28bd000 	add	sp, fp, #0
     498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     49c:	e12fff1e 	bx	lr

000004a0 <strchr>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd00c 	sub	sp, sp, #12
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e1a03001 	mov	r3, r1
     4b4:	e54b3009 	strb	r3, [fp, #-9]
     4b8:	ea000009 	b	4e4 <strchr+0x44>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e55b2009 	ldrb	r2, [fp, #-9]
     4c8:	e1520003 	cmp	r2, r3
     4cc:	1a000001 	bne	4d8 <strchr+0x38>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	ea000007 	b	4f8 <strchr+0x58>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1afffff1 	bne	4bc <strchr+0x1c>
     4f4:	e3a03000 	mov	r3, #0
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <gets>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd018 	sub	sp, sp, #24
     514:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     518:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea000016 	b	584 <gets+0x7c>
     528:	e24b300d 	sub	r3, fp, #13
     52c:	e3a02001 	mov	r2, #1
     530:	e1a01003 	mov	r1, r3
     534:	e3a00000 	mov	r0, #0
     538:	eb0000f7 	bl	91c <read>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e3530000 	cmp	r3, #0
     548:	da000013 	ble	59c <gets+0x94>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2008 	str	r2, [fp, #-8]
     558:	e1a02003 	mov	r2, r3
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e0833002 	add	r3, r3, r2
     564:	e55b200d 	ldrb	r2, [fp, #-13]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e55b300d 	ldrb	r3, [fp, #-13]
     570:	e353000a 	cmp	r3, #10
     574:	0a000009 	beq	5a0 <gets+0x98>
     578:	e55b300d 	ldrb	r3, [fp, #-13]
     57c:	e353000d 	cmp	r3, #13
     580:	0a000006 	beq	5a0 <gets+0x98>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     590:	e1520003 	cmp	r2, r3
     594:	caffffe3 	bgt	528 <gets+0x20>
     598:	ea000000 	b	5a0 <gets+0x98>
     59c:	e1a00000 	nop			@ (mov r0, r0)
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e0823003 	add	r3, r2, r3
     5ac:	e3a02000 	mov	r2, #0
     5b0:	e5c32000 	strb	r2, [r3]
     5b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b8:	e1a00003 	mov	r0, r3
     5bc:	e24bd004 	sub	sp, fp, #4
     5c0:	e8bd8800 	pop	{fp, pc}

000005c4 <stat>:
     5c4:	e92d4800 	push	{fp, lr}
     5c8:	e28db004 	add	fp, sp, #4
     5cc:	e24dd010 	sub	sp, sp, #16
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e3a01000 	mov	r1, #0
     5dc:	e51b0010 	ldr	r0, [fp, #-16]
     5e0:	eb0000fa 	bl	9d0 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb00010c 	bl	a3c <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb0000d3 	bl	964 <close>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e1a00003 	mov	r0, r3
     61c:	e24bd004 	sub	sp, fp, #4
     620:	e8bd8800 	pop	{fp, pc}

00000624 <atoi>:
     624:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     628:	e28db000 	add	fp, sp, #0
     62c:	e24dd014 	sub	sp, sp, #20
     630:	e50b0010 	str	r0, [fp, #-16]
     634:	e3a03000 	mov	r3, #0
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	ea00000c 	b	674 <atoi+0x50>
     640:	e51b2008 	ldr	r2, [fp, #-8]
     644:	e1a03002 	mov	r3, r2
     648:	e1a03103 	lsl	r3, r3, #2
     64c:	e0833002 	add	r3, r3, r2
     650:	e1a03083 	lsl	r3, r3, #1
     654:	e1a01003 	mov	r1, r3
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e2832001 	add	r2, r3, #1
     660:	e50b2010 	str	r2, [fp, #-16]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e0813003 	add	r3, r1, r3
     66c:	e2433030 	sub	r3, r3, #48	@ 0x30
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e5d33000 	ldrb	r3, [r3]
     67c:	e353002f 	cmp	r3, #47	@ 0x2f
     680:	9a000003 	bls	694 <atoi+0x70>
     684:	e51b3010 	ldr	r3, [fp, #-16]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530039 	cmp	r3, #57	@ 0x39
     690:	9affffea 	bls	640 <atoi+0x1c>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <memmove>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd01c 	sub	sp, sp, #28
     6b4:	e50b0010 	str	r0, [fp, #-16]
     6b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6cc:	e50b300c 	str	r3, [fp, #-12]
     6d0:	ea000007 	b	6f4 <memmove+0x4c>
     6d4:	e51b200c 	ldr	r2, [fp, #-12]
     6d8:	e2823001 	add	r3, r2, #1
     6dc:	e50b300c 	str	r3, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e2831001 	add	r1, r3, #1
     6e8:	e50b1008 	str	r1, [fp, #-8]
     6ec:	e5d22000 	ldrb	r2, [r2]
     6f0:	e5c32000 	strb	r2, [r3]
     6f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f8:	e2432001 	sub	r2, r3, #1
     6fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     700:	e3530000 	cmp	r3, #0
     704:	cafffff2 	bgt	6d4 <memmove+0x2c>
     708:	e51b3010 	ldr	r3, [fp, #-16]
     70c:	e1a00003 	mov	r0, r3
     710:	e28bd000 	add	sp, fp, #0
     714:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <strncmp>:
     71c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     720:	e28db000 	add	fp, sp, #0
     724:	e24dd014 	sub	sp, sp, #20
     728:	e50b0008 	str	r0, [fp, #-8]
     72c:	e50b100c 	str	r1, [fp, #-12]
     730:	e50b2010 	str	r2, [fp, #-16]
     734:	ea000008 	b	75c <strncmp+0x40>
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e2833001 	add	r3, r3, #1
     740:	e50b3008 	str	r3, [fp, #-8]
     744:	e51b300c 	ldr	r3, [fp, #-12]
     748:	e2833001 	add	r3, r3, #1
     74c:	e50b300c 	str	r3, [fp, #-12]
     750:	e51b3010 	ldr	r3, [fp, #-16]
     754:	e2433001 	sub	r3, r3, #1
     758:	e50b3010 	str	r3, [fp, #-16]
     75c:	e51b3010 	ldr	r3, [fp, #-16]
     760:	e3530000 	cmp	r3, #0
     764:	da00000d 	ble	7a0 <strncmp+0x84>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e5d33000 	ldrb	r3, [r3]
     770:	e3530000 	cmp	r3, #0
     774:	0a000009 	beq	7a0 <strncmp+0x84>
     778:	e51b300c 	ldr	r3, [fp, #-12]
     77c:	e5d33000 	ldrb	r3, [r3]
     780:	e3530000 	cmp	r3, #0
     784:	0a000005 	beq	7a0 <strncmp+0x84>
     788:	e51b3008 	ldr	r3, [fp, #-8]
     78c:	e5d32000 	ldrb	r2, [r3]
     790:	e51b300c 	ldr	r3, [fp, #-12]
     794:	e5d33000 	ldrb	r3, [r3]
     798:	e1520003 	cmp	r2, r3
     79c:	0affffe5 	beq	738 <strncmp+0x1c>
     7a0:	e51b3010 	ldr	r3, [fp, #-16]
     7a4:	e3530000 	cmp	r3, #0
     7a8:	1a000001 	bne	7b4 <strncmp+0x98>
     7ac:	e3a03000 	mov	r3, #0
     7b0:	ea000005 	b	7cc <strncmp+0xb0>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5d33000 	ldrb	r3, [r3]
     7bc:	e1a02003 	mov	r2, r3
     7c0:	e51b300c 	ldr	r3, [fp, #-12]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e0423003 	sub	r3, r2, r3
     7cc:	e1a00003 	mov	r0, r3
     7d0:	e28bd000 	add	sp, fp, #0
     7d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <strncpy>:
     7dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7e0:	e28db000 	add	fp, sp, #0
     7e4:	e24dd01c 	sub	sp, sp, #28
     7e8:	e50b0010 	str	r0, [fp, #-16]
     7ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7f4:	e51b3010 	ldr	r3, [fp, #-16]
     7f8:	e50b3008 	str	r3, [fp, #-8]
     7fc:	ea00000a 	b	82c <strncpy+0x50>
     800:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     804:	e2823001 	add	r3, r2, #1
     808:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e2831001 	add	r1, r3, #1
     814:	e50b1008 	str	r1, [fp, #-8]
     818:	e5d22000 	ldrb	r2, [r2]
     81c:	e5c32000 	strb	r2, [r3]
     820:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     824:	e2433001 	sub	r3, r3, #1
     828:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     82c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     830:	e3530000 	cmp	r3, #0
     834:	da00000c 	ble	86c <strncpy+0x90>
     838:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     83c:	e5d33000 	ldrb	r3, [r3]
     840:	e3530000 	cmp	r3, #0
     844:	1affffed 	bne	800 <strncpy+0x24>
     848:	ea000007 	b	86c <strncpy+0x90>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e2832001 	add	r2, r3, #1
     854:	e50b2008 	str	r2, [fp, #-8]
     858:	e3a02000 	mov	r2, #0
     85c:	e5c32000 	strb	r2, [r3]
     860:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     864:	e2433001 	sub	r3, r3, #1
     868:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     86c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     870:	e3530000 	cmp	r3, #0
     874:	cafffff4 	bgt	84c <strncpy+0x70>
     878:	e51b3010 	ldr	r3, [fp, #-16]
     87c:	e1a00003 	mov	r0, r3
     880:	e28bd000 	add	sp, fp, #0
     884:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <fork>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a00001 	mov	r0, #1
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <exit>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a00002 	mov	r0, #2
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <wait>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a00003 	mov	r0, #3
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <pipe>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a00004 	mov	r0, #4
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <read>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00005 	mov	r0, #5
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <write>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00010 	mov	r0, #16
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <close>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00015 	mov	r0, #21
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <kill>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00006 	mov	r0, #6
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <exec>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00007 	mov	r0, #7
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <open>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a0000f 	mov	r0, #15
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <mknod>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00011 	mov	r0, #17
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <unlink>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00012 	mov	r0, #18
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <fstat>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00008 	mov	r0, #8
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <link>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00013 	mov	r0, #19
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <mkdir>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00014 	mov	r0, #20
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <chdir>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00009 	mov	r0, #9
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <dup>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a0000a 	mov	r0, #10
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <getpid>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a0000b 	mov	r0, #11
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <sbrk>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a0000c 	mov	r0, #12
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <sleep>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a0000d 	mov	r0, #13
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <uptime>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000e 	mov	r0, #14
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <proclist>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00016 	mov	r0, #22
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <settickets>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00017 	mov	r0, #23
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <srand>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00018 	mov	r0, #24
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <getpinfo>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00019 	mov	r0, #25
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <print_pt>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a0006a 	mov	r0, #106	@ 0x6a
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <syscall>:
     c34:	ef000000 	svc	0x00000000
     c38:	e12fff1e 	bx	lr

00000c3c <putc>:
     c3c:	e92d4800 	push	{fp, lr}
     c40:	e28db004 	add	fp, sp, #4
     c44:	e24dd008 	sub	sp, sp, #8
     c48:	e50b0008 	str	r0, [fp, #-8]
     c4c:	e1a03001 	mov	r3, r1
     c50:	e54b3009 	strb	r3, [fp, #-9]
     c54:	e24b3009 	sub	r3, fp, #9
     c58:	e3a02001 	mov	r2, #1
     c5c:	e1a01003 	mov	r1, r3
     c60:	e51b0008 	ldr	r0, [fp, #-8]
     c64:	ebffff35 	bl	940 <write>
     c68:	e1a00000 	nop			@ (mov r0, r0)
     c6c:	e24bd004 	sub	sp, fp, #4
     c70:	e8bd8800 	pop	{fp, pc}

00000c74 <printint>:
     c74:	e92d4800 	push	{fp, lr}
     c78:	e28db004 	add	fp, sp, #4
     c7c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c80:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c84:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c88:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c8c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c90:	e3a03000 	mov	r3, #0
     c94:	e50b300c 	str	r3, [fp, #-12]
     c98:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c9c:	e3530000 	cmp	r3, #0
     ca0:	0a000008 	beq	cc8 <printint+0x54>
     ca4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ca8:	e3530000 	cmp	r3, #0
     cac:	aa000005 	bge	cc8 <printint+0x54>
     cb0:	e3a03001 	mov	r3, #1
     cb4:	e50b300c 	str	r3, [fp, #-12]
     cb8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     cbc:	e2633000 	rsb	r3, r3, #0
     cc0:	e50b3010 	str	r3, [fp, #-16]
     cc4:	ea000001 	b	cd0 <printint+0x5c>
     cc8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ccc:	e50b3010 	str	r3, [fp, #-16]
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e50b3008 	str	r3, [fp, #-8]
     cd8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     cdc:	e51b3010 	ldr	r3, [fp, #-16]
     ce0:	e1a01002 	mov	r1, r2
     ce4:	e1a00003 	mov	r0, r3
     ce8:	eb0001d5 	bl	1444 <__aeabi_uidivmod>
     cec:	e1a03001 	mov	r3, r1
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e2832001 	add	r2, r3, #1
     cfc:	e50b2008 	str	r2, [fp, #-8]
     d00:	e59f20a0 	ldr	r2, [pc, #160]	@ da8 <printint+0x134>
     d04:	e7d22001 	ldrb	r2, [r2, r1]
     d08:	e2433004 	sub	r3, r3, #4
     d0c:	e083300b 	add	r3, r3, fp
     d10:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d14:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d18:	e1a01003 	mov	r1, r3
     d1c:	e51b0010 	ldr	r0, [fp, #-16]
     d20:	eb00018a 	bl	1350 <__udivsi3>
     d24:	e1a03000 	mov	r3, r0
     d28:	e50b3010 	str	r3, [fp, #-16]
     d2c:	e51b3010 	ldr	r3, [fp, #-16]
     d30:	e3530000 	cmp	r3, #0
     d34:	1affffe7 	bne	cd8 <printint+0x64>
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e3530000 	cmp	r3, #0
     d40:	0a00000e 	beq	d80 <printint+0x10c>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e2832001 	add	r2, r3, #1
     d4c:	e50b2008 	str	r2, [fp, #-8]
     d50:	e2433004 	sub	r3, r3, #4
     d54:	e083300b 	add	r3, r3, fp
     d58:	e3a0202d 	mov	r2, #45	@ 0x2d
     d5c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d60:	ea000006 	b	d80 <printint+0x10c>
     d64:	e24b2020 	sub	r2, fp, #32
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e0823003 	add	r3, r2, r3
     d70:	e5d33000 	ldrb	r3, [r3]
     d74:	e1a01003 	mov	r1, r3
     d78:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d7c:	ebffffae 	bl	c3c <putc>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e2433001 	sub	r3, r3, #1
     d88:	e50b3008 	str	r3, [fp, #-8]
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e3530000 	cmp	r3, #0
     d94:	aafffff2 	bge	d64 <printint+0xf0>
     d98:	e1a00000 	nop			@ (mov r0, r0)
     d9c:	e1a00000 	nop			@ (mov r0, r0)
     da0:	e24bd004 	sub	sp, fp, #4
     da4:	e8bd8800 	pop	{fp, pc}
     da8:	0000153c 	.word	0x0000153c

00000dac <printf>:
     dac:	e92d000e 	push	{r1, r2, r3}
     db0:	e92d4800 	push	{fp, lr}
     db4:	e28db004 	add	fp, sp, #4
     db8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     dbc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     dc0:	e3a03000 	mov	r3, #0
     dc4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dc8:	e28b3008 	add	r3, fp, #8
     dcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dd0:	e3a03000 	mov	r3, #0
     dd4:	e50b3010 	str	r3, [fp, #-16]
     dd8:	ea000074 	b	fb0 <printf+0x204>
     ddc:	e59b2004 	ldr	r2, [fp, #4]
     de0:	e51b3010 	ldr	r3, [fp, #-16]
     de4:	e0823003 	add	r3, r2, r3
     de8:	e5d33000 	ldrb	r3, [r3]
     dec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     df4:	e3530000 	cmp	r3, #0
     df8:	1a00000b 	bne	e2c <printf+0x80>
     dfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e00:	e3530025 	cmp	r3, #37	@ 0x25
     e04:	1a000002 	bne	e14 <printf+0x68>
     e08:	e3a03025 	mov	r3, #37	@ 0x25
     e0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e10:	ea000063 	b	fa4 <printf+0x1f8>
     e14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e18:	e6ef3073 	uxtb	r3, r3
     e1c:	e1a01003 	mov	r1, r3
     e20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e24:	ebffff84 	bl	c3c <putc>
     e28:	ea00005d 	b	fa4 <printf+0x1f8>
     e2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e30:	e3530025 	cmp	r3, #37	@ 0x25
     e34:	1a00005a 	bne	fa4 <printf+0x1f8>
     e38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e3c:	e3530064 	cmp	r3, #100	@ 0x64
     e40:	1a00000a 	bne	e70 <printf+0xc4>
     e44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e48:	e5933000 	ldr	r3, [r3]
     e4c:	e1a01003 	mov	r1, r3
     e50:	e3a03001 	mov	r3, #1
     e54:	e3a0200a 	mov	r2, #10
     e58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e5c:	ebffff84 	bl	c74 <printint>
     e60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e64:	e2833004 	add	r3, r3, #4
     e68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e6c:	ea00004a 	b	f9c <printf+0x1f0>
     e70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e3530078 	cmp	r3, #120	@ 0x78
     e78:	0a000002 	beq	e88 <printf+0xdc>
     e7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e80:	e3530070 	cmp	r3, #112	@ 0x70
     e84:	1a00000a 	bne	eb4 <printf+0x108>
     e88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e1a01003 	mov	r1, r3
     e94:	e3a03000 	mov	r3, #0
     e98:	e3a02010 	mov	r2, #16
     e9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea0:	ebffff73 	bl	c74 <printint>
     ea4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea8:	e2833004 	add	r3, r3, #4
     eac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eb0:	ea000039 	b	f9c <printf+0x1f0>
     eb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb8:	e3530073 	cmp	r3, #115	@ 0x73
     ebc:	1a000018 	bne	f24 <printf+0x178>
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ed0:	e2833004 	add	r3, r3, #4
     ed4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ed8:	e51b300c 	ldr	r3, [fp, #-12]
     edc:	e3530000 	cmp	r3, #0
     ee0:	1a00000a 	bne	f10 <printf+0x164>
     ee4:	e59f30f4 	ldr	r3, [pc, #244]	@ fe0 <printf+0x234>
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	ea000007 	b	f10 <printf+0x164>
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e5d33000 	ldrb	r3, [r3]
     ef8:	e1a01003 	mov	r1, r3
     efc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f00:	ebffff4d 	bl	c3c <putc>
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e2833001 	add	r3, r3, #1
     f0c:	e50b300c 	str	r3, [fp, #-12]
     f10:	e51b300c 	ldr	r3, [fp, #-12]
     f14:	e5d33000 	ldrb	r3, [r3]
     f18:	e3530000 	cmp	r3, #0
     f1c:	1afffff3 	bne	ef0 <printf+0x144>
     f20:	ea00001d 	b	f9c <printf+0x1f0>
     f24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f28:	e3530063 	cmp	r3, #99	@ 0x63
     f2c:	1a000009 	bne	f58 <printf+0x1ac>
     f30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e6ef3073 	uxtb	r3, r3
     f3c:	e1a01003 	mov	r1, r3
     f40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f44:	ebffff3c 	bl	c3c <putc>
     f48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f4c:	e2833004 	add	r3, r3, #4
     f50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f54:	ea000010 	b	f9c <printf+0x1f0>
     f58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e3530025 	cmp	r3, #37	@ 0x25
     f60:	1a000005 	bne	f7c <printf+0x1d0>
     f64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f68:	e6ef3073 	uxtb	r3, r3
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f74:	ebffff30 	bl	c3c <putc>
     f78:	ea000007 	b	f9c <printf+0x1f0>
     f7c:	e3a01025 	mov	r1, #37	@ 0x25
     f80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f84:	ebffff2c 	bl	c3c <putc>
     f88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f8c:	e6ef3073 	uxtb	r3, r3
     f90:	e1a01003 	mov	r1, r3
     f94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f98:	ebffff27 	bl	c3c <putc>
     f9c:	e3a03000 	mov	r3, #0
     fa0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fa4:	e51b3010 	ldr	r3, [fp, #-16]
     fa8:	e2833001 	add	r3, r3, #1
     fac:	e50b3010 	str	r3, [fp, #-16]
     fb0:	e59b2004 	ldr	r2, [fp, #4]
     fb4:	e51b3010 	ldr	r3, [fp, #-16]
     fb8:	e0823003 	add	r3, r2, r3
     fbc:	e5d33000 	ldrb	r3, [r3]
     fc0:	e3530000 	cmp	r3, #0
     fc4:	1affff84 	bne	ddc <printf+0x30>
     fc8:	e1a00000 	nop			@ (mov r0, r0)
     fcc:	e1a00000 	nop			@ (mov r0, r0)
     fd0:	e24bd004 	sub	sp, fp, #4
     fd4:	e8bd4800 	pop	{fp, lr}
     fd8:	e28dd00c 	add	sp, sp, #12
     fdc:	e12fff1e 	bx	lr
     fe0:	00001534 	.word	0x00001534

00000fe4 <free>:
     fe4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     fe8:	e28db000 	add	fp, sp, #0
     fec:	e24dd014 	sub	sp, sp, #20
     ff0:	e50b0010 	str	r0, [fp, #-16]
     ff4:	e51b3010 	ldr	r3, [fp, #-16]
     ff8:	e2433008 	sub	r3, r3, #8
     ffc:	e50b300c 	str	r3, [fp, #-12]
    1000:	e59f3154 	ldr	r3, [pc, #340]	@ 115c <free+0x178>
    1004:	e5933000 	ldr	r3, [r3]
    1008:	e50b3008 	str	r3, [fp, #-8]
    100c:	ea000010 	b	1054 <free+0x70>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e51b2008 	ldr	r2, [fp, #-8]
    101c:	e1520003 	cmp	r2, r3
    1020:	3a000008 	bcc	1048 <free+0x64>
    1024:	e51b200c 	ldr	r2, [fp, #-12]
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e1520003 	cmp	r2, r3
    1030:	8a000010 	bhi	1078 <free+0x94>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5933000 	ldr	r3, [r3]
    103c:	e51b200c 	ldr	r2, [fp, #-12]
    1040:	e1520003 	cmp	r2, r3
    1044:	3a00000b 	bcc	1078 <free+0x94>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5933000 	ldr	r3, [r3]
    1050:	e50b3008 	str	r3, [fp, #-8]
    1054:	e51b200c 	ldr	r2, [fp, #-12]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e1520003 	cmp	r2, r3
    1060:	9affffea 	bls	1010 <free+0x2c>
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5933000 	ldr	r3, [r3]
    106c:	e51b200c 	ldr	r2, [fp, #-12]
    1070:	e1520003 	cmp	r2, r3
    1074:	2affffe5 	bcs	1010 <free+0x2c>
    1078:	e51b300c 	ldr	r3, [fp, #-12]
    107c:	e5933004 	ldr	r3, [r3, #4]
    1080:	e1a03183 	lsl	r3, r3, #3
    1084:	e51b200c 	ldr	r2, [fp, #-12]
    1088:	e0822003 	add	r2, r2, r3
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e1520003 	cmp	r2, r3
    1098:	1a00000d 	bne	10d4 <free+0xf0>
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e5932004 	ldr	r2, [r3, #4]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e5933004 	ldr	r3, [r3, #4]
    10b0:	e0822003 	add	r2, r2, r3
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e5832004 	str	r2, [r3, #4]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e5932000 	ldr	r2, [r3]
    10c8:	e51b300c 	ldr	r3, [fp, #-12]
    10cc:	e5832000 	str	r2, [r3]
    10d0:	ea000003 	b	10e4 <free+0x100>
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e5932000 	ldr	r2, [r3]
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5832000 	str	r2, [r3]
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e5933004 	ldr	r3, [r3, #4]
    10ec:	e1a03183 	lsl	r3, r3, #3
    10f0:	e51b2008 	ldr	r2, [fp, #-8]
    10f4:	e0823003 	add	r3, r2, r3
    10f8:	e51b200c 	ldr	r2, [fp, #-12]
    10fc:	e1520003 	cmp	r2, r3
    1100:	1a00000b 	bne	1134 <free+0x150>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5932004 	ldr	r2, [r3, #4]
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5933004 	ldr	r3, [r3, #4]
    1114:	e0822003 	add	r2, r2, r3
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e5832004 	str	r2, [r3, #4]
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5932000 	ldr	r2, [r3]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5832000 	str	r2, [r3]
    1130:	ea000002 	b	1140 <free+0x15c>
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e51b200c 	ldr	r2, [fp, #-12]
    113c:	e5832000 	str	r2, [r3]
    1140:	e59f2014 	ldr	r2, [pc, #20]	@ 115c <free+0x178>
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5823000 	str	r3, [r2]
    114c:	e1a00000 	nop			@ (mov r0, r0)
    1150:	e28bd000 	add	sp, fp, #0
    1154:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1158:	e12fff1e 	bx	lr
    115c:	00001558 	.word	0x00001558

00001160 <morecore>:
    1160:	e92d4800 	push	{fp, lr}
    1164:	e28db004 	add	fp, sp, #4
    1168:	e24dd010 	sub	sp, sp, #16
    116c:	e50b0010 	str	r0, [fp, #-16]
    1170:	e51b3010 	ldr	r3, [fp, #-16]
    1174:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1178:	2a000001 	bcs	1184 <morecore+0x24>
    117c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1180:	e50b3010 	str	r3, [fp, #-16]
    1184:	e51b3010 	ldr	r3, [fp, #-16]
    1188:	e1a03183 	lsl	r3, r3, #3
    118c:	e1a00003 	mov	r0, r3
    1190:	ebfffe5f 	bl	b14 <sbrk>
    1194:	e50b0008 	str	r0, [fp, #-8]
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e3730001 	cmn	r3, #1
    11a0:	1a000001 	bne	11ac <morecore+0x4c>
    11a4:	e3a03000 	mov	r3, #0
    11a8:	ea00000a 	b	11d8 <morecore+0x78>
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e50b300c 	str	r3, [fp, #-12]
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e51b2010 	ldr	r2, [fp, #-16]
    11bc:	e5832004 	str	r2, [r3, #4]
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e2833008 	add	r3, r3, #8
    11c8:	e1a00003 	mov	r0, r3
    11cc:	ebffff84 	bl	fe4 <free>
    11d0:	e59f300c 	ldr	r3, [pc, #12]	@ 11e4 <morecore+0x84>
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e1a00003 	mov	r0, r3
    11dc:	e24bd004 	sub	sp, fp, #4
    11e0:	e8bd8800 	pop	{fp, pc}
    11e4:	00001558 	.word	0x00001558

000011e8 <malloc>:
    11e8:	e92d4800 	push	{fp, lr}
    11ec:	e28db004 	add	fp, sp, #4
    11f0:	e24dd018 	sub	sp, sp, #24
    11f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11fc:	e2833007 	add	r3, r3, #7
    1200:	e1a031a3 	lsr	r3, r3, #3
    1204:	e2833001 	add	r3, r3, #1
    1208:	e50b3010 	str	r3, [fp, #-16]
    120c:	e59f3134 	ldr	r3, [pc, #308]	@ 1348 <malloc+0x160>
    1210:	e5933000 	ldr	r3, [r3]
    1214:	e50b300c 	str	r3, [fp, #-12]
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e3530000 	cmp	r3, #0
    1220:	1a00000b 	bne	1254 <malloc+0x6c>
    1224:	e59f3120 	ldr	r3, [pc, #288]	@ 134c <malloc+0x164>
    1228:	e50b300c 	str	r3, [fp, #-12]
    122c:	e59f2114 	ldr	r2, [pc, #276]	@ 1348 <malloc+0x160>
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e5823000 	str	r3, [r2]
    1238:	e59f3108 	ldr	r3, [pc, #264]	@ 1348 <malloc+0x160>
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e59f2104 	ldr	r2, [pc, #260]	@ 134c <malloc+0x164>
    1244:	e5823000 	str	r3, [r2]
    1248:	e59f30fc 	ldr	r3, [pc, #252]	@ 134c <malloc+0x164>
    124c:	e3a02000 	mov	r2, #0
    1250:	e5832004 	str	r2, [r3, #4]
    1254:	e51b300c 	ldr	r3, [fp, #-12]
    1258:	e5933000 	ldr	r3, [r3]
    125c:	e50b3008 	str	r3, [fp, #-8]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933004 	ldr	r3, [r3, #4]
    1268:	e51b2010 	ldr	r2, [fp, #-16]
    126c:	e1520003 	cmp	r2, r3
    1270:	8a00001e 	bhi	12f0 <malloc+0x108>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5933004 	ldr	r3, [r3, #4]
    127c:	e51b2010 	ldr	r2, [fp, #-16]
    1280:	e1520003 	cmp	r2, r3
    1284:	1a000004 	bne	129c <malloc+0xb4>
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5932000 	ldr	r2, [r3]
    1290:	e51b300c 	ldr	r3, [fp, #-12]
    1294:	e5832000 	str	r2, [r3]
    1298:	ea00000e 	b	12d8 <malloc+0xf0>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5932004 	ldr	r2, [r3, #4]
    12a4:	e51b3010 	ldr	r3, [fp, #-16]
    12a8:	e0422003 	sub	r2, r2, r3
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e5832004 	str	r2, [r3, #4]
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5933004 	ldr	r3, [r3, #4]
    12bc:	e1a03183 	lsl	r3, r3, #3
    12c0:	e51b2008 	ldr	r2, [fp, #-8]
    12c4:	e0823003 	add	r3, r2, r3
    12c8:	e50b3008 	str	r3, [fp, #-8]
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e51b2010 	ldr	r2, [fp, #-16]
    12d4:	e5832004 	str	r2, [r3, #4]
    12d8:	e59f2068 	ldr	r2, [pc, #104]	@ 1348 <malloc+0x160>
    12dc:	e51b300c 	ldr	r3, [fp, #-12]
    12e0:	e5823000 	str	r3, [r2]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e2833008 	add	r3, r3, #8
    12ec:	ea000012 	b	133c <malloc+0x154>
    12f0:	e59f3050 	ldr	r3, [pc, #80]	@ 1348 <malloc+0x160>
    12f4:	e5933000 	ldr	r3, [r3]
    12f8:	e51b2008 	ldr	r2, [fp, #-8]
    12fc:	e1520003 	cmp	r2, r3
    1300:	1a000007 	bne	1324 <malloc+0x13c>
    1304:	e51b0010 	ldr	r0, [fp, #-16]
    1308:	ebffff94 	bl	1160 <morecore>
    130c:	e50b0008 	str	r0, [fp, #-8]
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e3530000 	cmp	r3, #0
    1318:	1a000001 	bne	1324 <malloc+0x13c>
    131c:	e3a03000 	mov	r3, #0
    1320:	ea000005 	b	133c <malloc+0x154>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e50b300c 	str	r3, [fp, #-12]
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e50b3008 	str	r3, [fp, #-8]
    1338:	eaffffc8 	b	1260 <malloc+0x78>
    133c:	e1a00003 	mov	r0, r3
    1340:	e24bd004 	sub	sp, fp, #4
    1344:	e8bd8800 	pop	{fp, pc}
    1348:	00001558 	.word	0x00001558
    134c:	00001550 	.word	0x00001550

00001350 <__udivsi3>:
    1350:	e2512001 	subs	r2, r1, #1
    1354:	012fff1e 	bxeq	lr
    1358:	3a000036 	bcc	1438 <__udivsi3+0xe8>
    135c:	e1500001 	cmp	r0, r1
    1360:	9a000022 	bls	13f0 <__udivsi3+0xa0>
    1364:	e1110002 	tst	r1, r2
    1368:	0a000023 	beq	13fc <__udivsi3+0xac>
    136c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1370:	01a01181 	lsleq	r1, r1, #3
    1374:	03a03008 	moveq	r3, #8
    1378:	13a03001 	movne	r3, #1
    137c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1380:	31510000 	cmpcc	r1, r0
    1384:	31a01201 	lslcc	r1, r1, #4
    1388:	31a03203 	lslcc	r3, r3, #4
    138c:	3afffffa 	bcc	137c <__udivsi3+0x2c>
    1390:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1394:	31510000 	cmpcc	r1, r0
    1398:	31a01081 	lslcc	r1, r1, #1
    139c:	31a03083 	lslcc	r3, r3, #1
    13a0:	3afffffa 	bcc	1390 <__udivsi3+0x40>
    13a4:	e3a02000 	mov	r2, #0
    13a8:	e1500001 	cmp	r0, r1
    13ac:	20400001 	subcs	r0, r0, r1
    13b0:	21822003 	orrcs	r2, r2, r3
    13b4:	e15000a1 	cmp	r0, r1, lsr #1
    13b8:	204000a1 	subcs	r0, r0, r1, lsr #1
    13bc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    13c0:	e1500121 	cmp	r0, r1, lsr #2
    13c4:	20400121 	subcs	r0, r0, r1, lsr #2
    13c8:	21822123 	orrcs	r2, r2, r3, lsr #2
    13cc:	e15001a1 	cmp	r0, r1, lsr #3
    13d0:	204001a1 	subcs	r0, r0, r1, lsr #3
    13d4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13d8:	e3500000 	cmp	r0, #0
    13dc:	11b03223 	lsrsne	r3, r3, #4
    13e0:	11a01221 	lsrne	r1, r1, #4
    13e4:	1affffef 	bne	13a8 <__udivsi3+0x58>
    13e8:	e1a00002 	mov	r0, r2
    13ec:	e12fff1e 	bx	lr
    13f0:	03a00001 	moveq	r0, #1
    13f4:	13a00000 	movne	r0, #0
    13f8:	e12fff1e 	bx	lr
    13fc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1400:	21a01821 	lsrcs	r1, r1, #16
    1404:	23a02010 	movcs	r2, #16
    1408:	33a02000 	movcc	r2, #0
    140c:	e3510c01 	cmp	r1, #256	@ 0x100
    1410:	21a01421 	lsrcs	r1, r1, #8
    1414:	22822008 	addcs	r2, r2, #8
    1418:	e3510010 	cmp	r1, #16
    141c:	21a01221 	lsrcs	r1, r1, #4
    1420:	22822004 	addcs	r2, r2, #4
    1424:	e3510004 	cmp	r1, #4
    1428:	82822003 	addhi	r2, r2, #3
    142c:	908220a1 	addls	r2, r2, r1, lsr #1
    1430:	e1a00230 	lsr	r0, r0, r2
    1434:	e12fff1e 	bx	lr
    1438:	e3500000 	cmp	r0, #0
    143c:	13e00000 	mvnne	r0, #0
    1440:	ea000007 	b	1464 <__aeabi_idiv0>

00001444 <__aeabi_uidivmod>:
    1444:	e3510000 	cmp	r1, #0
    1448:	0afffffa 	beq	1438 <__udivsi3+0xe8>
    144c:	e92d4003 	push	{r0, r1, lr}
    1450:	ebffffbe 	bl	1350 <__udivsi3>
    1454:	e8bd4006 	pop	{r1, r2, lr}
    1458:	e0030092 	mul	r3, r2, r0
    145c:	e0411003 	sub	r1, r1, r3
    1460:	e12fff1e 	bx	lr

00001464 <__aeabi_idiv0>:
    1464:	e12fff1e 	bx	lr
