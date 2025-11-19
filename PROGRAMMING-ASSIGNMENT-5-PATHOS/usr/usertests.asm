
_usertests:     file format elf32-littlearm


Disassembly of section .text:

00000000 <opentest>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f309c 	ldr	r3, [pc, #156]	@ b0 <opentest+0xb0>
      10:	e5933000 	ldr	r3, [r3]
      14:	e59f1098 	ldr	r1, [pc, #152]	@ b4 <opentest+0xb4>
      18:	e1a00003 	mov	r0, r3
      1c:	eb001463 	bl	51b0 <printf>
      20:	e3a01000 	mov	r1, #0
      24:	e59f008c 	ldr	r0, [pc, #140]	@ b8 <opentest+0xb8>
      28:	eb001306 	bl	4c48 <open>
      2c:	e50b0008 	str	r0, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e3530000 	cmp	r3, #0
      38:	aa000005 	bge	54 <opentest+0x54>
      3c:	e59f306c 	ldr	r3, [pc, #108]	@ b0 <opentest+0xb0>
      40:	e5933000 	ldr	r3, [r3]
      44:	e59f1070 	ldr	r1, [pc, #112]	@ bc <opentest+0xbc>
      48:	e1a00003 	mov	r0, r3
      4c:	eb001457 	bl	51b0 <printf>
      50:	eb0012b4 	bl	4b28 <exit>
      54:	e51b0008 	ldr	r0, [fp, #-8]
      58:	eb0012df 	bl	4bdc <close>
      5c:	e3a01000 	mov	r1, #0
      60:	e59f0058 	ldr	r0, [pc, #88]	@ c0 <opentest+0xc0>
      64:	eb0012f7 	bl	4c48 <open>
      68:	e50b0008 	str	r0, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530000 	cmp	r3, #0
      74:	ba000005 	blt	90 <opentest+0x90>
      78:	e59f3030 	ldr	r3, [pc, #48]	@ b0 <opentest+0xb0>
      7c:	e5933000 	ldr	r3, [r3]
      80:	e59f103c 	ldr	r1, [pc, #60]	@ c4 <opentest+0xc4>
      84:	e1a00003 	mov	r0, r3
      88:	eb001448 	bl	51b0 <printf>
      8c:	eb0012a5 	bl	4b28 <exit>
      90:	e59f3018 	ldr	r3, [pc, #24]	@ b0 <opentest+0xb0>
      94:	e5933000 	ldr	r3, [r3]
      98:	e59f1028 	ldr	r1, [pc, #40]	@ c8 <opentest+0xc8>
      9c:	e1a00003 	mov	r0, r3
      a0:	eb001442 	bl	51b0 <printf>
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e24bd004 	sub	sp, fp, #4
      ac:	e8bd8800 	pop	{fp, pc}
      b0:	000070b8 	.word	0x000070b8
      b4:	00005888 	.word	0x00005888
      b8:	0000586c 	.word	0x0000586c
      bc:	00005894 	.word	0x00005894
      c0:	000058a8 	.word	0x000058a8
      c4:	000058b8 	.word	0x000058b8
      c8:	000058d8 	.word	0x000058d8

000000cc <writetest>:
      cc:	e92d4800 	push	{fp, lr}
      d0:	e28db004 	add	fp, sp, #4
      d4:	e24dd008 	sub	sp, sp, #8
      d8:	e59f31f4 	ldr	r3, [pc, #500]	@ 2d4 <writetest+0x208>
      dc:	e5933000 	ldr	r3, [r3]
      e0:	e59f11f0 	ldr	r1, [pc, #496]	@ 2d8 <writetest+0x20c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb001430 	bl	51b0 <printf>
      ec:	e59f11e8 	ldr	r1, [pc, #488]	@ 2dc <writetest+0x210>
      f0:	e59f01e8 	ldr	r0, [pc, #488]	@ 2e0 <writetest+0x214>
      f4:	eb0012d3 	bl	4c48 <open>
      f8:	e50b000c 	str	r0, [fp, #-12]
      fc:	e51b300c 	ldr	r3, [fp, #-12]
     100:	e3530000 	cmp	r3, #0
     104:	ba000007 	blt	128 <writetest+0x5c>
     108:	e59f31c4 	ldr	r3, [pc, #452]	@ 2d4 <writetest+0x208>
     10c:	e5933000 	ldr	r3, [r3]
     110:	e59f11cc 	ldr	r1, [pc, #460]	@ 2e4 <writetest+0x218>
     114:	e1a00003 	mov	r0, r3
     118:	eb001424 	bl	51b0 <printf>
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000024 	b	1bc <writetest+0xf0>
     128:	e59f31a4 	ldr	r3, [pc, #420]	@ 2d4 <writetest+0x208>
     12c:	e5933000 	ldr	r3, [r3]
     130:	e59f11b0 	ldr	r1, [pc, #432]	@ 2e8 <writetest+0x21c>
     134:	e1a00003 	mov	r0, r3
     138:	eb00141c 	bl	51b0 <printf>
     13c:	eb001279 	bl	4b28 <exit>
     140:	e3a0200a 	mov	r2, #10
     144:	e59f11a0 	ldr	r1, [pc, #416]	@ 2ec <writetest+0x220>
     148:	e51b000c 	ldr	r0, [fp, #-12]
     14c:	eb001299 	bl	4bb8 <write>
     150:	e1a03000 	mov	r3, r0
     154:	e353000a 	cmp	r3, #10
     158:	0a000006 	beq	178 <writetest+0xac>
     15c:	e59f3170 	ldr	r3, [pc, #368]	@ 2d4 <writetest+0x208>
     160:	e5933000 	ldr	r3, [r3]
     164:	e51b2008 	ldr	r2, [fp, #-8]
     168:	e59f1180 	ldr	r1, [pc, #384]	@ 2f0 <writetest+0x224>
     16c:	e1a00003 	mov	r0, r3
     170:	eb00140e 	bl	51b0 <printf>
     174:	eb00126b 	bl	4b28 <exit>
     178:	e3a0200a 	mov	r2, #10
     17c:	e59f1170 	ldr	r1, [pc, #368]	@ 2f4 <writetest+0x228>
     180:	e51b000c 	ldr	r0, [fp, #-12]
     184:	eb00128b 	bl	4bb8 <write>
     188:	e1a03000 	mov	r3, r0
     18c:	e353000a 	cmp	r3, #10
     190:	0a000006 	beq	1b0 <writetest+0xe4>
     194:	e59f3138 	ldr	r3, [pc, #312]	@ 2d4 <writetest+0x208>
     198:	e5933000 	ldr	r3, [r3]
     19c:	e51b2008 	ldr	r2, [fp, #-8]
     1a0:	e59f1150 	ldr	r1, [pc, #336]	@ 2f8 <writetest+0x22c>
     1a4:	e1a00003 	mov	r0, r3
     1a8:	eb001400 	bl	51b0 <printf>
     1ac:	eb00125d 	bl	4b28 <exit>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e3530063 	cmp	r3, #99	@ 0x63
     1c4:	daffffdd 	ble	140 <writetest+0x74>
     1c8:	e59f3104 	ldr	r3, [pc, #260]	@ 2d4 <writetest+0x208>
     1cc:	e5933000 	ldr	r3, [r3]
     1d0:	e59f1124 	ldr	r1, [pc, #292]	@ 2fc <writetest+0x230>
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb0013f4 	bl	51b0 <printf>
     1dc:	e51b000c 	ldr	r0, [fp, #-12]
     1e0:	eb00127d 	bl	4bdc <close>
     1e4:	e3a01000 	mov	r1, #0
     1e8:	e59f00f0 	ldr	r0, [pc, #240]	@ 2e0 <writetest+0x214>
     1ec:	eb001295 	bl	4c48 <open>
     1f0:	e50b000c 	str	r0, [fp, #-12]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	ba00000d 	blt	238 <writetest+0x16c>
     200:	e59f30cc 	ldr	r3, [pc, #204]	@ 2d4 <writetest+0x208>
     204:	e5933000 	ldr	r3, [r3]
     208:	e59f10f0 	ldr	r1, [pc, #240]	@ 300 <writetest+0x234>
     20c:	e1a00003 	mov	r0, r3
     210:	eb0013e6 	bl	51b0 <printf>
     214:	e3a02e7d 	mov	r2, #2000	@ 0x7d0
     218:	e59f10e4 	ldr	r1, [pc, #228]	@ 304 <writetest+0x238>
     21c:	e51b000c 	ldr	r0, [fp, #-12]
     220:	eb00125b 	bl	4b94 <read>
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e3530e7d 	cmp	r3, #2000	@ 0x7d0
     230:	1a000013 	bne	284 <writetest+0x1b8>
     234:	ea000005 	b	250 <writetest+0x184>
     238:	e59f3094 	ldr	r3, [pc, #148]	@ 2d4 <writetest+0x208>
     23c:	e5933000 	ldr	r3, [r3]
     240:	e59f10c0 	ldr	r1, [pc, #192]	@ 308 <writetest+0x23c>
     244:	e1a00003 	mov	r0, r3
     248:	eb0013d8 	bl	51b0 <printf>
     24c:	eb001235 	bl	4b28 <exit>
     250:	e59f307c 	ldr	r3, [pc, #124]	@ 2d4 <writetest+0x208>
     254:	e5933000 	ldr	r3, [r3]
     258:	e59f10ac 	ldr	r1, [pc, #172]	@ 30c <writetest+0x240>
     25c:	e1a00003 	mov	r0, r3
     260:	eb0013d2 	bl	51b0 <printf>
     264:	e51b000c 	ldr	r0, [fp, #-12]
     268:	eb00125b 	bl	4bdc <close>
     26c:	e59f006c 	ldr	r0, [pc, #108]	@ 2e0 <writetest+0x214>
     270:	eb001286 	bl	4c90 <unlink>
     274:	e1a03000 	mov	r3, r0
     278:	e3530000 	cmp	r3, #0
     27c:	aa00000c 	bge	2b4 <writetest+0x1e8>
     280:	ea000005 	b	29c <writetest+0x1d0>
     284:	e59f3048 	ldr	r3, [pc, #72]	@ 2d4 <writetest+0x208>
     288:	e5933000 	ldr	r3, [r3]
     28c:	e59f107c 	ldr	r1, [pc, #124]	@ 310 <writetest+0x244>
     290:	e1a00003 	mov	r0, r3
     294:	eb0013c5 	bl	51b0 <printf>
     298:	eb001222 	bl	4b28 <exit>
     29c:	e59f3030 	ldr	r3, [pc, #48]	@ 2d4 <writetest+0x208>
     2a0:	e5933000 	ldr	r3, [r3]
     2a4:	e59f1068 	ldr	r1, [pc, #104]	@ 314 <writetest+0x248>
     2a8:	e1a00003 	mov	r0, r3
     2ac:	eb0013bf 	bl	51b0 <printf>
     2b0:	eb00121c 	bl	4b28 <exit>
     2b4:	e59f3018 	ldr	r3, [pc, #24]	@ 2d4 <writetest+0x208>
     2b8:	e5933000 	ldr	r3, [r3]
     2bc:	e59f1054 	ldr	r1, [pc, #84]	@ 318 <writetest+0x24c>
     2c0:	e1a00003 	mov	r0, r3
     2c4:	eb0013b9 	bl	51b0 <printf>
     2c8:	e1a00000 	nop			@ (mov r0, r0)
     2cc:	e24bd004 	sub	sp, fp, #4
     2d0:	e8bd8800 	pop	{fp, pc}
     2d4:	000070b8 	.word	0x000070b8
     2d8:	000058e8 	.word	0x000058e8
     2dc:	00000202 	.word	0x00000202
     2e0:	000058fc 	.word	0x000058fc
     2e4:	00005904 	.word	0x00005904
     2e8:	00005920 	.word	0x00005920
     2ec:	0000593c 	.word	0x0000593c
     2f0:	00005948 	.word	0x00005948
     2f4:	0000596c 	.word	0x0000596c
     2f8:	00005978 	.word	0x00005978
     2fc:	0000599c 	.word	0x0000599c
     300:	000059a8 	.word	0x000059a8
     304:	000070d4 	.word	0x000070d4
     308:	000059c4 	.word	0x000059c4
     30c:	000059e0 	.word	0x000059e0
     310:	000059f4 	.word	0x000059f4
     314:	00005a04 	.word	0x00005a04
     318:	00005a1c 	.word	0x00005a1c

0000031c <writetest1>:
     31c:	e92d4800 	push	{fp, lr}
     320:	e28db004 	add	fp, sp, #4
     324:	e24dd010 	sub	sp, sp, #16
     328:	e59f3200 	ldr	r3, [pc, #512]	@ 530 <writetest1+0x214>
     32c:	e5933000 	ldr	r3, [r3]
     330:	e59f11fc 	ldr	r1, [pc, #508]	@ 534 <writetest1+0x218>
     334:	e1a00003 	mov	r0, r3
     338:	eb00139c 	bl	51b0 <printf>
     33c:	e59f11f4 	ldr	r1, [pc, #500]	@ 538 <writetest1+0x21c>
     340:	e59f01f4 	ldr	r0, [pc, #500]	@ 53c <writetest1+0x220>
     344:	eb00123f 	bl	4c48 <open>
     348:	e50b0010 	str	r0, [fp, #-16]
     34c:	e51b3010 	ldr	r3, [fp, #-16]
     350:	e3530000 	cmp	r3, #0
     354:	aa000005 	bge	370 <writetest1+0x54>
     358:	e59f31d0 	ldr	r3, [pc, #464]	@ 530 <writetest1+0x214>
     35c:	e5933000 	ldr	r3, [r3]
     360:	e59f11d8 	ldr	r1, [pc, #472]	@ 540 <writetest1+0x224>
     364:	e1a00003 	mov	r0, r3
     368:	eb001390 	bl	51b0 <printf>
     36c:	eb0011ed 	bl	4b28 <exit>
     370:	e3a03000 	mov	r3, #0
     374:	e50b3008 	str	r3, [fp, #-8]
     378:	ea000013 	b	3cc <writetest1+0xb0>
     37c:	e59f21c0 	ldr	r2, [pc, #448]	@ 544 <writetest1+0x228>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5823000 	str	r3, [r2]
     388:	e3a02c02 	mov	r2, #512	@ 0x200
     38c:	e59f11b0 	ldr	r1, [pc, #432]	@ 544 <writetest1+0x228>
     390:	e51b0010 	ldr	r0, [fp, #-16]
     394:	eb001207 	bl	4bb8 <write>
     398:	e1a03000 	mov	r3, r0
     39c:	e3530c02 	cmp	r3, #512	@ 0x200
     3a0:	0a000006 	beq	3c0 <writetest1+0xa4>
     3a4:	e59f3184 	ldr	r3, [pc, #388]	@ 530 <writetest1+0x214>
     3a8:	e5933000 	ldr	r3, [r3]
     3ac:	e51b2008 	ldr	r2, [fp, #-8]
     3b0:	e59f1190 	ldr	r1, [pc, #400]	@ 548 <writetest1+0x22c>
     3b4:	e1a00003 	mov	r0, r3
     3b8:	eb00137c 	bl	51b0 <printf>
     3bc:	eb0011d9 	bl	4b28 <exit>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e59f2174 	ldr	r2, [pc, #372]	@ 54c <writetest1+0x230>
     3d4:	e1530002 	cmp	r3, r2
     3d8:	9affffe7 	bls	37c <writetest1+0x60>
     3dc:	e51b0010 	ldr	r0, [fp, #-16]
     3e0:	eb0011fd 	bl	4bdc <close>
     3e4:	e3a01000 	mov	r1, #0
     3e8:	e59f014c 	ldr	r0, [pc, #332]	@ 53c <writetest1+0x220>
     3ec:	eb001215 	bl	4c48 <open>
     3f0:	e50b0010 	str	r0, [fp, #-16]
     3f4:	e51b3010 	ldr	r3, [fp, #-16]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	aa000005 	bge	418 <writetest1+0xfc>
     400:	e59f3128 	ldr	r3, [pc, #296]	@ 530 <writetest1+0x214>
     404:	e5933000 	ldr	r3, [r3]
     408:	e59f1140 	ldr	r1, [pc, #320]	@ 550 <writetest1+0x234>
     40c:	e1a00003 	mov	r0, r3
     410:	eb001366 	bl	51b0 <printf>
     414:	eb0011c3 	bl	4b28 <exit>
     418:	e3a03000 	mov	r3, #0
     41c:	e50b300c 	str	r3, [fp, #-12]
     420:	e3a02c02 	mov	r2, #512	@ 0x200
     424:	e59f1118 	ldr	r1, [pc, #280]	@ 544 <writetest1+0x228>
     428:	e51b0010 	ldr	r0, [fp, #-16]
     42c:	eb0011d8 	bl	4b94 <read>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	1a00000a 	bne	46c <writetest1+0x150>
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e59f2100 	ldr	r2, [pc, #256]	@ 54c <writetest1+0x230>
     448:	e1530002 	cmp	r3, r2
     44c:	1a000021 	bne	4d8 <writetest1+0x1bc>
     450:	e59f30d8 	ldr	r3, [pc, #216]	@ 530 <writetest1+0x214>
     454:	e5933000 	ldr	r3, [r3]
     458:	e51b200c 	ldr	r2, [fp, #-12]
     45c:	e59f10f0 	ldr	r1, [pc, #240]	@ 554 <writetest1+0x238>
     460:	e1a00003 	mov	r0, r3
     464:	eb001351 	bl	51b0 <printf>
     468:	eb0011ae 	bl	4b28 <exit>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e3530c02 	cmp	r3, #512	@ 0x200
     474:	0a000006 	beq	494 <writetest1+0x178>
     478:	e59f30b0 	ldr	r3, [pc, #176]	@ 530 <writetest1+0x214>
     47c:	e5933000 	ldr	r3, [r3]
     480:	e51b2008 	ldr	r2, [fp, #-8]
     484:	e59f10cc 	ldr	r1, [pc, #204]	@ 558 <writetest1+0x23c>
     488:	e1a00003 	mov	r0, r3
     48c:	eb001347 	bl	51b0 <printf>
     490:	eb0011a4 	bl	4b28 <exit>
     494:	e59f30a8 	ldr	r3, [pc, #168]	@ 544 <writetest1+0x228>
     498:	e5933000 	ldr	r3, [r3]
     49c:	e51b200c 	ldr	r2, [fp, #-12]
     4a0:	e1520003 	cmp	r2, r3
     4a4:	0a000007 	beq	4c8 <writetest1+0x1ac>
     4a8:	e59f3080 	ldr	r3, [pc, #128]	@ 530 <writetest1+0x214>
     4ac:	e5930000 	ldr	r0, [r3]
     4b0:	e59f308c 	ldr	r3, [pc, #140]	@ 544 <writetest1+0x228>
     4b4:	e5933000 	ldr	r3, [r3]
     4b8:	e51b200c 	ldr	r2, [fp, #-12]
     4bc:	e59f1098 	ldr	r1, [pc, #152]	@ 55c <writetest1+0x240>
     4c0:	eb00133a 	bl	51b0 <printf>
     4c4:	eb001197 	bl	4b28 <exit>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e50b300c 	str	r3, [fp, #-12]
     4d4:	eaffffd1 	b	420 <writetest1+0x104>
     4d8:	e1a00000 	nop			@ (mov r0, r0)
     4dc:	e51b0010 	ldr	r0, [fp, #-16]
     4e0:	eb0011bd 	bl	4bdc <close>
     4e4:	e59f0050 	ldr	r0, [pc, #80]	@ 53c <writetest1+0x220>
     4e8:	eb0011e8 	bl	4c90 <unlink>
     4ec:	e1a03000 	mov	r3, r0
     4f0:	e3530000 	cmp	r3, #0
     4f4:	aa000005 	bge	510 <writetest1+0x1f4>
     4f8:	e59f3030 	ldr	r3, [pc, #48]	@ 530 <writetest1+0x214>
     4fc:	e5933000 	ldr	r3, [r3]
     500:	e59f1058 	ldr	r1, [pc, #88]	@ 560 <writetest1+0x244>
     504:	e1a00003 	mov	r0, r3
     508:	eb001328 	bl	51b0 <printf>
     50c:	eb001185 	bl	4b28 <exit>
     510:	e59f3018 	ldr	r3, [pc, #24]	@ 530 <writetest1+0x214>
     514:	e5933000 	ldr	r3, [r3]
     518:	e59f1044 	ldr	r1, [pc, #68]	@ 564 <writetest1+0x248>
     51c:	e1a00003 	mov	r0, r3
     520:	eb001322 	bl	51b0 <printf>
     524:	e1a00000 	nop			@ (mov r0, r0)
     528:	e24bd004 	sub	sp, fp, #4
     52c:	e8bd8800 	pop	{fp, pc}
     530:	000070b8 	.word	0x000070b8
     534:	00005a30 	.word	0x00005a30
     538:	00000202 	.word	0x00000202
     53c:	00005a40 	.word	0x00005a40
     540:	00005a44 	.word	0x00005a44
     544:	000070d4 	.word	0x000070d4
     548:	00005a60 	.word	0x00005a60
     54c:	0000408a 	.word	0x0000408a
     550:	00005a80 	.word	0x00005a80
     554:	00005a9c 	.word	0x00005a9c
     558:	00005abc 	.word	0x00005abc
     55c:	00005acc 	.word	0x00005acc
     560:	00005aec 	.word	0x00005aec
     564:	00005b00 	.word	0x00005b00

00000568 <createtest>:
     568:	e92d4800 	push	{fp, lr}
     56c:	e28db004 	add	fp, sp, #4
     570:	e24dd008 	sub	sp, sp, #8
     574:	e59f30f4 	ldr	r3, [pc, #244]	@ 670 <createtest+0x108>
     578:	e5933000 	ldr	r3, [r3]
     57c:	e59f10f0 	ldr	r1, [pc, #240]	@ 674 <createtest+0x10c>
     580:	e1a00003 	mov	r0, r3
     584:	eb001309 	bl	51b0 <printf>
     588:	e59f30e8 	ldr	r3, [pc, #232]	@ 678 <createtest+0x110>
     58c:	e3a02061 	mov	r2, #97	@ 0x61
     590:	e5c32000 	strb	r2, [r3]
     594:	e59f30dc 	ldr	r3, [pc, #220]	@ 678 <createtest+0x110>
     598:	e3a02000 	mov	r2, #0
     59c:	e5c32002 	strb	r2, [r3, #2]
     5a0:	e3a03000 	mov	r3, #0
     5a4:	e50b3008 	str	r3, [fp, #-8]
     5a8:	ea00000e 	b	5e8 <createtest+0x80>
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e6ef3073 	uxtb	r3, r3
     5b4:	e2833030 	add	r3, r3, #48	@ 0x30
     5b8:	e6ef2073 	uxtb	r2, r3
     5bc:	e59f30b4 	ldr	r3, [pc, #180]	@ 678 <createtest+0x110>
     5c0:	e5c32001 	strb	r2, [r3, #1]
     5c4:	e59f10b0 	ldr	r1, [pc, #176]	@ 67c <createtest+0x114>
     5c8:	e59f00a8 	ldr	r0, [pc, #168]	@ 678 <createtest+0x110>
     5cc:	eb00119d 	bl	4c48 <open>
     5d0:	e50b000c 	str	r0, [fp, #-12]
     5d4:	e51b000c 	ldr	r0, [fp, #-12]
     5d8:	eb00117f 	bl	4bdc <close>
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e2833001 	add	r3, r3, #1
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530033 	cmp	r3, #51	@ 0x33
     5f0:	daffffed 	ble	5ac <createtest+0x44>
     5f4:	e59f307c 	ldr	r3, [pc, #124]	@ 678 <createtest+0x110>
     5f8:	e3a02061 	mov	r2, #97	@ 0x61
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e59f3070 	ldr	r3, [pc, #112]	@ 678 <createtest+0x110>
     604:	e3a02000 	mov	r2, #0
     608:	e5c32002 	strb	r2, [r3, #2]
     60c:	e3a03000 	mov	r3, #0
     610:	e50b3008 	str	r3, [fp, #-8]
     614:	ea00000a 	b	644 <createtest+0xdc>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e6ef3073 	uxtb	r3, r3
     620:	e2833030 	add	r3, r3, #48	@ 0x30
     624:	e6ef2073 	uxtb	r2, r3
     628:	e59f3048 	ldr	r3, [pc, #72]	@ 678 <createtest+0x110>
     62c:	e5c32001 	strb	r2, [r3, #1]
     630:	e59f0040 	ldr	r0, [pc, #64]	@ 678 <createtest+0x110>
     634:	eb001195 	bl	4c90 <unlink>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e3530033 	cmp	r3, #51	@ 0x33
     64c:	dafffff1 	ble	618 <createtest+0xb0>
     650:	e59f3018 	ldr	r3, [pc, #24]	@ 670 <createtest+0x108>
     654:	e5933000 	ldr	r3, [r3]
     658:	e59f1020 	ldr	r1, [pc, #32]	@ 680 <createtest+0x118>
     65c:	e1a00003 	mov	r0, r3
     660:	eb0012d2 	bl	51b0 <printf>
     664:	e1a00000 	nop			@ (mov r0, r0)
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}
     670:	000070b8 	.word	0x000070b8
     674:	00005b10 	.word	0x00005b10
     678:	000090d4 	.word	0x000090d4
     67c:	00000202 	.word	0x00000202
     680:	00005b38 	.word	0x00005b38

00000684 <dirtest>:
     684:	e92d4800 	push	{fp, lr}
     688:	e28db004 	add	fp, sp, #4
     68c:	e59f30d8 	ldr	r3, [pc, #216]	@ 76c <dirtest+0xe8>
     690:	e5933000 	ldr	r3, [r3]
     694:	e59f10d4 	ldr	r1, [pc, #212]	@ 770 <dirtest+0xec>
     698:	e1a00003 	mov	r0, r3
     69c:	eb0012c3 	bl	51b0 <printf>
     6a0:	e59f00cc 	ldr	r0, [pc, #204]	@ 774 <dirtest+0xf0>
     6a4:	eb001194 	bl	4cfc <mkdir>
     6a8:	e1a03000 	mov	r3, r0
     6ac:	e3530000 	cmp	r3, #0
     6b0:	aa000005 	bge	6cc <dirtest+0x48>
     6b4:	e59f30b0 	ldr	r3, [pc, #176]	@ 76c <dirtest+0xe8>
     6b8:	e5933000 	ldr	r3, [r3]
     6bc:	e59f10b4 	ldr	r1, [pc, #180]	@ 778 <dirtest+0xf4>
     6c0:	e1a00003 	mov	r0, r3
     6c4:	eb0012b9 	bl	51b0 <printf>
     6c8:	eb001116 	bl	4b28 <exit>
     6cc:	e59f00a0 	ldr	r0, [pc, #160]	@ 774 <dirtest+0xf0>
     6d0:	eb001192 	bl	4d20 <chdir>
     6d4:	e1a03000 	mov	r3, r0
     6d8:	e3530000 	cmp	r3, #0
     6dc:	aa000005 	bge	6f8 <dirtest+0x74>
     6e0:	e59f3084 	ldr	r3, [pc, #132]	@ 76c <dirtest+0xe8>
     6e4:	e5933000 	ldr	r3, [r3]
     6e8:	e59f108c 	ldr	r1, [pc, #140]	@ 77c <dirtest+0xf8>
     6ec:	e1a00003 	mov	r0, r3
     6f0:	eb0012ae 	bl	51b0 <printf>
     6f4:	eb00110b 	bl	4b28 <exit>
     6f8:	e59f0080 	ldr	r0, [pc, #128]	@ 780 <dirtest+0xfc>
     6fc:	eb001187 	bl	4d20 <chdir>
     700:	e1a03000 	mov	r3, r0
     704:	e3530000 	cmp	r3, #0
     708:	aa000005 	bge	724 <dirtest+0xa0>
     70c:	e59f3058 	ldr	r3, [pc, #88]	@ 76c <dirtest+0xe8>
     710:	e5933000 	ldr	r3, [r3]
     714:	e59f1068 	ldr	r1, [pc, #104]	@ 784 <dirtest+0x100>
     718:	e1a00003 	mov	r0, r3
     71c:	eb0012a3 	bl	51b0 <printf>
     720:	eb001100 	bl	4b28 <exit>
     724:	e59f0048 	ldr	r0, [pc, #72]	@ 774 <dirtest+0xf0>
     728:	eb001158 	bl	4c90 <unlink>
     72c:	e1a03000 	mov	r3, r0
     730:	e3530000 	cmp	r3, #0
     734:	aa000005 	bge	750 <dirtest+0xcc>
     738:	e59f302c 	ldr	r3, [pc, #44]	@ 76c <dirtest+0xe8>
     73c:	e5933000 	ldr	r3, [r3]
     740:	e59f1040 	ldr	r1, [pc, #64]	@ 788 <dirtest+0x104>
     744:	e1a00003 	mov	r0, r3
     748:	eb001298 	bl	51b0 <printf>
     74c:	eb0010f5 	bl	4b28 <exit>
     750:	e59f3014 	ldr	r3, [pc, #20]	@ 76c <dirtest+0xe8>
     754:	e5933000 	ldr	r3, [r3]
     758:	e59f1010 	ldr	r1, [pc, #16]	@ 770 <dirtest+0xec>
     75c:	e1a00003 	mov	r0, r3
     760:	eb001292 	bl	51b0 <printf>
     764:	e1a00000 	nop			@ (mov r0, r0)
     768:	e8bd8800 	pop	{fp, pc}
     76c:	000070b8 	.word	0x000070b8
     770:	00005b60 	.word	0x00005b60
     774:	00005b6c 	.word	0x00005b6c
     778:	00005b74 	.word	0x00005b74
     77c:	00005b84 	.word	0x00005b84
     780:	00005b98 	.word	0x00005b98
     784:	00005b9c 	.word	0x00005b9c
     788:	00005bb0 	.word	0x00005bb0

0000078c <exectest>:
     78c:	e92d4800 	push	{fp, lr}
     790:	e28db004 	add	fp, sp, #4
     794:	e59f3044 	ldr	r3, [pc, #68]	@ 7e0 <exectest+0x54>
     798:	e5933000 	ldr	r3, [r3]
     79c:	e59f1040 	ldr	r1, [pc, #64]	@ 7e4 <exectest+0x58>
     7a0:	e1a00003 	mov	r0, r3
     7a4:	eb001281 	bl	51b0 <printf>
     7a8:	e59f1038 	ldr	r1, [pc, #56]	@ 7e8 <exectest+0x5c>
     7ac:	e59f0038 	ldr	r0, [pc, #56]	@ 7ec <exectest+0x60>
     7b0:	eb00111b 	bl	4c24 <exec>
     7b4:	e1a03000 	mov	r3, r0
     7b8:	e3530000 	cmp	r3, #0
     7bc:	aa000005 	bge	7d8 <exectest+0x4c>
     7c0:	e59f3018 	ldr	r3, [pc, #24]	@ 7e0 <exectest+0x54>
     7c4:	e5933000 	ldr	r3, [r3]
     7c8:	e59f1020 	ldr	r1, [pc, #32]	@ 7f0 <exectest+0x64>
     7cc:	e1a00003 	mov	r0, r3
     7d0:	eb001276 	bl	51b0 <printf>
     7d4:	eb0010d3 	bl	4b28 <exit>
     7d8:	e1a00000 	nop			@ (mov r0, r0)
     7dc:	e8bd8800 	pop	{fp, pc}
     7e0:	000070b8 	.word	0x000070b8
     7e4:	00005bc4 	.word	0x00005bc4
     7e8:	000070a4 	.word	0x000070a4
     7ec:	0000586c 	.word	0x0000586c
     7f0:	00005bd0 	.word	0x00005bd0

000007f4 <pipe1>:
     7f4:	e92d4800 	push	{fp, lr}
     7f8:	e28db004 	add	fp, sp, #4
     7fc:	e24dd020 	sub	sp, sp, #32
     800:	e24b3024 	sub	r3, fp, #36	@ 0x24
     804:	e1a00003 	mov	r0, r3
     808:	eb0010d8 	bl	4b70 <pipe>
     80c:	e1a03000 	mov	r3, r0
     810:	e3530000 	cmp	r3, #0
     814:	0a000003 	beq	828 <pipe1+0x34>
     818:	e59f1218 	ldr	r1, [pc, #536]	@ a38 <pipe1+0x244>
     81c:	e3a00001 	mov	r0, #1
     820:	eb001262 	bl	51b0 <printf>
     824:	eb0010bf 	bl	4b28 <exit>
     828:	eb0010b5 	bl	4b04 <fork>
     82c:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     830:	e3a03000 	mov	r3, #0
     834:	e50b3008 	str	r3, [fp, #-8]
     838:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     83c:	e3530000 	cmp	r3, #0
     840:	1a00002c 	bne	8f8 <pipe1+0x104>
     844:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     848:	e1a00003 	mov	r0, r3
     84c:	eb0010e2 	bl	4bdc <close>
     850:	e3a03000 	mov	r3, #0
     854:	e50b3010 	str	r3, [fp, #-16]
     858:	ea000022 	b	8e8 <pipe1+0xf4>
     85c:	e3a03000 	mov	r3, #0
     860:	e50b300c 	str	r3, [fp, #-12]
     864:	ea00000b 	b	898 <pipe1+0xa4>
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e2832001 	add	r2, r3, #1
     870:	e50b2008 	str	r2, [fp, #-8]
     874:	e6ef1073 	uxtb	r1, r3
     878:	e59f21bc 	ldr	r2, [pc, #444]	@ a3c <pipe1+0x248>
     87c:	e51b300c 	ldr	r3, [fp, #-12]
     880:	e0823003 	add	r3, r2, r3
     884:	e1a02001 	mov	r2, r1
     888:	e5c32000 	strb	r2, [r3]
     88c:	e51b300c 	ldr	r3, [fp, #-12]
     890:	e2833001 	add	r3, r3, #1
     894:	e50b300c 	str	r3, [fp, #-12]
     898:	e51b300c 	ldr	r3, [fp, #-12]
     89c:	e59f219c 	ldr	r2, [pc, #412]	@ a40 <pipe1+0x24c>
     8a0:	e1530002 	cmp	r3, r2
     8a4:	daffffef 	ble	868 <pipe1+0x74>
     8a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     8ac:	e59f2190 	ldr	r2, [pc, #400]	@ a44 <pipe1+0x250>
     8b0:	e59f1184 	ldr	r1, [pc, #388]	@ a3c <pipe1+0x248>
     8b4:	e1a00003 	mov	r0, r3
     8b8:	eb0010be 	bl	4bb8 <write>
     8bc:	e1a03000 	mov	r3, r0
     8c0:	e59f217c 	ldr	r2, [pc, #380]	@ a44 <pipe1+0x250>
     8c4:	e1530002 	cmp	r3, r2
     8c8:	0a000003 	beq	8dc <pipe1+0xe8>
     8cc:	e59f1174 	ldr	r1, [pc, #372]	@ a48 <pipe1+0x254>
     8d0:	e3a00001 	mov	r0, #1
     8d4:	eb001235 	bl	51b0 <printf>
     8d8:	eb001092 	bl	4b28 <exit>
     8dc:	e51b3010 	ldr	r3, [fp, #-16]
     8e0:	e2833001 	add	r3, r3, #1
     8e4:	e50b3010 	str	r3, [fp, #-16]
     8e8:	e51b3010 	ldr	r3, [fp, #-16]
     8ec:	e3530004 	cmp	r3, #4
     8f0:	daffffd9 	ble	85c <pipe1+0x68>
     8f4:	eb00108b 	bl	4b28 <exit>
     8f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     8fc:	e3530000 	cmp	r3, #0
     900:	da000046 	ble	a20 <pipe1+0x22c>
     904:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     908:	e1a00003 	mov	r0, r3
     90c:	eb0010b2 	bl	4bdc <close>
     910:	e3a03000 	mov	r3, #0
     914:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     918:	e3a03001 	mov	r3, #1
     91c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     920:	ea000024 	b	9b8 <pipe1+0x1c4>
     924:	e3a03000 	mov	r3, #0
     928:	e50b300c 	str	r3, [fp, #-12]
     92c:	ea000011 	b	978 <pipe1+0x184>
     930:	e59f2104 	ldr	r2, [pc, #260]	@ a3c <pipe1+0x248>
     934:	e51b300c 	ldr	r3, [fp, #-12]
     938:	e0823003 	add	r3, r2, r3
     93c:	e5d33000 	ldrb	r3, [r3]
     940:	e1a01003 	mov	r1, r3
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2832001 	add	r2, r3, #1
     94c:	e50b2008 	str	r2, [fp, #-8]
     950:	e6ef3073 	uxtb	r3, r3
     954:	e1510003 	cmp	r1, r3
     958:	0a000003 	beq	96c <pipe1+0x178>
     95c:	e59f10e8 	ldr	r1, [pc, #232]	@ a4c <pipe1+0x258>
     960:	e3a00001 	mov	r0, #1
     964:	eb001211 	bl	51b0 <printf>
     968:	ea000030 	b	a30 <pipe1+0x23c>
     96c:	e51b300c 	ldr	r3, [fp, #-12]
     970:	e2833001 	add	r3, r3, #1
     974:	e50b300c 	str	r3, [fp, #-12]
     978:	e51b200c 	ldr	r2, [fp, #-12]
     97c:	e51b3010 	ldr	r3, [fp, #-16]
     980:	e1520003 	cmp	r2, r3
     984:	baffffe9 	blt	930 <pipe1+0x13c>
     988:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     98c:	e51b3010 	ldr	r3, [fp, #-16]
     990:	e0823003 	add	r3, r2, r3
     994:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     998:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     99c:	e1a03083 	lsl	r3, r3, #1
     9a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9a8:	e3530a02 	cmp	r3, #8192	@ 0x2000
     9ac:	9a000001 	bls	9b8 <pipe1+0x1c4>
     9b0:	e3a03a02 	mov	r3, #8192	@ 0x2000
     9b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9b8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     9bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     9c0:	e59f1074 	ldr	r1, [pc, #116]	@ a3c <pipe1+0x248>
     9c4:	e1a00003 	mov	r0, r3
     9c8:	eb001071 	bl	4b94 <read>
     9cc:	e50b0010 	str	r0, [fp, #-16]
     9d0:	e51b3010 	ldr	r3, [fp, #-16]
     9d4:	e3530000 	cmp	r3, #0
     9d8:	caffffd1 	bgt	924 <pipe1+0x130>
     9dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9e0:	e59f2068 	ldr	r2, [pc, #104]	@ a50 <pipe1+0x25c>
     9e4:	e1530002 	cmp	r3, r2
     9e8:	0a000004 	beq	a00 <pipe1+0x20c>
     9ec:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     9f0:	e59f105c 	ldr	r1, [pc, #92]	@ a54 <pipe1+0x260>
     9f4:	e3a00001 	mov	r0, #1
     9f8:	eb0011ec 	bl	51b0 <printf>
     9fc:	eb001049 	bl	4b28 <exit>
     a00:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     a04:	e1a00003 	mov	r0, r3
     a08:	eb001073 	bl	4bdc <close>
     a0c:	eb00104e 	bl	4b4c <wait>
     a10:	e59f1040 	ldr	r1, [pc, #64]	@ a58 <pipe1+0x264>
     a14:	e3a00001 	mov	r0, #1
     a18:	eb0011e4 	bl	51b0 <printf>
     a1c:	ea000003 	b	a30 <pipe1+0x23c>
     a20:	e59f1034 	ldr	r1, [pc, #52]	@ a5c <pipe1+0x268>
     a24:	e3a00001 	mov	r0, #1
     a28:	eb0011e0 	bl	51b0 <printf>
     a2c:	eb00103d 	bl	4b28 <exit>
     a30:	e24bd004 	sub	sp, fp, #4
     a34:	e8bd8800 	pop	{fp, pc}
     a38:	00005be4 	.word	0x00005be4
     a3c:	000070d4 	.word	0x000070d4
     a40:	00000408 	.word	0x00000408
     a44:	00000409 	.word	0x00000409
     a48:	00005bf4 	.word	0x00005bf4
     a4c:	00005c04 	.word	0x00005c04
     a50:	0000142d 	.word	0x0000142d
     a54:	00005c14 	.word	0x00005c14
     a58:	00005c3c 	.word	0x00005c3c
     a5c:	00005c2c 	.word	0x00005c2c

00000a60 <preempt>:
     a60:	e92d4800 	push	{fp, lr}
     a64:	e28db004 	add	fp, sp, #4
     a68:	e24dd018 	sub	sp, sp, #24
     a6c:	e59f1140 	ldr	r1, [pc, #320]	@ bb4 <preempt+0x154>
     a70:	e3a00001 	mov	r0, #1
     a74:	eb0011cd 	bl	51b0 <printf>
     a78:	eb001021 	bl	4b04 <fork>
     a7c:	e50b0008 	str	r0, [fp, #-8]
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e3530000 	cmp	r3, #0
     a88:	1a000001 	bne	a94 <preempt+0x34>
     a8c:	e1a00000 	nop			@ (mov r0, r0)
     a90:	eafffffd 	b	a8c <preempt+0x2c>
     a94:	eb00101a 	bl	4b04 <fork>
     a98:	e50b000c 	str	r0, [fp, #-12]
     a9c:	e51b300c 	ldr	r3, [fp, #-12]
     aa0:	e3530000 	cmp	r3, #0
     aa4:	1a000001 	bne	ab0 <preempt+0x50>
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	eafffffd 	b	aa8 <preempt+0x48>
     ab0:	e24b3018 	sub	r3, fp, #24
     ab4:	e1a00003 	mov	r0, r3
     ab8:	eb00102c 	bl	4b70 <pipe>
     abc:	eb001010 	bl	4b04 <fork>
     ac0:	e50b0010 	str	r0, [fp, #-16]
     ac4:	e51b3010 	ldr	r3, [fp, #-16]
     ac8:	e3530000 	cmp	r3, #0
     acc:	1a000012 	bne	b1c <preempt+0xbc>
     ad0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad4:	e1a00003 	mov	r0, r3
     ad8:	eb00103f 	bl	4bdc <close>
     adc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae0:	e3a02001 	mov	r2, #1
     ae4:	e59f10cc 	ldr	r1, [pc, #204]	@ bb8 <preempt+0x158>
     ae8:	e1a00003 	mov	r0, r3
     aec:	eb001031 	bl	4bb8 <write>
     af0:	e1a03000 	mov	r3, r0
     af4:	e3530001 	cmp	r3, #1
     af8:	0a000002 	beq	b08 <preempt+0xa8>
     afc:	e59f10b8 	ldr	r1, [pc, #184]	@ bbc <preempt+0x15c>
     b00:	e3a00001 	mov	r0, #1
     b04:	eb0011a9 	bl	51b0 <printf>
     b08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b0c:	e1a00003 	mov	r0, r3
     b10:	eb001031 	bl	4bdc <close>
     b14:	e1a00000 	nop			@ (mov r0, r0)
     b18:	eafffffd 	b	b14 <preempt+0xb4>
     b1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b20:	e1a00003 	mov	r0, r3
     b24:	eb00102c 	bl	4bdc <close>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e3a02a02 	mov	r2, #8192	@ 0x2000
     b30:	e59f1088 	ldr	r1, [pc, #136]	@ bc0 <preempt+0x160>
     b34:	e1a00003 	mov	r0, r3
     b38:	eb001015 	bl	4b94 <read>
     b3c:	e1a03000 	mov	r3, r0
     b40:	e3530001 	cmp	r3, #1
     b44:	0a000003 	beq	b58 <preempt+0xf8>
     b48:	e59f1074 	ldr	r1, [pc, #116]	@ bc4 <preempt+0x164>
     b4c:	e3a00001 	mov	r0, #1
     b50:	eb001196 	bl	51b0 <printf>
     b54:	ea000014 	b	bac <preempt+0x14c>
     b58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e1a00003 	mov	r0, r3
     b60:	eb00101d 	bl	4bdc <close>
     b64:	e59f105c 	ldr	r1, [pc, #92]	@ bc8 <preempt+0x168>
     b68:	e3a00001 	mov	r0, #1
     b6c:	eb00118f 	bl	51b0 <printf>
     b70:	e51b0008 	ldr	r0, [fp, #-8]
     b74:	eb001021 	bl	4c00 <kill>
     b78:	e51b000c 	ldr	r0, [fp, #-12]
     b7c:	eb00101f 	bl	4c00 <kill>
     b80:	e51b0010 	ldr	r0, [fp, #-16]
     b84:	eb00101d 	bl	4c00 <kill>
     b88:	e59f103c 	ldr	r1, [pc, #60]	@ bcc <preempt+0x16c>
     b8c:	e3a00001 	mov	r0, #1
     b90:	eb001186 	bl	51b0 <printf>
     b94:	eb000fec 	bl	4b4c <wait>
     b98:	eb000feb 	bl	4b4c <wait>
     b9c:	eb000fea 	bl	4b4c <wait>
     ba0:	e59f1028 	ldr	r1, [pc, #40]	@ bd0 <preempt+0x170>
     ba4:	e3a00001 	mov	r0, #1
     ba8:	eb001180 	bl	51b0 <printf>
     bac:	e24bd004 	sub	sp, fp, #4
     bb0:	e8bd8800 	pop	{fp, pc}
     bb4:	00005c48 	.word	0x00005c48
     bb8:	00005c54 	.word	0x00005c54
     bbc:	00005c58 	.word	0x00005c58
     bc0:	000070d4 	.word	0x000070d4
     bc4:	00005c6c 	.word	0x00005c6c
     bc8:	00005c80 	.word	0x00005c80
     bcc:	00005c8c 	.word	0x00005c8c
     bd0:	00005c98 	.word	0x00005c98

00000bd4 <exitwait>:
     bd4:	e92d4800 	push	{fp, lr}
     bd8:	e28db004 	add	fp, sp, #4
     bdc:	e24dd008 	sub	sp, sp, #8
     be0:	e3a03000 	mov	r3, #0
     be4:	e50b3008 	str	r3, [fp, #-8]
     be8:	ea000018 	b	c50 <exitwait+0x7c>
     bec:	eb000fc4 	bl	4b04 <fork>
     bf0:	e50b000c 	str	r0, [fp, #-12]
     bf4:	e51b300c 	ldr	r3, [fp, #-12]
     bf8:	e3530000 	cmp	r3, #0
     bfc:	aa000003 	bge	c10 <exitwait+0x3c>
     c00:	e59f1068 	ldr	r1, [pc, #104]	@ c70 <exitwait+0x9c>
     c04:	e3a00001 	mov	r0, #1
     c08:	eb001168 	bl	51b0 <printf>
     c0c:	ea000015 	b	c68 <exitwait+0x94>
     c10:	e51b300c 	ldr	r3, [fp, #-12]
     c14:	e3530000 	cmp	r3, #0
     c18:	0a000008 	beq	c40 <exitwait+0x6c>
     c1c:	eb000fca 	bl	4b4c <wait>
     c20:	e1a02000 	mov	r2, r0
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e1530002 	cmp	r3, r2
     c2c:	0a000004 	beq	c44 <exitwait+0x70>
     c30:	e59f103c 	ldr	r1, [pc, #60]	@ c74 <exitwait+0xa0>
     c34:	e3a00001 	mov	r0, #1
     c38:	eb00115c 	bl	51b0 <printf>
     c3c:	ea000009 	b	c68 <exitwait+0x94>
     c40:	eb000fb8 	bl	4b28 <exit>
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e2833001 	add	r3, r3, #1
     c4c:	e50b3008 	str	r3, [fp, #-8]
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e3530063 	cmp	r3, #99	@ 0x63
     c58:	daffffe3 	ble	bec <exitwait+0x18>
     c5c:	e59f1014 	ldr	r1, [pc, #20]	@ c78 <exitwait+0xa4>
     c60:	e3a00001 	mov	r0, #1
     c64:	eb001151 	bl	51b0 <printf>
     c68:	e24bd004 	sub	sp, fp, #4
     c6c:	e8bd8800 	pop	{fp, pc}
     c70:	00005ca4 	.word	0x00005ca4
     c74:	00005cb4 	.word	0x00005cb4
     c78:	00005cc4 	.word	0x00005cc4

00000c7c <mem>:
     c7c:	e92d4800 	push	{fp, lr}
     c80:	e28db004 	add	fp, sp, #4
     c84:	e24dd010 	sub	sp, sp, #16
     c88:	e59f10dc 	ldr	r1, [pc, #220]	@ d6c <mem+0xf0>
     c8c:	e3a00001 	mov	r0, #1
     c90:	eb001146 	bl	51b0 <printf>
     c94:	eb001033 	bl	4d68 <getpid>
     c98:	e50b000c 	str	r0, [fp, #-12]
     c9c:	eb000f98 	bl	4b04 <fork>
     ca0:	e50b0010 	str	r0, [fp, #-16]
     ca4:	e51b3010 	ldr	r3, [fp, #-16]
     ca8:	e3530000 	cmp	r3, #0
     cac:	1a00002a 	bne	d5c <mem+0xe0>
     cb0:	e3a03000 	mov	r3, #0
     cb4:	e50b3008 	str	r3, [fp, #-8]
     cb8:	ea000004 	b	cd0 <mem+0x54>
     cbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cc0:	e51b2008 	ldr	r2, [fp, #-8]
     cc4:	e5832000 	str	r2, [r3]
     cc8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ccc:	e50b3008 	str	r3, [fp, #-8]
     cd0:	e59f0098 	ldr	r0, [pc, #152]	@ d70 <mem+0xf4>
     cd4:	eb001244 	bl	55ec <malloc>
     cd8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     cdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ce0:	e3530000 	cmp	r3, #0
     ce4:	1afffff4 	bne	cbc <mem+0x40>
     ce8:	ea000006 	b	d08 <mem+0x8c>
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cf8:	e51b0008 	ldr	r0, [fp, #-8]
     cfc:	eb0011b9 	bl	53e8 <free>
     d00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d04:	e50b3008 	str	r3, [fp, #-8]
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e3530000 	cmp	r3, #0
     d10:	1afffff5 	bne	cec <mem+0x70>
     d14:	e3a00a05 	mov	r0, #20480	@ 0x5000
     d18:	eb001233 	bl	55ec <malloc>
     d1c:	e50b0008 	str	r0, [fp, #-8]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e3530000 	cmp	r3, #0
     d28:	1a000005 	bne	d44 <mem+0xc8>
     d2c:	e59f1040 	ldr	r1, [pc, #64]	@ d74 <mem+0xf8>
     d30:	e3a00001 	mov	r0, #1
     d34:	eb00111d 	bl	51b0 <printf>
     d38:	e51b000c 	ldr	r0, [fp, #-12]
     d3c:	eb000faf 	bl	4c00 <kill>
     d40:	eb000f78 	bl	4b28 <exit>
     d44:	e51b0008 	ldr	r0, [fp, #-8]
     d48:	eb0011a6 	bl	53e8 <free>
     d4c:	e59f1024 	ldr	r1, [pc, #36]	@ d78 <mem+0xfc>
     d50:	e3a00001 	mov	r0, #1
     d54:	eb001115 	bl	51b0 <printf>
     d58:	eb000f72 	bl	4b28 <exit>
     d5c:	eb000f7a 	bl	4b4c <wait>
     d60:	e1a00000 	nop			@ (mov r0, r0)
     d64:	e24bd004 	sub	sp, fp, #4
     d68:	e8bd8800 	pop	{fp, pc}
     d6c:	00005cd4 	.word	0x00005cd4
     d70:	00002711 	.word	0x00002711
     d74:	00005ce0 	.word	0x00005ce0
     d78:	00005cfc 	.word	0x00005cfc

00000d7c <sharedfd>:
     d7c:	e92d4800 	push	{fp, lr}
     d80:	e28db004 	add	fp, sp, #4
     d84:	e24dd028 	sub	sp, sp, #40	@ 0x28
     d88:	e59f1208 	ldr	r1, [pc, #520]	@ f98 <sharedfd+0x21c>
     d8c:	e3a00001 	mov	r0, #1
     d90:	eb001106 	bl	51b0 <printf>
     d94:	e59f0200 	ldr	r0, [pc, #512]	@ f9c <sharedfd+0x220>
     d98:	eb000fbc 	bl	4c90 <unlink>
     d9c:	e59f11fc 	ldr	r1, [pc, #508]	@ fa0 <sharedfd+0x224>
     da0:	e59f01f4 	ldr	r0, [pc, #500]	@ f9c <sharedfd+0x220>
     da4:	eb000fa7 	bl	4c48 <open>
     da8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     dac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     db0:	e3530000 	cmp	r3, #0
     db4:	aa000003 	bge	dc8 <sharedfd+0x4c>
     db8:	e59f11e4 	ldr	r1, [pc, #484]	@ fa4 <sharedfd+0x228>
     dbc:	e3a00001 	mov	r0, #1
     dc0:	eb0010fa 	bl	51b0 <printf>
     dc4:	ea000071 	b	f90 <sharedfd+0x214>
     dc8:	eb000f4d 	bl	4b04 <fork>
     dcc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e3530000 	cmp	r3, #0
     dd8:	1a000001 	bne	de4 <sharedfd+0x68>
     ddc:	e3a01063 	mov	r1, #99	@ 0x63
     de0:	ea000000 	b	de8 <sharedfd+0x6c>
     de4:	e3a01070 	mov	r1, #112	@ 0x70
     de8:	e24b3028 	sub	r3, fp, #40	@ 0x28
     dec:	e3a0200a 	mov	r2, #10
     df0:	e1a00003 	mov	r0, r3
     df4:	eb000d25 	bl	4290 <memset>
     df8:	e3a03000 	mov	r3, #0
     dfc:	e50b3008 	str	r3, [fp, #-8]
     e00:	ea00000e 	b	e40 <sharedfd+0xc4>
     e04:	e24b3028 	sub	r3, fp, #40	@ 0x28
     e08:	e3a0200a 	mov	r2, #10
     e0c:	e1a01003 	mov	r1, r3
     e10:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e14:	eb000f67 	bl	4bb8 <write>
     e18:	e1a03000 	mov	r3, r0
     e1c:	e353000a 	cmp	r3, #10
     e20:	0a000003 	beq	e34 <sharedfd+0xb8>
     e24:	e59f117c 	ldr	r1, [pc, #380]	@ fa8 <sharedfd+0x22c>
     e28:	e3a00001 	mov	r0, #1
     e2c:	eb0010df 	bl	51b0 <printf>
     e30:	ea000005 	b	e4c <sharedfd+0xd0>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e2833001 	add	r3, r3, #1
     e3c:	e50b3008 	str	r3, [fp, #-8]
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
     e48:	baffffed 	blt	e04 <sharedfd+0x88>
     e4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e50:	e3530000 	cmp	r3, #0
     e54:	1a000000 	bne	e5c <sharedfd+0xe0>
     e58:	eb000f32 	bl	4b28 <exit>
     e5c:	eb000f3a 	bl	4b4c <wait>
     e60:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e64:	eb000f5c 	bl	4bdc <close>
     e68:	e3a01000 	mov	r1, #0
     e6c:	e59f0128 	ldr	r0, [pc, #296]	@ f9c <sharedfd+0x220>
     e70:	eb000f74 	bl	4c48 <open>
     e74:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     e78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e7c:	e3530000 	cmp	r3, #0
     e80:	aa000003 	bge	e94 <sharedfd+0x118>
     e84:	e59f1120 	ldr	r1, [pc, #288]	@ fac <sharedfd+0x230>
     e88:	e3a00001 	mov	r0, #1
     e8c:	eb0010c7 	bl	51b0 <printf>
     e90:	ea00003e 	b	f90 <sharedfd+0x214>
     e94:	e3a03000 	mov	r3, #0
     e98:	e50b3010 	str	r3, [fp, #-16]
     e9c:	e51b3010 	ldr	r3, [fp, #-16]
     ea0:	e50b300c 	str	r3, [fp, #-12]
     ea4:	ea00001a 	b	f14 <sharedfd+0x198>
     ea8:	e3a03000 	mov	r3, #0
     eac:	e50b3008 	str	r3, [fp, #-8]
     eb0:	ea000014 	b	f08 <sharedfd+0x18c>
     eb4:	e24b2028 	sub	r2, fp, #40	@ 0x28
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e5d33000 	ldrb	r3, [r3]
     ec4:	e3530063 	cmp	r3, #99	@ 0x63
     ec8:	1a000002 	bne	ed8 <sharedfd+0x15c>
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e2833001 	add	r3, r3, #1
     ed4:	e50b300c 	str	r3, [fp, #-12]
     ed8:	e24b2028 	sub	r2, fp, #40	@ 0x28
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e0823003 	add	r3, r2, r3
     ee4:	e5d33000 	ldrb	r3, [r3]
     ee8:	e3530070 	cmp	r3, #112	@ 0x70
     eec:	1a000002 	bne	efc <sharedfd+0x180>
     ef0:	e51b3010 	ldr	r3, [fp, #-16]
     ef4:	e2833001 	add	r3, r3, #1
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e2833001 	add	r3, r3, #1
     f04:	e50b3008 	str	r3, [fp, #-8]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e3530009 	cmp	r3, #9
     f10:	9affffe7 	bls	eb4 <sharedfd+0x138>
     f14:	e24b3028 	sub	r3, fp, #40	@ 0x28
     f18:	e3a0200a 	mov	r2, #10
     f1c:	e1a01003 	mov	r1, r3
     f20:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f24:	eb000f1a 	bl	4b94 <read>
     f28:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     f2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f30:	e3530000 	cmp	r3, #0
     f34:	caffffdb 	bgt	ea8 <sharedfd+0x12c>
     f38:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f3c:	eb000f26 	bl	4bdc <close>
     f40:	e59f0054 	ldr	r0, [pc, #84]	@ f9c <sharedfd+0x220>
     f44:	eb000f51 	bl	4c90 <unlink>
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e59f205c 	ldr	r2, [pc, #92]	@ fb0 <sharedfd+0x234>
     f50:	e1530002 	cmp	r3, r2
     f54:	1a000007 	bne	f78 <sharedfd+0x1fc>
     f58:	e51b3010 	ldr	r3, [fp, #-16]
     f5c:	e59f204c 	ldr	r2, [pc, #76]	@ fb0 <sharedfd+0x234>
     f60:	e1530002 	cmp	r3, r2
     f64:	1a000003 	bne	f78 <sharedfd+0x1fc>
     f68:	e59f1044 	ldr	r1, [pc, #68]	@ fb4 <sharedfd+0x238>
     f6c:	e3a00001 	mov	r0, #1
     f70:	eb00108e 	bl	51b0 <printf>
     f74:	ea000005 	b	f90 <sharedfd+0x214>
     f78:	e51b3010 	ldr	r3, [fp, #-16]
     f7c:	e51b200c 	ldr	r2, [fp, #-12]
     f80:	e59f1030 	ldr	r1, [pc, #48]	@ fb8 <sharedfd+0x23c>
     f84:	e3a00001 	mov	r0, #1
     f88:	eb001088 	bl	51b0 <printf>
     f8c:	eb000ee5 	bl	4b28 <exit>
     f90:	e24bd004 	sub	sp, fp, #4
     f94:	e8bd8800 	pop	{fp, pc}
     f98:	00005d04 	.word	0x00005d04
     f9c:	00005d14 	.word	0x00005d14
     fa0:	00000202 	.word	0x00000202
     fa4:	00005d20 	.word	0x00005d20
     fa8:	00005d4c 	.word	0x00005d4c
     fac:	00005d6c 	.word	0x00005d6c
     fb0:	00002710 	.word	0x00002710
     fb4:	00005d98 	.word	0x00005d98
     fb8:	00005da8 	.word	0x00005da8

00000fbc <twofiles>:
     fbc:	e92d4800 	push	{fp, lr}
     fc0:	e28db004 	add	fp, sp, #4
     fc4:	e24dd020 	sub	sp, sp, #32
     fc8:	e59f1264 	ldr	r1, [pc, #612]	@ 1234 <twofiles+0x278>
     fcc:	e3a00001 	mov	r0, #1
     fd0:	eb001076 	bl	51b0 <printf>
     fd4:	e59f025c 	ldr	r0, [pc, #604]	@ 1238 <twofiles+0x27c>
     fd8:	eb000f2c 	bl	4c90 <unlink>
     fdc:	e59f0258 	ldr	r0, [pc, #600]	@ 123c <twofiles+0x280>
     fe0:	eb000f2a 	bl	4c90 <unlink>
     fe4:	eb000ec6 	bl	4b04 <fork>
     fe8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     fec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ff0:	e3530000 	cmp	r3, #0
     ff4:	aa000003 	bge	1008 <twofiles+0x4c>
     ff8:	e59f1240 	ldr	r1, [pc, #576]	@ 1240 <twofiles+0x284>
     ffc:	e3a00001 	mov	r0, #1
    1000:	eb00106a 	bl	51b0 <printf>
    1004:	eb000ec7 	bl	4b28 <exit>
    1008:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    100c:	e3530000 	cmp	r3, #0
    1010:	0a000001 	beq	101c <twofiles+0x60>
    1014:	e59f321c 	ldr	r3, [pc, #540]	@ 1238 <twofiles+0x27c>
    1018:	ea000000 	b	1020 <twofiles+0x64>
    101c:	e59f3218 	ldr	r3, [pc, #536]	@ 123c <twofiles+0x280>
    1020:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1024:	e59f1218 	ldr	r1, [pc, #536]	@ 1244 <twofiles+0x288>
    1028:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    102c:	eb000f05 	bl	4c48 <open>
    1030:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
    1034:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1038:	e3530000 	cmp	r3, #0
    103c:	aa000003 	bge	1050 <twofiles+0x94>
    1040:	e59f1200 	ldr	r1, [pc, #512]	@ 1248 <twofiles+0x28c>
    1044:	e3a00001 	mov	r0, #1
    1048:	eb001058 	bl	51b0 <printf>
    104c:	eb000eb5 	bl	4b28 <exit>
    1050:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1054:	e3530000 	cmp	r3, #0
    1058:	0a000001 	beq	1064 <twofiles+0xa8>
    105c:	e3a03070 	mov	r3, #112	@ 0x70
    1060:	ea000000 	b	1068 <twofiles+0xac>
    1064:	e3a03063 	mov	r3, #99	@ 0x63
    1068:	e3a02c02 	mov	r2, #512	@ 0x200
    106c:	e1a01003 	mov	r1, r3
    1070:	e59f01d4 	ldr	r0, [pc, #468]	@ 124c <twofiles+0x290>
    1074:	eb000c85 	bl	4290 <memset>
    1078:	e3a03000 	mov	r3, #0
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	ea00000f 	b	10c4 <twofiles+0x108>
    1084:	e3a02f7d 	mov	r2, #500	@ 0x1f4
    1088:	e59f11bc 	ldr	r1, [pc, #444]	@ 124c <twofiles+0x290>
    108c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    1090:	eb000ec8 	bl	4bb8 <write>
    1094:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1098:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    109c:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    10a0:	0a000004 	beq	10b8 <twofiles+0xfc>
    10a4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    10a8:	e59f11a0 	ldr	r1, [pc, #416]	@ 1250 <twofiles+0x294>
    10ac:	e3a00001 	mov	r0, #1
    10b0:	eb00103e 	bl	51b0 <printf>
    10b4:	eb000e9b 	bl	4b28 <exit>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e2833001 	add	r3, r3, #1
    10c0:	e50b3008 	str	r3, [fp, #-8]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e353000b 	cmp	r3, #11
    10cc:	daffffec 	ble	1084 <twofiles+0xc8>
    10d0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    10d4:	eb000ec0 	bl	4bdc <close>
    10d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10dc:	e3530000 	cmp	r3, #0
    10e0:	0a000003 	beq	10f4 <twofiles+0x138>
    10e4:	eb000e98 	bl	4b4c <wait>
    10e8:	e3a03000 	mov	r3, #0
    10ec:	e50b3008 	str	r3, [fp, #-8]
    10f0:	ea000042 	b	1200 <twofiles+0x244>
    10f4:	eb000e8b 	bl	4b28 <exit>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e3530000 	cmp	r3, #0
    1100:	0a000001 	beq	110c <twofiles+0x150>
    1104:	e59f312c 	ldr	r3, [pc, #300]	@ 1238 <twofiles+0x27c>
    1108:	ea000000 	b	1110 <twofiles+0x154>
    110c:	e59f3128 	ldr	r3, [pc, #296]	@ 123c <twofiles+0x280>
    1110:	e3a01000 	mov	r1, #0
    1114:	e1a00003 	mov	r0, r3
    1118:	eb000eca 	bl	4c48 <open>
    111c:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
    1120:	e3a03000 	mov	r3, #0
    1124:	e50b3010 	str	r3, [fp, #-16]
    1128:	ea00001e 	b	11a8 <twofiles+0x1ec>
    112c:	e3a03000 	mov	r3, #0
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	ea000013 	b	1188 <twofiles+0x1cc>
    1138:	e59f210c 	ldr	r2, [pc, #268]	@ 124c <twofiles+0x290>
    113c:	e51b300c 	ldr	r3, [fp, #-12]
    1140:	e0823003 	add	r3, r2, r3
    1144:	e5d33000 	ldrb	r3, [r3]
    1148:	e1a02003 	mov	r2, r3
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e3530000 	cmp	r3, #0
    1154:	0a000001 	beq	1160 <twofiles+0x1a4>
    1158:	e3a03070 	mov	r3, #112	@ 0x70
    115c:	ea000000 	b	1164 <twofiles+0x1a8>
    1160:	e3a03063 	mov	r3, #99	@ 0x63
    1164:	e1530002 	cmp	r3, r2
    1168:	0a000003 	beq	117c <twofiles+0x1c0>
    116c:	e59f10e0 	ldr	r1, [pc, #224]	@ 1254 <twofiles+0x298>
    1170:	e3a00001 	mov	r0, #1
    1174:	eb00100d 	bl	51b0 <printf>
    1178:	eb000e6a 	bl	4b28 <exit>
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e2833001 	add	r3, r3, #1
    1184:	e50b300c 	str	r3, [fp, #-12]
    1188:	e51b200c 	ldr	r2, [fp, #-12]
    118c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1190:	e1520003 	cmp	r2, r3
    1194:	baffffe7 	blt	1138 <twofiles+0x17c>
    1198:	e51b2010 	ldr	r2, [fp, #-16]
    119c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11a0:	e0823003 	add	r3, r2, r3
    11a4:	e50b3010 	str	r3, [fp, #-16]
    11a8:	e3a02a02 	mov	r2, #8192	@ 0x2000
    11ac:	e59f1098 	ldr	r1, [pc, #152]	@ 124c <twofiles+0x290>
    11b0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    11b4:	eb000e76 	bl	4b94 <read>
    11b8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    11bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11c0:	e3530000 	cmp	r3, #0
    11c4:	caffffd8 	bgt	112c <twofiles+0x170>
    11c8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    11cc:	eb000e82 	bl	4bdc <close>
    11d0:	e51b3010 	ldr	r3, [fp, #-16]
    11d4:	e59f207c 	ldr	r2, [pc, #124]	@ 1258 <twofiles+0x29c>
    11d8:	e1530002 	cmp	r3, r2
    11dc:	0a000004 	beq	11f4 <twofiles+0x238>
    11e0:	e51b2010 	ldr	r2, [fp, #-16]
    11e4:	e59f1070 	ldr	r1, [pc, #112]	@ 125c <twofiles+0x2a0>
    11e8:	e3a00001 	mov	r0, #1
    11ec:	eb000fef 	bl	51b0 <printf>
    11f0:	eb000e4c 	bl	4b28 <exit>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2833001 	add	r3, r3, #1
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e3530001 	cmp	r3, #1
    1208:	daffffba 	ble	10f8 <twofiles+0x13c>
    120c:	e59f0024 	ldr	r0, [pc, #36]	@ 1238 <twofiles+0x27c>
    1210:	eb000e9e 	bl	4c90 <unlink>
    1214:	e59f0020 	ldr	r0, [pc, #32]	@ 123c <twofiles+0x280>
    1218:	eb000e9c 	bl	4c90 <unlink>
    121c:	e59f103c 	ldr	r1, [pc, #60]	@ 1260 <twofiles+0x2a4>
    1220:	e3a00001 	mov	r0, #1
    1224:	eb000fe1 	bl	51b0 <printf>
    1228:	e1a00000 	nop			@ (mov r0, r0)
    122c:	e24bd004 	sub	sp, fp, #4
    1230:	e8bd8800 	pop	{fp, pc}
    1234:	00005dc0 	.word	0x00005dc0
    1238:	00005dd0 	.word	0x00005dd0
    123c:	00005dd4 	.word	0x00005dd4
    1240:	00005ca4 	.word	0x00005ca4
    1244:	00000202 	.word	0x00000202
    1248:	00005dd8 	.word	0x00005dd8
    124c:	000070d4 	.word	0x000070d4
    1250:	00005de8 	.word	0x00005de8
    1254:	00005dfc 	.word	0x00005dfc
    1258:	00001770 	.word	0x00001770
    125c:	00005e08 	.word	0x00005e08
    1260:	00005e1c 	.word	0x00005e1c

00001264 <createdelete>:
    1264:	e92d4800 	push	{fp, lr}
    1268:	e28db004 	add	fp, sp, #4
    126c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1270:	e59f1348 	ldr	r1, [pc, #840]	@ 15c0 <createdelete+0x35c>
    1274:	e3a00001 	mov	r0, #1
    1278:	eb000fcc 	bl	51b0 <printf>
    127c:	eb000e20 	bl	4b04 <fork>
    1280:	e50b000c 	str	r0, [fp, #-12]
    1284:	e51b300c 	ldr	r3, [fp, #-12]
    1288:	e3530000 	cmp	r3, #0
    128c:	aa000003 	bge	12a0 <createdelete+0x3c>
    1290:	e59f132c 	ldr	r1, [pc, #812]	@ 15c4 <createdelete+0x360>
    1294:	e3a00001 	mov	r0, #1
    1298:	eb000fc4 	bl	51b0 <printf>
    129c:	eb000e21 	bl	4b28 <exit>
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e3530000 	cmp	r3, #0
    12a8:	0a000001 	beq	12b4 <createdelete+0x50>
    12ac:	e3a03070 	mov	r3, #112	@ 0x70
    12b0:	ea000000 	b	12b8 <createdelete+0x54>
    12b4:	e3a03063 	mov	r3, #99	@ 0x63
    12b8:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    12bc:	e3a03000 	mov	r3, #0
    12c0:	e54b302e 	strb	r3, [fp, #-46]	@ 0xffffffd2
    12c4:	e3a03000 	mov	r3, #0
    12c8:	e50b3008 	str	r3, [fp, #-8]
    12cc:	ea00002e 	b	138c <createdelete+0x128>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e6ef3073 	uxtb	r3, r3
    12d8:	e2833030 	add	r3, r3, #48	@ 0x30
    12dc:	e6ef3073 	uxtb	r3, r3
    12e0:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    12e4:	e24b3030 	sub	r3, fp, #48	@ 0x30
    12e8:	e59f12d8 	ldr	r1, [pc, #728]	@ 15c8 <createdelete+0x364>
    12ec:	e1a00003 	mov	r0, r3
    12f0:	eb000e54 	bl	4c48 <open>
    12f4:	e50b0010 	str	r0, [fp, #-16]
    12f8:	e51b3010 	ldr	r3, [fp, #-16]
    12fc:	e3530000 	cmp	r3, #0
    1300:	aa000003 	bge	1314 <createdelete+0xb0>
    1304:	e59f12c0 	ldr	r1, [pc, #704]	@ 15cc <createdelete+0x368>
    1308:	e3a00001 	mov	r0, #1
    130c:	eb000fa7 	bl	51b0 <printf>
    1310:	eb000e04 	bl	4b28 <exit>
    1314:	e51b0010 	ldr	r0, [fp, #-16]
    1318:	eb000e2f 	bl	4bdc <close>
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e3530000 	cmp	r3, #0
    1324:	da000015 	ble	1380 <createdelete+0x11c>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e2033001 	and	r3, r3, #1
    1330:	e3530000 	cmp	r3, #0
    1334:	1a000011 	bne	1380 <createdelete+0x11c>
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e1a02fa3 	lsr	r2, r3, #31
    1340:	e0823003 	add	r3, r2, r3
    1344:	e1a030c3 	asr	r3, r3, #1
    1348:	e6ef3073 	uxtb	r3, r3
    134c:	e2833030 	add	r3, r3, #48	@ 0x30
    1350:	e6ef3073 	uxtb	r3, r3
    1354:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1358:	e24b3030 	sub	r3, fp, #48	@ 0x30
    135c:	e1a00003 	mov	r0, r3
    1360:	eb000e4a 	bl	4c90 <unlink>
    1364:	e1a03000 	mov	r3, r0
    1368:	e3530000 	cmp	r3, #0
    136c:	aa000003 	bge	1380 <createdelete+0x11c>
    1370:	e59f1258 	ldr	r1, [pc, #600]	@ 15d0 <createdelete+0x36c>
    1374:	e3a00001 	mov	r0, #1
    1378:	eb000f8c 	bl	51b0 <printf>
    137c:	eb000de9 	bl	4b28 <exit>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e2833001 	add	r3, r3, #1
    1388:	e50b3008 	str	r3, [fp, #-8]
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e3530013 	cmp	r3, #19
    1394:	daffffcd 	ble	12d0 <createdelete+0x6c>
    1398:	e51b300c 	ldr	r3, [fp, #-12]
    139c:	e3530000 	cmp	r3, #0
    13a0:	1a000000 	bne	13a8 <createdelete+0x144>
    13a4:	eb000ddf 	bl	4b28 <exit>
    13a8:	eb000de7 	bl	4b4c <wait>
    13ac:	e3a03000 	mov	r3, #0
    13b0:	e50b3008 	str	r3, [fp, #-8]
    13b4:	ea000060 	b	153c <createdelete+0x2d8>
    13b8:	e3a03070 	mov	r3, #112	@ 0x70
    13bc:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e6ef3073 	uxtb	r3, r3
    13c8:	e2833030 	add	r3, r3, #48	@ 0x30
    13cc:	e6ef3073 	uxtb	r3, r3
    13d0:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    13d4:	e24b3030 	sub	r3, fp, #48	@ 0x30
    13d8:	e3a01000 	mov	r1, #0
    13dc:	e1a00003 	mov	r0, r3
    13e0:	eb000e18 	bl	4c48 <open>
    13e4:	e50b0010 	str	r0, [fp, #-16]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e3530000 	cmp	r3, #0
    13f0:	0a000002 	beq	1400 <createdelete+0x19c>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e3530009 	cmp	r3, #9
    13fc:	da000008 	ble	1424 <createdelete+0x1c0>
    1400:	e51b3010 	ldr	r3, [fp, #-16]
    1404:	e3530000 	cmp	r3, #0
    1408:	aa000005 	bge	1424 <createdelete+0x1c0>
    140c:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1410:	e1a02003 	mov	r2, r3
    1414:	e59f11b8 	ldr	r1, [pc, #440]	@ 15d4 <createdelete+0x370>
    1418:	e3a00001 	mov	r0, #1
    141c:	eb000f63 	bl	51b0 <printf>
    1420:	eb000dc0 	bl	4b28 <exit>
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e3530000 	cmp	r3, #0
    142c:	da00000b 	ble	1460 <createdelete+0x1fc>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e3530009 	cmp	r3, #9
    1438:	ca000008 	bgt	1460 <createdelete+0x1fc>
    143c:	e51b3010 	ldr	r3, [fp, #-16]
    1440:	e3530000 	cmp	r3, #0
    1444:	ba000005 	blt	1460 <createdelete+0x1fc>
    1448:	e24b3030 	sub	r3, fp, #48	@ 0x30
    144c:	e1a02003 	mov	r2, r3
    1450:	e59f1180 	ldr	r1, [pc, #384]	@ 15d8 <createdelete+0x374>
    1454:	e3a00001 	mov	r0, #1
    1458:	eb000f54 	bl	51b0 <printf>
    145c:	eb000db1 	bl	4b28 <exit>
    1460:	e51b3010 	ldr	r3, [fp, #-16]
    1464:	e3530000 	cmp	r3, #0
    1468:	ba000001 	blt	1474 <createdelete+0x210>
    146c:	e51b0010 	ldr	r0, [fp, #-16]
    1470:	eb000dd9 	bl	4bdc <close>
    1474:	e3a03063 	mov	r3, #99	@ 0x63
    1478:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e6ef3073 	uxtb	r3, r3
    1484:	e2833030 	add	r3, r3, #48	@ 0x30
    1488:	e6ef3073 	uxtb	r3, r3
    148c:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1490:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1494:	e3a01000 	mov	r1, #0
    1498:	e1a00003 	mov	r0, r3
    149c:	eb000de9 	bl	4c48 <open>
    14a0:	e50b0010 	str	r0, [fp, #-16]
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e3530000 	cmp	r3, #0
    14ac:	0a000002 	beq	14bc <createdelete+0x258>
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e3530009 	cmp	r3, #9
    14b8:	da000008 	ble	14e0 <createdelete+0x27c>
    14bc:	e51b3010 	ldr	r3, [fp, #-16]
    14c0:	e3530000 	cmp	r3, #0
    14c4:	aa000005 	bge	14e0 <createdelete+0x27c>
    14c8:	e24b3030 	sub	r3, fp, #48	@ 0x30
    14cc:	e1a02003 	mov	r2, r3
    14d0:	e59f10fc 	ldr	r1, [pc, #252]	@ 15d4 <createdelete+0x370>
    14d4:	e3a00001 	mov	r0, #1
    14d8:	eb000f34 	bl	51b0 <printf>
    14dc:	eb000d91 	bl	4b28 <exit>
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e3530000 	cmp	r3, #0
    14e8:	da00000b 	ble	151c <createdelete+0x2b8>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e3530009 	cmp	r3, #9
    14f4:	ca000008 	bgt	151c <createdelete+0x2b8>
    14f8:	e51b3010 	ldr	r3, [fp, #-16]
    14fc:	e3530000 	cmp	r3, #0
    1500:	ba000005 	blt	151c <createdelete+0x2b8>
    1504:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1508:	e1a02003 	mov	r2, r3
    150c:	e59f10c4 	ldr	r1, [pc, #196]	@ 15d8 <createdelete+0x374>
    1510:	e3a00001 	mov	r0, #1
    1514:	eb000f25 	bl	51b0 <printf>
    1518:	eb000d82 	bl	4b28 <exit>
    151c:	e51b3010 	ldr	r3, [fp, #-16]
    1520:	e3530000 	cmp	r3, #0
    1524:	ba000001 	blt	1530 <createdelete+0x2cc>
    1528:	e51b0010 	ldr	r0, [fp, #-16]
    152c:	eb000daa 	bl	4bdc <close>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e2833001 	add	r3, r3, #1
    1538:	e50b3008 	str	r3, [fp, #-8]
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e3530013 	cmp	r3, #19
    1544:	daffff9b 	ble	13b8 <createdelete+0x154>
    1548:	e3a03000 	mov	r3, #0
    154c:	e50b3008 	str	r3, [fp, #-8]
    1550:	ea000011 	b	159c <createdelete+0x338>
    1554:	e3a03070 	mov	r3, #112	@ 0x70
    1558:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e6ef3073 	uxtb	r3, r3
    1564:	e2833030 	add	r3, r3, #48	@ 0x30
    1568:	e6ef3073 	uxtb	r3, r3
    156c:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1570:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1574:	e1a00003 	mov	r0, r3
    1578:	eb000dc4 	bl	4c90 <unlink>
    157c:	e3a03063 	mov	r3, #99	@ 0x63
    1580:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    1584:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1588:	e1a00003 	mov	r0, r3
    158c:	eb000dbf 	bl	4c90 <unlink>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e2833001 	add	r3, r3, #1
    1598:	e50b3008 	str	r3, [fp, #-8]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e3530013 	cmp	r3, #19
    15a4:	daffffea 	ble	1554 <createdelete+0x2f0>
    15a8:	e59f102c 	ldr	r1, [pc, #44]	@ 15dc <createdelete+0x378>
    15ac:	e3a00001 	mov	r0, #1
    15b0:	eb000efe 	bl	51b0 <printf>
    15b4:	e1a00000 	nop			@ (mov r0, r0)
    15b8:	e24bd004 	sub	sp, fp, #4
    15bc:	e8bd8800 	pop	{fp, pc}
    15c0:	00005e2c 	.word	0x00005e2c
    15c4:	00005ca4 	.word	0x00005ca4
    15c8:	00000202 	.word	0x00000202
    15cc:	00005dd8 	.word	0x00005dd8
    15d0:	00005e40 	.word	0x00005e40
    15d4:	00005e50 	.word	0x00005e50
    15d8:	00005e74 	.word	0x00005e74
    15dc:	00005e94 	.word	0x00005e94

000015e0 <unlinkread>:
    15e0:	e92d4800 	push	{fp, lr}
    15e4:	e28db004 	add	fp, sp, #4
    15e8:	e24dd008 	sub	sp, sp, #8
    15ec:	e59f1160 	ldr	r1, [pc, #352]	@ 1754 <unlinkread+0x174>
    15f0:	e3a00001 	mov	r0, #1
    15f4:	eb000eed 	bl	51b0 <printf>
    15f8:	e59f1158 	ldr	r1, [pc, #344]	@ 1758 <unlinkread+0x178>
    15fc:	e59f0158 	ldr	r0, [pc, #344]	@ 175c <unlinkread+0x17c>
    1600:	eb000d90 	bl	4c48 <open>
    1604:	e50b0008 	str	r0, [fp, #-8]
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e3530000 	cmp	r3, #0
    1610:	aa000003 	bge	1624 <unlinkread+0x44>
    1614:	e59f1144 	ldr	r1, [pc, #324]	@ 1760 <unlinkread+0x180>
    1618:	e3a00001 	mov	r0, #1
    161c:	eb000ee3 	bl	51b0 <printf>
    1620:	eb000d40 	bl	4b28 <exit>
    1624:	e3a02005 	mov	r2, #5
    1628:	e59f1134 	ldr	r1, [pc, #308]	@ 1764 <unlinkread+0x184>
    162c:	e51b0008 	ldr	r0, [fp, #-8]
    1630:	eb000d60 	bl	4bb8 <write>
    1634:	e51b0008 	ldr	r0, [fp, #-8]
    1638:	eb000d67 	bl	4bdc <close>
    163c:	e3a01002 	mov	r1, #2
    1640:	e59f0114 	ldr	r0, [pc, #276]	@ 175c <unlinkread+0x17c>
    1644:	eb000d7f 	bl	4c48 <open>
    1648:	e50b0008 	str	r0, [fp, #-8]
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e3530000 	cmp	r3, #0
    1654:	aa000003 	bge	1668 <unlinkread+0x88>
    1658:	e59f1108 	ldr	r1, [pc, #264]	@ 1768 <unlinkread+0x188>
    165c:	e3a00001 	mov	r0, #1
    1660:	eb000ed2 	bl	51b0 <printf>
    1664:	eb000d2f 	bl	4b28 <exit>
    1668:	e59f00ec 	ldr	r0, [pc, #236]	@ 175c <unlinkread+0x17c>
    166c:	eb000d87 	bl	4c90 <unlink>
    1670:	e1a03000 	mov	r3, r0
    1674:	e3530000 	cmp	r3, #0
    1678:	0a000003 	beq	168c <unlinkread+0xac>
    167c:	e59f10e8 	ldr	r1, [pc, #232]	@ 176c <unlinkread+0x18c>
    1680:	e3a00001 	mov	r0, #1
    1684:	eb000ec9 	bl	51b0 <printf>
    1688:	eb000d26 	bl	4b28 <exit>
    168c:	e59f10c4 	ldr	r1, [pc, #196]	@ 1758 <unlinkread+0x178>
    1690:	e59f00c4 	ldr	r0, [pc, #196]	@ 175c <unlinkread+0x17c>
    1694:	eb000d6b 	bl	4c48 <open>
    1698:	e50b000c 	str	r0, [fp, #-12]
    169c:	e3a02003 	mov	r2, #3
    16a0:	e59f10c8 	ldr	r1, [pc, #200]	@ 1770 <unlinkread+0x190>
    16a4:	e51b000c 	ldr	r0, [fp, #-12]
    16a8:	eb000d42 	bl	4bb8 <write>
    16ac:	e51b000c 	ldr	r0, [fp, #-12]
    16b0:	eb000d49 	bl	4bdc <close>
    16b4:	e3a02a02 	mov	r2, #8192	@ 0x2000
    16b8:	e59f10b4 	ldr	r1, [pc, #180]	@ 1774 <unlinkread+0x194>
    16bc:	e51b0008 	ldr	r0, [fp, #-8]
    16c0:	eb000d33 	bl	4b94 <read>
    16c4:	e1a03000 	mov	r3, r0
    16c8:	e3530005 	cmp	r3, #5
    16cc:	0a000003 	beq	16e0 <unlinkread+0x100>
    16d0:	e59f10a0 	ldr	r1, [pc, #160]	@ 1778 <unlinkread+0x198>
    16d4:	e3a00001 	mov	r0, #1
    16d8:	eb000eb4 	bl	51b0 <printf>
    16dc:	eb000d11 	bl	4b28 <exit>
    16e0:	e59f308c 	ldr	r3, [pc, #140]	@ 1774 <unlinkread+0x194>
    16e4:	e5d33000 	ldrb	r3, [r3]
    16e8:	e3530068 	cmp	r3, #104	@ 0x68
    16ec:	0a000003 	beq	1700 <unlinkread+0x120>
    16f0:	e59f1084 	ldr	r1, [pc, #132]	@ 177c <unlinkread+0x19c>
    16f4:	e3a00001 	mov	r0, #1
    16f8:	eb000eac 	bl	51b0 <printf>
    16fc:	eb000d09 	bl	4b28 <exit>
    1700:	e3a0200a 	mov	r2, #10
    1704:	e59f1068 	ldr	r1, [pc, #104]	@ 1774 <unlinkread+0x194>
    1708:	e51b0008 	ldr	r0, [fp, #-8]
    170c:	eb000d29 	bl	4bb8 <write>
    1710:	e1a03000 	mov	r3, r0
    1714:	e353000a 	cmp	r3, #10
    1718:	0a000003 	beq	172c <unlinkread+0x14c>
    171c:	e59f105c 	ldr	r1, [pc, #92]	@ 1780 <unlinkread+0x1a0>
    1720:	e3a00001 	mov	r0, #1
    1724:	eb000ea1 	bl	51b0 <printf>
    1728:	eb000cfe 	bl	4b28 <exit>
    172c:	e51b0008 	ldr	r0, [fp, #-8]
    1730:	eb000d29 	bl	4bdc <close>
    1734:	e59f0020 	ldr	r0, [pc, #32]	@ 175c <unlinkread+0x17c>
    1738:	eb000d54 	bl	4c90 <unlink>
    173c:	e59f1040 	ldr	r1, [pc, #64]	@ 1784 <unlinkread+0x1a4>
    1740:	e3a00001 	mov	r0, #1
    1744:	eb000e99 	bl	51b0 <printf>
    1748:	e1a00000 	nop			@ (mov r0, r0)
    174c:	e24bd004 	sub	sp, fp, #4
    1750:	e8bd8800 	pop	{fp, pc}
    1754:	00005ea8 	.word	0x00005ea8
    1758:	00000202 	.word	0x00000202
    175c:	00005ebc 	.word	0x00005ebc
    1760:	00005ec8 	.word	0x00005ec8
    1764:	00005ee4 	.word	0x00005ee4
    1768:	00005eec 	.word	0x00005eec
    176c:	00005f04 	.word	0x00005f04
    1770:	00005f20 	.word	0x00005f20
    1774:	000070d4 	.word	0x000070d4
    1778:	00005f24 	.word	0x00005f24
    177c:	00005f3c 	.word	0x00005f3c
    1780:	00005f54 	.word	0x00005f54
    1784:	00005f70 	.word	0x00005f70

00001788 <linktest>:
    1788:	e92d4800 	push	{fp, lr}
    178c:	e28db004 	add	fp, sp, #4
    1790:	e24dd008 	sub	sp, sp, #8
    1794:	e59f11c4 	ldr	r1, [pc, #452]	@ 1960 <linktest+0x1d8>
    1798:	e3a00001 	mov	r0, #1
    179c:	eb000e83 	bl	51b0 <printf>
    17a0:	e59f01bc 	ldr	r0, [pc, #444]	@ 1964 <linktest+0x1dc>
    17a4:	eb000d39 	bl	4c90 <unlink>
    17a8:	e59f01b8 	ldr	r0, [pc, #440]	@ 1968 <linktest+0x1e0>
    17ac:	eb000d37 	bl	4c90 <unlink>
    17b0:	e59f11b4 	ldr	r1, [pc, #436]	@ 196c <linktest+0x1e4>
    17b4:	e59f01a8 	ldr	r0, [pc, #424]	@ 1964 <linktest+0x1dc>
    17b8:	eb000d22 	bl	4c48 <open>
    17bc:	e50b0008 	str	r0, [fp, #-8]
    17c0:	e51b3008 	ldr	r3, [fp, #-8]
    17c4:	e3530000 	cmp	r3, #0
    17c8:	aa000003 	bge	17dc <linktest+0x54>
    17cc:	e59f119c 	ldr	r1, [pc, #412]	@ 1970 <linktest+0x1e8>
    17d0:	e3a00001 	mov	r0, #1
    17d4:	eb000e75 	bl	51b0 <printf>
    17d8:	eb000cd2 	bl	4b28 <exit>
    17dc:	e3a02005 	mov	r2, #5
    17e0:	e59f118c 	ldr	r1, [pc, #396]	@ 1974 <linktest+0x1ec>
    17e4:	e51b0008 	ldr	r0, [fp, #-8]
    17e8:	eb000cf2 	bl	4bb8 <write>
    17ec:	e1a03000 	mov	r3, r0
    17f0:	e3530005 	cmp	r3, #5
    17f4:	0a000003 	beq	1808 <linktest+0x80>
    17f8:	e59f1178 	ldr	r1, [pc, #376]	@ 1978 <linktest+0x1f0>
    17fc:	e3a00001 	mov	r0, #1
    1800:	eb000e6a 	bl	51b0 <printf>
    1804:	eb000cc7 	bl	4b28 <exit>
    1808:	e51b0008 	ldr	r0, [fp, #-8]
    180c:	eb000cf2 	bl	4bdc <close>
    1810:	e59f1150 	ldr	r1, [pc, #336]	@ 1968 <linktest+0x1e0>
    1814:	e59f0148 	ldr	r0, [pc, #328]	@ 1964 <linktest+0x1dc>
    1818:	eb000d2e 	bl	4cd8 <link>
    181c:	e1a03000 	mov	r3, r0
    1820:	e3530000 	cmp	r3, #0
    1824:	aa000003 	bge	1838 <linktest+0xb0>
    1828:	e59f114c 	ldr	r1, [pc, #332]	@ 197c <linktest+0x1f4>
    182c:	e3a00001 	mov	r0, #1
    1830:	eb000e5e 	bl	51b0 <printf>
    1834:	eb000cbb 	bl	4b28 <exit>
    1838:	e59f0124 	ldr	r0, [pc, #292]	@ 1964 <linktest+0x1dc>
    183c:	eb000d13 	bl	4c90 <unlink>
    1840:	e3a01000 	mov	r1, #0
    1844:	e59f0118 	ldr	r0, [pc, #280]	@ 1964 <linktest+0x1dc>
    1848:	eb000cfe 	bl	4c48 <open>
    184c:	e1a03000 	mov	r3, r0
    1850:	e3530000 	cmp	r3, #0
    1854:	ba000003 	blt	1868 <linktest+0xe0>
    1858:	e59f1120 	ldr	r1, [pc, #288]	@ 1980 <linktest+0x1f8>
    185c:	e3a00001 	mov	r0, #1
    1860:	eb000e52 	bl	51b0 <printf>
    1864:	eb000caf 	bl	4b28 <exit>
    1868:	e3a01000 	mov	r1, #0
    186c:	e59f00f4 	ldr	r0, [pc, #244]	@ 1968 <linktest+0x1e0>
    1870:	eb000cf4 	bl	4c48 <open>
    1874:	e50b0008 	str	r0, [fp, #-8]
    1878:	e51b3008 	ldr	r3, [fp, #-8]
    187c:	e3530000 	cmp	r3, #0
    1880:	aa000003 	bge	1894 <linktest+0x10c>
    1884:	e59f10f8 	ldr	r1, [pc, #248]	@ 1984 <linktest+0x1fc>
    1888:	e3a00001 	mov	r0, #1
    188c:	eb000e47 	bl	51b0 <printf>
    1890:	eb000ca4 	bl	4b28 <exit>
    1894:	e3a02a02 	mov	r2, #8192	@ 0x2000
    1898:	e59f10e8 	ldr	r1, [pc, #232]	@ 1988 <linktest+0x200>
    189c:	e51b0008 	ldr	r0, [fp, #-8]
    18a0:	eb000cbb 	bl	4b94 <read>
    18a4:	e1a03000 	mov	r3, r0
    18a8:	e3530005 	cmp	r3, #5
    18ac:	0a000003 	beq	18c0 <linktest+0x138>
    18b0:	e59f10d4 	ldr	r1, [pc, #212]	@ 198c <linktest+0x204>
    18b4:	e3a00001 	mov	r0, #1
    18b8:	eb000e3c 	bl	51b0 <printf>
    18bc:	eb000c99 	bl	4b28 <exit>
    18c0:	e51b0008 	ldr	r0, [fp, #-8]
    18c4:	eb000cc4 	bl	4bdc <close>
    18c8:	e59f1098 	ldr	r1, [pc, #152]	@ 1968 <linktest+0x1e0>
    18cc:	e59f0094 	ldr	r0, [pc, #148]	@ 1968 <linktest+0x1e0>
    18d0:	eb000d00 	bl	4cd8 <link>
    18d4:	e1a03000 	mov	r3, r0
    18d8:	e3530000 	cmp	r3, #0
    18dc:	ba000003 	blt	18f0 <linktest+0x168>
    18e0:	e59f10a8 	ldr	r1, [pc, #168]	@ 1990 <linktest+0x208>
    18e4:	e3a00001 	mov	r0, #1
    18e8:	eb000e30 	bl	51b0 <printf>
    18ec:	eb000c8d 	bl	4b28 <exit>
    18f0:	e59f0070 	ldr	r0, [pc, #112]	@ 1968 <linktest+0x1e0>
    18f4:	eb000ce5 	bl	4c90 <unlink>
    18f8:	e59f1064 	ldr	r1, [pc, #100]	@ 1964 <linktest+0x1dc>
    18fc:	e59f0064 	ldr	r0, [pc, #100]	@ 1968 <linktest+0x1e0>
    1900:	eb000cf4 	bl	4cd8 <link>
    1904:	e1a03000 	mov	r3, r0
    1908:	e3530000 	cmp	r3, #0
    190c:	ba000003 	blt	1920 <linktest+0x198>
    1910:	e59f107c 	ldr	r1, [pc, #124]	@ 1994 <linktest+0x20c>
    1914:	e3a00001 	mov	r0, #1
    1918:	eb000e24 	bl	51b0 <printf>
    191c:	eb000c81 	bl	4b28 <exit>
    1920:	e59f103c 	ldr	r1, [pc, #60]	@ 1964 <linktest+0x1dc>
    1924:	e59f006c 	ldr	r0, [pc, #108]	@ 1998 <linktest+0x210>
    1928:	eb000cea 	bl	4cd8 <link>
    192c:	e1a03000 	mov	r3, r0
    1930:	e3530000 	cmp	r3, #0
    1934:	ba000003 	blt	1948 <linktest+0x1c0>
    1938:	e59f105c 	ldr	r1, [pc, #92]	@ 199c <linktest+0x214>
    193c:	e3a00001 	mov	r0, #1
    1940:	eb000e1a 	bl	51b0 <printf>
    1944:	eb000c77 	bl	4b28 <exit>
    1948:	e59f1050 	ldr	r1, [pc, #80]	@ 19a0 <linktest+0x218>
    194c:	e3a00001 	mov	r0, #1
    1950:	eb000e16 	bl	51b0 <printf>
    1954:	e1a00000 	nop			@ (mov r0, r0)
    1958:	e24bd004 	sub	sp, fp, #4
    195c:	e8bd8800 	pop	{fp, pc}
    1960:	00005f80 	.word	0x00005f80
    1964:	00005f8c 	.word	0x00005f8c
    1968:	00005f90 	.word	0x00005f90
    196c:	00000202 	.word	0x00000202
    1970:	00005f94 	.word	0x00005f94
    1974:	00005ee4 	.word	0x00005ee4
    1978:	00005fa8 	.word	0x00005fa8
    197c:	00005fbc 	.word	0x00005fbc
    1980:	00005fd4 	.word	0x00005fd4
    1984:	00005ffc 	.word	0x00005ffc
    1988:	000070d4 	.word	0x000070d4
    198c:	00006010 	.word	0x00006010
    1990:	00006024 	.word	0x00006024
    1994:	00006044 	.word	0x00006044
    1998:	00006068 	.word	0x00006068
    199c:	0000606c 	.word	0x0000606c
    19a0:	00006088 	.word	0x00006088

000019a4 <concreate>:
    19a4:	e92d4800 	push	{fp, lr}
    19a8:	e28db004 	add	fp, sp, #4
    19ac:	e24dd050 	sub	sp, sp, #80	@ 0x50
    19b0:	e59f1420 	ldr	r1, [pc, #1056]	@ 1dd8 <concreate+0x434>
    19b4:	e3a00001 	mov	r0, #1
    19b8:	eb000dfc 	bl	51b0 <printf>
    19bc:	e3a03043 	mov	r3, #67	@ 0x43
    19c0:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    19c4:	e3a03000 	mov	r3, #0
    19c8:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    19cc:	e3a03000 	mov	r3, #0
    19d0:	e50b3008 	str	r3, [fp, #-8]
    19d4:	ea000048 	b	1afc <concreate+0x158>
    19d8:	e51b3008 	ldr	r3, [fp, #-8]
    19dc:	e6ef3073 	uxtb	r3, r3
    19e0:	e2833030 	add	r3, r3, #48	@ 0x30
    19e4:	e6ef3073 	uxtb	r3, r3
    19e8:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    19ec:	e24b3018 	sub	r3, fp, #24
    19f0:	e1a00003 	mov	r0, r3
    19f4:	eb000ca5 	bl	4c90 <unlink>
    19f8:	eb000c41 	bl	4b04 <fork>
    19fc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    1a00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a04:	e3530000 	cmp	r3, #0
    1a08:	0a00000f 	beq	1a4c <concreate+0xa8>
    1a0c:	e51b1008 	ldr	r1, [fp, #-8]
    1a10:	e59f33c4 	ldr	r3, [pc, #964]	@ 1ddc <concreate+0x438>
    1a14:	e0c23193 	smull	r3, r2, r3, r1
    1a18:	e1a03fc1 	asr	r3, r1, #31
    1a1c:	e0422003 	sub	r2, r2, r3
    1a20:	e1a03002 	mov	r3, r2
    1a24:	e1a03083 	lsl	r3, r3, #1
    1a28:	e0833002 	add	r3, r3, r2
    1a2c:	e0412003 	sub	r2, r1, r3
    1a30:	e3520001 	cmp	r2, #1
    1a34:	1a000004 	bne	1a4c <concreate+0xa8>
    1a38:	e24b3018 	sub	r3, fp, #24
    1a3c:	e1a01003 	mov	r1, r3
    1a40:	e59f0398 	ldr	r0, [pc, #920]	@ 1de0 <concreate+0x43c>
    1a44:	eb000ca3 	bl	4cd8 <link>
    1a48:	ea000023 	b	1adc <concreate+0x138>
    1a4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a50:	e3530000 	cmp	r3, #0
    1a54:	1a000010 	bne	1a9c <concreate+0xf8>
    1a58:	e51b1008 	ldr	r1, [fp, #-8]
    1a5c:	e59f3380 	ldr	r3, [pc, #896]	@ 1de4 <concreate+0x440>
    1a60:	e0c32193 	smull	r2, r3, r3, r1
    1a64:	e1a020c3 	asr	r2, r3, #1
    1a68:	e1a03fc1 	asr	r3, r1, #31
    1a6c:	e0422003 	sub	r2, r2, r3
    1a70:	e1a03002 	mov	r3, r2
    1a74:	e1a03103 	lsl	r3, r3, #2
    1a78:	e0833002 	add	r3, r3, r2
    1a7c:	e0412003 	sub	r2, r1, r3
    1a80:	e3520001 	cmp	r2, #1
    1a84:	1a000004 	bne	1a9c <concreate+0xf8>
    1a88:	e24b3018 	sub	r3, fp, #24
    1a8c:	e1a01003 	mov	r1, r3
    1a90:	e59f0348 	ldr	r0, [pc, #840]	@ 1de0 <concreate+0x43c>
    1a94:	eb000c8f 	bl	4cd8 <link>
    1a98:	ea00000f 	b	1adc <concreate+0x138>
    1a9c:	e24b3018 	sub	r3, fp, #24
    1aa0:	e59f1340 	ldr	r1, [pc, #832]	@ 1de8 <concreate+0x444>
    1aa4:	e1a00003 	mov	r0, r3
    1aa8:	eb000c66 	bl	4c48 <open>
    1aac:	e50b0010 	str	r0, [fp, #-16]
    1ab0:	e51b3010 	ldr	r3, [fp, #-16]
    1ab4:	e3530000 	cmp	r3, #0
    1ab8:	aa000005 	bge	1ad4 <concreate+0x130>
    1abc:	e24b3018 	sub	r3, fp, #24
    1ac0:	e1a02003 	mov	r2, r3
    1ac4:	e59f1320 	ldr	r1, [pc, #800]	@ 1dec <concreate+0x448>
    1ac8:	e3a00001 	mov	r0, #1
    1acc:	eb000db7 	bl	51b0 <printf>
    1ad0:	eb000c14 	bl	4b28 <exit>
    1ad4:	e51b0010 	ldr	r0, [fp, #-16]
    1ad8:	eb000c3f 	bl	4bdc <close>
    1adc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ae0:	e3530000 	cmp	r3, #0
    1ae4:	1a000000 	bne	1aec <concreate+0x148>
    1ae8:	eb000c0e 	bl	4b28 <exit>
    1aec:	eb000c16 	bl	4b4c <wait>
    1af0:	e51b3008 	ldr	r3, [fp, #-8]
    1af4:	e2833001 	add	r3, r3, #1
    1af8:	e50b3008 	str	r3, [fp, #-8]
    1afc:	e51b3008 	ldr	r3, [fp, #-8]
    1b00:	e3530027 	cmp	r3, #39	@ 0x27
    1b04:	daffffb3 	ble	19d8 <concreate+0x34>
    1b08:	e24b3040 	sub	r3, fp, #64	@ 0x40
    1b0c:	e3a02028 	mov	r2, #40	@ 0x28
    1b10:	e3a01000 	mov	r1, #0
    1b14:	e1a00003 	mov	r0, r3
    1b18:	eb0009dc 	bl	4290 <memset>
    1b1c:	e3a01000 	mov	r1, #0
    1b20:	e59f02c8 	ldr	r0, [pc, #712]	@ 1df0 <concreate+0x44c>
    1b24:	eb000c47 	bl	4c48 <open>
    1b28:	e50b0010 	str	r0, [fp, #-16]
    1b2c:	e3a03000 	mov	r3, #0
    1b30:	e50b300c 	str	r3, [fp, #-12]
    1b34:	ea00002f 	b	1bf8 <concreate+0x254>
    1b38:	e15b35b0 	ldrh	r3, [fp, #-80]	@ 0xffffffb0
    1b3c:	e3530000 	cmp	r3, #0
    1b40:	0a00002b 	beq	1bf4 <concreate+0x250>
    1b44:	e55b304e 	ldrb	r3, [fp, #-78]	@ 0xffffffb2
    1b48:	e3530043 	cmp	r3, #67	@ 0x43
    1b4c:	1a000029 	bne	1bf8 <concreate+0x254>
    1b50:	e55b304c 	ldrb	r3, [fp, #-76]	@ 0xffffffb4
    1b54:	e3530000 	cmp	r3, #0
    1b58:	1a000026 	bne	1bf8 <concreate+0x254>
    1b5c:	e55b304d 	ldrb	r3, [fp, #-77]	@ 0xffffffb3
    1b60:	e2433030 	sub	r3, r3, #48	@ 0x30
    1b64:	e50b3008 	str	r3, [fp, #-8]
    1b68:	e51b3008 	ldr	r3, [fp, #-8]
    1b6c:	e3530000 	cmp	r3, #0
    1b70:	ba000002 	blt	1b80 <concreate+0x1dc>
    1b74:	e51b3008 	ldr	r3, [fp, #-8]
    1b78:	e3530027 	cmp	r3, #39	@ 0x27
    1b7c:	9a000006 	bls	1b9c <concreate+0x1f8>
    1b80:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1b84:	e2833002 	add	r3, r3, #2
    1b88:	e1a02003 	mov	r2, r3
    1b8c:	e59f1260 	ldr	r1, [pc, #608]	@ 1df4 <concreate+0x450>
    1b90:	e3a00001 	mov	r0, #1
    1b94:	eb000d85 	bl	51b0 <printf>
    1b98:	eb000be2 	bl	4b28 <exit>
    1b9c:	e24b2040 	sub	r2, fp, #64	@ 0x40
    1ba0:	e51b3008 	ldr	r3, [fp, #-8]
    1ba4:	e0823003 	add	r3, r2, r3
    1ba8:	e5d33000 	ldrb	r3, [r3]
    1bac:	e3530000 	cmp	r3, #0
    1bb0:	0a000006 	beq	1bd0 <concreate+0x22c>
    1bb4:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1bb8:	e2833002 	add	r3, r3, #2
    1bbc:	e1a02003 	mov	r2, r3
    1bc0:	e59f1230 	ldr	r1, [pc, #560]	@ 1df8 <concreate+0x454>
    1bc4:	e3a00001 	mov	r0, #1
    1bc8:	eb000d78 	bl	51b0 <printf>
    1bcc:	eb000bd5 	bl	4b28 <exit>
    1bd0:	e24b2040 	sub	r2, fp, #64	@ 0x40
    1bd4:	e51b3008 	ldr	r3, [fp, #-8]
    1bd8:	e0823003 	add	r3, r2, r3
    1bdc:	e3a02001 	mov	r2, #1
    1be0:	e5c32000 	strb	r2, [r3]
    1be4:	e51b300c 	ldr	r3, [fp, #-12]
    1be8:	e2833001 	add	r3, r3, #1
    1bec:	e50b300c 	str	r3, [fp, #-12]
    1bf0:	ea000000 	b	1bf8 <concreate+0x254>
    1bf4:	e1a00000 	nop			@ (mov r0, r0)
    1bf8:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1bfc:	e3a02010 	mov	r2, #16
    1c00:	e1a01003 	mov	r1, r3
    1c04:	e51b0010 	ldr	r0, [fp, #-16]
    1c08:	eb000be1 	bl	4b94 <read>
    1c0c:	e1a03000 	mov	r3, r0
    1c10:	e3530000 	cmp	r3, #0
    1c14:	caffffc7 	bgt	1b38 <concreate+0x194>
    1c18:	e51b0010 	ldr	r0, [fp, #-16]
    1c1c:	eb000bee 	bl	4bdc <close>
    1c20:	e51b300c 	ldr	r3, [fp, #-12]
    1c24:	e3530028 	cmp	r3, #40	@ 0x28
    1c28:	0a000003 	beq	1c3c <concreate+0x298>
    1c2c:	e59f11c8 	ldr	r1, [pc, #456]	@ 1dfc <concreate+0x458>
    1c30:	e3a00001 	mov	r0, #1
    1c34:	eb000d5d 	bl	51b0 <printf>
    1c38:	eb000bba 	bl	4b28 <exit>
    1c3c:	e3a03000 	mov	r3, #0
    1c40:	e50b3008 	str	r3, [fp, #-8]
    1c44:	ea00005a 	b	1db4 <concreate+0x410>
    1c48:	e51b3008 	ldr	r3, [fp, #-8]
    1c4c:	e6ef3073 	uxtb	r3, r3
    1c50:	e2833030 	add	r3, r3, #48	@ 0x30
    1c54:	e6ef3073 	uxtb	r3, r3
    1c58:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    1c5c:	eb000ba8 	bl	4b04 <fork>
    1c60:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    1c64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1c68:	e3530000 	cmp	r3, #0
    1c6c:	aa000003 	bge	1c80 <concreate+0x2dc>
    1c70:	e59f1188 	ldr	r1, [pc, #392]	@ 1e00 <concreate+0x45c>
    1c74:	e3a00001 	mov	r0, #1
    1c78:	eb000d4c 	bl	51b0 <printf>
    1c7c:	eb000ba9 	bl	4b28 <exit>
    1c80:	e51b1008 	ldr	r1, [fp, #-8]
    1c84:	e59f3150 	ldr	r3, [pc, #336]	@ 1ddc <concreate+0x438>
    1c88:	e0c23193 	smull	r3, r2, r3, r1
    1c8c:	e1a03fc1 	asr	r3, r1, #31
    1c90:	e0422003 	sub	r2, r2, r3
    1c94:	e1a03002 	mov	r3, r2
    1c98:	e1a03083 	lsl	r3, r3, #1
    1c9c:	e0833002 	add	r3, r3, r2
    1ca0:	e0412003 	sub	r2, r1, r3
    1ca4:	e3520000 	cmp	r2, #0
    1ca8:	1a000002 	bne	1cb8 <concreate+0x314>
    1cac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1cb0:	e3530000 	cmp	r3, #0
    1cb4:	0a00000d 	beq	1cf0 <concreate+0x34c>
    1cb8:	e51b1008 	ldr	r1, [fp, #-8]
    1cbc:	e59f3118 	ldr	r3, [pc, #280]	@ 1ddc <concreate+0x438>
    1cc0:	e0c23193 	smull	r3, r2, r3, r1
    1cc4:	e1a03fc1 	asr	r3, r1, #31
    1cc8:	e0422003 	sub	r2, r2, r3
    1ccc:	e1a03002 	mov	r3, r2
    1cd0:	e1a03083 	lsl	r3, r3, #1
    1cd4:	e0833002 	add	r3, r3, r2
    1cd8:	e0412003 	sub	r2, r1, r3
    1cdc:	e3520001 	cmp	r2, #1
    1ce0:	1a00001f 	bne	1d64 <concreate+0x3c0>
    1ce4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ce8:	e3530000 	cmp	r3, #0
    1cec:	0a00001c 	beq	1d64 <concreate+0x3c0>
    1cf0:	e24b3018 	sub	r3, fp, #24
    1cf4:	e3a01000 	mov	r1, #0
    1cf8:	e1a00003 	mov	r0, r3
    1cfc:	eb000bd1 	bl	4c48 <open>
    1d00:	e1a03000 	mov	r3, r0
    1d04:	e1a00003 	mov	r0, r3
    1d08:	eb000bb3 	bl	4bdc <close>
    1d0c:	e24b3018 	sub	r3, fp, #24
    1d10:	e3a01000 	mov	r1, #0
    1d14:	e1a00003 	mov	r0, r3
    1d18:	eb000bca 	bl	4c48 <open>
    1d1c:	e1a03000 	mov	r3, r0
    1d20:	e1a00003 	mov	r0, r3
    1d24:	eb000bac 	bl	4bdc <close>
    1d28:	e24b3018 	sub	r3, fp, #24
    1d2c:	e3a01000 	mov	r1, #0
    1d30:	e1a00003 	mov	r0, r3
    1d34:	eb000bc3 	bl	4c48 <open>
    1d38:	e1a03000 	mov	r3, r0
    1d3c:	e1a00003 	mov	r0, r3
    1d40:	eb000ba5 	bl	4bdc <close>
    1d44:	e24b3018 	sub	r3, fp, #24
    1d48:	e3a01000 	mov	r1, #0
    1d4c:	e1a00003 	mov	r0, r3
    1d50:	eb000bbc 	bl	4c48 <open>
    1d54:	e1a03000 	mov	r3, r0
    1d58:	e1a00003 	mov	r0, r3
    1d5c:	eb000b9e 	bl	4bdc <close>
    1d60:	ea00000b 	b	1d94 <concreate+0x3f0>
    1d64:	e24b3018 	sub	r3, fp, #24
    1d68:	e1a00003 	mov	r0, r3
    1d6c:	eb000bc7 	bl	4c90 <unlink>
    1d70:	e24b3018 	sub	r3, fp, #24
    1d74:	e1a00003 	mov	r0, r3
    1d78:	eb000bc4 	bl	4c90 <unlink>
    1d7c:	e24b3018 	sub	r3, fp, #24
    1d80:	e1a00003 	mov	r0, r3
    1d84:	eb000bc1 	bl	4c90 <unlink>
    1d88:	e24b3018 	sub	r3, fp, #24
    1d8c:	e1a00003 	mov	r0, r3
    1d90:	eb000bbe 	bl	4c90 <unlink>
    1d94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1d98:	e3530000 	cmp	r3, #0
    1d9c:	1a000000 	bne	1da4 <concreate+0x400>
    1da0:	eb000b60 	bl	4b28 <exit>
    1da4:	eb000b68 	bl	4b4c <wait>
    1da8:	e51b3008 	ldr	r3, [fp, #-8]
    1dac:	e2833001 	add	r3, r3, #1
    1db0:	e50b3008 	str	r3, [fp, #-8]
    1db4:	e51b3008 	ldr	r3, [fp, #-8]
    1db8:	e3530027 	cmp	r3, #39	@ 0x27
    1dbc:	daffffa1 	ble	1c48 <concreate+0x2a4>
    1dc0:	e59f103c 	ldr	r1, [pc, #60]	@ 1e04 <concreate+0x460>
    1dc4:	e3a00001 	mov	r0, #1
    1dc8:	eb000cf8 	bl	51b0 <printf>
    1dcc:	e1a00000 	nop			@ (mov r0, r0)
    1dd0:	e24bd004 	sub	sp, fp, #4
    1dd4:	e8bd8800 	pop	{fp, pc}
    1dd8:	00006098 	.word	0x00006098
    1ddc:	55555556 	.word	0x55555556
    1de0:	000060a8 	.word	0x000060a8
    1de4:	66666667 	.word	0x66666667
    1de8:	00000202 	.word	0x00000202
    1dec:	000060ac 	.word	0x000060ac
    1df0:	00006068 	.word	0x00006068
    1df4:	000060c8 	.word	0x000060c8
    1df8:	000060e4 	.word	0x000060e4
    1dfc:	00006104 	.word	0x00006104
    1e00:	00005ca4 	.word	0x00005ca4
    1e04:	00006138 	.word	0x00006138

00001e08 <linkunlink>:
    1e08:	e92d4800 	push	{fp, lr}
    1e0c:	e28db004 	add	fp, sp, #4
    1e10:	e24dd010 	sub	sp, sp, #16
    1e14:	e59f113c 	ldr	r1, [pc, #316]	@ 1f58 <linkunlink+0x150>
    1e18:	e3a00001 	mov	r0, #1
    1e1c:	eb000ce3 	bl	51b0 <printf>
    1e20:	e59f0134 	ldr	r0, [pc, #308]	@ 1f5c <linkunlink+0x154>
    1e24:	eb000b99 	bl	4c90 <unlink>
    1e28:	eb000b35 	bl	4b04 <fork>
    1e2c:	e50b0010 	str	r0, [fp, #-16]
    1e30:	e51b3010 	ldr	r3, [fp, #-16]
    1e34:	e3530000 	cmp	r3, #0
    1e38:	aa000003 	bge	1e4c <linkunlink+0x44>
    1e3c:	e59f111c 	ldr	r1, [pc, #284]	@ 1f60 <linkunlink+0x158>
    1e40:	e3a00001 	mov	r0, #1
    1e44:	eb000cd9 	bl	51b0 <printf>
    1e48:	eb000b36 	bl	4b28 <exit>
    1e4c:	e51b3010 	ldr	r3, [fp, #-16]
    1e50:	e3530000 	cmp	r3, #0
    1e54:	0a000001 	beq	1e60 <linkunlink+0x58>
    1e58:	e3a03001 	mov	r3, #1
    1e5c:	ea000000 	b	1e64 <linkunlink+0x5c>
    1e60:	e3a03061 	mov	r3, #97	@ 0x61
    1e64:	e50b300c 	str	r3, [fp, #-12]
    1e68:	e3a03000 	mov	r3, #0
    1e6c:	e50b3008 	str	r3, [fp, #-8]
    1e70:	ea000029 	b	1f1c <linkunlink+0x114>
    1e74:	e51b300c 	ldr	r3, [fp, #-12]
    1e78:	e59f20e4 	ldr	r2, [pc, #228]	@ 1f64 <linkunlink+0x15c>
    1e7c:	e0030392 	mul	r3, r2, r3
    1e80:	e2833a03 	add	r3, r3, #12288	@ 0x3000
    1e84:	e2833039 	add	r3, r3, #57	@ 0x39
    1e88:	e50b300c 	str	r3, [fp, #-12]
    1e8c:	e51b100c 	ldr	r1, [fp, #-12]
    1e90:	e59f30d0 	ldr	r3, [pc, #208]	@ 1f68 <linkunlink+0x160>
    1e94:	e0832193 	umull	r2, r3, r3, r1
    1e98:	e1a020a3 	lsr	r2, r3, #1
    1e9c:	e1a03002 	mov	r3, r2
    1ea0:	e1a03083 	lsl	r3, r3, #1
    1ea4:	e0833002 	add	r3, r3, r2
    1ea8:	e0412003 	sub	r2, r1, r3
    1eac:	e3520000 	cmp	r2, #0
    1eb0:	1a000006 	bne	1ed0 <linkunlink+0xc8>
    1eb4:	e59f10b0 	ldr	r1, [pc, #176]	@ 1f6c <linkunlink+0x164>
    1eb8:	e59f009c 	ldr	r0, [pc, #156]	@ 1f5c <linkunlink+0x154>
    1ebc:	eb000b61 	bl	4c48 <open>
    1ec0:	e1a03000 	mov	r3, r0
    1ec4:	e1a00003 	mov	r0, r3
    1ec8:	eb000b43 	bl	4bdc <close>
    1ecc:	ea00000f 	b	1f10 <linkunlink+0x108>
    1ed0:	e51b100c 	ldr	r1, [fp, #-12]
    1ed4:	e59f308c 	ldr	r3, [pc, #140]	@ 1f68 <linkunlink+0x160>
    1ed8:	e0832193 	umull	r2, r3, r3, r1
    1edc:	e1a020a3 	lsr	r2, r3, #1
    1ee0:	e1a03002 	mov	r3, r2
    1ee4:	e1a03083 	lsl	r3, r3, #1
    1ee8:	e0833002 	add	r3, r3, r2
    1eec:	e0412003 	sub	r2, r1, r3
    1ef0:	e3520001 	cmp	r2, #1
    1ef4:	1a000003 	bne	1f08 <linkunlink+0x100>
    1ef8:	e59f105c 	ldr	r1, [pc, #92]	@ 1f5c <linkunlink+0x154>
    1efc:	e59f006c 	ldr	r0, [pc, #108]	@ 1f70 <linkunlink+0x168>
    1f00:	eb000b74 	bl	4cd8 <link>
    1f04:	ea000001 	b	1f10 <linkunlink+0x108>
    1f08:	e59f004c 	ldr	r0, [pc, #76]	@ 1f5c <linkunlink+0x154>
    1f0c:	eb000b5f 	bl	4c90 <unlink>
    1f10:	e51b3008 	ldr	r3, [fp, #-8]
    1f14:	e2833001 	add	r3, r3, #1
    1f18:	e50b3008 	str	r3, [fp, #-8]
    1f1c:	e51b3008 	ldr	r3, [fp, #-8]
    1f20:	e3530063 	cmp	r3, #99	@ 0x63
    1f24:	daffffd2 	ble	1e74 <linkunlink+0x6c>
    1f28:	e51b3010 	ldr	r3, [fp, #-16]
    1f2c:	e3530000 	cmp	r3, #0
    1f30:	0a000001 	beq	1f3c <linkunlink+0x134>
    1f34:	eb000b04 	bl	4b4c <wait>
    1f38:	ea000000 	b	1f40 <linkunlink+0x138>
    1f3c:	eb000af9 	bl	4b28 <exit>
    1f40:	e59f102c 	ldr	r1, [pc, #44]	@ 1f74 <linkunlink+0x16c>
    1f44:	e3a00001 	mov	r0, #1
    1f48:	eb000c98 	bl	51b0 <printf>
    1f4c:	e1a00000 	nop			@ (mov r0, r0)
    1f50:	e24bd004 	sub	sp, fp, #4
    1f54:	e8bd8800 	pop	{fp, pc}
    1f58:	00006148 	.word	0x00006148
    1f5c:	00005c54 	.word	0x00005c54
    1f60:	00005ca4 	.word	0x00005ca4
    1f64:	41c64e6d 	.word	0x41c64e6d
    1f68:	aaaaaaab 	.word	0xaaaaaaab
    1f6c:	00000202 	.word	0x00000202
    1f70:	0000615c 	.word	0x0000615c
    1f74:	00006160 	.word	0x00006160

00001f78 <bigdir>:
    1f78:	e92d4800 	push	{fp, lr}
    1f7c:	e28db004 	add	fp, sp, #4
    1f80:	e24dd018 	sub	sp, sp, #24
    1f84:	e59f11b4 	ldr	r1, [pc, #436]	@ 2140 <bigdir+0x1c8>
    1f88:	e3a00001 	mov	r0, #1
    1f8c:	eb000c87 	bl	51b0 <printf>
    1f90:	e59f01ac 	ldr	r0, [pc, #428]	@ 2144 <bigdir+0x1cc>
    1f94:	eb000b3d 	bl	4c90 <unlink>
    1f98:	e3a01c02 	mov	r1, #512	@ 0x200
    1f9c:	e59f01a0 	ldr	r0, [pc, #416]	@ 2144 <bigdir+0x1cc>
    1fa0:	eb000b28 	bl	4c48 <open>
    1fa4:	e50b000c 	str	r0, [fp, #-12]
    1fa8:	e51b300c 	ldr	r3, [fp, #-12]
    1fac:	e3530000 	cmp	r3, #0
    1fb0:	aa000003 	bge	1fc4 <bigdir+0x4c>
    1fb4:	e59f118c 	ldr	r1, [pc, #396]	@ 2148 <bigdir+0x1d0>
    1fb8:	e3a00001 	mov	r0, #1
    1fbc:	eb000c7b 	bl	51b0 <printf>
    1fc0:	eb000ad8 	bl	4b28 <exit>
    1fc4:	e51b000c 	ldr	r0, [fp, #-12]
    1fc8:	eb000b03 	bl	4bdc <close>
    1fcc:	e3a03000 	mov	r3, #0
    1fd0:	e50b3008 	str	r3, [fp, #-8]
    1fd4:	ea000024 	b	206c <bigdir+0xf4>
    1fd8:	e3a03078 	mov	r3, #120	@ 0x78
    1fdc:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    1fe0:	e51b3008 	ldr	r3, [fp, #-8]
    1fe4:	e283203f 	add	r2, r3, #63	@ 0x3f
    1fe8:	e3530000 	cmp	r3, #0
    1fec:	b1a03002 	movlt	r3, r2
    1ff0:	a1a03003 	movge	r3, r3
    1ff4:	e1a03343 	asr	r3, r3, #6
    1ff8:	e6ef3073 	uxtb	r3, r3
    1ffc:	e2833030 	add	r3, r3, #48	@ 0x30
    2000:	e6ef3073 	uxtb	r3, r3
    2004:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    2008:	e51b3008 	ldr	r3, [fp, #-8]
    200c:	e2732000 	rsbs	r2, r3, #0
    2010:	e203303f 	and	r3, r3, #63	@ 0x3f
    2014:	e202203f 	and	r2, r2, #63	@ 0x3f
    2018:	52623000 	rsbpl	r3, r2, #0
    201c:	e6ef3073 	uxtb	r3, r3
    2020:	e2833030 	add	r3, r3, #48	@ 0x30
    2024:	e6ef3073 	uxtb	r3, r3
    2028:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    202c:	e3a03000 	mov	r3, #0
    2030:	e54b3015 	strb	r3, [fp, #-21]	@ 0xffffffeb
    2034:	e24b3018 	sub	r3, fp, #24
    2038:	e1a01003 	mov	r1, r3
    203c:	e59f0100 	ldr	r0, [pc, #256]	@ 2144 <bigdir+0x1cc>
    2040:	eb000b24 	bl	4cd8 <link>
    2044:	e1a03000 	mov	r3, r0
    2048:	e3530000 	cmp	r3, #0
    204c:	0a000003 	beq	2060 <bigdir+0xe8>
    2050:	e59f10f4 	ldr	r1, [pc, #244]	@ 214c <bigdir+0x1d4>
    2054:	e3a00001 	mov	r0, #1
    2058:	eb000c54 	bl	51b0 <printf>
    205c:	eb000ab1 	bl	4b28 <exit>
    2060:	e51b3008 	ldr	r3, [fp, #-8]
    2064:	e2833001 	add	r3, r3, #1
    2068:	e50b3008 	str	r3, [fp, #-8]
    206c:	e51b3008 	ldr	r3, [fp, #-8]
    2070:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    2074:	baffffd7 	blt	1fd8 <bigdir+0x60>
    2078:	e59f00c4 	ldr	r0, [pc, #196]	@ 2144 <bigdir+0x1cc>
    207c:	eb000b03 	bl	4c90 <unlink>
    2080:	e3a03000 	mov	r3, #0
    2084:	e50b3008 	str	r3, [fp, #-8]
    2088:	ea000023 	b	211c <bigdir+0x1a4>
    208c:	e3a03078 	mov	r3, #120	@ 0x78
    2090:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    2094:	e51b3008 	ldr	r3, [fp, #-8]
    2098:	e283203f 	add	r2, r3, #63	@ 0x3f
    209c:	e3530000 	cmp	r3, #0
    20a0:	b1a03002 	movlt	r3, r2
    20a4:	a1a03003 	movge	r3, r3
    20a8:	e1a03343 	asr	r3, r3, #6
    20ac:	e6ef3073 	uxtb	r3, r3
    20b0:	e2833030 	add	r3, r3, #48	@ 0x30
    20b4:	e6ef3073 	uxtb	r3, r3
    20b8:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    20bc:	e51b3008 	ldr	r3, [fp, #-8]
    20c0:	e2732000 	rsbs	r2, r3, #0
    20c4:	e203303f 	and	r3, r3, #63	@ 0x3f
    20c8:	e202203f 	and	r2, r2, #63	@ 0x3f
    20cc:	52623000 	rsbpl	r3, r2, #0
    20d0:	e6ef3073 	uxtb	r3, r3
    20d4:	e2833030 	add	r3, r3, #48	@ 0x30
    20d8:	e6ef3073 	uxtb	r3, r3
    20dc:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    20e0:	e3a03000 	mov	r3, #0
    20e4:	e54b3015 	strb	r3, [fp, #-21]	@ 0xffffffeb
    20e8:	e24b3018 	sub	r3, fp, #24
    20ec:	e1a00003 	mov	r0, r3
    20f0:	eb000ae6 	bl	4c90 <unlink>
    20f4:	e1a03000 	mov	r3, r0
    20f8:	e3530000 	cmp	r3, #0
    20fc:	0a000003 	beq	2110 <bigdir+0x198>
    2100:	e59f1048 	ldr	r1, [pc, #72]	@ 2150 <bigdir+0x1d8>
    2104:	e3a00001 	mov	r0, #1
    2108:	eb000c28 	bl	51b0 <printf>
    210c:	eb000a85 	bl	4b28 <exit>
    2110:	e51b3008 	ldr	r3, [fp, #-8]
    2114:	e2833001 	add	r3, r3, #1
    2118:	e50b3008 	str	r3, [fp, #-8]
    211c:	e51b3008 	ldr	r3, [fp, #-8]
    2120:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    2124:	baffffd8 	blt	208c <bigdir+0x114>
    2128:	e59f1024 	ldr	r1, [pc, #36]	@ 2154 <bigdir+0x1dc>
    212c:	e3a00001 	mov	r0, #1
    2130:	eb000c1e 	bl	51b0 <printf>
    2134:	e1a00000 	nop			@ (mov r0, r0)
    2138:	e24bd004 	sub	sp, fp, #4
    213c:	e8bd8800 	pop	{fp, pc}
    2140:	00006170 	.word	0x00006170
    2144:	00006180 	.word	0x00006180
    2148:	00006184 	.word	0x00006184
    214c:	0000619c 	.word	0x0000619c
    2150:	000061b0 	.word	0x000061b0
    2154:	000061c8 	.word	0x000061c8

00002158 <subdir>:
    2158:	e92d4800 	push	{fp, lr}
    215c:	e28db004 	add	fp, sp, #4
    2160:	e24dd008 	sub	sp, sp, #8
    2164:	e59f1608 	ldr	r1, [pc, #1544]	@ 2774 <subdir+0x61c>
    2168:	e3a00001 	mov	r0, #1
    216c:	eb000c0f 	bl	51b0 <printf>
    2170:	e59f0600 	ldr	r0, [pc, #1536]	@ 2778 <subdir+0x620>
    2174:	eb000ac5 	bl	4c90 <unlink>
    2178:	e59f05fc 	ldr	r0, [pc, #1532]	@ 277c <subdir+0x624>
    217c:	eb000ade 	bl	4cfc <mkdir>
    2180:	e1a03000 	mov	r3, r0
    2184:	e3530000 	cmp	r3, #0
    2188:	0a000003 	beq	219c <subdir+0x44>
    218c:	e59f15ec 	ldr	r1, [pc, #1516]	@ 2780 <subdir+0x628>
    2190:	e3a00001 	mov	r0, #1
    2194:	eb000c05 	bl	51b0 <printf>
    2198:	eb000a62 	bl	4b28 <exit>
    219c:	e59f15e0 	ldr	r1, [pc, #1504]	@ 2784 <subdir+0x62c>
    21a0:	e59f05e0 	ldr	r0, [pc, #1504]	@ 2788 <subdir+0x630>
    21a4:	eb000aa7 	bl	4c48 <open>
    21a8:	e50b0008 	str	r0, [fp, #-8]
    21ac:	e51b3008 	ldr	r3, [fp, #-8]
    21b0:	e3530000 	cmp	r3, #0
    21b4:	aa000003 	bge	21c8 <subdir+0x70>
    21b8:	e59f15cc 	ldr	r1, [pc, #1484]	@ 278c <subdir+0x634>
    21bc:	e3a00001 	mov	r0, #1
    21c0:	eb000bfa 	bl	51b0 <printf>
    21c4:	eb000a57 	bl	4b28 <exit>
    21c8:	e3a02002 	mov	r2, #2
    21cc:	e59f15a4 	ldr	r1, [pc, #1444]	@ 2778 <subdir+0x620>
    21d0:	e51b0008 	ldr	r0, [fp, #-8]
    21d4:	eb000a77 	bl	4bb8 <write>
    21d8:	e51b0008 	ldr	r0, [fp, #-8]
    21dc:	eb000a7e 	bl	4bdc <close>
    21e0:	e59f0594 	ldr	r0, [pc, #1428]	@ 277c <subdir+0x624>
    21e4:	eb000aa9 	bl	4c90 <unlink>
    21e8:	e1a03000 	mov	r3, r0
    21ec:	e3530000 	cmp	r3, #0
    21f0:	ba000003 	blt	2204 <subdir+0xac>
    21f4:	e59f1594 	ldr	r1, [pc, #1428]	@ 2790 <subdir+0x638>
    21f8:	e3a00001 	mov	r0, #1
    21fc:	eb000beb 	bl	51b0 <printf>
    2200:	eb000a48 	bl	4b28 <exit>
    2204:	e59f0588 	ldr	r0, [pc, #1416]	@ 2794 <subdir+0x63c>
    2208:	eb000abb 	bl	4cfc <mkdir>
    220c:	e1a03000 	mov	r3, r0
    2210:	e3530000 	cmp	r3, #0
    2214:	0a000003 	beq	2228 <subdir+0xd0>
    2218:	e59f1578 	ldr	r1, [pc, #1400]	@ 2798 <subdir+0x640>
    221c:	e3a00001 	mov	r0, #1
    2220:	eb000be2 	bl	51b0 <printf>
    2224:	eb000a3f 	bl	4b28 <exit>
    2228:	e59f1554 	ldr	r1, [pc, #1364]	@ 2784 <subdir+0x62c>
    222c:	e59f0568 	ldr	r0, [pc, #1384]	@ 279c <subdir+0x644>
    2230:	eb000a84 	bl	4c48 <open>
    2234:	e50b0008 	str	r0, [fp, #-8]
    2238:	e51b3008 	ldr	r3, [fp, #-8]
    223c:	e3530000 	cmp	r3, #0
    2240:	aa000003 	bge	2254 <subdir+0xfc>
    2244:	e59f1554 	ldr	r1, [pc, #1364]	@ 27a0 <subdir+0x648>
    2248:	e3a00001 	mov	r0, #1
    224c:	eb000bd7 	bl	51b0 <printf>
    2250:	eb000a34 	bl	4b28 <exit>
    2254:	e3a02002 	mov	r2, #2
    2258:	e59f1544 	ldr	r1, [pc, #1348]	@ 27a4 <subdir+0x64c>
    225c:	e51b0008 	ldr	r0, [fp, #-8]
    2260:	eb000a54 	bl	4bb8 <write>
    2264:	e51b0008 	ldr	r0, [fp, #-8]
    2268:	eb000a5b 	bl	4bdc <close>
    226c:	e3a01000 	mov	r1, #0
    2270:	e59f0530 	ldr	r0, [pc, #1328]	@ 27a8 <subdir+0x650>
    2274:	eb000a73 	bl	4c48 <open>
    2278:	e50b0008 	str	r0, [fp, #-8]
    227c:	e51b3008 	ldr	r3, [fp, #-8]
    2280:	e3530000 	cmp	r3, #0
    2284:	aa000003 	bge	2298 <subdir+0x140>
    2288:	e59f151c 	ldr	r1, [pc, #1308]	@ 27ac <subdir+0x654>
    228c:	e3a00001 	mov	r0, #1
    2290:	eb000bc6 	bl	51b0 <printf>
    2294:	eb000a23 	bl	4b28 <exit>
    2298:	e3a02a02 	mov	r2, #8192	@ 0x2000
    229c:	e59f150c 	ldr	r1, [pc, #1292]	@ 27b0 <subdir+0x658>
    22a0:	e51b0008 	ldr	r0, [fp, #-8]
    22a4:	eb000a3a 	bl	4b94 <read>
    22a8:	e50b000c 	str	r0, [fp, #-12]
    22ac:	e51b300c 	ldr	r3, [fp, #-12]
    22b0:	e3530002 	cmp	r3, #2
    22b4:	1a000003 	bne	22c8 <subdir+0x170>
    22b8:	e59f34f0 	ldr	r3, [pc, #1264]	@ 27b0 <subdir+0x658>
    22bc:	e5d33000 	ldrb	r3, [r3]
    22c0:	e3530066 	cmp	r3, #102	@ 0x66
    22c4:	0a000003 	beq	22d8 <subdir+0x180>
    22c8:	e59f14e4 	ldr	r1, [pc, #1252]	@ 27b4 <subdir+0x65c>
    22cc:	e3a00001 	mov	r0, #1
    22d0:	eb000bb6 	bl	51b0 <printf>
    22d4:	eb000a13 	bl	4b28 <exit>
    22d8:	e51b0008 	ldr	r0, [fp, #-8]
    22dc:	eb000a3e 	bl	4bdc <close>
    22e0:	e59f14d0 	ldr	r1, [pc, #1232]	@ 27b8 <subdir+0x660>
    22e4:	e59f04b0 	ldr	r0, [pc, #1200]	@ 279c <subdir+0x644>
    22e8:	eb000a7a 	bl	4cd8 <link>
    22ec:	e1a03000 	mov	r3, r0
    22f0:	e3530000 	cmp	r3, #0
    22f4:	0a000003 	beq	2308 <subdir+0x1b0>
    22f8:	e59f14bc 	ldr	r1, [pc, #1212]	@ 27bc <subdir+0x664>
    22fc:	e3a00001 	mov	r0, #1
    2300:	eb000baa 	bl	51b0 <printf>
    2304:	eb000a07 	bl	4b28 <exit>
    2308:	e59f048c 	ldr	r0, [pc, #1164]	@ 279c <subdir+0x644>
    230c:	eb000a5f 	bl	4c90 <unlink>
    2310:	e1a03000 	mov	r3, r0
    2314:	e3530000 	cmp	r3, #0
    2318:	0a000003 	beq	232c <subdir+0x1d4>
    231c:	e59f149c 	ldr	r1, [pc, #1180]	@ 27c0 <subdir+0x668>
    2320:	e3a00001 	mov	r0, #1
    2324:	eb000ba1 	bl	51b0 <printf>
    2328:	eb0009fe 	bl	4b28 <exit>
    232c:	e3a01000 	mov	r1, #0
    2330:	e59f0464 	ldr	r0, [pc, #1124]	@ 279c <subdir+0x644>
    2334:	eb000a43 	bl	4c48 <open>
    2338:	e1a03000 	mov	r3, r0
    233c:	e3530000 	cmp	r3, #0
    2340:	ba000003 	blt	2354 <subdir+0x1fc>
    2344:	e59f1478 	ldr	r1, [pc, #1144]	@ 27c4 <subdir+0x66c>
    2348:	e3a00001 	mov	r0, #1
    234c:	eb000b97 	bl	51b0 <printf>
    2350:	eb0009f4 	bl	4b28 <exit>
    2354:	e59f0420 	ldr	r0, [pc, #1056]	@ 277c <subdir+0x624>
    2358:	eb000a70 	bl	4d20 <chdir>
    235c:	e1a03000 	mov	r3, r0
    2360:	e3530000 	cmp	r3, #0
    2364:	0a000003 	beq	2378 <subdir+0x220>
    2368:	e59f1458 	ldr	r1, [pc, #1112]	@ 27c8 <subdir+0x670>
    236c:	e3a00001 	mov	r0, #1
    2370:	eb000b8e 	bl	51b0 <printf>
    2374:	eb0009eb 	bl	4b28 <exit>
    2378:	e59f044c 	ldr	r0, [pc, #1100]	@ 27cc <subdir+0x674>
    237c:	eb000a67 	bl	4d20 <chdir>
    2380:	e1a03000 	mov	r3, r0
    2384:	e3530000 	cmp	r3, #0
    2388:	0a000003 	beq	239c <subdir+0x244>
    238c:	e59f143c 	ldr	r1, [pc, #1084]	@ 27d0 <subdir+0x678>
    2390:	e3a00001 	mov	r0, #1
    2394:	eb000b85 	bl	51b0 <printf>
    2398:	eb0009e2 	bl	4b28 <exit>
    239c:	e59f0430 	ldr	r0, [pc, #1072]	@ 27d4 <subdir+0x67c>
    23a0:	eb000a5e 	bl	4d20 <chdir>
    23a4:	e1a03000 	mov	r3, r0
    23a8:	e3530000 	cmp	r3, #0
    23ac:	0a000003 	beq	23c0 <subdir+0x268>
    23b0:	e59f1418 	ldr	r1, [pc, #1048]	@ 27d0 <subdir+0x678>
    23b4:	e3a00001 	mov	r0, #1
    23b8:	eb000b7c 	bl	51b0 <printf>
    23bc:	eb0009d9 	bl	4b28 <exit>
    23c0:	e59f0410 	ldr	r0, [pc, #1040]	@ 27d8 <subdir+0x680>
    23c4:	eb000a55 	bl	4d20 <chdir>
    23c8:	e1a03000 	mov	r3, r0
    23cc:	e3530000 	cmp	r3, #0
    23d0:	0a000003 	beq	23e4 <subdir+0x28c>
    23d4:	e59f1400 	ldr	r1, [pc, #1024]	@ 27dc <subdir+0x684>
    23d8:	e3a00001 	mov	r0, #1
    23dc:	eb000b73 	bl	51b0 <printf>
    23e0:	eb0009d0 	bl	4b28 <exit>
    23e4:	e3a01000 	mov	r1, #0
    23e8:	e59f03c8 	ldr	r0, [pc, #968]	@ 27b8 <subdir+0x660>
    23ec:	eb000a15 	bl	4c48 <open>
    23f0:	e50b0008 	str	r0, [fp, #-8]
    23f4:	e51b3008 	ldr	r3, [fp, #-8]
    23f8:	e3530000 	cmp	r3, #0
    23fc:	aa000003 	bge	2410 <subdir+0x2b8>
    2400:	e59f13d8 	ldr	r1, [pc, #984]	@ 27e0 <subdir+0x688>
    2404:	e3a00001 	mov	r0, #1
    2408:	eb000b68 	bl	51b0 <printf>
    240c:	eb0009c5 	bl	4b28 <exit>
    2410:	e3a02a02 	mov	r2, #8192	@ 0x2000
    2414:	e59f1394 	ldr	r1, [pc, #916]	@ 27b0 <subdir+0x658>
    2418:	e51b0008 	ldr	r0, [fp, #-8]
    241c:	eb0009dc 	bl	4b94 <read>
    2420:	e1a03000 	mov	r3, r0
    2424:	e3530002 	cmp	r3, #2
    2428:	0a000003 	beq	243c <subdir+0x2e4>
    242c:	e59f13b0 	ldr	r1, [pc, #944]	@ 27e4 <subdir+0x68c>
    2430:	e3a00001 	mov	r0, #1
    2434:	eb000b5d 	bl	51b0 <printf>
    2438:	eb0009ba 	bl	4b28 <exit>
    243c:	e51b0008 	ldr	r0, [fp, #-8]
    2440:	eb0009e5 	bl	4bdc <close>
    2444:	e3a01000 	mov	r1, #0
    2448:	e59f034c 	ldr	r0, [pc, #844]	@ 279c <subdir+0x644>
    244c:	eb0009fd 	bl	4c48 <open>
    2450:	e1a03000 	mov	r3, r0
    2454:	e3530000 	cmp	r3, #0
    2458:	ba000003 	blt	246c <subdir+0x314>
    245c:	e59f1384 	ldr	r1, [pc, #900]	@ 27e8 <subdir+0x690>
    2460:	e3a00001 	mov	r0, #1
    2464:	eb000b51 	bl	51b0 <printf>
    2468:	eb0009ae 	bl	4b28 <exit>
    246c:	e59f1310 	ldr	r1, [pc, #784]	@ 2784 <subdir+0x62c>
    2470:	e59f0374 	ldr	r0, [pc, #884]	@ 27ec <subdir+0x694>
    2474:	eb0009f3 	bl	4c48 <open>
    2478:	e1a03000 	mov	r3, r0
    247c:	e3530000 	cmp	r3, #0
    2480:	ba000003 	blt	2494 <subdir+0x33c>
    2484:	e59f1364 	ldr	r1, [pc, #868]	@ 27f0 <subdir+0x698>
    2488:	e3a00001 	mov	r0, #1
    248c:	eb000b47 	bl	51b0 <printf>
    2490:	eb0009a4 	bl	4b28 <exit>
    2494:	e59f12e8 	ldr	r1, [pc, #744]	@ 2784 <subdir+0x62c>
    2498:	e59f0354 	ldr	r0, [pc, #852]	@ 27f4 <subdir+0x69c>
    249c:	eb0009e9 	bl	4c48 <open>
    24a0:	e1a03000 	mov	r3, r0
    24a4:	e3530000 	cmp	r3, #0
    24a8:	ba000003 	blt	24bc <subdir+0x364>
    24ac:	e59f1344 	ldr	r1, [pc, #836]	@ 27f8 <subdir+0x6a0>
    24b0:	e3a00001 	mov	r0, #1
    24b4:	eb000b3d 	bl	51b0 <printf>
    24b8:	eb00099a 	bl	4b28 <exit>
    24bc:	e3a01c02 	mov	r1, #512	@ 0x200
    24c0:	e59f02b4 	ldr	r0, [pc, #692]	@ 277c <subdir+0x624>
    24c4:	eb0009df 	bl	4c48 <open>
    24c8:	e1a03000 	mov	r3, r0
    24cc:	e3530000 	cmp	r3, #0
    24d0:	ba000003 	blt	24e4 <subdir+0x38c>
    24d4:	e59f1320 	ldr	r1, [pc, #800]	@ 27fc <subdir+0x6a4>
    24d8:	e3a00001 	mov	r0, #1
    24dc:	eb000b33 	bl	51b0 <printf>
    24e0:	eb000990 	bl	4b28 <exit>
    24e4:	e3a01002 	mov	r1, #2
    24e8:	e59f028c 	ldr	r0, [pc, #652]	@ 277c <subdir+0x624>
    24ec:	eb0009d5 	bl	4c48 <open>
    24f0:	e1a03000 	mov	r3, r0
    24f4:	e3530000 	cmp	r3, #0
    24f8:	ba000003 	blt	250c <subdir+0x3b4>
    24fc:	e59f12fc 	ldr	r1, [pc, #764]	@ 2800 <subdir+0x6a8>
    2500:	e3a00001 	mov	r0, #1
    2504:	eb000b29 	bl	51b0 <printf>
    2508:	eb000986 	bl	4b28 <exit>
    250c:	e3a01001 	mov	r1, #1
    2510:	e59f0264 	ldr	r0, [pc, #612]	@ 277c <subdir+0x624>
    2514:	eb0009cb 	bl	4c48 <open>
    2518:	e1a03000 	mov	r3, r0
    251c:	e3530000 	cmp	r3, #0
    2520:	ba000003 	blt	2534 <subdir+0x3dc>
    2524:	e59f12d8 	ldr	r1, [pc, #728]	@ 2804 <subdir+0x6ac>
    2528:	e3a00001 	mov	r0, #1
    252c:	eb000b1f 	bl	51b0 <printf>
    2530:	eb00097c 	bl	4b28 <exit>
    2534:	e59f12cc 	ldr	r1, [pc, #716]	@ 2808 <subdir+0x6b0>
    2538:	e59f02ac 	ldr	r0, [pc, #684]	@ 27ec <subdir+0x694>
    253c:	eb0009e5 	bl	4cd8 <link>
    2540:	e1a03000 	mov	r3, r0
    2544:	e3530000 	cmp	r3, #0
    2548:	1a000003 	bne	255c <subdir+0x404>
    254c:	e59f12b8 	ldr	r1, [pc, #696]	@ 280c <subdir+0x6b4>
    2550:	e3a00001 	mov	r0, #1
    2554:	eb000b15 	bl	51b0 <printf>
    2558:	eb000972 	bl	4b28 <exit>
    255c:	e59f12a4 	ldr	r1, [pc, #676]	@ 2808 <subdir+0x6b0>
    2560:	e59f028c 	ldr	r0, [pc, #652]	@ 27f4 <subdir+0x69c>
    2564:	eb0009db 	bl	4cd8 <link>
    2568:	e1a03000 	mov	r3, r0
    256c:	e3530000 	cmp	r3, #0
    2570:	1a000003 	bne	2584 <subdir+0x42c>
    2574:	e59f1294 	ldr	r1, [pc, #660]	@ 2810 <subdir+0x6b8>
    2578:	e3a00001 	mov	r0, #1
    257c:	eb000b0b 	bl	51b0 <printf>
    2580:	eb000968 	bl	4b28 <exit>
    2584:	e59f122c 	ldr	r1, [pc, #556]	@ 27b8 <subdir+0x660>
    2588:	e59f01f8 	ldr	r0, [pc, #504]	@ 2788 <subdir+0x630>
    258c:	eb0009d1 	bl	4cd8 <link>
    2590:	e1a03000 	mov	r3, r0
    2594:	e3530000 	cmp	r3, #0
    2598:	1a000003 	bne	25ac <subdir+0x454>
    259c:	e59f1270 	ldr	r1, [pc, #624]	@ 2814 <subdir+0x6bc>
    25a0:	e3a00001 	mov	r0, #1
    25a4:	eb000b01 	bl	51b0 <printf>
    25a8:	eb00095e 	bl	4b28 <exit>
    25ac:	e59f0238 	ldr	r0, [pc, #568]	@ 27ec <subdir+0x694>
    25b0:	eb0009d1 	bl	4cfc <mkdir>
    25b4:	e1a03000 	mov	r3, r0
    25b8:	e3530000 	cmp	r3, #0
    25bc:	1a000003 	bne	25d0 <subdir+0x478>
    25c0:	e59f1250 	ldr	r1, [pc, #592]	@ 2818 <subdir+0x6c0>
    25c4:	e3a00001 	mov	r0, #1
    25c8:	eb000af8 	bl	51b0 <printf>
    25cc:	eb000955 	bl	4b28 <exit>
    25d0:	e59f021c 	ldr	r0, [pc, #540]	@ 27f4 <subdir+0x69c>
    25d4:	eb0009c8 	bl	4cfc <mkdir>
    25d8:	e1a03000 	mov	r3, r0
    25dc:	e3530000 	cmp	r3, #0
    25e0:	1a000003 	bne	25f4 <subdir+0x49c>
    25e4:	e59f1230 	ldr	r1, [pc, #560]	@ 281c <subdir+0x6c4>
    25e8:	e3a00001 	mov	r0, #1
    25ec:	eb000aef 	bl	51b0 <printf>
    25f0:	eb00094c 	bl	4b28 <exit>
    25f4:	e59f01bc 	ldr	r0, [pc, #444]	@ 27b8 <subdir+0x660>
    25f8:	eb0009bf 	bl	4cfc <mkdir>
    25fc:	e1a03000 	mov	r3, r0
    2600:	e3530000 	cmp	r3, #0
    2604:	1a000003 	bne	2618 <subdir+0x4c0>
    2608:	e59f1210 	ldr	r1, [pc, #528]	@ 2820 <subdir+0x6c8>
    260c:	e3a00001 	mov	r0, #1
    2610:	eb000ae6 	bl	51b0 <printf>
    2614:	eb000943 	bl	4b28 <exit>
    2618:	e59f01d4 	ldr	r0, [pc, #468]	@ 27f4 <subdir+0x69c>
    261c:	eb00099b 	bl	4c90 <unlink>
    2620:	e1a03000 	mov	r3, r0
    2624:	e3530000 	cmp	r3, #0
    2628:	1a000003 	bne	263c <subdir+0x4e4>
    262c:	e59f11f0 	ldr	r1, [pc, #496]	@ 2824 <subdir+0x6cc>
    2630:	e3a00001 	mov	r0, #1
    2634:	eb000add 	bl	51b0 <printf>
    2638:	eb00093a 	bl	4b28 <exit>
    263c:	e59f01a8 	ldr	r0, [pc, #424]	@ 27ec <subdir+0x694>
    2640:	eb000992 	bl	4c90 <unlink>
    2644:	e1a03000 	mov	r3, r0
    2648:	e3530000 	cmp	r3, #0
    264c:	1a000003 	bne	2660 <subdir+0x508>
    2650:	e59f11d0 	ldr	r1, [pc, #464]	@ 2828 <subdir+0x6d0>
    2654:	e3a00001 	mov	r0, #1
    2658:	eb000ad4 	bl	51b0 <printf>
    265c:	eb000931 	bl	4b28 <exit>
    2660:	e59f0120 	ldr	r0, [pc, #288]	@ 2788 <subdir+0x630>
    2664:	eb0009ad 	bl	4d20 <chdir>
    2668:	e1a03000 	mov	r3, r0
    266c:	e3530000 	cmp	r3, #0
    2670:	1a000003 	bne	2684 <subdir+0x52c>
    2674:	e59f11b0 	ldr	r1, [pc, #432]	@ 282c <subdir+0x6d4>
    2678:	e3a00001 	mov	r0, #1
    267c:	eb000acb 	bl	51b0 <printf>
    2680:	eb000928 	bl	4b28 <exit>
    2684:	e59f01a4 	ldr	r0, [pc, #420]	@ 2830 <subdir+0x6d8>
    2688:	eb0009a4 	bl	4d20 <chdir>
    268c:	e1a03000 	mov	r3, r0
    2690:	e3530000 	cmp	r3, #0
    2694:	1a000003 	bne	26a8 <subdir+0x550>
    2698:	e59f1194 	ldr	r1, [pc, #404]	@ 2834 <subdir+0x6dc>
    269c:	e3a00001 	mov	r0, #1
    26a0:	eb000ac2 	bl	51b0 <printf>
    26a4:	eb00091f 	bl	4b28 <exit>
    26a8:	e59f0108 	ldr	r0, [pc, #264]	@ 27b8 <subdir+0x660>
    26ac:	eb000977 	bl	4c90 <unlink>
    26b0:	e1a03000 	mov	r3, r0
    26b4:	e3530000 	cmp	r3, #0
    26b8:	0a000003 	beq	26cc <subdir+0x574>
    26bc:	e59f10fc 	ldr	r1, [pc, #252]	@ 27c0 <subdir+0x668>
    26c0:	e3a00001 	mov	r0, #1
    26c4:	eb000ab9 	bl	51b0 <printf>
    26c8:	eb000916 	bl	4b28 <exit>
    26cc:	e59f00b4 	ldr	r0, [pc, #180]	@ 2788 <subdir+0x630>
    26d0:	eb00096e 	bl	4c90 <unlink>
    26d4:	e1a03000 	mov	r3, r0
    26d8:	e3530000 	cmp	r3, #0
    26dc:	0a000003 	beq	26f0 <subdir+0x598>
    26e0:	e59f1150 	ldr	r1, [pc, #336]	@ 2838 <subdir+0x6e0>
    26e4:	e3a00001 	mov	r0, #1
    26e8:	eb000ab0 	bl	51b0 <printf>
    26ec:	eb00090d 	bl	4b28 <exit>
    26f0:	e59f0084 	ldr	r0, [pc, #132]	@ 277c <subdir+0x624>
    26f4:	eb000965 	bl	4c90 <unlink>
    26f8:	e1a03000 	mov	r3, r0
    26fc:	e3530000 	cmp	r3, #0
    2700:	1a000003 	bne	2714 <subdir+0x5bc>
    2704:	e59f1130 	ldr	r1, [pc, #304]	@ 283c <subdir+0x6e4>
    2708:	e3a00001 	mov	r0, #1
    270c:	eb000aa7 	bl	51b0 <printf>
    2710:	eb000904 	bl	4b28 <exit>
    2714:	e59f0124 	ldr	r0, [pc, #292]	@ 2840 <subdir+0x6e8>
    2718:	eb00095c 	bl	4c90 <unlink>
    271c:	e1a03000 	mov	r3, r0
    2720:	e3530000 	cmp	r3, #0
    2724:	aa000003 	bge	2738 <subdir+0x5e0>
    2728:	e59f1114 	ldr	r1, [pc, #276]	@ 2844 <subdir+0x6ec>
    272c:	e3a00001 	mov	r0, #1
    2730:	eb000a9e 	bl	51b0 <printf>
    2734:	eb0008fb 	bl	4b28 <exit>
    2738:	e59f003c 	ldr	r0, [pc, #60]	@ 277c <subdir+0x624>
    273c:	eb000953 	bl	4c90 <unlink>
    2740:	e1a03000 	mov	r3, r0
    2744:	e3530000 	cmp	r3, #0
    2748:	aa000003 	bge	275c <subdir+0x604>
    274c:	e59f10f4 	ldr	r1, [pc, #244]	@ 2848 <subdir+0x6f0>
    2750:	e3a00001 	mov	r0, #1
    2754:	eb000a95 	bl	51b0 <printf>
    2758:	eb0008f2 	bl	4b28 <exit>
    275c:	e59f10e8 	ldr	r1, [pc, #232]	@ 284c <subdir+0x6f4>
    2760:	e3a00001 	mov	r0, #1
    2764:	eb000a91 	bl	51b0 <printf>
    2768:	e1a00000 	nop			@ (mov r0, r0)
    276c:	e24bd004 	sub	sp, fp, #4
    2770:	e8bd8800 	pop	{fp, pc}
    2774:	000061d4 	.word	0x000061d4
    2778:	000061e4 	.word	0x000061e4
    277c:	000061e8 	.word	0x000061e8
    2780:	000061ec 	.word	0x000061ec
    2784:	00000202 	.word	0x00000202
    2788:	00006204 	.word	0x00006204
    278c:	0000620c 	.word	0x0000620c
    2790:	00006224 	.word	0x00006224
    2794:	0000624c 	.word	0x0000624c
    2798:	00006254 	.word	0x00006254
    279c:	00006270 	.word	0x00006270
    27a0:	0000627c 	.word	0x0000627c
    27a4:	00006294 	.word	0x00006294
    27a8:	00006298 	.word	0x00006298
    27ac:	000062a4 	.word	0x000062a4
    27b0:	000070d4 	.word	0x000070d4
    27b4:	000062c0 	.word	0x000062c0
    27b8:	000062dc 	.word	0x000062dc
    27bc:	000062e8 	.word	0x000062e8
    27c0:	0000630c 	.word	0x0000630c
    27c4:	00006324 	.word	0x00006324
    27c8:	00006348 	.word	0x00006348
    27cc:	0000635c 	.word	0x0000635c
    27d0:	00006368 	.word	0x00006368
    27d4:	00006384 	.word	0x00006384
    27d8:	00006394 	.word	0x00006394
    27dc:	0000639c 	.word	0x0000639c
    27e0:	000063b0 	.word	0x000063b0
    27e4:	000063c8 	.word	0x000063c8
    27e8:	000063e4 	.word	0x000063e4
    27ec:	0000640c 	.word	0x0000640c
    27f0:	00006418 	.word	0x00006418
    27f4:	00006434 	.word	0x00006434
    27f8:	00006440 	.word	0x00006440
    27fc:	0000645c 	.word	0x0000645c
    2800:	00006474 	.word	0x00006474
    2804:	00006490 	.word	0x00006490
    2808:	000064ac 	.word	0x000064ac
    280c:	000064b8 	.word	0x000064b8
    2810:	000064dc 	.word	0x000064dc
    2814:	00006500 	.word	0x00006500
    2818:	00006524 	.word	0x00006524
    281c:	00006540 	.word	0x00006540
    2820:	0000655c 	.word	0x0000655c
    2824:	0000657c 	.word	0x0000657c
    2828:	00006598 	.word	0x00006598
    282c:	000065b4 	.word	0x000065b4
    2830:	000065cc 	.word	0x000065cc
    2834:	000065d4 	.word	0x000065d4
    2838:	000065ec 	.word	0x000065ec
    283c:	00006604 	.word	0x00006604
    2840:	00006624 	.word	0x00006624
    2844:	0000662c 	.word	0x0000662c
    2848:	00006644 	.word	0x00006644
    284c:	00006658 	.word	0x00006658

00002850 <bigwrite>:
    2850:	e92d4800 	push	{fp, lr}
    2854:	e28db004 	add	fp, sp, #4
    2858:	e24dd010 	sub	sp, sp, #16
    285c:	e59f10e8 	ldr	r1, [pc, #232]	@ 294c <bigwrite+0xfc>
    2860:	e3a00001 	mov	r0, #1
    2864:	eb000a51 	bl	51b0 <printf>
    2868:	e59f00e0 	ldr	r0, [pc, #224]	@ 2950 <bigwrite+0x100>
    286c:	eb000907 	bl	4c90 <unlink>
    2870:	e59f30dc 	ldr	r3, [pc, #220]	@ 2954 <bigwrite+0x104>
    2874:	e50b3008 	str	r3, [fp, #-8]
    2878:	ea00002a 	b	2928 <bigwrite+0xd8>
    287c:	e59f10d4 	ldr	r1, [pc, #212]	@ 2958 <bigwrite+0x108>
    2880:	e59f00c8 	ldr	r0, [pc, #200]	@ 2950 <bigwrite+0x100>
    2884:	eb0008ef 	bl	4c48 <open>
    2888:	e50b0010 	str	r0, [fp, #-16]
    288c:	e51b3010 	ldr	r3, [fp, #-16]
    2890:	e3530000 	cmp	r3, #0
    2894:	aa000003 	bge	28a8 <bigwrite+0x58>
    2898:	e59f10bc 	ldr	r1, [pc, #188]	@ 295c <bigwrite+0x10c>
    289c:	e3a00001 	mov	r0, #1
    28a0:	eb000a42 	bl	51b0 <printf>
    28a4:	eb00089f 	bl	4b28 <exit>
    28a8:	e3a03000 	mov	r3, #0
    28ac:	e50b300c 	str	r3, [fp, #-12]
    28b0:	ea000011 	b	28fc <bigwrite+0xac>
    28b4:	e51b2008 	ldr	r2, [fp, #-8]
    28b8:	e59f10a0 	ldr	r1, [pc, #160]	@ 2960 <bigwrite+0x110>
    28bc:	e51b0010 	ldr	r0, [fp, #-16]
    28c0:	eb0008bc 	bl	4bb8 <write>
    28c4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    28c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    28cc:	e51b3008 	ldr	r3, [fp, #-8]
    28d0:	e1520003 	cmp	r2, r3
    28d4:	0a000005 	beq	28f0 <bigwrite+0xa0>
    28d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    28dc:	e51b2008 	ldr	r2, [fp, #-8]
    28e0:	e59f107c 	ldr	r1, [pc, #124]	@ 2964 <bigwrite+0x114>
    28e4:	e3a00001 	mov	r0, #1
    28e8:	eb000a30 	bl	51b0 <printf>
    28ec:	eb00088d 	bl	4b28 <exit>
    28f0:	e51b300c 	ldr	r3, [fp, #-12]
    28f4:	e2833001 	add	r3, r3, #1
    28f8:	e50b300c 	str	r3, [fp, #-12]
    28fc:	e51b300c 	ldr	r3, [fp, #-12]
    2900:	e3530001 	cmp	r3, #1
    2904:	daffffea 	ble	28b4 <bigwrite+0x64>
    2908:	e51b0010 	ldr	r0, [fp, #-16]
    290c:	eb0008b2 	bl	4bdc <close>
    2910:	e59f0038 	ldr	r0, [pc, #56]	@ 2950 <bigwrite+0x100>
    2914:	eb0008dd 	bl	4c90 <unlink>
    2918:	e51b3008 	ldr	r3, [fp, #-8]
    291c:	e2833f75 	add	r3, r3, #468	@ 0x1d4
    2920:	e2833003 	add	r3, r3, #3
    2924:	e50b3008 	str	r3, [fp, #-8]
    2928:	e51b3008 	ldr	r3, [fp, #-8]
    292c:	e3530b06 	cmp	r3, #6144	@ 0x1800
    2930:	baffffd1 	blt	287c <bigwrite+0x2c>
    2934:	e59f102c 	ldr	r1, [pc, #44]	@ 2968 <bigwrite+0x118>
    2938:	e3a00001 	mov	r0, #1
    293c:	eb000a1b 	bl	51b0 <printf>
    2940:	e1a00000 	nop			@ (mov r0, r0)
    2944:	e24bd004 	sub	sp, fp, #4
    2948:	e8bd8800 	pop	{fp, pc}
    294c:	00006664 	.word	0x00006664
    2950:	00006674 	.word	0x00006674
    2954:	000001f3 	.word	0x000001f3
    2958:	00000202 	.word	0x00000202
    295c:	00006680 	.word	0x00006680
    2960:	000070d4 	.word	0x000070d4
    2964:	00006698 	.word	0x00006698
    2968:	000066ac 	.word	0x000066ac

0000296c <bigfile>:
    296c:	e92d4800 	push	{fp, lr}
    2970:	e28db004 	add	fp, sp, #4
    2974:	e24dd010 	sub	sp, sp, #16
    2978:	e59f11f8 	ldr	r1, [pc, #504]	@ 2b78 <bigfile+0x20c>
    297c:	e3a00001 	mov	r0, #1
    2980:	eb000a0a 	bl	51b0 <printf>
    2984:	e59f01f0 	ldr	r0, [pc, #496]	@ 2b7c <bigfile+0x210>
    2988:	eb0008c0 	bl	4c90 <unlink>
    298c:	e59f11ec 	ldr	r1, [pc, #492]	@ 2b80 <bigfile+0x214>
    2990:	e59f01e4 	ldr	r0, [pc, #484]	@ 2b7c <bigfile+0x210>
    2994:	eb0008ab 	bl	4c48 <open>
    2998:	e50b0010 	str	r0, [fp, #-16]
    299c:	e51b3010 	ldr	r3, [fp, #-16]
    29a0:	e3530000 	cmp	r3, #0
    29a4:	aa000003 	bge	29b8 <bigfile+0x4c>
    29a8:	e59f11d4 	ldr	r1, [pc, #468]	@ 2b84 <bigfile+0x218>
    29ac:	e3a00001 	mov	r0, #1
    29b0:	eb0009fe 	bl	51b0 <printf>
    29b4:	eb00085b 	bl	4b28 <exit>
    29b8:	e3a03000 	mov	r3, #0
    29bc:	e50b3008 	str	r3, [fp, #-8]
    29c0:	ea000011 	b	2a0c <bigfile+0xa0>
    29c4:	e3a02f96 	mov	r2, #600	@ 0x258
    29c8:	e51b1008 	ldr	r1, [fp, #-8]
    29cc:	e59f01b4 	ldr	r0, [pc, #436]	@ 2b88 <bigfile+0x21c>
    29d0:	eb00062e 	bl	4290 <memset>
    29d4:	e3a02f96 	mov	r2, #600	@ 0x258
    29d8:	e59f11a8 	ldr	r1, [pc, #424]	@ 2b88 <bigfile+0x21c>
    29dc:	e51b0010 	ldr	r0, [fp, #-16]
    29e0:	eb000874 	bl	4bb8 <write>
    29e4:	e1a03000 	mov	r3, r0
    29e8:	e3530f96 	cmp	r3, #600	@ 0x258
    29ec:	0a000003 	beq	2a00 <bigfile+0x94>
    29f0:	e59f1194 	ldr	r1, [pc, #404]	@ 2b8c <bigfile+0x220>
    29f4:	e3a00001 	mov	r0, #1
    29f8:	eb0009ec 	bl	51b0 <printf>
    29fc:	eb000849 	bl	4b28 <exit>
    2a00:	e51b3008 	ldr	r3, [fp, #-8]
    2a04:	e2833001 	add	r3, r3, #1
    2a08:	e50b3008 	str	r3, [fp, #-8]
    2a0c:	e51b3008 	ldr	r3, [fp, #-8]
    2a10:	e3530013 	cmp	r3, #19
    2a14:	daffffea 	ble	29c4 <bigfile+0x58>
    2a18:	e51b0010 	ldr	r0, [fp, #-16]
    2a1c:	eb00086e 	bl	4bdc <close>
    2a20:	e3a01000 	mov	r1, #0
    2a24:	e59f0150 	ldr	r0, [pc, #336]	@ 2b7c <bigfile+0x210>
    2a28:	eb000886 	bl	4c48 <open>
    2a2c:	e50b0010 	str	r0, [fp, #-16]
    2a30:	e51b3010 	ldr	r3, [fp, #-16]
    2a34:	e3530000 	cmp	r3, #0
    2a38:	aa000003 	bge	2a4c <bigfile+0xe0>
    2a3c:	e59f114c 	ldr	r1, [pc, #332]	@ 2b90 <bigfile+0x224>
    2a40:	e3a00001 	mov	r0, #1
    2a44:	eb0009d9 	bl	51b0 <printf>
    2a48:	eb000836 	bl	4b28 <exit>
    2a4c:	e3a03000 	mov	r3, #0
    2a50:	e50b300c 	str	r3, [fp, #-12]
    2a54:	e3a03000 	mov	r3, #0
    2a58:	e50b3008 	str	r3, [fp, #-8]
    2a5c:	e3a02f4b 	mov	r2, #300	@ 0x12c
    2a60:	e59f1120 	ldr	r1, [pc, #288]	@ 2b88 <bigfile+0x21c>
    2a64:	e51b0010 	ldr	r0, [fp, #-16]
    2a68:	eb000849 	bl	4b94 <read>
    2a6c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    2a70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a74:	e3530000 	cmp	r3, #0
    2a78:	aa000003 	bge	2a8c <bigfile+0x120>
    2a7c:	e59f1110 	ldr	r1, [pc, #272]	@ 2b94 <bigfile+0x228>
    2a80:	e3a00001 	mov	r0, #1
    2a84:	eb0009c9 	bl	51b0 <printf>
    2a88:	eb000826 	bl	4b28 <exit>
    2a8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a90:	e3530000 	cmp	r3, #0
    2a94:	0a000024 	beq	2b2c <bigfile+0x1c0>
    2a98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a9c:	e3530f4b 	cmp	r3, #300	@ 0x12c
    2aa0:	0a000003 	beq	2ab4 <bigfile+0x148>
    2aa4:	e59f10ec 	ldr	r1, [pc, #236]	@ 2b98 <bigfile+0x22c>
    2aa8:	e3a00001 	mov	r0, #1
    2aac:	eb0009bf 	bl	51b0 <printf>
    2ab0:	eb00081c 	bl	4b28 <exit>
    2ab4:	e59f30cc 	ldr	r3, [pc, #204]	@ 2b88 <bigfile+0x21c>
    2ab8:	e5d33000 	ldrb	r3, [r3]
    2abc:	e1a01003 	mov	r1, r3
    2ac0:	e51b3008 	ldr	r3, [fp, #-8]
    2ac4:	e1a02fa3 	lsr	r2, r3, #31
    2ac8:	e0823003 	add	r3, r2, r3
    2acc:	e1a030c3 	asr	r3, r3, #1
    2ad0:	e1510003 	cmp	r1, r3
    2ad4:	1a000008 	bne	2afc <bigfile+0x190>
    2ad8:	e59f30a8 	ldr	r3, [pc, #168]	@ 2b88 <bigfile+0x21c>
    2adc:	e5d3312b 	ldrb	r3, [r3, #299]	@ 0x12b
    2ae0:	e1a01003 	mov	r1, r3
    2ae4:	e51b3008 	ldr	r3, [fp, #-8]
    2ae8:	e1a02fa3 	lsr	r2, r3, #31
    2aec:	e0823003 	add	r3, r2, r3
    2af0:	e1a030c3 	asr	r3, r3, #1
    2af4:	e1510003 	cmp	r1, r3
    2af8:	0a000003 	beq	2b0c <bigfile+0x1a0>
    2afc:	e59f1098 	ldr	r1, [pc, #152]	@ 2b9c <bigfile+0x230>
    2b00:	e3a00001 	mov	r0, #1
    2b04:	eb0009a9 	bl	51b0 <printf>
    2b08:	eb000806 	bl	4b28 <exit>
    2b0c:	e51b200c 	ldr	r2, [fp, #-12]
    2b10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2b14:	e0823003 	add	r3, r2, r3
    2b18:	e50b300c 	str	r3, [fp, #-12]
    2b1c:	e51b3008 	ldr	r3, [fp, #-8]
    2b20:	e2833001 	add	r3, r3, #1
    2b24:	e50b3008 	str	r3, [fp, #-8]
    2b28:	eaffffcb 	b	2a5c <bigfile+0xf0>
    2b2c:	e1a00000 	nop			@ (mov r0, r0)
    2b30:	e51b0010 	ldr	r0, [fp, #-16]
    2b34:	eb000828 	bl	4bdc <close>
    2b38:	e51b300c 	ldr	r3, [fp, #-12]
    2b3c:	e59f205c 	ldr	r2, [pc, #92]	@ 2ba0 <bigfile+0x234>
    2b40:	e1530002 	cmp	r3, r2
    2b44:	0a000003 	beq	2b58 <bigfile+0x1ec>
    2b48:	e59f1054 	ldr	r1, [pc, #84]	@ 2ba4 <bigfile+0x238>
    2b4c:	e3a00001 	mov	r0, #1
    2b50:	eb000996 	bl	51b0 <printf>
    2b54:	eb0007f3 	bl	4b28 <exit>
    2b58:	e59f001c 	ldr	r0, [pc, #28]	@ 2b7c <bigfile+0x210>
    2b5c:	eb00084b 	bl	4c90 <unlink>
    2b60:	e59f1040 	ldr	r1, [pc, #64]	@ 2ba8 <bigfile+0x23c>
    2b64:	e3a00001 	mov	r0, #1
    2b68:	eb000990 	bl	51b0 <printf>
    2b6c:	e1a00000 	nop			@ (mov r0, r0)
    2b70:	e24bd004 	sub	sp, fp, #4
    2b74:	e8bd8800 	pop	{fp, pc}
    2b78:	000066bc 	.word	0x000066bc
    2b7c:	000066cc 	.word	0x000066cc
    2b80:	00000202 	.word	0x00000202
    2b84:	000066d4 	.word	0x000066d4
    2b88:	000070d4 	.word	0x000070d4
    2b8c:	000066ec 	.word	0x000066ec
    2b90:	00006704 	.word	0x00006704
    2b94:	0000671c 	.word	0x0000671c
    2b98:	00006734 	.word	0x00006734
    2b9c:	00006748 	.word	0x00006748
    2ba0:	00002ee0 	.word	0x00002ee0
    2ba4:	00006764 	.word	0x00006764
    2ba8:	00006780 	.word	0x00006780

00002bac <fourteen>:
    2bac:	e92d4800 	push	{fp, lr}
    2bb0:	e28db004 	add	fp, sp, #4
    2bb4:	e24dd008 	sub	sp, sp, #8
    2bb8:	e59f1114 	ldr	r1, [pc, #276]	@ 2cd4 <fourteen+0x128>
    2bbc:	e3a00001 	mov	r0, #1
    2bc0:	eb00097a 	bl	51b0 <printf>
    2bc4:	e59f010c 	ldr	r0, [pc, #268]	@ 2cd8 <fourteen+0x12c>
    2bc8:	eb00084b 	bl	4cfc <mkdir>
    2bcc:	e1a03000 	mov	r3, r0
    2bd0:	e3530000 	cmp	r3, #0
    2bd4:	0a000003 	beq	2be8 <fourteen+0x3c>
    2bd8:	e59f10fc 	ldr	r1, [pc, #252]	@ 2cdc <fourteen+0x130>
    2bdc:	e3a00001 	mov	r0, #1
    2be0:	eb000972 	bl	51b0 <printf>
    2be4:	eb0007cf 	bl	4b28 <exit>
    2be8:	e59f00f0 	ldr	r0, [pc, #240]	@ 2ce0 <fourteen+0x134>
    2bec:	eb000842 	bl	4cfc <mkdir>
    2bf0:	e1a03000 	mov	r3, r0
    2bf4:	e3530000 	cmp	r3, #0
    2bf8:	0a000003 	beq	2c0c <fourteen+0x60>
    2bfc:	e59f10e0 	ldr	r1, [pc, #224]	@ 2ce4 <fourteen+0x138>
    2c00:	e3a00001 	mov	r0, #1
    2c04:	eb000969 	bl	51b0 <printf>
    2c08:	eb0007c6 	bl	4b28 <exit>
    2c0c:	e3a01c02 	mov	r1, #512	@ 0x200
    2c10:	e59f00d0 	ldr	r0, [pc, #208]	@ 2ce8 <fourteen+0x13c>
    2c14:	eb00080b 	bl	4c48 <open>
    2c18:	e50b0008 	str	r0, [fp, #-8]
    2c1c:	e51b3008 	ldr	r3, [fp, #-8]
    2c20:	e3530000 	cmp	r3, #0
    2c24:	aa000003 	bge	2c38 <fourteen+0x8c>
    2c28:	e59f10bc 	ldr	r1, [pc, #188]	@ 2cec <fourteen+0x140>
    2c2c:	e3a00001 	mov	r0, #1
    2c30:	eb00095e 	bl	51b0 <printf>
    2c34:	eb0007bb 	bl	4b28 <exit>
    2c38:	e51b0008 	ldr	r0, [fp, #-8]
    2c3c:	eb0007e6 	bl	4bdc <close>
    2c40:	e3a01000 	mov	r1, #0
    2c44:	e59f00a4 	ldr	r0, [pc, #164]	@ 2cf0 <fourteen+0x144>
    2c48:	eb0007fe 	bl	4c48 <open>
    2c4c:	e50b0008 	str	r0, [fp, #-8]
    2c50:	e51b3008 	ldr	r3, [fp, #-8]
    2c54:	e3530000 	cmp	r3, #0
    2c58:	aa000003 	bge	2c6c <fourteen+0xc0>
    2c5c:	e59f1090 	ldr	r1, [pc, #144]	@ 2cf4 <fourteen+0x148>
    2c60:	e3a00001 	mov	r0, #1
    2c64:	eb000951 	bl	51b0 <printf>
    2c68:	eb0007ae 	bl	4b28 <exit>
    2c6c:	e51b0008 	ldr	r0, [fp, #-8]
    2c70:	eb0007d9 	bl	4bdc <close>
    2c74:	e59f007c 	ldr	r0, [pc, #124]	@ 2cf8 <fourteen+0x14c>
    2c78:	eb00081f 	bl	4cfc <mkdir>
    2c7c:	e1a03000 	mov	r3, r0
    2c80:	e3530000 	cmp	r3, #0
    2c84:	1a000003 	bne	2c98 <fourteen+0xec>
    2c88:	e59f106c 	ldr	r1, [pc, #108]	@ 2cfc <fourteen+0x150>
    2c8c:	e3a00001 	mov	r0, #1
    2c90:	eb000946 	bl	51b0 <printf>
    2c94:	eb0007a3 	bl	4b28 <exit>
    2c98:	e59f0060 	ldr	r0, [pc, #96]	@ 2d00 <fourteen+0x154>
    2c9c:	eb000816 	bl	4cfc <mkdir>
    2ca0:	e1a03000 	mov	r3, r0
    2ca4:	e3530000 	cmp	r3, #0
    2ca8:	1a000003 	bne	2cbc <fourteen+0x110>
    2cac:	e59f1050 	ldr	r1, [pc, #80]	@ 2d04 <fourteen+0x158>
    2cb0:	e3a00001 	mov	r0, #1
    2cb4:	eb00093d 	bl	51b0 <printf>
    2cb8:	eb00079a 	bl	4b28 <exit>
    2cbc:	e59f1044 	ldr	r1, [pc, #68]	@ 2d08 <fourteen+0x15c>
    2cc0:	e3a00001 	mov	r0, #1
    2cc4:	eb000939 	bl	51b0 <printf>
    2cc8:	e1a00000 	nop			@ (mov r0, r0)
    2ccc:	e24bd004 	sub	sp, fp, #4
    2cd0:	e8bd8800 	pop	{fp, pc}
    2cd4:	00006794 	.word	0x00006794
    2cd8:	000067a4 	.word	0x000067a4
    2cdc:	000067b4 	.word	0x000067b4
    2ce0:	000067d4 	.word	0x000067d4
    2ce4:	000067f4 	.word	0x000067f4
    2ce8:	00006824 	.word	0x00006824
    2cec:	00006854 	.word	0x00006854
    2cf0:	00006894 	.word	0x00006894
    2cf4:	000068c4 	.word	0x000068c4
    2cf8:	00006900 	.word	0x00006900
    2cfc:	00006920 	.word	0x00006920
    2d00:	00006950 	.word	0x00006950
    2d04:	00006970 	.word	0x00006970
    2d08:	000069a4 	.word	0x000069a4

00002d0c <rmdot>:
    2d0c:	e92d4800 	push	{fp, lr}
    2d10:	e28db004 	add	fp, sp, #4
    2d14:	e59f1138 	ldr	r1, [pc, #312]	@ 2e54 <rmdot+0x148>
    2d18:	e3a00001 	mov	r0, #1
    2d1c:	eb000923 	bl	51b0 <printf>
    2d20:	e59f0130 	ldr	r0, [pc, #304]	@ 2e58 <rmdot+0x14c>
    2d24:	eb0007f4 	bl	4cfc <mkdir>
    2d28:	e1a03000 	mov	r3, r0
    2d2c:	e3530000 	cmp	r3, #0
    2d30:	0a000003 	beq	2d44 <rmdot+0x38>
    2d34:	e59f1120 	ldr	r1, [pc, #288]	@ 2e5c <rmdot+0x150>
    2d38:	e3a00001 	mov	r0, #1
    2d3c:	eb00091b 	bl	51b0 <printf>
    2d40:	eb000778 	bl	4b28 <exit>
    2d44:	e59f010c 	ldr	r0, [pc, #268]	@ 2e58 <rmdot+0x14c>
    2d48:	eb0007f4 	bl	4d20 <chdir>
    2d4c:	e1a03000 	mov	r3, r0
    2d50:	e3530000 	cmp	r3, #0
    2d54:	0a000003 	beq	2d68 <rmdot+0x5c>
    2d58:	e59f1100 	ldr	r1, [pc, #256]	@ 2e60 <rmdot+0x154>
    2d5c:	e3a00001 	mov	r0, #1
    2d60:	eb000912 	bl	51b0 <printf>
    2d64:	eb00076f 	bl	4b28 <exit>
    2d68:	e59f00f4 	ldr	r0, [pc, #244]	@ 2e64 <rmdot+0x158>
    2d6c:	eb0007c7 	bl	4c90 <unlink>
    2d70:	e1a03000 	mov	r3, r0
    2d74:	e3530000 	cmp	r3, #0
    2d78:	1a000003 	bne	2d8c <rmdot+0x80>
    2d7c:	e59f10e4 	ldr	r1, [pc, #228]	@ 2e68 <rmdot+0x15c>
    2d80:	e3a00001 	mov	r0, #1
    2d84:	eb000909 	bl	51b0 <printf>
    2d88:	eb000766 	bl	4b28 <exit>
    2d8c:	e59f00d8 	ldr	r0, [pc, #216]	@ 2e6c <rmdot+0x160>
    2d90:	eb0007be 	bl	4c90 <unlink>
    2d94:	e1a03000 	mov	r3, r0
    2d98:	e3530000 	cmp	r3, #0
    2d9c:	1a000003 	bne	2db0 <rmdot+0xa4>
    2da0:	e59f10c8 	ldr	r1, [pc, #200]	@ 2e70 <rmdot+0x164>
    2da4:	e3a00001 	mov	r0, #1
    2da8:	eb000900 	bl	51b0 <printf>
    2dac:	eb00075d 	bl	4b28 <exit>
    2db0:	e59f00bc 	ldr	r0, [pc, #188]	@ 2e74 <rmdot+0x168>
    2db4:	eb0007d9 	bl	4d20 <chdir>
    2db8:	e1a03000 	mov	r3, r0
    2dbc:	e3530000 	cmp	r3, #0
    2dc0:	0a000003 	beq	2dd4 <rmdot+0xc8>
    2dc4:	e59f10ac 	ldr	r1, [pc, #172]	@ 2e78 <rmdot+0x16c>
    2dc8:	e3a00001 	mov	r0, #1
    2dcc:	eb0008f7 	bl	51b0 <printf>
    2dd0:	eb000754 	bl	4b28 <exit>
    2dd4:	e59f00a0 	ldr	r0, [pc, #160]	@ 2e7c <rmdot+0x170>
    2dd8:	eb0007ac 	bl	4c90 <unlink>
    2ddc:	e1a03000 	mov	r3, r0
    2de0:	e3530000 	cmp	r3, #0
    2de4:	1a000003 	bne	2df8 <rmdot+0xec>
    2de8:	e59f1090 	ldr	r1, [pc, #144]	@ 2e80 <rmdot+0x174>
    2dec:	e3a00001 	mov	r0, #1
    2df0:	eb0008ee 	bl	51b0 <printf>
    2df4:	eb00074b 	bl	4b28 <exit>
    2df8:	e59f0084 	ldr	r0, [pc, #132]	@ 2e84 <rmdot+0x178>
    2dfc:	eb0007a3 	bl	4c90 <unlink>
    2e00:	e1a03000 	mov	r3, r0
    2e04:	e3530000 	cmp	r3, #0
    2e08:	1a000003 	bne	2e1c <rmdot+0x110>
    2e0c:	e59f1074 	ldr	r1, [pc, #116]	@ 2e88 <rmdot+0x17c>
    2e10:	e3a00001 	mov	r0, #1
    2e14:	eb0008e5 	bl	51b0 <printf>
    2e18:	eb000742 	bl	4b28 <exit>
    2e1c:	e59f0034 	ldr	r0, [pc, #52]	@ 2e58 <rmdot+0x14c>
    2e20:	eb00079a 	bl	4c90 <unlink>
    2e24:	e1a03000 	mov	r3, r0
    2e28:	e3530000 	cmp	r3, #0
    2e2c:	0a000003 	beq	2e40 <rmdot+0x134>
    2e30:	e59f1054 	ldr	r1, [pc, #84]	@ 2e8c <rmdot+0x180>
    2e34:	e3a00001 	mov	r0, #1
    2e38:	eb0008dc 	bl	51b0 <printf>
    2e3c:	eb000739 	bl	4b28 <exit>
    2e40:	e59f1048 	ldr	r1, [pc, #72]	@ 2e90 <rmdot+0x184>
    2e44:	e3a00001 	mov	r0, #1
    2e48:	eb0008d8 	bl	51b0 <printf>
    2e4c:	e1a00000 	nop			@ (mov r0, r0)
    2e50:	e8bd8800 	pop	{fp, pc}
    2e54:	000069b4 	.word	0x000069b4
    2e58:	000069c0 	.word	0x000069c0
    2e5c:	000069c8 	.word	0x000069c8
    2e60:	000069dc 	.word	0x000069dc
    2e64:	00006068 	.word	0x00006068
    2e68:	000069f0 	.word	0x000069f0
    2e6c:	00005b98 	.word	0x00005b98
    2e70:	00006a00 	.word	0x00006a00
    2e74:	00006a10 	.word	0x00006a10
    2e78:	00006a14 	.word	0x00006a14
    2e7c:	00006a24 	.word	0x00006a24
    2e80:	00006a2c 	.word	0x00006a2c
    2e84:	00006a44 	.word	0x00006a44
    2e88:	00006a4c 	.word	0x00006a4c
    2e8c:	00006a64 	.word	0x00006a64
    2e90:	00006a7c 	.word	0x00006a7c

00002e94 <dirfile>:
    2e94:	e92d4800 	push	{fp, lr}
    2e98:	e28db004 	add	fp, sp, #4
    2e9c:	e24dd008 	sub	sp, sp, #8
    2ea0:	e59f11d0 	ldr	r1, [pc, #464]	@ 3078 <dirfile+0x1e4>
    2ea4:	e3a00001 	mov	r0, #1
    2ea8:	eb0008c0 	bl	51b0 <printf>
    2eac:	e3a01c02 	mov	r1, #512	@ 0x200
    2eb0:	e59f01c4 	ldr	r0, [pc, #452]	@ 307c <dirfile+0x1e8>
    2eb4:	eb000763 	bl	4c48 <open>
    2eb8:	e50b0008 	str	r0, [fp, #-8]
    2ebc:	e51b3008 	ldr	r3, [fp, #-8]
    2ec0:	e3530000 	cmp	r3, #0
    2ec4:	aa000003 	bge	2ed8 <dirfile+0x44>
    2ec8:	e59f11b0 	ldr	r1, [pc, #432]	@ 3080 <dirfile+0x1ec>
    2ecc:	e3a00001 	mov	r0, #1
    2ed0:	eb0008b6 	bl	51b0 <printf>
    2ed4:	eb000713 	bl	4b28 <exit>
    2ed8:	e51b0008 	ldr	r0, [fp, #-8]
    2edc:	eb00073e 	bl	4bdc <close>
    2ee0:	e59f0194 	ldr	r0, [pc, #404]	@ 307c <dirfile+0x1e8>
    2ee4:	eb00078d 	bl	4d20 <chdir>
    2ee8:	e1a03000 	mov	r3, r0
    2eec:	e3530000 	cmp	r3, #0
    2ef0:	1a000003 	bne	2f04 <dirfile+0x70>
    2ef4:	e59f1188 	ldr	r1, [pc, #392]	@ 3084 <dirfile+0x1f0>
    2ef8:	e3a00001 	mov	r0, #1
    2efc:	eb0008ab 	bl	51b0 <printf>
    2f00:	eb000708 	bl	4b28 <exit>
    2f04:	e3a01000 	mov	r1, #0
    2f08:	e59f0178 	ldr	r0, [pc, #376]	@ 3088 <dirfile+0x1f4>
    2f0c:	eb00074d 	bl	4c48 <open>
    2f10:	e50b0008 	str	r0, [fp, #-8]
    2f14:	e51b3008 	ldr	r3, [fp, #-8]
    2f18:	e3530000 	cmp	r3, #0
    2f1c:	ba000003 	blt	2f30 <dirfile+0x9c>
    2f20:	e59f1164 	ldr	r1, [pc, #356]	@ 308c <dirfile+0x1f8>
    2f24:	e3a00001 	mov	r0, #1
    2f28:	eb0008a0 	bl	51b0 <printf>
    2f2c:	eb0006fd 	bl	4b28 <exit>
    2f30:	e3a01c02 	mov	r1, #512	@ 0x200
    2f34:	e59f014c 	ldr	r0, [pc, #332]	@ 3088 <dirfile+0x1f4>
    2f38:	eb000742 	bl	4c48 <open>
    2f3c:	e50b0008 	str	r0, [fp, #-8]
    2f40:	e51b3008 	ldr	r3, [fp, #-8]
    2f44:	e3530000 	cmp	r3, #0
    2f48:	ba000003 	blt	2f5c <dirfile+0xc8>
    2f4c:	e59f1138 	ldr	r1, [pc, #312]	@ 308c <dirfile+0x1f8>
    2f50:	e3a00001 	mov	r0, #1
    2f54:	eb000895 	bl	51b0 <printf>
    2f58:	eb0006f2 	bl	4b28 <exit>
    2f5c:	e59f0124 	ldr	r0, [pc, #292]	@ 3088 <dirfile+0x1f4>
    2f60:	eb000765 	bl	4cfc <mkdir>
    2f64:	e1a03000 	mov	r3, r0
    2f68:	e3530000 	cmp	r3, #0
    2f6c:	1a000003 	bne	2f80 <dirfile+0xec>
    2f70:	e59f1118 	ldr	r1, [pc, #280]	@ 3090 <dirfile+0x1fc>
    2f74:	e3a00001 	mov	r0, #1
    2f78:	eb00088c 	bl	51b0 <printf>
    2f7c:	eb0006e9 	bl	4b28 <exit>
    2f80:	e59f0100 	ldr	r0, [pc, #256]	@ 3088 <dirfile+0x1f4>
    2f84:	eb000741 	bl	4c90 <unlink>
    2f88:	e1a03000 	mov	r3, r0
    2f8c:	e3530000 	cmp	r3, #0
    2f90:	1a000003 	bne	2fa4 <dirfile+0x110>
    2f94:	e59f10f8 	ldr	r1, [pc, #248]	@ 3094 <dirfile+0x200>
    2f98:	e3a00001 	mov	r0, #1
    2f9c:	eb000883 	bl	51b0 <printf>
    2fa0:	eb0006e0 	bl	4b28 <exit>
    2fa4:	e59f10dc 	ldr	r1, [pc, #220]	@ 3088 <dirfile+0x1f4>
    2fa8:	e59f00e8 	ldr	r0, [pc, #232]	@ 3098 <dirfile+0x204>
    2fac:	eb000749 	bl	4cd8 <link>
    2fb0:	e1a03000 	mov	r3, r0
    2fb4:	e3530000 	cmp	r3, #0
    2fb8:	1a000003 	bne	2fcc <dirfile+0x138>
    2fbc:	e59f10d8 	ldr	r1, [pc, #216]	@ 309c <dirfile+0x208>
    2fc0:	e3a00001 	mov	r0, #1
    2fc4:	eb000879 	bl	51b0 <printf>
    2fc8:	eb0006d6 	bl	4b28 <exit>
    2fcc:	e59f00a8 	ldr	r0, [pc, #168]	@ 307c <dirfile+0x1e8>
    2fd0:	eb00072e 	bl	4c90 <unlink>
    2fd4:	e1a03000 	mov	r3, r0
    2fd8:	e3530000 	cmp	r3, #0
    2fdc:	0a000003 	beq	2ff0 <dirfile+0x15c>
    2fe0:	e59f10b8 	ldr	r1, [pc, #184]	@ 30a0 <dirfile+0x20c>
    2fe4:	e3a00001 	mov	r0, #1
    2fe8:	eb000870 	bl	51b0 <printf>
    2fec:	eb0006cd 	bl	4b28 <exit>
    2ff0:	e3a01002 	mov	r1, #2
    2ff4:	e59f00a8 	ldr	r0, [pc, #168]	@ 30a4 <dirfile+0x210>
    2ff8:	eb000712 	bl	4c48 <open>
    2ffc:	e50b0008 	str	r0, [fp, #-8]
    3000:	e51b3008 	ldr	r3, [fp, #-8]
    3004:	e3530000 	cmp	r3, #0
    3008:	ba000003 	blt	301c <dirfile+0x188>
    300c:	e59f1094 	ldr	r1, [pc, #148]	@ 30a8 <dirfile+0x214>
    3010:	e3a00001 	mov	r0, #1
    3014:	eb000865 	bl	51b0 <printf>
    3018:	eb0006c2 	bl	4b28 <exit>
    301c:	e3a01000 	mov	r1, #0
    3020:	e59f007c 	ldr	r0, [pc, #124]	@ 30a4 <dirfile+0x210>
    3024:	eb000707 	bl	4c48 <open>
    3028:	e50b0008 	str	r0, [fp, #-8]
    302c:	e3a02001 	mov	r2, #1
    3030:	e59f1074 	ldr	r1, [pc, #116]	@ 30ac <dirfile+0x218>
    3034:	e51b0008 	ldr	r0, [fp, #-8]
    3038:	eb0006de 	bl	4bb8 <write>
    303c:	e1a03000 	mov	r3, r0
    3040:	e3530000 	cmp	r3, #0
    3044:	da000003 	ble	3058 <dirfile+0x1c4>
    3048:	e59f1060 	ldr	r1, [pc, #96]	@ 30b0 <dirfile+0x21c>
    304c:	e3a00001 	mov	r0, #1
    3050:	eb000856 	bl	51b0 <printf>
    3054:	eb0006b3 	bl	4b28 <exit>
    3058:	e51b0008 	ldr	r0, [fp, #-8]
    305c:	eb0006de 	bl	4bdc <close>
    3060:	e59f104c 	ldr	r1, [pc, #76]	@ 30b4 <dirfile+0x220>
    3064:	e3a00001 	mov	r0, #1
    3068:	eb000850 	bl	51b0 <printf>
    306c:	e1a00000 	nop			@ (mov r0, r0)
    3070:	e24bd004 	sub	sp, fp, #4
    3074:	e8bd8800 	pop	{fp, pc}
    3078:	00006a88 	.word	0x00006a88
    307c:	00006a98 	.word	0x00006a98
    3080:	00006aa0 	.word	0x00006aa0
    3084:	00006ab8 	.word	0x00006ab8
    3088:	00006ad4 	.word	0x00006ad4
    308c:	00006ae0 	.word	0x00006ae0
    3090:	00006b00 	.word	0x00006b00
    3094:	00006b20 	.word	0x00006b20
    3098:	00006b40 	.word	0x00006b40
    309c:	00006b48 	.word	0x00006b48
    30a0:	00006b68 	.word	0x00006b68
    30a4:	00006068 	.word	0x00006068
    30a8:	00006b80 	.word	0x00006b80
    30ac:	00005c54 	.word	0x00005c54
    30b0:	00006ba0 	.word	0x00006ba0
    30b4:	00006bb4 	.word	0x00006bb4

000030b8 <iref>:
    30b8:	e92d4800 	push	{fp, lr}
    30bc:	e28db004 	add	fp, sp, #4
    30c0:	e24dd008 	sub	sp, sp, #8
    30c4:	e59f10f4 	ldr	r1, [pc, #244]	@ 31c0 <iref+0x108>
    30c8:	e3a00001 	mov	r0, #1
    30cc:	eb000837 	bl	51b0 <printf>
    30d0:	e3a03000 	mov	r3, #0
    30d4:	e50b3008 	str	r3, [fp, #-8]
    30d8:	ea00002d 	b	3194 <iref+0xdc>
    30dc:	e59f00e0 	ldr	r0, [pc, #224]	@ 31c4 <iref+0x10c>
    30e0:	eb000705 	bl	4cfc <mkdir>
    30e4:	e1a03000 	mov	r3, r0
    30e8:	e3530000 	cmp	r3, #0
    30ec:	0a000003 	beq	3100 <iref+0x48>
    30f0:	e59f10d0 	ldr	r1, [pc, #208]	@ 31c8 <iref+0x110>
    30f4:	e3a00001 	mov	r0, #1
    30f8:	eb00082c 	bl	51b0 <printf>
    30fc:	eb000689 	bl	4b28 <exit>
    3100:	e59f00bc 	ldr	r0, [pc, #188]	@ 31c4 <iref+0x10c>
    3104:	eb000705 	bl	4d20 <chdir>
    3108:	e1a03000 	mov	r3, r0
    310c:	e3530000 	cmp	r3, #0
    3110:	0a000003 	beq	3124 <iref+0x6c>
    3114:	e59f10b0 	ldr	r1, [pc, #176]	@ 31cc <iref+0x114>
    3118:	e3a00001 	mov	r0, #1
    311c:	eb000823 	bl	51b0 <printf>
    3120:	eb000680 	bl	4b28 <exit>
    3124:	e59f00a4 	ldr	r0, [pc, #164]	@ 31d0 <iref+0x118>
    3128:	eb0006f3 	bl	4cfc <mkdir>
    312c:	e59f109c 	ldr	r1, [pc, #156]	@ 31d0 <iref+0x118>
    3130:	e59f009c 	ldr	r0, [pc, #156]	@ 31d4 <iref+0x11c>
    3134:	eb0006e7 	bl	4cd8 <link>
    3138:	e3a01c02 	mov	r1, #512	@ 0x200
    313c:	e59f008c 	ldr	r0, [pc, #140]	@ 31d0 <iref+0x118>
    3140:	eb0006c0 	bl	4c48 <open>
    3144:	e50b000c 	str	r0, [fp, #-12]
    3148:	e51b300c 	ldr	r3, [fp, #-12]
    314c:	e3530000 	cmp	r3, #0
    3150:	ba000001 	blt	315c <iref+0xa4>
    3154:	e51b000c 	ldr	r0, [fp, #-12]
    3158:	eb00069f 	bl	4bdc <close>
    315c:	e3a01c02 	mov	r1, #512	@ 0x200
    3160:	e59f0070 	ldr	r0, [pc, #112]	@ 31d8 <iref+0x120>
    3164:	eb0006b7 	bl	4c48 <open>
    3168:	e50b000c 	str	r0, [fp, #-12]
    316c:	e51b300c 	ldr	r3, [fp, #-12]
    3170:	e3530000 	cmp	r3, #0
    3174:	ba000001 	blt	3180 <iref+0xc8>
    3178:	e51b000c 	ldr	r0, [fp, #-12]
    317c:	eb000696 	bl	4bdc <close>
    3180:	e59f0050 	ldr	r0, [pc, #80]	@ 31d8 <iref+0x120>
    3184:	eb0006c1 	bl	4c90 <unlink>
    3188:	e51b3008 	ldr	r3, [fp, #-8]
    318c:	e2833001 	add	r3, r3, #1
    3190:	e50b3008 	str	r3, [fp, #-8]
    3194:	e51b3008 	ldr	r3, [fp, #-8]
    3198:	e3530032 	cmp	r3, #50	@ 0x32
    319c:	daffffce 	ble	30dc <iref+0x24>
    31a0:	e59f0034 	ldr	r0, [pc, #52]	@ 31dc <iref+0x124>
    31a4:	eb0006dd 	bl	4d20 <chdir>
    31a8:	e59f1030 	ldr	r1, [pc, #48]	@ 31e0 <iref+0x128>
    31ac:	e3a00001 	mov	r0, #1
    31b0:	eb0007fe 	bl	51b0 <printf>
    31b4:	e1a00000 	nop			@ (mov r0, r0)
    31b8:	e24bd004 	sub	sp, fp, #4
    31bc:	e8bd8800 	pop	{fp, pc}
    31c0:	00006bc4 	.word	0x00006bc4
    31c4:	00006bd8 	.word	0x00006bd8
    31c8:	00006be0 	.word	0x00006be0
    31cc:	00006bf4 	.word	0x00006bf4
    31d0:	00006c08 	.word	0x00006c08
    31d4:	00006b40 	.word	0x00006b40
    31d8:	00006c0c 	.word	0x00006c0c
    31dc:	00006a10 	.word	0x00006a10
    31e0:	00006c10 	.word	0x00006c10

000031e4 <forktest>:
    31e4:	e92d4800 	push	{fp, lr}
    31e8:	e28db004 	add	fp, sp, #4
    31ec:	e24dd008 	sub	sp, sp, #8
    31f0:	e59f10e0 	ldr	r1, [pc, #224]	@ 32d8 <forktest+0xf4>
    31f4:	e3a00001 	mov	r0, #1
    31f8:	eb0007ec 	bl	51b0 <printf>
    31fc:	e3a03000 	mov	r3, #0
    3200:	e50b3008 	str	r3, [fp, #-8]
    3204:	ea00000b 	b	3238 <forktest+0x54>
    3208:	eb00063d 	bl	4b04 <fork>
    320c:	e50b000c 	str	r0, [fp, #-12]
    3210:	e51b300c 	ldr	r3, [fp, #-12]
    3214:	e3530000 	cmp	r3, #0
    3218:	ba00000a 	blt	3248 <forktest+0x64>
    321c:	e51b300c 	ldr	r3, [fp, #-12]
    3220:	e3530000 	cmp	r3, #0
    3224:	1a000000 	bne	322c <forktest+0x48>
    3228:	eb00063e 	bl	4b28 <exit>
    322c:	e51b3008 	ldr	r3, [fp, #-8]
    3230:	e2833001 	add	r3, r3, #1
    3234:	e50b3008 	str	r3, [fp, #-8]
    3238:	e51b3008 	ldr	r3, [fp, #-8]
    323c:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
    3240:	bafffff0 	blt	3208 <forktest+0x24>
    3244:	ea000000 	b	324c <forktest+0x68>
    3248:	e1a00000 	nop			@ (mov r0, r0)
    324c:	e51b3008 	ldr	r3, [fp, #-8]
    3250:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
    3254:	1a00000e 	bne	3294 <forktest+0xb0>
    3258:	e59f107c 	ldr	r1, [pc, #124]	@ 32dc <forktest+0xf8>
    325c:	e3a00001 	mov	r0, #1
    3260:	eb0007d2 	bl	51b0 <printf>
    3264:	eb00062f 	bl	4b28 <exit>
    3268:	eb000637 	bl	4b4c <wait>
    326c:	e1a03000 	mov	r3, r0
    3270:	e3530000 	cmp	r3, #0
    3274:	aa000003 	bge	3288 <forktest+0xa4>
    3278:	e59f1060 	ldr	r1, [pc, #96]	@ 32e0 <forktest+0xfc>
    327c:	e3a00001 	mov	r0, #1
    3280:	eb0007ca 	bl	51b0 <printf>
    3284:	eb000627 	bl	4b28 <exit>
    3288:	e51b3008 	ldr	r3, [fp, #-8]
    328c:	e2433001 	sub	r3, r3, #1
    3290:	e50b3008 	str	r3, [fp, #-8]
    3294:	e51b3008 	ldr	r3, [fp, #-8]
    3298:	e3530000 	cmp	r3, #0
    329c:	cafffff1 	bgt	3268 <forktest+0x84>
    32a0:	eb000629 	bl	4b4c <wait>
    32a4:	e1a03000 	mov	r3, r0
    32a8:	e3730001 	cmn	r3, #1
    32ac:	0a000003 	beq	32c0 <forktest+0xdc>
    32b0:	e59f102c 	ldr	r1, [pc, #44]	@ 32e4 <forktest+0x100>
    32b4:	e3a00001 	mov	r0, #1
    32b8:	eb0007bc 	bl	51b0 <printf>
    32bc:	eb000619 	bl	4b28 <exit>
    32c0:	e59f1020 	ldr	r1, [pc, #32]	@ 32e8 <forktest+0x104>
    32c4:	e3a00001 	mov	r0, #1
    32c8:	eb0007b8 	bl	51b0 <printf>
    32cc:	e1a00000 	nop			@ (mov r0, r0)
    32d0:	e24bd004 	sub	sp, fp, #4
    32d4:	e8bd8800 	pop	{fp, pc}
    32d8:	00006c24 	.word	0x00006c24
    32dc:	00006c30 	.word	0x00006c30
    32e0:	00006c54 	.word	0x00006c54
    32e4:	00006c68 	.word	0x00006c68
    32e8:	00006c7c 	.word	0x00006c7c

000032ec <sbrktest>:
    32ec:	e92d4800 	push	{fp, lr}
    32f0:	e28db004 	add	fp, sp, #4
    32f4:	e24dd068 	sub	sp, sp, #104	@ 0x68
    32f8:	e59f3554 	ldr	r3, [pc, #1364]	@ 3854 <sbrktest+0x568>
    32fc:	e5933000 	ldr	r3, [r3]
    3300:	e59f1550 	ldr	r1, [pc, #1360]	@ 3858 <sbrktest+0x56c>
    3304:	e1a00003 	mov	r0, r3
    3308:	eb0007a8 	bl	51b0 <printf>
    330c:	e3a00000 	mov	r0, #0
    3310:	eb00069d 	bl	4d8c <sbrk>
    3314:	e50b0010 	str	r0, [fp, #-16]
    3318:	e3a00000 	mov	r0, #0
    331c:	eb00069a 	bl	4d8c <sbrk>
    3320:	e50b0008 	str	r0, [fp, #-8]
    3324:	e3a03000 	mov	r3, #0
    3328:	e50b300c 	str	r3, [fp, #-12]
    332c:	ea000018 	b	3394 <sbrktest+0xa8>
    3330:	e3a00001 	mov	r0, #1
    3334:	eb000694 	bl	4d8c <sbrk>
    3338:	e50b002c 	str	r0, [fp, #-44]	@ 0xffffffd4
    333c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
    3340:	e51b3008 	ldr	r3, [fp, #-8]
    3344:	e1520003 	cmp	r2, r3
    3348:	0a000008 	beq	3370 <sbrktest+0x84>
    334c:	e59f3500 	ldr	r3, [pc, #1280]	@ 3854 <sbrktest+0x568>
    3350:	e5930000 	ldr	r0, [r3]
    3354:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3358:	e58d3000 	str	r3, [sp]
    335c:	e51b3008 	ldr	r3, [fp, #-8]
    3360:	e51b200c 	ldr	r2, [fp, #-12]
    3364:	e59f14f0 	ldr	r1, [pc, #1264]	@ 385c <sbrktest+0x570>
    3368:	eb000790 	bl	51b0 <printf>
    336c:	eb0005ed 	bl	4b28 <exit>
    3370:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3374:	e3a02001 	mov	r2, #1
    3378:	e5c32000 	strb	r2, [r3]
    337c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3380:	e2833001 	add	r3, r3, #1
    3384:	e50b3008 	str	r3, [fp, #-8]
    3388:	e51b300c 	ldr	r3, [fp, #-12]
    338c:	e2833001 	add	r3, r3, #1
    3390:	e50b300c 	str	r3, [fp, #-12]
    3394:	e51b300c 	ldr	r3, [fp, #-12]
    3398:	e59f24c0 	ldr	r2, [pc, #1216]	@ 3860 <sbrktest+0x574>
    339c:	e1530002 	cmp	r3, r2
    33a0:	daffffe2 	ble	3330 <sbrktest+0x44>
    33a4:	eb0005d6 	bl	4b04 <fork>
    33a8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    33ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    33b0:	e3530000 	cmp	r3, #0
    33b4:	aa000005 	bge	33d0 <sbrktest+0xe4>
    33b8:	e59f3494 	ldr	r3, [pc, #1172]	@ 3854 <sbrktest+0x568>
    33bc:	e5933000 	ldr	r3, [r3]
    33c0:	e59f149c 	ldr	r1, [pc, #1180]	@ 3864 <sbrktest+0x578>
    33c4:	e1a00003 	mov	r0, r3
    33c8:	eb000778 	bl	51b0 <printf>
    33cc:	eb0005d5 	bl	4b28 <exit>
    33d0:	e3a00001 	mov	r0, #1
    33d4:	eb00066c 	bl	4d8c <sbrk>
    33d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    33dc:	e3a00001 	mov	r0, #1
    33e0:	eb000669 	bl	4d8c <sbrk>
    33e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    33e8:	e51b3008 	ldr	r3, [fp, #-8]
    33ec:	e2833001 	add	r3, r3, #1
    33f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    33f4:	e1520003 	cmp	r2, r3
    33f8:	0a000005 	beq	3414 <sbrktest+0x128>
    33fc:	e59f3450 	ldr	r3, [pc, #1104]	@ 3854 <sbrktest+0x568>
    3400:	e5933000 	ldr	r3, [r3]
    3404:	e59f145c 	ldr	r1, [pc, #1116]	@ 3868 <sbrktest+0x57c>
    3408:	e1a00003 	mov	r0, r3
    340c:	eb000767 	bl	51b0 <printf>
    3410:	eb0005c4 	bl	4b28 <exit>
    3414:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3418:	e3530000 	cmp	r3, #0
    341c:	1a000000 	bne	3424 <sbrktest+0x138>
    3420:	eb0005c0 	bl	4b28 <exit>
    3424:	eb0005c8 	bl	4b4c <wait>
    3428:	e3a00000 	mov	r0, #0
    342c:	eb000656 	bl	4d8c <sbrk>
    3430:	e50b0008 	str	r0, [fp, #-8]
    3434:	e51b3008 	ldr	r3, [fp, #-8]
    3438:	e2633519 	rsb	r3, r3, #104857600	@ 0x6400000
    343c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    3440:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    3444:	e1a00003 	mov	r0, r3
    3448:	eb00064f 	bl	4d8c <sbrk>
    344c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    3450:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    3454:	e51b3008 	ldr	r3, [fp, #-8]
    3458:	e1520003 	cmp	r2, r3
    345c:	0a000005 	beq	3478 <sbrktest+0x18c>
    3460:	e59f33ec 	ldr	r3, [pc, #1004]	@ 3854 <sbrktest+0x568>
    3464:	e5933000 	ldr	r3, [r3]
    3468:	e59f13fc 	ldr	r1, [pc, #1020]	@ 386c <sbrktest+0x580>
    346c:	e1a00003 	mov	r0, r3
    3470:	eb00074e 	bl	51b0 <printf>
    3474:	eb0005ab 	bl	4b28 <exit>
    3478:	e59f33f0 	ldr	r3, [pc, #1008]	@ 3870 <sbrktest+0x584>
    347c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
    3480:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    3484:	e3a02063 	mov	r2, #99	@ 0x63
    3488:	e5c32000 	strb	r2, [r3]
    348c:	e3a00000 	mov	r0, #0
    3490:	eb00063d 	bl	4d8c <sbrk>
    3494:	e50b0008 	str	r0, [fp, #-8]
    3498:	e59f03d4 	ldr	r0, [pc, #980]	@ 3874 <sbrktest+0x588>
    349c:	eb00063a 	bl	4d8c <sbrk>
    34a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    34a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    34a8:	e3730001 	cmn	r3, #1
    34ac:	1a000005 	bne	34c8 <sbrktest+0x1dc>
    34b0:	e59f339c 	ldr	r3, [pc, #924]	@ 3854 <sbrktest+0x568>
    34b4:	e5933000 	ldr	r3, [r3]
    34b8:	e59f13b8 	ldr	r1, [pc, #952]	@ 3878 <sbrktest+0x58c>
    34bc:	e1a00003 	mov	r0, r3
    34c0:	eb00073a 	bl	51b0 <printf>
    34c4:	eb000597 	bl	4b28 <exit>
    34c8:	e3a00000 	mov	r0, #0
    34cc:	eb00062e 	bl	4d8c <sbrk>
    34d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    34d4:	e51b3008 	ldr	r3, [fp, #-8]
    34d8:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
    34dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    34e0:	e1520003 	cmp	r2, r3
    34e4:	0a000006 	beq	3504 <sbrktest+0x218>
    34e8:	e59f3364 	ldr	r3, [pc, #868]	@ 3854 <sbrktest+0x568>
    34ec:	e5930000 	ldr	r0, [r3]
    34f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    34f4:	e51b2008 	ldr	r2, [fp, #-8]
    34f8:	e59f137c 	ldr	r1, [pc, #892]	@ 387c <sbrktest+0x590>
    34fc:	eb00072b 	bl	51b0 <printf>
    3500:	eb000588 	bl	4b28 <exit>
    3504:	e3a00000 	mov	r0, #0
    3508:	eb00061f 	bl	4d8c <sbrk>
    350c:	e50b0008 	str	r0, [fp, #-8]
    3510:	e3a00a01 	mov	r0, #4096	@ 0x1000
    3514:	eb00061c 	bl	4d8c <sbrk>
    3518:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    351c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    3520:	e51b3008 	ldr	r3, [fp, #-8]
    3524:	e1520003 	cmp	r2, r3
    3528:	1a000006 	bne	3548 <sbrktest+0x25c>
    352c:	e3a00000 	mov	r0, #0
    3530:	eb000615 	bl	4d8c <sbrk>
    3534:	e1a02000 	mov	r2, r0
    3538:	e51b3008 	ldr	r3, [fp, #-8]
    353c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
    3540:	e1520003 	cmp	r2, r3
    3544:	0a000006 	beq	3564 <sbrktest+0x278>
    3548:	e59f3304 	ldr	r3, [pc, #772]	@ 3854 <sbrktest+0x568>
    354c:	e5930000 	ldr	r0, [r3]
    3550:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    3554:	e51b2008 	ldr	r2, [fp, #-8]
    3558:	e59f1320 	ldr	r1, [pc, #800]	@ 3880 <sbrktest+0x594>
    355c:	eb000713 	bl	51b0 <printf>
    3560:	eb000570 	bl	4b28 <exit>
    3564:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    3568:	e5d33000 	ldrb	r3, [r3]
    356c:	e3530063 	cmp	r3, #99	@ 0x63
    3570:	1a000005 	bne	358c <sbrktest+0x2a0>
    3574:	e59f32d8 	ldr	r3, [pc, #728]	@ 3854 <sbrktest+0x568>
    3578:	e5933000 	ldr	r3, [r3]
    357c:	e59f1300 	ldr	r1, [pc, #768]	@ 3884 <sbrktest+0x598>
    3580:	e1a00003 	mov	r0, r3
    3584:	eb000709 	bl	51b0 <printf>
    3588:	eb000566 	bl	4b28 <exit>
    358c:	e3a00000 	mov	r0, #0
    3590:	eb0005fd 	bl	4d8c <sbrk>
    3594:	e50b0008 	str	r0, [fp, #-8]
    3598:	e3a00000 	mov	r0, #0
    359c:	eb0005fa 	bl	4d8c <sbrk>
    35a0:	e1a02000 	mov	r2, r0
    35a4:	e51b3010 	ldr	r3, [fp, #-16]
    35a8:	e0433002 	sub	r3, r3, r2
    35ac:	e1a00003 	mov	r0, r3
    35b0:	eb0005f5 	bl	4d8c <sbrk>
    35b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    35b8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    35bc:	e51b3008 	ldr	r3, [fp, #-8]
    35c0:	e1520003 	cmp	r2, r3
    35c4:	0a000006 	beq	35e4 <sbrktest+0x2f8>
    35c8:	e59f3284 	ldr	r3, [pc, #644]	@ 3854 <sbrktest+0x568>
    35cc:	e5930000 	ldr	r0, [r3]
    35d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    35d4:	e51b2008 	ldr	r2, [fp, #-8]
    35d8:	e59f12a8 	ldr	r1, [pc, #680]	@ 3888 <sbrktest+0x59c>
    35dc:	eb0006f3 	bl	51b0 <printf>
    35e0:	eb000550 	bl	4b28 <exit>
    35e4:	e3a03102 	mov	r3, #-2147483648	@ 0x80000000
    35e8:	e50b3008 	str	r3, [fp, #-8]
    35ec:	ea00001e 	b	366c <sbrktest+0x380>
    35f0:	eb0005dc 	bl	4d68 <getpid>
    35f4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    35f8:	eb000541 	bl	4b04 <fork>
    35fc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    3600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3604:	e3530000 	cmp	r3, #0
    3608:	aa000005 	bge	3624 <sbrktest+0x338>
    360c:	e59f3240 	ldr	r3, [pc, #576]	@ 3854 <sbrktest+0x568>
    3610:	e5933000 	ldr	r3, [r3]
    3614:	e59f1270 	ldr	r1, [pc, #624]	@ 388c <sbrktest+0x5a0>
    3618:	e1a00003 	mov	r0, r3
    361c:	eb0006e3 	bl	51b0 <printf>
    3620:	eb000540 	bl	4b28 <exit>
    3624:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3628:	e3530000 	cmp	r3, #0
    362c:	1a000009 	bne	3658 <sbrktest+0x36c>
    3630:	e59f321c 	ldr	r3, [pc, #540]	@ 3854 <sbrktest+0x568>
    3634:	e5930000 	ldr	r0, [r3]
    3638:	e51b3008 	ldr	r3, [fp, #-8]
    363c:	e5d33000 	ldrb	r3, [r3]
    3640:	e51b2008 	ldr	r2, [fp, #-8]
    3644:	e59f1244 	ldr	r1, [pc, #580]	@ 3890 <sbrktest+0x5a4>
    3648:	eb0006d8 	bl	51b0 <printf>
    364c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    3650:	eb00056a 	bl	4c00 <kill>
    3654:	eb000533 	bl	4b28 <exit>
    3658:	eb00053b 	bl	4b4c <wait>
    365c:	e51b3008 	ldr	r3, [fp, #-8]
    3660:	e2833cc3 	add	r3, r3, #49920	@ 0xc300
    3664:	e2833050 	add	r3, r3, #80	@ 0x50
    3668:	e50b3008 	str	r3, [fp, #-8]
    366c:	e51b3008 	ldr	r3, [fp, #-8]
    3670:	e59f221c 	ldr	r2, [pc, #540]	@ 3894 <sbrktest+0x5a8>
    3674:	e1530002 	cmp	r3, r2
    3678:	9affffdc 	bls	35f0 <sbrktest+0x304>
    367c:	e24b3034 	sub	r3, fp, #52	@ 0x34
    3680:	e1a00003 	mov	r0, r3
    3684:	eb000539 	bl	4b70 <pipe>
    3688:	e1a03000 	mov	r3, r0
    368c:	e3530000 	cmp	r3, #0
    3690:	0a000003 	beq	36a4 <sbrktest+0x3b8>
    3694:	e59f11fc 	ldr	r1, [pc, #508]	@ 3898 <sbrktest+0x5ac>
    3698:	e3a00001 	mov	r0, #1
    369c:	eb0006c3 	bl	51b0 <printf>
    36a0:	eb000520 	bl	4b28 <exit>
    36a4:	e3a03000 	mov	r3, #0
    36a8:	e50b300c 	str	r3, [fp, #-12]
    36ac:	ea00002a 	b	375c <sbrktest+0x470>
    36b0:	eb000513 	bl	4b04 <fork>
    36b4:	e1a02000 	mov	r2, r0
    36b8:	e51b300c 	ldr	r3, [fp, #-12]
    36bc:	e1a03103 	lsl	r3, r3, #2
    36c0:	e2433004 	sub	r3, r3, #4
    36c4:	e083300b 	add	r3, r3, fp
    36c8:	e5032058 	str	r2, [r3, #-88]	@ 0xffffffa8
    36cc:	e51b300c 	ldr	r3, [fp, #-12]
    36d0:	e1a03103 	lsl	r3, r3, #2
    36d4:	e2433004 	sub	r3, r3, #4
    36d8:	e083300b 	add	r3, r3, fp
    36dc:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    36e0:	e3530000 	cmp	r3, #0
    36e4:	1a00000d 	bne	3720 <sbrktest+0x434>
    36e8:	e3a00000 	mov	r0, #0
    36ec:	eb0005a6 	bl	4d8c <sbrk>
    36f0:	e1a03000 	mov	r3, r0
    36f4:	e2633519 	rsb	r3, r3, #104857600	@ 0x6400000
    36f8:	e1a00003 	mov	r0, r3
    36fc:	eb0005a2 	bl	4d8c <sbrk>
    3700:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    3704:	e3a02001 	mov	r2, #1
    3708:	e59f118c 	ldr	r1, [pc, #396]	@ 389c <sbrktest+0x5b0>
    370c:	e1a00003 	mov	r0, r3
    3710:	eb000528 	bl	4bb8 <write>
    3714:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
    3718:	eb0005a4 	bl	4db0 <sleep>
    371c:	eafffffc 	b	3714 <sbrktest+0x428>
    3720:	e51b300c 	ldr	r3, [fp, #-12]
    3724:	e1a03103 	lsl	r3, r3, #2
    3728:	e2433004 	sub	r3, r3, #4
    372c:	e083300b 	add	r3, r3, fp
    3730:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    3734:	e3730001 	cmn	r3, #1
    3738:	0a000004 	beq	3750 <sbrktest+0x464>
    373c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    3740:	e24b105d 	sub	r1, fp, #93	@ 0x5d
    3744:	e3a02001 	mov	r2, #1
    3748:	e1a00003 	mov	r0, r3
    374c:	eb000510 	bl	4b94 <read>
    3750:	e51b300c 	ldr	r3, [fp, #-12]
    3754:	e2833001 	add	r3, r3, #1
    3758:	e50b300c 	str	r3, [fp, #-12]
    375c:	e51b300c 	ldr	r3, [fp, #-12]
    3760:	e3530009 	cmp	r3, #9
    3764:	9affffd1 	bls	36b0 <sbrktest+0x3c4>
    3768:	e3a00a01 	mov	r0, #4096	@ 0x1000
    376c:	eb000586 	bl	4d8c <sbrk>
    3770:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3774:	e3a03000 	mov	r3, #0
    3778:	e50b300c 	str	r3, [fp, #-12]
    377c:	ea000013 	b	37d0 <sbrktest+0x4e4>
    3780:	e51b300c 	ldr	r3, [fp, #-12]
    3784:	e1a03103 	lsl	r3, r3, #2
    3788:	e2433004 	sub	r3, r3, #4
    378c:	e083300b 	add	r3, r3, fp
    3790:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    3794:	e3730001 	cmn	r3, #1
    3798:	0a000008 	beq	37c0 <sbrktest+0x4d4>
    379c:	e51b300c 	ldr	r3, [fp, #-12]
    37a0:	e1a03103 	lsl	r3, r3, #2
    37a4:	e2433004 	sub	r3, r3, #4
    37a8:	e083300b 	add	r3, r3, fp
    37ac:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    37b0:	e1a00003 	mov	r0, r3
    37b4:	eb000511 	bl	4c00 <kill>
    37b8:	eb0004e3 	bl	4b4c <wait>
    37bc:	ea000000 	b	37c4 <sbrktest+0x4d8>
    37c0:	e1a00000 	nop			@ (mov r0, r0)
    37c4:	e51b300c 	ldr	r3, [fp, #-12]
    37c8:	e2833001 	add	r3, r3, #1
    37cc:	e50b300c 	str	r3, [fp, #-12]
    37d0:	e51b300c 	ldr	r3, [fp, #-12]
    37d4:	e3530009 	cmp	r3, #9
    37d8:	9affffe8 	bls	3780 <sbrktest+0x494>
    37dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    37e0:	e3730001 	cmn	r3, #1
    37e4:	1a000005 	bne	3800 <sbrktest+0x514>
    37e8:	e59f3064 	ldr	r3, [pc, #100]	@ 3854 <sbrktest+0x568>
    37ec:	e5933000 	ldr	r3, [r3]
    37f0:	e59f10a8 	ldr	r1, [pc, #168]	@ 38a0 <sbrktest+0x5b4>
    37f4:	e1a00003 	mov	r0, r3
    37f8:	eb00066c 	bl	51b0 <printf>
    37fc:	eb0004c9 	bl	4b28 <exit>
    3800:	e3a00000 	mov	r0, #0
    3804:	eb000560 	bl	4d8c <sbrk>
    3808:	e1a02000 	mov	r2, r0
    380c:	e51b3010 	ldr	r3, [fp, #-16]
    3810:	e1530002 	cmp	r3, r2
    3814:	2a000006 	bcs	3834 <sbrktest+0x548>
    3818:	e3a00000 	mov	r0, #0
    381c:	eb00055a 	bl	4d8c <sbrk>
    3820:	e1a02000 	mov	r2, r0
    3824:	e51b3010 	ldr	r3, [fp, #-16]
    3828:	e0433002 	sub	r3, r3, r2
    382c:	e1a00003 	mov	r0, r3
    3830:	eb000555 	bl	4d8c <sbrk>
    3834:	e59f3018 	ldr	r3, [pc, #24]	@ 3854 <sbrktest+0x568>
    3838:	e5933000 	ldr	r3, [r3]
    383c:	e59f1060 	ldr	r1, [pc, #96]	@ 38a4 <sbrktest+0x5b8>
    3840:	e1a00003 	mov	r0, r3
    3844:	eb000659 	bl	51b0 <printf>
    3848:	e1a00000 	nop			@ (mov r0, r0)
    384c:	e24bd004 	sub	sp, fp, #4
    3850:	e8bd8800 	pop	{fp, pc}
    3854:	000070b8 	.word	0x000070b8
    3858:	00006c8c 	.word	0x00006c8c
    385c:	00006c98 	.word	0x00006c98
    3860:	00001387 	.word	0x00001387
    3864:	00006cb4 	.word	0x00006cb4
    3868:	00006ccc 	.word	0x00006ccc
    386c:	00006ce8 	.word	0x00006ce8
    3870:	063fffff 	.word	0x063fffff
    3874:	fffff000 	.word	0xfffff000
    3878:	00006d28 	.word	0x00006d28
    387c:	00006d44 	.word	0x00006d44
    3880:	00006d7c 	.word	0x00006d7c
    3884:	00006da4 	.word	0x00006da4
    3888:	00006dd4 	.word	0x00006dd4
    388c:	00005ca4 	.word	0x00005ca4
    3890:	00006df8 	.word	0x00006df8
    3894:	801e847f 	.word	0x801e847f
    3898:	00005be4 	.word	0x00005be4
    389c:	00005c54 	.word	0x00005c54
    38a0:	00006e14 	.word	0x00006e14
    38a4:	00006e30 	.word	0x00006e30

000038a8 <validateint>:
    38a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    38ac:	e28db000 	add	fp, sp, #0
    38b0:	e24dd00c 	sub	sp, sp, #12
    38b4:	e50b0008 	str	r0, [fp, #-8]
    38b8:	e1a00000 	nop			@ (mov r0, r0)
    38bc:	e28bd000 	add	sp, fp, #0
    38c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    38c4:	e12fff1e 	bx	lr

000038c8 <validatetest>:
    38c8:	e92d4800 	push	{fp, lr}
    38cc:	e28db004 	add	fp, sp, #4
    38d0:	e24dd010 	sub	sp, sp, #16
    38d4:	e59f30d0 	ldr	r3, [pc, #208]	@ 39ac <validatetest+0xe4>
    38d8:	e5933000 	ldr	r3, [r3]
    38dc:	e59f10cc 	ldr	r1, [pc, #204]	@ 39b0 <validatetest+0xe8>
    38e0:	e1a00003 	mov	r0, r3
    38e4:	eb000631 	bl	51b0 <printf>
    38e8:	e59f30c4 	ldr	r3, [pc, #196]	@ 39b4 <validatetest+0xec>
    38ec:	e50b300c 	str	r3, [fp, #-12]
    38f0:	e3a03000 	mov	r3, #0
    38f4:	e50b3008 	str	r3, [fp, #-8]
    38f8:	ea00001f 	b	397c <validatetest+0xb4>
    38fc:	eb000480 	bl	4b04 <fork>
    3900:	e50b0010 	str	r0, [fp, #-16]
    3904:	e51b3010 	ldr	r3, [fp, #-16]
    3908:	e3530000 	cmp	r3, #0
    390c:	1a000003 	bne	3920 <validatetest+0x58>
    3910:	e51b3008 	ldr	r3, [fp, #-8]
    3914:	e1a00003 	mov	r0, r3
    3918:	ebffffe2 	bl	38a8 <validateint>
    391c:	eb000481 	bl	4b28 <exit>
    3920:	e3a00000 	mov	r0, #0
    3924:	eb000521 	bl	4db0 <sleep>
    3928:	e3a00000 	mov	r0, #0
    392c:	eb00051f 	bl	4db0 <sleep>
    3930:	e51b0010 	ldr	r0, [fp, #-16]
    3934:	eb0004b1 	bl	4c00 <kill>
    3938:	eb000483 	bl	4b4c <wait>
    393c:	e51b3008 	ldr	r3, [fp, #-8]
    3940:	e1a01003 	mov	r1, r3
    3944:	e59f006c 	ldr	r0, [pc, #108]	@ 39b8 <validatetest+0xf0>
    3948:	eb0004e2 	bl	4cd8 <link>
    394c:	e1a03000 	mov	r3, r0
    3950:	e3730001 	cmn	r3, #1
    3954:	0a000005 	beq	3970 <validatetest+0xa8>
    3958:	e59f304c 	ldr	r3, [pc, #76]	@ 39ac <validatetest+0xe4>
    395c:	e5933000 	ldr	r3, [r3]
    3960:	e59f1054 	ldr	r1, [pc, #84]	@ 39bc <validatetest+0xf4>
    3964:	e1a00003 	mov	r0, r3
    3968:	eb000610 	bl	51b0 <printf>
    396c:	eb00046d 	bl	4b28 <exit>
    3970:	e51b3008 	ldr	r3, [fp, #-8]
    3974:	e2833a01 	add	r3, r3, #4096	@ 0x1000
    3978:	e50b3008 	str	r3, [fp, #-8]
    397c:	e51b300c 	ldr	r3, [fp, #-12]
    3980:	e51b2008 	ldr	r2, [fp, #-8]
    3984:	e1520003 	cmp	r2, r3
    3988:	9affffdb 	bls	38fc <validatetest+0x34>
    398c:	e59f3018 	ldr	r3, [pc, #24]	@ 39ac <validatetest+0xe4>
    3990:	e5933000 	ldr	r3, [r3]
    3994:	e59f1024 	ldr	r1, [pc, #36]	@ 39c0 <validatetest+0xf8>
    3998:	e1a00003 	mov	r0, r3
    399c:	eb000603 	bl	51b0 <printf>
    39a0:	e1a00000 	nop			@ (mov r0, r0)
    39a4:	e24bd004 	sub	sp, fp, #4
    39a8:	e8bd8800 	pop	{fp, pc}
    39ac:	000070b8 	.word	0x000070b8
    39b0:	00006e40 	.word	0x00006e40
    39b4:	00113000 	.word	0x00113000
    39b8:	00006e50 	.word	0x00006e50
    39bc:	00006e5c 	.word	0x00006e5c
    39c0:	00006e78 	.word	0x00006e78

000039c4 <bsstest>:
    39c4:	e92d4800 	push	{fp, lr}
    39c8:	e28db004 	add	fp, sp, #4
    39cc:	e24dd008 	sub	sp, sp, #8
    39d0:	e59f3084 	ldr	r3, [pc, #132]	@ 3a5c <bsstest+0x98>
    39d4:	e5933000 	ldr	r3, [r3]
    39d8:	e59f1080 	ldr	r1, [pc, #128]	@ 3a60 <bsstest+0x9c>
    39dc:	e1a00003 	mov	r0, r3
    39e0:	eb0005f2 	bl	51b0 <printf>
    39e4:	e3a03000 	mov	r3, #0
    39e8:	e50b3008 	str	r3, [fp, #-8]
    39ec:	ea00000e 	b	3a2c <bsstest+0x68>
    39f0:	e59f206c 	ldr	r2, [pc, #108]	@ 3a64 <bsstest+0xa0>
    39f4:	e51b3008 	ldr	r3, [fp, #-8]
    39f8:	e0823003 	add	r3, r2, r3
    39fc:	e5d33000 	ldrb	r3, [r3]
    3a00:	e3530000 	cmp	r3, #0
    3a04:	0a000005 	beq	3a20 <bsstest+0x5c>
    3a08:	e59f304c 	ldr	r3, [pc, #76]	@ 3a5c <bsstest+0x98>
    3a0c:	e5933000 	ldr	r3, [r3]
    3a10:	e59f1050 	ldr	r1, [pc, #80]	@ 3a68 <bsstest+0xa4>
    3a14:	e1a00003 	mov	r0, r3
    3a18:	eb0005e4 	bl	51b0 <printf>
    3a1c:	eb000441 	bl	4b28 <exit>
    3a20:	e51b3008 	ldr	r3, [fp, #-8]
    3a24:	e2833001 	add	r3, r3, #1
    3a28:	e50b3008 	str	r3, [fp, #-8]
    3a2c:	e51b3008 	ldr	r3, [fp, #-8]
    3a30:	e59f2034 	ldr	r2, [pc, #52]	@ 3a6c <bsstest+0xa8>
    3a34:	e1530002 	cmp	r3, r2
    3a38:	9affffec 	bls	39f0 <bsstest+0x2c>
    3a3c:	e59f3018 	ldr	r3, [pc, #24]	@ 3a5c <bsstest+0x98>
    3a40:	e5933000 	ldr	r3, [r3]
    3a44:	e59f1024 	ldr	r1, [pc, #36]	@ 3a70 <bsstest+0xac>
    3a48:	e1a00003 	mov	r0, r3
    3a4c:	eb0005d7 	bl	51b0 <printf>
    3a50:	e1a00000 	nop			@ (mov r0, r0)
    3a54:	e24bd004 	sub	sp, fp, #4
    3a58:	e8bd8800 	pop	{fp, pc}
    3a5c:	000070b8 	.word	0x000070b8
    3a60:	00006e88 	.word	0x00006e88
    3a64:	000090d8 	.word	0x000090d8
    3a68:	00006e94 	.word	0x00006e94
    3a6c:	0000270f 	.word	0x0000270f
    3a70:	00006ea8 	.word	0x00006ea8

00003a74 <bigargtest>:
    3a74:	e92d4800 	push	{fp, lr}
    3a78:	e28db004 	add	fp, sp, #4
    3a7c:	e24dd010 	sub	sp, sp, #16
    3a80:	e59f011c 	ldr	r0, [pc, #284]	@ 3ba4 <bigargtest+0x130>
    3a84:	eb000481 	bl	4c90 <unlink>
    3a88:	eb00041d 	bl	4b04 <fork>
    3a8c:	e50b000c 	str	r0, [fp, #-12]
    3a90:	e51b300c 	ldr	r3, [fp, #-12]
    3a94:	e3530000 	cmp	r3, #0
    3a98:	1a000023 	bne	3b2c <bigargtest+0xb8>
    3a9c:	e3a03000 	mov	r3, #0
    3aa0:	e50b3008 	str	r3, [fp, #-8]
    3aa4:	ea000006 	b	3ac4 <bigargtest+0x50>
    3aa8:	e59f20f8 	ldr	r2, [pc, #248]	@ 3ba8 <bigargtest+0x134>
    3aac:	e51b3008 	ldr	r3, [fp, #-8]
    3ab0:	e59f10f4 	ldr	r1, [pc, #244]	@ 3bac <bigargtest+0x138>
    3ab4:	e7821103 	str	r1, [r2, r3, lsl #2]
    3ab8:	e51b3008 	ldr	r3, [fp, #-8]
    3abc:	e2833001 	add	r3, r3, #1
    3ac0:	e50b3008 	str	r3, [fp, #-8]
    3ac4:	e51b3008 	ldr	r3, [fp, #-8]
    3ac8:	e353001e 	cmp	r3, #30
    3acc:	dafffff5 	ble	3aa8 <bigargtest+0x34>
    3ad0:	e59f30d0 	ldr	r3, [pc, #208]	@ 3ba8 <bigargtest+0x134>
    3ad4:	e3a02000 	mov	r2, #0
    3ad8:	e583207c 	str	r2, [r3, #124]	@ 0x7c
    3adc:	e59f30cc 	ldr	r3, [pc, #204]	@ 3bb0 <bigargtest+0x13c>
    3ae0:	e5933000 	ldr	r3, [r3]
    3ae4:	e59f10c8 	ldr	r1, [pc, #200]	@ 3bb4 <bigargtest+0x140>
    3ae8:	e1a00003 	mov	r0, r3
    3aec:	eb0005af 	bl	51b0 <printf>
    3af0:	e59f10b0 	ldr	r1, [pc, #176]	@ 3ba8 <bigargtest+0x134>
    3af4:	e59f00bc 	ldr	r0, [pc, #188]	@ 3bb8 <bigargtest+0x144>
    3af8:	eb000449 	bl	4c24 <exec>
    3afc:	e59f30ac 	ldr	r3, [pc, #172]	@ 3bb0 <bigargtest+0x13c>
    3b00:	e5933000 	ldr	r3, [r3]
    3b04:	e59f10b0 	ldr	r1, [pc, #176]	@ 3bbc <bigargtest+0x148>
    3b08:	e1a00003 	mov	r0, r3
    3b0c:	eb0005a7 	bl	51b0 <printf>
    3b10:	e3a01c02 	mov	r1, #512	@ 0x200
    3b14:	e59f0088 	ldr	r0, [pc, #136]	@ 3ba4 <bigargtest+0x130>
    3b18:	eb00044a 	bl	4c48 <open>
    3b1c:	e50b0010 	str	r0, [fp, #-16]
    3b20:	e51b0010 	ldr	r0, [fp, #-16]
    3b24:	eb00042c 	bl	4bdc <close>
    3b28:	eb0003fe 	bl	4b28 <exit>
    3b2c:	e51b300c 	ldr	r3, [fp, #-12]
    3b30:	e3530000 	cmp	r3, #0
    3b34:	aa000005 	bge	3b50 <bigargtest+0xdc>
    3b38:	e59f3070 	ldr	r3, [pc, #112]	@ 3bb0 <bigargtest+0x13c>
    3b3c:	e5933000 	ldr	r3, [r3]
    3b40:	e59f1078 	ldr	r1, [pc, #120]	@ 3bc0 <bigargtest+0x14c>
    3b44:	e1a00003 	mov	r0, r3
    3b48:	eb000598 	bl	51b0 <printf>
    3b4c:	eb0003f5 	bl	4b28 <exit>
    3b50:	eb0003fd 	bl	4b4c <wait>
    3b54:	e3a01000 	mov	r1, #0
    3b58:	e59f0044 	ldr	r0, [pc, #68]	@ 3ba4 <bigargtest+0x130>
    3b5c:	eb000439 	bl	4c48 <open>
    3b60:	e50b0010 	str	r0, [fp, #-16]
    3b64:	e51b3010 	ldr	r3, [fp, #-16]
    3b68:	e3530000 	cmp	r3, #0
    3b6c:	aa000005 	bge	3b88 <bigargtest+0x114>
    3b70:	e59f3038 	ldr	r3, [pc, #56]	@ 3bb0 <bigargtest+0x13c>
    3b74:	e5933000 	ldr	r3, [r3]
    3b78:	e59f1044 	ldr	r1, [pc, #68]	@ 3bc4 <bigargtest+0x150>
    3b7c:	e1a00003 	mov	r0, r3
    3b80:	eb00058a 	bl	51b0 <printf>
    3b84:	eb0003e7 	bl	4b28 <exit>
    3b88:	e51b0010 	ldr	r0, [fp, #-16]
    3b8c:	eb000412 	bl	4bdc <close>
    3b90:	e59f000c 	ldr	r0, [pc, #12]	@ 3ba4 <bigargtest+0x130>
    3b94:	eb00043d 	bl	4c90 <unlink>
    3b98:	e1a00000 	nop			@ (mov r0, r0)
    3b9c:	e24bd004 	sub	sp, fp, #4
    3ba0:	e8bd8800 	pop	{fp, pc}
    3ba4:	00006eb8 	.word	0x00006eb8
    3ba8:	0000b7e8 	.word	0x0000b7e8
    3bac:	00006ec4 	.word	0x00006ec4
    3bb0:	000070b8 	.word	0x000070b8
    3bb4:	00006fa4 	.word	0x00006fa4
    3bb8:	0000586c 	.word	0x0000586c
    3bbc:	00006fb4 	.word	0x00006fb4
    3bc0:	00006fc4 	.word	0x00006fc4
    3bc4:	00006fe0 	.word	0x00006fe0

00003bc8 <fsfull>:
    3bc8:	e92d4800 	push	{fp, lr}
    3bcc:	e28db004 	add	fp, sp, #4
    3bd0:	e24dd058 	sub	sp, sp, #88	@ 0x58
    3bd4:	e3a03000 	mov	r3, #0
    3bd8:	e50b300c 	str	r3, [fp, #-12]
    3bdc:	e59f1364 	ldr	r1, [pc, #868]	@ 3f48 <fsfull+0x380>
    3be0:	e3a00001 	mov	r0, #1
    3be4:	eb000571 	bl	51b0 <printf>
    3be8:	e3a03000 	mov	r3, #0
    3bec:	e50b3008 	str	r3, [fp, #-8]
    3bf0:	e3a03066 	mov	r3, #102	@ 0x66
    3bf4:	e54b3058 	strb	r3, [fp, #-88]	@ 0xffffffa8
    3bf8:	e51b3008 	ldr	r3, [fp, #-8]
    3bfc:	e59f2348 	ldr	r2, [pc, #840]	@ 3f4c <fsfull+0x384>
    3c00:	e0c21392 	smull	r1, r2, r2, r3
    3c04:	e1a02342 	asr	r2, r2, #6
    3c08:	e1a03fc3 	asr	r3, r3, #31
    3c0c:	e0423003 	sub	r3, r2, r3
    3c10:	e6ef3073 	uxtb	r3, r3
    3c14:	e2833030 	add	r3, r3, #48	@ 0x30
    3c18:	e6ef3073 	uxtb	r3, r3
    3c1c:	e54b3057 	strb	r3, [fp, #-87]	@ 0xffffffa9
    3c20:	e51b1008 	ldr	r1, [fp, #-8]
    3c24:	e59f3320 	ldr	r3, [pc, #800]	@ 3f4c <fsfull+0x384>
    3c28:	e0c32193 	smull	r2, r3, r3, r1
    3c2c:	e1a02343 	asr	r2, r3, #6
    3c30:	e1a03fc1 	asr	r3, r1, #31
    3c34:	e0422003 	sub	r2, r2, r3
    3c38:	e1a03002 	mov	r3, r2
    3c3c:	e1a03283 	lsl	r3, r3, #5
    3c40:	e0433002 	sub	r3, r3, r2
    3c44:	e1a03103 	lsl	r3, r3, #2
    3c48:	e0833002 	add	r3, r3, r2
    3c4c:	e1a03183 	lsl	r3, r3, #3
    3c50:	e0412003 	sub	r2, r1, r3
    3c54:	e59f32f4 	ldr	r3, [pc, #756]	@ 3f50 <fsfull+0x388>
    3c58:	e0c31293 	smull	r1, r3, r3, r2
    3c5c:	e1a012c3 	asr	r1, r3, #5
    3c60:	e1a03fc2 	asr	r3, r2, #31
    3c64:	e0413003 	sub	r3, r1, r3
    3c68:	e6ef3073 	uxtb	r3, r3
    3c6c:	e2833030 	add	r3, r3, #48	@ 0x30
    3c70:	e6ef3073 	uxtb	r3, r3
    3c74:	e54b3056 	strb	r3, [fp, #-86]	@ 0xffffffaa
    3c78:	e51b1008 	ldr	r1, [fp, #-8]
    3c7c:	e59f32cc 	ldr	r3, [pc, #716]	@ 3f50 <fsfull+0x388>
    3c80:	e0c32193 	smull	r2, r3, r3, r1
    3c84:	e1a022c3 	asr	r2, r3, #5
    3c88:	e1a03fc1 	asr	r3, r1, #31
    3c8c:	e0422003 	sub	r2, r2, r3
    3c90:	e1a03002 	mov	r3, r2
    3c94:	e1a03103 	lsl	r3, r3, #2
    3c98:	e0833002 	add	r3, r3, r2
    3c9c:	e1a02103 	lsl	r2, r3, #2
    3ca0:	e0833002 	add	r3, r3, r2
    3ca4:	e1a03103 	lsl	r3, r3, #2
    3ca8:	e0412003 	sub	r2, r1, r3
    3cac:	e59f32a0 	ldr	r3, [pc, #672]	@ 3f54 <fsfull+0x38c>
    3cb0:	e0c31293 	smull	r1, r3, r3, r2
    3cb4:	e1a01143 	asr	r1, r3, #2
    3cb8:	e1a03fc2 	asr	r3, r2, #31
    3cbc:	e0413003 	sub	r3, r1, r3
    3cc0:	e6ef3073 	uxtb	r3, r3
    3cc4:	e2833030 	add	r3, r3, #48	@ 0x30
    3cc8:	e6ef3073 	uxtb	r3, r3
    3ccc:	e54b3055 	strb	r3, [fp, #-85]	@ 0xffffffab
    3cd0:	e51b2008 	ldr	r2, [fp, #-8]
    3cd4:	e59f3278 	ldr	r3, [pc, #632]	@ 3f54 <fsfull+0x38c>
    3cd8:	e0c31293 	smull	r1, r3, r3, r2
    3cdc:	e1a01143 	asr	r1, r3, #2
    3ce0:	e1a03fc2 	asr	r3, r2, #31
    3ce4:	e0411003 	sub	r1, r1, r3
    3ce8:	e1a03001 	mov	r3, r1
    3cec:	e1a03103 	lsl	r3, r3, #2
    3cf0:	e0833001 	add	r3, r3, r1
    3cf4:	e1a03083 	lsl	r3, r3, #1
    3cf8:	e0421003 	sub	r1, r2, r3
    3cfc:	e6ef3071 	uxtb	r3, r1
    3d00:	e2833030 	add	r3, r3, #48	@ 0x30
    3d04:	e6ef3073 	uxtb	r3, r3
    3d08:	e54b3054 	strb	r3, [fp, #-84]	@ 0xffffffac
    3d0c:	e3a03000 	mov	r3, #0
    3d10:	e54b3053 	strb	r3, [fp, #-83]	@ 0xffffffad
    3d14:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3d18:	e1a02003 	mov	r2, r3
    3d1c:	e59f1234 	ldr	r1, [pc, #564]	@ 3f58 <fsfull+0x390>
    3d20:	e3a00001 	mov	r0, #1
    3d24:	eb000521 	bl	51b0 <printf>
    3d28:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3d2c:	e59f1228 	ldr	r1, [pc, #552]	@ 3f5c <fsfull+0x394>
    3d30:	e1a00003 	mov	r0, r3
    3d34:	eb0003c3 	bl	4c48 <open>
    3d38:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    3d3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3d40:	e3530000 	cmp	r3, #0
    3d44:	aa000005 	bge	3d60 <fsfull+0x198>
    3d48:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3d4c:	e1a02003 	mov	r2, r3
    3d50:	e59f1208 	ldr	r1, [pc, #520]	@ 3f60 <fsfull+0x398>
    3d54:	e3a00001 	mov	r0, #1
    3d58:	eb000514 	bl	51b0 <printf>
    3d5c:	ea000020 	b	3de4 <fsfull+0x21c>
    3d60:	e3a03000 	mov	r3, #0
    3d64:	e50b3010 	str	r3, [fp, #-16]
    3d68:	e3a02c02 	mov	r2, #512	@ 0x200
    3d6c:	e59f11f0 	ldr	r1, [pc, #496]	@ 3f64 <fsfull+0x39c>
    3d70:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    3d74:	eb00038f 	bl	4bb8 <write>
    3d78:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3d7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    3d80:	e3530c02 	cmp	r3, #512	@ 0x200
    3d84:	ba000007 	blt	3da8 <fsfull+0x1e0>
    3d88:	e51b2010 	ldr	r2, [fp, #-16]
    3d8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    3d90:	e0823003 	add	r3, r2, r3
    3d94:	e50b3010 	str	r3, [fp, #-16]
    3d98:	e51b300c 	ldr	r3, [fp, #-12]
    3d9c:	e2833001 	add	r3, r3, #1
    3da0:	e50b300c 	str	r3, [fp, #-12]
    3da4:	eaffffef 	b	3d68 <fsfull+0x1a0>
    3da8:	e1a00000 	nop			@ (mov r0, r0)
    3dac:	e51b2010 	ldr	r2, [fp, #-16]
    3db0:	e59f11b0 	ldr	r1, [pc, #432]	@ 3f68 <fsfull+0x3a0>
    3db4:	e3a00001 	mov	r0, #1
    3db8:	eb0004fc 	bl	51b0 <printf>
    3dbc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    3dc0:	eb000385 	bl	4bdc <close>
    3dc4:	e51b3010 	ldr	r3, [fp, #-16]
    3dc8:	e3530000 	cmp	r3, #0
    3dcc:	0a000003 	beq	3de0 <fsfull+0x218>
    3dd0:	e51b3008 	ldr	r3, [fp, #-8]
    3dd4:	e2833001 	add	r3, r3, #1
    3dd8:	e50b3008 	str	r3, [fp, #-8]
    3ddc:	eaffff83 	b	3bf0 <fsfull+0x28>
    3de0:	e1a00000 	nop			@ (mov r0, r0)
    3de4:	ea00004e 	b	3f24 <fsfull+0x35c>
    3de8:	e3a03066 	mov	r3, #102	@ 0x66
    3dec:	e54b3058 	strb	r3, [fp, #-88]	@ 0xffffffa8
    3df0:	e51b3008 	ldr	r3, [fp, #-8]
    3df4:	e59f2150 	ldr	r2, [pc, #336]	@ 3f4c <fsfull+0x384>
    3df8:	e0c21392 	smull	r1, r2, r2, r3
    3dfc:	e1a02342 	asr	r2, r2, #6
    3e00:	e1a03fc3 	asr	r3, r3, #31
    3e04:	e0423003 	sub	r3, r2, r3
    3e08:	e6ef3073 	uxtb	r3, r3
    3e0c:	e2833030 	add	r3, r3, #48	@ 0x30
    3e10:	e6ef3073 	uxtb	r3, r3
    3e14:	e54b3057 	strb	r3, [fp, #-87]	@ 0xffffffa9
    3e18:	e51b1008 	ldr	r1, [fp, #-8]
    3e1c:	e59f3128 	ldr	r3, [pc, #296]	@ 3f4c <fsfull+0x384>
    3e20:	e0c32193 	smull	r2, r3, r3, r1
    3e24:	e1a02343 	asr	r2, r3, #6
    3e28:	e1a03fc1 	asr	r3, r1, #31
    3e2c:	e0422003 	sub	r2, r2, r3
    3e30:	e1a03002 	mov	r3, r2
    3e34:	e1a03283 	lsl	r3, r3, #5
    3e38:	e0433002 	sub	r3, r3, r2
    3e3c:	e1a03103 	lsl	r3, r3, #2
    3e40:	e0833002 	add	r3, r3, r2
    3e44:	e1a03183 	lsl	r3, r3, #3
    3e48:	e0412003 	sub	r2, r1, r3
    3e4c:	e59f30fc 	ldr	r3, [pc, #252]	@ 3f50 <fsfull+0x388>
    3e50:	e0c31293 	smull	r1, r3, r3, r2
    3e54:	e1a012c3 	asr	r1, r3, #5
    3e58:	e1a03fc2 	asr	r3, r2, #31
    3e5c:	e0413003 	sub	r3, r1, r3
    3e60:	e6ef3073 	uxtb	r3, r3
    3e64:	e2833030 	add	r3, r3, #48	@ 0x30
    3e68:	e6ef3073 	uxtb	r3, r3
    3e6c:	e54b3056 	strb	r3, [fp, #-86]	@ 0xffffffaa
    3e70:	e51b1008 	ldr	r1, [fp, #-8]
    3e74:	e59f30d4 	ldr	r3, [pc, #212]	@ 3f50 <fsfull+0x388>
    3e78:	e0c32193 	smull	r2, r3, r3, r1
    3e7c:	e1a022c3 	asr	r2, r3, #5
    3e80:	e1a03fc1 	asr	r3, r1, #31
    3e84:	e0422003 	sub	r2, r2, r3
    3e88:	e1a03002 	mov	r3, r2
    3e8c:	e1a03103 	lsl	r3, r3, #2
    3e90:	e0833002 	add	r3, r3, r2
    3e94:	e1a02103 	lsl	r2, r3, #2
    3e98:	e0833002 	add	r3, r3, r2
    3e9c:	e1a03103 	lsl	r3, r3, #2
    3ea0:	e0412003 	sub	r2, r1, r3
    3ea4:	e59f30a8 	ldr	r3, [pc, #168]	@ 3f54 <fsfull+0x38c>
    3ea8:	e0c31293 	smull	r1, r3, r3, r2
    3eac:	e1a01143 	asr	r1, r3, #2
    3eb0:	e1a03fc2 	asr	r3, r2, #31
    3eb4:	e0413003 	sub	r3, r1, r3
    3eb8:	e6ef3073 	uxtb	r3, r3
    3ebc:	e2833030 	add	r3, r3, #48	@ 0x30
    3ec0:	e6ef3073 	uxtb	r3, r3
    3ec4:	e54b3055 	strb	r3, [fp, #-85]	@ 0xffffffab
    3ec8:	e51b2008 	ldr	r2, [fp, #-8]
    3ecc:	e59f3080 	ldr	r3, [pc, #128]	@ 3f54 <fsfull+0x38c>
    3ed0:	e0c31293 	smull	r1, r3, r3, r2
    3ed4:	e1a01143 	asr	r1, r3, #2
    3ed8:	e1a03fc2 	asr	r3, r2, #31
    3edc:	e0411003 	sub	r1, r1, r3
    3ee0:	e1a03001 	mov	r3, r1
    3ee4:	e1a03103 	lsl	r3, r3, #2
    3ee8:	e0833001 	add	r3, r3, r1
    3eec:	e1a03083 	lsl	r3, r3, #1
    3ef0:	e0421003 	sub	r1, r2, r3
    3ef4:	e6ef3071 	uxtb	r3, r1
    3ef8:	e2833030 	add	r3, r3, #48	@ 0x30
    3efc:	e6ef3073 	uxtb	r3, r3
    3f00:	e54b3054 	strb	r3, [fp, #-84]	@ 0xffffffac
    3f04:	e3a03000 	mov	r3, #0
    3f08:	e54b3053 	strb	r3, [fp, #-83]	@ 0xffffffad
    3f0c:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3f10:	e1a00003 	mov	r0, r3
    3f14:	eb00035d 	bl	4c90 <unlink>
    3f18:	e51b3008 	ldr	r3, [fp, #-8]
    3f1c:	e2433001 	sub	r3, r3, #1
    3f20:	e50b3008 	str	r3, [fp, #-8]
    3f24:	e51b3008 	ldr	r3, [fp, #-8]
    3f28:	e3530000 	cmp	r3, #0
    3f2c:	aaffffad 	bge	3de8 <fsfull+0x220>
    3f30:	e59f1034 	ldr	r1, [pc, #52]	@ 3f6c <fsfull+0x3a4>
    3f34:	e3a00001 	mov	r0, #1
    3f38:	eb00049c 	bl	51b0 <printf>
    3f3c:	e1a00000 	nop			@ (mov r0, r0)
    3f40:	e24bd004 	sub	sp, fp, #4
    3f44:	e8bd8800 	pop	{fp, pc}
    3f48:	00006ff8 	.word	0x00006ff8
    3f4c:	10624dd3 	.word	0x10624dd3
    3f50:	51eb851f 	.word	0x51eb851f
    3f54:	66666667 	.word	0x66666667
    3f58:	00007008 	.word	0x00007008
    3f5c:	00000202 	.word	0x00000202
    3f60:	00007014 	.word	0x00007014
    3f64:	000070d4 	.word	0x000070d4
    3f68:	00007024 	.word	0x00007024
    3f6c:	00007034 	.word	0x00007034

00003f70 <rand>:
    3f70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    3f74:	e28db000 	add	fp, sp, #0
    3f78:	e59f3030 	ldr	r3, [pc, #48]	@ 3fb0 <rand+0x40>
    3f7c:	e5933000 	ldr	r3, [r3]
    3f80:	e59f202c 	ldr	r2, [pc, #44]	@ 3fb4 <rand+0x44>
    3f84:	e0020392 	mul	r2, r2, r3
    3f88:	e59f3028 	ldr	r3, [pc, #40]	@ 3fb8 <rand+0x48>
    3f8c:	e0823003 	add	r3, r2, r3
    3f90:	e59f2018 	ldr	r2, [pc, #24]	@ 3fb0 <rand+0x40>
    3f94:	e5823000 	str	r3, [r2]
    3f98:	e59f3010 	ldr	r3, [pc, #16]	@ 3fb0 <rand+0x40>
    3f9c:	e5933000 	ldr	r3, [r3]
    3fa0:	e1a00003 	mov	r0, r3
    3fa4:	e28bd000 	add	sp, fp, #0
    3fa8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    3fac:	e12fff1e 	bx	lr
    3fb0:	000070bc 	.word	0x000070bc
    3fb4:	0019660d 	.word	0x0019660d
    3fb8:	3c6ef35f 	.word	0x3c6ef35f

00003fbc <main>:
    3fbc:	e92d4800 	push	{fp, lr}
    3fc0:	e28db004 	add	fp, sp, #4
    3fc4:	e24dd008 	sub	sp, sp, #8
    3fc8:	e50b0008 	str	r0, [fp, #-8]
    3fcc:	e50b100c 	str	r1, [fp, #-12]
    3fd0:	e59f10bc 	ldr	r1, [pc, #188]	@ 4094 <main+0xd8>
    3fd4:	e3a00001 	mov	r0, #1
    3fd8:	eb000474 	bl	51b0 <printf>
    3fdc:	e3a01000 	mov	r1, #0
    3fe0:	e59f00b0 	ldr	r0, [pc, #176]	@ 4098 <main+0xdc>
    3fe4:	eb000317 	bl	4c48 <open>
    3fe8:	e1a03000 	mov	r3, r0
    3fec:	e3530000 	cmp	r3, #0
    3ff0:	ba000003 	blt	4004 <main+0x48>
    3ff4:	e59f10a0 	ldr	r1, [pc, #160]	@ 409c <main+0xe0>
    3ff8:	e3a00001 	mov	r0, #1
    3ffc:	eb00046b 	bl	51b0 <printf>
    4000:	eb0002c8 	bl	4b28 <exit>
    4004:	e3a01c02 	mov	r1, #512	@ 0x200
    4008:	e59f0088 	ldr	r0, [pc, #136]	@ 4098 <main+0xdc>
    400c:	eb00030d 	bl	4c48 <open>
    4010:	e1a03000 	mov	r3, r0
    4014:	e1a00003 	mov	r0, r3
    4018:	eb0002ef 	bl	4bdc <close>
    401c:	ebfffe94 	bl	3a74 <bigargtest>
    4020:	ebfffa0a 	bl	2850 <bigwrite>
    4024:	ebfffe92 	bl	3a74 <bigargtest>
    4028:	ebfffe65 	bl	39c4 <bsstest>
    402c:	ebfffcae 	bl	32ec <sbrktest>
    4030:	ebfffe24 	bl	38c8 <validatetest>
    4034:	ebffeff1 	bl	0 <opentest>
    4038:	ebfff023 	bl	cc <writetest>
    403c:	ebfff0b6 	bl	31c <writetest1>
    4040:	ebfff148 	bl	568 <createtest>
    4044:	ebfff30c 	bl	c7c <mem>
    4048:	ebfff1e9 	bl	7f4 <pipe1>
    404c:	ebfff2e0 	bl	bd4 <exitwait>
    4050:	ebfffb2d 	bl	2d0c <rmdot>
    4054:	ebfffad4 	bl	2bac <fourteen>
    4058:	ebfffa43 	bl	296c <bigfile>
    405c:	ebfff83d 	bl	2158 <subdir>
    4060:	ebfff64f 	bl	19a4 <concreate>
    4064:	ebfff767 	bl	1e08 <linkunlink>
    4068:	ebfff5c6 	bl	1788 <linktest>
    406c:	ebfff55b 	bl	15e0 <unlinkread>
    4070:	ebfff47b 	bl	1264 <createdelete>
    4074:	ebfff3d0 	bl	fbc <twofiles>
    4078:	ebfff33f 	bl	d7c <sharedfd>
    407c:	ebfffb84 	bl	2e94 <dirfile>
    4080:	ebfffc0c 	bl	30b8 <iref>
    4084:	ebfffc56 	bl	31e4 <forktest>
    4088:	ebfff7ba 	bl	1f78 <bigdir>
    408c:	ebfff1be 	bl	78c <exectest>
    4090:	eb0002a4 	bl	4b28 <exit>
    4094:	0000704c 	.word	0x0000704c
    4098:	00007060 	.word	0x00007060
    409c:	00007070 	.word	0x00007070

000040a0 <pg_pte>:
    40a0:	e92d4800 	push	{fp, lr}
    40a4:	e28db004 	add	fp, sp, #4
    40a8:	e24dd008 	sub	sp, sp, #8
    40ac:	e50b0008 	str	r0, [fp, #-8]
    40b0:	e51b1008 	ldr	r1, [fp, #-8]
    40b4:	e3a0001a 	mov	r0, #26
    40b8:	eb0003de 	bl	5038 <syscall>
    40bc:	e1a03000 	mov	r3, r0
    40c0:	e1a00003 	mov	r0, r3
    40c4:	e24bd004 	sub	sp, fp, #4
    40c8:	e8bd8800 	pop	{fp, pc}

000040cc <pg_pa>:
    40cc:	e92d4800 	push	{fp, lr}
    40d0:	e28db004 	add	fp, sp, #4
    40d4:	e24dd008 	sub	sp, sp, #8
    40d8:	e50b0008 	str	r0, [fp, #-8]
    40dc:	e51b1008 	ldr	r1, [fp, #-8]
    40e0:	e3a0001b 	mov	r0, #27
    40e4:	eb0003d3 	bl	5038 <syscall>
    40e8:	e1a03000 	mov	r3, r0
    40ec:	e1a00003 	mov	r0, r3
    40f0:	e24bd004 	sub	sp, fp, #4
    40f4:	e8bd8800 	pop	{fp, pc}

000040f8 <pg_flags>:
    40f8:	e92d4800 	push	{fp, lr}
    40fc:	e28db004 	add	fp, sp, #4
    4100:	e24dd008 	sub	sp, sp, #8
    4104:	e50b0008 	str	r0, [fp, #-8]
    4108:	e51b1008 	ldr	r1, [fp, #-8]
    410c:	e3a0001c 	mov	r0, #28
    4110:	eb0003c8 	bl	5038 <syscall>
    4114:	e1a03000 	mov	r3, r0
    4118:	e1a00003 	mov	r0, r3
    411c:	e24bd004 	sub	sp, fp, #4
    4120:	e8bd8800 	pop	{fp, pc}

00004124 <kpt>:
    4124:	e92d4800 	push	{fp, lr}
    4128:	e28db004 	add	fp, sp, #4
    412c:	e3a0001d 	mov	r0, #29
    4130:	eb0003c0 	bl	5038 <syscall>
    4134:	e1a03000 	mov	r3, r0
    4138:	e1a00003 	mov	r0, r3
    413c:	e8bd8800 	pop	{fp, pc}

00004140 <ugetpid>:
    4140:	e92d4800 	push	{fp, lr}
    4144:	e28db004 	add	fp, sp, #4
    4148:	e3a0001e 	mov	r0, #30
    414c:	eb0003b9 	bl	5038 <syscall>
    4150:	e1a03000 	mov	r3, r0
    4154:	e1a00003 	mov	r0, r3
    4158:	e8bd8800 	pop	{fp, pc}

0000415c <strcpy>:
    415c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4160:	e28db000 	add	fp, sp, #0
    4164:	e24dd014 	sub	sp, sp, #20
    4168:	e50b0010 	str	r0, [fp, #-16]
    416c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    4170:	e51b3010 	ldr	r3, [fp, #-16]
    4174:	e50b3008 	str	r3, [fp, #-8]
    4178:	e1a00000 	nop			@ (mov r0, r0)
    417c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    4180:	e2823001 	add	r3, r2, #1
    4184:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4188:	e51b3010 	ldr	r3, [fp, #-16]
    418c:	e2831001 	add	r1, r3, #1
    4190:	e50b1010 	str	r1, [fp, #-16]
    4194:	e5d22000 	ldrb	r2, [r2]
    4198:	e5c32000 	strb	r2, [r3]
    419c:	e5d33000 	ldrb	r3, [r3]
    41a0:	e3530000 	cmp	r3, #0
    41a4:	1afffff4 	bne	417c <strcpy+0x20>
    41a8:	e51b3008 	ldr	r3, [fp, #-8]
    41ac:	e1a00003 	mov	r0, r3
    41b0:	e28bd000 	add	sp, fp, #0
    41b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    41b8:	e12fff1e 	bx	lr

000041bc <strcmp>:
    41bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    41c0:	e28db000 	add	fp, sp, #0
    41c4:	e24dd00c 	sub	sp, sp, #12
    41c8:	e50b0008 	str	r0, [fp, #-8]
    41cc:	e50b100c 	str	r1, [fp, #-12]
    41d0:	ea000005 	b	41ec <strcmp+0x30>
    41d4:	e51b3008 	ldr	r3, [fp, #-8]
    41d8:	e2833001 	add	r3, r3, #1
    41dc:	e50b3008 	str	r3, [fp, #-8]
    41e0:	e51b300c 	ldr	r3, [fp, #-12]
    41e4:	e2833001 	add	r3, r3, #1
    41e8:	e50b300c 	str	r3, [fp, #-12]
    41ec:	e51b3008 	ldr	r3, [fp, #-8]
    41f0:	e5d33000 	ldrb	r3, [r3]
    41f4:	e3530000 	cmp	r3, #0
    41f8:	0a000005 	beq	4214 <strcmp+0x58>
    41fc:	e51b3008 	ldr	r3, [fp, #-8]
    4200:	e5d32000 	ldrb	r2, [r3]
    4204:	e51b300c 	ldr	r3, [fp, #-12]
    4208:	e5d33000 	ldrb	r3, [r3]
    420c:	e1520003 	cmp	r2, r3
    4210:	0affffef 	beq	41d4 <strcmp+0x18>
    4214:	e51b3008 	ldr	r3, [fp, #-8]
    4218:	e5d33000 	ldrb	r3, [r3]
    421c:	e1a02003 	mov	r2, r3
    4220:	e51b300c 	ldr	r3, [fp, #-12]
    4224:	e5d33000 	ldrb	r3, [r3]
    4228:	e0423003 	sub	r3, r2, r3
    422c:	e1a00003 	mov	r0, r3
    4230:	e28bd000 	add	sp, fp, #0
    4234:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4238:	e12fff1e 	bx	lr

0000423c <strlen>:
    423c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4240:	e28db000 	add	fp, sp, #0
    4244:	e24dd014 	sub	sp, sp, #20
    4248:	e50b0010 	str	r0, [fp, #-16]
    424c:	e3a03000 	mov	r3, #0
    4250:	e50b3008 	str	r3, [fp, #-8]
    4254:	ea000002 	b	4264 <strlen+0x28>
    4258:	e51b3008 	ldr	r3, [fp, #-8]
    425c:	e2833001 	add	r3, r3, #1
    4260:	e50b3008 	str	r3, [fp, #-8]
    4264:	e51b3008 	ldr	r3, [fp, #-8]
    4268:	e51b2010 	ldr	r2, [fp, #-16]
    426c:	e0823003 	add	r3, r2, r3
    4270:	e5d33000 	ldrb	r3, [r3]
    4274:	e3530000 	cmp	r3, #0
    4278:	1afffff6 	bne	4258 <strlen+0x1c>
    427c:	e51b3008 	ldr	r3, [fp, #-8]
    4280:	e1a00003 	mov	r0, r3
    4284:	e28bd000 	add	sp, fp, #0
    4288:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    428c:	e12fff1e 	bx	lr

00004290 <memset>:
    4290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4294:	e28db000 	add	fp, sp, #0
    4298:	e24dd024 	sub	sp, sp, #36	@ 0x24
    429c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    42a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    42a4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    42a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    42ac:	e50b3008 	str	r3, [fp, #-8]
    42b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    42b4:	e54b300d 	strb	r3, [fp, #-13]
    42b8:	e55b200d 	ldrb	r2, [fp, #-13]
    42bc:	e1a03002 	mov	r3, r2
    42c0:	e1a03403 	lsl	r3, r3, #8
    42c4:	e0833002 	add	r3, r3, r2
    42c8:	e1a03803 	lsl	r3, r3, #16
    42cc:	e1a02003 	mov	r2, r3
    42d0:	e55b300d 	ldrb	r3, [fp, #-13]
    42d4:	e1a03403 	lsl	r3, r3, #8
    42d8:	e1822003 	orr	r2, r2, r3
    42dc:	e55b300d 	ldrb	r3, [fp, #-13]
    42e0:	e1823003 	orr	r3, r2, r3
    42e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    42e8:	ea000008 	b	4310 <memset+0x80>
    42ec:	e51b3008 	ldr	r3, [fp, #-8]
    42f0:	e55b200d 	ldrb	r2, [fp, #-13]
    42f4:	e5c32000 	strb	r2, [r3]
    42f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    42fc:	e2433001 	sub	r3, r3, #1
    4300:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    4304:	e51b3008 	ldr	r3, [fp, #-8]
    4308:	e2833001 	add	r3, r3, #1
    430c:	e50b3008 	str	r3, [fp, #-8]
    4310:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4314:	e3530000 	cmp	r3, #0
    4318:	0a000003 	beq	432c <memset+0x9c>
    431c:	e51b3008 	ldr	r3, [fp, #-8]
    4320:	e2033003 	and	r3, r3, #3
    4324:	e3530000 	cmp	r3, #0
    4328:	1affffef 	bne	42ec <memset+0x5c>
    432c:	e51b3008 	ldr	r3, [fp, #-8]
    4330:	e50b300c 	str	r3, [fp, #-12]
    4334:	ea000008 	b	435c <memset+0xcc>
    4338:	e51b300c 	ldr	r3, [fp, #-12]
    433c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    4340:	e5832000 	str	r2, [r3]
    4344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4348:	e2433004 	sub	r3, r3, #4
    434c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    4350:	e51b300c 	ldr	r3, [fp, #-12]
    4354:	e2833004 	add	r3, r3, #4
    4358:	e50b300c 	str	r3, [fp, #-12]
    435c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4360:	e3530003 	cmp	r3, #3
    4364:	8afffff3 	bhi	4338 <memset+0xa8>
    4368:	e51b300c 	ldr	r3, [fp, #-12]
    436c:	e50b3008 	str	r3, [fp, #-8]
    4370:	ea000008 	b	4398 <memset+0x108>
    4374:	e51b3008 	ldr	r3, [fp, #-8]
    4378:	e55b200d 	ldrb	r2, [fp, #-13]
    437c:	e5c32000 	strb	r2, [r3]
    4380:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4384:	e2433001 	sub	r3, r3, #1
    4388:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    438c:	e51b3008 	ldr	r3, [fp, #-8]
    4390:	e2833001 	add	r3, r3, #1
    4394:	e50b3008 	str	r3, [fp, #-8]
    4398:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    439c:	e3530000 	cmp	r3, #0
    43a0:	1afffff3 	bne	4374 <memset+0xe4>
    43a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    43a8:	e1a00003 	mov	r0, r3
    43ac:	e28bd000 	add	sp, fp, #0
    43b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    43b4:	e12fff1e 	bx	lr

000043b8 <strchr>:
    43b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    43bc:	e28db000 	add	fp, sp, #0
    43c0:	e24dd00c 	sub	sp, sp, #12
    43c4:	e50b0008 	str	r0, [fp, #-8]
    43c8:	e1a03001 	mov	r3, r1
    43cc:	e54b3009 	strb	r3, [fp, #-9]
    43d0:	ea000009 	b	43fc <strchr+0x44>
    43d4:	e51b3008 	ldr	r3, [fp, #-8]
    43d8:	e5d33000 	ldrb	r3, [r3]
    43dc:	e55b2009 	ldrb	r2, [fp, #-9]
    43e0:	e1520003 	cmp	r2, r3
    43e4:	1a000001 	bne	43f0 <strchr+0x38>
    43e8:	e51b3008 	ldr	r3, [fp, #-8]
    43ec:	ea000007 	b	4410 <strchr+0x58>
    43f0:	e51b3008 	ldr	r3, [fp, #-8]
    43f4:	e2833001 	add	r3, r3, #1
    43f8:	e50b3008 	str	r3, [fp, #-8]
    43fc:	e51b3008 	ldr	r3, [fp, #-8]
    4400:	e5d33000 	ldrb	r3, [r3]
    4404:	e3530000 	cmp	r3, #0
    4408:	1afffff1 	bne	43d4 <strchr+0x1c>
    440c:	e3a03000 	mov	r3, #0
    4410:	e1a00003 	mov	r0, r3
    4414:	e28bd000 	add	sp, fp, #0
    4418:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    441c:	e12fff1e 	bx	lr

00004420 <gets>:
    4420:	e92d4800 	push	{fp, lr}
    4424:	e28db004 	add	fp, sp, #4
    4428:	e24dd018 	sub	sp, sp, #24
    442c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    4430:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    4434:	e3a03000 	mov	r3, #0
    4438:	e50b3008 	str	r3, [fp, #-8]
    443c:	ea000016 	b	449c <gets+0x7c>
    4440:	e24b300d 	sub	r3, fp, #13
    4444:	e3a02001 	mov	r2, #1
    4448:	e1a01003 	mov	r1, r3
    444c:	e3a00000 	mov	r0, #0
    4450:	eb0001cf 	bl	4b94 <read>
    4454:	e50b000c 	str	r0, [fp, #-12]
    4458:	e51b300c 	ldr	r3, [fp, #-12]
    445c:	e3530000 	cmp	r3, #0
    4460:	da000013 	ble	44b4 <gets+0x94>
    4464:	e51b3008 	ldr	r3, [fp, #-8]
    4468:	e2832001 	add	r2, r3, #1
    446c:	e50b2008 	str	r2, [fp, #-8]
    4470:	e1a02003 	mov	r2, r3
    4474:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4478:	e0833002 	add	r3, r3, r2
    447c:	e55b200d 	ldrb	r2, [fp, #-13]
    4480:	e5c32000 	strb	r2, [r3]
    4484:	e55b300d 	ldrb	r3, [fp, #-13]
    4488:	e353000a 	cmp	r3, #10
    448c:	0a000009 	beq	44b8 <gets+0x98>
    4490:	e55b300d 	ldrb	r3, [fp, #-13]
    4494:	e353000d 	cmp	r3, #13
    4498:	0a000006 	beq	44b8 <gets+0x98>
    449c:	e51b3008 	ldr	r3, [fp, #-8]
    44a0:	e2833001 	add	r3, r3, #1
    44a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    44a8:	e1520003 	cmp	r2, r3
    44ac:	caffffe3 	bgt	4440 <gets+0x20>
    44b0:	ea000000 	b	44b8 <gets+0x98>
    44b4:	e1a00000 	nop			@ (mov r0, r0)
    44b8:	e51b3008 	ldr	r3, [fp, #-8]
    44bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    44c0:	e0823003 	add	r3, r2, r3
    44c4:	e3a02000 	mov	r2, #0
    44c8:	e5c32000 	strb	r2, [r3]
    44cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    44d0:	e1a00003 	mov	r0, r3
    44d4:	e24bd004 	sub	sp, fp, #4
    44d8:	e8bd8800 	pop	{fp, pc}

000044dc <stat>:
    44dc:	e92d4800 	push	{fp, lr}
    44e0:	e28db004 	add	fp, sp, #4
    44e4:	e24dd010 	sub	sp, sp, #16
    44e8:	e50b0010 	str	r0, [fp, #-16]
    44ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    44f0:	e3a01000 	mov	r1, #0
    44f4:	e51b0010 	ldr	r0, [fp, #-16]
    44f8:	eb0001d2 	bl	4c48 <open>
    44fc:	e50b0008 	str	r0, [fp, #-8]
    4500:	e51b3008 	ldr	r3, [fp, #-8]
    4504:	e3530000 	cmp	r3, #0
    4508:	aa000001 	bge	4514 <stat+0x38>
    450c:	e3e03000 	mvn	r3, #0
    4510:	ea000006 	b	4530 <stat+0x54>
    4514:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    4518:	e51b0008 	ldr	r0, [fp, #-8]
    451c:	eb0001e4 	bl	4cb4 <fstat>
    4520:	e50b000c 	str	r0, [fp, #-12]
    4524:	e51b0008 	ldr	r0, [fp, #-8]
    4528:	eb0001ab 	bl	4bdc <close>
    452c:	e51b300c 	ldr	r3, [fp, #-12]
    4530:	e1a00003 	mov	r0, r3
    4534:	e24bd004 	sub	sp, fp, #4
    4538:	e8bd8800 	pop	{fp, pc}

0000453c <atoi>:
    453c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4540:	e28db000 	add	fp, sp, #0
    4544:	e24dd014 	sub	sp, sp, #20
    4548:	e50b0010 	str	r0, [fp, #-16]
    454c:	e3a03000 	mov	r3, #0
    4550:	e50b3008 	str	r3, [fp, #-8]
    4554:	ea00000c 	b	458c <atoi+0x50>
    4558:	e51b2008 	ldr	r2, [fp, #-8]
    455c:	e1a03002 	mov	r3, r2
    4560:	e1a03103 	lsl	r3, r3, #2
    4564:	e0833002 	add	r3, r3, r2
    4568:	e1a03083 	lsl	r3, r3, #1
    456c:	e1a01003 	mov	r1, r3
    4570:	e51b3010 	ldr	r3, [fp, #-16]
    4574:	e2832001 	add	r2, r3, #1
    4578:	e50b2010 	str	r2, [fp, #-16]
    457c:	e5d33000 	ldrb	r3, [r3]
    4580:	e0813003 	add	r3, r1, r3
    4584:	e2433030 	sub	r3, r3, #48	@ 0x30
    4588:	e50b3008 	str	r3, [fp, #-8]
    458c:	e51b3010 	ldr	r3, [fp, #-16]
    4590:	e5d33000 	ldrb	r3, [r3]
    4594:	e353002f 	cmp	r3, #47	@ 0x2f
    4598:	9a000003 	bls	45ac <atoi+0x70>
    459c:	e51b3010 	ldr	r3, [fp, #-16]
    45a0:	e5d33000 	ldrb	r3, [r3]
    45a4:	e3530039 	cmp	r3, #57	@ 0x39
    45a8:	9affffea 	bls	4558 <atoi+0x1c>
    45ac:	e51b3008 	ldr	r3, [fp, #-8]
    45b0:	e1a00003 	mov	r0, r3
    45b4:	e28bd000 	add	sp, fp, #0
    45b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    45bc:	e12fff1e 	bx	lr

000045c0 <memmove>:
    45c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    45c4:	e28db000 	add	fp, sp, #0
    45c8:	e24dd01c 	sub	sp, sp, #28
    45cc:	e50b0010 	str	r0, [fp, #-16]
    45d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    45d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    45d8:	e51b3010 	ldr	r3, [fp, #-16]
    45dc:	e50b3008 	str	r3, [fp, #-8]
    45e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    45e4:	e50b300c 	str	r3, [fp, #-12]
    45e8:	ea000007 	b	460c <memmove+0x4c>
    45ec:	e51b200c 	ldr	r2, [fp, #-12]
    45f0:	e2823001 	add	r3, r2, #1
    45f4:	e50b300c 	str	r3, [fp, #-12]
    45f8:	e51b3008 	ldr	r3, [fp, #-8]
    45fc:	e2831001 	add	r1, r3, #1
    4600:	e50b1008 	str	r1, [fp, #-8]
    4604:	e5d22000 	ldrb	r2, [r2]
    4608:	e5c32000 	strb	r2, [r3]
    460c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4610:	e2432001 	sub	r2, r3, #1
    4614:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    4618:	e3530000 	cmp	r3, #0
    461c:	cafffff2 	bgt	45ec <memmove+0x2c>
    4620:	e51b3010 	ldr	r3, [fp, #-16]
    4624:	e1a00003 	mov	r0, r3
    4628:	e28bd000 	add	sp, fp, #0
    462c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4630:	e12fff1e 	bx	lr

00004634 <strncmp>:
    4634:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4638:	e28db000 	add	fp, sp, #0
    463c:	e24dd014 	sub	sp, sp, #20
    4640:	e50b0008 	str	r0, [fp, #-8]
    4644:	e50b100c 	str	r1, [fp, #-12]
    4648:	e50b2010 	str	r2, [fp, #-16]
    464c:	ea000008 	b	4674 <strncmp+0x40>
    4650:	e51b3008 	ldr	r3, [fp, #-8]
    4654:	e2833001 	add	r3, r3, #1
    4658:	e50b3008 	str	r3, [fp, #-8]
    465c:	e51b300c 	ldr	r3, [fp, #-12]
    4660:	e2833001 	add	r3, r3, #1
    4664:	e50b300c 	str	r3, [fp, #-12]
    4668:	e51b3010 	ldr	r3, [fp, #-16]
    466c:	e2433001 	sub	r3, r3, #1
    4670:	e50b3010 	str	r3, [fp, #-16]
    4674:	e51b3010 	ldr	r3, [fp, #-16]
    4678:	e3530000 	cmp	r3, #0
    467c:	da00000d 	ble	46b8 <strncmp+0x84>
    4680:	e51b3008 	ldr	r3, [fp, #-8]
    4684:	e5d33000 	ldrb	r3, [r3]
    4688:	e3530000 	cmp	r3, #0
    468c:	0a000009 	beq	46b8 <strncmp+0x84>
    4690:	e51b300c 	ldr	r3, [fp, #-12]
    4694:	e5d33000 	ldrb	r3, [r3]
    4698:	e3530000 	cmp	r3, #0
    469c:	0a000005 	beq	46b8 <strncmp+0x84>
    46a0:	e51b3008 	ldr	r3, [fp, #-8]
    46a4:	e5d32000 	ldrb	r2, [r3]
    46a8:	e51b300c 	ldr	r3, [fp, #-12]
    46ac:	e5d33000 	ldrb	r3, [r3]
    46b0:	e1520003 	cmp	r2, r3
    46b4:	0affffe5 	beq	4650 <strncmp+0x1c>
    46b8:	e51b3010 	ldr	r3, [fp, #-16]
    46bc:	e3530000 	cmp	r3, #0
    46c0:	1a000001 	bne	46cc <strncmp+0x98>
    46c4:	e3a03000 	mov	r3, #0
    46c8:	ea000005 	b	46e4 <strncmp+0xb0>
    46cc:	e51b3008 	ldr	r3, [fp, #-8]
    46d0:	e5d33000 	ldrb	r3, [r3]
    46d4:	e1a02003 	mov	r2, r3
    46d8:	e51b300c 	ldr	r3, [fp, #-12]
    46dc:	e5d33000 	ldrb	r3, [r3]
    46e0:	e0423003 	sub	r3, r2, r3
    46e4:	e1a00003 	mov	r0, r3
    46e8:	e28bd000 	add	sp, fp, #0
    46ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    46f0:	e12fff1e 	bx	lr

000046f4 <strncpy>:
    46f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    46f8:	e28db000 	add	fp, sp, #0
    46fc:	e24dd01c 	sub	sp, sp, #28
    4700:	e50b0010 	str	r0, [fp, #-16]
    4704:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    4708:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    470c:	e51b3010 	ldr	r3, [fp, #-16]
    4710:	e50b3008 	str	r3, [fp, #-8]
    4714:	ea00000a 	b	4744 <strncpy+0x50>
    4718:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    471c:	e2823001 	add	r3, r2, #1
    4720:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4724:	e51b3008 	ldr	r3, [fp, #-8]
    4728:	e2831001 	add	r1, r3, #1
    472c:	e50b1008 	str	r1, [fp, #-8]
    4730:	e5d22000 	ldrb	r2, [r2]
    4734:	e5c32000 	strb	r2, [r3]
    4738:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    473c:	e2433001 	sub	r3, r3, #1
    4740:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4744:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4748:	e3530000 	cmp	r3, #0
    474c:	da00000c 	ble	4784 <strncpy+0x90>
    4750:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    4754:	e5d33000 	ldrb	r3, [r3]
    4758:	e3530000 	cmp	r3, #0
    475c:	1affffed 	bne	4718 <strncpy+0x24>
    4760:	ea000007 	b	4784 <strncpy+0x90>
    4764:	e51b3008 	ldr	r3, [fp, #-8]
    4768:	e2832001 	add	r2, r3, #1
    476c:	e50b2008 	str	r2, [fp, #-8]
    4770:	e3a02000 	mov	r2, #0
    4774:	e5c32000 	strb	r2, [r3]
    4778:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    477c:	e2433001 	sub	r3, r3, #1
    4780:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4784:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4788:	e3530000 	cmp	r3, #0
    478c:	cafffff4 	bgt	4764 <strncpy+0x70>
    4790:	e51b3010 	ldr	r3, [fp, #-16]
    4794:	e1a00003 	mov	r0, r3
    4798:	e28bd000 	add	sp, fp, #0
    479c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    47a0:	e12fff1e 	bx	lr

000047a4 <xchg>:
    47a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    47a8:	e28db000 	add	fp, sp, #0
    47ac:	e24dd014 	sub	sp, sp, #20
    47b0:	e50b0010 	str	r0, [fp, #-16]
    47b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    47b8:	e51b2010 	ldr	r2, [fp, #-16]
    47bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    47c0:	e1023091 	swp	r3, r1, [r2]
    47c4:	e50b3008 	str	r3, [fp, #-8]
    47c8:	e51b3008 	ldr	r3, [fp, #-8]
    47cc:	e1a00003 	mov	r0, r3
    47d0:	e28bd000 	add	sp, fp, #0
    47d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    47d8:	e12fff1e 	bx	lr

000047dc <initiateLock>:
    47dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    47e0:	e28db000 	add	fp, sp, #0
    47e4:	e24dd00c 	sub	sp, sp, #12
    47e8:	e50b0008 	str	r0, [fp, #-8]
    47ec:	e51b3008 	ldr	r3, [fp, #-8]
    47f0:	e3a02000 	mov	r2, #0
    47f4:	e5832000 	str	r2, [r3]
    47f8:	e51b3008 	ldr	r3, [fp, #-8]
    47fc:	e3a02001 	mov	r2, #1
    4800:	e5832004 	str	r2, [r3, #4]
    4804:	e1a00000 	nop			@ (mov r0, r0)
    4808:	e28bd000 	add	sp, fp, #0
    480c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4810:	e12fff1e 	bx	lr

00004814 <acquireLock>:
    4814:	e92d4800 	push	{fp, lr}
    4818:	e28db004 	add	fp, sp, #4
    481c:	e24dd008 	sub	sp, sp, #8
    4820:	e50b0008 	str	r0, [fp, #-8]
    4824:	e51b3008 	ldr	r3, [fp, #-8]
    4828:	e5933004 	ldr	r3, [r3, #4]
    482c:	e3530000 	cmp	r3, #0
    4830:	0a000008 	beq	4858 <acquireLock+0x44>
    4834:	e1a00000 	nop			@ (mov r0, r0)
    4838:	e51b3008 	ldr	r3, [fp, #-8]
    483c:	e3a01001 	mov	r1, #1
    4840:	e1a00003 	mov	r0, r3
    4844:	ebffffd6 	bl	47a4 <xchg>
    4848:	e1a03000 	mov	r3, r0
    484c:	e3530000 	cmp	r3, #0
    4850:	1afffff8 	bne	4838 <acquireLock+0x24>
    4854:	ea000000 	b	485c <acquireLock+0x48>
    4858:	e1a00000 	nop			@ (mov r0, r0)
    485c:	e24bd004 	sub	sp, fp, #4
    4860:	e8bd8800 	pop	{fp, pc}

00004864 <releaseLock>:
    4864:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4868:	e28db000 	add	fp, sp, #0
    486c:	e24dd00c 	sub	sp, sp, #12
    4870:	e50b0008 	str	r0, [fp, #-8]
    4874:	e51b3008 	ldr	r3, [fp, #-8]
    4878:	e5933004 	ldr	r3, [r3, #4]
    487c:	e3530000 	cmp	r3, #0
    4880:	0a000006 	beq	48a0 <releaseLock+0x3c>
    4884:	e51b3008 	ldr	r3, [fp, #-8]
    4888:	e5933000 	ldr	r3, [r3]
    488c:	e3530001 	cmp	r3, #1
    4890:	1a000002 	bne	48a0 <releaseLock+0x3c>
    4894:	e51b3008 	ldr	r3, [fp, #-8]
    4898:	e3a02000 	mov	r2, #0
    489c:	e5832000 	str	r2, [r3]
    48a0:	e1a00000 	nop			@ (mov r0, r0)
    48a4:	e28bd000 	add	sp, fp, #0
    48a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    48ac:	e12fff1e 	bx	lr

000048b0 <initiateCondVar>:
    48b0:	e92d4800 	push	{fp, lr}
    48b4:	e28db004 	add	fp, sp, #4
    48b8:	e24dd008 	sub	sp, sp, #8
    48bc:	e50b0008 	str	r0, [fp, #-8]
    48c0:	eb0001b8 	bl	4fa8 <getChannel>
    48c4:	e1a02000 	mov	r2, r0
    48c8:	e51b3008 	ldr	r3, [fp, #-8]
    48cc:	e5832000 	str	r2, [r3]
    48d0:	e51b3008 	ldr	r3, [fp, #-8]
    48d4:	e3a02001 	mov	r2, #1
    48d8:	e5832004 	str	r2, [r3, #4]
    48dc:	e1a00000 	nop			@ (mov r0, r0)
    48e0:	e24bd004 	sub	sp, fp, #4
    48e4:	e8bd8800 	pop	{fp, pc}

000048e8 <condWait>:
    48e8:	e92d4800 	push	{fp, lr}
    48ec:	e28db004 	add	fp, sp, #4
    48f0:	e24dd008 	sub	sp, sp, #8
    48f4:	e50b0008 	str	r0, [fp, #-8]
    48f8:	e50b100c 	str	r1, [fp, #-12]
    48fc:	e51b3008 	ldr	r3, [fp, #-8]
    4900:	e5933004 	ldr	r3, [r3, #4]
    4904:	e3530000 	cmp	r3, #0
    4908:	0a00000c 	beq	4940 <condWait+0x58>
    490c:	e51b300c 	ldr	r3, [fp, #-12]
    4910:	e5933004 	ldr	r3, [r3, #4]
    4914:	e3530000 	cmp	r3, #0
    4918:	0a000008 	beq	4940 <condWait+0x58>
    491c:	e51b000c 	ldr	r0, [fp, #-12]
    4920:	ebffffcf 	bl	4864 <releaseLock>
    4924:	e51b3008 	ldr	r3, [fp, #-8]
    4928:	e5933000 	ldr	r3, [r3]
    492c:	e1a00003 	mov	r0, r3
    4930:	eb000193 	bl	4f84 <sleepChan>
    4934:	e51b000c 	ldr	r0, [fp, #-12]
    4938:	ebffffb5 	bl	4814 <acquireLock>
    493c:	ea000000 	b	4944 <condWait+0x5c>
    4940:	e1a00000 	nop			@ (mov r0, r0)
    4944:	e24bd004 	sub	sp, fp, #4
    4948:	e8bd8800 	pop	{fp, pc}

0000494c <broadcast>:
    494c:	e92d4800 	push	{fp, lr}
    4950:	e28db004 	add	fp, sp, #4
    4954:	e24dd008 	sub	sp, sp, #8
    4958:	e50b0008 	str	r0, [fp, #-8]
    495c:	e51b3008 	ldr	r3, [fp, #-8]
    4960:	e5933004 	ldr	r3, [r3, #4]
    4964:	e3530000 	cmp	r3, #0
    4968:	0a000004 	beq	4980 <broadcast+0x34>
    496c:	e51b3008 	ldr	r3, [fp, #-8]
    4970:	e5933000 	ldr	r3, [r3]
    4974:	e1a00003 	mov	r0, r3
    4978:	eb000193 	bl	4fcc <sigChan>
    497c:	ea000000 	b	4984 <broadcast+0x38>
    4980:	e1a00000 	nop			@ (mov r0, r0)
    4984:	e24bd004 	sub	sp, fp, #4
    4988:	e8bd8800 	pop	{fp, pc}

0000498c <signal>:
    498c:	e92d4800 	push	{fp, lr}
    4990:	e28db004 	add	fp, sp, #4
    4994:	e24dd008 	sub	sp, sp, #8
    4998:	e50b0008 	str	r0, [fp, #-8]
    499c:	e51b3008 	ldr	r3, [fp, #-8]
    49a0:	e5933004 	ldr	r3, [r3, #4]
    49a4:	e3530000 	cmp	r3, #0
    49a8:	0a000004 	beq	49c0 <signal+0x34>
    49ac:	e51b3008 	ldr	r3, [fp, #-8]
    49b0:	e5933000 	ldr	r3, [r3]
    49b4:	e1a00003 	mov	r0, r3
    49b8:	eb00018c 	bl	4ff0 <sigOneChan>
    49bc:	ea000000 	b	49c4 <signal+0x38>
    49c0:	e1a00000 	nop			@ (mov r0, r0)
    49c4:	e24bd004 	sub	sp, fp, #4
    49c8:	e8bd8800 	pop	{fp, pc}

000049cc <semInit>:
    49cc:	e92d4800 	push	{fp, lr}
    49d0:	e28db004 	add	fp, sp, #4
    49d4:	e24dd008 	sub	sp, sp, #8
    49d8:	e50b0008 	str	r0, [fp, #-8]
    49dc:	e50b100c 	str	r1, [fp, #-12]
    49e0:	e51b3008 	ldr	r3, [fp, #-8]
    49e4:	e2833004 	add	r3, r3, #4
    49e8:	e1a00003 	mov	r0, r3
    49ec:	ebffff7a 	bl	47dc <initiateLock>
    49f0:	e51b3008 	ldr	r3, [fp, #-8]
    49f4:	e283300c 	add	r3, r3, #12
    49f8:	e1a00003 	mov	r0, r3
    49fc:	ebffffab 	bl	48b0 <initiateCondVar>
    4a00:	e51b3008 	ldr	r3, [fp, #-8]
    4a04:	e51b200c 	ldr	r2, [fp, #-12]
    4a08:	e5832000 	str	r2, [r3]
    4a0c:	e51b3008 	ldr	r3, [fp, #-8]
    4a10:	e3a02001 	mov	r2, #1
    4a14:	e5832014 	str	r2, [r3, #20]
    4a18:	e1a00000 	nop			@ (mov r0, r0)
    4a1c:	e24bd004 	sub	sp, fp, #4
    4a20:	e8bd8800 	pop	{fp, pc}

00004a24 <semUp>:
    4a24:	e92d4800 	push	{fp, lr}
    4a28:	e28db004 	add	fp, sp, #4
    4a2c:	e24dd008 	sub	sp, sp, #8
    4a30:	e50b0008 	str	r0, [fp, #-8]
    4a34:	e51b3008 	ldr	r3, [fp, #-8]
    4a38:	e2833004 	add	r3, r3, #4
    4a3c:	e1a00003 	mov	r0, r3
    4a40:	ebffff73 	bl	4814 <acquireLock>
    4a44:	e51b3008 	ldr	r3, [fp, #-8]
    4a48:	e5933000 	ldr	r3, [r3]
    4a4c:	e2832001 	add	r2, r3, #1
    4a50:	e51b3008 	ldr	r3, [fp, #-8]
    4a54:	e5832000 	str	r2, [r3]
    4a58:	e51b3008 	ldr	r3, [fp, #-8]
    4a5c:	e283300c 	add	r3, r3, #12
    4a60:	e1a00003 	mov	r0, r3
    4a64:	ebffffc8 	bl	498c <signal>
    4a68:	e51b3008 	ldr	r3, [fp, #-8]
    4a6c:	e2833004 	add	r3, r3, #4
    4a70:	e1a00003 	mov	r0, r3
    4a74:	ebffff7a 	bl	4864 <releaseLock>
    4a78:	e1a00000 	nop			@ (mov r0, r0)
    4a7c:	e24bd004 	sub	sp, fp, #4
    4a80:	e8bd8800 	pop	{fp, pc}

00004a84 <semDown>:
    4a84:	e92d4800 	push	{fp, lr}
    4a88:	e28db004 	add	fp, sp, #4
    4a8c:	e24dd008 	sub	sp, sp, #8
    4a90:	e50b0008 	str	r0, [fp, #-8]
    4a94:	e51b3008 	ldr	r3, [fp, #-8]
    4a98:	e2833004 	add	r3, r3, #4
    4a9c:	e1a00003 	mov	r0, r3
    4aa0:	ebffff5b 	bl	4814 <acquireLock>
    4aa4:	e51b3008 	ldr	r3, [fp, #-8]
    4aa8:	e5933000 	ldr	r3, [r3]
    4aac:	e2432001 	sub	r2, r3, #1
    4ab0:	e51b3008 	ldr	r3, [fp, #-8]
    4ab4:	e5832000 	str	r2, [r3]
    4ab8:	ea000006 	b	4ad8 <semDown+0x54>
    4abc:	e51b3008 	ldr	r3, [fp, #-8]
    4ac0:	e283200c 	add	r2, r3, #12
    4ac4:	e51b3008 	ldr	r3, [fp, #-8]
    4ac8:	e2833004 	add	r3, r3, #4
    4acc:	e1a01003 	mov	r1, r3
    4ad0:	e1a00002 	mov	r0, r2
    4ad4:	ebffff83 	bl	48e8 <condWait>
    4ad8:	e51b3008 	ldr	r3, [fp, #-8]
    4adc:	e5933000 	ldr	r3, [r3]
    4ae0:	e3530000 	cmp	r3, #0
    4ae4:	bafffff4 	blt	4abc <semDown+0x38>
    4ae8:	e51b3008 	ldr	r3, [fp, #-8]
    4aec:	e2833004 	add	r3, r3, #4
    4af0:	e1a00003 	mov	r0, r3
    4af4:	ebffff5a 	bl	4864 <releaseLock>
    4af8:	e1a00000 	nop			@ (mov r0, r0)
    4afc:	e24bd004 	sub	sp, fp, #4
    4b00:	e8bd8800 	pop	{fp, pc}

00004b04 <fork>:
    4b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4b08:	e1a04003 	mov	r4, r3
    4b0c:	e1a03002 	mov	r3, r2
    4b10:	e1a02001 	mov	r2, r1
    4b14:	e1a01000 	mov	r1, r0
    4b18:	e3a00001 	mov	r0, #1
    4b1c:	ef000000 	svc	0x00000000
    4b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4b24:	e12fff1e 	bx	lr

00004b28 <exit>:
    4b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4b2c:	e1a04003 	mov	r4, r3
    4b30:	e1a03002 	mov	r3, r2
    4b34:	e1a02001 	mov	r2, r1
    4b38:	e1a01000 	mov	r1, r0
    4b3c:	e3a00002 	mov	r0, #2
    4b40:	ef000000 	svc	0x00000000
    4b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4b48:	e12fff1e 	bx	lr

00004b4c <wait>:
    4b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4b50:	e1a04003 	mov	r4, r3
    4b54:	e1a03002 	mov	r3, r2
    4b58:	e1a02001 	mov	r2, r1
    4b5c:	e1a01000 	mov	r1, r0
    4b60:	e3a00003 	mov	r0, #3
    4b64:	ef000000 	svc	0x00000000
    4b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4b6c:	e12fff1e 	bx	lr

00004b70 <pipe>:
    4b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4b74:	e1a04003 	mov	r4, r3
    4b78:	e1a03002 	mov	r3, r2
    4b7c:	e1a02001 	mov	r2, r1
    4b80:	e1a01000 	mov	r1, r0
    4b84:	e3a00004 	mov	r0, #4
    4b88:	ef000000 	svc	0x00000000
    4b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4b90:	e12fff1e 	bx	lr

00004b94 <read>:
    4b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4b98:	e1a04003 	mov	r4, r3
    4b9c:	e1a03002 	mov	r3, r2
    4ba0:	e1a02001 	mov	r2, r1
    4ba4:	e1a01000 	mov	r1, r0
    4ba8:	e3a00005 	mov	r0, #5
    4bac:	ef000000 	svc	0x00000000
    4bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4bb4:	e12fff1e 	bx	lr

00004bb8 <write>:
    4bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4bbc:	e1a04003 	mov	r4, r3
    4bc0:	e1a03002 	mov	r3, r2
    4bc4:	e1a02001 	mov	r2, r1
    4bc8:	e1a01000 	mov	r1, r0
    4bcc:	e3a00010 	mov	r0, #16
    4bd0:	ef000000 	svc	0x00000000
    4bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4bd8:	e12fff1e 	bx	lr

00004bdc <close>:
    4bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4be0:	e1a04003 	mov	r4, r3
    4be4:	e1a03002 	mov	r3, r2
    4be8:	e1a02001 	mov	r2, r1
    4bec:	e1a01000 	mov	r1, r0
    4bf0:	e3a00015 	mov	r0, #21
    4bf4:	ef000000 	svc	0x00000000
    4bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4bfc:	e12fff1e 	bx	lr

00004c00 <kill>:
    4c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4c04:	e1a04003 	mov	r4, r3
    4c08:	e1a03002 	mov	r3, r2
    4c0c:	e1a02001 	mov	r2, r1
    4c10:	e1a01000 	mov	r1, r0
    4c14:	e3a00006 	mov	r0, #6
    4c18:	ef000000 	svc	0x00000000
    4c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4c20:	e12fff1e 	bx	lr

00004c24 <exec>:
    4c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4c28:	e1a04003 	mov	r4, r3
    4c2c:	e1a03002 	mov	r3, r2
    4c30:	e1a02001 	mov	r2, r1
    4c34:	e1a01000 	mov	r1, r0
    4c38:	e3a00007 	mov	r0, #7
    4c3c:	ef000000 	svc	0x00000000
    4c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4c44:	e12fff1e 	bx	lr

00004c48 <open>:
    4c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4c4c:	e1a04003 	mov	r4, r3
    4c50:	e1a03002 	mov	r3, r2
    4c54:	e1a02001 	mov	r2, r1
    4c58:	e1a01000 	mov	r1, r0
    4c5c:	e3a0000f 	mov	r0, #15
    4c60:	ef000000 	svc	0x00000000
    4c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4c68:	e12fff1e 	bx	lr

00004c6c <mknod>:
    4c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4c70:	e1a04003 	mov	r4, r3
    4c74:	e1a03002 	mov	r3, r2
    4c78:	e1a02001 	mov	r2, r1
    4c7c:	e1a01000 	mov	r1, r0
    4c80:	e3a00011 	mov	r0, #17
    4c84:	ef000000 	svc	0x00000000
    4c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4c8c:	e12fff1e 	bx	lr

00004c90 <unlink>:
    4c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4c94:	e1a04003 	mov	r4, r3
    4c98:	e1a03002 	mov	r3, r2
    4c9c:	e1a02001 	mov	r2, r1
    4ca0:	e1a01000 	mov	r1, r0
    4ca4:	e3a00012 	mov	r0, #18
    4ca8:	ef000000 	svc	0x00000000
    4cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4cb0:	e12fff1e 	bx	lr

00004cb4 <fstat>:
    4cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4cb8:	e1a04003 	mov	r4, r3
    4cbc:	e1a03002 	mov	r3, r2
    4cc0:	e1a02001 	mov	r2, r1
    4cc4:	e1a01000 	mov	r1, r0
    4cc8:	e3a00008 	mov	r0, #8
    4ccc:	ef000000 	svc	0x00000000
    4cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4cd4:	e12fff1e 	bx	lr

00004cd8 <link>:
    4cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4cdc:	e1a04003 	mov	r4, r3
    4ce0:	e1a03002 	mov	r3, r2
    4ce4:	e1a02001 	mov	r2, r1
    4ce8:	e1a01000 	mov	r1, r0
    4cec:	e3a00013 	mov	r0, #19
    4cf0:	ef000000 	svc	0x00000000
    4cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4cf8:	e12fff1e 	bx	lr

00004cfc <mkdir>:
    4cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4d00:	e1a04003 	mov	r4, r3
    4d04:	e1a03002 	mov	r3, r2
    4d08:	e1a02001 	mov	r2, r1
    4d0c:	e1a01000 	mov	r1, r0
    4d10:	e3a00014 	mov	r0, #20
    4d14:	ef000000 	svc	0x00000000
    4d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4d1c:	e12fff1e 	bx	lr

00004d20 <chdir>:
    4d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4d24:	e1a04003 	mov	r4, r3
    4d28:	e1a03002 	mov	r3, r2
    4d2c:	e1a02001 	mov	r2, r1
    4d30:	e1a01000 	mov	r1, r0
    4d34:	e3a00009 	mov	r0, #9
    4d38:	ef000000 	svc	0x00000000
    4d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4d40:	e12fff1e 	bx	lr

00004d44 <dup>:
    4d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4d48:	e1a04003 	mov	r4, r3
    4d4c:	e1a03002 	mov	r3, r2
    4d50:	e1a02001 	mov	r2, r1
    4d54:	e1a01000 	mov	r1, r0
    4d58:	e3a0000a 	mov	r0, #10
    4d5c:	ef000000 	svc	0x00000000
    4d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4d64:	e12fff1e 	bx	lr

00004d68 <getpid>:
    4d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4d6c:	e1a04003 	mov	r4, r3
    4d70:	e1a03002 	mov	r3, r2
    4d74:	e1a02001 	mov	r2, r1
    4d78:	e1a01000 	mov	r1, r0
    4d7c:	e3a0000b 	mov	r0, #11
    4d80:	ef000000 	svc	0x00000000
    4d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4d88:	e12fff1e 	bx	lr

00004d8c <sbrk>:
    4d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4d90:	e1a04003 	mov	r4, r3
    4d94:	e1a03002 	mov	r3, r2
    4d98:	e1a02001 	mov	r2, r1
    4d9c:	e1a01000 	mov	r1, r0
    4da0:	e3a0000c 	mov	r0, #12
    4da4:	ef000000 	svc	0x00000000
    4da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4dac:	e12fff1e 	bx	lr

00004db0 <sleep>:
    4db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4db4:	e1a04003 	mov	r4, r3
    4db8:	e1a03002 	mov	r3, r2
    4dbc:	e1a02001 	mov	r2, r1
    4dc0:	e1a01000 	mov	r1, r0
    4dc4:	e3a0000d 	mov	r0, #13
    4dc8:	ef000000 	svc	0x00000000
    4dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4dd0:	e12fff1e 	bx	lr

00004dd4 <uptime>:
    4dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4dd8:	e1a04003 	mov	r4, r3
    4ddc:	e1a03002 	mov	r3, r2
    4de0:	e1a02001 	mov	r2, r1
    4de4:	e1a01000 	mov	r1, r0
    4de8:	e3a0000e 	mov	r0, #14
    4dec:	ef000000 	svc	0x00000000
    4df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4df4:	e12fff1e 	bx	lr

00004df8 <proclist>:
    4df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4dfc:	e1a04003 	mov	r4, r3
    4e00:	e1a03002 	mov	r3, r2
    4e04:	e1a02001 	mov	r2, r1
    4e08:	e1a01000 	mov	r1, r0
    4e0c:	e3a00016 	mov	r0, #22
    4e10:	ef000000 	svc	0x00000000
    4e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4e18:	e12fff1e 	bx	lr

00004e1c <settickets>:
    4e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4e20:	e1a04003 	mov	r4, r3
    4e24:	e1a03002 	mov	r3, r2
    4e28:	e1a02001 	mov	r2, r1
    4e2c:	e1a01000 	mov	r1, r0
    4e30:	e3a00017 	mov	r0, #23
    4e34:	ef000000 	svc	0x00000000
    4e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4e3c:	e12fff1e 	bx	lr

00004e40 <srand>:
    4e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4e44:	e1a04003 	mov	r4, r3
    4e48:	e1a03002 	mov	r3, r2
    4e4c:	e1a02001 	mov	r2, r1
    4e50:	e1a01000 	mov	r1, r0
    4e54:	e3a00018 	mov	r0, #24
    4e58:	ef000000 	svc	0x00000000
    4e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4e60:	e12fff1e 	bx	lr

00004e64 <getpinfo>:
    4e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4e68:	e1a04003 	mov	r4, r3
    4e6c:	e1a03002 	mov	r3, r2
    4e70:	e1a02001 	mov	r2, r1
    4e74:	e1a01000 	mov	r1, r0
    4e78:	e3a00019 	mov	r0, #25
    4e7c:	ef000000 	svc	0x00000000
    4e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4e84:	e12fff1e 	bx	lr

00004e88 <print_pt>:
    4e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4e8c:	e1a04003 	mov	r4, r3
    4e90:	e1a03002 	mov	r3, r2
    4e94:	e1a02001 	mov	r2, r1
    4e98:	e1a01000 	mov	r1, r0
    4e9c:	e3a0001f 	mov	r0, #31
    4ea0:	ef000000 	svc	0x00000000
    4ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4ea8:	e12fff1e 	bx	lr

00004eac <thread_create>:
    4eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4eb0:	e1a04003 	mov	r4, r3
    4eb4:	e1a03002 	mov	r3, r2
    4eb8:	e1a02001 	mov	r2, r1
    4ebc:	e1a01000 	mov	r1, r0
    4ec0:	e3a00020 	mov	r0, #32
    4ec4:	ef000000 	svc	0x00000000
    4ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4ecc:	e12fff1e 	bx	lr

00004ed0 <thread_exit>:
    4ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4ed4:	e1a04003 	mov	r4, r3
    4ed8:	e1a03002 	mov	r3, r2
    4edc:	e1a02001 	mov	r2, r1
    4ee0:	e1a01000 	mov	r1, r0
    4ee4:	e3a00021 	mov	r0, #33	@ 0x21
    4ee8:	ef000000 	svc	0x00000000
    4eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4ef0:	e12fff1e 	bx	lr

00004ef4 <thread_join>:
    4ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4ef8:	e1a04003 	mov	r4, r3
    4efc:	e1a03002 	mov	r3, r2
    4f00:	e1a02001 	mov	r2, r1
    4f04:	e1a01000 	mov	r1, r0
    4f08:	e3a00022 	mov	r0, #34	@ 0x22
    4f0c:	ef000000 	svc	0x00000000
    4f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4f14:	e12fff1e 	bx	lr

00004f18 <waitpid>:
    4f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4f1c:	e1a04003 	mov	r4, r3
    4f20:	e1a03002 	mov	r3, r2
    4f24:	e1a02001 	mov	r2, r1
    4f28:	e1a01000 	mov	r1, r0
    4f2c:	e3a00023 	mov	r0, #35	@ 0x23
    4f30:	ef000000 	svc	0x00000000
    4f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4f38:	e12fff1e 	bx	lr

00004f3c <barrier_init>:
    4f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4f40:	e1a04003 	mov	r4, r3
    4f44:	e1a03002 	mov	r3, r2
    4f48:	e1a02001 	mov	r2, r1
    4f4c:	e1a01000 	mov	r1, r0
    4f50:	e3a00024 	mov	r0, #36	@ 0x24
    4f54:	ef000000 	svc	0x00000000
    4f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4f5c:	e12fff1e 	bx	lr

00004f60 <barrier_check>:
    4f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4f64:	e1a04003 	mov	r4, r3
    4f68:	e1a03002 	mov	r3, r2
    4f6c:	e1a02001 	mov	r2, r1
    4f70:	e1a01000 	mov	r1, r0
    4f74:	e3a00025 	mov	r0, #37	@ 0x25
    4f78:	ef000000 	svc	0x00000000
    4f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4f80:	e12fff1e 	bx	lr

00004f84 <sleepChan>:
    4f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4f88:	e1a04003 	mov	r4, r3
    4f8c:	e1a03002 	mov	r3, r2
    4f90:	e1a02001 	mov	r2, r1
    4f94:	e1a01000 	mov	r1, r0
    4f98:	e3a00026 	mov	r0, #38	@ 0x26
    4f9c:	ef000000 	svc	0x00000000
    4fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4fa4:	e12fff1e 	bx	lr

00004fa8 <getChannel>:
    4fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4fac:	e1a04003 	mov	r4, r3
    4fb0:	e1a03002 	mov	r3, r2
    4fb4:	e1a02001 	mov	r2, r1
    4fb8:	e1a01000 	mov	r1, r0
    4fbc:	e3a00027 	mov	r0, #39	@ 0x27
    4fc0:	ef000000 	svc	0x00000000
    4fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4fc8:	e12fff1e 	bx	lr

00004fcc <sigChan>:
    4fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4fd0:	e1a04003 	mov	r4, r3
    4fd4:	e1a03002 	mov	r3, r2
    4fd8:	e1a02001 	mov	r2, r1
    4fdc:	e1a01000 	mov	r1, r0
    4fe0:	e3a00028 	mov	r0, #40	@ 0x28
    4fe4:	ef000000 	svc	0x00000000
    4fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4fec:	e12fff1e 	bx	lr

00004ff0 <sigOneChan>:
    4ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4ff4:	e1a04003 	mov	r4, r3
    4ff8:	e1a03002 	mov	r3, r2
    4ffc:	e1a02001 	mov	r2, r1
    5000:	e1a01000 	mov	r1, r0
    5004:	e3a00029 	mov	r0, #41	@ 0x29
    5008:	ef000000 	svc	0x00000000
    500c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    5010:	e12fff1e 	bx	lr

00005014 <symlink>:
    5014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    5018:	e1a04003 	mov	r4, r3
    501c:	e1a03002 	mov	r3, r2
    5020:	e1a02001 	mov	r2, r1
    5024:	e1a01000 	mov	r1, r0
    5028:	e3a0002a 	mov	r0, #42	@ 0x2a
    502c:	ef000000 	svc	0x00000000
    5030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    5034:	e12fff1e 	bx	lr

00005038 <syscall>:
    5038:	ef000000 	svc	0x00000000
    503c:	e12fff1e 	bx	lr

00005040 <putc>:
    5040:	e92d4800 	push	{fp, lr}
    5044:	e28db004 	add	fp, sp, #4
    5048:	e24dd008 	sub	sp, sp, #8
    504c:	e50b0008 	str	r0, [fp, #-8]
    5050:	e1a03001 	mov	r3, r1
    5054:	e54b3009 	strb	r3, [fp, #-9]
    5058:	e24b3009 	sub	r3, fp, #9
    505c:	e3a02001 	mov	r2, #1
    5060:	e1a01003 	mov	r1, r3
    5064:	e51b0008 	ldr	r0, [fp, #-8]
    5068:	ebfffed2 	bl	4bb8 <write>
    506c:	e1a00000 	nop			@ (mov r0, r0)
    5070:	e24bd004 	sub	sp, fp, #4
    5074:	e8bd8800 	pop	{fp, pc}

00005078 <printint>:
    5078:	e92d4800 	push	{fp, lr}
    507c:	e28db004 	add	fp, sp, #4
    5080:	e24dd030 	sub	sp, sp, #48	@ 0x30
    5084:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    5088:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    508c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    5090:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    5094:	e3a03000 	mov	r3, #0
    5098:	e50b300c 	str	r3, [fp, #-12]
    509c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    50a0:	e3530000 	cmp	r3, #0
    50a4:	0a000008 	beq	50cc <printint+0x54>
    50a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    50ac:	e3530000 	cmp	r3, #0
    50b0:	aa000005 	bge	50cc <printint+0x54>
    50b4:	e3a03001 	mov	r3, #1
    50b8:	e50b300c 	str	r3, [fp, #-12]
    50bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    50c0:	e2633000 	rsb	r3, r3, #0
    50c4:	e50b3010 	str	r3, [fp, #-16]
    50c8:	ea000001 	b	50d4 <printint+0x5c>
    50cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    50d0:	e50b3010 	str	r3, [fp, #-16]
    50d4:	e3a03000 	mov	r3, #0
    50d8:	e50b3008 	str	r3, [fp, #-8]
    50dc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    50e0:	e51b3010 	ldr	r3, [fp, #-16]
    50e4:	e1a01002 	mov	r1, r2
    50e8:	e1a00003 	mov	r0, r3
    50ec:	eb0001d5 	bl	5848 <__aeabi_uidivmod>
    50f0:	e1a03001 	mov	r3, r1
    50f4:	e1a01003 	mov	r1, r3
    50f8:	e51b3008 	ldr	r3, [fp, #-8]
    50fc:	e2832001 	add	r2, r3, #1
    5100:	e50b2008 	str	r2, [fp, #-8]
    5104:	e59f20a0 	ldr	r2, [pc, #160]	@ 51ac <printint+0x134>
    5108:	e7d22001 	ldrb	r2, [r2, r1]
    510c:	e2433004 	sub	r3, r3, #4
    5110:	e083300b 	add	r3, r3, fp
    5114:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    5118:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    511c:	e1a01003 	mov	r1, r3
    5120:	e51b0010 	ldr	r0, [fp, #-16]
    5124:	eb00018a 	bl	5754 <__udivsi3>
    5128:	e1a03000 	mov	r3, r0
    512c:	e50b3010 	str	r3, [fp, #-16]
    5130:	e51b3010 	ldr	r3, [fp, #-16]
    5134:	e3530000 	cmp	r3, #0
    5138:	1affffe7 	bne	50dc <printint+0x64>
    513c:	e51b300c 	ldr	r3, [fp, #-12]
    5140:	e3530000 	cmp	r3, #0
    5144:	0a00000e 	beq	5184 <printint+0x10c>
    5148:	e51b3008 	ldr	r3, [fp, #-8]
    514c:	e2832001 	add	r2, r3, #1
    5150:	e50b2008 	str	r2, [fp, #-8]
    5154:	e2433004 	sub	r3, r3, #4
    5158:	e083300b 	add	r3, r3, fp
    515c:	e3a0202d 	mov	r2, #45	@ 0x2d
    5160:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    5164:	ea000006 	b	5184 <printint+0x10c>
    5168:	e24b2020 	sub	r2, fp, #32
    516c:	e51b3008 	ldr	r3, [fp, #-8]
    5170:	e0823003 	add	r3, r2, r3
    5174:	e5d33000 	ldrb	r3, [r3]
    5178:	e1a01003 	mov	r1, r3
    517c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    5180:	ebffffae 	bl	5040 <putc>
    5184:	e51b3008 	ldr	r3, [fp, #-8]
    5188:	e2433001 	sub	r3, r3, #1
    518c:	e50b3008 	str	r3, [fp, #-8]
    5190:	e51b3008 	ldr	r3, [fp, #-8]
    5194:	e3530000 	cmp	r3, #0
    5198:	aafffff2 	bge	5168 <printint+0xf0>
    519c:	e1a00000 	nop			@ (mov r0, r0)
    51a0:	e1a00000 	nop			@ (mov r0, r0)
    51a4:	e24bd004 	sub	sp, fp, #4
    51a8:	e8bd8800 	pop	{fp, pc}
    51ac:	000070c0 	.word	0x000070c0

000051b0 <printf>:
    51b0:	e92d000e 	push	{r1, r2, r3}
    51b4:	e92d4800 	push	{fp, lr}
    51b8:	e28db004 	add	fp, sp, #4
    51bc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    51c0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    51c4:	e3a03000 	mov	r3, #0
    51c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    51cc:	e28b3008 	add	r3, fp, #8
    51d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    51d4:	e3a03000 	mov	r3, #0
    51d8:	e50b3010 	str	r3, [fp, #-16]
    51dc:	ea000074 	b	53b4 <printf+0x204>
    51e0:	e59b2004 	ldr	r2, [fp, #4]
    51e4:	e51b3010 	ldr	r3, [fp, #-16]
    51e8:	e0823003 	add	r3, r2, r3
    51ec:	e5d33000 	ldrb	r3, [r3]
    51f0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    51f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    51f8:	e3530000 	cmp	r3, #0
    51fc:	1a00000b 	bne	5230 <printf+0x80>
    5200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    5204:	e3530025 	cmp	r3, #37	@ 0x25
    5208:	1a000002 	bne	5218 <printf+0x68>
    520c:	e3a03025 	mov	r3, #37	@ 0x25
    5210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    5214:	ea000063 	b	53a8 <printf+0x1f8>
    5218:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    521c:	e6ef3073 	uxtb	r3, r3
    5220:	e1a01003 	mov	r1, r3
    5224:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    5228:	ebffff84 	bl	5040 <putc>
    522c:	ea00005d 	b	53a8 <printf+0x1f8>
    5230:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    5234:	e3530025 	cmp	r3, #37	@ 0x25
    5238:	1a00005a 	bne	53a8 <printf+0x1f8>
    523c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    5240:	e3530064 	cmp	r3, #100	@ 0x64
    5244:	1a00000a 	bne	5274 <printf+0xc4>
    5248:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    524c:	e5933000 	ldr	r3, [r3]
    5250:	e1a01003 	mov	r1, r3
    5254:	e3a03001 	mov	r3, #1
    5258:	e3a0200a 	mov	r2, #10
    525c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    5260:	ebffff84 	bl	5078 <printint>
    5264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    5268:	e2833004 	add	r3, r3, #4
    526c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    5270:	ea00004a 	b	53a0 <printf+0x1f0>
    5274:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    5278:	e3530078 	cmp	r3, #120	@ 0x78
    527c:	0a000002 	beq	528c <printf+0xdc>
    5280:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    5284:	e3530070 	cmp	r3, #112	@ 0x70
    5288:	1a00000a 	bne	52b8 <printf+0x108>
    528c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    5290:	e5933000 	ldr	r3, [r3]
    5294:	e1a01003 	mov	r1, r3
    5298:	e3a03000 	mov	r3, #0
    529c:	e3a02010 	mov	r2, #16
    52a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    52a4:	ebffff73 	bl	5078 <printint>
    52a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    52ac:	e2833004 	add	r3, r3, #4
    52b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    52b4:	ea000039 	b	53a0 <printf+0x1f0>
    52b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    52bc:	e3530073 	cmp	r3, #115	@ 0x73
    52c0:	1a000018 	bne	5328 <printf+0x178>
    52c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    52c8:	e5933000 	ldr	r3, [r3]
    52cc:	e50b300c 	str	r3, [fp, #-12]
    52d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    52d4:	e2833004 	add	r3, r3, #4
    52d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    52dc:	e51b300c 	ldr	r3, [fp, #-12]
    52e0:	e3530000 	cmp	r3, #0
    52e4:	1a00000a 	bne	5314 <printf+0x164>
    52e8:	e59f30f4 	ldr	r3, [pc, #244]	@ 53e4 <printf+0x234>
    52ec:	e50b300c 	str	r3, [fp, #-12]
    52f0:	ea000007 	b	5314 <printf+0x164>
    52f4:	e51b300c 	ldr	r3, [fp, #-12]
    52f8:	e5d33000 	ldrb	r3, [r3]
    52fc:	e1a01003 	mov	r1, r3
    5300:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    5304:	ebffff4d 	bl	5040 <putc>
    5308:	e51b300c 	ldr	r3, [fp, #-12]
    530c:	e2833001 	add	r3, r3, #1
    5310:	e50b300c 	str	r3, [fp, #-12]
    5314:	e51b300c 	ldr	r3, [fp, #-12]
    5318:	e5d33000 	ldrb	r3, [r3]
    531c:	e3530000 	cmp	r3, #0
    5320:	1afffff3 	bne	52f4 <printf+0x144>
    5324:	ea00001d 	b	53a0 <printf+0x1f0>
    5328:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    532c:	e3530063 	cmp	r3, #99	@ 0x63
    5330:	1a000009 	bne	535c <printf+0x1ac>
    5334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    5338:	e5933000 	ldr	r3, [r3]
    533c:	e6ef3073 	uxtb	r3, r3
    5340:	e1a01003 	mov	r1, r3
    5344:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    5348:	ebffff3c 	bl	5040 <putc>
    534c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    5350:	e2833004 	add	r3, r3, #4
    5354:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    5358:	ea000010 	b	53a0 <printf+0x1f0>
    535c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    5360:	e3530025 	cmp	r3, #37	@ 0x25
    5364:	1a000005 	bne	5380 <printf+0x1d0>
    5368:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    536c:	e6ef3073 	uxtb	r3, r3
    5370:	e1a01003 	mov	r1, r3
    5374:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    5378:	ebffff30 	bl	5040 <putc>
    537c:	ea000007 	b	53a0 <printf+0x1f0>
    5380:	e3a01025 	mov	r1, #37	@ 0x25
    5384:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    5388:	ebffff2c 	bl	5040 <putc>
    538c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    5390:	e6ef3073 	uxtb	r3, r3
    5394:	e1a01003 	mov	r1, r3
    5398:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    539c:	ebffff27 	bl	5040 <putc>
    53a0:	e3a03000 	mov	r3, #0
    53a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    53a8:	e51b3010 	ldr	r3, [fp, #-16]
    53ac:	e2833001 	add	r3, r3, #1
    53b0:	e50b3010 	str	r3, [fp, #-16]
    53b4:	e59b2004 	ldr	r2, [fp, #4]
    53b8:	e51b3010 	ldr	r3, [fp, #-16]
    53bc:	e0823003 	add	r3, r2, r3
    53c0:	e5d33000 	ldrb	r3, [r3]
    53c4:	e3530000 	cmp	r3, #0
    53c8:	1affff84 	bne	51e0 <printf+0x30>
    53cc:	e1a00000 	nop			@ (mov r0, r0)
    53d0:	e1a00000 	nop			@ (mov r0, r0)
    53d4:	e24bd004 	sub	sp, fp, #4
    53d8:	e8bd4800 	pop	{fp, lr}
    53dc:	e28dd00c 	add	sp, sp, #12
    53e0:	e12fff1e 	bx	lr
    53e4:	0000709c 	.word	0x0000709c

000053e8 <free>:
    53e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    53ec:	e28db000 	add	fp, sp, #0
    53f0:	e24dd014 	sub	sp, sp, #20
    53f4:	e50b0010 	str	r0, [fp, #-16]
    53f8:	e51b3010 	ldr	r3, [fp, #-16]
    53fc:	e2433008 	sub	r3, r3, #8
    5400:	e50b300c 	str	r3, [fp, #-12]
    5404:	e59f3154 	ldr	r3, [pc, #340]	@ 5560 <free+0x178>
    5408:	e5933000 	ldr	r3, [r3]
    540c:	e50b3008 	str	r3, [fp, #-8]
    5410:	ea000010 	b	5458 <free+0x70>
    5414:	e51b3008 	ldr	r3, [fp, #-8]
    5418:	e5933000 	ldr	r3, [r3]
    541c:	e51b2008 	ldr	r2, [fp, #-8]
    5420:	e1520003 	cmp	r2, r3
    5424:	3a000008 	bcc	544c <free+0x64>
    5428:	e51b200c 	ldr	r2, [fp, #-12]
    542c:	e51b3008 	ldr	r3, [fp, #-8]
    5430:	e1520003 	cmp	r2, r3
    5434:	8a000010 	bhi	547c <free+0x94>
    5438:	e51b3008 	ldr	r3, [fp, #-8]
    543c:	e5933000 	ldr	r3, [r3]
    5440:	e51b200c 	ldr	r2, [fp, #-12]
    5444:	e1520003 	cmp	r2, r3
    5448:	3a00000b 	bcc	547c <free+0x94>
    544c:	e51b3008 	ldr	r3, [fp, #-8]
    5450:	e5933000 	ldr	r3, [r3]
    5454:	e50b3008 	str	r3, [fp, #-8]
    5458:	e51b200c 	ldr	r2, [fp, #-12]
    545c:	e51b3008 	ldr	r3, [fp, #-8]
    5460:	e1520003 	cmp	r2, r3
    5464:	9affffea 	bls	5414 <free+0x2c>
    5468:	e51b3008 	ldr	r3, [fp, #-8]
    546c:	e5933000 	ldr	r3, [r3]
    5470:	e51b200c 	ldr	r2, [fp, #-12]
    5474:	e1520003 	cmp	r2, r3
    5478:	2affffe5 	bcs	5414 <free+0x2c>
    547c:	e51b300c 	ldr	r3, [fp, #-12]
    5480:	e5933004 	ldr	r3, [r3, #4]
    5484:	e1a03183 	lsl	r3, r3, #3
    5488:	e51b200c 	ldr	r2, [fp, #-12]
    548c:	e0822003 	add	r2, r2, r3
    5490:	e51b3008 	ldr	r3, [fp, #-8]
    5494:	e5933000 	ldr	r3, [r3]
    5498:	e1520003 	cmp	r2, r3
    549c:	1a00000d 	bne	54d8 <free+0xf0>
    54a0:	e51b300c 	ldr	r3, [fp, #-12]
    54a4:	e5932004 	ldr	r2, [r3, #4]
    54a8:	e51b3008 	ldr	r3, [fp, #-8]
    54ac:	e5933000 	ldr	r3, [r3]
    54b0:	e5933004 	ldr	r3, [r3, #4]
    54b4:	e0822003 	add	r2, r2, r3
    54b8:	e51b300c 	ldr	r3, [fp, #-12]
    54bc:	e5832004 	str	r2, [r3, #4]
    54c0:	e51b3008 	ldr	r3, [fp, #-8]
    54c4:	e5933000 	ldr	r3, [r3]
    54c8:	e5932000 	ldr	r2, [r3]
    54cc:	e51b300c 	ldr	r3, [fp, #-12]
    54d0:	e5832000 	str	r2, [r3]
    54d4:	ea000003 	b	54e8 <free+0x100>
    54d8:	e51b3008 	ldr	r3, [fp, #-8]
    54dc:	e5932000 	ldr	r2, [r3]
    54e0:	e51b300c 	ldr	r3, [fp, #-12]
    54e4:	e5832000 	str	r2, [r3]
    54e8:	e51b3008 	ldr	r3, [fp, #-8]
    54ec:	e5933004 	ldr	r3, [r3, #4]
    54f0:	e1a03183 	lsl	r3, r3, #3
    54f4:	e51b2008 	ldr	r2, [fp, #-8]
    54f8:	e0823003 	add	r3, r2, r3
    54fc:	e51b200c 	ldr	r2, [fp, #-12]
    5500:	e1520003 	cmp	r2, r3
    5504:	1a00000b 	bne	5538 <free+0x150>
    5508:	e51b3008 	ldr	r3, [fp, #-8]
    550c:	e5932004 	ldr	r2, [r3, #4]
    5510:	e51b300c 	ldr	r3, [fp, #-12]
    5514:	e5933004 	ldr	r3, [r3, #4]
    5518:	e0822003 	add	r2, r2, r3
    551c:	e51b3008 	ldr	r3, [fp, #-8]
    5520:	e5832004 	str	r2, [r3, #4]
    5524:	e51b300c 	ldr	r3, [fp, #-12]
    5528:	e5932000 	ldr	r2, [r3]
    552c:	e51b3008 	ldr	r3, [fp, #-8]
    5530:	e5832000 	str	r2, [r3]
    5534:	ea000002 	b	5544 <free+0x15c>
    5538:	e51b3008 	ldr	r3, [fp, #-8]
    553c:	e51b200c 	ldr	r2, [fp, #-12]
    5540:	e5832000 	str	r2, [r3]
    5544:	e59f2014 	ldr	r2, [pc, #20]	@ 5560 <free+0x178>
    5548:	e51b3008 	ldr	r3, [fp, #-8]
    554c:	e5823000 	str	r3, [r2]
    5550:	e1a00000 	nop			@ (mov r0, r0)
    5554:	e28bd000 	add	sp, fp, #0
    5558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    555c:	e12fff1e 	bx	lr
    5560:	0000b870 	.word	0x0000b870

00005564 <morecore>:
    5564:	e92d4800 	push	{fp, lr}
    5568:	e28db004 	add	fp, sp, #4
    556c:	e24dd010 	sub	sp, sp, #16
    5570:	e50b0010 	str	r0, [fp, #-16]
    5574:	e51b3010 	ldr	r3, [fp, #-16]
    5578:	e3530a01 	cmp	r3, #4096	@ 0x1000
    557c:	2a000001 	bcs	5588 <morecore+0x24>
    5580:	e3a03a01 	mov	r3, #4096	@ 0x1000
    5584:	e50b3010 	str	r3, [fp, #-16]
    5588:	e51b3010 	ldr	r3, [fp, #-16]
    558c:	e1a03183 	lsl	r3, r3, #3
    5590:	e1a00003 	mov	r0, r3
    5594:	ebfffdfc 	bl	4d8c <sbrk>
    5598:	e50b0008 	str	r0, [fp, #-8]
    559c:	e51b3008 	ldr	r3, [fp, #-8]
    55a0:	e3730001 	cmn	r3, #1
    55a4:	1a000001 	bne	55b0 <morecore+0x4c>
    55a8:	e3a03000 	mov	r3, #0
    55ac:	ea00000a 	b	55dc <morecore+0x78>
    55b0:	e51b3008 	ldr	r3, [fp, #-8]
    55b4:	e50b300c 	str	r3, [fp, #-12]
    55b8:	e51b300c 	ldr	r3, [fp, #-12]
    55bc:	e51b2010 	ldr	r2, [fp, #-16]
    55c0:	e5832004 	str	r2, [r3, #4]
    55c4:	e51b300c 	ldr	r3, [fp, #-12]
    55c8:	e2833008 	add	r3, r3, #8
    55cc:	e1a00003 	mov	r0, r3
    55d0:	ebffff84 	bl	53e8 <free>
    55d4:	e59f300c 	ldr	r3, [pc, #12]	@ 55e8 <morecore+0x84>
    55d8:	e5933000 	ldr	r3, [r3]
    55dc:	e1a00003 	mov	r0, r3
    55e0:	e24bd004 	sub	sp, fp, #4
    55e4:	e8bd8800 	pop	{fp, pc}
    55e8:	0000b870 	.word	0x0000b870

000055ec <malloc>:
    55ec:	e92d4800 	push	{fp, lr}
    55f0:	e28db004 	add	fp, sp, #4
    55f4:	e24dd018 	sub	sp, sp, #24
    55f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    55fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    5600:	e2833007 	add	r3, r3, #7
    5604:	e1a031a3 	lsr	r3, r3, #3
    5608:	e2833001 	add	r3, r3, #1
    560c:	e50b3010 	str	r3, [fp, #-16]
    5610:	e59f3134 	ldr	r3, [pc, #308]	@ 574c <malloc+0x160>
    5614:	e5933000 	ldr	r3, [r3]
    5618:	e50b300c 	str	r3, [fp, #-12]
    561c:	e51b300c 	ldr	r3, [fp, #-12]
    5620:	e3530000 	cmp	r3, #0
    5624:	1a00000b 	bne	5658 <malloc+0x6c>
    5628:	e59f3120 	ldr	r3, [pc, #288]	@ 5750 <malloc+0x164>
    562c:	e50b300c 	str	r3, [fp, #-12]
    5630:	e59f2114 	ldr	r2, [pc, #276]	@ 574c <malloc+0x160>
    5634:	e51b300c 	ldr	r3, [fp, #-12]
    5638:	e5823000 	str	r3, [r2]
    563c:	e59f3108 	ldr	r3, [pc, #264]	@ 574c <malloc+0x160>
    5640:	e5933000 	ldr	r3, [r3]
    5644:	e59f2104 	ldr	r2, [pc, #260]	@ 5750 <malloc+0x164>
    5648:	e5823000 	str	r3, [r2]
    564c:	e59f30fc 	ldr	r3, [pc, #252]	@ 5750 <malloc+0x164>
    5650:	e3a02000 	mov	r2, #0
    5654:	e5832004 	str	r2, [r3, #4]
    5658:	e51b300c 	ldr	r3, [fp, #-12]
    565c:	e5933000 	ldr	r3, [r3]
    5660:	e50b3008 	str	r3, [fp, #-8]
    5664:	e51b3008 	ldr	r3, [fp, #-8]
    5668:	e5933004 	ldr	r3, [r3, #4]
    566c:	e51b2010 	ldr	r2, [fp, #-16]
    5670:	e1520003 	cmp	r2, r3
    5674:	8a00001e 	bhi	56f4 <malloc+0x108>
    5678:	e51b3008 	ldr	r3, [fp, #-8]
    567c:	e5933004 	ldr	r3, [r3, #4]
    5680:	e51b2010 	ldr	r2, [fp, #-16]
    5684:	e1520003 	cmp	r2, r3
    5688:	1a000004 	bne	56a0 <malloc+0xb4>
    568c:	e51b3008 	ldr	r3, [fp, #-8]
    5690:	e5932000 	ldr	r2, [r3]
    5694:	e51b300c 	ldr	r3, [fp, #-12]
    5698:	e5832000 	str	r2, [r3]
    569c:	ea00000e 	b	56dc <malloc+0xf0>
    56a0:	e51b3008 	ldr	r3, [fp, #-8]
    56a4:	e5932004 	ldr	r2, [r3, #4]
    56a8:	e51b3010 	ldr	r3, [fp, #-16]
    56ac:	e0422003 	sub	r2, r2, r3
    56b0:	e51b3008 	ldr	r3, [fp, #-8]
    56b4:	e5832004 	str	r2, [r3, #4]
    56b8:	e51b3008 	ldr	r3, [fp, #-8]
    56bc:	e5933004 	ldr	r3, [r3, #4]
    56c0:	e1a03183 	lsl	r3, r3, #3
    56c4:	e51b2008 	ldr	r2, [fp, #-8]
    56c8:	e0823003 	add	r3, r2, r3
    56cc:	e50b3008 	str	r3, [fp, #-8]
    56d0:	e51b3008 	ldr	r3, [fp, #-8]
    56d4:	e51b2010 	ldr	r2, [fp, #-16]
    56d8:	e5832004 	str	r2, [r3, #4]
    56dc:	e59f2068 	ldr	r2, [pc, #104]	@ 574c <malloc+0x160>
    56e0:	e51b300c 	ldr	r3, [fp, #-12]
    56e4:	e5823000 	str	r3, [r2]
    56e8:	e51b3008 	ldr	r3, [fp, #-8]
    56ec:	e2833008 	add	r3, r3, #8
    56f0:	ea000012 	b	5740 <malloc+0x154>
    56f4:	e59f3050 	ldr	r3, [pc, #80]	@ 574c <malloc+0x160>
    56f8:	e5933000 	ldr	r3, [r3]
    56fc:	e51b2008 	ldr	r2, [fp, #-8]
    5700:	e1520003 	cmp	r2, r3
    5704:	1a000007 	bne	5728 <malloc+0x13c>
    5708:	e51b0010 	ldr	r0, [fp, #-16]
    570c:	ebffff94 	bl	5564 <morecore>
    5710:	e50b0008 	str	r0, [fp, #-8]
    5714:	e51b3008 	ldr	r3, [fp, #-8]
    5718:	e3530000 	cmp	r3, #0
    571c:	1a000001 	bne	5728 <malloc+0x13c>
    5720:	e3a03000 	mov	r3, #0
    5724:	ea000005 	b	5740 <malloc+0x154>
    5728:	e51b3008 	ldr	r3, [fp, #-8]
    572c:	e50b300c 	str	r3, [fp, #-12]
    5730:	e51b3008 	ldr	r3, [fp, #-8]
    5734:	e5933000 	ldr	r3, [r3]
    5738:	e50b3008 	str	r3, [fp, #-8]
    573c:	eaffffc8 	b	5664 <malloc+0x78>
    5740:	e1a00003 	mov	r0, r3
    5744:	e24bd004 	sub	sp, fp, #4
    5748:	e8bd8800 	pop	{fp, pc}
    574c:	0000b870 	.word	0x0000b870
    5750:	0000b868 	.word	0x0000b868

00005754 <__udivsi3>:
    5754:	e2512001 	subs	r2, r1, #1
    5758:	012fff1e 	bxeq	lr
    575c:	3a000036 	bcc	583c <__udivsi3+0xe8>
    5760:	e1500001 	cmp	r0, r1
    5764:	9a000022 	bls	57f4 <__udivsi3+0xa0>
    5768:	e1110002 	tst	r1, r2
    576c:	0a000023 	beq	5800 <__udivsi3+0xac>
    5770:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    5774:	01a01181 	lsleq	r1, r1, #3
    5778:	03a03008 	moveq	r3, #8
    577c:	13a03001 	movne	r3, #1
    5780:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    5784:	31510000 	cmpcc	r1, r0
    5788:	31a01201 	lslcc	r1, r1, #4
    578c:	31a03203 	lslcc	r3, r3, #4
    5790:	3afffffa 	bcc	5780 <__udivsi3+0x2c>
    5794:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    5798:	31510000 	cmpcc	r1, r0
    579c:	31a01081 	lslcc	r1, r1, #1
    57a0:	31a03083 	lslcc	r3, r3, #1
    57a4:	3afffffa 	bcc	5794 <__udivsi3+0x40>
    57a8:	e3a02000 	mov	r2, #0
    57ac:	e1500001 	cmp	r0, r1
    57b0:	20400001 	subcs	r0, r0, r1
    57b4:	21822003 	orrcs	r2, r2, r3
    57b8:	e15000a1 	cmp	r0, r1, lsr #1
    57bc:	204000a1 	subcs	r0, r0, r1, lsr #1
    57c0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    57c4:	e1500121 	cmp	r0, r1, lsr #2
    57c8:	20400121 	subcs	r0, r0, r1, lsr #2
    57cc:	21822123 	orrcs	r2, r2, r3, lsr #2
    57d0:	e15001a1 	cmp	r0, r1, lsr #3
    57d4:	204001a1 	subcs	r0, r0, r1, lsr #3
    57d8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    57dc:	e3500000 	cmp	r0, #0
    57e0:	11b03223 	lsrsne	r3, r3, #4
    57e4:	11a01221 	lsrne	r1, r1, #4
    57e8:	1affffef 	bne	57ac <__udivsi3+0x58>
    57ec:	e1a00002 	mov	r0, r2
    57f0:	e12fff1e 	bx	lr
    57f4:	03a00001 	moveq	r0, #1
    57f8:	13a00000 	movne	r0, #0
    57fc:	e12fff1e 	bx	lr
    5800:	e3510801 	cmp	r1, #65536	@ 0x10000
    5804:	21a01821 	lsrcs	r1, r1, #16
    5808:	23a02010 	movcs	r2, #16
    580c:	33a02000 	movcc	r2, #0
    5810:	e3510c01 	cmp	r1, #256	@ 0x100
    5814:	21a01421 	lsrcs	r1, r1, #8
    5818:	22822008 	addcs	r2, r2, #8
    581c:	e3510010 	cmp	r1, #16
    5820:	21a01221 	lsrcs	r1, r1, #4
    5824:	22822004 	addcs	r2, r2, #4
    5828:	e3510004 	cmp	r1, #4
    582c:	82822003 	addhi	r2, r2, #3
    5830:	908220a1 	addls	r2, r2, r1, lsr #1
    5834:	e1a00230 	lsr	r0, r0, r2
    5838:	e12fff1e 	bx	lr
    583c:	e3500000 	cmp	r0, #0
    5840:	13e00000 	mvnne	r0, #0
    5844:	ea000007 	b	5868 <__aeabi_idiv0>

00005848 <__aeabi_uidivmod>:
    5848:	e3510000 	cmp	r1, #0
    584c:	0afffffa 	beq	583c <__udivsi3+0xe8>
    5850:	e92d4003 	push	{r0, r1, lr}
    5854:	ebffffbe 	bl	5754 <__udivsi3>
    5858:	e8bd4006 	pop	{r1, r2, lr}
    585c:	e0030092 	mul	r3, r2, r0
    5860:	e0411003 	sub	r1, r1, r3
    5864:	e12fff1e 	bx	lr

00005868 <__aeabi_idiv0>:
    5868:	e12fff1e 	bx	lr
