
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000103 	bl	4a0 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb000209 	bl	91c <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb000318 	bl	d80 <printf>
     11c:	eb0001e3 	bl	8b0 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb00030e 	bl	d80 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001498 	.word	0x00001498
     154:	0000143c 	.word	0x0000143c
     158:	00001444 	.word	0x00001444
     15c:	00001454 	.word	0x00001454

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb0001c7 	bl	8b0 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb000204 	bl	9d0 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb0002e3 	bl	d80 <printf>
     1f0:	eb0001ae 	bl	8b0 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb0001d1 	bl	964 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb00019c 	bl	8b0 <exit>
     23c:	00001464 	.word	0x00001464
     240:	00001468 	.word	0x00001468

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

00000c10 <putc>:
     c10:	e92d4800 	push	{fp, lr}
     c14:	e28db004 	add	fp, sp, #4
     c18:	e24dd008 	sub	sp, sp, #8
     c1c:	e50b0008 	str	r0, [fp, #-8]
     c20:	e1a03001 	mov	r3, r1
     c24:	e54b3009 	strb	r3, [fp, #-9]
     c28:	e24b3009 	sub	r3, fp, #9
     c2c:	e3a02001 	mov	r2, #1
     c30:	e1a01003 	mov	r1, r3
     c34:	e51b0008 	ldr	r0, [fp, #-8]
     c38:	ebffff40 	bl	940 <write>
     c3c:	e1a00000 	nop			@ (mov r0, r0)
     c40:	e24bd004 	sub	sp, fp, #4
     c44:	e8bd8800 	pop	{fp, pc}

00000c48 <printint>:
     c48:	e92d4800 	push	{fp, lr}
     c4c:	e28db004 	add	fp, sp, #4
     c50:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c54:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c58:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c5c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c60:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c64:	e3a03000 	mov	r3, #0
     c68:	e50b300c 	str	r3, [fp, #-12]
     c6c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c70:	e3530000 	cmp	r3, #0
     c74:	0a000008 	beq	c9c <printint+0x54>
     c78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c7c:	e3530000 	cmp	r3, #0
     c80:	aa000005 	bge	c9c <printint+0x54>
     c84:	e3a03001 	mov	r3, #1
     c88:	e50b300c 	str	r3, [fp, #-12]
     c8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c90:	e2633000 	rsb	r3, r3, #0
     c94:	e50b3010 	str	r3, [fp, #-16]
     c98:	ea000001 	b	ca4 <printint+0x5c>
     c9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ca0:	e50b3010 	str	r3, [fp, #-16]
     ca4:	e3a03000 	mov	r3, #0
     ca8:	e50b3008 	str	r3, [fp, #-8]
     cac:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     cb0:	e51b3010 	ldr	r3, [fp, #-16]
     cb4:	e1a01002 	mov	r1, r2
     cb8:	e1a00003 	mov	r0, r3
     cbc:	eb0001d5 	bl	1418 <__aeabi_uidivmod>
     cc0:	e1a03001 	mov	r3, r1
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e2832001 	add	r2, r3, #1
     cd0:	e50b2008 	str	r2, [fp, #-8]
     cd4:	e59f20a0 	ldr	r2, [pc, #160]	@ d7c <printint+0x134>
     cd8:	e7d22001 	ldrb	r2, [r2, r1]
     cdc:	e2433004 	sub	r3, r3, #4
     ce0:	e083300b 	add	r3, r3, fp
     ce4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ce8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     cec:	e1a01003 	mov	r1, r3
     cf0:	e51b0010 	ldr	r0, [fp, #-16]
     cf4:	eb00018a 	bl	1324 <__udivsi3>
     cf8:	e1a03000 	mov	r3, r0
     cfc:	e50b3010 	str	r3, [fp, #-16]
     d00:	e51b3010 	ldr	r3, [fp, #-16]
     d04:	e3530000 	cmp	r3, #0
     d08:	1affffe7 	bne	cac <printint+0x64>
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e3530000 	cmp	r3, #0
     d14:	0a00000e 	beq	d54 <printint+0x10c>
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e2832001 	add	r2, r3, #1
     d20:	e50b2008 	str	r2, [fp, #-8]
     d24:	e2433004 	sub	r3, r3, #4
     d28:	e083300b 	add	r3, r3, fp
     d2c:	e3a0202d 	mov	r2, #45	@ 0x2d
     d30:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d34:	ea000006 	b	d54 <printint+0x10c>
     d38:	e24b2020 	sub	r2, fp, #32
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e0823003 	add	r3, r2, r3
     d44:	e5d33000 	ldrb	r3, [r3]
     d48:	e1a01003 	mov	r1, r3
     d4c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d50:	ebffffae 	bl	c10 <putc>
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e2433001 	sub	r3, r3, #1
     d5c:	e50b3008 	str	r3, [fp, #-8]
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e3530000 	cmp	r3, #0
     d68:	aafffff2 	bge	d38 <printint+0xf0>
     d6c:	e1a00000 	nop			@ (mov r0, r0)
     d70:	e1a00000 	nop			@ (mov r0, r0)
     d74:	e24bd004 	sub	sp, fp, #4
     d78:	e8bd8800 	pop	{fp, pc}
     d7c:	00001484 	.word	0x00001484

00000d80 <printf>:
     d80:	e92d000e 	push	{r1, r2, r3}
     d84:	e92d4800 	push	{fp, lr}
     d88:	e28db004 	add	fp, sp, #4
     d8c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d90:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d94:	e3a03000 	mov	r3, #0
     d98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d9c:	e28b3008 	add	r3, fp, #8
     da0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     da4:	e3a03000 	mov	r3, #0
     da8:	e50b3010 	str	r3, [fp, #-16]
     dac:	ea000074 	b	f84 <printf+0x204>
     db0:	e59b2004 	ldr	r2, [fp, #4]
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e0823003 	add	r3, r2, r3
     dbc:	e5d33000 	ldrb	r3, [r3]
     dc0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     dc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     dc8:	e3530000 	cmp	r3, #0
     dcc:	1a00000b 	bne	e00 <printf+0x80>
     dd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd4:	e3530025 	cmp	r3, #37	@ 0x25
     dd8:	1a000002 	bne	de8 <printf+0x68>
     ddc:	e3a03025 	mov	r3, #37	@ 0x25
     de0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     de4:	ea000063 	b	f78 <printf+0x1f8>
     de8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dec:	e6ef3073 	uxtb	r3, r3
     df0:	e1a01003 	mov	r1, r3
     df4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     df8:	ebffff84 	bl	c10 <putc>
     dfc:	ea00005d 	b	f78 <printf+0x1f8>
     e00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e04:	e3530025 	cmp	r3, #37	@ 0x25
     e08:	1a00005a 	bne	f78 <printf+0x1f8>
     e0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e10:	e3530064 	cmp	r3, #100	@ 0x64
     e14:	1a00000a 	bne	e44 <printf+0xc4>
     e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e1a01003 	mov	r1, r3
     e24:	e3a03001 	mov	r3, #1
     e28:	e3a0200a 	mov	r2, #10
     e2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e30:	ebffff84 	bl	c48 <printint>
     e34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e38:	e2833004 	add	r3, r3, #4
     e3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e40:	ea00004a 	b	f70 <printf+0x1f0>
     e44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e48:	e3530078 	cmp	r3, #120	@ 0x78
     e4c:	0a000002 	beq	e5c <printf+0xdc>
     e50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e54:	e3530070 	cmp	r3, #112	@ 0x70
     e58:	1a00000a 	bne	e88 <printf+0x108>
     e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e1a01003 	mov	r1, r3
     e68:	e3a03000 	mov	r3, #0
     e6c:	e3a02010 	mov	r2, #16
     e70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e74:	ebffff73 	bl	c48 <printint>
     e78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e7c:	e2833004 	add	r3, r3, #4
     e80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e84:	ea000039 	b	f70 <printf+0x1f0>
     e88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e8c:	e3530073 	cmp	r3, #115	@ 0x73
     e90:	1a000018 	bne	ef8 <printf+0x178>
     e94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea4:	e2833004 	add	r3, r3, #4
     ea8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e3530000 	cmp	r3, #0
     eb4:	1a00000a 	bne	ee4 <printf+0x164>
     eb8:	e59f30f4 	ldr	r3, [pc, #244]	@ fb4 <printf+0x234>
     ebc:	e50b300c 	str	r3, [fp, #-12]
     ec0:	ea000007 	b	ee4 <printf+0x164>
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e5d33000 	ldrb	r3, [r3]
     ecc:	e1a01003 	mov	r1, r3
     ed0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ed4:	ebffff4d 	bl	c10 <putc>
     ed8:	e51b300c 	ldr	r3, [fp, #-12]
     edc:	e2833001 	add	r3, r3, #1
     ee0:	e50b300c 	str	r3, [fp, #-12]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5d33000 	ldrb	r3, [r3]
     eec:	e3530000 	cmp	r3, #0
     ef0:	1afffff3 	bne	ec4 <printf+0x144>
     ef4:	ea00001d 	b	f70 <printf+0x1f0>
     ef8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e3530063 	cmp	r3, #99	@ 0x63
     f00:	1a000009 	bne	f2c <printf+0x1ac>
     f04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e6ef3073 	uxtb	r3, r3
     f10:	e1a01003 	mov	r1, r3
     f14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f18:	ebffff3c 	bl	c10 <putc>
     f1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f20:	e2833004 	add	r3, r3, #4
     f24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f28:	ea000010 	b	f70 <printf+0x1f0>
     f2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f30:	e3530025 	cmp	r3, #37	@ 0x25
     f34:	1a000005 	bne	f50 <printf+0x1d0>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e6ef3073 	uxtb	r3, r3
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f48:	ebffff30 	bl	c10 <putc>
     f4c:	ea000007 	b	f70 <printf+0x1f0>
     f50:	e3a01025 	mov	r1, #37	@ 0x25
     f54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f58:	ebffff2c 	bl	c10 <putc>
     f5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f60:	e6ef3073 	uxtb	r3, r3
     f64:	e1a01003 	mov	r1, r3
     f68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f6c:	ebffff27 	bl	c10 <putc>
     f70:	e3a03000 	mov	r3, #0
     f74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f78:	e51b3010 	ldr	r3, [fp, #-16]
     f7c:	e2833001 	add	r3, r3, #1
     f80:	e50b3010 	str	r3, [fp, #-16]
     f84:	e59b2004 	ldr	r2, [fp, #4]
     f88:	e51b3010 	ldr	r3, [fp, #-16]
     f8c:	e0823003 	add	r3, r2, r3
     f90:	e5d33000 	ldrb	r3, [r3]
     f94:	e3530000 	cmp	r3, #0
     f98:	1affff84 	bne	db0 <printf+0x30>
     f9c:	e1a00000 	nop			@ (mov r0, r0)
     fa0:	e1a00000 	nop			@ (mov r0, r0)
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd4800 	pop	{fp, lr}
     fac:	e28dd00c 	add	sp, sp, #12
     fb0:	e12fff1e 	bx	lr
     fb4:	0000147c 	.word	0x0000147c

00000fb8 <free>:
     fb8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     fbc:	e28db000 	add	fp, sp, #0
     fc0:	e24dd014 	sub	sp, sp, #20
     fc4:	e50b0010 	str	r0, [fp, #-16]
     fc8:	e51b3010 	ldr	r3, [fp, #-16]
     fcc:	e2433008 	sub	r3, r3, #8
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e59f3154 	ldr	r3, [pc, #340]	@ 1130 <free+0x178>
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e50b3008 	str	r3, [fp, #-8]
     fe0:	ea000010 	b	1028 <free+0x70>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e51b2008 	ldr	r2, [fp, #-8]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	3a000008 	bcc	101c <free+0x64>
     ff8:	e51b200c 	ldr	r2, [fp, #-12]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e1520003 	cmp	r2, r3
    1004:	8a000010 	bhi	104c <free+0x94>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e51b200c 	ldr	r2, [fp, #-12]
    1014:	e1520003 	cmp	r2, r3
    1018:	3a00000b 	bcc	104c <free+0x94>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e50b3008 	str	r3, [fp, #-8]
    1028:	e51b200c 	ldr	r2, [fp, #-12]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e1520003 	cmp	r2, r3
    1034:	9affffea 	bls	fe4 <free+0x2c>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e51b200c 	ldr	r2, [fp, #-12]
    1044:	e1520003 	cmp	r2, r3
    1048:	2affffe5 	bcs	fe4 <free+0x2c>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e1a03183 	lsl	r3, r3, #3
    1058:	e51b200c 	ldr	r2, [fp, #-12]
    105c:	e0822003 	add	r2, r2, r3
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e1520003 	cmp	r2, r3
    106c:	1a00000d 	bne	10a8 <free+0xf0>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5932004 	ldr	r2, [r3, #4]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e5933004 	ldr	r3, [r3, #4]
    1084:	e0822003 	add	r2, r2, r3
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5832004 	str	r2, [r3, #4]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e5932000 	ldr	r2, [r3]
    109c:	e51b300c 	ldr	r3, [fp, #-12]
    10a0:	e5832000 	str	r2, [r3]
    10a4:	ea000003 	b	10b8 <free+0x100>
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e5932000 	ldr	r2, [r3]
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5832000 	str	r2, [r3]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933004 	ldr	r3, [r3, #4]
    10c0:	e1a03183 	lsl	r3, r3, #3
    10c4:	e51b2008 	ldr	r2, [fp, #-8]
    10c8:	e0823003 	add	r3, r2, r3
    10cc:	e51b200c 	ldr	r2, [fp, #-12]
    10d0:	e1520003 	cmp	r2, r3
    10d4:	1a00000b 	bne	1108 <free+0x150>
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5932004 	ldr	r2, [r3, #4]
    10e0:	e51b300c 	ldr	r3, [fp, #-12]
    10e4:	e5933004 	ldr	r3, [r3, #4]
    10e8:	e0822003 	add	r2, r2, r3
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5932000 	ldr	r2, [r3]
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5832000 	str	r2, [r3]
    1104:	ea000002 	b	1114 <free+0x15c>
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e51b200c 	ldr	r2, [fp, #-12]
    1110:	e5832000 	str	r2, [r3]
    1114:	e59f2014 	ldr	r2, [pc, #20]	@ 1130 <free+0x178>
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e5823000 	str	r3, [r2]
    1120:	e1a00000 	nop			@ (mov r0, r0)
    1124:	e28bd000 	add	sp, fp, #0
    1128:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    112c:	e12fff1e 	bx	lr
    1130:	000016a0 	.word	0x000016a0

00001134 <morecore>:
    1134:	e92d4800 	push	{fp, lr}
    1138:	e28db004 	add	fp, sp, #4
    113c:	e24dd010 	sub	sp, sp, #16
    1140:	e50b0010 	str	r0, [fp, #-16]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e3530a01 	cmp	r3, #4096	@ 0x1000
    114c:	2a000001 	bcs	1158 <morecore+0x24>
    1150:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1154:	e50b3010 	str	r3, [fp, #-16]
    1158:	e51b3010 	ldr	r3, [fp, #-16]
    115c:	e1a03183 	lsl	r3, r3, #3
    1160:	e1a00003 	mov	r0, r3
    1164:	ebfffe6a 	bl	b14 <sbrk>
    1168:	e50b0008 	str	r0, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e3730001 	cmn	r3, #1
    1174:	1a000001 	bne	1180 <morecore+0x4c>
    1178:	e3a03000 	mov	r3, #0
    117c:	ea00000a 	b	11ac <morecore+0x78>
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e50b300c 	str	r3, [fp, #-12]
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e51b2010 	ldr	r2, [fp, #-16]
    1190:	e5832004 	str	r2, [r3, #4]
    1194:	e51b300c 	ldr	r3, [fp, #-12]
    1198:	e2833008 	add	r3, r3, #8
    119c:	e1a00003 	mov	r0, r3
    11a0:	ebffff84 	bl	fb8 <free>
    11a4:	e59f300c 	ldr	r3, [pc, #12]	@ 11b8 <morecore+0x84>
    11a8:	e5933000 	ldr	r3, [r3]
    11ac:	e1a00003 	mov	r0, r3
    11b0:	e24bd004 	sub	sp, fp, #4
    11b4:	e8bd8800 	pop	{fp, pc}
    11b8:	000016a0 	.word	0x000016a0

000011bc <malloc>:
    11bc:	e92d4800 	push	{fp, lr}
    11c0:	e28db004 	add	fp, sp, #4
    11c4:	e24dd018 	sub	sp, sp, #24
    11c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d0:	e2833007 	add	r3, r3, #7
    11d4:	e1a031a3 	lsr	r3, r3, #3
    11d8:	e2833001 	add	r3, r3, #1
    11dc:	e50b3010 	str	r3, [fp, #-16]
    11e0:	e59f3134 	ldr	r3, [pc, #308]	@ 131c <malloc+0x160>
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e50b300c 	str	r3, [fp, #-12]
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e3530000 	cmp	r3, #0
    11f4:	1a00000b 	bne	1228 <malloc+0x6c>
    11f8:	e59f3120 	ldr	r3, [pc, #288]	@ 1320 <malloc+0x164>
    11fc:	e50b300c 	str	r3, [fp, #-12]
    1200:	e59f2114 	ldr	r2, [pc, #276]	@ 131c <malloc+0x160>
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e5823000 	str	r3, [r2]
    120c:	e59f3108 	ldr	r3, [pc, #264]	@ 131c <malloc+0x160>
    1210:	e5933000 	ldr	r3, [r3]
    1214:	e59f2104 	ldr	r2, [pc, #260]	@ 1320 <malloc+0x164>
    1218:	e5823000 	str	r3, [r2]
    121c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1320 <malloc+0x164>
    1220:	e3a02000 	mov	r2, #0
    1224:	e5832004 	str	r2, [r3, #4]
    1228:	e51b300c 	ldr	r3, [fp, #-12]
    122c:	e5933000 	ldr	r3, [r3]
    1230:	e50b3008 	str	r3, [fp, #-8]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933004 	ldr	r3, [r3, #4]
    123c:	e51b2010 	ldr	r2, [fp, #-16]
    1240:	e1520003 	cmp	r2, r3
    1244:	8a00001e 	bhi	12c4 <malloc+0x108>
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e5933004 	ldr	r3, [r3, #4]
    1250:	e51b2010 	ldr	r2, [fp, #-16]
    1254:	e1520003 	cmp	r2, r3
    1258:	1a000004 	bne	1270 <malloc+0xb4>
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5932000 	ldr	r2, [r3]
    1264:	e51b300c 	ldr	r3, [fp, #-12]
    1268:	e5832000 	str	r2, [r3]
    126c:	ea00000e 	b	12ac <malloc+0xf0>
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e5932004 	ldr	r2, [r3, #4]
    1278:	e51b3010 	ldr	r3, [fp, #-16]
    127c:	e0422003 	sub	r2, r2, r3
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5832004 	str	r2, [r3, #4]
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5933004 	ldr	r3, [r3, #4]
    1290:	e1a03183 	lsl	r3, r3, #3
    1294:	e51b2008 	ldr	r2, [fp, #-8]
    1298:	e0823003 	add	r3, r2, r3
    129c:	e50b3008 	str	r3, [fp, #-8]
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e51b2010 	ldr	r2, [fp, #-16]
    12a8:	e5832004 	str	r2, [r3, #4]
    12ac:	e59f2068 	ldr	r2, [pc, #104]	@ 131c <malloc+0x160>
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e5823000 	str	r3, [r2]
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e2833008 	add	r3, r3, #8
    12c0:	ea000012 	b	1310 <malloc+0x154>
    12c4:	e59f3050 	ldr	r3, [pc, #80]	@ 131c <malloc+0x160>
    12c8:	e5933000 	ldr	r3, [r3]
    12cc:	e51b2008 	ldr	r2, [fp, #-8]
    12d0:	e1520003 	cmp	r2, r3
    12d4:	1a000007 	bne	12f8 <malloc+0x13c>
    12d8:	e51b0010 	ldr	r0, [fp, #-16]
    12dc:	ebffff94 	bl	1134 <morecore>
    12e0:	e50b0008 	str	r0, [fp, #-8]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e3530000 	cmp	r3, #0
    12ec:	1a000001 	bne	12f8 <malloc+0x13c>
    12f0:	e3a03000 	mov	r3, #0
    12f4:	ea000005 	b	1310 <malloc+0x154>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e50b300c 	str	r3, [fp, #-12]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e50b3008 	str	r3, [fp, #-8]
    130c:	eaffffc8 	b	1234 <malloc+0x78>
    1310:	e1a00003 	mov	r0, r3
    1314:	e24bd004 	sub	sp, fp, #4
    1318:	e8bd8800 	pop	{fp, pc}
    131c:	000016a0 	.word	0x000016a0
    1320:	00001698 	.word	0x00001698

00001324 <__udivsi3>:
    1324:	e2512001 	subs	r2, r1, #1
    1328:	012fff1e 	bxeq	lr
    132c:	3a000036 	bcc	140c <__udivsi3+0xe8>
    1330:	e1500001 	cmp	r0, r1
    1334:	9a000022 	bls	13c4 <__udivsi3+0xa0>
    1338:	e1110002 	tst	r1, r2
    133c:	0a000023 	beq	13d0 <__udivsi3+0xac>
    1340:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1344:	01a01181 	lsleq	r1, r1, #3
    1348:	03a03008 	moveq	r3, #8
    134c:	13a03001 	movne	r3, #1
    1350:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1354:	31510000 	cmpcc	r1, r0
    1358:	31a01201 	lslcc	r1, r1, #4
    135c:	31a03203 	lslcc	r3, r3, #4
    1360:	3afffffa 	bcc	1350 <__udivsi3+0x2c>
    1364:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1368:	31510000 	cmpcc	r1, r0
    136c:	31a01081 	lslcc	r1, r1, #1
    1370:	31a03083 	lslcc	r3, r3, #1
    1374:	3afffffa 	bcc	1364 <__udivsi3+0x40>
    1378:	e3a02000 	mov	r2, #0
    137c:	e1500001 	cmp	r0, r1
    1380:	20400001 	subcs	r0, r0, r1
    1384:	21822003 	orrcs	r2, r2, r3
    1388:	e15000a1 	cmp	r0, r1, lsr #1
    138c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1390:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1394:	e1500121 	cmp	r0, r1, lsr #2
    1398:	20400121 	subcs	r0, r0, r1, lsr #2
    139c:	21822123 	orrcs	r2, r2, r3, lsr #2
    13a0:	e15001a1 	cmp	r0, r1, lsr #3
    13a4:	204001a1 	subcs	r0, r0, r1, lsr #3
    13a8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13ac:	e3500000 	cmp	r0, #0
    13b0:	11b03223 	lsrsne	r3, r3, #4
    13b4:	11a01221 	lsrne	r1, r1, #4
    13b8:	1affffef 	bne	137c <__udivsi3+0x58>
    13bc:	e1a00002 	mov	r0, r2
    13c0:	e12fff1e 	bx	lr
    13c4:	03a00001 	moveq	r0, #1
    13c8:	13a00000 	movne	r0, #0
    13cc:	e12fff1e 	bx	lr
    13d0:	e3510801 	cmp	r1, #65536	@ 0x10000
    13d4:	21a01821 	lsrcs	r1, r1, #16
    13d8:	23a02010 	movcs	r2, #16
    13dc:	33a02000 	movcc	r2, #0
    13e0:	e3510c01 	cmp	r1, #256	@ 0x100
    13e4:	21a01421 	lsrcs	r1, r1, #8
    13e8:	22822008 	addcs	r2, r2, #8
    13ec:	e3510010 	cmp	r1, #16
    13f0:	21a01221 	lsrcs	r1, r1, #4
    13f4:	22822004 	addcs	r2, r2, #4
    13f8:	e3510004 	cmp	r1, #4
    13fc:	82822003 	addhi	r2, r2, #3
    1400:	908220a1 	addls	r2, r2, r1, lsr #1
    1404:	e1a00230 	lsr	r0, r0, r2
    1408:	e12fff1e 	bx	lr
    140c:	e3500000 	cmp	r0, #0
    1410:	13e00000 	mvnne	r0, #0
    1414:	ea000007 	b	1438 <__aeabi_idiv0>

00001418 <__aeabi_uidivmod>:
    1418:	e3510000 	cmp	r1, #0
    141c:	0afffffa 	beq	140c <__udivsi3+0xe8>
    1420:	e92d4003 	push	{r0, r1, lr}
    1424:	ebffffbe 	bl	1324 <__udivsi3>
    1428:	e8bd4006 	pop	{r1, r2, lr}
    142c:	e0030092 	mul	r3, r2, r0
    1430:	e0411003 	sub	r1, r1, r3
    1434:	e12fff1e 	bx	lr

00001438 <__aeabi_idiv0>:
    1438:	e12fff1e 	bx	lr
