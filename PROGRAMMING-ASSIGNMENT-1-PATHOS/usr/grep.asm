
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
     140:	0000163c 	.word	0x0000163c

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
     16c:	eb00036e 	bl	f2c <printf>
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
     1f8:	eb00034b 	bl	f2c <printf>
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
     234:	000015e8 	.word	0x000015e8
     238:	00001608 	.word	0x00001608

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

00000dbc <putc>:
     dbc:	e92d4800 	push	{fp, lr}
     dc0:	e28db004 	add	fp, sp, #4
     dc4:	e24dd008 	sub	sp, sp, #8
     dc8:	e50b0008 	str	r0, [fp, #-8]
     dcc:	e1a03001 	mov	r3, r1
     dd0:	e54b3009 	strb	r3, [fp, #-9]
     dd4:	e24b3009 	sub	r3, fp, #9
     dd8:	e3a02001 	mov	r2, #1
     ddc:	e1a01003 	mov	r1, r3
     de0:	e51b0008 	ldr	r0, [fp, #-8]
     de4:	ebffff5b 	bl	b58 <write>
     de8:	e1a00000 	nop			@ (mov r0, r0)
     dec:	e24bd004 	sub	sp, fp, #4
     df0:	e8bd8800 	pop	{fp, pc}

00000df4 <printint>:
     df4:	e92d4800 	push	{fp, lr}
     df8:	e28db004 	add	fp, sp, #4
     dfc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e00:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e04:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e08:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e0c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e10:	e3a03000 	mov	r3, #0
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e1c:	e3530000 	cmp	r3, #0
     e20:	0a000008 	beq	e48 <printint+0x54>
     e24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e28:	e3530000 	cmp	r3, #0
     e2c:	aa000005 	bge	e48 <printint+0x54>
     e30:	e3a03001 	mov	r3, #1
     e34:	e50b300c 	str	r3, [fp, #-12]
     e38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e3c:	e2633000 	rsb	r3, r3, #0
     e40:	e50b3010 	str	r3, [fp, #-16]
     e44:	ea000001 	b	e50 <printint+0x5c>
     e48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e4c:	e50b3010 	str	r3, [fp, #-16]
     e50:	e3a03000 	mov	r3, #0
     e54:	e50b3008 	str	r3, [fp, #-8]
     e58:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e1a01002 	mov	r1, r2
     e64:	e1a00003 	mov	r0, r3
     e68:	eb0001d5 	bl	15c4 <__aeabi_uidivmod>
     e6c:	e1a03001 	mov	r3, r1
     e70:	e1a01003 	mov	r1, r3
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e2832001 	add	r2, r3, #1
     e7c:	e50b2008 	str	r2, [fp, #-8]
     e80:	e59f20a0 	ldr	r2, [pc, #160]	@ f28 <printint+0x134>
     e84:	e7d22001 	ldrb	r2, [r2, r1]
     e88:	e2433004 	sub	r3, r3, #4
     e8c:	e083300b 	add	r3, r3, fp
     e90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e94:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e98:	e1a01003 	mov	r1, r3
     e9c:	e51b0010 	ldr	r0, [fp, #-16]
     ea0:	eb00018a 	bl	14d0 <__udivsi3>
     ea4:	e1a03000 	mov	r3, r0
     ea8:	e50b3010 	str	r3, [fp, #-16]
     eac:	e51b3010 	ldr	r3, [fp, #-16]
     eb0:	e3530000 	cmp	r3, #0
     eb4:	1affffe7 	bne	e58 <printint+0x64>
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e3530000 	cmp	r3, #0
     ec0:	0a00000e 	beq	f00 <printint+0x10c>
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e2832001 	add	r2, r3, #1
     ecc:	e50b2008 	str	r2, [fp, #-8]
     ed0:	e2433004 	sub	r3, r3, #4
     ed4:	e083300b 	add	r3, r3, fp
     ed8:	e3a0202d 	mov	r2, #45	@ 0x2d
     edc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ee0:	ea000006 	b	f00 <printint+0x10c>
     ee4:	e24b2020 	sub	r2, fp, #32
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e0823003 	add	r3, r2, r3
     ef0:	e5d33000 	ldrb	r3, [r3]
     ef4:	e1a01003 	mov	r1, r3
     ef8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     efc:	ebffffae 	bl	dbc <putc>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e2433001 	sub	r3, r3, #1
     f08:	e50b3008 	str	r3, [fp, #-8]
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e3530000 	cmp	r3, #0
     f14:	aafffff2 	bge	ee4 <printint+0xf0>
     f18:	e1a00000 	nop			@ (mov r0, r0)
     f1c:	e1a00000 	nop			@ (mov r0, r0)
     f20:	e24bd004 	sub	sp, fp, #4
     f24:	e8bd8800 	pop	{fp, pc}
     f28:	00001628 	.word	0x00001628

00000f2c <printf>:
     f2c:	e92d000e 	push	{r1, r2, r3}
     f30:	e92d4800 	push	{fp, lr}
     f34:	e28db004 	add	fp, sp, #4
     f38:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f3c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f40:	e3a03000 	mov	r3, #0
     f44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f48:	e28b3008 	add	r3, fp, #8
     f4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f50:	e3a03000 	mov	r3, #0
     f54:	e50b3010 	str	r3, [fp, #-16]
     f58:	ea000074 	b	1130 <printf+0x204>
     f5c:	e59b2004 	ldr	r2, [fp, #4]
     f60:	e51b3010 	ldr	r3, [fp, #-16]
     f64:	e0823003 	add	r3, r2, r3
     f68:	e5d33000 	ldrb	r3, [r3]
     f6c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f74:	e3530000 	cmp	r3, #0
     f78:	1a00000b 	bne	fac <printf+0x80>
     f7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e3530025 	cmp	r3, #37	@ 0x25
     f84:	1a000002 	bne	f94 <printf+0x68>
     f88:	e3a03025 	mov	r3, #37	@ 0x25
     f8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f90:	ea000063 	b	1124 <printf+0x1f8>
     f94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f98:	e6ef3073 	uxtb	r3, r3
     f9c:	e1a01003 	mov	r1, r3
     fa0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fa4:	ebffff84 	bl	dbc <putc>
     fa8:	ea00005d 	b	1124 <printf+0x1f8>
     fac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fb0:	e3530025 	cmp	r3, #37	@ 0x25
     fb4:	1a00005a 	bne	1124 <printf+0x1f8>
     fb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fbc:	e3530064 	cmp	r3, #100	@ 0x64
     fc0:	1a00000a 	bne	ff0 <printf+0xc4>
     fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e1a01003 	mov	r1, r3
     fd0:	e3a03001 	mov	r3, #1
     fd4:	e3a0200a 	mov	r2, #10
     fd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fdc:	ebffff84 	bl	df4 <printint>
     fe0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe4:	e2833004 	add	r3, r3, #4
     fe8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fec:	ea00004a 	b	111c <printf+0x1f0>
     ff0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff4:	e3530078 	cmp	r3, #120	@ 0x78
     ff8:	0a000002 	beq	1008 <printf+0xdc>
     ffc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1000:	e3530070 	cmp	r3, #112	@ 0x70
    1004:	1a00000a 	bne	1034 <printf+0x108>
    1008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    100c:	e5933000 	ldr	r3, [r3]
    1010:	e1a01003 	mov	r1, r3
    1014:	e3a03000 	mov	r3, #0
    1018:	e3a02010 	mov	r2, #16
    101c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1020:	ebffff73 	bl	df4 <printint>
    1024:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1028:	e2833004 	add	r3, r3, #4
    102c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1030:	ea000039 	b	111c <printf+0x1f0>
    1034:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1038:	e3530073 	cmp	r3, #115	@ 0x73
    103c:	1a000018 	bne	10a4 <printf+0x178>
    1040:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1044:	e5933000 	ldr	r3, [r3]
    1048:	e50b300c 	str	r3, [fp, #-12]
    104c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1050:	e2833004 	add	r3, r3, #4
    1054:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e51b300c 	ldr	r3, [fp, #-12]
    105c:	e3530000 	cmp	r3, #0
    1060:	1a00000a 	bne	1090 <printf+0x164>
    1064:	e59f30f4 	ldr	r3, [pc, #244]	@ 1160 <printf+0x234>
    1068:	e50b300c 	str	r3, [fp, #-12]
    106c:	ea000007 	b	1090 <printf+0x164>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5d33000 	ldrb	r3, [r3]
    1078:	e1a01003 	mov	r1, r3
    107c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1080:	ebffff4d 	bl	dbc <putc>
    1084:	e51b300c 	ldr	r3, [fp, #-12]
    1088:	e2833001 	add	r3, r3, #1
    108c:	e50b300c 	str	r3, [fp, #-12]
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5d33000 	ldrb	r3, [r3]
    1098:	e3530000 	cmp	r3, #0
    109c:	1afffff3 	bne	1070 <printf+0x144>
    10a0:	ea00001d 	b	111c <printf+0x1f0>
    10a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a8:	e3530063 	cmp	r3, #99	@ 0x63
    10ac:	1a000009 	bne	10d8 <printf+0x1ac>
    10b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e6ef3073 	uxtb	r3, r3
    10bc:	e1a01003 	mov	r1, r3
    10c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c4:	ebffff3c 	bl	dbc <putc>
    10c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10cc:	e2833004 	add	r3, r3, #4
    10d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	ea000010 	b	111c <printf+0x1f0>
    10d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10dc:	e3530025 	cmp	r3, #37	@ 0x25
    10e0:	1a000005 	bne	10fc <printf+0x1d0>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e6ef3073 	uxtb	r3, r3
    10ec:	e1a01003 	mov	r1, r3
    10f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f4:	ebffff30 	bl	dbc <putc>
    10f8:	ea000007 	b	111c <printf+0x1f0>
    10fc:	e3a01025 	mov	r1, #37	@ 0x25
    1100:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1104:	ebffff2c 	bl	dbc <putc>
    1108:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    110c:	e6ef3073 	uxtb	r3, r3
    1110:	e1a01003 	mov	r1, r3
    1114:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1118:	ebffff27 	bl	dbc <putc>
    111c:	e3a03000 	mov	r3, #0
    1120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1124:	e51b3010 	ldr	r3, [fp, #-16]
    1128:	e2833001 	add	r3, r3, #1
    112c:	e50b3010 	str	r3, [fp, #-16]
    1130:	e59b2004 	ldr	r2, [fp, #4]
    1134:	e51b3010 	ldr	r3, [fp, #-16]
    1138:	e0823003 	add	r3, r2, r3
    113c:	e5d33000 	ldrb	r3, [r3]
    1140:	e3530000 	cmp	r3, #0
    1144:	1affff84 	bne	f5c <printf+0x30>
    1148:	e1a00000 	nop			@ (mov r0, r0)
    114c:	e1a00000 	nop			@ (mov r0, r0)
    1150:	e24bd004 	sub	sp, fp, #4
    1154:	e8bd4800 	pop	{fp, lr}
    1158:	e28dd00c 	add	sp, sp, #12
    115c:	e12fff1e 	bx	lr
    1160:	00001620 	.word	0x00001620

00001164 <free>:
    1164:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1168:	e28db000 	add	fp, sp, #0
    116c:	e24dd014 	sub	sp, sp, #20
    1170:	e50b0010 	str	r0, [fp, #-16]
    1174:	e51b3010 	ldr	r3, [fp, #-16]
    1178:	e2433008 	sub	r3, r3, #8
    117c:	e50b300c 	str	r3, [fp, #-12]
    1180:	e59f3154 	ldr	r3, [pc, #340]	@ 12dc <free+0x178>
    1184:	e5933000 	ldr	r3, [r3]
    1188:	e50b3008 	str	r3, [fp, #-8]
    118c:	ea000010 	b	11d4 <free+0x70>
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e51b2008 	ldr	r2, [fp, #-8]
    119c:	e1520003 	cmp	r2, r3
    11a0:	3a000008 	bcc	11c8 <free+0x64>
    11a4:	e51b200c 	ldr	r2, [fp, #-12]
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	8a000010 	bhi	11f8 <free+0x94>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933000 	ldr	r3, [r3]
    11bc:	e51b200c 	ldr	r2, [fp, #-12]
    11c0:	e1520003 	cmp	r2, r3
    11c4:	3a00000b 	bcc	11f8 <free+0x94>
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933000 	ldr	r3, [r3]
    11d0:	e50b3008 	str	r3, [fp, #-8]
    11d4:	e51b200c 	ldr	r2, [fp, #-12]
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e1520003 	cmp	r2, r3
    11e0:	9affffea 	bls	1190 <free+0x2c>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e5933000 	ldr	r3, [r3]
    11ec:	e51b200c 	ldr	r2, [fp, #-12]
    11f0:	e1520003 	cmp	r2, r3
    11f4:	2affffe5 	bcs	1190 <free+0x2c>
    11f8:	e51b300c 	ldr	r3, [fp, #-12]
    11fc:	e5933004 	ldr	r3, [r3, #4]
    1200:	e1a03183 	lsl	r3, r3, #3
    1204:	e51b200c 	ldr	r2, [fp, #-12]
    1208:	e0822003 	add	r2, r2, r3
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5933000 	ldr	r3, [r3]
    1214:	e1520003 	cmp	r2, r3
    1218:	1a00000d 	bne	1254 <free+0xf0>
    121c:	e51b300c 	ldr	r3, [fp, #-12]
    1220:	e5932004 	ldr	r2, [r3, #4]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e5933004 	ldr	r3, [r3, #4]
    1230:	e0822003 	add	r2, r2, r3
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e5832004 	str	r2, [r3, #4]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5933000 	ldr	r3, [r3]
    1244:	e5932000 	ldr	r2, [r3]
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5832000 	str	r2, [r3]
    1250:	ea000003 	b	1264 <free+0x100>
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5932000 	ldr	r2, [r3]
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e5832000 	str	r2, [r3]
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5933004 	ldr	r3, [r3, #4]
    126c:	e1a03183 	lsl	r3, r3, #3
    1270:	e51b2008 	ldr	r2, [fp, #-8]
    1274:	e0823003 	add	r3, r2, r3
    1278:	e51b200c 	ldr	r2, [fp, #-12]
    127c:	e1520003 	cmp	r2, r3
    1280:	1a00000b 	bne	12b4 <free+0x150>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5932004 	ldr	r2, [r3, #4]
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5933004 	ldr	r3, [r3, #4]
    1294:	e0822003 	add	r2, r2, r3
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5832004 	str	r2, [r3, #4]
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e5932000 	ldr	r2, [r3]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5832000 	str	r2, [r3]
    12b0:	ea000002 	b	12c0 <free+0x15c>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e51b200c 	ldr	r2, [fp, #-12]
    12bc:	e5832000 	str	r2, [r3]
    12c0:	e59f2014 	ldr	r2, [pc, #20]	@ 12dc <free+0x178>
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5823000 	str	r3, [r2]
    12cc:	e1a00000 	nop			@ (mov r0, r0)
    12d0:	e28bd000 	add	sp, fp, #0
    12d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12d8:	e12fff1e 	bx	lr
    12dc:	00001a44 	.word	0x00001a44

000012e0 <morecore>:
    12e0:	e92d4800 	push	{fp, lr}
    12e4:	e28db004 	add	fp, sp, #4
    12e8:	e24dd010 	sub	sp, sp, #16
    12ec:	e50b0010 	str	r0, [fp, #-16]
    12f0:	e51b3010 	ldr	r3, [fp, #-16]
    12f4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12f8:	2a000001 	bcs	1304 <morecore+0x24>
    12fc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1300:	e50b3010 	str	r3, [fp, #-16]
    1304:	e51b3010 	ldr	r3, [fp, #-16]
    1308:	e1a03183 	lsl	r3, r3, #3
    130c:	e1a00003 	mov	r0, r3
    1310:	ebfffe85 	bl	d2c <sbrk>
    1314:	e50b0008 	str	r0, [fp, #-8]
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e3730001 	cmn	r3, #1
    1320:	1a000001 	bne	132c <morecore+0x4c>
    1324:	e3a03000 	mov	r3, #0
    1328:	ea00000a 	b	1358 <morecore+0x78>
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e50b300c 	str	r3, [fp, #-12]
    1334:	e51b300c 	ldr	r3, [fp, #-12]
    1338:	e51b2010 	ldr	r2, [fp, #-16]
    133c:	e5832004 	str	r2, [r3, #4]
    1340:	e51b300c 	ldr	r3, [fp, #-12]
    1344:	e2833008 	add	r3, r3, #8
    1348:	e1a00003 	mov	r0, r3
    134c:	ebffff84 	bl	1164 <free>
    1350:	e59f300c 	ldr	r3, [pc, #12]	@ 1364 <morecore+0x84>
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e1a00003 	mov	r0, r3
    135c:	e24bd004 	sub	sp, fp, #4
    1360:	e8bd8800 	pop	{fp, pc}
    1364:	00001a44 	.word	0x00001a44

00001368 <malloc>:
    1368:	e92d4800 	push	{fp, lr}
    136c:	e28db004 	add	fp, sp, #4
    1370:	e24dd018 	sub	sp, sp, #24
    1374:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1378:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    137c:	e2833007 	add	r3, r3, #7
    1380:	e1a031a3 	lsr	r3, r3, #3
    1384:	e2833001 	add	r3, r3, #1
    1388:	e50b3010 	str	r3, [fp, #-16]
    138c:	e59f3134 	ldr	r3, [pc, #308]	@ 14c8 <malloc+0x160>
    1390:	e5933000 	ldr	r3, [r3]
    1394:	e50b300c 	str	r3, [fp, #-12]
    1398:	e51b300c 	ldr	r3, [fp, #-12]
    139c:	e3530000 	cmp	r3, #0
    13a0:	1a00000b 	bne	13d4 <malloc+0x6c>
    13a4:	e59f3120 	ldr	r3, [pc, #288]	@ 14cc <malloc+0x164>
    13a8:	e50b300c 	str	r3, [fp, #-12]
    13ac:	e59f2114 	ldr	r2, [pc, #276]	@ 14c8 <malloc+0x160>
    13b0:	e51b300c 	ldr	r3, [fp, #-12]
    13b4:	e5823000 	str	r3, [r2]
    13b8:	e59f3108 	ldr	r3, [pc, #264]	@ 14c8 <malloc+0x160>
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e59f2104 	ldr	r2, [pc, #260]	@ 14cc <malloc+0x164>
    13c4:	e5823000 	str	r3, [r2]
    13c8:	e59f30fc 	ldr	r3, [pc, #252]	@ 14cc <malloc+0x164>
    13cc:	e3a02000 	mov	r2, #0
    13d0:	e5832004 	str	r2, [r3, #4]
    13d4:	e51b300c 	ldr	r3, [fp, #-12]
    13d8:	e5933000 	ldr	r3, [r3]
    13dc:	e50b3008 	str	r3, [fp, #-8]
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e5933004 	ldr	r3, [r3, #4]
    13e8:	e51b2010 	ldr	r2, [fp, #-16]
    13ec:	e1520003 	cmp	r2, r3
    13f0:	8a00001e 	bhi	1470 <malloc+0x108>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5933004 	ldr	r3, [r3, #4]
    13fc:	e51b2010 	ldr	r2, [fp, #-16]
    1400:	e1520003 	cmp	r2, r3
    1404:	1a000004 	bne	141c <malloc+0xb4>
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5932000 	ldr	r2, [r3]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5832000 	str	r2, [r3]
    1418:	ea00000e 	b	1458 <malloc+0xf0>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5932004 	ldr	r2, [r3, #4]
    1424:	e51b3010 	ldr	r3, [fp, #-16]
    1428:	e0422003 	sub	r2, r2, r3
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5832004 	str	r2, [r3, #4]
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e5933004 	ldr	r3, [r3, #4]
    143c:	e1a03183 	lsl	r3, r3, #3
    1440:	e51b2008 	ldr	r2, [fp, #-8]
    1444:	e0823003 	add	r3, r2, r3
    1448:	e50b3008 	str	r3, [fp, #-8]
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e51b2010 	ldr	r2, [fp, #-16]
    1454:	e5832004 	str	r2, [r3, #4]
    1458:	e59f2068 	ldr	r2, [pc, #104]	@ 14c8 <malloc+0x160>
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5823000 	str	r3, [r2]
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e2833008 	add	r3, r3, #8
    146c:	ea000012 	b	14bc <malloc+0x154>
    1470:	e59f3050 	ldr	r3, [pc, #80]	@ 14c8 <malloc+0x160>
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e51b2008 	ldr	r2, [fp, #-8]
    147c:	e1520003 	cmp	r2, r3
    1480:	1a000007 	bne	14a4 <malloc+0x13c>
    1484:	e51b0010 	ldr	r0, [fp, #-16]
    1488:	ebffff94 	bl	12e0 <morecore>
    148c:	e50b0008 	str	r0, [fp, #-8]
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e3530000 	cmp	r3, #0
    1498:	1a000001 	bne	14a4 <malloc+0x13c>
    149c:	e3a03000 	mov	r3, #0
    14a0:	ea000005 	b	14bc <malloc+0x154>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e50b300c 	str	r3, [fp, #-12]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e50b3008 	str	r3, [fp, #-8]
    14b8:	eaffffc8 	b	13e0 <malloc+0x78>
    14bc:	e1a00003 	mov	r0, r3
    14c0:	e24bd004 	sub	sp, fp, #4
    14c4:	e8bd8800 	pop	{fp, pc}
    14c8:	00001a44 	.word	0x00001a44
    14cc:	00001a3c 	.word	0x00001a3c

000014d0 <__udivsi3>:
    14d0:	e2512001 	subs	r2, r1, #1
    14d4:	012fff1e 	bxeq	lr
    14d8:	3a000036 	bcc	15b8 <__udivsi3+0xe8>
    14dc:	e1500001 	cmp	r0, r1
    14e0:	9a000022 	bls	1570 <__udivsi3+0xa0>
    14e4:	e1110002 	tst	r1, r2
    14e8:	0a000023 	beq	157c <__udivsi3+0xac>
    14ec:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14f0:	01a01181 	lsleq	r1, r1, #3
    14f4:	03a03008 	moveq	r3, #8
    14f8:	13a03001 	movne	r3, #1
    14fc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1500:	31510000 	cmpcc	r1, r0
    1504:	31a01201 	lslcc	r1, r1, #4
    1508:	31a03203 	lslcc	r3, r3, #4
    150c:	3afffffa 	bcc	14fc <__udivsi3+0x2c>
    1510:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1514:	31510000 	cmpcc	r1, r0
    1518:	31a01081 	lslcc	r1, r1, #1
    151c:	31a03083 	lslcc	r3, r3, #1
    1520:	3afffffa 	bcc	1510 <__udivsi3+0x40>
    1524:	e3a02000 	mov	r2, #0
    1528:	e1500001 	cmp	r0, r1
    152c:	20400001 	subcs	r0, r0, r1
    1530:	21822003 	orrcs	r2, r2, r3
    1534:	e15000a1 	cmp	r0, r1, lsr #1
    1538:	204000a1 	subcs	r0, r0, r1, lsr #1
    153c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1540:	e1500121 	cmp	r0, r1, lsr #2
    1544:	20400121 	subcs	r0, r0, r1, lsr #2
    1548:	21822123 	orrcs	r2, r2, r3, lsr #2
    154c:	e15001a1 	cmp	r0, r1, lsr #3
    1550:	204001a1 	subcs	r0, r0, r1, lsr #3
    1554:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1558:	e3500000 	cmp	r0, #0
    155c:	11b03223 	lsrsne	r3, r3, #4
    1560:	11a01221 	lsrne	r1, r1, #4
    1564:	1affffef 	bne	1528 <__udivsi3+0x58>
    1568:	e1a00002 	mov	r0, r2
    156c:	e12fff1e 	bx	lr
    1570:	03a00001 	moveq	r0, #1
    1574:	13a00000 	movne	r0, #0
    1578:	e12fff1e 	bx	lr
    157c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1580:	21a01821 	lsrcs	r1, r1, #16
    1584:	23a02010 	movcs	r2, #16
    1588:	33a02000 	movcc	r2, #0
    158c:	e3510c01 	cmp	r1, #256	@ 0x100
    1590:	21a01421 	lsrcs	r1, r1, #8
    1594:	22822008 	addcs	r2, r2, #8
    1598:	e3510010 	cmp	r1, #16
    159c:	21a01221 	lsrcs	r1, r1, #4
    15a0:	22822004 	addcs	r2, r2, #4
    15a4:	e3510004 	cmp	r1, #4
    15a8:	82822003 	addhi	r2, r2, #3
    15ac:	908220a1 	addls	r2, r2, r1, lsr #1
    15b0:	e1a00230 	lsr	r0, r0, r2
    15b4:	e12fff1e 	bx	lr
    15b8:	e3500000 	cmp	r0, #0
    15bc:	13e00000 	mvnne	r0, #0
    15c0:	ea000007 	b	15e4 <__aeabi_idiv0>

000015c4 <__aeabi_uidivmod>:
    15c4:	e3510000 	cmp	r1, #0
    15c8:	0afffffa 	beq	15b8 <__udivsi3+0xe8>
    15cc:	e92d4003 	push	{r0, r1, lr}
    15d0:	ebffffbe 	bl	14d0 <__udivsi3>
    15d4:	e8bd4006 	pop	{r1, r2, lr}
    15d8:	e0030092 	mul	r3, r2, r0
    15dc:	e0411003 	sub	r1, r1, r3
    15e0:	e12fff1e 	bx	lr

000015e4 <__aeabi_idiv0>:
    15e4:	e12fff1e 	bx	lr
