
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
      1c:	eb00036b 	bl	dd0 <fork>
      20:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
      28:	e3530000 	cmp	r3, #0
      2c:	1a00005e 	bne	1ac <main+0x1ac>
      30:	eb0003ff 	bl	1034 <getpid>
      34:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e2833001 	add	r3, r3, #1
      40:	e1a01003 	mov	r1, r3
      44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
      48:	eb000426 	bl	10e8 <settickets>
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e3530000 	cmp	r3, #0
      54:	1a000009 	bne	80 <main+0x80>
      58:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
      5c:	e59f12f4 	ldr	r1, [pc, #756]	@ 358 <main+0x358>
      60:	e3a00001 	mov	r0, #1
      64:	eb000504 	bl	147c <printf>
      68:	e3a00005 	mov	r0, #5
      6c:	eb000402 	bl	107c <sleep>
      70:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
      74:	e59f12e0 	ldr	r1, [pc, #736]	@ 35c <main+0x35c>
      78:	e3a00001 	mov	r0, #1
      7c:	eb0004fe 	bl	147c <printf>
      80:	e3a03000 	mov	r3, #0
      84:	e50b300c 	str	r3, [fp, #-12]
      88:	ea000043 	b	19c <main+0x19c>
      8c:	e24b3e52 	sub	r3, fp, #1312	@ 0x520
      90:	e2433004 	sub	r3, r3, #4
      94:	e1a00003 	mov	r0, r3
      98:	eb000424 	bl	1130 <getpinfo>
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
     16c:	eb0004c2 	bl	147c <printf>
     170:	e51b3010 	ldr	r3, [fp, #-16]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3010 	str	r3, [fp, #-16]
     17c:	e51b3010 	ldr	r3, [fp, #-16]
     180:	e353003f 	cmp	r3, #63	@ 0x3f
     184:	daffffca 	ble	b4 <main+0xb4>
     188:	e3a00001 	mov	r0, #1
     18c:	eb0003ba 	bl	107c <sleep>
     190:	e51b300c 	ldr	r3, [fp, #-12]
     194:	e2833001 	add	r3, r3, #1
     198:	e50b300c 	str	r3, [fp, #-12]
     19c:	e51b300c 	ldr	r3, [fp, #-12]
     1a0:	e3530063 	cmp	r3, #99	@ 0x63
     1a4:	daffffb8 	ble	8c <main+0x8c>
     1a8:	eb000311 	bl	df4 <exit>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833001 	add	r3, r3, #1
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e3530001 	cmp	r3, #1
     1c0:	daffff95 	ble	1c <main+0x1c>
     1c4:	eb00039a 	bl	1034 <getpid>
     1c8:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     1cc:	e3a01005 	mov	r1, #5
     1d0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     1d4:	eb0003c3 	bl	10e8 <settickets>
     1d8:	e3a03000 	mov	r3, #0
     1dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1e0:	ea00004b 	b	314 <main+0x314>
     1e4:	e24b3e52 	sub	r3, fp, #1312	@ 0x520
     1e8:	e2433004 	sub	r3, r3, #4
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb0003ce 	bl	1130 <getpinfo>
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
     2e4:	eb000464 	bl	147c <printf>
     2e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2ec:	e2833001 	add	r3, r3, #1
     2f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     2f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2f8:	e353003f 	cmp	r3, #63	@ 0x3f
     2fc:	daffffc2 	ble	20c <main+0x20c>
     300:	e3a00001 	mov	r0, #1
     304:	eb00035c 	bl	107c <sleep>
     308:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     30c:	e2833001 	add	r3, r3, #1
     310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     314:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     318:	e3530063 	cmp	r3, #99	@ 0x63
     31c:	daffffb0 	ble	1e4 <main+0x1e4>
     320:	e3a03000 	mov	r3, #0
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	ea000003 	b	33c <main+0x33c>
     32c:	eb0002b9 	bl	e18 <wait>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2833001 	add	r3, r3, #1
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e3530001 	cmp	r3, #1
     344:	dafffff8 	ble	32c <main+0x32c>
     348:	e59f1018 	ldr	r1, [pc, #24]	@ 368 <main+0x368>
     34c:	e3a00001 	mov	r0, #1
     350:	eb000449 	bl	147c <printf>
     354:	eb0002a6 	bl	df4 <exit>
     358:	00001b38 	.word	0x00001b38
     35c:	00001b58 	.word	0x00001b58
     360:	00001b7c 	.word	0x00001b7c
     364:	00001bac 	.word	0x00001bac
     368:	00001be4 	.word	0x00001be4

0000036c <pg_pte>:
     36c:	e92d4800 	push	{fp, lr}
     370:	e28db004 	add	fp, sp, #4
     374:	e24dd008 	sub	sp, sp, #8
     378:	e50b0008 	str	r0, [fp, #-8]
     37c:	e51b1008 	ldr	r1, [fp, #-8]
     380:	e3a0001a 	mov	r0, #26
     384:	eb0003de 	bl	1304 <syscall>
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
     3ac:	e3a0001b 	mov	r0, #27
     3b0:	eb0003d3 	bl	1304 <syscall>
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
     3d8:	e3a0001c 	mov	r0, #28
     3dc:	eb0003c8 	bl	1304 <syscall>
     3e0:	e1a03000 	mov	r3, r0
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e24bd004 	sub	sp, fp, #4
     3ec:	e8bd8800 	pop	{fp, pc}

000003f0 <kpt>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e3a0001d 	mov	r0, #29
     3fc:	eb0003c0 	bl	1304 <syscall>
     400:	e1a03000 	mov	r3, r0
     404:	e1a00003 	mov	r0, r3
     408:	e8bd8800 	pop	{fp, pc}

0000040c <ugetpid>:
     40c:	e92d4800 	push	{fp, lr}
     410:	e28db004 	add	fp, sp, #4
     414:	e3a0001e 	mov	r0, #30
     418:	eb0003b9 	bl	1304 <syscall>
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
     71c:	eb0001cf 	bl	e60 <read>
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
     7c4:	eb0001d2 	bl	f14 <open>
     7c8:	e50b0008 	str	r0, [fp, #-8]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e3530000 	cmp	r3, #0
     7d4:	aa000001 	bge	7e0 <stat+0x38>
     7d8:	e3e03000 	mvn	r3, #0
     7dc:	ea000006 	b	7fc <stat+0x54>
     7e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7e4:	e51b0008 	ldr	r0, [fp, #-8]
     7e8:	eb0001e4 	bl	f80 <fstat>
     7ec:	e50b000c 	str	r0, [fp, #-12]
     7f0:	e51b0008 	ldr	r0, [fp, #-8]
     7f4:	eb0001ab 	bl	ea8 <close>
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

00000a70 <xchg>:
     a70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a74:	e28db000 	add	fp, sp, #0
     a78:	e24dd014 	sub	sp, sp, #20
     a7c:	e50b0010 	str	r0, [fp, #-16]
     a80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a84:	e51b2010 	ldr	r2, [fp, #-16]
     a88:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a8c:	e1023091 	swp	r3, r1, [r2]
     a90:	e50b3008 	str	r3, [fp, #-8]
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e1a00003 	mov	r0, r3
     a9c:	e28bd000 	add	sp, fp, #0
     aa0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <initiateLock>:
     aa8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     aac:	e28db000 	add	fp, sp, #0
     ab0:	e24dd00c 	sub	sp, sp, #12
     ab4:	e50b0008 	str	r0, [fp, #-8]
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e3a02000 	mov	r2, #0
     ac0:	e5832000 	str	r2, [r3]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e3a02001 	mov	r2, #1
     acc:	e5832004 	str	r2, [r3, #4]
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e28bd000 	add	sp, fp, #0
     ad8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <acquireLock>:
     ae0:	e92d4800 	push	{fp, lr}
     ae4:	e28db004 	add	fp, sp, #4
     ae8:	e24dd008 	sub	sp, sp, #8
     aec:	e50b0008 	str	r0, [fp, #-8]
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e5933004 	ldr	r3, [r3, #4]
     af8:	e3530000 	cmp	r3, #0
     afc:	0a000008 	beq	b24 <acquireLock+0x44>
     b00:	e1a00000 	nop			@ (mov r0, r0)
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e3a01001 	mov	r1, #1
     b0c:	e1a00003 	mov	r0, r3
     b10:	ebffffd6 	bl	a70 <xchg>
     b14:	e1a03000 	mov	r3, r0
     b18:	e3530000 	cmp	r3, #0
     b1c:	1afffff8 	bne	b04 <acquireLock+0x24>
     b20:	ea000000 	b	b28 <acquireLock+0x48>
     b24:	e1a00000 	nop			@ (mov r0, r0)
     b28:	e24bd004 	sub	sp, fp, #4
     b2c:	e8bd8800 	pop	{fp, pc}

00000b30 <releaseLock>:
     b30:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     b34:	e28db000 	add	fp, sp, #0
     b38:	e24dd00c 	sub	sp, sp, #12
     b3c:	e50b0008 	str	r0, [fp, #-8]
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e5933004 	ldr	r3, [r3, #4]
     b48:	e3530000 	cmp	r3, #0
     b4c:	0a000006 	beq	b6c <releaseLock+0x3c>
     b50:	e51b3008 	ldr	r3, [fp, #-8]
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e3530001 	cmp	r3, #1
     b5c:	1a000002 	bne	b6c <releaseLock+0x3c>
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e3a02000 	mov	r2, #0
     b68:	e5832000 	str	r2, [r3]
     b6c:	e1a00000 	nop			@ (mov r0, r0)
     b70:	e28bd000 	add	sp, fp, #0
     b74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <initiateCondVar>:
     b7c:	e92d4800 	push	{fp, lr}
     b80:	e28db004 	add	fp, sp, #4
     b84:	e24dd008 	sub	sp, sp, #8
     b88:	e50b0008 	str	r0, [fp, #-8]
     b8c:	eb0001b8 	bl	1274 <getChannel>
     b90:	e1a02000 	mov	r2, r0
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e5832000 	str	r2, [r3]
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e3a02001 	mov	r2, #1
     ba4:	e5832004 	str	r2, [r3, #4]
     ba8:	e1a00000 	nop			@ (mov r0, r0)
     bac:	e24bd004 	sub	sp, fp, #4
     bb0:	e8bd8800 	pop	{fp, pc}

00000bb4 <condWait>:
     bb4:	e92d4800 	push	{fp, lr}
     bb8:	e28db004 	add	fp, sp, #4
     bbc:	e24dd008 	sub	sp, sp, #8
     bc0:	e50b0008 	str	r0, [fp, #-8]
     bc4:	e50b100c 	str	r1, [fp, #-12]
     bc8:	e51b3008 	ldr	r3, [fp, #-8]
     bcc:	e5933004 	ldr	r3, [r3, #4]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	0a00000c 	beq	c0c <condWait+0x58>
     bd8:	e51b300c 	ldr	r3, [fp, #-12]
     bdc:	e5933004 	ldr	r3, [r3, #4]
     be0:	e3530000 	cmp	r3, #0
     be4:	0a000008 	beq	c0c <condWait+0x58>
     be8:	e51b000c 	ldr	r0, [fp, #-12]
     bec:	ebffffcf 	bl	b30 <releaseLock>
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e1a00003 	mov	r0, r3
     bfc:	eb000193 	bl	1250 <sleepChan>
     c00:	e51b000c 	ldr	r0, [fp, #-12]
     c04:	ebffffb5 	bl	ae0 <acquireLock>
     c08:	ea000000 	b	c10 <condWait+0x5c>
     c0c:	e1a00000 	nop			@ (mov r0, r0)
     c10:	e24bd004 	sub	sp, fp, #4
     c14:	e8bd8800 	pop	{fp, pc}

00000c18 <broadcast>:
     c18:	e92d4800 	push	{fp, lr}
     c1c:	e28db004 	add	fp, sp, #4
     c20:	e24dd008 	sub	sp, sp, #8
     c24:	e50b0008 	str	r0, [fp, #-8]
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5933004 	ldr	r3, [r3, #4]
     c30:	e3530000 	cmp	r3, #0
     c34:	0a000004 	beq	c4c <broadcast+0x34>
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e5933000 	ldr	r3, [r3]
     c40:	e1a00003 	mov	r0, r3
     c44:	eb000193 	bl	1298 <sigChan>
     c48:	ea000000 	b	c50 <broadcast+0x38>
     c4c:	e1a00000 	nop			@ (mov r0, r0)
     c50:	e24bd004 	sub	sp, fp, #4
     c54:	e8bd8800 	pop	{fp, pc}

00000c58 <signal>:
     c58:	e92d4800 	push	{fp, lr}
     c5c:	e28db004 	add	fp, sp, #4
     c60:	e24dd008 	sub	sp, sp, #8
     c64:	e50b0008 	str	r0, [fp, #-8]
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e5933004 	ldr	r3, [r3, #4]
     c70:	e3530000 	cmp	r3, #0
     c74:	0a000004 	beq	c8c <signal+0x34>
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e5933000 	ldr	r3, [r3]
     c80:	e1a00003 	mov	r0, r3
     c84:	eb00018c 	bl	12bc <sigOneChan>
     c88:	ea000000 	b	c90 <signal+0x38>
     c8c:	e1a00000 	nop			@ (mov r0, r0)
     c90:	e24bd004 	sub	sp, fp, #4
     c94:	e8bd8800 	pop	{fp, pc}

00000c98 <semInit>:
     c98:	e92d4800 	push	{fp, lr}
     c9c:	e28db004 	add	fp, sp, #4
     ca0:	e24dd008 	sub	sp, sp, #8
     ca4:	e50b0008 	str	r0, [fp, #-8]
     ca8:	e50b100c 	str	r1, [fp, #-12]
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e2833004 	add	r3, r3, #4
     cb4:	e1a00003 	mov	r0, r3
     cb8:	ebffff7a 	bl	aa8 <initiateLock>
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e283300c 	add	r3, r3, #12
     cc4:	e1a00003 	mov	r0, r3
     cc8:	ebffffab 	bl	b7c <initiateCondVar>
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e51b200c 	ldr	r2, [fp, #-12]
     cd4:	e5832000 	str	r2, [r3]
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e3a02001 	mov	r2, #1
     ce0:	e5832014 	str	r2, [r3, #20]
     ce4:	e1a00000 	nop			@ (mov r0, r0)
     ce8:	e24bd004 	sub	sp, fp, #4
     cec:	e8bd8800 	pop	{fp, pc}

00000cf0 <semUp>:
     cf0:	e92d4800 	push	{fp, lr}
     cf4:	e28db004 	add	fp, sp, #4
     cf8:	e24dd008 	sub	sp, sp, #8
     cfc:	e50b0008 	str	r0, [fp, #-8]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e2833004 	add	r3, r3, #4
     d08:	e1a00003 	mov	r0, r3
     d0c:	ebffff73 	bl	ae0 <acquireLock>
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e2832001 	add	r2, r3, #1
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5832000 	str	r2, [r3]
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e283300c 	add	r3, r3, #12
     d2c:	e1a00003 	mov	r0, r3
     d30:	ebffffc8 	bl	c58 <signal>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e2833004 	add	r3, r3, #4
     d3c:	e1a00003 	mov	r0, r3
     d40:	ebffff7a 	bl	b30 <releaseLock>
     d44:	e1a00000 	nop			@ (mov r0, r0)
     d48:	e24bd004 	sub	sp, fp, #4
     d4c:	e8bd8800 	pop	{fp, pc}

00000d50 <semDown>:
     d50:	e92d4800 	push	{fp, lr}
     d54:	e28db004 	add	fp, sp, #4
     d58:	e24dd008 	sub	sp, sp, #8
     d5c:	e50b0008 	str	r0, [fp, #-8]
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e2833004 	add	r3, r3, #4
     d68:	e1a00003 	mov	r0, r3
     d6c:	ebffff5b 	bl	ae0 <acquireLock>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e2432001 	sub	r2, r3, #1
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5832000 	str	r2, [r3]
     d84:	ea000006 	b	da4 <semDown+0x54>
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e283200c 	add	r2, r3, #12
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e2833004 	add	r3, r3, #4
     d98:	e1a01003 	mov	r1, r3
     d9c:	e1a00002 	mov	r0, r2
     da0:	ebffff83 	bl	bb4 <condWait>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5933000 	ldr	r3, [r3]
     dac:	e3530000 	cmp	r3, #0
     db0:	bafffff4 	blt	d88 <semDown+0x38>
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e2833004 	add	r3, r3, #4
     dbc:	e1a00003 	mov	r0, r3
     dc0:	ebffff5a 	bl	b30 <releaseLock>
     dc4:	e1a00000 	nop			@ (mov r0, r0)
     dc8:	e24bd004 	sub	sp, fp, #4
     dcc:	e8bd8800 	pop	{fp, pc}

00000dd0 <fork>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a00001 	mov	r0, #1
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <exit>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a00002 	mov	r0, #2
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <wait>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a00003 	mov	r0, #3
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <pipe>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a00004 	mov	r0, #4
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <read>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a00005 	mov	r0, #5
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <write>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00010 	mov	r0, #16
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <close>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a00015 	mov	r0, #21
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <kill>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a00006 	mov	r0, #6
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <exec>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a00007 	mov	r0, #7
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <open>:
     f14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f18:	e1a04003 	mov	r4, r3
     f1c:	e1a03002 	mov	r3, r2
     f20:	e1a02001 	mov	r2, r1
     f24:	e1a01000 	mov	r1, r0
     f28:	e3a0000f 	mov	r0, #15
     f2c:	ef000000 	svc	0x00000000
     f30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f34:	e12fff1e 	bx	lr

00000f38 <mknod>:
     f38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f3c:	e1a04003 	mov	r4, r3
     f40:	e1a03002 	mov	r3, r2
     f44:	e1a02001 	mov	r2, r1
     f48:	e1a01000 	mov	r1, r0
     f4c:	e3a00011 	mov	r0, #17
     f50:	ef000000 	svc	0x00000000
     f54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f58:	e12fff1e 	bx	lr

00000f5c <unlink>:
     f5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f60:	e1a04003 	mov	r4, r3
     f64:	e1a03002 	mov	r3, r2
     f68:	e1a02001 	mov	r2, r1
     f6c:	e1a01000 	mov	r1, r0
     f70:	e3a00012 	mov	r0, #18
     f74:	ef000000 	svc	0x00000000
     f78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f7c:	e12fff1e 	bx	lr

00000f80 <fstat>:
     f80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f84:	e1a04003 	mov	r4, r3
     f88:	e1a03002 	mov	r3, r2
     f8c:	e1a02001 	mov	r2, r1
     f90:	e1a01000 	mov	r1, r0
     f94:	e3a00008 	mov	r0, #8
     f98:	ef000000 	svc	0x00000000
     f9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa0:	e12fff1e 	bx	lr

00000fa4 <link>:
     fa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa8:	e1a04003 	mov	r4, r3
     fac:	e1a03002 	mov	r3, r2
     fb0:	e1a02001 	mov	r2, r1
     fb4:	e1a01000 	mov	r1, r0
     fb8:	e3a00013 	mov	r0, #19
     fbc:	ef000000 	svc	0x00000000
     fc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc4:	e12fff1e 	bx	lr

00000fc8 <mkdir>:
     fc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fcc:	e1a04003 	mov	r4, r3
     fd0:	e1a03002 	mov	r3, r2
     fd4:	e1a02001 	mov	r2, r1
     fd8:	e1a01000 	mov	r1, r0
     fdc:	e3a00014 	mov	r0, #20
     fe0:	ef000000 	svc	0x00000000
     fe4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe8:	e12fff1e 	bx	lr

00000fec <chdir>:
     fec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff0:	e1a04003 	mov	r4, r3
     ff4:	e1a03002 	mov	r3, r2
     ff8:	e1a02001 	mov	r2, r1
     ffc:	e1a01000 	mov	r1, r0
    1000:	e3a00009 	mov	r0, #9
    1004:	ef000000 	svc	0x00000000
    1008:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    100c:	e12fff1e 	bx	lr

00001010 <dup>:
    1010:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1014:	e1a04003 	mov	r4, r3
    1018:	e1a03002 	mov	r3, r2
    101c:	e1a02001 	mov	r2, r1
    1020:	e1a01000 	mov	r1, r0
    1024:	e3a0000a 	mov	r0, #10
    1028:	ef000000 	svc	0x00000000
    102c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1030:	e12fff1e 	bx	lr

00001034 <getpid>:
    1034:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1038:	e1a04003 	mov	r4, r3
    103c:	e1a03002 	mov	r3, r2
    1040:	e1a02001 	mov	r2, r1
    1044:	e1a01000 	mov	r1, r0
    1048:	e3a0000b 	mov	r0, #11
    104c:	ef000000 	svc	0x00000000
    1050:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1054:	e12fff1e 	bx	lr

00001058 <sbrk>:
    1058:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    105c:	e1a04003 	mov	r4, r3
    1060:	e1a03002 	mov	r3, r2
    1064:	e1a02001 	mov	r2, r1
    1068:	e1a01000 	mov	r1, r0
    106c:	e3a0000c 	mov	r0, #12
    1070:	ef000000 	svc	0x00000000
    1074:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1078:	e12fff1e 	bx	lr

0000107c <sleep>:
    107c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1080:	e1a04003 	mov	r4, r3
    1084:	e1a03002 	mov	r3, r2
    1088:	e1a02001 	mov	r2, r1
    108c:	e1a01000 	mov	r1, r0
    1090:	e3a0000d 	mov	r0, #13
    1094:	ef000000 	svc	0x00000000
    1098:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    109c:	e12fff1e 	bx	lr

000010a0 <uptime>:
    10a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a4:	e1a04003 	mov	r4, r3
    10a8:	e1a03002 	mov	r3, r2
    10ac:	e1a02001 	mov	r2, r1
    10b0:	e1a01000 	mov	r1, r0
    10b4:	e3a0000e 	mov	r0, #14
    10b8:	ef000000 	svc	0x00000000
    10bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c0:	e12fff1e 	bx	lr

000010c4 <proclist>:
    10c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10c8:	e1a04003 	mov	r4, r3
    10cc:	e1a03002 	mov	r3, r2
    10d0:	e1a02001 	mov	r2, r1
    10d4:	e1a01000 	mov	r1, r0
    10d8:	e3a00016 	mov	r0, #22
    10dc:	ef000000 	svc	0x00000000
    10e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e4:	e12fff1e 	bx	lr

000010e8 <settickets>:
    10e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ec:	e1a04003 	mov	r4, r3
    10f0:	e1a03002 	mov	r3, r2
    10f4:	e1a02001 	mov	r2, r1
    10f8:	e1a01000 	mov	r1, r0
    10fc:	e3a00017 	mov	r0, #23
    1100:	ef000000 	svc	0x00000000
    1104:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1108:	e12fff1e 	bx	lr

0000110c <srand>:
    110c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1110:	e1a04003 	mov	r4, r3
    1114:	e1a03002 	mov	r3, r2
    1118:	e1a02001 	mov	r2, r1
    111c:	e1a01000 	mov	r1, r0
    1120:	e3a00018 	mov	r0, #24
    1124:	ef000000 	svc	0x00000000
    1128:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    112c:	e12fff1e 	bx	lr

00001130 <getpinfo>:
    1130:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1134:	e1a04003 	mov	r4, r3
    1138:	e1a03002 	mov	r3, r2
    113c:	e1a02001 	mov	r2, r1
    1140:	e1a01000 	mov	r1, r0
    1144:	e3a00019 	mov	r0, #25
    1148:	ef000000 	svc	0x00000000
    114c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1150:	e12fff1e 	bx	lr

00001154 <print_pt>:
    1154:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1158:	e1a04003 	mov	r4, r3
    115c:	e1a03002 	mov	r3, r2
    1160:	e1a02001 	mov	r2, r1
    1164:	e1a01000 	mov	r1, r0
    1168:	e3a0001f 	mov	r0, #31
    116c:	ef000000 	svc	0x00000000
    1170:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1174:	e12fff1e 	bx	lr

00001178 <thread_create>:
    1178:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    117c:	e1a04003 	mov	r4, r3
    1180:	e1a03002 	mov	r3, r2
    1184:	e1a02001 	mov	r2, r1
    1188:	e1a01000 	mov	r1, r0
    118c:	e3a00020 	mov	r0, #32
    1190:	ef000000 	svc	0x00000000
    1194:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1198:	e12fff1e 	bx	lr

0000119c <thread_exit>:
    119c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11a0:	e1a04003 	mov	r4, r3
    11a4:	e1a03002 	mov	r3, r2
    11a8:	e1a02001 	mov	r2, r1
    11ac:	e1a01000 	mov	r1, r0
    11b0:	e3a00021 	mov	r0, #33	@ 0x21
    11b4:	ef000000 	svc	0x00000000
    11b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11bc:	e12fff1e 	bx	lr

000011c0 <thread_join>:
    11c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11c4:	e1a04003 	mov	r4, r3
    11c8:	e1a03002 	mov	r3, r2
    11cc:	e1a02001 	mov	r2, r1
    11d0:	e1a01000 	mov	r1, r0
    11d4:	e3a00022 	mov	r0, #34	@ 0x22
    11d8:	ef000000 	svc	0x00000000
    11dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11e0:	e12fff1e 	bx	lr

000011e4 <waitpid>:
    11e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11e8:	e1a04003 	mov	r4, r3
    11ec:	e1a03002 	mov	r3, r2
    11f0:	e1a02001 	mov	r2, r1
    11f4:	e1a01000 	mov	r1, r0
    11f8:	e3a00023 	mov	r0, #35	@ 0x23
    11fc:	ef000000 	svc	0x00000000
    1200:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1204:	e12fff1e 	bx	lr

00001208 <barrier_init>:
    1208:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    120c:	e1a04003 	mov	r4, r3
    1210:	e1a03002 	mov	r3, r2
    1214:	e1a02001 	mov	r2, r1
    1218:	e1a01000 	mov	r1, r0
    121c:	e3a00024 	mov	r0, #36	@ 0x24
    1220:	ef000000 	svc	0x00000000
    1224:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1228:	e12fff1e 	bx	lr

0000122c <barrier_check>:
    122c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1230:	e1a04003 	mov	r4, r3
    1234:	e1a03002 	mov	r3, r2
    1238:	e1a02001 	mov	r2, r1
    123c:	e1a01000 	mov	r1, r0
    1240:	e3a00025 	mov	r0, #37	@ 0x25
    1244:	ef000000 	svc	0x00000000
    1248:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    124c:	e12fff1e 	bx	lr

00001250 <sleepChan>:
    1250:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1254:	e1a04003 	mov	r4, r3
    1258:	e1a03002 	mov	r3, r2
    125c:	e1a02001 	mov	r2, r1
    1260:	e1a01000 	mov	r1, r0
    1264:	e3a00026 	mov	r0, #38	@ 0x26
    1268:	ef000000 	svc	0x00000000
    126c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1270:	e12fff1e 	bx	lr

00001274 <getChannel>:
    1274:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1278:	e1a04003 	mov	r4, r3
    127c:	e1a03002 	mov	r3, r2
    1280:	e1a02001 	mov	r2, r1
    1284:	e1a01000 	mov	r1, r0
    1288:	e3a00027 	mov	r0, #39	@ 0x27
    128c:	ef000000 	svc	0x00000000
    1290:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1294:	e12fff1e 	bx	lr

00001298 <sigChan>:
    1298:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    129c:	e1a04003 	mov	r4, r3
    12a0:	e1a03002 	mov	r3, r2
    12a4:	e1a02001 	mov	r2, r1
    12a8:	e1a01000 	mov	r1, r0
    12ac:	e3a00028 	mov	r0, #40	@ 0x28
    12b0:	ef000000 	svc	0x00000000
    12b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12b8:	e12fff1e 	bx	lr

000012bc <sigOneChan>:
    12bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12c0:	e1a04003 	mov	r4, r3
    12c4:	e1a03002 	mov	r3, r2
    12c8:	e1a02001 	mov	r2, r1
    12cc:	e1a01000 	mov	r1, r0
    12d0:	e3a00029 	mov	r0, #41	@ 0x29
    12d4:	ef000000 	svc	0x00000000
    12d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12dc:	e12fff1e 	bx	lr

000012e0 <symlink>:
    12e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12e4:	e1a04003 	mov	r4, r3
    12e8:	e1a03002 	mov	r3, r2
    12ec:	e1a02001 	mov	r2, r1
    12f0:	e1a01000 	mov	r1, r0
    12f4:	e3a0002a 	mov	r0, #42	@ 0x2a
    12f8:	ef000000 	svc	0x00000000
    12fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1300:	e12fff1e 	bx	lr

00001304 <syscall>:
    1304:	ef000000 	svc	0x00000000
    1308:	e12fff1e 	bx	lr

0000130c <putc>:
    130c:	e92d4800 	push	{fp, lr}
    1310:	e28db004 	add	fp, sp, #4
    1314:	e24dd008 	sub	sp, sp, #8
    1318:	e50b0008 	str	r0, [fp, #-8]
    131c:	e1a03001 	mov	r3, r1
    1320:	e54b3009 	strb	r3, [fp, #-9]
    1324:	e24b3009 	sub	r3, fp, #9
    1328:	e3a02001 	mov	r2, #1
    132c:	e1a01003 	mov	r1, r3
    1330:	e51b0008 	ldr	r0, [fp, #-8]
    1334:	ebfffed2 	bl	e84 <write>
    1338:	e1a00000 	nop			@ (mov r0, r0)
    133c:	e24bd004 	sub	sp, fp, #4
    1340:	e8bd8800 	pop	{fp, pc}

00001344 <printint>:
    1344:	e92d4800 	push	{fp, lr}
    1348:	e28db004 	add	fp, sp, #4
    134c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1350:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1354:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1358:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    135c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1360:	e3a03000 	mov	r3, #0
    1364:	e50b300c 	str	r3, [fp, #-12]
    1368:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    136c:	e3530000 	cmp	r3, #0
    1370:	0a000008 	beq	1398 <printint+0x54>
    1374:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1378:	e3530000 	cmp	r3, #0
    137c:	aa000005 	bge	1398 <printint+0x54>
    1380:	e3a03001 	mov	r3, #1
    1384:	e50b300c 	str	r3, [fp, #-12]
    1388:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    138c:	e2633000 	rsb	r3, r3, #0
    1390:	e50b3010 	str	r3, [fp, #-16]
    1394:	ea000001 	b	13a0 <printint+0x5c>
    1398:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    139c:	e50b3010 	str	r3, [fp, #-16]
    13a0:	e3a03000 	mov	r3, #0
    13a4:	e50b3008 	str	r3, [fp, #-8]
    13a8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    13ac:	e51b3010 	ldr	r3, [fp, #-16]
    13b0:	e1a01002 	mov	r1, r2
    13b4:	e1a00003 	mov	r0, r3
    13b8:	eb0001d5 	bl	1b14 <__aeabi_uidivmod>
    13bc:	e1a03001 	mov	r3, r1
    13c0:	e1a01003 	mov	r1, r3
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e2832001 	add	r2, r3, #1
    13cc:	e50b2008 	str	r2, [fp, #-8]
    13d0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1478 <printint+0x134>
    13d4:	e7d22001 	ldrb	r2, [r2, r1]
    13d8:	e2433004 	sub	r3, r3, #4
    13dc:	e083300b 	add	r3, r3, fp
    13e0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    13e4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    13e8:	e1a01003 	mov	r1, r3
    13ec:	e51b0010 	ldr	r0, [fp, #-16]
    13f0:	eb00018a 	bl	1a20 <__udivsi3>
    13f4:	e1a03000 	mov	r3, r0
    13f8:	e50b3010 	str	r3, [fp, #-16]
    13fc:	e51b3010 	ldr	r3, [fp, #-16]
    1400:	e3530000 	cmp	r3, #0
    1404:	1affffe7 	bne	13a8 <printint+0x64>
    1408:	e51b300c 	ldr	r3, [fp, #-12]
    140c:	e3530000 	cmp	r3, #0
    1410:	0a00000e 	beq	1450 <printint+0x10c>
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e2832001 	add	r2, r3, #1
    141c:	e50b2008 	str	r2, [fp, #-8]
    1420:	e2433004 	sub	r3, r3, #4
    1424:	e083300b 	add	r3, r3, fp
    1428:	e3a0202d 	mov	r2, #45	@ 0x2d
    142c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1430:	ea000006 	b	1450 <printint+0x10c>
    1434:	e24b2020 	sub	r2, fp, #32
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e0823003 	add	r3, r2, r3
    1440:	e5d33000 	ldrb	r3, [r3]
    1444:	e1a01003 	mov	r1, r3
    1448:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    144c:	ebffffae 	bl	130c <putc>
    1450:	e51b3008 	ldr	r3, [fp, #-8]
    1454:	e2433001 	sub	r3, r3, #1
    1458:	e50b3008 	str	r3, [fp, #-8]
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e3530000 	cmp	r3, #0
    1464:	aafffff2 	bge	1434 <printint+0xf0>
    1468:	e1a00000 	nop			@ (mov r0, r0)
    146c:	e1a00000 	nop			@ (mov r0, r0)
    1470:	e24bd004 	sub	sp, fp, #4
    1474:	e8bd8800 	pop	{fp, pc}
    1478:	00001c10 	.word	0x00001c10

0000147c <printf>:
    147c:	e92d000e 	push	{r1, r2, r3}
    1480:	e92d4800 	push	{fp, lr}
    1484:	e28db004 	add	fp, sp, #4
    1488:	e24dd024 	sub	sp, sp, #36	@ 0x24
    148c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1490:	e3a03000 	mov	r3, #0
    1494:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1498:	e28b3008 	add	r3, fp, #8
    149c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14a0:	e3a03000 	mov	r3, #0
    14a4:	e50b3010 	str	r3, [fp, #-16]
    14a8:	ea000074 	b	1680 <printf+0x204>
    14ac:	e59b2004 	ldr	r2, [fp, #4]
    14b0:	e51b3010 	ldr	r3, [fp, #-16]
    14b4:	e0823003 	add	r3, r2, r3
    14b8:	e5d33000 	ldrb	r3, [r3]
    14bc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    14c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14c4:	e3530000 	cmp	r3, #0
    14c8:	1a00000b 	bne	14fc <printf+0x80>
    14cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14d0:	e3530025 	cmp	r3, #37	@ 0x25
    14d4:	1a000002 	bne	14e4 <printf+0x68>
    14d8:	e3a03025 	mov	r3, #37	@ 0x25
    14dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14e0:	ea000063 	b	1674 <printf+0x1f8>
    14e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14e8:	e6ef3073 	uxtb	r3, r3
    14ec:	e1a01003 	mov	r1, r3
    14f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14f4:	ebffff84 	bl	130c <putc>
    14f8:	ea00005d 	b	1674 <printf+0x1f8>
    14fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1500:	e3530025 	cmp	r3, #37	@ 0x25
    1504:	1a00005a 	bne	1674 <printf+0x1f8>
    1508:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    150c:	e3530064 	cmp	r3, #100	@ 0x64
    1510:	1a00000a 	bne	1540 <printf+0xc4>
    1514:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1518:	e5933000 	ldr	r3, [r3]
    151c:	e1a01003 	mov	r1, r3
    1520:	e3a03001 	mov	r3, #1
    1524:	e3a0200a 	mov	r2, #10
    1528:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    152c:	ebffff84 	bl	1344 <printint>
    1530:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1534:	e2833004 	add	r3, r3, #4
    1538:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    153c:	ea00004a 	b	166c <printf+0x1f0>
    1540:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1544:	e3530078 	cmp	r3, #120	@ 0x78
    1548:	0a000002 	beq	1558 <printf+0xdc>
    154c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1550:	e3530070 	cmp	r3, #112	@ 0x70
    1554:	1a00000a 	bne	1584 <printf+0x108>
    1558:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e1a01003 	mov	r1, r3
    1564:	e3a03000 	mov	r3, #0
    1568:	e3a02010 	mov	r2, #16
    156c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1570:	ebffff73 	bl	1344 <printint>
    1574:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1578:	e2833004 	add	r3, r3, #4
    157c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1580:	ea000039 	b	166c <printf+0x1f0>
    1584:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1588:	e3530073 	cmp	r3, #115	@ 0x73
    158c:	1a000018 	bne	15f4 <printf+0x178>
    1590:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1594:	e5933000 	ldr	r3, [r3]
    1598:	e50b300c 	str	r3, [fp, #-12]
    159c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15a0:	e2833004 	add	r3, r3, #4
    15a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e3530000 	cmp	r3, #0
    15b0:	1a00000a 	bne	15e0 <printf+0x164>
    15b4:	e59f30f4 	ldr	r3, [pc, #244]	@ 16b0 <printf+0x234>
    15b8:	e50b300c 	str	r3, [fp, #-12]
    15bc:	ea000007 	b	15e0 <printf+0x164>
    15c0:	e51b300c 	ldr	r3, [fp, #-12]
    15c4:	e5d33000 	ldrb	r3, [r3]
    15c8:	e1a01003 	mov	r1, r3
    15cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    15d0:	ebffff4d 	bl	130c <putc>
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e2833001 	add	r3, r3, #1
    15dc:	e50b300c 	str	r3, [fp, #-12]
    15e0:	e51b300c 	ldr	r3, [fp, #-12]
    15e4:	e5d33000 	ldrb	r3, [r3]
    15e8:	e3530000 	cmp	r3, #0
    15ec:	1afffff3 	bne	15c0 <printf+0x144>
    15f0:	ea00001d 	b	166c <printf+0x1f0>
    15f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    15f8:	e3530063 	cmp	r3, #99	@ 0x63
    15fc:	1a000009 	bne	1628 <printf+0x1ac>
    1600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1604:	e5933000 	ldr	r3, [r3]
    1608:	e6ef3073 	uxtb	r3, r3
    160c:	e1a01003 	mov	r1, r3
    1610:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1614:	ebffff3c 	bl	130c <putc>
    1618:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    161c:	e2833004 	add	r3, r3, #4
    1620:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1624:	ea000010 	b	166c <printf+0x1f0>
    1628:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    162c:	e3530025 	cmp	r3, #37	@ 0x25
    1630:	1a000005 	bne	164c <printf+0x1d0>
    1634:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1638:	e6ef3073 	uxtb	r3, r3
    163c:	e1a01003 	mov	r1, r3
    1640:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1644:	ebffff30 	bl	130c <putc>
    1648:	ea000007 	b	166c <printf+0x1f0>
    164c:	e3a01025 	mov	r1, #37	@ 0x25
    1650:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1654:	ebffff2c 	bl	130c <putc>
    1658:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    165c:	e6ef3073 	uxtb	r3, r3
    1660:	e1a01003 	mov	r1, r3
    1664:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1668:	ebffff27 	bl	130c <putc>
    166c:	e3a03000 	mov	r3, #0
    1670:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1674:	e51b3010 	ldr	r3, [fp, #-16]
    1678:	e2833001 	add	r3, r3, #1
    167c:	e50b3010 	str	r3, [fp, #-16]
    1680:	e59b2004 	ldr	r2, [fp, #4]
    1684:	e51b3010 	ldr	r3, [fp, #-16]
    1688:	e0823003 	add	r3, r2, r3
    168c:	e5d33000 	ldrb	r3, [r3]
    1690:	e3530000 	cmp	r3, #0
    1694:	1affff84 	bne	14ac <printf+0x30>
    1698:	e1a00000 	nop			@ (mov r0, r0)
    169c:	e1a00000 	nop			@ (mov r0, r0)
    16a0:	e24bd004 	sub	sp, fp, #4
    16a4:	e8bd4800 	pop	{fp, lr}
    16a8:	e28dd00c 	add	sp, sp, #12
    16ac:	e12fff1e 	bx	lr
    16b0:	00001c08 	.word	0x00001c08

000016b4 <free>:
    16b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    16b8:	e28db000 	add	fp, sp, #0
    16bc:	e24dd014 	sub	sp, sp, #20
    16c0:	e50b0010 	str	r0, [fp, #-16]
    16c4:	e51b3010 	ldr	r3, [fp, #-16]
    16c8:	e2433008 	sub	r3, r3, #8
    16cc:	e50b300c 	str	r3, [fp, #-12]
    16d0:	e59f3154 	ldr	r3, [pc, #340]	@ 182c <free+0x178>
    16d4:	e5933000 	ldr	r3, [r3]
    16d8:	e50b3008 	str	r3, [fp, #-8]
    16dc:	ea000010 	b	1724 <free+0x70>
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e5933000 	ldr	r3, [r3]
    16e8:	e51b2008 	ldr	r2, [fp, #-8]
    16ec:	e1520003 	cmp	r2, r3
    16f0:	3a000008 	bcc	1718 <free+0x64>
    16f4:	e51b200c 	ldr	r2, [fp, #-12]
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e1520003 	cmp	r2, r3
    1700:	8a000010 	bhi	1748 <free+0x94>
    1704:	e51b3008 	ldr	r3, [fp, #-8]
    1708:	e5933000 	ldr	r3, [r3]
    170c:	e51b200c 	ldr	r2, [fp, #-12]
    1710:	e1520003 	cmp	r2, r3
    1714:	3a00000b 	bcc	1748 <free+0x94>
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e5933000 	ldr	r3, [r3]
    1720:	e50b3008 	str	r3, [fp, #-8]
    1724:	e51b200c 	ldr	r2, [fp, #-12]
    1728:	e51b3008 	ldr	r3, [fp, #-8]
    172c:	e1520003 	cmp	r2, r3
    1730:	9affffea 	bls	16e0 <free+0x2c>
    1734:	e51b3008 	ldr	r3, [fp, #-8]
    1738:	e5933000 	ldr	r3, [r3]
    173c:	e51b200c 	ldr	r2, [fp, #-12]
    1740:	e1520003 	cmp	r2, r3
    1744:	2affffe5 	bcs	16e0 <free+0x2c>
    1748:	e51b300c 	ldr	r3, [fp, #-12]
    174c:	e5933004 	ldr	r3, [r3, #4]
    1750:	e1a03183 	lsl	r3, r3, #3
    1754:	e51b200c 	ldr	r2, [fp, #-12]
    1758:	e0822003 	add	r2, r2, r3
    175c:	e51b3008 	ldr	r3, [fp, #-8]
    1760:	e5933000 	ldr	r3, [r3]
    1764:	e1520003 	cmp	r2, r3
    1768:	1a00000d 	bne	17a4 <free+0xf0>
    176c:	e51b300c 	ldr	r3, [fp, #-12]
    1770:	e5932004 	ldr	r2, [r3, #4]
    1774:	e51b3008 	ldr	r3, [fp, #-8]
    1778:	e5933000 	ldr	r3, [r3]
    177c:	e5933004 	ldr	r3, [r3, #4]
    1780:	e0822003 	add	r2, r2, r3
    1784:	e51b300c 	ldr	r3, [fp, #-12]
    1788:	e5832004 	str	r2, [r3, #4]
    178c:	e51b3008 	ldr	r3, [fp, #-8]
    1790:	e5933000 	ldr	r3, [r3]
    1794:	e5932000 	ldr	r2, [r3]
    1798:	e51b300c 	ldr	r3, [fp, #-12]
    179c:	e5832000 	str	r2, [r3]
    17a0:	ea000003 	b	17b4 <free+0x100>
    17a4:	e51b3008 	ldr	r3, [fp, #-8]
    17a8:	e5932000 	ldr	r2, [r3]
    17ac:	e51b300c 	ldr	r3, [fp, #-12]
    17b0:	e5832000 	str	r2, [r3]
    17b4:	e51b3008 	ldr	r3, [fp, #-8]
    17b8:	e5933004 	ldr	r3, [r3, #4]
    17bc:	e1a03183 	lsl	r3, r3, #3
    17c0:	e51b2008 	ldr	r2, [fp, #-8]
    17c4:	e0823003 	add	r3, r2, r3
    17c8:	e51b200c 	ldr	r2, [fp, #-12]
    17cc:	e1520003 	cmp	r2, r3
    17d0:	1a00000b 	bne	1804 <free+0x150>
    17d4:	e51b3008 	ldr	r3, [fp, #-8]
    17d8:	e5932004 	ldr	r2, [r3, #4]
    17dc:	e51b300c 	ldr	r3, [fp, #-12]
    17e0:	e5933004 	ldr	r3, [r3, #4]
    17e4:	e0822003 	add	r2, r2, r3
    17e8:	e51b3008 	ldr	r3, [fp, #-8]
    17ec:	e5832004 	str	r2, [r3, #4]
    17f0:	e51b300c 	ldr	r3, [fp, #-12]
    17f4:	e5932000 	ldr	r2, [r3]
    17f8:	e51b3008 	ldr	r3, [fp, #-8]
    17fc:	e5832000 	str	r2, [r3]
    1800:	ea000002 	b	1810 <free+0x15c>
    1804:	e51b3008 	ldr	r3, [fp, #-8]
    1808:	e51b200c 	ldr	r2, [fp, #-12]
    180c:	e5832000 	str	r2, [r3]
    1810:	e59f2014 	ldr	r2, [pc, #20]	@ 182c <free+0x178>
    1814:	e51b3008 	ldr	r3, [fp, #-8]
    1818:	e5823000 	str	r3, [r2]
    181c:	e1a00000 	nop			@ (mov r0, r0)
    1820:	e28bd000 	add	sp, fp, #0
    1824:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1828:	e12fff1e 	bx	lr
    182c:	00001c2c 	.word	0x00001c2c

00001830 <morecore>:
    1830:	e92d4800 	push	{fp, lr}
    1834:	e28db004 	add	fp, sp, #4
    1838:	e24dd010 	sub	sp, sp, #16
    183c:	e50b0010 	str	r0, [fp, #-16]
    1840:	e51b3010 	ldr	r3, [fp, #-16]
    1844:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1848:	2a000001 	bcs	1854 <morecore+0x24>
    184c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1850:	e50b3010 	str	r3, [fp, #-16]
    1854:	e51b3010 	ldr	r3, [fp, #-16]
    1858:	e1a03183 	lsl	r3, r3, #3
    185c:	e1a00003 	mov	r0, r3
    1860:	ebfffdfc 	bl	1058 <sbrk>
    1864:	e50b0008 	str	r0, [fp, #-8]
    1868:	e51b3008 	ldr	r3, [fp, #-8]
    186c:	e3730001 	cmn	r3, #1
    1870:	1a000001 	bne	187c <morecore+0x4c>
    1874:	e3a03000 	mov	r3, #0
    1878:	ea00000a 	b	18a8 <morecore+0x78>
    187c:	e51b3008 	ldr	r3, [fp, #-8]
    1880:	e50b300c 	str	r3, [fp, #-12]
    1884:	e51b300c 	ldr	r3, [fp, #-12]
    1888:	e51b2010 	ldr	r2, [fp, #-16]
    188c:	e5832004 	str	r2, [r3, #4]
    1890:	e51b300c 	ldr	r3, [fp, #-12]
    1894:	e2833008 	add	r3, r3, #8
    1898:	e1a00003 	mov	r0, r3
    189c:	ebffff84 	bl	16b4 <free>
    18a0:	e59f300c 	ldr	r3, [pc, #12]	@ 18b4 <morecore+0x84>
    18a4:	e5933000 	ldr	r3, [r3]
    18a8:	e1a00003 	mov	r0, r3
    18ac:	e24bd004 	sub	sp, fp, #4
    18b0:	e8bd8800 	pop	{fp, pc}
    18b4:	00001c2c 	.word	0x00001c2c

000018b8 <malloc>:
    18b8:	e92d4800 	push	{fp, lr}
    18bc:	e28db004 	add	fp, sp, #4
    18c0:	e24dd018 	sub	sp, sp, #24
    18c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    18c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    18cc:	e2833007 	add	r3, r3, #7
    18d0:	e1a031a3 	lsr	r3, r3, #3
    18d4:	e2833001 	add	r3, r3, #1
    18d8:	e50b3010 	str	r3, [fp, #-16]
    18dc:	e59f3134 	ldr	r3, [pc, #308]	@ 1a18 <malloc+0x160>
    18e0:	e5933000 	ldr	r3, [r3]
    18e4:	e50b300c 	str	r3, [fp, #-12]
    18e8:	e51b300c 	ldr	r3, [fp, #-12]
    18ec:	e3530000 	cmp	r3, #0
    18f0:	1a00000b 	bne	1924 <malloc+0x6c>
    18f4:	e59f3120 	ldr	r3, [pc, #288]	@ 1a1c <malloc+0x164>
    18f8:	e50b300c 	str	r3, [fp, #-12]
    18fc:	e59f2114 	ldr	r2, [pc, #276]	@ 1a18 <malloc+0x160>
    1900:	e51b300c 	ldr	r3, [fp, #-12]
    1904:	e5823000 	str	r3, [r2]
    1908:	e59f3108 	ldr	r3, [pc, #264]	@ 1a18 <malloc+0x160>
    190c:	e5933000 	ldr	r3, [r3]
    1910:	e59f2104 	ldr	r2, [pc, #260]	@ 1a1c <malloc+0x164>
    1914:	e5823000 	str	r3, [r2]
    1918:	e59f30fc 	ldr	r3, [pc, #252]	@ 1a1c <malloc+0x164>
    191c:	e3a02000 	mov	r2, #0
    1920:	e5832004 	str	r2, [r3, #4]
    1924:	e51b300c 	ldr	r3, [fp, #-12]
    1928:	e5933000 	ldr	r3, [r3]
    192c:	e50b3008 	str	r3, [fp, #-8]
    1930:	e51b3008 	ldr	r3, [fp, #-8]
    1934:	e5933004 	ldr	r3, [r3, #4]
    1938:	e51b2010 	ldr	r2, [fp, #-16]
    193c:	e1520003 	cmp	r2, r3
    1940:	8a00001e 	bhi	19c0 <malloc+0x108>
    1944:	e51b3008 	ldr	r3, [fp, #-8]
    1948:	e5933004 	ldr	r3, [r3, #4]
    194c:	e51b2010 	ldr	r2, [fp, #-16]
    1950:	e1520003 	cmp	r2, r3
    1954:	1a000004 	bne	196c <malloc+0xb4>
    1958:	e51b3008 	ldr	r3, [fp, #-8]
    195c:	e5932000 	ldr	r2, [r3]
    1960:	e51b300c 	ldr	r3, [fp, #-12]
    1964:	e5832000 	str	r2, [r3]
    1968:	ea00000e 	b	19a8 <malloc+0xf0>
    196c:	e51b3008 	ldr	r3, [fp, #-8]
    1970:	e5932004 	ldr	r2, [r3, #4]
    1974:	e51b3010 	ldr	r3, [fp, #-16]
    1978:	e0422003 	sub	r2, r2, r3
    197c:	e51b3008 	ldr	r3, [fp, #-8]
    1980:	e5832004 	str	r2, [r3, #4]
    1984:	e51b3008 	ldr	r3, [fp, #-8]
    1988:	e5933004 	ldr	r3, [r3, #4]
    198c:	e1a03183 	lsl	r3, r3, #3
    1990:	e51b2008 	ldr	r2, [fp, #-8]
    1994:	e0823003 	add	r3, r2, r3
    1998:	e50b3008 	str	r3, [fp, #-8]
    199c:	e51b3008 	ldr	r3, [fp, #-8]
    19a0:	e51b2010 	ldr	r2, [fp, #-16]
    19a4:	e5832004 	str	r2, [r3, #4]
    19a8:	e59f2068 	ldr	r2, [pc, #104]	@ 1a18 <malloc+0x160>
    19ac:	e51b300c 	ldr	r3, [fp, #-12]
    19b0:	e5823000 	str	r3, [r2]
    19b4:	e51b3008 	ldr	r3, [fp, #-8]
    19b8:	e2833008 	add	r3, r3, #8
    19bc:	ea000012 	b	1a0c <malloc+0x154>
    19c0:	e59f3050 	ldr	r3, [pc, #80]	@ 1a18 <malloc+0x160>
    19c4:	e5933000 	ldr	r3, [r3]
    19c8:	e51b2008 	ldr	r2, [fp, #-8]
    19cc:	e1520003 	cmp	r2, r3
    19d0:	1a000007 	bne	19f4 <malloc+0x13c>
    19d4:	e51b0010 	ldr	r0, [fp, #-16]
    19d8:	ebffff94 	bl	1830 <morecore>
    19dc:	e50b0008 	str	r0, [fp, #-8]
    19e0:	e51b3008 	ldr	r3, [fp, #-8]
    19e4:	e3530000 	cmp	r3, #0
    19e8:	1a000001 	bne	19f4 <malloc+0x13c>
    19ec:	e3a03000 	mov	r3, #0
    19f0:	ea000005 	b	1a0c <malloc+0x154>
    19f4:	e51b3008 	ldr	r3, [fp, #-8]
    19f8:	e50b300c 	str	r3, [fp, #-12]
    19fc:	e51b3008 	ldr	r3, [fp, #-8]
    1a00:	e5933000 	ldr	r3, [r3]
    1a04:	e50b3008 	str	r3, [fp, #-8]
    1a08:	eaffffc8 	b	1930 <malloc+0x78>
    1a0c:	e1a00003 	mov	r0, r3
    1a10:	e24bd004 	sub	sp, fp, #4
    1a14:	e8bd8800 	pop	{fp, pc}
    1a18:	00001c2c 	.word	0x00001c2c
    1a1c:	00001c24 	.word	0x00001c24

00001a20 <__udivsi3>:
    1a20:	e2512001 	subs	r2, r1, #1
    1a24:	012fff1e 	bxeq	lr
    1a28:	3a000036 	bcc	1b08 <__udivsi3+0xe8>
    1a2c:	e1500001 	cmp	r0, r1
    1a30:	9a000022 	bls	1ac0 <__udivsi3+0xa0>
    1a34:	e1110002 	tst	r1, r2
    1a38:	0a000023 	beq	1acc <__udivsi3+0xac>
    1a3c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1a40:	01a01181 	lsleq	r1, r1, #3
    1a44:	03a03008 	moveq	r3, #8
    1a48:	13a03001 	movne	r3, #1
    1a4c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1a50:	31510000 	cmpcc	r1, r0
    1a54:	31a01201 	lslcc	r1, r1, #4
    1a58:	31a03203 	lslcc	r3, r3, #4
    1a5c:	3afffffa 	bcc	1a4c <__udivsi3+0x2c>
    1a60:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1a64:	31510000 	cmpcc	r1, r0
    1a68:	31a01081 	lslcc	r1, r1, #1
    1a6c:	31a03083 	lslcc	r3, r3, #1
    1a70:	3afffffa 	bcc	1a60 <__udivsi3+0x40>
    1a74:	e3a02000 	mov	r2, #0
    1a78:	e1500001 	cmp	r0, r1
    1a7c:	20400001 	subcs	r0, r0, r1
    1a80:	21822003 	orrcs	r2, r2, r3
    1a84:	e15000a1 	cmp	r0, r1, lsr #1
    1a88:	204000a1 	subcs	r0, r0, r1, lsr #1
    1a8c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1a90:	e1500121 	cmp	r0, r1, lsr #2
    1a94:	20400121 	subcs	r0, r0, r1, lsr #2
    1a98:	21822123 	orrcs	r2, r2, r3, lsr #2
    1a9c:	e15001a1 	cmp	r0, r1, lsr #3
    1aa0:	204001a1 	subcs	r0, r0, r1, lsr #3
    1aa4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1aa8:	e3500000 	cmp	r0, #0
    1aac:	11b03223 	lsrsne	r3, r3, #4
    1ab0:	11a01221 	lsrne	r1, r1, #4
    1ab4:	1affffef 	bne	1a78 <__udivsi3+0x58>
    1ab8:	e1a00002 	mov	r0, r2
    1abc:	e12fff1e 	bx	lr
    1ac0:	03a00001 	moveq	r0, #1
    1ac4:	13a00000 	movne	r0, #0
    1ac8:	e12fff1e 	bx	lr
    1acc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1ad0:	21a01821 	lsrcs	r1, r1, #16
    1ad4:	23a02010 	movcs	r2, #16
    1ad8:	33a02000 	movcc	r2, #0
    1adc:	e3510c01 	cmp	r1, #256	@ 0x100
    1ae0:	21a01421 	lsrcs	r1, r1, #8
    1ae4:	22822008 	addcs	r2, r2, #8
    1ae8:	e3510010 	cmp	r1, #16
    1aec:	21a01221 	lsrcs	r1, r1, #4
    1af0:	22822004 	addcs	r2, r2, #4
    1af4:	e3510004 	cmp	r1, #4
    1af8:	82822003 	addhi	r2, r2, #3
    1afc:	908220a1 	addls	r2, r2, r1, lsr #1
    1b00:	e1a00230 	lsr	r0, r0, r2
    1b04:	e12fff1e 	bx	lr
    1b08:	e3500000 	cmp	r0, #0
    1b0c:	13e00000 	mvnne	r0, #0
    1b10:	ea000007 	b	1b34 <__aeabi_idiv0>

00001b14 <__aeabi_uidivmod>:
    1b14:	e3510000 	cmp	r1, #0
    1b18:	0afffffa 	beq	1b08 <__udivsi3+0xe8>
    1b1c:	e92d4003 	push	{r0, r1, lr}
    1b20:	ebffffbe 	bl	1a20 <__udivsi3>
    1b24:	e8bd4006 	pop	{r1, r2, lr}
    1b28:	e0030092 	mul	r3, r2, r0
    1b2c:	e0411003 	sub	r1, r1, r3
    1b30:	e12fff1e 	bx	lr

00001b34 <__aeabi_idiv0>:
    1b34:	e12fff1e 	bx	lr
