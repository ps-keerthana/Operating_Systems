
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
      70:	eb000566 	bl	1610 <strlen>
      74:	e1a03000 	mov	r3, r0
      78:	e2833001 	add	r3, r3, #1
      7c:	e1a00003 	mov	r0, r3
      80:	eb000a4e 	bl	29c0 <malloc>
      84:	e50b000c 	str	r0, [fp, #-12]
      88:	e51b1010 	ldr	r1, [fp, #-16]
      8c:	e51b000c 	ldr	r0, [fp, #-12]
      90:	eb000526 	bl	1530 <strcpy>
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
      cc:	eb00054f 	bl	1610 <strlen>
      d0:	e1a03000 	mov	r3, r0
      d4:	e3530000 	cmp	r3, #0
      d8:	1a000001 	bne	e4 <completecmd+0x2c>
      dc:	e3a03000 	mov	r3, #0
      e0:	ea00008e 	b	320 <completecmd+0x268>
      e4:	e3a03000 	mov	r3, #0
      e8:	e50b3010 	str	r3, [fp, #-16]
      ec:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
      f0:	eb000546 	bl	1610 <strlen>
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
     120:	eb00053a 	bl	1610 <strlen>
     124:	e1a03000 	mov	r3, r0
     128:	e1a02003 	mov	r2, r3
     12c:	e51b1090 	ldr	r1, [fp, #-144]	@ 0xffffff70
     130:	e1a00004 	mov	r0, r4
     134:	eb000633 	bl	1a08 <strncmp>
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
     224:	eb0004f9 	bl	1610 <strlen>
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
     250:	eb0004b6 	bl	1530 <strcpy>
     254:	ea00002e 	b	314 <completecmd+0x25c>
     258:	e3a03000 	mov	r3, #0
     25c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
     260:	ea000016 	b	2c0 <completecmd+0x208>
     264:	e59f20c0 	ldr	r2, [pc, #192]	@ 32c <completecmd+0x274>
     268:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     26c:	e7924103 	ldr	r4, [r2, r3, lsl #2]
     270:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     274:	eb0004e5 	bl	1610 <strlen>
     278:	e1a03000 	mov	r3, r0
     27c:	e1a02003 	mov	r2, r3
     280:	e51b1090 	ldr	r1, [fp, #-144]	@ 0xffffff70
     284:	e1a00004 	mov	r0, r4
     288:	eb0005de 	bl	1a08 <strncmp>
     28c:	e1a03000 	mov	r3, r0
     290:	e3530000 	cmp	r3, #0
     294:	1a000006 	bne	2b4 <completecmd+0x1fc>
     298:	e59f208c 	ldr	r2, [pc, #140]	@ 32c <completecmd+0x274>
     29c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     2a0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
     2a4:	e1a02003 	mov	r2, r3
     2a8:	e59f1080 	ldr	r1, [pc, #128]	@ 330 <completecmd+0x278>
     2ac:	e3a00001 	mov	r0, #1
     2b0:	eb0008b3 	bl	2584 <printf>
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
     2dc:	eb0005f9 	bl	1ac8 <strncpy>
     2e0:	e24b2088 	sub	r2, fp, #136	@ 0x88
     2e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     2e8:	e0823003 	add	r3, r2, r3
     2ec:	e3a02000 	mov	r2, #0
     2f0:	e5c32000 	strb	r2, [r3]
     2f4:	e24b3088 	sub	r3, fp, #136	@ 0x88
     2f8:	e1a01003 	mov	r1, r3
     2fc:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     300:	eb00048a 	bl	1530 <strcpy>
     304:	e51b2090 	ldr	r2, [fp, #-144]	@ 0xffffff70
     308:	e59f1024 	ldr	r1, [pc, #36]	@ 334 <completecmd+0x27c>
     30c:	e3a00001 	mov	r0, #1
     310:	eb00089b 	bl	2584 <printf>
     314:	e51b0090 	ldr	r0, [fp, #-144]	@ 0xffffff70
     318:	eb0004bc 	bl	1610 <strlen>
     31c:	e1a03000 	mov	r3, r0
     320:	e1a00003 	mov	r0, r3
     324:	e24bd008 	sub	sp, fp, #8
     328:	e8bd8810 	pop	{r4, fp, pc}
     32c:	00002db4 	.word	0x00002db4
     330:	00002cb4 	.word	0x00002cb4
     334:	00002cb8 	.word	0x00002cb8

00000338 <runcmd>:
     338:	e92d4800 	push	{fp, lr}
     33c:	e28db004 	add	fp, sp, #4
     340:	e24dd028 	sub	sp, sp, #40	@ 0x28
     344:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     348:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     34c:	e3530000 	cmp	r3, #0
     350:	1a000000 	bne	358 <runcmd+0x20>
     354:	eb0006e8 	bl	1efc <exit>
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
     3a4:	eb0006d4 	bl	1efc <exit>
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e5932004 	ldr	r2, [r3, #4]
     3b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3b4:	e2833004 	add	r3, r3, #4
     3b8:	e1a01003 	mov	r1, r3
     3bc:	e1a00002 	mov	r0, r2
     3c0:	eb00070c 	bl	1ff8 <exec>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e5933004 	ldr	r3, [r3, #4]
     3cc:	e1a02003 	mov	r2, r3
     3d0:	e59f11c8 	ldr	r1, [pc, #456]	@ 5a0 <runcmd+0x268>
     3d4:	e3a00002 	mov	r0, #2
     3d8:	eb000869 	bl	2584 <printf>
     3dc:	ea00006d 	b	598 <runcmd+0x260>
     3e0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     3e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3ec:	e5933014 	ldr	r3, [r3, #20]
     3f0:	e1a00003 	mov	r0, r3
     3f4:	eb0006ed 	bl	1fb0 <close>
     3f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3fc:	e5932008 	ldr	r2, [r3, #8]
     400:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     404:	e5933010 	ldr	r3, [r3, #16]
     408:	e1a01003 	mov	r1, r3
     40c:	e1a00002 	mov	r0, r2
     410:	eb000701 	bl	201c <open>
     414:	e1a03000 	mov	r3, r0
     418:	e3530000 	cmp	r3, #0
     41c:	aa000006 	bge	43c <runcmd+0x104>
     420:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     424:	e5933008 	ldr	r3, [r3, #8]
     428:	e1a02003 	mov	r2, r3
     42c:	e59f1170 	ldr	r1, [pc, #368]	@ 5a4 <runcmd+0x26c>
     430:	e3a00002 	mov	r0, #2
     434:	eb000852 	bl	2584 <printf>
     438:	eb0006af 	bl	1efc <exit>
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
     474:	eb0006a9 	bl	1f20 <wait>
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e5933008 	ldr	r3, [r3, #8]
     480:	e1a00003 	mov	r0, r3
     484:	ebffffab 	bl	338 <runcmd>
     488:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     48c:	e50b3010 	str	r3, [fp, #-16]
     490:	e24b3020 	sub	r3, fp, #32
     494:	e1a00003 	mov	r0, r3
     498:	eb0006a9 	bl	1f44 <pipe>
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
     4c4:	eb0006b9 	bl	1fb0 <close>
     4c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4cc:	e1a00003 	mov	r0, r3
     4d0:	eb000710 	bl	2118 <dup>
     4d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4d8:	e1a00003 	mov	r0, r3
     4dc:	eb0006b3 	bl	1fb0 <close>
     4e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4e4:	e1a00003 	mov	r0, r3
     4e8:	eb0006b0 	bl	1fb0 <close>
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e5933004 	ldr	r3, [r3, #4]
     4f4:	e1a00003 	mov	r0, r3
     4f8:	ebffff8e 	bl	338 <runcmd>
     4fc:	eb0000cd 	bl	838 <fork1>
     500:	e1a03000 	mov	r3, r0
     504:	e3530000 	cmp	r3, #0
     508:	1a00000e 	bne	548 <runcmd+0x210>
     50c:	e3a00000 	mov	r0, #0
     510:	eb0006a6 	bl	1fb0 <close>
     514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     518:	e1a00003 	mov	r0, r3
     51c:	eb0006fd 	bl	2118 <dup>
     520:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     524:	e1a00003 	mov	r0, r3
     528:	eb0006a0 	bl	1fb0 <close>
     52c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     530:	e1a00003 	mov	r0, r3
     534:	eb00069d 	bl	1fb0 <close>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5933008 	ldr	r3, [r3, #8]
     540:	e1a00003 	mov	r0, r3
     544:	ebffff7b 	bl	338 <runcmd>
     548:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     54c:	e1a00003 	mov	r0, r3
     550:	eb000696 	bl	1fb0 <close>
     554:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     558:	e1a00003 	mov	r0, r3
     55c:	eb000693 	bl	1fb0 <close>
     560:	eb00066e 	bl	1f20 <wait>
     564:	eb00066d 	bl	1f20 <wait>
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
     598:	eb000657 	bl	1efc <exit>
     59c:	00002cc0 	.word	0x00002cc0
     5a0:	00002cc8 	.word	0x00002cc8
     5a4:	00002cd8 	.word	0x00002cd8
     5a8:	00002ce8 	.word	0x00002ce8

000005ac <getcmd>:
     5ac:	e92d4800 	push	{fp, lr}
     5b0:	e28db004 	add	fp, sp, #4
     5b4:	e24dd010 	sub	sp, sp, #16
     5b8:	e50b0010 	str	r0, [fp, #-16]
     5bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c0:	e59f1120 	ldr	r1, [pc, #288]	@ 6e8 <getcmd+0x13c>
     5c4:	e3a00002 	mov	r0, #2
     5c8:	eb0007ed 	bl	2584 <printf>
     5cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d0:	e1a02003 	mov	r2, r3
     5d4:	e3a01000 	mov	r1, #0
     5d8:	e51b0010 	ldr	r0, [fp, #-16]
     5dc:	eb000420 	bl	1664 <memset>
     5e0:	e3a03000 	mov	r3, #0
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	ea000028 	b	690 <getcmd+0xe4>
     5ec:	e24b3009 	sub	r3, fp, #9
     5f0:	e3a02001 	mov	r2, #1
     5f4:	e1a01003 	mov	r1, r3
     5f8:	e3a00000 	mov	r0, #0
     5fc:	eb000659 	bl	1f68 <read>
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
     638:	eb0003f4 	bl	1610 <strlen>
     63c:	e1a03000 	mov	r3, r0
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b2010 	ldr	r2, [fp, #-16]
     648:	e59f109c 	ldr	r1, [pc, #156]	@ 6ec <getcmd+0x140>
     64c:	e3a00001 	mov	r0, #1
     650:	eb0007cb 	bl	2584 <printf>
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
     6e8:	00002cf0 	.word	0x00002cf0
     6ec:	00002cf4 	.word	0x00002cf4

000006f0 <main>:
     6f0:	e92d4800 	push	{fp, lr}
     6f4:	e28db004 	add	fp, sp, #4
     6f8:	e24dd008 	sub	sp, sp, #8
     6fc:	ea000005 	b	718 <main+0x28>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e3530002 	cmp	r3, #2
     708:	da000002 	ble	718 <main+0x28>
     70c:	e51b0008 	ldr	r0, [fp, #-8]
     710:	eb000626 	bl	1fb0 <close>
     714:	ea000006 	b	734 <main+0x44>
     718:	e3a01002 	mov	r1, #2
     71c:	e59f00dc 	ldr	r0, [pc, #220]	@ 800 <main+0x110>
     720:	eb00063d 	bl	201c <open>
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
     76c:	eb0003a7 	bl	1610 <strlen>
     770:	e1a03000 	mov	r3, r0
     774:	e2433001 	sub	r3, r3, #1
     778:	e59f2084 	ldr	r2, [pc, #132]	@ 804 <main+0x114>
     77c:	e3a01000 	mov	r1, #0
     780:	e7c21003 	strb	r1, [r2, r3]
     784:	e59f307c 	ldr	r3, [pc, #124]	@ 808 <main+0x118>
     788:	e1a00003 	mov	r0, r3
     78c:	eb000658 	bl	20f4 <chdir>
     790:	e1a03000 	mov	r3, r0
     794:	e3530000 	cmp	r3, #0
     798:	aa000010 	bge	7e0 <main+0xf0>
     79c:	e59f3064 	ldr	r3, [pc, #100]	@ 808 <main+0x118>
     7a0:	e1a02003 	mov	r2, r3
     7a4:	e59f1060 	ldr	r1, [pc, #96]	@ 80c <main+0x11c>
     7a8:	e3a00002 	mov	r0, #2
     7ac:	eb000774 	bl	2584 <printf>
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
     7d8:	eb0005d0 	bl	1f20 <wait>
     7dc:	ea000000 	b	7e4 <main+0xf4>
     7e0:	e1a00000 	nop			@ (mov r0, r0)
     7e4:	e3a01064 	mov	r1, #100	@ 0x64
     7e8:	e59f0014 	ldr	r0, [pc, #20]	@ 804 <main+0x114>
     7ec:	ebffff6e 	bl	5ac <getcmd>
     7f0:	e1a03000 	mov	r3, r0
     7f4:	e3530000 	cmp	r3, #0
     7f8:	aaffffce 	bge	738 <main+0x48>
     7fc:	eb0005be 	bl	1efc <exit>
     800:	00002cfc 	.word	0x00002cfc
     804:	00002e1c 	.word	0x00002e1c
     808:	00002e1f 	.word	0x00002e1f
     80c:	00002d04 	.word	0x00002d04

00000810 <panic>:
     810:	e92d4800 	push	{fp, lr}
     814:	e28db004 	add	fp, sp, #4
     818:	e24dd008 	sub	sp, sp, #8
     81c:	e50b0008 	str	r0, [fp, #-8]
     820:	e51b2008 	ldr	r2, [fp, #-8]
     824:	e59f1008 	ldr	r1, [pc, #8]	@ 834 <panic+0x24>
     828:	e3a00002 	mov	r0, #2
     82c:	eb000754 	bl	2584 <printf>
     830:	eb0005b1 	bl	1efc <exit>
     834:	00002d14 	.word	0x00002d14

00000838 <fork1>:
     838:	e92d4800 	push	{fp, lr}
     83c:	e28db004 	add	fp, sp, #4
     840:	e24dd008 	sub	sp, sp, #8
     844:	eb0005a3 	bl	1ed8 <fork>
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
     870:	00002d18 	.word	0x00002d18

00000874 <execcmd>:
     874:	e92d4800 	push	{fp, lr}
     878:	e28db004 	add	fp, sp, #4
     87c:	e24dd008 	sub	sp, sp, #8
     880:	e3a00054 	mov	r0, #84	@ 0x54
     884:	eb00084d 	bl	29c0 <malloc>
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e3a02054 	mov	r2, #84	@ 0x54
     890:	e3a01000 	mov	r1, #0
     894:	e51b0008 	ldr	r0, [fp, #-8]
     898:	eb000371 	bl	1664 <memset>
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
     8d8:	eb000838 	bl	29c0 <malloc>
     8dc:	e50b0008 	str	r0, [fp, #-8]
     8e0:	e3a02018 	mov	r2, #24
     8e4:	e3a01000 	mov	r1, #0
     8e8:	e51b0008 	ldr	r0, [fp, #-8]
     8ec:	eb00035c 	bl	1664 <memset>
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
     960:	eb000816 	bl	29c0 <malloc>
     964:	e50b0008 	str	r0, [fp, #-8]
     968:	e3a0200c 	mov	r2, #12
     96c:	e3a01000 	mov	r1, #0
     970:	e51b0008 	ldr	r0, [fp, #-8]
     974:	eb00033a 	bl	1664 <memset>
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
     9c4:	eb0007fd 	bl	29c0 <malloc>
     9c8:	e50b0008 	str	r0, [fp, #-8]
     9cc:	e3a0200c 	mov	r2, #12
     9d0:	e3a01000 	mov	r1, #0
     9d4:	e51b0008 	ldr	r0, [fp, #-8]
     9d8:	eb000321 	bl	1664 <memset>
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
     a24:	eb0007e5 	bl	29c0 <malloc>
     a28:	e50b0008 	str	r0, [fp, #-8]
     a2c:	e3a02008 	mov	r2, #8
     a30:	e3a01000 	mov	r1, #0
     a34:	e51b0008 	ldr	r0, [fp, #-8]
     a38:	eb000309 	bl	1664 <memset>
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
     abc:	eb000332 	bl	178c <strchr>
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
     c18:	eb0002db 	bl	178c <strchr>
     c1c:	e1a03000 	mov	r3, r0
     c20:	e3530000 	cmp	r3, #0
     c24:	1a00000c 	bne	c5c <gettoken+0x1f8>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5d33000 	ldrb	r3, [r3]
     c30:	e1a01003 	mov	r1, r3
     c34:	e59f009c 	ldr	r0, [pc, #156]	@ cd8 <gettoken+0x274>
     c38:	eb0002d3 	bl	178c <strchr>
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
     ca8:	eb0002b7 	bl	178c <strchr>
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
     cd4:	00002df8 	.word	0x00002df8
     cd8:	00002e00 	.word	0x00002e00

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
     d30:	eb000295 	bl	178c <strchr>
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
     d6c:	eb000286 	bl	178c <strchr>
     d70:	e1a03000 	mov	r3, r0
     d74:	e3530000 	cmp	r3, #0
     d78:	0a000001 	beq	d84 <peek+0xa8>
     d7c:	e3a03001 	mov	r3, #1
     d80:	ea000000 	b	d88 <peek+0xac>
     d84:	e3a03000 	mov	r3, #0
     d88:	e1a00003 	mov	r0, r3
     d8c:	e24bd004 	sub	sp, fp, #4
     d90:	e8bd8800 	pop	{fp, pc}
     d94:	00002df8 	.word	0x00002df8

00000d98 <parsecmd>:
     d98:	e92d4810 	push	{r4, fp, lr}
     d9c:	e28db008 	add	fp, sp, #8
     da0:	e24dd014 	sub	sp, sp, #20
     da4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     da8:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e1a00003 	mov	r0, r3
     db4:	eb000215 	bl	1610 <strlen>
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
     e0c:	eb0005dc 	bl	2584 <printf>
     e10:	e59f0020 	ldr	r0, [pc, #32]	@ e38 <parsecmd+0xa0>
     e14:	ebfffe7d 	bl	810 <panic>
     e18:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e1c:	eb00013c 	bl	1314 <nulterminate>
     e20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e24:	e1a00003 	mov	r0, r3
     e28:	e24bd008 	sub	sp, fp, #8
     e2c:	e8bd8810 	pop	{r4, fp, pc}
     e30:	00002d20 	.word	0x00002d20
     e34:	00002d24 	.word	0x00002d24
     e38:	00002d34 	.word	0x00002d34

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
     f00:	00002d3c 	.word	0x00002d3c
     f04:	00002d40 	.word	0x00002d40

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
     f8c:	00002d44 	.word	0x00002d44

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
    10b4:	00002d48 	.word	0x00002d48
    10b8:	00000201 	.word	0x00000201
    10bc:	00002d68 	.word	0x00002d68

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
    1178:	00002d6c 	.word	0x00002d6c
    117c:	00002d70 	.word	0x00002d70
    1180:	00002d7c 	.word	0x00002d7c
    1184:	00002d80 	.word	0x00002d80

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
    1304:	00002d6c 	.word	0x00002d6c
    1308:	00002d34 	.word	0x00002d34
    130c:	00002d94 	.word	0x00002d94
    1310:	00002da4 	.word	0x00002da4

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

00001474 <pg_pte>:
    1474:	e92d4800 	push	{fp, lr}
    1478:	e28db004 	add	fp, sp, #4
    147c:	e24dd008 	sub	sp, sp, #8
    1480:	e50b0008 	str	r0, [fp, #-8]
    1484:	e51b1008 	ldr	r1, [fp, #-8]
    1488:	e3a0001a 	mov	r0, #26
    148c:	eb0003de 	bl	240c <syscall>
    1490:	e1a03000 	mov	r3, r0
    1494:	e1a00003 	mov	r0, r3
    1498:	e24bd004 	sub	sp, fp, #4
    149c:	e8bd8800 	pop	{fp, pc}

000014a0 <pg_pa>:
    14a0:	e92d4800 	push	{fp, lr}
    14a4:	e28db004 	add	fp, sp, #4
    14a8:	e24dd008 	sub	sp, sp, #8
    14ac:	e50b0008 	str	r0, [fp, #-8]
    14b0:	e51b1008 	ldr	r1, [fp, #-8]
    14b4:	e3a0001b 	mov	r0, #27
    14b8:	eb0003d3 	bl	240c <syscall>
    14bc:	e1a03000 	mov	r3, r0
    14c0:	e1a00003 	mov	r0, r3
    14c4:	e24bd004 	sub	sp, fp, #4
    14c8:	e8bd8800 	pop	{fp, pc}

000014cc <pg_flags>:
    14cc:	e92d4800 	push	{fp, lr}
    14d0:	e28db004 	add	fp, sp, #4
    14d4:	e24dd008 	sub	sp, sp, #8
    14d8:	e50b0008 	str	r0, [fp, #-8]
    14dc:	e51b1008 	ldr	r1, [fp, #-8]
    14e0:	e3a0001c 	mov	r0, #28
    14e4:	eb0003c8 	bl	240c <syscall>
    14e8:	e1a03000 	mov	r3, r0
    14ec:	e1a00003 	mov	r0, r3
    14f0:	e24bd004 	sub	sp, fp, #4
    14f4:	e8bd8800 	pop	{fp, pc}

000014f8 <kpt>:
    14f8:	e92d4800 	push	{fp, lr}
    14fc:	e28db004 	add	fp, sp, #4
    1500:	e3a0001d 	mov	r0, #29
    1504:	eb0003c0 	bl	240c <syscall>
    1508:	e1a03000 	mov	r3, r0
    150c:	e1a00003 	mov	r0, r3
    1510:	e8bd8800 	pop	{fp, pc}

00001514 <ugetpid>:
    1514:	e92d4800 	push	{fp, lr}
    1518:	e28db004 	add	fp, sp, #4
    151c:	e3a0001e 	mov	r0, #30
    1520:	eb0003b9 	bl	240c <syscall>
    1524:	e1a03000 	mov	r3, r0
    1528:	e1a00003 	mov	r0, r3
    152c:	e8bd8800 	pop	{fp, pc}

00001530 <strcpy>:
    1530:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1534:	e28db000 	add	fp, sp, #0
    1538:	e24dd014 	sub	sp, sp, #20
    153c:	e50b0010 	str	r0, [fp, #-16]
    1540:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1544:	e51b3010 	ldr	r3, [fp, #-16]
    1548:	e50b3008 	str	r3, [fp, #-8]
    154c:	e1a00000 	nop			@ (mov r0, r0)
    1550:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1554:	e2823001 	add	r3, r2, #1
    1558:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    155c:	e51b3010 	ldr	r3, [fp, #-16]
    1560:	e2831001 	add	r1, r3, #1
    1564:	e50b1010 	str	r1, [fp, #-16]
    1568:	e5d22000 	ldrb	r2, [r2]
    156c:	e5c32000 	strb	r2, [r3]
    1570:	e5d33000 	ldrb	r3, [r3]
    1574:	e3530000 	cmp	r3, #0
    1578:	1afffff4 	bne	1550 <strcpy+0x20>
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e1a00003 	mov	r0, r3
    1584:	e28bd000 	add	sp, fp, #0
    1588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    158c:	e12fff1e 	bx	lr

00001590 <strcmp>:
    1590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1594:	e28db000 	add	fp, sp, #0
    1598:	e24dd00c 	sub	sp, sp, #12
    159c:	e50b0008 	str	r0, [fp, #-8]
    15a0:	e50b100c 	str	r1, [fp, #-12]
    15a4:	ea000005 	b	15c0 <strcmp+0x30>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e2833001 	add	r3, r3, #1
    15b0:	e50b3008 	str	r3, [fp, #-8]
    15b4:	e51b300c 	ldr	r3, [fp, #-12]
    15b8:	e2833001 	add	r3, r3, #1
    15bc:	e50b300c 	str	r3, [fp, #-12]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e5d33000 	ldrb	r3, [r3]
    15c8:	e3530000 	cmp	r3, #0
    15cc:	0a000005 	beq	15e8 <strcmp+0x58>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e5d32000 	ldrb	r2, [r3]
    15d8:	e51b300c 	ldr	r3, [fp, #-12]
    15dc:	e5d33000 	ldrb	r3, [r3]
    15e0:	e1520003 	cmp	r2, r3
    15e4:	0affffef 	beq	15a8 <strcmp+0x18>
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e5d33000 	ldrb	r3, [r3]
    15f0:	e1a02003 	mov	r2, r3
    15f4:	e51b300c 	ldr	r3, [fp, #-12]
    15f8:	e5d33000 	ldrb	r3, [r3]
    15fc:	e0423003 	sub	r3, r2, r3
    1600:	e1a00003 	mov	r0, r3
    1604:	e28bd000 	add	sp, fp, #0
    1608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    160c:	e12fff1e 	bx	lr

00001610 <strlen>:
    1610:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1614:	e28db000 	add	fp, sp, #0
    1618:	e24dd014 	sub	sp, sp, #20
    161c:	e50b0010 	str	r0, [fp, #-16]
    1620:	e3a03000 	mov	r3, #0
    1624:	e50b3008 	str	r3, [fp, #-8]
    1628:	ea000002 	b	1638 <strlen+0x28>
    162c:	e51b3008 	ldr	r3, [fp, #-8]
    1630:	e2833001 	add	r3, r3, #1
    1634:	e50b3008 	str	r3, [fp, #-8]
    1638:	e51b3008 	ldr	r3, [fp, #-8]
    163c:	e51b2010 	ldr	r2, [fp, #-16]
    1640:	e0823003 	add	r3, r2, r3
    1644:	e5d33000 	ldrb	r3, [r3]
    1648:	e3530000 	cmp	r3, #0
    164c:	1afffff6 	bne	162c <strlen+0x1c>
    1650:	e51b3008 	ldr	r3, [fp, #-8]
    1654:	e1a00003 	mov	r0, r3
    1658:	e28bd000 	add	sp, fp, #0
    165c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1660:	e12fff1e 	bx	lr

00001664 <memset>:
    1664:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1668:	e28db000 	add	fp, sp, #0
    166c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1670:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1674:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1678:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    167c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1680:	e50b3008 	str	r3, [fp, #-8]
    1684:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1688:	e54b300d 	strb	r3, [fp, #-13]
    168c:	e55b200d 	ldrb	r2, [fp, #-13]
    1690:	e1a03002 	mov	r3, r2
    1694:	e1a03403 	lsl	r3, r3, #8
    1698:	e0833002 	add	r3, r3, r2
    169c:	e1a03803 	lsl	r3, r3, #16
    16a0:	e1a02003 	mov	r2, r3
    16a4:	e55b300d 	ldrb	r3, [fp, #-13]
    16a8:	e1a03403 	lsl	r3, r3, #8
    16ac:	e1822003 	orr	r2, r2, r3
    16b0:	e55b300d 	ldrb	r3, [fp, #-13]
    16b4:	e1823003 	orr	r3, r2, r3
    16b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    16bc:	ea000008 	b	16e4 <memset+0x80>
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e55b200d 	ldrb	r2, [fp, #-13]
    16c8:	e5c32000 	strb	r2, [r3]
    16cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    16d0:	e2433001 	sub	r3, r3, #1
    16d4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e2833001 	add	r3, r3, #1
    16e0:	e50b3008 	str	r3, [fp, #-8]
    16e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    16e8:	e3530000 	cmp	r3, #0
    16ec:	0a000003 	beq	1700 <memset+0x9c>
    16f0:	e51b3008 	ldr	r3, [fp, #-8]
    16f4:	e2033003 	and	r3, r3, #3
    16f8:	e3530000 	cmp	r3, #0
    16fc:	1affffef 	bne	16c0 <memset+0x5c>
    1700:	e51b3008 	ldr	r3, [fp, #-8]
    1704:	e50b300c 	str	r3, [fp, #-12]
    1708:	ea000008 	b	1730 <memset+0xcc>
    170c:	e51b300c 	ldr	r3, [fp, #-12]
    1710:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1714:	e5832000 	str	r2, [r3]
    1718:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    171c:	e2433004 	sub	r3, r3, #4
    1720:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1724:	e51b300c 	ldr	r3, [fp, #-12]
    1728:	e2833004 	add	r3, r3, #4
    172c:	e50b300c 	str	r3, [fp, #-12]
    1730:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1734:	e3530003 	cmp	r3, #3
    1738:	8afffff3 	bhi	170c <memset+0xa8>
    173c:	e51b300c 	ldr	r3, [fp, #-12]
    1740:	e50b3008 	str	r3, [fp, #-8]
    1744:	ea000008 	b	176c <memset+0x108>
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e55b200d 	ldrb	r2, [fp, #-13]
    1750:	e5c32000 	strb	r2, [r3]
    1754:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1758:	e2433001 	sub	r3, r3, #1
    175c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1760:	e51b3008 	ldr	r3, [fp, #-8]
    1764:	e2833001 	add	r3, r3, #1
    1768:	e50b3008 	str	r3, [fp, #-8]
    176c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1770:	e3530000 	cmp	r3, #0
    1774:	1afffff3 	bne	1748 <memset+0xe4>
    1778:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    177c:	e1a00003 	mov	r0, r3
    1780:	e28bd000 	add	sp, fp, #0
    1784:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1788:	e12fff1e 	bx	lr

0000178c <strchr>:
    178c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1790:	e28db000 	add	fp, sp, #0
    1794:	e24dd00c 	sub	sp, sp, #12
    1798:	e50b0008 	str	r0, [fp, #-8]
    179c:	e1a03001 	mov	r3, r1
    17a0:	e54b3009 	strb	r3, [fp, #-9]
    17a4:	ea000009 	b	17d0 <strchr+0x44>
    17a8:	e51b3008 	ldr	r3, [fp, #-8]
    17ac:	e5d33000 	ldrb	r3, [r3]
    17b0:	e55b2009 	ldrb	r2, [fp, #-9]
    17b4:	e1520003 	cmp	r2, r3
    17b8:	1a000001 	bne	17c4 <strchr+0x38>
    17bc:	e51b3008 	ldr	r3, [fp, #-8]
    17c0:	ea000007 	b	17e4 <strchr+0x58>
    17c4:	e51b3008 	ldr	r3, [fp, #-8]
    17c8:	e2833001 	add	r3, r3, #1
    17cc:	e50b3008 	str	r3, [fp, #-8]
    17d0:	e51b3008 	ldr	r3, [fp, #-8]
    17d4:	e5d33000 	ldrb	r3, [r3]
    17d8:	e3530000 	cmp	r3, #0
    17dc:	1afffff1 	bne	17a8 <strchr+0x1c>
    17e0:	e3a03000 	mov	r3, #0
    17e4:	e1a00003 	mov	r0, r3
    17e8:	e28bd000 	add	sp, fp, #0
    17ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    17f0:	e12fff1e 	bx	lr

000017f4 <gets>:
    17f4:	e92d4800 	push	{fp, lr}
    17f8:	e28db004 	add	fp, sp, #4
    17fc:	e24dd018 	sub	sp, sp, #24
    1800:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1804:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1808:	e3a03000 	mov	r3, #0
    180c:	e50b3008 	str	r3, [fp, #-8]
    1810:	ea000016 	b	1870 <gets+0x7c>
    1814:	e24b300d 	sub	r3, fp, #13
    1818:	e3a02001 	mov	r2, #1
    181c:	e1a01003 	mov	r1, r3
    1820:	e3a00000 	mov	r0, #0
    1824:	eb0001cf 	bl	1f68 <read>
    1828:	e50b000c 	str	r0, [fp, #-12]
    182c:	e51b300c 	ldr	r3, [fp, #-12]
    1830:	e3530000 	cmp	r3, #0
    1834:	da000013 	ble	1888 <gets+0x94>
    1838:	e51b3008 	ldr	r3, [fp, #-8]
    183c:	e2832001 	add	r2, r3, #1
    1840:	e50b2008 	str	r2, [fp, #-8]
    1844:	e1a02003 	mov	r2, r3
    1848:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    184c:	e0833002 	add	r3, r3, r2
    1850:	e55b200d 	ldrb	r2, [fp, #-13]
    1854:	e5c32000 	strb	r2, [r3]
    1858:	e55b300d 	ldrb	r3, [fp, #-13]
    185c:	e353000a 	cmp	r3, #10
    1860:	0a000009 	beq	188c <gets+0x98>
    1864:	e55b300d 	ldrb	r3, [fp, #-13]
    1868:	e353000d 	cmp	r3, #13
    186c:	0a000006 	beq	188c <gets+0x98>
    1870:	e51b3008 	ldr	r3, [fp, #-8]
    1874:	e2833001 	add	r3, r3, #1
    1878:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    187c:	e1520003 	cmp	r2, r3
    1880:	caffffe3 	bgt	1814 <gets+0x20>
    1884:	ea000000 	b	188c <gets+0x98>
    1888:	e1a00000 	nop			@ (mov r0, r0)
    188c:	e51b3008 	ldr	r3, [fp, #-8]
    1890:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1894:	e0823003 	add	r3, r2, r3
    1898:	e3a02000 	mov	r2, #0
    189c:	e5c32000 	strb	r2, [r3]
    18a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    18a4:	e1a00003 	mov	r0, r3
    18a8:	e24bd004 	sub	sp, fp, #4
    18ac:	e8bd8800 	pop	{fp, pc}

000018b0 <stat>:
    18b0:	e92d4800 	push	{fp, lr}
    18b4:	e28db004 	add	fp, sp, #4
    18b8:	e24dd010 	sub	sp, sp, #16
    18bc:	e50b0010 	str	r0, [fp, #-16]
    18c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    18c4:	e3a01000 	mov	r1, #0
    18c8:	e51b0010 	ldr	r0, [fp, #-16]
    18cc:	eb0001d2 	bl	201c <open>
    18d0:	e50b0008 	str	r0, [fp, #-8]
    18d4:	e51b3008 	ldr	r3, [fp, #-8]
    18d8:	e3530000 	cmp	r3, #0
    18dc:	aa000001 	bge	18e8 <stat+0x38>
    18e0:	e3e03000 	mvn	r3, #0
    18e4:	ea000006 	b	1904 <stat+0x54>
    18e8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    18ec:	e51b0008 	ldr	r0, [fp, #-8]
    18f0:	eb0001e4 	bl	2088 <fstat>
    18f4:	e50b000c 	str	r0, [fp, #-12]
    18f8:	e51b0008 	ldr	r0, [fp, #-8]
    18fc:	eb0001ab 	bl	1fb0 <close>
    1900:	e51b300c 	ldr	r3, [fp, #-12]
    1904:	e1a00003 	mov	r0, r3
    1908:	e24bd004 	sub	sp, fp, #4
    190c:	e8bd8800 	pop	{fp, pc}

00001910 <atoi>:
    1910:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1914:	e28db000 	add	fp, sp, #0
    1918:	e24dd014 	sub	sp, sp, #20
    191c:	e50b0010 	str	r0, [fp, #-16]
    1920:	e3a03000 	mov	r3, #0
    1924:	e50b3008 	str	r3, [fp, #-8]
    1928:	ea00000c 	b	1960 <atoi+0x50>
    192c:	e51b2008 	ldr	r2, [fp, #-8]
    1930:	e1a03002 	mov	r3, r2
    1934:	e1a03103 	lsl	r3, r3, #2
    1938:	e0833002 	add	r3, r3, r2
    193c:	e1a03083 	lsl	r3, r3, #1
    1940:	e1a01003 	mov	r1, r3
    1944:	e51b3010 	ldr	r3, [fp, #-16]
    1948:	e2832001 	add	r2, r3, #1
    194c:	e50b2010 	str	r2, [fp, #-16]
    1950:	e5d33000 	ldrb	r3, [r3]
    1954:	e0813003 	add	r3, r1, r3
    1958:	e2433030 	sub	r3, r3, #48	@ 0x30
    195c:	e50b3008 	str	r3, [fp, #-8]
    1960:	e51b3010 	ldr	r3, [fp, #-16]
    1964:	e5d33000 	ldrb	r3, [r3]
    1968:	e353002f 	cmp	r3, #47	@ 0x2f
    196c:	9a000003 	bls	1980 <atoi+0x70>
    1970:	e51b3010 	ldr	r3, [fp, #-16]
    1974:	e5d33000 	ldrb	r3, [r3]
    1978:	e3530039 	cmp	r3, #57	@ 0x39
    197c:	9affffea 	bls	192c <atoi+0x1c>
    1980:	e51b3008 	ldr	r3, [fp, #-8]
    1984:	e1a00003 	mov	r0, r3
    1988:	e28bd000 	add	sp, fp, #0
    198c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1990:	e12fff1e 	bx	lr

00001994 <memmove>:
    1994:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1998:	e28db000 	add	fp, sp, #0
    199c:	e24dd01c 	sub	sp, sp, #28
    19a0:	e50b0010 	str	r0, [fp, #-16]
    19a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    19a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    19ac:	e51b3010 	ldr	r3, [fp, #-16]
    19b0:	e50b3008 	str	r3, [fp, #-8]
    19b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    19b8:	e50b300c 	str	r3, [fp, #-12]
    19bc:	ea000007 	b	19e0 <memmove+0x4c>
    19c0:	e51b200c 	ldr	r2, [fp, #-12]
    19c4:	e2823001 	add	r3, r2, #1
    19c8:	e50b300c 	str	r3, [fp, #-12]
    19cc:	e51b3008 	ldr	r3, [fp, #-8]
    19d0:	e2831001 	add	r1, r3, #1
    19d4:	e50b1008 	str	r1, [fp, #-8]
    19d8:	e5d22000 	ldrb	r2, [r2]
    19dc:	e5c32000 	strb	r2, [r3]
    19e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    19e4:	e2432001 	sub	r2, r3, #1
    19e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    19ec:	e3530000 	cmp	r3, #0
    19f0:	cafffff2 	bgt	19c0 <memmove+0x2c>
    19f4:	e51b3010 	ldr	r3, [fp, #-16]
    19f8:	e1a00003 	mov	r0, r3
    19fc:	e28bd000 	add	sp, fp, #0
    1a00:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1a04:	e12fff1e 	bx	lr

00001a08 <strncmp>:
    1a08:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1a0c:	e28db000 	add	fp, sp, #0
    1a10:	e24dd014 	sub	sp, sp, #20
    1a14:	e50b0008 	str	r0, [fp, #-8]
    1a18:	e50b100c 	str	r1, [fp, #-12]
    1a1c:	e50b2010 	str	r2, [fp, #-16]
    1a20:	ea000008 	b	1a48 <strncmp+0x40>
    1a24:	e51b3008 	ldr	r3, [fp, #-8]
    1a28:	e2833001 	add	r3, r3, #1
    1a2c:	e50b3008 	str	r3, [fp, #-8]
    1a30:	e51b300c 	ldr	r3, [fp, #-12]
    1a34:	e2833001 	add	r3, r3, #1
    1a38:	e50b300c 	str	r3, [fp, #-12]
    1a3c:	e51b3010 	ldr	r3, [fp, #-16]
    1a40:	e2433001 	sub	r3, r3, #1
    1a44:	e50b3010 	str	r3, [fp, #-16]
    1a48:	e51b3010 	ldr	r3, [fp, #-16]
    1a4c:	e3530000 	cmp	r3, #0
    1a50:	da00000d 	ble	1a8c <strncmp+0x84>
    1a54:	e51b3008 	ldr	r3, [fp, #-8]
    1a58:	e5d33000 	ldrb	r3, [r3]
    1a5c:	e3530000 	cmp	r3, #0
    1a60:	0a000009 	beq	1a8c <strncmp+0x84>
    1a64:	e51b300c 	ldr	r3, [fp, #-12]
    1a68:	e5d33000 	ldrb	r3, [r3]
    1a6c:	e3530000 	cmp	r3, #0
    1a70:	0a000005 	beq	1a8c <strncmp+0x84>
    1a74:	e51b3008 	ldr	r3, [fp, #-8]
    1a78:	e5d32000 	ldrb	r2, [r3]
    1a7c:	e51b300c 	ldr	r3, [fp, #-12]
    1a80:	e5d33000 	ldrb	r3, [r3]
    1a84:	e1520003 	cmp	r2, r3
    1a88:	0affffe5 	beq	1a24 <strncmp+0x1c>
    1a8c:	e51b3010 	ldr	r3, [fp, #-16]
    1a90:	e3530000 	cmp	r3, #0
    1a94:	1a000001 	bne	1aa0 <strncmp+0x98>
    1a98:	e3a03000 	mov	r3, #0
    1a9c:	ea000005 	b	1ab8 <strncmp+0xb0>
    1aa0:	e51b3008 	ldr	r3, [fp, #-8]
    1aa4:	e5d33000 	ldrb	r3, [r3]
    1aa8:	e1a02003 	mov	r2, r3
    1aac:	e51b300c 	ldr	r3, [fp, #-12]
    1ab0:	e5d33000 	ldrb	r3, [r3]
    1ab4:	e0423003 	sub	r3, r2, r3
    1ab8:	e1a00003 	mov	r0, r3
    1abc:	e28bd000 	add	sp, fp, #0
    1ac0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1ac4:	e12fff1e 	bx	lr

00001ac8 <strncpy>:
    1ac8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1acc:	e28db000 	add	fp, sp, #0
    1ad0:	e24dd01c 	sub	sp, sp, #28
    1ad4:	e50b0010 	str	r0, [fp, #-16]
    1ad8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1adc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1ae0:	e51b3010 	ldr	r3, [fp, #-16]
    1ae4:	e50b3008 	str	r3, [fp, #-8]
    1ae8:	ea00000a 	b	1b18 <strncpy+0x50>
    1aec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1af0:	e2823001 	add	r3, r2, #1
    1af4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1af8:	e51b3008 	ldr	r3, [fp, #-8]
    1afc:	e2831001 	add	r1, r3, #1
    1b00:	e50b1008 	str	r1, [fp, #-8]
    1b04:	e5d22000 	ldrb	r2, [r2]
    1b08:	e5c32000 	strb	r2, [r3]
    1b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b10:	e2433001 	sub	r3, r3, #1
    1b14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b1c:	e3530000 	cmp	r3, #0
    1b20:	da00000c 	ble	1b58 <strncpy+0x90>
    1b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1b28:	e5d33000 	ldrb	r3, [r3]
    1b2c:	e3530000 	cmp	r3, #0
    1b30:	1affffed 	bne	1aec <strncpy+0x24>
    1b34:	ea000007 	b	1b58 <strncpy+0x90>
    1b38:	e51b3008 	ldr	r3, [fp, #-8]
    1b3c:	e2832001 	add	r2, r3, #1
    1b40:	e50b2008 	str	r2, [fp, #-8]
    1b44:	e3a02000 	mov	r2, #0
    1b48:	e5c32000 	strb	r2, [r3]
    1b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b50:	e2433001 	sub	r3, r3, #1
    1b54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b5c:	e3530000 	cmp	r3, #0
    1b60:	cafffff4 	bgt	1b38 <strncpy+0x70>
    1b64:	e51b3010 	ldr	r3, [fp, #-16]
    1b68:	e1a00003 	mov	r0, r3
    1b6c:	e28bd000 	add	sp, fp, #0
    1b70:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1b74:	e12fff1e 	bx	lr

00001b78 <xchg>:
    1b78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1b7c:	e28db000 	add	fp, sp, #0
    1b80:	e24dd014 	sub	sp, sp, #20
    1b84:	e50b0010 	str	r0, [fp, #-16]
    1b88:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1b8c:	e51b2010 	ldr	r2, [fp, #-16]
    1b90:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1b94:	e1023091 	swp	r3, r1, [r2]
    1b98:	e50b3008 	str	r3, [fp, #-8]
    1b9c:	e51b3008 	ldr	r3, [fp, #-8]
    1ba0:	e1a00003 	mov	r0, r3
    1ba4:	e28bd000 	add	sp, fp, #0
    1ba8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1bac:	e12fff1e 	bx	lr

00001bb0 <initiateLock>:
    1bb0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1bb4:	e28db000 	add	fp, sp, #0
    1bb8:	e24dd00c 	sub	sp, sp, #12
    1bbc:	e50b0008 	str	r0, [fp, #-8]
    1bc0:	e51b3008 	ldr	r3, [fp, #-8]
    1bc4:	e3a02000 	mov	r2, #0
    1bc8:	e5832000 	str	r2, [r3]
    1bcc:	e51b3008 	ldr	r3, [fp, #-8]
    1bd0:	e3a02001 	mov	r2, #1
    1bd4:	e5832004 	str	r2, [r3, #4]
    1bd8:	e1a00000 	nop			@ (mov r0, r0)
    1bdc:	e28bd000 	add	sp, fp, #0
    1be0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1be4:	e12fff1e 	bx	lr

00001be8 <acquireLock>:
    1be8:	e92d4800 	push	{fp, lr}
    1bec:	e28db004 	add	fp, sp, #4
    1bf0:	e24dd008 	sub	sp, sp, #8
    1bf4:	e50b0008 	str	r0, [fp, #-8]
    1bf8:	e51b3008 	ldr	r3, [fp, #-8]
    1bfc:	e5933004 	ldr	r3, [r3, #4]
    1c00:	e3530000 	cmp	r3, #0
    1c04:	0a000008 	beq	1c2c <acquireLock+0x44>
    1c08:	e1a00000 	nop			@ (mov r0, r0)
    1c0c:	e51b3008 	ldr	r3, [fp, #-8]
    1c10:	e3a01001 	mov	r1, #1
    1c14:	e1a00003 	mov	r0, r3
    1c18:	ebffffd6 	bl	1b78 <xchg>
    1c1c:	e1a03000 	mov	r3, r0
    1c20:	e3530000 	cmp	r3, #0
    1c24:	1afffff8 	bne	1c0c <acquireLock+0x24>
    1c28:	ea000000 	b	1c30 <acquireLock+0x48>
    1c2c:	e1a00000 	nop			@ (mov r0, r0)
    1c30:	e24bd004 	sub	sp, fp, #4
    1c34:	e8bd8800 	pop	{fp, pc}

00001c38 <releaseLock>:
    1c38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1c3c:	e28db000 	add	fp, sp, #0
    1c40:	e24dd00c 	sub	sp, sp, #12
    1c44:	e50b0008 	str	r0, [fp, #-8]
    1c48:	e51b3008 	ldr	r3, [fp, #-8]
    1c4c:	e5933004 	ldr	r3, [r3, #4]
    1c50:	e3530000 	cmp	r3, #0
    1c54:	0a000006 	beq	1c74 <releaseLock+0x3c>
    1c58:	e51b3008 	ldr	r3, [fp, #-8]
    1c5c:	e5933000 	ldr	r3, [r3]
    1c60:	e3530001 	cmp	r3, #1
    1c64:	1a000002 	bne	1c74 <releaseLock+0x3c>
    1c68:	e51b3008 	ldr	r3, [fp, #-8]
    1c6c:	e3a02000 	mov	r2, #0
    1c70:	e5832000 	str	r2, [r3]
    1c74:	e1a00000 	nop			@ (mov r0, r0)
    1c78:	e28bd000 	add	sp, fp, #0
    1c7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1c80:	e12fff1e 	bx	lr

00001c84 <initiateCondVar>:
    1c84:	e92d4800 	push	{fp, lr}
    1c88:	e28db004 	add	fp, sp, #4
    1c8c:	e24dd008 	sub	sp, sp, #8
    1c90:	e50b0008 	str	r0, [fp, #-8]
    1c94:	eb0001b8 	bl	237c <getChannel>
    1c98:	e1a02000 	mov	r2, r0
    1c9c:	e51b3008 	ldr	r3, [fp, #-8]
    1ca0:	e5832000 	str	r2, [r3]
    1ca4:	e51b3008 	ldr	r3, [fp, #-8]
    1ca8:	e3a02001 	mov	r2, #1
    1cac:	e5832004 	str	r2, [r3, #4]
    1cb0:	e1a00000 	nop			@ (mov r0, r0)
    1cb4:	e24bd004 	sub	sp, fp, #4
    1cb8:	e8bd8800 	pop	{fp, pc}

00001cbc <condWait>:
    1cbc:	e92d4800 	push	{fp, lr}
    1cc0:	e28db004 	add	fp, sp, #4
    1cc4:	e24dd008 	sub	sp, sp, #8
    1cc8:	e50b0008 	str	r0, [fp, #-8]
    1ccc:	e50b100c 	str	r1, [fp, #-12]
    1cd0:	e51b3008 	ldr	r3, [fp, #-8]
    1cd4:	e5933004 	ldr	r3, [r3, #4]
    1cd8:	e3530000 	cmp	r3, #0
    1cdc:	0a00000c 	beq	1d14 <condWait+0x58>
    1ce0:	e51b300c 	ldr	r3, [fp, #-12]
    1ce4:	e5933004 	ldr	r3, [r3, #4]
    1ce8:	e3530000 	cmp	r3, #0
    1cec:	0a000008 	beq	1d14 <condWait+0x58>
    1cf0:	e51b000c 	ldr	r0, [fp, #-12]
    1cf4:	ebffffcf 	bl	1c38 <releaseLock>
    1cf8:	e51b3008 	ldr	r3, [fp, #-8]
    1cfc:	e5933000 	ldr	r3, [r3]
    1d00:	e1a00003 	mov	r0, r3
    1d04:	eb000193 	bl	2358 <sleepChan>
    1d08:	e51b000c 	ldr	r0, [fp, #-12]
    1d0c:	ebffffb5 	bl	1be8 <acquireLock>
    1d10:	ea000000 	b	1d18 <condWait+0x5c>
    1d14:	e1a00000 	nop			@ (mov r0, r0)
    1d18:	e24bd004 	sub	sp, fp, #4
    1d1c:	e8bd8800 	pop	{fp, pc}

00001d20 <broadcast>:
    1d20:	e92d4800 	push	{fp, lr}
    1d24:	e28db004 	add	fp, sp, #4
    1d28:	e24dd008 	sub	sp, sp, #8
    1d2c:	e50b0008 	str	r0, [fp, #-8]
    1d30:	e51b3008 	ldr	r3, [fp, #-8]
    1d34:	e5933004 	ldr	r3, [r3, #4]
    1d38:	e3530000 	cmp	r3, #0
    1d3c:	0a000004 	beq	1d54 <broadcast+0x34>
    1d40:	e51b3008 	ldr	r3, [fp, #-8]
    1d44:	e5933000 	ldr	r3, [r3]
    1d48:	e1a00003 	mov	r0, r3
    1d4c:	eb000193 	bl	23a0 <sigChan>
    1d50:	ea000000 	b	1d58 <broadcast+0x38>
    1d54:	e1a00000 	nop			@ (mov r0, r0)
    1d58:	e24bd004 	sub	sp, fp, #4
    1d5c:	e8bd8800 	pop	{fp, pc}

00001d60 <signal>:
    1d60:	e92d4800 	push	{fp, lr}
    1d64:	e28db004 	add	fp, sp, #4
    1d68:	e24dd008 	sub	sp, sp, #8
    1d6c:	e50b0008 	str	r0, [fp, #-8]
    1d70:	e51b3008 	ldr	r3, [fp, #-8]
    1d74:	e5933004 	ldr	r3, [r3, #4]
    1d78:	e3530000 	cmp	r3, #0
    1d7c:	0a000004 	beq	1d94 <signal+0x34>
    1d80:	e51b3008 	ldr	r3, [fp, #-8]
    1d84:	e5933000 	ldr	r3, [r3]
    1d88:	e1a00003 	mov	r0, r3
    1d8c:	eb00018c 	bl	23c4 <sigOneChan>
    1d90:	ea000000 	b	1d98 <signal+0x38>
    1d94:	e1a00000 	nop			@ (mov r0, r0)
    1d98:	e24bd004 	sub	sp, fp, #4
    1d9c:	e8bd8800 	pop	{fp, pc}

00001da0 <semInit>:
    1da0:	e92d4800 	push	{fp, lr}
    1da4:	e28db004 	add	fp, sp, #4
    1da8:	e24dd008 	sub	sp, sp, #8
    1dac:	e50b0008 	str	r0, [fp, #-8]
    1db0:	e50b100c 	str	r1, [fp, #-12]
    1db4:	e51b3008 	ldr	r3, [fp, #-8]
    1db8:	e2833004 	add	r3, r3, #4
    1dbc:	e1a00003 	mov	r0, r3
    1dc0:	ebffff7a 	bl	1bb0 <initiateLock>
    1dc4:	e51b3008 	ldr	r3, [fp, #-8]
    1dc8:	e283300c 	add	r3, r3, #12
    1dcc:	e1a00003 	mov	r0, r3
    1dd0:	ebffffab 	bl	1c84 <initiateCondVar>
    1dd4:	e51b3008 	ldr	r3, [fp, #-8]
    1dd8:	e51b200c 	ldr	r2, [fp, #-12]
    1ddc:	e5832000 	str	r2, [r3]
    1de0:	e51b3008 	ldr	r3, [fp, #-8]
    1de4:	e3a02001 	mov	r2, #1
    1de8:	e5832014 	str	r2, [r3, #20]
    1dec:	e1a00000 	nop			@ (mov r0, r0)
    1df0:	e24bd004 	sub	sp, fp, #4
    1df4:	e8bd8800 	pop	{fp, pc}

00001df8 <semUp>:
    1df8:	e92d4800 	push	{fp, lr}
    1dfc:	e28db004 	add	fp, sp, #4
    1e00:	e24dd008 	sub	sp, sp, #8
    1e04:	e50b0008 	str	r0, [fp, #-8]
    1e08:	e51b3008 	ldr	r3, [fp, #-8]
    1e0c:	e2833004 	add	r3, r3, #4
    1e10:	e1a00003 	mov	r0, r3
    1e14:	ebffff73 	bl	1be8 <acquireLock>
    1e18:	e51b3008 	ldr	r3, [fp, #-8]
    1e1c:	e5933000 	ldr	r3, [r3]
    1e20:	e2832001 	add	r2, r3, #1
    1e24:	e51b3008 	ldr	r3, [fp, #-8]
    1e28:	e5832000 	str	r2, [r3]
    1e2c:	e51b3008 	ldr	r3, [fp, #-8]
    1e30:	e283300c 	add	r3, r3, #12
    1e34:	e1a00003 	mov	r0, r3
    1e38:	ebffffc8 	bl	1d60 <signal>
    1e3c:	e51b3008 	ldr	r3, [fp, #-8]
    1e40:	e2833004 	add	r3, r3, #4
    1e44:	e1a00003 	mov	r0, r3
    1e48:	ebffff7a 	bl	1c38 <releaseLock>
    1e4c:	e1a00000 	nop			@ (mov r0, r0)
    1e50:	e24bd004 	sub	sp, fp, #4
    1e54:	e8bd8800 	pop	{fp, pc}

00001e58 <semDown>:
    1e58:	e92d4800 	push	{fp, lr}
    1e5c:	e28db004 	add	fp, sp, #4
    1e60:	e24dd008 	sub	sp, sp, #8
    1e64:	e50b0008 	str	r0, [fp, #-8]
    1e68:	e51b3008 	ldr	r3, [fp, #-8]
    1e6c:	e2833004 	add	r3, r3, #4
    1e70:	e1a00003 	mov	r0, r3
    1e74:	ebffff5b 	bl	1be8 <acquireLock>
    1e78:	e51b3008 	ldr	r3, [fp, #-8]
    1e7c:	e5933000 	ldr	r3, [r3]
    1e80:	e2432001 	sub	r2, r3, #1
    1e84:	e51b3008 	ldr	r3, [fp, #-8]
    1e88:	e5832000 	str	r2, [r3]
    1e8c:	ea000006 	b	1eac <semDown+0x54>
    1e90:	e51b3008 	ldr	r3, [fp, #-8]
    1e94:	e283200c 	add	r2, r3, #12
    1e98:	e51b3008 	ldr	r3, [fp, #-8]
    1e9c:	e2833004 	add	r3, r3, #4
    1ea0:	e1a01003 	mov	r1, r3
    1ea4:	e1a00002 	mov	r0, r2
    1ea8:	ebffff83 	bl	1cbc <condWait>
    1eac:	e51b3008 	ldr	r3, [fp, #-8]
    1eb0:	e5933000 	ldr	r3, [r3]
    1eb4:	e3530000 	cmp	r3, #0
    1eb8:	bafffff4 	blt	1e90 <semDown+0x38>
    1ebc:	e51b3008 	ldr	r3, [fp, #-8]
    1ec0:	e2833004 	add	r3, r3, #4
    1ec4:	e1a00003 	mov	r0, r3
    1ec8:	ebffff5a 	bl	1c38 <releaseLock>
    1ecc:	e1a00000 	nop			@ (mov r0, r0)
    1ed0:	e24bd004 	sub	sp, fp, #4
    1ed4:	e8bd8800 	pop	{fp, pc}

00001ed8 <fork>:
    1ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1edc:	e1a04003 	mov	r4, r3
    1ee0:	e1a03002 	mov	r3, r2
    1ee4:	e1a02001 	mov	r2, r1
    1ee8:	e1a01000 	mov	r1, r0
    1eec:	e3a00001 	mov	r0, #1
    1ef0:	ef000000 	svc	0x00000000
    1ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1ef8:	e12fff1e 	bx	lr

00001efc <exit>:
    1efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f00:	e1a04003 	mov	r4, r3
    1f04:	e1a03002 	mov	r3, r2
    1f08:	e1a02001 	mov	r2, r1
    1f0c:	e1a01000 	mov	r1, r0
    1f10:	e3a00002 	mov	r0, #2
    1f14:	ef000000 	svc	0x00000000
    1f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f1c:	e12fff1e 	bx	lr

00001f20 <wait>:
    1f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f24:	e1a04003 	mov	r4, r3
    1f28:	e1a03002 	mov	r3, r2
    1f2c:	e1a02001 	mov	r2, r1
    1f30:	e1a01000 	mov	r1, r0
    1f34:	e3a00003 	mov	r0, #3
    1f38:	ef000000 	svc	0x00000000
    1f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f40:	e12fff1e 	bx	lr

00001f44 <pipe>:
    1f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f48:	e1a04003 	mov	r4, r3
    1f4c:	e1a03002 	mov	r3, r2
    1f50:	e1a02001 	mov	r2, r1
    1f54:	e1a01000 	mov	r1, r0
    1f58:	e3a00004 	mov	r0, #4
    1f5c:	ef000000 	svc	0x00000000
    1f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f64:	e12fff1e 	bx	lr

00001f68 <read>:
    1f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f6c:	e1a04003 	mov	r4, r3
    1f70:	e1a03002 	mov	r3, r2
    1f74:	e1a02001 	mov	r2, r1
    1f78:	e1a01000 	mov	r1, r0
    1f7c:	e3a00005 	mov	r0, #5
    1f80:	ef000000 	svc	0x00000000
    1f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1f88:	e12fff1e 	bx	lr

00001f8c <write>:
    1f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1f90:	e1a04003 	mov	r4, r3
    1f94:	e1a03002 	mov	r3, r2
    1f98:	e1a02001 	mov	r2, r1
    1f9c:	e1a01000 	mov	r1, r0
    1fa0:	e3a00010 	mov	r0, #16
    1fa4:	ef000000 	svc	0x00000000
    1fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1fac:	e12fff1e 	bx	lr

00001fb0 <close>:
    1fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1fb4:	e1a04003 	mov	r4, r3
    1fb8:	e1a03002 	mov	r3, r2
    1fbc:	e1a02001 	mov	r2, r1
    1fc0:	e1a01000 	mov	r1, r0
    1fc4:	e3a00015 	mov	r0, #21
    1fc8:	ef000000 	svc	0x00000000
    1fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1fd0:	e12fff1e 	bx	lr

00001fd4 <kill>:
    1fd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1fd8:	e1a04003 	mov	r4, r3
    1fdc:	e1a03002 	mov	r3, r2
    1fe0:	e1a02001 	mov	r2, r1
    1fe4:	e1a01000 	mov	r1, r0
    1fe8:	e3a00006 	mov	r0, #6
    1fec:	ef000000 	svc	0x00000000
    1ff0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1ff4:	e12fff1e 	bx	lr

00001ff8 <exec>:
    1ff8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1ffc:	e1a04003 	mov	r4, r3
    2000:	e1a03002 	mov	r3, r2
    2004:	e1a02001 	mov	r2, r1
    2008:	e1a01000 	mov	r1, r0
    200c:	e3a00007 	mov	r0, #7
    2010:	ef000000 	svc	0x00000000
    2014:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2018:	e12fff1e 	bx	lr

0000201c <open>:
    201c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2020:	e1a04003 	mov	r4, r3
    2024:	e1a03002 	mov	r3, r2
    2028:	e1a02001 	mov	r2, r1
    202c:	e1a01000 	mov	r1, r0
    2030:	e3a0000f 	mov	r0, #15
    2034:	ef000000 	svc	0x00000000
    2038:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    203c:	e12fff1e 	bx	lr

00002040 <mknod>:
    2040:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2044:	e1a04003 	mov	r4, r3
    2048:	e1a03002 	mov	r3, r2
    204c:	e1a02001 	mov	r2, r1
    2050:	e1a01000 	mov	r1, r0
    2054:	e3a00011 	mov	r0, #17
    2058:	ef000000 	svc	0x00000000
    205c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2060:	e12fff1e 	bx	lr

00002064 <unlink>:
    2064:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2068:	e1a04003 	mov	r4, r3
    206c:	e1a03002 	mov	r3, r2
    2070:	e1a02001 	mov	r2, r1
    2074:	e1a01000 	mov	r1, r0
    2078:	e3a00012 	mov	r0, #18
    207c:	ef000000 	svc	0x00000000
    2080:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2084:	e12fff1e 	bx	lr

00002088 <fstat>:
    2088:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    208c:	e1a04003 	mov	r4, r3
    2090:	e1a03002 	mov	r3, r2
    2094:	e1a02001 	mov	r2, r1
    2098:	e1a01000 	mov	r1, r0
    209c:	e3a00008 	mov	r0, #8
    20a0:	ef000000 	svc	0x00000000
    20a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20a8:	e12fff1e 	bx	lr

000020ac <link>:
    20ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20b0:	e1a04003 	mov	r4, r3
    20b4:	e1a03002 	mov	r3, r2
    20b8:	e1a02001 	mov	r2, r1
    20bc:	e1a01000 	mov	r1, r0
    20c0:	e3a00013 	mov	r0, #19
    20c4:	ef000000 	svc	0x00000000
    20c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20cc:	e12fff1e 	bx	lr

000020d0 <mkdir>:
    20d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20d4:	e1a04003 	mov	r4, r3
    20d8:	e1a03002 	mov	r3, r2
    20dc:	e1a02001 	mov	r2, r1
    20e0:	e1a01000 	mov	r1, r0
    20e4:	e3a00014 	mov	r0, #20
    20e8:	ef000000 	svc	0x00000000
    20ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20f0:	e12fff1e 	bx	lr

000020f4 <chdir>:
    20f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20f8:	e1a04003 	mov	r4, r3
    20fc:	e1a03002 	mov	r3, r2
    2100:	e1a02001 	mov	r2, r1
    2104:	e1a01000 	mov	r1, r0
    2108:	e3a00009 	mov	r0, #9
    210c:	ef000000 	svc	0x00000000
    2110:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2114:	e12fff1e 	bx	lr

00002118 <dup>:
    2118:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    211c:	e1a04003 	mov	r4, r3
    2120:	e1a03002 	mov	r3, r2
    2124:	e1a02001 	mov	r2, r1
    2128:	e1a01000 	mov	r1, r0
    212c:	e3a0000a 	mov	r0, #10
    2130:	ef000000 	svc	0x00000000
    2134:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2138:	e12fff1e 	bx	lr

0000213c <getpid>:
    213c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2140:	e1a04003 	mov	r4, r3
    2144:	e1a03002 	mov	r3, r2
    2148:	e1a02001 	mov	r2, r1
    214c:	e1a01000 	mov	r1, r0
    2150:	e3a0000b 	mov	r0, #11
    2154:	ef000000 	svc	0x00000000
    2158:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    215c:	e12fff1e 	bx	lr

00002160 <sbrk>:
    2160:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2164:	e1a04003 	mov	r4, r3
    2168:	e1a03002 	mov	r3, r2
    216c:	e1a02001 	mov	r2, r1
    2170:	e1a01000 	mov	r1, r0
    2174:	e3a0000c 	mov	r0, #12
    2178:	ef000000 	svc	0x00000000
    217c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2180:	e12fff1e 	bx	lr

00002184 <sleep>:
    2184:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2188:	e1a04003 	mov	r4, r3
    218c:	e1a03002 	mov	r3, r2
    2190:	e1a02001 	mov	r2, r1
    2194:	e1a01000 	mov	r1, r0
    2198:	e3a0000d 	mov	r0, #13
    219c:	ef000000 	svc	0x00000000
    21a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21a4:	e12fff1e 	bx	lr

000021a8 <uptime>:
    21a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21ac:	e1a04003 	mov	r4, r3
    21b0:	e1a03002 	mov	r3, r2
    21b4:	e1a02001 	mov	r2, r1
    21b8:	e1a01000 	mov	r1, r0
    21bc:	e3a0000e 	mov	r0, #14
    21c0:	ef000000 	svc	0x00000000
    21c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21c8:	e12fff1e 	bx	lr

000021cc <proclist>:
    21cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21d0:	e1a04003 	mov	r4, r3
    21d4:	e1a03002 	mov	r3, r2
    21d8:	e1a02001 	mov	r2, r1
    21dc:	e1a01000 	mov	r1, r0
    21e0:	e3a00016 	mov	r0, #22
    21e4:	ef000000 	svc	0x00000000
    21e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21ec:	e12fff1e 	bx	lr

000021f0 <settickets>:
    21f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21f4:	e1a04003 	mov	r4, r3
    21f8:	e1a03002 	mov	r3, r2
    21fc:	e1a02001 	mov	r2, r1
    2200:	e1a01000 	mov	r1, r0
    2204:	e3a00017 	mov	r0, #23
    2208:	ef000000 	svc	0x00000000
    220c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2210:	e12fff1e 	bx	lr

00002214 <srand>:
    2214:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2218:	e1a04003 	mov	r4, r3
    221c:	e1a03002 	mov	r3, r2
    2220:	e1a02001 	mov	r2, r1
    2224:	e1a01000 	mov	r1, r0
    2228:	e3a00018 	mov	r0, #24
    222c:	ef000000 	svc	0x00000000
    2230:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2234:	e12fff1e 	bx	lr

00002238 <getpinfo>:
    2238:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    223c:	e1a04003 	mov	r4, r3
    2240:	e1a03002 	mov	r3, r2
    2244:	e1a02001 	mov	r2, r1
    2248:	e1a01000 	mov	r1, r0
    224c:	e3a00019 	mov	r0, #25
    2250:	ef000000 	svc	0x00000000
    2254:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2258:	e12fff1e 	bx	lr

0000225c <print_pt>:
    225c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2260:	e1a04003 	mov	r4, r3
    2264:	e1a03002 	mov	r3, r2
    2268:	e1a02001 	mov	r2, r1
    226c:	e1a01000 	mov	r1, r0
    2270:	e3a0001f 	mov	r0, #31
    2274:	ef000000 	svc	0x00000000
    2278:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    227c:	e12fff1e 	bx	lr

00002280 <thread_create>:
    2280:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2284:	e1a04003 	mov	r4, r3
    2288:	e1a03002 	mov	r3, r2
    228c:	e1a02001 	mov	r2, r1
    2290:	e1a01000 	mov	r1, r0
    2294:	e3a00020 	mov	r0, #32
    2298:	ef000000 	svc	0x00000000
    229c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22a0:	e12fff1e 	bx	lr

000022a4 <thread_exit>:
    22a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22a8:	e1a04003 	mov	r4, r3
    22ac:	e1a03002 	mov	r3, r2
    22b0:	e1a02001 	mov	r2, r1
    22b4:	e1a01000 	mov	r1, r0
    22b8:	e3a00021 	mov	r0, #33	@ 0x21
    22bc:	ef000000 	svc	0x00000000
    22c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22c4:	e12fff1e 	bx	lr

000022c8 <thread_join>:
    22c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22cc:	e1a04003 	mov	r4, r3
    22d0:	e1a03002 	mov	r3, r2
    22d4:	e1a02001 	mov	r2, r1
    22d8:	e1a01000 	mov	r1, r0
    22dc:	e3a00022 	mov	r0, #34	@ 0x22
    22e0:	ef000000 	svc	0x00000000
    22e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22e8:	e12fff1e 	bx	lr

000022ec <waitpid>:
    22ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22f0:	e1a04003 	mov	r4, r3
    22f4:	e1a03002 	mov	r3, r2
    22f8:	e1a02001 	mov	r2, r1
    22fc:	e1a01000 	mov	r1, r0
    2300:	e3a00023 	mov	r0, #35	@ 0x23
    2304:	ef000000 	svc	0x00000000
    2308:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    230c:	e12fff1e 	bx	lr

00002310 <barrier_init>:
    2310:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2314:	e1a04003 	mov	r4, r3
    2318:	e1a03002 	mov	r3, r2
    231c:	e1a02001 	mov	r2, r1
    2320:	e1a01000 	mov	r1, r0
    2324:	e3a00024 	mov	r0, #36	@ 0x24
    2328:	ef000000 	svc	0x00000000
    232c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2330:	e12fff1e 	bx	lr

00002334 <barrier_check>:
    2334:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2338:	e1a04003 	mov	r4, r3
    233c:	e1a03002 	mov	r3, r2
    2340:	e1a02001 	mov	r2, r1
    2344:	e1a01000 	mov	r1, r0
    2348:	e3a00025 	mov	r0, #37	@ 0x25
    234c:	ef000000 	svc	0x00000000
    2350:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2354:	e12fff1e 	bx	lr

00002358 <sleepChan>:
    2358:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    235c:	e1a04003 	mov	r4, r3
    2360:	e1a03002 	mov	r3, r2
    2364:	e1a02001 	mov	r2, r1
    2368:	e1a01000 	mov	r1, r0
    236c:	e3a00026 	mov	r0, #38	@ 0x26
    2370:	ef000000 	svc	0x00000000
    2374:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2378:	e12fff1e 	bx	lr

0000237c <getChannel>:
    237c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2380:	e1a04003 	mov	r4, r3
    2384:	e1a03002 	mov	r3, r2
    2388:	e1a02001 	mov	r2, r1
    238c:	e1a01000 	mov	r1, r0
    2390:	e3a00027 	mov	r0, #39	@ 0x27
    2394:	ef000000 	svc	0x00000000
    2398:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    239c:	e12fff1e 	bx	lr

000023a0 <sigChan>:
    23a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23a4:	e1a04003 	mov	r4, r3
    23a8:	e1a03002 	mov	r3, r2
    23ac:	e1a02001 	mov	r2, r1
    23b0:	e1a01000 	mov	r1, r0
    23b4:	e3a00028 	mov	r0, #40	@ 0x28
    23b8:	ef000000 	svc	0x00000000
    23bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23c0:	e12fff1e 	bx	lr

000023c4 <sigOneChan>:
    23c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23c8:	e1a04003 	mov	r4, r3
    23cc:	e1a03002 	mov	r3, r2
    23d0:	e1a02001 	mov	r2, r1
    23d4:	e1a01000 	mov	r1, r0
    23d8:	e3a00029 	mov	r0, #41	@ 0x29
    23dc:	ef000000 	svc	0x00000000
    23e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23e4:	e12fff1e 	bx	lr

000023e8 <symlink>:
    23e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23ec:	e1a04003 	mov	r4, r3
    23f0:	e1a03002 	mov	r3, r2
    23f4:	e1a02001 	mov	r2, r1
    23f8:	e1a01000 	mov	r1, r0
    23fc:	e3a0002a 	mov	r0, #42	@ 0x2a
    2400:	ef000000 	svc	0x00000000
    2404:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2408:	e12fff1e 	bx	lr

0000240c <syscall>:
    240c:	ef000000 	svc	0x00000000
    2410:	e12fff1e 	bx	lr

00002414 <putc>:
    2414:	e92d4800 	push	{fp, lr}
    2418:	e28db004 	add	fp, sp, #4
    241c:	e24dd008 	sub	sp, sp, #8
    2420:	e50b0008 	str	r0, [fp, #-8]
    2424:	e1a03001 	mov	r3, r1
    2428:	e54b3009 	strb	r3, [fp, #-9]
    242c:	e24b3009 	sub	r3, fp, #9
    2430:	e3a02001 	mov	r2, #1
    2434:	e1a01003 	mov	r1, r3
    2438:	e51b0008 	ldr	r0, [fp, #-8]
    243c:	ebfffed2 	bl	1f8c <write>
    2440:	e1a00000 	nop			@ (mov r0, r0)
    2444:	e24bd004 	sub	sp, fp, #4
    2448:	e8bd8800 	pop	{fp, pc}

0000244c <printint>:
    244c:	e92d4800 	push	{fp, lr}
    2450:	e28db004 	add	fp, sp, #4
    2454:	e24dd030 	sub	sp, sp, #48	@ 0x30
    2458:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    245c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    2460:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    2464:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    2468:	e3a03000 	mov	r3, #0
    246c:	e50b300c 	str	r3, [fp, #-12]
    2470:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    2474:	e3530000 	cmp	r3, #0
    2478:	0a000008 	beq	24a0 <printint+0x54>
    247c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    2480:	e3530000 	cmp	r3, #0
    2484:	aa000005 	bge	24a0 <printint+0x54>
    2488:	e3a03001 	mov	r3, #1
    248c:	e50b300c 	str	r3, [fp, #-12]
    2490:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    2494:	e2633000 	rsb	r3, r3, #0
    2498:	e50b3010 	str	r3, [fp, #-16]
    249c:	ea000001 	b	24a8 <printint+0x5c>
    24a0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    24a4:	e50b3010 	str	r3, [fp, #-16]
    24a8:	e3a03000 	mov	r3, #0
    24ac:	e50b3008 	str	r3, [fp, #-8]
    24b0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    24b4:	e51b3010 	ldr	r3, [fp, #-16]
    24b8:	e1a01002 	mov	r1, r2
    24bc:	e1a00003 	mov	r0, r3
    24c0:	eb0001d5 	bl	2c1c <__aeabi_uidivmod>
    24c4:	e1a03001 	mov	r3, r1
    24c8:	e1a01003 	mov	r1, r3
    24cc:	e51b3008 	ldr	r3, [fp, #-8]
    24d0:	e2832001 	add	r2, r3, #1
    24d4:	e50b2008 	str	r2, [fp, #-8]
    24d8:	e59f20a0 	ldr	r2, [pc, #160]	@ 2580 <printint+0x134>
    24dc:	e7d22001 	ldrb	r2, [r2, r1]
    24e0:	e2433004 	sub	r3, r3, #4
    24e4:	e083300b 	add	r3, r3, fp
    24e8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    24ec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    24f0:	e1a01003 	mov	r1, r3
    24f4:	e51b0010 	ldr	r0, [fp, #-16]
    24f8:	eb00018a 	bl	2b28 <__udivsi3>
    24fc:	e1a03000 	mov	r3, r0
    2500:	e50b3010 	str	r3, [fp, #-16]
    2504:	e51b3010 	ldr	r3, [fp, #-16]
    2508:	e3530000 	cmp	r3, #0
    250c:	1affffe7 	bne	24b0 <printint+0x64>
    2510:	e51b300c 	ldr	r3, [fp, #-12]
    2514:	e3530000 	cmp	r3, #0
    2518:	0a00000e 	beq	2558 <printint+0x10c>
    251c:	e51b3008 	ldr	r3, [fp, #-8]
    2520:	e2832001 	add	r2, r3, #1
    2524:	e50b2008 	str	r2, [fp, #-8]
    2528:	e2433004 	sub	r3, r3, #4
    252c:	e083300b 	add	r3, r3, fp
    2530:	e3a0202d 	mov	r2, #45	@ 0x2d
    2534:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    2538:	ea000006 	b	2558 <printint+0x10c>
    253c:	e24b2020 	sub	r2, fp, #32
    2540:	e51b3008 	ldr	r3, [fp, #-8]
    2544:	e0823003 	add	r3, r2, r3
    2548:	e5d33000 	ldrb	r3, [r3]
    254c:	e1a01003 	mov	r1, r3
    2550:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    2554:	ebffffae 	bl	2414 <putc>
    2558:	e51b3008 	ldr	r3, [fp, #-8]
    255c:	e2433001 	sub	r3, r3, #1
    2560:	e50b3008 	str	r3, [fp, #-8]
    2564:	e51b3008 	ldr	r3, [fp, #-8]
    2568:	e3530000 	cmp	r3, #0
    256c:	aafffff2 	bge	253c <printint+0xf0>
    2570:	e1a00000 	nop			@ (mov r0, r0)
    2574:	e1a00000 	nop			@ (mov r0, r0)
    2578:	e24bd004 	sub	sp, fp, #4
    257c:	e8bd8800 	pop	{fp, pc}
    2580:	00002e08 	.word	0x00002e08

00002584 <printf>:
    2584:	e92d000e 	push	{r1, r2, r3}
    2588:	e92d4800 	push	{fp, lr}
    258c:	e28db004 	add	fp, sp, #4
    2590:	e24dd024 	sub	sp, sp, #36	@ 0x24
    2594:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    2598:	e3a03000 	mov	r3, #0
    259c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    25a0:	e28b3008 	add	r3, fp, #8
    25a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    25a8:	e3a03000 	mov	r3, #0
    25ac:	e50b3010 	str	r3, [fp, #-16]
    25b0:	ea000074 	b	2788 <printf+0x204>
    25b4:	e59b2004 	ldr	r2, [fp, #4]
    25b8:	e51b3010 	ldr	r3, [fp, #-16]
    25bc:	e0823003 	add	r3, r2, r3
    25c0:	e5d33000 	ldrb	r3, [r3]
    25c4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    25c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    25cc:	e3530000 	cmp	r3, #0
    25d0:	1a00000b 	bne	2604 <printf+0x80>
    25d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    25d8:	e3530025 	cmp	r3, #37	@ 0x25
    25dc:	1a000002 	bne	25ec <printf+0x68>
    25e0:	e3a03025 	mov	r3, #37	@ 0x25
    25e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    25e8:	ea000063 	b	277c <printf+0x1f8>
    25ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    25f0:	e6ef3073 	uxtb	r3, r3
    25f4:	e1a01003 	mov	r1, r3
    25f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    25fc:	ebffff84 	bl	2414 <putc>
    2600:	ea00005d 	b	277c <printf+0x1f8>
    2604:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2608:	e3530025 	cmp	r3, #37	@ 0x25
    260c:	1a00005a 	bne	277c <printf+0x1f8>
    2610:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2614:	e3530064 	cmp	r3, #100	@ 0x64
    2618:	1a00000a 	bne	2648 <printf+0xc4>
    261c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2620:	e5933000 	ldr	r3, [r3]
    2624:	e1a01003 	mov	r1, r3
    2628:	e3a03001 	mov	r3, #1
    262c:	e3a0200a 	mov	r2, #10
    2630:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2634:	ebffff84 	bl	244c <printint>
    2638:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    263c:	e2833004 	add	r3, r3, #4
    2640:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2644:	ea00004a 	b	2774 <printf+0x1f0>
    2648:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    264c:	e3530078 	cmp	r3, #120	@ 0x78
    2650:	0a000002 	beq	2660 <printf+0xdc>
    2654:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2658:	e3530070 	cmp	r3, #112	@ 0x70
    265c:	1a00000a 	bne	268c <printf+0x108>
    2660:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2664:	e5933000 	ldr	r3, [r3]
    2668:	e1a01003 	mov	r1, r3
    266c:	e3a03000 	mov	r3, #0
    2670:	e3a02010 	mov	r2, #16
    2674:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2678:	ebffff73 	bl	244c <printint>
    267c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2680:	e2833004 	add	r3, r3, #4
    2684:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2688:	ea000039 	b	2774 <printf+0x1f0>
    268c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2690:	e3530073 	cmp	r3, #115	@ 0x73
    2694:	1a000018 	bne	26fc <printf+0x178>
    2698:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    269c:	e5933000 	ldr	r3, [r3]
    26a0:	e50b300c 	str	r3, [fp, #-12]
    26a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    26a8:	e2833004 	add	r3, r3, #4
    26ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    26b0:	e51b300c 	ldr	r3, [fp, #-12]
    26b4:	e3530000 	cmp	r3, #0
    26b8:	1a00000a 	bne	26e8 <printf+0x164>
    26bc:	e59f30f4 	ldr	r3, [pc, #244]	@ 27b8 <printf+0x234>
    26c0:	e50b300c 	str	r3, [fp, #-12]
    26c4:	ea000007 	b	26e8 <printf+0x164>
    26c8:	e51b300c 	ldr	r3, [fp, #-12]
    26cc:	e5d33000 	ldrb	r3, [r3]
    26d0:	e1a01003 	mov	r1, r3
    26d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    26d8:	ebffff4d 	bl	2414 <putc>
    26dc:	e51b300c 	ldr	r3, [fp, #-12]
    26e0:	e2833001 	add	r3, r3, #1
    26e4:	e50b300c 	str	r3, [fp, #-12]
    26e8:	e51b300c 	ldr	r3, [fp, #-12]
    26ec:	e5d33000 	ldrb	r3, [r3]
    26f0:	e3530000 	cmp	r3, #0
    26f4:	1afffff3 	bne	26c8 <printf+0x144>
    26f8:	ea00001d 	b	2774 <printf+0x1f0>
    26fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2700:	e3530063 	cmp	r3, #99	@ 0x63
    2704:	1a000009 	bne	2730 <printf+0x1ac>
    2708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    270c:	e5933000 	ldr	r3, [r3]
    2710:	e6ef3073 	uxtb	r3, r3
    2714:	e1a01003 	mov	r1, r3
    2718:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    271c:	ebffff3c 	bl	2414 <putc>
    2720:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2724:	e2833004 	add	r3, r3, #4
    2728:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    272c:	ea000010 	b	2774 <printf+0x1f0>
    2730:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2734:	e3530025 	cmp	r3, #37	@ 0x25
    2738:	1a000005 	bne	2754 <printf+0x1d0>
    273c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2740:	e6ef3073 	uxtb	r3, r3
    2744:	e1a01003 	mov	r1, r3
    2748:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    274c:	ebffff30 	bl	2414 <putc>
    2750:	ea000007 	b	2774 <printf+0x1f0>
    2754:	e3a01025 	mov	r1, #37	@ 0x25
    2758:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    275c:	ebffff2c 	bl	2414 <putc>
    2760:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2764:	e6ef3073 	uxtb	r3, r3
    2768:	e1a01003 	mov	r1, r3
    276c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2770:	ebffff27 	bl	2414 <putc>
    2774:	e3a03000 	mov	r3, #0
    2778:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    277c:	e51b3010 	ldr	r3, [fp, #-16]
    2780:	e2833001 	add	r3, r3, #1
    2784:	e50b3010 	str	r3, [fp, #-16]
    2788:	e59b2004 	ldr	r2, [fp, #4]
    278c:	e51b3010 	ldr	r3, [fp, #-16]
    2790:	e0823003 	add	r3, r2, r3
    2794:	e5d33000 	ldrb	r3, [r3]
    2798:	e3530000 	cmp	r3, #0
    279c:	1affff84 	bne	25b4 <printf+0x30>
    27a0:	e1a00000 	nop			@ (mov r0, r0)
    27a4:	e1a00000 	nop			@ (mov r0, r0)
    27a8:	e24bd004 	sub	sp, fp, #4
    27ac:	e8bd4800 	pop	{fp, lr}
    27b0:	e28dd00c 	add	sp, sp, #12
    27b4:	e12fff1e 	bx	lr
    27b8:	00002dac 	.word	0x00002dac

000027bc <free>:
    27bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    27c0:	e28db000 	add	fp, sp, #0
    27c4:	e24dd014 	sub	sp, sp, #20
    27c8:	e50b0010 	str	r0, [fp, #-16]
    27cc:	e51b3010 	ldr	r3, [fp, #-16]
    27d0:	e2433008 	sub	r3, r3, #8
    27d4:	e50b300c 	str	r3, [fp, #-12]
    27d8:	e59f3154 	ldr	r3, [pc, #340]	@ 2934 <free+0x178>
    27dc:	e5933000 	ldr	r3, [r3]
    27e0:	e50b3008 	str	r3, [fp, #-8]
    27e4:	ea000010 	b	282c <free+0x70>
    27e8:	e51b3008 	ldr	r3, [fp, #-8]
    27ec:	e5933000 	ldr	r3, [r3]
    27f0:	e51b2008 	ldr	r2, [fp, #-8]
    27f4:	e1520003 	cmp	r2, r3
    27f8:	3a000008 	bcc	2820 <free+0x64>
    27fc:	e51b200c 	ldr	r2, [fp, #-12]
    2800:	e51b3008 	ldr	r3, [fp, #-8]
    2804:	e1520003 	cmp	r2, r3
    2808:	8a000010 	bhi	2850 <free+0x94>
    280c:	e51b3008 	ldr	r3, [fp, #-8]
    2810:	e5933000 	ldr	r3, [r3]
    2814:	e51b200c 	ldr	r2, [fp, #-12]
    2818:	e1520003 	cmp	r2, r3
    281c:	3a00000b 	bcc	2850 <free+0x94>
    2820:	e51b3008 	ldr	r3, [fp, #-8]
    2824:	e5933000 	ldr	r3, [r3]
    2828:	e50b3008 	str	r3, [fp, #-8]
    282c:	e51b200c 	ldr	r2, [fp, #-12]
    2830:	e51b3008 	ldr	r3, [fp, #-8]
    2834:	e1520003 	cmp	r2, r3
    2838:	9affffea 	bls	27e8 <free+0x2c>
    283c:	e51b3008 	ldr	r3, [fp, #-8]
    2840:	e5933000 	ldr	r3, [r3]
    2844:	e51b200c 	ldr	r2, [fp, #-12]
    2848:	e1520003 	cmp	r2, r3
    284c:	2affffe5 	bcs	27e8 <free+0x2c>
    2850:	e51b300c 	ldr	r3, [fp, #-12]
    2854:	e5933004 	ldr	r3, [r3, #4]
    2858:	e1a03183 	lsl	r3, r3, #3
    285c:	e51b200c 	ldr	r2, [fp, #-12]
    2860:	e0822003 	add	r2, r2, r3
    2864:	e51b3008 	ldr	r3, [fp, #-8]
    2868:	e5933000 	ldr	r3, [r3]
    286c:	e1520003 	cmp	r2, r3
    2870:	1a00000d 	bne	28ac <free+0xf0>
    2874:	e51b300c 	ldr	r3, [fp, #-12]
    2878:	e5932004 	ldr	r2, [r3, #4]
    287c:	e51b3008 	ldr	r3, [fp, #-8]
    2880:	e5933000 	ldr	r3, [r3]
    2884:	e5933004 	ldr	r3, [r3, #4]
    2888:	e0822003 	add	r2, r2, r3
    288c:	e51b300c 	ldr	r3, [fp, #-12]
    2890:	e5832004 	str	r2, [r3, #4]
    2894:	e51b3008 	ldr	r3, [fp, #-8]
    2898:	e5933000 	ldr	r3, [r3]
    289c:	e5932000 	ldr	r2, [r3]
    28a0:	e51b300c 	ldr	r3, [fp, #-12]
    28a4:	e5832000 	str	r2, [r3]
    28a8:	ea000003 	b	28bc <free+0x100>
    28ac:	e51b3008 	ldr	r3, [fp, #-8]
    28b0:	e5932000 	ldr	r2, [r3]
    28b4:	e51b300c 	ldr	r3, [fp, #-12]
    28b8:	e5832000 	str	r2, [r3]
    28bc:	e51b3008 	ldr	r3, [fp, #-8]
    28c0:	e5933004 	ldr	r3, [r3, #4]
    28c4:	e1a03183 	lsl	r3, r3, #3
    28c8:	e51b2008 	ldr	r2, [fp, #-8]
    28cc:	e0823003 	add	r3, r2, r3
    28d0:	e51b200c 	ldr	r2, [fp, #-12]
    28d4:	e1520003 	cmp	r2, r3
    28d8:	1a00000b 	bne	290c <free+0x150>
    28dc:	e51b3008 	ldr	r3, [fp, #-8]
    28e0:	e5932004 	ldr	r2, [r3, #4]
    28e4:	e51b300c 	ldr	r3, [fp, #-12]
    28e8:	e5933004 	ldr	r3, [r3, #4]
    28ec:	e0822003 	add	r2, r2, r3
    28f0:	e51b3008 	ldr	r3, [fp, #-8]
    28f4:	e5832004 	str	r2, [r3, #4]
    28f8:	e51b300c 	ldr	r3, [fp, #-12]
    28fc:	e5932000 	ldr	r2, [r3]
    2900:	e51b3008 	ldr	r3, [fp, #-8]
    2904:	e5832000 	str	r2, [r3]
    2908:	ea000002 	b	2918 <free+0x15c>
    290c:	e51b3008 	ldr	r3, [fp, #-8]
    2910:	e51b200c 	ldr	r2, [fp, #-12]
    2914:	e5832000 	str	r2, [r3]
    2918:	e59f2014 	ldr	r2, [pc, #20]	@ 2934 <free+0x178>
    291c:	e51b3008 	ldr	r3, [fp, #-8]
    2920:	e5823000 	str	r3, [r2]
    2924:	e1a00000 	nop			@ (mov r0, r0)
    2928:	e28bd000 	add	sp, fp, #0
    292c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    2930:	e12fff1e 	bx	lr
    2934:	00002e88 	.word	0x00002e88

00002938 <morecore>:
    2938:	e92d4800 	push	{fp, lr}
    293c:	e28db004 	add	fp, sp, #4
    2940:	e24dd010 	sub	sp, sp, #16
    2944:	e50b0010 	str	r0, [fp, #-16]
    2948:	e51b3010 	ldr	r3, [fp, #-16]
    294c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    2950:	2a000001 	bcs	295c <morecore+0x24>
    2954:	e3a03a01 	mov	r3, #4096	@ 0x1000
    2958:	e50b3010 	str	r3, [fp, #-16]
    295c:	e51b3010 	ldr	r3, [fp, #-16]
    2960:	e1a03183 	lsl	r3, r3, #3
    2964:	e1a00003 	mov	r0, r3
    2968:	ebfffdfc 	bl	2160 <sbrk>
    296c:	e50b0008 	str	r0, [fp, #-8]
    2970:	e51b3008 	ldr	r3, [fp, #-8]
    2974:	e3730001 	cmn	r3, #1
    2978:	1a000001 	bne	2984 <morecore+0x4c>
    297c:	e3a03000 	mov	r3, #0
    2980:	ea00000a 	b	29b0 <morecore+0x78>
    2984:	e51b3008 	ldr	r3, [fp, #-8]
    2988:	e50b300c 	str	r3, [fp, #-12]
    298c:	e51b300c 	ldr	r3, [fp, #-12]
    2990:	e51b2010 	ldr	r2, [fp, #-16]
    2994:	e5832004 	str	r2, [r3, #4]
    2998:	e51b300c 	ldr	r3, [fp, #-12]
    299c:	e2833008 	add	r3, r3, #8
    29a0:	e1a00003 	mov	r0, r3
    29a4:	ebffff84 	bl	27bc <free>
    29a8:	e59f300c 	ldr	r3, [pc, #12]	@ 29bc <morecore+0x84>
    29ac:	e5933000 	ldr	r3, [r3]
    29b0:	e1a00003 	mov	r0, r3
    29b4:	e24bd004 	sub	sp, fp, #4
    29b8:	e8bd8800 	pop	{fp, pc}
    29bc:	00002e88 	.word	0x00002e88

000029c0 <malloc>:
    29c0:	e92d4800 	push	{fp, lr}
    29c4:	e28db004 	add	fp, sp, #4
    29c8:	e24dd018 	sub	sp, sp, #24
    29cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    29d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    29d4:	e2833007 	add	r3, r3, #7
    29d8:	e1a031a3 	lsr	r3, r3, #3
    29dc:	e2833001 	add	r3, r3, #1
    29e0:	e50b3010 	str	r3, [fp, #-16]
    29e4:	e59f3134 	ldr	r3, [pc, #308]	@ 2b20 <malloc+0x160>
    29e8:	e5933000 	ldr	r3, [r3]
    29ec:	e50b300c 	str	r3, [fp, #-12]
    29f0:	e51b300c 	ldr	r3, [fp, #-12]
    29f4:	e3530000 	cmp	r3, #0
    29f8:	1a00000b 	bne	2a2c <malloc+0x6c>
    29fc:	e59f3120 	ldr	r3, [pc, #288]	@ 2b24 <malloc+0x164>
    2a00:	e50b300c 	str	r3, [fp, #-12]
    2a04:	e59f2114 	ldr	r2, [pc, #276]	@ 2b20 <malloc+0x160>
    2a08:	e51b300c 	ldr	r3, [fp, #-12]
    2a0c:	e5823000 	str	r3, [r2]
    2a10:	e59f3108 	ldr	r3, [pc, #264]	@ 2b20 <malloc+0x160>
    2a14:	e5933000 	ldr	r3, [r3]
    2a18:	e59f2104 	ldr	r2, [pc, #260]	@ 2b24 <malloc+0x164>
    2a1c:	e5823000 	str	r3, [r2]
    2a20:	e59f30fc 	ldr	r3, [pc, #252]	@ 2b24 <malloc+0x164>
    2a24:	e3a02000 	mov	r2, #0
    2a28:	e5832004 	str	r2, [r3, #4]
    2a2c:	e51b300c 	ldr	r3, [fp, #-12]
    2a30:	e5933000 	ldr	r3, [r3]
    2a34:	e50b3008 	str	r3, [fp, #-8]
    2a38:	e51b3008 	ldr	r3, [fp, #-8]
    2a3c:	e5933004 	ldr	r3, [r3, #4]
    2a40:	e51b2010 	ldr	r2, [fp, #-16]
    2a44:	e1520003 	cmp	r2, r3
    2a48:	8a00001e 	bhi	2ac8 <malloc+0x108>
    2a4c:	e51b3008 	ldr	r3, [fp, #-8]
    2a50:	e5933004 	ldr	r3, [r3, #4]
    2a54:	e51b2010 	ldr	r2, [fp, #-16]
    2a58:	e1520003 	cmp	r2, r3
    2a5c:	1a000004 	bne	2a74 <malloc+0xb4>
    2a60:	e51b3008 	ldr	r3, [fp, #-8]
    2a64:	e5932000 	ldr	r2, [r3]
    2a68:	e51b300c 	ldr	r3, [fp, #-12]
    2a6c:	e5832000 	str	r2, [r3]
    2a70:	ea00000e 	b	2ab0 <malloc+0xf0>
    2a74:	e51b3008 	ldr	r3, [fp, #-8]
    2a78:	e5932004 	ldr	r2, [r3, #4]
    2a7c:	e51b3010 	ldr	r3, [fp, #-16]
    2a80:	e0422003 	sub	r2, r2, r3
    2a84:	e51b3008 	ldr	r3, [fp, #-8]
    2a88:	e5832004 	str	r2, [r3, #4]
    2a8c:	e51b3008 	ldr	r3, [fp, #-8]
    2a90:	e5933004 	ldr	r3, [r3, #4]
    2a94:	e1a03183 	lsl	r3, r3, #3
    2a98:	e51b2008 	ldr	r2, [fp, #-8]
    2a9c:	e0823003 	add	r3, r2, r3
    2aa0:	e50b3008 	str	r3, [fp, #-8]
    2aa4:	e51b3008 	ldr	r3, [fp, #-8]
    2aa8:	e51b2010 	ldr	r2, [fp, #-16]
    2aac:	e5832004 	str	r2, [r3, #4]
    2ab0:	e59f2068 	ldr	r2, [pc, #104]	@ 2b20 <malloc+0x160>
    2ab4:	e51b300c 	ldr	r3, [fp, #-12]
    2ab8:	e5823000 	str	r3, [r2]
    2abc:	e51b3008 	ldr	r3, [fp, #-8]
    2ac0:	e2833008 	add	r3, r3, #8
    2ac4:	ea000012 	b	2b14 <malloc+0x154>
    2ac8:	e59f3050 	ldr	r3, [pc, #80]	@ 2b20 <malloc+0x160>
    2acc:	e5933000 	ldr	r3, [r3]
    2ad0:	e51b2008 	ldr	r2, [fp, #-8]
    2ad4:	e1520003 	cmp	r2, r3
    2ad8:	1a000007 	bne	2afc <malloc+0x13c>
    2adc:	e51b0010 	ldr	r0, [fp, #-16]
    2ae0:	ebffff94 	bl	2938 <morecore>
    2ae4:	e50b0008 	str	r0, [fp, #-8]
    2ae8:	e51b3008 	ldr	r3, [fp, #-8]
    2aec:	e3530000 	cmp	r3, #0
    2af0:	1a000001 	bne	2afc <malloc+0x13c>
    2af4:	e3a03000 	mov	r3, #0
    2af8:	ea000005 	b	2b14 <malloc+0x154>
    2afc:	e51b3008 	ldr	r3, [fp, #-8]
    2b00:	e50b300c 	str	r3, [fp, #-12]
    2b04:	e51b3008 	ldr	r3, [fp, #-8]
    2b08:	e5933000 	ldr	r3, [r3]
    2b0c:	e50b3008 	str	r3, [fp, #-8]
    2b10:	eaffffc8 	b	2a38 <malloc+0x78>
    2b14:	e1a00003 	mov	r0, r3
    2b18:	e24bd004 	sub	sp, fp, #4
    2b1c:	e8bd8800 	pop	{fp, pc}
    2b20:	00002e88 	.word	0x00002e88
    2b24:	00002e80 	.word	0x00002e80

00002b28 <__udivsi3>:
    2b28:	e2512001 	subs	r2, r1, #1
    2b2c:	012fff1e 	bxeq	lr
    2b30:	3a000036 	bcc	2c10 <__udivsi3+0xe8>
    2b34:	e1500001 	cmp	r0, r1
    2b38:	9a000022 	bls	2bc8 <__udivsi3+0xa0>
    2b3c:	e1110002 	tst	r1, r2
    2b40:	0a000023 	beq	2bd4 <__udivsi3+0xac>
    2b44:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2b48:	01a01181 	lsleq	r1, r1, #3
    2b4c:	03a03008 	moveq	r3, #8
    2b50:	13a03001 	movne	r3, #1
    2b54:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2b58:	31510000 	cmpcc	r1, r0
    2b5c:	31a01201 	lslcc	r1, r1, #4
    2b60:	31a03203 	lslcc	r3, r3, #4
    2b64:	3afffffa 	bcc	2b54 <__udivsi3+0x2c>
    2b68:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2b6c:	31510000 	cmpcc	r1, r0
    2b70:	31a01081 	lslcc	r1, r1, #1
    2b74:	31a03083 	lslcc	r3, r3, #1
    2b78:	3afffffa 	bcc	2b68 <__udivsi3+0x40>
    2b7c:	e3a02000 	mov	r2, #0
    2b80:	e1500001 	cmp	r0, r1
    2b84:	20400001 	subcs	r0, r0, r1
    2b88:	21822003 	orrcs	r2, r2, r3
    2b8c:	e15000a1 	cmp	r0, r1, lsr #1
    2b90:	204000a1 	subcs	r0, r0, r1, lsr #1
    2b94:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2b98:	e1500121 	cmp	r0, r1, lsr #2
    2b9c:	20400121 	subcs	r0, r0, r1, lsr #2
    2ba0:	21822123 	orrcs	r2, r2, r3, lsr #2
    2ba4:	e15001a1 	cmp	r0, r1, lsr #3
    2ba8:	204001a1 	subcs	r0, r0, r1, lsr #3
    2bac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    2bb0:	e3500000 	cmp	r0, #0
    2bb4:	11b03223 	lsrsne	r3, r3, #4
    2bb8:	11a01221 	lsrne	r1, r1, #4
    2bbc:	1affffef 	bne	2b80 <__udivsi3+0x58>
    2bc0:	e1a00002 	mov	r0, r2
    2bc4:	e12fff1e 	bx	lr
    2bc8:	03a00001 	moveq	r0, #1
    2bcc:	13a00000 	movne	r0, #0
    2bd0:	e12fff1e 	bx	lr
    2bd4:	e3510801 	cmp	r1, #65536	@ 0x10000
    2bd8:	21a01821 	lsrcs	r1, r1, #16
    2bdc:	23a02010 	movcs	r2, #16
    2be0:	33a02000 	movcc	r2, #0
    2be4:	e3510c01 	cmp	r1, #256	@ 0x100
    2be8:	21a01421 	lsrcs	r1, r1, #8
    2bec:	22822008 	addcs	r2, r2, #8
    2bf0:	e3510010 	cmp	r1, #16
    2bf4:	21a01221 	lsrcs	r1, r1, #4
    2bf8:	22822004 	addcs	r2, r2, #4
    2bfc:	e3510004 	cmp	r1, #4
    2c00:	82822003 	addhi	r2, r2, #3
    2c04:	908220a1 	addls	r2, r2, r1, lsr #1
    2c08:	e1a00230 	lsr	r0, r0, r2
    2c0c:	e12fff1e 	bx	lr
    2c10:	e3500000 	cmp	r0, #0
    2c14:	13e00000 	mvnne	r0, #0
    2c18:	ea000007 	b	2c3c <__aeabi_idiv0>

00002c1c <__aeabi_uidivmod>:
    2c1c:	e3510000 	cmp	r1, #0
    2c20:	0afffffa 	beq	2c10 <__udivsi3+0xe8>
    2c24:	e92d4003 	push	{r0, r1, lr}
    2c28:	ebffffbe 	bl	2b28 <__udivsi3>
    2c2c:	e8bd4006 	pop	{r1, r2, lr}
    2c30:	e0030092 	mul	r3, r2, r0
    2c34:	e0411003 	sub	r1, r1, r3
    2c38:	e12fff1e 	bx	lr

00002c3c <__aeabi_idiv0>:
    2c3c:	e12fff1e 	bx	lr
