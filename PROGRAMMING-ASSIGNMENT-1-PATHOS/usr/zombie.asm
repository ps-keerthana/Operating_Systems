
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb000197 	bl	66c <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb00023d 	bl	918 <sleep>
      20:	eb00019a 	bl	690 <exit>

00000024 <strcpy>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e51b3010 	ldr	r3, [fp, #-16]
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	e1a00000 	nop			@ (mov r0, r0)
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e2823001 	add	r3, r2, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e51b3010 	ldr	r3, [fp, #-16]
      54:	e2831001 	add	r1, r3, #1
      58:	e50b1010 	str	r1, [fp, #-16]
      5c:	e5d22000 	ldrb	r2, [r2]
      60:	e5c32000 	strb	r2, [r3]
      64:	e5d33000 	ldrb	r3, [r3]
      68:	e3530000 	cmp	r3, #0
      6c:	1afffff4 	bne	44 <strcpy+0x20>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e1a00003 	mov	r0, r3
      78:	e28bd000 	add	sp, fp, #0
      7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      80:	e12fff1e 	bx	lr

00000084 <strcmp>:
      84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      88:	e28db000 	add	fp, sp, #0
      8c:	e24dd00c 	sub	sp, sp, #12
      90:	e50b0008 	str	r0, [fp, #-8]
      94:	e50b100c 	str	r1, [fp, #-12]
      98:	ea000005 	b	b4 <strcmp+0x30>
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e2833001 	add	r3, r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e51b300c 	ldr	r3, [fp, #-12]
      ac:	e2833001 	add	r3, r3, #1
      b0:	e50b300c 	str	r3, [fp, #-12]
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e5d33000 	ldrb	r3, [r3]
      bc:	e3530000 	cmp	r3, #0
      c0:	0a000005 	beq	dc <strcmp+0x58>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e5d32000 	ldrb	r2, [r3]
      cc:	e51b300c 	ldr	r3, [fp, #-12]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e1520003 	cmp	r2, r3
      d8:	0affffef 	beq	9c <strcmp+0x18>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e1a02003 	mov	r2, r3
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e5d33000 	ldrb	r3, [r3]
      f0:	e0423003 	sub	r3, r2, r3
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strlen>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd014 	sub	sp, sp, #20
     110:	e50b0010 	str	r0, [fp, #-16]
     114:	e3a03000 	mov	r3, #0
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	ea000002 	b	12c <strlen+0x28>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e2833001 	add	r3, r3, #1
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e51b2010 	ldr	r2, [fp, #-16]
     134:	e0823003 	add	r3, r2, r3
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff6 	bne	120 <strlen+0x1c>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <memset>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd024 	sub	sp, sp, #36	@ 0x24
     164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     168:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     16c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     17c:	e54b300d 	strb	r3, [fp, #-13]
     180:	e55b200d 	ldrb	r2, [fp, #-13]
     184:	e1a03002 	mov	r3, r2
     188:	e1a03403 	lsl	r3, r3, #8
     18c:	e0833002 	add	r3, r3, r2
     190:	e1a03803 	lsl	r3, r3, #16
     194:	e1a02003 	mov	r2, r3
     198:	e55b300d 	ldrb	r3, [fp, #-13]
     19c:	e1a03403 	lsl	r3, r3, #8
     1a0:	e1822003 	orr	r2, r2, r3
     1a4:	e55b300d 	ldrb	r3, [fp, #-13]
     1a8:	e1823003 	orr	r3, r2, r3
     1ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b0:	ea000008 	b	1d8 <memset+0x80>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e55b200d 	ldrb	r2, [fp, #-13]
     1bc:	e5c32000 	strb	r2, [r3]
     1c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1c4:	e2433001 	sub	r3, r3, #1
     1c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e2833001 	add	r3, r3, #1
     1d4:	e50b3008 	str	r3, [fp, #-8]
     1d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000003 	beq	1f4 <memset+0x9c>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e2033003 	and	r3, r3, #3
     1ec:	e3530000 	cmp	r3, #0
     1f0:	1affffef 	bne	1b4 <memset+0x5c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e50b300c 	str	r3, [fp, #-12]
     1fc:	ea000008 	b	224 <memset+0xcc>
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     208:	e5832000 	str	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433004 	sub	r3, r3, #4
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e2833004 	add	r3, r3, #4
     220:	e50b300c 	str	r3, [fp, #-12]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530003 	cmp	r3, #3
     22c:	8afffff3 	bhi	200 <memset+0xa8>
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	ea000008 	b	260 <memset+0x108>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e55b200d 	ldrb	r2, [fp, #-13]
     244:	e5c32000 	strb	r2, [r3]
     248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e2433001 	sub	r3, r3, #1
     250:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     264:	e3530000 	cmp	r3, #0
     268:	1afffff3 	bne	23c <memset+0xe4>
     26c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     270:	e1a00003 	mov	r0, r3
     274:	e28bd000 	add	sp, fp, #0
     278:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     27c:	e12fff1e 	bx	lr

00000280 <strchr>:
     280:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     284:	e28db000 	add	fp, sp, #0
     288:	e24dd00c 	sub	sp, sp, #12
     28c:	e50b0008 	str	r0, [fp, #-8]
     290:	e1a03001 	mov	r3, r1
     294:	e54b3009 	strb	r3, [fp, #-9]
     298:	ea000009 	b	2c4 <strchr+0x44>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e5d33000 	ldrb	r3, [r3]
     2a4:	e55b2009 	ldrb	r2, [fp, #-9]
     2a8:	e1520003 	cmp	r2, r3
     2ac:	1a000001 	bne	2b8 <strchr+0x38>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	ea000007 	b	2d8 <strchr+0x58>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff1 	bne	29c <strchr+0x1c>
     2d4:	e3a03000 	mov	r3, #0
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <gets>:
     2e8:	e92d4800 	push	{fp, lr}
     2ec:	e28db004 	add	fp, sp, #4
     2f0:	e24dd018 	sub	sp, sp, #24
     2f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2fc:	e3a03000 	mov	r3, #0
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	ea000016 	b	364 <gets+0x7c>
     308:	e24b300d 	sub	r3, fp, #13
     30c:	e3a02001 	mov	r2, #1
     310:	e1a01003 	mov	r1, r3
     314:	e3a00000 	mov	r0, #0
     318:	eb0000f7 	bl	6fc <read>
     31c:	e50b000c 	str	r0, [fp, #-12]
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e3530000 	cmp	r3, #0
     328:	da000013 	ble	37c <gets+0x94>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2832001 	add	r2, r3, #1
     334:	e50b2008 	str	r2, [fp, #-8]
     338:	e1a02003 	mov	r2, r3
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e0833002 	add	r3, r3, r2
     344:	e55b200d 	ldrb	r2, [fp, #-13]
     348:	e5c32000 	strb	r2, [r3]
     34c:	e55b300d 	ldrb	r3, [fp, #-13]
     350:	e353000a 	cmp	r3, #10
     354:	0a000009 	beq	380 <gets+0x98>
     358:	e55b300d 	ldrb	r3, [fp, #-13]
     35c:	e353000d 	cmp	r3, #13
     360:	0a000006 	beq	380 <gets+0x98>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     370:	e1520003 	cmp	r2, r3
     374:	caffffe3 	bgt	308 <gets+0x20>
     378:	ea000000 	b	380 <gets+0x98>
     37c:	e1a00000 	nop			@ (mov r0, r0)
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     388:	e0823003 	add	r3, r2, r3
     38c:	e3a02000 	mov	r2, #0
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e1a00003 	mov	r0, r3
     39c:	e24bd004 	sub	sp, fp, #4
     3a0:	e8bd8800 	pop	{fp, pc}

000003a4 <stat>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd010 	sub	sp, sp, #16
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e3a01000 	mov	r1, #0
     3bc:	e51b0010 	ldr	r0, [fp, #-16]
     3c0:	eb0000fa 	bl	7b0 <open>
     3c4:	e50b0008 	str	r0, [fp, #-8]
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	aa000001 	bge	3dc <stat+0x38>
     3d4:	e3e03000 	mvn	r3, #0
     3d8:	ea000006 	b	3f8 <stat+0x54>
     3dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b0008 	ldr	r0, [fp, #-8]
     3e4:	eb00010c 	bl	81c <fstat>
     3e8:	e50b000c 	str	r0, [fp, #-12]
     3ec:	e51b0008 	ldr	r0, [fp, #-8]
     3f0:	eb0000d3 	bl	744 <close>
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e24bd004 	sub	sp, fp, #4
     400:	e8bd8800 	pop	{fp, pc}

00000404 <atoi>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd014 	sub	sp, sp, #20
     410:	e50b0010 	str	r0, [fp, #-16]
     414:	e3a03000 	mov	r3, #0
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	ea00000c 	b	454 <atoi+0x50>
     420:	e51b2008 	ldr	r2, [fp, #-8]
     424:	e1a03002 	mov	r3, r2
     428:	e1a03103 	lsl	r3, r3, #2
     42c:	e0833002 	add	r3, r3, r2
     430:	e1a03083 	lsl	r3, r3, #1
     434:	e1a01003 	mov	r1, r3
     438:	e51b3010 	ldr	r3, [fp, #-16]
     43c:	e2832001 	add	r2, r3, #1
     440:	e50b2010 	str	r2, [fp, #-16]
     444:	e5d33000 	ldrb	r3, [r3]
     448:	e0813003 	add	r3, r1, r3
     44c:	e2433030 	sub	r3, r3, #48	@ 0x30
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b3010 	ldr	r3, [fp, #-16]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e353002f 	cmp	r3, #47	@ 0x2f
     460:	9a000003 	bls	474 <atoi+0x70>
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e3530039 	cmp	r3, #57	@ 0x39
     470:	9affffea 	bls	420 <atoi+0x1c>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e1a00003 	mov	r0, r3
     47c:	e28bd000 	add	sp, fp, #0
     480:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     484:	e12fff1e 	bx	lr

00000488 <memmove>:
     488:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     48c:	e28db000 	add	fp, sp, #0
     490:	e24dd01c 	sub	sp, sp, #28
     494:	e50b0010 	str	r0, [fp, #-16]
     498:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     49c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e50b3008 	str	r3, [fp, #-8]
     4a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4ac:	e50b300c 	str	r3, [fp, #-12]
     4b0:	ea000007 	b	4d4 <memmove+0x4c>
     4b4:	e51b200c 	ldr	r2, [fp, #-12]
     4b8:	e2823001 	add	r3, r2, #1
     4bc:	e50b300c 	str	r3, [fp, #-12]
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2831001 	add	r1, r3, #1
     4c8:	e50b1008 	str	r1, [fp, #-8]
     4cc:	e5d22000 	ldrb	r2, [r2]
     4d0:	e5c32000 	strb	r2, [r3]
     4d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d8:	e2432001 	sub	r2, r3, #1
     4dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e3530000 	cmp	r3, #0
     4e4:	cafffff2 	bgt	4b4 <memmove+0x2c>
     4e8:	e51b3010 	ldr	r3, [fp, #-16]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <strncmp>:
     4fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     500:	e28db000 	add	fp, sp, #0
     504:	e24dd014 	sub	sp, sp, #20
     508:	e50b0008 	str	r0, [fp, #-8]
     50c:	e50b100c 	str	r1, [fp, #-12]
     510:	e50b2010 	str	r2, [fp, #-16]
     514:	ea000008 	b	53c <strncmp+0x40>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e2833001 	add	r3, r3, #1
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	e51b300c 	ldr	r3, [fp, #-12]
     528:	e2833001 	add	r3, r3, #1
     52c:	e50b300c 	str	r3, [fp, #-12]
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e2433001 	sub	r3, r3, #1
     538:	e50b3010 	str	r3, [fp, #-16]
     53c:	e51b3010 	ldr	r3, [fp, #-16]
     540:	e3530000 	cmp	r3, #0
     544:	da00000d 	ble	580 <strncmp+0x84>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e5d33000 	ldrb	r3, [r3]
     550:	e3530000 	cmp	r3, #0
     554:	0a000009 	beq	580 <strncmp+0x84>
     558:	e51b300c 	ldr	r3, [fp, #-12]
     55c:	e5d33000 	ldrb	r3, [r3]
     560:	e3530000 	cmp	r3, #0
     564:	0a000005 	beq	580 <strncmp+0x84>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e5d32000 	ldrb	r2, [r3]
     570:	e51b300c 	ldr	r3, [fp, #-12]
     574:	e5d33000 	ldrb	r3, [r3]
     578:	e1520003 	cmp	r2, r3
     57c:	0affffe5 	beq	518 <strncmp+0x1c>
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e3530000 	cmp	r3, #0
     588:	1a000001 	bne	594 <strncmp+0x98>
     58c:	e3a03000 	mov	r3, #0
     590:	ea000005 	b	5ac <strncmp+0xb0>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e5d33000 	ldrb	r3, [r3]
     59c:	e1a02003 	mov	r2, r3
     5a0:	e51b300c 	ldr	r3, [fp, #-12]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e0423003 	sub	r3, r2, r3
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e28bd000 	add	sp, fp, #0
     5b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b8:	e12fff1e 	bx	lr

000005bc <strncpy>:
     5bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5c0:	e28db000 	add	fp, sp, #0
     5c4:	e24dd01c 	sub	sp, sp, #28
     5c8:	e50b0010 	str	r0, [fp, #-16]
     5cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d4:	e51b3010 	ldr	r3, [fp, #-16]
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	ea00000a 	b	60c <strncpy+0x50>
     5e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5e4:	e2823001 	add	r3, r2, #1
     5e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e2831001 	add	r1, r3, #1
     5f4:	e50b1008 	str	r1, [fp, #-8]
     5f8:	e5d22000 	ldrb	r2, [r2]
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     604:	e2433001 	sub	r3, r3, #1
     608:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     60c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     610:	e3530000 	cmp	r3, #0
     614:	da00000c 	ble	64c <strncpy+0x90>
     618:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     61c:	e5d33000 	ldrb	r3, [r3]
     620:	e3530000 	cmp	r3, #0
     624:	1affffed 	bne	5e0 <strncpy+0x24>
     628:	ea000007 	b	64c <strncpy+0x90>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e2832001 	add	r2, r3, #1
     634:	e50b2008 	str	r2, [fp, #-8]
     638:	e3a02000 	mov	r2, #0
     63c:	e5c32000 	strb	r2, [r3]
     640:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     644:	e2433001 	sub	r3, r3, #1
     648:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     64c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     650:	e3530000 	cmp	r3, #0
     654:	cafffff4 	bgt	62c <strncpy+0x70>
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e1a00003 	mov	r0, r3
     660:	e28bd000 	add	sp, fp, #0
     664:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <fork>:
     66c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a00001 	mov	r0, #1
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <exit>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00002 	mov	r0, #2
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <wait>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00003 	mov	r0, #3
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <pipe>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00004 	mov	r0, #4
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <read>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00005 	mov	r0, #5
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <write>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00010 	mov	r0, #16
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <close>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00015 	mov	r0, #21
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <kill>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00006 	mov	r0, #6
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <exec>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00007 	mov	r0, #7
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <open>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a0000f 	mov	r0, #15
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <mknod>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a00011 	mov	r0, #17
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <unlink>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00012 	mov	r0, #18
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <fstat>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00008 	mov	r0, #8
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <link>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00013 	mov	r0, #19
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <mkdir>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00014 	mov	r0, #20
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <chdir>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00009 	mov	r0, #9
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <dup>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a0000a 	mov	r0, #10
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <getpid>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a0000b 	mov	r0, #11
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <sbrk>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a0000c 	mov	r0, #12
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <sleep>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a0000d 	mov	r0, #13
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <uptime>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a0000e 	mov	r0, #14
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <proclist>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00016 	mov	r0, #22
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <putc>:
     984:	e92d4800 	push	{fp, lr}
     988:	e28db004 	add	fp, sp, #4
     98c:	e24dd008 	sub	sp, sp, #8
     990:	e50b0008 	str	r0, [fp, #-8]
     994:	e1a03001 	mov	r3, r1
     998:	e54b3009 	strb	r3, [fp, #-9]
     99c:	e24b3009 	sub	r3, fp, #9
     9a0:	e3a02001 	mov	r2, #1
     9a4:	e1a01003 	mov	r1, r3
     9a8:	e51b0008 	ldr	r0, [fp, #-8]
     9ac:	ebffff5b 	bl	720 <write>
     9b0:	e1a00000 	nop			@ (mov r0, r0)
     9b4:	e24bd004 	sub	sp, fp, #4
     9b8:	e8bd8800 	pop	{fp, pc}

000009bc <printint>:
     9bc:	e92d4800 	push	{fp, lr}
     9c0:	e28db004 	add	fp, sp, #4
     9c4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9c8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9cc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9d0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9d4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9d8:	e3a03000 	mov	r3, #0
     9dc:	e50b300c 	str	r3, [fp, #-12]
     9e0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9e4:	e3530000 	cmp	r3, #0
     9e8:	0a000008 	beq	a10 <printint+0x54>
     9ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f0:	e3530000 	cmp	r3, #0
     9f4:	aa000005 	bge	a10 <printint+0x54>
     9f8:	e3a03001 	mov	r3, #1
     9fc:	e50b300c 	str	r3, [fp, #-12]
     a00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a04:	e2633000 	rsb	r3, r3, #0
     a08:	e50b3010 	str	r3, [fp, #-16]
     a0c:	ea000001 	b	a18 <printint+0x5c>
     a10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a14:	e50b3010 	str	r3, [fp, #-16]
     a18:	e3a03000 	mov	r3, #0
     a1c:	e50b3008 	str	r3, [fp, #-8]
     a20:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a24:	e51b3010 	ldr	r3, [fp, #-16]
     a28:	e1a01002 	mov	r1, r2
     a2c:	e1a00003 	mov	r0, r3
     a30:	eb0001d5 	bl	118c <__aeabi_uidivmod>
     a34:	e1a03001 	mov	r3, r1
     a38:	e1a01003 	mov	r1, r3
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e2832001 	add	r2, r3, #1
     a44:	e50b2008 	str	r2, [fp, #-8]
     a48:	e59f20a0 	ldr	r2, [pc, #160]	@ af0 <printint+0x134>
     a4c:	e7d22001 	ldrb	r2, [r2, r1]
     a50:	e2433004 	sub	r3, r3, #4
     a54:	e083300b 	add	r3, r3, fp
     a58:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a5c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a60:	e1a01003 	mov	r1, r3
     a64:	e51b0010 	ldr	r0, [fp, #-16]
     a68:	eb00018a 	bl	1098 <__udivsi3>
     a6c:	e1a03000 	mov	r3, r0
     a70:	e50b3010 	str	r3, [fp, #-16]
     a74:	e51b3010 	ldr	r3, [fp, #-16]
     a78:	e3530000 	cmp	r3, #0
     a7c:	1affffe7 	bne	a20 <printint+0x64>
     a80:	e51b300c 	ldr	r3, [fp, #-12]
     a84:	e3530000 	cmp	r3, #0
     a88:	0a00000e 	beq	ac8 <printint+0x10c>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e2832001 	add	r2, r3, #1
     a94:	e50b2008 	str	r2, [fp, #-8]
     a98:	e2433004 	sub	r3, r3, #4
     a9c:	e083300b 	add	r3, r3, fp
     aa0:	e3a0202d 	mov	r2, #45	@ 0x2d
     aa4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aa8:	ea000006 	b	ac8 <printint+0x10c>
     aac:	e24b2020 	sub	r2, fp, #32
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e0823003 	add	r3, r2, r3
     ab8:	e5d33000 	ldrb	r3, [r3]
     abc:	e1a01003 	mov	r1, r3
     ac0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ac4:	ebffffae 	bl	984 <putc>
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2433001 	sub	r3, r3, #1
     ad0:	e50b3008 	str	r3, [fp, #-8]
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e3530000 	cmp	r3, #0
     adc:	aafffff2 	bge	aac <printint+0xf0>
     ae0:	e1a00000 	nop			@ (mov r0, r0)
     ae4:	e1a00000 	nop			@ (mov r0, r0)
     ae8:	e24bd004 	sub	sp, fp, #4
     aec:	e8bd8800 	pop	{fp, pc}
     af0:	000011b8 	.word	0x000011b8

00000af4 <printf>:
     af4:	e92d000e 	push	{r1, r2, r3}
     af8:	e92d4800 	push	{fp, lr}
     afc:	e28db004 	add	fp, sp, #4
     b00:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b04:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b08:	e3a03000 	mov	r3, #0
     b0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b10:	e28b3008 	add	r3, fp, #8
     b14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b18:	e3a03000 	mov	r3, #0
     b1c:	e50b3010 	str	r3, [fp, #-16]
     b20:	ea000074 	b	cf8 <printf+0x204>
     b24:	e59b2004 	ldr	r2, [fp, #4]
     b28:	e51b3010 	ldr	r3, [fp, #-16]
     b2c:	e0823003 	add	r3, r2, r3
     b30:	e5d33000 	ldrb	r3, [r3]
     b34:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b3c:	e3530000 	cmp	r3, #0
     b40:	1a00000b 	bne	b74 <printf+0x80>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e3530025 	cmp	r3, #37	@ 0x25
     b4c:	1a000002 	bne	b5c <printf+0x68>
     b50:	e3a03025 	mov	r3, #37	@ 0x25
     b54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b58:	ea000063 	b	cec <printf+0x1f8>
     b5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b60:	e6ef3073 	uxtb	r3, r3
     b64:	e1a01003 	mov	r1, r3
     b68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b6c:	ebffff84 	bl	984 <putc>
     b70:	ea00005d 	b	cec <printf+0x1f8>
     b74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b78:	e3530025 	cmp	r3, #37	@ 0x25
     b7c:	1a00005a 	bne	cec <printf+0x1f8>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e3530064 	cmp	r3, #100	@ 0x64
     b88:	1a00000a 	bne	bb8 <printf+0xc4>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e1a01003 	mov	r1, r3
     b98:	e3a03001 	mov	r3, #1
     b9c:	e3a0200a 	mov	r2, #10
     ba0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba4:	ebffff84 	bl	9bc <printint>
     ba8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bac:	e2833004 	add	r3, r3, #4
     bb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	ea00004a 	b	ce4 <printf+0x1f0>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e3530078 	cmp	r3, #120	@ 0x78
     bc0:	0a000002 	beq	bd0 <printf+0xdc>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e3530070 	cmp	r3, #112	@ 0x70
     bcc:	1a00000a 	bne	bfc <printf+0x108>
     bd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd4:	e5933000 	ldr	r3, [r3]
     bd8:	e1a01003 	mov	r1, r3
     bdc:	e3a03000 	mov	r3, #0
     be0:	e3a02010 	mov	r2, #16
     be4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be8:	ebffff73 	bl	9bc <printint>
     bec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	e2833004 	add	r3, r3, #4
     bf4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bf8:	ea000039 	b	ce4 <printf+0x1f0>
     bfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c00:	e3530073 	cmp	r3, #115	@ 0x73
     c04:	1a000018 	bne	c6c <printf+0x178>
     c08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e5933000 	ldr	r3, [r3]
     c10:	e50b300c 	str	r3, [fp, #-12]
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e2833004 	add	r3, r3, #4
     c1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e51b300c 	ldr	r3, [fp, #-12]
     c24:	e3530000 	cmp	r3, #0
     c28:	1a00000a 	bne	c58 <printf+0x164>
     c2c:	e59f30f4 	ldr	r3, [pc, #244]	@ d28 <printf+0x234>
     c30:	e50b300c 	str	r3, [fp, #-12]
     c34:	ea000007 	b	c58 <printf+0x164>
     c38:	e51b300c 	ldr	r3, [fp, #-12]
     c3c:	e5d33000 	ldrb	r3, [r3]
     c40:	e1a01003 	mov	r1, r3
     c44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c48:	ebffff4d 	bl	984 <putc>
     c4c:	e51b300c 	ldr	r3, [fp, #-12]
     c50:	e2833001 	add	r3, r3, #1
     c54:	e50b300c 	str	r3, [fp, #-12]
     c58:	e51b300c 	ldr	r3, [fp, #-12]
     c5c:	e5d33000 	ldrb	r3, [r3]
     c60:	e3530000 	cmp	r3, #0
     c64:	1afffff3 	bne	c38 <printf+0x144>
     c68:	ea00001d 	b	ce4 <printf+0x1f0>
     c6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c70:	e3530063 	cmp	r3, #99	@ 0x63
     c74:	1a000009 	bne	ca0 <printf+0x1ac>
     c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e5933000 	ldr	r3, [r3]
     c80:	e6ef3073 	uxtb	r3, r3
     c84:	e1a01003 	mov	r1, r3
     c88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c8c:	ebffff3c 	bl	984 <putc>
     c90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c94:	e2833004 	add	r3, r3, #4
     c98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c9c:	ea000010 	b	ce4 <printf+0x1f0>
     ca0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca4:	e3530025 	cmp	r3, #37	@ 0x25
     ca8:	1a000005 	bne	cc4 <printf+0x1d0>
     cac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb0:	e6ef3073 	uxtb	r3, r3
     cb4:	e1a01003 	mov	r1, r3
     cb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cbc:	ebffff30 	bl	984 <putc>
     cc0:	ea000007 	b	ce4 <printf+0x1f0>
     cc4:	e3a01025 	mov	r1, #37	@ 0x25
     cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	ebffff2c 	bl	984 <putc>
     cd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd4:	e6ef3073 	uxtb	r3, r3
     cd8:	e1a01003 	mov	r1, r3
     cdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce0:	ebffff27 	bl	984 <putc>
     ce4:	e3a03000 	mov	r3, #0
     ce8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cec:	e51b3010 	ldr	r3, [fp, #-16]
     cf0:	e2833001 	add	r3, r3, #1
     cf4:	e50b3010 	str	r3, [fp, #-16]
     cf8:	e59b2004 	ldr	r2, [fp, #4]
     cfc:	e51b3010 	ldr	r3, [fp, #-16]
     d00:	e0823003 	add	r3, r2, r3
     d04:	e5d33000 	ldrb	r3, [r3]
     d08:	e3530000 	cmp	r3, #0
     d0c:	1affff84 	bne	b24 <printf+0x30>
     d10:	e1a00000 	nop			@ (mov r0, r0)
     d14:	e1a00000 	nop			@ (mov r0, r0)
     d18:	e24bd004 	sub	sp, fp, #4
     d1c:	e8bd4800 	pop	{fp, lr}
     d20:	e28dd00c 	add	sp, sp, #12
     d24:	e12fff1e 	bx	lr
     d28:	000011b0 	.word	0x000011b0

00000d2c <free>:
     d2c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d30:	e28db000 	add	fp, sp, #0
     d34:	e24dd014 	sub	sp, sp, #20
     d38:	e50b0010 	str	r0, [fp, #-16]
     d3c:	e51b3010 	ldr	r3, [fp, #-16]
     d40:	e2433008 	sub	r3, r3, #8
     d44:	e50b300c 	str	r3, [fp, #-12]
     d48:	e59f3154 	ldr	r3, [pc, #340]	@ ea4 <free+0x178>
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e50b3008 	str	r3, [fp, #-8]
     d54:	ea000010 	b	d9c <free+0x70>
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e51b2008 	ldr	r2, [fp, #-8]
     d64:	e1520003 	cmp	r2, r3
     d68:	3a000008 	bcc	d90 <free+0x64>
     d6c:	e51b200c 	ldr	r2, [fp, #-12]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e1520003 	cmp	r2, r3
     d78:	8a000010 	bhi	dc0 <free+0x94>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5933000 	ldr	r3, [r3]
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e1520003 	cmp	r2, r3
     d8c:	3a00000b 	bcc	dc0 <free+0x94>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e50b3008 	str	r3, [fp, #-8]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e1520003 	cmp	r2, r3
     da8:	9affffea 	bls	d58 <free+0x2c>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e1520003 	cmp	r2, r3
     dbc:	2affffe5 	bcs	d58 <free+0x2c>
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5933004 	ldr	r3, [r3, #4]
     dc8:	e1a03183 	lsl	r3, r3, #3
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e0822003 	add	r2, r2, r3
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e1520003 	cmp	r2, r3
     de0:	1a00000d 	bne	e1c <free+0xf0>
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e5932004 	ldr	r2, [r3, #4]
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e5933004 	ldr	r3, [r3, #4]
     df8:	e0822003 	add	r2, r2, r3
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5832004 	str	r2, [r3, #4]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5933000 	ldr	r3, [r3]
     e0c:	e5932000 	ldr	r2, [r3]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5832000 	str	r2, [r3]
     e18:	ea000003 	b	e2c <free+0x100>
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5932000 	ldr	r2, [r3]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5832000 	str	r2, [r3]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933004 	ldr	r3, [r3, #4]
     e34:	e1a03183 	lsl	r3, r3, #3
     e38:	e51b2008 	ldr	r2, [fp, #-8]
     e3c:	e0823003 	add	r3, r2, r3
     e40:	e51b200c 	ldr	r2, [fp, #-12]
     e44:	e1520003 	cmp	r2, r3
     e48:	1a00000b 	bne	e7c <free+0x150>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5932004 	ldr	r2, [r3, #4]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5933004 	ldr	r3, [r3, #4]
     e5c:	e0822003 	add	r2, r2, r3
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5832000 	str	r2, [r3]
     e78:	ea000002 	b	e88 <free+0x15c>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e51b200c 	ldr	r2, [fp, #-12]
     e84:	e5832000 	str	r2, [r3]
     e88:	e59f2014 	ldr	r2, [pc, #20]	@ ea4 <free+0x178>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5823000 	str	r3, [r2]
     e94:	e1a00000 	nop			@ (mov r0, r0)
     e98:	e28bd000 	add	sp, fp, #0
     e9c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ea0:	e12fff1e 	bx	lr
     ea4:	000011d4 	.word	0x000011d4

00000ea8 <morecore>:
     ea8:	e92d4800 	push	{fp, lr}
     eac:	e28db004 	add	fp, sp, #4
     eb0:	e24dd010 	sub	sp, sp, #16
     eb4:	e50b0010 	str	r0, [fp, #-16]
     eb8:	e51b3010 	ldr	r3, [fp, #-16]
     ebc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ec0:	2a000001 	bcs	ecc <morecore+0x24>
     ec4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ec8:	e50b3010 	str	r3, [fp, #-16]
     ecc:	e51b3010 	ldr	r3, [fp, #-16]
     ed0:	e1a03183 	lsl	r3, r3, #3
     ed4:	e1a00003 	mov	r0, r3
     ed8:	ebfffe85 	bl	8f4 <sbrk>
     edc:	e50b0008 	str	r0, [fp, #-8]
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e3730001 	cmn	r3, #1
     ee8:	1a000001 	bne	ef4 <morecore+0x4c>
     eec:	e3a03000 	mov	r3, #0
     ef0:	ea00000a 	b	f20 <morecore+0x78>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e50b300c 	str	r3, [fp, #-12]
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e51b2010 	ldr	r2, [fp, #-16]
     f04:	e5832004 	str	r2, [r3, #4]
     f08:	e51b300c 	ldr	r3, [fp, #-12]
     f0c:	e2833008 	add	r3, r3, #8
     f10:	e1a00003 	mov	r0, r3
     f14:	ebffff84 	bl	d2c <free>
     f18:	e59f300c 	ldr	r3, [pc, #12]	@ f2c <morecore+0x84>
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e1a00003 	mov	r0, r3
     f24:	e24bd004 	sub	sp, fp, #4
     f28:	e8bd8800 	pop	{fp, pc}
     f2c:	000011d4 	.word	0x000011d4

00000f30 <malloc>:
     f30:	e92d4800 	push	{fp, lr}
     f34:	e28db004 	add	fp, sp, #4
     f38:	e24dd018 	sub	sp, sp, #24
     f3c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f44:	e2833007 	add	r3, r3, #7
     f48:	e1a031a3 	lsr	r3, r3, #3
     f4c:	e2833001 	add	r3, r3, #1
     f50:	e50b3010 	str	r3, [fp, #-16]
     f54:	e59f3134 	ldr	r3, [pc, #308]	@ 1090 <malloc+0x160>
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e3530000 	cmp	r3, #0
     f68:	1a00000b 	bne	f9c <malloc+0x6c>
     f6c:	e59f3120 	ldr	r3, [pc, #288]	@ 1094 <malloc+0x164>
     f70:	e50b300c 	str	r3, [fp, #-12]
     f74:	e59f2114 	ldr	r2, [pc, #276]	@ 1090 <malloc+0x160>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5823000 	str	r3, [r2]
     f80:	e59f3108 	ldr	r3, [pc, #264]	@ 1090 <malloc+0x160>
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e59f2104 	ldr	r2, [pc, #260]	@ 1094 <malloc+0x164>
     f8c:	e5823000 	str	r3, [r2]
     f90:	e59f30fc 	ldr	r3, [pc, #252]	@ 1094 <malloc+0x164>
     f94:	e3a02000 	mov	r2, #0
     f98:	e5832004 	str	r2, [r3, #4]
     f9c:	e51b300c 	ldr	r3, [fp, #-12]
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e50b3008 	str	r3, [fp, #-8]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e51b2010 	ldr	r2, [fp, #-16]
     fb4:	e1520003 	cmp	r2, r3
     fb8:	8a00001e 	bhi	1038 <malloc+0x108>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933004 	ldr	r3, [r3, #4]
     fc4:	e51b2010 	ldr	r2, [fp, #-16]
     fc8:	e1520003 	cmp	r2, r3
     fcc:	1a000004 	bne	fe4 <malloc+0xb4>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5932000 	ldr	r2, [r3]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5832000 	str	r2, [r3]
     fe0:	ea00000e 	b	1020 <malloc+0xf0>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5932004 	ldr	r2, [r3, #4]
     fec:	e51b3010 	ldr	r3, [fp, #-16]
     ff0:	e0422003 	sub	r2, r2, r3
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5832004 	str	r2, [r3, #4]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933004 	ldr	r3, [r3, #4]
    1004:	e1a03183 	lsl	r3, r3, #3
    1008:	e51b2008 	ldr	r2, [fp, #-8]
    100c:	e0823003 	add	r3, r2, r3
    1010:	e50b3008 	str	r3, [fp, #-8]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e51b2010 	ldr	r2, [fp, #-16]
    101c:	e5832004 	str	r2, [r3, #4]
    1020:	e59f2068 	ldr	r2, [pc, #104]	@ 1090 <malloc+0x160>
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5823000 	str	r3, [r2]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e2833008 	add	r3, r3, #8
    1034:	ea000012 	b	1084 <malloc+0x154>
    1038:	e59f3050 	ldr	r3, [pc, #80]	@ 1090 <malloc+0x160>
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e51b2008 	ldr	r2, [fp, #-8]
    1044:	e1520003 	cmp	r2, r3
    1048:	1a000007 	bne	106c <malloc+0x13c>
    104c:	e51b0010 	ldr	r0, [fp, #-16]
    1050:	ebffff94 	bl	ea8 <morecore>
    1054:	e50b0008 	str	r0, [fp, #-8]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e3530000 	cmp	r3, #0
    1060:	1a000001 	bne	106c <malloc+0x13c>
    1064:	e3a03000 	mov	r3, #0
    1068:	ea000005 	b	1084 <malloc+0x154>
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e50b300c 	str	r3, [fp, #-12]
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	eaffffc8 	b	fa8 <malloc+0x78>
    1084:	e1a00003 	mov	r0, r3
    1088:	e24bd004 	sub	sp, fp, #4
    108c:	e8bd8800 	pop	{fp, pc}
    1090:	000011d4 	.word	0x000011d4
    1094:	000011cc 	.word	0x000011cc

00001098 <__udivsi3>:
    1098:	e2512001 	subs	r2, r1, #1
    109c:	012fff1e 	bxeq	lr
    10a0:	3a000036 	bcc	1180 <__udivsi3+0xe8>
    10a4:	e1500001 	cmp	r0, r1
    10a8:	9a000022 	bls	1138 <__udivsi3+0xa0>
    10ac:	e1110002 	tst	r1, r2
    10b0:	0a000023 	beq	1144 <__udivsi3+0xac>
    10b4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10b8:	01a01181 	lsleq	r1, r1, #3
    10bc:	03a03008 	moveq	r3, #8
    10c0:	13a03001 	movne	r3, #1
    10c4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10c8:	31510000 	cmpcc	r1, r0
    10cc:	31a01201 	lslcc	r1, r1, #4
    10d0:	31a03203 	lslcc	r3, r3, #4
    10d4:	3afffffa 	bcc	10c4 <__udivsi3+0x2c>
    10d8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10dc:	31510000 	cmpcc	r1, r0
    10e0:	31a01081 	lslcc	r1, r1, #1
    10e4:	31a03083 	lslcc	r3, r3, #1
    10e8:	3afffffa 	bcc	10d8 <__udivsi3+0x40>
    10ec:	e3a02000 	mov	r2, #0
    10f0:	e1500001 	cmp	r0, r1
    10f4:	20400001 	subcs	r0, r0, r1
    10f8:	21822003 	orrcs	r2, r2, r3
    10fc:	e15000a1 	cmp	r0, r1, lsr #1
    1100:	204000a1 	subcs	r0, r0, r1, lsr #1
    1104:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1108:	e1500121 	cmp	r0, r1, lsr #2
    110c:	20400121 	subcs	r0, r0, r1, lsr #2
    1110:	21822123 	orrcs	r2, r2, r3, lsr #2
    1114:	e15001a1 	cmp	r0, r1, lsr #3
    1118:	204001a1 	subcs	r0, r0, r1, lsr #3
    111c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1120:	e3500000 	cmp	r0, #0
    1124:	11b03223 	lsrsne	r3, r3, #4
    1128:	11a01221 	lsrne	r1, r1, #4
    112c:	1affffef 	bne	10f0 <__udivsi3+0x58>
    1130:	e1a00002 	mov	r0, r2
    1134:	e12fff1e 	bx	lr
    1138:	03a00001 	moveq	r0, #1
    113c:	13a00000 	movne	r0, #0
    1140:	e12fff1e 	bx	lr
    1144:	e3510801 	cmp	r1, #65536	@ 0x10000
    1148:	21a01821 	lsrcs	r1, r1, #16
    114c:	23a02010 	movcs	r2, #16
    1150:	33a02000 	movcc	r2, #0
    1154:	e3510c01 	cmp	r1, #256	@ 0x100
    1158:	21a01421 	lsrcs	r1, r1, #8
    115c:	22822008 	addcs	r2, r2, #8
    1160:	e3510010 	cmp	r1, #16
    1164:	21a01221 	lsrcs	r1, r1, #4
    1168:	22822004 	addcs	r2, r2, #4
    116c:	e3510004 	cmp	r1, #4
    1170:	82822003 	addhi	r2, r2, #3
    1174:	908220a1 	addls	r2, r2, r1, lsr #1
    1178:	e1a00230 	lsr	r0, r0, r2
    117c:	e12fff1e 	bx	lr
    1180:	e3500000 	cmp	r0, #0
    1184:	13e00000 	mvnne	r0, #0
    1188:	ea000007 	b	11ac <__aeabi_idiv0>

0000118c <__aeabi_uidivmod>:
    118c:	e3510000 	cmp	r1, #0
    1190:	0afffffa 	beq	1180 <__udivsi3+0xe8>
    1194:	e92d4003 	push	{r0, r1, lr}
    1198:	ebffffbe 	bl	1098 <__udivsi3>
    119c:	e8bd4006 	pop	{r1, r2, lr}
    11a0:	e0030092 	mul	r3, r2, r0
    11a4:	e0411003 	sub	r1, r1, r3
    11a8:	e12fff1e 	bx	lr

000011ac <__aeabi_idiv0>:
    11ac:	e12fff1e 	bx	lr
