
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <common_longest_prefix>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000002 	b	2c <common_longest_prefix+0x2c>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e2833001 	add	r3, r3, #1
      28:	e50b3008 	str	r3, [fp, #-8]
      2c:	e51b3008 	ldr	r3, [fp, #-8]
      30:	e51b2010 	ldr	r2, [fp, #-16]
      34:	e0823003 	add	r3, r2, r3
      38:	e5d33000 	ldrb	r3, [r3]
      3c:	e3530000 	cmp	r3, #0
      40:	0a000009 	beq	6c <common_longest_prefix+0x6c>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e51b2010 	ldr	r2, [fp, #-16]
      4c:	e0823003 	add	r3, r2, r3
      50:	e5d32000 	ldrb	r2, [r3]
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
      5c:	e0813003 	add	r3, r1, r3
      60:	e5d33000 	ldrb	r3, [r3]
      64:	e1520003 	cmp	r2, r3
      68:	0affffec 	beq	20 <common_longest_prefix+0x20>
      6c:	e51b0010 	ldr	r0, [fp, #-16]
      70:	eb000537 	bl	1554 <strlen>
      74:	e1a03000 	mov	r3, r0
      78:	e2833001 	add	r3, r3, #1
      7c:	e1a00003 	mov	r0, r3
      80:	eb0008be 	bl	2380 <malloc>
      84:	e50b000c 	str	r0, [fp, #-12]
      88:	e51b1010 	ldr	r1, [fp, #-16]
      8c:	e51b000c 	ldr	r0, [fp, #-12]
      90:	eb0004f7 	bl	1474 <strcpy>
      94:	e51b3008 	ldr	r3, [fp, #-8]
      98:	e51b200c 	ldr	r2, [fp, #-12]
      9c:	e0823003 	add	r3, r2, r3
      a0:	e3a02000 	mov	r2, #0
      a4:	e5c32000 	strb	r2, [r3]
      a8:	e51b300c 	ldr	r3, [fp, #-12]
      ac:	e1a00003 	mov	r0, r3
      b0:	e24bd004 	sub	sp, fp, #4
      b4:	e8bd8800 	pop	{fp, pc}

000000b8 <completecmd>:
      b8:	e92d4810 	push	{r4, fp, lr}
      bc:	e28db008 	add	fp, sp, #8
      c0:	e24dd08c 	sub	sp, sp, #140	@ 0x8c
      c4:	e50b0090 	str	r0, [fp, #-144]	@ 0xffffff70
      c8:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
      cc:	eb000520 	bl	1554 <strlen>
      d0:	e1a03000 	mov	r3, r0
      d4:	e3530000 	cmp	r3, #0
      d8:	1a000001 	bne	e4 <completecmd+0x2c>
      dc:	e3a03000 	mov	r3, #0
      e0:	ea00008e 	b	320 <completecmd+0x268>
      e4:	e3a03000 	mov	r3, #0
      e8:	e50b3010 	str	r3, [fp, #-16]
      ec:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
      f0:	eb000517 	bl	1554 <strlen>
      f4:	e1a03000 	mov	r3, r0
      f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      fc:	e3e03000 	mvn	r3, #0
     100:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     104:	e3a03000 	mov	r3, #0
     108:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     10c:	ea00003d 	b	208 <completecmd+0x150>
     110:	e59f2214 	ldr	r2, [pc, #532]	@ 32c <completecmd+0x274>
     114:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     118:	e7924103 	ldr	r4, [r2, r3, lsl #2]
     11c:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     120:	eb00050b 	bl	1554 <strlen>
     124:	e1a03000 	mov	r3, r0
     128:	e1a02003 	mov	r2, r3
     12c:	e51b1090 	ldr	r1, [fp, #-144]	@ 0xffffff70
     130:	e1a00004 	mov	r0, r4
     134:	eb000604 	bl	194c <strncmp>
     138:	e1a03000 	mov	r3, r0
     13c:	e3530000 	cmp	r3, #0
     140:	1a00002d 	bne	1fc <completecmd+0x144>
     144:	e51b3010 	ldr	r3, [fp, #-16]
     148:	e3530000 	cmp	r3, #0
     14c:	1a000001 	bne	158 <completecmd+0xa0>
     150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     154:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e2833001 	add	r3, r3, #1
     160:	e50b3010 	str	r3, [fp, #-16]
     164:	e3a03000 	mov	r3, #0
     168:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     16c:	ea000002 	b	17c <completecmd+0xc4>
     170:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     17c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     180:	e51b2090 	ldr	r2, [fp, #-144]	@ 0xffffff70
     184:	e0823003 	add	r3, r2, r3
     188:	e5d33000 	ldrb	r3, [r3]
     18c:	e3530000 	cmp	r3, #0
     190:	0a000013 	beq	1e4 <completecmd+0x12c>
     194:	e59f2190 	ldr	r2, [pc, #400]	@ 32c <completecmd+0x274>
     198:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     19c:	e7922103 	ldr	r2, [r2, r3, lsl #2]
     1a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1a4:	e0823003 	add	r3, r2, r3
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a00000b 	beq	1e4 <completecmd+0x12c>
     1b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1b8:	e51b2090 	ldr	r2, [fp, #-144]	@ 0xffffff70
     1bc:	e0823003 	add	r3, r2, r3
     1c0:	e5d32000 	ldrb	r2, [r3]
     1c4:	e59f1160 	ldr	r1, [pc, #352]	@ 32c <completecmd+0x274>
     1c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1cc:	e7911103 	ldr	r1, [r1, r3, lsl #2]
     1d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e0813003 	add	r3, r1, r3
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e1520003 	cmp	r2, r3
     1e0:	0affffe2 	beq	170 <completecmd+0xb8>
     1e4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
     1e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1ec:	e1520003 	cmp	r2, r3
     1f0:	aa000001 	bge	1fc <completecmd+0x144>
     1f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     200:	e2833001 	add	r3, r3, #1
     204:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     20c:	e3530010 	cmp	r3, #16
     210:	9affffbe 	bls	110 <completecmd+0x58>
     214:	e51b3010 	ldr	r3, [fp, #-16]
     218:	e3530000 	cmp	r3, #0
     21c:	1a000003 	bne	230 <completecmd+0x178>
     220:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     224:	eb0004ca 	bl	1554 <strlen>
     228:	e1a03000 	mov	r3, r0
     22c:	ea00003b 	b	320 <completecmd+0x268>
     230:	e51b3010 	ldr	r3, [fp, #-16]
     234:	e3530001 	cmp	r3, #1
     238:	1a000006 	bne	258 <completecmd+0x1a0>
     23c:	e59f20e8 	ldr	r2, [pc, #232]	@ 32c <completecmd+0x274>
     240:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     244:	e7923103 	ldr	r3, [r2, r3, lsl #2]
     248:	e1a01003 	mov	r1, r3
     24c:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     250:	eb000487 	bl	1474 <strcpy>
     254:	ea00002e 	b	314 <completecmd+0x25c>
     258:	e3a03000 	mov	r3, #0
     25c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
     260:	ea000016 	b	2c0 <completecmd+0x208>
     264:	e59f20c0 	ldr	r2, [pc, #192]	@ 32c <completecmd+0x274>
     268:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     26c:	e7924103 	ldr	r4, [r2, r3, lsl #2]
     270:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     274:	eb0004b6 	bl	1554 <strlen>
     278:	e1a03000 	mov	r3, r0
     27c:	e1a02003 	mov	r2, r3
     280:	e51b1090 	ldr	r1, [fp, #-144]	@ 0xffffff70
     284:	e1a00004 	mov	r0, r4
     288:	eb0005af 	bl	194c <strncmp>
     28c:	e1a03000 	mov	r3, r0
     290:	e3530000 	cmp	r3, #0
     294:	1a000006 	bne	2b4 <completecmd+0x1fc>
     298:	e59f208c 	ldr	r2, [pc, #140]	@ 32c <completecmd+0x274>
     29c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     2a0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
     2a4:	e1a02003 	mov	r2, r3
     2a8:	e59f1080 	ldr	r1, [pc, #128]	@ 330 <completecmd+0x278>
     2ac:	e3a00001 	mov	r0, #1
     2b0:	eb000723 	bl	1f44 <printf>
     2b4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
     2c0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     2c4:	e3530010 	cmp	r3, #16
     2c8:	9affffe5 	bls	264 <completecmd+0x1ac>
     2cc:	e24b3088 	sub	r3, fp, #136	@ 0x88
     2d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2d4:	e51b1090 	ldr	r1, [fp, #-144]	@ 0xffffff70
     2d8:	e1a00003 	mov	r0, r3
     2dc:	eb0005ca 	bl	1a0c <strncpy>
     2e0:	e24b2088 	sub	r2, fp, #136	@ 0x88
     2e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     2e8:	e0823003 	add	r3, r2, r3
     2ec:	e3a02000 	mov	r2, #0
     2f0:	e5c32000 	strb	r2, [r3]
     2f4:	e24b3088 	sub	r3, fp, #136	@ 0x88
     2f8:	e1a01003 	mov	r1, r3
     2fc:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     300:	eb00045b 	bl	1474 <strcpy>
     304:	e51b2090 	ldr	r2, [fp, #-144]	@ 0xffffff70
     308:	e59f1024 	ldr	r1, [pc, #36]	@ 334 <completecmd+0x27c>
     30c:	e3a00001 	mov	r0, #1
     310:	eb00070b 	bl	1f44 <printf>
     314:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     318:	eb00048d 	bl	1554 <strlen>
     31c:	e1a03000 	mov	r3, r0
     320:	e1a00003 	mov	r0, r3
     324:	e24bd008 	sub	sp, fp, #8
     328:	e8bd8810 	pop	{r4, fp, pc}
     32c:	00002774 	.word	0x00002774
     330:	00002674 	.word	0x00002674
     334:	00002678 	.word	0x00002678

00000338 <runcmd>:
     338:	e92d4800 	push	{fp, lr}
     33c:	e28db004 	add	fp, sp, #4
     340:	e24dd028 	sub	sp, sp, #40	@ 0x28
     344:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     348:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     34c:	e3530000 	cmp	r3, #0
     350:	1a000000 	bne	358 <runcmd+0x20>
     354:	eb0005e1 	bl	1ae0 <exit>
     358:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     35c:	e5933000 	ldr	r3, [r3]
     360:	e2433001 	sub	r3, r3, #1
     364:	e3530004 	cmp	r3, #4
     368:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     36c:	ea000004 	b	384 <runcmd+0x4c>
     370:	0000038c 	.word	0x0000038c
     374:	000003e0 	.word	0x000003e0
     378:	00000488 	.word	0x00000488
     37c:	0000044c 	.word	0x0000044c
     380:	0000056c 	.word	0x0000056c
     384:	e59f0210 	ldr	r0, [pc, #528]	@ 59c <runcmd+0x264>
     388:	eb000120 	bl	810 <panic>
     38c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     390:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e5933004 	ldr	r3, [r3, #4]
     39c:	e3530000 	cmp	r3, #0
     3a0:	1a000000 	bne	3a8 <runcmd+0x70>
     3a4:	eb0005cd 	bl	1ae0 <exit>
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e5932004 	ldr	r2, [r3, #4]
     3b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3b4:	e2833004 	add	r3, r3, #4
     3b8:	e1a01003 	mov	r1, r3
     3bc:	e1a00002 	mov	r0, r2
     3c0:	eb000605 	bl	1bdc <exec>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e5933004 	ldr	r3, [r3, #4]
     3cc:	e1a02003 	mov	r2, r3
     3d0:	e59f11c8 	ldr	r1, [pc, #456]	@ 5a0 <runcmd+0x268>
     3d4:	e3a00002 	mov	r0, #2
     3d8:	eb0006d9 	bl	1f44 <printf>
     3dc:	ea00006d 	b	598 <runcmd+0x260>
     3e0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     3e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3ec:	e5933014 	ldr	r3, [r3, #20]
     3f0:	e1a00003 	mov	r0, r3
     3f4:	eb0005e6 	bl	1b94 <close>
     3f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3fc:	e5932008 	ldr	r2, [r3, #8]
     400:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     404:	e5933010 	ldr	r3, [r3, #16]
     408:	e1a01003 	mov	r1, r3
     40c:	e1a00002 	mov	r0, r2
     410:	eb0005fa 	bl	1c00 <open>
     414:	e1a03000 	mov	r3, r0
     418:	e3530000 	cmp	r3, #0
     41c:	aa000006 	bge	43c <runcmd+0x104>
     420:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     424:	e5933008 	ldr	r3, [r3, #8]
     428:	e1a02003 	mov	r2, r3
     42c:	e59f1170 	ldr	r1, [pc, #368]	@ 5a4 <runcmd+0x26c>
     430:	e3a00002 	mov	r0, #2
     434:	eb0006c2 	bl	1f44 <printf>
     438:	eb0005a8 	bl	1ae0 <exit>
     43c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     440:	e5933004 	ldr	r3, [r3, #4]
     444:	e1a00003 	mov	r0, r3
     448:	ebffffba 	bl	338 <runcmd>
     44c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     450:	e50b300c 	str	r3, [fp, #-12]
     454:	eb0000f7 	bl	838 <fork1>
     458:	e1a03000 	mov	r3, r0
     45c:	e3530000 	cmp	r3, #0
     460:	1a000003 	bne	474 <runcmd+0x13c>
     464:	e51b300c 	ldr	r3, [fp, #-12]
     468:	e5933004 	ldr	r3, [r3, #4]
     46c:	e1a00003 	mov	r0, r3
     470:	ebffffb0 	bl	338 <runcmd>
     474:	eb0005a2 	bl	1b04 <wait>
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e5933008 	ldr	r3, [r3, #8]
     480:	e1a00003 	mov	r0, r3
     484:	ebffffab 	bl	338 <runcmd>
     488:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     48c:	e50b3010 	str	r3, [fp, #-16]
     490:	e24b3020 	sub	r3, fp, #32
     494:	e1a00003 	mov	r0, r3
     498:	eb0005a2 	bl	1b28 <pipe>
     49c:	e1a03000 	mov	r3, r0
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <runcmd+0x178>
     4a8:	e59f00f8 	ldr	r0, [pc, #248]	@ 5a8 <runcmd+0x270>
     4ac:	eb0000d7 	bl	810 <panic>
     4b0:	eb0000e0 	bl	838 <fork1>
     4b4:	e1a03000 	mov	r3, r0
     4b8:	e3530000 	cmp	r3, #0
     4bc:	1a00000e 	bne	4fc <runcmd+0x1c4>
     4c0:	e3a00001 	mov	r0, #1
     4c4:	eb0005b2 	bl	1b94 <close>
     4c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4cc:	e1a00003 	mov	r0, r3
     4d0:	eb000609 	bl	1cfc <dup>
     4d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4d8:	e1a00003 	mov	r0, r3
     4dc:	eb0005ac 	bl	1b94 <close>
     4e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4e4:	e1a00003 	mov	r0, r3
     4e8:	eb0005a9 	bl	1b94 <close>
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e5933004 	ldr	r3, [r3, #4]
     4f4:	e1a00003 	mov	r0, r3
     4f8:	ebffff8e 	bl	338 <runcmd>
     4fc:	eb0000cd 	bl	838 <fork1>
     500:	e1a03000 	mov	r3, r0
     504:	e3530000 	cmp	r3, #0
     508:	1a00000e 	bne	548 <runcmd+0x210>
     50c:	e3a00000 	mov	r0, #0
     510:	eb00059f 	bl	1b94 <close>
     514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     518:	e1a00003 	mov	r0, r3
     51c:	eb0005f6 	bl	1cfc <dup>
     520:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     524:	e1a00003 	mov	r0, r3
     528:	eb000599 	bl	1b94 <close>
     52c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     530:	e1a00003 	mov	r0, r3
     534:	eb000596 	bl	1b94 <close>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5933008 	ldr	r3, [r3, #8]
     540:	e1a00003 	mov	r0, r3
     544:	ebffff7b 	bl	338 <runcmd>
     548:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     54c:	e1a00003 	mov	r0, r3
     550:	eb00058f 	bl	1b94 <close>
     554:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     558:	e1a00003 	mov	r0, r3
     55c:	eb00058c 	bl	1b94 <close>
     560:	eb000567 	bl	1b04 <wait>
     564:	eb000566 	bl	1b04 <wait>
     568:	ea00000a 	b	598 <runcmd+0x260>
     56c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	eb0000af 	bl	838 <fork1>
     578:	e1a03000 	mov	r3, r0
     57c:	e3530000 	cmp	r3, #0
     580:	1a000003 	bne	594 <runcmd+0x25c>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e5933004 	ldr	r3, [r3, #4]
     58c:	e1a00003 	mov	r0, r3
     590:	ebffff68 	bl	338 <runcmd>
     594:	e1a00000 	nop			@ (mov r0, r0)
     598:	eb000550 	bl	1ae0 <exit>
     59c:	00002680 	.word	0x00002680
     5a0:	00002688 	.word	0x00002688
     5a4:	00002698 	.word	0x00002698
     5a8:	000026a8 	.word	0x000026a8

000005ac <getcmd>:
     5ac:	e92d4800 	push	{fp, lr}
     5b0:	e28db004 	add	fp, sp, #4
     5b4:	e24dd010 	sub	sp, sp, #16
     5b8:	e50b0010 	str	r0, [fp, #-16]
     5bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c0:	e59f1120 	ldr	r1, [pc, #288]	@ 6e8 <getcmd+0x13c>
     5c4:	e3a00002 	mov	r0, #2
     5c8:	eb00065d 	bl	1f44 <printf>
     5cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d0:	e1a02003 	mov	r2, r3
     5d4:	e3a01000 	mov	r1, #0
     5d8:	e51b0010 	ldr	r0, [fp, #-16]
     5dc:	eb0003f1 	bl	15a8 <memset>
     5e0:	e3a03000 	mov	r3, #0
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	ea000028 	b	690 <getcmd+0xe4>
     5ec:	e24b3009 	sub	r3, fp, #9
     5f0:	e3a02001 	mov	r2, #1
     5f4:	e1a01003 	mov	r1, r3
     5f8:	e3a00000 	mov	r0, #0
     5fc:	eb000552 	bl	1b4c <read>
     600:	e1a03000 	mov	r3, r0
     604:	e3530000 	cmp	r3, #0
     608:	da000026 	ble	6a8 <getcmd+0xfc>
     60c:	e55b3009 	ldrb	r3, [fp, #-9]
     610:	e3530009 	cmp	r3, #9
     614:	1a00000f 	bne	658 <getcmd+0xac>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e51b2010 	ldr	r2, [fp, #-16]
     620:	e0823003 	add	r3, r2, r3
     624:	e3a02000 	mov	r2, #0
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b0010 	ldr	r0, [fp, #-16]
     630:	ebfffea0 	bl	b8 <completecmd>
     634:	e51b0010 	ldr	r0, [fp, #-16]
     638:	eb0003c5 	bl	1554 <strlen>
     63c:	e1a03000 	mov	r3, r0
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b2010 	ldr	r2, [fp, #-16]
     648:	e59f109c 	ldr	r1, [pc, #156]	@ 6ec <getcmd+0x140>
     64c:	e3a00001 	mov	r0, #1
     650:	eb00063b 	bl	1f44 <printf>
     654:	ea00000d 	b	690 <getcmd+0xe4>
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e2832001 	add	r2, r3, #1
     660:	e50b2008 	str	r2, [fp, #-8]
     664:	e1a02003 	mov	r2, r3
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e0833002 	add	r3, r3, r2
     670:	e55b2009 	ldrb	r2, [fp, #-9]
     674:	e5c32000 	strb	r2, [r3]
     678:	e55b3009 	ldrb	r3, [fp, #-9]
     67c:	e353000a 	cmp	r3, #10
     680:	0a000009 	beq	6ac <getcmd+0x100>
     684:	e55b3009 	ldrb	r3, [fp, #-9]
     688:	e353000d 	cmp	r3, #13
     68c:	0a000006 	beq	6ac <getcmd+0x100>
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e2833001 	add	r3, r3, #1
     698:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     69c:	e1520003 	cmp	r2, r3
     6a0:	caffffd1 	bgt	5ec <getcmd+0x40>
     6a4:	ea000000 	b	6ac <getcmd+0x100>
     6a8:	e1a00000 	nop			@ (mov r0, r0)
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e51b2010 	ldr	r2, [fp, #-16]
     6b4:	e0823003 	add	r3, r2, r3
     6b8:	e3a02000 	mov	r2, #0
     6bc:	e5c32000 	strb	r2, [r3]
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e5d33000 	ldrb	r3, [r3]
     6c8:	e3530000 	cmp	r3, #0
     6cc:	1a000001 	bne	6d8 <getcmd+0x12c>
     6d0:	e3e03000 	mvn	r3, #0
     6d4:	ea000000 	b	6dc <getcmd+0x130>
     6d8:	e3a03000 	mov	r3, #0
     6dc:	e1a00003 	mov	r0, r3
     6e0:	e24bd004 	sub	sp, fp, #4
     6e4:	e8bd8800 	pop	{fp, pc}
     6e8:	000026b0 	.word	0x000026b0
     6ec:	000026b4 	.word	0x000026b4

000006f0 <main>:
     6f0:	e92d4800 	push	{fp, lr}
     6f4:	e28db004 	add	fp, sp, #4
     6f8:	e24dd008 	sub	sp, sp, #8
     6fc:	ea000005 	b	718 <main+0x28>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e3530002 	cmp	r3, #2
     708:	da000002 	ble	718 <main+0x28>
     70c:	e51b0008 	ldr	r0, [fp, #-8]
     710:	eb00051f 	bl	1b94 <close>
     714:	ea000006 	b	734 <main+0x44>
     718:	e3a01002 	mov	r1, #2
     71c:	e59f00dc 	ldr	r0, [pc, #220]	@ 800 <main+0x110>
     720:	eb000536 	bl	1c00 <open>
     724:	e50b0008 	str	r0, [fp, #-8]
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e3530000 	cmp	r3, #0
     730:	aafffff2 	bge	700 <main+0x10>
     734:	ea00002a 	b	7e4 <main+0xf4>
     738:	e59f30c4 	ldr	r3, [pc, #196]	@ 804 <main+0x114>
     73c:	e5d33000 	ldrb	r3, [r3]
     740:	e3530063 	cmp	r3, #99	@ 0x63
     744:	1a00001a 	bne	7b4 <main+0xc4>
     748:	e59f30b4 	ldr	r3, [pc, #180]	@ 804 <main+0x114>
     74c:	e5d33001 	ldrb	r3, [r3, #1]
     750:	e3530064 	cmp	r3, #100	@ 0x64
     754:	1a000016 	bne	7b4 <main+0xc4>
     758:	e59f30a4 	ldr	r3, [pc, #164]	@ 804 <main+0x114>
     75c:	e5d33002 	ldrb	r3, [r3, #2]
     760:	e3530020 	cmp	r3, #32
     764:	1a000012 	bne	7b4 <main+0xc4>
     768:	e59f0094 	ldr	r0, [pc, #148]	@ 804 <main+0x114>
     76c:	eb000378 	bl	1554 <strlen>
     770:	e1a03000 	mov	r3, r0
     774:	e2433001 	sub	r3, r3, #1
     778:	e59f2084 	ldr	r2, [pc, #132]	@ 804 <main+0x114>
     77c:	e3a01000 	mov	r1, #0
     780:	e7c21003 	strb	r1, [r2, r3]
     784:	e59f307c 	ldr	r3, [pc, #124]	@ 808 <main+0x118>
     788:	e1a00003 	mov	r0, r3
     78c:	eb000551 	bl	1cd8 <chdir>
     790:	e1a03000 	mov	r3, r0
     794:	e3530000 	cmp	r3, #0
     798:	aa000010 	bge	7e0 <main+0xf0>
     79c:	e59f3064 	ldr	r3, [pc, #100]	@ 808 <main+0x118>
     7a0:	e1a02003 	mov	r2, r3
     7a4:	e59f1060 	ldr	r1, [pc, #96]	@ 80c <main+0x11c>
     7a8:	e3a00002 	mov	r0, #2
     7ac:	eb0005e4 	bl	1f44 <printf>
     7b0:	ea00000a 	b	7e0 <main+0xf0>
     7b4:	eb00001f 	bl	838 <fork1>
     7b8:	e1a03000 	mov	r3, r0
     7bc:	e3530000 	cmp	r3, #0
     7c0:	1a000004 	bne	7d8 <main+0xe8>
     7c4:	e59f0038 	ldr	r0, [pc, #56]	@ 804 <main+0x114>
     7c8:	eb000172 	bl	d98 <parsecmd>
     7cc:	e1a03000 	mov	r3, r0
     7d0:	e1a00003 	mov	r0, r3
     7d4:	ebfffed7 	bl	338 <runcmd>
     7d8:	eb0004c9 	bl	1b04 <wait>
     7dc:	ea000000 	b	7e4 <main+0xf4>
     7e0:	e1a00000 	nop			@ (mov r0, r0)
     7e4:	e3a01064 	mov	r1, #100	@ 0x64
     7e8:	e59f0014 	ldr	r0, [pc, #20]	@ 804 <main+0x114>
     7ec:	ebffff6e 	bl	5ac <getcmd>
     7f0:	e1a03000 	mov	r3, r0
     7f4:	e3530000 	cmp	r3, #0
     7f8:	aaffffce 	bge	738 <main+0x48>
     7fc:	eb0004b7 	bl	1ae0 <exit>
     800:	000026bc 	.word	0x000026bc
     804:	000027dc 	.word	0x000027dc
     808:	000027df 	.word	0x000027df
     80c:	000026c4 	.word	0x000026c4

00000810 <panic>:
     810:	e92d4800 	push	{fp, lr}
     814:	e28db004 	add	fp, sp, #4
     818:	e24dd008 	sub	sp, sp, #8
     81c:	e50b0008 	str	r0, [fp, #-8]
     820:	e51b2008 	ldr	r2, [fp, #-8]
     824:	e59f1008 	ldr	r1, [pc, #8]	@ 834 <panic+0x24>
     828:	e3a00002 	mov	r0, #2
     82c:	eb0005c4 	bl	1f44 <printf>
     830:	eb0004aa 	bl	1ae0 <exit>
     834:	000026d4 	.word	0x000026d4

00000838 <fork1>:
     838:	e92d4800 	push	{fp, lr}
     83c:	e28db004 	add	fp, sp, #4
     840:	e24dd008 	sub	sp, sp, #8
     844:	eb00049c 	bl	1abc <fork>
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e3730001 	cmn	r3, #1
     854:	1a000001 	bne	860 <fork1+0x28>
     858:	e59f0010 	ldr	r0, [pc, #16]	@ 870 <fork1+0x38>
     85c:	ebffffeb 	bl	810 <panic>
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e1a00003 	mov	r0, r3
     868:	e24bd004 	sub	sp, fp, #4
     86c:	e8bd8800 	pop	{fp, pc}
     870:	000026d8 	.word	0x000026d8

00000874 <execcmd>:
     874:	e92d4800 	push	{fp, lr}
     878:	e28db004 	add	fp, sp, #4
     87c:	e24dd008 	sub	sp, sp, #8
     880:	e3a00054 	mov	r0, #84	@ 0x54
     884:	eb0006bd 	bl	2380 <malloc>
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e3a02054 	mov	r2, #84	@ 0x54
     890:	e3a01000 	mov	r1, #0
     894:	e51b0008 	ldr	r0, [fp, #-8]
     898:	eb000342 	bl	15a8 <memset>
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e3a02001 	mov	r2, #1
     8a4:	e5832000 	str	r2, [r3]
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e1a00003 	mov	r0, r3
     8b0:	e24bd004 	sub	sp, fp, #4
     8b4:	e8bd8800 	pop	{fp, pc}

000008b8 <redircmd>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd018 	sub	sp, sp, #24
     8c4:	e50b0010 	str	r0, [fp, #-16]
     8c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     8d4:	e3a00018 	mov	r0, #24
     8d8:	eb0006a8 	bl	2380 <malloc>
     8dc:	e50b0008 	str	r0, [fp, #-8]
     8e0:	e3a02018 	mov	r2, #24
     8e4:	e3a01000 	mov	r1, #0
     8e8:	e51b0008 	ldr	r0, [fp, #-8]
     8ec:	eb00032d 	bl	15a8 <memset>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e3a02002 	mov	r2, #2
     8f8:	e5832000 	str	r2, [r3]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e51b2010 	ldr	r2, [fp, #-16]
     904:	e5832004 	str	r2, [r3, #4]
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     910:	e5832008 	str	r2, [r3, #8]
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     91c:	e583200c 	str	r2, [r3, #12]
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     928:	e5832010 	str	r2, [r3, #16]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e59b2004 	ldr	r2, [fp, #4]
     934:	e5832014 	str	r2, [r3, #20]
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e1a00003 	mov	r0, r3
     940:	e24bd004 	sub	sp, fp, #4
     944:	e8bd8800 	pop	{fp, pc}

00000948 <pipecmd>:
     948:	e92d4800 	push	{fp, lr}
     94c:	e28db004 	add	fp, sp, #4
     950:	e24dd010 	sub	sp, sp, #16
     954:	e50b0010 	str	r0, [fp, #-16]
     958:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     95c:	e3a0000c 	mov	r0, #12
     960:	eb000686 	bl	2380 <malloc>
     964:	e50b0008 	str	r0, [fp, #-8]
     968:	e3a0200c 	mov	r2, #12
     96c:	e3a01000 	mov	r1, #0
     970:	e51b0008 	ldr	r0, [fp, #-8]
     974:	eb00030b 	bl	15a8 <memset>
     978:	e51b3008 	ldr	r3, [fp, #-8]
     97c:	e3a02003 	mov	r2, #3
     980:	e5832000 	str	r2, [r3]
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e51b2010 	ldr	r2, [fp, #-16]
     98c:	e5832004 	str	r2, [r3, #4]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     998:	e5832008 	str	r2, [r3, #8]
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e1a00003 	mov	r0, r3
     9a4:	e24bd004 	sub	sp, fp, #4
     9a8:	e8bd8800 	pop	{fp, pc}

000009ac <listcmd>:
     9ac:	e92d4800 	push	{fp, lr}
     9b0:	e28db004 	add	fp, sp, #4
     9b4:	e24dd010 	sub	sp, sp, #16
     9b8:	e50b0010 	str	r0, [fp, #-16]
     9bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9c0:	e3a0000c 	mov	r0, #12
     9c4:	eb00066d 	bl	2380 <malloc>
     9c8:	e50b0008 	str	r0, [fp, #-8]
     9cc:	e3a0200c 	mov	r2, #12
     9d0:	e3a01000 	mov	r1, #0
     9d4:	e51b0008 	ldr	r0, [fp, #-8]
     9d8:	eb0002f2 	bl	15a8 <memset>
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e3a02004 	mov	r2, #4
     9e4:	e5832000 	str	r2, [r3]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e51b2010 	ldr	r2, [fp, #-16]
     9f0:	e5832004 	str	r2, [r3, #4]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     9fc:	e5832008 	str	r2, [r3, #8]
     a00:	e51b3008 	ldr	r3, [fp, #-8]
     a04:	e1a00003 	mov	r0, r3
     a08:	e24bd004 	sub	sp, fp, #4
     a0c:	e8bd8800 	pop	{fp, pc}

00000a10 <backcmd>:
     a10:	e92d4800 	push	{fp, lr}
     a14:	e28db004 	add	fp, sp, #4
     a18:	e24dd010 	sub	sp, sp, #16
     a1c:	e50b0010 	str	r0, [fp, #-16]
     a20:	e3a00008 	mov	r0, #8
     a24:	eb000655 	bl	2380 <malloc>
     a28:	e50b0008 	str	r0, [fp, #-8]
     a2c:	e3a02008 	mov	r2, #8
     a30:	e3a01000 	mov	r1, #0
     a34:	e51b0008 	ldr	r0, [fp, #-8]
     a38:	eb0002da 	bl	15a8 <memset>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e3a02005 	mov	r2, #5
     a44:	e5832000 	str	r2, [r3]
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e51b2010 	ldr	r2, [fp, #-16]
     a50:	e5832004 	str	r2, [r3, #4]
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e1a00003 	mov	r0, r3
     a5c:	e24bd004 	sub	sp, fp, #4
     a60:	e8bd8800 	pop	{fp, pc}

00000a64 <gettoken>:
     a64:	e92d4800 	push	{fp, lr}
     a68:	e28db004 	add	fp, sp, #4
     a6c:	e24dd018 	sub	sp, sp, #24
     a70:	e50b0010 	str	r0, [fp, #-16]
     a74:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a78:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a7c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a80:	e51b3010 	ldr	r3, [fp, #-16]
     a84:	e5933000 	ldr	r3, [r3]
     a88:	e50b3008 	str	r3, [fp, #-8]
     a8c:	ea000002 	b	a9c <gettoken+0x38>
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e2833001 	add	r3, r3, #1
     a98:	e50b3008 	str	r3, [fp, #-8]
     a9c:	e51b2008 	ldr	r2, [fp, #-8]
     aa0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     aa4:	e1520003 	cmp	r2, r3
     aa8:	2a000007 	bcs	acc <gettoken+0x68>
     aac:	e51b3008 	ldr	r3, [fp, #-8]
     ab0:	e5d33000 	ldrb	r3, [r3]
     ab4:	e1a01003 	mov	r1, r3
     ab8:	e59f0214 	ldr	r0, [pc, #532]	@ cd4 <gettoken+0x270>
     abc:	eb000303 	bl	16d0 <strchr>
     ac0:	e1a03000 	mov	r3, r0
     ac4:	e3530000 	cmp	r3, #0
     ac8:	1afffff0 	bne	a90 <gettoken+0x2c>
     acc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	e3530000 	cmp	r3, #0
     ad4:	0a000002 	beq	ae4 <gettoken+0x80>
     ad8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     adc:	e51b2008 	ldr	r2, [fp, #-8]
     ae0:	e5832000 	str	r2, [r3]
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e5d33000 	ldrb	r3, [r3]
     aec:	e50b300c 	str	r3, [fp, #-12]
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e5d33000 	ldrb	r3, [r3]
     af8:	e353007c 	cmp	r3, #124	@ 0x7c
     afc:	0a000026 	beq	b9c <gettoken+0x138>
     b00:	e353007c 	cmp	r3, #124	@ 0x7c
     b04:	ca000035 	bgt	be0 <gettoken+0x17c>
     b08:	e3530000 	cmp	r3, #0
     b0c:	0a00004e 	beq	c4c <gettoken+0x1e8>
     b10:	e3530000 	cmp	r3, #0
     b14:	ba000031 	blt	be0 <gettoken+0x17c>
     b18:	e353003e 	cmp	r3, #62	@ 0x3e
     b1c:	ca00002f 	bgt	be0 <gettoken+0x17c>
     b20:	e3530026 	cmp	r3, #38	@ 0x26
     b24:	ba00002d 	blt	be0 <gettoken+0x17c>
     b28:	e2433026 	sub	r3, r3, #38	@ 0x26
     b2c:	e3530018 	cmp	r3, #24
     b30:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     b34:	ea000029 	b	be0 <gettoken+0x17c>
     b38:	00000b9c 	.word	0x00000b9c
     b3c:	00000be0 	.word	0x00000be0
     b40:	00000b9c 	.word	0x00000b9c
     b44:	00000b9c 	.word	0x00000b9c
     b48:	00000be0 	.word	0x00000be0
     b4c:	00000be0 	.word	0x00000be0
     b50:	00000be0 	.word	0x00000be0
     b54:	00000be0 	.word	0x00000be0
     b58:	00000be0 	.word	0x00000be0
     b5c:	00000be0 	.word	0x00000be0
     b60:	00000be0 	.word	0x00000be0
     b64:	00000be0 	.word	0x00000be0
     b68:	00000be0 	.word	0x00000be0
     b6c:	00000be0 	.word	0x00000be0
     b70:	00000be0 	.word	0x00000be0
     b74:	00000be0 	.word	0x00000be0
     b78:	00000be0 	.word	0x00000be0
     b7c:	00000be0 	.word	0x00000be0
     b80:	00000be0 	.word	0x00000be0
     b84:	00000be0 	.word	0x00000be0
     b88:	00000be0 	.word	0x00000be0
     b8c:	00000b9c 	.word	0x00000b9c
     b90:	00000b9c 	.word	0x00000b9c
     b94:	00000be0 	.word	0x00000be0
     b98:	00000bac 	.word	0x00000bac
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2833001 	add	r3, r3, #1
     ba4:	e50b3008 	str	r3, [fp, #-8]
     ba8:	ea00002c 	b	c60 <gettoken+0x1fc>
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e2833001 	add	r3, r3, #1
     bb4:	e50b3008 	str	r3, [fp, #-8]
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e5d33000 	ldrb	r3, [r3]
     bc0:	e353003e 	cmp	r3, #62	@ 0x3e
     bc4:	1a000022 	bne	c54 <gettoken+0x1f0>
     bc8:	e3a0302b 	mov	r3, #43	@ 0x2b
     bcc:	e50b300c 	str	r3, [fp, #-12]
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e2833001 	add	r3, r3, #1
     bd8:	e50b3008 	str	r3, [fp, #-8]
     bdc:	ea00001c 	b	c54 <gettoken+0x1f0>
     be0:	e3a03061 	mov	r3, #97	@ 0x61
     be4:	e50b300c 	str	r3, [fp, #-12]
     be8:	ea000002 	b	bf8 <gettoken+0x194>
     bec:	e51b3008 	ldr	r3, [fp, #-8]
     bf0:	e2833001 	add	r3, r3, #1
     bf4:	e50b3008 	str	r3, [fp, #-8]
     bf8:	e51b2008 	ldr	r2, [fp, #-8]
     bfc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c00:	e1520003 	cmp	r2, r3
     c04:	2a000014 	bcs	c5c <gettoken+0x1f8>
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e5d33000 	ldrb	r3, [r3]
     c10:	e1a01003 	mov	r1, r3
     c14:	e59f00b8 	ldr	r0, [pc, #184]	@ cd4 <gettoken+0x270>
     c18:	eb0002ac 	bl	16d0 <strchr>
     c1c:	e1a03000 	mov	r3, r0
     c20:	e3530000 	cmp	r3, #0
     c24:	1a00000c 	bne	c5c <gettoken+0x1f8>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5d33000 	ldrb	r3, [r3]
     c30:	e1a01003 	mov	r1, r3
     c34:	e59f009c 	ldr	r0, [pc, #156]	@ cd8 <gettoken+0x274>
     c38:	eb0002a4 	bl	16d0 <strchr>
     c3c:	e1a03000 	mov	r3, r0
     c40:	e3530000 	cmp	r3, #0
     c44:	0affffe8 	beq	bec <gettoken+0x188>
     c48:	ea000003 	b	c5c <gettoken+0x1f8>
     c4c:	e1a00000 	nop			@ (mov r0, r0)
     c50:	ea000002 	b	c60 <gettoken+0x1fc>
     c54:	e1a00000 	nop			@ (mov r0, r0)
     c58:	ea000000 	b	c60 <gettoken+0x1fc>
     c5c:	e1a00000 	nop			@ (mov r0, r0)
     c60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c64:	e3530000 	cmp	r3, #0
     c68:	0a000006 	beq	c88 <gettoken+0x224>
     c6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c70:	e51b2008 	ldr	r2, [fp, #-8]
     c74:	e5832000 	str	r2, [r3]
     c78:	ea000002 	b	c88 <gettoken+0x224>
     c7c:	e51b3008 	ldr	r3, [fp, #-8]
     c80:	e2833001 	add	r3, r3, #1
     c84:	e50b3008 	str	r3, [fp, #-8]
     c88:	e51b2008 	ldr	r2, [fp, #-8]
     c8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c90:	e1520003 	cmp	r2, r3
     c94:	2a000007 	bcs	cb8 <gettoken+0x254>
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e5d33000 	ldrb	r3, [r3]
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e59f0028 	ldr	r0, [pc, #40]	@ cd4 <gettoken+0x270>
     ca8:	eb000288 	bl	16d0 <strchr>
     cac:	e1a03000 	mov	r3, r0
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1afffff0 	bne	c7c <gettoken+0x218>
     cb8:	e51b3010 	ldr	r3, [fp, #-16]
     cbc:	e51b2008 	ldr	r2, [fp, #-8]
     cc0:	e5832000 	str	r2, [r3]
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e1a00003 	mov	r0, r3
     ccc:	e24bd004 	sub	sp, fp, #4
     cd0:	e8bd8800 	pop	{fp, pc}
     cd4:	000027b8 	.word	0x000027b8
     cd8:	000027c0 	.word	0x000027c0

00000cdc <peek>:
     cdc:	e92d4800 	push	{fp, lr}
     ce0:	e28db004 	add	fp, sp, #4
     ce4:	e24dd018 	sub	sp, sp, #24
     ce8:	e50b0010 	str	r0, [fp, #-16]
     cec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     cf0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     cf4:	e51b3010 	ldr	r3, [fp, #-16]
     cf8:	e5933000 	ldr	r3, [r3]
     cfc:	e50b3008 	str	r3, [fp, #-8]
     d00:	ea000002 	b	d10 <peek+0x34>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e2833001 	add	r3, r3, #1
     d0c:	e50b3008 	str	r3, [fp, #-8]
     d10:	e51b2008 	ldr	r2, [fp, #-8]
     d14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d18:	e1520003 	cmp	r2, r3
     d1c:	2a000007 	bcs	d40 <peek+0x64>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5d33000 	ldrb	r3, [r3]
     d28:	e1a01003 	mov	r1, r3
     d2c:	e59f0060 	ldr	r0, [pc, #96]	@ d94 <peek+0xb8>
     d30:	eb000266 	bl	16d0 <strchr>
     d34:	e1a03000 	mov	r3, r0
     d38:	e3530000 	cmp	r3, #0
     d3c:	1afffff0 	bne	d04 <peek+0x28>
     d40:	e51b3010 	ldr	r3, [fp, #-16]
     d44:	e51b2008 	ldr	r2, [fp, #-8]
     d48:	e5832000 	str	r2, [r3]
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5d33000 	ldrb	r3, [r3]
     d54:	e3530000 	cmp	r3, #0
     d58:	0a000009 	beq	d84 <peek+0xa8>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5d33000 	ldrb	r3, [r3]
     d64:	e1a01003 	mov	r1, r3
     d68:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     d6c:	eb000257 	bl	16d0 <strchr>
     d70:	e1a03000 	mov	r3, r0
     d74:	e3530000 	cmp	r3, #0
     d78:	0a000001 	beq	d84 <peek+0xa8>
     d7c:	e3a03001 	mov	r3, #1
     d80:	ea000000 	b	d88 <peek+0xac>
     d84:	e3a03000 	mov	r3, #0
     d88:	e1a00003 	mov	r0, r3
     d8c:	e24bd004 	sub	sp, fp, #4
     d90:	e8bd8800 	pop	{fp, pc}
     d94:	000027b8 	.word	0x000027b8

00000d98 <parsecmd>:
     d98:	e92d4810 	push	{r4, fp, lr}
     d9c:	e28db008 	add	fp, sp, #8
     da0:	e24dd014 	sub	sp, sp, #20
     da4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     da8:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e1a00003 	mov	r0, r3
     db4:	eb0001e6 	bl	1554 <strlen>
     db8:	e1a03000 	mov	r3, r0
     dbc:	e0843003 	add	r3, r4, r3
     dc0:	e50b3010 	str	r3, [fp, #-16]
     dc4:	e24b3018 	sub	r3, fp, #24
     dc8:	e51b1010 	ldr	r1, [fp, #-16]
     dcc:	e1a00003 	mov	r0, r3
     dd0:	eb000019 	bl	e3c <parseline>
     dd4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     dd8:	e24b3018 	sub	r3, fp, #24
     ddc:	e59f204c 	ldr	r2, [pc, #76]	@ e30 <parsecmd+0x98>
     de0:	e51b1010 	ldr	r1, [fp, #-16]
     de4:	e1a00003 	mov	r0, r3
     de8:	ebffffbb 	bl	cdc <peek>
     dec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df0:	e51b2010 	ldr	r2, [fp, #-16]
     df4:	e1520003 	cmp	r2, r3
     df8:	0a000006 	beq	e18 <parsecmd+0x80>
     dfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e00:	e1a02003 	mov	r2, r3
     e04:	e59f1028 	ldr	r1, [pc, #40]	@ e34 <parsecmd+0x9c>
     e08:	e3a00002 	mov	r0, #2
     e0c:	eb00044c 	bl	1f44 <printf>
     e10:	e59f0020 	ldr	r0, [pc, #32]	@ e38 <parsecmd+0xa0>
     e14:	ebfffe7d 	bl	810 <panic>
     e18:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e1c:	eb00013c 	bl	1314 <nulterminate>
     e20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e24:	e1a00003 	mov	r0, r3
     e28:	e24bd008 	sub	sp, fp, #8
     e2c:	e8bd8810 	pop	{r4, fp, pc}
     e30:	000026e0 	.word	0x000026e0
     e34:	000026e4 	.word	0x000026e4
     e38:	000026f4 	.word	0x000026f4

00000e3c <parseline>:
     e3c:	e92d4800 	push	{fp, lr}
     e40:	e28db004 	add	fp, sp, #4
     e44:	e24dd010 	sub	sp, sp, #16
     e48:	e50b0010 	str	r0, [fp, #-16]
     e4c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     e50:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e54:	e51b0010 	ldr	r0, [fp, #-16]
     e58:	eb00002a 	bl	f08 <parsepipe>
     e5c:	e50b0008 	str	r0, [fp, #-8]
     e60:	ea000007 	b	e84 <parseline+0x48>
     e64:	e3a03000 	mov	r3, #0
     e68:	e3a02000 	mov	r2, #0
     e6c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e70:	e51b0010 	ldr	r0, [fp, #-16]
     e74:	ebfffefa 	bl	a64 <gettoken>
     e78:	e51b0008 	ldr	r0, [fp, #-8]
     e7c:	ebfffee3 	bl	a10 <backcmd>
     e80:	e50b0008 	str	r0, [fp, #-8]
     e84:	e59f2074 	ldr	r2, [pc, #116]	@ f00 <parseline+0xc4>
     e88:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     e8c:	e51b0010 	ldr	r0, [fp, #-16]
     e90:	ebffff91 	bl	cdc <peek>
     e94:	e1a03000 	mov	r3, r0
     e98:	e3530000 	cmp	r3, #0
     e9c:	1afffff0 	bne	e64 <parseline+0x28>
     ea0:	e59f205c 	ldr	r2, [pc, #92]	@ f04 <parseline+0xc8>
     ea4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ea8:	e51b0010 	ldr	r0, [fp, #-16]
     eac:	ebffff8a 	bl	cdc <peek>
     eb0:	e1a03000 	mov	r3, r0
     eb4:	e3530000 	cmp	r3, #0
     eb8:	0a00000c 	beq	ef0 <parseline+0xb4>
     ebc:	e3a03000 	mov	r3, #0
     ec0:	e3a02000 	mov	r2, #0
     ec4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ec8:	e51b0010 	ldr	r0, [fp, #-16]
     ecc:	ebfffee4 	bl	a64 <gettoken>
     ed0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ed4:	e51b0010 	ldr	r0, [fp, #-16]
     ed8:	ebffffd7 	bl	e3c <parseline>
     edc:	e1a03000 	mov	r3, r0
     ee0:	e1a01003 	mov	r1, r3
     ee4:	e51b0008 	ldr	r0, [fp, #-8]
     ee8:	ebfffeaf 	bl	9ac <listcmd>
     eec:	e50b0008 	str	r0, [fp, #-8]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e1a00003 	mov	r0, r3
     ef8:	e24bd004 	sub	sp, fp, #4
     efc:	e8bd8800 	pop	{fp, pc}
     f00:	000026fc 	.word	0x000026fc
     f04:	00002700 	.word	0x00002700

00000f08 <parsepipe>:
     f08:	e92d4800 	push	{fp, lr}
     f0c:	e28db004 	add	fp, sp, #4
     f10:	e24dd010 	sub	sp, sp, #16
     f14:	e50b0010 	str	r0, [fp, #-16]
     f18:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     f1c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f20:	e51b0010 	ldr	r0, [fp, #-16]
     f24:	eb000097 	bl	1188 <parseexec>
     f28:	e50b0008 	str	r0, [fp, #-8]
     f2c:	e59f2058 	ldr	r2, [pc, #88]	@ f8c <parsepipe+0x84>
     f30:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f34:	e51b0010 	ldr	r0, [fp, #-16]
     f38:	ebffff67 	bl	cdc <peek>
     f3c:	e1a03000 	mov	r3, r0
     f40:	e3530000 	cmp	r3, #0
     f44:	0a00000c 	beq	f7c <parsepipe+0x74>
     f48:	e3a03000 	mov	r3, #0
     f4c:	e3a02000 	mov	r2, #0
     f50:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f54:	e51b0010 	ldr	r0, [fp, #-16]
     f58:	ebfffec1 	bl	a64 <gettoken>
     f5c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f60:	e51b0010 	ldr	r0, [fp, #-16]
     f64:	ebffffe7 	bl	f08 <parsepipe>
     f68:	e1a03000 	mov	r3, r0
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0008 	ldr	r0, [fp, #-8]
     f74:	ebfffe73 	bl	948 <pipecmd>
     f78:	e50b0008 	str	r0, [fp, #-8]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e1a00003 	mov	r0, r3
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	00002704 	.word	0x00002704

00000f90 <parseredirs>:
     f90:	e92d4800 	push	{fp, lr}
     f94:	e28db004 	add	fp, sp, #4
     f98:	e24dd028 	sub	sp, sp, #40	@ 0x28
     f9c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fa0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     fa4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     fa8:	ea000036 	b	1088 <parseredirs+0xf8>
     fac:	e3a03000 	mov	r3, #0
     fb0:	e3a02000 	mov	r2, #0
     fb4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     fb8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     fbc:	ebfffea8 	bl	a64 <gettoken>
     fc0:	e50b0008 	str	r0, [fp, #-8]
     fc4:	e24b3010 	sub	r3, fp, #16
     fc8:	e24b200c 	sub	r2, fp, #12
     fcc:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     fd0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     fd4:	ebfffea2 	bl	a64 <gettoken>
     fd8:	e1a03000 	mov	r3, r0
     fdc:	e3530061 	cmp	r3, #97	@ 0x61
     fe0:	0a000001 	beq	fec <parseredirs+0x5c>
     fe4:	e59f00c8 	ldr	r0, [pc, #200]	@ 10b4 <parseredirs+0x124>
     fe8:	ebfffe08 	bl	810 <panic>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e353003e 	cmp	r3, #62	@ 0x3e
     ff4:	0a000011 	beq	1040 <parseredirs+0xb0>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e353003e 	cmp	r3, #62	@ 0x3e
    1000:	ca000020 	bgt	1088 <parseredirs+0xf8>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e353002b 	cmp	r3, #43	@ 0x2b
    100c:	0a000014 	beq	1064 <parseredirs+0xd4>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e353003c 	cmp	r3, #60	@ 0x3c
    1018:	1a00001a 	bne	1088 <parseredirs+0xf8>
    101c:	e51b100c 	ldr	r1, [fp, #-12]
    1020:	e51b2010 	ldr	r2, [fp, #-16]
    1024:	e3a03000 	mov	r3, #0
    1028:	e58d3000 	str	r3, [sp]
    102c:	e3a03000 	mov	r3, #0
    1030:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1034:	ebfffe1f 	bl	8b8 <redircmd>
    1038:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    103c:	ea000011 	b	1088 <parseredirs+0xf8>
    1040:	e51b100c 	ldr	r1, [fp, #-12]
    1044:	e51b2010 	ldr	r2, [fp, #-16]
    1048:	e3a03001 	mov	r3, #1
    104c:	e58d3000 	str	r3, [sp]
    1050:	e59f3060 	ldr	r3, [pc, #96]	@ 10b8 <parseredirs+0x128>
    1054:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1058:	ebfffe16 	bl	8b8 <redircmd>
    105c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1060:	ea000008 	b	1088 <parseredirs+0xf8>
    1064:	e51b100c 	ldr	r1, [fp, #-12]
    1068:	e51b2010 	ldr	r2, [fp, #-16]
    106c:	e3a03001 	mov	r3, #1
    1070:	e58d3000 	str	r3, [sp]
    1074:	e59f303c 	ldr	r3, [pc, #60]	@ 10b8 <parseredirs+0x128>
    1078:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    107c:	ebfffe0d 	bl	8b8 <redircmd>
    1080:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1084:	e1a00000 	nop			@ (mov r0, r0)
    1088:	e59f202c 	ldr	r2, [pc, #44]	@ 10bc <parseredirs+0x12c>
    108c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1090:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    1094:	ebffff10 	bl	cdc <peek>
    1098:	e1a03000 	mov	r3, r0
    109c:	e3530000 	cmp	r3, #0
    10a0:	1affffc1 	bne	fac <parseredirs+0x1c>
    10a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e1a00003 	mov	r0, r3
    10ac:	e24bd004 	sub	sp, fp, #4
    10b0:	e8bd8800 	pop	{fp, pc}
    10b4:	00002708 	.word	0x00002708
    10b8:	00000201 	.word	0x00000201
    10bc:	00002728 	.word	0x00002728

000010c0 <parseblock>:
    10c0:	e92d4800 	push	{fp, lr}
    10c4:	e28db004 	add	fp, sp, #4
    10c8:	e24dd010 	sub	sp, sp, #16
    10cc:	e50b0010 	str	r0, [fp, #-16]
    10d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    10d4:	e59f209c 	ldr	r2, [pc, #156]	@ 1178 <parseblock+0xb8>
    10d8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    10dc:	e51b0010 	ldr	r0, [fp, #-16]
    10e0:	ebfffefd 	bl	cdc <peek>
    10e4:	e1a03000 	mov	r3, r0
    10e8:	e3530000 	cmp	r3, #0
    10ec:	1a000001 	bne	10f8 <parseblock+0x38>
    10f0:	e59f0084 	ldr	r0, [pc, #132]	@ 117c <parseblock+0xbc>
    10f4:	ebfffdc5 	bl	810 <panic>
    10f8:	e3a03000 	mov	r3, #0
    10fc:	e3a02000 	mov	r2, #0
    1100:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1104:	e51b0010 	ldr	r0, [fp, #-16]
    1108:	ebfffe55 	bl	a64 <gettoken>
    110c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1110:	e51b0010 	ldr	r0, [fp, #-16]
    1114:	ebffff48 	bl	e3c <parseline>
    1118:	e50b0008 	str	r0, [fp, #-8]
    111c:	e59f205c 	ldr	r2, [pc, #92]	@ 1180 <parseblock+0xc0>
    1120:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1124:	e51b0010 	ldr	r0, [fp, #-16]
    1128:	ebfffeeb 	bl	cdc <peek>
    112c:	e1a03000 	mov	r3, r0
    1130:	e3530000 	cmp	r3, #0
    1134:	1a000001 	bne	1140 <parseblock+0x80>
    1138:	e59f0044 	ldr	r0, [pc, #68]	@ 1184 <parseblock+0xc4>
    113c:	ebfffdb3 	bl	810 <panic>
    1140:	e3a03000 	mov	r3, #0
    1144:	e3a02000 	mov	r2, #0
    1148:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    114c:	e51b0010 	ldr	r0, [fp, #-16]
    1150:	ebfffe43 	bl	a64 <gettoken>
    1154:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1158:	e51b1010 	ldr	r1, [fp, #-16]
    115c:	e51b0008 	ldr	r0, [fp, #-8]
    1160:	ebffff8a 	bl	f90 <parseredirs>
    1164:	e50b0008 	str	r0, [fp, #-8]
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e1a00003 	mov	r0, r3
    1170:	e24bd004 	sub	sp, fp, #4
    1174:	e8bd8800 	pop	{fp, pc}
    1178:	0000272c 	.word	0x0000272c
    117c:	00002730 	.word	0x00002730
    1180:	0000273c 	.word	0x0000273c
    1184:	00002740 	.word	0x00002740

00001188 <parseexec>:
    1188:	e92d4800 	push	{fp, lr}
    118c:	e28db004 	add	fp, sp, #4
    1190:	e24dd020 	sub	sp, sp, #32
    1194:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1198:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
    119c:	e59f2160 	ldr	r2, [pc, #352]	@ 1304 <parseexec+0x17c>
    11a0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    11a4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    11a8:	ebfffecb 	bl	cdc <peek>
    11ac:	e1a03000 	mov	r3, r0
    11b0:	e3530000 	cmp	r3, #0
    11b4:	0a000004 	beq	11cc <parseexec+0x44>
    11b8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    11bc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    11c0:	ebffffbe 	bl	10c0 <parseblock>
    11c4:	e1a03000 	mov	r3, r0
    11c8:	ea00004a 	b	12f8 <parseexec+0x170>
    11cc:	ebfffda8 	bl	874 <execcmd>
    11d0:	e50b000c 	str	r0, [fp, #-12]
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e50b3010 	str	r3, [fp, #-16]
    11dc:	e3a03000 	mov	r3, #0
    11e0:	e50b3008 	str	r3, [fp, #-8]
    11e4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
    11e8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    11ec:	e51b000c 	ldr	r0, [fp, #-12]
    11f0:	ebffff66 	bl	f90 <parseredirs>
    11f4:	e50b000c 	str	r0, [fp, #-12]
    11f8:	ea000027 	b	129c <parseexec+0x114>
    11fc:	e24b301c 	sub	r3, fp, #28
    1200:	e24b2018 	sub	r2, fp, #24
    1204:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    1208:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    120c:	ebfffe14 	bl	a64 <gettoken>
    1210:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    1214:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1218:	e3530000 	cmp	r3, #0
    121c:	0a000026 	beq	12bc <parseexec+0x134>
    1220:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1224:	e3530061 	cmp	r3, #97	@ 0x61
    1228:	0a000001 	beq	1234 <parseexec+0xac>
    122c:	e59f00d4 	ldr	r0, [pc, #212]	@ 1308 <parseexec+0x180>
    1230:	ebfffd76 	bl	810 <panic>
    1234:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1238:	e51b1010 	ldr	r1, [fp, #-16]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e1a03103 	lsl	r3, r3, #2
    1244:	e0813003 	add	r3, r1, r3
    1248:	e5832004 	str	r2, [r3, #4]
    124c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1250:	e51b1010 	ldr	r1, [fp, #-16]
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e283300a 	add	r3, r3, #10
    125c:	e1a03103 	lsl	r3, r3, #2
    1260:	e0813003 	add	r3, r1, r3
    1264:	e5832004 	str	r2, [r3, #4]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e2833001 	add	r3, r3, #1
    1270:	e50b3008 	str	r3, [fp, #-8]
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e3530009 	cmp	r3, #9
    127c:	da000001 	ble	1288 <parseexec+0x100>
    1280:	e59f0084 	ldr	r0, [pc, #132]	@ 130c <parseexec+0x184>
    1284:	ebfffd61 	bl	810 <panic>
    1288:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
    128c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1290:	e51b000c 	ldr	r0, [fp, #-12]
    1294:	ebffff3d 	bl	f90 <parseredirs>
    1298:	e50b000c 	str	r0, [fp, #-12]
    129c:	e59f206c 	ldr	r2, [pc, #108]	@ 1310 <parseexec+0x188>
    12a0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    12a4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    12a8:	ebfffe8b 	bl	cdc <peek>
    12ac:	e1a03000 	mov	r3, r0
    12b0:	e3530000 	cmp	r3, #0
    12b4:	0affffd0 	beq	11fc <parseexec+0x74>
    12b8:	ea000000 	b	12c0 <parseexec+0x138>
    12bc:	e1a00000 	nop			@ (mov r0, r0)
    12c0:	e51b2010 	ldr	r2, [fp, #-16]
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e1a03103 	lsl	r3, r3, #2
    12cc:	e0823003 	add	r3, r2, r3
    12d0:	e3a02000 	mov	r2, #0
    12d4:	e5832004 	str	r2, [r3, #4]
    12d8:	e51b2010 	ldr	r2, [fp, #-16]
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e283300a 	add	r3, r3, #10
    12e4:	e1a03103 	lsl	r3, r3, #2
    12e8:	e0823003 	add	r3, r2, r3
    12ec:	e3a02000 	mov	r2, #0
    12f0:	e5832004 	str	r2, [r3, #4]
    12f4:	e51b300c 	ldr	r3, [fp, #-12]
    12f8:	e1a00003 	mov	r0, r3
    12fc:	e24bd004 	sub	sp, fp, #4
    1300:	e8bd8800 	pop	{fp, pc}
    1304:	0000272c 	.word	0x0000272c
    1308:	000026f4 	.word	0x000026f4
    130c:	00002754 	.word	0x00002754
    1310:	00002764 	.word	0x00002764

00001314 <nulterminate>:
    1314:	e92d4800 	push	{fp, lr}
    1318:	e28db004 	add	fp, sp, #4
    131c:	e24dd020 	sub	sp, sp, #32
    1320:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1328:	e3530000 	cmp	r3, #0
    132c:	1a000001 	bne	1338 <nulterminate+0x24>
    1330:	e3a03000 	mov	r3, #0
    1334:	ea00004b 	b	1468 <nulterminate+0x154>
    1338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e2433001 	sub	r3, r3, #1
    1344:	e3530004 	cmp	r3, #4
    1348:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    134c:	ea000044 	b	1464 <nulterminate+0x150>
    1350:	00001364 	.word	0x00001364
    1354:	000013c4 	.word	0x000013c4
    1358:	000013f0 	.word	0x000013f0
    135c:	0000141c 	.word	0x0000141c
    1360:	00001448 	.word	0x00001448
    1364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1368:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    136c:	e3a03000 	mov	r3, #0
    1370:	e50b3008 	str	r3, [fp, #-8]
    1374:	ea00000a 	b	13a4 <nulterminate+0x90>
    1378:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e283300a 	add	r3, r3, #10
    1384:	e1a03103 	lsl	r3, r3, #2
    1388:	e0823003 	add	r3, r2, r3
    138c:	e5933004 	ldr	r3, [r3, #4]
    1390:	e3a02000 	mov	r2, #0
    1394:	e5c32000 	strb	r2, [r3]
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e2833001 	add	r3, r3, #1
    13a0:	e50b3008 	str	r3, [fp, #-8]
    13a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e1a03103 	lsl	r3, r3, #2
    13b0:	e0823003 	add	r3, r2, r3
    13b4:	e5933004 	ldr	r3, [r3, #4]
    13b8:	e3530000 	cmp	r3, #0
    13bc:	1affffed 	bne	1378 <nulterminate+0x64>
    13c0:	ea000027 	b	1464 <nulterminate+0x150>
    13c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    13c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e5933004 	ldr	r3, [r3, #4]
    13d4:	e1a00003 	mov	r0, r3
    13d8:	ebffffcd 	bl	1314 <nulterminate>
    13dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e0:	e593300c 	ldr	r3, [r3, #12]
    13e4:	e3a02000 	mov	r2, #0
    13e8:	e5c32000 	strb	r2, [r3]
    13ec:	ea00001c 	b	1464 <nulterminate+0x150>
    13f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    13f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    13fc:	e5933004 	ldr	r3, [r3, #4]
    1400:	e1a00003 	mov	r0, r3
    1404:	ebffffc2 	bl	1314 <nulterminate>
    1408:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    140c:	e5933008 	ldr	r3, [r3, #8]
    1410:	e1a00003 	mov	r0, r3
    1414:	ebffffbe 	bl	1314 <nulterminate>
    1418:	ea000011 	b	1464 <nulterminate+0x150>
    141c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1420:	e50b3010 	str	r3, [fp, #-16]
    1424:	e51b3010 	ldr	r3, [fp, #-16]
    1428:	e5933004 	ldr	r3, [r3, #4]
    142c:	e1a00003 	mov	r0, r3
    1430:	ebffffb7 	bl	1314 <nulterminate>
    1434:	e51b3010 	ldr	r3, [fp, #-16]
    1438:	e5933008 	ldr	r3, [r3, #8]
    143c:	e1a00003 	mov	r0, r3
    1440:	ebffffb3 	bl	1314 <nulterminate>
    1444:	ea000006 	b	1464 <nulterminate+0x150>
    1448:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    144c:	e50b300c 	str	r3, [fp, #-12]
    1450:	e51b300c 	ldr	r3, [fp, #-12]
    1454:	e5933004 	ldr	r3, [r3, #4]
    1458:	e1a00003 	mov	r0, r3
    145c:	ebffffac 	bl	1314 <nulterminate>
    1460:	e1a00000 	nop			@ (mov r0, r0)
    1464:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1468:	e1a00003 	mov	r0, r3
    146c:	e24bd004 	sub	sp, fp, #4
    1470:	e8bd8800 	pop	{fp, pc}

00001474 <strcpy>:
    1474:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1478:	e28db000 	add	fp, sp, #0
    147c:	e24dd014 	sub	sp, sp, #20
    1480:	e50b0010 	str	r0, [fp, #-16]
    1484:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1488:	e51b3010 	ldr	r3, [fp, #-16]
    148c:	e50b3008 	str	r3, [fp, #-8]
    1490:	e1a00000 	nop			@ (mov r0, r0)
    1494:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1498:	e2823001 	add	r3, r2, #1
    149c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14a0:	e51b3010 	ldr	r3, [fp, #-16]
    14a4:	e2831001 	add	r1, r3, #1
    14a8:	e50b1010 	str	r1, [fp, #-16]
    14ac:	e5d22000 	ldrb	r2, [r2]
    14b0:	e5c32000 	strb	r2, [r3]
    14b4:	e5d33000 	ldrb	r3, [r3]
    14b8:	e3530000 	cmp	r3, #0
    14bc:	1afffff4 	bne	1494 <strcpy+0x20>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e1a00003 	mov	r0, r3
    14c8:	e28bd000 	add	sp, fp, #0
    14cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14d0:	e12fff1e 	bx	lr

000014d4 <strcmp>:
    14d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14d8:	e28db000 	add	fp, sp, #0
    14dc:	e24dd00c 	sub	sp, sp, #12
    14e0:	e50b0008 	str	r0, [fp, #-8]
    14e4:	e50b100c 	str	r1, [fp, #-12]
    14e8:	ea000005 	b	1504 <strcmp+0x30>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e2833001 	add	r3, r3, #1
    14f4:	e50b3008 	str	r3, [fp, #-8]
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e2833001 	add	r3, r3, #1
    1500:	e50b300c 	str	r3, [fp, #-12]
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5d33000 	ldrb	r3, [r3]
    150c:	e3530000 	cmp	r3, #0
    1510:	0a000005 	beq	152c <strcmp+0x58>
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5d32000 	ldrb	r2, [r3]
    151c:	e51b300c 	ldr	r3, [fp, #-12]
    1520:	e5d33000 	ldrb	r3, [r3]
    1524:	e1520003 	cmp	r2, r3
    1528:	0affffef 	beq	14ec <strcmp+0x18>
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5d33000 	ldrb	r3, [r3]
    1534:	e1a02003 	mov	r2, r3
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5d33000 	ldrb	r3, [r3]
    1540:	e0423003 	sub	r3, r2, r3
    1544:	e1a00003 	mov	r0, r3
    1548:	e28bd000 	add	sp, fp, #0
    154c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1550:	e12fff1e 	bx	lr

00001554 <strlen>:
    1554:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1558:	e28db000 	add	fp, sp, #0
    155c:	e24dd014 	sub	sp, sp, #20
    1560:	e50b0010 	str	r0, [fp, #-16]
    1564:	e3a03000 	mov	r3, #0
    1568:	e50b3008 	str	r3, [fp, #-8]
    156c:	ea000002 	b	157c <strlen+0x28>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e2833001 	add	r3, r3, #1
    1578:	e50b3008 	str	r3, [fp, #-8]
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e51b2010 	ldr	r2, [fp, #-16]
    1584:	e0823003 	add	r3, r2, r3
    1588:	e5d33000 	ldrb	r3, [r3]
    158c:	e3530000 	cmp	r3, #0
    1590:	1afffff6 	bne	1570 <strlen+0x1c>
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e1a00003 	mov	r0, r3
    159c:	e28bd000 	add	sp, fp, #0
    15a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15a4:	e12fff1e 	bx	lr

000015a8 <memset>:
    15a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    15ac:	e28db000 	add	fp, sp, #0
    15b0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    15b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    15bc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    15c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15c4:	e50b3008 	str	r3, [fp, #-8]
    15c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    15cc:	e54b300d 	strb	r3, [fp, #-13]
    15d0:	e55b200d 	ldrb	r2, [fp, #-13]
    15d4:	e1a03002 	mov	r3, r2
    15d8:	e1a03403 	lsl	r3, r3, #8
    15dc:	e0833002 	add	r3, r3, r2
    15e0:	e1a03803 	lsl	r3, r3, #16
    15e4:	e1a02003 	mov	r2, r3
    15e8:	e55b300d 	ldrb	r3, [fp, #-13]
    15ec:	e1a03403 	lsl	r3, r3, #8
    15f0:	e1822003 	orr	r2, r2, r3
    15f4:	e55b300d 	ldrb	r3, [fp, #-13]
    15f8:	e1823003 	orr	r3, r2, r3
    15fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1600:	ea000008 	b	1628 <memset+0x80>
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e55b200d 	ldrb	r2, [fp, #-13]
    160c:	e5c32000 	strb	r2, [r3]
    1610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1614:	e2433001 	sub	r3, r3, #1
    1618:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    161c:	e51b3008 	ldr	r3, [fp, #-8]
    1620:	e2833001 	add	r3, r3, #1
    1624:	e50b3008 	str	r3, [fp, #-8]
    1628:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    162c:	e3530000 	cmp	r3, #0
    1630:	0a000003 	beq	1644 <memset+0x9c>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e2033003 	and	r3, r3, #3
    163c:	e3530000 	cmp	r3, #0
    1640:	1affffef 	bne	1604 <memset+0x5c>
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e50b300c 	str	r3, [fp, #-12]
    164c:	ea000008 	b	1674 <memset+0xcc>
    1650:	e51b300c 	ldr	r3, [fp, #-12]
    1654:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1658:	e5832000 	str	r2, [r3]
    165c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1660:	e2433004 	sub	r3, r3, #4
    1664:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1668:	e51b300c 	ldr	r3, [fp, #-12]
    166c:	e2833004 	add	r3, r3, #4
    1670:	e50b300c 	str	r3, [fp, #-12]
    1674:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1678:	e3530003 	cmp	r3, #3
    167c:	8afffff3 	bhi	1650 <memset+0xa8>
    1680:	e51b300c 	ldr	r3, [fp, #-12]
    1684:	e50b3008 	str	r3, [fp, #-8]
    1688:	ea000008 	b	16b0 <memset+0x108>
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e55b200d 	ldrb	r2, [fp, #-13]
    1694:	e5c32000 	strb	r2, [r3]
    1698:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    169c:	e2433001 	sub	r3, r3, #1
    16a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e2833001 	add	r3, r3, #1
    16ac:	e50b3008 	str	r3, [fp, #-8]
    16b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    16b4:	e3530000 	cmp	r3, #0
    16b8:	1afffff3 	bne	168c <memset+0xe4>
    16bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16c0:	e1a00003 	mov	r0, r3
    16c4:	e28bd000 	add	sp, fp, #0
    16c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16cc:	e12fff1e 	bx	lr

000016d0 <strchr>:
    16d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    16d4:	e28db000 	add	fp, sp, #0
    16d8:	e24dd00c 	sub	sp, sp, #12
    16dc:	e50b0008 	str	r0, [fp, #-8]
    16e0:	e1a03001 	mov	r3, r1
    16e4:	e54b3009 	strb	r3, [fp, #-9]
    16e8:	ea000009 	b	1714 <strchr+0x44>
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e5d33000 	ldrb	r3, [r3]
    16f4:	e55b2009 	ldrb	r2, [fp, #-9]
    16f8:	e1520003 	cmp	r2, r3
    16fc:	1a000001 	bne	1708 <strchr+0x38>
    1700:	e51b3008 	ldr	r3, [fp, #-8]
    1704:	ea000007 	b	1728 <strchr+0x58>
    1708:	e51b3008 	ldr	r3, [fp, #-8]
    170c:	e2833001 	add	r3, r3, #1
    1710:	e50b3008 	str	r3, [fp, #-8]
    1714:	e51b3008 	ldr	r3, [fp, #-8]
    1718:	e5d33000 	ldrb	r3, [r3]
    171c:	e3530000 	cmp	r3, #0
    1720:	1afffff1 	bne	16ec <strchr+0x1c>
    1724:	e3a03000 	mov	r3, #0
    1728:	e1a00003 	mov	r0, r3
    172c:	e28bd000 	add	sp, fp, #0
    1730:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1734:	e12fff1e 	bx	lr

00001738 <gets>:
    1738:	e92d4800 	push	{fp, lr}
    173c:	e28db004 	add	fp, sp, #4
    1740:	e24dd018 	sub	sp, sp, #24
    1744:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1748:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    174c:	e3a03000 	mov	r3, #0
    1750:	e50b3008 	str	r3, [fp, #-8]
    1754:	ea000016 	b	17b4 <gets+0x7c>
    1758:	e24b300d 	sub	r3, fp, #13
    175c:	e3a02001 	mov	r2, #1
    1760:	e1a01003 	mov	r1, r3
    1764:	e3a00000 	mov	r0, #0
    1768:	eb0000f7 	bl	1b4c <read>
    176c:	e50b000c 	str	r0, [fp, #-12]
    1770:	e51b300c 	ldr	r3, [fp, #-12]
    1774:	e3530000 	cmp	r3, #0
    1778:	da000013 	ble	17cc <gets+0x94>
    177c:	e51b3008 	ldr	r3, [fp, #-8]
    1780:	e2832001 	add	r2, r3, #1
    1784:	e50b2008 	str	r2, [fp, #-8]
    1788:	e1a02003 	mov	r2, r3
    178c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1790:	e0833002 	add	r3, r3, r2
    1794:	e55b200d 	ldrb	r2, [fp, #-13]
    1798:	e5c32000 	strb	r2, [r3]
    179c:	e55b300d 	ldrb	r3, [fp, #-13]
    17a0:	e353000a 	cmp	r3, #10
    17a4:	0a000009 	beq	17d0 <gets+0x98>
    17a8:	e55b300d 	ldrb	r3, [fp, #-13]
    17ac:	e353000d 	cmp	r3, #13
    17b0:	0a000006 	beq	17d0 <gets+0x98>
    17b4:	e51b3008 	ldr	r3, [fp, #-8]
    17b8:	e2833001 	add	r3, r3, #1
    17bc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    17c0:	e1520003 	cmp	r2, r3
    17c4:	caffffe3 	bgt	1758 <gets+0x20>
    17c8:	ea000000 	b	17d0 <gets+0x98>
    17cc:	e1a00000 	nop			@ (mov r0, r0)
    17d0:	e51b3008 	ldr	r3, [fp, #-8]
    17d4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    17d8:	e0823003 	add	r3, r2, r3
    17dc:	e3a02000 	mov	r2, #0
    17e0:	e5c32000 	strb	r2, [r3]
    17e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    17e8:	e1a00003 	mov	r0, r3
    17ec:	e24bd004 	sub	sp, fp, #4
    17f0:	e8bd8800 	pop	{fp, pc}

000017f4 <stat>:
    17f4:	e92d4800 	push	{fp, lr}
    17f8:	e28db004 	add	fp, sp, #4
    17fc:	e24dd010 	sub	sp, sp, #16
    1800:	e50b0010 	str	r0, [fp, #-16]
    1804:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1808:	e3a01000 	mov	r1, #0
    180c:	e51b0010 	ldr	r0, [fp, #-16]
    1810:	eb0000fa 	bl	1c00 <open>
    1814:	e50b0008 	str	r0, [fp, #-8]
    1818:	e51b3008 	ldr	r3, [fp, #-8]
    181c:	e3530000 	cmp	r3, #0
    1820:	aa000001 	bge	182c <stat+0x38>
    1824:	e3e03000 	mvn	r3, #0
    1828:	ea000006 	b	1848 <stat+0x54>
    182c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1830:	e51b0008 	ldr	r0, [fp, #-8]
    1834:	eb00010c 	bl	1c6c <fstat>
    1838:	e50b000c 	str	r0, [fp, #-12]
    183c:	e51b0008 	ldr	r0, [fp, #-8]
    1840:	eb0000d3 	bl	1b94 <close>
    1844:	e51b300c 	ldr	r3, [fp, #-12]
    1848:	e1a00003 	mov	r0, r3
    184c:	e24bd004 	sub	sp, fp, #4
    1850:	e8bd8800 	pop	{fp, pc}

00001854 <atoi>:
    1854:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1858:	e28db000 	add	fp, sp, #0
    185c:	e24dd014 	sub	sp, sp, #20
    1860:	e50b0010 	str	r0, [fp, #-16]
    1864:	e3a03000 	mov	r3, #0
    1868:	e50b3008 	str	r3, [fp, #-8]
    186c:	ea00000c 	b	18a4 <atoi+0x50>
    1870:	e51b2008 	ldr	r2, [fp, #-8]
    1874:	e1a03002 	mov	r3, r2
    1878:	e1a03103 	lsl	r3, r3, #2
    187c:	e0833002 	add	r3, r3, r2
    1880:	e1a03083 	lsl	r3, r3, #1
    1884:	e1a01003 	mov	r1, r3
    1888:	e51b3010 	ldr	r3, [fp, #-16]
    188c:	e2832001 	add	r2, r3, #1
    1890:	e50b2010 	str	r2, [fp, #-16]
    1894:	e5d33000 	ldrb	r3, [r3]
    1898:	e0813003 	add	r3, r1, r3
    189c:	e2433030 	sub	r3, r3, #48	@ 0x30
    18a0:	e50b3008 	str	r3, [fp, #-8]
    18a4:	e51b3010 	ldr	r3, [fp, #-16]
    18a8:	e5d33000 	ldrb	r3, [r3]
    18ac:	e353002f 	cmp	r3, #47	@ 0x2f
    18b0:	9a000003 	bls	18c4 <atoi+0x70>
    18b4:	e51b3010 	ldr	r3, [fp, #-16]
    18b8:	e5d33000 	ldrb	r3, [r3]
    18bc:	e3530039 	cmp	r3, #57	@ 0x39
    18c0:	9affffea 	bls	1870 <atoi+0x1c>
    18c4:	e51b3008 	ldr	r3, [fp, #-8]
    18c8:	e1a00003 	mov	r0, r3
    18cc:	e28bd000 	add	sp, fp, #0
    18d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    18d4:	e12fff1e 	bx	lr

000018d8 <memmove>:
    18d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    18dc:	e28db000 	add	fp, sp, #0
    18e0:	e24dd01c 	sub	sp, sp, #28
    18e4:	e50b0010 	str	r0, [fp, #-16]
    18e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    18ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    18f0:	e51b3010 	ldr	r3, [fp, #-16]
    18f4:	e50b3008 	str	r3, [fp, #-8]
    18f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    18fc:	e50b300c 	str	r3, [fp, #-12]
    1900:	ea000007 	b	1924 <memmove+0x4c>
    1904:	e51b200c 	ldr	r2, [fp, #-12]
    1908:	e2823001 	add	r3, r2, #1
    190c:	e50b300c 	str	r3, [fp, #-12]
    1910:	e51b3008 	ldr	r3, [fp, #-8]
    1914:	e2831001 	add	r1, r3, #1
    1918:	e50b1008 	str	r1, [fp, #-8]
    191c:	e5d22000 	ldrb	r2, [r2]
    1920:	e5c32000 	strb	r2, [r3]
    1924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1928:	e2432001 	sub	r2, r3, #1
    192c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1930:	e3530000 	cmp	r3, #0
    1934:	cafffff2 	bgt	1904 <memmove+0x2c>
    1938:	e51b3010 	ldr	r3, [fp, #-16]
    193c:	e1a00003 	mov	r0, r3
    1940:	e28bd000 	add	sp, fp, #0
    1944:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1948:	e12fff1e 	bx	lr

0000194c <strncmp>:
    194c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1950:	e28db000 	add	fp, sp, #0
    1954:	e24dd014 	sub	sp, sp, #20
    1958:	e50b0008 	str	r0, [fp, #-8]
    195c:	e50b100c 	str	r1, [fp, #-12]
    1960:	e50b2010 	str	r2, [fp, #-16]
    1964:	ea000008 	b	198c <strncmp+0x40>
    1968:	e51b3008 	ldr	r3, [fp, #-8]
    196c:	e2833001 	add	r3, r3, #1
    1970:	e50b3008 	str	r3, [fp, #-8]
    1974:	e51b300c 	ldr	r3, [fp, #-12]
    1978:	e2833001 	add	r3, r3, #1
    197c:	e50b300c 	str	r3, [fp, #-12]
    1980:	e51b3010 	ldr	r3, [fp, #-16]
    1984:	e2433001 	sub	r3, r3, #1
    1988:	e50b3010 	str	r3, [fp, #-16]
    198c:	e51b3010 	ldr	r3, [fp, #-16]
    1990:	e3530000 	cmp	r3, #0
    1994:	da00000d 	ble	19d0 <strncmp+0x84>
    1998:	e51b3008 	ldr	r3, [fp, #-8]
    199c:	e5d33000 	ldrb	r3, [r3]
    19a0:	e3530000 	cmp	r3, #0
    19a4:	0a000009 	beq	19d0 <strncmp+0x84>
    19a8:	e51b300c 	ldr	r3, [fp, #-12]
    19ac:	e5d33000 	ldrb	r3, [r3]
    19b0:	e3530000 	cmp	r3, #0
    19b4:	0a000005 	beq	19d0 <strncmp+0x84>
    19b8:	e51b3008 	ldr	r3, [fp, #-8]
    19bc:	e5d32000 	ldrb	r2, [r3]
    19c0:	e51b300c 	ldr	r3, [fp, #-12]
    19c4:	e5d33000 	ldrb	r3, [r3]
    19c8:	e1520003 	cmp	r2, r3
    19cc:	0affffe5 	beq	1968 <strncmp+0x1c>
    19d0:	e51b3010 	ldr	r3, [fp, #-16]
    19d4:	e3530000 	cmp	r3, #0
    19d8:	1a000001 	bne	19e4 <strncmp+0x98>
    19dc:	e3a03000 	mov	r3, #0
    19e0:	ea000005 	b	19fc <strncmp+0xb0>
    19e4:	e51b3008 	ldr	r3, [fp, #-8]
    19e8:	e5d33000 	ldrb	r3, [r3]
    19ec:	e1a02003 	mov	r2, r3
    19f0:	e51b300c 	ldr	r3, [fp, #-12]
    19f4:	e5d33000 	ldrb	r3, [r3]
    19f8:	e0423003 	sub	r3, r2, r3
    19fc:	e1a00003 	mov	r0, r3
    1a00:	e28bd000 	add	sp, fp, #0
    1a04:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1a08:	e12fff1e 	bx	lr

00001a0c <strncpy>:
    1a0c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1a10:	e28db000 	add	fp, sp, #0
    1a14:	e24dd01c 	sub	sp, sp, #28
    1a18:	e50b0010 	str	r0, [fp, #-16]
    1a1c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1a20:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1a24:	e51b3010 	ldr	r3, [fp, #-16]
    1a28:	e50b3008 	str	r3, [fp, #-8]
    1a2c:	ea00000a 	b	1a5c <strncpy+0x50>
    1a30:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1a34:	e2823001 	add	r3, r2, #1
    1a38:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1a3c:	e51b3008 	ldr	r3, [fp, #-8]
    1a40:	e2831001 	add	r1, r3, #1
    1a44:	e50b1008 	str	r1, [fp, #-8]
    1a48:	e5d22000 	ldrb	r2, [r2]
    1a4c:	e5c32000 	strb	r2, [r3]
    1a50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a54:	e2433001 	sub	r3, r3, #1
    1a58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a60:	e3530000 	cmp	r3, #0
    1a64:	da00000c 	ble	1a9c <strncpy+0x90>
    1a68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a6c:	e5d33000 	ldrb	r3, [r3]
    1a70:	e3530000 	cmp	r3, #0
    1a74:	1affffed 	bne	1a30 <strncpy+0x24>
    1a78:	ea000007 	b	1a9c <strncpy+0x90>
    1a7c:	e51b3008 	ldr	r3, [fp, #-8]
    1a80:	e2832001 	add	r2, r3, #1
    1a84:	e50b2008 	str	r2, [fp, #-8]
    1a88:	e3a02000 	mov	r2, #0
    1a8c:	e5c32000 	strb	r2, [r3]
    1a90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a94:	e2433001 	sub	r3, r3, #1
    1a98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1aa0:	e3530000 	cmp	r3, #0
    1aa4:	cafffff4 	bgt	1a7c <strncpy+0x70>
    1aa8:	e51b3010 	ldr	r3, [fp, #-16]
    1aac:	e1a00003 	mov	r0, r3
    1ab0:	e28bd000 	add	sp, fp, #0
    1ab4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1ab8:	e12fff1e 	bx	lr

00001abc <fork>:
    1abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1ac0:	e1a04003 	mov	r4, r3
    1ac4:	e1a03002 	mov	r3, r2
    1ac8:	e1a02001 	mov	r2, r1
    1acc:	e1a01000 	mov	r1, r0
    1ad0:	e3a00001 	mov	r0, #1
    1ad4:	ef000000 	svc	0x00000000
    1ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1adc:	e12fff1e 	bx	lr

00001ae0 <exit>:
    1ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1ae4:	e1a04003 	mov	r4, r3
    1ae8:	e1a03002 	mov	r3, r2
    1aec:	e1a02001 	mov	r2, r1
    1af0:	e1a01000 	mov	r1, r0
    1af4:	e3a00002 	mov	r0, #2
    1af8:	ef000000 	svc	0x00000000
    1afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b00:	e12fff1e 	bx	lr

00001b04 <wait>:
    1b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b08:	e1a04003 	mov	r4, r3
    1b0c:	e1a03002 	mov	r3, r2
    1b10:	e1a02001 	mov	r2, r1
    1b14:	e1a01000 	mov	r1, r0
    1b18:	e3a00003 	mov	r0, #3
    1b1c:	ef000000 	svc	0x00000000
    1b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b24:	e12fff1e 	bx	lr

00001b28 <pipe>:
    1b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b2c:	e1a04003 	mov	r4, r3
    1b30:	e1a03002 	mov	r3, r2
    1b34:	e1a02001 	mov	r2, r1
    1b38:	e1a01000 	mov	r1, r0
    1b3c:	e3a00004 	mov	r0, #4
    1b40:	ef000000 	svc	0x00000000
    1b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b48:	e12fff1e 	bx	lr

00001b4c <read>:
    1b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b50:	e1a04003 	mov	r4, r3
    1b54:	e1a03002 	mov	r3, r2
    1b58:	e1a02001 	mov	r2, r1
    1b5c:	e1a01000 	mov	r1, r0
    1b60:	e3a00005 	mov	r0, #5
    1b64:	ef000000 	svc	0x00000000
    1b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b6c:	e12fff1e 	bx	lr

00001b70 <write>:
    1b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b74:	e1a04003 	mov	r4, r3
    1b78:	e1a03002 	mov	r3, r2
    1b7c:	e1a02001 	mov	r2, r1
    1b80:	e1a01000 	mov	r1, r0
    1b84:	e3a00010 	mov	r0, #16
    1b88:	ef000000 	svc	0x00000000
    1b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b90:	e12fff1e 	bx	lr

00001b94 <close>:
    1b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b98:	e1a04003 	mov	r4, r3
    1b9c:	e1a03002 	mov	r3, r2
    1ba0:	e1a02001 	mov	r2, r1
    1ba4:	e1a01000 	mov	r1, r0
    1ba8:	e3a00015 	mov	r0, #21
    1bac:	ef000000 	svc	0x00000000
    1bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1bb4:	e12fff1e 	bx	lr

00001bb8 <kill>:
    1bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1bbc:	e1a04003 	mov	r4, r3
    1bc0:	e1a03002 	mov	r3, r2
    1bc4:	e1a02001 	mov	r2, r1
    1bc8:	e1a01000 	mov	r1, r0
    1bcc:	e3a00006 	mov	r0, #6
    1bd0:	ef000000 	svc	0x00000000
    1bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1bd8:	e12fff1e 	bx	lr

00001bdc <exec>:
    1bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1be0:	e1a04003 	mov	r4, r3
    1be4:	e1a03002 	mov	r3, r2
    1be8:	e1a02001 	mov	r2, r1
    1bec:	e1a01000 	mov	r1, r0
    1bf0:	e3a00007 	mov	r0, #7
    1bf4:	ef000000 	svc	0x00000000
    1bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1bfc:	e12fff1e 	bx	lr

00001c00 <open>:
    1c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c04:	e1a04003 	mov	r4, r3
    1c08:	e1a03002 	mov	r3, r2
    1c0c:	e1a02001 	mov	r2, r1
    1c10:	e1a01000 	mov	r1, r0
    1c14:	e3a0000f 	mov	r0, #15
    1c18:	ef000000 	svc	0x00000000
    1c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c20:	e12fff1e 	bx	lr

00001c24 <mknod>:
    1c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c28:	e1a04003 	mov	r4, r3
    1c2c:	e1a03002 	mov	r3, r2
    1c30:	e1a02001 	mov	r2, r1
    1c34:	e1a01000 	mov	r1, r0
    1c38:	e3a00011 	mov	r0, #17
    1c3c:	ef000000 	svc	0x00000000
    1c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c44:	e12fff1e 	bx	lr

00001c48 <unlink>:
    1c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c4c:	e1a04003 	mov	r4, r3
    1c50:	e1a03002 	mov	r3, r2
    1c54:	e1a02001 	mov	r2, r1
    1c58:	e1a01000 	mov	r1, r0
    1c5c:	e3a00012 	mov	r0, #18
    1c60:	ef000000 	svc	0x00000000
    1c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c68:	e12fff1e 	bx	lr

00001c6c <fstat>:
    1c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c70:	e1a04003 	mov	r4, r3
    1c74:	e1a03002 	mov	r3, r2
    1c78:	e1a02001 	mov	r2, r1
    1c7c:	e1a01000 	mov	r1, r0
    1c80:	e3a00008 	mov	r0, #8
    1c84:	ef000000 	svc	0x00000000
    1c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c8c:	e12fff1e 	bx	lr

00001c90 <link>:
    1c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c94:	e1a04003 	mov	r4, r3
    1c98:	e1a03002 	mov	r3, r2
    1c9c:	e1a02001 	mov	r2, r1
    1ca0:	e1a01000 	mov	r1, r0
    1ca4:	e3a00013 	mov	r0, #19
    1ca8:	ef000000 	svc	0x00000000
    1cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1cb0:	e12fff1e 	bx	lr

00001cb4 <mkdir>:
    1cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1cb8:	e1a04003 	mov	r4, r3
    1cbc:	e1a03002 	mov	r3, r2
    1cc0:	e1a02001 	mov	r2, r1
    1cc4:	e1a01000 	mov	r1, r0
    1cc8:	e3a00014 	mov	r0, #20
    1ccc:	ef000000 	svc	0x00000000
    1cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1cd4:	e12fff1e 	bx	lr

00001cd8 <chdir>:
    1cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1cdc:	e1a04003 	mov	r4, r3
    1ce0:	e1a03002 	mov	r3, r2
    1ce4:	e1a02001 	mov	r2, r1
    1ce8:	e1a01000 	mov	r1, r0
    1cec:	e3a00009 	mov	r0, #9
    1cf0:	ef000000 	svc	0x00000000
    1cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1cf8:	e12fff1e 	bx	lr

00001cfc <dup>:
    1cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1d00:	e1a04003 	mov	r4, r3
    1d04:	e1a03002 	mov	r3, r2
    1d08:	e1a02001 	mov	r2, r1
    1d0c:	e1a01000 	mov	r1, r0
    1d10:	e3a0000a 	mov	r0, #10
    1d14:	ef000000 	svc	0x00000000
    1d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1d1c:	e12fff1e 	bx	lr

00001d20 <getpid>:
    1d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1d24:	e1a04003 	mov	r4, r3
    1d28:	e1a03002 	mov	r3, r2
    1d2c:	e1a02001 	mov	r2, r1
    1d30:	e1a01000 	mov	r1, r0
    1d34:	e3a0000b 	mov	r0, #11
    1d38:	ef000000 	svc	0x00000000
    1d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1d40:	e12fff1e 	bx	lr

00001d44 <sbrk>:
    1d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1d48:	e1a04003 	mov	r4, r3
    1d4c:	e1a03002 	mov	r3, r2
    1d50:	e1a02001 	mov	r2, r1
    1d54:	e1a01000 	mov	r1, r0
    1d58:	e3a0000c 	mov	r0, #12
    1d5c:	ef000000 	svc	0x00000000
    1d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1d64:	e12fff1e 	bx	lr

00001d68 <sleep>:
    1d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1d6c:	e1a04003 	mov	r4, r3
    1d70:	e1a03002 	mov	r3, r2
    1d74:	e1a02001 	mov	r2, r1
    1d78:	e1a01000 	mov	r1, r0
    1d7c:	e3a0000d 	mov	r0, #13
    1d80:	ef000000 	svc	0x00000000
    1d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1d88:	e12fff1e 	bx	lr

00001d8c <uptime>:
    1d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1d90:	e1a04003 	mov	r4, r3
    1d94:	e1a03002 	mov	r3, r2
    1d98:	e1a02001 	mov	r2, r1
    1d9c:	e1a01000 	mov	r1, r0
    1da0:	e3a0000e 	mov	r0, #14
    1da4:	ef000000 	svc	0x00000000
    1da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1dac:	e12fff1e 	bx	lr

00001db0 <proclist>:
    1db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1db4:	e1a04003 	mov	r4, r3
    1db8:	e1a03002 	mov	r3, r2
    1dbc:	e1a02001 	mov	r2, r1
    1dc0:	e1a01000 	mov	r1, r0
    1dc4:	e3a00016 	mov	r0, #22
    1dc8:	ef000000 	svc	0x00000000
    1dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1dd0:	e12fff1e 	bx	lr

00001dd4 <putc>:
    1dd4:	e92d4800 	push	{fp, lr}
    1dd8:	e28db004 	add	fp, sp, #4
    1ddc:	e24dd008 	sub	sp, sp, #8
    1de0:	e50b0008 	str	r0, [fp, #-8]
    1de4:	e1a03001 	mov	r3, r1
    1de8:	e54b3009 	strb	r3, [fp, #-9]
    1dec:	e24b3009 	sub	r3, fp, #9
    1df0:	e3a02001 	mov	r2, #1
    1df4:	e1a01003 	mov	r1, r3
    1df8:	e51b0008 	ldr	r0, [fp, #-8]
    1dfc:	ebffff5b 	bl	1b70 <write>
    1e00:	e1a00000 	nop			@ (mov r0, r0)
    1e04:	e24bd004 	sub	sp, fp, #4
    1e08:	e8bd8800 	pop	{fp, pc}

00001e0c <printint>:
    1e0c:	e92d4800 	push	{fp, lr}
    1e10:	e28db004 	add	fp, sp, #4
    1e14:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1e18:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1e1c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1e20:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1e24:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1e28:	e3a03000 	mov	r3, #0
    1e2c:	e50b300c 	str	r3, [fp, #-12]
    1e30:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1e34:	e3530000 	cmp	r3, #0
    1e38:	0a000008 	beq	1e60 <printint+0x54>
    1e3c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1e40:	e3530000 	cmp	r3, #0
    1e44:	aa000005 	bge	1e60 <printint+0x54>
    1e48:	e3a03001 	mov	r3, #1
    1e4c:	e50b300c 	str	r3, [fp, #-12]
    1e50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1e54:	e2633000 	rsb	r3, r3, #0
    1e58:	e50b3010 	str	r3, [fp, #-16]
    1e5c:	ea000001 	b	1e68 <printint+0x5c>
    1e60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1e64:	e50b3010 	str	r3, [fp, #-16]
    1e68:	e3a03000 	mov	r3, #0
    1e6c:	e50b3008 	str	r3, [fp, #-8]
    1e70:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1e74:	e51b3010 	ldr	r3, [fp, #-16]
    1e78:	e1a01002 	mov	r1, r2
    1e7c:	e1a00003 	mov	r0, r3
    1e80:	eb0001d5 	bl	25dc <__aeabi_uidivmod>
    1e84:	e1a03001 	mov	r3, r1
    1e88:	e1a01003 	mov	r1, r3
    1e8c:	e51b3008 	ldr	r3, [fp, #-8]
    1e90:	e2832001 	add	r2, r3, #1
    1e94:	e50b2008 	str	r2, [fp, #-8]
    1e98:	e59f20a0 	ldr	r2, [pc, #160]	@ 1f40 <printint+0x134>
    1e9c:	e7d22001 	ldrb	r2, [r2, r1]
    1ea0:	e2433004 	sub	r3, r3, #4
    1ea4:	e083300b 	add	r3, r3, fp
    1ea8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1eac:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1eb0:	e1a01003 	mov	r1, r3
    1eb4:	e51b0010 	ldr	r0, [fp, #-16]
    1eb8:	eb00018a 	bl	24e8 <__udivsi3>
    1ebc:	e1a03000 	mov	r3, r0
    1ec0:	e50b3010 	str	r3, [fp, #-16]
    1ec4:	e51b3010 	ldr	r3, [fp, #-16]
    1ec8:	e3530000 	cmp	r3, #0
    1ecc:	1affffe7 	bne	1e70 <printint+0x64>
    1ed0:	e51b300c 	ldr	r3, [fp, #-12]
    1ed4:	e3530000 	cmp	r3, #0
    1ed8:	0a00000e 	beq	1f18 <printint+0x10c>
    1edc:	e51b3008 	ldr	r3, [fp, #-8]
    1ee0:	e2832001 	add	r2, r3, #1
    1ee4:	e50b2008 	str	r2, [fp, #-8]
    1ee8:	e2433004 	sub	r3, r3, #4
    1eec:	e083300b 	add	r3, r3, fp
    1ef0:	e3a0202d 	mov	r2, #45	@ 0x2d
    1ef4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1ef8:	ea000006 	b	1f18 <printint+0x10c>
    1efc:	e24b2020 	sub	r2, fp, #32
    1f00:	e51b3008 	ldr	r3, [fp, #-8]
    1f04:	e0823003 	add	r3, r2, r3
    1f08:	e5d33000 	ldrb	r3, [r3]
    1f0c:	e1a01003 	mov	r1, r3
    1f10:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1f14:	ebffffae 	bl	1dd4 <putc>
    1f18:	e51b3008 	ldr	r3, [fp, #-8]
    1f1c:	e2433001 	sub	r3, r3, #1
    1f20:	e50b3008 	str	r3, [fp, #-8]
    1f24:	e51b3008 	ldr	r3, [fp, #-8]
    1f28:	e3530000 	cmp	r3, #0
    1f2c:	aafffff2 	bge	1efc <printint+0xf0>
    1f30:	e1a00000 	nop			@ (mov r0, r0)
    1f34:	e1a00000 	nop			@ (mov r0, r0)
    1f38:	e24bd004 	sub	sp, fp, #4
    1f3c:	e8bd8800 	pop	{fp, pc}
    1f40:	000027c8 	.word	0x000027c8

00001f44 <printf>:
    1f44:	e92d000e 	push	{r1, r2, r3}
    1f48:	e92d4800 	push	{fp, lr}
    1f4c:	e28db004 	add	fp, sp, #4
    1f50:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1f54:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1f58:	e3a03000 	mov	r3, #0
    1f5c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1f60:	e28b3008 	add	r3, fp, #8
    1f64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1f68:	e3a03000 	mov	r3, #0
    1f6c:	e50b3010 	str	r3, [fp, #-16]
    1f70:	ea000074 	b	2148 <printf+0x204>
    1f74:	e59b2004 	ldr	r2, [fp, #4]
    1f78:	e51b3010 	ldr	r3, [fp, #-16]
    1f7c:	e0823003 	add	r3, r2, r3
    1f80:	e5d33000 	ldrb	r3, [r3]
    1f84:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1f88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1f8c:	e3530000 	cmp	r3, #0
    1f90:	1a00000b 	bne	1fc4 <printf+0x80>
    1f94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1f98:	e3530025 	cmp	r3, #37	@ 0x25
    1f9c:	1a000002 	bne	1fac <printf+0x68>
    1fa0:	e3a03025 	mov	r3, #37	@ 0x25
    1fa4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1fa8:	ea000063 	b	213c <printf+0x1f8>
    1fac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1fb0:	e6ef3073 	uxtb	r3, r3
    1fb4:	e1a01003 	mov	r1, r3
    1fb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1fbc:	ebffff84 	bl	1dd4 <putc>
    1fc0:	ea00005d 	b	213c <printf+0x1f8>
    1fc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1fc8:	e3530025 	cmp	r3, #37	@ 0x25
    1fcc:	1a00005a 	bne	213c <printf+0x1f8>
    1fd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1fd4:	e3530064 	cmp	r3, #100	@ 0x64
    1fd8:	1a00000a 	bne	2008 <printf+0xc4>
    1fdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1fe0:	e5933000 	ldr	r3, [r3]
    1fe4:	e1a01003 	mov	r1, r3
    1fe8:	e3a03001 	mov	r3, #1
    1fec:	e3a0200a 	mov	r2, #10
    1ff0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1ff4:	ebffff84 	bl	1e0c <printint>
    1ff8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1ffc:	e2833004 	add	r3, r3, #4
    2000:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2004:	ea00004a 	b	2134 <printf+0x1f0>
    2008:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    200c:	e3530078 	cmp	r3, #120	@ 0x78
    2010:	0a000002 	beq	2020 <printf+0xdc>
    2014:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2018:	e3530070 	cmp	r3, #112	@ 0x70
    201c:	1a00000a 	bne	204c <printf+0x108>
    2020:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2024:	e5933000 	ldr	r3, [r3]
    2028:	e1a01003 	mov	r1, r3
    202c:	e3a03000 	mov	r3, #0
    2030:	e3a02010 	mov	r2, #16
    2034:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2038:	ebffff73 	bl	1e0c <printint>
    203c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2040:	e2833004 	add	r3, r3, #4
    2044:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2048:	ea000039 	b	2134 <printf+0x1f0>
    204c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2050:	e3530073 	cmp	r3, #115	@ 0x73
    2054:	1a000018 	bne	20bc <printf+0x178>
    2058:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    205c:	e5933000 	ldr	r3, [r3]
    2060:	e50b300c 	str	r3, [fp, #-12]
    2064:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2068:	e2833004 	add	r3, r3, #4
    206c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2070:	e51b300c 	ldr	r3, [fp, #-12]
    2074:	e3530000 	cmp	r3, #0
    2078:	1a00000a 	bne	20a8 <printf+0x164>
    207c:	e59f30f4 	ldr	r3, [pc, #244]	@ 2178 <printf+0x234>
    2080:	e50b300c 	str	r3, [fp, #-12]
    2084:	ea000007 	b	20a8 <printf+0x164>
    2088:	e51b300c 	ldr	r3, [fp, #-12]
    208c:	e5d33000 	ldrb	r3, [r3]
    2090:	e1a01003 	mov	r1, r3
    2094:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2098:	ebffff4d 	bl	1dd4 <putc>
    209c:	e51b300c 	ldr	r3, [fp, #-12]
    20a0:	e2833001 	add	r3, r3, #1
    20a4:	e50b300c 	str	r3, [fp, #-12]
    20a8:	e51b300c 	ldr	r3, [fp, #-12]
    20ac:	e5d33000 	ldrb	r3, [r3]
    20b0:	e3530000 	cmp	r3, #0
    20b4:	1afffff3 	bne	2088 <printf+0x144>
    20b8:	ea00001d 	b	2134 <printf+0x1f0>
    20bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    20c0:	e3530063 	cmp	r3, #99	@ 0x63
    20c4:	1a000009 	bne	20f0 <printf+0x1ac>
    20c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    20cc:	e5933000 	ldr	r3, [r3]
    20d0:	e6ef3073 	uxtb	r3, r3
    20d4:	e1a01003 	mov	r1, r3
    20d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    20dc:	ebffff3c 	bl	1dd4 <putc>
    20e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    20e4:	e2833004 	add	r3, r3, #4
    20e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    20ec:	ea000010 	b	2134 <printf+0x1f0>
    20f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    20f4:	e3530025 	cmp	r3, #37	@ 0x25
    20f8:	1a000005 	bne	2114 <printf+0x1d0>
    20fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2100:	e6ef3073 	uxtb	r3, r3
    2104:	e1a01003 	mov	r1, r3
    2108:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    210c:	ebffff30 	bl	1dd4 <putc>
    2110:	ea000007 	b	2134 <printf+0x1f0>
    2114:	e3a01025 	mov	r1, #37	@ 0x25
    2118:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    211c:	ebffff2c 	bl	1dd4 <putc>
    2120:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2124:	e6ef3073 	uxtb	r3, r3
    2128:	e1a01003 	mov	r1, r3
    212c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2130:	ebffff27 	bl	1dd4 <putc>
    2134:	e3a03000 	mov	r3, #0
    2138:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    213c:	e51b3010 	ldr	r3, [fp, #-16]
    2140:	e2833001 	add	r3, r3, #1
    2144:	e50b3010 	str	r3, [fp, #-16]
    2148:	e59b2004 	ldr	r2, [fp, #4]
    214c:	e51b3010 	ldr	r3, [fp, #-16]
    2150:	e0823003 	add	r3, r2, r3
    2154:	e5d33000 	ldrb	r3, [r3]
    2158:	e3530000 	cmp	r3, #0
    215c:	1affff84 	bne	1f74 <printf+0x30>
    2160:	e1a00000 	nop			@ (mov r0, r0)
    2164:	e1a00000 	nop			@ (mov r0, r0)
    2168:	e24bd004 	sub	sp, fp, #4
    216c:	e8bd4800 	pop	{fp, lr}
    2170:	e28dd00c 	add	sp, sp, #12
    2174:	e12fff1e 	bx	lr
    2178:	0000276c 	.word	0x0000276c

0000217c <free>:
    217c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    2180:	e28db000 	add	fp, sp, #0
    2184:	e24dd014 	sub	sp, sp, #20
    2188:	e50b0010 	str	r0, [fp, #-16]
    218c:	e51b3010 	ldr	r3, [fp, #-16]
    2190:	e2433008 	sub	r3, r3, #8
    2194:	e50b300c 	str	r3, [fp, #-12]
    2198:	e59f3154 	ldr	r3, [pc, #340]	@ 22f4 <free+0x178>
    219c:	e5933000 	ldr	r3, [r3]
    21a0:	e50b3008 	str	r3, [fp, #-8]
    21a4:	ea000010 	b	21ec <free+0x70>
    21a8:	e51b3008 	ldr	r3, [fp, #-8]
    21ac:	e5933000 	ldr	r3, [r3]
    21b0:	e51b2008 	ldr	r2, [fp, #-8]
    21b4:	e1520003 	cmp	r2, r3
    21b8:	3a000008 	bcc	21e0 <free+0x64>
    21bc:	e51b200c 	ldr	r2, [fp, #-12]
    21c0:	e51b3008 	ldr	r3, [fp, #-8]
    21c4:	e1520003 	cmp	r2, r3
    21c8:	8a000010 	bhi	2210 <free+0x94>
    21cc:	e51b3008 	ldr	r3, [fp, #-8]
    21d0:	e5933000 	ldr	r3, [r3]
    21d4:	e51b200c 	ldr	r2, [fp, #-12]
    21d8:	e1520003 	cmp	r2, r3
    21dc:	3a00000b 	bcc	2210 <free+0x94>
    21e0:	e51b3008 	ldr	r3, [fp, #-8]
    21e4:	e5933000 	ldr	r3, [r3]
    21e8:	e50b3008 	str	r3, [fp, #-8]
    21ec:	e51b200c 	ldr	r2, [fp, #-12]
    21f0:	e51b3008 	ldr	r3, [fp, #-8]
    21f4:	e1520003 	cmp	r2, r3
    21f8:	9affffea 	bls	21a8 <free+0x2c>
    21fc:	e51b3008 	ldr	r3, [fp, #-8]
    2200:	e5933000 	ldr	r3, [r3]
    2204:	e51b200c 	ldr	r2, [fp, #-12]
    2208:	e1520003 	cmp	r2, r3
    220c:	2affffe5 	bcs	21a8 <free+0x2c>
    2210:	e51b300c 	ldr	r3, [fp, #-12]
    2214:	e5933004 	ldr	r3, [r3, #4]
    2218:	e1a03183 	lsl	r3, r3, #3
    221c:	e51b200c 	ldr	r2, [fp, #-12]
    2220:	e0822003 	add	r2, r2, r3
    2224:	e51b3008 	ldr	r3, [fp, #-8]
    2228:	e5933000 	ldr	r3, [r3]
    222c:	e1520003 	cmp	r2, r3
    2230:	1a00000d 	bne	226c <free+0xf0>
    2234:	e51b300c 	ldr	r3, [fp, #-12]
    2238:	e5932004 	ldr	r2, [r3, #4]
    223c:	e51b3008 	ldr	r3, [fp, #-8]
    2240:	e5933000 	ldr	r3, [r3]
    2244:	e5933004 	ldr	r3, [r3, #4]
    2248:	e0822003 	add	r2, r2, r3
    224c:	e51b300c 	ldr	r3, [fp, #-12]
    2250:	e5832004 	str	r2, [r3, #4]
    2254:	e51b3008 	ldr	r3, [fp, #-8]
    2258:	e5933000 	ldr	r3, [r3]
    225c:	e5932000 	ldr	r2, [r3]
    2260:	e51b300c 	ldr	r3, [fp, #-12]
    2264:	e5832000 	str	r2, [r3]
    2268:	ea000003 	b	227c <free+0x100>
    226c:	e51b3008 	ldr	r3, [fp, #-8]
    2270:	e5932000 	ldr	r2, [r3]
    2274:	e51b300c 	ldr	r3, [fp, #-12]
    2278:	e5832000 	str	r2, [r3]
    227c:	e51b3008 	ldr	r3, [fp, #-8]
    2280:	e5933004 	ldr	r3, [r3, #4]
    2284:	e1a03183 	lsl	r3, r3, #3
    2288:	e51b2008 	ldr	r2, [fp, #-8]
    228c:	e0823003 	add	r3, r2, r3
    2290:	e51b200c 	ldr	r2, [fp, #-12]
    2294:	e1520003 	cmp	r2, r3
    2298:	1a00000b 	bne	22cc <free+0x150>
    229c:	e51b3008 	ldr	r3, [fp, #-8]
    22a0:	e5932004 	ldr	r2, [r3, #4]
    22a4:	e51b300c 	ldr	r3, [fp, #-12]
    22a8:	e5933004 	ldr	r3, [r3, #4]
    22ac:	e0822003 	add	r2, r2, r3
    22b0:	e51b3008 	ldr	r3, [fp, #-8]
    22b4:	e5832004 	str	r2, [r3, #4]
    22b8:	e51b300c 	ldr	r3, [fp, #-12]
    22bc:	e5932000 	ldr	r2, [r3]
    22c0:	e51b3008 	ldr	r3, [fp, #-8]
    22c4:	e5832000 	str	r2, [r3]
    22c8:	ea000002 	b	22d8 <free+0x15c>
    22cc:	e51b3008 	ldr	r3, [fp, #-8]
    22d0:	e51b200c 	ldr	r2, [fp, #-12]
    22d4:	e5832000 	str	r2, [r3]
    22d8:	e59f2014 	ldr	r2, [pc, #20]	@ 22f4 <free+0x178>
    22dc:	e51b3008 	ldr	r3, [fp, #-8]
    22e0:	e5823000 	str	r3, [r2]
    22e4:	e1a00000 	nop			@ (mov r0, r0)
    22e8:	e28bd000 	add	sp, fp, #0
    22ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    22f0:	e12fff1e 	bx	lr
    22f4:	00002848 	.word	0x00002848

000022f8 <morecore>:
    22f8:	e92d4800 	push	{fp, lr}
    22fc:	e28db004 	add	fp, sp, #4
    2300:	e24dd010 	sub	sp, sp, #16
    2304:	e50b0010 	str	r0, [fp, #-16]
    2308:	e51b3010 	ldr	r3, [fp, #-16]
    230c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    2310:	2a000001 	bcs	231c <morecore+0x24>
    2314:	e3a03a01 	mov	r3, #4096	@ 0x1000
    2318:	e50b3010 	str	r3, [fp, #-16]
    231c:	e51b3010 	ldr	r3, [fp, #-16]
    2320:	e1a03183 	lsl	r3, r3, #3
    2324:	e1a00003 	mov	r0, r3
    2328:	ebfffe85 	bl	1d44 <sbrk>
    232c:	e50b0008 	str	r0, [fp, #-8]
    2330:	e51b3008 	ldr	r3, [fp, #-8]
    2334:	e3730001 	cmn	r3, #1
    2338:	1a000001 	bne	2344 <morecore+0x4c>
    233c:	e3a03000 	mov	r3, #0
    2340:	ea00000a 	b	2370 <morecore+0x78>
    2344:	e51b3008 	ldr	r3, [fp, #-8]
    2348:	e50b300c 	str	r3, [fp, #-12]
    234c:	e51b300c 	ldr	r3, [fp, #-12]
    2350:	e51b2010 	ldr	r2, [fp, #-16]
    2354:	e5832004 	str	r2, [r3, #4]
    2358:	e51b300c 	ldr	r3, [fp, #-12]
    235c:	e2833008 	add	r3, r3, #8
    2360:	e1a00003 	mov	r0, r3
    2364:	ebffff84 	bl	217c <free>
    2368:	e59f300c 	ldr	r3, [pc, #12]	@ 237c <morecore+0x84>
    236c:	e5933000 	ldr	r3, [r3]
    2370:	e1a00003 	mov	r0, r3
    2374:	e24bd004 	sub	sp, fp, #4
    2378:	e8bd8800 	pop	{fp, pc}
    237c:	00002848 	.word	0x00002848

00002380 <malloc>:
    2380:	e92d4800 	push	{fp, lr}
    2384:	e28db004 	add	fp, sp, #4
    2388:	e24dd018 	sub	sp, sp, #24
    238c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    2390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2394:	e2833007 	add	r3, r3, #7
    2398:	e1a031a3 	lsr	r3, r3, #3
    239c:	e2833001 	add	r3, r3, #1
    23a0:	e50b3010 	str	r3, [fp, #-16]
    23a4:	e59f3134 	ldr	r3, [pc, #308]	@ 24e0 <malloc+0x160>
    23a8:	e5933000 	ldr	r3, [r3]
    23ac:	e50b300c 	str	r3, [fp, #-12]
    23b0:	e51b300c 	ldr	r3, [fp, #-12]
    23b4:	e3530000 	cmp	r3, #0
    23b8:	1a00000b 	bne	23ec <malloc+0x6c>
    23bc:	e59f3120 	ldr	r3, [pc, #288]	@ 24e4 <malloc+0x164>
    23c0:	e50b300c 	str	r3, [fp, #-12]
    23c4:	e59f2114 	ldr	r2, [pc, #276]	@ 24e0 <malloc+0x160>
    23c8:	e51b300c 	ldr	r3, [fp, #-12]
    23cc:	e5823000 	str	r3, [r2]
    23d0:	e59f3108 	ldr	r3, [pc, #264]	@ 24e0 <malloc+0x160>
    23d4:	e5933000 	ldr	r3, [r3]
    23d8:	e59f2104 	ldr	r2, [pc, #260]	@ 24e4 <malloc+0x164>
    23dc:	e5823000 	str	r3, [r2]
    23e0:	e59f30fc 	ldr	r3, [pc, #252]	@ 24e4 <malloc+0x164>
    23e4:	e3a02000 	mov	r2, #0
    23e8:	e5832004 	str	r2, [r3, #4]
    23ec:	e51b300c 	ldr	r3, [fp, #-12]
    23f0:	e5933000 	ldr	r3, [r3]
    23f4:	e50b3008 	str	r3, [fp, #-8]
    23f8:	e51b3008 	ldr	r3, [fp, #-8]
    23fc:	e5933004 	ldr	r3, [r3, #4]
    2400:	e51b2010 	ldr	r2, [fp, #-16]
    2404:	e1520003 	cmp	r2, r3
    2408:	8a00001e 	bhi	2488 <malloc+0x108>
    240c:	e51b3008 	ldr	r3, [fp, #-8]
    2410:	e5933004 	ldr	r3, [r3, #4]
    2414:	e51b2010 	ldr	r2, [fp, #-16]
    2418:	e1520003 	cmp	r2, r3
    241c:	1a000004 	bne	2434 <malloc+0xb4>
    2420:	e51b3008 	ldr	r3, [fp, #-8]
    2424:	e5932000 	ldr	r2, [r3]
    2428:	e51b300c 	ldr	r3, [fp, #-12]
    242c:	e5832000 	str	r2, [r3]
    2430:	ea00000e 	b	2470 <malloc+0xf0>
    2434:	e51b3008 	ldr	r3, [fp, #-8]
    2438:	e5932004 	ldr	r2, [r3, #4]
    243c:	e51b3010 	ldr	r3, [fp, #-16]
    2440:	e0422003 	sub	r2, r2, r3
    2444:	e51b3008 	ldr	r3, [fp, #-8]
    2448:	e5832004 	str	r2, [r3, #4]
    244c:	e51b3008 	ldr	r3, [fp, #-8]
    2450:	e5933004 	ldr	r3, [r3, #4]
    2454:	e1a03183 	lsl	r3, r3, #3
    2458:	e51b2008 	ldr	r2, [fp, #-8]
    245c:	e0823003 	add	r3, r2, r3
    2460:	e50b3008 	str	r3, [fp, #-8]
    2464:	e51b3008 	ldr	r3, [fp, #-8]
    2468:	e51b2010 	ldr	r2, [fp, #-16]
    246c:	e5832004 	str	r2, [r3, #4]
    2470:	e59f2068 	ldr	r2, [pc, #104]	@ 24e0 <malloc+0x160>
    2474:	e51b300c 	ldr	r3, [fp, #-12]
    2478:	e5823000 	str	r3, [r2]
    247c:	e51b3008 	ldr	r3, [fp, #-8]
    2480:	e2833008 	add	r3, r3, #8
    2484:	ea000012 	b	24d4 <malloc+0x154>
    2488:	e59f3050 	ldr	r3, [pc, #80]	@ 24e0 <malloc+0x160>
    248c:	e5933000 	ldr	r3, [r3]
    2490:	e51b2008 	ldr	r2, [fp, #-8]
    2494:	e1520003 	cmp	r2, r3
    2498:	1a000007 	bne	24bc <malloc+0x13c>
    249c:	e51b0010 	ldr	r0, [fp, #-16]
    24a0:	ebffff94 	bl	22f8 <morecore>
    24a4:	e50b0008 	str	r0, [fp, #-8]
    24a8:	e51b3008 	ldr	r3, [fp, #-8]
    24ac:	e3530000 	cmp	r3, #0
    24b0:	1a000001 	bne	24bc <malloc+0x13c>
    24b4:	e3a03000 	mov	r3, #0
    24b8:	ea000005 	b	24d4 <malloc+0x154>
    24bc:	e51b3008 	ldr	r3, [fp, #-8]
    24c0:	e50b300c 	str	r3, [fp, #-12]
    24c4:	e51b3008 	ldr	r3, [fp, #-8]
    24c8:	e5933000 	ldr	r3, [r3]
    24cc:	e50b3008 	str	r3, [fp, #-8]
    24d0:	eaffffc8 	b	23f8 <malloc+0x78>
    24d4:	e1a00003 	mov	r0, r3
    24d8:	e24bd004 	sub	sp, fp, #4
    24dc:	e8bd8800 	pop	{fp, pc}
    24e0:	00002848 	.word	0x00002848
    24e4:	00002840 	.word	0x00002840

000024e8 <__udivsi3>:
    24e8:	e2512001 	subs	r2, r1, #1
    24ec:	012fff1e 	bxeq	lr
    24f0:	3a000036 	bcc	25d0 <__udivsi3+0xe8>
    24f4:	e1500001 	cmp	r0, r1
    24f8:	9a000022 	bls	2588 <__udivsi3+0xa0>
    24fc:	e1110002 	tst	r1, r2
    2500:	0a000023 	beq	2594 <__udivsi3+0xac>
    2504:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2508:	01a01181 	lsleq	r1, r1, #3
    250c:	03a03008 	moveq	r3, #8
    2510:	13a03001 	movne	r3, #1
    2514:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2518:	31510000 	cmpcc	r1, r0
    251c:	31a01201 	lslcc	r1, r1, #4
    2520:	31a03203 	lslcc	r3, r3, #4
    2524:	3afffffa 	bcc	2514 <__udivsi3+0x2c>
    2528:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    252c:	31510000 	cmpcc	r1, r0
    2530:	31a01081 	lslcc	r1, r1, #1
    2534:	31a03083 	lslcc	r3, r3, #1
    2538:	3afffffa 	bcc	2528 <__udivsi3+0x40>
    253c:	e3a02000 	mov	r2, #0
    2540:	e1500001 	cmp	r0, r1
    2544:	20400001 	subcs	r0, r0, r1
    2548:	21822003 	orrcs	r2, r2, r3
    254c:	e15000a1 	cmp	r0, r1, lsr #1
    2550:	204000a1 	subcs	r0, r0, r1, lsr #1
    2554:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2558:	e1500121 	cmp	r0, r1, lsr #2
    255c:	20400121 	subcs	r0, r0, r1, lsr #2
    2560:	21822123 	orrcs	r2, r2, r3, lsr #2
    2564:	e15001a1 	cmp	r0, r1, lsr #3
    2568:	204001a1 	subcs	r0, r0, r1, lsr #3
    256c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    2570:	e3500000 	cmp	r0, #0
    2574:	11b03223 	lsrsne	r3, r3, #4
    2578:	11a01221 	lsrne	r1, r1, #4
    257c:	1affffef 	bne	2540 <__udivsi3+0x58>
    2580:	e1a00002 	mov	r0, r2
    2584:	e12fff1e 	bx	lr
    2588:	03a00001 	moveq	r0, #1
    258c:	13a00000 	movne	r0, #0
    2590:	e12fff1e 	bx	lr
    2594:	e3510801 	cmp	r1, #65536	@ 0x10000
    2598:	21a01821 	lsrcs	r1, r1, #16
    259c:	23a02010 	movcs	r2, #16
    25a0:	33a02000 	movcc	r2, #0
    25a4:	e3510c01 	cmp	r1, #256	@ 0x100
    25a8:	21a01421 	lsrcs	r1, r1, #8
    25ac:	22822008 	addcs	r2, r2, #8
    25b0:	e3510010 	cmp	r1, #16
    25b4:	21a01221 	lsrcs	r1, r1, #4
    25b8:	22822004 	addcs	r2, r2, #4
    25bc:	e3510004 	cmp	r1, #4
    25c0:	82822003 	addhi	r2, r2, #3
    25c4:	908220a1 	addls	r2, r2, r1, lsr #1
    25c8:	e1a00230 	lsr	r0, r0, r2
    25cc:	e12fff1e 	bx	lr
    25d0:	e3500000 	cmp	r0, #0
    25d4:	13e00000 	mvnne	r0, #0
    25d8:	ea000007 	b	25fc <__aeabi_idiv0>

000025dc <__aeabi_uidivmod>:
    25dc:	e3510000 	cmp	r1, #0
    25e0:	0afffffa 	beq	25d0 <__udivsi3+0xe8>
    25e4:	e92d4003 	push	{r0, r1, lr}
    25e8:	ebffffbe 	bl	24e8 <__udivsi3>
    25ec:	e8bd4006 	pop	{r1, r2, lr}
    25f0:	e0030092 	mul	r3, r2, r0
    25f4:	e0411003 	sub	r1, r1, r3
    25f8:	e12fff1e 	bx	lr

000025fc <__aeabi_idiv0>:
    25fc:	e12fff1e 	bx	lr
