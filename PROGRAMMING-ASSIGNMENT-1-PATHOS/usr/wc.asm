
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
     118:	eb0002fd 	bl	d14 <printf>
     11c:	eb0001e3 	bl	8b0 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0002f3 	bl	d14 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	0000142c 	.word	0x0000142c
     154:	000013d0 	.word	0x000013d0
     158:	000013d8 	.word	0x000013d8
     15c:	000013e8 	.word	0x000013e8

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
     1ec:	eb0002c8 	bl	d14 <printf>
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
     23c:	000013f8 	.word	0x000013f8
     240:	000013fc 	.word	0x000013fc

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

00000ba4 <putc>:
     ba4:	e92d4800 	push	{fp, lr}
     ba8:	e28db004 	add	fp, sp, #4
     bac:	e24dd008 	sub	sp, sp, #8
     bb0:	e50b0008 	str	r0, [fp, #-8]
     bb4:	e1a03001 	mov	r3, r1
     bb8:	e54b3009 	strb	r3, [fp, #-9]
     bbc:	e24b3009 	sub	r3, fp, #9
     bc0:	e3a02001 	mov	r2, #1
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e51b0008 	ldr	r0, [fp, #-8]
     bcc:	ebffff5b 	bl	940 <write>
     bd0:	e1a00000 	nop			@ (mov r0, r0)
     bd4:	e24bd004 	sub	sp, fp, #4
     bd8:	e8bd8800 	pop	{fp, pc}

00000bdc <printint>:
     bdc:	e92d4800 	push	{fp, lr}
     be0:	e28db004 	add	fp, sp, #4
     be4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     be8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bf0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bf4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     bf8:	e3a03000 	mov	r3, #0
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c04:	e3530000 	cmp	r3, #0
     c08:	0a000008 	beq	c30 <printint+0x54>
     c0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c10:	e3530000 	cmp	r3, #0
     c14:	aa000005 	bge	c30 <printint+0x54>
     c18:	e3a03001 	mov	r3, #1
     c1c:	e50b300c 	str	r3, [fp, #-12]
     c20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c24:	e2633000 	rsb	r3, r3, #0
     c28:	e50b3010 	str	r3, [fp, #-16]
     c2c:	ea000001 	b	c38 <printint+0x5c>
     c30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c34:	e50b3010 	str	r3, [fp, #-16]
     c38:	e3a03000 	mov	r3, #0
     c3c:	e50b3008 	str	r3, [fp, #-8]
     c40:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c44:	e51b3010 	ldr	r3, [fp, #-16]
     c48:	e1a01002 	mov	r1, r2
     c4c:	e1a00003 	mov	r0, r3
     c50:	eb0001d5 	bl	13ac <__aeabi_uidivmod>
     c54:	e1a03001 	mov	r3, r1
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b3008 	ldr	r3, [fp, #-8]
     c60:	e2832001 	add	r2, r3, #1
     c64:	e50b2008 	str	r2, [fp, #-8]
     c68:	e59f20a0 	ldr	r2, [pc, #160]	@ d10 <printint+0x134>
     c6c:	e7d22001 	ldrb	r2, [r2, r1]
     c70:	e2433004 	sub	r3, r3, #4
     c74:	e083300b 	add	r3, r3, fp
     c78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c7c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c80:	e1a01003 	mov	r1, r3
     c84:	e51b0010 	ldr	r0, [fp, #-16]
     c88:	eb00018a 	bl	12b8 <__udivsi3>
     c8c:	e1a03000 	mov	r3, r0
     c90:	e50b3010 	str	r3, [fp, #-16]
     c94:	e51b3010 	ldr	r3, [fp, #-16]
     c98:	e3530000 	cmp	r3, #0
     c9c:	1affffe7 	bne	c40 <printint+0x64>
     ca0:	e51b300c 	ldr	r3, [fp, #-12]
     ca4:	e3530000 	cmp	r3, #0
     ca8:	0a00000e 	beq	ce8 <printint+0x10c>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e2832001 	add	r2, r3, #1
     cb4:	e50b2008 	str	r2, [fp, #-8]
     cb8:	e2433004 	sub	r3, r3, #4
     cbc:	e083300b 	add	r3, r3, fp
     cc0:	e3a0202d 	mov	r2, #45	@ 0x2d
     cc4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cc8:	ea000006 	b	ce8 <printint+0x10c>
     ccc:	e24b2020 	sub	r2, fp, #32
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e0823003 	add	r3, r2, r3
     cd8:	e5d33000 	ldrb	r3, [r3]
     cdc:	e1a01003 	mov	r1, r3
     ce0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ce4:	ebffffae 	bl	ba4 <putc>
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e2433001 	sub	r3, r3, #1
     cf0:	e50b3008 	str	r3, [fp, #-8]
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e3530000 	cmp	r3, #0
     cfc:	aafffff2 	bge	ccc <printint+0xf0>
     d00:	e1a00000 	nop			@ (mov r0, r0)
     d04:	e1a00000 	nop			@ (mov r0, r0)
     d08:	e24bd004 	sub	sp, fp, #4
     d0c:	e8bd8800 	pop	{fp, pc}
     d10:	00001418 	.word	0x00001418

00000d14 <printf>:
     d14:	e92d000e 	push	{r1, r2, r3}
     d18:	e92d4800 	push	{fp, lr}
     d1c:	e28db004 	add	fp, sp, #4
     d20:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d24:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d28:	e3a03000 	mov	r3, #0
     d2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d30:	e28b3008 	add	r3, fp, #8
     d34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d38:	e3a03000 	mov	r3, #0
     d3c:	e50b3010 	str	r3, [fp, #-16]
     d40:	ea000074 	b	f18 <printf+0x204>
     d44:	e59b2004 	ldr	r2, [fp, #4]
     d48:	e51b3010 	ldr	r3, [fp, #-16]
     d4c:	e0823003 	add	r3, r2, r3
     d50:	e5d33000 	ldrb	r3, [r3]
     d54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d5c:	e3530000 	cmp	r3, #0
     d60:	1a00000b 	bne	d94 <printf+0x80>
     d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d68:	e3530025 	cmp	r3, #37	@ 0x25
     d6c:	1a000002 	bne	d7c <printf+0x68>
     d70:	e3a03025 	mov	r3, #37	@ 0x25
     d74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d78:	ea000063 	b	f0c <printf+0x1f8>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e6ef3073 	uxtb	r3, r3
     d84:	e1a01003 	mov	r1, r3
     d88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d8c:	ebffff84 	bl	ba4 <putc>
     d90:	ea00005d 	b	f0c <printf+0x1f8>
     d94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d98:	e3530025 	cmp	r3, #37	@ 0x25
     d9c:	1a00005a 	bne	f0c <printf+0x1f8>
     da0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da4:	e3530064 	cmp	r3, #100	@ 0x64
     da8:	1a00000a 	bne	dd8 <printf+0xc4>
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e1a01003 	mov	r1, r3
     db8:	e3a03001 	mov	r3, #1
     dbc:	e3a0200a 	mov	r2, #10
     dc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc4:	ebffff84 	bl	bdc <printint>
     dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dcc:	e2833004 	add	r3, r3, #4
     dd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	ea00004a 	b	f04 <printf+0x1f0>
     dd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ddc:	e3530078 	cmp	r3, #120	@ 0x78
     de0:	0a000002 	beq	df0 <printf+0xdc>
     de4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de8:	e3530070 	cmp	r3, #112	@ 0x70
     dec:	1a00000a 	bne	e1c <printf+0x108>
     df0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e1a01003 	mov	r1, r3
     dfc:	e3a03000 	mov	r3, #0
     e00:	e3a02010 	mov	r2, #16
     e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e08:	ebffff73 	bl	bdc <printint>
     e0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e10:	e2833004 	add	r3, r3, #4
     e14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e18:	ea000039 	b	f04 <printf+0x1f0>
     e1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e20:	e3530073 	cmp	r3, #115	@ 0x73
     e24:	1a000018 	bne	e8c <printf+0x178>
     e28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e2c:	e5933000 	ldr	r3, [r3]
     e30:	e50b300c 	str	r3, [fp, #-12]
     e34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e38:	e2833004 	add	r3, r3, #4
     e3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e3530000 	cmp	r3, #0
     e48:	1a00000a 	bne	e78 <printf+0x164>
     e4c:	e59f30f4 	ldr	r3, [pc, #244]	@ f48 <printf+0x234>
     e50:	e50b300c 	str	r3, [fp, #-12]
     e54:	ea000007 	b	e78 <printf+0x164>
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e5d33000 	ldrb	r3, [r3]
     e60:	e1a01003 	mov	r1, r3
     e64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e68:	ebffff4d 	bl	ba4 <putc>
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e2833001 	add	r3, r3, #1
     e74:	e50b300c 	str	r3, [fp, #-12]
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e5d33000 	ldrb	r3, [r3]
     e80:	e3530000 	cmp	r3, #0
     e84:	1afffff3 	bne	e58 <printf+0x144>
     e88:	ea00001d 	b	f04 <printf+0x1f0>
     e8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e90:	e3530063 	cmp	r3, #99	@ 0x63
     e94:	1a000009 	bne	ec0 <printf+0x1ac>
     e98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e6ef3073 	uxtb	r3, r3
     ea4:	e1a01003 	mov	r1, r3
     ea8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eac:	ebffff3c 	bl	ba4 <putc>
     eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eb4:	e2833004 	add	r3, r3, #4
     eb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ebc:	ea000010 	b	f04 <printf+0x1f0>
     ec0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec4:	e3530025 	cmp	r3, #37	@ 0x25
     ec8:	1a000005 	bne	ee4 <printf+0x1d0>
     ecc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed0:	e6ef3073 	uxtb	r3, r3
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     edc:	ebffff30 	bl	ba4 <putc>
     ee0:	ea000007 	b	f04 <printf+0x1f0>
     ee4:	e3a01025 	mov	r1, #37	@ 0x25
     ee8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eec:	ebffff2c 	bl	ba4 <putc>
     ef0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef4:	e6ef3073 	uxtb	r3, r3
     ef8:	e1a01003 	mov	r1, r3
     efc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f00:	ebffff27 	bl	ba4 <putc>
     f04:	e3a03000 	mov	r3, #0
     f08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e2833001 	add	r3, r3, #1
     f14:	e50b3010 	str	r3, [fp, #-16]
     f18:	e59b2004 	ldr	r2, [fp, #4]
     f1c:	e51b3010 	ldr	r3, [fp, #-16]
     f20:	e0823003 	add	r3, r2, r3
     f24:	e5d33000 	ldrb	r3, [r3]
     f28:	e3530000 	cmp	r3, #0
     f2c:	1affff84 	bne	d44 <printf+0x30>
     f30:	e1a00000 	nop			@ (mov r0, r0)
     f34:	e1a00000 	nop			@ (mov r0, r0)
     f38:	e24bd004 	sub	sp, fp, #4
     f3c:	e8bd4800 	pop	{fp, lr}
     f40:	e28dd00c 	add	sp, sp, #12
     f44:	e12fff1e 	bx	lr
     f48:	00001410 	.word	0x00001410

00000f4c <free>:
     f4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f50:	e28db000 	add	fp, sp, #0
     f54:	e24dd014 	sub	sp, sp, #20
     f58:	e50b0010 	str	r0, [fp, #-16]
     f5c:	e51b3010 	ldr	r3, [fp, #-16]
     f60:	e2433008 	sub	r3, r3, #8
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e59f3154 	ldr	r3, [pc, #340]	@ 10c4 <free+0x178>
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e50b3008 	str	r3, [fp, #-8]
     f74:	ea000010 	b	fbc <free+0x70>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e51b2008 	ldr	r2, [fp, #-8]
     f84:	e1520003 	cmp	r2, r3
     f88:	3a000008 	bcc	fb0 <free+0x64>
     f8c:	e51b200c 	ldr	r2, [fp, #-12]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e1520003 	cmp	r2, r3
     f98:	8a000010 	bhi	fe0 <free+0x94>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e51b200c 	ldr	r2, [fp, #-12]
     fa8:	e1520003 	cmp	r2, r3
     fac:	3a00000b 	bcc	fe0 <free+0x94>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e50b3008 	str	r3, [fp, #-8]
     fbc:	e51b200c 	ldr	r2, [fp, #-12]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e1520003 	cmp	r2, r3
     fc8:	9affffea 	bls	f78 <free+0x2c>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e51b200c 	ldr	r2, [fp, #-12]
     fd8:	e1520003 	cmp	r2, r3
     fdc:	2affffe5 	bcs	f78 <free+0x2c>
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5933004 	ldr	r3, [r3, #4]
     fe8:	e1a03183 	lsl	r3, r3, #3
     fec:	e51b200c 	ldr	r2, [fp, #-12]
     ff0:	e0822003 	add	r2, r2, r3
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e1520003 	cmp	r2, r3
    1000:	1a00000d 	bne	103c <free+0xf0>
    1004:	e51b300c 	ldr	r3, [fp, #-12]
    1008:	e5932004 	ldr	r2, [r3, #4]
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e5933004 	ldr	r3, [r3, #4]
    1018:	e0822003 	add	r2, r2, r3
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5832004 	str	r2, [r3, #4]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e5932000 	ldr	r2, [r3]
    1030:	e51b300c 	ldr	r3, [fp, #-12]
    1034:	e5832000 	str	r2, [r3]
    1038:	ea000003 	b	104c <free+0x100>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5932000 	ldr	r2, [r3]
    1044:	e51b300c 	ldr	r3, [fp, #-12]
    1048:	e5832000 	str	r2, [r3]
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e1a03183 	lsl	r3, r3, #3
    1058:	e51b2008 	ldr	r2, [fp, #-8]
    105c:	e0823003 	add	r3, r2, r3
    1060:	e51b200c 	ldr	r2, [fp, #-12]
    1064:	e1520003 	cmp	r2, r3
    1068:	1a00000b 	bne	109c <free+0x150>
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e5932004 	ldr	r2, [r3, #4]
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5933004 	ldr	r3, [r3, #4]
    107c:	e0822003 	add	r2, r2, r3
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5832004 	str	r2, [r3, #4]
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5932000 	ldr	r2, [r3]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e5832000 	str	r2, [r3]
    1098:	ea000002 	b	10a8 <free+0x15c>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e51b200c 	ldr	r2, [fp, #-12]
    10a4:	e5832000 	str	r2, [r3]
    10a8:	e59f2014 	ldr	r2, [pc, #20]	@ 10c4 <free+0x178>
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e5823000 	str	r3, [r2]
    10b4:	e1a00000 	nop			@ (mov r0, r0)
    10b8:	e28bd000 	add	sp, fp, #0
    10bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10c0:	e12fff1e 	bx	lr
    10c4:	00001634 	.word	0x00001634

000010c8 <morecore>:
    10c8:	e92d4800 	push	{fp, lr}
    10cc:	e28db004 	add	fp, sp, #4
    10d0:	e24dd010 	sub	sp, sp, #16
    10d4:	e50b0010 	str	r0, [fp, #-16]
    10d8:	e51b3010 	ldr	r3, [fp, #-16]
    10dc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10e0:	2a000001 	bcs	10ec <morecore+0x24>
    10e4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10e8:	e50b3010 	str	r3, [fp, #-16]
    10ec:	e51b3010 	ldr	r3, [fp, #-16]
    10f0:	e1a03183 	lsl	r3, r3, #3
    10f4:	e1a00003 	mov	r0, r3
    10f8:	ebfffe85 	bl	b14 <sbrk>
    10fc:	e50b0008 	str	r0, [fp, #-8]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e3730001 	cmn	r3, #1
    1108:	1a000001 	bne	1114 <morecore+0x4c>
    110c:	e3a03000 	mov	r3, #0
    1110:	ea00000a 	b	1140 <morecore+0x78>
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e50b300c 	str	r3, [fp, #-12]
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e51b2010 	ldr	r2, [fp, #-16]
    1124:	e5832004 	str	r2, [r3, #4]
    1128:	e51b300c 	ldr	r3, [fp, #-12]
    112c:	e2833008 	add	r3, r3, #8
    1130:	e1a00003 	mov	r0, r3
    1134:	ebffff84 	bl	f4c <free>
    1138:	e59f300c 	ldr	r3, [pc, #12]	@ 114c <morecore+0x84>
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e1a00003 	mov	r0, r3
    1144:	e24bd004 	sub	sp, fp, #4
    1148:	e8bd8800 	pop	{fp, pc}
    114c:	00001634 	.word	0x00001634

00001150 <malloc>:
    1150:	e92d4800 	push	{fp, lr}
    1154:	e28db004 	add	fp, sp, #4
    1158:	e24dd018 	sub	sp, sp, #24
    115c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1164:	e2833007 	add	r3, r3, #7
    1168:	e1a031a3 	lsr	r3, r3, #3
    116c:	e2833001 	add	r3, r3, #1
    1170:	e50b3010 	str	r3, [fp, #-16]
    1174:	e59f3134 	ldr	r3, [pc, #308]	@ 12b0 <malloc+0x160>
    1178:	e5933000 	ldr	r3, [r3]
    117c:	e50b300c 	str	r3, [fp, #-12]
    1180:	e51b300c 	ldr	r3, [fp, #-12]
    1184:	e3530000 	cmp	r3, #0
    1188:	1a00000b 	bne	11bc <malloc+0x6c>
    118c:	e59f3120 	ldr	r3, [pc, #288]	@ 12b4 <malloc+0x164>
    1190:	e50b300c 	str	r3, [fp, #-12]
    1194:	e59f2114 	ldr	r2, [pc, #276]	@ 12b0 <malloc+0x160>
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e5823000 	str	r3, [r2]
    11a0:	e59f3108 	ldr	r3, [pc, #264]	@ 12b0 <malloc+0x160>
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e59f2104 	ldr	r2, [pc, #260]	@ 12b4 <malloc+0x164>
    11ac:	e5823000 	str	r3, [r2]
    11b0:	e59f30fc 	ldr	r3, [pc, #252]	@ 12b4 <malloc+0x164>
    11b4:	e3a02000 	mov	r2, #0
    11b8:	e5832004 	str	r2, [r3, #4]
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e5933000 	ldr	r3, [r3]
    11c4:	e50b3008 	str	r3, [fp, #-8]
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933004 	ldr	r3, [r3, #4]
    11d0:	e51b2010 	ldr	r2, [fp, #-16]
    11d4:	e1520003 	cmp	r2, r3
    11d8:	8a00001e 	bhi	1258 <malloc+0x108>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5933004 	ldr	r3, [r3, #4]
    11e4:	e51b2010 	ldr	r2, [fp, #-16]
    11e8:	e1520003 	cmp	r2, r3
    11ec:	1a000004 	bne	1204 <malloc+0xb4>
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e5932000 	ldr	r2, [r3]
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e5832000 	str	r2, [r3]
    1200:	ea00000e 	b	1240 <malloc+0xf0>
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e5932004 	ldr	r2, [r3, #4]
    120c:	e51b3010 	ldr	r3, [fp, #-16]
    1210:	e0422003 	sub	r2, r2, r3
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5832004 	str	r2, [r3, #4]
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e5933004 	ldr	r3, [r3, #4]
    1224:	e1a03183 	lsl	r3, r3, #3
    1228:	e51b2008 	ldr	r2, [fp, #-8]
    122c:	e0823003 	add	r3, r2, r3
    1230:	e50b3008 	str	r3, [fp, #-8]
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e51b2010 	ldr	r2, [fp, #-16]
    123c:	e5832004 	str	r2, [r3, #4]
    1240:	e59f2068 	ldr	r2, [pc, #104]	@ 12b0 <malloc+0x160>
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5823000 	str	r3, [r2]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e2833008 	add	r3, r3, #8
    1254:	ea000012 	b	12a4 <malloc+0x154>
    1258:	e59f3050 	ldr	r3, [pc, #80]	@ 12b0 <malloc+0x160>
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e51b2008 	ldr	r2, [fp, #-8]
    1264:	e1520003 	cmp	r2, r3
    1268:	1a000007 	bne	128c <malloc+0x13c>
    126c:	e51b0010 	ldr	r0, [fp, #-16]
    1270:	ebffff94 	bl	10c8 <morecore>
    1274:	e50b0008 	str	r0, [fp, #-8]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e3530000 	cmp	r3, #0
    1280:	1a000001 	bne	128c <malloc+0x13c>
    1284:	e3a03000 	mov	r3, #0
    1288:	ea000005 	b	12a4 <malloc+0x154>
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e50b300c 	str	r3, [fp, #-12]
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e50b3008 	str	r3, [fp, #-8]
    12a0:	eaffffc8 	b	11c8 <malloc+0x78>
    12a4:	e1a00003 	mov	r0, r3
    12a8:	e24bd004 	sub	sp, fp, #4
    12ac:	e8bd8800 	pop	{fp, pc}
    12b0:	00001634 	.word	0x00001634
    12b4:	0000162c 	.word	0x0000162c

000012b8 <__udivsi3>:
    12b8:	e2512001 	subs	r2, r1, #1
    12bc:	012fff1e 	bxeq	lr
    12c0:	3a000036 	bcc	13a0 <__udivsi3+0xe8>
    12c4:	e1500001 	cmp	r0, r1
    12c8:	9a000022 	bls	1358 <__udivsi3+0xa0>
    12cc:	e1110002 	tst	r1, r2
    12d0:	0a000023 	beq	1364 <__udivsi3+0xac>
    12d4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12d8:	01a01181 	lsleq	r1, r1, #3
    12dc:	03a03008 	moveq	r3, #8
    12e0:	13a03001 	movne	r3, #1
    12e4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12e8:	31510000 	cmpcc	r1, r0
    12ec:	31a01201 	lslcc	r1, r1, #4
    12f0:	31a03203 	lslcc	r3, r3, #4
    12f4:	3afffffa 	bcc	12e4 <__udivsi3+0x2c>
    12f8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12fc:	31510000 	cmpcc	r1, r0
    1300:	31a01081 	lslcc	r1, r1, #1
    1304:	31a03083 	lslcc	r3, r3, #1
    1308:	3afffffa 	bcc	12f8 <__udivsi3+0x40>
    130c:	e3a02000 	mov	r2, #0
    1310:	e1500001 	cmp	r0, r1
    1314:	20400001 	subcs	r0, r0, r1
    1318:	21822003 	orrcs	r2, r2, r3
    131c:	e15000a1 	cmp	r0, r1, lsr #1
    1320:	204000a1 	subcs	r0, r0, r1, lsr #1
    1324:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1328:	e1500121 	cmp	r0, r1, lsr #2
    132c:	20400121 	subcs	r0, r0, r1, lsr #2
    1330:	21822123 	orrcs	r2, r2, r3, lsr #2
    1334:	e15001a1 	cmp	r0, r1, lsr #3
    1338:	204001a1 	subcs	r0, r0, r1, lsr #3
    133c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1340:	e3500000 	cmp	r0, #0
    1344:	11b03223 	lsrsne	r3, r3, #4
    1348:	11a01221 	lsrne	r1, r1, #4
    134c:	1affffef 	bne	1310 <__udivsi3+0x58>
    1350:	e1a00002 	mov	r0, r2
    1354:	e12fff1e 	bx	lr
    1358:	03a00001 	moveq	r0, #1
    135c:	13a00000 	movne	r0, #0
    1360:	e12fff1e 	bx	lr
    1364:	e3510801 	cmp	r1, #65536	@ 0x10000
    1368:	21a01821 	lsrcs	r1, r1, #16
    136c:	23a02010 	movcs	r2, #16
    1370:	33a02000 	movcc	r2, #0
    1374:	e3510c01 	cmp	r1, #256	@ 0x100
    1378:	21a01421 	lsrcs	r1, r1, #8
    137c:	22822008 	addcs	r2, r2, #8
    1380:	e3510010 	cmp	r1, #16
    1384:	21a01221 	lsrcs	r1, r1, #4
    1388:	22822004 	addcs	r2, r2, #4
    138c:	e3510004 	cmp	r1, #4
    1390:	82822003 	addhi	r2, r2, #3
    1394:	908220a1 	addls	r2, r2, r1, lsr #1
    1398:	e1a00230 	lsr	r0, r0, r2
    139c:	e12fff1e 	bx	lr
    13a0:	e3500000 	cmp	r0, #0
    13a4:	13e00000 	mvnne	r0, #0
    13a8:	ea000007 	b	13cc <__aeabi_idiv0>

000013ac <__aeabi_uidivmod>:
    13ac:	e3510000 	cmp	r1, #0
    13b0:	0afffffa 	beq	13a0 <__udivsi3+0xe8>
    13b4:	e92d4003 	push	{r0, r1, lr}
    13b8:	ebffffbe 	bl	12b8 <__udivsi3>
    13bc:	e8bd4006 	pop	{r1, r2, lr}
    13c0:	e0030092 	mul	r3, r2, r0
    13c4:	e0411003 	sub	r1, r1, r3
    13c8:	e12fff1e 	bx	lr

000013cc <__aeabi_idiv0>:
    13cc:	e12fff1e 	bx	lr
