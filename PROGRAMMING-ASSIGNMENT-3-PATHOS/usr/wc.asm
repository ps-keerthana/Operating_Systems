
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
      8c:	eb000132 	bl	55c <strchr>
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
      f0:	eb000238 	bl	9d8 <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb000352 	bl	e68 <printf>
     11c:	eb000212 	bl	96c <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb000348 	bl	e68 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001580 	.word	0x00001580
     154:	00001524 	.word	0x00001524
     158:	0000152c 	.word	0x0000152c
     15c:	0000153c 	.word	0x0000153c

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
     18c:	eb0001f6 	bl	96c <exit>
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
     1b8:	eb000233 	bl	a8c <open>
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
     1ec:	eb00031d 	bl	e68 <printf>
     1f0:	eb0001dd 	bl	96c <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000200 	bl	a20 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb0001cb 	bl	96c <exit>
     23c:	0000154c 	.word	0x0000154c
     240:	00001550 	.word	0x00001550

00000244 <pg_pte>:
     244:	e92d4800 	push	{fp, lr}
     248:	e28db004 	add	fp, sp, #4
     24c:	e24dd008 	sub	sp, sp, #8
     250:	e50b0008 	str	r0, [fp, #-8]
     254:	e51b1008 	ldr	r1, [fp, #-8]
     258:	e3a00065 	mov	r0, #101	@ 0x65
     25c:	eb0002a3 	bl	cf0 <syscall>
     260:	e1a03000 	mov	r3, r0
     264:	e1a00003 	mov	r0, r3
     268:	e24bd004 	sub	sp, fp, #4
     26c:	e8bd8800 	pop	{fp, pc}

00000270 <pg_pa>:
     270:	e92d4800 	push	{fp, lr}
     274:	e28db004 	add	fp, sp, #4
     278:	e24dd008 	sub	sp, sp, #8
     27c:	e50b0008 	str	r0, [fp, #-8]
     280:	e51b1008 	ldr	r1, [fp, #-8]
     284:	e3a00066 	mov	r0, #102	@ 0x66
     288:	eb000298 	bl	cf0 <syscall>
     28c:	e1a03000 	mov	r3, r0
     290:	e1a00003 	mov	r0, r3
     294:	e24bd004 	sub	sp, fp, #4
     298:	e8bd8800 	pop	{fp, pc}

0000029c <pg_flags>:
     29c:	e92d4800 	push	{fp, lr}
     2a0:	e28db004 	add	fp, sp, #4
     2a4:	e24dd008 	sub	sp, sp, #8
     2a8:	e50b0008 	str	r0, [fp, #-8]
     2ac:	e51b1008 	ldr	r1, [fp, #-8]
     2b0:	e3a00067 	mov	r0, #103	@ 0x67
     2b4:	eb00028d 	bl	cf0 <syscall>
     2b8:	e1a03000 	mov	r3, r0
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e24bd004 	sub	sp, fp, #4
     2c4:	e8bd8800 	pop	{fp, pc}

000002c8 <kpt>:
     2c8:	e92d4800 	push	{fp, lr}
     2cc:	e28db004 	add	fp, sp, #4
     2d0:	e3a00068 	mov	r0, #104	@ 0x68
     2d4:	eb000285 	bl	cf0 <syscall>
     2d8:	e1a03000 	mov	r3, r0
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e8bd8800 	pop	{fp, pc}

000002e4 <ugetpid>:
     2e4:	e92d4800 	push	{fp, lr}
     2e8:	e28db004 	add	fp, sp, #4
     2ec:	e3a00069 	mov	r0, #105	@ 0x69
     2f0:	eb00027e 	bl	cf0 <syscall>
     2f4:	e1a03000 	mov	r3, r0
     2f8:	e1a00003 	mov	r0, r3
     2fc:	e8bd8800 	pop	{fp, pc}

00000300 <strcpy>:
     300:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     304:	e28db000 	add	fp, sp, #0
     308:	e24dd014 	sub	sp, sp, #20
     30c:	e50b0010 	str	r0, [fp, #-16]
     310:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     314:	e51b3010 	ldr	r3, [fp, #-16]
     318:	e50b3008 	str	r3, [fp, #-8]
     31c:	e1a00000 	nop			@ (mov r0, r0)
     320:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     324:	e2823001 	add	r3, r2, #1
     328:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     32c:	e51b3010 	ldr	r3, [fp, #-16]
     330:	e2831001 	add	r1, r3, #1
     334:	e50b1010 	str	r1, [fp, #-16]
     338:	e5d22000 	ldrb	r2, [r2]
     33c:	e5c32000 	strb	r2, [r3]
     340:	e5d33000 	ldrb	r3, [r3]
     344:	e3530000 	cmp	r3, #0
     348:	1afffff4 	bne	320 <strcpy+0x20>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e1a00003 	mov	r0, r3
     354:	e28bd000 	add	sp, fp, #0
     358:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     35c:	e12fff1e 	bx	lr

00000360 <strcmp>:
     360:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     364:	e28db000 	add	fp, sp, #0
     368:	e24dd00c 	sub	sp, sp, #12
     36c:	e50b0008 	str	r0, [fp, #-8]
     370:	e50b100c 	str	r1, [fp, #-12]
     374:	ea000005 	b	390 <strcmp+0x30>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2833001 	add	r3, r3, #1
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e2833001 	add	r3, r3, #1
     38c:	e50b300c 	str	r3, [fp, #-12]
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e5d33000 	ldrb	r3, [r3]
     398:	e3530000 	cmp	r3, #0
     39c:	0a000005 	beq	3b8 <strcmp+0x58>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e5d32000 	ldrb	r2, [r3]
     3a8:	e51b300c 	ldr	r3, [fp, #-12]
     3ac:	e5d33000 	ldrb	r3, [r3]
     3b0:	e1520003 	cmp	r2, r3
     3b4:	0affffef 	beq	378 <strcmp+0x18>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e5d33000 	ldrb	r3, [r3]
     3c0:	e1a02003 	mov	r2, r3
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e5d33000 	ldrb	r3, [r3]
     3cc:	e0423003 	sub	r3, r2, r3
     3d0:	e1a00003 	mov	r0, r3
     3d4:	e28bd000 	add	sp, fp, #0
     3d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3dc:	e12fff1e 	bx	lr

000003e0 <strlen>:
     3e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e4:	e28db000 	add	fp, sp, #0
     3e8:	e24dd014 	sub	sp, sp, #20
     3ec:	e50b0010 	str	r0, [fp, #-16]
     3f0:	e3a03000 	mov	r3, #0
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	ea000002 	b	408 <strlen+0x28>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e2833001 	add	r3, r3, #1
     404:	e50b3008 	str	r3, [fp, #-8]
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e51b2010 	ldr	r2, [fp, #-16]
     410:	e0823003 	add	r3, r2, r3
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	1afffff6 	bne	3fc <strlen+0x1c>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e1a00003 	mov	r0, r3
     428:	e28bd000 	add	sp, fp, #0
     42c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     430:	e12fff1e 	bx	lr

00000434 <memset>:
     434:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     438:	e28db000 	add	fp, sp, #0
     43c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     440:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     444:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     448:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     44c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     458:	e54b300d 	strb	r3, [fp, #-13]
     45c:	e55b200d 	ldrb	r2, [fp, #-13]
     460:	e1a03002 	mov	r3, r2
     464:	e1a03403 	lsl	r3, r3, #8
     468:	e0833002 	add	r3, r3, r2
     46c:	e1a03803 	lsl	r3, r3, #16
     470:	e1a02003 	mov	r2, r3
     474:	e55b300d 	ldrb	r3, [fp, #-13]
     478:	e1a03403 	lsl	r3, r3, #8
     47c:	e1822003 	orr	r2, r2, r3
     480:	e55b300d 	ldrb	r3, [fp, #-13]
     484:	e1823003 	orr	r3, r2, r3
     488:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     48c:	ea000008 	b	4b4 <memset+0x80>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e55b200d 	ldrb	r2, [fp, #-13]
     498:	e5c32000 	strb	r2, [r3]
     49c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a0:	e2433001 	sub	r3, r3, #1
     4a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e2833001 	add	r3, r3, #1
     4b0:	e50b3008 	str	r3, [fp, #-8]
     4b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4b8:	e3530000 	cmp	r3, #0
     4bc:	0a000003 	beq	4d0 <memset+0x9c>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2033003 	and	r3, r3, #3
     4c8:	e3530000 	cmp	r3, #0
     4cc:	1affffef 	bne	490 <memset+0x5c>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e50b300c 	str	r3, [fp, #-12]
     4d8:	ea000008 	b	500 <memset+0xcc>
     4dc:	e51b300c 	ldr	r3, [fp, #-12]
     4e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4e4:	e5832000 	str	r2, [r3]
     4e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4ec:	e2433004 	sub	r3, r3, #4
     4f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4f4:	e51b300c 	ldr	r3, [fp, #-12]
     4f8:	e2833004 	add	r3, r3, #4
     4fc:	e50b300c 	str	r3, [fp, #-12]
     500:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     504:	e3530003 	cmp	r3, #3
     508:	8afffff3 	bhi	4dc <memset+0xa8>
     50c:	e51b300c 	ldr	r3, [fp, #-12]
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	ea000008 	b	53c <memset+0x108>
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e55b200d 	ldrb	r2, [fp, #-13]
     520:	e5c32000 	strb	r2, [r3]
     524:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     528:	e2433001 	sub	r3, r3, #1
     52c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e2833001 	add	r3, r3, #1
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     540:	e3530000 	cmp	r3, #0
     544:	1afffff3 	bne	518 <memset+0xe4>
     548:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <strchr>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd00c 	sub	sp, sp, #12
     568:	e50b0008 	str	r0, [fp, #-8]
     56c:	e1a03001 	mov	r3, r1
     570:	e54b3009 	strb	r3, [fp, #-9]
     574:	ea000009 	b	5a0 <strchr+0x44>
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e5d33000 	ldrb	r3, [r3]
     580:	e55b2009 	ldrb	r2, [fp, #-9]
     584:	e1520003 	cmp	r2, r3
     588:	1a000001 	bne	594 <strchr+0x38>
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	ea000007 	b	5b4 <strchr+0x58>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e2833001 	add	r3, r3, #1
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e3530000 	cmp	r3, #0
     5ac:	1afffff1 	bne	578 <strchr+0x1c>
     5b0:	e3a03000 	mov	r3, #0
     5b4:	e1a00003 	mov	r0, r3
     5b8:	e28bd000 	add	sp, fp, #0
     5bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c0:	e12fff1e 	bx	lr

000005c4 <gets>:
     5c4:	e92d4800 	push	{fp, lr}
     5c8:	e28db004 	add	fp, sp, #4
     5cc:	e24dd018 	sub	sp, sp, #24
     5d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5d8:	e3a03000 	mov	r3, #0
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	ea000016 	b	640 <gets+0x7c>
     5e4:	e24b300d 	sub	r3, fp, #13
     5e8:	e3a02001 	mov	r2, #1
     5ec:	e1a01003 	mov	r1, r3
     5f0:	e3a00000 	mov	r0, #0
     5f4:	eb0000f7 	bl	9d8 <read>
     5f8:	e50b000c 	str	r0, [fp, #-12]
     5fc:	e51b300c 	ldr	r3, [fp, #-12]
     600:	e3530000 	cmp	r3, #0
     604:	da000013 	ble	658 <gets+0x94>
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e2832001 	add	r2, r3, #1
     610:	e50b2008 	str	r2, [fp, #-8]
     614:	e1a02003 	mov	r2, r3
     618:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     61c:	e0833002 	add	r3, r3, r2
     620:	e55b200d 	ldrb	r2, [fp, #-13]
     624:	e5c32000 	strb	r2, [r3]
     628:	e55b300d 	ldrb	r3, [fp, #-13]
     62c:	e353000a 	cmp	r3, #10
     630:	0a000009 	beq	65c <gets+0x98>
     634:	e55b300d 	ldrb	r3, [fp, #-13]
     638:	e353000d 	cmp	r3, #13
     63c:	0a000006 	beq	65c <gets+0x98>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e2833001 	add	r3, r3, #1
     648:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     64c:	e1520003 	cmp	r2, r3
     650:	caffffe3 	bgt	5e4 <gets+0x20>
     654:	ea000000 	b	65c <gets+0x98>
     658:	e1a00000 	nop			@ (mov r0, r0)
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     664:	e0823003 	add	r3, r2, r3
     668:	e3a02000 	mov	r2, #0
     66c:	e5c32000 	strb	r2, [r3]
     670:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     674:	e1a00003 	mov	r0, r3
     678:	e24bd004 	sub	sp, fp, #4
     67c:	e8bd8800 	pop	{fp, pc}

00000680 <stat>:
     680:	e92d4800 	push	{fp, lr}
     684:	e28db004 	add	fp, sp, #4
     688:	e24dd010 	sub	sp, sp, #16
     68c:	e50b0010 	str	r0, [fp, #-16]
     690:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     694:	e3a01000 	mov	r1, #0
     698:	e51b0010 	ldr	r0, [fp, #-16]
     69c:	eb0000fa 	bl	a8c <open>
     6a0:	e50b0008 	str	r0, [fp, #-8]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e3530000 	cmp	r3, #0
     6ac:	aa000001 	bge	6b8 <stat+0x38>
     6b0:	e3e03000 	mvn	r3, #0
     6b4:	ea000006 	b	6d4 <stat+0x54>
     6b8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6bc:	e51b0008 	ldr	r0, [fp, #-8]
     6c0:	eb00010c 	bl	af8 <fstat>
     6c4:	e50b000c 	str	r0, [fp, #-12]
     6c8:	e51b0008 	ldr	r0, [fp, #-8]
     6cc:	eb0000d3 	bl	a20 <close>
     6d0:	e51b300c 	ldr	r3, [fp, #-12]
     6d4:	e1a00003 	mov	r0, r3
     6d8:	e24bd004 	sub	sp, fp, #4
     6dc:	e8bd8800 	pop	{fp, pc}

000006e0 <atoi>:
     6e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e4:	e28db000 	add	fp, sp, #0
     6e8:	e24dd014 	sub	sp, sp, #20
     6ec:	e50b0010 	str	r0, [fp, #-16]
     6f0:	e3a03000 	mov	r3, #0
     6f4:	e50b3008 	str	r3, [fp, #-8]
     6f8:	ea00000c 	b	730 <atoi+0x50>
     6fc:	e51b2008 	ldr	r2, [fp, #-8]
     700:	e1a03002 	mov	r3, r2
     704:	e1a03103 	lsl	r3, r3, #2
     708:	e0833002 	add	r3, r3, r2
     70c:	e1a03083 	lsl	r3, r3, #1
     710:	e1a01003 	mov	r1, r3
     714:	e51b3010 	ldr	r3, [fp, #-16]
     718:	e2832001 	add	r2, r3, #1
     71c:	e50b2010 	str	r2, [fp, #-16]
     720:	e5d33000 	ldrb	r3, [r3]
     724:	e0813003 	add	r3, r1, r3
     728:	e2433030 	sub	r3, r3, #48	@ 0x30
     72c:	e50b3008 	str	r3, [fp, #-8]
     730:	e51b3010 	ldr	r3, [fp, #-16]
     734:	e5d33000 	ldrb	r3, [r3]
     738:	e353002f 	cmp	r3, #47	@ 0x2f
     73c:	9a000003 	bls	750 <atoi+0x70>
     740:	e51b3010 	ldr	r3, [fp, #-16]
     744:	e5d33000 	ldrb	r3, [r3]
     748:	e3530039 	cmp	r3, #57	@ 0x39
     74c:	9affffea 	bls	6fc <atoi+0x1c>
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e1a00003 	mov	r0, r3
     758:	e28bd000 	add	sp, fp, #0
     75c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <memmove>:
     764:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     768:	e28db000 	add	fp, sp, #0
     76c:	e24dd01c 	sub	sp, sp, #28
     770:	e50b0010 	str	r0, [fp, #-16]
     774:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     778:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     77c:	e51b3010 	ldr	r3, [fp, #-16]
     780:	e50b3008 	str	r3, [fp, #-8]
     784:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     788:	e50b300c 	str	r3, [fp, #-12]
     78c:	ea000007 	b	7b0 <memmove+0x4c>
     790:	e51b200c 	ldr	r2, [fp, #-12]
     794:	e2823001 	add	r3, r2, #1
     798:	e50b300c 	str	r3, [fp, #-12]
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2831001 	add	r1, r3, #1
     7a4:	e50b1008 	str	r1, [fp, #-8]
     7a8:	e5d22000 	ldrb	r2, [r2]
     7ac:	e5c32000 	strb	r2, [r3]
     7b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7b4:	e2432001 	sub	r2, r3, #1
     7b8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7bc:	e3530000 	cmp	r3, #0
     7c0:	cafffff2 	bgt	790 <memmove+0x2c>
     7c4:	e51b3010 	ldr	r3, [fp, #-16]
     7c8:	e1a00003 	mov	r0, r3
     7cc:	e28bd000 	add	sp, fp, #0
     7d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <strncmp>:
     7d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7dc:	e28db000 	add	fp, sp, #0
     7e0:	e24dd014 	sub	sp, sp, #20
     7e4:	e50b0008 	str	r0, [fp, #-8]
     7e8:	e50b100c 	str	r1, [fp, #-12]
     7ec:	e50b2010 	str	r2, [fp, #-16]
     7f0:	ea000008 	b	818 <strncmp+0x40>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e2833001 	add	r3, r3, #1
     7fc:	e50b3008 	str	r3, [fp, #-8]
     800:	e51b300c 	ldr	r3, [fp, #-12]
     804:	e2833001 	add	r3, r3, #1
     808:	e50b300c 	str	r3, [fp, #-12]
     80c:	e51b3010 	ldr	r3, [fp, #-16]
     810:	e2433001 	sub	r3, r3, #1
     814:	e50b3010 	str	r3, [fp, #-16]
     818:	e51b3010 	ldr	r3, [fp, #-16]
     81c:	e3530000 	cmp	r3, #0
     820:	da00000d 	ble	85c <strncmp+0x84>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5d33000 	ldrb	r3, [r3]
     82c:	e3530000 	cmp	r3, #0
     830:	0a000009 	beq	85c <strncmp+0x84>
     834:	e51b300c 	ldr	r3, [fp, #-12]
     838:	e5d33000 	ldrb	r3, [r3]
     83c:	e3530000 	cmp	r3, #0
     840:	0a000005 	beq	85c <strncmp+0x84>
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e5d32000 	ldrb	r2, [r3]
     84c:	e51b300c 	ldr	r3, [fp, #-12]
     850:	e5d33000 	ldrb	r3, [r3]
     854:	e1520003 	cmp	r2, r3
     858:	0affffe5 	beq	7f4 <strncmp+0x1c>
     85c:	e51b3010 	ldr	r3, [fp, #-16]
     860:	e3530000 	cmp	r3, #0
     864:	1a000001 	bne	870 <strncmp+0x98>
     868:	e3a03000 	mov	r3, #0
     86c:	ea000005 	b	888 <strncmp+0xb0>
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e5d33000 	ldrb	r3, [r3]
     878:	e1a02003 	mov	r2, r3
     87c:	e51b300c 	ldr	r3, [fp, #-12]
     880:	e5d33000 	ldrb	r3, [r3]
     884:	e0423003 	sub	r3, r2, r3
     888:	e1a00003 	mov	r0, r3
     88c:	e28bd000 	add	sp, fp, #0
     890:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <strncpy>:
     898:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     89c:	e28db000 	add	fp, sp, #0
     8a0:	e24dd01c 	sub	sp, sp, #28
     8a4:	e50b0010 	str	r0, [fp, #-16]
     8a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8ac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8b0:	e51b3010 	ldr	r3, [fp, #-16]
     8b4:	e50b3008 	str	r3, [fp, #-8]
     8b8:	ea00000a 	b	8e8 <strncpy+0x50>
     8bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     8c0:	e2823001 	add	r3, r2, #1
     8c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e2831001 	add	r1, r3, #1
     8d0:	e50b1008 	str	r1, [fp, #-8]
     8d4:	e5d22000 	ldrb	r2, [r2]
     8d8:	e5c32000 	strb	r2, [r3]
     8dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8e0:	e2433001 	sub	r3, r3, #1
     8e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     8e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8ec:	e3530000 	cmp	r3, #0
     8f0:	da00000c 	ble	928 <strncpy+0x90>
     8f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8f8:	e5d33000 	ldrb	r3, [r3]
     8fc:	e3530000 	cmp	r3, #0
     900:	1affffed 	bne	8bc <strncpy+0x24>
     904:	ea000007 	b	928 <strncpy+0x90>
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e2832001 	add	r2, r3, #1
     910:	e50b2008 	str	r2, [fp, #-8]
     914:	e3a02000 	mov	r2, #0
     918:	e5c32000 	strb	r2, [r3]
     91c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     920:	e2433001 	sub	r3, r3, #1
     924:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     928:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     92c:	e3530000 	cmp	r3, #0
     930:	cafffff4 	bgt	908 <strncpy+0x70>
     934:	e51b3010 	ldr	r3, [fp, #-16]
     938:	e1a00003 	mov	r0, r3
     93c:	e28bd000 	add	sp, fp, #0
     940:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <fork>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00001 	mov	r0, #1
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <exit>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00002 	mov	r0, #2
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <wait>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00003 	mov	r0, #3
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <pipe>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00004 	mov	r0, #4
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <read>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00005 	mov	r0, #5
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <write>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00010 	mov	r0, #16
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <close>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00015 	mov	r0, #21
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <kill>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00006 	mov	r0, #6
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <exec>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00007 	mov	r0, #7
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <open>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a0000f 	mov	r0, #15
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <mknod>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00011 	mov	r0, #17
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <unlink>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00012 	mov	r0, #18
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <fstat>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00008 	mov	r0, #8
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <link>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00013 	mov	r0, #19
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <mkdir>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00014 	mov	r0, #20
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <chdir>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00009 	mov	r0, #9
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <dup>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a0000a 	mov	r0, #10
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <getpid>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a0000b 	mov	r0, #11
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <sbrk>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a0000c 	mov	r0, #12
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <sleep>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a0000d 	mov	r0, #13
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <uptime>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0000e 	mov	r0, #14
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <proclist>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00016 	mov	r0, #22
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <settickets>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00017 	mov	r0, #23
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <srand>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00018 	mov	r0, #24
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <getpinfo>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00019 	mov	r0, #25
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <print_pt>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a0006a 	mov	r0, #106	@ 0x6a
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <syscall>:
     cf0:	ef000000 	svc	0x00000000
     cf4:	e12fff1e 	bx	lr

00000cf8 <putc>:
     cf8:	e92d4800 	push	{fp, lr}
     cfc:	e28db004 	add	fp, sp, #4
     d00:	e24dd008 	sub	sp, sp, #8
     d04:	e50b0008 	str	r0, [fp, #-8]
     d08:	e1a03001 	mov	r3, r1
     d0c:	e54b3009 	strb	r3, [fp, #-9]
     d10:	e24b3009 	sub	r3, fp, #9
     d14:	e3a02001 	mov	r2, #1
     d18:	e1a01003 	mov	r1, r3
     d1c:	e51b0008 	ldr	r0, [fp, #-8]
     d20:	ebffff35 	bl	9fc <write>
     d24:	e1a00000 	nop			@ (mov r0, r0)
     d28:	e24bd004 	sub	sp, fp, #4
     d2c:	e8bd8800 	pop	{fp, pc}

00000d30 <printint>:
     d30:	e92d4800 	push	{fp, lr}
     d34:	e28db004 	add	fp, sp, #4
     d38:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d3c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d40:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d44:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d48:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d4c:	e3a03000 	mov	r3, #0
     d50:	e50b300c 	str	r3, [fp, #-12]
     d54:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d58:	e3530000 	cmp	r3, #0
     d5c:	0a000008 	beq	d84 <printint+0x54>
     d60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d64:	e3530000 	cmp	r3, #0
     d68:	aa000005 	bge	d84 <printint+0x54>
     d6c:	e3a03001 	mov	r3, #1
     d70:	e50b300c 	str	r3, [fp, #-12]
     d74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d78:	e2633000 	rsb	r3, r3, #0
     d7c:	e50b3010 	str	r3, [fp, #-16]
     d80:	ea000001 	b	d8c <printint+0x5c>
     d84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d88:	e50b3010 	str	r3, [fp, #-16]
     d8c:	e3a03000 	mov	r3, #0
     d90:	e50b3008 	str	r3, [fp, #-8]
     d94:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d98:	e51b3010 	ldr	r3, [fp, #-16]
     d9c:	e1a01002 	mov	r1, r2
     da0:	e1a00003 	mov	r0, r3
     da4:	eb0001d5 	bl	1500 <__aeabi_uidivmod>
     da8:	e1a03001 	mov	r3, r1
     dac:	e1a01003 	mov	r1, r3
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e2832001 	add	r2, r3, #1
     db8:	e50b2008 	str	r2, [fp, #-8]
     dbc:	e59f20a0 	ldr	r2, [pc, #160]	@ e64 <printint+0x134>
     dc0:	e7d22001 	ldrb	r2, [r2, r1]
     dc4:	e2433004 	sub	r3, r3, #4
     dc8:	e083300b 	add	r3, r3, fp
     dcc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     dd0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     dd4:	e1a01003 	mov	r1, r3
     dd8:	e51b0010 	ldr	r0, [fp, #-16]
     ddc:	eb00018a 	bl	140c <__udivsi3>
     de0:	e1a03000 	mov	r3, r0
     de4:	e50b3010 	str	r3, [fp, #-16]
     de8:	e51b3010 	ldr	r3, [fp, #-16]
     dec:	e3530000 	cmp	r3, #0
     df0:	1affffe7 	bne	d94 <printint+0x64>
     df4:	e51b300c 	ldr	r3, [fp, #-12]
     df8:	e3530000 	cmp	r3, #0
     dfc:	0a00000e 	beq	e3c <printint+0x10c>
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e2832001 	add	r2, r3, #1
     e08:	e50b2008 	str	r2, [fp, #-8]
     e0c:	e2433004 	sub	r3, r3, #4
     e10:	e083300b 	add	r3, r3, fp
     e14:	e3a0202d 	mov	r2, #45	@ 0x2d
     e18:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e1c:	ea000006 	b	e3c <printint+0x10c>
     e20:	e24b2020 	sub	r2, fp, #32
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e0823003 	add	r3, r2, r3
     e2c:	e5d33000 	ldrb	r3, [r3]
     e30:	e1a01003 	mov	r1, r3
     e34:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e38:	ebffffae 	bl	cf8 <putc>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e2433001 	sub	r3, r3, #1
     e44:	e50b3008 	str	r3, [fp, #-8]
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e3530000 	cmp	r3, #0
     e50:	aafffff2 	bge	e20 <printint+0xf0>
     e54:	e1a00000 	nop			@ (mov r0, r0)
     e58:	e1a00000 	nop			@ (mov r0, r0)
     e5c:	e24bd004 	sub	sp, fp, #4
     e60:	e8bd8800 	pop	{fp, pc}
     e64:	0000156c 	.word	0x0000156c

00000e68 <printf>:
     e68:	e92d000e 	push	{r1, r2, r3}
     e6c:	e92d4800 	push	{fp, lr}
     e70:	e28db004 	add	fp, sp, #4
     e74:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e78:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e7c:	e3a03000 	mov	r3, #0
     e80:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e84:	e28b3008 	add	r3, fp, #8
     e88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	e3a03000 	mov	r3, #0
     e90:	e50b3010 	str	r3, [fp, #-16]
     e94:	ea000074 	b	106c <printf+0x204>
     e98:	e59b2004 	ldr	r2, [fp, #4]
     e9c:	e51b3010 	ldr	r3, [fp, #-16]
     ea0:	e0823003 	add	r3, r2, r3
     ea4:	e5d33000 	ldrb	r3, [r3]
     ea8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     eac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     eb0:	e3530000 	cmp	r3, #0
     eb4:	1a00000b 	bne	ee8 <printf+0x80>
     eb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ebc:	e3530025 	cmp	r3, #37	@ 0x25
     ec0:	1a000002 	bne	ed0 <printf+0x68>
     ec4:	e3a03025 	mov	r3, #37	@ 0x25
     ec8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ecc:	ea000063 	b	1060 <printf+0x1f8>
     ed0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed4:	e6ef3073 	uxtb	r3, r3
     ed8:	e1a01003 	mov	r1, r3
     edc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ee0:	ebffff84 	bl	cf8 <putc>
     ee4:	ea00005d 	b	1060 <printf+0x1f8>
     ee8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     eec:	e3530025 	cmp	r3, #37	@ 0x25
     ef0:	1a00005a 	bne	1060 <printf+0x1f8>
     ef4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef8:	e3530064 	cmp	r3, #100	@ 0x64
     efc:	1a00000a 	bne	f2c <printf+0xc4>
     f00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e1a01003 	mov	r1, r3
     f0c:	e3a03001 	mov	r3, #1
     f10:	e3a0200a 	mov	r2, #10
     f14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f18:	ebffff84 	bl	d30 <printint>
     f1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f20:	e2833004 	add	r3, r3, #4
     f24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f28:	ea00004a 	b	1058 <printf+0x1f0>
     f2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f30:	e3530078 	cmp	r3, #120	@ 0x78
     f34:	0a000002 	beq	f44 <printf+0xdc>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e3530070 	cmp	r3, #112	@ 0x70
     f40:	1a00000a 	bne	f70 <printf+0x108>
     f44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e1a01003 	mov	r1, r3
     f50:	e3a03000 	mov	r3, #0
     f54:	e3a02010 	mov	r2, #16
     f58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f5c:	ebffff73 	bl	d30 <printint>
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e2833004 	add	r3, r3, #4
     f68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f6c:	ea000039 	b	1058 <printf+0x1f0>
     f70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f74:	e3530073 	cmp	r3, #115	@ 0x73
     f78:	1a000018 	bne	fe0 <printf+0x178>
     f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f8c:	e2833004 	add	r3, r3, #4
     f90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e3530000 	cmp	r3, #0
     f9c:	1a00000a 	bne	fcc <printf+0x164>
     fa0:	e59f30f4 	ldr	r3, [pc, #244]	@ 109c <printf+0x234>
     fa4:	e50b300c 	str	r3, [fp, #-12]
     fa8:	ea000007 	b	fcc <printf+0x164>
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e5d33000 	ldrb	r3, [r3]
     fb4:	e1a01003 	mov	r1, r3
     fb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fbc:	ebffff4d 	bl	cf8 <putc>
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e2833001 	add	r3, r3, #1
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5d33000 	ldrb	r3, [r3]
     fd4:	e3530000 	cmp	r3, #0
     fd8:	1afffff3 	bne	fac <printf+0x144>
     fdc:	ea00001d 	b	1058 <printf+0x1f0>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e3530063 	cmp	r3, #99	@ 0x63
     fe8:	1a000009 	bne	1014 <printf+0x1ac>
     fec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e6ef3073 	uxtb	r3, r3
     ff8:	e1a01003 	mov	r1, r3
     ffc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1000:	ebffff3c 	bl	cf8 <putc>
    1004:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1008:	e2833004 	add	r3, r3, #4
    100c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1010:	ea000010 	b	1058 <printf+0x1f0>
    1014:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1018:	e3530025 	cmp	r3, #37	@ 0x25
    101c:	1a000005 	bne	1038 <printf+0x1d0>
    1020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1024:	e6ef3073 	uxtb	r3, r3
    1028:	e1a01003 	mov	r1, r3
    102c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1030:	ebffff30 	bl	cf8 <putc>
    1034:	ea000007 	b	1058 <printf+0x1f0>
    1038:	e3a01025 	mov	r1, #37	@ 0x25
    103c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1040:	ebffff2c 	bl	cf8 <putc>
    1044:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1048:	e6ef3073 	uxtb	r3, r3
    104c:	e1a01003 	mov	r1, r3
    1050:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1054:	ebffff27 	bl	cf8 <putc>
    1058:	e3a03000 	mov	r3, #0
    105c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1060:	e51b3010 	ldr	r3, [fp, #-16]
    1064:	e2833001 	add	r3, r3, #1
    1068:	e50b3010 	str	r3, [fp, #-16]
    106c:	e59b2004 	ldr	r2, [fp, #4]
    1070:	e51b3010 	ldr	r3, [fp, #-16]
    1074:	e0823003 	add	r3, r2, r3
    1078:	e5d33000 	ldrb	r3, [r3]
    107c:	e3530000 	cmp	r3, #0
    1080:	1affff84 	bne	e98 <printf+0x30>
    1084:	e1a00000 	nop			@ (mov r0, r0)
    1088:	e1a00000 	nop			@ (mov r0, r0)
    108c:	e24bd004 	sub	sp, fp, #4
    1090:	e8bd4800 	pop	{fp, lr}
    1094:	e28dd00c 	add	sp, sp, #12
    1098:	e12fff1e 	bx	lr
    109c:	00001564 	.word	0x00001564

000010a0 <free>:
    10a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10a4:	e28db000 	add	fp, sp, #0
    10a8:	e24dd014 	sub	sp, sp, #20
    10ac:	e50b0010 	str	r0, [fp, #-16]
    10b0:	e51b3010 	ldr	r3, [fp, #-16]
    10b4:	e2433008 	sub	r3, r3, #8
    10b8:	e50b300c 	str	r3, [fp, #-12]
    10bc:	e59f3154 	ldr	r3, [pc, #340]	@ 1218 <free+0x178>
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e50b3008 	str	r3, [fp, #-8]
    10c8:	ea000010 	b	1110 <free+0x70>
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5933000 	ldr	r3, [r3]
    10d4:	e51b2008 	ldr	r2, [fp, #-8]
    10d8:	e1520003 	cmp	r2, r3
    10dc:	3a000008 	bcc	1104 <free+0x64>
    10e0:	e51b200c 	ldr	r2, [fp, #-12]
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e1520003 	cmp	r2, r3
    10ec:	8a000010 	bhi	1134 <free+0x94>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e51b200c 	ldr	r2, [fp, #-12]
    10fc:	e1520003 	cmp	r2, r3
    1100:	3a00000b 	bcc	1134 <free+0x94>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e50b3008 	str	r3, [fp, #-8]
    1110:	e51b200c 	ldr	r2, [fp, #-12]
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e1520003 	cmp	r2, r3
    111c:	9affffea 	bls	10cc <free+0x2c>
    1120:	e51b3008 	ldr	r3, [fp, #-8]
    1124:	e5933000 	ldr	r3, [r3]
    1128:	e51b200c 	ldr	r2, [fp, #-12]
    112c:	e1520003 	cmp	r2, r3
    1130:	2affffe5 	bcs	10cc <free+0x2c>
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e5933004 	ldr	r3, [r3, #4]
    113c:	e1a03183 	lsl	r3, r3, #3
    1140:	e51b200c 	ldr	r2, [fp, #-12]
    1144:	e0822003 	add	r2, r2, r3
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e5933000 	ldr	r3, [r3]
    1150:	e1520003 	cmp	r2, r3
    1154:	1a00000d 	bne	1190 <free+0xf0>
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5932004 	ldr	r2, [r3, #4]
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e5933004 	ldr	r3, [r3, #4]
    116c:	e0822003 	add	r2, r2, r3
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e5832004 	str	r2, [r3, #4]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e5932000 	ldr	r2, [r3]
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5832000 	str	r2, [r3]
    118c:	ea000003 	b	11a0 <free+0x100>
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e5932000 	ldr	r2, [r3]
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e5832000 	str	r2, [r3]
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933004 	ldr	r3, [r3, #4]
    11a8:	e1a03183 	lsl	r3, r3, #3
    11ac:	e51b2008 	ldr	r2, [fp, #-8]
    11b0:	e0823003 	add	r3, r2, r3
    11b4:	e51b200c 	ldr	r2, [fp, #-12]
    11b8:	e1520003 	cmp	r2, r3
    11bc:	1a00000b 	bne	11f0 <free+0x150>
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5932004 	ldr	r2, [r3, #4]
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5933004 	ldr	r3, [r3, #4]
    11d0:	e0822003 	add	r2, r2, r3
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e5832004 	str	r2, [r3, #4]
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5932000 	ldr	r2, [r3]
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5832000 	str	r2, [r3]
    11ec:	ea000002 	b	11fc <free+0x15c>
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e51b200c 	ldr	r2, [fp, #-12]
    11f8:	e5832000 	str	r2, [r3]
    11fc:	e59f2014 	ldr	r2, [pc, #20]	@ 1218 <free+0x178>
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5823000 	str	r3, [r2]
    1208:	e1a00000 	nop			@ (mov r0, r0)
    120c:	e28bd000 	add	sp, fp, #0
    1210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1214:	e12fff1e 	bx	lr
    1218:	00001788 	.word	0x00001788

0000121c <morecore>:
    121c:	e92d4800 	push	{fp, lr}
    1220:	e28db004 	add	fp, sp, #4
    1224:	e24dd010 	sub	sp, sp, #16
    1228:	e50b0010 	str	r0, [fp, #-16]
    122c:	e51b3010 	ldr	r3, [fp, #-16]
    1230:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1234:	2a000001 	bcs	1240 <morecore+0x24>
    1238:	e3a03a01 	mov	r3, #4096	@ 0x1000
    123c:	e50b3010 	str	r3, [fp, #-16]
    1240:	e51b3010 	ldr	r3, [fp, #-16]
    1244:	e1a03183 	lsl	r3, r3, #3
    1248:	e1a00003 	mov	r0, r3
    124c:	ebfffe5f 	bl	bd0 <sbrk>
    1250:	e50b0008 	str	r0, [fp, #-8]
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e3730001 	cmn	r3, #1
    125c:	1a000001 	bne	1268 <morecore+0x4c>
    1260:	e3a03000 	mov	r3, #0
    1264:	ea00000a 	b	1294 <morecore+0x78>
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e50b300c 	str	r3, [fp, #-12]
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e51b2010 	ldr	r2, [fp, #-16]
    1278:	e5832004 	str	r2, [r3, #4]
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e2833008 	add	r3, r3, #8
    1284:	e1a00003 	mov	r0, r3
    1288:	ebffff84 	bl	10a0 <free>
    128c:	e59f300c 	ldr	r3, [pc, #12]	@ 12a0 <morecore+0x84>
    1290:	e5933000 	ldr	r3, [r3]
    1294:	e1a00003 	mov	r0, r3
    1298:	e24bd004 	sub	sp, fp, #4
    129c:	e8bd8800 	pop	{fp, pc}
    12a0:	00001788 	.word	0x00001788

000012a4 <malloc>:
    12a4:	e92d4800 	push	{fp, lr}
    12a8:	e28db004 	add	fp, sp, #4
    12ac:	e24dd018 	sub	sp, sp, #24
    12b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	e2833007 	add	r3, r3, #7
    12bc:	e1a031a3 	lsr	r3, r3, #3
    12c0:	e2833001 	add	r3, r3, #1
    12c4:	e50b3010 	str	r3, [fp, #-16]
    12c8:	e59f3134 	ldr	r3, [pc, #308]	@ 1404 <malloc+0x160>
    12cc:	e5933000 	ldr	r3, [r3]
    12d0:	e50b300c 	str	r3, [fp, #-12]
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e3530000 	cmp	r3, #0
    12dc:	1a00000b 	bne	1310 <malloc+0x6c>
    12e0:	e59f3120 	ldr	r3, [pc, #288]	@ 1408 <malloc+0x164>
    12e4:	e50b300c 	str	r3, [fp, #-12]
    12e8:	e59f2114 	ldr	r2, [pc, #276]	@ 1404 <malloc+0x160>
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5823000 	str	r3, [r2]
    12f4:	e59f3108 	ldr	r3, [pc, #264]	@ 1404 <malloc+0x160>
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e59f2104 	ldr	r2, [pc, #260]	@ 1408 <malloc+0x164>
    1300:	e5823000 	str	r3, [r2]
    1304:	e59f30fc 	ldr	r3, [pc, #252]	@ 1408 <malloc+0x164>
    1308:	e3a02000 	mov	r2, #0
    130c:	e5832004 	str	r2, [r3, #4]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e50b3008 	str	r3, [fp, #-8]
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5933004 	ldr	r3, [r3, #4]
    1324:	e51b2010 	ldr	r2, [fp, #-16]
    1328:	e1520003 	cmp	r2, r3
    132c:	8a00001e 	bhi	13ac <malloc+0x108>
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5933004 	ldr	r3, [r3, #4]
    1338:	e51b2010 	ldr	r2, [fp, #-16]
    133c:	e1520003 	cmp	r2, r3
    1340:	1a000004 	bne	1358 <malloc+0xb4>
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5932000 	ldr	r2, [r3]
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e5832000 	str	r2, [r3]
    1354:	ea00000e 	b	1394 <malloc+0xf0>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5932004 	ldr	r2, [r3, #4]
    1360:	e51b3010 	ldr	r3, [fp, #-16]
    1364:	e0422003 	sub	r2, r2, r3
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5832004 	str	r2, [r3, #4]
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e5933004 	ldr	r3, [r3, #4]
    1378:	e1a03183 	lsl	r3, r3, #3
    137c:	e51b2008 	ldr	r2, [fp, #-8]
    1380:	e0823003 	add	r3, r2, r3
    1384:	e50b3008 	str	r3, [fp, #-8]
    1388:	e51b3008 	ldr	r3, [fp, #-8]
    138c:	e51b2010 	ldr	r2, [fp, #-16]
    1390:	e5832004 	str	r2, [r3, #4]
    1394:	e59f2068 	ldr	r2, [pc, #104]	@ 1404 <malloc+0x160>
    1398:	e51b300c 	ldr	r3, [fp, #-12]
    139c:	e5823000 	str	r3, [r2]
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e2833008 	add	r3, r3, #8
    13a8:	ea000012 	b	13f8 <malloc+0x154>
    13ac:	e59f3050 	ldr	r3, [pc, #80]	@ 1404 <malloc+0x160>
    13b0:	e5933000 	ldr	r3, [r3]
    13b4:	e51b2008 	ldr	r2, [fp, #-8]
    13b8:	e1520003 	cmp	r2, r3
    13bc:	1a000007 	bne	13e0 <malloc+0x13c>
    13c0:	e51b0010 	ldr	r0, [fp, #-16]
    13c4:	ebffff94 	bl	121c <morecore>
    13c8:	e50b0008 	str	r0, [fp, #-8]
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e3530000 	cmp	r3, #0
    13d4:	1a000001 	bne	13e0 <malloc+0x13c>
    13d8:	e3a03000 	mov	r3, #0
    13dc:	ea000005 	b	13f8 <malloc+0x154>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e50b300c 	str	r3, [fp, #-12]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5933000 	ldr	r3, [r3]
    13f0:	e50b3008 	str	r3, [fp, #-8]
    13f4:	eaffffc8 	b	131c <malloc+0x78>
    13f8:	e1a00003 	mov	r0, r3
    13fc:	e24bd004 	sub	sp, fp, #4
    1400:	e8bd8800 	pop	{fp, pc}
    1404:	00001788 	.word	0x00001788
    1408:	00001780 	.word	0x00001780

0000140c <__udivsi3>:
    140c:	e2512001 	subs	r2, r1, #1
    1410:	012fff1e 	bxeq	lr
    1414:	3a000036 	bcc	14f4 <__udivsi3+0xe8>
    1418:	e1500001 	cmp	r0, r1
    141c:	9a000022 	bls	14ac <__udivsi3+0xa0>
    1420:	e1110002 	tst	r1, r2
    1424:	0a000023 	beq	14b8 <__udivsi3+0xac>
    1428:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    142c:	01a01181 	lsleq	r1, r1, #3
    1430:	03a03008 	moveq	r3, #8
    1434:	13a03001 	movne	r3, #1
    1438:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    143c:	31510000 	cmpcc	r1, r0
    1440:	31a01201 	lslcc	r1, r1, #4
    1444:	31a03203 	lslcc	r3, r3, #4
    1448:	3afffffa 	bcc	1438 <__udivsi3+0x2c>
    144c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1450:	31510000 	cmpcc	r1, r0
    1454:	31a01081 	lslcc	r1, r1, #1
    1458:	31a03083 	lslcc	r3, r3, #1
    145c:	3afffffa 	bcc	144c <__udivsi3+0x40>
    1460:	e3a02000 	mov	r2, #0
    1464:	e1500001 	cmp	r0, r1
    1468:	20400001 	subcs	r0, r0, r1
    146c:	21822003 	orrcs	r2, r2, r3
    1470:	e15000a1 	cmp	r0, r1, lsr #1
    1474:	204000a1 	subcs	r0, r0, r1, lsr #1
    1478:	218220a3 	orrcs	r2, r2, r3, lsr #1
    147c:	e1500121 	cmp	r0, r1, lsr #2
    1480:	20400121 	subcs	r0, r0, r1, lsr #2
    1484:	21822123 	orrcs	r2, r2, r3, lsr #2
    1488:	e15001a1 	cmp	r0, r1, lsr #3
    148c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1490:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1494:	e3500000 	cmp	r0, #0
    1498:	11b03223 	lsrsne	r3, r3, #4
    149c:	11a01221 	lsrne	r1, r1, #4
    14a0:	1affffef 	bne	1464 <__udivsi3+0x58>
    14a4:	e1a00002 	mov	r0, r2
    14a8:	e12fff1e 	bx	lr
    14ac:	03a00001 	moveq	r0, #1
    14b0:	13a00000 	movne	r0, #0
    14b4:	e12fff1e 	bx	lr
    14b8:	e3510801 	cmp	r1, #65536	@ 0x10000
    14bc:	21a01821 	lsrcs	r1, r1, #16
    14c0:	23a02010 	movcs	r2, #16
    14c4:	33a02000 	movcc	r2, #0
    14c8:	e3510c01 	cmp	r1, #256	@ 0x100
    14cc:	21a01421 	lsrcs	r1, r1, #8
    14d0:	22822008 	addcs	r2, r2, #8
    14d4:	e3510010 	cmp	r1, #16
    14d8:	21a01221 	lsrcs	r1, r1, #4
    14dc:	22822004 	addcs	r2, r2, #4
    14e0:	e3510004 	cmp	r1, #4
    14e4:	82822003 	addhi	r2, r2, #3
    14e8:	908220a1 	addls	r2, r2, r1, lsr #1
    14ec:	e1a00230 	lsr	r0, r0, r2
    14f0:	e12fff1e 	bx	lr
    14f4:	e3500000 	cmp	r0, #0
    14f8:	13e00000 	mvnne	r0, #0
    14fc:	ea000007 	b	1520 <__aeabi_idiv0>

00001500 <__aeabi_uidivmod>:
    1500:	e3510000 	cmp	r1, #0
    1504:	0afffffa 	beq	14f4 <__udivsi3+0xe8>
    1508:	e92d4003 	push	{r0, r1, lr}
    150c:	ebffffbe 	bl	140c <__udivsi3>
    1510:	e8bd4006 	pop	{r1, r2, lr}
    1514:	e0030092 	mul	r3, r2, r0
    1518:	e0411003 	sub	r1, r1, r3
    151c:	e12fff1e 	bx	lr

00001520 <__aeabi_idiv0>:
    1520:	e12fff1e 	bx	lr
