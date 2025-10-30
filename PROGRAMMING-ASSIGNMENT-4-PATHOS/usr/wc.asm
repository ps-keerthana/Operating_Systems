
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
      f0:	eb000310 	bl	d38 <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb000484 	bl	1330 <printf>
     11c:	eb0002ea 	bl	ccc <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb00047a 	bl	1330 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001a48 	.word	0x00001a48
     154:	000019ec 	.word	0x000019ec
     158:	000019f4 	.word	0x000019f4
     15c:	00001a04 	.word	0x00001a04

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
     18c:	eb0002ce 	bl	ccc <exit>
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
     1b8:	eb00030b 	bl	dec <open>
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
     1ec:	eb00044f 	bl	1330 <printf>
     1f0:	eb0002b5 	bl	ccc <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb0002d8 	bl	d80 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb0002a3 	bl	ccc <exit>
     23c:	00001a14 	.word	0x00001a14
     240:	00001a18 	.word	0x00001a18

00000244 <pg_pte>:
     244:	e92d4800 	push	{fp, lr}
     248:	e28db004 	add	fp, sp, #4
     24c:	e24dd008 	sub	sp, sp, #8
     250:	e50b0008 	str	r0, [fp, #-8]
     254:	e51b1008 	ldr	r1, [fp, #-8]
     258:	e3a0001a 	mov	r0, #26
     25c:	eb0003d5 	bl	11b8 <syscall>
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
     284:	e3a0001b 	mov	r0, #27
     288:	eb0003ca 	bl	11b8 <syscall>
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
     2b0:	e3a0001c 	mov	r0, #28
     2b4:	eb0003bf 	bl	11b8 <syscall>
     2b8:	e1a03000 	mov	r3, r0
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e24bd004 	sub	sp, fp, #4
     2c4:	e8bd8800 	pop	{fp, pc}

000002c8 <kpt>:
     2c8:	e92d4800 	push	{fp, lr}
     2cc:	e28db004 	add	fp, sp, #4
     2d0:	e3a0001d 	mov	r0, #29
     2d4:	eb0003b7 	bl	11b8 <syscall>
     2d8:	e1a03000 	mov	r3, r0
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e8bd8800 	pop	{fp, pc}

000002e4 <ugetpid>:
     2e4:	e92d4800 	push	{fp, lr}
     2e8:	e28db004 	add	fp, sp, #4
     2ec:	e3a0001e 	mov	r0, #30
     2f0:	eb0003b0 	bl	11b8 <syscall>
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
     5f4:	eb0001cf 	bl	d38 <read>
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
     69c:	eb0001d2 	bl	dec <open>
     6a0:	e50b0008 	str	r0, [fp, #-8]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e3530000 	cmp	r3, #0
     6ac:	aa000001 	bge	6b8 <stat+0x38>
     6b0:	e3e03000 	mvn	r3, #0
     6b4:	ea000006 	b	6d4 <stat+0x54>
     6b8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6bc:	e51b0008 	ldr	r0, [fp, #-8]
     6c0:	eb0001e4 	bl	e58 <fstat>
     6c4:	e50b000c 	str	r0, [fp, #-12]
     6c8:	e51b0008 	ldr	r0, [fp, #-8]
     6cc:	eb0001ab 	bl	d80 <close>
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

00000948 <xchg>:
     948:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     94c:	e28db000 	add	fp, sp, #0
     950:	e24dd014 	sub	sp, sp, #20
     954:	e50b0010 	str	r0, [fp, #-16]
     958:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     95c:	e51b2010 	ldr	r2, [fp, #-16]
     960:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     964:	e1023091 	swp	r3, r1, [r2]
     968:	e50b3008 	str	r3, [fp, #-8]
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e1a00003 	mov	r0, r3
     974:	e28bd000 	add	sp, fp, #0
     978:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <initiateLock>:
     980:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     984:	e28db000 	add	fp, sp, #0
     988:	e24dd00c 	sub	sp, sp, #12
     98c:	e50b0008 	str	r0, [fp, #-8]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e3a02000 	mov	r2, #0
     998:	e5832000 	str	r2, [r3]
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e3a02001 	mov	r2, #1
     9a4:	e5832004 	str	r2, [r3, #4]
     9a8:	e1a00000 	nop			@ (mov r0, r0)
     9ac:	e28bd000 	add	sp, fp, #0
     9b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <acquireLock>:
     9b8:	e92d4800 	push	{fp, lr}
     9bc:	e28db004 	add	fp, sp, #4
     9c0:	e24dd008 	sub	sp, sp, #8
     9c4:	e50b0008 	str	r0, [fp, #-8]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e5933004 	ldr	r3, [r3, #4]
     9d0:	e3530000 	cmp	r3, #0
     9d4:	0a000008 	beq	9fc <acquireLock+0x44>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e3a01001 	mov	r1, #1
     9e4:	e1a00003 	mov	r0, r3
     9e8:	ebffffd6 	bl	948 <xchg>
     9ec:	e1a03000 	mov	r3, r0
     9f0:	e3530000 	cmp	r3, #0
     9f4:	1afffff8 	bne	9dc <acquireLock+0x24>
     9f8:	ea000000 	b	a00 <acquireLock+0x48>
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}

00000a08 <releaseLock>:
     a08:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a0c:	e28db000 	add	fp, sp, #0
     a10:	e24dd00c 	sub	sp, sp, #12
     a14:	e50b0008 	str	r0, [fp, #-8]
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e5933004 	ldr	r3, [r3, #4]
     a20:	e3530000 	cmp	r3, #0
     a24:	0a000006 	beq	a44 <releaseLock+0x3c>
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e5933000 	ldr	r3, [r3]
     a30:	e3530001 	cmp	r3, #1
     a34:	1a000002 	bne	a44 <releaseLock+0x3c>
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e3a02000 	mov	r2, #0
     a40:	e5832000 	str	r2, [r3]
     a44:	e1a00000 	nop			@ (mov r0, r0)
     a48:	e28bd000 	add	sp, fp, #0
     a4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <initiateCondVar>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd008 	sub	sp, sp, #8
     a60:	e50b0008 	str	r0, [fp, #-8]
     a64:	eb0001b8 	bl	114c <getChannel>
     a68:	e1a02000 	mov	r2, r0
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e5832000 	str	r2, [r3]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e3a02001 	mov	r2, #1
     a7c:	e5832004 	str	r2, [r3, #4]
     a80:	e1a00000 	nop			@ (mov r0, r0)
     a84:	e24bd004 	sub	sp, fp, #4
     a88:	e8bd8800 	pop	{fp, pc}

00000a8c <condWait>:
     a8c:	e92d4800 	push	{fp, lr}
     a90:	e28db004 	add	fp, sp, #4
     a94:	e24dd008 	sub	sp, sp, #8
     a98:	e50b0008 	str	r0, [fp, #-8]
     a9c:	e50b100c 	str	r1, [fp, #-12]
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e5933004 	ldr	r3, [r3, #4]
     aa8:	e3530000 	cmp	r3, #0
     aac:	0a00000c 	beq	ae4 <condWait+0x58>
     ab0:	e51b300c 	ldr	r3, [fp, #-12]
     ab4:	e5933004 	ldr	r3, [r3, #4]
     ab8:	e3530000 	cmp	r3, #0
     abc:	0a000008 	beq	ae4 <condWait+0x58>
     ac0:	e51b000c 	ldr	r0, [fp, #-12]
     ac4:	ebffffcf 	bl	a08 <releaseLock>
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e5933000 	ldr	r3, [r3]
     ad0:	e1a00003 	mov	r0, r3
     ad4:	eb000193 	bl	1128 <sleepChan>
     ad8:	e51b000c 	ldr	r0, [fp, #-12]
     adc:	ebffffb5 	bl	9b8 <acquireLock>
     ae0:	ea000000 	b	ae8 <condWait+0x5c>
     ae4:	e1a00000 	nop			@ (mov r0, r0)
     ae8:	e24bd004 	sub	sp, fp, #4
     aec:	e8bd8800 	pop	{fp, pc}

00000af0 <broadcast>:
     af0:	e92d4800 	push	{fp, lr}
     af4:	e28db004 	add	fp, sp, #4
     af8:	e24dd008 	sub	sp, sp, #8
     afc:	e50b0008 	str	r0, [fp, #-8]
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e5933004 	ldr	r3, [r3, #4]
     b08:	e3530000 	cmp	r3, #0
     b0c:	0a000004 	beq	b24 <broadcast+0x34>
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e5933000 	ldr	r3, [r3]
     b18:	e1a00003 	mov	r0, r3
     b1c:	eb000193 	bl	1170 <sigChan>
     b20:	ea000000 	b	b28 <broadcast+0x38>
     b24:	e1a00000 	nop			@ (mov r0, r0)
     b28:	e24bd004 	sub	sp, fp, #4
     b2c:	e8bd8800 	pop	{fp, pc}

00000b30 <signal>:
     b30:	e92d4800 	push	{fp, lr}
     b34:	e28db004 	add	fp, sp, #4
     b38:	e24dd008 	sub	sp, sp, #8
     b3c:	e50b0008 	str	r0, [fp, #-8]
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e5933004 	ldr	r3, [r3, #4]
     b48:	e3530000 	cmp	r3, #0
     b4c:	0a000004 	beq	b64 <signal+0x34>
     b50:	e51b3008 	ldr	r3, [fp, #-8]
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e1a00003 	mov	r0, r3
     b5c:	eb00018c 	bl	1194 <sigOneChan>
     b60:	ea000000 	b	b68 <signal+0x38>
     b64:	e1a00000 	nop			@ (mov r0, r0)
     b68:	e24bd004 	sub	sp, fp, #4
     b6c:	e8bd8800 	pop	{fp, pc}

00000b70 <semInit>:
     b70:	e92d4800 	push	{fp, lr}
     b74:	e28db004 	add	fp, sp, #4
     b78:	e24dd008 	sub	sp, sp, #8
     b7c:	e50b0008 	str	r0, [fp, #-8]
     b80:	e50b100c 	str	r1, [fp, #-12]
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e2833004 	add	r3, r3, #4
     b8c:	e1a00003 	mov	r0, r3
     b90:	ebffff7a 	bl	980 <initiateLock>
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e283300c 	add	r3, r3, #12
     b9c:	e1a00003 	mov	r0, r3
     ba0:	ebffffab 	bl	a54 <initiateCondVar>
     ba4:	e51b3008 	ldr	r3, [fp, #-8]
     ba8:	e51b200c 	ldr	r2, [fp, #-12]
     bac:	e5832000 	str	r2, [r3]
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e3a02001 	mov	r2, #1
     bb8:	e5832014 	str	r2, [r3, #20]
     bbc:	e1a00000 	nop			@ (mov r0, r0)
     bc0:	e24bd004 	sub	sp, fp, #4
     bc4:	e8bd8800 	pop	{fp, pc}

00000bc8 <semUp>:
     bc8:	e92d4800 	push	{fp, lr}
     bcc:	e28db004 	add	fp, sp, #4
     bd0:	e24dd008 	sub	sp, sp, #8
     bd4:	e50b0008 	str	r0, [fp, #-8]
     bd8:	e51b3008 	ldr	r3, [fp, #-8]
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e1a00003 	mov	r0, r3
     be4:	ebffff73 	bl	9b8 <acquireLock>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e2832001 	add	r2, r3, #1
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e5832000 	str	r2, [r3]
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e283300c 	add	r3, r3, #12
     c04:	e1a00003 	mov	r0, r3
     c08:	ebffffc8 	bl	b30 <signal>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e2833004 	add	r3, r3, #4
     c14:	e1a00003 	mov	r0, r3
     c18:	ebffff7a 	bl	a08 <releaseLock>
     c1c:	e1a00000 	nop			@ (mov r0, r0)
     c20:	e24bd004 	sub	sp, fp, #4
     c24:	e8bd8800 	pop	{fp, pc}

00000c28 <semDown>:
     c28:	e92d4800 	push	{fp, lr}
     c2c:	e28db004 	add	fp, sp, #4
     c30:	e24dd008 	sub	sp, sp, #8
     c34:	e50b0008 	str	r0, [fp, #-8]
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e1a00003 	mov	r0, r3
     c44:	ebffff5b 	bl	9b8 <acquireLock>
     c48:	e51b3008 	ldr	r3, [fp, #-8]
     c4c:	e5933000 	ldr	r3, [r3]
     c50:	e2432001 	sub	r2, r3, #1
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e5832000 	str	r2, [r3]
     c5c:	ea000006 	b	c7c <semDown+0x54>
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e283200c 	add	r2, r3, #12
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e2833004 	add	r3, r3, #4
     c70:	e1a01003 	mov	r1, r3
     c74:	e1a00002 	mov	r0, r2
     c78:	ebffff83 	bl	a8c <condWait>
     c7c:	e51b3008 	ldr	r3, [fp, #-8]
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e3530000 	cmp	r3, #0
     c88:	bafffff4 	blt	c60 <semDown+0x38>
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e2833004 	add	r3, r3, #4
     c94:	e1a00003 	mov	r0, r3
     c98:	ebffff5a 	bl	a08 <releaseLock>
     c9c:	e1a00000 	nop			@ (mov r0, r0)
     ca0:	e24bd004 	sub	sp, fp, #4
     ca4:	e8bd8800 	pop	{fp, pc}

00000ca8 <fork>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00001 	mov	r0, #1
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <exit>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00002 	mov	r0, #2
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <wait>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00003 	mov	r0, #3
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <pipe>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00004 	mov	r0, #4
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <read>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a00005 	mov	r0, #5
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <write>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a00010 	mov	r0, #16
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <close>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00015 	mov	r0, #21
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <kill>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a00006 	mov	r0, #6
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <exec>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a00007 	mov	r0, #7
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <open>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a0000f 	mov	r0, #15
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <mknod>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a00011 	mov	r0, #17
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <unlink>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00012 	mov	r0, #18
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <fstat>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a00008 	mov	r0, #8
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <link>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00013 	mov	r0, #19
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <mkdir>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00014 	mov	r0, #20
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <chdir>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00009 	mov	r0, #9
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <dup>:
     ee8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eec:	e1a04003 	mov	r4, r3
     ef0:	e1a03002 	mov	r3, r2
     ef4:	e1a02001 	mov	r2, r1
     ef8:	e1a01000 	mov	r1, r0
     efc:	e3a0000a 	mov	r0, #10
     f00:	ef000000 	svc	0x00000000
     f04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f08:	e12fff1e 	bx	lr

00000f0c <getpid>:
     f0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f10:	e1a04003 	mov	r4, r3
     f14:	e1a03002 	mov	r3, r2
     f18:	e1a02001 	mov	r2, r1
     f1c:	e1a01000 	mov	r1, r0
     f20:	e3a0000b 	mov	r0, #11
     f24:	ef000000 	svc	0x00000000
     f28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f2c:	e12fff1e 	bx	lr

00000f30 <sbrk>:
     f30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f34:	e1a04003 	mov	r4, r3
     f38:	e1a03002 	mov	r3, r2
     f3c:	e1a02001 	mov	r2, r1
     f40:	e1a01000 	mov	r1, r0
     f44:	e3a0000c 	mov	r0, #12
     f48:	ef000000 	svc	0x00000000
     f4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f50:	e12fff1e 	bx	lr

00000f54 <sleep>:
     f54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f58:	e1a04003 	mov	r4, r3
     f5c:	e1a03002 	mov	r3, r2
     f60:	e1a02001 	mov	r2, r1
     f64:	e1a01000 	mov	r1, r0
     f68:	e3a0000d 	mov	r0, #13
     f6c:	ef000000 	svc	0x00000000
     f70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f74:	e12fff1e 	bx	lr

00000f78 <uptime>:
     f78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f7c:	e1a04003 	mov	r4, r3
     f80:	e1a03002 	mov	r3, r2
     f84:	e1a02001 	mov	r2, r1
     f88:	e1a01000 	mov	r1, r0
     f8c:	e3a0000e 	mov	r0, #14
     f90:	ef000000 	svc	0x00000000
     f94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f98:	e12fff1e 	bx	lr

00000f9c <proclist>:
     f9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa0:	e1a04003 	mov	r4, r3
     fa4:	e1a03002 	mov	r3, r2
     fa8:	e1a02001 	mov	r2, r1
     fac:	e1a01000 	mov	r1, r0
     fb0:	e3a00016 	mov	r0, #22
     fb4:	ef000000 	svc	0x00000000
     fb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fbc:	e12fff1e 	bx	lr

00000fc0 <settickets>:
     fc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc4:	e1a04003 	mov	r4, r3
     fc8:	e1a03002 	mov	r3, r2
     fcc:	e1a02001 	mov	r2, r1
     fd0:	e1a01000 	mov	r1, r0
     fd4:	e3a00017 	mov	r0, #23
     fd8:	ef000000 	svc	0x00000000
     fdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe0:	e12fff1e 	bx	lr

00000fe4 <srand>:
     fe4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe8:	e1a04003 	mov	r4, r3
     fec:	e1a03002 	mov	r3, r2
     ff0:	e1a02001 	mov	r2, r1
     ff4:	e1a01000 	mov	r1, r0
     ff8:	e3a00018 	mov	r0, #24
     ffc:	ef000000 	svc	0x00000000
    1000:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1004:	e12fff1e 	bx	lr

00001008 <getpinfo>:
    1008:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    100c:	e1a04003 	mov	r4, r3
    1010:	e1a03002 	mov	r3, r2
    1014:	e1a02001 	mov	r2, r1
    1018:	e1a01000 	mov	r1, r0
    101c:	e3a00019 	mov	r0, #25
    1020:	ef000000 	svc	0x00000000
    1024:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1028:	e12fff1e 	bx	lr

0000102c <print_pt>:
    102c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1030:	e1a04003 	mov	r4, r3
    1034:	e1a03002 	mov	r3, r2
    1038:	e1a02001 	mov	r2, r1
    103c:	e1a01000 	mov	r1, r0
    1040:	e3a0001f 	mov	r0, #31
    1044:	ef000000 	svc	0x00000000
    1048:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    104c:	e12fff1e 	bx	lr

00001050 <thread_create>:
    1050:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1054:	e1a04003 	mov	r4, r3
    1058:	e1a03002 	mov	r3, r2
    105c:	e1a02001 	mov	r2, r1
    1060:	e1a01000 	mov	r1, r0
    1064:	e3a00020 	mov	r0, #32
    1068:	ef000000 	svc	0x00000000
    106c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1070:	e12fff1e 	bx	lr

00001074 <thread_exit>:
    1074:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1078:	e1a04003 	mov	r4, r3
    107c:	e1a03002 	mov	r3, r2
    1080:	e1a02001 	mov	r2, r1
    1084:	e1a01000 	mov	r1, r0
    1088:	e3a00021 	mov	r0, #33	@ 0x21
    108c:	ef000000 	svc	0x00000000
    1090:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1094:	e12fff1e 	bx	lr

00001098 <thread_join>:
    1098:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    109c:	e1a04003 	mov	r4, r3
    10a0:	e1a03002 	mov	r3, r2
    10a4:	e1a02001 	mov	r2, r1
    10a8:	e1a01000 	mov	r1, r0
    10ac:	e3a00022 	mov	r0, #34	@ 0x22
    10b0:	ef000000 	svc	0x00000000
    10b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b8:	e12fff1e 	bx	lr

000010bc <waitpid>:
    10bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10c0:	e1a04003 	mov	r4, r3
    10c4:	e1a03002 	mov	r3, r2
    10c8:	e1a02001 	mov	r2, r1
    10cc:	e1a01000 	mov	r1, r0
    10d0:	e3a00023 	mov	r0, #35	@ 0x23
    10d4:	ef000000 	svc	0x00000000
    10d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10dc:	e12fff1e 	bx	lr

000010e0 <barrier_init>:
    10e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10e4:	e1a04003 	mov	r4, r3
    10e8:	e1a03002 	mov	r3, r2
    10ec:	e1a02001 	mov	r2, r1
    10f0:	e1a01000 	mov	r1, r0
    10f4:	e3a00024 	mov	r0, #36	@ 0x24
    10f8:	ef000000 	svc	0x00000000
    10fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1100:	e12fff1e 	bx	lr

00001104 <barrier_check>:
    1104:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1108:	e1a04003 	mov	r4, r3
    110c:	e1a03002 	mov	r3, r2
    1110:	e1a02001 	mov	r2, r1
    1114:	e1a01000 	mov	r1, r0
    1118:	e3a00025 	mov	r0, #37	@ 0x25
    111c:	ef000000 	svc	0x00000000
    1120:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1124:	e12fff1e 	bx	lr

00001128 <sleepChan>:
    1128:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    112c:	e1a04003 	mov	r4, r3
    1130:	e1a03002 	mov	r3, r2
    1134:	e1a02001 	mov	r2, r1
    1138:	e1a01000 	mov	r1, r0
    113c:	e3a00026 	mov	r0, #38	@ 0x26
    1140:	ef000000 	svc	0x00000000
    1144:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1148:	e12fff1e 	bx	lr

0000114c <getChannel>:
    114c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1150:	e1a04003 	mov	r4, r3
    1154:	e1a03002 	mov	r3, r2
    1158:	e1a02001 	mov	r2, r1
    115c:	e1a01000 	mov	r1, r0
    1160:	e3a00027 	mov	r0, #39	@ 0x27
    1164:	ef000000 	svc	0x00000000
    1168:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    116c:	e12fff1e 	bx	lr

00001170 <sigChan>:
    1170:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1174:	e1a04003 	mov	r4, r3
    1178:	e1a03002 	mov	r3, r2
    117c:	e1a02001 	mov	r2, r1
    1180:	e1a01000 	mov	r1, r0
    1184:	e3a00028 	mov	r0, #40	@ 0x28
    1188:	ef000000 	svc	0x00000000
    118c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1190:	e12fff1e 	bx	lr

00001194 <sigOneChan>:
    1194:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1198:	e1a04003 	mov	r4, r3
    119c:	e1a03002 	mov	r3, r2
    11a0:	e1a02001 	mov	r2, r1
    11a4:	e1a01000 	mov	r1, r0
    11a8:	e3a00029 	mov	r0, #41	@ 0x29
    11ac:	ef000000 	svc	0x00000000
    11b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11b4:	e12fff1e 	bx	lr

000011b8 <syscall>:
    11b8:	ef000000 	svc	0x00000000
    11bc:	e12fff1e 	bx	lr

000011c0 <putc>:
    11c0:	e92d4800 	push	{fp, lr}
    11c4:	e28db004 	add	fp, sp, #4
    11c8:	e24dd008 	sub	sp, sp, #8
    11cc:	e50b0008 	str	r0, [fp, #-8]
    11d0:	e1a03001 	mov	r3, r1
    11d4:	e54b3009 	strb	r3, [fp, #-9]
    11d8:	e24b3009 	sub	r3, fp, #9
    11dc:	e3a02001 	mov	r2, #1
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0008 	ldr	r0, [fp, #-8]
    11e8:	ebfffedb 	bl	d5c <write>
    11ec:	e1a00000 	nop			@ (mov r0, r0)
    11f0:	e24bd004 	sub	sp, fp, #4
    11f4:	e8bd8800 	pop	{fp, pc}

000011f8 <printint>:
    11f8:	e92d4800 	push	{fp, lr}
    11fc:	e28db004 	add	fp, sp, #4
    1200:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1204:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1208:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    120c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1210:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1214:	e3a03000 	mov	r3, #0
    1218:	e50b300c 	str	r3, [fp, #-12]
    121c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1220:	e3530000 	cmp	r3, #0
    1224:	0a000008 	beq	124c <printint+0x54>
    1228:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    122c:	e3530000 	cmp	r3, #0
    1230:	aa000005 	bge	124c <printint+0x54>
    1234:	e3a03001 	mov	r3, #1
    1238:	e50b300c 	str	r3, [fp, #-12]
    123c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1240:	e2633000 	rsb	r3, r3, #0
    1244:	e50b3010 	str	r3, [fp, #-16]
    1248:	ea000001 	b	1254 <printint+0x5c>
    124c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1250:	e50b3010 	str	r3, [fp, #-16]
    1254:	e3a03000 	mov	r3, #0
    1258:	e50b3008 	str	r3, [fp, #-8]
    125c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1260:	e51b3010 	ldr	r3, [fp, #-16]
    1264:	e1a01002 	mov	r1, r2
    1268:	e1a00003 	mov	r0, r3
    126c:	eb0001d5 	bl	19c8 <__aeabi_uidivmod>
    1270:	e1a03001 	mov	r3, r1
    1274:	e1a01003 	mov	r1, r3
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e2832001 	add	r2, r3, #1
    1280:	e50b2008 	str	r2, [fp, #-8]
    1284:	e59f20a0 	ldr	r2, [pc, #160]	@ 132c <printint+0x134>
    1288:	e7d22001 	ldrb	r2, [r2, r1]
    128c:	e2433004 	sub	r3, r3, #4
    1290:	e083300b 	add	r3, r3, fp
    1294:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1298:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    129c:	e1a01003 	mov	r1, r3
    12a0:	e51b0010 	ldr	r0, [fp, #-16]
    12a4:	eb00018a 	bl	18d4 <__udivsi3>
    12a8:	e1a03000 	mov	r3, r0
    12ac:	e50b3010 	str	r3, [fp, #-16]
    12b0:	e51b3010 	ldr	r3, [fp, #-16]
    12b4:	e3530000 	cmp	r3, #0
    12b8:	1affffe7 	bne	125c <printint+0x64>
    12bc:	e51b300c 	ldr	r3, [fp, #-12]
    12c0:	e3530000 	cmp	r3, #0
    12c4:	0a00000e 	beq	1304 <printint+0x10c>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e2832001 	add	r2, r3, #1
    12d0:	e50b2008 	str	r2, [fp, #-8]
    12d4:	e2433004 	sub	r3, r3, #4
    12d8:	e083300b 	add	r3, r3, fp
    12dc:	e3a0202d 	mov	r2, #45	@ 0x2d
    12e0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12e4:	ea000006 	b	1304 <printint+0x10c>
    12e8:	e24b2020 	sub	r2, fp, #32
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e0823003 	add	r3, r2, r3
    12f4:	e5d33000 	ldrb	r3, [r3]
    12f8:	e1a01003 	mov	r1, r3
    12fc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1300:	ebffffae 	bl	11c0 <putc>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e2433001 	sub	r3, r3, #1
    130c:	e50b3008 	str	r3, [fp, #-8]
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e3530000 	cmp	r3, #0
    1318:	aafffff2 	bge	12e8 <printint+0xf0>
    131c:	e1a00000 	nop			@ (mov r0, r0)
    1320:	e1a00000 	nop			@ (mov r0, r0)
    1324:	e24bd004 	sub	sp, fp, #4
    1328:	e8bd8800 	pop	{fp, pc}
    132c:	00001a34 	.word	0x00001a34

00001330 <printf>:
    1330:	e92d000e 	push	{r1, r2, r3}
    1334:	e92d4800 	push	{fp, lr}
    1338:	e28db004 	add	fp, sp, #4
    133c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1340:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1344:	e3a03000 	mov	r3, #0
    1348:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    134c:	e28b3008 	add	r3, fp, #8
    1350:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1354:	e3a03000 	mov	r3, #0
    1358:	e50b3010 	str	r3, [fp, #-16]
    135c:	ea000074 	b	1534 <printf+0x204>
    1360:	e59b2004 	ldr	r2, [fp, #4]
    1364:	e51b3010 	ldr	r3, [fp, #-16]
    1368:	e0823003 	add	r3, r2, r3
    136c:	e5d33000 	ldrb	r3, [r3]
    1370:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1378:	e3530000 	cmp	r3, #0
    137c:	1a00000b 	bne	13b0 <printf+0x80>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e3530025 	cmp	r3, #37	@ 0x25
    1388:	1a000002 	bne	1398 <printf+0x68>
    138c:	e3a03025 	mov	r3, #37	@ 0x25
    1390:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1394:	ea000063 	b	1528 <printf+0x1f8>
    1398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    139c:	e6ef3073 	uxtb	r3, r3
    13a0:	e1a01003 	mov	r1, r3
    13a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a8:	ebffff84 	bl	11c0 <putc>
    13ac:	ea00005d 	b	1528 <printf+0x1f8>
    13b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    13b4:	e3530025 	cmp	r3, #37	@ 0x25
    13b8:	1a00005a 	bne	1528 <printf+0x1f8>
    13bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c0:	e3530064 	cmp	r3, #100	@ 0x64
    13c4:	1a00000a 	bne	13f4 <printf+0xc4>
    13c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e1a01003 	mov	r1, r3
    13d4:	e3a03001 	mov	r3, #1
    13d8:	e3a0200a 	mov	r2, #10
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff84 	bl	11f8 <printint>
    13e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e8:	e2833004 	add	r3, r3, #4
    13ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13f0:	ea00004a 	b	1520 <printf+0x1f0>
    13f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f8:	e3530078 	cmp	r3, #120	@ 0x78
    13fc:	0a000002 	beq	140c <printf+0xdc>
    1400:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1404:	e3530070 	cmp	r3, #112	@ 0x70
    1408:	1a00000a 	bne	1438 <printf+0x108>
    140c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e1a01003 	mov	r1, r3
    1418:	e3a03000 	mov	r3, #0
    141c:	e3a02010 	mov	r2, #16
    1420:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1424:	ebffff73 	bl	11f8 <printint>
    1428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    142c:	e2833004 	add	r3, r3, #4
    1430:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1434:	ea000039 	b	1520 <printf+0x1f0>
    1438:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    143c:	e3530073 	cmp	r3, #115	@ 0x73
    1440:	1a000018 	bne	14a8 <printf+0x178>
    1444:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e50b300c 	str	r3, [fp, #-12]
    1450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1454:	e2833004 	add	r3, r3, #4
    1458:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e3530000 	cmp	r3, #0
    1464:	1a00000a 	bne	1494 <printf+0x164>
    1468:	e59f30f4 	ldr	r3, [pc, #244]	@ 1564 <printf+0x234>
    146c:	e50b300c 	str	r3, [fp, #-12]
    1470:	ea000007 	b	1494 <printf+0x164>
    1474:	e51b300c 	ldr	r3, [fp, #-12]
    1478:	e5d33000 	ldrb	r3, [r3]
    147c:	e1a01003 	mov	r1, r3
    1480:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1484:	ebffff4d 	bl	11c0 <putc>
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e2833001 	add	r3, r3, #1
    1490:	e50b300c 	str	r3, [fp, #-12]
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e5d33000 	ldrb	r3, [r3]
    149c:	e3530000 	cmp	r3, #0
    14a0:	1afffff3 	bne	1474 <printf+0x144>
    14a4:	ea00001d 	b	1520 <printf+0x1f0>
    14a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14ac:	e3530063 	cmp	r3, #99	@ 0x63
    14b0:	1a000009 	bne	14dc <printf+0x1ac>
    14b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e6ef3073 	uxtb	r3, r3
    14c0:	e1a01003 	mov	r1, r3
    14c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14c8:	ebffff3c 	bl	11c0 <putc>
    14cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14d0:	e2833004 	add	r3, r3, #4
    14d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14d8:	ea000010 	b	1520 <printf+0x1f0>
    14dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14e0:	e3530025 	cmp	r3, #37	@ 0x25
    14e4:	1a000005 	bne	1500 <printf+0x1d0>
    14e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14ec:	e6ef3073 	uxtb	r3, r3
    14f0:	e1a01003 	mov	r1, r3
    14f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14f8:	ebffff30 	bl	11c0 <putc>
    14fc:	ea000007 	b	1520 <printf+0x1f0>
    1500:	e3a01025 	mov	r1, #37	@ 0x25
    1504:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1508:	ebffff2c 	bl	11c0 <putc>
    150c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1510:	e6ef3073 	uxtb	r3, r3
    1514:	e1a01003 	mov	r1, r3
    1518:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    151c:	ebffff27 	bl	11c0 <putc>
    1520:	e3a03000 	mov	r3, #0
    1524:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1528:	e51b3010 	ldr	r3, [fp, #-16]
    152c:	e2833001 	add	r3, r3, #1
    1530:	e50b3010 	str	r3, [fp, #-16]
    1534:	e59b2004 	ldr	r2, [fp, #4]
    1538:	e51b3010 	ldr	r3, [fp, #-16]
    153c:	e0823003 	add	r3, r2, r3
    1540:	e5d33000 	ldrb	r3, [r3]
    1544:	e3530000 	cmp	r3, #0
    1548:	1affff84 	bne	1360 <printf+0x30>
    154c:	e1a00000 	nop			@ (mov r0, r0)
    1550:	e1a00000 	nop			@ (mov r0, r0)
    1554:	e24bd004 	sub	sp, fp, #4
    1558:	e8bd4800 	pop	{fp, lr}
    155c:	e28dd00c 	add	sp, sp, #12
    1560:	e12fff1e 	bx	lr
    1564:	00001a2c 	.word	0x00001a2c

00001568 <free>:
    1568:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    156c:	e28db000 	add	fp, sp, #0
    1570:	e24dd014 	sub	sp, sp, #20
    1574:	e50b0010 	str	r0, [fp, #-16]
    1578:	e51b3010 	ldr	r3, [fp, #-16]
    157c:	e2433008 	sub	r3, r3, #8
    1580:	e50b300c 	str	r3, [fp, #-12]
    1584:	e59f3154 	ldr	r3, [pc, #340]	@ 16e0 <free+0x178>
    1588:	e5933000 	ldr	r3, [r3]
    158c:	e50b3008 	str	r3, [fp, #-8]
    1590:	ea000010 	b	15d8 <free+0x70>
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e5933000 	ldr	r3, [r3]
    159c:	e51b2008 	ldr	r2, [fp, #-8]
    15a0:	e1520003 	cmp	r2, r3
    15a4:	3a000008 	bcc	15cc <free+0x64>
    15a8:	e51b200c 	ldr	r2, [fp, #-12]
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e1520003 	cmp	r2, r3
    15b4:	8a000010 	bhi	15fc <free+0x94>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5933000 	ldr	r3, [r3]
    15c0:	e51b200c 	ldr	r2, [fp, #-12]
    15c4:	e1520003 	cmp	r2, r3
    15c8:	3a00000b 	bcc	15fc <free+0x94>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5933000 	ldr	r3, [r3]
    15d4:	e50b3008 	str	r3, [fp, #-8]
    15d8:	e51b200c 	ldr	r2, [fp, #-12]
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e1520003 	cmp	r2, r3
    15e4:	9affffea 	bls	1594 <free+0x2c>
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e5933000 	ldr	r3, [r3]
    15f0:	e51b200c 	ldr	r2, [fp, #-12]
    15f4:	e1520003 	cmp	r2, r3
    15f8:	2affffe5 	bcs	1594 <free+0x2c>
    15fc:	e51b300c 	ldr	r3, [fp, #-12]
    1600:	e5933004 	ldr	r3, [r3, #4]
    1604:	e1a03183 	lsl	r3, r3, #3
    1608:	e51b200c 	ldr	r2, [fp, #-12]
    160c:	e0822003 	add	r2, r2, r3
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5933000 	ldr	r3, [r3]
    1618:	e1520003 	cmp	r2, r3
    161c:	1a00000d 	bne	1658 <free+0xf0>
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5932004 	ldr	r2, [r3, #4]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e5933000 	ldr	r3, [r3]
    1630:	e5933004 	ldr	r3, [r3, #4]
    1634:	e0822003 	add	r2, r2, r3
    1638:	e51b300c 	ldr	r3, [fp, #-12]
    163c:	e5832004 	str	r2, [r3, #4]
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e5933000 	ldr	r3, [r3]
    1648:	e5932000 	ldr	r2, [r3]
    164c:	e51b300c 	ldr	r3, [fp, #-12]
    1650:	e5832000 	str	r2, [r3]
    1654:	ea000003 	b	1668 <free+0x100>
    1658:	e51b3008 	ldr	r3, [fp, #-8]
    165c:	e5932000 	ldr	r2, [r3]
    1660:	e51b300c 	ldr	r3, [fp, #-12]
    1664:	e5832000 	str	r2, [r3]
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e5933004 	ldr	r3, [r3, #4]
    1670:	e1a03183 	lsl	r3, r3, #3
    1674:	e51b2008 	ldr	r2, [fp, #-8]
    1678:	e0823003 	add	r3, r2, r3
    167c:	e51b200c 	ldr	r2, [fp, #-12]
    1680:	e1520003 	cmp	r2, r3
    1684:	1a00000b 	bne	16b8 <free+0x150>
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e5932004 	ldr	r2, [r3, #4]
    1690:	e51b300c 	ldr	r3, [fp, #-12]
    1694:	e5933004 	ldr	r3, [r3, #4]
    1698:	e0822003 	add	r2, r2, r3
    169c:	e51b3008 	ldr	r3, [fp, #-8]
    16a0:	e5832004 	str	r2, [r3, #4]
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5932000 	ldr	r2, [r3]
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e5832000 	str	r2, [r3]
    16b4:	ea000002 	b	16c4 <free+0x15c>
    16b8:	e51b3008 	ldr	r3, [fp, #-8]
    16bc:	e51b200c 	ldr	r2, [fp, #-12]
    16c0:	e5832000 	str	r2, [r3]
    16c4:	e59f2014 	ldr	r2, [pc, #20]	@ 16e0 <free+0x178>
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e5823000 	str	r3, [r2]
    16d0:	e1a00000 	nop			@ (mov r0, r0)
    16d4:	e28bd000 	add	sp, fp, #0
    16d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16dc:	e12fff1e 	bx	lr
    16e0:	00001c50 	.word	0x00001c50

000016e4 <morecore>:
    16e4:	e92d4800 	push	{fp, lr}
    16e8:	e28db004 	add	fp, sp, #4
    16ec:	e24dd010 	sub	sp, sp, #16
    16f0:	e50b0010 	str	r0, [fp, #-16]
    16f4:	e51b3010 	ldr	r3, [fp, #-16]
    16f8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    16fc:	2a000001 	bcs	1708 <morecore+0x24>
    1700:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1704:	e50b3010 	str	r3, [fp, #-16]
    1708:	e51b3010 	ldr	r3, [fp, #-16]
    170c:	e1a03183 	lsl	r3, r3, #3
    1710:	e1a00003 	mov	r0, r3
    1714:	ebfffe05 	bl	f30 <sbrk>
    1718:	e50b0008 	str	r0, [fp, #-8]
    171c:	e51b3008 	ldr	r3, [fp, #-8]
    1720:	e3730001 	cmn	r3, #1
    1724:	1a000001 	bne	1730 <morecore+0x4c>
    1728:	e3a03000 	mov	r3, #0
    172c:	ea00000a 	b	175c <morecore+0x78>
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e50b300c 	str	r3, [fp, #-12]
    1738:	e51b300c 	ldr	r3, [fp, #-12]
    173c:	e51b2010 	ldr	r2, [fp, #-16]
    1740:	e5832004 	str	r2, [r3, #4]
    1744:	e51b300c 	ldr	r3, [fp, #-12]
    1748:	e2833008 	add	r3, r3, #8
    174c:	e1a00003 	mov	r0, r3
    1750:	ebffff84 	bl	1568 <free>
    1754:	e59f300c 	ldr	r3, [pc, #12]	@ 1768 <morecore+0x84>
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e1a00003 	mov	r0, r3
    1760:	e24bd004 	sub	sp, fp, #4
    1764:	e8bd8800 	pop	{fp, pc}
    1768:	00001c50 	.word	0x00001c50

0000176c <malloc>:
    176c:	e92d4800 	push	{fp, lr}
    1770:	e28db004 	add	fp, sp, #4
    1774:	e24dd018 	sub	sp, sp, #24
    1778:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    177c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1780:	e2833007 	add	r3, r3, #7
    1784:	e1a031a3 	lsr	r3, r3, #3
    1788:	e2833001 	add	r3, r3, #1
    178c:	e50b3010 	str	r3, [fp, #-16]
    1790:	e59f3134 	ldr	r3, [pc, #308]	@ 18cc <malloc+0x160>
    1794:	e5933000 	ldr	r3, [r3]
    1798:	e50b300c 	str	r3, [fp, #-12]
    179c:	e51b300c 	ldr	r3, [fp, #-12]
    17a0:	e3530000 	cmp	r3, #0
    17a4:	1a00000b 	bne	17d8 <malloc+0x6c>
    17a8:	e59f3120 	ldr	r3, [pc, #288]	@ 18d0 <malloc+0x164>
    17ac:	e50b300c 	str	r3, [fp, #-12]
    17b0:	e59f2114 	ldr	r2, [pc, #276]	@ 18cc <malloc+0x160>
    17b4:	e51b300c 	ldr	r3, [fp, #-12]
    17b8:	e5823000 	str	r3, [r2]
    17bc:	e59f3108 	ldr	r3, [pc, #264]	@ 18cc <malloc+0x160>
    17c0:	e5933000 	ldr	r3, [r3]
    17c4:	e59f2104 	ldr	r2, [pc, #260]	@ 18d0 <malloc+0x164>
    17c8:	e5823000 	str	r3, [r2]
    17cc:	e59f30fc 	ldr	r3, [pc, #252]	@ 18d0 <malloc+0x164>
    17d0:	e3a02000 	mov	r2, #0
    17d4:	e5832004 	str	r2, [r3, #4]
    17d8:	e51b300c 	ldr	r3, [fp, #-12]
    17dc:	e5933000 	ldr	r3, [r3]
    17e0:	e50b3008 	str	r3, [fp, #-8]
    17e4:	e51b3008 	ldr	r3, [fp, #-8]
    17e8:	e5933004 	ldr	r3, [r3, #4]
    17ec:	e51b2010 	ldr	r2, [fp, #-16]
    17f0:	e1520003 	cmp	r2, r3
    17f4:	8a00001e 	bhi	1874 <malloc+0x108>
    17f8:	e51b3008 	ldr	r3, [fp, #-8]
    17fc:	e5933004 	ldr	r3, [r3, #4]
    1800:	e51b2010 	ldr	r2, [fp, #-16]
    1804:	e1520003 	cmp	r2, r3
    1808:	1a000004 	bne	1820 <malloc+0xb4>
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5932000 	ldr	r2, [r3]
    1814:	e51b300c 	ldr	r3, [fp, #-12]
    1818:	e5832000 	str	r2, [r3]
    181c:	ea00000e 	b	185c <malloc+0xf0>
    1820:	e51b3008 	ldr	r3, [fp, #-8]
    1824:	e5932004 	ldr	r2, [r3, #4]
    1828:	e51b3010 	ldr	r3, [fp, #-16]
    182c:	e0422003 	sub	r2, r2, r3
    1830:	e51b3008 	ldr	r3, [fp, #-8]
    1834:	e5832004 	str	r2, [r3, #4]
    1838:	e51b3008 	ldr	r3, [fp, #-8]
    183c:	e5933004 	ldr	r3, [r3, #4]
    1840:	e1a03183 	lsl	r3, r3, #3
    1844:	e51b2008 	ldr	r2, [fp, #-8]
    1848:	e0823003 	add	r3, r2, r3
    184c:	e50b3008 	str	r3, [fp, #-8]
    1850:	e51b3008 	ldr	r3, [fp, #-8]
    1854:	e51b2010 	ldr	r2, [fp, #-16]
    1858:	e5832004 	str	r2, [r3, #4]
    185c:	e59f2068 	ldr	r2, [pc, #104]	@ 18cc <malloc+0x160>
    1860:	e51b300c 	ldr	r3, [fp, #-12]
    1864:	e5823000 	str	r3, [r2]
    1868:	e51b3008 	ldr	r3, [fp, #-8]
    186c:	e2833008 	add	r3, r3, #8
    1870:	ea000012 	b	18c0 <malloc+0x154>
    1874:	e59f3050 	ldr	r3, [pc, #80]	@ 18cc <malloc+0x160>
    1878:	e5933000 	ldr	r3, [r3]
    187c:	e51b2008 	ldr	r2, [fp, #-8]
    1880:	e1520003 	cmp	r2, r3
    1884:	1a000007 	bne	18a8 <malloc+0x13c>
    1888:	e51b0010 	ldr	r0, [fp, #-16]
    188c:	ebffff94 	bl	16e4 <morecore>
    1890:	e50b0008 	str	r0, [fp, #-8]
    1894:	e51b3008 	ldr	r3, [fp, #-8]
    1898:	e3530000 	cmp	r3, #0
    189c:	1a000001 	bne	18a8 <malloc+0x13c>
    18a0:	e3a03000 	mov	r3, #0
    18a4:	ea000005 	b	18c0 <malloc+0x154>
    18a8:	e51b3008 	ldr	r3, [fp, #-8]
    18ac:	e50b300c 	str	r3, [fp, #-12]
    18b0:	e51b3008 	ldr	r3, [fp, #-8]
    18b4:	e5933000 	ldr	r3, [r3]
    18b8:	e50b3008 	str	r3, [fp, #-8]
    18bc:	eaffffc8 	b	17e4 <malloc+0x78>
    18c0:	e1a00003 	mov	r0, r3
    18c4:	e24bd004 	sub	sp, fp, #4
    18c8:	e8bd8800 	pop	{fp, pc}
    18cc:	00001c50 	.word	0x00001c50
    18d0:	00001c48 	.word	0x00001c48

000018d4 <__udivsi3>:
    18d4:	e2512001 	subs	r2, r1, #1
    18d8:	012fff1e 	bxeq	lr
    18dc:	3a000036 	bcc	19bc <__udivsi3+0xe8>
    18e0:	e1500001 	cmp	r0, r1
    18e4:	9a000022 	bls	1974 <__udivsi3+0xa0>
    18e8:	e1110002 	tst	r1, r2
    18ec:	0a000023 	beq	1980 <__udivsi3+0xac>
    18f0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    18f4:	01a01181 	lsleq	r1, r1, #3
    18f8:	03a03008 	moveq	r3, #8
    18fc:	13a03001 	movne	r3, #1
    1900:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1904:	31510000 	cmpcc	r1, r0
    1908:	31a01201 	lslcc	r1, r1, #4
    190c:	31a03203 	lslcc	r3, r3, #4
    1910:	3afffffa 	bcc	1900 <__udivsi3+0x2c>
    1914:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1918:	31510000 	cmpcc	r1, r0
    191c:	31a01081 	lslcc	r1, r1, #1
    1920:	31a03083 	lslcc	r3, r3, #1
    1924:	3afffffa 	bcc	1914 <__udivsi3+0x40>
    1928:	e3a02000 	mov	r2, #0
    192c:	e1500001 	cmp	r0, r1
    1930:	20400001 	subcs	r0, r0, r1
    1934:	21822003 	orrcs	r2, r2, r3
    1938:	e15000a1 	cmp	r0, r1, lsr #1
    193c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1940:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1944:	e1500121 	cmp	r0, r1, lsr #2
    1948:	20400121 	subcs	r0, r0, r1, lsr #2
    194c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1950:	e15001a1 	cmp	r0, r1, lsr #3
    1954:	204001a1 	subcs	r0, r0, r1, lsr #3
    1958:	218221a3 	orrcs	r2, r2, r3, lsr #3
    195c:	e3500000 	cmp	r0, #0
    1960:	11b03223 	lsrsne	r3, r3, #4
    1964:	11a01221 	lsrne	r1, r1, #4
    1968:	1affffef 	bne	192c <__udivsi3+0x58>
    196c:	e1a00002 	mov	r0, r2
    1970:	e12fff1e 	bx	lr
    1974:	03a00001 	moveq	r0, #1
    1978:	13a00000 	movne	r0, #0
    197c:	e12fff1e 	bx	lr
    1980:	e3510801 	cmp	r1, #65536	@ 0x10000
    1984:	21a01821 	lsrcs	r1, r1, #16
    1988:	23a02010 	movcs	r2, #16
    198c:	33a02000 	movcc	r2, #0
    1990:	e3510c01 	cmp	r1, #256	@ 0x100
    1994:	21a01421 	lsrcs	r1, r1, #8
    1998:	22822008 	addcs	r2, r2, #8
    199c:	e3510010 	cmp	r1, #16
    19a0:	21a01221 	lsrcs	r1, r1, #4
    19a4:	22822004 	addcs	r2, r2, #4
    19a8:	e3510004 	cmp	r1, #4
    19ac:	82822003 	addhi	r2, r2, #3
    19b0:	908220a1 	addls	r2, r2, r1, lsr #1
    19b4:	e1a00230 	lsr	r0, r0, r2
    19b8:	e12fff1e 	bx	lr
    19bc:	e3500000 	cmp	r0, #0
    19c0:	13e00000 	mvnne	r0, #0
    19c4:	ea000007 	b	19e8 <__aeabi_idiv0>

000019c8 <__aeabi_uidivmod>:
    19c8:	e3510000 	cmp	r1, #0
    19cc:	0afffffa 	beq	19bc <__udivsi3+0xe8>
    19d0:	e92d4003 	push	{r0, r1, lr}
    19d4:	ebffffbe 	bl	18d4 <__udivsi3>
    19d8:	e8bd4006 	pop	{r1, r2, lr}
    19dc:	e0030092 	mul	r3, r2, r0
    19e0:	e0411003 	sub	r1, r1, r3
    19e4:	e12fff1e 	bx	lr

000019e8 <__aeabi_idiv0>:
    19e8:	e12fff1e 	bx	lr
