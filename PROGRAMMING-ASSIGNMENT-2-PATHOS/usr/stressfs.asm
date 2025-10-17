
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb000320 	bl	cb8 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb0001da 	bl	7c4 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb000308 	bl	cb8 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000212 	bl	908 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb0001e5 	bl	878 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb0001e6 	bl	89c <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb0002ea 	bl	cb8 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb0001fa 	bl	908 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb0001c4 	bl	854 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb0001ce 	bl	89c <close>
     160:	eb0001a9 	bl	80c <wait>
     164:	eb00019f 	bl	7e8 <exit>
     168:	0000139c 	.word	0x0000139c
     16c:	00001374 	.word	0x00001374
     170:	00001388 	.word	0x00001388
     174:	00000202 	.word	0x00000202
     178:	00001394 	.word	0x00001394

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e1a03002 	mov	r3, r2
     2e0:	e1a03403 	lsl	r3, r3, #8
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e1a03803 	lsl	r3, r3, #16
     2ec:	e1a02003 	mov	r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e1822003 	orr	r2, r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1823003 	orr	r3, r2, r3
     304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     308:	ea000008 	b	330 <memset+0x80>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e5c32000 	strb	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433001 	sub	r3, r3, #1
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530000 	cmp	r3, #0
     338:	0a000003 	beq	34c <memset+0x9c>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2033003 	and	r3, r3, #3
     344:	e3530000 	cmp	r3, #0
     348:	1affffef 	bne	30c <memset+0x5c>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	ea000008 	b	37c <memset+0xcc>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e5832000 	str	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433004 	sub	r3, r3, #4
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833004 	add	r3, r3, #4
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530003 	cmp	r3, #3
     384:	8afffff3 	bhi	358 <memset+0xa8>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000008 	b	3b8 <memset+0x108>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e5c32000 	strb	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433001 	sub	r3, r3, #1
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff3 	bne	394 <memset+0xe4>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <strchr>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd00c 	sub	sp, sp, #12
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e1a03001 	mov	r3, r1
     3ec:	e54b3009 	strb	r3, [fp, #-9]
     3f0:	ea000009 	b	41c <strchr+0x44>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e55b2009 	ldrb	r2, [fp, #-9]
     400:	e1520003 	cmp	r2, r3
     404:	1a000001 	bne	410 <strchr+0x38>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	ea000007 	b	430 <strchr+0x58>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff1 	bne	3f4 <strchr+0x1c>
     42c:	e3a03000 	mov	r3, #0
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <gets>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd018 	sub	sp, sp, #24
     44c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     450:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000016 	b	4bc <gets+0x7c>
     460:	e24b300d 	sub	r3, fp, #13
     464:	e3a02001 	mov	r2, #1
     468:	e1a01003 	mov	r1, r3
     46c:	e3a00000 	mov	r0, #0
     470:	eb0000f7 	bl	854 <read>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e3530000 	cmp	r3, #0
     480:	da000013 	ble	4d4 <gets+0x94>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2008 	str	r2, [fp, #-8]
     490:	e1a02003 	mov	r2, r3
     494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     498:	e0833002 	add	r3, r3, r2
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000a 	cmp	r3, #10
     4ac:	0a000009 	beq	4d8 <gets+0x98>
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000d 	cmp	r3, #13
     4b8:	0a000006 	beq	4d8 <gets+0x98>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c8:	e1520003 	cmp	r2, r3
     4cc:	caffffe3 	bgt	460 <gets+0x20>
     4d0:	ea000000 	b	4d8 <gets+0x98>
     4d4:	e1a00000 	nop			@ (mov r0, r0)
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e0823003 	add	r3, r2, r3
     4e4:	e3a02000 	mov	r2, #0
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <stat>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd010 	sub	sp, sp, #16
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e3a01000 	mov	r1, #0
     514:	e51b0010 	ldr	r0, [fp, #-16]
     518:	eb0000fa 	bl	908 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb00010c 	bl	974 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb0000d3 	bl	89c <close>
     54c:	e51b300c 	ldr	r3, [fp, #-12]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd004 	sub	sp, fp, #4
     558:	e8bd8800 	pop	{fp, pc}

0000055c <atoi>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd014 	sub	sp, sp, #20
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e3a03000 	mov	r3, #0
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	ea00000c 	b	5ac <atoi+0x50>
     578:	e51b2008 	ldr	r2, [fp, #-8]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03103 	lsl	r3, r3, #2
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03083 	lsl	r3, r3, #1
     58c:	e1a01003 	mov	r1, r3
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e2832001 	add	r2, r3, #1
     598:	e50b2010 	str	r2, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0813003 	add	r3, r1, r3
     5a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e353002f 	cmp	r3, #47	@ 0x2f
     5b8:	9a000003 	bls	5cc <atoi+0x70>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530039 	cmp	r3, #57	@ 0x39
     5c8:	9affffea 	bls	578 <atoi+0x1c>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e1a00003 	mov	r0, r3
     5d4:	e28bd000 	add	sp, fp, #0
     5d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <memmove>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd01c 	sub	sp, sp, #28
     5ec:	e50b0010 	str	r0, [fp, #-16]
     5f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	ea000007 	b	62c <memmove+0x4c>
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2823001 	add	r3, r2, #1
     614:	e50b300c 	str	r3, [fp, #-12]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2831001 	add	r1, r3, #1
     620:	e50b1008 	str	r1, [fp, #-8]
     624:	e5d22000 	ldrb	r2, [r2]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     630:	e2432001 	sub	r2, r3, #1
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e3530000 	cmp	r3, #0
     63c:	cafffff2 	bgt	60c <memmove+0x2c>
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <strncmp>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd014 	sub	sp, sp, #20
     660:	e50b0008 	str	r0, [fp, #-8]
     664:	e50b100c 	str	r1, [fp, #-12]
     668:	e50b2010 	str	r2, [fp, #-16]
     66c:	ea000008 	b	694 <strncmp+0x40>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e2833001 	add	r3, r3, #1
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	e51b300c 	ldr	r3, [fp, #-12]
     680:	e2833001 	add	r3, r3, #1
     684:	e50b300c 	str	r3, [fp, #-12]
     688:	e51b3010 	ldr	r3, [fp, #-16]
     68c:	e2433001 	sub	r3, r3, #1
     690:	e50b3010 	str	r3, [fp, #-16]
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e3530000 	cmp	r3, #0
     69c:	da00000d 	ble	6d8 <strncmp+0x84>
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e5d33000 	ldrb	r3, [r3]
     6a8:	e3530000 	cmp	r3, #0
     6ac:	0a000009 	beq	6d8 <strncmp+0x84>
     6b0:	e51b300c 	ldr	r3, [fp, #-12]
     6b4:	e5d33000 	ldrb	r3, [r3]
     6b8:	e3530000 	cmp	r3, #0
     6bc:	0a000005 	beq	6d8 <strncmp+0x84>
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e5d32000 	ldrb	r2, [r3]
     6c8:	e51b300c 	ldr	r3, [fp, #-12]
     6cc:	e5d33000 	ldrb	r3, [r3]
     6d0:	e1520003 	cmp	r2, r3
     6d4:	0affffe5 	beq	670 <strncmp+0x1c>
     6d8:	e51b3010 	ldr	r3, [fp, #-16]
     6dc:	e3530000 	cmp	r3, #0
     6e0:	1a000001 	bne	6ec <strncmp+0x98>
     6e4:	e3a03000 	mov	r3, #0
     6e8:	ea000005 	b	704 <strncmp+0xb0>
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e5d33000 	ldrb	r3, [r3]
     6f4:	e1a02003 	mov	r2, r3
     6f8:	e51b300c 	ldr	r3, [fp, #-12]
     6fc:	e5d33000 	ldrb	r3, [r3]
     700:	e0423003 	sub	r3, r2, r3
     704:	e1a00003 	mov	r0, r3
     708:	e28bd000 	add	sp, fp, #0
     70c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <strncpy>:
     714:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     718:	e28db000 	add	fp, sp, #0
     71c:	e24dd01c 	sub	sp, sp, #28
     720:	e50b0010 	str	r0, [fp, #-16]
     724:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     728:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     72c:	e51b3010 	ldr	r3, [fp, #-16]
     730:	e50b3008 	str	r3, [fp, #-8]
     734:	ea00000a 	b	764 <strncpy+0x50>
     738:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     73c:	e2823001 	add	r3, r2, #1
     740:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e2831001 	add	r1, r3, #1
     74c:	e50b1008 	str	r1, [fp, #-8]
     750:	e5d22000 	ldrb	r2, [r2]
     754:	e5c32000 	strb	r2, [r3]
     758:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     75c:	e2433001 	sub	r3, r3, #1
     760:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     768:	e3530000 	cmp	r3, #0
     76c:	da00000c 	ble	7a4 <strncpy+0x90>
     770:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     774:	e5d33000 	ldrb	r3, [r3]
     778:	e3530000 	cmp	r3, #0
     77c:	1affffed 	bne	738 <strncpy+0x24>
     780:	ea000007 	b	7a4 <strncpy+0x90>
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e2832001 	add	r2, r3, #1
     78c:	e50b2008 	str	r2, [fp, #-8]
     790:	e3a02000 	mov	r2, #0
     794:	e5c32000 	strb	r2, [r3]
     798:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     79c:	e2433001 	sub	r3, r3, #1
     7a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a8:	e3530000 	cmp	r3, #0
     7ac:	cafffff4 	bgt	784 <strncpy+0x70>
     7b0:	e51b3010 	ldr	r3, [fp, #-16]
     7b4:	e1a00003 	mov	r0, r3
     7b8:	e28bd000 	add	sp, fp, #0
     7bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <fork>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00001 	mov	r0, #1
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <exit>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00002 	mov	r0, #2
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <wait>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00003 	mov	r0, #3
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <pipe>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00004 	mov	r0, #4
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <read>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00005 	mov	r0, #5
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <write>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00010 	mov	r0, #16
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <close>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00015 	mov	r0, #21
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <kill>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00006 	mov	r0, #6
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <exec>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00007 	mov	r0, #7
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <open>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0000f 	mov	r0, #15
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <mknod>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00011 	mov	r0, #17
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <unlink>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a00012 	mov	r0, #18
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <fstat>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a00008 	mov	r0, #8
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <link>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a00013 	mov	r0, #19
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <mkdir>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00014 	mov	r0, #20
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <chdir>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00009 	mov	r0, #9
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <dup>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a0000a 	mov	r0, #10
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <getpid>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a0000b 	mov	r0, #11
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <sbrk>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a0000c 	mov	r0, #12
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <sleep>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a0000d 	mov	r0, #13
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <uptime>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a0000e 	mov	r0, #14
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <proclist>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00016 	mov	r0, #22
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <settickets>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a00017 	mov	r0, #23
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <srand>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00018 	mov	r0, #24
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <getpinfo>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a00019 	mov	r0, #25
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <putc>:
     b48:	e92d4800 	push	{fp, lr}
     b4c:	e28db004 	add	fp, sp, #4
     b50:	e24dd008 	sub	sp, sp, #8
     b54:	e50b0008 	str	r0, [fp, #-8]
     b58:	e1a03001 	mov	r3, r1
     b5c:	e54b3009 	strb	r3, [fp, #-9]
     b60:	e24b3009 	sub	r3, fp, #9
     b64:	e3a02001 	mov	r2, #1
     b68:	e1a01003 	mov	r1, r3
     b6c:	e51b0008 	ldr	r0, [fp, #-8]
     b70:	ebffff40 	bl	878 <write>
     b74:	e1a00000 	nop			@ (mov r0, r0)
     b78:	e24bd004 	sub	sp, fp, #4
     b7c:	e8bd8800 	pop	{fp, pc}

00000b80 <printint>:
     b80:	e92d4800 	push	{fp, lr}
     b84:	e28db004 	add	fp, sp, #4
     b88:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b8c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b90:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b94:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b98:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b9c:	e3a03000 	mov	r3, #0
     ba0:	e50b300c 	str	r3, [fp, #-12]
     ba4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ba8:	e3530000 	cmp	r3, #0
     bac:	0a000008 	beq	bd4 <printint+0x54>
     bb0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bb4:	e3530000 	cmp	r3, #0
     bb8:	aa000005 	bge	bd4 <printint+0x54>
     bbc:	e3a03001 	mov	r3, #1
     bc0:	e50b300c 	str	r3, [fp, #-12]
     bc4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bc8:	e2633000 	rsb	r3, r3, #0
     bcc:	e50b3010 	str	r3, [fp, #-16]
     bd0:	ea000001 	b	bdc <printint+0x5c>
     bd4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bd8:	e50b3010 	str	r3, [fp, #-16]
     bdc:	e3a03000 	mov	r3, #0
     be0:	e50b3008 	str	r3, [fp, #-8]
     be4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     be8:	e51b3010 	ldr	r3, [fp, #-16]
     bec:	e1a01002 	mov	r1, r2
     bf0:	e1a00003 	mov	r0, r3
     bf4:	eb0001d5 	bl	1350 <__aeabi_uidivmod>
     bf8:	e1a03001 	mov	r3, r1
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e2832001 	add	r2, r3, #1
     c08:	e50b2008 	str	r2, [fp, #-8]
     c0c:	e59f20a0 	ldr	r2, [pc, #160]	@ cb4 <printint+0x134>
     c10:	e7d22001 	ldrb	r2, [r2, r1]
     c14:	e2433004 	sub	r3, r3, #4
     c18:	e083300b 	add	r3, r3, fp
     c1c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c20:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c24:	e1a01003 	mov	r1, r3
     c28:	e51b0010 	ldr	r0, [fp, #-16]
     c2c:	eb00018a 	bl	125c <__udivsi3>
     c30:	e1a03000 	mov	r3, r0
     c34:	e50b3010 	str	r3, [fp, #-16]
     c38:	e51b3010 	ldr	r3, [fp, #-16]
     c3c:	e3530000 	cmp	r3, #0
     c40:	1affffe7 	bne	be4 <printint+0x64>
     c44:	e51b300c 	ldr	r3, [fp, #-12]
     c48:	e3530000 	cmp	r3, #0
     c4c:	0a00000e 	beq	c8c <printint+0x10c>
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e2832001 	add	r2, r3, #1
     c58:	e50b2008 	str	r2, [fp, #-8]
     c5c:	e2433004 	sub	r3, r3, #4
     c60:	e083300b 	add	r3, r3, fp
     c64:	e3a0202d 	mov	r2, #45	@ 0x2d
     c68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c6c:	ea000006 	b	c8c <printint+0x10c>
     c70:	e24b2020 	sub	r2, fp, #32
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e0823003 	add	r3, r2, r3
     c7c:	e5d33000 	ldrb	r3, [r3]
     c80:	e1a01003 	mov	r1, r3
     c84:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c88:	ebffffae 	bl	b48 <putc>
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e2433001 	sub	r3, r3, #1
     c94:	e50b3008 	str	r3, [fp, #-8]
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e3530000 	cmp	r3, #0
     ca0:	aafffff2 	bge	c70 <printint+0xf0>
     ca4:	e1a00000 	nop			@ (mov r0, r0)
     ca8:	e1a00000 	nop			@ (mov r0, r0)
     cac:	e24bd004 	sub	sp, fp, #4
     cb0:	e8bd8800 	pop	{fp, pc}
     cb4:	000013b0 	.word	0x000013b0

00000cb8 <printf>:
     cb8:	e92d000e 	push	{r1, r2, r3}
     cbc:	e92d4800 	push	{fp, lr}
     cc0:	e28db004 	add	fp, sp, #4
     cc4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cc8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	e3a03000 	mov	r3, #0
     cd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd4:	e28b3008 	add	r3, fp, #8
     cd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cdc:	e3a03000 	mov	r3, #0
     ce0:	e50b3010 	str	r3, [fp, #-16]
     ce4:	ea000074 	b	ebc <printf+0x204>
     ce8:	e59b2004 	ldr	r2, [fp, #4]
     cec:	e51b3010 	ldr	r3, [fp, #-16]
     cf0:	e0823003 	add	r3, r2, r3
     cf4:	e5d33000 	ldrb	r3, [r3]
     cf8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d00:	e3530000 	cmp	r3, #0
     d04:	1a00000b 	bne	d38 <printf+0x80>
     d08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d0c:	e3530025 	cmp	r3, #37	@ 0x25
     d10:	1a000002 	bne	d20 <printf+0x68>
     d14:	e3a03025 	mov	r3, #37	@ 0x25
     d18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d1c:	ea000063 	b	eb0 <printf+0x1f8>
     d20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d24:	e6ef3073 	uxtb	r3, r3
     d28:	e1a01003 	mov	r1, r3
     d2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d30:	ebffff84 	bl	b48 <putc>
     d34:	ea00005d 	b	eb0 <printf+0x1f8>
     d38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d3c:	e3530025 	cmp	r3, #37	@ 0x25
     d40:	1a00005a 	bne	eb0 <printf+0x1f8>
     d44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d48:	e3530064 	cmp	r3, #100	@ 0x64
     d4c:	1a00000a 	bne	d7c <printf+0xc4>
     d50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d54:	e5933000 	ldr	r3, [r3]
     d58:	e1a01003 	mov	r1, r3
     d5c:	e3a03001 	mov	r3, #1
     d60:	e3a0200a 	mov	r2, #10
     d64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d68:	ebffff84 	bl	b80 <printint>
     d6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d70:	e2833004 	add	r3, r3, #4
     d74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d78:	ea00004a 	b	ea8 <printf+0x1f0>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e3530078 	cmp	r3, #120	@ 0x78
     d84:	0a000002 	beq	d94 <printf+0xdc>
     d88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d8c:	e3530070 	cmp	r3, #112	@ 0x70
     d90:	1a00000a 	bne	dc0 <printf+0x108>
     d94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e1a01003 	mov	r1, r3
     da0:	e3a03000 	mov	r3, #0
     da4:	e3a02010 	mov	r2, #16
     da8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dac:	ebffff73 	bl	b80 <printint>
     db0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db4:	e2833004 	add	r3, r3, #4
     db8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	ea000039 	b	ea8 <printf+0x1f0>
     dc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc4:	e3530073 	cmp	r3, #115	@ 0x73
     dc8:	1a000018 	bne	e30 <printf+0x178>
     dcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e50b300c 	str	r3, [fp, #-12]
     dd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	e2833004 	add	r3, r3, #4
     de0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e3530000 	cmp	r3, #0
     dec:	1a00000a 	bne	e1c <printf+0x164>
     df0:	e59f30f4 	ldr	r3, [pc, #244]	@ eec <printf+0x234>
     df4:	e50b300c 	str	r3, [fp, #-12]
     df8:	ea000007 	b	e1c <printf+0x164>
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5d33000 	ldrb	r3, [r3]
     e04:	e1a01003 	mov	r1, r3
     e08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e0c:	ebffff4d 	bl	b48 <putc>
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e2833001 	add	r3, r3, #1
     e18:	e50b300c 	str	r3, [fp, #-12]
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e5d33000 	ldrb	r3, [r3]
     e24:	e3530000 	cmp	r3, #0
     e28:	1afffff3 	bne	dfc <printf+0x144>
     e2c:	ea00001d 	b	ea8 <printf+0x1f0>
     e30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e34:	e3530063 	cmp	r3, #99	@ 0x63
     e38:	1a000009 	bne	e64 <printf+0x1ac>
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e6ef3073 	uxtb	r3, r3
     e48:	e1a01003 	mov	r1, r3
     e4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e50:	ebffff3c 	bl	b48 <putc>
     e54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e2833004 	add	r3, r3, #4
     e5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e60:	ea000010 	b	ea8 <printf+0x1f0>
     e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e68:	e3530025 	cmp	r3, #37	@ 0x25
     e6c:	1a000005 	bne	e88 <printf+0x1d0>
     e70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e6ef3073 	uxtb	r3, r3
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e80:	ebffff30 	bl	b48 <putc>
     e84:	ea000007 	b	ea8 <printf+0x1f0>
     e88:	e3a01025 	mov	r1, #37	@ 0x25
     e8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e90:	ebffff2c 	bl	b48 <putc>
     e94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e98:	e6ef3073 	uxtb	r3, r3
     e9c:	e1a01003 	mov	r1, r3
     ea0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea4:	ebffff27 	bl	b48 <putc>
     ea8:	e3a03000 	mov	r3, #0
     eac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eb0:	e51b3010 	ldr	r3, [fp, #-16]
     eb4:	e2833001 	add	r3, r3, #1
     eb8:	e50b3010 	str	r3, [fp, #-16]
     ebc:	e59b2004 	ldr	r2, [fp, #4]
     ec0:	e51b3010 	ldr	r3, [fp, #-16]
     ec4:	e0823003 	add	r3, r2, r3
     ec8:	e5d33000 	ldrb	r3, [r3]
     ecc:	e3530000 	cmp	r3, #0
     ed0:	1affff84 	bne	ce8 <printf+0x30>
     ed4:	e1a00000 	nop			@ (mov r0, r0)
     ed8:	e1a00000 	nop			@ (mov r0, r0)
     edc:	e24bd004 	sub	sp, fp, #4
     ee0:	e8bd4800 	pop	{fp, lr}
     ee4:	e28dd00c 	add	sp, sp, #12
     ee8:	e12fff1e 	bx	lr
     eec:	000013a8 	.word	0x000013a8

00000ef0 <free>:
     ef0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ef4:	e28db000 	add	fp, sp, #0
     ef8:	e24dd014 	sub	sp, sp, #20
     efc:	e50b0010 	str	r0, [fp, #-16]
     f00:	e51b3010 	ldr	r3, [fp, #-16]
     f04:	e2433008 	sub	r3, r3, #8
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e59f3154 	ldr	r3, [pc, #340]	@ 1068 <free+0x178>
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	ea000010 	b	f60 <free+0x70>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e51b2008 	ldr	r2, [fp, #-8]
     f28:	e1520003 	cmp	r2, r3
     f2c:	3a000008 	bcc	f54 <free+0x64>
     f30:	e51b200c 	ldr	r2, [fp, #-12]
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e1520003 	cmp	r2, r3
     f3c:	8a000010 	bhi	f84 <free+0x94>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e51b200c 	ldr	r2, [fp, #-12]
     f4c:	e1520003 	cmp	r2, r3
     f50:	3a00000b 	bcc	f84 <free+0x94>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e50b3008 	str	r3, [fp, #-8]
     f60:	e51b200c 	ldr	r2, [fp, #-12]
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e1520003 	cmp	r2, r3
     f6c:	9affffea 	bls	f1c <free+0x2c>
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e5933000 	ldr	r3, [r3]
     f78:	e51b200c 	ldr	r2, [fp, #-12]
     f7c:	e1520003 	cmp	r2, r3
     f80:	2affffe5 	bcs	f1c <free+0x2c>
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e5933004 	ldr	r3, [r3, #4]
     f8c:	e1a03183 	lsl	r3, r3, #3
     f90:	e51b200c 	ldr	r2, [fp, #-12]
     f94:	e0822003 	add	r2, r2, r3
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e1520003 	cmp	r2, r3
     fa4:	1a00000d 	bne	fe0 <free+0xf0>
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5932004 	ldr	r2, [r3, #4]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e5933004 	ldr	r3, [r3, #4]
     fbc:	e0822003 	add	r2, r2, r3
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5832004 	str	r2, [r3, #4]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933000 	ldr	r3, [r3]
     fd0:	e5932000 	ldr	r2, [r3]
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e5832000 	str	r2, [r3]
     fdc:	ea000003 	b	ff0 <free+0x100>
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5932000 	ldr	r2, [r3]
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5832000 	str	r2, [r3]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5933004 	ldr	r3, [r3, #4]
     ff8:	e1a03183 	lsl	r3, r3, #3
     ffc:	e51b2008 	ldr	r2, [fp, #-8]
    1000:	e0823003 	add	r3, r2, r3
    1004:	e51b200c 	ldr	r2, [fp, #-12]
    1008:	e1520003 	cmp	r2, r3
    100c:	1a00000b 	bne	1040 <free+0x150>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e5932004 	ldr	r2, [r3, #4]
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e5933004 	ldr	r3, [r3, #4]
    1020:	e0822003 	add	r2, r2, r3
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5832004 	str	r2, [r3, #4]
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e5932000 	ldr	r2, [r3]
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5832000 	str	r2, [r3]
    103c:	ea000002 	b	104c <free+0x15c>
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e51b200c 	ldr	r2, [fp, #-12]
    1048:	e5832000 	str	r2, [r3]
    104c:	e59f2014 	ldr	r2, [pc, #20]	@ 1068 <free+0x178>
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5823000 	str	r3, [r2]
    1058:	e1a00000 	nop			@ (mov r0, r0)
    105c:	e28bd000 	add	sp, fp, #0
    1060:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1064:	e12fff1e 	bx	lr
    1068:	000013cc 	.word	0x000013cc

0000106c <morecore>:
    106c:	e92d4800 	push	{fp, lr}
    1070:	e28db004 	add	fp, sp, #4
    1074:	e24dd010 	sub	sp, sp, #16
    1078:	e50b0010 	str	r0, [fp, #-16]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1084:	2a000001 	bcs	1090 <morecore+0x24>
    1088:	e3a03a01 	mov	r3, #4096	@ 0x1000
    108c:	e50b3010 	str	r3, [fp, #-16]
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e1a03183 	lsl	r3, r3, #3
    1098:	e1a00003 	mov	r0, r3
    109c:	ebfffe6a 	bl	a4c <sbrk>
    10a0:	e50b0008 	str	r0, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e3730001 	cmn	r3, #1
    10ac:	1a000001 	bne	10b8 <morecore+0x4c>
    10b0:	e3a03000 	mov	r3, #0
    10b4:	ea00000a 	b	10e4 <morecore+0x78>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e51b2010 	ldr	r2, [fp, #-16]
    10c8:	e5832004 	str	r2, [r3, #4]
    10cc:	e51b300c 	ldr	r3, [fp, #-12]
    10d0:	e2833008 	add	r3, r3, #8
    10d4:	e1a00003 	mov	r0, r3
    10d8:	ebffff84 	bl	ef0 <free>
    10dc:	e59f300c 	ldr	r3, [pc, #12]	@ 10f0 <morecore+0x84>
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e1a00003 	mov	r0, r3
    10e8:	e24bd004 	sub	sp, fp, #4
    10ec:	e8bd8800 	pop	{fp, pc}
    10f0:	000013cc 	.word	0x000013cc

000010f4 <malloc>:
    10f4:	e92d4800 	push	{fp, lr}
    10f8:	e28db004 	add	fp, sp, #4
    10fc:	e24dd018 	sub	sp, sp, #24
    1100:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1104:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1108:	e2833007 	add	r3, r3, #7
    110c:	e1a031a3 	lsr	r3, r3, #3
    1110:	e2833001 	add	r3, r3, #1
    1114:	e50b3010 	str	r3, [fp, #-16]
    1118:	e59f3134 	ldr	r3, [pc, #308]	@ 1254 <malloc+0x160>
    111c:	e5933000 	ldr	r3, [r3]
    1120:	e50b300c 	str	r3, [fp, #-12]
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e3530000 	cmp	r3, #0
    112c:	1a00000b 	bne	1160 <malloc+0x6c>
    1130:	e59f3120 	ldr	r3, [pc, #288]	@ 1258 <malloc+0x164>
    1134:	e50b300c 	str	r3, [fp, #-12]
    1138:	e59f2114 	ldr	r2, [pc, #276]	@ 1254 <malloc+0x160>
    113c:	e51b300c 	ldr	r3, [fp, #-12]
    1140:	e5823000 	str	r3, [r2]
    1144:	e59f3108 	ldr	r3, [pc, #264]	@ 1254 <malloc+0x160>
    1148:	e5933000 	ldr	r3, [r3]
    114c:	e59f2104 	ldr	r2, [pc, #260]	@ 1258 <malloc+0x164>
    1150:	e5823000 	str	r3, [r2]
    1154:	e59f30fc 	ldr	r3, [pc, #252]	@ 1258 <malloc+0x164>
    1158:	e3a02000 	mov	r2, #0
    115c:	e5832004 	str	r2, [r3, #4]
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e50b3008 	str	r3, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933004 	ldr	r3, [r3, #4]
    1174:	e51b2010 	ldr	r2, [fp, #-16]
    1178:	e1520003 	cmp	r2, r3
    117c:	8a00001e 	bhi	11fc <malloc+0x108>
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e5933004 	ldr	r3, [r3, #4]
    1188:	e51b2010 	ldr	r2, [fp, #-16]
    118c:	e1520003 	cmp	r2, r3
    1190:	1a000004 	bne	11a8 <malloc+0xb4>
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e5932000 	ldr	r2, [r3]
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e5832000 	str	r2, [r3]
    11a4:	ea00000e 	b	11e4 <malloc+0xf0>
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e5932004 	ldr	r2, [r3, #4]
    11b0:	e51b3010 	ldr	r3, [fp, #-16]
    11b4:	e0422003 	sub	r2, r2, r3
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e5832004 	str	r2, [r3, #4]
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5933004 	ldr	r3, [r3, #4]
    11c8:	e1a03183 	lsl	r3, r3, #3
    11cc:	e51b2008 	ldr	r2, [fp, #-8]
    11d0:	e0823003 	add	r3, r2, r3
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e51b2010 	ldr	r2, [fp, #-16]
    11e0:	e5832004 	str	r2, [r3, #4]
    11e4:	e59f2068 	ldr	r2, [pc, #104]	@ 1254 <malloc+0x160>
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5823000 	str	r3, [r2]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e2833008 	add	r3, r3, #8
    11f8:	ea000012 	b	1248 <malloc+0x154>
    11fc:	e59f3050 	ldr	r3, [pc, #80]	@ 1254 <malloc+0x160>
    1200:	e5933000 	ldr	r3, [r3]
    1204:	e51b2008 	ldr	r2, [fp, #-8]
    1208:	e1520003 	cmp	r2, r3
    120c:	1a000007 	bne	1230 <malloc+0x13c>
    1210:	e51b0010 	ldr	r0, [fp, #-16]
    1214:	ebffff94 	bl	106c <morecore>
    1218:	e50b0008 	str	r0, [fp, #-8]
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e3530000 	cmp	r3, #0
    1224:	1a000001 	bne	1230 <malloc+0x13c>
    1228:	e3a03000 	mov	r3, #0
    122c:	ea000005 	b	1248 <malloc+0x154>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e50b300c 	str	r3, [fp, #-12]
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e50b3008 	str	r3, [fp, #-8]
    1244:	eaffffc8 	b	116c <malloc+0x78>
    1248:	e1a00003 	mov	r0, r3
    124c:	e24bd004 	sub	sp, fp, #4
    1250:	e8bd8800 	pop	{fp, pc}
    1254:	000013cc 	.word	0x000013cc
    1258:	000013c4 	.word	0x000013c4

0000125c <__udivsi3>:
    125c:	e2512001 	subs	r2, r1, #1
    1260:	012fff1e 	bxeq	lr
    1264:	3a000036 	bcc	1344 <__udivsi3+0xe8>
    1268:	e1500001 	cmp	r0, r1
    126c:	9a000022 	bls	12fc <__udivsi3+0xa0>
    1270:	e1110002 	tst	r1, r2
    1274:	0a000023 	beq	1308 <__udivsi3+0xac>
    1278:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    127c:	01a01181 	lsleq	r1, r1, #3
    1280:	03a03008 	moveq	r3, #8
    1284:	13a03001 	movne	r3, #1
    1288:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    128c:	31510000 	cmpcc	r1, r0
    1290:	31a01201 	lslcc	r1, r1, #4
    1294:	31a03203 	lslcc	r3, r3, #4
    1298:	3afffffa 	bcc	1288 <__udivsi3+0x2c>
    129c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12a0:	31510000 	cmpcc	r1, r0
    12a4:	31a01081 	lslcc	r1, r1, #1
    12a8:	31a03083 	lslcc	r3, r3, #1
    12ac:	3afffffa 	bcc	129c <__udivsi3+0x40>
    12b0:	e3a02000 	mov	r2, #0
    12b4:	e1500001 	cmp	r0, r1
    12b8:	20400001 	subcs	r0, r0, r1
    12bc:	21822003 	orrcs	r2, r2, r3
    12c0:	e15000a1 	cmp	r0, r1, lsr #1
    12c4:	204000a1 	subcs	r0, r0, r1, lsr #1
    12c8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12cc:	e1500121 	cmp	r0, r1, lsr #2
    12d0:	20400121 	subcs	r0, r0, r1, lsr #2
    12d4:	21822123 	orrcs	r2, r2, r3, lsr #2
    12d8:	e15001a1 	cmp	r0, r1, lsr #3
    12dc:	204001a1 	subcs	r0, r0, r1, lsr #3
    12e0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12e4:	e3500000 	cmp	r0, #0
    12e8:	11b03223 	lsrsne	r3, r3, #4
    12ec:	11a01221 	lsrne	r1, r1, #4
    12f0:	1affffef 	bne	12b4 <__udivsi3+0x58>
    12f4:	e1a00002 	mov	r0, r2
    12f8:	e12fff1e 	bx	lr
    12fc:	03a00001 	moveq	r0, #1
    1300:	13a00000 	movne	r0, #0
    1304:	e12fff1e 	bx	lr
    1308:	e3510801 	cmp	r1, #65536	@ 0x10000
    130c:	21a01821 	lsrcs	r1, r1, #16
    1310:	23a02010 	movcs	r2, #16
    1314:	33a02000 	movcc	r2, #0
    1318:	e3510c01 	cmp	r1, #256	@ 0x100
    131c:	21a01421 	lsrcs	r1, r1, #8
    1320:	22822008 	addcs	r2, r2, #8
    1324:	e3510010 	cmp	r1, #16
    1328:	21a01221 	lsrcs	r1, r1, #4
    132c:	22822004 	addcs	r2, r2, #4
    1330:	e3510004 	cmp	r1, #4
    1334:	82822003 	addhi	r2, r2, #3
    1338:	908220a1 	addls	r2, r2, r1, lsr #1
    133c:	e1a00230 	lsr	r0, r0, r2
    1340:	e12fff1e 	bx	lr
    1344:	e3500000 	cmp	r0, #0
    1348:	13e00000 	mvnne	r0, #0
    134c:	ea000007 	b	1370 <__aeabi_idiv0>

00001350 <__aeabi_uidivmod>:
    1350:	e3510000 	cmp	r1, #0
    1354:	0afffffa 	beq	1344 <__udivsi3+0xe8>
    1358:	e92d4003 	push	{r0, r1, lr}
    135c:	ebffffbe 	bl	125c <__udivsi3>
    1360:	e8bd4006 	pop	{r1, r2, lr}
    1364:	e0030092 	mul	r3, r2, r0
    1368:	e0411003 	sub	r1, r1, r3
    136c:	e12fff1e 	bx	lr

00001370 <__aeabi_idiv0>:
    1370:	e12fff1e 	bx	lr
