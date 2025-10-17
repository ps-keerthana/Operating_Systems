
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
      88:	eb0002e1 	bl	c14 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb0001b3 	bl	774 <strchr>
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
      fc:	eb00021e 	bl	97c <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb0002b3 	bl	bf0 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001790 	.word	0x00001790

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
     16c:	eb0003c3 	bl	1080 <printf>
     170:	eb000283 	bl	b84 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb000279 	bl	b84 <exit>
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
     1c4:	eb0002b6 	bl	ca4 <open>
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
     1f8:	eb0003a0 	bl	1080 <printf>
     1fc:	eb000260 	bl	b84 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb000288 	bl	c38 <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb000253 	bl	b84 <exit>
     234:	0000173c 	.word	0x0000173c
     238:	0000175c 	.word	0x0000175c

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

0000045c <pg_pte>:
     45c:	e92d4800 	push	{fp, lr}
     460:	e28db004 	add	fp, sp, #4
     464:	e24dd008 	sub	sp, sp, #8
     468:	e50b0008 	str	r0, [fp, #-8]
     46c:	e51b1008 	ldr	r1, [fp, #-8]
     470:	e3a00065 	mov	r0, #101	@ 0x65
     474:	eb0002a3 	bl	f08 <syscall>
     478:	e1a03000 	mov	r3, r0
     47c:	e1a00003 	mov	r0, r3
     480:	e24bd004 	sub	sp, fp, #4
     484:	e8bd8800 	pop	{fp, pc}

00000488 <pg_pa>:
     488:	e92d4800 	push	{fp, lr}
     48c:	e28db004 	add	fp, sp, #4
     490:	e24dd008 	sub	sp, sp, #8
     494:	e50b0008 	str	r0, [fp, #-8]
     498:	e51b1008 	ldr	r1, [fp, #-8]
     49c:	e3a00066 	mov	r0, #102	@ 0x66
     4a0:	eb000298 	bl	f08 <syscall>
     4a4:	e1a03000 	mov	r3, r0
     4a8:	e1a00003 	mov	r0, r3
     4ac:	e24bd004 	sub	sp, fp, #4
     4b0:	e8bd8800 	pop	{fp, pc}

000004b4 <pg_flags>:
     4b4:	e92d4800 	push	{fp, lr}
     4b8:	e28db004 	add	fp, sp, #4
     4bc:	e24dd008 	sub	sp, sp, #8
     4c0:	e50b0008 	str	r0, [fp, #-8]
     4c4:	e51b1008 	ldr	r1, [fp, #-8]
     4c8:	e3a00067 	mov	r0, #103	@ 0x67
     4cc:	eb00028d 	bl	f08 <syscall>
     4d0:	e1a03000 	mov	r3, r0
     4d4:	e1a00003 	mov	r0, r3
     4d8:	e24bd004 	sub	sp, fp, #4
     4dc:	e8bd8800 	pop	{fp, pc}

000004e0 <kpt>:
     4e0:	e92d4800 	push	{fp, lr}
     4e4:	e28db004 	add	fp, sp, #4
     4e8:	e3a00068 	mov	r0, #104	@ 0x68
     4ec:	eb000285 	bl	f08 <syscall>
     4f0:	e1a03000 	mov	r3, r0
     4f4:	e1a00003 	mov	r0, r3
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <ugetpid>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e3a00069 	mov	r0, #105	@ 0x69
     508:	eb00027e 	bl	f08 <syscall>
     50c:	e1a03000 	mov	r3, r0
     510:	e1a00003 	mov	r0, r3
     514:	e8bd8800 	pop	{fp, pc}

00000518 <strcpy>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd014 	sub	sp, sp, #20
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b3010 	ldr	r3, [fp, #-16]
     530:	e50b3008 	str	r3, [fp, #-8]
     534:	e1a00000 	nop			@ (mov r0, r0)
     538:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     53c:	e2823001 	add	r3, r2, #1
     540:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e2831001 	add	r1, r3, #1
     54c:	e50b1010 	str	r1, [fp, #-16]
     550:	e5d22000 	ldrb	r2, [r2]
     554:	e5c32000 	strb	r2, [r3]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e3530000 	cmp	r3, #0
     560:	1afffff4 	bne	538 <strcpy+0x20>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e1a00003 	mov	r0, r3
     56c:	e28bd000 	add	sp, fp, #0
     570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     574:	e12fff1e 	bx	lr

00000578 <strcmp>:
     578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     57c:	e28db000 	add	fp, sp, #0
     580:	e24dd00c 	sub	sp, sp, #12
     584:	e50b0008 	str	r0, [fp, #-8]
     588:	e50b100c 	str	r1, [fp, #-12]
     58c:	ea000005 	b	5a8 <strcmp+0x30>
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	e2833001 	add	r3, r3, #1
     598:	e50b3008 	str	r3, [fp, #-8]
     59c:	e51b300c 	ldr	r3, [fp, #-12]
     5a0:	e2833001 	add	r3, r3, #1
     5a4:	e50b300c 	str	r3, [fp, #-12]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e5d33000 	ldrb	r3, [r3]
     5b0:	e3530000 	cmp	r3, #0
     5b4:	0a000005 	beq	5d0 <strcmp+0x58>
     5b8:	e51b3008 	ldr	r3, [fp, #-8]
     5bc:	e5d32000 	ldrb	r2, [r3]
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e5d33000 	ldrb	r3, [r3]
     5c8:	e1520003 	cmp	r2, r3
     5cc:	0affffef 	beq	590 <strcmp+0x18>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e5d33000 	ldrb	r3, [r3]
     5d8:	e1a02003 	mov	r2, r3
     5dc:	e51b300c 	ldr	r3, [fp, #-12]
     5e0:	e5d33000 	ldrb	r3, [r3]
     5e4:	e0423003 	sub	r3, r2, r3
     5e8:	e1a00003 	mov	r0, r3
     5ec:	e28bd000 	add	sp, fp, #0
     5f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <strlen>:
     5f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5fc:	e28db000 	add	fp, sp, #0
     600:	e24dd014 	sub	sp, sp, #20
     604:	e50b0010 	str	r0, [fp, #-16]
     608:	e3a03000 	mov	r3, #0
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	ea000002 	b	620 <strlen+0x28>
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e2833001 	add	r3, r3, #1
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e51b2010 	ldr	r2, [fp, #-16]
     628:	e0823003 	add	r3, r2, r3
     62c:	e5d33000 	ldrb	r3, [r3]
     630:	e3530000 	cmp	r3, #0
     634:	1afffff6 	bne	614 <strlen+0x1c>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e1a00003 	mov	r0, r3
     640:	e28bd000 	add	sp, fp, #0
     644:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <memset>:
     64c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     650:	e28db000 	add	fp, sp, #0
     654:	e24dd024 	sub	sp, sp, #36	@ 0x24
     658:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     65c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     660:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     668:	e50b3008 	str	r3, [fp, #-8]
     66c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     670:	e54b300d 	strb	r3, [fp, #-13]
     674:	e55b200d 	ldrb	r2, [fp, #-13]
     678:	e1a03002 	mov	r3, r2
     67c:	e1a03403 	lsl	r3, r3, #8
     680:	e0833002 	add	r3, r3, r2
     684:	e1a03803 	lsl	r3, r3, #16
     688:	e1a02003 	mov	r2, r3
     68c:	e55b300d 	ldrb	r3, [fp, #-13]
     690:	e1a03403 	lsl	r3, r3, #8
     694:	e1822003 	orr	r2, r2, r3
     698:	e55b300d 	ldrb	r3, [fp, #-13]
     69c:	e1823003 	orr	r3, r2, r3
     6a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6a4:	ea000008 	b	6cc <memset+0x80>
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e55b200d 	ldrb	r2, [fp, #-13]
     6b0:	e5c32000 	strb	r2, [r3]
     6b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6b8:	e2433001 	sub	r3, r3, #1
     6bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e2833001 	add	r3, r3, #1
     6c8:	e50b3008 	str	r3, [fp, #-8]
     6cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6d0:	e3530000 	cmp	r3, #0
     6d4:	0a000003 	beq	6e8 <memset+0x9c>
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e2033003 	and	r3, r3, #3
     6e0:	e3530000 	cmp	r3, #0
     6e4:	1affffef 	bne	6a8 <memset+0x5c>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e50b300c 	str	r3, [fp, #-12]
     6f0:	ea000008 	b	718 <memset+0xcc>
     6f4:	e51b300c 	ldr	r3, [fp, #-12]
     6f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6fc:	e5832000 	str	r2, [r3]
     700:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     704:	e2433004 	sub	r3, r3, #4
     708:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     70c:	e51b300c 	ldr	r3, [fp, #-12]
     710:	e2833004 	add	r3, r3, #4
     714:	e50b300c 	str	r3, [fp, #-12]
     718:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     71c:	e3530003 	cmp	r3, #3
     720:	8afffff3 	bhi	6f4 <memset+0xa8>
     724:	e51b300c 	ldr	r3, [fp, #-12]
     728:	e50b3008 	str	r3, [fp, #-8]
     72c:	ea000008 	b	754 <memset+0x108>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e55b200d 	ldrb	r2, [fp, #-13]
     738:	e5c32000 	strb	r2, [r3]
     73c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     740:	e2433001 	sub	r3, r3, #1
     744:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e2833001 	add	r3, r3, #1
     750:	e50b3008 	str	r3, [fp, #-8]
     754:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     758:	e3530000 	cmp	r3, #0
     75c:	1afffff3 	bne	730 <memset+0xe4>
     760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     764:	e1a00003 	mov	r0, r3
     768:	e28bd000 	add	sp, fp, #0
     76c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <strchr>:
     774:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     778:	e28db000 	add	fp, sp, #0
     77c:	e24dd00c 	sub	sp, sp, #12
     780:	e50b0008 	str	r0, [fp, #-8]
     784:	e1a03001 	mov	r3, r1
     788:	e54b3009 	strb	r3, [fp, #-9]
     78c:	ea000009 	b	7b8 <strchr+0x44>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5d33000 	ldrb	r3, [r3]
     798:	e55b2009 	ldrb	r2, [fp, #-9]
     79c:	e1520003 	cmp	r2, r3
     7a0:	1a000001 	bne	7ac <strchr+0x38>
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	ea000007 	b	7cc <strchr+0x58>
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e2833001 	add	r3, r3, #1
     7b4:	e50b3008 	str	r3, [fp, #-8]
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e5d33000 	ldrb	r3, [r3]
     7c0:	e3530000 	cmp	r3, #0
     7c4:	1afffff1 	bne	790 <strchr+0x1c>
     7c8:	e3a03000 	mov	r3, #0
     7cc:	e1a00003 	mov	r0, r3
     7d0:	e28bd000 	add	sp, fp, #0
     7d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <gets>:
     7dc:	e92d4800 	push	{fp, lr}
     7e0:	e28db004 	add	fp, sp, #4
     7e4:	e24dd018 	sub	sp, sp, #24
     7e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     7ec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     7f0:	e3a03000 	mov	r3, #0
     7f4:	e50b3008 	str	r3, [fp, #-8]
     7f8:	ea000016 	b	858 <gets+0x7c>
     7fc:	e24b300d 	sub	r3, fp, #13
     800:	e3a02001 	mov	r2, #1
     804:	e1a01003 	mov	r1, r3
     808:	e3a00000 	mov	r0, #0
     80c:	eb0000f7 	bl	bf0 <read>
     810:	e50b000c 	str	r0, [fp, #-12]
     814:	e51b300c 	ldr	r3, [fp, #-12]
     818:	e3530000 	cmp	r3, #0
     81c:	da000013 	ble	870 <gets+0x94>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e2832001 	add	r2, r3, #1
     828:	e50b2008 	str	r2, [fp, #-8]
     82c:	e1a02003 	mov	r2, r3
     830:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     834:	e0833002 	add	r3, r3, r2
     838:	e55b200d 	ldrb	r2, [fp, #-13]
     83c:	e5c32000 	strb	r2, [r3]
     840:	e55b300d 	ldrb	r3, [fp, #-13]
     844:	e353000a 	cmp	r3, #10
     848:	0a000009 	beq	874 <gets+0x98>
     84c:	e55b300d 	ldrb	r3, [fp, #-13]
     850:	e353000d 	cmp	r3, #13
     854:	0a000006 	beq	874 <gets+0x98>
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e2833001 	add	r3, r3, #1
     860:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     864:	e1520003 	cmp	r2, r3
     868:	caffffe3 	bgt	7fc <gets+0x20>
     86c:	ea000000 	b	874 <gets+0x98>
     870:	e1a00000 	nop			@ (mov r0, r0)
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     87c:	e0823003 	add	r3, r2, r3
     880:	e3a02000 	mov	r2, #0
     884:	e5c32000 	strb	r2, [r3]
     888:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     88c:	e1a00003 	mov	r0, r3
     890:	e24bd004 	sub	sp, fp, #4
     894:	e8bd8800 	pop	{fp, pc}

00000898 <stat>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd010 	sub	sp, sp, #16
     8a4:	e50b0010 	str	r0, [fp, #-16]
     8a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8ac:	e3a01000 	mov	r1, #0
     8b0:	e51b0010 	ldr	r0, [fp, #-16]
     8b4:	eb0000fa 	bl	ca4 <open>
     8b8:	e50b0008 	str	r0, [fp, #-8]
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	aa000001 	bge	8d0 <stat+0x38>
     8c8:	e3e03000 	mvn	r3, #0
     8cc:	ea000006 	b	8ec <stat+0x54>
     8d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8d4:	e51b0008 	ldr	r0, [fp, #-8]
     8d8:	eb00010c 	bl	d10 <fstat>
     8dc:	e50b000c 	str	r0, [fp, #-12]
     8e0:	e51b0008 	ldr	r0, [fp, #-8]
     8e4:	eb0000d3 	bl	c38 <close>
     8e8:	e51b300c 	ldr	r3, [fp, #-12]
     8ec:	e1a00003 	mov	r0, r3
     8f0:	e24bd004 	sub	sp, fp, #4
     8f4:	e8bd8800 	pop	{fp, pc}

000008f8 <atoi>:
     8f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8fc:	e28db000 	add	fp, sp, #0
     900:	e24dd014 	sub	sp, sp, #20
     904:	e50b0010 	str	r0, [fp, #-16]
     908:	e3a03000 	mov	r3, #0
     90c:	e50b3008 	str	r3, [fp, #-8]
     910:	ea00000c 	b	948 <atoi+0x50>
     914:	e51b2008 	ldr	r2, [fp, #-8]
     918:	e1a03002 	mov	r3, r2
     91c:	e1a03103 	lsl	r3, r3, #2
     920:	e0833002 	add	r3, r3, r2
     924:	e1a03083 	lsl	r3, r3, #1
     928:	e1a01003 	mov	r1, r3
     92c:	e51b3010 	ldr	r3, [fp, #-16]
     930:	e2832001 	add	r2, r3, #1
     934:	e50b2010 	str	r2, [fp, #-16]
     938:	e5d33000 	ldrb	r3, [r3]
     93c:	e0813003 	add	r3, r1, r3
     940:	e2433030 	sub	r3, r3, #48	@ 0x30
     944:	e50b3008 	str	r3, [fp, #-8]
     948:	e51b3010 	ldr	r3, [fp, #-16]
     94c:	e5d33000 	ldrb	r3, [r3]
     950:	e353002f 	cmp	r3, #47	@ 0x2f
     954:	9a000003 	bls	968 <atoi+0x70>
     958:	e51b3010 	ldr	r3, [fp, #-16]
     95c:	e5d33000 	ldrb	r3, [r3]
     960:	e3530039 	cmp	r3, #57	@ 0x39
     964:	9affffea 	bls	914 <atoi+0x1c>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e1a00003 	mov	r0, r3
     970:	e28bd000 	add	sp, fp, #0
     974:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <memmove>:
     97c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     980:	e28db000 	add	fp, sp, #0
     984:	e24dd01c 	sub	sp, sp, #28
     988:	e50b0010 	str	r0, [fp, #-16]
     98c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     990:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     994:	e51b3010 	ldr	r3, [fp, #-16]
     998:	e50b3008 	str	r3, [fp, #-8]
     99c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9a0:	e50b300c 	str	r3, [fp, #-12]
     9a4:	ea000007 	b	9c8 <memmove+0x4c>
     9a8:	e51b200c 	ldr	r2, [fp, #-12]
     9ac:	e2823001 	add	r3, r2, #1
     9b0:	e50b300c 	str	r3, [fp, #-12]
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e2831001 	add	r1, r3, #1
     9bc:	e50b1008 	str	r1, [fp, #-8]
     9c0:	e5d22000 	ldrb	r2, [r2]
     9c4:	e5c32000 	strb	r2, [r3]
     9c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9cc:	e2432001 	sub	r2, r3, #1
     9d0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9d4:	e3530000 	cmp	r3, #0
     9d8:	cafffff2 	bgt	9a8 <memmove+0x2c>
     9dc:	e51b3010 	ldr	r3, [fp, #-16]
     9e0:	e1a00003 	mov	r0, r3
     9e4:	e28bd000 	add	sp, fp, #0
     9e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <strncmp>:
     9f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9f4:	e28db000 	add	fp, sp, #0
     9f8:	e24dd014 	sub	sp, sp, #20
     9fc:	e50b0008 	str	r0, [fp, #-8]
     a00:	e50b100c 	str	r1, [fp, #-12]
     a04:	e50b2010 	str	r2, [fp, #-16]
     a08:	ea000008 	b	a30 <strncmp+0x40>
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e2833001 	add	r3, r3, #1
     a14:	e50b3008 	str	r3, [fp, #-8]
     a18:	e51b300c 	ldr	r3, [fp, #-12]
     a1c:	e2833001 	add	r3, r3, #1
     a20:	e50b300c 	str	r3, [fp, #-12]
     a24:	e51b3010 	ldr	r3, [fp, #-16]
     a28:	e2433001 	sub	r3, r3, #1
     a2c:	e50b3010 	str	r3, [fp, #-16]
     a30:	e51b3010 	ldr	r3, [fp, #-16]
     a34:	e3530000 	cmp	r3, #0
     a38:	da00000d 	ble	a74 <strncmp+0x84>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e5d33000 	ldrb	r3, [r3]
     a44:	e3530000 	cmp	r3, #0
     a48:	0a000009 	beq	a74 <strncmp+0x84>
     a4c:	e51b300c 	ldr	r3, [fp, #-12]
     a50:	e5d33000 	ldrb	r3, [r3]
     a54:	e3530000 	cmp	r3, #0
     a58:	0a000005 	beq	a74 <strncmp+0x84>
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e5d32000 	ldrb	r2, [r3]
     a64:	e51b300c 	ldr	r3, [fp, #-12]
     a68:	e5d33000 	ldrb	r3, [r3]
     a6c:	e1520003 	cmp	r2, r3
     a70:	0affffe5 	beq	a0c <strncmp+0x1c>
     a74:	e51b3010 	ldr	r3, [fp, #-16]
     a78:	e3530000 	cmp	r3, #0
     a7c:	1a000001 	bne	a88 <strncmp+0x98>
     a80:	e3a03000 	mov	r3, #0
     a84:	ea000005 	b	aa0 <strncmp+0xb0>
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5d33000 	ldrb	r3, [r3]
     a90:	e1a02003 	mov	r2, r3
     a94:	e51b300c 	ldr	r3, [fp, #-12]
     a98:	e5d33000 	ldrb	r3, [r3]
     a9c:	e0423003 	sub	r3, r2, r3
     aa0:	e1a00003 	mov	r0, r3
     aa4:	e28bd000 	add	sp, fp, #0
     aa8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <strncpy>:
     ab0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ab4:	e28db000 	add	fp, sp, #0
     ab8:	e24dd01c 	sub	sp, sp, #28
     abc:	e50b0010 	str	r0, [fp, #-16]
     ac0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     ac4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     ac8:	e51b3010 	ldr	r3, [fp, #-16]
     acc:	e50b3008 	str	r3, [fp, #-8]
     ad0:	ea00000a 	b	b00 <strncpy+0x50>
     ad4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     ad8:	e2823001 	add	r3, r2, #1
     adc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e2831001 	add	r1, r3, #1
     ae8:	e50b1008 	str	r1, [fp, #-8]
     aec:	e5d22000 	ldrb	r2, [r2]
     af0:	e5c32000 	strb	r2, [r3]
     af4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af8:	e2433001 	sub	r3, r3, #1
     afc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e3530000 	cmp	r3, #0
     b08:	da00000c 	ble	b40 <strncpy+0x90>
     b0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b10:	e5d33000 	ldrb	r3, [r3]
     b14:	e3530000 	cmp	r3, #0
     b18:	1affffed 	bne	ad4 <strncpy+0x24>
     b1c:	ea000007 	b	b40 <strncpy+0x90>
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e2832001 	add	r2, r3, #1
     b28:	e50b2008 	str	r2, [fp, #-8]
     b2c:	e3a02000 	mov	r2, #0
     b30:	e5c32000 	strb	r2, [r3]
     b34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b38:	e2433001 	sub	r3, r3, #1
     b3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b44:	e3530000 	cmp	r3, #0
     b48:	cafffff4 	bgt	b20 <strncpy+0x70>
     b4c:	e51b3010 	ldr	r3, [fp, #-16]
     b50:	e1a00003 	mov	r0, r3
     b54:	e28bd000 	add	sp, fp, #0
     b58:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <fork>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00001 	mov	r0, #1
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <exit>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00002 	mov	r0, #2
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <wait>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00003 	mov	r0, #3
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <pipe>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00004 	mov	r0, #4
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <read>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00005 	mov	r0, #5
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <write>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00010 	mov	r0, #16
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <close>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00015 	mov	r0, #21
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <kill>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00006 	mov	r0, #6
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <exec>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00007 	mov	r0, #7
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <open>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a0000f 	mov	r0, #15
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <mknod>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a00011 	mov	r0, #17
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <unlink>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a00012 	mov	r0, #18
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <fstat>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a00008 	mov	r0, #8
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <link>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a00013 	mov	r0, #19
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <mkdir>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00014 	mov	r0, #20
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <chdir>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00009 	mov	r0, #9
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <dup>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a0000a 	mov	r0, #10
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <getpid>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a0000b 	mov	r0, #11
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <sbrk>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a0000c 	mov	r0, #12
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <sleep>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a0000d 	mov	r0, #13
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <uptime>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a0000e 	mov	r0, #14
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <proclist>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a00016 	mov	r0, #22
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <settickets>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a00017 	mov	r0, #23
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <srand>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a00018 	mov	r0, #24
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <getpinfo>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00019 	mov	r0, #25
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <print_pt>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a0006a 	mov	r0, #106	@ 0x6a
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <syscall>:
     f08:	ef000000 	svc	0x00000000
     f0c:	e12fff1e 	bx	lr

00000f10 <putc>:
     f10:	e92d4800 	push	{fp, lr}
     f14:	e28db004 	add	fp, sp, #4
     f18:	e24dd008 	sub	sp, sp, #8
     f1c:	e50b0008 	str	r0, [fp, #-8]
     f20:	e1a03001 	mov	r3, r1
     f24:	e54b3009 	strb	r3, [fp, #-9]
     f28:	e24b3009 	sub	r3, fp, #9
     f2c:	e3a02001 	mov	r2, #1
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b0008 	ldr	r0, [fp, #-8]
     f38:	ebffff35 	bl	c14 <write>
     f3c:	e1a00000 	nop			@ (mov r0, r0)
     f40:	e24bd004 	sub	sp, fp, #4
     f44:	e8bd8800 	pop	{fp, pc}

00000f48 <printint>:
     f48:	e92d4800 	push	{fp, lr}
     f4c:	e28db004 	add	fp, sp, #4
     f50:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f54:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f58:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f5c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f60:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f64:	e3a03000 	mov	r3, #0
     f68:	e50b300c 	str	r3, [fp, #-12]
     f6c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f70:	e3530000 	cmp	r3, #0
     f74:	0a000008 	beq	f9c <printint+0x54>
     f78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f7c:	e3530000 	cmp	r3, #0
     f80:	aa000005 	bge	f9c <printint+0x54>
     f84:	e3a03001 	mov	r3, #1
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f90:	e2633000 	rsb	r3, r3, #0
     f94:	e50b3010 	str	r3, [fp, #-16]
     f98:	ea000001 	b	fa4 <printint+0x5c>
     f9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fa0:	e50b3010 	str	r3, [fp, #-16]
     fa4:	e3a03000 	mov	r3, #0
     fa8:	e50b3008 	str	r3, [fp, #-8]
     fac:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fb0:	e51b3010 	ldr	r3, [fp, #-16]
     fb4:	e1a01002 	mov	r1, r2
     fb8:	e1a00003 	mov	r0, r3
     fbc:	eb0001d5 	bl	1718 <__aeabi_uidivmod>
     fc0:	e1a03001 	mov	r3, r1
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e2832001 	add	r2, r3, #1
     fd0:	e50b2008 	str	r2, [fp, #-8]
     fd4:	e59f20a0 	ldr	r2, [pc, #160]	@ 107c <printint+0x134>
     fd8:	e7d22001 	ldrb	r2, [r2, r1]
     fdc:	e2433004 	sub	r3, r3, #4
     fe0:	e083300b 	add	r3, r3, fp
     fe4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fe8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fec:	e1a01003 	mov	r1, r3
     ff0:	e51b0010 	ldr	r0, [fp, #-16]
     ff4:	eb00018a 	bl	1624 <__udivsi3>
     ff8:	e1a03000 	mov	r3, r0
     ffc:	e50b3010 	str	r3, [fp, #-16]
    1000:	e51b3010 	ldr	r3, [fp, #-16]
    1004:	e3530000 	cmp	r3, #0
    1008:	1affffe7 	bne	fac <printint+0x64>
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e3530000 	cmp	r3, #0
    1014:	0a00000e 	beq	1054 <printint+0x10c>
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e2832001 	add	r2, r3, #1
    1020:	e50b2008 	str	r2, [fp, #-8]
    1024:	e2433004 	sub	r3, r3, #4
    1028:	e083300b 	add	r3, r3, fp
    102c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1030:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1034:	ea000006 	b	1054 <printint+0x10c>
    1038:	e24b2020 	sub	r2, fp, #32
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e0823003 	add	r3, r2, r3
    1044:	e5d33000 	ldrb	r3, [r3]
    1048:	e1a01003 	mov	r1, r3
    104c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1050:	ebffffae 	bl	f10 <putc>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e2433001 	sub	r3, r3, #1
    105c:	e50b3008 	str	r3, [fp, #-8]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e3530000 	cmp	r3, #0
    1068:	aafffff2 	bge	1038 <printint+0xf0>
    106c:	e1a00000 	nop			@ (mov r0, r0)
    1070:	e1a00000 	nop			@ (mov r0, r0)
    1074:	e24bd004 	sub	sp, fp, #4
    1078:	e8bd8800 	pop	{fp, pc}
    107c:	0000177c 	.word	0x0000177c

00001080 <printf>:
    1080:	e92d000e 	push	{r1, r2, r3}
    1084:	e92d4800 	push	{fp, lr}
    1088:	e28db004 	add	fp, sp, #4
    108c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1090:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1094:	e3a03000 	mov	r3, #0
    1098:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    109c:	e28b3008 	add	r3, fp, #8
    10a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e3a03000 	mov	r3, #0
    10a8:	e50b3010 	str	r3, [fp, #-16]
    10ac:	ea000074 	b	1284 <printf+0x204>
    10b0:	e59b2004 	ldr	r2, [fp, #4]
    10b4:	e51b3010 	ldr	r3, [fp, #-16]
    10b8:	e0823003 	add	r3, r2, r3
    10bc:	e5d33000 	ldrb	r3, [r3]
    10c0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10c8:	e3530000 	cmp	r3, #0
    10cc:	1a00000b 	bne	1100 <printf+0x80>
    10d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d4:	e3530025 	cmp	r3, #37	@ 0x25
    10d8:	1a000002 	bne	10e8 <printf+0x68>
    10dc:	e3a03025 	mov	r3, #37	@ 0x25
    10e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10e4:	ea000063 	b	1278 <printf+0x1f8>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e6ef3073 	uxtb	r3, r3
    10f0:	e1a01003 	mov	r1, r3
    10f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f8:	ebffff84 	bl	f10 <putc>
    10fc:	ea00005d 	b	1278 <printf+0x1f8>
    1100:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1104:	e3530025 	cmp	r3, #37	@ 0x25
    1108:	1a00005a 	bne	1278 <printf+0x1f8>
    110c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1110:	e3530064 	cmp	r3, #100	@ 0x64
    1114:	1a00000a 	bne	1144 <printf+0xc4>
    1118:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    111c:	e5933000 	ldr	r3, [r3]
    1120:	e1a01003 	mov	r1, r3
    1124:	e3a03001 	mov	r3, #1
    1128:	e3a0200a 	mov	r2, #10
    112c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1130:	ebffff84 	bl	f48 <printint>
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e2833004 	add	r3, r3, #4
    113c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1140:	ea00004a 	b	1270 <printf+0x1f0>
    1144:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1148:	e3530078 	cmp	r3, #120	@ 0x78
    114c:	0a000002 	beq	115c <printf+0xdc>
    1150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e3530070 	cmp	r3, #112	@ 0x70
    1158:	1a00000a 	bne	1188 <printf+0x108>
    115c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e1a01003 	mov	r1, r3
    1168:	e3a03000 	mov	r3, #0
    116c:	e3a02010 	mov	r2, #16
    1170:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1174:	ebffff73 	bl	f48 <printint>
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833004 	add	r3, r3, #4
    1180:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1184:	ea000039 	b	1270 <printf+0x1f0>
    1188:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    118c:	e3530073 	cmp	r3, #115	@ 0x73
    1190:	1a000018 	bne	11f8 <printf+0x178>
    1194:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1198:	e5933000 	ldr	r3, [r3]
    119c:	e50b300c 	str	r3, [fp, #-12]
    11a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	e2833004 	add	r3, r3, #4
    11a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e3530000 	cmp	r3, #0
    11b4:	1a00000a 	bne	11e4 <printf+0x164>
    11b8:	e59f30f4 	ldr	r3, [pc, #244]	@ 12b4 <printf+0x234>
    11bc:	e50b300c 	str	r3, [fp, #-12]
    11c0:	ea000007 	b	11e4 <printf+0x164>
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e5d33000 	ldrb	r3, [r3]
    11cc:	e1a01003 	mov	r1, r3
    11d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d4:	ebffff4d 	bl	f10 <putc>
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e2833001 	add	r3, r3, #1
    11e0:	e50b300c 	str	r3, [fp, #-12]
    11e4:	e51b300c 	ldr	r3, [fp, #-12]
    11e8:	e5d33000 	ldrb	r3, [r3]
    11ec:	e3530000 	cmp	r3, #0
    11f0:	1afffff3 	bne	11c4 <printf+0x144>
    11f4:	ea00001d 	b	1270 <printf+0x1f0>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e3530063 	cmp	r3, #99	@ 0x63
    1200:	1a000009 	bne	122c <printf+0x1ac>
    1204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e6ef3073 	uxtb	r3, r3
    1210:	e1a01003 	mov	r1, r3
    1214:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1218:	ebffff3c 	bl	f10 <putc>
    121c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1220:	e2833004 	add	r3, r3, #4
    1224:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1228:	ea000010 	b	1270 <printf+0x1f0>
    122c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1230:	e3530025 	cmp	r3, #37	@ 0x25
    1234:	1a000005 	bne	1250 <printf+0x1d0>
    1238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    123c:	e6ef3073 	uxtb	r3, r3
    1240:	e1a01003 	mov	r1, r3
    1244:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1248:	ebffff30 	bl	f10 <putc>
    124c:	ea000007 	b	1270 <printf+0x1f0>
    1250:	e3a01025 	mov	r1, #37	@ 0x25
    1254:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1258:	ebffff2c 	bl	f10 <putc>
    125c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1260:	e6ef3073 	uxtb	r3, r3
    1264:	e1a01003 	mov	r1, r3
    1268:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    126c:	ebffff27 	bl	f10 <putc>
    1270:	e3a03000 	mov	r3, #0
    1274:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1278:	e51b3010 	ldr	r3, [fp, #-16]
    127c:	e2833001 	add	r3, r3, #1
    1280:	e50b3010 	str	r3, [fp, #-16]
    1284:	e59b2004 	ldr	r2, [fp, #4]
    1288:	e51b3010 	ldr	r3, [fp, #-16]
    128c:	e0823003 	add	r3, r2, r3
    1290:	e5d33000 	ldrb	r3, [r3]
    1294:	e3530000 	cmp	r3, #0
    1298:	1affff84 	bne	10b0 <printf+0x30>
    129c:	e1a00000 	nop			@ (mov r0, r0)
    12a0:	e1a00000 	nop			@ (mov r0, r0)
    12a4:	e24bd004 	sub	sp, fp, #4
    12a8:	e8bd4800 	pop	{fp, lr}
    12ac:	e28dd00c 	add	sp, sp, #12
    12b0:	e12fff1e 	bx	lr
    12b4:	00001774 	.word	0x00001774

000012b8 <free>:
    12b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12bc:	e28db000 	add	fp, sp, #0
    12c0:	e24dd014 	sub	sp, sp, #20
    12c4:	e50b0010 	str	r0, [fp, #-16]
    12c8:	e51b3010 	ldr	r3, [fp, #-16]
    12cc:	e2433008 	sub	r3, r3, #8
    12d0:	e50b300c 	str	r3, [fp, #-12]
    12d4:	e59f3154 	ldr	r3, [pc, #340]	@ 1430 <free+0x178>
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e50b3008 	str	r3, [fp, #-8]
    12e0:	ea000010 	b	1328 <free+0x70>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e51b2008 	ldr	r2, [fp, #-8]
    12f0:	e1520003 	cmp	r2, r3
    12f4:	3a000008 	bcc	131c <free+0x64>
    12f8:	e51b200c 	ldr	r2, [fp, #-12]
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e1520003 	cmp	r2, r3
    1304:	8a000010 	bhi	134c <free+0x94>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5933000 	ldr	r3, [r3]
    1310:	e51b200c 	ldr	r2, [fp, #-12]
    1314:	e1520003 	cmp	r2, r3
    1318:	3a00000b 	bcc	134c <free+0x94>
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5933000 	ldr	r3, [r3]
    1324:	e50b3008 	str	r3, [fp, #-8]
    1328:	e51b200c 	ldr	r2, [fp, #-12]
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e1520003 	cmp	r2, r3
    1334:	9affffea 	bls	12e4 <free+0x2c>
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e51b200c 	ldr	r2, [fp, #-12]
    1344:	e1520003 	cmp	r2, r3
    1348:	2affffe5 	bcs	12e4 <free+0x2c>
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e5933004 	ldr	r3, [r3, #4]
    1354:	e1a03183 	lsl	r3, r3, #3
    1358:	e51b200c 	ldr	r2, [fp, #-12]
    135c:	e0822003 	add	r2, r2, r3
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5933000 	ldr	r3, [r3]
    1368:	e1520003 	cmp	r2, r3
    136c:	1a00000d 	bne	13a8 <free+0xf0>
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5932004 	ldr	r2, [r3, #4]
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e5933004 	ldr	r3, [r3, #4]
    1384:	e0822003 	add	r2, r2, r3
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e5832004 	str	r2, [r3, #4]
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e5932000 	ldr	r2, [r3]
    139c:	e51b300c 	ldr	r3, [fp, #-12]
    13a0:	e5832000 	str	r2, [r3]
    13a4:	ea000003 	b	13b8 <free+0x100>
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5932000 	ldr	r2, [r3]
    13b0:	e51b300c 	ldr	r3, [fp, #-12]
    13b4:	e5832000 	str	r2, [r3]
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e5933004 	ldr	r3, [r3, #4]
    13c0:	e1a03183 	lsl	r3, r3, #3
    13c4:	e51b2008 	ldr	r2, [fp, #-8]
    13c8:	e0823003 	add	r3, r2, r3
    13cc:	e51b200c 	ldr	r2, [fp, #-12]
    13d0:	e1520003 	cmp	r2, r3
    13d4:	1a00000b 	bne	1408 <free+0x150>
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5932004 	ldr	r2, [r3, #4]
    13e0:	e51b300c 	ldr	r3, [fp, #-12]
    13e4:	e5933004 	ldr	r3, [r3, #4]
    13e8:	e0822003 	add	r2, r2, r3
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e5832004 	str	r2, [r3, #4]
    13f4:	e51b300c 	ldr	r3, [fp, #-12]
    13f8:	e5932000 	ldr	r2, [r3]
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5832000 	str	r2, [r3]
    1404:	ea000002 	b	1414 <free+0x15c>
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e51b200c 	ldr	r2, [fp, #-12]
    1410:	e5832000 	str	r2, [r3]
    1414:	e59f2014 	ldr	r2, [pc, #20]	@ 1430 <free+0x178>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5823000 	str	r3, [r2]
    1420:	e1a00000 	nop			@ (mov r0, r0)
    1424:	e28bd000 	add	sp, fp, #0
    1428:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    142c:	e12fff1e 	bx	lr
    1430:	00001b98 	.word	0x00001b98

00001434 <morecore>:
    1434:	e92d4800 	push	{fp, lr}
    1438:	e28db004 	add	fp, sp, #4
    143c:	e24dd010 	sub	sp, sp, #16
    1440:	e50b0010 	str	r0, [fp, #-16]
    1444:	e51b3010 	ldr	r3, [fp, #-16]
    1448:	e3530a01 	cmp	r3, #4096	@ 0x1000
    144c:	2a000001 	bcs	1458 <morecore+0x24>
    1450:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1454:	e50b3010 	str	r3, [fp, #-16]
    1458:	e51b3010 	ldr	r3, [fp, #-16]
    145c:	e1a03183 	lsl	r3, r3, #3
    1460:	e1a00003 	mov	r0, r3
    1464:	ebfffe5f 	bl	de8 <sbrk>
    1468:	e50b0008 	str	r0, [fp, #-8]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e3730001 	cmn	r3, #1
    1474:	1a000001 	bne	1480 <morecore+0x4c>
    1478:	e3a03000 	mov	r3, #0
    147c:	ea00000a 	b	14ac <morecore+0x78>
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e50b300c 	str	r3, [fp, #-12]
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e51b2010 	ldr	r2, [fp, #-16]
    1490:	e5832004 	str	r2, [r3, #4]
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e2833008 	add	r3, r3, #8
    149c:	e1a00003 	mov	r0, r3
    14a0:	ebffff84 	bl	12b8 <free>
    14a4:	e59f300c 	ldr	r3, [pc, #12]	@ 14b8 <morecore+0x84>
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e1a00003 	mov	r0, r3
    14b0:	e24bd004 	sub	sp, fp, #4
    14b4:	e8bd8800 	pop	{fp, pc}
    14b8:	00001b98 	.word	0x00001b98

000014bc <malloc>:
    14bc:	e92d4800 	push	{fp, lr}
    14c0:	e28db004 	add	fp, sp, #4
    14c4:	e24dd018 	sub	sp, sp, #24
    14c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14d0:	e2833007 	add	r3, r3, #7
    14d4:	e1a031a3 	lsr	r3, r3, #3
    14d8:	e2833001 	add	r3, r3, #1
    14dc:	e50b3010 	str	r3, [fp, #-16]
    14e0:	e59f3134 	ldr	r3, [pc, #308]	@ 161c <malloc+0x160>
    14e4:	e5933000 	ldr	r3, [r3]
    14e8:	e50b300c 	str	r3, [fp, #-12]
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e3530000 	cmp	r3, #0
    14f4:	1a00000b 	bne	1528 <malloc+0x6c>
    14f8:	e59f3120 	ldr	r3, [pc, #288]	@ 1620 <malloc+0x164>
    14fc:	e50b300c 	str	r3, [fp, #-12]
    1500:	e59f2114 	ldr	r2, [pc, #276]	@ 161c <malloc+0x160>
    1504:	e51b300c 	ldr	r3, [fp, #-12]
    1508:	e5823000 	str	r3, [r2]
    150c:	e59f3108 	ldr	r3, [pc, #264]	@ 161c <malloc+0x160>
    1510:	e5933000 	ldr	r3, [r3]
    1514:	e59f2104 	ldr	r2, [pc, #260]	@ 1620 <malloc+0x164>
    1518:	e5823000 	str	r3, [r2]
    151c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1620 <malloc+0x164>
    1520:	e3a02000 	mov	r2, #0
    1524:	e5832004 	str	r2, [r3, #4]
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5933000 	ldr	r3, [r3]
    1530:	e50b3008 	str	r3, [fp, #-8]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5933004 	ldr	r3, [r3, #4]
    153c:	e51b2010 	ldr	r2, [fp, #-16]
    1540:	e1520003 	cmp	r2, r3
    1544:	8a00001e 	bhi	15c4 <malloc+0x108>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933004 	ldr	r3, [r3, #4]
    1550:	e51b2010 	ldr	r2, [fp, #-16]
    1554:	e1520003 	cmp	r2, r3
    1558:	1a000004 	bne	1570 <malloc+0xb4>
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5932000 	ldr	r2, [r3]
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e5832000 	str	r2, [r3]
    156c:	ea00000e 	b	15ac <malloc+0xf0>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5932004 	ldr	r2, [r3, #4]
    1578:	e51b3010 	ldr	r3, [fp, #-16]
    157c:	e0422003 	sub	r2, r2, r3
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e5832004 	str	r2, [r3, #4]
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e5933004 	ldr	r3, [r3, #4]
    1590:	e1a03183 	lsl	r3, r3, #3
    1594:	e51b2008 	ldr	r2, [fp, #-8]
    1598:	e0823003 	add	r3, r2, r3
    159c:	e50b3008 	str	r3, [fp, #-8]
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e51b2010 	ldr	r2, [fp, #-16]
    15a8:	e5832004 	str	r2, [r3, #4]
    15ac:	e59f2068 	ldr	r2, [pc, #104]	@ 161c <malloc+0x160>
    15b0:	e51b300c 	ldr	r3, [fp, #-12]
    15b4:	e5823000 	str	r3, [r2]
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e2833008 	add	r3, r3, #8
    15c0:	ea000012 	b	1610 <malloc+0x154>
    15c4:	e59f3050 	ldr	r3, [pc, #80]	@ 161c <malloc+0x160>
    15c8:	e5933000 	ldr	r3, [r3]
    15cc:	e51b2008 	ldr	r2, [fp, #-8]
    15d0:	e1520003 	cmp	r2, r3
    15d4:	1a000007 	bne	15f8 <malloc+0x13c>
    15d8:	e51b0010 	ldr	r0, [fp, #-16]
    15dc:	ebffff94 	bl	1434 <morecore>
    15e0:	e50b0008 	str	r0, [fp, #-8]
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e3530000 	cmp	r3, #0
    15ec:	1a000001 	bne	15f8 <malloc+0x13c>
    15f0:	e3a03000 	mov	r3, #0
    15f4:	ea000005 	b	1610 <malloc+0x154>
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e50b300c 	str	r3, [fp, #-12]
    1600:	e51b3008 	ldr	r3, [fp, #-8]
    1604:	e5933000 	ldr	r3, [r3]
    1608:	e50b3008 	str	r3, [fp, #-8]
    160c:	eaffffc8 	b	1534 <malloc+0x78>
    1610:	e1a00003 	mov	r0, r3
    1614:	e24bd004 	sub	sp, fp, #4
    1618:	e8bd8800 	pop	{fp, pc}
    161c:	00001b98 	.word	0x00001b98
    1620:	00001b90 	.word	0x00001b90

00001624 <__udivsi3>:
    1624:	e2512001 	subs	r2, r1, #1
    1628:	012fff1e 	bxeq	lr
    162c:	3a000036 	bcc	170c <__udivsi3+0xe8>
    1630:	e1500001 	cmp	r0, r1
    1634:	9a000022 	bls	16c4 <__udivsi3+0xa0>
    1638:	e1110002 	tst	r1, r2
    163c:	0a000023 	beq	16d0 <__udivsi3+0xac>
    1640:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1644:	01a01181 	lsleq	r1, r1, #3
    1648:	03a03008 	moveq	r3, #8
    164c:	13a03001 	movne	r3, #1
    1650:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1654:	31510000 	cmpcc	r1, r0
    1658:	31a01201 	lslcc	r1, r1, #4
    165c:	31a03203 	lslcc	r3, r3, #4
    1660:	3afffffa 	bcc	1650 <__udivsi3+0x2c>
    1664:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1668:	31510000 	cmpcc	r1, r0
    166c:	31a01081 	lslcc	r1, r1, #1
    1670:	31a03083 	lslcc	r3, r3, #1
    1674:	3afffffa 	bcc	1664 <__udivsi3+0x40>
    1678:	e3a02000 	mov	r2, #0
    167c:	e1500001 	cmp	r0, r1
    1680:	20400001 	subcs	r0, r0, r1
    1684:	21822003 	orrcs	r2, r2, r3
    1688:	e15000a1 	cmp	r0, r1, lsr #1
    168c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1690:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1694:	e1500121 	cmp	r0, r1, lsr #2
    1698:	20400121 	subcs	r0, r0, r1, lsr #2
    169c:	21822123 	orrcs	r2, r2, r3, lsr #2
    16a0:	e15001a1 	cmp	r0, r1, lsr #3
    16a4:	204001a1 	subcs	r0, r0, r1, lsr #3
    16a8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16ac:	e3500000 	cmp	r0, #0
    16b0:	11b03223 	lsrsne	r3, r3, #4
    16b4:	11a01221 	lsrne	r1, r1, #4
    16b8:	1affffef 	bne	167c <__udivsi3+0x58>
    16bc:	e1a00002 	mov	r0, r2
    16c0:	e12fff1e 	bx	lr
    16c4:	03a00001 	moveq	r0, #1
    16c8:	13a00000 	movne	r0, #0
    16cc:	e12fff1e 	bx	lr
    16d0:	e3510801 	cmp	r1, #65536	@ 0x10000
    16d4:	21a01821 	lsrcs	r1, r1, #16
    16d8:	23a02010 	movcs	r2, #16
    16dc:	33a02000 	movcc	r2, #0
    16e0:	e3510c01 	cmp	r1, #256	@ 0x100
    16e4:	21a01421 	lsrcs	r1, r1, #8
    16e8:	22822008 	addcs	r2, r2, #8
    16ec:	e3510010 	cmp	r1, #16
    16f0:	21a01221 	lsrcs	r1, r1, #4
    16f4:	22822004 	addcs	r2, r2, #4
    16f8:	e3510004 	cmp	r1, #4
    16fc:	82822003 	addhi	r2, r2, #3
    1700:	908220a1 	addls	r2, r2, r1, lsr #1
    1704:	e1a00230 	lsr	r0, r0, r2
    1708:	e12fff1e 	bx	lr
    170c:	e3500000 	cmp	r0, #0
    1710:	13e00000 	mvnne	r0, #0
    1714:	ea000007 	b	1738 <__aeabi_idiv0>

00001718 <__aeabi_uidivmod>:
    1718:	e3510000 	cmp	r1, #0
    171c:	0afffffa 	beq	170c <__udivsi3+0xe8>
    1720:	e92d4003 	push	{r0, r1, lr}
    1724:	ebffffbe 	bl	1624 <__udivsi3>
    1728:	e8bd4006 	pop	{r1, r2, lr}
    172c:	e0030092 	mul	r3, r2, r0
    1730:	e0411003 	sub	r1, r1, r3
    1734:	e12fff1e 	bx	lr

00001738 <__aeabi_idiv0>:
    1738:	e12fff1e 	bx	lr
