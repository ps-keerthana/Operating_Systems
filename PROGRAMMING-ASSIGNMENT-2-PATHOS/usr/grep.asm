
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000037 	b	100 <grep+0x100>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	@ 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000016 	b	98 <grep+0x98>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b100c 	ldr	r1, [fp, #-12]
      4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000a 	beq	8c <grep+0x8c>
      60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      70:	e2832001 	add	r2, r3, #1
      74:	e51b300c 	ldr	r3, [fp, #-12]
      78:	e0423003 	sub	r3, r2, r3
      7c:	e1a02003 	mov	r2, r3
      80:	e51b100c 	ldr	r1, [fp, #-12]
      84:	e3a00001 	mov	r0, #1
      88:	eb0002b2 	bl	b58 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb000184 	bl	6b8 <strchr>
      a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ac:	e3530000 	cmp	r3, #0
      b0:	1affffe1 	bne	3c <grep+0x3c>
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e59f2080 	ldr	r2, [pc, #128]	@ 140 <grep+0x140>
      bc:	e1530002 	cmp	r3, r2
      c0:	1a000001 	bne	cc <grep+0xcc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b3008 	str	r3, [fp, #-8]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e3530000 	cmp	r3, #0
      d4:	da000009 	ble	100 <grep+0x100>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e59f205c 	ldr	r2, [pc, #92]	@ 140 <grep+0x140>
      e0:	e0433002 	sub	r3, r3, r2
      e4:	e51b2008 	ldr	r2, [fp, #-8]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e51b100c 	ldr	r1, [fp, #-12]
      f8:	e59f0040 	ldr	r0, [pc, #64]	@ 140 <grep+0x140>
      fc:	eb0001ef 	bl	8c0 <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb000284 	bl	b34 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	000016a8 	.word	0x000016a8

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e59f10c8 	ldr	r1, [pc, #200]	@ 234 <main+0xf0>
     168:	e3a00002 	mov	r0, #2
     16c:	eb000389 	bl	f98 <printf>
     170:	eb000254 	bl	ac8 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb00024a 	bl	ac8 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e3a01000 	mov	r1, #0
     1c0:	e1a00003 	mov	r0, r3
     1c4:	eb000287 	bl	be8 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e59f1040 	ldr	r1, [pc, #64]	@ 238 <main+0xf4>
     1f4:	e3a00001 	mov	r0, #1
     1f8:	eb000366 	bl	f98 <printf>
     1fc:	eb000231 	bl	ac8 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb000259 	bl	b7c <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb000224 	bl	ac8 <exit>
     234:	00001654 	.word	0x00001654
     238:	00001674 	.word	0x00001674

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	@ 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e51b100c 	ldr	r1, [fp, #-12]
     26c:	e1a00003 	mov	r0, r3
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b100c 	ldr	r1, [fp, #-12]
     280:	e51b0008 	ldr	r0, [fp, #-8]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000036 	b	3cc <matchhere+0x108>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	@ 0x2a
     300:	1a000009 	bne	32c <matchhere+0x68>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a00003 	mov	r0, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e51b200c 	ldr	r2, [fp, #-12]
     31c:	e1a01003 	mov	r1, r3
     320:	eb00002c 	bl	3d8 <matchstar>
     324:	e1a03000 	mov	r3, r0
     328:	ea000027 	b	3cc <matchhere+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530024 	cmp	r3, #36	@ 0x24
     338:	1a00000b 	bne	36c <matchhere+0xa8>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e3530000 	cmp	r3, #0
     34c:	1a000006 	bne	36c <matchhere+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	03a03001 	moveq	r3, #1
     360:	13a03000 	movne	r3, #0
     364:	e6ef3073 	uxtb	r3, r3
     368:	ea000017 	b	3cc <matchhere+0x108>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	0a000012 	beq	3c8 <matchhere+0x104>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e353002e 	cmp	r3, #46	@ 0x2e
     388:	0a000005 	beq	3a4 <matchhere+0xe0>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000008 	bne	3c8 <matchhere+0x104>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2832001 	add	r2, r3, #1
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e1a00002 	mov	r0, r2
     3bc:	ebffffc0 	bl	2c4 <matchhere>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	ea000000 	b	3cc <matchhere+0x108>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e24bd004 	sub	sp, fp, #4
     3d4:	e8bd8800 	pop	{fp, pc}

000003d8 <matchstar>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd010 	sub	sp, sp, #16
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e50b100c 	str	r1, [fp, #-12]
     3ec:	e50b2010 	str	r2, [fp, #-16]
     3f0:	e51b1010 	ldr	r1, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	ebffffb1 	bl	2c4 <matchhere>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	0a000001 	beq	410 <matchstar+0x38>
     408:	e3a03001 	mov	r3, #1
     40c:	ea00000f 	b	450 <matchstar+0x78>
     410:	e51b3010 	ldr	r3, [fp, #-16]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	0a00000a 	beq	44c <matchstar+0x74>
     420:	e51b3010 	ldr	r3, [fp, #-16]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2010 	str	r2, [fp, #-16]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e1530002 	cmp	r3, r2
     43c:	0affffeb 	beq	3f0 <matchstar+0x18>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e353002e 	cmp	r3, #46	@ 0x2e
     448:	0affffe8 	beq	3f0 <matchstar+0x18>
     44c:	e3a03000 	mov	r3, #0
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <strcpy>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b3010 	ldr	r3, [fp, #-16]
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e1a00000 	nop			@ (mov r0, r0)
     47c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     480:	e2823001 	add	r3, r2, #1
     484:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e2831001 	add	r1, r3, #1
     490:	e50b1010 	str	r1, [fp, #-16]
     494:	e5d22000 	ldrb	r2, [r2]
     498:	e5c32000 	strb	r2, [r3]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	1afffff4 	bne	47c <strcpy+0x20>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e28bd000 	add	sp, fp, #0
     4b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b8:	e12fff1e 	bx	lr

000004bc <strcmp>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd00c 	sub	sp, sp, #12
     4c8:	e50b0008 	str	r0, [fp, #-8]
     4cc:	e50b100c 	str	r1, [fp, #-12]
     4d0:	ea000005 	b	4ec <strcmp+0x30>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e2833001 	add	r3, r3, #1
     4dc:	e50b3008 	str	r3, [fp, #-8]
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e2833001 	add	r3, r3, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	0a000005 	beq	514 <strcmp+0x58>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e5d32000 	ldrb	r2, [r3]
     504:	e51b300c 	ldr	r3, [fp, #-12]
     508:	e5d33000 	ldrb	r3, [r3]
     50c:	e1520003 	cmp	r2, r3
     510:	0affffef 	beq	4d4 <strcmp+0x18>
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e1a02003 	mov	r2, r3
     520:	e51b300c 	ldr	r3, [fp, #-12]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e0423003 	sub	r3, r2, r3
     52c:	e1a00003 	mov	r0, r3
     530:	e28bd000 	add	sp, fp, #0
     534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <strlen>:
     53c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     540:	e28db000 	add	fp, sp, #0
     544:	e24dd014 	sub	sp, sp, #20
     548:	e50b0010 	str	r0, [fp, #-16]
     54c:	e3a03000 	mov	r3, #0
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	ea000002 	b	564 <strlen+0x28>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e51b2010 	ldr	r2, [fp, #-16]
     56c:	e0823003 	add	r3, r2, r3
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e3530000 	cmp	r3, #0
     578:	1afffff6 	bne	558 <strlen+0x1c>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memset>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd024 	sub	sp, sp, #36	@ 0x24
     59c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5a4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5b4:	e54b300d 	strb	r3, [fp, #-13]
     5b8:	e55b200d 	ldrb	r2, [fp, #-13]
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a03403 	lsl	r3, r3, #8
     5c4:	e0833002 	add	r3, r3, r2
     5c8:	e1a03803 	lsl	r3, r3, #16
     5cc:	e1a02003 	mov	r2, r3
     5d0:	e55b300d 	ldrb	r3, [fp, #-13]
     5d4:	e1a03403 	lsl	r3, r3, #8
     5d8:	e1822003 	orr	r2, r2, r3
     5dc:	e55b300d 	ldrb	r3, [fp, #-13]
     5e0:	e1823003 	orr	r3, r2, r3
     5e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5e8:	ea000008 	b	610 <memset+0x80>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e55b200d 	ldrb	r2, [fp, #-13]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5fc:	e2433001 	sub	r3, r3, #1
     600:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     614:	e3530000 	cmp	r3, #0
     618:	0a000003 	beq	62c <memset+0x9c>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e2033003 	and	r3, r3, #3
     624:	e3530000 	cmp	r3, #0
     628:	1affffef 	bne	5ec <memset+0x5c>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	ea000008 	b	65c <memset+0xcc>
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     640:	e5832000 	str	r2, [r3]
     644:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     648:	e2433004 	sub	r3, r3, #4
     64c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     650:	e51b300c 	ldr	r3, [fp, #-12]
     654:	e2833004 	add	r3, r3, #4
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     660:	e3530003 	cmp	r3, #3
     664:	8afffff3 	bhi	638 <memset+0xa8>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	ea000008 	b	698 <memset+0x108>
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e55b200d 	ldrb	r2, [fp, #-13]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     684:	e2433001 	sub	r3, r3, #1
     688:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2833001 	add	r3, r3, #1
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     69c:	e3530000 	cmp	r3, #0
     6a0:	1afffff3 	bne	674 <memset+0xe4>
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e28bd000 	add	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <strchr>:
     6b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6bc:	e28db000 	add	fp, sp, #0
     6c0:	e24dd00c 	sub	sp, sp, #12
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	e1a03001 	mov	r3, r1
     6cc:	e54b3009 	strb	r3, [fp, #-9]
     6d0:	ea000009 	b	6fc <strchr+0x44>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e55b2009 	ldrb	r2, [fp, #-9]
     6e0:	e1520003 	cmp	r2, r3
     6e4:	1a000001 	bne	6f0 <strchr+0x38>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	ea000007 	b	710 <strchr+0x58>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5d33000 	ldrb	r3, [r3]
     704:	e3530000 	cmp	r3, #0
     708:	1afffff1 	bne	6d4 <strchr+0x1c>
     70c:	e3a03000 	mov	r3, #0
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <gets>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd018 	sub	sp, sp, #24
     72c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     730:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     734:	e3a03000 	mov	r3, #0
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea000016 	b	79c <gets+0x7c>
     740:	e24b300d 	sub	r3, fp, #13
     744:	e3a02001 	mov	r2, #1
     748:	e1a01003 	mov	r1, r3
     74c:	e3a00000 	mov	r0, #0
     750:	eb0000f7 	bl	b34 <read>
     754:	e50b000c 	str	r0, [fp, #-12]
     758:	e51b300c 	ldr	r3, [fp, #-12]
     75c:	e3530000 	cmp	r3, #0
     760:	da000013 	ble	7b4 <gets+0x94>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2832001 	add	r2, r3, #1
     76c:	e50b2008 	str	r2, [fp, #-8]
     770:	e1a02003 	mov	r2, r3
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e0833002 	add	r3, r3, r2
     77c:	e55b200d 	ldrb	r2, [fp, #-13]
     780:	e5c32000 	strb	r2, [r3]
     784:	e55b300d 	ldrb	r3, [fp, #-13]
     788:	e353000a 	cmp	r3, #10
     78c:	0a000009 	beq	7b8 <gets+0x98>
     790:	e55b300d 	ldrb	r3, [fp, #-13]
     794:	e353000d 	cmp	r3, #13
     798:	0a000006 	beq	7b8 <gets+0x98>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7a8:	e1520003 	cmp	r2, r3
     7ac:	caffffe3 	bgt	740 <gets+0x20>
     7b0:	ea000000 	b	7b8 <gets+0x98>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     7c0:	e0823003 	add	r3, r2, r3
     7c4:	e3a02000 	mov	r2, #0
     7c8:	e5c32000 	strb	r2, [r3]
     7cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e24bd004 	sub	sp, fp, #4
     7d8:	e8bd8800 	pop	{fp, pc}

000007dc <stat>:
     7dc:	e92d4800 	push	{fp, lr}
     7e0:	e28db004 	add	fp, sp, #4
     7e4:	e24dd010 	sub	sp, sp, #16
     7e8:	e50b0010 	str	r0, [fp, #-16]
     7ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f0:	e3a01000 	mov	r1, #0
     7f4:	e51b0010 	ldr	r0, [fp, #-16]
     7f8:	eb0000fa 	bl	be8 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb00010c 	bl	c54 <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb0000d3 	bl	b7c <close>
     82c:	e51b300c 	ldr	r3, [fp, #-12]
     830:	e1a00003 	mov	r0, r3
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <atoi>:
     83c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     840:	e28db000 	add	fp, sp, #0
     844:	e24dd014 	sub	sp, sp, #20
     848:	e50b0010 	str	r0, [fp, #-16]
     84c:	e3a03000 	mov	r3, #0
     850:	e50b3008 	str	r3, [fp, #-8]
     854:	ea00000c 	b	88c <atoi+0x50>
     858:	e51b2008 	ldr	r2, [fp, #-8]
     85c:	e1a03002 	mov	r3, r2
     860:	e1a03103 	lsl	r3, r3, #2
     864:	e0833002 	add	r3, r3, r2
     868:	e1a03083 	lsl	r3, r3, #1
     86c:	e1a01003 	mov	r1, r3
     870:	e51b3010 	ldr	r3, [fp, #-16]
     874:	e2832001 	add	r2, r3, #1
     878:	e50b2010 	str	r2, [fp, #-16]
     87c:	e5d33000 	ldrb	r3, [r3]
     880:	e0813003 	add	r3, r1, r3
     884:	e2433030 	sub	r3, r3, #48	@ 0x30
     888:	e50b3008 	str	r3, [fp, #-8]
     88c:	e51b3010 	ldr	r3, [fp, #-16]
     890:	e5d33000 	ldrb	r3, [r3]
     894:	e353002f 	cmp	r3, #47	@ 0x2f
     898:	9a000003 	bls	8ac <atoi+0x70>
     89c:	e51b3010 	ldr	r3, [fp, #-16]
     8a0:	e5d33000 	ldrb	r3, [r3]
     8a4:	e3530039 	cmp	r3, #57	@ 0x39
     8a8:	9affffea 	bls	858 <atoi+0x1c>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e1a00003 	mov	r0, r3
     8b4:	e28bd000 	add	sp, fp, #0
     8b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <memmove>:
     8c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c4:	e28db000 	add	fp, sp, #0
     8c8:	e24dd01c 	sub	sp, sp, #28
     8cc:	e50b0010 	str	r0, [fp, #-16]
     8d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8d8:	e51b3010 	ldr	r3, [fp, #-16]
     8dc:	e50b3008 	str	r3, [fp, #-8]
     8e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8e4:	e50b300c 	str	r3, [fp, #-12]
     8e8:	ea000007 	b	90c <memmove+0x4c>
     8ec:	e51b200c 	ldr	r2, [fp, #-12]
     8f0:	e2823001 	add	r3, r2, #1
     8f4:	e50b300c 	str	r3, [fp, #-12]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e2831001 	add	r1, r3, #1
     900:	e50b1008 	str	r1, [fp, #-8]
     904:	e5d22000 	ldrb	r2, [r2]
     908:	e5c32000 	strb	r2, [r3]
     90c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     910:	e2432001 	sub	r2, r3, #1
     914:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     918:	e3530000 	cmp	r3, #0
     91c:	cafffff2 	bgt	8ec <memmove+0x2c>
     920:	e51b3010 	ldr	r3, [fp, #-16]
     924:	e1a00003 	mov	r0, r3
     928:	e28bd000 	add	sp, fp, #0
     92c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <strncmp>:
     934:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     938:	e28db000 	add	fp, sp, #0
     93c:	e24dd014 	sub	sp, sp, #20
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	e50b100c 	str	r1, [fp, #-12]
     948:	e50b2010 	str	r2, [fp, #-16]
     94c:	ea000008 	b	974 <strncmp+0x40>
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e2833001 	add	r3, r3, #1
     958:	e50b3008 	str	r3, [fp, #-8]
     95c:	e51b300c 	ldr	r3, [fp, #-12]
     960:	e2833001 	add	r3, r3, #1
     964:	e50b300c 	str	r3, [fp, #-12]
     968:	e51b3010 	ldr	r3, [fp, #-16]
     96c:	e2433001 	sub	r3, r3, #1
     970:	e50b3010 	str	r3, [fp, #-16]
     974:	e51b3010 	ldr	r3, [fp, #-16]
     978:	e3530000 	cmp	r3, #0
     97c:	da00000d 	ble	9b8 <strncmp+0x84>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e5d33000 	ldrb	r3, [r3]
     988:	e3530000 	cmp	r3, #0
     98c:	0a000009 	beq	9b8 <strncmp+0x84>
     990:	e51b300c 	ldr	r3, [fp, #-12]
     994:	e5d33000 	ldrb	r3, [r3]
     998:	e3530000 	cmp	r3, #0
     99c:	0a000005 	beq	9b8 <strncmp+0x84>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e5d32000 	ldrb	r2, [r3]
     9a8:	e51b300c 	ldr	r3, [fp, #-12]
     9ac:	e5d33000 	ldrb	r3, [r3]
     9b0:	e1520003 	cmp	r2, r3
     9b4:	0affffe5 	beq	950 <strncmp+0x1c>
     9b8:	e51b3010 	ldr	r3, [fp, #-16]
     9bc:	e3530000 	cmp	r3, #0
     9c0:	1a000001 	bne	9cc <strncmp+0x98>
     9c4:	e3a03000 	mov	r3, #0
     9c8:	ea000005 	b	9e4 <strncmp+0xb0>
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e5d33000 	ldrb	r3, [r3]
     9d4:	e1a02003 	mov	r2, r3
     9d8:	e51b300c 	ldr	r3, [fp, #-12]
     9dc:	e5d33000 	ldrb	r3, [r3]
     9e0:	e0423003 	sub	r3, r2, r3
     9e4:	e1a00003 	mov	r0, r3
     9e8:	e28bd000 	add	sp, fp, #0
     9ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <strncpy>:
     9f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9f8:	e28db000 	add	fp, sp, #0
     9fc:	e24dd01c 	sub	sp, sp, #28
     a00:	e50b0010 	str	r0, [fp, #-16]
     a04:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a08:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a0c:	e51b3010 	ldr	r3, [fp, #-16]
     a10:	e50b3008 	str	r3, [fp, #-8]
     a14:	ea00000a 	b	a44 <strncpy+0x50>
     a18:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     a1c:	e2823001 	add	r3, r2, #1
     a20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e2831001 	add	r1, r3, #1
     a2c:	e50b1008 	str	r1, [fp, #-8]
     a30:	e5d22000 	ldrb	r2, [r2]
     a34:	e5c32000 	strb	r2, [r3]
     a38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a3c:	e2433001 	sub	r3, r3, #1
     a40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a48:	e3530000 	cmp	r3, #0
     a4c:	da00000c 	ble	a84 <strncpy+0x90>
     a50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a54:	e5d33000 	ldrb	r3, [r3]
     a58:	e3530000 	cmp	r3, #0
     a5c:	1affffed 	bne	a18 <strncpy+0x24>
     a60:	ea000007 	b	a84 <strncpy+0x90>
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e2832001 	add	r2, r3, #1
     a6c:	e50b2008 	str	r2, [fp, #-8]
     a70:	e3a02000 	mov	r2, #0
     a74:	e5c32000 	strb	r2, [r3]
     a78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a7c:	e2433001 	sub	r3, r3, #1
     a80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a88:	e3530000 	cmp	r3, #0
     a8c:	cafffff4 	bgt	a64 <strncpy+0x70>
     a90:	e51b3010 	ldr	r3, [fp, #-16]
     a94:	e1a00003 	mov	r0, r3
     a98:	e28bd000 	add	sp, fp, #0
     a9c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <fork>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00001 	mov	r0, #1
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <exit>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00002 	mov	r0, #2
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <wait>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00003 	mov	r0, #3
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <pipe>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00004 	mov	r0, #4
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <read>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a00005 	mov	r0, #5
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <write>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00010 	mov	r0, #16
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <close>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a00015 	mov	r0, #21
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <kill>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a00006 	mov	r0, #6
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <exec>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a00007 	mov	r0, #7
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <open>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a0000f 	mov	r0, #15
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <mknod>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a00011 	mov	r0, #17
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <unlink>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a00012 	mov	r0, #18
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <fstat>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00008 	mov	r0, #8
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <link>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00013 	mov	r0, #19
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <mkdir>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00014 	mov	r0, #20
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <chdir>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a00009 	mov	r0, #9
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <dup>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a0000a 	mov	r0, #10
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <getpid>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a0000b 	mov	r0, #11
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <sbrk>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a0000c 	mov	r0, #12
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <sleep>:
     d50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d54:	e1a04003 	mov	r4, r3
     d58:	e1a03002 	mov	r3, r2
     d5c:	e1a02001 	mov	r2, r1
     d60:	e1a01000 	mov	r1, r0
     d64:	e3a0000d 	mov	r0, #13
     d68:	ef000000 	svc	0x00000000
     d6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d70:	e12fff1e 	bx	lr

00000d74 <uptime>:
     d74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d78:	e1a04003 	mov	r4, r3
     d7c:	e1a03002 	mov	r3, r2
     d80:	e1a02001 	mov	r2, r1
     d84:	e1a01000 	mov	r1, r0
     d88:	e3a0000e 	mov	r0, #14
     d8c:	ef000000 	svc	0x00000000
     d90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d94:	e12fff1e 	bx	lr

00000d98 <proclist>:
     d98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d9c:	e1a04003 	mov	r4, r3
     da0:	e1a03002 	mov	r3, r2
     da4:	e1a02001 	mov	r2, r1
     da8:	e1a01000 	mov	r1, r0
     dac:	e3a00016 	mov	r0, #22
     db0:	ef000000 	svc	0x00000000
     db4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db8:	e12fff1e 	bx	lr

00000dbc <settickets>:
     dbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc0:	e1a04003 	mov	r4, r3
     dc4:	e1a03002 	mov	r3, r2
     dc8:	e1a02001 	mov	r2, r1
     dcc:	e1a01000 	mov	r1, r0
     dd0:	e3a00017 	mov	r0, #23
     dd4:	ef000000 	svc	0x00000000
     dd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ddc:	e12fff1e 	bx	lr

00000de0 <srand>:
     de0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de4:	e1a04003 	mov	r4, r3
     de8:	e1a03002 	mov	r3, r2
     dec:	e1a02001 	mov	r2, r1
     df0:	e1a01000 	mov	r1, r0
     df4:	e3a00018 	mov	r0, #24
     df8:	ef000000 	svc	0x00000000
     dfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <getpinfo>:
     e04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e08:	e1a04003 	mov	r4, r3
     e0c:	e1a03002 	mov	r3, r2
     e10:	e1a02001 	mov	r2, r1
     e14:	e1a01000 	mov	r1, r0
     e18:	e3a00019 	mov	r0, #25
     e1c:	ef000000 	svc	0x00000000
     e20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e24:	e12fff1e 	bx	lr

00000e28 <putc>:
     e28:	e92d4800 	push	{fp, lr}
     e2c:	e28db004 	add	fp, sp, #4
     e30:	e24dd008 	sub	sp, sp, #8
     e34:	e50b0008 	str	r0, [fp, #-8]
     e38:	e1a03001 	mov	r3, r1
     e3c:	e54b3009 	strb	r3, [fp, #-9]
     e40:	e24b3009 	sub	r3, fp, #9
     e44:	e3a02001 	mov	r2, #1
     e48:	e1a01003 	mov	r1, r3
     e4c:	e51b0008 	ldr	r0, [fp, #-8]
     e50:	ebffff40 	bl	b58 <write>
     e54:	e1a00000 	nop			@ (mov r0, r0)
     e58:	e24bd004 	sub	sp, fp, #4
     e5c:	e8bd8800 	pop	{fp, pc}

00000e60 <printint>:
     e60:	e92d4800 	push	{fp, lr}
     e64:	e28db004 	add	fp, sp, #4
     e68:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e6c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e70:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e74:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e78:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e7c:	e3a03000 	mov	r3, #0
     e80:	e50b300c 	str	r3, [fp, #-12]
     e84:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e88:	e3530000 	cmp	r3, #0
     e8c:	0a000008 	beq	eb4 <printint+0x54>
     e90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e94:	e3530000 	cmp	r3, #0
     e98:	aa000005 	bge	eb4 <printint+0x54>
     e9c:	e3a03001 	mov	r3, #1
     ea0:	e50b300c 	str	r3, [fp, #-12]
     ea4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ea8:	e2633000 	rsb	r3, r3, #0
     eac:	e50b3010 	str	r3, [fp, #-16]
     eb0:	ea000001 	b	ebc <printint+0x5c>
     eb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eb8:	e50b3010 	str	r3, [fp, #-16]
     ebc:	e3a03000 	mov	r3, #0
     ec0:	e50b3008 	str	r3, [fp, #-8]
     ec4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ec8:	e51b3010 	ldr	r3, [fp, #-16]
     ecc:	e1a01002 	mov	r1, r2
     ed0:	e1a00003 	mov	r0, r3
     ed4:	eb0001d5 	bl	1630 <__aeabi_uidivmod>
     ed8:	e1a03001 	mov	r3, r1
     edc:	e1a01003 	mov	r1, r3
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e2832001 	add	r2, r3, #1
     ee8:	e50b2008 	str	r2, [fp, #-8]
     eec:	e59f20a0 	ldr	r2, [pc, #160]	@ f94 <printint+0x134>
     ef0:	e7d22001 	ldrb	r2, [r2, r1]
     ef4:	e2433004 	sub	r3, r3, #4
     ef8:	e083300b 	add	r3, r3, fp
     efc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f00:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f04:	e1a01003 	mov	r1, r3
     f08:	e51b0010 	ldr	r0, [fp, #-16]
     f0c:	eb00018a 	bl	153c <__udivsi3>
     f10:	e1a03000 	mov	r3, r0
     f14:	e50b3010 	str	r3, [fp, #-16]
     f18:	e51b3010 	ldr	r3, [fp, #-16]
     f1c:	e3530000 	cmp	r3, #0
     f20:	1affffe7 	bne	ec4 <printint+0x64>
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e3530000 	cmp	r3, #0
     f2c:	0a00000e 	beq	f6c <printint+0x10c>
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e2832001 	add	r2, r3, #1
     f38:	e50b2008 	str	r2, [fp, #-8]
     f3c:	e2433004 	sub	r3, r3, #4
     f40:	e083300b 	add	r3, r3, fp
     f44:	e3a0202d 	mov	r2, #45	@ 0x2d
     f48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f4c:	ea000006 	b	f6c <printint+0x10c>
     f50:	e24b2020 	sub	r2, fp, #32
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e0823003 	add	r3, r2, r3
     f5c:	e5d33000 	ldrb	r3, [r3]
     f60:	e1a01003 	mov	r1, r3
     f64:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f68:	ebffffae 	bl	e28 <putc>
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e2433001 	sub	r3, r3, #1
     f74:	e50b3008 	str	r3, [fp, #-8]
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e3530000 	cmp	r3, #0
     f80:	aafffff2 	bge	f50 <printint+0xf0>
     f84:	e1a00000 	nop			@ (mov r0, r0)
     f88:	e1a00000 	nop			@ (mov r0, r0)
     f8c:	e24bd004 	sub	sp, fp, #4
     f90:	e8bd8800 	pop	{fp, pc}
     f94:	00001694 	.word	0x00001694

00000f98 <printf>:
     f98:	e92d000e 	push	{r1, r2, r3}
     f9c:	e92d4800 	push	{fp, lr}
     fa0:	e28db004 	add	fp, sp, #4
     fa4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fa8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fac:	e3a03000 	mov	r3, #0
     fb0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fb4:	e28b3008 	add	r3, fp, #8
     fb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e3a03000 	mov	r3, #0
     fc0:	e50b3010 	str	r3, [fp, #-16]
     fc4:	ea000074 	b	119c <printf+0x204>
     fc8:	e59b2004 	ldr	r2, [fp, #4]
     fcc:	e51b3010 	ldr	r3, [fp, #-16]
     fd0:	e0823003 	add	r3, r2, r3
     fd4:	e5d33000 	ldrb	r3, [r3]
     fd8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fe0:	e3530000 	cmp	r3, #0
     fe4:	1a00000b 	bne	1018 <printf+0x80>
     fe8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fec:	e3530025 	cmp	r3, #37	@ 0x25
     ff0:	1a000002 	bne	1000 <printf+0x68>
     ff4:	e3a03025 	mov	r3, #37	@ 0x25
     ff8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ffc:	ea000063 	b	1190 <printf+0x1f8>
    1000:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1004:	e6ef3073 	uxtb	r3, r3
    1008:	e1a01003 	mov	r1, r3
    100c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1010:	ebffff84 	bl	e28 <putc>
    1014:	ea00005d 	b	1190 <printf+0x1f8>
    1018:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    101c:	e3530025 	cmp	r3, #37	@ 0x25
    1020:	1a00005a 	bne	1190 <printf+0x1f8>
    1024:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1028:	e3530064 	cmp	r3, #100	@ 0x64
    102c:	1a00000a 	bne	105c <printf+0xc4>
    1030:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1034:	e5933000 	ldr	r3, [r3]
    1038:	e1a01003 	mov	r1, r3
    103c:	e3a03001 	mov	r3, #1
    1040:	e3a0200a 	mov	r2, #10
    1044:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1048:	ebffff84 	bl	e60 <printint>
    104c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1050:	e2833004 	add	r3, r3, #4
    1054:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1058:	ea00004a 	b	1188 <printf+0x1f0>
    105c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1060:	e3530078 	cmp	r3, #120	@ 0x78
    1064:	0a000002 	beq	1074 <printf+0xdc>
    1068:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    106c:	e3530070 	cmp	r3, #112	@ 0x70
    1070:	1a00000a 	bne	10a0 <printf+0x108>
    1074:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e1a01003 	mov	r1, r3
    1080:	e3a03000 	mov	r3, #0
    1084:	e3a02010 	mov	r2, #16
    1088:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    108c:	ebffff73 	bl	e60 <printint>
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e2833004 	add	r3, r3, #4
    1098:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    109c:	ea000039 	b	1188 <printf+0x1f0>
    10a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a4:	e3530073 	cmp	r3, #115	@ 0x73
    10a8:	1a000018 	bne	1110 <printf+0x178>
    10ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	e5933000 	ldr	r3, [r3]
    10b4:	e50b300c 	str	r3, [fp, #-12]
    10b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	e2833004 	add	r3, r3, #4
    10c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e51b300c 	ldr	r3, [fp, #-12]
    10c8:	e3530000 	cmp	r3, #0
    10cc:	1a00000a 	bne	10fc <printf+0x164>
    10d0:	e59f30f4 	ldr	r3, [pc, #244]	@ 11cc <printf+0x234>
    10d4:	e50b300c 	str	r3, [fp, #-12]
    10d8:	ea000007 	b	10fc <printf+0x164>
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5d33000 	ldrb	r3, [r3]
    10e4:	e1a01003 	mov	r1, r3
    10e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10ec:	ebffff4d 	bl	e28 <putc>
    10f0:	e51b300c 	ldr	r3, [fp, #-12]
    10f4:	e2833001 	add	r3, r3, #1
    10f8:	e50b300c 	str	r3, [fp, #-12]
    10fc:	e51b300c 	ldr	r3, [fp, #-12]
    1100:	e5d33000 	ldrb	r3, [r3]
    1104:	e3530000 	cmp	r3, #0
    1108:	1afffff3 	bne	10dc <printf+0x144>
    110c:	ea00001d 	b	1188 <printf+0x1f0>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e3530063 	cmp	r3, #99	@ 0x63
    1118:	1a000009 	bne	1144 <printf+0x1ac>
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e6ef3073 	uxtb	r3, r3
    1128:	e1a01003 	mov	r1, r3
    112c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1130:	ebffff3c 	bl	e28 <putc>
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e2833004 	add	r3, r3, #4
    113c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1140:	ea000010 	b	1188 <printf+0x1f0>
    1144:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1148:	e3530025 	cmp	r3, #37	@ 0x25
    114c:	1a000005 	bne	1168 <printf+0x1d0>
    1150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e6ef3073 	uxtb	r3, r3
    1158:	e1a01003 	mov	r1, r3
    115c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1160:	ebffff30 	bl	e28 <putc>
    1164:	ea000007 	b	1188 <printf+0x1f0>
    1168:	e3a01025 	mov	r1, #37	@ 0x25
    116c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1170:	ebffff2c 	bl	e28 <putc>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e6ef3073 	uxtb	r3, r3
    117c:	e1a01003 	mov	r1, r3
    1180:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1184:	ebffff27 	bl	e28 <putc>
    1188:	e3a03000 	mov	r3, #0
    118c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1190:	e51b3010 	ldr	r3, [fp, #-16]
    1194:	e2833001 	add	r3, r3, #1
    1198:	e50b3010 	str	r3, [fp, #-16]
    119c:	e59b2004 	ldr	r2, [fp, #4]
    11a0:	e51b3010 	ldr	r3, [fp, #-16]
    11a4:	e0823003 	add	r3, r2, r3
    11a8:	e5d33000 	ldrb	r3, [r3]
    11ac:	e3530000 	cmp	r3, #0
    11b0:	1affff84 	bne	fc8 <printf+0x30>
    11b4:	e1a00000 	nop			@ (mov r0, r0)
    11b8:	e1a00000 	nop			@ (mov r0, r0)
    11bc:	e24bd004 	sub	sp, fp, #4
    11c0:	e8bd4800 	pop	{fp, lr}
    11c4:	e28dd00c 	add	sp, sp, #12
    11c8:	e12fff1e 	bx	lr
    11cc:	0000168c 	.word	0x0000168c

000011d0 <free>:
    11d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11d4:	e28db000 	add	fp, sp, #0
    11d8:	e24dd014 	sub	sp, sp, #20
    11dc:	e50b0010 	str	r0, [fp, #-16]
    11e0:	e51b3010 	ldr	r3, [fp, #-16]
    11e4:	e2433008 	sub	r3, r3, #8
    11e8:	e50b300c 	str	r3, [fp, #-12]
    11ec:	e59f3154 	ldr	r3, [pc, #340]	@ 1348 <free+0x178>
    11f0:	e5933000 	ldr	r3, [r3]
    11f4:	e50b3008 	str	r3, [fp, #-8]
    11f8:	ea000010 	b	1240 <free+0x70>
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e5933000 	ldr	r3, [r3]
    1204:	e51b2008 	ldr	r2, [fp, #-8]
    1208:	e1520003 	cmp	r2, r3
    120c:	3a000008 	bcc	1234 <free+0x64>
    1210:	e51b200c 	ldr	r2, [fp, #-12]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e1520003 	cmp	r2, r3
    121c:	8a000010 	bhi	1264 <free+0x94>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e5933000 	ldr	r3, [r3]
    1228:	e51b200c 	ldr	r2, [fp, #-12]
    122c:	e1520003 	cmp	r2, r3
    1230:	3a00000b 	bcc	1264 <free+0x94>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e50b3008 	str	r3, [fp, #-8]
    1240:	e51b200c 	ldr	r2, [fp, #-12]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e1520003 	cmp	r2, r3
    124c:	9affffea 	bls	11fc <free+0x2c>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e1520003 	cmp	r2, r3
    1260:	2affffe5 	bcs	11fc <free+0x2c>
    1264:	e51b300c 	ldr	r3, [fp, #-12]
    1268:	e5933004 	ldr	r3, [r3, #4]
    126c:	e1a03183 	lsl	r3, r3, #3
    1270:	e51b200c 	ldr	r2, [fp, #-12]
    1274:	e0822003 	add	r2, r2, r3
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933000 	ldr	r3, [r3]
    1280:	e1520003 	cmp	r2, r3
    1284:	1a00000d 	bne	12c0 <free+0xf0>
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5932004 	ldr	r2, [r3, #4]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e5933004 	ldr	r3, [r3, #4]
    129c:	e0822003 	add	r2, r2, r3
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e5832004 	str	r2, [r3, #4]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e5932000 	ldr	r2, [r3]
    12b4:	e51b300c 	ldr	r3, [fp, #-12]
    12b8:	e5832000 	str	r2, [r3]
    12bc:	ea000003 	b	12d0 <free+0x100>
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5932000 	ldr	r2, [r3]
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e5832000 	str	r2, [r3]
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e5933004 	ldr	r3, [r3, #4]
    12d8:	e1a03183 	lsl	r3, r3, #3
    12dc:	e51b2008 	ldr	r2, [fp, #-8]
    12e0:	e0823003 	add	r3, r2, r3
    12e4:	e51b200c 	ldr	r2, [fp, #-12]
    12e8:	e1520003 	cmp	r2, r3
    12ec:	1a00000b 	bne	1320 <free+0x150>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5932004 	ldr	r2, [r3, #4]
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5933004 	ldr	r3, [r3, #4]
    1300:	e0822003 	add	r2, r2, r3
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5832004 	str	r2, [r3, #4]
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5932000 	ldr	r2, [r3]
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5832000 	str	r2, [r3]
    131c:	ea000002 	b	132c <free+0x15c>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e51b200c 	ldr	r2, [fp, #-12]
    1328:	e5832000 	str	r2, [r3]
    132c:	e59f2014 	ldr	r2, [pc, #20]	@ 1348 <free+0x178>
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5823000 	str	r3, [r2]
    1338:	e1a00000 	nop			@ (mov r0, r0)
    133c:	e28bd000 	add	sp, fp, #0
    1340:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1344:	e12fff1e 	bx	lr
    1348:	00001ab0 	.word	0x00001ab0

0000134c <morecore>:
    134c:	e92d4800 	push	{fp, lr}
    1350:	e28db004 	add	fp, sp, #4
    1354:	e24dd010 	sub	sp, sp, #16
    1358:	e50b0010 	str	r0, [fp, #-16]
    135c:	e51b3010 	ldr	r3, [fp, #-16]
    1360:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1364:	2a000001 	bcs	1370 <morecore+0x24>
    1368:	e3a03a01 	mov	r3, #4096	@ 0x1000
    136c:	e50b3010 	str	r3, [fp, #-16]
    1370:	e51b3010 	ldr	r3, [fp, #-16]
    1374:	e1a03183 	lsl	r3, r3, #3
    1378:	e1a00003 	mov	r0, r3
    137c:	ebfffe6a 	bl	d2c <sbrk>
    1380:	e50b0008 	str	r0, [fp, #-8]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e3730001 	cmn	r3, #1
    138c:	1a000001 	bne	1398 <morecore+0x4c>
    1390:	e3a03000 	mov	r3, #0
    1394:	ea00000a 	b	13c4 <morecore+0x78>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e50b300c 	str	r3, [fp, #-12]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e51b2010 	ldr	r2, [fp, #-16]
    13a8:	e5832004 	str	r2, [r3, #4]
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e2833008 	add	r3, r3, #8
    13b4:	e1a00003 	mov	r0, r3
    13b8:	ebffff84 	bl	11d0 <free>
    13bc:	e59f300c 	ldr	r3, [pc, #12]	@ 13d0 <morecore+0x84>
    13c0:	e5933000 	ldr	r3, [r3]
    13c4:	e1a00003 	mov	r0, r3
    13c8:	e24bd004 	sub	sp, fp, #4
    13cc:	e8bd8800 	pop	{fp, pc}
    13d0:	00001ab0 	.word	0x00001ab0

000013d4 <malloc>:
    13d4:	e92d4800 	push	{fp, lr}
    13d8:	e28db004 	add	fp, sp, #4
    13dc:	e24dd018 	sub	sp, sp, #24
    13e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e8:	e2833007 	add	r3, r3, #7
    13ec:	e1a031a3 	lsr	r3, r3, #3
    13f0:	e2833001 	add	r3, r3, #1
    13f4:	e50b3010 	str	r3, [fp, #-16]
    13f8:	e59f3134 	ldr	r3, [pc, #308]	@ 1534 <malloc+0x160>
    13fc:	e5933000 	ldr	r3, [r3]
    1400:	e50b300c 	str	r3, [fp, #-12]
    1404:	e51b300c 	ldr	r3, [fp, #-12]
    1408:	e3530000 	cmp	r3, #0
    140c:	1a00000b 	bne	1440 <malloc+0x6c>
    1410:	e59f3120 	ldr	r3, [pc, #288]	@ 1538 <malloc+0x164>
    1414:	e50b300c 	str	r3, [fp, #-12]
    1418:	e59f2114 	ldr	r2, [pc, #276]	@ 1534 <malloc+0x160>
    141c:	e51b300c 	ldr	r3, [fp, #-12]
    1420:	e5823000 	str	r3, [r2]
    1424:	e59f3108 	ldr	r3, [pc, #264]	@ 1534 <malloc+0x160>
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e59f2104 	ldr	r2, [pc, #260]	@ 1538 <malloc+0x164>
    1430:	e5823000 	str	r3, [r2]
    1434:	e59f30fc 	ldr	r3, [pc, #252]	@ 1538 <malloc+0x164>
    1438:	e3a02000 	mov	r2, #0
    143c:	e5832004 	str	r2, [r3, #4]
    1440:	e51b300c 	ldr	r3, [fp, #-12]
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e50b3008 	str	r3, [fp, #-8]
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e5933004 	ldr	r3, [r3, #4]
    1454:	e51b2010 	ldr	r2, [fp, #-16]
    1458:	e1520003 	cmp	r2, r3
    145c:	8a00001e 	bhi	14dc <malloc+0x108>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5933004 	ldr	r3, [r3, #4]
    1468:	e51b2010 	ldr	r2, [fp, #-16]
    146c:	e1520003 	cmp	r2, r3
    1470:	1a000004 	bne	1488 <malloc+0xb4>
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e5932000 	ldr	r2, [r3]
    147c:	e51b300c 	ldr	r3, [fp, #-12]
    1480:	e5832000 	str	r2, [r3]
    1484:	ea00000e 	b	14c4 <malloc+0xf0>
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5932004 	ldr	r2, [r3, #4]
    1490:	e51b3010 	ldr	r3, [fp, #-16]
    1494:	e0422003 	sub	r2, r2, r3
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5832004 	str	r2, [r3, #4]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933004 	ldr	r3, [r3, #4]
    14a8:	e1a03183 	lsl	r3, r3, #3
    14ac:	e51b2008 	ldr	r2, [fp, #-8]
    14b0:	e0823003 	add	r3, r2, r3
    14b4:	e50b3008 	str	r3, [fp, #-8]
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e51b2010 	ldr	r2, [fp, #-16]
    14c0:	e5832004 	str	r2, [r3, #4]
    14c4:	e59f2068 	ldr	r2, [pc, #104]	@ 1534 <malloc+0x160>
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5823000 	str	r3, [r2]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e2833008 	add	r3, r3, #8
    14d8:	ea000012 	b	1528 <malloc+0x154>
    14dc:	e59f3050 	ldr	r3, [pc, #80]	@ 1534 <malloc+0x160>
    14e0:	e5933000 	ldr	r3, [r3]
    14e4:	e51b2008 	ldr	r2, [fp, #-8]
    14e8:	e1520003 	cmp	r2, r3
    14ec:	1a000007 	bne	1510 <malloc+0x13c>
    14f0:	e51b0010 	ldr	r0, [fp, #-16]
    14f4:	ebffff94 	bl	134c <morecore>
    14f8:	e50b0008 	str	r0, [fp, #-8]
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e3530000 	cmp	r3, #0
    1504:	1a000001 	bne	1510 <malloc+0x13c>
    1508:	e3a03000 	mov	r3, #0
    150c:	ea000005 	b	1528 <malloc+0x154>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e50b300c 	str	r3, [fp, #-12]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e5933000 	ldr	r3, [r3]
    1520:	e50b3008 	str	r3, [fp, #-8]
    1524:	eaffffc8 	b	144c <malloc+0x78>
    1528:	e1a00003 	mov	r0, r3
    152c:	e24bd004 	sub	sp, fp, #4
    1530:	e8bd8800 	pop	{fp, pc}
    1534:	00001ab0 	.word	0x00001ab0
    1538:	00001aa8 	.word	0x00001aa8

0000153c <__udivsi3>:
    153c:	e2512001 	subs	r2, r1, #1
    1540:	012fff1e 	bxeq	lr
    1544:	3a000036 	bcc	1624 <__udivsi3+0xe8>
    1548:	e1500001 	cmp	r0, r1
    154c:	9a000022 	bls	15dc <__udivsi3+0xa0>
    1550:	e1110002 	tst	r1, r2
    1554:	0a000023 	beq	15e8 <__udivsi3+0xac>
    1558:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    155c:	01a01181 	lsleq	r1, r1, #3
    1560:	03a03008 	moveq	r3, #8
    1564:	13a03001 	movne	r3, #1
    1568:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    156c:	31510000 	cmpcc	r1, r0
    1570:	31a01201 	lslcc	r1, r1, #4
    1574:	31a03203 	lslcc	r3, r3, #4
    1578:	3afffffa 	bcc	1568 <__udivsi3+0x2c>
    157c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1580:	31510000 	cmpcc	r1, r0
    1584:	31a01081 	lslcc	r1, r1, #1
    1588:	31a03083 	lslcc	r3, r3, #1
    158c:	3afffffa 	bcc	157c <__udivsi3+0x40>
    1590:	e3a02000 	mov	r2, #0
    1594:	e1500001 	cmp	r0, r1
    1598:	20400001 	subcs	r0, r0, r1
    159c:	21822003 	orrcs	r2, r2, r3
    15a0:	e15000a1 	cmp	r0, r1, lsr #1
    15a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    15a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15ac:	e1500121 	cmp	r0, r1, lsr #2
    15b0:	20400121 	subcs	r0, r0, r1, lsr #2
    15b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    15b8:	e15001a1 	cmp	r0, r1, lsr #3
    15bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    15c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15c4:	e3500000 	cmp	r0, #0
    15c8:	11b03223 	lsrsne	r3, r3, #4
    15cc:	11a01221 	lsrne	r1, r1, #4
    15d0:	1affffef 	bne	1594 <__udivsi3+0x58>
    15d4:	e1a00002 	mov	r0, r2
    15d8:	e12fff1e 	bx	lr
    15dc:	03a00001 	moveq	r0, #1
    15e0:	13a00000 	movne	r0, #0
    15e4:	e12fff1e 	bx	lr
    15e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    15ec:	21a01821 	lsrcs	r1, r1, #16
    15f0:	23a02010 	movcs	r2, #16
    15f4:	33a02000 	movcc	r2, #0
    15f8:	e3510c01 	cmp	r1, #256	@ 0x100
    15fc:	21a01421 	lsrcs	r1, r1, #8
    1600:	22822008 	addcs	r2, r2, #8
    1604:	e3510010 	cmp	r1, #16
    1608:	21a01221 	lsrcs	r1, r1, #4
    160c:	22822004 	addcs	r2, r2, #4
    1610:	e3510004 	cmp	r1, #4
    1614:	82822003 	addhi	r2, r2, #3
    1618:	908220a1 	addls	r2, r2, r1, lsr #1
    161c:	e1a00230 	lsr	r0, r0, r2
    1620:	e12fff1e 	bx	lr
    1624:	e3500000 	cmp	r0, #0
    1628:	13e00000 	mvnne	r0, #0
    162c:	ea000007 	b	1650 <__aeabi_idiv0>

00001630 <__aeabi_uidivmod>:
    1630:	e3510000 	cmp	r1, #0
    1634:	0afffffa 	beq	1624 <__udivsi3+0xe8>
    1638:	e92d4003 	push	{r0, r1, lr}
    163c:	ebffffbe 	bl	153c <__udivsi3>
    1640:	e8bd4006 	pop	{r1, r2, lr}
    1644:	e0030092 	mul	r3, r2, r0
    1648:	e0411003 	sub	r1, r1, r3
    164c:	e12fff1e 	bx	lr

00001650 <__aeabi_idiv0>:
    1650:	e12fff1e 	bx	lr
