
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <isdigit>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e1a03000 	mov	r3, r0
      10:	e54b3005 	strb	r3, [fp, #-5]
      14:	e55b3005 	ldrb	r3, [fp, #-5]
      18:	e353002f 	cmp	r3, #47	@ 0x2f
      1c:	9a000004 	bls	34 <isdigit+0x34>
      20:	e55b3005 	ldrb	r3, [fp, #-5]
      24:	e3530039 	cmp	r3, #57	@ 0x39
      28:	8a000001 	bhi	34 <isdigit+0x34>
      2c:	e3a03001 	mov	r3, #1
      30:	ea000000 	b	38 <isdigit+0x38>
      34:	e3a03000 	mov	r3, #0
      38:	e1a00003 	mov	r0, r3
      3c:	e28bd000 	add	sp, fp, #0
      40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      44:	e12fff1e 	bx	lr

00000048 <main>:
      48:	e92d4800 	push	{fp, lr}
      4c:	e28db004 	add	fp, sp, #4
      50:	e24dd018 	sub	sp, sp, #24
      54:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      58:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      60:	e3530001 	cmp	r3, #1
      64:	ca000003 	bgt	78 <main+0x30>
      68:	e59f10b8 	ldr	r1, [pc, #184]	@ 128 <main+0xe0>
      6c:	e3a00001 	mov	r0, #1
      70:	eb0002fe 	bl	c70 <printf>
      74:	eb0001c9 	bl	7a0 <exit>
      78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      7c:	e5933004 	ldr	r3, [r3, #4]
      80:	e50b3008 	str	r3, [fp, #-8]
      84:	ea00000d 	b	c0 <main+0x78>
      88:	e51b3008 	ldr	r3, [fp, #-8]
      8c:	e5d33000 	ldrb	r3, [r3]
      90:	e1a00003 	mov	r0, r3
      94:	ebffffd9 	bl	0 <isdigit>
      98:	e1a03000 	mov	r3, r0
      9c:	e3530000 	cmp	r3, #0
      a0:	1a000003 	bne	b4 <main+0x6c>
      a4:	e59f1080 	ldr	r1, [pc, #128]	@ 12c <main+0xe4>
      a8:	e3a00001 	mov	r0, #1
      ac:	eb0002ef 	bl	c70 <printf>
      b0:	eb0001ba 	bl	7a0 <exit>
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	e51b3008 	ldr	r3, [fp, #-8]
      c4:	e5d33000 	ldrb	r3, [r3]
      c8:	e3530000 	cmp	r3, #0
      cc:	1affffed 	bne	88 <main+0x40>
      d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      d4:	e2833004 	add	r3, r3, #4
      d8:	e5933000 	ldr	r3, [r3]
      dc:	e1a00003 	mov	r0, r3
      e0:	eb00010b 	bl	514 <atoi>
      e4:	e50b000c 	str	r0, [fp, #-12]
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e3530000 	cmp	r3, #0
      f0:	aa000003 	bge	104 <main+0xbc>
      f4:	e59f1034 	ldr	r1, [pc, #52]	@ 130 <main+0xe8>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb0002db 	bl	c70 <printf>
     100:	eb0001a6 	bl	7a0 <exit>
     104:	e51b200c 	ldr	r2, [fp, #-12]
     108:	e1a03002 	mov	r3, r2
     10c:	e1a03103 	lsl	r3, r3, #2
     110:	e0833002 	add	r3, r3, r2
     114:	e1a03083 	lsl	r3, r3, #1
     118:	e50b3010 	str	r3, [fp, #-16]
     11c:	e51b0010 	ldr	r0, [fp, #-16]
     120:	eb000240 	bl	a28 <sleep>
     124:	eb00019d 	bl	7a0 <exit>
     128:	0000132c 	.word	0x0000132c
     12c:	00001344 	.word	0x00001344
     130:	00001374 	.word	0x00001374

00000134 <strcpy>:
     134:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     138:	e28db000 	add	fp, sp, #0
     13c:	e24dd014 	sub	sp, sp, #20
     140:	e50b0010 	str	r0, [fp, #-16]
     144:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     148:	e51b3010 	ldr	r3, [fp, #-16]
     14c:	e50b3008 	str	r3, [fp, #-8]
     150:	e1a00000 	nop			@ (mov r0, r0)
     154:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     158:	e2823001 	add	r3, r2, #1
     15c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     160:	e51b3010 	ldr	r3, [fp, #-16]
     164:	e2831001 	add	r1, r3, #1
     168:	e50b1010 	str	r1, [fp, #-16]
     16c:	e5d22000 	ldrb	r2, [r2]
     170:	e5c32000 	strb	r2, [r3]
     174:	e5d33000 	ldrb	r3, [r3]
     178:	e3530000 	cmp	r3, #0
     17c:	1afffff4 	bne	154 <strcpy+0x20>
     180:	e51b3008 	ldr	r3, [fp, #-8]
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strcmp>:
     194:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd00c 	sub	sp, sp, #12
     1a0:	e50b0008 	str	r0, [fp, #-8]
     1a4:	e50b100c 	str	r1, [fp, #-12]
     1a8:	ea000005 	b	1c4 <strcmp+0x30>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833001 	add	r3, r3, #1
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b300c 	ldr	r3, [fp, #-12]
     1bc:	e2833001 	add	r3, r3, #1
     1c0:	e50b300c 	str	r3, [fp, #-12]
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	0a000005 	beq	1ec <strcmp+0x58>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e5d32000 	ldrb	r2, [r3]
     1dc:	e51b300c 	ldr	r3, [fp, #-12]
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e1520003 	cmp	r2, r3
     1e8:	0affffef 	beq	1ac <strcmp+0x18>
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e1a02003 	mov	r2, r3
     1f8:	e51b300c 	ldr	r3, [fp, #-12]
     1fc:	e5d33000 	ldrb	r3, [r3]
     200:	e0423003 	sub	r3, r2, r3
     204:	e1a00003 	mov	r0, r3
     208:	e28bd000 	add	sp, fp, #0
     20c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     210:	e12fff1e 	bx	lr

00000214 <strlen>:
     214:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     218:	e28db000 	add	fp, sp, #0
     21c:	e24dd014 	sub	sp, sp, #20
     220:	e50b0010 	str	r0, [fp, #-16]
     224:	e3a03000 	mov	r3, #0
     228:	e50b3008 	str	r3, [fp, #-8]
     22c:	ea000002 	b	23c <strlen+0x28>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e51b2010 	ldr	r2, [fp, #-16]
     244:	e0823003 	add	r3, r2, r3
     248:	e5d33000 	ldrb	r3, [r3]
     24c:	e3530000 	cmp	r3, #0
     250:	1afffff6 	bne	230 <strlen+0x1c>
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e1a00003 	mov	r0, r3
     25c:	e28bd000 	add	sp, fp, #0
     260:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     264:	e12fff1e 	bx	lr

00000268 <memset>:
     268:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     26c:	e28db000 	add	fp, sp, #0
     270:	e24dd024 	sub	sp, sp, #36	@ 0x24
     274:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     278:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     27c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     280:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     284:	e50b3008 	str	r3, [fp, #-8]
     288:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     28c:	e54b300d 	strb	r3, [fp, #-13]
     290:	e55b200d 	ldrb	r2, [fp, #-13]
     294:	e1a03002 	mov	r3, r2
     298:	e1a03403 	lsl	r3, r3, #8
     29c:	e0833002 	add	r3, r3, r2
     2a0:	e1a03803 	lsl	r3, r3, #16
     2a4:	e1a02003 	mov	r2, r3
     2a8:	e55b300d 	ldrb	r3, [fp, #-13]
     2ac:	e1a03403 	lsl	r3, r3, #8
     2b0:	e1822003 	orr	r2, r2, r3
     2b4:	e55b300d 	ldrb	r3, [fp, #-13]
     2b8:	e1823003 	orr	r3, r2, r3
     2bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2c0:	ea000008 	b	2e8 <memset+0x80>
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e55b200d 	ldrb	r2, [fp, #-13]
     2cc:	e5c32000 	strb	r2, [r3]
     2d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e2433001 	sub	r3, r3, #1
     2d8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e2833001 	add	r3, r3, #1
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e3530000 	cmp	r3, #0
     2f0:	0a000003 	beq	304 <memset+0x9c>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e2033003 	and	r3, r3, #3
     2fc:	e3530000 	cmp	r3, #0
     300:	1affffef 	bne	2c4 <memset+0x5c>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e50b300c 	str	r3, [fp, #-12]
     30c:	ea000008 	b	334 <memset+0xcc>
     310:	e51b300c 	ldr	r3, [fp, #-12]
     314:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     318:	e5832000 	str	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e2433004 	sub	r3, r3, #4
     324:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e2833004 	add	r3, r3, #4
     330:	e50b300c 	str	r3, [fp, #-12]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e3530003 	cmp	r3, #3
     33c:	8afffff3 	bhi	310 <memset+0xa8>
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	ea000008 	b	370 <memset+0x108>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e55b200d 	ldrb	r2, [fp, #-13]
     354:	e5c32000 	strb	r2, [r3]
     358:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e2433001 	sub	r3, r3, #1
     360:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e3530000 	cmp	r3, #0
     378:	1afffff3 	bne	34c <memset+0xe4>
     37c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     380:	e1a00003 	mov	r0, r3
     384:	e28bd000 	add	sp, fp, #0
     388:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     38c:	e12fff1e 	bx	lr

00000390 <strchr>:
     390:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     394:	e28db000 	add	fp, sp, #0
     398:	e24dd00c 	sub	sp, sp, #12
     39c:	e50b0008 	str	r0, [fp, #-8]
     3a0:	e1a03001 	mov	r3, r1
     3a4:	e54b3009 	strb	r3, [fp, #-9]
     3a8:	ea000009 	b	3d4 <strchr+0x44>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e5d33000 	ldrb	r3, [r3]
     3b4:	e55b2009 	ldrb	r2, [fp, #-9]
     3b8:	e1520003 	cmp	r2, r3
     3bc:	1a000001 	bne	3c8 <strchr+0x38>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	ea000007 	b	3e8 <strchr+0x58>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e50b3008 	str	r3, [fp, #-8]
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e5d33000 	ldrb	r3, [r3]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	1afffff1 	bne	3ac <strchr+0x1c>
     3e4:	e3a03000 	mov	r3, #0
     3e8:	e1a00003 	mov	r0, r3
     3ec:	e28bd000 	add	sp, fp, #0
     3f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f4:	e12fff1e 	bx	lr

000003f8 <gets>:
     3f8:	e92d4800 	push	{fp, lr}
     3fc:	e28db004 	add	fp, sp, #4
     400:	e24dd018 	sub	sp, sp, #24
     404:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     408:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     40c:	e3a03000 	mov	r3, #0
     410:	e50b3008 	str	r3, [fp, #-8]
     414:	ea000016 	b	474 <gets+0x7c>
     418:	e24b300d 	sub	r3, fp, #13
     41c:	e3a02001 	mov	r2, #1
     420:	e1a01003 	mov	r1, r3
     424:	e3a00000 	mov	r0, #0
     428:	eb0000f7 	bl	80c <read>
     42c:	e50b000c 	str	r0, [fp, #-12]
     430:	e51b300c 	ldr	r3, [fp, #-12]
     434:	e3530000 	cmp	r3, #0
     438:	da000013 	ble	48c <gets+0x94>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2832001 	add	r2, r3, #1
     444:	e50b2008 	str	r2, [fp, #-8]
     448:	e1a02003 	mov	r2, r3
     44c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     450:	e0833002 	add	r3, r3, r2
     454:	e55b200d 	ldrb	r2, [fp, #-13]
     458:	e5c32000 	strb	r2, [r3]
     45c:	e55b300d 	ldrb	r3, [fp, #-13]
     460:	e353000a 	cmp	r3, #10
     464:	0a000009 	beq	490 <gets+0x98>
     468:	e55b300d 	ldrb	r3, [fp, #-13]
     46c:	e353000d 	cmp	r3, #13
     470:	0a000006 	beq	490 <gets+0x98>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     480:	e1520003 	cmp	r2, r3
     484:	caffffe3 	bgt	418 <gets+0x20>
     488:	ea000000 	b	490 <gets+0x98>
     48c:	e1a00000 	nop			@ (mov r0, r0)
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     498:	e0823003 	add	r3, r2, r3
     49c:	e3a02000 	mov	r2, #0
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a8:	e1a00003 	mov	r0, r3
     4ac:	e24bd004 	sub	sp, fp, #4
     4b0:	e8bd8800 	pop	{fp, pc}

000004b4 <stat>:
     4b4:	e92d4800 	push	{fp, lr}
     4b8:	e28db004 	add	fp, sp, #4
     4bc:	e24dd010 	sub	sp, sp, #16
     4c0:	e50b0010 	str	r0, [fp, #-16]
     4c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4c8:	e3a01000 	mov	r1, #0
     4cc:	e51b0010 	ldr	r0, [fp, #-16]
     4d0:	eb0000fa 	bl	8c0 <open>
     4d4:	e50b0008 	str	r0, [fp, #-8]
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e3530000 	cmp	r3, #0
     4e0:	aa000001 	bge	4ec <stat+0x38>
     4e4:	e3e03000 	mvn	r3, #0
     4e8:	ea000006 	b	508 <stat+0x54>
     4ec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f0:	e51b0008 	ldr	r0, [fp, #-8]
     4f4:	eb00010c 	bl	92c <fstat>
     4f8:	e50b000c 	str	r0, [fp, #-12]
     4fc:	e51b0008 	ldr	r0, [fp, #-8]
     500:	eb0000d3 	bl	854 <close>
     504:	e51b300c 	ldr	r3, [fp, #-12]
     508:	e1a00003 	mov	r0, r3
     50c:	e24bd004 	sub	sp, fp, #4
     510:	e8bd8800 	pop	{fp, pc}

00000514 <atoi>:
     514:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     518:	e28db000 	add	fp, sp, #0
     51c:	e24dd014 	sub	sp, sp, #20
     520:	e50b0010 	str	r0, [fp, #-16]
     524:	e3a03000 	mov	r3, #0
     528:	e50b3008 	str	r3, [fp, #-8]
     52c:	ea00000c 	b	564 <atoi+0x50>
     530:	e51b2008 	ldr	r2, [fp, #-8]
     534:	e1a03002 	mov	r3, r2
     538:	e1a03103 	lsl	r3, r3, #2
     53c:	e0833002 	add	r3, r3, r2
     540:	e1a03083 	lsl	r3, r3, #1
     544:	e1a01003 	mov	r1, r3
     548:	e51b3010 	ldr	r3, [fp, #-16]
     54c:	e2832001 	add	r2, r3, #1
     550:	e50b2010 	str	r2, [fp, #-16]
     554:	e5d33000 	ldrb	r3, [r3]
     558:	e0813003 	add	r3, r1, r3
     55c:	e2433030 	sub	r3, r3, #48	@ 0x30
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3010 	ldr	r3, [fp, #-16]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e353002f 	cmp	r3, #47	@ 0x2f
     570:	9a000003 	bls	584 <atoi+0x70>
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e3530039 	cmp	r3, #57	@ 0x39
     580:	9affffea 	bls	530 <atoi+0x1c>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e1a00003 	mov	r0, r3
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <memmove>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd01c 	sub	sp, sp, #28
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5ac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b0:	e51b3010 	ldr	r3, [fp, #-16]
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5bc:	e50b300c 	str	r3, [fp, #-12]
     5c0:	ea000007 	b	5e4 <memmove+0x4c>
     5c4:	e51b200c 	ldr	r2, [fp, #-12]
     5c8:	e2823001 	add	r3, r2, #1
     5cc:	e50b300c 	str	r3, [fp, #-12]
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2831001 	add	r1, r3, #1
     5d8:	e50b1008 	str	r1, [fp, #-8]
     5dc:	e5d22000 	ldrb	r2, [r2]
     5e0:	e5c32000 	strb	r2, [r3]
     5e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5e8:	e2432001 	sub	r2, r3, #1
     5ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f0:	e3530000 	cmp	r3, #0
     5f4:	cafffff2 	bgt	5c4 <memmove+0x2c>
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e1a00003 	mov	r0, r3
     600:	e28bd000 	add	sp, fp, #0
     604:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     608:	e12fff1e 	bx	lr

0000060c <strncmp>:
     60c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     610:	e28db000 	add	fp, sp, #0
     614:	e24dd014 	sub	sp, sp, #20
     618:	e50b0008 	str	r0, [fp, #-8]
     61c:	e50b100c 	str	r1, [fp, #-12]
     620:	e50b2010 	str	r2, [fp, #-16]
     624:	ea000008 	b	64c <strncmp+0x40>
     628:	e51b3008 	ldr	r3, [fp, #-8]
     62c:	e2833001 	add	r3, r3, #1
     630:	e50b3008 	str	r3, [fp, #-8]
     634:	e51b300c 	ldr	r3, [fp, #-12]
     638:	e2833001 	add	r3, r3, #1
     63c:	e50b300c 	str	r3, [fp, #-12]
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e2433001 	sub	r3, r3, #1
     648:	e50b3010 	str	r3, [fp, #-16]
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e3530000 	cmp	r3, #0
     654:	da00000d 	ble	690 <strncmp+0x84>
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e5d33000 	ldrb	r3, [r3]
     660:	e3530000 	cmp	r3, #0
     664:	0a000009 	beq	690 <strncmp+0x84>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e3530000 	cmp	r3, #0
     674:	0a000005 	beq	690 <strncmp+0x84>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e5d32000 	ldrb	r2, [r3]
     680:	e51b300c 	ldr	r3, [fp, #-12]
     684:	e5d33000 	ldrb	r3, [r3]
     688:	e1520003 	cmp	r2, r3
     68c:	0affffe5 	beq	628 <strncmp+0x1c>
     690:	e51b3010 	ldr	r3, [fp, #-16]
     694:	e3530000 	cmp	r3, #0
     698:	1a000001 	bne	6a4 <strncmp+0x98>
     69c:	e3a03000 	mov	r3, #0
     6a0:	ea000005 	b	6bc <strncmp+0xb0>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5d33000 	ldrb	r3, [r3]
     6ac:	e1a02003 	mov	r2, r3
     6b0:	e51b300c 	ldr	r3, [fp, #-12]
     6b4:	e5d33000 	ldrb	r3, [r3]
     6b8:	e0423003 	sub	r3, r2, r3
     6bc:	e1a00003 	mov	r0, r3
     6c0:	e28bd000 	add	sp, fp, #0
     6c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <strncpy>:
     6cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d0:	e28db000 	add	fp, sp, #0
     6d4:	e24dd01c 	sub	sp, sp, #28
     6d8:	e50b0010 	str	r0, [fp, #-16]
     6dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6e0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6e4:	e51b3010 	ldr	r3, [fp, #-16]
     6e8:	e50b3008 	str	r3, [fp, #-8]
     6ec:	ea00000a 	b	71c <strncpy+0x50>
     6f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6f4:	e2823001 	add	r3, r2, #1
     6f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e2831001 	add	r1, r3, #1
     704:	e50b1008 	str	r1, [fp, #-8]
     708:	e5d22000 	ldrb	r2, [r2]
     70c:	e5c32000 	strb	r2, [r3]
     710:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     714:	e2433001 	sub	r3, r3, #1
     718:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     71c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     720:	e3530000 	cmp	r3, #0
     724:	da00000c 	ble	75c <strncpy+0x90>
     728:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     72c:	e5d33000 	ldrb	r3, [r3]
     730:	e3530000 	cmp	r3, #0
     734:	1affffed 	bne	6f0 <strncpy+0x24>
     738:	ea000007 	b	75c <strncpy+0x90>
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e2832001 	add	r2, r3, #1
     744:	e50b2008 	str	r2, [fp, #-8]
     748:	e3a02000 	mov	r2, #0
     74c:	e5c32000 	strb	r2, [r3]
     750:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     754:	e2433001 	sub	r3, r3, #1
     758:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     75c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     760:	e3530000 	cmp	r3, #0
     764:	cafffff4 	bgt	73c <strncpy+0x70>
     768:	e51b3010 	ldr	r3, [fp, #-16]
     76c:	e1a00003 	mov	r0, r3
     770:	e28bd000 	add	sp, fp, #0
     774:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <fork>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00001 	mov	r0, #1
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <exit>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00002 	mov	r0, #2
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <wait>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00003 	mov	r0, #3
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <pipe>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00004 	mov	r0, #4
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <read>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00005 	mov	r0, #5
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <write>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00010 	mov	r0, #16
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <close>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00015 	mov	r0, #21
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <kill>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00006 	mov	r0, #6
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <exec>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00007 	mov	r0, #7
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <open>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a0000f 	mov	r0, #15
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <mknod>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00011 	mov	r0, #17
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <unlink>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00012 	mov	r0, #18
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <fstat>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00008 	mov	r0, #8
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <link>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a00013 	mov	r0, #19
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <mkdir>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a00014 	mov	r0, #20
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <chdir>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a00009 	mov	r0, #9
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <dup>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a0000a 	mov	r0, #10
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <getpid>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a0000b 	mov	r0, #11
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <sbrk>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a0000c 	mov	r0, #12
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <sleep>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a0000d 	mov	r0, #13
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <uptime>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a0000e 	mov	r0, #14
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <proclist>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00016 	mov	r0, #22
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <settickets>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a00017 	mov	r0, #23
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <srand>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00018 	mov	r0, #24
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <getpinfo>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a00019 	mov	r0, #25
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <putc>:
     b00:	e92d4800 	push	{fp, lr}
     b04:	e28db004 	add	fp, sp, #4
     b08:	e24dd008 	sub	sp, sp, #8
     b0c:	e50b0008 	str	r0, [fp, #-8]
     b10:	e1a03001 	mov	r3, r1
     b14:	e54b3009 	strb	r3, [fp, #-9]
     b18:	e24b3009 	sub	r3, fp, #9
     b1c:	e3a02001 	mov	r2, #1
     b20:	e1a01003 	mov	r1, r3
     b24:	e51b0008 	ldr	r0, [fp, #-8]
     b28:	ebffff40 	bl	830 <write>
     b2c:	e1a00000 	nop			@ (mov r0, r0)
     b30:	e24bd004 	sub	sp, fp, #4
     b34:	e8bd8800 	pop	{fp, pc}

00000b38 <printint>:
     b38:	e92d4800 	push	{fp, lr}
     b3c:	e28db004 	add	fp, sp, #4
     b40:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b44:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b48:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b4c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b50:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b54:	e3a03000 	mov	r3, #0
     b58:	e50b300c 	str	r3, [fp, #-12]
     b5c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b60:	e3530000 	cmp	r3, #0
     b64:	0a000008 	beq	b8c <printint+0x54>
     b68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b6c:	e3530000 	cmp	r3, #0
     b70:	aa000005 	bge	b8c <printint+0x54>
     b74:	e3a03001 	mov	r3, #1
     b78:	e50b300c 	str	r3, [fp, #-12]
     b7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b80:	e2633000 	rsb	r3, r3, #0
     b84:	e50b3010 	str	r3, [fp, #-16]
     b88:	ea000001 	b	b94 <printint+0x5c>
     b8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b90:	e50b3010 	str	r3, [fp, #-16]
     b94:	e3a03000 	mov	r3, #0
     b98:	e50b3008 	str	r3, [fp, #-8]
     b9c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ba0:	e51b3010 	ldr	r3, [fp, #-16]
     ba4:	e1a01002 	mov	r1, r2
     ba8:	e1a00003 	mov	r0, r3
     bac:	eb0001d5 	bl	1308 <__aeabi_uidivmod>
     bb0:	e1a03001 	mov	r3, r1
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e2832001 	add	r2, r3, #1
     bc0:	e50b2008 	str	r2, [fp, #-8]
     bc4:	e59f20a0 	ldr	r2, [pc, #160]	@ c6c <printint+0x134>
     bc8:	e7d22001 	ldrb	r2, [r2, r1]
     bcc:	e2433004 	sub	r3, r3, #4
     bd0:	e083300b 	add	r3, r3, fp
     bd4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bd8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0010 	ldr	r0, [fp, #-16]
     be4:	eb00018a 	bl	1214 <__udivsi3>
     be8:	e1a03000 	mov	r3, r0
     bec:	e50b3010 	str	r3, [fp, #-16]
     bf0:	e51b3010 	ldr	r3, [fp, #-16]
     bf4:	e3530000 	cmp	r3, #0
     bf8:	1affffe7 	bne	b9c <printint+0x64>
     bfc:	e51b300c 	ldr	r3, [fp, #-12]
     c00:	e3530000 	cmp	r3, #0
     c04:	0a00000e 	beq	c44 <printint+0x10c>
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e2832001 	add	r2, r3, #1
     c10:	e50b2008 	str	r2, [fp, #-8]
     c14:	e2433004 	sub	r3, r3, #4
     c18:	e083300b 	add	r3, r3, fp
     c1c:	e3a0202d 	mov	r2, #45	@ 0x2d
     c20:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c24:	ea000006 	b	c44 <printint+0x10c>
     c28:	e24b2020 	sub	r2, fp, #32
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e0823003 	add	r3, r2, r3
     c34:	e5d33000 	ldrb	r3, [r3]
     c38:	e1a01003 	mov	r1, r3
     c3c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c40:	ebffffae 	bl	b00 <putc>
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e2433001 	sub	r3, r3, #1
     c4c:	e50b3008 	str	r3, [fp, #-8]
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e3530000 	cmp	r3, #0
     c58:	aafffff2 	bge	c28 <printint+0xf0>
     c5c:	e1a00000 	nop			@ (mov r0, r0)
     c60:	e1a00000 	nop			@ (mov r0, r0)
     c64:	e24bd004 	sub	sp, fp, #4
     c68:	e8bd8800 	pop	{fp, pc}
     c6c:	000013a4 	.word	0x000013a4

00000c70 <printf>:
     c70:	e92d000e 	push	{r1, r2, r3}
     c74:	e92d4800 	push	{fp, lr}
     c78:	e28db004 	add	fp, sp, #4
     c7c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c80:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c84:	e3a03000 	mov	r3, #0
     c88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c8c:	e28b3008 	add	r3, fp, #8
     c90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c94:	e3a03000 	mov	r3, #0
     c98:	e50b3010 	str	r3, [fp, #-16]
     c9c:	ea000074 	b	e74 <printf+0x204>
     ca0:	e59b2004 	ldr	r2, [fp, #4]
     ca4:	e51b3010 	ldr	r3, [fp, #-16]
     ca8:	e0823003 	add	r3, r2, r3
     cac:	e5d33000 	ldrb	r3, [r3]
     cb0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     cb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cb8:	e3530000 	cmp	r3, #0
     cbc:	1a00000b 	bne	cf0 <printf+0x80>
     cc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc4:	e3530025 	cmp	r3, #37	@ 0x25
     cc8:	1a000002 	bne	cd8 <printf+0x68>
     ccc:	e3a03025 	mov	r3, #37	@ 0x25
     cd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd4:	ea000063 	b	e68 <printf+0x1f8>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e6ef3073 	uxtb	r3, r3
     ce0:	e1a01003 	mov	r1, r3
     ce4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce8:	ebffff84 	bl	b00 <putc>
     cec:	ea00005d 	b	e68 <printf+0x1f8>
     cf0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cf4:	e3530025 	cmp	r3, #37	@ 0x25
     cf8:	1a00005a 	bne	e68 <printf+0x1f8>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e3530064 	cmp	r3, #100	@ 0x64
     d04:	1a00000a 	bne	d34 <printf+0xc4>
     d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e1a01003 	mov	r1, r3
     d14:	e3a03001 	mov	r3, #1
     d18:	e3a0200a 	mov	r2, #10
     d1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d20:	ebffff84 	bl	b38 <printint>
     d24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d28:	e2833004 	add	r3, r3, #4
     d2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d30:	ea00004a 	b	e60 <printf+0x1f0>
     d34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d38:	e3530078 	cmp	r3, #120	@ 0x78
     d3c:	0a000002 	beq	d4c <printf+0xdc>
     d40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d44:	e3530070 	cmp	r3, #112	@ 0x70
     d48:	1a00000a 	bne	d78 <printf+0x108>
     d4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e1a01003 	mov	r1, r3
     d58:	e3a03000 	mov	r3, #0
     d5c:	e3a02010 	mov	r2, #16
     d60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d64:	ebffff73 	bl	b38 <printint>
     d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	e2833004 	add	r3, r3, #4
     d70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d74:	ea000039 	b	e60 <printf+0x1f0>
     d78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d7c:	e3530073 	cmp	r3, #115	@ 0x73
     d80:	1a000018 	bne	de8 <printf+0x178>
     d84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e50b300c 	str	r3, [fp, #-12]
     d90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d94:	e2833004 	add	r3, r3, #4
     d98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d9c:	e51b300c 	ldr	r3, [fp, #-12]
     da0:	e3530000 	cmp	r3, #0
     da4:	1a00000a 	bne	dd4 <printf+0x164>
     da8:	e59f30f4 	ldr	r3, [pc, #244]	@ ea4 <printf+0x234>
     dac:	e50b300c 	str	r3, [fp, #-12]
     db0:	ea000007 	b	dd4 <printf+0x164>
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5d33000 	ldrb	r3, [r3]
     dbc:	e1a01003 	mov	r1, r3
     dc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc4:	ebffff4d 	bl	b00 <putc>
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e2833001 	add	r3, r3, #1
     dd0:	e50b300c 	str	r3, [fp, #-12]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5d33000 	ldrb	r3, [r3]
     ddc:	e3530000 	cmp	r3, #0
     de0:	1afffff3 	bne	db4 <printf+0x144>
     de4:	ea00001d 	b	e60 <printf+0x1f0>
     de8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dec:	e3530063 	cmp	r3, #99	@ 0x63
     df0:	1a000009 	bne	e1c <printf+0x1ac>
     df4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e6ef3073 	uxtb	r3, r3
     e00:	e1a01003 	mov	r1, r3
     e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e08:	ebffff3c 	bl	b00 <putc>
     e0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e10:	e2833004 	add	r3, r3, #4
     e14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e18:	ea000010 	b	e60 <printf+0x1f0>
     e1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e20:	e3530025 	cmp	r3, #37	@ 0x25
     e24:	1a000005 	bne	e40 <printf+0x1d0>
     e28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e2c:	e6ef3073 	uxtb	r3, r3
     e30:	e1a01003 	mov	r1, r3
     e34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e38:	ebffff30 	bl	b00 <putc>
     e3c:	ea000007 	b	e60 <printf+0x1f0>
     e40:	e3a01025 	mov	r1, #37	@ 0x25
     e44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e48:	ebffff2c 	bl	b00 <putc>
     e4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e50:	e6ef3073 	uxtb	r3, r3
     e54:	e1a01003 	mov	r1, r3
     e58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e5c:	ebffff27 	bl	b00 <putc>
     e60:	e3a03000 	mov	r3, #0
     e64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e68:	e51b3010 	ldr	r3, [fp, #-16]
     e6c:	e2833001 	add	r3, r3, #1
     e70:	e50b3010 	str	r3, [fp, #-16]
     e74:	e59b2004 	ldr	r2, [fp, #4]
     e78:	e51b3010 	ldr	r3, [fp, #-16]
     e7c:	e0823003 	add	r3, r2, r3
     e80:	e5d33000 	ldrb	r3, [r3]
     e84:	e3530000 	cmp	r3, #0
     e88:	1affff84 	bne	ca0 <printf+0x30>
     e8c:	e1a00000 	nop			@ (mov r0, r0)
     e90:	e1a00000 	nop			@ (mov r0, r0)
     e94:	e24bd004 	sub	sp, fp, #4
     e98:	e8bd4800 	pop	{fp, lr}
     e9c:	e28dd00c 	add	sp, sp, #12
     ea0:	e12fff1e 	bx	lr
     ea4:	0000139c 	.word	0x0000139c

00000ea8 <free>:
     ea8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     eac:	e28db000 	add	fp, sp, #0
     eb0:	e24dd014 	sub	sp, sp, #20
     eb4:	e50b0010 	str	r0, [fp, #-16]
     eb8:	e51b3010 	ldr	r3, [fp, #-16]
     ebc:	e2433008 	sub	r3, r3, #8
     ec0:	e50b300c 	str	r3, [fp, #-12]
     ec4:	e59f3154 	ldr	r3, [pc, #340]	@ 1020 <free+0x178>
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e50b3008 	str	r3, [fp, #-8]
     ed0:	ea000010 	b	f18 <free+0x70>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e51b2008 	ldr	r2, [fp, #-8]
     ee0:	e1520003 	cmp	r2, r3
     ee4:	3a000008 	bcc	f0c <free+0x64>
     ee8:	e51b200c 	ldr	r2, [fp, #-12]
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e1520003 	cmp	r2, r3
     ef4:	8a000010 	bhi	f3c <free+0x94>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e51b200c 	ldr	r2, [fp, #-12]
     f04:	e1520003 	cmp	r2, r3
     f08:	3a00000b 	bcc	f3c <free+0x94>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	e51b200c 	ldr	r2, [fp, #-12]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e1520003 	cmp	r2, r3
     f24:	9affffea 	bls	ed4 <free+0x2c>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e51b200c 	ldr	r2, [fp, #-12]
     f34:	e1520003 	cmp	r2, r3
     f38:	2affffe5 	bcs	ed4 <free+0x2c>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e1a03183 	lsl	r3, r3, #3
     f48:	e51b200c 	ldr	r2, [fp, #-12]
     f4c:	e0822003 	add	r2, r2, r3
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e1520003 	cmp	r2, r3
     f5c:	1a00000d 	bne	f98 <free+0xf0>
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e5932004 	ldr	r2, [r3, #4]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e0822003 	add	r2, r2, r3
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5832004 	str	r2, [r3, #4]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e5932000 	ldr	r2, [r3]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e5832000 	str	r2, [r3]
     f94:	ea000003 	b	fa8 <free+0x100>
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5932000 	ldr	r2, [r3]
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5832000 	str	r2, [r3]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e1a03183 	lsl	r3, r3, #3
     fb4:	e51b2008 	ldr	r2, [fp, #-8]
     fb8:	e0823003 	add	r3, r2, r3
     fbc:	e51b200c 	ldr	r2, [fp, #-12]
     fc0:	e1520003 	cmp	r2, r3
     fc4:	1a00000b 	bne	ff8 <free+0x150>
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5932004 	ldr	r2, [r3, #4]
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e5933004 	ldr	r3, [r3, #4]
     fd8:	e0822003 	add	r2, r2, r3
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e5832004 	str	r2, [r3, #4]
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e5932000 	ldr	r2, [r3]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5832000 	str	r2, [r3]
     ff4:	ea000002 	b	1004 <free+0x15c>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e51b200c 	ldr	r2, [fp, #-12]
    1000:	e5832000 	str	r2, [r3]
    1004:	e59f2014 	ldr	r2, [pc, #20]	@ 1020 <free+0x178>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5823000 	str	r3, [r2]
    1010:	e1a00000 	nop			@ (mov r0, r0)
    1014:	e28bd000 	add	sp, fp, #0
    1018:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    101c:	e12fff1e 	bx	lr
    1020:	000013c0 	.word	0x000013c0

00001024 <morecore>:
    1024:	e92d4800 	push	{fp, lr}
    1028:	e28db004 	add	fp, sp, #4
    102c:	e24dd010 	sub	sp, sp, #16
    1030:	e50b0010 	str	r0, [fp, #-16]
    1034:	e51b3010 	ldr	r3, [fp, #-16]
    1038:	e3530a01 	cmp	r3, #4096	@ 0x1000
    103c:	2a000001 	bcs	1048 <morecore+0x24>
    1040:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1044:	e50b3010 	str	r3, [fp, #-16]
    1048:	e51b3010 	ldr	r3, [fp, #-16]
    104c:	e1a03183 	lsl	r3, r3, #3
    1050:	e1a00003 	mov	r0, r3
    1054:	ebfffe6a 	bl	a04 <sbrk>
    1058:	e50b0008 	str	r0, [fp, #-8]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e3730001 	cmn	r3, #1
    1064:	1a000001 	bne	1070 <morecore+0x4c>
    1068:	e3a03000 	mov	r3, #0
    106c:	ea00000a 	b	109c <morecore+0x78>
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e50b300c 	str	r3, [fp, #-12]
    1078:	e51b300c 	ldr	r3, [fp, #-12]
    107c:	e51b2010 	ldr	r2, [fp, #-16]
    1080:	e5832004 	str	r2, [r3, #4]
    1084:	e51b300c 	ldr	r3, [fp, #-12]
    1088:	e2833008 	add	r3, r3, #8
    108c:	e1a00003 	mov	r0, r3
    1090:	ebffff84 	bl	ea8 <free>
    1094:	e59f300c 	ldr	r3, [pc, #12]	@ 10a8 <morecore+0x84>
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e1a00003 	mov	r0, r3
    10a0:	e24bd004 	sub	sp, fp, #4
    10a4:	e8bd8800 	pop	{fp, pc}
    10a8:	000013c0 	.word	0x000013c0

000010ac <malloc>:
    10ac:	e92d4800 	push	{fp, lr}
    10b0:	e28db004 	add	fp, sp, #4
    10b4:	e24dd018 	sub	sp, sp, #24
    10b8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    10bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	e2833007 	add	r3, r3, #7
    10c4:	e1a031a3 	lsr	r3, r3, #3
    10c8:	e2833001 	add	r3, r3, #1
    10cc:	e50b3010 	str	r3, [fp, #-16]
    10d0:	e59f3134 	ldr	r3, [pc, #308]	@ 120c <malloc+0x160>
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e3530000 	cmp	r3, #0
    10e4:	1a00000b 	bne	1118 <malloc+0x6c>
    10e8:	e59f3120 	ldr	r3, [pc, #288]	@ 1210 <malloc+0x164>
    10ec:	e50b300c 	str	r3, [fp, #-12]
    10f0:	e59f2114 	ldr	r2, [pc, #276]	@ 120c <malloc+0x160>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5823000 	str	r3, [r2]
    10fc:	e59f3108 	ldr	r3, [pc, #264]	@ 120c <malloc+0x160>
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e59f2104 	ldr	r2, [pc, #260]	@ 1210 <malloc+0x164>
    1108:	e5823000 	str	r3, [r2]
    110c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1210 <malloc+0x164>
    1110:	e3a02000 	mov	r2, #0
    1114:	e5832004 	str	r2, [r3, #4]
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e5933000 	ldr	r3, [r3]
    1120:	e50b3008 	str	r3, [fp, #-8]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5933004 	ldr	r3, [r3, #4]
    112c:	e51b2010 	ldr	r2, [fp, #-16]
    1130:	e1520003 	cmp	r2, r3
    1134:	8a00001e 	bhi	11b4 <malloc+0x108>
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e5933004 	ldr	r3, [r3, #4]
    1140:	e51b2010 	ldr	r2, [fp, #-16]
    1144:	e1520003 	cmp	r2, r3
    1148:	1a000004 	bne	1160 <malloc+0xb4>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5932000 	ldr	r2, [r3]
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e5832000 	str	r2, [r3]
    115c:	ea00000e 	b	119c <malloc+0xf0>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5932004 	ldr	r2, [r3, #4]
    1168:	e51b3010 	ldr	r3, [fp, #-16]
    116c:	e0422003 	sub	r2, r2, r3
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5832004 	str	r2, [r3, #4]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e5933004 	ldr	r3, [r3, #4]
    1180:	e1a03183 	lsl	r3, r3, #3
    1184:	e51b2008 	ldr	r2, [fp, #-8]
    1188:	e0823003 	add	r3, r2, r3
    118c:	e50b3008 	str	r3, [fp, #-8]
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e51b2010 	ldr	r2, [fp, #-16]
    1198:	e5832004 	str	r2, [r3, #4]
    119c:	e59f2068 	ldr	r2, [pc, #104]	@ 120c <malloc+0x160>
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5823000 	str	r3, [r2]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e2833008 	add	r3, r3, #8
    11b0:	ea000012 	b	1200 <malloc+0x154>
    11b4:	e59f3050 	ldr	r3, [pc, #80]	@ 120c <malloc+0x160>
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e51b2008 	ldr	r2, [fp, #-8]
    11c0:	e1520003 	cmp	r2, r3
    11c4:	1a000007 	bne	11e8 <malloc+0x13c>
    11c8:	e51b0010 	ldr	r0, [fp, #-16]
    11cc:	ebffff94 	bl	1024 <morecore>
    11d0:	e50b0008 	str	r0, [fp, #-8]
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e3530000 	cmp	r3, #0
    11dc:	1a000001 	bne	11e8 <malloc+0x13c>
    11e0:	e3a03000 	mov	r3, #0
    11e4:	ea000005 	b	1200 <malloc+0x154>
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e50b300c 	str	r3, [fp, #-12]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5933000 	ldr	r3, [r3]
    11f8:	e50b3008 	str	r3, [fp, #-8]
    11fc:	eaffffc8 	b	1124 <malloc+0x78>
    1200:	e1a00003 	mov	r0, r3
    1204:	e24bd004 	sub	sp, fp, #4
    1208:	e8bd8800 	pop	{fp, pc}
    120c:	000013c0 	.word	0x000013c0
    1210:	000013b8 	.word	0x000013b8

00001214 <__udivsi3>:
    1214:	e2512001 	subs	r2, r1, #1
    1218:	012fff1e 	bxeq	lr
    121c:	3a000036 	bcc	12fc <__udivsi3+0xe8>
    1220:	e1500001 	cmp	r0, r1
    1224:	9a000022 	bls	12b4 <__udivsi3+0xa0>
    1228:	e1110002 	tst	r1, r2
    122c:	0a000023 	beq	12c0 <__udivsi3+0xac>
    1230:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1234:	01a01181 	lsleq	r1, r1, #3
    1238:	03a03008 	moveq	r3, #8
    123c:	13a03001 	movne	r3, #1
    1240:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1244:	31510000 	cmpcc	r1, r0
    1248:	31a01201 	lslcc	r1, r1, #4
    124c:	31a03203 	lslcc	r3, r3, #4
    1250:	3afffffa 	bcc	1240 <__udivsi3+0x2c>
    1254:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1258:	31510000 	cmpcc	r1, r0
    125c:	31a01081 	lslcc	r1, r1, #1
    1260:	31a03083 	lslcc	r3, r3, #1
    1264:	3afffffa 	bcc	1254 <__udivsi3+0x40>
    1268:	e3a02000 	mov	r2, #0
    126c:	e1500001 	cmp	r0, r1
    1270:	20400001 	subcs	r0, r0, r1
    1274:	21822003 	orrcs	r2, r2, r3
    1278:	e15000a1 	cmp	r0, r1, lsr #1
    127c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1280:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1284:	e1500121 	cmp	r0, r1, lsr #2
    1288:	20400121 	subcs	r0, r0, r1, lsr #2
    128c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1290:	e15001a1 	cmp	r0, r1, lsr #3
    1294:	204001a1 	subcs	r0, r0, r1, lsr #3
    1298:	218221a3 	orrcs	r2, r2, r3, lsr #3
    129c:	e3500000 	cmp	r0, #0
    12a0:	11b03223 	lsrsne	r3, r3, #4
    12a4:	11a01221 	lsrne	r1, r1, #4
    12a8:	1affffef 	bne	126c <__udivsi3+0x58>
    12ac:	e1a00002 	mov	r0, r2
    12b0:	e12fff1e 	bx	lr
    12b4:	03a00001 	moveq	r0, #1
    12b8:	13a00000 	movne	r0, #0
    12bc:	e12fff1e 	bx	lr
    12c0:	e3510801 	cmp	r1, #65536	@ 0x10000
    12c4:	21a01821 	lsrcs	r1, r1, #16
    12c8:	23a02010 	movcs	r2, #16
    12cc:	33a02000 	movcc	r2, #0
    12d0:	e3510c01 	cmp	r1, #256	@ 0x100
    12d4:	21a01421 	lsrcs	r1, r1, #8
    12d8:	22822008 	addcs	r2, r2, #8
    12dc:	e3510010 	cmp	r1, #16
    12e0:	21a01221 	lsrcs	r1, r1, #4
    12e4:	22822004 	addcs	r2, r2, #4
    12e8:	e3510004 	cmp	r1, #4
    12ec:	82822003 	addhi	r2, r2, #3
    12f0:	908220a1 	addls	r2, r2, r1, lsr #1
    12f4:	e1a00230 	lsr	r0, r0, r2
    12f8:	e12fff1e 	bx	lr
    12fc:	e3500000 	cmp	r0, #0
    1300:	13e00000 	mvnne	r0, #0
    1304:	ea000007 	b	1328 <__aeabi_idiv0>

00001308 <__aeabi_uidivmod>:
    1308:	e3510000 	cmp	r1, #0
    130c:	0afffffa 	beq	12fc <__udivsi3+0xe8>
    1310:	e92d4003 	push	{r0, r1, lr}
    1314:	ebffffbe 	bl	1214 <__udivsi3>
    1318:	e8bd4006 	pop	{r1, r2, lr}
    131c:	e0030092 	mul	r3, r2, r0
    1320:	e0411003 	sub	r1, r1, r3
    1324:	e12fff1e 	bx	lr

00001328 <__aeabi_idiv0>:
    1328:	e12fff1e 	bx	lr
