
_testtickets:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde51 	sub	sp, sp, #1296	@ 0x510
       c:	eb00038f 	bl	e50 <getpid>
      10:	e50b000c 	str	r0, [fp, #-12]
      14:	e51b200c 	ldr	r2, [fp, #-12]
      18:	e59f114c 	ldr	r1, [pc, #332]	@ 16c <main+0x16c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000493 	bl	1274 <printf>
      24:	e3a01005 	mov	r1, #5
      28:	e51b000c 	ldr	r0, [fp, #-12]
      2c:	eb0003b4 	bl	f04 <settickets>
      30:	e1a03000 	mov	r3, r0
      34:	e3530000 	cmp	r3, #0
      38:	1a000004 	bne	50 <main+0x50>
      3c:	e51b200c 	ldr	r2, [fp, #-12]
      40:	e59f1128 	ldr	r1, [pc, #296]	@ 170 <main+0x170>
      44:	e3a00001 	mov	r0, #1
      48:	eb000489 	bl	1274 <printf>
      4c:	ea000002 	b	5c <main+0x5c>
      50:	e59f111c 	ldr	r1, [pc, #284]	@ 174 <main+0x174>
      54:	e3a00001 	mov	r0, #1
      58:	eb000485 	bl	1274 <printf>
      5c:	e3a0007b 	mov	r0, #123	@ 0x7b
      60:	eb0003b0 	bl	f28 <srand>
      64:	e59f110c 	ldr	r1, [pc, #268]	@ 178 <main+0x178>
      68:	e3a00001 	mov	r0, #1
      6c:	eb000480 	bl	1274 <printf>
      70:	e24b3c05 	sub	r3, fp, #1280	@ 0x500
      74:	e2433004 	sub	r3, r3, #4
      78:	e2433008 	sub	r3, r3, #8
      7c:	e1a00003 	mov	r0, r3
      80:	eb0003b1 	bl	f4c <getpinfo>
      84:	e1a03000 	mov	r3, r0
      88:	e3530000 	cmp	r3, #0
      8c:	1a000032 	bne	15c <main+0x15c>
      90:	e59f10e4 	ldr	r1, [pc, #228]	@ 17c <main+0x17c>
      94:	e3a00001 	mov	r0, #1
      98:	eb000475 	bl	1274 <printf>
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
     13c:	eb00044c 	bl	1274 <printf>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e353003f 	cmp	r3, #63	@ 0x3f
     154:	daffffd3 	ble	a8 <main+0xa8>
     158:	ea000002 	b	168 <main+0x168>
     15c:	e59f1020 	ldr	r1, [pc, #32]	@ 184 <main+0x184>
     160:	e3a00001 	mov	r0, #1
     164:	eb000442 	bl	1274 <printf>
     168:	eb0002a8 	bl	c10 <exit>
     16c:	00001930 	.word	0x00001930
     170:	00001944 	.word	0x00001944
     174:	0000196c 	.word	0x0000196c
     178:	00001984 	.word	0x00001984
     17c:	000019a0 	.word	0x000019a0
     180:	000019b0 	.word	0x000019b0
     184:	000019e0 	.word	0x000019e0

00000188 <pg_pte>:
     188:	e92d4800 	push	{fp, lr}
     18c:	e28db004 	add	fp, sp, #4
     190:	e24dd008 	sub	sp, sp, #8
     194:	e50b0008 	str	r0, [fp, #-8]
     198:	e51b1008 	ldr	r1, [fp, #-8]
     19c:	e3a0001a 	mov	r0, #26
     1a0:	eb0003d5 	bl	10fc <syscall>
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
     1c8:	e3a0001b 	mov	r0, #27
     1cc:	eb0003ca 	bl	10fc <syscall>
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
     1f4:	e3a0001c 	mov	r0, #28
     1f8:	eb0003bf 	bl	10fc <syscall>
     1fc:	e1a03000 	mov	r3, r0
     200:	e1a00003 	mov	r0, r3
     204:	e24bd004 	sub	sp, fp, #4
     208:	e8bd8800 	pop	{fp, pc}

0000020c <kpt>:
     20c:	e92d4800 	push	{fp, lr}
     210:	e28db004 	add	fp, sp, #4
     214:	e3a0001d 	mov	r0, #29
     218:	eb0003b7 	bl	10fc <syscall>
     21c:	e1a03000 	mov	r3, r0
     220:	e1a00003 	mov	r0, r3
     224:	e8bd8800 	pop	{fp, pc}

00000228 <ugetpid>:
     228:	e92d4800 	push	{fp, lr}
     22c:	e28db004 	add	fp, sp, #4
     230:	e3a0001e 	mov	r0, #30
     234:	eb0003b0 	bl	10fc <syscall>
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
     538:	eb0001cf 	bl	c7c <read>
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
     5e0:	eb0001d2 	bl	d30 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0001e4 	bl	d9c <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb0001ab 	bl	cc4 <close>
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

0000088c <xchg>:
     88c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     890:	e28db000 	add	fp, sp, #0
     894:	e24dd014 	sub	sp, sp, #20
     898:	e50b0010 	str	r0, [fp, #-16]
     89c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8a0:	e51b2010 	ldr	r2, [fp, #-16]
     8a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8a8:	e1023091 	swp	r3, r1, [r2]
     8ac:	e50b3008 	str	r3, [fp, #-8]
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e1a00003 	mov	r0, r3
     8b8:	e28bd000 	add	sp, fp, #0
     8bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <initiateLock>:
     8c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c8:	e28db000 	add	fp, sp, #0
     8cc:	e24dd00c 	sub	sp, sp, #12
     8d0:	e50b0008 	str	r0, [fp, #-8]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e3a02000 	mov	r2, #0
     8dc:	e5832000 	str	r2, [r3]
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e3a02001 	mov	r2, #1
     8e8:	e5832004 	str	r2, [r3, #4]
     8ec:	e1a00000 	nop			@ (mov r0, r0)
     8f0:	e28bd000 	add	sp, fp, #0
     8f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <acquireLock>:
     8fc:	e92d4800 	push	{fp, lr}
     900:	e28db004 	add	fp, sp, #4
     904:	e24dd008 	sub	sp, sp, #8
     908:	e50b0008 	str	r0, [fp, #-8]
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5933004 	ldr	r3, [r3, #4]
     914:	e3530000 	cmp	r3, #0
     918:	0a000008 	beq	940 <acquireLock+0x44>
     91c:	e1a00000 	nop			@ (mov r0, r0)
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e3a01001 	mov	r1, #1
     928:	e1a00003 	mov	r0, r3
     92c:	ebffffd6 	bl	88c <xchg>
     930:	e1a03000 	mov	r3, r0
     934:	e3530000 	cmp	r3, #0
     938:	1afffff8 	bne	920 <acquireLock+0x24>
     93c:	ea000000 	b	944 <acquireLock+0x48>
     940:	e1a00000 	nop			@ (mov r0, r0)
     944:	e24bd004 	sub	sp, fp, #4
     948:	e8bd8800 	pop	{fp, pc}

0000094c <releaseLock>:
     94c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     950:	e28db000 	add	fp, sp, #0
     954:	e24dd00c 	sub	sp, sp, #12
     958:	e50b0008 	str	r0, [fp, #-8]
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e5933004 	ldr	r3, [r3, #4]
     964:	e3530000 	cmp	r3, #0
     968:	0a000006 	beq	988 <releaseLock+0x3c>
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e5933000 	ldr	r3, [r3]
     974:	e3530001 	cmp	r3, #1
     978:	1a000002 	bne	988 <releaseLock+0x3c>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e3a02000 	mov	r2, #0
     984:	e5832000 	str	r2, [r3]
     988:	e1a00000 	nop			@ (mov r0, r0)
     98c:	e28bd000 	add	sp, fp, #0
     990:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <initiateCondVar>:
     998:	e92d4800 	push	{fp, lr}
     99c:	e28db004 	add	fp, sp, #4
     9a0:	e24dd008 	sub	sp, sp, #8
     9a4:	e50b0008 	str	r0, [fp, #-8]
     9a8:	eb0001b8 	bl	1090 <getChannel>
     9ac:	e1a02000 	mov	r2, r0
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e5832000 	str	r2, [r3]
     9b8:	e51b3008 	ldr	r3, [fp, #-8]
     9bc:	e3a02001 	mov	r2, #1
     9c0:	e5832004 	str	r2, [r3, #4]
     9c4:	e1a00000 	nop			@ (mov r0, r0)
     9c8:	e24bd004 	sub	sp, fp, #4
     9cc:	e8bd8800 	pop	{fp, pc}

000009d0 <condWait>:
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd008 	sub	sp, sp, #8
     9dc:	e50b0008 	str	r0, [fp, #-8]
     9e0:	e50b100c 	str	r1, [fp, #-12]
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e5933004 	ldr	r3, [r3, #4]
     9ec:	e3530000 	cmp	r3, #0
     9f0:	0a00000c 	beq	a28 <condWait+0x58>
     9f4:	e51b300c 	ldr	r3, [fp, #-12]
     9f8:	e5933004 	ldr	r3, [r3, #4]
     9fc:	e3530000 	cmp	r3, #0
     a00:	0a000008 	beq	a28 <condWait+0x58>
     a04:	e51b000c 	ldr	r0, [fp, #-12]
     a08:	ebffffcf 	bl	94c <releaseLock>
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e5933000 	ldr	r3, [r3]
     a14:	e1a00003 	mov	r0, r3
     a18:	eb000193 	bl	106c <sleepChan>
     a1c:	e51b000c 	ldr	r0, [fp, #-12]
     a20:	ebffffb5 	bl	8fc <acquireLock>
     a24:	ea000000 	b	a2c <condWait+0x5c>
     a28:	e1a00000 	nop			@ (mov r0, r0)
     a2c:	e24bd004 	sub	sp, fp, #4
     a30:	e8bd8800 	pop	{fp, pc}

00000a34 <broadcast>:
     a34:	e92d4800 	push	{fp, lr}
     a38:	e28db004 	add	fp, sp, #4
     a3c:	e24dd008 	sub	sp, sp, #8
     a40:	e50b0008 	str	r0, [fp, #-8]
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e5933004 	ldr	r3, [r3, #4]
     a4c:	e3530000 	cmp	r3, #0
     a50:	0a000004 	beq	a68 <broadcast+0x34>
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e5933000 	ldr	r3, [r3]
     a5c:	e1a00003 	mov	r0, r3
     a60:	eb000193 	bl	10b4 <sigChan>
     a64:	ea000000 	b	a6c <broadcast+0x38>
     a68:	e1a00000 	nop			@ (mov r0, r0)
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}

00000a74 <signal>:
     a74:	e92d4800 	push	{fp, lr}
     a78:	e28db004 	add	fp, sp, #4
     a7c:	e24dd008 	sub	sp, sp, #8
     a80:	e50b0008 	str	r0, [fp, #-8]
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e5933004 	ldr	r3, [r3, #4]
     a8c:	e3530000 	cmp	r3, #0
     a90:	0a000004 	beq	aa8 <signal+0x34>
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e5933000 	ldr	r3, [r3]
     a9c:	e1a00003 	mov	r0, r3
     aa0:	eb00018c 	bl	10d8 <sigOneChan>
     aa4:	ea000000 	b	aac <signal+0x38>
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}

00000ab4 <semInit>:
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd008 	sub	sp, sp, #8
     ac0:	e50b0008 	str	r0, [fp, #-8]
     ac4:	e50b100c 	str	r1, [fp, #-12]
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2833004 	add	r3, r3, #4
     ad0:	e1a00003 	mov	r0, r3
     ad4:	ebffff7a 	bl	8c4 <initiateLock>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e283300c 	add	r3, r3, #12
     ae0:	e1a00003 	mov	r0, r3
     ae4:	ebffffab 	bl	998 <initiateCondVar>
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e51b200c 	ldr	r2, [fp, #-12]
     af0:	e5832000 	str	r2, [r3]
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e3a02001 	mov	r2, #1
     afc:	e5832014 	str	r2, [r3, #20]
     b00:	e1a00000 	nop			@ (mov r0, r0)
     b04:	e24bd004 	sub	sp, fp, #4
     b08:	e8bd8800 	pop	{fp, pc}

00000b0c <semUp>:
     b0c:	e92d4800 	push	{fp, lr}
     b10:	e28db004 	add	fp, sp, #4
     b14:	e24dd008 	sub	sp, sp, #8
     b18:	e50b0008 	str	r0, [fp, #-8]
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e2833004 	add	r3, r3, #4
     b24:	e1a00003 	mov	r0, r3
     b28:	ebffff73 	bl	8fc <acquireLock>
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e5933000 	ldr	r3, [r3]
     b34:	e2832001 	add	r2, r3, #1
     b38:	e51b3008 	ldr	r3, [fp, #-8]
     b3c:	e5832000 	str	r2, [r3]
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e283300c 	add	r3, r3, #12
     b48:	e1a00003 	mov	r0, r3
     b4c:	ebffffc8 	bl	a74 <signal>
     b50:	e51b3008 	ldr	r3, [fp, #-8]
     b54:	e2833004 	add	r3, r3, #4
     b58:	e1a00003 	mov	r0, r3
     b5c:	ebffff7a 	bl	94c <releaseLock>
     b60:	e1a00000 	nop			@ (mov r0, r0)
     b64:	e24bd004 	sub	sp, fp, #4
     b68:	e8bd8800 	pop	{fp, pc}

00000b6c <semDown>:
     b6c:	e92d4800 	push	{fp, lr}
     b70:	e28db004 	add	fp, sp, #4
     b74:	e24dd008 	sub	sp, sp, #8
     b78:	e50b0008 	str	r0, [fp, #-8]
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e2833004 	add	r3, r3, #4
     b84:	e1a00003 	mov	r0, r3
     b88:	ebffff5b 	bl	8fc <acquireLock>
     b8c:	e51b3008 	ldr	r3, [fp, #-8]
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e2432001 	sub	r2, r3, #1
     b98:	e51b3008 	ldr	r3, [fp, #-8]
     b9c:	e5832000 	str	r2, [r3]
     ba0:	ea000006 	b	bc0 <semDown+0x54>
     ba4:	e51b3008 	ldr	r3, [fp, #-8]
     ba8:	e283200c 	add	r2, r3, #12
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e2833004 	add	r3, r3, #4
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e1a00002 	mov	r0, r2
     bbc:	ebffff83 	bl	9d0 <condWait>
     bc0:	e51b3008 	ldr	r3, [fp, #-8]
     bc4:	e5933000 	ldr	r3, [r3]
     bc8:	e3530000 	cmp	r3, #0
     bcc:	bafffff4 	blt	ba4 <semDown+0x38>
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e2833004 	add	r3, r3, #4
     bd8:	e1a00003 	mov	r0, r3
     bdc:	ebffff5a 	bl	94c <releaseLock>
     be0:	e1a00000 	nop			@ (mov r0, r0)
     be4:	e24bd004 	sub	sp, fp, #4
     be8:	e8bd8800 	pop	{fp, pc}

00000bec <fork>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00001 	mov	r0, #1
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <exit>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00002 	mov	r0, #2
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <wait>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00003 	mov	r0, #3
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <pipe>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00004 	mov	r0, #4
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <read>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00005 	mov	r0, #5
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <write>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a00010 	mov	r0, #16
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <close>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00015 	mov	r0, #21
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <kill>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00006 	mov	r0, #6
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <exec>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00007 	mov	r0, #7
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <open>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a0000f 	mov	r0, #15
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <mknod>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00011 	mov	r0, #17
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <unlink>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00012 	mov	r0, #18
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <fstat>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00008 	mov	r0, #8
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <link>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00013 	mov	r0, #19
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <mkdir>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a00014 	mov	r0, #20
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <chdir>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a00009 	mov	r0, #9
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <dup>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0000a 	mov	r0, #10
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <getpid>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a0000b 	mov	r0, #11
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <sbrk>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a0000c 	mov	r0, #12
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <sleep>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a0000d 	mov	r0, #13
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <uptime>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a0000e 	mov	r0, #14
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <proclist>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00016 	mov	r0, #22
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <settickets>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00017 	mov	r0, #23
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <srand>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a00018 	mov	r0, #24
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <getpinfo>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a00019 	mov	r0, #25
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <print_pt>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a0001f 	mov	r0, #31
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <thread_create>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a00020 	mov	r0, #32
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <thread_exit>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a00021 	mov	r0, #33	@ 0x21
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <thread_join>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a00022 	mov	r0, #34	@ 0x22
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <waitpid>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00023 	mov	r0, #35	@ 0x23
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <barrier_init>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00024 	mov	r0, #36	@ 0x24
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <barrier_check>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a00025 	mov	r0, #37	@ 0x25
    1060:	ef000000 	svc	0x00000000
    1064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1068:	e12fff1e 	bx	lr

0000106c <sleepChan>:
    106c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1070:	e1a04003 	mov	r4, r3
    1074:	e1a03002 	mov	r3, r2
    1078:	e1a02001 	mov	r2, r1
    107c:	e1a01000 	mov	r1, r0
    1080:	e3a00026 	mov	r0, #38	@ 0x26
    1084:	ef000000 	svc	0x00000000
    1088:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    108c:	e12fff1e 	bx	lr

00001090 <getChannel>:
    1090:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1094:	e1a04003 	mov	r4, r3
    1098:	e1a03002 	mov	r3, r2
    109c:	e1a02001 	mov	r2, r1
    10a0:	e1a01000 	mov	r1, r0
    10a4:	e3a00027 	mov	r0, #39	@ 0x27
    10a8:	ef000000 	svc	0x00000000
    10ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b0:	e12fff1e 	bx	lr

000010b4 <sigChan>:
    10b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b8:	e1a04003 	mov	r4, r3
    10bc:	e1a03002 	mov	r3, r2
    10c0:	e1a02001 	mov	r2, r1
    10c4:	e1a01000 	mov	r1, r0
    10c8:	e3a00028 	mov	r0, #40	@ 0x28
    10cc:	ef000000 	svc	0x00000000
    10d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10d4:	e12fff1e 	bx	lr

000010d8 <sigOneChan>:
    10d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10dc:	e1a04003 	mov	r4, r3
    10e0:	e1a03002 	mov	r3, r2
    10e4:	e1a02001 	mov	r2, r1
    10e8:	e1a01000 	mov	r1, r0
    10ec:	e3a00029 	mov	r0, #41	@ 0x29
    10f0:	ef000000 	svc	0x00000000
    10f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10f8:	e12fff1e 	bx	lr

000010fc <syscall>:
    10fc:	ef000000 	svc	0x00000000
    1100:	e12fff1e 	bx	lr

00001104 <putc>:
    1104:	e92d4800 	push	{fp, lr}
    1108:	e28db004 	add	fp, sp, #4
    110c:	e24dd008 	sub	sp, sp, #8
    1110:	e50b0008 	str	r0, [fp, #-8]
    1114:	e1a03001 	mov	r3, r1
    1118:	e54b3009 	strb	r3, [fp, #-9]
    111c:	e24b3009 	sub	r3, fp, #9
    1120:	e3a02001 	mov	r2, #1
    1124:	e1a01003 	mov	r1, r3
    1128:	e51b0008 	ldr	r0, [fp, #-8]
    112c:	ebfffedb 	bl	ca0 <write>
    1130:	e1a00000 	nop			@ (mov r0, r0)
    1134:	e24bd004 	sub	sp, fp, #4
    1138:	e8bd8800 	pop	{fp, pc}

0000113c <printint>:
    113c:	e92d4800 	push	{fp, lr}
    1140:	e28db004 	add	fp, sp, #4
    1144:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1148:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    114c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1150:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1154:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1158:	e3a03000 	mov	r3, #0
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1164:	e3530000 	cmp	r3, #0
    1168:	0a000008 	beq	1190 <printint+0x54>
    116c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1170:	e3530000 	cmp	r3, #0
    1174:	aa000005 	bge	1190 <printint+0x54>
    1178:	e3a03001 	mov	r3, #1
    117c:	e50b300c 	str	r3, [fp, #-12]
    1180:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1184:	e2633000 	rsb	r3, r3, #0
    1188:	e50b3010 	str	r3, [fp, #-16]
    118c:	ea000001 	b	1198 <printint+0x5c>
    1190:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1194:	e50b3010 	str	r3, [fp, #-16]
    1198:	e3a03000 	mov	r3, #0
    119c:	e50b3008 	str	r3, [fp, #-8]
    11a0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11a4:	e51b3010 	ldr	r3, [fp, #-16]
    11a8:	e1a01002 	mov	r1, r2
    11ac:	e1a00003 	mov	r0, r3
    11b0:	eb0001d5 	bl	190c <__aeabi_uidivmod>
    11b4:	e1a03001 	mov	r3, r1
    11b8:	e1a01003 	mov	r1, r3
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e2832001 	add	r2, r3, #1
    11c4:	e50b2008 	str	r2, [fp, #-8]
    11c8:	e59f20a0 	ldr	r2, [pc, #160]	@ 1270 <printint+0x134>
    11cc:	e7d22001 	ldrb	r2, [r2, r1]
    11d0:	e2433004 	sub	r3, r3, #4
    11d4:	e083300b 	add	r3, r3, fp
    11d8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11dc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0010 	ldr	r0, [fp, #-16]
    11e8:	eb00018a 	bl	1818 <__udivsi3>
    11ec:	e1a03000 	mov	r3, r0
    11f0:	e50b3010 	str	r3, [fp, #-16]
    11f4:	e51b3010 	ldr	r3, [fp, #-16]
    11f8:	e3530000 	cmp	r3, #0
    11fc:	1affffe7 	bne	11a0 <printint+0x64>
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e3530000 	cmp	r3, #0
    1208:	0a00000e 	beq	1248 <printint+0x10c>
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e2832001 	add	r2, r3, #1
    1214:	e50b2008 	str	r2, [fp, #-8]
    1218:	e2433004 	sub	r3, r3, #4
    121c:	e083300b 	add	r3, r3, fp
    1220:	e3a0202d 	mov	r2, #45	@ 0x2d
    1224:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1228:	ea000006 	b	1248 <printint+0x10c>
    122c:	e24b2020 	sub	r2, fp, #32
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e0823003 	add	r3, r2, r3
    1238:	e5d33000 	ldrb	r3, [r3]
    123c:	e1a01003 	mov	r1, r3
    1240:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1244:	ebffffae 	bl	1104 <putc>
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e2433001 	sub	r3, r3, #1
    1250:	e50b3008 	str	r3, [fp, #-8]
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e3530000 	cmp	r3, #0
    125c:	aafffff2 	bge	122c <printint+0xf0>
    1260:	e1a00000 	nop			@ (mov r0, r0)
    1264:	e1a00000 	nop			@ (mov r0, r0)
    1268:	e24bd004 	sub	sp, fp, #4
    126c:	e8bd8800 	pop	{fp, pc}
    1270:	00001a04 	.word	0x00001a04

00001274 <printf>:
    1274:	e92d000e 	push	{r1, r2, r3}
    1278:	e92d4800 	push	{fp, lr}
    127c:	e28db004 	add	fp, sp, #4
    1280:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1284:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1288:	e3a03000 	mov	r3, #0
    128c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1290:	e28b3008 	add	r3, fp, #8
    1294:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1298:	e3a03000 	mov	r3, #0
    129c:	e50b3010 	str	r3, [fp, #-16]
    12a0:	ea000074 	b	1478 <printf+0x204>
    12a4:	e59b2004 	ldr	r2, [fp, #4]
    12a8:	e51b3010 	ldr	r3, [fp, #-16]
    12ac:	e0823003 	add	r3, r2, r3
    12b0:	e5d33000 	ldrb	r3, [r3]
    12b4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12bc:	e3530000 	cmp	r3, #0
    12c0:	1a00000b 	bne	12f4 <printf+0x80>
    12c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c8:	e3530025 	cmp	r3, #37	@ 0x25
    12cc:	1a000002 	bne	12dc <printf+0x68>
    12d0:	e3a03025 	mov	r3, #37	@ 0x25
    12d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12d8:	ea000063 	b	146c <printf+0x1f8>
    12dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e0:	e6ef3073 	uxtb	r3, r3
    12e4:	e1a01003 	mov	r1, r3
    12e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12ec:	ebffff84 	bl	1104 <putc>
    12f0:	ea00005d 	b	146c <printf+0x1f8>
    12f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12f8:	e3530025 	cmp	r3, #37	@ 0x25
    12fc:	1a00005a 	bne	146c <printf+0x1f8>
    1300:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1304:	e3530064 	cmp	r3, #100	@ 0x64
    1308:	1a00000a 	bne	1338 <printf+0xc4>
    130c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e1a01003 	mov	r1, r3
    1318:	e3a03001 	mov	r3, #1
    131c:	e3a0200a 	mov	r2, #10
    1320:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1324:	ebffff84 	bl	113c <printint>
    1328:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    132c:	e2833004 	add	r3, r3, #4
    1330:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1334:	ea00004a 	b	1464 <printf+0x1f0>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e3530078 	cmp	r3, #120	@ 0x78
    1340:	0a000002 	beq	1350 <printf+0xdc>
    1344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1348:	e3530070 	cmp	r3, #112	@ 0x70
    134c:	1a00000a 	bne	137c <printf+0x108>
    1350:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e1a01003 	mov	r1, r3
    135c:	e3a03000 	mov	r3, #0
    1360:	e3a02010 	mov	r2, #16
    1364:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1368:	ebffff73 	bl	113c <printint>
    136c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1370:	e2833004 	add	r3, r3, #4
    1374:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1378:	ea000039 	b	1464 <printf+0x1f0>
    137c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1380:	e3530073 	cmp	r3, #115	@ 0x73
    1384:	1a000018 	bne	13ec <printf+0x178>
    1388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    138c:	e5933000 	ldr	r3, [r3]
    1390:	e50b300c 	str	r3, [fp, #-12]
    1394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1398:	e2833004 	add	r3, r3, #4
    139c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e3530000 	cmp	r3, #0
    13a8:	1a00000a 	bne	13d8 <printf+0x164>
    13ac:	e59f30f4 	ldr	r3, [pc, #244]	@ 14a8 <printf+0x234>
    13b0:	e50b300c 	str	r3, [fp, #-12]
    13b4:	ea000007 	b	13d8 <printf+0x164>
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e5d33000 	ldrb	r3, [r3]
    13c0:	e1a01003 	mov	r1, r3
    13c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13c8:	ebffff4d 	bl	1104 <putc>
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e2833001 	add	r3, r3, #1
    13d4:	e50b300c 	str	r3, [fp, #-12]
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e5d33000 	ldrb	r3, [r3]
    13e0:	e3530000 	cmp	r3, #0
    13e4:	1afffff3 	bne	13b8 <printf+0x144>
    13e8:	ea00001d 	b	1464 <printf+0x1f0>
    13ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f0:	e3530063 	cmp	r3, #99	@ 0x63
    13f4:	1a000009 	bne	1420 <printf+0x1ac>
    13f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13fc:	e5933000 	ldr	r3, [r3]
    1400:	e6ef3073 	uxtb	r3, r3
    1404:	e1a01003 	mov	r1, r3
    1408:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    140c:	ebffff3c 	bl	1104 <putc>
    1410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1414:	e2833004 	add	r3, r3, #4
    1418:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    141c:	ea000010 	b	1464 <printf+0x1f0>
    1420:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1424:	e3530025 	cmp	r3, #37	@ 0x25
    1428:	1a000005 	bne	1444 <printf+0x1d0>
    142c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1430:	e6ef3073 	uxtb	r3, r3
    1434:	e1a01003 	mov	r1, r3
    1438:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    143c:	ebffff30 	bl	1104 <putc>
    1440:	ea000007 	b	1464 <printf+0x1f0>
    1444:	e3a01025 	mov	r1, #37	@ 0x25
    1448:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    144c:	ebffff2c 	bl	1104 <putc>
    1450:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1454:	e6ef3073 	uxtb	r3, r3
    1458:	e1a01003 	mov	r1, r3
    145c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1460:	ebffff27 	bl	1104 <putc>
    1464:	e3a03000 	mov	r3, #0
    1468:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    146c:	e51b3010 	ldr	r3, [fp, #-16]
    1470:	e2833001 	add	r3, r3, #1
    1474:	e50b3010 	str	r3, [fp, #-16]
    1478:	e59b2004 	ldr	r2, [fp, #4]
    147c:	e51b3010 	ldr	r3, [fp, #-16]
    1480:	e0823003 	add	r3, r2, r3
    1484:	e5d33000 	ldrb	r3, [r3]
    1488:	e3530000 	cmp	r3, #0
    148c:	1affff84 	bne	12a4 <printf+0x30>
    1490:	e1a00000 	nop			@ (mov r0, r0)
    1494:	e1a00000 	nop			@ (mov r0, r0)
    1498:	e24bd004 	sub	sp, fp, #4
    149c:	e8bd4800 	pop	{fp, lr}
    14a0:	e28dd00c 	add	sp, sp, #12
    14a4:	e12fff1e 	bx	lr
    14a8:	000019fc 	.word	0x000019fc

000014ac <free>:
    14ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14b0:	e28db000 	add	fp, sp, #0
    14b4:	e24dd014 	sub	sp, sp, #20
    14b8:	e50b0010 	str	r0, [fp, #-16]
    14bc:	e51b3010 	ldr	r3, [fp, #-16]
    14c0:	e2433008 	sub	r3, r3, #8
    14c4:	e50b300c 	str	r3, [fp, #-12]
    14c8:	e59f3154 	ldr	r3, [pc, #340]	@ 1624 <free+0x178>
    14cc:	e5933000 	ldr	r3, [r3]
    14d0:	e50b3008 	str	r3, [fp, #-8]
    14d4:	ea000010 	b	151c <free+0x70>
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5933000 	ldr	r3, [r3]
    14e0:	e51b2008 	ldr	r2, [fp, #-8]
    14e4:	e1520003 	cmp	r2, r3
    14e8:	3a000008 	bcc	1510 <free+0x64>
    14ec:	e51b200c 	ldr	r2, [fp, #-12]
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e1520003 	cmp	r2, r3
    14f8:	8a000010 	bhi	1540 <free+0x94>
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e51b200c 	ldr	r2, [fp, #-12]
    1508:	e1520003 	cmp	r2, r3
    150c:	3a00000b 	bcc	1540 <free+0x94>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e50b3008 	str	r3, [fp, #-8]
    151c:	e51b200c 	ldr	r2, [fp, #-12]
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e1520003 	cmp	r2, r3
    1528:	9affffea 	bls	14d8 <free+0x2c>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e51b200c 	ldr	r2, [fp, #-12]
    1538:	e1520003 	cmp	r2, r3
    153c:	2affffe5 	bcs	14d8 <free+0x2c>
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e5933004 	ldr	r3, [r3, #4]
    1548:	e1a03183 	lsl	r3, r3, #3
    154c:	e51b200c 	ldr	r2, [fp, #-12]
    1550:	e0822003 	add	r2, r2, r3
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5933000 	ldr	r3, [r3]
    155c:	e1520003 	cmp	r2, r3
    1560:	1a00000d 	bne	159c <free+0xf0>
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e5932004 	ldr	r2, [r3, #4]
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e5933000 	ldr	r3, [r3]
    1574:	e5933004 	ldr	r3, [r3, #4]
    1578:	e0822003 	add	r2, r2, r3
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5832004 	str	r2, [r3, #4]
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5933000 	ldr	r3, [r3]
    158c:	e5932000 	ldr	r2, [r3]
    1590:	e51b300c 	ldr	r3, [fp, #-12]
    1594:	e5832000 	str	r2, [r3]
    1598:	ea000003 	b	15ac <free+0x100>
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5932000 	ldr	r2, [r3]
    15a4:	e51b300c 	ldr	r3, [fp, #-12]
    15a8:	e5832000 	str	r2, [r3]
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e5933004 	ldr	r3, [r3, #4]
    15b4:	e1a03183 	lsl	r3, r3, #3
    15b8:	e51b2008 	ldr	r2, [fp, #-8]
    15bc:	e0823003 	add	r3, r2, r3
    15c0:	e51b200c 	ldr	r2, [fp, #-12]
    15c4:	e1520003 	cmp	r2, r3
    15c8:	1a00000b 	bne	15fc <free+0x150>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5932004 	ldr	r2, [r3, #4]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e5933004 	ldr	r3, [r3, #4]
    15dc:	e0822003 	add	r2, r2, r3
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5832004 	str	r2, [r3, #4]
    15e8:	e51b300c 	ldr	r3, [fp, #-12]
    15ec:	e5932000 	ldr	r2, [r3]
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e5832000 	str	r2, [r3]
    15f8:	ea000002 	b	1608 <free+0x15c>
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e51b200c 	ldr	r2, [fp, #-12]
    1604:	e5832000 	str	r2, [r3]
    1608:	e59f2014 	ldr	r2, [pc, #20]	@ 1624 <free+0x178>
    160c:	e51b3008 	ldr	r3, [fp, #-8]
    1610:	e5823000 	str	r3, [r2]
    1614:	e1a00000 	nop			@ (mov r0, r0)
    1618:	e28bd000 	add	sp, fp, #0
    161c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1620:	e12fff1e 	bx	lr
    1624:	00001a20 	.word	0x00001a20

00001628 <morecore>:
    1628:	e92d4800 	push	{fp, lr}
    162c:	e28db004 	add	fp, sp, #4
    1630:	e24dd010 	sub	sp, sp, #16
    1634:	e50b0010 	str	r0, [fp, #-16]
    1638:	e51b3010 	ldr	r3, [fp, #-16]
    163c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1640:	2a000001 	bcs	164c <morecore+0x24>
    1644:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1648:	e50b3010 	str	r3, [fp, #-16]
    164c:	e51b3010 	ldr	r3, [fp, #-16]
    1650:	e1a03183 	lsl	r3, r3, #3
    1654:	e1a00003 	mov	r0, r3
    1658:	ebfffe05 	bl	e74 <sbrk>
    165c:	e50b0008 	str	r0, [fp, #-8]
    1660:	e51b3008 	ldr	r3, [fp, #-8]
    1664:	e3730001 	cmn	r3, #1
    1668:	1a000001 	bne	1674 <morecore+0x4c>
    166c:	e3a03000 	mov	r3, #0
    1670:	ea00000a 	b	16a0 <morecore+0x78>
    1674:	e51b3008 	ldr	r3, [fp, #-8]
    1678:	e50b300c 	str	r3, [fp, #-12]
    167c:	e51b300c 	ldr	r3, [fp, #-12]
    1680:	e51b2010 	ldr	r2, [fp, #-16]
    1684:	e5832004 	str	r2, [r3, #4]
    1688:	e51b300c 	ldr	r3, [fp, #-12]
    168c:	e2833008 	add	r3, r3, #8
    1690:	e1a00003 	mov	r0, r3
    1694:	ebffff84 	bl	14ac <free>
    1698:	e59f300c 	ldr	r3, [pc, #12]	@ 16ac <morecore+0x84>
    169c:	e5933000 	ldr	r3, [r3]
    16a0:	e1a00003 	mov	r0, r3
    16a4:	e24bd004 	sub	sp, fp, #4
    16a8:	e8bd8800 	pop	{fp, pc}
    16ac:	00001a20 	.word	0x00001a20

000016b0 <malloc>:
    16b0:	e92d4800 	push	{fp, lr}
    16b4:	e28db004 	add	fp, sp, #4
    16b8:	e24dd018 	sub	sp, sp, #24
    16bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16c4:	e2833007 	add	r3, r3, #7
    16c8:	e1a031a3 	lsr	r3, r3, #3
    16cc:	e2833001 	add	r3, r3, #1
    16d0:	e50b3010 	str	r3, [fp, #-16]
    16d4:	e59f3134 	ldr	r3, [pc, #308]	@ 1810 <malloc+0x160>
    16d8:	e5933000 	ldr	r3, [r3]
    16dc:	e50b300c 	str	r3, [fp, #-12]
    16e0:	e51b300c 	ldr	r3, [fp, #-12]
    16e4:	e3530000 	cmp	r3, #0
    16e8:	1a00000b 	bne	171c <malloc+0x6c>
    16ec:	e59f3120 	ldr	r3, [pc, #288]	@ 1814 <malloc+0x164>
    16f0:	e50b300c 	str	r3, [fp, #-12]
    16f4:	e59f2114 	ldr	r2, [pc, #276]	@ 1810 <malloc+0x160>
    16f8:	e51b300c 	ldr	r3, [fp, #-12]
    16fc:	e5823000 	str	r3, [r2]
    1700:	e59f3108 	ldr	r3, [pc, #264]	@ 1810 <malloc+0x160>
    1704:	e5933000 	ldr	r3, [r3]
    1708:	e59f2104 	ldr	r2, [pc, #260]	@ 1814 <malloc+0x164>
    170c:	e5823000 	str	r3, [r2]
    1710:	e59f30fc 	ldr	r3, [pc, #252]	@ 1814 <malloc+0x164>
    1714:	e3a02000 	mov	r2, #0
    1718:	e5832004 	str	r2, [r3, #4]
    171c:	e51b300c 	ldr	r3, [fp, #-12]
    1720:	e5933000 	ldr	r3, [r3]
    1724:	e50b3008 	str	r3, [fp, #-8]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e5933004 	ldr	r3, [r3, #4]
    1730:	e51b2010 	ldr	r2, [fp, #-16]
    1734:	e1520003 	cmp	r2, r3
    1738:	8a00001e 	bhi	17b8 <malloc+0x108>
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e5933004 	ldr	r3, [r3, #4]
    1744:	e51b2010 	ldr	r2, [fp, #-16]
    1748:	e1520003 	cmp	r2, r3
    174c:	1a000004 	bne	1764 <malloc+0xb4>
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e5932000 	ldr	r2, [r3]
    1758:	e51b300c 	ldr	r3, [fp, #-12]
    175c:	e5832000 	str	r2, [r3]
    1760:	ea00000e 	b	17a0 <malloc+0xf0>
    1764:	e51b3008 	ldr	r3, [fp, #-8]
    1768:	e5932004 	ldr	r2, [r3, #4]
    176c:	e51b3010 	ldr	r3, [fp, #-16]
    1770:	e0422003 	sub	r2, r2, r3
    1774:	e51b3008 	ldr	r3, [fp, #-8]
    1778:	e5832004 	str	r2, [r3, #4]
    177c:	e51b3008 	ldr	r3, [fp, #-8]
    1780:	e5933004 	ldr	r3, [r3, #4]
    1784:	e1a03183 	lsl	r3, r3, #3
    1788:	e51b2008 	ldr	r2, [fp, #-8]
    178c:	e0823003 	add	r3, r2, r3
    1790:	e50b3008 	str	r3, [fp, #-8]
    1794:	e51b3008 	ldr	r3, [fp, #-8]
    1798:	e51b2010 	ldr	r2, [fp, #-16]
    179c:	e5832004 	str	r2, [r3, #4]
    17a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1810 <malloc+0x160>
    17a4:	e51b300c 	ldr	r3, [fp, #-12]
    17a8:	e5823000 	str	r3, [r2]
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e2833008 	add	r3, r3, #8
    17b4:	ea000012 	b	1804 <malloc+0x154>
    17b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1810 <malloc+0x160>
    17bc:	e5933000 	ldr	r3, [r3]
    17c0:	e51b2008 	ldr	r2, [fp, #-8]
    17c4:	e1520003 	cmp	r2, r3
    17c8:	1a000007 	bne	17ec <malloc+0x13c>
    17cc:	e51b0010 	ldr	r0, [fp, #-16]
    17d0:	ebffff94 	bl	1628 <morecore>
    17d4:	e50b0008 	str	r0, [fp, #-8]
    17d8:	e51b3008 	ldr	r3, [fp, #-8]
    17dc:	e3530000 	cmp	r3, #0
    17e0:	1a000001 	bne	17ec <malloc+0x13c>
    17e4:	e3a03000 	mov	r3, #0
    17e8:	ea000005 	b	1804 <malloc+0x154>
    17ec:	e51b3008 	ldr	r3, [fp, #-8]
    17f0:	e50b300c 	str	r3, [fp, #-12]
    17f4:	e51b3008 	ldr	r3, [fp, #-8]
    17f8:	e5933000 	ldr	r3, [r3]
    17fc:	e50b3008 	str	r3, [fp, #-8]
    1800:	eaffffc8 	b	1728 <malloc+0x78>
    1804:	e1a00003 	mov	r0, r3
    1808:	e24bd004 	sub	sp, fp, #4
    180c:	e8bd8800 	pop	{fp, pc}
    1810:	00001a20 	.word	0x00001a20
    1814:	00001a18 	.word	0x00001a18

00001818 <__udivsi3>:
    1818:	e2512001 	subs	r2, r1, #1
    181c:	012fff1e 	bxeq	lr
    1820:	3a000036 	bcc	1900 <__udivsi3+0xe8>
    1824:	e1500001 	cmp	r0, r1
    1828:	9a000022 	bls	18b8 <__udivsi3+0xa0>
    182c:	e1110002 	tst	r1, r2
    1830:	0a000023 	beq	18c4 <__udivsi3+0xac>
    1834:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1838:	01a01181 	lsleq	r1, r1, #3
    183c:	03a03008 	moveq	r3, #8
    1840:	13a03001 	movne	r3, #1
    1844:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1848:	31510000 	cmpcc	r1, r0
    184c:	31a01201 	lslcc	r1, r1, #4
    1850:	31a03203 	lslcc	r3, r3, #4
    1854:	3afffffa 	bcc	1844 <__udivsi3+0x2c>
    1858:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    185c:	31510000 	cmpcc	r1, r0
    1860:	31a01081 	lslcc	r1, r1, #1
    1864:	31a03083 	lslcc	r3, r3, #1
    1868:	3afffffa 	bcc	1858 <__udivsi3+0x40>
    186c:	e3a02000 	mov	r2, #0
    1870:	e1500001 	cmp	r0, r1
    1874:	20400001 	subcs	r0, r0, r1
    1878:	21822003 	orrcs	r2, r2, r3
    187c:	e15000a1 	cmp	r0, r1, lsr #1
    1880:	204000a1 	subcs	r0, r0, r1, lsr #1
    1884:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1888:	e1500121 	cmp	r0, r1, lsr #2
    188c:	20400121 	subcs	r0, r0, r1, lsr #2
    1890:	21822123 	orrcs	r2, r2, r3, lsr #2
    1894:	e15001a1 	cmp	r0, r1, lsr #3
    1898:	204001a1 	subcs	r0, r0, r1, lsr #3
    189c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18a0:	e3500000 	cmp	r0, #0
    18a4:	11b03223 	lsrsne	r3, r3, #4
    18a8:	11a01221 	lsrne	r1, r1, #4
    18ac:	1affffef 	bne	1870 <__udivsi3+0x58>
    18b0:	e1a00002 	mov	r0, r2
    18b4:	e12fff1e 	bx	lr
    18b8:	03a00001 	moveq	r0, #1
    18bc:	13a00000 	movne	r0, #0
    18c0:	e12fff1e 	bx	lr
    18c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    18c8:	21a01821 	lsrcs	r1, r1, #16
    18cc:	23a02010 	movcs	r2, #16
    18d0:	33a02000 	movcc	r2, #0
    18d4:	e3510c01 	cmp	r1, #256	@ 0x100
    18d8:	21a01421 	lsrcs	r1, r1, #8
    18dc:	22822008 	addcs	r2, r2, #8
    18e0:	e3510010 	cmp	r1, #16
    18e4:	21a01221 	lsrcs	r1, r1, #4
    18e8:	22822004 	addcs	r2, r2, #4
    18ec:	e3510004 	cmp	r1, #4
    18f0:	82822003 	addhi	r2, r2, #3
    18f4:	908220a1 	addls	r2, r2, r1, lsr #1
    18f8:	e1a00230 	lsr	r0, r0, r2
    18fc:	e12fff1e 	bx	lr
    1900:	e3500000 	cmp	r0, #0
    1904:	13e00000 	mvnne	r0, #0
    1908:	ea000007 	b	192c <__aeabi_idiv0>

0000190c <__aeabi_uidivmod>:
    190c:	e3510000 	cmp	r1, #0
    1910:	0afffffa 	beq	1900 <__udivsi3+0xe8>
    1914:	e92d4003 	push	{r0, r1, lr}
    1918:	ebffffbe 	bl	1818 <__udivsi3>
    191c:	e8bd4006 	pop	{r1, r2, lr}
    1920:	e0030092 	mul	r3, r2, r0
    1924:	e0411003 	sub	r1, r1, r3
    1928:	e12fff1e 	bx	lr

0000192c <__aeabi_idiv0>:
    192c:	e12fff1e 	bx	lr
