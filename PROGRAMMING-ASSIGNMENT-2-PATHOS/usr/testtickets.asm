
_testtickets:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde51 	sub	sp, sp, #1296	@ 0x510
       c:	eb000288 	bl	a34 <getpid>
      10:	e50b000c 	str	r0, [fp, #-12]
      14:	e51b200c 	ldr	r2, [fp, #-12]
      18:	e59f114c 	ldr	r1, [pc, #332]	@ 16c <main+0x16c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000327 	bl	cc4 <printf>
      24:	e3a01005 	mov	r1, #5
      28:	e51b000c 	ldr	r0, [fp, #-12]
      2c:	eb0002ad 	bl	ae8 <settickets>
      30:	e1a03000 	mov	r3, r0
      34:	e3530000 	cmp	r3, #0
      38:	1a000004 	bne	50 <main+0x50>
      3c:	e51b200c 	ldr	r2, [fp, #-12]
      40:	e59f1128 	ldr	r1, [pc, #296]	@ 170 <main+0x170>
      44:	e3a00001 	mov	r0, #1
      48:	eb00031d 	bl	cc4 <printf>
      4c:	ea000002 	b	5c <main+0x5c>
      50:	e59f111c 	ldr	r1, [pc, #284]	@ 174 <main+0x174>
      54:	e3a00001 	mov	r0, #1
      58:	eb000319 	bl	cc4 <printf>
      5c:	e3a0007b 	mov	r0, #123	@ 0x7b
      60:	eb0002a9 	bl	b0c <srand>
      64:	e59f110c 	ldr	r1, [pc, #268]	@ 178 <main+0x178>
      68:	e3a00001 	mov	r0, #1
      6c:	eb000314 	bl	cc4 <printf>
      70:	e24b3c05 	sub	r3, fp, #1280	@ 0x500
      74:	e2433004 	sub	r3, r3, #4
      78:	e2433008 	sub	r3, r3, #8
      7c:	e1a00003 	mov	r0, r3
      80:	eb0002aa 	bl	b30 <getpinfo>
      84:	e1a03000 	mov	r3, r0
      88:	e3530000 	cmp	r3, #0
      8c:	1a000032 	bne	15c <main+0x15c>
      90:	e59f10e4 	ldr	r1, [pc, #228]	@ 17c <main+0x17c>
      94:	e3a00001 	mov	r0, #1
      98:	eb000309 	bl	cc4 <printf>
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
     13c:	eb0002e0 	bl	cc4 <printf>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e353003f 	cmp	r3, #63	@ 0x3f
     154:	daffffd3 	ble	a8 <main+0xa8>
     158:	ea000002 	b	168 <main+0x168>
     15c:	e59f1020 	ldr	r1, [pc, #32]	@ 184 <main+0x184>
     160:	e3a00001 	mov	r0, #1
     164:	eb0002d6 	bl	cc4 <printf>
     168:	eb0001a1 	bl	7f4 <exit>
     16c:	00001380 	.word	0x00001380
     170:	00001394 	.word	0x00001394
     174:	000013bc 	.word	0x000013bc
     178:	000013d4 	.word	0x000013d4
     17c:	000013f0 	.word	0x000013f0
     180:	00001400 	.word	0x00001400
     184:	00001430 	.word	0x00001430

00000188 <strcpy>:
     188:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     18c:	e28db000 	add	fp, sp, #0
     190:	e24dd014 	sub	sp, sp, #20
     194:	e50b0010 	str	r0, [fp, #-16]
     198:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	e1a00000 	nop			@ (mov r0, r0)
     1a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1ac:	e2823001 	add	r3, r2, #1
     1b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b4:	e51b3010 	ldr	r3, [fp, #-16]
     1b8:	e2831001 	add	r1, r3, #1
     1bc:	e50b1010 	str	r1, [fp, #-16]
     1c0:	e5d22000 	ldrb	r2, [r2]
     1c4:	e5c32000 	strb	r2, [r3]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff4 	bne	1a8 <strcpy+0x20>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <strcmp>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd00c 	sub	sp, sp, #12
     1f4:	e50b0008 	str	r0, [fp, #-8]
     1f8:	e50b100c 	str	r1, [fp, #-12]
     1fc:	ea000005 	b	218 <strcmp+0x30>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	e51b300c 	ldr	r3, [fp, #-12]
     210:	e2833001 	add	r3, r3, #1
     214:	e50b300c 	str	r3, [fp, #-12]
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e3530000 	cmp	r3, #0
     224:	0a000005 	beq	240 <strcmp+0x58>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d32000 	ldrb	r2, [r3]
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e1520003 	cmp	r2, r3
     23c:	0affffef 	beq	200 <strcmp+0x18>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e1a02003 	mov	r2, r3
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e5d33000 	ldrb	r3, [r3]
     254:	e0423003 	sub	r3, r2, r3
     258:	e1a00003 	mov	r0, r3
     25c:	e28bd000 	add	sp, fp, #0
     260:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     264:	e12fff1e 	bx	lr

00000268 <strlen>:
     268:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     26c:	e28db000 	add	fp, sp, #0
     270:	e24dd014 	sub	sp, sp, #20
     274:	e50b0010 	str	r0, [fp, #-16]
     278:	e3a03000 	mov	r3, #0
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	ea000002 	b	290 <strlen+0x28>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e2833001 	add	r3, r3, #1
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e51b2010 	ldr	r2, [fp, #-16]
     298:	e0823003 	add	r3, r2, r3
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e3530000 	cmp	r3, #0
     2a4:	1afffff6 	bne	284 <strlen+0x1c>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e1a00003 	mov	r0, r3
     2b0:	e28bd000 	add	sp, fp, #0
     2b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2b8:	e12fff1e 	bx	lr

000002bc <memset>:
     2bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c0:	e28db000 	add	fp, sp, #0
     2c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d8:	e50b3008 	str	r3, [fp, #-8]
     2dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2e0:	e54b300d 	strb	r3, [fp, #-13]
     2e4:	e55b200d 	ldrb	r2, [fp, #-13]
     2e8:	e1a03002 	mov	r3, r2
     2ec:	e1a03403 	lsl	r3, r3, #8
     2f0:	e0833002 	add	r3, r3, r2
     2f4:	e1a03803 	lsl	r3, r3, #16
     2f8:	e1a02003 	mov	r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1a03403 	lsl	r3, r3, #8
     304:	e1822003 	orr	r2, r2, r3
     308:	e55b300d 	ldrb	r3, [fp, #-13]
     30c:	e1823003 	orr	r3, r2, r3
     310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     314:	ea000008 	b	33c <memset+0x80>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e55b200d 	ldrb	r2, [fp, #-13]
     320:	e5c32000 	strb	r2, [r3]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e2433001 	sub	r3, r3, #1
     32c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2833001 	add	r3, r3, #1
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     340:	e3530000 	cmp	r3, #0
     344:	0a000003 	beq	358 <memset+0x9c>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2033003 	and	r3, r3, #3
     350:	e3530000 	cmp	r3, #0
     354:	1affffef 	bne	318 <memset+0x5c>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e50b300c 	str	r3, [fp, #-12]
     360:	ea000008 	b	388 <memset+0xcc>
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     36c:	e5832000 	str	r2, [r3]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e2433004 	sub	r3, r3, #4
     378:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e2833004 	add	r3, r3, #4
     384:	e50b300c 	str	r3, [fp, #-12]
     388:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     38c:	e3530003 	cmp	r3, #3
     390:	8afffff3 	bhi	364 <memset+0xa8>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	ea000008 	b	3c4 <memset+0x108>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e55b200d 	ldrb	r2, [fp, #-13]
     3a8:	e5c32000 	strb	r2, [r3]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e2433001 	sub	r3, r3, #1
     3b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e2833001 	add	r3, r3, #1
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c8:	e3530000 	cmp	r3, #0
     3cc:	1afffff3 	bne	3a0 <memset+0xe4>
     3d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d4:	e1a00003 	mov	r0, r3
     3d8:	e28bd000 	add	sp, fp, #0
     3dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3e0:	e12fff1e 	bx	lr

000003e4 <strchr>:
     3e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e8:	e28db000 	add	fp, sp, #0
     3ec:	e24dd00c 	sub	sp, sp, #12
     3f0:	e50b0008 	str	r0, [fp, #-8]
     3f4:	e1a03001 	mov	r3, r1
     3f8:	e54b3009 	strb	r3, [fp, #-9]
     3fc:	ea000009 	b	428 <strchr+0x44>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e55b2009 	ldrb	r2, [fp, #-9]
     40c:	e1520003 	cmp	r2, r3
     410:	1a000001 	bne	41c <strchr+0x38>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	ea000007 	b	43c <strchr+0x58>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e3530000 	cmp	r3, #0
     434:	1afffff1 	bne	400 <strchr+0x1c>
     438:	e3a03000 	mov	r3, #0
     43c:	e1a00003 	mov	r0, r3
     440:	e28bd000 	add	sp, fp, #0
     444:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     448:	e12fff1e 	bx	lr

0000044c <gets>:
     44c:	e92d4800 	push	{fp, lr}
     450:	e28db004 	add	fp, sp, #4
     454:	e24dd018 	sub	sp, sp, #24
     458:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     45c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     460:	e3a03000 	mov	r3, #0
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	ea000016 	b	4c8 <gets+0x7c>
     46c:	e24b300d 	sub	r3, fp, #13
     470:	e3a02001 	mov	r2, #1
     474:	e1a01003 	mov	r1, r3
     478:	e3a00000 	mov	r0, #0
     47c:	eb0000f7 	bl	860 <read>
     480:	e50b000c 	str	r0, [fp, #-12]
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e3530000 	cmp	r3, #0
     48c:	da000013 	ble	4e0 <gets+0x94>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e2832001 	add	r2, r3, #1
     498:	e50b2008 	str	r2, [fp, #-8]
     49c:	e1a02003 	mov	r2, r3
     4a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a4:	e0833002 	add	r3, r3, r2
     4a8:	e55b200d 	ldrb	r2, [fp, #-13]
     4ac:	e5c32000 	strb	r2, [r3]
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000a 	cmp	r3, #10
     4b8:	0a000009 	beq	4e4 <gets+0x98>
     4bc:	e55b300d 	ldrb	r3, [fp, #-13]
     4c0:	e353000d 	cmp	r3, #13
     4c4:	0a000006 	beq	4e4 <gets+0x98>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4d4:	e1520003 	cmp	r2, r3
     4d8:	caffffe3 	bgt	46c <gets+0x20>
     4dc:	ea000000 	b	4e4 <gets+0x98>
     4e0:	e1a00000 	nop			@ (mov r0, r0)
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4ec:	e0823003 	add	r3, r2, r3
     4f0:	e3a02000 	mov	r2, #0
     4f4:	e5c32000 	strb	r2, [r3]
     4f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4fc:	e1a00003 	mov	r0, r3
     500:	e24bd004 	sub	sp, fp, #4
     504:	e8bd8800 	pop	{fp, pc}

00000508 <stat>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd010 	sub	sp, sp, #16
     514:	e50b0010 	str	r0, [fp, #-16]
     518:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     51c:	e3a01000 	mov	r1, #0
     520:	e51b0010 	ldr	r0, [fp, #-16]
     524:	eb0000fa 	bl	914 <open>
     528:	e50b0008 	str	r0, [fp, #-8]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e3530000 	cmp	r3, #0
     534:	aa000001 	bge	540 <stat+0x38>
     538:	e3e03000 	mvn	r3, #0
     53c:	ea000006 	b	55c <stat+0x54>
     540:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb00010c 	bl	980 <fstat>
     54c:	e50b000c 	str	r0, [fp, #-12]
     550:	e51b0008 	ldr	r0, [fp, #-8]
     554:	eb0000d3 	bl	8a8 <close>
     558:	e51b300c 	ldr	r3, [fp, #-12]
     55c:	e1a00003 	mov	r0, r3
     560:	e24bd004 	sub	sp, fp, #4
     564:	e8bd8800 	pop	{fp, pc}

00000568 <atoi>:
     568:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     56c:	e28db000 	add	fp, sp, #0
     570:	e24dd014 	sub	sp, sp, #20
     574:	e50b0010 	str	r0, [fp, #-16]
     578:	e3a03000 	mov	r3, #0
     57c:	e50b3008 	str	r3, [fp, #-8]
     580:	ea00000c 	b	5b8 <atoi+0x50>
     584:	e51b2008 	ldr	r2, [fp, #-8]
     588:	e1a03002 	mov	r3, r2
     58c:	e1a03103 	lsl	r3, r3, #2
     590:	e0833002 	add	r3, r3, r2
     594:	e1a03083 	lsl	r3, r3, #1
     598:	e1a01003 	mov	r1, r3
     59c:	e51b3010 	ldr	r3, [fp, #-16]
     5a0:	e2832001 	add	r2, r3, #1
     5a4:	e50b2010 	str	r2, [fp, #-16]
     5a8:	e5d33000 	ldrb	r3, [r3]
     5ac:	e0813003 	add	r3, r1, r3
     5b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e353002f 	cmp	r3, #47	@ 0x2f
     5c4:	9a000003 	bls	5d8 <atoi+0x70>
     5c8:	e51b3010 	ldr	r3, [fp, #-16]
     5cc:	e5d33000 	ldrb	r3, [r3]
     5d0:	e3530039 	cmp	r3, #57	@ 0x39
     5d4:	9affffea 	bls	584 <atoi+0x1c>
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e1a00003 	mov	r0, r3
     5e0:	e28bd000 	add	sp, fp, #0
     5e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <memmove>:
     5ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f0:	e28db000 	add	fp, sp, #0
     5f4:	e24dd01c 	sub	sp, sp, #28
     5f8:	e50b0010 	str	r0, [fp, #-16]
     5fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     600:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e50b3008 	str	r3, [fp, #-8]
     60c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     610:	e50b300c 	str	r3, [fp, #-12]
     614:	ea000007 	b	638 <memmove+0x4c>
     618:	e51b200c 	ldr	r2, [fp, #-12]
     61c:	e2823001 	add	r3, r2, #1
     620:	e50b300c 	str	r3, [fp, #-12]
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e2831001 	add	r1, r3, #1
     62c:	e50b1008 	str	r1, [fp, #-8]
     630:	e5d22000 	ldrb	r2, [r2]
     634:	e5c32000 	strb	r2, [r3]
     638:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     63c:	e2432001 	sub	r2, r3, #1
     640:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     644:	e3530000 	cmp	r3, #0
     648:	cafffff2 	bgt	618 <memmove+0x2c>
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e1a00003 	mov	r0, r3
     654:	e28bd000 	add	sp, fp, #0
     658:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <strncmp>:
     660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     664:	e28db000 	add	fp, sp, #0
     668:	e24dd014 	sub	sp, sp, #20
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e50b100c 	str	r1, [fp, #-12]
     674:	e50b2010 	str	r2, [fp, #-16]
     678:	ea000008 	b	6a0 <strncmp+0x40>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2833001 	add	r3, r3, #1
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	e51b300c 	ldr	r3, [fp, #-12]
     68c:	e2833001 	add	r3, r3, #1
     690:	e50b300c 	str	r3, [fp, #-12]
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e2433001 	sub	r3, r3, #1
     69c:	e50b3010 	str	r3, [fp, #-16]
     6a0:	e51b3010 	ldr	r3, [fp, #-16]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	da00000d 	ble	6e4 <strncmp+0x84>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e3530000 	cmp	r3, #0
     6b8:	0a000009 	beq	6e4 <strncmp+0x84>
     6bc:	e51b300c 	ldr	r3, [fp, #-12]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e3530000 	cmp	r3, #0
     6c8:	0a000005 	beq	6e4 <strncmp+0x84>
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e5d32000 	ldrb	r2, [r3]
     6d4:	e51b300c 	ldr	r3, [fp, #-12]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e1520003 	cmp	r2, r3
     6e0:	0affffe5 	beq	67c <strncmp+0x1c>
     6e4:	e51b3010 	ldr	r3, [fp, #-16]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	1a000001 	bne	6f8 <strncmp+0x98>
     6f0:	e3a03000 	mov	r3, #0
     6f4:	ea000005 	b	710 <strncmp+0xb0>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5d33000 	ldrb	r3, [r3]
     700:	e1a02003 	mov	r2, r3
     704:	e51b300c 	ldr	r3, [fp, #-12]
     708:	e5d33000 	ldrb	r3, [r3]
     70c:	e0423003 	sub	r3, r2, r3
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <strncpy>:
     720:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     724:	e28db000 	add	fp, sp, #0
     728:	e24dd01c 	sub	sp, sp, #28
     72c:	e50b0010 	str	r0, [fp, #-16]
     730:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     734:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     738:	e51b3010 	ldr	r3, [fp, #-16]
     73c:	e50b3008 	str	r3, [fp, #-8]
     740:	ea00000a 	b	770 <strncpy+0x50>
     744:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     748:	e2823001 	add	r3, r2, #1
     74c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e2831001 	add	r1, r3, #1
     758:	e50b1008 	str	r1, [fp, #-8]
     75c:	e5d22000 	ldrb	r2, [r2]
     760:	e5c32000 	strb	r2, [r3]
     764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     768:	e2433001 	sub	r3, r3, #1
     76c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     770:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     774:	e3530000 	cmp	r3, #0
     778:	da00000c 	ble	7b0 <strncpy+0x90>
     77c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     780:	e5d33000 	ldrb	r3, [r3]
     784:	e3530000 	cmp	r3, #0
     788:	1affffed 	bne	744 <strncpy+0x24>
     78c:	ea000007 	b	7b0 <strncpy+0x90>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e2832001 	add	r2, r3, #1
     798:	e50b2008 	str	r2, [fp, #-8]
     79c:	e3a02000 	mov	r2, #0
     7a0:	e5c32000 	strb	r2, [r3]
     7a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a8:	e2433001 	sub	r3, r3, #1
     7ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7b4:	e3530000 	cmp	r3, #0
     7b8:	cafffff4 	bgt	790 <strncpy+0x70>
     7bc:	e51b3010 	ldr	r3, [fp, #-16]
     7c0:	e1a00003 	mov	r0, r3
     7c4:	e28bd000 	add	sp, fp, #0
     7c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <fork>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00001 	mov	r0, #1
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <exit>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00002 	mov	r0, #2
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <wait>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00003 	mov	r0, #3
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <pipe>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00004 	mov	r0, #4
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <read>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00005 	mov	r0, #5
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <write>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00010 	mov	r0, #16
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <close>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00015 	mov	r0, #21
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <kill>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00006 	mov	r0, #6
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <exec>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00007 	mov	r0, #7
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <open>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a0000f 	mov	r0, #15
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <mknod>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00011 	mov	r0, #17
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <unlink>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00012 	mov	r0, #18
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <fstat>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00008 	mov	r0, #8
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <link>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00013 	mov	r0, #19
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <mkdir>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00014 	mov	r0, #20
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <chdir>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00009 	mov	r0, #9
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <dup>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a0000a 	mov	r0, #10
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <getpid>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a0000b 	mov	r0, #11
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <sbrk>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a0000c 	mov	r0, #12
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <sleep>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a0000d 	mov	r0, #13
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <uptime>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000e 	mov	r0, #14
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <proclist>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00016 	mov	r0, #22
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <settickets>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00017 	mov	r0, #23
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <srand>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00018 	mov	r0, #24
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <getpinfo>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00019 	mov	r0, #25
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <putc>:
     b54:	e92d4800 	push	{fp, lr}
     b58:	e28db004 	add	fp, sp, #4
     b5c:	e24dd008 	sub	sp, sp, #8
     b60:	e50b0008 	str	r0, [fp, #-8]
     b64:	e1a03001 	mov	r3, r1
     b68:	e54b3009 	strb	r3, [fp, #-9]
     b6c:	e24b3009 	sub	r3, fp, #9
     b70:	e3a02001 	mov	r2, #1
     b74:	e1a01003 	mov	r1, r3
     b78:	e51b0008 	ldr	r0, [fp, #-8]
     b7c:	ebffff40 	bl	884 <write>
     b80:	e1a00000 	nop			@ (mov r0, r0)
     b84:	e24bd004 	sub	sp, fp, #4
     b88:	e8bd8800 	pop	{fp, pc}

00000b8c <printint>:
     b8c:	e92d4800 	push	{fp, lr}
     b90:	e28db004 	add	fp, sp, #4
     b94:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b98:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b9c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ba0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ba4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ba8:	e3a03000 	mov	r3, #0
     bac:	e50b300c 	str	r3, [fp, #-12]
     bb0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bb4:	e3530000 	cmp	r3, #0
     bb8:	0a000008 	beq	be0 <printint+0x54>
     bbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bc0:	e3530000 	cmp	r3, #0
     bc4:	aa000005 	bge	be0 <printint+0x54>
     bc8:	e3a03001 	mov	r3, #1
     bcc:	e50b300c 	str	r3, [fp, #-12]
     bd0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bd4:	e2633000 	rsb	r3, r3, #0
     bd8:	e50b3010 	str	r3, [fp, #-16]
     bdc:	ea000001 	b	be8 <printint+0x5c>
     be0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     be4:	e50b3010 	str	r3, [fp, #-16]
     be8:	e3a03000 	mov	r3, #0
     bec:	e50b3008 	str	r3, [fp, #-8]
     bf0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     bf4:	e51b3010 	ldr	r3, [fp, #-16]
     bf8:	e1a01002 	mov	r1, r2
     bfc:	e1a00003 	mov	r0, r3
     c00:	eb0001d5 	bl	135c <__aeabi_uidivmod>
     c04:	e1a03001 	mov	r3, r1
     c08:	e1a01003 	mov	r1, r3
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e2832001 	add	r2, r3, #1
     c14:	e50b2008 	str	r2, [fp, #-8]
     c18:	e59f20a0 	ldr	r2, [pc, #160]	@ cc0 <printint+0x134>
     c1c:	e7d22001 	ldrb	r2, [r2, r1]
     c20:	e2433004 	sub	r3, r3, #4
     c24:	e083300b 	add	r3, r3, fp
     c28:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c2c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c30:	e1a01003 	mov	r1, r3
     c34:	e51b0010 	ldr	r0, [fp, #-16]
     c38:	eb00018a 	bl	1268 <__udivsi3>
     c3c:	e1a03000 	mov	r3, r0
     c40:	e50b3010 	str	r3, [fp, #-16]
     c44:	e51b3010 	ldr	r3, [fp, #-16]
     c48:	e3530000 	cmp	r3, #0
     c4c:	1affffe7 	bne	bf0 <printint+0x64>
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e3530000 	cmp	r3, #0
     c58:	0a00000e 	beq	c98 <printint+0x10c>
     c5c:	e51b3008 	ldr	r3, [fp, #-8]
     c60:	e2832001 	add	r2, r3, #1
     c64:	e50b2008 	str	r2, [fp, #-8]
     c68:	e2433004 	sub	r3, r3, #4
     c6c:	e083300b 	add	r3, r3, fp
     c70:	e3a0202d 	mov	r2, #45	@ 0x2d
     c74:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c78:	ea000006 	b	c98 <printint+0x10c>
     c7c:	e24b2020 	sub	r2, fp, #32
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e0823003 	add	r3, r2, r3
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e1a01003 	mov	r1, r3
     c90:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c94:	ebffffae 	bl	b54 <putc>
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e2433001 	sub	r3, r3, #1
     ca0:	e50b3008 	str	r3, [fp, #-8]
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e3530000 	cmp	r3, #0
     cac:	aafffff2 	bge	c7c <printint+0xf0>
     cb0:	e1a00000 	nop			@ (mov r0, r0)
     cb4:	e1a00000 	nop			@ (mov r0, r0)
     cb8:	e24bd004 	sub	sp, fp, #4
     cbc:	e8bd8800 	pop	{fp, pc}
     cc0:	00001454 	.word	0x00001454

00000cc4 <printf>:
     cc4:	e92d000e 	push	{r1, r2, r3}
     cc8:	e92d4800 	push	{fp, lr}
     ccc:	e28db004 	add	fp, sp, #4
     cd0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cd4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cd8:	e3a03000 	mov	r3, #0
     cdc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ce0:	e28b3008 	add	r3, fp, #8
     ce4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e3a03000 	mov	r3, #0
     cec:	e50b3010 	str	r3, [fp, #-16]
     cf0:	ea000074 	b	ec8 <printf+0x204>
     cf4:	e59b2004 	ldr	r2, [fp, #4]
     cf8:	e51b3010 	ldr	r3, [fp, #-16]
     cfc:	e0823003 	add	r3, r2, r3
     d00:	e5d33000 	ldrb	r3, [r3]
     d04:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d0c:	e3530000 	cmp	r3, #0
     d10:	1a00000b 	bne	d44 <printf+0x80>
     d14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d18:	e3530025 	cmp	r3, #37	@ 0x25
     d1c:	1a000002 	bne	d2c <printf+0x68>
     d20:	e3a03025 	mov	r3, #37	@ 0x25
     d24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d28:	ea000063 	b	ebc <printf+0x1f8>
     d2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d30:	e6ef3073 	uxtb	r3, r3
     d34:	e1a01003 	mov	r1, r3
     d38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d3c:	ebffff84 	bl	b54 <putc>
     d40:	ea00005d 	b	ebc <printf+0x1f8>
     d44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d48:	e3530025 	cmp	r3, #37	@ 0x25
     d4c:	1a00005a 	bne	ebc <printf+0x1f8>
     d50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d54:	e3530064 	cmp	r3, #100	@ 0x64
     d58:	1a00000a 	bne	d88 <printf+0xc4>
     d5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d60:	e5933000 	ldr	r3, [r3]
     d64:	e1a01003 	mov	r1, r3
     d68:	e3a03001 	mov	r3, #1
     d6c:	e3a0200a 	mov	r2, #10
     d70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d74:	ebffff84 	bl	b8c <printint>
     d78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d7c:	e2833004 	add	r3, r3, #4
     d80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d84:	ea00004a 	b	eb4 <printf+0x1f0>
     d88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d8c:	e3530078 	cmp	r3, #120	@ 0x78
     d90:	0a000002 	beq	da0 <printf+0xdc>
     d94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d98:	e3530070 	cmp	r3, #112	@ 0x70
     d9c:	1a00000a 	bne	dcc <printf+0x108>
     da0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e1a01003 	mov	r1, r3
     dac:	e3a03000 	mov	r3, #0
     db0:	e3a02010 	mov	r2, #16
     db4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db8:	ebffff73 	bl	b8c <printint>
     dbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc0:	e2833004 	add	r3, r3, #4
     dc4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	ea000039 	b	eb4 <printf+0x1f0>
     dcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd0:	e3530073 	cmp	r3, #115	@ 0x73
     dd4:	1a000018 	bne	e3c <printf+0x178>
     dd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e50b300c 	str	r3, [fp, #-12]
     de4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de8:	e2833004 	add	r3, r3, #4
     dec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e3530000 	cmp	r3, #0
     df8:	1a00000a 	bne	e28 <printf+0x164>
     dfc:	e59f30f4 	ldr	r3, [pc, #244]	@ ef8 <printf+0x234>
     e00:	e50b300c 	str	r3, [fp, #-12]
     e04:	ea000007 	b	e28 <printf+0x164>
     e08:	e51b300c 	ldr	r3, [fp, #-12]
     e0c:	e5d33000 	ldrb	r3, [r3]
     e10:	e1a01003 	mov	r1, r3
     e14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e18:	ebffff4d 	bl	b54 <putc>
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e2833001 	add	r3, r3, #1
     e24:	e50b300c 	str	r3, [fp, #-12]
     e28:	e51b300c 	ldr	r3, [fp, #-12]
     e2c:	e5d33000 	ldrb	r3, [r3]
     e30:	e3530000 	cmp	r3, #0
     e34:	1afffff3 	bne	e08 <printf+0x144>
     e38:	ea00001d 	b	eb4 <printf+0x1f0>
     e3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e40:	e3530063 	cmp	r3, #99	@ 0x63
     e44:	1a000009 	bne	e70 <printf+0x1ac>
     e48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e4c:	e5933000 	ldr	r3, [r3]
     e50:	e6ef3073 	uxtb	r3, r3
     e54:	e1a01003 	mov	r1, r3
     e58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e5c:	ebffff3c 	bl	b54 <putc>
     e60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e64:	e2833004 	add	r3, r3, #4
     e68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e6c:	ea000010 	b	eb4 <printf+0x1f0>
     e70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e3530025 	cmp	r3, #37	@ 0x25
     e78:	1a000005 	bne	e94 <printf+0x1d0>
     e7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e80:	e6ef3073 	uxtb	r3, r3
     e84:	e1a01003 	mov	r1, r3
     e88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e8c:	ebffff30 	bl	b54 <putc>
     e90:	ea000007 	b	eb4 <printf+0x1f0>
     e94:	e3a01025 	mov	r1, #37	@ 0x25
     e98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e9c:	ebffff2c 	bl	b54 <putc>
     ea0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ea4:	e6ef3073 	uxtb	r3, r3
     ea8:	e1a01003 	mov	r1, r3
     eac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb0:	ebffff27 	bl	b54 <putc>
     eb4:	e3a03000 	mov	r3, #0
     eb8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e2833001 	add	r3, r3, #1
     ec4:	e50b3010 	str	r3, [fp, #-16]
     ec8:	e59b2004 	ldr	r2, [fp, #4]
     ecc:	e51b3010 	ldr	r3, [fp, #-16]
     ed0:	e0823003 	add	r3, r2, r3
     ed4:	e5d33000 	ldrb	r3, [r3]
     ed8:	e3530000 	cmp	r3, #0
     edc:	1affff84 	bne	cf4 <printf+0x30>
     ee0:	e1a00000 	nop			@ (mov r0, r0)
     ee4:	e1a00000 	nop			@ (mov r0, r0)
     ee8:	e24bd004 	sub	sp, fp, #4
     eec:	e8bd4800 	pop	{fp, lr}
     ef0:	e28dd00c 	add	sp, sp, #12
     ef4:	e12fff1e 	bx	lr
     ef8:	0000144c 	.word	0x0000144c

00000efc <free>:
     efc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f00:	e28db000 	add	fp, sp, #0
     f04:	e24dd014 	sub	sp, sp, #20
     f08:	e50b0010 	str	r0, [fp, #-16]
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e2433008 	sub	r3, r3, #8
     f14:	e50b300c 	str	r3, [fp, #-12]
     f18:	e59f3154 	ldr	r3, [pc, #340]	@ 1074 <free+0x178>
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e50b3008 	str	r3, [fp, #-8]
     f24:	ea000010 	b	f6c <free+0x70>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e51b2008 	ldr	r2, [fp, #-8]
     f34:	e1520003 	cmp	r2, r3
     f38:	3a000008 	bcc	f60 <free+0x64>
     f3c:	e51b200c 	ldr	r2, [fp, #-12]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e1520003 	cmp	r2, r3
     f48:	8a000010 	bhi	f90 <free+0x94>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e51b200c 	ldr	r2, [fp, #-12]
     f58:	e1520003 	cmp	r2, r3
     f5c:	3a00000b 	bcc	f90 <free+0x94>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e50b3008 	str	r3, [fp, #-8]
     f6c:	e51b200c 	ldr	r2, [fp, #-12]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e1520003 	cmp	r2, r3
     f78:	9affffea 	bls	f28 <free+0x2c>
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e51b200c 	ldr	r2, [fp, #-12]
     f88:	e1520003 	cmp	r2, r3
     f8c:	2affffe5 	bcs	f28 <free+0x2c>
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e5933004 	ldr	r3, [r3, #4]
     f98:	e1a03183 	lsl	r3, r3, #3
     f9c:	e51b200c 	ldr	r2, [fp, #-12]
     fa0:	e0822003 	add	r2, r2, r3
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e1520003 	cmp	r2, r3
     fb0:	1a00000d 	bne	fec <free+0xf0>
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5932004 	ldr	r2, [r3, #4]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e5933004 	ldr	r3, [r3, #4]
     fc8:	e0822003 	add	r2, r2, r3
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5832004 	str	r2, [r3, #4]
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e5932000 	ldr	r2, [r3]
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5832000 	str	r2, [r3]
     fe8:	ea000003 	b	ffc <free+0x100>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5932000 	ldr	r2, [r3]
     ff4:	e51b300c 	ldr	r3, [fp, #-12]
     ff8:	e5832000 	str	r2, [r3]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933004 	ldr	r3, [r3, #4]
    1004:	e1a03183 	lsl	r3, r3, #3
    1008:	e51b2008 	ldr	r2, [fp, #-8]
    100c:	e0823003 	add	r3, r2, r3
    1010:	e51b200c 	ldr	r2, [fp, #-12]
    1014:	e1520003 	cmp	r2, r3
    1018:	1a00000b 	bne	104c <free+0x150>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5932004 	ldr	r2, [r3, #4]
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5933004 	ldr	r3, [r3, #4]
    102c:	e0822003 	add	r2, r2, r3
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5832004 	str	r2, [r3, #4]
    1038:	e51b300c 	ldr	r3, [fp, #-12]
    103c:	e5932000 	ldr	r2, [r3]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5832000 	str	r2, [r3]
    1048:	ea000002 	b	1058 <free+0x15c>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e51b200c 	ldr	r2, [fp, #-12]
    1054:	e5832000 	str	r2, [r3]
    1058:	e59f2014 	ldr	r2, [pc, #20]	@ 1074 <free+0x178>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5823000 	str	r3, [r2]
    1064:	e1a00000 	nop			@ (mov r0, r0)
    1068:	e28bd000 	add	sp, fp, #0
    106c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1070:	e12fff1e 	bx	lr
    1074:	00001470 	.word	0x00001470

00001078 <morecore>:
    1078:	e92d4800 	push	{fp, lr}
    107c:	e28db004 	add	fp, sp, #4
    1080:	e24dd010 	sub	sp, sp, #16
    1084:	e50b0010 	str	r0, [fp, #-16]
    1088:	e51b3010 	ldr	r3, [fp, #-16]
    108c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1090:	2a000001 	bcs	109c <morecore+0x24>
    1094:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1098:	e50b3010 	str	r3, [fp, #-16]
    109c:	e51b3010 	ldr	r3, [fp, #-16]
    10a0:	e1a03183 	lsl	r3, r3, #3
    10a4:	e1a00003 	mov	r0, r3
    10a8:	ebfffe6a 	bl	a58 <sbrk>
    10ac:	e50b0008 	str	r0, [fp, #-8]
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e3730001 	cmn	r3, #1
    10b8:	1a000001 	bne	10c4 <morecore+0x4c>
    10bc:	e3a03000 	mov	r3, #0
    10c0:	ea00000a 	b	10f0 <morecore+0x78>
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e50b300c 	str	r3, [fp, #-12]
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e51b2010 	ldr	r2, [fp, #-16]
    10d4:	e5832004 	str	r2, [r3, #4]
    10d8:	e51b300c 	ldr	r3, [fp, #-12]
    10dc:	e2833008 	add	r3, r3, #8
    10e0:	e1a00003 	mov	r0, r3
    10e4:	ebffff84 	bl	efc <free>
    10e8:	e59f300c 	ldr	r3, [pc, #12]	@ 10fc <morecore+0x84>
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e1a00003 	mov	r0, r3
    10f4:	e24bd004 	sub	sp, fp, #4
    10f8:	e8bd8800 	pop	{fp, pc}
    10fc:	00001470 	.word	0x00001470

00001100 <malloc>:
    1100:	e92d4800 	push	{fp, lr}
    1104:	e28db004 	add	fp, sp, #4
    1108:	e24dd018 	sub	sp, sp, #24
    110c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e2833007 	add	r3, r3, #7
    1118:	e1a031a3 	lsr	r3, r3, #3
    111c:	e2833001 	add	r3, r3, #1
    1120:	e50b3010 	str	r3, [fp, #-16]
    1124:	e59f3134 	ldr	r3, [pc, #308]	@ 1260 <malloc+0x160>
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e50b300c 	str	r3, [fp, #-12]
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e3530000 	cmp	r3, #0
    1138:	1a00000b 	bne	116c <malloc+0x6c>
    113c:	e59f3120 	ldr	r3, [pc, #288]	@ 1264 <malloc+0x164>
    1140:	e50b300c 	str	r3, [fp, #-12]
    1144:	e59f2114 	ldr	r2, [pc, #276]	@ 1260 <malloc+0x160>
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e5823000 	str	r3, [r2]
    1150:	e59f3108 	ldr	r3, [pc, #264]	@ 1260 <malloc+0x160>
    1154:	e5933000 	ldr	r3, [r3]
    1158:	e59f2104 	ldr	r2, [pc, #260]	@ 1264 <malloc+0x164>
    115c:	e5823000 	str	r3, [r2]
    1160:	e59f30fc 	ldr	r3, [pc, #252]	@ 1264 <malloc+0x164>
    1164:	e3a02000 	mov	r2, #0
    1168:	e5832004 	str	r2, [r3, #4]
    116c:	e51b300c 	ldr	r3, [fp, #-12]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e50b3008 	str	r3, [fp, #-8]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e5933004 	ldr	r3, [r3, #4]
    1180:	e51b2010 	ldr	r2, [fp, #-16]
    1184:	e1520003 	cmp	r2, r3
    1188:	8a00001e 	bhi	1208 <malloc+0x108>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e5933004 	ldr	r3, [r3, #4]
    1194:	e51b2010 	ldr	r2, [fp, #-16]
    1198:	e1520003 	cmp	r2, r3
    119c:	1a000004 	bne	11b4 <malloc+0xb4>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5932000 	ldr	r2, [r3]
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e5832000 	str	r2, [r3]
    11b0:	ea00000e 	b	11f0 <malloc+0xf0>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5932004 	ldr	r2, [r3, #4]
    11bc:	e51b3010 	ldr	r3, [fp, #-16]
    11c0:	e0422003 	sub	r2, r2, r3
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5832004 	str	r2, [r3, #4]
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5933004 	ldr	r3, [r3, #4]
    11d4:	e1a03183 	lsl	r3, r3, #3
    11d8:	e51b2008 	ldr	r2, [fp, #-8]
    11dc:	e0823003 	add	r3, r2, r3
    11e0:	e50b3008 	str	r3, [fp, #-8]
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e51b2010 	ldr	r2, [fp, #-16]
    11ec:	e5832004 	str	r2, [r3, #4]
    11f0:	e59f2068 	ldr	r2, [pc, #104]	@ 1260 <malloc+0x160>
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e5823000 	str	r3, [r2]
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e2833008 	add	r3, r3, #8
    1204:	ea000012 	b	1254 <malloc+0x154>
    1208:	e59f3050 	ldr	r3, [pc, #80]	@ 1260 <malloc+0x160>
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e51b2008 	ldr	r2, [fp, #-8]
    1214:	e1520003 	cmp	r2, r3
    1218:	1a000007 	bne	123c <malloc+0x13c>
    121c:	e51b0010 	ldr	r0, [fp, #-16]
    1220:	ebffff94 	bl	1078 <morecore>
    1224:	e50b0008 	str	r0, [fp, #-8]
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e3530000 	cmp	r3, #0
    1230:	1a000001 	bne	123c <malloc+0x13c>
    1234:	e3a03000 	mov	r3, #0
    1238:	ea000005 	b	1254 <malloc+0x154>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e50b300c 	str	r3, [fp, #-12]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e50b3008 	str	r3, [fp, #-8]
    1250:	eaffffc8 	b	1178 <malloc+0x78>
    1254:	e1a00003 	mov	r0, r3
    1258:	e24bd004 	sub	sp, fp, #4
    125c:	e8bd8800 	pop	{fp, pc}
    1260:	00001470 	.word	0x00001470
    1264:	00001468 	.word	0x00001468

00001268 <__udivsi3>:
    1268:	e2512001 	subs	r2, r1, #1
    126c:	012fff1e 	bxeq	lr
    1270:	3a000036 	bcc	1350 <__udivsi3+0xe8>
    1274:	e1500001 	cmp	r0, r1
    1278:	9a000022 	bls	1308 <__udivsi3+0xa0>
    127c:	e1110002 	tst	r1, r2
    1280:	0a000023 	beq	1314 <__udivsi3+0xac>
    1284:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1288:	01a01181 	lsleq	r1, r1, #3
    128c:	03a03008 	moveq	r3, #8
    1290:	13a03001 	movne	r3, #1
    1294:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1298:	31510000 	cmpcc	r1, r0
    129c:	31a01201 	lslcc	r1, r1, #4
    12a0:	31a03203 	lslcc	r3, r3, #4
    12a4:	3afffffa 	bcc	1294 <__udivsi3+0x2c>
    12a8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12ac:	31510000 	cmpcc	r1, r0
    12b0:	31a01081 	lslcc	r1, r1, #1
    12b4:	31a03083 	lslcc	r3, r3, #1
    12b8:	3afffffa 	bcc	12a8 <__udivsi3+0x40>
    12bc:	e3a02000 	mov	r2, #0
    12c0:	e1500001 	cmp	r0, r1
    12c4:	20400001 	subcs	r0, r0, r1
    12c8:	21822003 	orrcs	r2, r2, r3
    12cc:	e15000a1 	cmp	r0, r1, lsr #1
    12d0:	204000a1 	subcs	r0, r0, r1, lsr #1
    12d4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12d8:	e1500121 	cmp	r0, r1, lsr #2
    12dc:	20400121 	subcs	r0, r0, r1, lsr #2
    12e0:	21822123 	orrcs	r2, r2, r3, lsr #2
    12e4:	e15001a1 	cmp	r0, r1, lsr #3
    12e8:	204001a1 	subcs	r0, r0, r1, lsr #3
    12ec:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12f0:	e3500000 	cmp	r0, #0
    12f4:	11b03223 	lsrsne	r3, r3, #4
    12f8:	11a01221 	lsrne	r1, r1, #4
    12fc:	1affffef 	bne	12c0 <__udivsi3+0x58>
    1300:	e1a00002 	mov	r0, r2
    1304:	e12fff1e 	bx	lr
    1308:	03a00001 	moveq	r0, #1
    130c:	13a00000 	movne	r0, #0
    1310:	e12fff1e 	bx	lr
    1314:	e3510801 	cmp	r1, #65536	@ 0x10000
    1318:	21a01821 	lsrcs	r1, r1, #16
    131c:	23a02010 	movcs	r2, #16
    1320:	33a02000 	movcc	r2, #0
    1324:	e3510c01 	cmp	r1, #256	@ 0x100
    1328:	21a01421 	lsrcs	r1, r1, #8
    132c:	22822008 	addcs	r2, r2, #8
    1330:	e3510010 	cmp	r1, #16
    1334:	21a01221 	lsrcs	r1, r1, #4
    1338:	22822004 	addcs	r2, r2, #4
    133c:	e3510004 	cmp	r1, #4
    1340:	82822003 	addhi	r2, r2, #3
    1344:	908220a1 	addls	r2, r2, r1, lsr #1
    1348:	e1a00230 	lsr	r0, r0, r2
    134c:	e12fff1e 	bx	lr
    1350:	e3500000 	cmp	r0, #0
    1354:	13e00000 	mvnne	r0, #0
    1358:	ea000007 	b	137c <__aeabi_idiv0>

0000135c <__aeabi_uidivmod>:
    135c:	e3510000 	cmp	r1, #0
    1360:	0afffffa 	beq	1350 <__udivsi3+0xe8>
    1364:	e92d4003 	push	{r0, r1, lr}
    1368:	ebffffbe 	bl	1268 <__udivsi3>
    136c:	e8bd4006 	pop	{r1, r2, lr}
    1370:	e0030092 	mul	r3, r2, r0
    1374:	e0411003 	sub	r1, r1, r3
    1378:	e12fff1e 	bx	lr

0000137c <__aeabi_idiv0>:
    137c:	e12fff1e 	bx	lr
