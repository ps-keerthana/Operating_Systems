
_bigfile:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde43 	sub	sp, sp, #1072	@ 0x430
       c:	e50b0428 	str	r0, [fp, #-1064]	@ 0xfffffbd8
      10:	e50b142c 	str	r1, [fp, #-1068]	@ 0xfffffbd4
      14:	e3a030c8 	mov	r3, #200	@ 0xc8
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e3a03000 	mov	r3, #0
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e59f1428 	ldr	r1, [pc, #1064]	@ 454 <main+0x454>
      28:	e3a00001 	mov	r0, #1
      2c:	eb000565 	bl	15c8 <printf>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e1a03483 	lsl	r3, r3, #9
      38:	e1a00003 	mov	r0, r3
      3c:	eb0007e0 	bl	1fc4 <__aeabi_i2d>
      40:	e3a02000 	mov	r2, #0
      44:	e59f340c 	ldr	r3, [pc, #1036]	@ 458 <main+0x458>
      48:	eb0008ba 	bl	2338 <__aeabi_ddiv>
      4c:	e1a02000 	mov	r2, r0
      50:	e1a03001 	mov	r3, r1
      54:	e1cd20f0 	strd	r2, [sp]
      58:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      5c:	e59f13f8 	ldr	r1, [pc, #1016]	@ 45c <main+0x45c>
      60:	e3a00001 	mov	r0, #1
      64:	eb000557 	bl	15c8 <printf>
      68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      6c:	e243308b 	sub	r3, r3, #139	@ 0x8b
      70:	e1a02003 	mov	r2, r3
      74:	e59f13e4 	ldr	r1, [pc, #996]	@ 460 <main+0x460>
      78:	e3a00001 	mov	r0, #1
      7c:	eb000551 	bl	15c8 <printf>
      80:	e59f13dc 	ldr	r1, [pc, #988]	@ 464 <main+0x464>
      84:	e3a00001 	mov	r0, #1
      88:	eb00054e 	bl	15c8 <printf>
      8c:	e59f13d4 	ldr	r1, [pc, #980]	@ 468 <main+0x468>
      90:	e59f03d4 	ldr	r0, [pc, #980]	@ 46c <main+0x46c>
      94:	eb0003f1 	bl	1060 <open>
      98:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      a0:	e3530000 	cmp	r3, #0
      a4:	aa000003 	bge	b8 <main+0xb8>
      a8:	e59f13c0 	ldr	r1, [pc, #960]	@ 470 <main+0x470>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000544 	bl	15c8 <printf>
      b4:	eb0003a1 	bl	f40 <exit>
      b8:	e3a03000 	mov	r3, #0
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	ea000041 	b	1cc <main+0x1cc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b300c 	str	r3, [fp, #-12]
      cc:	ea00000f 	b	110 <main+0x110>
      d0:	e51b2008 	ldr	r2, [fp, #-8]
      d4:	e51b300c 	ldr	r3, [fp, #-12]
      d8:	e0823003 	add	r3, r2, r3
      dc:	e2732000 	rsbs	r2, r3, #0
      e0:	e6ef3073 	uxtb	r3, r3
      e4:	e6ef2072 	uxtb	r2, r2
      e8:	52623000 	rsbpl	r3, r2, #0
      ec:	e6ef1073 	uxtb	r1, r3
      f0:	e24b2e22 	sub	r2, fp, #544	@ 0x220
      f4:	e51b300c 	ldr	r3, [fp, #-12]
      f8:	e0823003 	add	r3, r2, r3
      fc:	e1a02001 	mov	r2, r1
     100:	e5c32000 	strb	r2, [r3]
     104:	e51b300c 	ldr	r3, [fp, #-12]
     108:	e2833001 	add	r3, r3, #1
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	e51b300c 	ldr	r3, [fp, #-12]
     114:	e3530c02 	cmp	r3, #512	@ 0x200
     118:	baffffec 	blt	d0 <main+0xd0>
     11c:	e24b3e22 	sub	r3, fp, #544	@ 0x220
     120:	e3a02c02 	mov	r2, #512	@ 0x200
     124:	e1a01003 	mov	r1, r3
     128:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     12c:	eb0003a7 	bl	fd0 <write>
     130:	e1a03000 	mov	r3, r0
     134:	e3530c02 	cmp	r3, #512	@ 0x200
     138:	0a000006 	beq	158 <main+0x158>
     13c:	e51b2008 	ldr	r2, [fp, #-8]
     140:	e59f132c 	ldr	r1, [pc, #812]	@ 474 <main+0x474>
     144:	e3a00001 	mov	r0, #1
     148:	eb00051e 	bl	15c8 <printf>
     14c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     150:	eb0003a7 	bl	ff4 <close>
     154:	eb000379 	bl	f40 <exit>
     158:	e51b1008 	ldr	r1, [fp, #-8]
     15c:	e59f3314 	ldr	r3, [pc, #788]	@ 478 <main+0x478>
     160:	e0c32193 	smull	r2, r3, r3, r1
     164:	e1a02243 	asr	r2, r3, #4
     168:	e1a03fc1 	asr	r3, r1, #31
     16c:	e0422003 	sub	r2, r2, r3
     170:	e1a03002 	mov	r3, r2
     174:	e1a03103 	lsl	r3, r3, #2
     178:	e0833002 	add	r3, r3, r2
     17c:	e1a02103 	lsl	r2, r3, #2
     180:	e0833002 	add	r3, r3, r2
     184:	e1a03083 	lsl	r3, r3, #1
     188:	e0412003 	sub	r2, r1, r3
     18c:	e3520000 	cmp	r2, #0
     190:	0a000004 	beq	1a8 <main+0x1a8>
     194:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     198:	e2433001 	sub	r3, r3, #1
     19c:	e51b2008 	ldr	r2, [fp, #-8]
     1a0:	e1520003 	cmp	r2, r3
     1a4:	1a000005 	bne	1c0 <main+0x1c0>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e2832001 	add	r2, r3, #1
     1b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1b4:	e59f12c0 	ldr	r1, [pc, #704]	@ 47c <main+0x47c>
     1b8:	e3a00001 	mov	r0, #1
     1bc:	eb000501 	bl	15c8 <printf>
     1c0:	e51b3008 	ldr	r3, [fp, #-8]
     1c4:	e2833001 	add	r3, r3, #1
     1c8:	e50b3008 	str	r3, [fp, #-8]
     1cc:	e51b2008 	ldr	r2, [fp, #-8]
     1d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1d4:	e1520003 	cmp	r2, r3
     1d8:	baffffb9 	blt	c4 <main+0xc4>
     1dc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     1e0:	eb000383 	bl	ff4 <close>
     1e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1e8:	e59f1290 	ldr	r1, [pc, #656]	@ 480 <main+0x480>
     1ec:	e3a00001 	mov	r0, #1
     1f0:	eb0004f4 	bl	15c8 <printf>
     1f4:	e59f1288 	ldr	r1, [pc, #648]	@ 484 <main+0x484>
     1f8:	e3a00001 	mov	r0, #1
     1fc:	eb0004f1 	bl	15c8 <printf>
     200:	e3a01000 	mov	r1, #0
     204:	e59f0260 	ldr	r0, [pc, #608]	@ 46c <main+0x46c>
     208:	eb000394 	bl	1060 <open>
     20c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     210:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     214:	e3530000 	cmp	r3, #0
     218:	aa000003 	bge	22c <main+0x22c>
     21c:	e59f1264 	ldr	r1, [pc, #612]	@ 488 <main+0x488>
     220:	e3a00001 	mov	r0, #1
     224:	eb0004e7 	bl	15c8 <printf>
     228:	eb000344 	bl	f40 <exit>
     22c:	e3a03000 	mov	r3, #0
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	ea00005e 	b	3b4 <main+0x3b4>
     238:	e24b3e41 	sub	r3, fp, #1040	@ 0x410
     23c:	e2433004 	sub	r3, r3, #4
     240:	e243300c 	sub	r3, r3, #12
     244:	e3a02c02 	mov	r2, #512	@ 0x200
     248:	e1a01003 	mov	r1, r3
     24c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     250:	eb000355 	bl	fac <read>
     254:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     258:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     25c:	e3530c02 	cmp	r3, #512	@ 0x200
     260:	0a000007 	beq	284 <main+0x284>
     264:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     268:	e51b2008 	ldr	r2, [fp, #-8]
     26c:	e59f1218 	ldr	r1, [pc, #536]	@ 48c <main+0x48c>
     270:	e3a00001 	mov	r0, #1
     274:	eb0004d3 	bl	15c8 <printf>
     278:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     27c:	eb00035c 	bl	ff4 <close>
     280:	eb00032e 	bl	f40 <exit>
     284:	e3a03000 	mov	r3, #0
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	ea000028 	b	334 <main+0x334>
     290:	e51b2008 	ldr	r2, [fp, #-8]
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e0823003 	add	r3, r2, r3
     29c:	e2732000 	rsbs	r2, r3, #0
     2a0:	e6ef3073 	uxtb	r3, r3
     2a4:	e6ef2072 	uxtb	r2, r2
     2a8:	52623000 	rsbpl	r3, r2, #0
     2ac:	e54b301d 	strb	r3, [fp, #-29]	@ 0xffffffe3
     2b0:	e24b3e41 	sub	r3, fp, #1040	@ 0x410
     2b4:	e2433004 	sub	r3, r3, #4
     2b8:	e243300c 	sub	r3, r3, #12
     2bc:	e51b200c 	ldr	r2, [fp, #-12]
     2c0:	e0833002 	add	r3, r3, r2
     2c4:	e5d33000 	ldrb	r3, [r3]
     2c8:	e55b201d 	ldrb	r2, [fp, #-29]	@ 0xffffffe3
     2cc:	e1520003 	cmp	r2, r3
     2d0:	0a000014 	beq	328 <main+0x328>
     2d4:	e51b3010 	ldr	r3, [fp, #-16]
     2d8:	e3530009 	cmp	r3, #9
     2dc:	ca00000d 	bgt	318 <main+0x318>
     2e0:	e55b201d 	ldrb	r2, [fp, #-29]	@ 0xffffffe3
     2e4:	e24b3e41 	sub	r3, fp, #1040	@ 0x410
     2e8:	e2433004 	sub	r3, r3, #4
     2ec:	e243300c 	sub	r3, r3, #12
     2f0:	e51b100c 	ldr	r1, [fp, #-12]
     2f4:	e0833001 	add	r3, r3, r1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e58d3004 	str	r3, [sp, #4]
     300:	e58d2000 	str	r2, [sp]
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e51b2008 	ldr	r2, [fp, #-8]
     30c:	e59f117c 	ldr	r1, [pc, #380]	@ 490 <main+0x490>
     310:	e3a00001 	mov	r0, #1
     314:	eb0004ab 	bl	15c8 <printf>
     318:	e51b3010 	ldr	r3, [fp, #-16]
     31c:	e2833001 	add	r3, r3, #1
     320:	e50b3010 	str	r3, [fp, #-16]
     324:	ea000005 	b	340 <main+0x340>
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b300c 	str	r3, [fp, #-12]
     334:	e51b300c 	ldr	r3, [fp, #-12]
     338:	e3530c02 	cmp	r3, #512	@ 0x200
     33c:	baffffd3 	blt	290 <main+0x290>
     340:	e51b1008 	ldr	r1, [fp, #-8]
     344:	e59f312c 	ldr	r3, [pc, #300]	@ 478 <main+0x478>
     348:	e0c32193 	smull	r2, r3, r3, r1
     34c:	e1a02243 	asr	r2, r3, #4
     350:	e1a03fc1 	asr	r3, r1, #31
     354:	e0422003 	sub	r2, r2, r3
     358:	e1a03002 	mov	r3, r2
     35c:	e1a03103 	lsl	r3, r3, #2
     360:	e0833002 	add	r3, r3, r2
     364:	e1a02103 	lsl	r2, r3, #2
     368:	e0833002 	add	r3, r3, r2
     36c:	e1a03083 	lsl	r3, r3, #1
     370:	e0412003 	sub	r2, r1, r3
     374:	e3520000 	cmp	r2, #0
     378:	0a000004 	beq	390 <main+0x390>
     37c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     380:	e2433001 	sub	r3, r3, #1
     384:	e51b2008 	ldr	r2, [fp, #-8]
     388:	e1520003 	cmp	r2, r3
     38c:	1a000005 	bne	3a8 <main+0x3a8>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     39c:	e59f10f0 	ldr	r1, [pc, #240]	@ 494 <main+0x494>
     3a0:	e3a00001 	mov	r0, #1
     3a4:	eb000487 	bl	15c8 <printf>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e2833001 	add	r3, r3, #1
     3b0:	e50b3008 	str	r3, [fp, #-8]
     3b4:	e51b2008 	ldr	r2, [fp, #-8]
     3b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3bc:	e1520003 	cmp	r2, r3
     3c0:	baffff9c 	blt	238 <main+0x238>
     3c4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     3c8:	eb000309 	bl	ff4 <close>
     3cc:	e59f10c4 	ldr	r1, [pc, #196]	@ 498 <main+0x498>
     3d0:	e3a00001 	mov	r0, #1
     3d4:	eb00047b 	bl	15c8 <printf>
     3d8:	e51b3010 	ldr	r3, [fp, #-16]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	1a000016 	bne	440 <main+0x440>
     3e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3e8:	e59f10ac 	ldr	r1, [pc, #172]	@ 49c <main+0x49c>
     3ec:	e3a00001 	mov	r0, #1
     3f0:	eb000474 	bl	15c8 <printf>
     3f4:	e59f10a4 	ldr	r1, [pc, #164]	@ 4a0 <main+0x4a0>
     3f8:	e3a00001 	mov	r0, #1
     3fc:	eb000471 	bl	15c8 <printf>
     400:	e59f109c 	ldr	r1, [pc, #156]	@ 4a4 <main+0x4a4>
     404:	e3a00001 	mov	r0, #1
     408:	eb00046e 	bl	15c8 <printf>
     40c:	e59f1094 	ldr	r1, [pc, #148]	@ 4a8 <main+0x4a8>
     410:	e3a00001 	mov	r0, #1
     414:	eb00046b 	bl	15c8 <printf>
     418:	e59f108c 	ldr	r1, [pc, #140]	@ 4ac <main+0x4ac>
     41c:	e3a00001 	mov	r0, #1
     420:	eb000468 	bl	15c8 <printf>
     424:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     428:	e243308b 	sub	r3, r3, #139	@ 0x8b
     42c:	e1a02003 	mov	r2, r3
     430:	e59f1078 	ldr	r1, [pc, #120]	@ 4b0 <main+0x4b0>
     434:	e3a00001 	mov	r0, #1
     438:	eb000462 	bl	15c8 <printf>
     43c:	ea000003 	b	450 <main+0x450>
     440:	e51b2010 	ldr	r2, [fp, #-16]
     444:	e59f1068 	ldr	r1, [pc, #104]	@ 4b4 <main+0x4b4>
     448:	e3a00001 	mov	r0, #1
     44c:	eb00045d 	bl	15c8 <printf>
     450:	eb0002ba 	bl	f40 <exit>
     454:	00002544 	.word	0x00002544
     458:	40900000 	.word	0x40900000
     45c:	0000255c 	.word	0x0000255c
     460:	0000257c 	.word	0x0000257c
     464:	000025ac 	.word	0x000025ac
     468:	00000201 	.word	0x00000201
     46c:	000025cc 	.word	0x000025cc
     470:	000025d4 	.word	0x000025d4
     474:	000025f8 	.word	0x000025f8
     478:	51eb851f 	.word	0x51eb851f
     47c:	0000261c 	.word	0x0000261c
     480:	00002638 	.word	0x00002638
     484:	0000265c 	.word	0x0000265c
     488:	00002688 	.word	0x00002688
     48c:	000026b0 	.word	0x000026b0
     490:	000026e0 	.word	0x000026e0
     494:	0000271c 	.word	0x0000271c
     498:	00002740 	.word	0x00002740
     49c:	00002758 	.word	0x00002758
     4a0:	00002784 	.word	0x00002784
     4a4:	000027b0 	.word	0x000027b0
     4a8:	000027d0 	.word	0x000027d0
     4ac:	000027e8 	.word	0x000027e8
     4b0:	00002800 	.word	0x00002800
     4b4:	00002820 	.word	0x00002820

000004b8 <pg_pte>:
     4b8:	e92d4800 	push	{fp, lr}
     4bc:	e28db004 	add	fp, sp, #4
     4c0:	e24dd008 	sub	sp, sp, #8
     4c4:	e50b0008 	str	r0, [fp, #-8]
     4c8:	e51b1008 	ldr	r1, [fp, #-8]
     4cc:	e3a0001a 	mov	r0, #26
     4d0:	eb0003de 	bl	1450 <syscall>
     4d4:	e1a03000 	mov	r3, r0
     4d8:	e1a00003 	mov	r0, r3
     4dc:	e24bd004 	sub	sp, fp, #4
     4e0:	e8bd8800 	pop	{fp, pc}

000004e4 <pg_pa>:
     4e4:	e92d4800 	push	{fp, lr}
     4e8:	e28db004 	add	fp, sp, #4
     4ec:	e24dd008 	sub	sp, sp, #8
     4f0:	e50b0008 	str	r0, [fp, #-8]
     4f4:	e51b1008 	ldr	r1, [fp, #-8]
     4f8:	e3a0001b 	mov	r0, #27
     4fc:	eb0003d3 	bl	1450 <syscall>
     500:	e1a03000 	mov	r3, r0
     504:	e1a00003 	mov	r0, r3
     508:	e24bd004 	sub	sp, fp, #4
     50c:	e8bd8800 	pop	{fp, pc}

00000510 <pg_flags>:
     510:	e92d4800 	push	{fp, lr}
     514:	e28db004 	add	fp, sp, #4
     518:	e24dd008 	sub	sp, sp, #8
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b1008 	ldr	r1, [fp, #-8]
     524:	e3a0001c 	mov	r0, #28
     528:	eb0003c8 	bl	1450 <syscall>
     52c:	e1a03000 	mov	r3, r0
     530:	e1a00003 	mov	r0, r3
     534:	e24bd004 	sub	sp, fp, #4
     538:	e8bd8800 	pop	{fp, pc}

0000053c <kpt>:
     53c:	e92d4800 	push	{fp, lr}
     540:	e28db004 	add	fp, sp, #4
     544:	e3a0001d 	mov	r0, #29
     548:	eb0003c0 	bl	1450 <syscall>
     54c:	e1a03000 	mov	r3, r0
     550:	e1a00003 	mov	r0, r3
     554:	e8bd8800 	pop	{fp, pc}

00000558 <ugetpid>:
     558:	e92d4800 	push	{fp, lr}
     55c:	e28db004 	add	fp, sp, #4
     560:	e3a0001e 	mov	r0, #30
     564:	eb0003b9 	bl	1450 <syscall>
     568:	e1a03000 	mov	r3, r0
     56c:	e1a00003 	mov	r0, r3
     570:	e8bd8800 	pop	{fp, pc}

00000574 <strcpy>:
     574:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     578:	e28db000 	add	fp, sp, #0
     57c:	e24dd014 	sub	sp, sp, #20
     580:	e50b0010 	str	r0, [fp, #-16]
     584:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     588:	e51b3010 	ldr	r3, [fp, #-16]
     58c:	e50b3008 	str	r3, [fp, #-8]
     590:	e1a00000 	nop			@ (mov r0, r0)
     594:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     598:	e2823001 	add	r3, r2, #1
     59c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e2831001 	add	r1, r3, #1
     5a8:	e50b1010 	str	r1, [fp, #-16]
     5ac:	e5d22000 	ldrb	r2, [r2]
     5b0:	e5c32000 	strb	r2, [r3]
     5b4:	e5d33000 	ldrb	r3, [r3]
     5b8:	e3530000 	cmp	r3, #0
     5bc:	1afffff4 	bne	594 <strcpy+0x20>
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e28bd000 	add	sp, fp, #0
     5cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <strcmp>:
     5d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d8:	e28db000 	add	fp, sp, #0
     5dc:	e24dd00c 	sub	sp, sp, #12
     5e0:	e50b0008 	str	r0, [fp, #-8]
     5e4:	e50b100c 	str	r1, [fp, #-12]
     5e8:	ea000005 	b	604 <strcmp+0x30>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e2833001 	add	r3, r3, #1
     5f4:	e50b3008 	str	r3, [fp, #-8]
     5f8:	e51b300c 	ldr	r3, [fp, #-12]
     5fc:	e2833001 	add	r3, r3, #1
     600:	e50b300c 	str	r3, [fp, #-12]
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e5d33000 	ldrb	r3, [r3]
     60c:	e3530000 	cmp	r3, #0
     610:	0a000005 	beq	62c <strcmp+0x58>
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e5d32000 	ldrb	r2, [r3]
     61c:	e51b300c 	ldr	r3, [fp, #-12]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e1520003 	cmp	r2, r3
     628:	0affffef 	beq	5ec <strcmp+0x18>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e1a02003 	mov	r2, r3
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e5d33000 	ldrb	r3, [r3]
     640:	e0423003 	sub	r3, r2, r3
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <strlen>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd014 	sub	sp, sp, #20
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e3a03000 	mov	r3, #0
     668:	e50b3008 	str	r3, [fp, #-8]
     66c:	ea000002 	b	67c <strlen+0x28>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e2833001 	add	r3, r3, #1
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e51b2010 	ldr	r2, [fp, #-16]
     684:	e0823003 	add	r3, r2, r3
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530000 	cmp	r3, #0
     690:	1afffff6 	bne	670 <strlen+0x1c>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <memset>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     6b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     6b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     6bc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     6c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     6cc:	e54b300d 	strb	r3, [fp, #-13]
     6d0:	e55b200d 	ldrb	r2, [fp, #-13]
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a03403 	lsl	r3, r3, #8
     6dc:	e0833002 	add	r3, r3, r2
     6e0:	e1a03803 	lsl	r3, r3, #16
     6e4:	e1a02003 	mov	r2, r3
     6e8:	e55b300d 	ldrb	r3, [fp, #-13]
     6ec:	e1a03403 	lsl	r3, r3, #8
     6f0:	e1822003 	orr	r2, r2, r3
     6f4:	e55b300d 	ldrb	r3, [fp, #-13]
     6f8:	e1823003 	orr	r3, r2, r3
     6fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     700:	ea000008 	b	728 <memset+0x80>
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e55b200d 	ldrb	r2, [fp, #-13]
     70c:	e5c32000 	strb	r2, [r3]
     710:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     714:	e2433001 	sub	r3, r3, #1
     718:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e2833001 	add	r3, r3, #1
     724:	e50b3008 	str	r3, [fp, #-8]
     728:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     72c:	e3530000 	cmp	r3, #0
     730:	0a000003 	beq	744 <memset+0x9c>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e2033003 	and	r3, r3, #3
     73c:	e3530000 	cmp	r3, #0
     740:	1affffef 	bne	704 <memset+0x5c>
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e50b300c 	str	r3, [fp, #-12]
     74c:	ea000008 	b	774 <memset+0xcc>
     750:	e51b300c 	ldr	r3, [fp, #-12]
     754:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     758:	e5832000 	str	r2, [r3]
     75c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     760:	e2433004 	sub	r3, r3, #4
     764:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     768:	e51b300c 	ldr	r3, [fp, #-12]
     76c:	e2833004 	add	r3, r3, #4
     770:	e50b300c 	str	r3, [fp, #-12]
     774:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     778:	e3530003 	cmp	r3, #3
     77c:	8afffff3 	bhi	750 <memset+0xa8>
     780:	e51b300c 	ldr	r3, [fp, #-12]
     784:	e50b3008 	str	r3, [fp, #-8]
     788:	ea000008 	b	7b0 <memset+0x108>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e55b200d 	ldrb	r2, [fp, #-13]
     794:	e5c32000 	strb	r2, [r3]
     798:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     79c:	e2433001 	sub	r3, r3, #1
     7a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e2833001 	add	r3, r3, #1
     7ac:	e50b3008 	str	r3, [fp, #-8]
     7b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7b4:	e3530000 	cmp	r3, #0
     7b8:	1afffff3 	bne	78c <memset+0xe4>
     7bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7c0:	e1a00003 	mov	r0, r3
     7c4:	e28bd000 	add	sp, fp, #0
     7c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <strchr>:
     7d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d4:	e28db000 	add	fp, sp, #0
     7d8:	e24dd00c 	sub	sp, sp, #12
     7dc:	e50b0008 	str	r0, [fp, #-8]
     7e0:	e1a03001 	mov	r3, r1
     7e4:	e54b3009 	strb	r3, [fp, #-9]
     7e8:	ea000009 	b	814 <strchr+0x44>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e5d33000 	ldrb	r3, [r3]
     7f4:	e55b2009 	ldrb	r2, [fp, #-9]
     7f8:	e1520003 	cmp	r2, r3
     7fc:	1a000001 	bne	808 <strchr+0x38>
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	ea000007 	b	828 <strchr+0x58>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e2833001 	add	r3, r3, #1
     810:	e50b3008 	str	r3, [fp, #-8]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5d33000 	ldrb	r3, [r3]
     81c:	e3530000 	cmp	r3, #0
     820:	1afffff1 	bne	7ec <strchr+0x1c>
     824:	e3a03000 	mov	r3, #0
     828:	e1a00003 	mov	r0, r3
     82c:	e28bd000 	add	sp, fp, #0
     830:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <gets>:
     838:	e92d4800 	push	{fp, lr}
     83c:	e28db004 	add	fp, sp, #4
     840:	e24dd018 	sub	sp, sp, #24
     844:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     848:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     84c:	e3a03000 	mov	r3, #0
     850:	e50b3008 	str	r3, [fp, #-8]
     854:	ea000016 	b	8b4 <gets+0x7c>
     858:	e24b300d 	sub	r3, fp, #13
     85c:	e3a02001 	mov	r2, #1
     860:	e1a01003 	mov	r1, r3
     864:	e3a00000 	mov	r0, #0
     868:	eb0001cf 	bl	fac <read>
     86c:	e50b000c 	str	r0, [fp, #-12]
     870:	e51b300c 	ldr	r3, [fp, #-12]
     874:	e3530000 	cmp	r3, #0
     878:	da000013 	ble	8cc <gets+0x94>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e2832001 	add	r2, r3, #1
     884:	e50b2008 	str	r2, [fp, #-8]
     888:	e1a02003 	mov	r2, r3
     88c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     890:	e0833002 	add	r3, r3, r2
     894:	e55b200d 	ldrb	r2, [fp, #-13]
     898:	e5c32000 	strb	r2, [r3]
     89c:	e55b300d 	ldrb	r3, [fp, #-13]
     8a0:	e353000a 	cmp	r3, #10
     8a4:	0a000009 	beq	8d0 <gets+0x98>
     8a8:	e55b300d 	ldrb	r3, [fp, #-13]
     8ac:	e353000d 	cmp	r3, #13
     8b0:	0a000006 	beq	8d0 <gets+0x98>
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e2833001 	add	r3, r3, #1
     8bc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     8c0:	e1520003 	cmp	r2, r3
     8c4:	caffffe3 	bgt	858 <gets+0x20>
     8c8:	ea000000 	b	8d0 <gets+0x98>
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     8d8:	e0823003 	add	r3, r2, r3
     8dc:	e3a02000 	mov	r2, #0
     8e0:	e5c32000 	strb	r2, [r3]
     8e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8e8:	e1a00003 	mov	r0, r3
     8ec:	e24bd004 	sub	sp, fp, #4
     8f0:	e8bd8800 	pop	{fp, pc}

000008f4 <stat>:
     8f4:	e92d4800 	push	{fp, lr}
     8f8:	e28db004 	add	fp, sp, #4
     8fc:	e24dd010 	sub	sp, sp, #16
     900:	e50b0010 	str	r0, [fp, #-16]
     904:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     908:	e3a01000 	mov	r1, #0
     90c:	e51b0010 	ldr	r0, [fp, #-16]
     910:	eb0001d2 	bl	1060 <open>
     914:	e50b0008 	str	r0, [fp, #-8]
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e3530000 	cmp	r3, #0
     920:	aa000001 	bge	92c <stat+0x38>
     924:	e3e03000 	mvn	r3, #0
     928:	ea000006 	b	948 <stat+0x54>
     92c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     930:	e51b0008 	ldr	r0, [fp, #-8]
     934:	eb0001e4 	bl	10cc <fstat>
     938:	e50b000c 	str	r0, [fp, #-12]
     93c:	e51b0008 	ldr	r0, [fp, #-8]
     940:	eb0001ab 	bl	ff4 <close>
     944:	e51b300c 	ldr	r3, [fp, #-12]
     948:	e1a00003 	mov	r0, r3
     94c:	e24bd004 	sub	sp, fp, #4
     950:	e8bd8800 	pop	{fp, pc}

00000954 <atoi>:
     954:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     958:	e28db000 	add	fp, sp, #0
     95c:	e24dd014 	sub	sp, sp, #20
     960:	e50b0010 	str	r0, [fp, #-16]
     964:	e3a03000 	mov	r3, #0
     968:	e50b3008 	str	r3, [fp, #-8]
     96c:	ea00000c 	b	9a4 <atoi+0x50>
     970:	e51b2008 	ldr	r2, [fp, #-8]
     974:	e1a03002 	mov	r3, r2
     978:	e1a03103 	lsl	r3, r3, #2
     97c:	e0833002 	add	r3, r3, r2
     980:	e1a03083 	lsl	r3, r3, #1
     984:	e1a01003 	mov	r1, r3
     988:	e51b3010 	ldr	r3, [fp, #-16]
     98c:	e2832001 	add	r2, r3, #1
     990:	e50b2010 	str	r2, [fp, #-16]
     994:	e5d33000 	ldrb	r3, [r3]
     998:	e0813003 	add	r3, r1, r3
     99c:	e2433030 	sub	r3, r3, #48	@ 0x30
     9a0:	e50b3008 	str	r3, [fp, #-8]
     9a4:	e51b3010 	ldr	r3, [fp, #-16]
     9a8:	e5d33000 	ldrb	r3, [r3]
     9ac:	e353002f 	cmp	r3, #47	@ 0x2f
     9b0:	9a000003 	bls	9c4 <atoi+0x70>
     9b4:	e51b3010 	ldr	r3, [fp, #-16]
     9b8:	e5d33000 	ldrb	r3, [r3]
     9bc:	e3530039 	cmp	r3, #57	@ 0x39
     9c0:	9affffea 	bls	970 <atoi+0x1c>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e1a00003 	mov	r0, r3
     9cc:	e28bd000 	add	sp, fp, #0
     9d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <memmove>:
     9d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9dc:	e28db000 	add	fp, sp, #0
     9e0:	e24dd01c 	sub	sp, sp, #28
     9e4:	e50b0010 	str	r0, [fp, #-16]
     9e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9f0:	e51b3010 	ldr	r3, [fp, #-16]
     9f4:	e50b3008 	str	r3, [fp, #-8]
     9f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9fc:	e50b300c 	str	r3, [fp, #-12]
     a00:	ea000007 	b	a24 <memmove+0x4c>
     a04:	e51b200c 	ldr	r2, [fp, #-12]
     a08:	e2823001 	add	r3, r2, #1
     a0c:	e50b300c 	str	r3, [fp, #-12]
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e2831001 	add	r1, r3, #1
     a18:	e50b1008 	str	r1, [fp, #-8]
     a1c:	e5d22000 	ldrb	r2, [r2]
     a20:	e5c32000 	strb	r2, [r3]
     a24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a28:	e2432001 	sub	r2, r3, #1
     a2c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a30:	e3530000 	cmp	r3, #0
     a34:	cafffff2 	bgt	a04 <memmove+0x2c>
     a38:	e51b3010 	ldr	r3, [fp, #-16]
     a3c:	e1a00003 	mov	r0, r3
     a40:	e28bd000 	add	sp, fp, #0
     a44:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <strncmp>:
     a4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a50:	e28db000 	add	fp, sp, #0
     a54:	e24dd014 	sub	sp, sp, #20
     a58:	e50b0008 	str	r0, [fp, #-8]
     a5c:	e50b100c 	str	r1, [fp, #-12]
     a60:	e50b2010 	str	r2, [fp, #-16]
     a64:	ea000008 	b	a8c <strncmp+0x40>
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e2833001 	add	r3, r3, #1
     a70:	e50b3008 	str	r3, [fp, #-8]
     a74:	e51b300c 	ldr	r3, [fp, #-12]
     a78:	e2833001 	add	r3, r3, #1
     a7c:	e50b300c 	str	r3, [fp, #-12]
     a80:	e51b3010 	ldr	r3, [fp, #-16]
     a84:	e2433001 	sub	r3, r3, #1
     a88:	e50b3010 	str	r3, [fp, #-16]
     a8c:	e51b3010 	ldr	r3, [fp, #-16]
     a90:	e3530000 	cmp	r3, #0
     a94:	da00000d 	ble	ad0 <strncmp+0x84>
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e5d33000 	ldrb	r3, [r3]
     aa0:	e3530000 	cmp	r3, #0
     aa4:	0a000009 	beq	ad0 <strncmp+0x84>
     aa8:	e51b300c 	ldr	r3, [fp, #-12]
     aac:	e5d33000 	ldrb	r3, [r3]
     ab0:	e3530000 	cmp	r3, #0
     ab4:	0a000005 	beq	ad0 <strncmp+0x84>
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e5d32000 	ldrb	r2, [r3]
     ac0:	e51b300c 	ldr	r3, [fp, #-12]
     ac4:	e5d33000 	ldrb	r3, [r3]
     ac8:	e1520003 	cmp	r2, r3
     acc:	0affffe5 	beq	a68 <strncmp+0x1c>
     ad0:	e51b3010 	ldr	r3, [fp, #-16]
     ad4:	e3530000 	cmp	r3, #0
     ad8:	1a000001 	bne	ae4 <strncmp+0x98>
     adc:	e3a03000 	mov	r3, #0
     ae0:	ea000005 	b	afc <strncmp+0xb0>
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e5d33000 	ldrb	r3, [r3]
     aec:	e1a02003 	mov	r2, r3
     af0:	e51b300c 	ldr	r3, [fp, #-12]
     af4:	e5d33000 	ldrb	r3, [r3]
     af8:	e0423003 	sub	r3, r2, r3
     afc:	e1a00003 	mov	r0, r3
     b00:	e28bd000 	add	sp, fp, #0
     b04:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <strncpy>:
     b0c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     b10:	e28db000 	add	fp, sp, #0
     b14:	e24dd01c 	sub	sp, sp, #28
     b18:	e50b0010 	str	r0, [fp, #-16]
     b1c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     b20:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     b24:	e51b3010 	ldr	r3, [fp, #-16]
     b28:	e50b3008 	str	r3, [fp, #-8]
     b2c:	ea00000a 	b	b5c <strncpy+0x50>
     b30:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     b34:	e2823001 	add	r3, r2, #1
     b38:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e2831001 	add	r1, r3, #1
     b44:	e50b1008 	str	r1, [fp, #-8]
     b48:	e5d22000 	ldrb	r2, [r2]
     b4c:	e5c32000 	strb	r2, [r3]
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e2433001 	sub	r3, r3, #1
     b58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b60:	e3530000 	cmp	r3, #0
     b64:	da00000c 	ble	b9c <strncpy+0x90>
     b68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b6c:	e5d33000 	ldrb	r3, [r3]
     b70:	e3530000 	cmp	r3, #0
     b74:	1affffed 	bne	b30 <strncpy+0x24>
     b78:	ea000007 	b	b9c <strncpy+0x90>
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e2832001 	add	r2, r3, #1
     b84:	e50b2008 	str	r2, [fp, #-8]
     b88:	e3a02000 	mov	r2, #0
     b8c:	e5c32000 	strb	r2, [r3]
     b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b94:	e2433001 	sub	r3, r3, #1
     b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e3530000 	cmp	r3, #0
     ba4:	cafffff4 	bgt	b7c <strncpy+0x70>
     ba8:	e51b3010 	ldr	r3, [fp, #-16]
     bac:	e1a00003 	mov	r0, r3
     bb0:	e28bd000 	add	sp, fp, #0
     bb4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <xchg>:
     bbc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     bc0:	e28db000 	add	fp, sp, #0
     bc4:	e24dd014 	sub	sp, sp, #20
     bc8:	e50b0010 	str	r0, [fp, #-16]
     bcc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     bd0:	e51b2010 	ldr	r2, [fp, #-16]
     bd4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     bd8:	e1023091 	swp	r3, r1, [r2]
     bdc:	e50b3008 	str	r3, [fp, #-8]
     be0:	e51b3008 	ldr	r3, [fp, #-8]
     be4:	e1a00003 	mov	r0, r3
     be8:	e28bd000 	add	sp, fp, #0
     bec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <initiateLock>:
     bf4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     bf8:	e28db000 	add	fp, sp, #0
     bfc:	e24dd00c 	sub	sp, sp, #12
     c00:	e50b0008 	str	r0, [fp, #-8]
     c04:	e51b3008 	ldr	r3, [fp, #-8]
     c08:	e3a02000 	mov	r2, #0
     c0c:	e5832000 	str	r2, [r3]
     c10:	e51b3008 	ldr	r3, [fp, #-8]
     c14:	e3a02001 	mov	r2, #1
     c18:	e5832004 	str	r2, [r3, #4]
     c1c:	e1a00000 	nop			@ (mov r0, r0)
     c20:	e28bd000 	add	sp, fp, #0
     c24:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <acquireLock>:
     c2c:	e92d4800 	push	{fp, lr}
     c30:	e28db004 	add	fp, sp, #4
     c34:	e24dd008 	sub	sp, sp, #8
     c38:	e50b0008 	str	r0, [fp, #-8]
     c3c:	e51b3008 	ldr	r3, [fp, #-8]
     c40:	e5933004 	ldr	r3, [r3, #4]
     c44:	e3530000 	cmp	r3, #0
     c48:	0a000008 	beq	c70 <acquireLock+0x44>
     c4c:	e1a00000 	nop			@ (mov r0, r0)
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e3a01001 	mov	r1, #1
     c58:	e1a00003 	mov	r0, r3
     c5c:	ebffffd6 	bl	bbc <xchg>
     c60:	e1a03000 	mov	r3, r0
     c64:	e3530000 	cmp	r3, #0
     c68:	1afffff8 	bne	c50 <acquireLock+0x24>
     c6c:	ea000000 	b	c74 <acquireLock+0x48>
     c70:	e1a00000 	nop			@ (mov r0, r0)
     c74:	e24bd004 	sub	sp, fp, #4
     c78:	e8bd8800 	pop	{fp, pc}

00000c7c <releaseLock>:
     c7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c80:	e28db000 	add	fp, sp, #0
     c84:	e24dd00c 	sub	sp, sp, #12
     c88:	e50b0008 	str	r0, [fp, #-8]
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e5933004 	ldr	r3, [r3, #4]
     c94:	e3530000 	cmp	r3, #0
     c98:	0a000006 	beq	cb8 <releaseLock+0x3c>
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e3530001 	cmp	r3, #1
     ca8:	1a000002 	bne	cb8 <releaseLock+0x3c>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e3a02000 	mov	r2, #0
     cb4:	e5832000 	str	r2, [r3]
     cb8:	e1a00000 	nop			@ (mov r0, r0)
     cbc:	e28bd000 	add	sp, fp, #0
     cc0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <initiateCondVar>:
     cc8:	e92d4800 	push	{fp, lr}
     ccc:	e28db004 	add	fp, sp, #4
     cd0:	e24dd008 	sub	sp, sp, #8
     cd4:	e50b0008 	str	r0, [fp, #-8]
     cd8:	eb0001b8 	bl	13c0 <getChannel>
     cdc:	e1a02000 	mov	r2, r0
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e5832000 	str	r2, [r3]
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e3a02001 	mov	r2, #1
     cf0:	e5832004 	str	r2, [r3, #4]
     cf4:	e1a00000 	nop			@ (mov r0, r0)
     cf8:	e24bd004 	sub	sp, fp, #4
     cfc:	e8bd8800 	pop	{fp, pc}

00000d00 <condWait>:
     d00:	e92d4800 	push	{fp, lr}
     d04:	e28db004 	add	fp, sp, #4
     d08:	e24dd008 	sub	sp, sp, #8
     d0c:	e50b0008 	str	r0, [fp, #-8]
     d10:	e50b100c 	str	r1, [fp, #-12]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933004 	ldr	r3, [r3, #4]
     d1c:	e3530000 	cmp	r3, #0
     d20:	0a00000c 	beq	d58 <condWait+0x58>
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5933004 	ldr	r3, [r3, #4]
     d2c:	e3530000 	cmp	r3, #0
     d30:	0a000008 	beq	d58 <condWait+0x58>
     d34:	e51b000c 	ldr	r0, [fp, #-12]
     d38:	ebffffcf 	bl	c7c <releaseLock>
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e1a00003 	mov	r0, r3
     d48:	eb000193 	bl	139c <sleepChan>
     d4c:	e51b000c 	ldr	r0, [fp, #-12]
     d50:	ebffffb5 	bl	c2c <acquireLock>
     d54:	ea000000 	b	d5c <condWait+0x5c>
     d58:	e1a00000 	nop			@ (mov r0, r0)
     d5c:	e24bd004 	sub	sp, fp, #4
     d60:	e8bd8800 	pop	{fp, pc}

00000d64 <broadcast>:
     d64:	e92d4800 	push	{fp, lr}
     d68:	e28db004 	add	fp, sp, #4
     d6c:	e24dd008 	sub	sp, sp, #8
     d70:	e50b0008 	str	r0, [fp, #-8]
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5933004 	ldr	r3, [r3, #4]
     d7c:	e3530000 	cmp	r3, #0
     d80:	0a000004 	beq	d98 <broadcast+0x34>
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e1a00003 	mov	r0, r3
     d90:	eb000193 	bl	13e4 <sigChan>
     d94:	ea000000 	b	d9c <broadcast+0x38>
     d98:	e1a00000 	nop			@ (mov r0, r0)
     d9c:	e24bd004 	sub	sp, fp, #4
     da0:	e8bd8800 	pop	{fp, pc}

00000da4 <signal>:
     da4:	e92d4800 	push	{fp, lr}
     da8:	e28db004 	add	fp, sp, #4
     dac:	e24dd008 	sub	sp, sp, #8
     db0:	e50b0008 	str	r0, [fp, #-8]
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5933004 	ldr	r3, [r3, #4]
     dbc:	e3530000 	cmp	r3, #0
     dc0:	0a000004 	beq	dd8 <signal+0x34>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e1a00003 	mov	r0, r3
     dd0:	eb00018c 	bl	1408 <sigOneChan>
     dd4:	ea000000 	b	ddc <signal+0x38>
     dd8:	e1a00000 	nop			@ (mov r0, r0)
     ddc:	e24bd004 	sub	sp, fp, #4
     de0:	e8bd8800 	pop	{fp, pc}

00000de4 <semInit>:
     de4:	e92d4800 	push	{fp, lr}
     de8:	e28db004 	add	fp, sp, #4
     dec:	e24dd008 	sub	sp, sp, #8
     df0:	e50b0008 	str	r0, [fp, #-8]
     df4:	e50b100c 	str	r1, [fp, #-12]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e2833004 	add	r3, r3, #4
     e00:	e1a00003 	mov	r0, r3
     e04:	ebffff7a 	bl	bf4 <initiateLock>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e283300c 	add	r3, r3, #12
     e10:	e1a00003 	mov	r0, r3
     e14:	ebffffab 	bl	cc8 <initiateCondVar>
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e51b200c 	ldr	r2, [fp, #-12]
     e20:	e5832000 	str	r2, [r3]
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e3a02001 	mov	r2, #1
     e2c:	e5832014 	str	r2, [r3, #20]
     e30:	e1a00000 	nop			@ (mov r0, r0)
     e34:	e24bd004 	sub	sp, fp, #4
     e38:	e8bd8800 	pop	{fp, pc}

00000e3c <semUp>:
     e3c:	e92d4800 	push	{fp, lr}
     e40:	e28db004 	add	fp, sp, #4
     e44:	e24dd008 	sub	sp, sp, #8
     e48:	e50b0008 	str	r0, [fp, #-8]
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e2833004 	add	r3, r3, #4
     e54:	e1a00003 	mov	r0, r3
     e58:	ebffff73 	bl	c2c <acquireLock>
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e2832001 	add	r2, r3, #1
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5832000 	str	r2, [r3]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e283300c 	add	r3, r3, #12
     e78:	e1a00003 	mov	r0, r3
     e7c:	ebffffc8 	bl	da4 <signal>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e2833004 	add	r3, r3, #4
     e88:	e1a00003 	mov	r0, r3
     e8c:	ebffff7a 	bl	c7c <releaseLock>
     e90:	e1a00000 	nop			@ (mov r0, r0)
     e94:	e24bd004 	sub	sp, fp, #4
     e98:	e8bd8800 	pop	{fp, pc}

00000e9c <semDown>:
     e9c:	e92d4800 	push	{fp, lr}
     ea0:	e28db004 	add	fp, sp, #4
     ea4:	e24dd008 	sub	sp, sp, #8
     ea8:	e50b0008 	str	r0, [fp, #-8]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e2833004 	add	r3, r3, #4
     eb4:	e1a00003 	mov	r0, r3
     eb8:	ebffff5b 	bl	c2c <acquireLock>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e2432001 	sub	r2, r3, #1
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5832000 	str	r2, [r3]
     ed0:	ea000006 	b	ef0 <semDown+0x54>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e283200c 	add	r2, r3, #12
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e2833004 	add	r3, r3, #4
     ee4:	e1a01003 	mov	r1, r3
     ee8:	e1a00002 	mov	r0, r2
     eec:	ebffff83 	bl	d00 <condWait>
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e3530000 	cmp	r3, #0
     efc:	bafffff4 	blt	ed4 <semDown+0x38>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e2833004 	add	r3, r3, #4
     f08:	e1a00003 	mov	r0, r3
     f0c:	ebffff5a 	bl	c7c <releaseLock>
     f10:	e1a00000 	nop			@ (mov r0, r0)
     f14:	e24bd004 	sub	sp, fp, #4
     f18:	e8bd8800 	pop	{fp, pc}

00000f1c <fork>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a00001 	mov	r0, #1
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <exit>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00002 	mov	r0, #2
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <wait>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a00003 	mov	r0, #3
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <pipe>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00004 	mov	r0, #4
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <read>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00005 	mov	r0, #5
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <write>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00010 	mov	r0, #16
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <close>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00015 	mov	r0, #21
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <kill>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a00006 	mov	r0, #6
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <exec>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a00007 	mov	r0, #7
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <open>:
    1060:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1064:	e1a04003 	mov	r4, r3
    1068:	e1a03002 	mov	r3, r2
    106c:	e1a02001 	mov	r2, r1
    1070:	e1a01000 	mov	r1, r0
    1074:	e3a0000f 	mov	r0, #15
    1078:	ef000000 	svc	0x00000000
    107c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1080:	e12fff1e 	bx	lr

00001084 <mknod>:
    1084:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1088:	e1a04003 	mov	r4, r3
    108c:	e1a03002 	mov	r3, r2
    1090:	e1a02001 	mov	r2, r1
    1094:	e1a01000 	mov	r1, r0
    1098:	e3a00011 	mov	r0, #17
    109c:	ef000000 	svc	0x00000000
    10a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <unlink>:
    10a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ac:	e1a04003 	mov	r4, r3
    10b0:	e1a03002 	mov	r3, r2
    10b4:	e1a02001 	mov	r2, r1
    10b8:	e1a01000 	mov	r1, r0
    10bc:	e3a00012 	mov	r0, #18
    10c0:	ef000000 	svc	0x00000000
    10c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c8:	e12fff1e 	bx	lr

000010cc <fstat>:
    10cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10d0:	e1a04003 	mov	r4, r3
    10d4:	e1a03002 	mov	r3, r2
    10d8:	e1a02001 	mov	r2, r1
    10dc:	e1a01000 	mov	r1, r0
    10e0:	e3a00008 	mov	r0, #8
    10e4:	ef000000 	svc	0x00000000
    10e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10ec:	e12fff1e 	bx	lr

000010f0 <link>:
    10f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f4:	e1a04003 	mov	r4, r3
    10f8:	e1a03002 	mov	r3, r2
    10fc:	e1a02001 	mov	r2, r1
    1100:	e1a01000 	mov	r1, r0
    1104:	e3a00013 	mov	r0, #19
    1108:	ef000000 	svc	0x00000000
    110c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1110:	e12fff1e 	bx	lr

00001114 <mkdir>:
    1114:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1118:	e1a04003 	mov	r4, r3
    111c:	e1a03002 	mov	r3, r2
    1120:	e1a02001 	mov	r2, r1
    1124:	e1a01000 	mov	r1, r0
    1128:	e3a00014 	mov	r0, #20
    112c:	ef000000 	svc	0x00000000
    1130:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1134:	e12fff1e 	bx	lr

00001138 <chdir>:
    1138:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    113c:	e1a04003 	mov	r4, r3
    1140:	e1a03002 	mov	r3, r2
    1144:	e1a02001 	mov	r2, r1
    1148:	e1a01000 	mov	r1, r0
    114c:	e3a00009 	mov	r0, #9
    1150:	ef000000 	svc	0x00000000
    1154:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1158:	e12fff1e 	bx	lr

0000115c <dup>:
    115c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1160:	e1a04003 	mov	r4, r3
    1164:	e1a03002 	mov	r3, r2
    1168:	e1a02001 	mov	r2, r1
    116c:	e1a01000 	mov	r1, r0
    1170:	e3a0000a 	mov	r0, #10
    1174:	ef000000 	svc	0x00000000
    1178:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    117c:	e12fff1e 	bx	lr

00001180 <getpid>:
    1180:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1184:	e1a04003 	mov	r4, r3
    1188:	e1a03002 	mov	r3, r2
    118c:	e1a02001 	mov	r2, r1
    1190:	e1a01000 	mov	r1, r0
    1194:	e3a0000b 	mov	r0, #11
    1198:	ef000000 	svc	0x00000000
    119c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11a0:	e12fff1e 	bx	lr

000011a4 <sbrk>:
    11a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11a8:	e1a04003 	mov	r4, r3
    11ac:	e1a03002 	mov	r3, r2
    11b0:	e1a02001 	mov	r2, r1
    11b4:	e1a01000 	mov	r1, r0
    11b8:	e3a0000c 	mov	r0, #12
    11bc:	ef000000 	svc	0x00000000
    11c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11c4:	e12fff1e 	bx	lr

000011c8 <sleep>:
    11c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11cc:	e1a04003 	mov	r4, r3
    11d0:	e1a03002 	mov	r3, r2
    11d4:	e1a02001 	mov	r2, r1
    11d8:	e1a01000 	mov	r1, r0
    11dc:	e3a0000d 	mov	r0, #13
    11e0:	ef000000 	svc	0x00000000
    11e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11e8:	e12fff1e 	bx	lr

000011ec <uptime>:
    11ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11f0:	e1a04003 	mov	r4, r3
    11f4:	e1a03002 	mov	r3, r2
    11f8:	e1a02001 	mov	r2, r1
    11fc:	e1a01000 	mov	r1, r0
    1200:	e3a0000e 	mov	r0, #14
    1204:	ef000000 	svc	0x00000000
    1208:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    120c:	e12fff1e 	bx	lr

00001210 <proclist>:
    1210:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1214:	e1a04003 	mov	r4, r3
    1218:	e1a03002 	mov	r3, r2
    121c:	e1a02001 	mov	r2, r1
    1220:	e1a01000 	mov	r1, r0
    1224:	e3a00016 	mov	r0, #22
    1228:	ef000000 	svc	0x00000000
    122c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1230:	e12fff1e 	bx	lr

00001234 <settickets>:
    1234:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1238:	e1a04003 	mov	r4, r3
    123c:	e1a03002 	mov	r3, r2
    1240:	e1a02001 	mov	r2, r1
    1244:	e1a01000 	mov	r1, r0
    1248:	e3a00017 	mov	r0, #23
    124c:	ef000000 	svc	0x00000000
    1250:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1254:	e12fff1e 	bx	lr

00001258 <srand>:
    1258:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    125c:	e1a04003 	mov	r4, r3
    1260:	e1a03002 	mov	r3, r2
    1264:	e1a02001 	mov	r2, r1
    1268:	e1a01000 	mov	r1, r0
    126c:	e3a00018 	mov	r0, #24
    1270:	ef000000 	svc	0x00000000
    1274:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1278:	e12fff1e 	bx	lr

0000127c <getpinfo>:
    127c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1280:	e1a04003 	mov	r4, r3
    1284:	e1a03002 	mov	r3, r2
    1288:	e1a02001 	mov	r2, r1
    128c:	e1a01000 	mov	r1, r0
    1290:	e3a00019 	mov	r0, #25
    1294:	ef000000 	svc	0x00000000
    1298:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    129c:	e12fff1e 	bx	lr

000012a0 <print_pt>:
    12a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12a4:	e1a04003 	mov	r4, r3
    12a8:	e1a03002 	mov	r3, r2
    12ac:	e1a02001 	mov	r2, r1
    12b0:	e1a01000 	mov	r1, r0
    12b4:	e3a0001f 	mov	r0, #31
    12b8:	ef000000 	svc	0x00000000
    12bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12c0:	e12fff1e 	bx	lr

000012c4 <thread_create>:
    12c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12c8:	e1a04003 	mov	r4, r3
    12cc:	e1a03002 	mov	r3, r2
    12d0:	e1a02001 	mov	r2, r1
    12d4:	e1a01000 	mov	r1, r0
    12d8:	e3a00020 	mov	r0, #32
    12dc:	ef000000 	svc	0x00000000
    12e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12e4:	e12fff1e 	bx	lr

000012e8 <thread_exit>:
    12e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12ec:	e1a04003 	mov	r4, r3
    12f0:	e1a03002 	mov	r3, r2
    12f4:	e1a02001 	mov	r2, r1
    12f8:	e1a01000 	mov	r1, r0
    12fc:	e3a00021 	mov	r0, #33	@ 0x21
    1300:	ef000000 	svc	0x00000000
    1304:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1308:	e12fff1e 	bx	lr

0000130c <thread_join>:
    130c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1310:	e1a04003 	mov	r4, r3
    1314:	e1a03002 	mov	r3, r2
    1318:	e1a02001 	mov	r2, r1
    131c:	e1a01000 	mov	r1, r0
    1320:	e3a00022 	mov	r0, #34	@ 0x22
    1324:	ef000000 	svc	0x00000000
    1328:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    132c:	e12fff1e 	bx	lr

00001330 <waitpid>:
    1330:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1334:	e1a04003 	mov	r4, r3
    1338:	e1a03002 	mov	r3, r2
    133c:	e1a02001 	mov	r2, r1
    1340:	e1a01000 	mov	r1, r0
    1344:	e3a00023 	mov	r0, #35	@ 0x23
    1348:	ef000000 	svc	0x00000000
    134c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1350:	e12fff1e 	bx	lr

00001354 <barrier_init>:
    1354:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1358:	e1a04003 	mov	r4, r3
    135c:	e1a03002 	mov	r3, r2
    1360:	e1a02001 	mov	r2, r1
    1364:	e1a01000 	mov	r1, r0
    1368:	e3a00024 	mov	r0, #36	@ 0x24
    136c:	ef000000 	svc	0x00000000
    1370:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1374:	e12fff1e 	bx	lr

00001378 <barrier_check>:
    1378:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    137c:	e1a04003 	mov	r4, r3
    1380:	e1a03002 	mov	r3, r2
    1384:	e1a02001 	mov	r2, r1
    1388:	e1a01000 	mov	r1, r0
    138c:	e3a00025 	mov	r0, #37	@ 0x25
    1390:	ef000000 	svc	0x00000000
    1394:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1398:	e12fff1e 	bx	lr

0000139c <sleepChan>:
    139c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    13a0:	e1a04003 	mov	r4, r3
    13a4:	e1a03002 	mov	r3, r2
    13a8:	e1a02001 	mov	r2, r1
    13ac:	e1a01000 	mov	r1, r0
    13b0:	e3a00026 	mov	r0, #38	@ 0x26
    13b4:	ef000000 	svc	0x00000000
    13b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    13bc:	e12fff1e 	bx	lr

000013c0 <getChannel>:
    13c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    13c4:	e1a04003 	mov	r4, r3
    13c8:	e1a03002 	mov	r3, r2
    13cc:	e1a02001 	mov	r2, r1
    13d0:	e1a01000 	mov	r1, r0
    13d4:	e3a00027 	mov	r0, #39	@ 0x27
    13d8:	ef000000 	svc	0x00000000
    13dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    13e0:	e12fff1e 	bx	lr

000013e4 <sigChan>:
    13e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    13e8:	e1a04003 	mov	r4, r3
    13ec:	e1a03002 	mov	r3, r2
    13f0:	e1a02001 	mov	r2, r1
    13f4:	e1a01000 	mov	r1, r0
    13f8:	e3a00028 	mov	r0, #40	@ 0x28
    13fc:	ef000000 	svc	0x00000000
    1400:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1404:	e12fff1e 	bx	lr

00001408 <sigOneChan>:
    1408:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    140c:	e1a04003 	mov	r4, r3
    1410:	e1a03002 	mov	r3, r2
    1414:	e1a02001 	mov	r2, r1
    1418:	e1a01000 	mov	r1, r0
    141c:	e3a00029 	mov	r0, #41	@ 0x29
    1420:	ef000000 	svc	0x00000000
    1424:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1428:	e12fff1e 	bx	lr

0000142c <symlink>:
    142c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1430:	e1a04003 	mov	r4, r3
    1434:	e1a03002 	mov	r3, r2
    1438:	e1a02001 	mov	r2, r1
    143c:	e1a01000 	mov	r1, r0
    1440:	e3a0002a 	mov	r0, #42	@ 0x2a
    1444:	ef000000 	svc	0x00000000
    1448:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    144c:	e12fff1e 	bx	lr

00001450 <syscall>:
    1450:	ef000000 	svc	0x00000000
    1454:	e12fff1e 	bx	lr

00001458 <putc>:
    1458:	e92d4800 	push	{fp, lr}
    145c:	e28db004 	add	fp, sp, #4
    1460:	e24dd008 	sub	sp, sp, #8
    1464:	e50b0008 	str	r0, [fp, #-8]
    1468:	e1a03001 	mov	r3, r1
    146c:	e54b3009 	strb	r3, [fp, #-9]
    1470:	e24b3009 	sub	r3, fp, #9
    1474:	e3a02001 	mov	r2, #1
    1478:	e1a01003 	mov	r1, r3
    147c:	e51b0008 	ldr	r0, [fp, #-8]
    1480:	ebfffed2 	bl	fd0 <write>
    1484:	e1a00000 	nop			@ (mov r0, r0)
    1488:	e24bd004 	sub	sp, fp, #4
    148c:	e8bd8800 	pop	{fp, pc}

00001490 <printint>:
    1490:	e92d4800 	push	{fp, lr}
    1494:	e28db004 	add	fp, sp, #4
    1498:	e24dd030 	sub	sp, sp, #48	@ 0x30
    149c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    14a0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    14a4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    14a8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    14ac:	e3a03000 	mov	r3, #0
    14b0:	e50b300c 	str	r3, [fp, #-12]
    14b4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    14b8:	e3530000 	cmp	r3, #0
    14bc:	0a000008 	beq	14e4 <printint+0x54>
    14c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    14c4:	e3530000 	cmp	r3, #0
    14c8:	aa000005 	bge	14e4 <printint+0x54>
    14cc:	e3a03001 	mov	r3, #1
    14d0:	e50b300c 	str	r3, [fp, #-12]
    14d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    14d8:	e2633000 	rsb	r3, r3, #0
    14dc:	e50b3010 	str	r3, [fp, #-16]
    14e0:	ea000001 	b	14ec <printint+0x5c>
    14e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    14e8:	e50b3010 	str	r3, [fp, #-16]
    14ec:	e3a03000 	mov	r3, #0
    14f0:	e50b3008 	str	r3, [fp, #-8]
    14f4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    14f8:	e51b3010 	ldr	r3, [fp, #-16]
    14fc:	e1a01002 	mov	r1, r2
    1500:	e1a00003 	mov	r0, r3
    1504:	eb0001d5 	bl	1c60 <__aeabi_uidivmod>
    1508:	e1a03001 	mov	r3, r1
    150c:	e1a01003 	mov	r1, r3
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e2832001 	add	r2, r3, #1
    1518:	e50b2008 	str	r2, [fp, #-8]
    151c:	e59f20a0 	ldr	r2, [pc, #160]	@ 15c4 <printint+0x134>
    1520:	e7d22001 	ldrb	r2, [r2, r1]
    1524:	e2433004 	sub	r3, r3, #4
    1528:	e083300b 	add	r3, r3, fp
    152c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1530:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1534:	e1a01003 	mov	r1, r3
    1538:	e51b0010 	ldr	r0, [fp, #-16]
    153c:	eb00018a 	bl	1b6c <__udivsi3>
    1540:	e1a03000 	mov	r3, r0
    1544:	e50b3010 	str	r3, [fp, #-16]
    1548:	e51b3010 	ldr	r3, [fp, #-16]
    154c:	e3530000 	cmp	r3, #0
    1550:	1affffe7 	bne	14f4 <printint+0x64>
    1554:	e51b300c 	ldr	r3, [fp, #-12]
    1558:	e3530000 	cmp	r3, #0
    155c:	0a00000e 	beq	159c <printint+0x10c>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e2832001 	add	r2, r3, #1
    1568:	e50b2008 	str	r2, [fp, #-8]
    156c:	e2433004 	sub	r3, r3, #4
    1570:	e083300b 	add	r3, r3, fp
    1574:	e3a0202d 	mov	r2, #45	@ 0x2d
    1578:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    157c:	ea000006 	b	159c <printint+0x10c>
    1580:	e24b2020 	sub	r2, fp, #32
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e0823003 	add	r3, r2, r3
    158c:	e5d33000 	ldrb	r3, [r3]
    1590:	e1a01003 	mov	r1, r3
    1594:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1598:	ebffffae 	bl	1458 <putc>
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e2433001 	sub	r3, r3, #1
    15a4:	e50b3008 	str	r3, [fp, #-8]
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e3530000 	cmp	r3, #0
    15b0:	aafffff2 	bge	1580 <printint+0xf0>
    15b4:	e1a00000 	nop			@ (mov r0, r0)
    15b8:	e1a00000 	nop			@ (mov r0, r0)
    15bc:	e24bd004 	sub	sp, fp, #4
    15c0:	e8bd8800 	pop	{fp, pc}
    15c4:	0000284c 	.word	0x0000284c

000015c8 <printf>:
    15c8:	e92d000e 	push	{r1, r2, r3}
    15cc:	e92d4800 	push	{fp, lr}
    15d0:	e28db004 	add	fp, sp, #4
    15d4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    15d8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    15dc:	e3a03000 	mov	r3, #0
    15e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    15e4:	e28b3008 	add	r3, fp, #8
    15e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    15ec:	e3a03000 	mov	r3, #0
    15f0:	e50b3010 	str	r3, [fp, #-16]
    15f4:	ea000074 	b	17cc <printf+0x204>
    15f8:	e59b2004 	ldr	r2, [fp, #4]
    15fc:	e51b3010 	ldr	r3, [fp, #-16]
    1600:	e0823003 	add	r3, r2, r3
    1604:	e5d33000 	ldrb	r3, [r3]
    1608:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    160c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1610:	e3530000 	cmp	r3, #0
    1614:	1a00000b 	bne	1648 <printf+0x80>
    1618:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    161c:	e3530025 	cmp	r3, #37	@ 0x25
    1620:	1a000002 	bne	1630 <printf+0x68>
    1624:	e3a03025 	mov	r3, #37	@ 0x25
    1628:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    162c:	ea000063 	b	17c0 <printf+0x1f8>
    1630:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1634:	e6ef3073 	uxtb	r3, r3
    1638:	e1a01003 	mov	r1, r3
    163c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1640:	ebffff84 	bl	1458 <putc>
    1644:	ea00005d 	b	17c0 <printf+0x1f8>
    1648:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    164c:	e3530025 	cmp	r3, #37	@ 0x25
    1650:	1a00005a 	bne	17c0 <printf+0x1f8>
    1654:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1658:	e3530064 	cmp	r3, #100	@ 0x64
    165c:	1a00000a 	bne	168c <printf+0xc4>
    1660:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1664:	e5933000 	ldr	r3, [r3]
    1668:	e1a01003 	mov	r1, r3
    166c:	e3a03001 	mov	r3, #1
    1670:	e3a0200a 	mov	r2, #10
    1674:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1678:	ebffff84 	bl	1490 <printint>
    167c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1680:	e2833004 	add	r3, r3, #4
    1684:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1688:	ea00004a 	b	17b8 <printf+0x1f0>
    168c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1690:	e3530078 	cmp	r3, #120	@ 0x78
    1694:	0a000002 	beq	16a4 <printf+0xdc>
    1698:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    169c:	e3530070 	cmp	r3, #112	@ 0x70
    16a0:	1a00000a 	bne	16d0 <printf+0x108>
    16a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16a8:	e5933000 	ldr	r3, [r3]
    16ac:	e1a01003 	mov	r1, r3
    16b0:	e3a03000 	mov	r3, #0
    16b4:	e3a02010 	mov	r2, #16
    16b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    16bc:	ebffff73 	bl	1490 <printint>
    16c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16c4:	e2833004 	add	r3, r3, #4
    16c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    16cc:	ea000039 	b	17b8 <printf+0x1f0>
    16d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    16d4:	e3530073 	cmp	r3, #115	@ 0x73
    16d8:	1a000018 	bne	1740 <printf+0x178>
    16dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16e0:	e5933000 	ldr	r3, [r3]
    16e4:	e50b300c 	str	r3, [fp, #-12]
    16e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16ec:	e2833004 	add	r3, r3, #4
    16f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    16f4:	e51b300c 	ldr	r3, [fp, #-12]
    16f8:	e3530000 	cmp	r3, #0
    16fc:	1a00000a 	bne	172c <printf+0x164>
    1700:	e59f30f4 	ldr	r3, [pc, #244]	@ 17fc <printf+0x234>
    1704:	e50b300c 	str	r3, [fp, #-12]
    1708:	ea000007 	b	172c <printf+0x164>
    170c:	e51b300c 	ldr	r3, [fp, #-12]
    1710:	e5d33000 	ldrb	r3, [r3]
    1714:	e1a01003 	mov	r1, r3
    1718:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    171c:	ebffff4d 	bl	1458 <putc>
    1720:	e51b300c 	ldr	r3, [fp, #-12]
    1724:	e2833001 	add	r3, r3, #1
    1728:	e50b300c 	str	r3, [fp, #-12]
    172c:	e51b300c 	ldr	r3, [fp, #-12]
    1730:	e5d33000 	ldrb	r3, [r3]
    1734:	e3530000 	cmp	r3, #0
    1738:	1afffff3 	bne	170c <printf+0x144>
    173c:	ea00001d 	b	17b8 <printf+0x1f0>
    1740:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1744:	e3530063 	cmp	r3, #99	@ 0x63
    1748:	1a000009 	bne	1774 <printf+0x1ac>
    174c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1750:	e5933000 	ldr	r3, [r3]
    1754:	e6ef3073 	uxtb	r3, r3
    1758:	e1a01003 	mov	r1, r3
    175c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1760:	ebffff3c 	bl	1458 <putc>
    1764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1768:	e2833004 	add	r3, r3, #4
    176c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1770:	ea000010 	b	17b8 <printf+0x1f0>
    1774:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1778:	e3530025 	cmp	r3, #37	@ 0x25
    177c:	1a000005 	bne	1798 <printf+0x1d0>
    1780:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1784:	e6ef3073 	uxtb	r3, r3
    1788:	e1a01003 	mov	r1, r3
    178c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1790:	ebffff30 	bl	1458 <putc>
    1794:	ea000007 	b	17b8 <printf+0x1f0>
    1798:	e3a01025 	mov	r1, #37	@ 0x25
    179c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    17a0:	ebffff2c 	bl	1458 <putc>
    17a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    17a8:	e6ef3073 	uxtb	r3, r3
    17ac:	e1a01003 	mov	r1, r3
    17b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    17b4:	ebffff27 	bl	1458 <putc>
    17b8:	e3a03000 	mov	r3, #0
    17bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    17c0:	e51b3010 	ldr	r3, [fp, #-16]
    17c4:	e2833001 	add	r3, r3, #1
    17c8:	e50b3010 	str	r3, [fp, #-16]
    17cc:	e59b2004 	ldr	r2, [fp, #4]
    17d0:	e51b3010 	ldr	r3, [fp, #-16]
    17d4:	e0823003 	add	r3, r2, r3
    17d8:	e5d33000 	ldrb	r3, [r3]
    17dc:	e3530000 	cmp	r3, #0
    17e0:	1affff84 	bne	15f8 <printf+0x30>
    17e4:	e1a00000 	nop			@ (mov r0, r0)
    17e8:	e1a00000 	nop			@ (mov r0, r0)
    17ec:	e24bd004 	sub	sp, fp, #4
    17f0:	e8bd4800 	pop	{fp, lr}
    17f4:	e28dd00c 	add	sp, sp, #12
    17f8:	e12fff1e 	bx	lr
    17fc:	00002844 	.word	0x00002844

00001800 <free>:
    1800:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1804:	e28db000 	add	fp, sp, #0
    1808:	e24dd014 	sub	sp, sp, #20
    180c:	e50b0010 	str	r0, [fp, #-16]
    1810:	e51b3010 	ldr	r3, [fp, #-16]
    1814:	e2433008 	sub	r3, r3, #8
    1818:	e50b300c 	str	r3, [fp, #-12]
    181c:	e59f3154 	ldr	r3, [pc, #340]	@ 1978 <free+0x178>
    1820:	e5933000 	ldr	r3, [r3]
    1824:	e50b3008 	str	r3, [fp, #-8]
    1828:	ea000010 	b	1870 <free+0x70>
    182c:	e51b3008 	ldr	r3, [fp, #-8]
    1830:	e5933000 	ldr	r3, [r3]
    1834:	e51b2008 	ldr	r2, [fp, #-8]
    1838:	e1520003 	cmp	r2, r3
    183c:	3a000008 	bcc	1864 <free+0x64>
    1840:	e51b200c 	ldr	r2, [fp, #-12]
    1844:	e51b3008 	ldr	r3, [fp, #-8]
    1848:	e1520003 	cmp	r2, r3
    184c:	8a000010 	bhi	1894 <free+0x94>
    1850:	e51b3008 	ldr	r3, [fp, #-8]
    1854:	e5933000 	ldr	r3, [r3]
    1858:	e51b200c 	ldr	r2, [fp, #-12]
    185c:	e1520003 	cmp	r2, r3
    1860:	3a00000b 	bcc	1894 <free+0x94>
    1864:	e51b3008 	ldr	r3, [fp, #-8]
    1868:	e5933000 	ldr	r3, [r3]
    186c:	e50b3008 	str	r3, [fp, #-8]
    1870:	e51b200c 	ldr	r2, [fp, #-12]
    1874:	e51b3008 	ldr	r3, [fp, #-8]
    1878:	e1520003 	cmp	r2, r3
    187c:	9affffea 	bls	182c <free+0x2c>
    1880:	e51b3008 	ldr	r3, [fp, #-8]
    1884:	e5933000 	ldr	r3, [r3]
    1888:	e51b200c 	ldr	r2, [fp, #-12]
    188c:	e1520003 	cmp	r2, r3
    1890:	2affffe5 	bcs	182c <free+0x2c>
    1894:	e51b300c 	ldr	r3, [fp, #-12]
    1898:	e5933004 	ldr	r3, [r3, #4]
    189c:	e1a03183 	lsl	r3, r3, #3
    18a0:	e51b200c 	ldr	r2, [fp, #-12]
    18a4:	e0822003 	add	r2, r2, r3
    18a8:	e51b3008 	ldr	r3, [fp, #-8]
    18ac:	e5933000 	ldr	r3, [r3]
    18b0:	e1520003 	cmp	r2, r3
    18b4:	1a00000d 	bne	18f0 <free+0xf0>
    18b8:	e51b300c 	ldr	r3, [fp, #-12]
    18bc:	e5932004 	ldr	r2, [r3, #4]
    18c0:	e51b3008 	ldr	r3, [fp, #-8]
    18c4:	e5933000 	ldr	r3, [r3]
    18c8:	e5933004 	ldr	r3, [r3, #4]
    18cc:	e0822003 	add	r2, r2, r3
    18d0:	e51b300c 	ldr	r3, [fp, #-12]
    18d4:	e5832004 	str	r2, [r3, #4]
    18d8:	e51b3008 	ldr	r3, [fp, #-8]
    18dc:	e5933000 	ldr	r3, [r3]
    18e0:	e5932000 	ldr	r2, [r3]
    18e4:	e51b300c 	ldr	r3, [fp, #-12]
    18e8:	e5832000 	str	r2, [r3]
    18ec:	ea000003 	b	1900 <free+0x100>
    18f0:	e51b3008 	ldr	r3, [fp, #-8]
    18f4:	e5932000 	ldr	r2, [r3]
    18f8:	e51b300c 	ldr	r3, [fp, #-12]
    18fc:	e5832000 	str	r2, [r3]
    1900:	e51b3008 	ldr	r3, [fp, #-8]
    1904:	e5933004 	ldr	r3, [r3, #4]
    1908:	e1a03183 	lsl	r3, r3, #3
    190c:	e51b2008 	ldr	r2, [fp, #-8]
    1910:	e0823003 	add	r3, r2, r3
    1914:	e51b200c 	ldr	r2, [fp, #-12]
    1918:	e1520003 	cmp	r2, r3
    191c:	1a00000b 	bne	1950 <free+0x150>
    1920:	e51b3008 	ldr	r3, [fp, #-8]
    1924:	e5932004 	ldr	r2, [r3, #4]
    1928:	e51b300c 	ldr	r3, [fp, #-12]
    192c:	e5933004 	ldr	r3, [r3, #4]
    1930:	e0822003 	add	r2, r2, r3
    1934:	e51b3008 	ldr	r3, [fp, #-8]
    1938:	e5832004 	str	r2, [r3, #4]
    193c:	e51b300c 	ldr	r3, [fp, #-12]
    1940:	e5932000 	ldr	r2, [r3]
    1944:	e51b3008 	ldr	r3, [fp, #-8]
    1948:	e5832000 	str	r2, [r3]
    194c:	ea000002 	b	195c <free+0x15c>
    1950:	e51b3008 	ldr	r3, [fp, #-8]
    1954:	e51b200c 	ldr	r2, [fp, #-12]
    1958:	e5832000 	str	r2, [r3]
    195c:	e59f2014 	ldr	r2, [pc, #20]	@ 1978 <free+0x178>
    1960:	e51b3008 	ldr	r3, [fp, #-8]
    1964:	e5823000 	str	r3, [r2]
    1968:	e1a00000 	nop			@ (mov r0, r0)
    196c:	e28bd000 	add	sp, fp, #0
    1970:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1974:	e12fff1e 	bx	lr
    1978:	00002868 	.word	0x00002868

0000197c <morecore>:
    197c:	e92d4800 	push	{fp, lr}
    1980:	e28db004 	add	fp, sp, #4
    1984:	e24dd010 	sub	sp, sp, #16
    1988:	e50b0010 	str	r0, [fp, #-16]
    198c:	e51b3010 	ldr	r3, [fp, #-16]
    1990:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1994:	2a000001 	bcs	19a0 <morecore+0x24>
    1998:	e3a03a01 	mov	r3, #4096	@ 0x1000
    199c:	e50b3010 	str	r3, [fp, #-16]
    19a0:	e51b3010 	ldr	r3, [fp, #-16]
    19a4:	e1a03183 	lsl	r3, r3, #3
    19a8:	e1a00003 	mov	r0, r3
    19ac:	ebfffdfc 	bl	11a4 <sbrk>
    19b0:	e50b0008 	str	r0, [fp, #-8]
    19b4:	e51b3008 	ldr	r3, [fp, #-8]
    19b8:	e3730001 	cmn	r3, #1
    19bc:	1a000001 	bne	19c8 <morecore+0x4c>
    19c0:	e3a03000 	mov	r3, #0
    19c4:	ea00000a 	b	19f4 <morecore+0x78>
    19c8:	e51b3008 	ldr	r3, [fp, #-8]
    19cc:	e50b300c 	str	r3, [fp, #-12]
    19d0:	e51b300c 	ldr	r3, [fp, #-12]
    19d4:	e51b2010 	ldr	r2, [fp, #-16]
    19d8:	e5832004 	str	r2, [r3, #4]
    19dc:	e51b300c 	ldr	r3, [fp, #-12]
    19e0:	e2833008 	add	r3, r3, #8
    19e4:	e1a00003 	mov	r0, r3
    19e8:	ebffff84 	bl	1800 <free>
    19ec:	e59f300c 	ldr	r3, [pc, #12]	@ 1a00 <morecore+0x84>
    19f0:	e5933000 	ldr	r3, [r3]
    19f4:	e1a00003 	mov	r0, r3
    19f8:	e24bd004 	sub	sp, fp, #4
    19fc:	e8bd8800 	pop	{fp, pc}
    1a00:	00002868 	.word	0x00002868

00001a04 <malloc>:
    1a04:	e92d4800 	push	{fp, lr}
    1a08:	e28db004 	add	fp, sp, #4
    1a0c:	e24dd018 	sub	sp, sp, #24
    1a10:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1a14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a18:	e2833007 	add	r3, r3, #7
    1a1c:	e1a031a3 	lsr	r3, r3, #3
    1a20:	e2833001 	add	r3, r3, #1
    1a24:	e50b3010 	str	r3, [fp, #-16]
    1a28:	e59f3134 	ldr	r3, [pc, #308]	@ 1b64 <malloc+0x160>
    1a2c:	e5933000 	ldr	r3, [r3]
    1a30:	e50b300c 	str	r3, [fp, #-12]
    1a34:	e51b300c 	ldr	r3, [fp, #-12]
    1a38:	e3530000 	cmp	r3, #0
    1a3c:	1a00000b 	bne	1a70 <malloc+0x6c>
    1a40:	e59f3120 	ldr	r3, [pc, #288]	@ 1b68 <malloc+0x164>
    1a44:	e50b300c 	str	r3, [fp, #-12]
    1a48:	e59f2114 	ldr	r2, [pc, #276]	@ 1b64 <malloc+0x160>
    1a4c:	e51b300c 	ldr	r3, [fp, #-12]
    1a50:	e5823000 	str	r3, [r2]
    1a54:	e59f3108 	ldr	r3, [pc, #264]	@ 1b64 <malloc+0x160>
    1a58:	e5933000 	ldr	r3, [r3]
    1a5c:	e59f2104 	ldr	r2, [pc, #260]	@ 1b68 <malloc+0x164>
    1a60:	e5823000 	str	r3, [r2]
    1a64:	e59f30fc 	ldr	r3, [pc, #252]	@ 1b68 <malloc+0x164>
    1a68:	e3a02000 	mov	r2, #0
    1a6c:	e5832004 	str	r2, [r3, #4]
    1a70:	e51b300c 	ldr	r3, [fp, #-12]
    1a74:	e5933000 	ldr	r3, [r3]
    1a78:	e50b3008 	str	r3, [fp, #-8]
    1a7c:	e51b3008 	ldr	r3, [fp, #-8]
    1a80:	e5933004 	ldr	r3, [r3, #4]
    1a84:	e51b2010 	ldr	r2, [fp, #-16]
    1a88:	e1520003 	cmp	r2, r3
    1a8c:	8a00001e 	bhi	1b0c <malloc+0x108>
    1a90:	e51b3008 	ldr	r3, [fp, #-8]
    1a94:	e5933004 	ldr	r3, [r3, #4]
    1a98:	e51b2010 	ldr	r2, [fp, #-16]
    1a9c:	e1520003 	cmp	r2, r3
    1aa0:	1a000004 	bne	1ab8 <malloc+0xb4>
    1aa4:	e51b3008 	ldr	r3, [fp, #-8]
    1aa8:	e5932000 	ldr	r2, [r3]
    1aac:	e51b300c 	ldr	r3, [fp, #-12]
    1ab0:	e5832000 	str	r2, [r3]
    1ab4:	ea00000e 	b	1af4 <malloc+0xf0>
    1ab8:	e51b3008 	ldr	r3, [fp, #-8]
    1abc:	e5932004 	ldr	r2, [r3, #4]
    1ac0:	e51b3010 	ldr	r3, [fp, #-16]
    1ac4:	e0422003 	sub	r2, r2, r3
    1ac8:	e51b3008 	ldr	r3, [fp, #-8]
    1acc:	e5832004 	str	r2, [r3, #4]
    1ad0:	e51b3008 	ldr	r3, [fp, #-8]
    1ad4:	e5933004 	ldr	r3, [r3, #4]
    1ad8:	e1a03183 	lsl	r3, r3, #3
    1adc:	e51b2008 	ldr	r2, [fp, #-8]
    1ae0:	e0823003 	add	r3, r2, r3
    1ae4:	e50b3008 	str	r3, [fp, #-8]
    1ae8:	e51b3008 	ldr	r3, [fp, #-8]
    1aec:	e51b2010 	ldr	r2, [fp, #-16]
    1af0:	e5832004 	str	r2, [r3, #4]
    1af4:	e59f2068 	ldr	r2, [pc, #104]	@ 1b64 <malloc+0x160>
    1af8:	e51b300c 	ldr	r3, [fp, #-12]
    1afc:	e5823000 	str	r3, [r2]
    1b00:	e51b3008 	ldr	r3, [fp, #-8]
    1b04:	e2833008 	add	r3, r3, #8
    1b08:	ea000012 	b	1b58 <malloc+0x154>
    1b0c:	e59f3050 	ldr	r3, [pc, #80]	@ 1b64 <malloc+0x160>
    1b10:	e5933000 	ldr	r3, [r3]
    1b14:	e51b2008 	ldr	r2, [fp, #-8]
    1b18:	e1520003 	cmp	r2, r3
    1b1c:	1a000007 	bne	1b40 <malloc+0x13c>
    1b20:	e51b0010 	ldr	r0, [fp, #-16]
    1b24:	ebffff94 	bl	197c <morecore>
    1b28:	e50b0008 	str	r0, [fp, #-8]
    1b2c:	e51b3008 	ldr	r3, [fp, #-8]
    1b30:	e3530000 	cmp	r3, #0
    1b34:	1a000001 	bne	1b40 <malloc+0x13c>
    1b38:	e3a03000 	mov	r3, #0
    1b3c:	ea000005 	b	1b58 <malloc+0x154>
    1b40:	e51b3008 	ldr	r3, [fp, #-8]
    1b44:	e50b300c 	str	r3, [fp, #-12]
    1b48:	e51b3008 	ldr	r3, [fp, #-8]
    1b4c:	e5933000 	ldr	r3, [r3]
    1b50:	e50b3008 	str	r3, [fp, #-8]
    1b54:	eaffffc8 	b	1a7c <malloc+0x78>
    1b58:	e1a00003 	mov	r0, r3
    1b5c:	e24bd004 	sub	sp, fp, #4
    1b60:	e8bd8800 	pop	{fp, pc}
    1b64:	00002868 	.word	0x00002868
    1b68:	00002860 	.word	0x00002860

00001b6c <__udivsi3>:
    1b6c:	e2512001 	subs	r2, r1, #1
    1b70:	012fff1e 	bxeq	lr
    1b74:	3a000036 	bcc	1c54 <__udivsi3+0xe8>
    1b78:	e1500001 	cmp	r0, r1
    1b7c:	9a000022 	bls	1c0c <__udivsi3+0xa0>
    1b80:	e1110002 	tst	r1, r2
    1b84:	0a000023 	beq	1c18 <__udivsi3+0xac>
    1b88:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1b8c:	01a01181 	lsleq	r1, r1, #3
    1b90:	03a03008 	moveq	r3, #8
    1b94:	13a03001 	movne	r3, #1
    1b98:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1b9c:	31510000 	cmpcc	r1, r0
    1ba0:	31a01201 	lslcc	r1, r1, #4
    1ba4:	31a03203 	lslcc	r3, r3, #4
    1ba8:	3afffffa 	bcc	1b98 <__udivsi3+0x2c>
    1bac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1bb0:	31510000 	cmpcc	r1, r0
    1bb4:	31a01081 	lslcc	r1, r1, #1
    1bb8:	31a03083 	lslcc	r3, r3, #1
    1bbc:	3afffffa 	bcc	1bac <__udivsi3+0x40>
    1bc0:	e3a02000 	mov	r2, #0
    1bc4:	e1500001 	cmp	r0, r1
    1bc8:	20400001 	subcs	r0, r0, r1
    1bcc:	21822003 	orrcs	r2, r2, r3
    1bd0:	e15000a1 	cmp	r0, r1, lsr #1
    1bd4:	204000a1 	subcs	r0, r0, r1, lsr #1
    1bd8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1bdc:	e1500121 	cmp	r0, r1, lsr #2
    1be0:	20400121 	subcs	r0, r0, r1, lsr #2
    1be4:	21822123 	orrcs	r2, r2, r3, lsr #2
    1be8:	e15001a1 	cmp	r0, r1, lsr #3
    1bec:	204001a1 	subcs	r0, r0, r1, lsr #3
    1bf0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1bf4:	e3500000 	cmp	r0, #0
    1bf8:	11b03223 	lsrsne	r3, r3, #4
    1bfc:	11a01221 	lsrne	r1, r1, #4
    1c00:	1affffef 	bne	1bc4 <__udivsi3+0x58>
    1c04:	e1a00002 	mov	r0, r2
    1c08:	e12fff1e 	bx	lr
    1c0c:	03a00001 	moveq	r0, #1
    1c10:	13a00000 	movne	r0, #0
    1c14:	e12fff1e 	bx	lr
    1c18:	e3510801 	cmp	r1, #65536	@ 0x10000
    1c1c:	21a01821 	lsrcs	r1, r1, #16
    1c20:	23a02010 	movcs	r2, #16
    1c24:	33a02000 	movcc	r2, #0
    1c28:	e3510c01 	cmp	r1, #256	@ 0x100
    1c2c:	21a01421 	lsrcs	r1, r1, #8
    1c30:	22822008 	addcs	r2, r2, #8
    1c34:	e3510010 	cmp	r1, #16
    1c38:	21a01221 	lsrcs	r1, r1, #4
    1c3c:	22822004 	addcs	r2, r2, #4
    1c40:	e3510004 	cmp	r1, #4
    1c44:	82822003 	addhi	r2, r2, #3
    1c48:	908220a1 	addls	r2, r2, r1, lsr #1
    1c4c:	e1a00230 	lsr	r0, r0, r2
    1c50:	e12fff1e 	bx	lr
    1c54:	e3500000 	cmp	r0, #0
    1c58:	13e00000 	mvnne	r0, #0
    1c5c:	ea000007 	b	1c80 <__aeabi_idiv0>

00001c60 <__aeabi_uidivmod>:
    1c60:	e3510000 	cmp	r1, #0
    1c64:	0afffffa 	beq	1c54 <__udivsi3+0xe8>
    1c68:	e92d4003 	push	{r0, r1, lr}
    1c6c:	ebffffbe 	bl	1b6c <__udivsi3>
    1c70:	e8bd4006 	pop	{r1, r2, lr}
    1c74:	e0030092 	mul	r3, r2, r0
    1c78:	e0411003 	sub	r1, r1, r3
    1c7c:	e12fff1e 	bx	lr

00001c80 <__aeabi_idiv0>:
    1c80:	e12fff1e 	bx	lr

00001c84 <__aeabi_drsub>:
    1c84:	e2211102 	eor	r1, r1, #-2147483648	@ 0x80000000
    1c88:	ea000000 	b	1c90 <__adddf3>

00001c8c <__aeabi_dsub>:
    1c8c:	e2233102 	eor	r3, r3, #-2147483648	@ 0x80000000

00001c90 <__adddf3>:
    1c90:	e92d4030 	push	{r4, r5, lr}
    1c94:	e1a04081 	lsl	r4, r1, #1
    1c98:	e1a05083 	lsl	r5, r3, #1
    1c9c:	e1340005 	teq	r4, r5
    1ca0:	01300002 	teqeq	r0, r2
    1ca4:	1194c000 	orrsne	ip, r4, r0
    1ca8:	1195c002 	orrsne	ip, r5, r2
    1cac:	11f0cac4 	mvnsne	ip, r4, asr #21
    1cb0:	11f0cac5 	mvnsne	ip, r5, asr #21
    1cb4:	0a00008c 	beq	1eec <__adddf3+0x25c>
    1cb8:	e1a04aa4 	lsr	r4, r4, #21
    1cbc:	e0745aa5 	rsbs	r5, r4, r5, lsr #21
    1cc0:	b2655000 	rsblt	r5, r5, #0
    1cc4:	da000006 	ble	1ce4 <__adddf3+0x54>
    1cc8:	e0844005 	add	r4, r4, r5
    1ccc:	e0202002 	eor	r2, r0, r2
    1cd0:	e0213003 	eor	r3, r1, r3
    1cd4:	e0220000 	eor	r0, r2, r0
    1cd8:	e0231001 	eor	r1, r3, r1
    1cdc:	e0202002 	eor	r2, r0, r2
    1ce0:	e0213003 	eor	r3, r1, r3
    1ce4:	e3550036 	cmp	r5, #54	@ 0x36
    1ce8:	88bd4030 	pophi	{r4, r5, lr}
    1cec:	812fff1e 	bxhi	lr
    1cf0:	e3110102 	tst	r1, #-2147483648	@ 0x80000000
    1cf4:	e1a01601 	lsl	r1, r1, #12
    1cf8:	e3a0c601 	mov	ip, #1048576	@ 0x100000
    1cfc:	e18c1621 	orr	r1, ip, r1, lsr #12
    1d00:	0a000001 	beq	1d0c <__adddf3+0x7c>
    1d04:	e2700000 	rsbs	r0, r0, #0
    1d08:	e2e11000 	rsc	r1, r1, #0
    1d0c:	e3130102 	tst	r3, #-2147483648	@ 0x80000000
    1d10:	e1a03603 	lsl	r3, r3, #12
    1d14:	e18c3623 	orr	r3, ip, r3, lsr #12
    1d18:	0a000001 	beq	1d24 <__adddf3+0x94>
    1d1c:	e2722000 	rsbs	r2, r2, #0
    1d20:	e2e33000 	rsc	r3, r3, #0
    1d24:	e1340005 	teq	r4, r5
    1d28:	0a000069 	beq	1ed4 <__adddf3+0x244>
    1d2c:	e2444001 	sub	r4, r4, #1
    1d30:	e275e020 	rsbs	lr, r5, #32
    1d34:	ba000005 	blt	1d50 <__adddf3+0xc0>
    1d38:	e1a0ce12 	lsl	ip, r2, lr
    1d3c:	e0900532 	adds	r0, r0, r2, lsr r5
    1d40:	e2a11000 	adc	r1, r1, #0
    1d44:	e0900e13 	adds	r0, r0, r3, lsl lr
    1d48:	e0b11553 	adcs	r1, r1, r3, asr r5
    1d4c:	ea000006 	b	1d6c <__adddf3+0xdc>
    1d50:	e2455020 	sub	r5, r5, #32
    1d54:	e28ee020 	add	lr, lr, #32
    1d58:	e3520001 	cmp	r2, #1
    1d5c:	e1a0ce13 	lsl	ip, r3, lr
    1d60:	238cc002 	orrcs	ip, ip, #2
    1d64:	e0900553 	adds	r0, r0, r3, asr r5
    1d68:	e0b11fc3 	adcs	r1, r1, r3, asr #31
    1d6c:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    1d70:	5a000002 	bpl	1d80 <__adddf3+0xf0>
    1d74:	e27cc000 	rsbs	ip, ip, #0
    1d78:	e2f00000 	rscs	r0, r0, #0
    1d7c:	e2e11000 	rsc	r1, r1, #0
    1d80:	e3510601 	cmp	r1, #1048576	@ 0x100000
    1d84:	3a00000f 	bcc	1dc8 <__adddf3+0x138>
    1d88:	e3510602 	cmp	r1, #2097152	@ 0x200000
    1d8c:	3a000006 	bcc	1dac <__adddf3+0x11c>
    1d90:	e1b010a1 	lsrs	r1, r1, #1
    1d94:	e1b00060 	rrxs	r0, r0
    1d98:	e1a0c06c 	rrx	ip, ip
    1d9c:	e2844001 	add	r4, r4, #1
    1da0:	e1a02a84 	lsl	r2, r4, #21
    1da4:	e3720501 	cmn	r2, #4194304	@ 0x400000
    1da8:	2a00006b 	bcs	1f5c <__adddf3+0x2cc>
    1dac:	e35c0102 	cmp	ip, #-2147483648	@ 0x80000000
    1db0:	01b0c0a0 	lsrseq	ip, r0, #1
    1db4:	e2b00000 	adcs	r0, r0, #0
    1db8:	e0a11a04 	adc	r1, r1, r4, lsl #20
    1dbc:	e1811005 	orr	r1, r1, r5
    1dc0:	e8bd4030 	pop	{r4, r5, lr}
    1dc4:	e12fff1e 	bx	lr
    1dc8:	e1b0c08c 	lsls	ip, ip, #1
    1dcc:	e0b00000 	adcs	r0, r0, r0
    1dd0:	e0a11001 	adc	r1, r1, r1
    1dd4:	e2544001 	subs	r4, r4, #1
    1dd8:	23510601 	cmpcs	r1, #1048576	@ 0x100000
    1ddc:	2afffff2 	bcs	1dac <__adddf3+0x11c>
    1de0:	e3310000 	teq	r1, #0
    1de4:	13a03014 	movne	r3, #20
    1de8:	03a03034 	moveq	r3, #52	@ 0x34
    1dec:	01a01000 	moveq	r1, r0
    1df0:	03a00000 	moveq	r0, #0
    1df4:	e1a02001 	mov	r2, r1
    1df8:	e3520801 	cmp	r2, #65536	@ 0x10000
    1dfc:	21a02822 	lsrcs	r2, r2, #16
    1e00:	22433010 	subcs	r3, r3, #16
    1e04:	e3520c01 	cmp	r2, #256	@ 0x100
    1e08:	21a02422 	lsrcs	r2, r2, #8
    1e0c:	22433008 	subcs	r3, r3, #8
    1e10:	e3520010 	cmp	r2, #16
    1e14:	21a02222 	lsrcs	r2, r2, #4
    1e18:	22433004 	subcs	r3, r3, #4
    1e1c:	e3520004 	cmp	r2, #4
    1e20:	22433002 	subcs	r3, r3, #2
    1e24:	304330a2 	subcc	r3, r3, r2, lsr #1
    1e28:	e04331a2 	sub	r3, r3, r2, lsr #3
    1e2c:	e2532020 	subs	r2, r3, #32
    1e30:	aa000007 	bge	1e54 <__adddf3+0x1c4>
    1e34:	e292200c 	adds	r2, r2, #12
    1e38:	da000004 	ble	1e50 <__adddf3+0x1c0>
    1e3c:	e282c014 	add	ip, r2, #20
    1e40:	e262200c 	rsb	r2, r2, #12
    1e44:	e1a00c11 	lsl	r0, r1, ip
    1e48:	e1a01231 	lsr	r1, r1, r2
    1e4c:	ea000004 	b	1e64 <__adddf3+0x1d4>
    1e50:	e2822014 	add	r2, r2, #20
    1e54:	d262c020 	rsble	ip, r2, #32
    1e58:	e1a01211 	lsl	r1, r1, r2
    1e5c:	d1811c30 	orrle	r1, r1, r0, lsr ip
    1e60:	d1a00210 	lslle	r0, r0, r2
    1e64:	e0544003 	subs	r4, r4, r3
    1e68:	a0811a04 	addge	r1, r1, r4, lsl #20
    1e6c:	a1811005 	orrge	r1, r1, r5
    1e70:	a8bd4030 	popge	{r4, r5, lr}
    1e74:	a12fff1e 	bxge	lr
    1e78:	e1e04004 	mvn	r4, r4
    1e7c:	e254401f 	subs	r4, r4, #31
    1e80:	aa00000f 	bge	1ec4 <__adddf3+0x234>
    1e84:	e294400c 	adds	r4, r4, #12
    1e88:	ca000006 	bgt	1ea8 <__adddf3+0x218>
    1e8c:	e2844014 	add	r4, r4, #20
    1e90:	e2642020 	rsb	r2, r4, #32
    1e94:	e1a00430 	lsr	r0, r0, r4
    1e98:	e1800211 	orr	r0, r0, r1, lsl r2
    1e9c:	e1851431 	orr	r1, r5, r1, lsr r4
    1ea0:	e8bd4030 	pop	{r4, r5, lr}
    1ea4:	e12fff1e 	bx	lr
    1ea8:	e264400c 	rsb	r4, r4, #12
    1eac:	e2642020 	rsb	r2, r4, #32
    1eb0:	e1a00230 	lsr	r0, r0, r2
    1eb4:	e1800411 	orr	r0, r0, r1, lsl r4
    1eb8:	e1a01005 	mov	r1, r5
    1ebc:	e8bd4030 	pop	{r4, r5, lr}
    1ec0:	e12fff1e 	bx	lr
    1ec4:	e1a00431 	lsr	r0, r1, r4
    1ec8:	e1a01005 	mov	r1, r5
    1ecc:	e8bd4030 	pop	{r4, r5, lr}
    1ed0:	e12fff1e 	bx	lr
    1ed4:	e3340000 	teq	r4, #0
    1ed8:	e2233601 	eor	r3, r3, #1048576	@ 0x100000
    1edc:	02211601 	eoreq	r1, r1, #1048576	@ 0x100000
    1ee0:	02844001 	addeq	r4, r4, #1
    1ee4:	12455001 	subne	r5, r5, #1
    1ee8:	eaffff8f 	b	1d2c <__adddf3+0x9c>
    1eec:	e1f0cac4 	mvns	ip, r4, asr #21
    1ef0:	11f0cac5 	mvnsne	ip, r5, asr #21
    1ef4:	0a00001d 	beq	1f70 <__adddf3+0x2e0>
    1ef8:	e1340005 	teq	r4, r5
    1efc:	01300002 	teqeq	r0, r2
    1f00:	0a000004 	beq	1f18 <__adddf3+0x288>
    1f04:	e194c000 	orrs	ip, r4, r0
    1f08:	01a01003 	moveq	r1, r3
    1f0c:	01a00002 	moveq	r0, r2
    1f10:	e8bd4030 	pop	{r4, r5, lr}
    1f14:	e12fff1e 	bx	lr
    1f18:	e1310003 	teq	r1, r3
    1f1c:	13a01000 	movne	r1, #0
    1f20:	13a00000 	movne	r0, #0
    1f24:	18bd4030 	popne	{r4, r5, lr}
    1f28:	112fff1e 	bxne	lr
    1f2c:	e1b0caa4 	lsrs	ip, r4, #21
    1f30:	1a000004 	bne	1f48 <__adddf3+0x2b8>
    1f34:	e1b00080 	lsls	r0, r0, #1
    1f38:	e0b11001 	adcs	r1, r1, r1
    1f3c:	23811102 	orrcs	r1, r1, #-2147483648	@ 0x80000000
    1f40:	e8bd4030 	pop	{r4, r5, lr}
    1f44:	e12fff1e 	bx	lr
    1f48:	e2944501 	adds	r4, r4, #4194304	@ 0x400000
    1f4c:	32811601 	addcc	r1, r1, #1048576	@ 0x100000
    1f50:	38bd4030 	popcc	{r4, r5, lr}
    1f54:	312fff1e 	bxcc	lr
    1f58:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    1f5c:	e385147f 	orr	r1, r5, #2130706432	@ 0x7f000000
    1f60:	e381160f 	orr	r1, r1, #15728640	@ 0xf00000
    1f64:	e3a00000 	mov	r0, #0
    1f68:	e8bd4030 	pop	{r4, r5, lr}
    1f6c:	e12fff1e 	bx	lr
    1f70:	e1f0cac4 	mvns	ip, r4, asr #21
    1f74:	11a01003 	movne	r1, r3
    1f78:	11a00002 	movne	r0, r2
    1f7c:	01f0cac5 	mvnseq	ip, r5, asr #21
    1f80:	11a03001 	movne	r3, r1
    1f84:	11a02000 	movne	r2, r0
    1f88:	e1904601 	orrs	r4, r0, r1, lsl #12
    1f8c:	01925603 	orrseq	r5, r2, r3, lsl #12
    1f90:	01310003 	teqeq	r1, r3
    1f94:	13811702 	orrne	r1, r1, #524288	@ 0x80000
    1f98:	e8bd4030 	pop	{r4, r5, lr}
    1f9c:	e12fff1e 	bx	lr

00001fa0 <__aeabi_ui2d>:
    1fa0:	e3300000 	teq	r0, #0
    1fa4:	03a01000 	moveq	r1, #0
    1fa8:	012fff1e 	bxeq	lr
    1fac:	e92d4030 	push	{r4, r5, lr}
    1fb0:	e3a04b01 	mov	r4, #1024	@ 0x400
    1fb4:	e2844032 	add	r4, r4, #50	@ 0x32
    1fb8:	e3a05000 	mov	r5, #0
    1fbc:	e3a01000 	mov	r1, #0
    1fc0:	eaffff86 	b	1de0 <__adddf3+0x150>

00001fc4 <__aeabi_i2d>:
    1fc4:	e3300000 	teq	r0, #0
    1fc8:	03a01000 	moveq	r1, #0
    1fcc:	012fff1e 	bxeq	lr
    1fd0:	e92d4030 	push	{r4, r5, lr}
    1fd4:	e3a04b01 	mov	r4, #1024	@ 0x400
    1fd8:	e2844032 	add	r4, r4, #50	@ 0x32
    1fdc:	e2105102 	ands	r5, r0, #-2147483648	@ 0x80000000
    1fe0:	42600000 	rsbmi	r0, r0, #0
    1fe4:	e3a01000 	mov	r1, #0
    1fe8:	eaffff7c 	b	1de0 <__adddf3+0x150>

00001fec <__aeabi_f2d>:
    1fec:	e1b02080 	lsls	r2, r0, #1
    1ff0:	e1a011c2 	asr	r1, r2, #3
    1ff4:	e1a01061 	rrx	r1, r1
    1ff8:	e1a00e02 	lsl	r0, r2, #28
    1ffc:	121234ff 	andsne	r3, r2, #-16777216	@ 0xff000000
    2000:	133304ff 	teqne	r3, #-16777216	@ 0xff000000
    2004:	1221130e 	eorne	r1, r1, #939524096	@ 0x38000000
    2008:	112fff1e 	bxne	lr
    200c:	e3d224ff 	bics	r2, r2, #-16777216	@ 0xff000000
    2010:	012fff1e 	bxeq	lr
    2014:	e33304ff 	teq	r3, #-16777216	@ 0xff000000
    2018:	03811702 	orreq	r1, r1, #524288	@ 0x80000
    201c:	012fff1e 	bxeq	lr
    2020:	e92d4030 	push	{r4, r5, lr}
    2024:	e3a04d0e 	mov	r4, #896	@ 0x380
    2028:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    202c:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    2030:	eaffff6a 	b	1de0 <__adddf3+0x150>

00002034 <__aeabi_ul2d>:
    2034:	e1902001 	orrs	r2, r0, r1
    2038:	012fff1e 	bxeq	lr
    203c:	e92d4030 	push	{r4, r5, lr}
    2040:	e3a05000 	mov	r5, #0
    2044:	ea000006 	b	2064 <__aeabi_l2d+0x1c>

00002048 <__aeabi_l2d>:
    2048:	e1902001 	orrs	r2, r0, r1
    204c:	012fff1e 	bxeq	lr
    2050:	e92d4030 	push	{r4, r5, lr}
    2054:	e2115102 	ands	r5, r1, #-2147483648	@ 0x80000000
    2058:	5a000001 	bpl	2064 <__aeabi_l2d+0x1c>
    205c:	e2700000 	rsbs	r0, r0, #0
    2060:	e2e11000 	rsc	r1, r1, #0
    2064:	e3a04b01 	mov	r4, #1024	@ 0x400
    2068:	e2844032 	add	r4, r4, #50	@ 0x32
    206c:	e1b0cb21 	lsrs	ip, r1, #22
    2070:	0affff42 	beq	1d80 <__adddf3+0xf0>
    2074:	e3a02003 	mov	r2, #3
    2078:	e1b0c1ac 	lsrs	ip, ip, #3
    207c:	12822003 	addne	r2, r2, #3
    2080:	e1b0c1ac 	lsrs	ip, ip, #3
    2084:	12822003 	addne	r2, r2, #3
    2088:	e08221ac 	add	r2, r2, ip, lsr #3
    208c:	e2623020 	rsb	r3, r2, #32
    2090:	e1a0c310 	lsl	ip, r0, r3
    2094:	e1a00230 	lsr	r0, r0, r2
    2098:	e1800311 	orr	r0, r0, r1, lsl r3
    209c:	e1a01231 	lsr	r1, r1, r2
    20a0:	e0844002 	add	r4, r4, r2
    20a4:	eaffff35 	b	1d80 <__adddf3+0xf0>

000020a8 <__aeabi_dmul>:
    20a8:	e92d4070 	push	{r4, r5, r6, lr}
    20ac:	e3a0c0ff 	mov	ip, #255	@ 0xff
    20b0:	e38ccc07 	orr	ip, ip, #1792	@ 0x700
    20b4:	e01c4a21 	ands	r4, ip, r1, lsr #20
    20b8:	101c5a23 	andsne	r5, ip, r3, lsr #20
    20bc:	1134000c 	teqne	r4, ip
    20c0:	1135000c 	teqne	r5, ip
    20c4:	0b000075 	bleq	22a0 <__aeabi_dmul+0x1f8>
    20c8:	e0844005 	add	r4, r4, r5
    20cc:	e0216003 	eor	r6, r1, r3
    20d0:	e1c11a8c 	bic	r1, r1, ip, lsl #21
    20d4:	e1c33a8c 	bic	r3, r3, ip, lsl #21
    20d8:	e1905601 	orrs	r5, r0, r1, lsl #12
    20dc:	11925603 	orrsne	r5, r2, r3, lsl #12
    20e0:	e3811601 	orr	r1, r1, #1048576	@ 0x100000
    20e4:	e3833601 	orr	r3, r3, #1048576	@ 0x100000
    20e8:	0a00001d 	beq	2164 <__aeabi_dmul+0xbc>
    20ec:	e08ec290 	umull	ip, lr, r0, r2
    20f0:	e3a05000 	mov	r5, #0
    20f4:	e0a5e291 	umlal	lr, r5, r1, r2
    20f8:	e2062102 	and	r2, r6, #-2147483648	@ 0x80000000
    20fc:	e0a5e390 	umlal	lr, r5, r0, r3
    2100:	e3a06000 	mov	r6, #0
    2104:	e0a65391 	umlal	r5, r6, r1, r3
    2108:	e33c0000 	teq	ip, #0
    210c:	138ee001 	orrne	lr, lr, #1
    2110:	e24440ff 	sub	r4, r4, #255	@ 0xff
    2114:	e3560c02 	cmp	r6, #512	@ 0x200
    2118:	e2c44c03 	sbc	r4, r4, #768	@ 0x300
    211c:	2a000002 	bcs	212c <__aeabi_dmul+0x84>
    2120:	e1b0e08e 	lsls	lr, lr, #1
    2124:	e0b55005 	adcs	r5, r5, r5
    2128:	e0a66006 	adc	r6, r6, r6
    212c:	e1821586 	orr	r1, r2, r6, lsl #11
    2130:	e1811aa5 	orr	r1, r1, r5, lsr #21
    2134:	e1a00585 	lsl	r0, r5, #11
    2138:	e1800aae 	orr	r0, r0, lr, lsr #21
    213c:	e1a0e58e 	lsl	lr, lr, #11
    2140:	e254c0fd 	subs	ip, r4, #253	@ 0xfd
    2144:	835c0c07 	cmphi	ip, #1792	@ 0x700
    2148:	8a000011 	bhi	2194 <__aeabi_dmul+0xec>
    214c:	e35e0102 	cmp	lr, #-2147483648	@ 0x80000000
    2150:	01b0e0a0 	lsrseq	lr, r0, #1
    2154:	e2b00000 	adcs	r0, r0, #0
    2158:	e0a11a04 	adc	r1, r1, r4, lsl #20
    215c:	e8bd4070 	pop	{r4, r5, r6, lr}
    2160:	e12fff1e 	bx	lr
    2164:	e2066102 	and	r6, r6, #-2147483648	@ 0x80000000
    2168:	e1861001 	orr	r1, r6, r1
    216c:	e1800002 	orr	r0, r0, r2
    2170:	e0211003 	eor	r1, r1, r3
    2174:	e05440ac 	subs	r4, r4, ip, lsr #1
    2178:	c074500c 	rsbsgt	r5, r4, ip
    217c:	c1811a04 	orrgt	r1, r1, r4, lsl #20
    2180:	c8bd4070 	popgt	{r4, r5, r6, lr}
    2184:	c12fff1e 	bxgt	lr
    2188:	e3811601 	orr	r1, r1, #1048576	@ 0x100000
    218c:	e3a0e000 	mov	lr, #0
    2190:	e2544001 	subs	r4, r4, #1
    2194:	ca00005d 	bgt	2310 <__aeabi_dmul+0x268>
    2198:	e3740036 	cmn	r4, #54	@ 0x36
    219c:	d3a00000 	movle	r0, #0
    21a0:	d2011102 	andle	r1, r1, #-2147483648	@ 0x80000000
    21a4:	d8bd4070 	pople	{r4, r5, r6, lr}
    21a8:	d12fff1e 	bxle	lr
    21ac:	e2644000 	rsb	r4, r4, #0
    21b0:	e2544020 	subs	r4, r4, #32
    21b4:	aa00001a 	bge	2224 <__aeabi_dmul+0x17c>
    21b8:	e294400c 	adds	r4, r4, #12
    21bc:	ca00000c 	bgt	21f4 <__aeabi_dmul+0x14c>
    21c0:	e2844014 	add	r4, r4, #20
    21c4:	e2645020 	rsb	r5, r4, #32
    21c8:	e1a03510 	lsl	r3, r0, r5
    21cc:	e1a00430 	lsr	r0, r0, r4
    21d0:	e1800511 	orr	r0, r0, r1, lsl r5
    21d4:	e2012102 	and	r2, r1, #-2147483648	@ 0x80000000
    21d8:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    21dc:	e0900fa3 	adds	r0, r0, r3, lsr #31
    21e0:	e0a21431 	adc	r1, r2, r1, lsr r4
    21e4:	e19ee083 	orrs	lr, lr, r3, lsl #1
    21e8:	01c00fa3 	biceq	r0, r0, r3, lsr #31
    21ec:	e8bd4070 	pop	{r4, r5, r6, lr}
    21f0:	e12fff1e 	bx	lr
    21f4:	e264400c 	rsb	r4, r4, #12
    21f8:	e2645020 	rsb	r5, r4, #32
    21fc:	e1a03410 	lsl	r3, r0, r4
    2200:	e1a00530 	lsr	r0, r0, r5
    2204:	e1800411 	orr	r0, r0, r1, lsl r4
    2208:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    220c:	e0900fa3 	adds	r0, r0, r3, lsr #31
    2210:	e2a11000 	adc	r1, r1, #0
    2214:	e19ee083 	orrs	lr, lr, r3, lsl #1
    2218:	01c00fa3 	biceq	r0, r0, r3, lsr #31
    221c:	e8bd4070 	pop	{r4, r5, r6, lr}
    2220:	e12fff1e 	bx	lr
    2224:	e2645020 	rsb	r5, r4, #32
    2228:	e18ee510 	orr	lr, lr, r0, lsl r5
    222c:	e1a03430 	lsr	r3, r0, r4
    2230:	e1833511 	orr	r3, r3, r1, lsl r5
    2234:	e1a00431 	lsr	r0, r1, r4
    2238:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    223c:	e1c00431 	bic	r0, r0, r1, lsr r4
    2240:	e0800fa3 	add	r0, r0, r3, lsr #31
    2244:	e19ee083 	orrs	lr, lr, r3, lsl #1
    2248:	01c00fa3 	biceq	r0, r0, r3, lsr #31
    224c:	e8bd4070 	pop	{r4, r5, r6, lr}
    2250:	e12fff1e 	bx	lr
    2254:	e3340000 	teq	r4, #0
    2258:	1a000008 	bne	2280 <__aeabi_dmul+0x1d8>
    225c:	e2016102 	and	r6, r1, #-2147483648	@ 0x80000000
    2260:	e1b00080 	lsls	r0, r0, #1
    2264:	e0a11001 	adc	r1, r1, r1
    2268:	e3110601 	tst	r1, #1048576	@ 0x100000
    226c:	02444001 	subeq	r4, r4, #1
    2270:	0afffffa 	beq	2260 <__aeabi_dmul+0x1b8>
    2274:	e1811006 	orr	r1, r1, r6
    2278:	e3350000 	teq	r5, #0
    227c:	112fff1e 	bxne	lr
    2280:	e2036102 	and	r6, r3, #-2147483648	@ 0x80000000
    2284:	e1b02082 	lsls	r2, r2, #1
    2288:	e0a33003 	adc	r3, r3, r3
    228c:	e3130601 	tst	r3, #1048576	@ 0x100000
    2290:	02455001 	subeq	r5, r5, #1
    2294:	0afffffa 	beq	2284 <__aeabi_dmul+0x1dc>
    2298:	e1833006 	orr	r3, r3, r6
    229c:	e12fff1e 	bx	lr
    22a0:	e134000c 	teq	r4, ip
    22a4:	e00c5a23 	and	r5, ip, r3, lsr #20
    22a8:	1135000c 	teqne	r5, ip
    22ac:	0a000007 	beq	22d0 <__aeabi_dmul+0x228>
    22b0:	e1906081 	orrs	r6, r0, r1, lsl #1
    22b4:	11926083 	orrsne	r6, r2, r3, lsl #1
    22b8:	1affffe5 	bne	2254 <__aeabi_dmul+0x1ac>
    22bc:	e0211003 	eor	r1, r1, r3
    22c0:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    22c4:	e3a00000 	mov	r0, #0
    22c8:	e8bd4070 	pop	{r4, r5, r6, lr}
    22cc:	e12fff1e 	bx	lr
    22d0:	e1906081 	orrs	r6, r0, r1, lsl #1
    22d4:	01a00002 	moveq	r0, r2
    22d8:	01a01003 	moveq	r1, r3
    22dc:	11926083 	orrsne	r6, r2, r3, lsl #1
    22e0:	0a000010 	beq	2328 <__aeabi_dmul+0x280>
    22e4:	e134000c 	teq	r4, ip
    22e8:	1a000001 	bne	22f4 <__aeabi_dmul+0x24c>
    22ec:	e1906601 	orrs	r6, r0, r1, lsl #12
    22f0:	1a00000c 	bne	2328 <__aeabi_dmul+0x280>
    22f4:	e135000c 	teq	r5, ip
    22f8:	1a000003 	bne	230c <__aeabi_dmul+0x264>
    22fc:	e1926603 	orrs	r6, r2, r3, lsl #12
    2300:	11a00002 	movne	r0, r2
    2304:	11a01003 	movne	r1, r3
    2308:	1a000006 	bne	2328 <__aeabi_dmul+0x280>
    230c:	e0211003 	eor	r1, r1, r3
    2310:	e2011102 	and	r1, r1, #-2147483648	@ 0x80000000
    2314:	e381147f 	orr	r1, r1, #2130706432	@ 0x7f000000
    2318:	e381160f 	orr	r1, r1, #15728640	@ 0xf00000
    231c:	e3a00000 	mov	r0, #0
    2320:	e8bd4070 	pop	{r4, r5, r6, lr}
    2324:	e12fff1e 	bx	lr
    2328:	e381147f 	orr	r1, r1, #2130706432	@ 0x7f000000
    232c:	e381173e 	orr	r1, r1, #16252928	@ 0xf80000
    2330:	e8bd4070 	pop	{r4, r5, r6, lr}
    2334:	e12fff1e 	bx	lr

00002338 <__aeabi_ddiv>:
    2338:	e92d4070 	push	{r4, r5, r6, lr}
    233c:	e3a0c0ff 	mov	ip, #255	@ 0xff
    2340:	e38ccc07 	orr	ip, ip, #1792	@ 0x700
    2344:	e01c4a21 	ands	r4, ip, r1, lsr #20
    2348:	101c5a23 	andsne	r5, ip, r3, lsr #20
    234c:	1134000c 	teqne	r4, ip
    2350:	1135000c 	teqne	r5, ip
    2354:	0b00005e 	bleq	24d4 <__aeabi_ddiv+0x19c>
    2358:	e0444005 	sub	r4, r4, r5
    235c:	e021e003 	eor	lr, r1, r3
    2360:	e1925603 	orrs	r5, r2, r3, lsl #12
    2364:	e1a01601 	lsl	r1, r1, #12
    2368:	0a00004c 	beq	24a0 <__aeabi_ddiv+0x168>
    236c:	e1a03603 	lsl	r3, r3, #12
    2370:	e3a05201 	mov	r5, #268435456	@ 0x10000000
    2374:	e1853223 	orr	r3, r5, r3, lsr #4
    2378:	e1833c22 	orr	r3, r3, r2, lsr #24
    237c:	e1a02402 	lsl	r2, r2, #8
    2380:	e1855221 	orr	r5, r5, r1, lsr #4
    2384:	e1855c20 	orr	r5, r5, r0, lsr #24
    2388:	e1a06400 	lsl	r6, r0, #8
    238c:	e20e1102 	and	r1, lr, #-2147483648	@ 0x80000000
    2390:	e1550003 	cmp	r5, r3
    2394:	01560002 	cmpeq	r6, r2
    2398:	e2a440fd 	adc	r4, r4, #253	@ 0xfd
    239c:	e2844c03 	add	r4, r4, #768	@ 0x300
    23a0:	2a000001 	bcs	23ac <__aeabi_ddiv+0x74>
    23a4:	e1b030a3 	lsrs	r3, r3, #1
    23a8:	e1a02062 	rrx	r2, r2
    23ac:	e0566002 	subs	r6, r6, r2
    23b0:	e0c55003 	sbc	r5, r5, r3
    23b4:	e1b030a3 	lsrs	r3, r3, #1
    23b8:	e1a02062 	rrx	r2, r2
    23bc:	e3a00601 	mov	r0, #1048576	@ 0x100000
    23c0:	e3a0c702 	mov	ip, #524288	@ 0x80000
    23c4:	e056e002 	subs	lr, r6, r2
    23c8:	e0d5e003 	sbcs	lr, r5, r3
    23cc:	20466002 	subcs	r6, r6, r2
    23d0:	21a0500e 	movcs	r5, lr
    23d4:	2180000c 	orrcs	r0, r0, ip
    23d8:	e1b030a3 	lsrs	r3, r3, #1
    23dc:	e1a02062 	rrx	r2, r2
    23e0:	e056e002 	subs	lr, r6, r2
    23e4:	e0d5e003 	sbcs	lr, r5, r3
    23e8:	20466002 	subcs	r6, r6, r2
    23ec:	21a0500e 	movcs	r5, lr
    23f0:	218000ac 	orrcs	r0, r0, ip, lsr #1
    23f4:	e1b030a3 	lsrs	r3, r3, #1
    23f8:	e1a02062 	rrx	r2, r2
    23fc:	e056e002 	subs	lr, r6, r2
    2400:	e0d5e003 	sbcs	lr, r5, r3
    2404:	20466002 	subcs	r6, r6, r2
    2408:	21a0500e 	movcs	r5, lr
    240c:	2180012c 	orrcs	r0, r0, ip, lsr #2
    2410:	e1b030a3 	lsrs	r3, r3, #1
    2414:	e1a02062 	rrx	r2, r2
    2418:	e056e002 	subs	lr, r6, r2
    241c:	e0d5e003 	sbcs	lr, r5, r3
    2420:	20466002 	subcs	r6, r6, r2
    2424:	21a0500e 	movcs	r5, lr
    2428:	218001ac 	orrcs	r0, r0, ip, lsr #3
    242c:	e195e006 	orrs	lr, r5, r6
    2430:	0a00000d 	beq	246c <__aeabi_ddiv+0x134>
    2434:	e1a05205 	lsl	r5, r5, #4
    2438:	e1855e26 	orr	r5, r5, r6, lsr #28
    243c:	e1a06206 	lsl	r6, r6, #4
    2440:	e1a03183 	lsl	r3, r3, #3
    2444:	e1833ea2 	orr	r3, r3, r2, lsr #29
    2448:	e1a02182 	lsl	r2, r2, #3
    244c:	e1b0c22c 	lsrs	ip, ip, #4
    2450:	1affffdb 	bne	23c4 <__aeabi_ddiv+0x8c>
    2454:	e3110601 	tst	r1, #1048576	@ 0x100000
    2458:	1a000006 	bne	2478 <__aeabi_ddiv+0x140>
    245c:	e1811000 	orr	r1, r1, r0
    2460:	e3a00000 	mov	r0, #0
    2464:	e3a0c102 	mov	ip, #-2147483648	@ 0x80000000
    2468:	eaffffd5 	b	23c4 <__aeabi_ddiv+0x8c>
    246c:	e3110601 	tst	r1, #1048576	@ 0x100000
    2470:	01811000 	orreq	r1, r1, r0
    2474:	03a00000 	moveq	r0, #0
    2478:	e254c0fd 	subs	ip, r4, #253	@ 0xfd
    247c:	835c0c07 	cmphi	ip, #1792	@ 0x700
    2480:	8affff43 	bhi	2194 <__aeabi_dmul+0xec>
    2484:	e055c003 	subs	ip, r5, r3
    2488:	0056c002 	subseq	ip, r6, r2
    248c:	01b0c0a0 	lsrseq	ip, r0, #1
    2490:	e2b00000 	adcs	r0, r0, #0
    2494:	e0a11a04 	adc	r1, r1, r4, lsl #20
    2498:	e8bd4070 	pop	{r4, r5, r6, lr}
    249c:	e12fff1e 	bx	lr
    24a0:	e20ee102 	and	lr, lr, #-2147483648	@ 0x80000000
    24a4:	e18e1621 	orr	r1, lr, r1, lsr #12
    24a8:	e09440ac 	adds	r4, r4, ip, lsr #1
    24ac:	c074500c 	rsbsgt	r5, r4, ip
    24b0:	c1811a04 	orrgt	r1, r1, r4, lsl #20
    24b4:	c8bd4070 	popgt	{r4, r5, r6, lr}
    24b8:	c12fff1e 	bxgt	lr
    24bc:	e3811601 	orr	r1, r1, #1048576	@ 0x100000
    24c0:	e3a0e000 	mov	lr, #0
    24c4:	e2544001 	subs	r4, r4, #1
    24c8:	eaffff31 	b	2194 <__aeabi_dmul+0xec>
    24cc:	e185e006 	orr	lr, r5, r6
    24d0:	eaffff2f 	b	2194 <__aeabi_dmul+0xec>
    24d4:	e00c5a23 	and	r5, ip, r3, lsr #20
    24d8:	e134000c 	teq	r4, ip
    24dc:	0135000c 	teqeq	r5, ip
    24e0:	0affff90 	beq	2328 <__aeabi_dmul+0x280>
    24e4:	e134000c 	teq	r4, ip
    24e8:	1a000006 	bne	2508 <__aeabi_ddiv+0x1d0>
    24ec:	e1904601 	orrs	r4, r0, r1, lsl #12
    24f0:	1affff8c 	bne	2328 <__aeabi_dmul+0x280>
    24f4:	e135000c 	teq	r5, ip
    24f8:	1affff83 	bne	230c <__aeabi_dmul+0x264>
    24fc:	e1a00002 	mov	r0, r2
    2500:	e1a01003 	mov	r1, r3
    2504:	eaffff87 	b	2328 <__aeabi_dmul+0x280>
    2508:	e135000c 	teq	r5, ip
    250c:	1a000004 	bne	2524 <__aeabi_ddiv+0x1ec>
    2510:	e1925603 	orrs	r5, r2, r3, lsl #12
    2514:	0affff68 	beq	22bc <__aeabi_dmul+0x214>
    2518:	e1a00002 	mov	r0, r2
    251c:	e1a01003 	mov	r1, r3
    2520:	eaffff80 	b	2328 <__aeabi_dmul+0x280>
    2524:	e1906081 	orrs	r6, r0, r1, lsl #1
    2528:	11926083 	orrsne	r6, r2, r3, lsl #1
    252c:	1affff48 	bne	2254 <__aeabi_dmul+0x1ac>
    2530:	e1904081 	orrs	r4, r0, r1, lsl #1
    2534:	1affff74 	bne	230c <__aeabi_dmul+0x264>
    2538:	e1925083 	orrs	r5, r2, r3, lsl #1
    253c:	1affff5e 	bne	22bc <__aeabi_dmul+0x214>
    2540:	eaffff78 	b	2328 <__aeabi_dmul+0x280>
