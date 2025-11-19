
_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a0301e 	mov	r3, #30
      18:	e50b300c 	str	r3, [fp, #-12]
      1c:	e51b300c 	ldr	r3, [fp, #-12]
      20:	e1a03603 	lsl	r3, r3, #12
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	e59f10cc 	ldr	r1, [pc, #204]	@ fc <main+0xfc>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0004b8 	bl	1318 <printf>
      34:	e51b200c 	ldr	r2, [fp, #-12]
      38:	e59f10c0 	ldr	r1, [pc, #192]	@ 100 <main+0x100>
      3c:	e3a00001 	mov	r0, #1
      40:	eb0004b4 	bl	1318 <printf>
      44:	e51b0010 	ldr	r0, [fp, #-16]
      48:	eb0003a9 	bl	ef4 <sbrk>
      4c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      54:	e3730001 	cmn	r3, #1
      58:	1a000003 	bne	6c <main+0x6c>
      5c:	e59f10a0 	ldr	r1, [pc, #160]	@ 104 <main+0x104>
      60:	e3a00001 	mov	r0, #1
      64:	eb0004ab 	bl	1318 <printf>
      68:	eb000308 	bl	c90 <exit>
      6c:	e59f1094 	ldr	r1, [pc, #148]	@ 108 <main+0x108>
      70:	e3a00001 	mov	r0, #1
      74:	eb0004a7 	bl	1318 <printf>
      78:	e3a03000 	mov	r3, #0
      7c:	e50b3008 	str	r3, [fp, #-8]
      80:	ea00000a 	b	b0 <main+0xb0>
      84:	e51b3008 	ldr	r3, [fp, #-8]
      88:	e1a03603 	lsl	r3, r3, #12
      8c:	e1a02003 	mov	r2, r3
      90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      94:	e0833002 	add	r3, r3, r2
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e6ef2072 	uxtb	r2, r2
      a0:	e5c32000 	strb	r2, [r3]
      a4:	e51b3008 	ldr	r3, [fp, #-8]
      a8:	e2833001 	add	r3, r3, #1
      ac:	e50b3008 	str	r3, [fp, #-8]
      b0:	e51b2008 	ldr	r2, [fp, #-8]
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e1520003 	cmp	r2, r3
      bc:	bafffff0 	blt	84 <main+0x84>
      c0:	e59f1044 	ldr	r1, [pc, #68]	@ 10c <main+0x10c>
      c4:	e3a00001 	mov	r0, #1
      c8:	eb000492 	bl	1318 <printf>
      cc:	e59f103c 	ldr	r1, [pc, #60]	@ 110 <main+0x110>
      d0:	e3a00001 	mov	r0, #1
      d4:	eb00048f 	bl	1318 <printf>
      d8:	eb0003c4 	bl	ff0 <print_pt>
      dc:	e59f1030 	ldr	r1, [pc, #48]	@ 114 <main+0x114>
      e0:	e3a00001 	mov	r0, #1
      e4:	eb00048b 	bl	1318 <printf>
      e8:	eb00001c 	bl	160 <ugetpid_test>
      ec:	e59f1024 	ldr	r1, [pc, #36]	@ 118 <main+0x118>
      f0:	e3a00001 	mov	r0, #1
      f4:	eb000487 	bl	1318 <printf>
      f8:	eb0002e4 	bl	c90 <exit>
      fc:	000019d4 	.word	0x000019d4
     100:	00001a04 	.word	0x00001a04
     104:	00001a40 	.word	0x00001a40
     108:	00001a50 	.word	0x00001a50
     10c:	00001a9c 	.word	0x00001a9c
     110:	00001ac8 	.word	0x00001ac8
     114:	00001b00 	.word	0x00001b00
     118:	00001b20 	.word	0x00001b20

0000011c <err>:
     11c:	e92d4810 	push	{r4, fp, lr}
     120:	e28db008 	add	fp, sp, #8
     124:	e24dd014 	sub	sp, sp, #20
     128:	e50b0010 	str	r0, [fp, #-16]
     12c:	e59f3024 	ldr	r3, [pc, #36]	@ 158 <err+0x3c>
     130:	e5934000 	ldr	r4, [r3]
     134:	eb000365 	bl	ed0 <getpid>
     138:	e1a03000 	mov	r3, r0
     13c:	e58d3000 	str	r3, [sp]
     140:	e51b3010 	ldr	r3, [fp, #-16]
     144:	e1a02004 	mov	r2, r4
     148:	e59f100c 	ldr	r1, [pc, #12]	@ 15c <err+0x40>
     14c:	e3a00001 	mov	r0, #1
     150:	eb000470 	bl	1318 <printf>
     154:	eb0002cd 	bl	c90 <exit>
     158:	00001bc0 	.word	0x00001bc0
     15c:	00001b50 	.word	0x00001b50

00000160 <ugetpid_test>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd008 	sub	sp, sp, #8
     16c:	e59f1080 	ldr	r1, [pc, #128]	@ 1f4 <ugetpid_test+0x94>
     170:	e3a00001 	mov	r0, #1
     174:	eb000467 	bl	1318 <printf>
     178:	e59f3078 	ldr	r3, [pc, #120]	@ 1f8 <ugetpid_test+0x98>
     17c:	e59f2078 	ldr	r2, [pc, #120]	@ 1fc <ugetpid_test+0x9c>
     180:	e5832000 	str	r2, [r3]
     184:	e3a03000 	mov	r3, #0
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	ea00000f 	b	1d0 <ugetpid_test+0x70>
     190:	eb0002b5 	bl	c6c <fork>
     194:	e50b000c 	str	r0, [fp, #-12]
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e3530000 	cmp	r3, #0
     1a0:	aa000001 	bge	1ac <ugetpid_test+0x4c>
     1a4:	e59f0054 	ldr	r0, [pc, #84]	@ 200 <ugetpid_test+0xa0>
     1a8:	ebffffdb 	bl	11c <err>
     1ac:	e51b300c 	ldr	r3, [fp, #-12]
     1b0:	e3530000 	cmp	r3, #0
     1b4:	da000001 	ble	1c0 <ugetpid_test+0x60>
     1b8:	eb0002bd 	bl	cb4 <wait>
     1bc:	ea000000 	b	1c4 <ugetpid_test+0x64>
     1c0:	eb0002b2 	bl	c90 <exit>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e3530009 	cmp	r3, #9
     1d8:	daffffec 	ble	190 <ugetpid_test+0x30>
     1dc:	e59f1020 	ldr	r1, [pc, #32]	@ 204 <ugetpid_test+0xa4>
     1e0:	e3a00001 	mov	r0, #1
     1e4:	eb00044b 	bl	1318 <printf>
     1e8:	e1a00000 	nop			@ (mov r0, r0)
     1ec:	e24bd004 	sub	sp, fp, #4
     1f0:	e8bd8800 	pop	{fp, pc}
     1f4:	00001b70 	.word	0x00001b70
     1f8:	00001bc0 	.word	0x00001bc0
     1fc:	00001b88 	.word	0x00001b88
     200:	00001b98 	.word	0x00001b98
     204:	00001ba4 	.word	0x00001ba4

00000208 <pg_pte>:
     208:	e92d4800 	push	{fp, lr}
     20c:	e28db004 	add	fp, sp, #4
     210:	e24dd008 	sub	sp, sp, #8
     214:	e50b0008 	str	r0, [fp, #-8]
     218:	e51b1008 	ldr	r1, [fp, #-8]
     21c:	e3a0001a 	mov	r0, #26
     220:	eb0003de 	bl	11a0 <syscall>
     224:	e1a03000 	mov	r3, r0
     228:	e1a00003 	mov	r0, r3
     22c:	e24bd004 	sub	sp, fp, #4
     230:	e8bd8800 	pop	{fp, pc}

00000234 <pg_pa>:
     234:	e92d4800 	push	{fp, lr}
     238:	e28db004 	add	fp, sp, #4
     23c:	e24dd008 	sub	sp, sp, #8
     240:	e50b0008 	str	r0, [fp, #-8]
     244:	e51b1008 	ldr	r1, [fp, #-8]
     248:	e3a0001b 	mov	r0, #27
     24c:	eb0003d3 	bl	11a0 <syscall>
     250:	e1a03000 	mov	r3, r0
     254:	e1a00003 	mov	r0, r3
     258:	e24bd004 	sub	sp, fp, #4
     25c:	e8bd8800 	pop	{fp, pc}

00000260 <pg_flags>:
     260:	e92d4800 	push	{fp, lr}
     264:	e28db004 	add	fp, sp, #4
     268:	e24dd008 	sub	sp, sp, #8
     26c:	e50b0008 	str	r0, [fp, #-8]
     270:	e51b1008 	ldr	r1, [fp, #-8]
     274:	e3a0001c 	mov	r0, #28
     278:	eb0003c8 	bl	11a0 <syscall>
     27c:	e1a03000 	mov	r3, r0
     280:	e1a00003 	mov	r0, r3
     284:	e24bd004 	sub	sp, fp, #4
     288:	e8bd8800 	pop	{fp, pc}

0000028c <kpt>:
     28c:	e92d4800 	push	{fp, lr}
     290:	e28db004 	add	fp, sp, #4
     294:	e3a0001d 	mov	r0, #29
     298:	eb0003c0 	bl	11a0 <syscall>
     29c:	e1a03000 	mov	r3, r0
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e8bd8800 	pop	{fp, pc}

000002a8 <ugetpid>:
     2a8:	e92d4800 	push	{fp, lr}
     2ac:	e28db004 	add	fp, sp, #4
     2b0:	e3a0001e 	mov	r0, #30
     2b4:	eb0003b9 	bl	11a0 <syscall>
     2b8:	e1a03000 	mov	r3, r0
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <strcpy>:
     2c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c8:	e28db000 	add	fp, sp, #0
     2cc:	e24dd014 	sub	sp, sp, #20
     2d0:	e50b0010 	str	r0, [fp, #-16]
     2d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     2d8:	e51b3010 	ldr	r3, [fp, #-16]
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	e1a00000 	nop			@ (mov r0, r0)
     2e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2e8:	e2823001 	add	r3, r2, #1
     2ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2f0:	e51b3010 	ldr	r3, [fp, #-16]
     2f4:	e2831001 	add	r1, r3, #1
     2f8:	e50b1010 	str	r1, [fp, #-16]
     2fc:	e5d22000 	ldrb	r2, [r2]
     300:	e5c32000 	strb	r2, [r3]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff4 	bne	2e4 <strcpy+0x20>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strcmp>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd00c 	sub	sp, sp, #12
     330:	e50b0008 	str	r0, [fp, #-8]
     334:	e50b100c 	str	r1, [fp, #-12]
     338:	ea000005 	b	354 <strcmp+0x30>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b300c 	ldr	r3, [fp, #-12]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	0a000005 	beq	37c <strcmp+0x58>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e5d32000 	ldrb	r2, [r3]
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e1520003 	cmp	r2, r3
     378:	0affffef 	beq	33c <strcmp+0x18>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e1a02003 	mov	r2, r3
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e5d33000 	ldrb	r3, [r3]
     390:	e0423003 	sub	r3, r2, r3
     394:	e1a00003 	mov	r0, r3
     398:	e28bd000 	add	sp, fp, #0
     39c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a0:	e12fff1e 	bx	lr

000003a4 <strlen>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e3a03000 	mov	r3, #0
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	ea000002 	b	3cc <strlen+0x28>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e51b2010 	ldr	r2, [fp, #-16]
     3d4:	e0823003 	add	r3, r2, r3
     3d8:	e5d33000 	ldrb	r3, [r3]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	1afffff6 	bne	3c0 <strlen+0x1c>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e1a00003 	mov	r0, r3
     3ec:	e28bd000 	add	sp, fp, #0
     3f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f4:	e12fff1e 	bx	lr

000003f8 <memset>:
     3f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3fc:	e28db000 	add	fp, sp, #0
     400:	e24dd024 	sub	sp, sp, #36	@ 0x24
     404:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     408:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     40c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     41c:	e54b300d 	strb	r3, [fp, #-13]
     420:	e55b200d 	ldrb	r2, [fp, #-13]
     424:	e1a03002 	mov	r3, r2
     428:	e1a03403 	lsl	r3, r3, #8
     42c:	e0833002 	add	r3, r3, r2
     430:	e1a03803 	lsl	r3, r3, #16
     434:	e1a02003 	mov	r2, r3
     438:	e55b300d 	ldrb	r3, [fp, #-13]
     43c:	e1a03403 	lsl	r3, r3, #8
     440:	e1822003 	orr	r2, r2, r3
     444:	e55b300d 	ldrb	r3, [fp, #-13]
     448:	e1823003 	orr	r3, r2, r3
     44c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     450:	ea000008 	b	478 <memset+0x80>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     464:	e2433001 	sub	r3, r3, #1
     468:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2833001 	add	r3, r3, #1
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     47c:	e3530000 	cmp	r3, #0
     480:	0a000003 	beq	494 <memset+0x9c>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2033003 	and	r3, r3, #3
     48c:	e3530000 	cmp	r3, #0
     490:	1affffef 	bne	454 <memset+0x5c>
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e50b300c 	str	r3, [fp, #-12]
     49c:	ea000008 	b	4c4 <memset+0xcc>
     4a0:	e51b300c 	ldr	r3, [fp, #-12]
     4a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4a8:	e5832000 	str	r2, [r3]
     4ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4b0:	e2433004 	sub	r3, r3, #4
     4b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4b8:	e51b300c 	ldr	r3, [fp, #-12]
     4bc:	e2833004 	add	r3, r3, #4
     4c0:	e50b300c 	str	r3, [fp, #-12]
     4c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4c8:	e3530003 	cmp	r3, #3
     4cc:	8afffff3 	bhi	4a0 <memset+0xa8>
     4d0:	e51b300c 	ldr	r3, [fp, #-12]
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	ea000008 	b	500 <memset+0x108>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e55b200d 	ldrb	r2, [fp, #-13]
     4e4:	e5c32000 	strb	r2, [r3]
     4e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4ec:	e2433001 	sub	r3, r3, #1
     4f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e2833001 	add	r3, r3, #1
     4fc:	e50b3008 	str	r3, [fp, #-8]
     500:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     504:	e3530000 	cmp	r3, #0
     508:	1afffff3 	bne	4dc <memset+0xe4>
     50c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     510:	e1a00003 	mov	r0, r3
     514:	e28bd000 	add	sp, fp, #0
     518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <strchr>:
     520:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     524:	e28db000 	add	fp, sp, #0
     528:	e24dd00c 	sub	sp, sp, #12
     52c:	e50b0008 	str	r0, [fp, #-8]
     530:	e1a03001 	mov	r3, r1
     534:	e54b3009 	strb	r3, [fp, #-9]
     538:	ea000009 	b	564 <strchr+0x44>
     53c:	e51b3008 	ldr	r3, [fp, #-8]
     540:	e5d33000 	ldrb	r3, [r3]
     544:	e55b2009 	ldrb	r2, [fp, #-9]
     548:	e1520003 	cmp	r2, r3
     54c:	1a000001 	bne	558 <strchr+0x38>
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	ea000007 	b	578 <strchr+0x58>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e3530000 	cmp	r3, #0
     570:	1afffff1 	bne	53c <strchr+0x1c>
     574:	e3a03000 	mov	r3, #0
     578:	e1a00003 	mov	r0, r3
     57c:	e28bd000 	add	sp, fp, #0
     580:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <gets>:
     588:	e92d4800 	push	{fp, lr}
     58c:	e28db004 	add	fp, sp, #4
     590:	e24dd018 	sub	sp, sp, #24
     594:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     598:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     59c:	e3a03000 	mov	r3, #0
     5a0:	e50b3008 	str	r3, [fp, #-8]
     5a4:	ea000016 	b	604 <gets+0x7c>
     5a8:	e24b300d 	sub	r3, fp, #13
     5ac:	e3a02001 	mov	r2, #1
     5b0:	e1a01003 	mov	r1, r3
     5b4:	e3a00000 	mov	r0, #0
     5b8:	eb0001cf 	bl	cfc <read>
     5bc:	e50b000c 	str	r0, [fp, #-12]
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e3530000 	cmp	r3, #0
     5c8:	da000013 	ble	61c <gets+0x94>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e2832001 	add	r2, r3, #1
     5d4:	e50b2008 	str	r2, [fp, #-8]
     5d8:	e1a02003 	mov	r2, r3
     5dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5e0:	e0833002 	add	r3, r3, r2
     5e4:	e55b200d 	ldrb	r2, [fp, #-13]
     5e8:	e5c32000 	strb	r2, [r3]
     5ec:	e55b300d 	ldrb	r3, [fp, #-13]
     5f0:	e353000a 	cmp	r3, #10
     5f4:	0a000009 	beq	620 <gets+0x98>
     5f8:	e55b300d 	ldrb	r3, [fp, #-13]
     5fc:	e353000d 	cmp	r3, #13
     600:	0a000006 	beq	620 <gets+0x98>
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     610:	e1520003 	cmp	r2, r3
     614:	caffffe3 	bgt	5a8 <gets+0x20>
     618:	ea000000 	b	620 <gets+0x98>
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     628:	e0823003 	add	r3, r2, r3
     62c:	e3a02000 	mov	r2, #0
     630:	e5c32000 	strb	r2, [r3]
     634:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     638:	e1a00003 	mov	r0, r3
     63c:	e24bd004 	sub	sp, fp, #4
     640:	e8bd8800 	pop	{fp, pc}

00000644 <stat>:
     644:	e92d4800 	push	{fp, lr}
     648:	e28db004 	add	fp, sp, #4
     64c:	e24dd010 	sub	sp, sp, #16
     650:	e50b0010 	str	r0, [fp, #-16]
     654:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     658:	e3a01000 	mov	r1, #0
     65c:	e51b0010 	ldr	r0, [fp, #-16]
     660:	eb0001d2 	bl	db0 <open>
     664:	e50b0008 	str	r0, [fp, #-8]
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e3530000 	cmp	r3, #0
     670:	aa000001 	bge	67c <stat+0x38>
     674:	e3e03000 	mvn	r3, #0
     678:	ea000006 	b	698 <stat+0x54>
     67c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     680:	e51b0008 	ldr	r0, [fp, #-8]
     684:	eb0001e4 	bl	e1c <fstat>
     688:	e50b000c 	str	r0, [fp, #-12]
     68c:	e51b0008 	ldr	r0, [fp, #-8]
     690:	eb0001ab 	bl	d44 <close>
     694:	e51b300c 	ldr	r3, [fp, #-12]
     698:	e1a00003 	mov	r0, r3
     69c:	e24bd004 	sub	sp, fp, #4
     6a0:	e8bd8800 	pop	{fp, pc}

000006a4 <atoi>:
     6a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a8:	e28db000 	add	fp, sp, #0
     6ac:	e24dd014 	sub	sp, sp, #20
     6b0:	e50b0010 	str	r0, [fp, #-16]
     6b4:	e3a03000 	mov	r3, #0
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	ea00000c 	b	6f4 <atoi+0x50>
     6c0:	e51b2008 	ldr	r2, [fp, #-8]
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a03103 	lsl	r3, r3, #2
     6cc:	e0833002 	add	r3, r3, r2
     6d0:	e1a03083 	lsl	r3, r3, #1
     6d4:	e1a01003 	mov	r1, r3
     6d8:	e51b3010 	ldr	r3, [fp, #-16]
     6dc:	e2832001 	add	r2, r3, #1
     6e0:	e50b2010 	str	r2, [fp, #-16]
     6e4:	e5d33000 	ldrb	r3, [r3]
     6e8:	e0813003 	add	r3, r1, r3
     6ec:	e2433030 	sub	r3, r3, #48	@ 0x30
     6f0:	e50b3008 	str	r3, [fp, #-8]
     6f4:	e51b3010 	ldr	r3, [fp, #-16]
     6f8:	e5d33000 	ldrb	r3, [r3]
     6fc:	e353002f 	cmp	r3, #47	@ 0x2f
     700:	9a000003 	bls	714 <atoi+0x70>
     704:	e51b3010 	ldr	r3, [fp, #-16]
     708:	e5d33000 	ldrb	r3, [r3]
     70c:	e3530039 	cmp	r3, #57	@ 0x39
     710:	9affffea 	bls	6c0 <atoi+0x1c>
     714:	e51b3008 	ldr	r3, [fp, #-8]
     718:	e1a00003 	mov	r0, r3
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <memmove>:
     728:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     72c:	e28db000 	add	fp, sp, #0
     730:	e24dd01c 	sub	sp, sp, #28
     734:	e50b0010 	str	r0, [fp, #-16]
     738:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     73c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     740:	e51b3010 	ldr	r3, [fp, #-16]
     744:	e50b3008 	str	r3, [fp, #-8]
     748:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     74c:	e50b300c 	str	r3, [fp, #-12]
     750:	ea000007 	b	774 <memmove+0x4c>
     754:	e51b200c 	ldr	r2, [fp, #-12]
     758:	e2823001 	add	r3, r2, #1
     75c:	e50b300c 	str	r3, [fp, #-12]
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e2831001 	add	r1, r3, #1
     768:	e50b1008 	str	r1, [fp, #-8]
     76c:	e5d22000 	ldrb	r2, [r2]
     770:	e5c32000 	strb	r2, [r3]
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e2432001 	sub	r2, r3, #1
     77c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     780:	e3530000 	cmp	r3, #0
     784:	cafffff2 	bgt	754 <memmove+0x2c>
     788:	e51b3010 	ldr	r3, [fp, #-16]
     78c:	e1a00003 	mov	r0, r3
     790:	e28bd000 	add	sp, fp, #0
     794:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <strncmp>:
     79c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7a0:	e28db000 	add	fp, sp, #0
     7a4:	e24dd014 	sub	sp, sp, #20
     7a8:	e50b0008 	str	r0, [fp, #-8]
     7ac:	e50b100c 	str	r1, [fp, #-12]
     7b0:	e50b2010 	str	r2, [fp, #-16]
     7b4:	ea000008 	b	7dc <strncmp+0x40>
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e2833001 	add	r3, r3, #1
     7c0:	e50b3008 	str	r3, [fp, #-8]
     7c4:	e51b300c 	ldr	r3, [fp, #-12]
     7c8:	e2833001 	add	r3, r3, #1
     7cc:	e50b300c 	str	r3, [fp, #-12]
     7d0:	e51b3010 	ldr	r3, [fp, #-16]
     7d4:	e2433001 	sub	r3, r3, #1
     7d8:	e50b3010 	str	r3, [fp, #-16]
     7dc:	e51b3010 	ldr	r3, [fp, #-16]
     7e0:	e3530000 	cmp	r3, #0
     7e4:	da00000d 	ble	820 <strncmp+0x84>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5d33000 	ldrb	r3, [r3]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	0a000009 	beq	820 <strncmp+0x84>
     7f8:	e51b300c 	ldr	r3, [fp, #-12]
     7fc:	e5d33000 	ldrb	r3, [r3]
     800:	e3530000 	cmp	r3, #0
     804:	0a000005 	beq	820 <strncmp+0x84>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5d32000 	ldrb	r2, [r3]
     810:	e51b300c 	ldr	r3, [fp, #-12]
     814:	e5d33000 	ldrb	r3, [r3]
     818:	e1520003 	cmp	r2, r3
     81c:	0affffe5 	beq	7b8 <strncmp+0x1c>
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e3530000 	cmp	r3, #0
     828:	1a000001 	bne	834 <strncmp+0x98>
     82c:	e3a03000 	mov	r3, #0
     830:	ea000005 	b	84c <strncmp+0xb0>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e5d33000 	ldrb	r3, [r3]
     83c:	e1a02003 	mov	r2, r3
     840:	e51b300c 	ldr	r3, [fp, #-12]
     844:	e5d33000 	ldrb	r3, [r3]
     848:	e0423003 	sub	r3, r2, r3
     84c:	e1a00003 	mov	r0, r3
     850:	e28bd000 	add	sp, fp, #0
     854:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <strncpy>:
     85c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     860:	e28db000 	add	fp, sp, #0
     864:	e24dd01c 	sub	sp, sp, #28
     868:	e50b0010 	str	r0, [fp, #-16]
     86c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     870:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     874:	e51b3010 	ldr	r3, [fp, #-16]
     878:	e50b3008 	str	r3, [fp, #-8]
     87c:	ea00000a 	b	8ac <strncpy+0x50>
     880:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     884:	e2823001 	add	r3, r2, #1
     888:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e2831001 	add	r1, r3, #1
     894:	e50b1008 	str	r1, [fp, #-8]
     898:	e5d22000 	ldrb	r2, [r2]
     89c:	e5c32000 	strb	r2, [r3]
     8a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8a4:	e2433001 	sub	r3, r3, #1
     8a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     8ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8b0:	e3530000 	cmp	r3, #0
     8b4:	da00000c 	ble	8ec <strncpy+0x90>
     8b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8bc:	e5d33000 	ldrb	r3, [r3]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	1affffed 	bne	880 <strncpy+0x24>
     8c8:	ea000007 	b	8ec <strncpy+0x90>
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e2832001 	add	r2, r3, #1
     8d4:	e50b2008 	str	r2, [fp, #-8]
     8d8:	e3a02000 	mov	r2, #0
     8dc:	e5c32000 	strb	r2, [r3]
     8e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8e4:	e2433001 	sub	r3, r3, #1
     8e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     8ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8f0:	e3530000 	cmp	r3, #0
     8f4:	cafffff4 	bgt	8cc <strncpy+0x70>
     8f8:	e51b3010 	ldr	r3, [fp, #-16]
     8fc:	e1a00003 	mov	r0, r3
     900:	e28bd000 	add	sp, fp, #0
     904:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <xchg>:
     90c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     910:	e28db000 	add	fp, sp, #0
     914:	e24dd014 	sub	sp, sp, #20
     918:	e50b0010 	str	r0, [fp, #-16]
     91c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     920:	e51b2010 	ldr	r2, [fp, #-16]
     924:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     928:	e1023091 	swp	r3, r1, [r2]
     92c:	e50b3008 	str	r3, [fp, #-8]
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e1a00003 	mov	r0, r3
     938:	e28bd000 	add	sp, fp, #0
     93c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <initiateLock>:
     944:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     948:	e28db000 	add	fp, sp, #0
     94c:	e24dd00c 	sub	sp, sp, #12
     950:	e50b0008 	str	r0, [fp, #-8]
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e3a02000 	mov	r2, #0
     95c:	e5832000 	str	r2, [r3]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e3a02001 	mov	r2, #1
     968:	e5832004 	str	r2, [r3, #4]
     96c:	e1a00000 	nop			@ (mov r0, r0)
     970:	e28bd000 	add	sp, fp, #0
     974:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <acquireLock>:
     97c:	e92d4800 	push	{fp, lr}
     980:	e28db004 	add	fp, sp, #4
     984:	e24dd008 	sub	sp, sp, #8
     988:	e50b0008 	str	r0, [fp, #-8]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933004 	ldr	r3, [r3, #4]
     994:	e3530000 	cmp	r3, #0
     998:	0a000008 	beq	9c0 <acquireLock+0x44>
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e3a01001 	mov	r1, #1
     9a8:	e1a00003 	mov	r0, r3
     9ac:	ebffffd6 	bl	90c <xchg>
     9b0:	e1a03000 	mov	r3, r0
     9b4:	e3530000 	cmp	r3, #0
     9b8:	1afffff8 	bne	9a0 <acquireLock+0x24>
     9bc:	ea000000 	b	9c4 <acquireLock+0x48>
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	e24bd004 	sub	sp, fp, #4
     9c8:	e8bd8800 	pop	{fp, pc}

000009cc <releaseLock>:
     9cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9d0:	e28db000 	add	fp, sp, #0
     9d4:	e24dd00c 	sub	sp, sp, #12
     9d8:	e50b0008 	str	r0, [fp, #-8]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e5933004 	ldr	r3, [r3, #4]
     9e4:	e3530000 	cmp	r3, #0
     9e8:	0a000006 	beq	a08 <releaseLock+0x3c>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e5933000 	ldr	r3, [r3]
     9f4:	e3530001 	cmp	r3, #1
     9f8:	1a000002 	bne	a08 <releaseLock+0x3c>
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e3a02000 	mov	r2, #0
     a04:	e5832000 	str	r2, [r3]
     a08:	e1a00000 	nop			@ (mov r0, r0)
     a0c:	e28bd000 	add	sp, fp, #0
     a10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <initiateCondVar>:
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd008 	sub	sp, sp, #8
     a24:	e50b0008 	str	r0, [fp, #-8]
     a28:	eb0001b8 	bl	1110 <getChannel>
     a2c:	e1a02000 	mov	r2, r0
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5832000 	str	r2, [r3]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e3a02001 	mov	r2, #1
     a40:	e5832004 	str	r2, [r3, #4]
     a44:	e1a00000 	nop			@ (mov r0, r0)
     a48:	e24bd004 	sub	sp, fp, #4
     a4c:	e8bd8800 	pop	{fp, pc}

00000a50 <condWait>:
     a50:	e92d4800 	push	{fp, lr}
     a54:	e28db004 	add	fp, sp, #4
     a58:	e24dd008 	sub	sp, sp, #8
     a5c:	e50b0008 	str	r0, [fp, #-8]
     a60:	e50b100c 	str	r1, [fp, #-12]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e5933004 	ldr	r3, [r3, #4]
     a6c:	e3530000 	cmp	r3, #0
     a70:	0a00000c 	beq	aa8 <condWait+0x58>
     a74:	e51b300c 	ldr	r3, [fp, #-12]
     a78:	e5933004 	ldr	r3, [r3, #4]
     a7c:	e3530000 	cmp	r3, #0
     a80:	0a000008 	beq	aa8 <condWait+0x58>
     a84:	e51b000c 	ldr	r0, [fp, #-12]
     a88:	ebffffcf 	bl	9cc <releaseLock>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5933000 	ldr	r3, [r3]
     a94:	e1a00003 	mov	r0, r3
     a98:	eb000193 	bl	10ec <sleepChan>
     a9c:	e51b000c 	ldr	r0, [fp, #-12]
     aa0:	ebffffb5 	bl	97c <acquireLock>
     aa4:	ea000000 	b	aac <condWait+0x5c>
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}

00000ab4 <broadcast>:
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd008 	sub	sp, sp, #8
     ac0:	e50b0008 	str	r0, [fp, #-8]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e5933004 	ldr	r3, [r3, #4]
     acc:	e3530000 	cmp	r3, #0
     ad0:	0a000004 	beq	ae8 <broadcast+0x34>
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb000193 	bl	1134 <sigChan>
     ae4:	ea000000 	b	aec <broadcast+0x38>
     ae8:	e1a00000 	nop			@ (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}

00000af4 <signal>:
     af4:	e92d4800 	push	{fp, lr}
     af8:	e28db004 	add	fp, sp, #4
     afc:	e24dd008 	sub	sp, sp, #8
     b00:	e50b0008 	str	r0, [fp, #-8]
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e5933004 	ldr	r3, [r3, #4]
     b0c:	e3530000 	cmp	r3, #0
     b10:	0a000004 	beq	b28 <signal+0x34>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e5933000 	ldr	r3, [r3]
     b1c:	e1a00003 	mov	r0, r3
     b20:	eb00018c 	bl	1158 <sigOneChan>
     b24:	ea000000 	b	b2c <signal+0x38>
     b28:	e1a00000 	nop			@ (mov r0, r0)
     b2c:	e24bd004 	sub	sp, fp, #4
     b30:	e8bd8800 	pop	{fp, pc}

00000b34 <semInit>:
     b34:	e92d4800 	push	{fp, lr}
     b38:	e28db004 	add	fp, sp, #4
     b3c:	e24dd008 	sub	sp, sp, #8
     b40:	e50b0008 	str	r0, [fp, #-8]
     b44:	e50b100c 	str	r1, [fp, #-12]
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e2833004 	add	r3, r3, #4
     b50:	e1a00003 	mov	r0, r3
     b54:	ebffff7a 	bl	944 <initiateLock>
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e283300c 	add	r3, r3, #12
     b60:	e1a00003 	mov	r0, r3
     b64:	ebffffab 	bl	a18 <initiateCondVar>
     b68:	e51b3008 	ldr	r3, [fp, #-8]
     b6c:	e51b200c 	ldr	r2, [fp, #-12]
     b70:	e5832000 	str	r2, [r3]
     b74:	e51b3008 	ldr	r3, [fp, #-8]
     b78:	e3a02001 	mov	r2, #1
     b7c:	e5832014 	str	r2, [r3, #20]
     b80:	e1a00000 	nop			@ (mov r0, r0)
     b84:	e24bd004 	sub	sp, fp, #4
     b88:	e8bd8800 	pop	{fp, pc}

00000b8c <semUp>:
     b8c:	e92d4800 	push	{fp, lr}
     b90:	e28db004 	add	fp, sp, #4
     b94:	e24dd008 	sub	sp, sp, #8
     b98:	e50b0008 	str	r0, [fp, #-8]
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e1a00003 	mov	r0, r3
     ba8:	ebffff73 	bl	97c <acquireLock>
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e5933000 	ldr	r3, [r3]
     bb4:	e2832001 	add	r2, r3, #1
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e5832000 	str	r2, [r3]
     bc0:	e51b3008 	ldr	r3, [fp, #-8]
     bc4:	e283300c 	add	r3, r3, #12
     bc8:	e1a00003 	mov	r0, r3
     bcc:	ebffffc8 	bl	af4 <signal>
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e2833004 	add	r3, r3, #4
     bd8:	e1a00003 	mov	r0, r3
     bdc:	ebffff7a 	bl	9cc <releaseLock>
     be0:	e1a00000 	nop			@ (mov r0, r0)
     be4:	e24bd004 	sub	sp, fp, #4
     be8:	e8bd8800 	pop	{fp, pc}

00000bec <semDown>:
     bec:	e92d4800 	push	{fp, lr}
     bf0:	e28db004 	add	fp, sp, #4
     bf4:	e24dd008 	sub	sp, sp, #8
     bf8:	e50b0008 	str	r0, [fp, #-8]
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e2833004 	add	r3, r3, #4
     c04:	e1a00003 	mov	r0, r3
     c08:	ebffff5b 	bl	97c <acquireLock>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e2432001 	sub	r2, r3, #1
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e5832000 	str	r2, [r3]
     c20:	ea000006 	b	c40 <semDown+0x54>
     c24:	e51b3008 	ldr	r3, [fp, #-8]
     c28:	e283200c 	add	r2, r3, #12
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e2833004 	add	r3, r3, #4
     c34:	e1a01003 	mov	r1, r3
     c38:	e1a00002 	mov	r0, r2
     c3c:	ebffff83 	bl	a50 <condWait>
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e5933000 	ldr	r3, [r3]
     c48:	e3530000 	cmp	r3, #0
     c4c:	bafffff4 	blt	c24 <semDown+0x38>
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e2833004 	add	r3, r3, #4
     c58:	e1a00003 	mov	r0, r3
     c5c:	ebffff5a 	bl	9cc <releaseLock>
     c60:	e1a00000 	nop			@ (mov r0, r0)
     c64:	e24bd004 	sub	sp, fp, #4
     c68:	e8bd8800 	pop	{fp, pc}

00000c6c <fork>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00001 	mov	r0, #1
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <exit>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00002 	mov	r0, #2
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <wait>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00003 	mov	r0, #3
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <pipe>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00004 	mov	r0, #4
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <read>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00005 	mov	r0, #5
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <write>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00010 	mov	r0, #16
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <close>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00015 	mov	r0, #21
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <kill>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00006 	mov	r0, #6
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <exec>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00007 	mov	r0, #7
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <open>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a0000f 	mov	r0, #15
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <mknod>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00011 	mov	r0, #17
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <unlink>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00012 	mov	r0, #18
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <fstat>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00008 	mov	r0, #8
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <link>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00013 	mov	r0, #19
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <mkdir>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00014 	mov	r0, #20
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <chdir>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00009 	mov	r0, #9
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <dup>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a0000a 	mov	r0, #10
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <getpid>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a0000b 	mov	r0, #11
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <sbrk>:
     ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef8:	e1a04003 	mov	r4, r3
     efc:	e1a03002 	mov	r3, r2
     f00:	e1a02001 	mov	r2, r1
     f04:	e1a01000 	mov	r1, r0
     f08:	e3a0000c 	mov	r0, #12
     f0c:	ef000000 	svc	0x00000000
     f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f14:	e12fff1e 	bx	lr

00000f18 <sleep>:
     f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f1c:	e1a04003 	mov	r4, r3
     f20:	e1a03002 	mov	r3, r2
     f24:	e1a02001 	mov	r2, r1
     f28:	e1a01000 	mov	r1, r0
     f2c:	e3a0000d 	mov	r0, #13
     f30:	ef000000 	svc	0x00000000
     f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <uptime>:
     f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f40:	e1a04003 	mov	r4, r3
     f44:	e1a03002 	mov	r3, r2
     f48:	e1a02001 	mov	r2, r1
     f4c:	e1a01000 	mov	r1, r0
     f50:	e3a0000e 	mov	r0, #14
     f54:	ef000000 	svc	0x00000000
     f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f5c:	e12fff1e 	bx	lr

00000f60 <proclist>:
     f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f64:	e1a04003 	mov	r4, r3
     f68:	e1a03002 	mov	r3, r2
     f6c:	e1a02001 	mov	r2, r1
     f70:	e1a01000 	mov	r1, r0
     f74:	e3a00016 	mov	r0, #22
     f78:	ef000000 	svc	0x00000000
     f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f80:	e12fff1e 	bx	lr

00000f84 <settickets>:
     f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f88:	e1a04003 	mov	r4, r3
     f8c:	e1a03002 	mov	r3, r2
     f90:	e1a02001 	mov	r2, r1
     f94:	e1a01000 	mov	r1, r0
     f98:	e3a00017 	mov	r0, #23
     f9c:	ef000000 	svc	0x00000000
     fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa4:	e12fff1e 	bx	lr

00000fa8 <srand>:
     fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fac:	e1a04003 	mov	r4, r3
     fb0:	e1a03002 	mov	r3, r2
     fb4:	e1a02001 	mov	r2, r1
     fb8:	e1a01000 	mov	r1, r0
     fbc:	e3a00018 	mov	r0, #24
     fc0:	ef000000 	svc	0x00000000
     fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc8:	e12fff1e 	bx	lr

00000fcc <getpinfo>:
     fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd0:	e1a04003 	mov	r4, r3
     fd4:	e1a03002 	mov	r3, r2
     fd8:	e1a02001 	mov	r2, r1
     fdc:	e1a01000 	mov	r1, r0
     fe0:	e3a00019 	mov	r0, #25
     fe4:	ef000000 	svc	0x00000000
     fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fec:	e12fff1e 	bx	lr

00000ff0 <print_pt>:
     ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff4:	e1a04003 	mov	r4, r3
     ff8:	e1a03002 	mov	r3, r2
     ffc:	e1a02001 	mov	r2, r1
    1000:	e1a01000 	mov	r1, r0
    1004:	e3a0001f 	mov	r0, #31
    1008:	ef000000 	svc	0x00000000
    100c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1010:	e12fff1e 	bx	lr

00001014 <thread_create>:
    1014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1018:	e1a04003 	mov	r4, r3
    101c:	e1a03002 	mov	r3, r2
    1020:	e1a02001 	mov	r2, r1
    1024:	e1a01000 	mov	r1, r0
    1028:	e3a00020 	mov	r0, #32
    102c:	ef000000 	svc	0x00000000
    1030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1034:	e12fff1e 	bx	lr

00001038 <thread_exit>:
    1038:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    103c:	e1a04003 	mov	r4, r3
    1040:	e1a03002 	mov	r3, r2
    1044:	e1a02001 	mov	r2, r1
    1048:	e1a01000 	mov	r1, r0
    104c:	e3a00021 	mov	r0, #33	@ 0x21
    1050:	ef000000 	svc	0x00000000
    1054:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <thread_join>:
    105c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1060:	e1a04003 	mov	r4, r3
    1064:	e1a03002 	mov	r3, r2
    1068:	e1a02001 	mov	r2, r1
    106c:	e1a01000 	mov	r1, r0
    1070:	e3a00022 	mov	r0, #34	@ 0x22
    1074:	ef000000 	svc	0x00000000
    1078:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    107c:	e12fff1e 	bx	lr

00001080 <waitpid>:
    1080:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1084:	e1a04003 	mov	r4, r3
    1088:	e1a03002 	mov	r3, r2
    108c:	e1a02001 	mov	r2, r1
    1090:	e1a01000 	mov	r1, r0
    1094:	e3a00023 	mov	r0, #35	@ 0x23
    1098:	ef000000 	svc	0x00000000
    109c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a0:	e12fff1e 	bx	lr

000010a4 <barrier_init>:
    10a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a8:	e1a04003 	mov	r4, r3
    10ac:	e1a03002 	mov	r3, r2
    10b0:	e1a02001 	mov	r2, r1
    10b4:	e1a01000 	mov	r1, r0
    10b8:	e3a00024 	mov	r0, #36	@ 0x24
    10bc:	ef000000 	svc	0x00000000
    10c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c4:	e12fff1e 	bx	lr

000010c8 <barrier_check>:
    10c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10cc:	e1a04003 	mov	r4, r3
    10d0:	e1a03002 	mov	r3, r2
    10d4:	e1a02001 	mov	r2, r1
    10d8:	e1a01000 	mov	r1, r0
    10dc:	e3a00025 	mov	r0, #37	@ 0x25
    10e0:	ef000000 	svc	0x00000000
    10e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e8:	e12fff1e 	bx	lr

000010ec <sleepChan>:
    10ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f0:	e1a04003 	mov	r4, r3
    10f4:	e1a03002 	mov	r3, r2
    10f8:	e1a02001 	mov	r2, r1
    10fc:	e1a01000 	mov	r1, r0
    1100:	e3a00026 	mov	r0, #38	@ 0x26
    1104:	ef000000 	svc	0x00000000
    1108:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    110c:	e12fff1e 	bx	lr

00001110 <getChannel>:
    1110:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1114:	e1a04003 	mov	r4, r3
    1118:	e1a03002 	mov	r3, r2
    111c:	e1a02001 	mov	r2, r1
    1120:	e1a01000 	mov	r1, r0
    1124:	e3a00027 	mov	r0, #39	@ 0x27
    1128:	ef000000 	svc	0x00000000
    112c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1130:	e12fff1e 	bx	lr

00001134 <sigChan>:
    1134:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1138:	e1a04003 	mov	r4, r3
    113c:	e1a03002 	mov	r3, r2
    1140:	e1a02001 	mov	r2, r1
    1144:	e1a01000 	mov	r1, r0
    1148:	e3a00028 	mov	r0, #40	@ 0x28
    114c:	ef000000 	svc	0x00000000
    1150:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1154:	e12fff1e 	bx	lr

00001158 <sigOneChan>:
    1158:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    115c:	e1a04003 	mov	r4, r3
    1160:	e1a03002 	mov	r3, r2
    1164:	e1a02001 	mov	r2, r1
    1168:	e1a01000 	mov	r1, r0
    116c:	e3a00029 	mov	r0, #41	@ 0x29
    1170:	ef000000 	svc	0x00000000
    1174:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1178:	e12fff1e 	bx	lr

0000117c <symlink>:
    117c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1180:	e1a04003 	mov	r4, r3
    1184:	e1a03002 	mov	r3, r2
    1188:	e1a02001 	mov	r2, r1
    118c:	e1a01000 	mov	r1, r0
    1190:	e3a0002a 	mov	r0, #42	@ 0x2a
    1194:	ef000000 	svc	0x00000000
    1198:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    119c:	e12fff1e 	bx	lr

000011a0 <syscall>:
    11a0:	ef000000 	svc	0x00000000
    11a4:	e12fff1e 	bx	lr

000011a8 <putc>:
    11a8:	e92d4800 	push	{fp, lr}
    11ac:	e28db004 	add	fp, sp, #4
    11b0:	e24dd008 	sub	sp, sp, #8
    11b4:	e50b0008 	str	r0, [fp, #-8]
    11b8:	e1a03001 	mov	r3, r1
    11bc:	e54b3009 	strb	r3, [fp, #-9]
    11c0:	e24b3009 	sub	r3, fp, #9
    11c4:	e3a02001 	mov	r2, #1
    11c8:	e1a01003 	mov	r1, r3
    11cc:	e51b0008 	ldr	r0, [fp, #-8]
    11d0:	ebfffed2 	bl	d20 <write>
    11d4:	e1a00000 	nop			@ (mov r0, r0)
    11d8:	e24bd004 	sub	sp, fp, #4
    11dc:	e8bd8800 	pop	{fp, pc}

000011e0 <printint>:
    11e0:	e92d4800 	push	{fp, lr}
    11e4:	e28db004 	add	fp, sp, #4
    11e8:	e24dd030 	sub	sp, sp, #48	@ 0x30
    11ec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    11f0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    11f4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    11f8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    11fc:	e3a03000 	mov	r3, #0
    1200:	e50b300c 	str	r3, [fp, #-12]
    1204:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1208:	e3530000 	cmp	r3, #0
    120c:	0a000008 	beq	1234 <printint+0x54>
    1210:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1214:	e3530000 	cmp	r3, #0
    1218:	aa000005 	bge	1234 <printint+0x54>
    121c:	e3a03001 	mov	r3, #1
    1220:	e50b300c 	str	r3, [fp, #-12]
    1224:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1228:	e2633000 	rsb	r3, r3, #0
    122c:	e50b3010 	str	r3, [fp, #-16]
    1230:	ea000001 	b	123c <printint+0x5c>
    1234:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1238:	e50b3010 	str	r3, [fp, #-16]
    123c:	e3a03000 	mov	r3, #0
    1240:	e50b3008 	str	r3, [fp, #-8]
    1244:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1248:	e51b3010 	ldr	r3, [fp, #-16]
    124c:	e1a01002 	mov	r1, r2
    1250:	e1a00003 	mov	r0, r3
    1254:	eb0001d5 	bl	19b0 <__aeabi_uidivmod>
    1258:	e1a03001 	mov	r3, r1
    125c:	e1a01003 	mov	r1, r3
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e2832001 	add	r2, r3, #1
    1268:	e50b2008 	str	r2, [fp, #-8]
    126c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1314 <printint+0x134>
    1270:	e7d22001 	ldrb	r2, [r2, r1]
    1274:	e2433004 	sub	r3, r3, #4
    1278:	e083300b 	add	r3, r3, fp
    127c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1280:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1284:	e1a01003 	mov	r1, r3
    1288:	e51b0010 	ldr	r0, [fp, #-16]
    128c:	eb00018a 	bl	18bc <__udivsi3>
    1290:	e1a03000 	mov	r3, r0
    1294:	e50b3010 	str	r3, [fp, #-16]
    1298:	e51b3010 	ldr	r3, [fp, #-16]
    129c:	e3530000 	cmp	r3, #0
    12a0:	1affffe7 	bne	1244 <printint+0x64>
    12a4:	e51b300c 	ldr	r3, [fp, #-12]
    12a8:	e3530000 	cmp	r3, #0
    12ac:	0a00000e 	beq	12ec <printint+0x10c>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e2832001 	add	r2, r3, #1
    12b8:	e50b2008 	str	r2, [fp, #-8]
    12bc:	e2433004 	sub	r3, r3, #4
    12c0:	e083300b 	add	r3, r3, fp
    12c4:	e3a0202d 	mov	r2, #45	@ 0x2d
    12c8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12cc:	ea000006 	b	12ec <printint+0x10c>
    12d0:	e24b2020 	sub	r2, fp, #32
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e0823003 	add	r3, r2, r3
    12dc:	e5d33000 	ldrb	r3, [r3]
    12e0:	e1a01003 	mov	r1, r3
    12e4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    12e8:	ebffffae 	bl	11a8 <putc>
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e2433001 	sub	r3, r3, #1
    12f4:	e50b3008 	str	r3, [fp, #-8]
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e3530000 	cmp	r3, #0
    1300:	aafffff2 	bge	12d0 <printint+0xf0>
    1304:	e1a00000 	nop			@ (mov r0, r0)
    1308:	e1a00000 	nop			@ (mov r0, r0)
    130c:	e24bd004 	sub	sp, fp, #4
    1310:	e8bd8800 	pop	{fp, pc}
    1314:	00001bc4 	.word	0x00001bc4

00001318 <printf>:
    1318:	e92d000e 	push	{r1, r2, r3}
    131c:	e92d4800 	push	{fp, lr}
    1320:	e28db004 	add	fp, sp, #4
    1324:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1328:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    132c:	e3a03000 	mov	r3, #0
    1330:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1334:	e28b3008 	add	r3, fp, #8
    1338:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    133c:	e3a03000 	mov	r3, #0
    1340:	e50b3010 	str	r3, [fp, #-16]
    1344:	ea000074 	b	151c <printf+0x204>
    1348:	e59b2004 	ldr	r2, [fp, #4]
    134c:	e51b3010 	ldr	r3, [fp, #-16]
    1350:	e0823003 	add	r3, r2, r3
    1354:	e5d33000 	ldrb	r3, [r3]
    1358:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    135c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1360:	e3530000 	cmp	r3, #0
    1364:	1a00000b 	bne	1398 <printf+0x80>
    1368:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    136c:	e3530025 	cmp	r3, #37	@ 0x25
    1370:	1a000002 	bne	1380 <printf+0x68>
    1374:	e3a03025 	mov	r3, #37	@ 0x25
    1378:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    137c:	ea000063 	b	1510 <printf+0x1f8>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e6ef3073 	uxtb	r3, r3
    1388:	e1a01003 	mov	r1, r3
    138c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1390:	ebffff84 	bl	11a8 <putc>
    1394:	ea00005d 	b	1510 <printf+0x1f8>
    1398:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    139c:	e3530025 	cmp	r3, #37	@ 0x25
    13a0:	1a00005a 	bne	1510 <printf+0x1f8>
    13a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13a8:	e3530064 	cmp	r3, #100	@ 0x64
    13ac:	1a00000a 	bne	13dc <printf+0xc4>
    13b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13b4:	e5933000 	ldr	r3, [r3]
    13b8:	e1a01003 	mov	r1, r3
    13bc:	e3a03001 	mov	r3, #1
    13c0:	e3a0200a 	mov	r2, #10
    13c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13c8:	ebffff84 	bl	11e0 <printint>
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e2833004 	add	r3, r3, #4
    13d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13d8:	ea00004a 	b	1508 <printf+0x1f0>
    13dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13e0:	e3530078 	cmp	r3, #120	@ 0x78
    13e4:	0a000002 	beq	13f4 <printf+0xdc>
    13e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13ec:	e3530070 	cmp	r3, #112	@ 0x70
    13f0:	1a00000a 	bne	1420 <printf+0x108>
    13f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e1a01003 	mov	r1, r3
    1400:	e3a03000 	mov	r3, #0
    1404:	e3a02010 	mov	r2, #16
    1408:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    140c:	ebffff73 	bl	11e0 <printint>
    1410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1414:	e2833004 	add	r3, r3, #4
    1418:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    141c:	ea000039 	b	1508 <printf+0x1f0>
    1420:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1424:	e3530073 	cmp	r3, #115	@ 0x73
    1428:	1a000018 	bne	1490 <printf+0x178>
    142c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e50b300c 	str	r3, [fp, #-12]
    1438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    143c:	e2833004 	add	r3, r3, #4
    1440:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1444:	e51b300c 	ldr	r3, [fp, #-12]
    1448:	e3530000 	cmp	r3, #0
    144c:	1a00000a 	bne	147c <printf+0x164>
    1450:	e59f30f4 	ldr	r3, [pc, #244]	@ 154c <printf+0x234>
    1454:	e50b300c 	str	r3, [fp, #-12]
    1458:	ea000007 	b	147c <printf+0x164>
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5d33000 	ldrb	r3, [r3]
    1464:	e1a01003 	mov	r1, r3
    1468:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    146c:	ebffff4d 	bl	11a8 <putc>
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e2833001 	add	r3, r3, #1
    1478:	e50b300c 	str	r3, [fp, #-12]
    147c:	e51b300c 	ldr	r3, [fp, #-12]
    1480:	e5d33000 	ldrb	r3, [r3]
    1484:	e3530000 	cmp	r3, #0
    1488:	1afffff3 	bne	145c <printf+0x144>
    148c:	ea00001d 	b	1508 <printf+0x1f0>
    1490:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1494:	e3530063 	cmp	r3, #99	@ 0x63
    1498:	1a000009 	bne	14c4 <printf+0x1ac>
    149c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a0:	e5933000 	ldr	r3, [r3]
    14a4:	e6ef3073 	uxtb	r3, r3
    14a8:	e1a01003 	mov	r1, r3
    14ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14b0:	ebffff3c 	bl	11a8 <putc>
    14b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14b8:	e2833004 	add	r3, r3, #4
    14bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14c0:	ea000010 	b	1508 <printf+0x1f0>
    14c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14c8:	e3530025 	cmp	r3, #37	@ 0x25
    14cc:	1a000005 	bne	14e8 <printf+0x1d0>
    14d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14d4:	e6ef3073 	uxtb	r3, r3
    14d8:	e1a01003 	mov	r1, r3
    14dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14e0:	ebffff30 	bl	11a8 <putc>
    14e4:	ea000007 	b	1508 <printf+0x1f0>
    14e8:	e3a01025 	mov	r1, #37	@ 0x25
    14ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14f0:	ebffff2c 	bl	11a8 <putc>
    14f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14f8:	e6ef3073 	uxtb	r3, r3
    14fc:	e1a01003 	mov	r1, r3
    1500:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1504:	ebffff27 	bl	11a8 <putc>
    1508:	e3a03000 	mov	r3, #0
    150c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1510:	e51b3010 	ldr	r3, [fp, #-16]
    1514:	e2833001 	add	r3, r3, #1
    1518:	e50b3010 	str	r3, [fp, #-16]
    151c:	e59b2004 	ldr	r2, [fp, #4]
    1520:	e51b3010 	ldr	r3, [fp, #-16]
    1524:	e0823003 	add	r3, r2, r3
    1528:	e5d33000 	ldrb	r3, [r3]
    152c:	e3530000 	cmp	r3, #0
    1530:	1affff84 	bne	1348 <printf+0x30>
    1534:	e1a00000 	nop			@ (mov r0, r0)
    1538:	e1a00000 	nop			@ (mov r0, r0)
    153c:	e24bd004 	sub	sp, fp, #4
    1540:	e8bd4800 	pop	{fp, lr}
    1544:	e28dd00c 	add	sp, sp, #12
    1548:	e12fff1e 	bx	lr
    154c:	00001bb8 	.word	0x00001bb8

00001550 <free>:
    1550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1554:	e28db000 	add	fp, sp, #0
    1558:	e24dd014 	sub	sp, sp, #20
    155c:	e50b0010 	str	r0, [fp, #-16]
    1560:	e51b3010 	ldr	r3, [fp, #-16]
    1564:	e2433008 	sub	r3, r3, #8
    1568:	e50b300c 	str	r3, [fp, #-12]
    156c:	e59f3154 	ldr	r3, [pc, #340]	@ 16c8 <free+0x178>
    1570:	e5933000 	ldr	r3, [r3]
    1574:	e50b3008 	str	r3, [fp, #-8]
    1578:	ea000010 	b	15c0 <free+0x70>
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5933000 	ldr	r3, [r3]
    1584:	e51b2008 	ldr	r2, [fp, #-8]
    1588:	e1520003 	cmp	r2, r3
    158c:	3a000008 	bcc	15b4 <free+0x64>
    1590:	e51b200c 	ldr	r2, [fp, #-12]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e1520003 	cmp	r2, r3
    159c:	8a000010 	bhi	15e4 <free+0x94>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5933000 	ldr	r3, [r3]
    15a8:	e51b200c 	ldr	r2, [fp, #-12]
    15ac:	e1520003 	cmp	r2, r3
    15b0:	3a00000b 	bcc	15e4 <free+0x94>
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5933000 	ldr	r3, [r3]
    15bc:	e50b3008 	str	r3, [fp, #-8]
    15c0:	e51b200c 	ldr	r2, [fp, #-12]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e1520003 	cmp	r2, r3
    15cc:	9affffea 	bls	157c <free+0x2c>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e5933000 	ldr	r3, [r3]
    15d8:	e51b200c 	ldr	r2, [fp, #-12]
    15dc:	e1520003 	cmp	r2, r3
    15e0:	2affffe5 	bcs	157c <free+0x2c>
    15e4:	e51b300c 	ldr	r3, [fp, #-12]
    15e8:	e5933004 	ldr	r3, [r3, #4]
    15ec:	e1a03183 	lsl	r3, r3, #3
    15f0:	e51b200c 	ldr	r2, [fp, #-12]
    15f4:	e0822003 	add	r2, r2, r3
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e5933000 	ldr	r3, [r3]
    1600:	e1520003 	cmp	r2, r3
    1604:	1a00000d 	bne	1640 <free+0xf0>
    1608:	e51b300c 	ldr	r3, [fp, #-12]
    160c:	e5932004 	ldr	r2, [r3, #4]
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5933000 	ldr	r3, [r3]
    1618:	e5933004 	ldr	r3, [r3, #4]
    161c:	e0822003 	add	r2, r2, r3
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5832004 	str	r2, [r3, #4]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e5933000 	ldr	r3, [r3]
    1630:	e5932000 	ldr	r2, [r3]
    1634:	e51b300c 	ldr	r3, [fp, #-12]
    1638:	e5832000 	str	r2, [r3]
    163c:	ea000003 	b	1650 <free+0x100>
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e5932000 	ldr	r2, [r3]
    1648:	e51b300c 	ldr	r3, [fp, #-12]
    164c:	e5832000 	str	r2, [r3]
    1650:	e51b3008 	ldr	r3, [fp, #-8]
    1654:	e5933004 	ldr	r3, [r3, #4]
    1658:	e1a03183 	lsl	r3, r3, #3
    165c:	e51b2008 	ldr	r2, [fp, #-8]
    1660:	e0823003 	add	r3, r2, r3
    1664:	e51b200c 	ldr	r2, [fp, #-12]
    1668:	e1520003 	cmp	r2, r3
    166c:	1a00000b 	bne	16a0 <free+0x150>
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5932004 	ldr	r2, [r3, #4]
    1678:	e51b300c 	ldr	r3, [fp, #-12]
    167c:	e5933004 	ldr	r3, [r3, #4]
    1680:	e0822003 	add	r2, r2, r3
    1684:	e51b3008 	ldr	r3, [fp, #-8]
    1688:	e5832004 	str	r2, [r3, #4]
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e5932000 	ldr	r2, [r3]
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e5832000 	str	r2, [r3]
    169c:	ea000002 	b	16ac <free+0x15c>
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e51b200c 	ldr	r2, [fp, #-12]
    16a8:	e5832000 	str	r2, [r3]
    16ac:	e59f2014 	ldr	r2, [pc, #20]	@ 16c8 <free+0x178>
    16b0:	e51b3008 	ldr	r3, [fp, #-8]
    16b4:	e5823000 	str	r3, [r2]
    16b8:	e1a00000 	nop			@ (mov r0, r0)
    16bc:	e28bd000 	add	sp, fp, #0
    16c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16c4:	e12fff1e 	bx	lr
    16c8:	00001be0 	.word	0x00001be0

000016cc <morecore>:
    16cc:	e92d4800 	push	{fp, lr}
    16d0:	e28db004 	add	fp, sp, #4
    16d4:	e24dd010 	sub	sp, sp, #16
    16d8:	e50b0010 	str	r0, [fp, #-16]
    16dc:	e51b3010 	ldr	r3, [fp, #-16]
    16e0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    16e4:	2a000001 	bcs	16f0 <morecore+0x24>
    16e8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    16ec:	e50b3010 	str	r3, [fp, #-16]
    16f0:	e51b3010 	ldr	r3, [fp, #-16]
    16f4:	e1a03183 	lsl	r3, r3, #3
    16f8:	e1a00003 	mov	r0, r3
    16fc:	ebfffdfc 	bl	ef4 <sbrk>
    1700:	e50b0008 	str	r0, [fp, #-8]
    1704:	e51b3008 	ldr	r3, [fp, #-8]
    1708:	e3730001 	cmn	r3, #1
    170c:	1a000001 	bne	1718 <morecore+0x4c>
    1710:	e3a03000 	mov	r3, #0
    1714:	ea00000a 	b	1744 <morecore+0x78>
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e50b300c 	str	r3, [fp, #-12]
    1720:	e51b300c 	ldr	r3, [fp, #-12]
    1724:	e51b2010 	ldr	r2, [fp, #-16]
    1728:	e5832004 	str	r2, [r3, #4]
    172c:	e51b300c 	ldr	r3, [fp, #-12]
    1730:	e2833008 	add	r3, r3, #8
    1734:	e1a00003 	mov	r0, r3
    1738:	ebffff84 	bl	1550 <free>
    173c:	e59f300c 	ldr	r3, [pc, #12]	@ 1750 <morecore+0x84>
    1740:	e5933000 	ldr	r3, [r3]
    1744:	e1a00003 	mov	r0, r3
    1748:	e24bd004 	sub	sp, fp, #4
    174c:	e8bd8800 	pop	{fp, pc}
    1750:	00001be0 	.word	0x00001be0

00001754 <malloc>:
    1754:	e92d4800 	push	{fp, lr}
    1758:	e28db004 	add	fp, sp, #4
    175c:	e24dd018 	sub	sp, sp, #24
    1760:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1768:	e2833007 	add	r3, r3, #7
    176c:	e1a031a3 	lsr	r3, r3, #3
    1770:	e2833001 	add	r3, r3, #1
    1774:	e50b3010 	str	r3, [fp, #-16]
    1778:	e59f3134 	ldr	r3, [pc, #308]	@ 18b4 <malloc+0x160>
    177c:	e5933000 	ldr	r3, [r3]
    1780:	e50b300c 	str	r3, [fp, #-12]
    1784:	e51b300c 	ldr	r3, [fp, #-12]
    1788:	e3530000 	cmp	r3, #0
    178c:	1a00000b 	bne	17c0 <malloc+0x6c>
    1790:	e59f3120 	ldr	r3, [pc, #288]	@ 18b8 <malloc+0x164>
    1794:	e50b300c 	str	r3, [fp, #-12]
    1798:	e59f2114 	ldr	r2, [pc, #276]	@ 18b4 <malloc+0x160>
    179c:	e51b300c 	ldr	r3, [fp, #-12]
    17a0:	e5823000 	str	r3, [r2]
    17a4:	e59f3108 	ldr	r3, [pc, #264]	@ 18b4 <malloc+0x160>
    17a8:	e5933000 	ldr	r3, [r3]
    17ac:	e59f2104 	ldr	r2, [pc, #260]	@ 18b8 <malloc+0x164>
    17b0:	e5823000 	str	r3, [r2]
    17b4:	e59f30fc 	ldr	r3, [pc, #252]	@ 18b8 <malloc+0x164>
    17b8:	e3a02000 	mov	r2, #0
    17bc:	e5832004 	str	r2, [r3, #4]
    17c0:	e51b300c 	ldr	r3, [fp, #-12]
    17c4:	e5933000 	ldr	r3, [r3]
    17c8:	e50b3008 	str	r3, [fp, #-8]
    17cc:	e51b3008 	ldr	r3, [fp, #-8]
    17d0:	e5933004 	ldr	r3, [r3, #4]
    17d4:	e51b2010 	ldr	r2, [fp, #-16]
    17d8:	e1520003 	cmp	r2, r3
    17dc:	8a00001e 	bhi	185c <malloc+0x108>
    17e0:	e51b3008 	ldr	r3, [fp, #-8]
    17e4:	e5933004 	ldr	r3, [r3, #4]
    17e8:	e51b2010 	ldr	r2, [fp, #-16]
    17ec:	e1520003 	cmp	r2, r3
    17f0:	1a000004 	bne	1808 <malloc+0xb4>
    17f4:	e51b3008 	ldr	r3, [fp, #-8]
    17f8:	e5932000 	ldr	r2, [r3]
    17fc:	e51b300c 	ldr	r3, [fp, #-12]
    1800:	e5832000 	str	r2, [r3]
    1804:	ea00000e 	b	1844 <malloc+0xf0>
    1808:	e51b3008 	ldr	r3, [fp, #-8]
    180c:	e5932004 	ldr	r2, [r3, #4]
    1810:	e51b3010 	ldr	r3, [fp, #-16]
    1814:	e0422003 	sub	r2, r2, r3
    1818:	e51b3008 	ldr	r3, [fp, #-8]
    181c:	e5832004 	str	r2, [r3, #4]
    1820:	e51b3008 	ldr	r3, [fp, #-8]
    1824:	e5933004 	ldr	r3, [r3, #4]
    1828:	e1a03183 	lsl	r3, r3, #3
    182c:	e51b2008 	ldr	r2, [fp, #-8]
    1830:	e0823003 	add	r3, r2, r3
    1834:	e50b3008 	str	r3, [fp, #-8]
    1838:	e51b3008 	ldr	r3, [fp, #-8]
    183c:	e51b2010 	ldr	r2, [fp, #-16]
    1840:	e5832004 	str	r2, [r3, #4]
    1844:	e59f2068 	ldr	r2, [pc, #104]	@ 18b4 <malloc+0x160>
    1848:	e51b300c 	ldr	r3, [fp, #-12]
    184c:	e5823000 	str	r3, [r2]
    1850:	e51b3008 	ldr	r3, [fp, #-8]
    1854:	e2833008 	add	r3, r3, #8
    1858:	ea000012 	b	18a8 <malloc+0x154>
    185c:	e59f3050 	ldr	r3, [pc, #80]	@ 18b4 <malloc+0x160>
    1860:	e5933000 	ldr	r3, [r3]
    1864:	e51b2008 	ldr	r2, [fp, #-8]
    1868:	e1520003 	cmp	r2, r3
    186c:	1a000007 	bne	1890 <malloc+0x13c>
    1870:	e51b0010 	ldr	r0, [fp, #-16]
    1874:	ebffff94 	bl	16cc <morecore>
    1878:	e50b0008 	str	r0, [fp, #-8]
    187c:	e51b3008 	ldr	r3, [fp, #-8]
    1880:	e3530000 	cmp	r3, #0
    1884:	1a000001 	bne	1890 <malloc+0x13c>
    1888:	e3a03000 	mov	r3, #0
    188c:	ea000005 	b	18a8 <malloc+0x154>
    1890:	e51b3008 	ldr	r3, [fp, #-8]
    1894:	e50b300c 	str	r3, [fp, #-12]
    1898:	e51b3008 	ldr	r3, [fp, #-8]
    189c:	e5933000 	ldr	r3, [r3]
    18a0:	e50b3008 	str	r3, [fp, #-8]
    18a4:	eaffffc8 	b	17cc <malloc+0x78>
    18a8:	e1a00003 	mov	r0, r3
    18ac:	e24bd004 	sub	sp, fp, #4
    18b0:	e8bd8800 	pop	{fp, pc}
    18b4:	00001be0 	.word	0x00001be0
    18b8:	00001bd8 	.word	0x00001bd8

000018bc <__udivsi3>:
    18bc:	e2512001 	subs	r2, r1, #1
    18c0:	012fff1e 	bxeq	lr
    18c4:	3a000036 	bcc	19a4 <__udivsi3+0xe8>
    18c8:	e1500001 	cmp	r0, r1
    18cc:	9a000022 	bls	195c <__udivsi3+0xa0>
    18d0:	e1110002 	tst	r1, r2
    18d4:	0a000023 	beq	1968 <__udivsi3+0xac>
    18d8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    18dc:	01a01181 	lsleq	r1, r1, #3
    18e0:	03a03008 	moveq	r3, #8
    18e4:	13a03001 	movne	r3, #1
    18e8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    18ec:	31510000 	cmpcc	r1, r0
    18f0:	31a01201 	lslcc	r1, r1, #4
    18f4:	31a03203 	lslcc	r3, r3, #4
    18f8:	3afffffa 	bcc	18e8 <__udivsi3+0x2c>
    18fc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1900:	31510000 	cmpcc	r1, r0
    1904:	31a01081 	lslcc	r1, r1, #1
    1908:	31a03083 	lslcc	r3, r3, #1
    190c:	3afffffa 	bcc	18fc <__udivsi3+0x40>
    1910:	e3a02000 	mov	r2, #0
    1914:	e1500001 	cmp	r0, r1
    1918:	20400001 	subcs	r0, r0, r1
    191c:	21822003 	orrcs	r2, r2, r3
    1920:	e15000a1 	cmp	r0, r1, lsr #1
    1924:	204000a1 	subcs	r0, r0, r1, lsr #1
    1928:	218220a3 	orrcs	r2, r2, r3, lsr #1
    192c:	e1500121 	cmp	r0, r1, lsr #2
    1930:	20400121 	subcs	r0, r0, r1, lsr #2
    1934:	21822123 	orrcs	r2, r2, r3, lsr #2
    1938:	e15001a1 	cmp	r0, r1, lsr #3
    193c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1940:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1944:	e3500000 	cmp	r0, #0
    1948:	11b03223 	lsrsne	r3, r3, #4
    194c:	11a01221 	lsrne	r1, r1, #4
    1950:	1affffef 	bne	1914 <__udivsi3+0x58>
    1954:	e1a00002 	mov	r0, r2
    1958:	e12fff1e 	bx	lr
    195c:	03a00001 	moveq	r0, #1
    1960:	13a00000 	movne	r0, #0
    1964:	e12fff1e 	bx	lr
    1968:	e3510801 	cmp	r1, #65536	@ 0x10000
    196c:	21a01821 	lsrcs	r1, r1, #16
    1970:	23a02010 	movcs	r2, #16
    1974:	33a02000 	movcc	r2, #0
    1978:	e3510c01 	cmp	r1, #256	@ 0x100
    197c:	21a01421 	lsrcs	r1, r1, #8
    1980:	22822008 	addcs	r2, r2, #8
    1984:	e3510010 	cmp	r1, #16
    1988:	21a01221 	lsrcs	r1, r1, #4
    198c:	22822004 	addcs	r2, r2, #4
    1990:	e3510004 	cmp	r1, #4
    1994:	82822003 	addhi	r2, r2, #3
    1998:	908220a1 	addls	r2, r2, r1, lsr #1
    199c:	e1a00230 	lsr	r0, r0, r2
    19a0:	e12fff1e 	bx	lr
    19a4:	e3500000 	cmp	r0, #0
    19a8:	13e00000 	mvnne	r0, #0
    19ac:	ea000007 	b	19d0 <__aeabi_idiv0>

000019b0 <__aeabi_uidivmod>:
    19b0:	e3510000 	cmp	r1, #0
    19b4:	0afffffa 	beq	19a4 <__udivsi3+0xe8>
    19b8:	e92d4003 	push	{r0, r1, lr}
    19bc:	ebffffbe 	bl	18bc <__udivsi3>
    19c0:	e8bd4006 	pop	{r1, r2, lr}
    19c4:	e0030092 	mul	r3, r2, r0
    19c8:	e0411003 	sub	r1, r1, r3
    19cc:	e12fff1e 	bx	lr

000019d0 <__aeabi_idiv0>:
    19d0:	e12fff1e 	bx	lr
