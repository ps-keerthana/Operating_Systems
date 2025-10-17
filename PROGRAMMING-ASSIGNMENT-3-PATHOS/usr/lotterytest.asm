
_lotterytest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
       c:	e24dd008 	sub	sp, sp, #8
      10:	e3a03000 	mov	r3, #0
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	ea000066 	b	1b8 <main+0x1b8>
      1c:	eb000293 	bl	a70 <fork>
      20:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
      28:	e3530000 	cmp	r3, #0
      2c:	1a00005e 	bne	1ac <main+0x1ac>
      30:	eb000327 	bl	cd4 <getpid>
      34:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e2833001 	add	r3, r3, #1
      40:	e1a01003 	mov	r1, r3
      44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
      48:	eb00034e 	bl	d88 <settickets>
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e3530000 	cmp	r3, #0
      54:	1a000009 	bne	80 <main+0x80>
      58:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
      5c:	e59f12f4 	ldr	r1, [pc, #756]	@ 358 <main+0x358>
      60:	e3a00001 	mov	r0, #1
      64:	eb0003c9 	bl	f90 <printf>
      68:	e3a00005 	mov	r0, #5
      6c:	eb00032a 	bl	d1c <sleep>
      70:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
      74:	e59f12e0 	ldr	r1, [pc, #736]	@ 35c <main+0x35c>
      78:	e3a00001 	mov	r0, #1
      7c:	eb0003c3 	bl	f90 <printf>
      80:	e3a03000 	mov	r3, #0
      84:	e50b300c 	str	r3, [fp, #-12]
      88:	ea000043 	b	19c <main+0x19c>
      8c:	e24b3e52 	sub	r3, fp, #1312	@ 0x520
      90:	e2433004 	sub	r3, r3, #4
      94:	e1a00003 	mov	r0, r3
      98:	eb00034c 	bl	dd0 <getpinfo>
      9c:	e1a03000 	mov	r3, r0
      a0:	e3530000 	cmp	r3, #0
      a4:	1a000037 	bne	188 <main+0x188>
      a8:	e3a03000 	mov	r3, #0
      ac:	e50b3010 	str	r3, [fp, #-16]
      b0:	ea000031 	b	17c <main+0x17c>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e1a03103 	lsl	r3, r3, #2
      bc:	e2433004 	sub	r3, r3, #4
      c0:	e083300b 	add	r3, r3, fp
      c4:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
      c8:	e3530000 	cmp	r3, #0
      cc:	0a000027 	beq	170 <main+0x170>
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e2833040 	add	r3, r3, #64	@ 0x40
      d8:	e1a03103 	lsl	r3, r3, #2
      dc:	e2433004 	sub	r3, r3, #4
      e0:	e083300b 	add	r3, r3, fp
      e4:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
      e8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
      ec:	e1520003 	cmp	r2, r3
      f0:	1a00001e 	bne	170 <main+0x170>
      f4:	e51b3010 	ldr	r3, [fp, #-16]
      f8:	e2833040 	add	r3, r3, #64	@ 0x40
      fc:	e1a03103 	lsl	r3, r3, #2
     100:	e2433004 	sub	r3, r3, #4
     104:	e083300b 	add	r3, r3, fp
     108:	e5131520 	ldr	r1, [r3, #-1312]	@ 0xfffffae0
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e2833080 	add	r3, r3, #128	@ 0x80
     114:	e1a03103 	lsl	r3, r3, #2
     118:	e2433004 	sub	r3, r3, #4
     11c:	e083300b 	add	r3, r3, fp
     120:	e5130520 	ldr	r0, [r3, #-1312]	@ 0xfffffae0
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2833c01 	add	r3, r3, #256	@ 0x100
     12c:	e1a03103 	lsl	r3, r3, #2
     130:	e2433004 	sub	r3, r3, #4
     134:	e083300b 	add	r3, r3, fp
     138:	e5132520 	ldr	r2, [r3, #-1312]	@ 0xfffffae0
     13c:	e51b3010 	ldr	r3, [fp, #-16]
     140:	e28330c0 	add	r3, r3, #192	@ 0xc0
     144:	e1a03103 	lsl	r3, r3, #2
     148:	e2433004 	sub	r3, r3, #4
     14c:	e083300b 	add	r3, r3, fp
     150:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     154:	e58d3004 	str	r3, [sp, #4]
     158:	e58d2000 	str	r2, [sp]
     15c:	e1a03000 	mov	r3, r0
     160:	e1a02001 	mov	r2, r1
     164:	e59f11f4 	ldr	r1, [pc, #500]	@ 360 <main+0x360>
     168:	e3a00001 	mov	r0, #1
     16c:	eb000387 	bl	f90 <printf>
     170:	e51b3010 	ldr	r3, [fp, #-16]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3010 	str	r3, [fp, #-16]
     17c:	e51b3010 	ldr	r3, [fp, #-16]
     180:	e353003f 	cmp	r3, #63	@ 0x3f
     184:	daffffca 	ble	b4 <main+0xb4>
     188:	e3a00001 	mov	r0, #1
     18c:	eb0002e2 	bl	d1c <sleep>
     190:	e51b300c 	ldr	r3, [fp, #-12]
     194:	e2833001 	add	r3, r3, #1
     198:	e50b300c 	str	r3, [fp, #-12]
     19c:	e51b300c 	ldr	r3, [fp, #-12]
     1a0:	e3530063 	cmp	r3, #99	@ 0x63
     1a4:	daffffb8 	ble	8c <main+0x8c>
     1a8:	eb000239 	bl	a94 <exit>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833001 	add	r3, r3, #1
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e3530001 	cmp	r3, #1
     1c0:	daffff95 	ble	1c <main+0x1c>
     1c4:	eb0002c2 	bl	cd4 <getpid>
     1c8:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     1cc:	e3a01005 	mov	r1, #5
     1d0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     1d4:	eb0002eb 	bl	d88 <settickets>
     1d8:	e3a03000 	mov	r3, #0
     1dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1e0:	ea00004b 	b	314 <main+0x314>
     1e4:	e24b3e52 	sub	r3, fp, #1312	@ 0x520
     1e8:	e2433004 	sub	r3, r3, #4
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb0002f6 	bl	dd0 <getpinfo>
     1f4:	e1a03000 	mov	r3, r0
     1f8:	e3530000 	cmp	r3, #0
     1fc:	1a00003f 	bne	300 <main+0x300>
     200:	e3a03000 	mov	r3, #0
     204:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     208:	ea000039 	b	2f4 <main+0x2f4>
     20c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     210:	e1a03103 	lsl	r3, r3, #2
     214:	e2433004 	sub	r3, r3, #4
     218:	e083300b 	add	r3, r3, fp
     21c:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     220:	e3530000 	cmp	r3, #0
     224:	0a00002f 	beq	2e8 <main+0x2e8>
     228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     22c:	e2833040 	add	r3, r3, #64	@ 0x40
     230:	e1a03103 	lsl	r3, r3, #2
     234:	e2433004 	sub	r3, r3, #4
     238:	e083300b 	add	r3, r3, fp
     23c:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     240:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     244:	e1520003 	cmp	r2, r3
     248:	0a000007 	beq	26c <main+0x26c>
     24c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     250:	e2833040 	add	r3, r3, #64	@ 0x40
     254:	e1a03103 	lsl	r3, r3, #2
     258:	e2433004 	sub	r3, r3, #4
     25c:	e083300b 	add	r3, r3, fp
     260:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     264:	e3530002 	cmp	r3, #2
     268:	da00001e 	ble	2e8 <main+0x2e8>
     26c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     270:	e2833040 	add	r3, r3, #64	@ 0x40
     274:	e1a03103 	lsl	r3, r3, #2
     278:	e2433004 	sub	r3, r3, #4
     27c:	e083300b 	add	r3, r3, fp
     280:	e5131520 	ldr	r1, [r3, #-1312]	@ 0xfffffae0
     284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     288:	e2833080 	add	r3, r3, #128	@ 0x80
     28c:	e1a03103 	lsl	r3, r3, #2
     290:	e2433004 	sub	r3, r3, #4
     294:	e083300b 	add	r3, r3, fp
     298:	e5130520 	ldr	r0, [r3, #-1312]	@ 0xfffffae0
     29c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2a0:	e2833c01 	add	r3, r3, #256	@ 0x100
     2a4:	e1a03103 	lsl	r3, r3, #2
     2a8:	e2433004 	sub	r3, r3, #4
     2ac:	e083300b 	add	r3, r3, fp
     2b0:	e5132520 	ldr	r2, [r3, #-1312]	@ 0xfffffae0
     2b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2b8:	e28330c0 	add	r3, r3, #192	@ 0xc0
     2bc:	e1a03103 	lsl	r3, r3, #2
     2c0:	e2433004 	sub	r3, r3, #4
     2c4:	e083300b 	add	r3, r3, fp
     2c8:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     2cc:	e58d3004 	str	r3, [sp, #4]
     2d0:	e58d2000 	str	r2, [sp]
     2d4:	e1a03000 	mov	r3, r0
     2d8:	e1a02001 	mov	r2, r1
     2dc:	e59f1080 	ldr	r1, [pc, #128]	@ 364 <main+0x364>
     2e0:	e3a00001 	mov	r0, #1
     2e4:	eb000329 	bl	f90 <printf>
     2e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2ec:	e2833001 	add	r3, r3, #1
     2f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     2f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2f8:	e353003f 	cmp	r3, #63	@ 0x3f
     2fc:	daffffc2 	ble	20c <main+0x20c>
     300:	e3a00001 	mov	r0, #1
     304:	eb000284 	bl	d1c <sleep>
     308:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     30c:	e2833001 	add	r3, r3, #1
     310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     314:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     318:	e3530063 	cmp	r3, #99	@ 0x63
     31c:	daffffb0 	ble	1e4 <main+0x1e4>
     320:	e3a03000 	mov	r3, #0
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	ea000003 	b	33c <main+0x33c>
     32c:	eb0001e1 	bl	ab8 <wait>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2833001 	add	r3, r3, #1
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e3530001 	cmp	r3, #1
     344:	dafffff8 	ble	32c <main+0x32c>
     348:	e59f1018 	ldr	r1, [pc, #24]	@ 368 <main+0x368>
     34c:	e3a00001 	mov	r0, #1
     350:	eb00030e 	bl	f90 <printf>
     354:	eb0001ce 	bl	a94 <exit>
     358:	0000164c 	.word	0x0000164c
     35c:	0000166c 	.word	0x0000166c
     360:	00001690 	.word	0x00001690
     364:	000016c0 	.word	0x000016c0
     368:	000016f8 	.word	0x000016f8

0000036c <pg_pte>:
     36c:	e92d4800 	push	{fp, lr}
     370:	e28db004 	add	fp, sp, #4
     374:	e24dd008 	sub	sp, sp, #8
     378:	e50b0008 	str	r0, [fp, #-8]
     37c:	e51b1008 	ldr	r1, [fp, #-8]
     380:	e3a00065 	mov	r0, #101	@ 0x65
     384:	eb0002a3 	bl	e18 <syscall>
     388:	e1a03000 	mov	r3, r0
     38c:	e1a00003 	mov	r0, r3
     390:	e24bd004 	sub	sp, fp, #4
     394:	e8bd8800 	pop	{fp, pc}

00000398 <pg_pa>:
     398:	e92d4800 	push	{fp, lr}
     39c:	e28db004 	add	fp, sp, #4
     3a0:	e24dd008 	sub	sp, sp, #8
     3a4:	e50b0008 	str	r0, [fp, #-8]
     3a8:	e51b1008 	ldr	r1, [fp, #-8]
     3ac:	e3a00066 	mov	r0, #102	@ 0x66
     3b0:	eb000298 	bl	e18 <syscall>
     3b4:	e1a03000 	mov	r3, r0
     3b8:	e1a00003 	mov	r0, r3
     3bc:	e24bd004 	sub	sp, fp, #4
     3c0:	e8bd8800 	pop	{fp, pc}

000003c4 <pg_flags>:
     3c4:	e92d4800 	push	{fp, lr}
     3c8:	e28db004 	add	fp, sp, #4
     3cc:	e24dd008 	sub	sp, sp, #8
     3d0:	e50b0008 	str	r0, [fp, #-8]
     3d4:	e51b1008 	ldr	r1, [fp, #-8]
     3d8:	e3a00067 	mov	r0, #103	@ 0x67
     3dc:	eb00028d 	bl	e18 <syscall>
     3e0:	e1a03000 	mov	r3, r0
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e24bd004 	sub	sp, fp, #4
     3ec:	e8bd8800 	pop	{fp, pc}

000003f0 <kpt>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e3a00068 	mov	r0, #104	@ 0x68
     3fc:	eb000285 	bl	e18 <syscall>
     400:	e1a03000 	mov	r3, r0
     404:	e1a00003 	mov	r0, r3
     408:	e8bd8800 	pop	{fp, pc}

0000040c <ugetpid>:
     40c:	e92d4800 	push	{fp, lr}
     410:	e28db004 	add	fp, sp, #4
     414:	e3a00069 	mov	r0, #105	@ 0x69
     418:	eb00027e 	bl	e18 <syscall>
     41c:	e1a03000 	mov	r3, r0
     420:	e1a00003 	mov	r0, r3
     424:	e8bd8800 	pop	{fp, pc}

00000428 <strcpy>:
     428:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     42c:	e28db000 	add	fp, sp, #0
     430:	e24dd014 	sub	sp, sp, #20
     434:	e50b0010 	str	r0, [fp, #-16]
     438:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     43c:	e51b3010 	ldr	r3, [fp, #-16]
     440:	e50b3008 	str	r3, [fp, #-8]
     444:	e1a00000 	nop			@ (mov r0, r0)
     448:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     44c:	e2823001 	add	r3, r2, #1
     450:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     454:	e51b3010 	ldr	r3, [fp, #-16]
     458:	e2831001 	add	r1, r3, #1
     45c:	e50b1010 	str	r1, [fp, #-16]
     460:	e5d22000 	ldrb	r2, [r2]
     464:	e5c32000 	strb	r2, [r3]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e3530000 	cmp	r3, #0
     470:	1afffff4 	bne	448 <strcpy+0x20>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e1a00003 	mov	r0, r3
     47c:	e28bd000 	add	sp, fp, #0
     480:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     484:	e12fff1e 	bx	lr

00000488 <strcmp>:
     488:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     48c:	e28db000 	add	fp, sp, #0
     490:	e24dd00c 	sub	sp, sp, #12
     494:	e50b0008 	str	r0, [fp, #-8]
     498:	e50b100c 	str	r1, [fp, #-12]
     49c:	ea000005 	b	4b8 <strcmp+0x30>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b300c 	ldr	r3, [fp, #-12]
     4b0:	e2833001 	add	r3, r3, #1
     4b4:	e50b300c 	str	r3, [fp, #-12]
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e3530000 	cmp	r3, #0
     4c4:	0a000005 	beq	4e0 <strcmp+0x58>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e5d32000 	ldrb	r2, [r3]
     4d0:	e51b300c 	ldr	r3, [fp, #-12]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e1520003 	cmp	r2, r3
     4dc:	0affffef 	beq	4a0 <strcmp+0x18>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e5d33000 	ldrb	r3, [r3]
     4e8:	e1a02003 	mov	r2, r3
     4ec:	e51b300c 	ldr	r3, [fp, #-12]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e0423003 	sub	r3, r2, r3
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <strlen>:
     508:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     50c:	e28db000 	add	fp, sp, #0
     510:	e24dd014 	sub	sp, sp, #20
     514:	e50b0010 	str	r0, [fp, #-16]
     518:	e3a03000 	mov	r3, #0
     51c:	e50b3008 	str	r3, [fp, #-8]
     520:	ea000002 	b	530 <strlen+0x28>
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2833001 	add	r3, r3, #1
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e51b2010 	ldr	r2, [fp, #-16]
     538:	e0823003 	add	r3, r2, r3
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530000 	cmp	r3, #0
     544:	1afffff6 	bne	524 <strlen+0x1c>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <memset>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd024 	sub	sp, sp, #36	@ 0x24
     568:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     56c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     570:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     574:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     580:	e54b300d 	strb	r3, [fp, #-13]
     584:	e55b200d 	ldrb	r2, [fp, #-13]
     588:	e1a03002 	mov	r3, r2
     58c:	e1a03403 	lsl	r3, r3, #8
     590:	e0833002 	add	r3, r3, r2
     594:	e1a03803 	lsl	r3, r3, #16
     598:	e1a02003 	mov	r2, r3
     59c:	e55b300d 	ldrb	r3, [fp, #-13]
     5a0:	e1a03403 	lsl	r3, r3, #8
     5a4:	e1822003 	orr	r2, r2, r3
     5a8:	e55b300d 	ldrb	r3, [fp, #-13]
     5ac:	e1823003 	orr	r3, r2, r3
     5b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5b4:	ea000008 	b	5dc <memset+0x80>
     5b8:	e51b3008 	ldr	r3, [fp, #-8]
     5bc:	e55b200d 	ldrb	r2, [fp, #-13]
     5c0:	e5c32000 	strb	r2, [r3]
     5c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5c8:	e2433001 	sub	r3, r3, #1
     5cc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5e0:	e3530000 	cmp	r3, #0
     5e4:	0a000003 	beq	5f8 <memset+0x9c>
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e2033003 	and	r3, r3, #3
     5f0:	e3530000 	cmp	r3, #0
     5f4:	1affffef 	bne	5b8 <memset+0x5c>
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e50b300c 	str	r3, [fp, #-12]
     600:	ea000008 	b	628 <memset+0xcc>
     604:	e51b300c 	ldr	r3, [fp, #-12]
     608:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     60c:	e5832000 	str	r2, [r3]
     610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     614:	e2433004 	sub	r3, r3, #4
     618:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     61c:	e51b300c 	ldr	r3, [fp, #-12]
     620:	e2833004 	add	r3, r3, #4
     624:	e50b300c 	str	r3, [fp, #-12]
     628:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     62c:	e3530003 	cmp	r3, #3
     630:	8afffff3 	bhi	604 <memset+0xa8>
     634:	e51b300c 	ldr	r3, [fp, #-12]
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	ea000008 	b	664 <memset+0x108>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e55b200d 	ldrb	r2, [fp, #-13]
     648:	e5c32000 	strb	r2, [r3]
     64c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     650:	e2433001 	sub	r3, r3, #1
     654:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e2833001 	add	r3, r3, #1
     660:	e50b3008 	str	r3, [fp, #-8]
     664:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     668:	e3530000 	cmp	r3, #0
     66c:	1afffff3 	bne	640 <memset+0xe4>
     670:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     674:	e1a00003 	mov	r0, r3
     678:	e28bd000 	add	sp, fp, #0
     67c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <strchr>:
     684:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     688:	e28db000 	add	fp, sp, #0
     68c:	e24dd00c 	sub	sp, sp, #12
     690:	e50b0008 	str	r0, [fp, #-8]
     694:	e1a03001 	mov	r3, r1
     698:	e54b3009 	strb	r3, [fp, #-9]
     69c:	ea000009 	b	6c8 <strchr+0x44>
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e5d33000 	ldrb	r3, [r3]
     6a8:	e55b2009 	ldrb	r2, [fp, #-9]
     6ac:	e1520003 	cmp	r2, r3
     6b0:	1a000001 	bne	6bc <strchr+0x38>
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	ea000007 	b	6dc <strchr+0x58>
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e2833001 	add	r3, r3, #1
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e5d33000 	ldrb	r3, [r3]
     6d0:	e3530000 	cmp	r3, #0
     6d4:	1afffff1 	bne	6a0 <strchr+0x1c>
     6d8:	e3a03000 	mov	r3, #0
     6dc:	e1a00003 	mov	r0, r3
     6e0:	e28bd000 	add	sp, fp, #0
     6e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <gets>:
     6ec:	e92d4800 	push	{fp, lr}
     6f0:	e28db004 	add	fp, sp, #4
     6f4:	e24dd018 	sub	sp, sp, #24
     6f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     6fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     700:	e3a03000 	mov	r3, #0
     704:	e50b3008 	str	r3, [fp, #-8]
     708:	ea000016 	b	768 <gets+0x7c>
     70c:	e24b300d 	sub	r3, fp, #13
     710:	e3a02001 	mov	r2, #1
     714:	e1a01003 	mov	r1, r3
     718:	e3a00000 	mov	r0, #0
     71c:	eb0000f7 	bl	b00 <read>
     720:	e50b000c 	str	r0, [fp, #-12]
     724:	e51b300c 	ldr	r3, [fp, #-12]
     728:	e3530000 	cmp	r3, #0
     72c:	da000013 	ble	780 <gets+0x94>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e2832001 	add	r2, r3, #1
     738:	e50b2008 	str	r2, [fp, #-8]
     73c:	e1a02003 	mov	r2, r3
     740:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     744:	e0833002 	add	r3, r3, r2
     748:	e55b200d 	ldrb	r2, [fp, #-13]
     74c:	e5c32000 	strb	r2, [r3]
     750:	e55b300d 	ldrb	r3, [fp, #-13]
     754:	e353000a 	cmp	r3, #10
     758:	0a000009 	beq	784 <gets+0x98>
     75c:	e55b300d 	ldrb	r3, [fp, #-13]
     760:	e353000d 	cmp	r3, #13
     764:	0a000006 	beq	784 <gets+0x98>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2833001 	add	r3, r3, #1
     770:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     774:	e1520003 	cmp	r2, r3
     778:	caffffe3 	bgt	70c <gets+0x20>
     77c:	ea000000 	b	784 <gets+0x98>
     780:	e1a00000 	nop			@ (mov r0, r0)
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     78c:	e0823003 	add	r3, r2, r3
     790:	e3a02000 	mov	r2, #0
     794:	e5c32000 	strb	r2, [r3]
     798:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     79c:	e1a00003 	mov	r0, r3
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}

000007a8 <stat>:
     7a8:	e92d4800 	push	{fp, lr}
     7ac:	e28db004 	add	fp, sp, #4
     7b0:	e24dd010 	sub	sp, sp, #16
     7b4:	e50b0010 	str	r0, [fp, #-16]
     7b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7bc:	e3a01000 	mov	r1, #0
     7c0:	e51b0010 	ldr	r0, [fp, #-16]
     7c4:	eb0000fa 	bl	bb4 <open>
     7c8:	e50b0008 	str	r0, [fp, #-8]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e3530000 	cmp	r3, #0
     7d4:	aa000001 	bge	7e0 <stat+0x38>
     7d8:	e3e03000 	mvn	r3, #0
     7dc:	ea000006 	b	7fc <stat+0x54>
     7e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7e4:	e51b0008 	ldr	r0, [fp, #-8]
     7e8:	eb00010c 	bl	c20 <fstat>
     7ec:	e50b000c 	str	r0, [fp, #-12]
     7f0:	e51b0008 	ldr	r0, [fp, #-8]
     7f4:	eb0000d3 	bl	b48 <close>
     7f8:	e51b300c 	ldr	r3, [fp, #-12]
     7fc:	e1a00003 	mov	r0, r3
     800:	e24bd004 	sub	sp, fp, #4
     804:	e8bd8800 	pop	{fp, pc}

00000808 <atoi>:
     808:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     80c:	e28db000 	add	fp, sp, #0
     810:	e24dd014 	sub	sp, sp, #20
     814:	e50b0010 	str	r0, [fp, #-16]
     818:	e3a03000 	mov	r3, #0
     81c:	e50b3008 	str	r3, [fp, #-8]
     820:	ea00000c 	b	858 <atoi+0x50>
     824:	e51b2008 	ldr	r2, [fp, #-8]
     828:	e1a03002 	mov	r3, r2
     82c:	e1a03103 	lsl	r3, r3, #2
     830:	e0833002 	add	r3, r3, r2
     834:	e1a03083 	lsl	r3, r3, #1
     838:	e1a01003 	mov	r1, r3
     83c:	e51b3010 	ldr	r3, [fp, #-16]
     840:	e2832001 	add	r2, r3, #1
     844:	e50b2010 	str	r2, [fp, #-16]
     848:	e5d33000 	ldrb	r3, [r3]
     84c:	e0813003 	add	r3, r1, r3
     850:	e2433030 	sub	r3, r3, #48	@ 0x30
     854:	e50b3008 	str	r3, [fp, #-8]
     858:	e51b3010 	ldr	r3, [fp, #-16]
     85c:	e5d33000 	ldrb	r3, [r3]
     860:	e353002f 	cmp	r3, #47	@ 0x2f
     864:	9a000003 	bls	878 <atoi+0x70>
     868:	e51b3010 	ldr	r3, [fp, #-16]
     86c:	e5d33000 	ldrb	r3, [r3]
     870:	e3530039 	cmp	r3, #57	@ 0x39
     874:	9affffea 	bls	824 <atoi+0x1c>
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e1a00003 	mov	r0, r3
     880:	e28bd000 	add	sp, fp, #0
     884:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <memmove>:
     88c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     890:	e28db000 	add	fp, sp, #0
     894:	e24dd01c 	sub	sp, sp, #28
     898:	e50b0010 	str	r0, [fp, #-16]
     89c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8a0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8a4:	e51b3010 	ldr	r3, [fp, #-16]
     8a8:	e50b3008 	str	r3, [fp, #-8]
     8ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8b0:	e50b300c 	str	r3, [fp, #-12]
     8b4:	ea000007 	b	8d8 <memmove+0x4c>
     8b8:	e51b200c 	ldr	r2, [fp, #-12]
     8bc:	e2823001 	add	r3, r2, #1
     8c0:	e50b300c 	str	r3, [fp, #-12]
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e2831001 	add	r1, r3, #1
     8cc:	e50b1008 	str	r1, [fp, #-8]
     8d0:	e5d22000 	ldrb	r2, [r2]
     8d4:	e5c32000 	strb	r2, [r3]
     8d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8dc:	e2432001 	sub	r2, r3, #1
     8e0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8e4:	e3530000 	cmp	r3, #0
     8e8:	cafffff2 	bgt	8b8 <memmove+0x2c>
     8ec:	e51b3010 	ldr	r3, [fp, #-16]
     8f0:	e1a00003 	mov	r0, r3
     8f4:	e28bd000 	add	sp, fp, #0
     8f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <strncmp>:
     900:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     904:	e28db000 	add	fp, sp, #0
     908:	e24dd014 	sub	sp, sp, #20
     90c:	e50b0008 	str	r0, [fp, #-8]
     910:	e50b100c 	str	r1, [fp, #-12]
     914:	e50b2010 	str	r2, [fp, #-16]
     918:	ea000008 	b	940 <strncmp+0x40>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e2833001 	add	r3, r3, #1
     924:	e50b3008 	str	r3, [fp, #-8]
     928:	e51b300c 	ldr	r3, [fp, #-12]
     92c:	e2833001 	add	r3, r3, #1
     930:	e50b300c 	str	r3, [fp, #-12]
     934:	e51b3010 	ldr	r3, [fp, #-16]
     938:	e2433001 	sub	r3, r3, #1
     93c:	e50b3010 	str	r3, [fp, #-16]
     940:	e51b3010 	ldr	r3, [fp, #-16]
     944:	e3530000 	cmp	r3, #0
     948:	da00000d 	ble	984 <strncmp+0x84>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5d33000 	ldrb	r3, [r3]
     954:	e3530000 	cmp	r3, #0
     958:	0a000009 	beq	984 <strncmp+0x84>
     95c:	e51b300c 	ldr	r3, [fp, #-12]
     960:	e5d33000 	ldrb	r3, [r3]
     964:	e3530000 	cmp	r3, #0
     968:	0a000005 	beq	984 <strncmp+0x84>
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e5d32000 	ldrb	r2, [r3]
     974:	e51b300c 	ldr	r3, [fp, #-12]
     978:	e5d33000 	ldrb	r3, [r3]
     97c:	e1520003 	cmp	r2, r3
     980:	0affffe5 	beq	91c <strncmp+0x1c>
     984:	e51b3010 	ldr	r3, [fp, #-16]
     988:	e3530000 	cmp	r3, #0
     98c:	1a000001 	bne	998 <strncmp+0x98>
     990:	e3a03000 	mov	r3, #0
     994:	ea000005 	b	9b0 <strncmp+0xb0>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5d33000 	ldrb	r3, [r3]
     9a0:	e1a02003 	mov	r2, r3
     9a4:	e51b300c 	ldr	r3, [fp, #-12]
     9a8:	e5d33000 	ldrb	r3, [r3]
     9ac:	e0423003 	sub	r3, r2, r3
     9b0:	e1a00003 	mov	r0, r3
     9b4:	e28bd000 	add	sp, fp, #0
     9b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <strncpy>:
     9c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9c4:	e28db000 	add	fp, sp, #0
     9c8:	e24dd01c 	sub	sp, sp, #28
     9cc:	e50b0010 	str	r0, [fp, #-16]
     9d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9d8:	e51b3010 	ldr	r3, [fp, #-16]
     9dc:	e50b3008 	str	r3, [fp, #-8]
     9e0:	ea00000a 	b	a10 <strncpy+0x50>
     9e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     9e8:	e2823001 	add	r3, r2, #1
     9ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e2831001 	add	r1, r3, #1
     9f8:	e50b1008 	str	r1, [fp, #-8]
     9fc:	e5d22000 	ldrb	r2, [r2]
     a00:	e5c32000 	strb	r2, [r3]
     a04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a08:	e2433001 	sub	r3, r3, #1
     a0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a14:	e3530000 	cmp	r3, #0
     a18:	da00000c 	ble	a50 <strncpy+0x90>
     a1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a20:	e5d33000 	ldrb	r3, [r3]
     a24:	e3530000 	cmp	r3, #0
     a28:	1affffed 	bne	9e4 <strncpy+0x24>
     a2c:	ea000007 	b	a50 <strncpy+0x90>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2832001 	add	r2, r3, #1
     a38:	e50b2008 	str	r2, [fp, #-8]
     a3c:	e3a02000 	mov	r2, #0
     a40:	e5c32000 	strb	r2, [r3]
     a44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a48:	e2433001 	sub	r3, r3, #1
     a4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a54:	e3530000 	cmp	r3, #0
     a58:	cafffff4 	bgt	a30 <strncpy+0x70>
     a5c:	e51b3010 	ldr	r3, [fp, #-16]
     a60:	e1a00003 	mov	r0, r3
     a64:	e28bd000 	add	sp, fp, #0
     a68:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <fork>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00001 	mov	r0, #1
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <exit>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a00002 	mov	r0, #2
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <wait>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00003 	mov	r0, #3
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <pipe>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a00004 	mov	r0, #4
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <read>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00005 	mov	r0, #5
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <write>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a00010 	mov	r0, #16
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <close>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a00015 	mov	r0, #21
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <kill>:
     b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b70:	e1a04003 	mov	r4, r3
     b74:	e1a03002 	mov	r3, r2
     b78:	e1a02001 	mov	r2, r1
     b7c:	e1a01000 	mov	r1, r0
     b80:	e3a00006 	mov	r0, #6
     b84:	ef000000 	svc	0x00000000
     b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <exec>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a00007 	mov	r0, #7
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <open>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a0000f 	mov	r0, #15
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <mknod>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a00011 	mov	r0, #17
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <unlink>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a00012 	mov	r0, #18
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <fstat>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a00008 	mov	r0, #8
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <link>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a00013 	mov	r0, #19
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <mkdir>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a00014 	mov	r0, #20
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <chdir>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a00009 	mov	r0, #9
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <dup>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a0000a 	mov	r0, #10
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <getpid>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a0000b 	mov	r0, #11
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <sbrk>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a0000c 	mov	r0, #12
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <sleep>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a0000d 	mov	r0, #13
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <uptime>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a0000e 	mov	r0, #14
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <proclist>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a00016 	mov	r0, #22
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <settickets>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a00017 	mov	r0, #23
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <srand>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a00018 	mov	r0, #24
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <getpinfo>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a00019 	mov	r0, #25
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <print_pt>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a0006a 	mov	r0, #106	@ 0x6a
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <syscall>:
     e18:	ef000000 	svc	0x00000000
     e1c:	e12fff1e 	bx	lr

00000e20 <putc>:
     e20:	e92d4800 	push	{fp, lr}
     e24:	e28db004 	add	fp, sp, #4
     e28:	e24dd008 	sub	sp, sp, #8
     e2c:	e50b0008 	str	r0, [fp, #-8]
     e30:	e1a03001 	mov	r3, r1
     e34:	e54b3009 	strb	r3, [fp, #-9]
     e38:	e24b3009 	sub	r3, fp, #9
     e3c:	e3a02001 	mov	r2, #1
     e40:	e1a01003 	mov	r1, r3
     e44:	e51b0008 	ldr	r0, [fp, #-8]
     e48:	ebffff35 	bl	b24 <write>
     e4c:	e1a00000 	nop			@ (mov r0, r0)
     e50:	e24bd004 	sub	sp, fp, #4
     e54:	e8bd8800 	pop	{fp, pc}

00000e58 <printint>:
     e58:	e92d4800 	push	{fp, lr}
     e5c:	e28db004 	add	fp, sp, #4
     e60:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e64:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e68:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e6c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e70:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e74:	e3a03000 	mov	r3, #0
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e80:	e3530000 	cmp	r3, #0
     e84:	0a000008 	beq	eac <printint+0x54>
     e88:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e8c:	e3530000 	cmp	r3, #0
     e90:	aa000005 	bge	eac <printint+0x54>
     e94:	e3a03001 	mov	r3, #1
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ea0:	e2633000 	rsb	r3, r3, #0
     ea4:	e50b3010 	str	r3, [fp, #-16]
     ea8:	ea000001 	b	eb4 <printint+0x5c>
     eac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eb0:	e50b3010 	str	r3, [fp, #-16]
     eb4:	e3a03000 	mov	r3, #0
     eb8:	e50b3008 	str	r3, [fp, #-8]
     ebc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ec0:	e51b3010 	ldr	r3, [fp, #-16]
     ec4:	e1a01002 	mov	r1, r2
     ec8:	e1a00003 	mov	r0, r3
     ecc:	eb0001d5 	bl	1628 <__aeabi_uidivmod>
     ed0:	e1a03001 	mov	r3, r1
     ed4:	e1a01003 	mov	r1, r3
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e2832001 	add	r2, r3, #1
     ee0:	e50b2008 	str	r2, [fp, #-8]
     ee4:	e59f20a0 	ldr	r2, [pc, #160]	@ f8c <printint+0x134>
     ee8:	e7d22001 	ldrb	r2, [r2, r1]
     eec:	e2433004 	sub	r3, r3, #4
     ef0:	e083300b 	add	r3, r3, fp
     ef4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ef8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     efc:	e1a01003 	mov	r1, r3
     f00:	e51b0010 	ldr	r0, [fp, #-16]
     f04:	eb00018a 	bl	1534 <__udivsi3>
     f08:	e1a03000 	mov	r3, r0
     f0c:	e50b3010 	str	r3, [fp, #-16]
     f10:	e51b3010 	ldr	r3, [fp, #-16]
     f14:	e3530000 	cmp	r3, #0
     f18:	1affffe7 	bne	ebc <printint+0x64>
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e3530000 	cmp	r3, #0
     f24:	0a00000e 	beq	f64 <printint+0x10c>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e2832001 	add	r2, r3, #1
     f30:	e50b2008 	str	r2, [fp, #-8]
     f34:	e2433004 	sub	r3, r3, #4
     f38:	e083300b 	add	r3, r3, fp
     f3c:	e3a0202d 	mov	r2, #45	@ 0x2d
     f40:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f44:	ea000006 	b	f64 <printint+0x10c>
     f48:	e24b2020 	sub	r2, fp, #32
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e0823003 	add	r3, r2, r3
     f54:	e5d33000 	ldrb	r3, [r3]
     f58:	e1a01003 	mov	r1, r3
     f5c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f60:	ebffffae 	bl	e20 <putc>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e2433001 	sub	r3, r3, #1
     f6c:	e50b3008 	str	r3, [fp, #-8]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e3530000 	cmp	r3, #0
     f78:	aafffff2 	bge	f48 <printint+0xf0>
     f7c:	e1a00000 	nop			@ (mov r0, r0)
     f80:	e1a00000 	nop			@ (mov r0, r0)
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	00001724 	.word	0x00001724

00000f90 <printf>:
     f90:	e92d000e 	push	{r1, r2, r3}
     f94:	e92d4800 	push	{fp, lr}
     f98:	e28db004 	add	fp, sp, #4
     f9c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fa0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fa4:	e3a03000 	mov	r3, #0
     fa8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fac:	e28b3008 	add	r3, fp, #8
     fb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fb4:	e3a03000 	mov	r3, #0
     fb8:	e50b3010 	str	r3, [fp, #-16]
     fbc:	ea000074 	b	1194 <printf+0x204>
     fc0:	e59b2004 	ldr	r2, [fp, #4]
     fc4:	e51b3010 	ldr	r3, [fp, #-16]
     fc8:	e0823003 	add	r3, r2, r3
     fcc:	e5d33000 	ldrb	r3, [r3]
     fd0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fd4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fd8:	e3530000 	cmp	r3, #0
     fdc:	1a00000b 	bne	1010 <printf+0x80>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e3530025 	cmp	r3, #37	@ 0x25
     fe8:	1a000002 	bne	ff8 <printf+0x68>
     fec:	e3a03025 	mov	r3, #37	@ 0x25
     ff0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ff4:	ea000063 	b	1188 <printf+0x1f8>
     ff8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ffc:	e6ef3073 	uxtb	r3, r3
    1000:	e1a01003 	mov	r1, r3
    1004:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1008:	ebffff84 	bl	e20 <putc>
    100c:	ea00005d 	b	1188 <printf+0x1f8>
    1010:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1014:	e3530025 	cmp	r3, #37	@ 0x25
    1018:	1a00005a 	bne	1188 <printf+0x1f8>
    101c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1020:	e3530064 	cmp	r3, #100	@ 0x64
    1024:	1a00000a 	bne	1054 <printf+0xc4>
    1028:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e1a01003 	mov	r1, r3
    1034:	e3a03001 	mov	r3, #1
    1038:	e3a0200a 	mov	r2, #10
    103c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1040:	ebffff84 	bl	e58 <printint>
    1044:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1048:	e2833004 	add	r3, r3, #4
    104c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1050:	ea00004a 	b	1180 <printf+0x1f0>
    1054:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1058:	e3530078 	cmp	r3, #120	@ 0x78
    105c:	0a000002 	beq	106c <printf+0xdc>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e3530070 	cmp	r3, #112	@ 0x70
    1068:	1a00000a 	bne	1098 <printf+0x108>
    106c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e1a01003 	mov	r1, r3
    1078:	e3a03000 	mov	r3, #0
    107c:	e3a02010 	mov	r2, #16
    1080:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1084:	ebffff73 	bl	e58 <printint>
    1088:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    108c:	e2833004 	add	r3, r3, #4
    1090:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1094:	ea000039 	b	1180 <printf+0x1f0>
    1098:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    109c:	e3530073 	cmp	r3, #115	@ 0x73
    10a0:	1a000018 	bne	1108 <printf+0x178>
    10a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e50b300c 	str	r3, [fp, #-12]
    10b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	e2833004 	add	r3, r3, #4
    10b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e3530000 	cmp	r3, #0
    10c4:	1a00000a 	bne	10f4 <printf+0x164>
    10c8:	e59f30f4 	ldr	r3, [pc, #244]	@ 11c4 <printf+0x234>
    10cc:	e50b300c 	str	r3, [fp, #-12]
    10d0:	ea000007 	b	10f4 <printf+0x164>
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5d33000 	ldrb	r3, [r3]
    10dc:	e1a01003 	mov	r1, r3
    10e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10e4:	ebffff4d 	bl	e20 <putc>
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e2833001 	add	r3, r3, #1
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5d33000 	ldrb	r3, [r3]
    10fc:	e3530000 	cmp	r3, #0
    1100:	1afffff3 	bne	10d4 <printf+0x144>
    1104:	ea00001d 	b	1180 <printf+0x1f0>
    1108:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    110c:	e3530063 	cmp	r3, #99	@ 0x63
    1110:	1a000009 	bne	113c <printf+0x1ac>
    1114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e6ef3073 	uxtb	r3, r3
    1120:	e1a01003 	mov	r1, r3
    1124:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1128:	ebffff3c 	bl	e20 <putc>
    112c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1130:	e2833004 	add	r3, r3, #4
    1134:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1138:	ea000010 	b	1180 <printf+0x1f0>
    113c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1140:	e3530025 	cmp	r3, #37	@ 0x25
    1144:	1a000005 	bne	1160 <printf+0x1d0>
    1148:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e6ef3073 	uxtb	r3, r3
    1150:	e1a01003 	mov	r1, r3
    1154:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1158:	ebffff30 	bl	e20 <putc>
    115c:	ea000007 	b	1180 <printf+0x1f0>
    1160:	e3a01025 	mov	r1, #37	@ 0x25
    1164:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1168:	ebffff2c 	bl	e20 <putc>
    116c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1170:	e6ef3073 	uxtb	r3, r3
    1174:	e1a01003 	mov	r1, r3
    1178:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    117c:	ebffff27 	bl	e20 <putc>
    1180:	e3a03000 	mov	r3, #0
    1184:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1188:	e51b3010 	ldr	r3, [fp, #-16]
    118c:	e2833001 	add	r3, r3, #1
    1190:	e50b3010 	str	r3, [fp, #-16]
    1194:	e59b2004 	ldr	r2, [fp, #4]
    1198:	e51b3010 	ldr	r3, [fp, #-16]
    119c:	e0823003 	add	r3, r2, r3
    11a0:	e5d33000 	ldrb	r3, [r3]
    11a4:	e3530000 	cmp	r3, #0
    11a8:	1affff84 	bne	fc0 <printf+0x30>
    11ac:	e1a00000 	nop			@ (mov r0, r0)
    11b0:	e1a00000 	nop			@ (mov r0, r0)
    11b4:	e24bd004 	sub	sp, fp, #4
    11b8:	e8bd4800 	pop	{fp, lr}
    11bc:	e28dd00c 	add	sp, sp, #12
    11c0:	e12fff1e 	bx	lr
    11c4:	0000171c 	.word	0x0000171c

000011c8 <free>:
    11c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11cc:	e28db000 	add	fp, sp, #0
    11d0:	e24dd014 	sub	sp, sp, #20
    11d4:	e50b0010 	str	r0, [fp, #-16]
    11d8:	e51b3010 	ldr	r3, [fp, #-16]
    11dc:	e2433008 	sub	r3, r3, #8
    11e0:	e50b300c 	str	r3, [fp, #-12]
    11e4:	e59f3154 	ldr	r3, [pc, #340]	@ 1340 <free+0x178>
    11e8:	e5933000 	ldr	r3, [r3]
    11ec:	e50b3008 	str	r3, [fp, #-8]
    11f0:	ea000010 	b	1238 <free+0x70>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e51b2008 	ldr	r2, [fp, #-8]
    1200:	e1520003 	cmp	r2, r3
    1204:	3a000008 	bcc	122c <free+0x64>
    1208:	e51b200c 	ldr	r2, [fp, #-12]
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e1520003 	cmp	r2, r3
    1214:	8a000010 	bhi	125c <free+0x94>
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e5933000 	ldr	r3, [r3]
    1220:	e51b200c 	ldr	r2, [fp, #-12]
    1224:	e1520003 	cmp	r2, r3
    1228:	3a00000b 	bcc	125c <free+0x94>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e50b3008 	str	r3, [fp, #-8]
    1238:	e51b200c 	ldr	r2, [fp, #-12]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e1520003 	cmp	r2, r3
    1244:	9affffea 	bls	11f4 <free+0x2c>
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e51b200c 	ldr	r2, [fp, #-12]
    1254:	e1520003 	cmp	r2, r3
    1258:	2affffe5 	bcs	11f4 <free+0x2c>
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e5933004 	ldr	r3, [r3, #4]
    1264:	e1a03183 	lsl	r3, r3, #3
    1268:	e51b200c 	ldr	r2, [fp, #-12]
    126c:	e0822003 	add	r2, r2, r3
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e1520003 	cmp	r2, r3
    127c:	1a00000d 	bne	12b8 <free+0xf0>
    1280:	e51b300c 	ldr	r3, [fp, #-12]
    1284:	e5932004 	ldr	r2, [r3, #4]
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e5933004 	ldr	r3, [r3, #4]
    1294:	e0822003 	add	r2, r2, r3
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e5832004 	str	r2, [r3, #4]
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e5932000 	ldr	r2, [r3]
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5832000 	str	r2, [r3]
    12b4:	ea000003 	b	12c8 <free+0x100>
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5932000 	ldr	r2, [r3]
    12c0:	e51b300c 	ldr	r3, [fp, #-12]
    12c4:	e5832000 	str	r2, [r3]
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e5933004 	ldr	r3, [r3, #4]
    12d0:	e1a03183 	lsl	r3, r3, #3
    12d4:	e51b2008 	ldr	r2, [fp, #-8]
    12d8:	e0823003 	add	r3, r2, r3
    12dc:	e51b200c 	ldr	r2, [fp, #-12]
    12e0:	e1520003 	cmp	r2, r3
    12e4:	1a00000b 	bne	1318 <free+0x150>
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5932004 	ldr	r2, [r3, #4]
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e5933004 	ldr	r3, [r3, #4]
    12f8:	e0822003 	add	r2, r2, r3
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5832004 	str	r2, [r3, #4]
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e5932000 	ldr	r2, [r3]
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5832000 	str	r2, [r3]
    1314:	ea000002 	b	1324 <free+0x15c>
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e51b200c 	ldr	r2, [fp, #-12]
    1320:	e5832000 	str	r2, [r3]
    1324:	e59f2014 	ldr	r2, [pc, #20]	@ 1340 <free+0x178>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5823000 	str	r3, [r2]
    1330:	e1a00000 	nop			@ (mov r0, r0)
    1334:	e28bd000 	add	sp, fp, #0
    1338:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    133c:	e12fff1e 	bx	lr
    1340:	00001740 	.word	0x00001740

00001344 <morecore>:
    1344:	e92d4800 	push	{fp, lr}
    1348:	e28db004 	add	fp, sp, #4
    134c:	e24dd010 	sub	sp, sp, #16
    1350:	e50b0010 	str	r0, [fp, #-16]
    1354:	e51b3010 	ldr	r3, [fp, #-16]
    1358:	e3530a01 	cmp	r3, #4096	@ 0x1000
    135c:	2a000001 	bcs	1368 <morecore+0x24>
    1360:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1364:	e50b3010 	str	r3, [fp, #-16]
    1368:	e51b3010 	ldr	r3, [fp, #-16]
    136c:	e1a03183 	lsl	r3, r3, #3
    1370:	e1a00003 	mov	r0, r3
    1374:	ebfffe5f 	bl	cf8 <sbrk>
    1378:	e50b0008 	str	r0, [fp, #-8]
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e3730001 	cmn	r3, #1
    1384:	1a000001 	bne	1390 <morecore+0x4c>
    1388:	e3a03000 	mov	r3, #0
    138c:	ea00000a 	b	13bc <morecore+0x78>
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e50b300c 	str	r3, [fp, #-12]
    1398:	e51b300c 	ldr	r3, [fp, #-12]
    139c:	e51b2010 	ldr	r2, [fp, #-16]
    13a0:	e5832004 	str	r2, [r3, #4]
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e2833008 	add	r3, r3, #8
    13ac:	e1a00003 	mov	r0, r3
    13b0:	ebffff84 	bl	11c8 <free>
    13b4:	e59f300c 	ldr	r3, [pc, #12]	@ 13c8 <morecore+0x84>
    13b8:	e5933000 	ldr	r3, [r3]
    13bc:	e1a00003 	mov	r0, r3
    13c0:	e24bd004 	sub	sp, fp, #4
    13c4:	e8bd8800 	pop	{fp, pc}
    13c8:	00001740 	.word	0x00001740

000013cc <malloc>:
    13cc:	e92d4800 	push	{fp, lr}
    13d0:	e28db004 	add	fp, sp, #4
    13d4:	e24dd018 	sub	sp, sp, #24
    13d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e0:	e2833007 	add	r3, r3, #7
    13e4:	e1a031a3 	lsr	r3, r3, #3
    13e8:	e2833001 	add	r3, r3, #1
    13ec:	e50b3010 	str	r3, [fp, #-16]
    13f0:	e59f3134 	ldr	r3, [pc, #308]	@ 152c <malloc+0x160>
    13f4:	e5933000 	ldr	r3, [r3]
    13f8:	e50b300c 	str	r3, [fp, #-12]
    13fc:	e51b300c 	ldr	r3, [fp, #-12]
    1400:	e3530000 	cmp	r3, #0
    1404:	1a00000b 	bne	1438 <malloc+0x6c>
    1408:	e59f3120 	ldr	r3, [pc, #288]	@ 1530 <malloc+0x164>
    140c:	e50b300c 	str	r3, [fp, #-12]
    1410:	e59f2114 	ldr	r2, [pc, #276]	@ 152c <malloc+0x160>
    1414:	e51b300c 	ldr	r3, [fp, #-12]
    1418:	e5823000 	str	r3, [r2]
    141c:	e59f3108 	ldr	r3, [pc, #264]	@ 152c <malloc+0x160>
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e59f2104 	ldr	r2, [pc, #260]	@ 1530 <malloc+0x164>
    1428:	e5823000 	str	r3, [r2]
    142c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1530 <malloc+0x164>
    1430:	e3a02000 	mov	r2, #0
    1434:	e5832004 	str	r2, [r3, #4]
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5933000 	ldr	r3, [r3]
    1440:	e50b3008 	str	r3, [fp, #-8]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e5933004 	ldr	r3, [r3, #4]
    144c:	e51b2010 	ldr	r2, [fp, #-16]
    1450:	e1520003 	cmp	r2, r3
    1454:	8a00001e 	bhi	14d4 <malloc+0x108>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5933004 	ldr	r3, [r3, #4]
    1460:	e51b2010 	ldr	r2, [fp, #-16]
    1464:	e1520003 	cmp	r2, r3
    1468:	1a000004 	bne	1480 <malloc+0xb4>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5932000 	ldr	r2, [r3]
    1474:	e51b300c 	ldr	r3, [fp, #-12]
    1478:	e5832000 	str	r2, [r3]
    147c:	ea00000e 	b	14bc <malloc+0xf0>
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5932004 	ldr	r2, [r3, #4]
    1488:	e51b3010 	ldr	r3, [fp, #-16]
    148c:	e0422003 	sub	r2, r2, r3
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5832004 	str	r2, [r3, #4]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933004 	ldr	r3, [r3, #4]
    14a0:	e1a03183 	lsl	r3, r3, #3
    14a4:	e51b2008 	ldr	r2, [fp, #-8]
    14a8:	e0823003 	add	r3, r2, r3
    14ac:	e50b3008 	str	r3, [fp, #-8]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e51b2010 	ldr	r2, [fp, #-16]
    14b8:	e5832004 	str	r2, [r3, #4]
    14bc:	e59f2068 	ldr	r2, [pc, #104]	@ 152c <malloc+0x160>
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e5823000 	str	r3, [r2]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e2833008 	add	r3, r3, #8
    14d0:	ea000012 	b	1520 <malloc+0x154>
    14d4:	e59f3050 	ldr	r3, [pc, #80]	@ 152c <malloc+0x160>
    14d8:	e5933000 	ldr	r3, [r3]
    14dc:	e51b2008 	ldr	r2, [fp, #-8]
    14e0:	e1520003 	cmp	r2, r3
    14e4:	1a000007 	bne	1508 <malloc+0x13c>
    14e8:	e51b0010 	ldr	r0, [fp, #-16]
    14ec:	ebffff94 	bl	1344 <morecore>
    14f0:	e50b0008 	str	r0, [fp, #-8]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e3530000 	cmp	r3, #0
    14fc:	1a000001 	bne	1508 <malloc+0x13c>
    1500:	e3a03000 	mov	r3, #0
    1504:	ea000005 	b	1520 <malloc+0x154>
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e50b300c 	str	r3, [fp, #-12]
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e50b3008 	str	r3, [fp, #-8]
    151c:	eaffffc8 	b	1444 <malloc+0x78>
    1520:	e1a00003 	mov	r0, r3
    1524:	e24bd004 	sub	sp, fp, #4
    1528:	e8bd8800 	pop	{fp, pc}
    152c:	00001740 	.word	0x00001740
    1530:	00001738 	.word	0x00001738

00001534 <__udivsi3>:
    1534:	e2512001 	subs	r2, r1, #1
    1538:	012fff1e 	bxeq	lr
    153c:	3a000036 	bcc	161c <__udivsi3+0xe8>
    1540:	e1500001 	cmp	r0, r1
    1544:	9a000022 	bls	15d4 <__udivsi3+0xa0>
    1548:	e1110002 	tst	r1, r2
    154c:	0a000023 	beq	15e0 <__udivsi3+0xac>
    1550:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1554:	01a01181 	lsleq	r1, r1, #3
    1558:	03a03008 	moveq	r3, #8
    155c:	13a03001 	movne	r3, #1
    1560:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1564:	31510000 	cmpcc	r1, r0
    1568:	31a01201 	lslcc	r1, r1, #4
    156c:	31a03203 	lslcc	r3, r3, #4
    1570:	3afffffa 	bcc	1560 <__udivsi3+0x2c>
    1574:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1578:	31510000 	cmpcc	r1, r0
    157c:	31a01081 	lslcc	r1, r1, #1
    1580:	31a03083 	lslcc	r3, r3, #1
    1584:	3afffffa 	bcc	1574 <__udivsi3+0x40>
    1588:	e3a02000 	mov	r2, #0
    158c:	e1500001 	cmp	r0, r1
    1590:	20400001 	subcs	r0, r0, r1
    1594:	21822003 	orrcs	r2, r2, r3
    1598:	e15000a1 	cmp	r0, r1, lsr #1
    159c:	204000a1 	subcs	r0, r0, r1, lsr #1
    15a0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15a4:	e1500121 	cmp	r0, r1, lsr #2
    15a8:	20400121 	subcs	r0, r0, r1, lsr #2
    15ac:	21822123 	orrcs	r2, r2, r3, lsr #2
    15b0:	e15001a1 	cmp	r0, r1, lsr #3
    15b4:	204001a1 	subcs	r0, r0, r1, lsr #3
    15b8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15bc:	e3500000 	cmp	r0, #0
    15c0:	11b03223 	lsrsne	r3, r3, #4
    15c4:	11a01221 	lsrne	r1, r1, #4
    15c8:	1affffef 	bne	158c <__udivsi3+0x58>
    15cc:	e1a00002 	mov	r0, r2
    15d0:	e12fff1e 	bx	lr
    15d4:	03a00001 	moveq	r0, #1
    15d8:	13a00000 	movne	r0, #0
    15dc:	e12fff1e 	bx	lr
    15e0:	e3510801 	cmp	r1, #65536	@ 0x10000
    15e4:	21a01821 	lsrcs	r1, r1, #16
    15e8:	23a02010 	movcs	r2, #16
    15ec:	33a02000 	movcc	r2, #0
    15f0:	e3510c01 	cmp	r1, #256	@ 0x100
    15f4:	21a01421 	lsrcs	r1, r1, #8
    15f8:	22822008 	addcs	r2, r2, #8
    15fc:	e3510010 	cmp	r1, #16
    1600:	21a01221 	lsrcs	r1, r1, #4
    1604:	22822004 	addcs	r2, r2, #4
    1608:	e3510004 	cmp	r1, #4
    160c:	82822003 	addhi	r2, r2, #3
    1610:	908220a1 	addls	r2, r2, r1, lsr #1
    1614:	e1a00230 	lsr	r0, r0, r2
    1618:	e12fff1e 	bx	lr
    161c:	e3500000 	cmp	r0, #0
    1620:	13e00000 	mvnne	r0, #0
    1624:	ea000007 	b	1648 <__aeabi_idiv0>

00001628 <__aeabi_uidivmod>:
    1628:	e3510000 	cmp	r1, #0
    162c:	0afffffa 	beq	161c <__udivsi3+0xe8>
    1630:	e92d4003 	push	{r0, r1, lr}
    1634:	ebffffbe 	bl	1534 <__udivsi3>
    1638:	e8bd4006 	pop	{r1, r2, lr}
    163c:	e0030092 	mul	r3, r2, r0
    1640:	e0411003 	sub	r1, r1, r3
    1644:	e12fff1e 	bx	lr

00001648 <__aeabi_idiv0>:
    1648:	e12fff1e 	bx	lr
