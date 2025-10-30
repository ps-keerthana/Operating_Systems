
_t_sem2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e59f0028 	ldr	r0, [pc, #40]	@ 40 <thread1+0x40>
      14:	eb0002e2 	bl	ba4 <semDown>
      18:	e59f1024 	ldr	r1, [pc, #36]	@ 44 <thread1+0x44>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0004a1 	bl	12ac <printf>
      24:	e59f001c 	ldr	r0, [pc, #28]	@ 48 <thread1+0x48>
      28:	eb0002c5 	bl	b44 <semUp>
      2c:	eb0003ef 	bl	ff0 <thread_exit>
      30:	e3a03000 	mov	r3, #0
      34:	e1a00003 	mov	r0, r3
      38:	e24bd004 	sub	sp, fp, #4
      3c:	e8bd8800 	pop	{fp, pc}
      40:	00001a2c 	.word	0x00001a2c
      44:	00001968 	.word	0x00001968
      48:	00001a44 	.word	0x00001a44

0000004c <thread2>:
      4c:	e92d4800 	push	{fp, lr}
      50:	e28db004 	add	fp, sp, #4
      54:	e24dd008 	sub	sp, sp, #8
      58:	e50b0008 	str	r0, [fp, #-8]
      5c:	e3a0000a 	mov	r0, #10
      60:	eb00039a 	bl	ed0 <sleep>
      64:	e59f0028 	ldr	r0, [pc, #40]	@ 94 <thread2+0x48>
      68:	eb0002cd 	bl	ba4 <semDown>
      6c:	e59f1024 	ldr	r1, [pc, #36]	@ 98 <thread2+0x4c>
      70:	e3a00001 	mov	r0, #1
      74:	eb00048c 	bl	12ac <printf>
      78:	e59f001c 	ldr	r0, [pc, #28]	@ 9c <thread2+0x50>
      7c:	eb0002b0 	bl	b44 <semUp>
      80:	eb0003da 	bl	ff0 <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	00001a2c 	.word	0x00001a2c
      98:	00001978 	.word	0x00001978
      9c:	00001a44 	.word	0x00001a44

000000a0 <thread3>:
      a0:	e92d4800 	push	{fp, lr}
      a4:	e28db004 	add	fp, sp, #4
      a8:	e24dd008 	sub	sp, sp, #8
      ac:	e50b0008 	str	r0, [fp, #-8]
      b0:	e3a00002 	mov	r0, #2
      b4:	eb000385 	bl	ed0 <sleep>
      b8:	e59f1050 	ldr	r1, [pc, #80]	@ 110 <thread3+0x70>
      bc:	e3a00001 	mov	r0, #1
      c0:	eb000479 	bl	12ac <printf>
      c4:	e59f0048 	ldr	r0, [pc, #72]	@ 114 <thread3+0x74>
      c8:	eb00029d 	bl	b44 <semUp>
      cc:	e59f0044 	ldr	r0, [pc, #68]	@ 118 <thread3+0x78>
      d0:	eb0002b3 	bl	ba4 <semDown>
      d4:	e59f1040 	ldr	r1, [pc, #64]	@ 11c <thread3+0x7c>
      d8:	e3a00001 	mov	r0, #1
      dc:	eb000472 	bl	12ac <printf>
      e0:	e59f002c 	ldr	r0, [pc, #44]	@ 114 <thread3+0x74>
      e4:	eb000296 	bl	b44 <semUp>
      e8:	e59f0028 	ldr	r0, [pc, #40]	@ 118 <thread3+0x78>
      ec:	eb0002ac 	bl	ba4 <semDown>
      f0:	e59f1028 	ldr	r1, [pc, #40]	@ 120 <thread3+0x80>
      f4:	e3a00001 	mov	r0, #1
      f8:	eb00046b 	bl	12ac <printf>
      fc:	eb0003bb 	bl	ff0 <thread_exit>
     100:	e3a03000 	mov	r3, #0
     104:	e1a00003 	mov	r0, r3
     108:	e24bd004 	sub	sp, fp, #4
     10c:	e8bd8800 	pop	{fp, pc}
     110:	00001988 	.word	0x00001988
     114:	00001a2c 	.word	0x00001a2c
     118:	00001a44 	.word	0x00001a44
     11c:	000019b0 	.word	0x000019b0
     120:	000019dc 	.word	0x000019dc

00000124 <main>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dd010 	sub	sp, sp, #16
     130:	e3a01000 	mov	r1, #0
     134:	e59f0070 	ldr	r0, [pc, #112]	@ 1ac <main+0x88>
     138:	eb00026b 	bl	aec <semInit>
     13c:	e3a01000 	mov	r1, #0
     140:	e59f0068 	ldr	r0, [pc, #104]	@ 1b0 <main+0x8c>
     144:	eb000268 	bl	aec <semInit>
     148:	e24b3008 	sub	r3, fp, #8
     14c:	e3a02000 	mov	r2, #0
     150:	e59f105c 	ldr	r1, [pc, #92]	@ 1b4 <main+0x90>
     154:	e1a00003 	mov	r0, r3
     158:	eb00039b 	bl	fcc <thread_create>
     15c:	e24b300c 	sub	r3, fp, #12
     160:	e3a02000 	mov	r2, #0
     164:	e59f104c 	ldr	r1, [pc, #76]	@ 1b8 <main+0x94>
     168:	e1a00003 	mov	r0, r3
     16c:	eb000396 	bl	fcc <thread_create>
     170:	e24b3010 	sub	r3, fp, #16
     174:	e3a02000 	mov	r2, #0
     178:	e59f103c 	ldr	r1, [pc, #60]	@ 1bc <main+0x98>
     17c:	e1a00003 	mov	r0, r3
     180:	eb000391 	bl	fcc <thread_create>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	eb0003a0 	bl	1014 <thread_join>
     190:	e51b300c 	ldr	r3, [fp, #-12]
     194:	e1a00003 	mov	r0, r3
     198:	eb00039d 	bl	1014 <thread_join>
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb00039a 	bl	1014 <thread_join>
     1a8:	eb0002a6 	bl	c48 <exit>
     1ac:	00001a2c 	.word	0x00001a2c
     1b0:	00001a44 	.word	0x00001a44
     1b4:	00000000 	.word	0x00000000
     1b8:	0000004c 	.word	0x0000004c
     1bc:	000000a0 	.word	0x000000a0

000001c0 <pg_pte>:
     1c0:	e92d4800 	push	{fp, lr}
     1c4:	e28db004 	add	fp, sp, #4
     1c8:	e24dd008 	sub	sp, sp, #8
     1cc:	e50b0008 	str	r0, [fp, #-8]
     1d0:	e51b1008 	ldr	r1, [fp, #-8]
     1d4:	e3a0001a 	mov	r0, #26
     1d8:	eb0003d5 	bl	1134 <syscall>
     1dc:	e1a03000 	mov	r3, r0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	e24bd004 	sub	sp, fp, #4
     1e8:	e8bd8800 	pop	{fp, pc}

000001ec <pg_pa>:
     1ec:	e92d4800 	push	{fp, lr}
     1f0:	e28db004 	add	fp, sp, #4
     1f4:	e24dd008 	sub	sp, sp, #8
     1f8:	e50b0008 	str	r0, [fp, #-8]
     1fc:	e51b1008 	ldr	r1, [fp, #-8]
     200:	e3a0001b 	mov	r0, #27
     204:	eb0003ca 	bl	1134 <syscall>
     208:	e1a03000 	mov	r3, r0
     20c:	e1a00003 	mov	r0, r3
     210:	e24bd004 	sub	sp, fp, #4
     214:	e8bd8800 	pop	{fp, pc}

00000218 <pg_flags>:
     218:	e92d4800 	push	{fp, lr}
     21c:	e28db004 	add	fp, sp, #4
     220:	e24dd008 	sub	sp, sp, #8
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e51b1008 	ldr	r1, [fp, #-8]
     22c:	e3a0001c 	mov	r0, #28
     230:	eb0003bf 	bl	1134 <syscall>
     234:	e1a03000 	mov	r3, r0
     238:	e1a00003 	mov	r0, r3
     23c:	e24bd004 	sub	sp, fp, #4
     240:	e8bd8800 	pop	{fp, pc}

00000244 <kpt>:
     244:	e92d4800 	push	{fp, lr}
     248:	e28db004 	add	fp, sp, #4
     24c:	e3a0001d 	mov	r0, #29
     250:	eb0003b7 	bl	1134 <syscall>
     254:	e1a03000 	mov	r3, r0
     258:	e1a00003 	mov	r0, r3
     25c:	e8bd8800 	pop	{fp, pc}

00000260 <ugetpid>:
     260:	e92d4800 	push	{fp, lr}
     264:	e28db004 	add	fp, sp, #4
     268:	e3a0001e 	mov	r0, #30
     26c:	eb0003b0 	bl	1134 <syscall>
     270:	e1a03000 	mov	r3, r0
     274:	e1a00003 	mov	r0, r3
     278:	e8bd8800 	pop	{fp, pc}

0000027c <strcpy>:
     27c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     280:	e28db000 	add	fp, sp, #0
     284:	e24dd014 	sub	sp, sp, #20
     288:	e50b0010 	str	r0, [fp, #-16]
     28c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     290:	e51b3010 	ldr	r3, [fp, #-16]
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	e1a00000 	nop			@ (mov r0, r0)
     29c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2a0:	e2823001 	add	r3, r2, #1
     2a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a8:	e51b3010 	ldr	r3, [fp, #-16]
     2ac:	e2831001 	add	r1, r3, #1
     2b0:	e50b1010 	str	r1, [fp, #-16]
     2b4:	e5d22000 	ldrb	r2, [r2]
     2b8:	e5c32000 	strb	r2, [r3]
     2bc:	e5d33000 	ldrb	r3, [r3]
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1afffff4 	bne	29c <strcpy+0x20>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e1a00003 	mov	r0, r3
     2d0:	e28bd000 	add	sp, fp, #0
     2d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d8:	e12fff1e 	bx	lr

000002dc <strcmp>:
     2dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e0:	e28db000 	add	fp, sp, #0
     2e4:	e24dd00c 	sub	sp, sp, #12
     2e8:	e50b0008 	str	r0, [fp, #-8]
     2ec:	e50b100c 	str	r1, [fp, #-12]
     2f0:	ea000005 	b	30c <strcmp+0x30>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e2833001 	add	r3, r3, #1
     2fc:	e50b3008 	str	r3, [fp, #-8]
     300:	e51b300c 	ldr	r3, [fp, #-12]
     304:	e2833001 	add	r3, r3, #1
     308:	e50b300c 	str	r3, [fp, #-12]
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e5d33000 	ldrb	r3, [r3]
     314:	e3530000 	cmp	r3, #0
     318:	0a000005 	beq	334 <strcmp+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e5d32000 	ldrb	r2, [r3]
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e5d33000 	ldrb	r3, [r3]
     32c:	e1520003 	cmp	r2, r3
     330:	0affffef 	beq	2f4 <strcmp+0x18>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e1a02003 	mov	r2, r3
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e0423003 	sub	r3, r2, r3
     34c:	e1a00003 	mov	r0, r3
     350:	e28bd000 	add	sp, fp, #0
     354:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     358:	e12fff1e 	bx	lr

0000035c <strlen>:
     35c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     360:	e28db000 	add	fp, sp, #0
     364:	e24dd014 	sub	sp, sp, #20
     368:	e50b0010 	str	r0, [fp, #-16]
     36c:	e3a03000 	mov	r3, #0
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	ea000002 	b	384 <strlen+0x28>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2833001 	add	r3, r3, #1
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e51b2010 	ldr	r2, [fp, #-16]
     38c:	e0823003 	add	r3, r2, r3
     390:	e5d33000 	ldrb	r3, [r3]
     394:	e3530000 	cmp	r3, #0
     398:	1afffff6 	bne	378 <strlen+0x1c>
     39c:	e51b3008 	ldr	r3, [fp, #-8]
     3a0:	e1a00003 	mov	r0, r3
     3a4:	e28bd000 	add	sp, fp, #0
     3a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3ac:	e12fff1e 	bx	lr

000003b0 <memset>:
     3b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3b4:	e28db000 	add	fp, sp, #0
     3b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     3bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     3c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3cc:	e50b3008 	str	r3, [fp, #-8]
     3d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3d4:	e54b300d 	strb	r3, [fp, #-13]
     3d8:	e55b200d 	ldrb	r2, [fp, #-13]
     3dc:	e1a03002 	mov	r3, r2
     3e0:	e1a03403 	lsl	r3, r3, #8
     3e4:	e0833002 	add	r3, r3, r2
     3e8:	e1a03803 	lsl	r3, r3, #16
     3ec:	e1a02003 	mov	r2, r3
     3f0:	e55b300d 	ldrb	r3, [fp, #-13]
     3f4:	e1a03403 	lsl	r3, r3, #8
     3f8:	e1822003 	orr	r2, r2, r3
     3fc:	e55b300d 	ldrb	r3, [fp, #-13]
     400:	e1823003 	orr	r3, r2, r3
     404:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     408:	ea000008 	b	430 <memset+0x80>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e55b200d 	ldrb	r2, [fp, #-13]
     414:	e5c32000 	strb	r2, [r3]
     418:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     41c:	e2433001 	sub	r3, r3, #1
     420:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e2833001 	add	r3, r3, #1
     42c:	e50b3008 	str	r3, [fp, #-8]
     430:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     434:	e3530000 	cmp	r3, #0
     438:	0a000003 	beq	44c <memset+0x9c>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2033003 	and	r3, r3, #3
     444:	e3530000 	cmp	r3, #0
     448:	1affffef 	bne	40c <memset+0x5c>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e50b300c 	str	r3, [fp, #-12]
     454:	ea000008 	b	47c <memset+0xcc>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     460:	e5832000 	str	r2, [r3]
     464:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     468:	e2433004 	sub	r3, r3, #4
     46c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     470:	e51b300c 	ldr	r3, [fp, #-12]
     474:	e2833004 	add	r3, r3, #4
     478:	e50b300c 	str	r3, [fp, #-12]
     47c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     480:	e3530003 	cmp	r3, #3
     484:	8afffff3 	bhi	458 <memset+0xa8>
     488:	e51b300c 	ldr	r3, [fp, #-12]
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	ea000008 	b	4b8 <memset+0x108>
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e55b200d 	ldrb	r2, [fp, #-13]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a4:	e2433001 	sub	r3, r3, #1
     4a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e2833001 	add	r3, r3, #1
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4bc:	e3530000 	cmp	r3, #0
     4c0:	1afffff3 	bne	494 <memset+0xe4>
     4c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e28bd000 	add	sp, fp, #0
     4d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d4:	e12fff1e 	bx	lr

000004d8 <strchr>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd00c 	sub	sp, sp, #12
     4e4:	e50b0008 	str	r0, [fp, #-8]
     4e8:	e1a03001 	mov	r3, r1
     4ec:	e54b3009 	strb	r3, [fp, #-9]
     4f0:	ea000009 	b	51c <strchr+0x44>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e55b2009 	ldrb	r2, [fp, #-9]
     500:	e1520003 	cmp	r2, r3
     504:	1a000001 	bne	510 <strchr+0x38>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	ea000007 	b	530 <strchr+0x58>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e2833001 	add	r3, r3, #1
     518:	e50b3008 	str	r3, [fp, #-8]
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e3530000 	cmp	r3, #0
     528:	1afffff1 	bne	4f4 <strchr+0x1c>
     52c:	e3a03000 	mov	r3, #0
     530:	e1a00003 	mov	r0, r3
     534:	e28bd000 	add	sp, fp, #0
     538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <gets>:
     540:	e92d4800 	push	{fp, lr}
     544:	e28db004 	add	fp, sp, #4
     548:	e24dd018 	sub	sp, sp, #24
     54c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     550:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     554:	e3a03000 	mov	r3, #0
     558:	e50b3008 	str	r3, [fp, #-8]
     55c:	ea000016 	b	5bc <gets+0x7c>
     560:	e24b300d 	sub	r3, fp, #13
     564:	e3a02001 	mov	r2, #1
     568:	e1a01003 	mov	r1, r3
     56c:	e3a00000 	mov	r0, #0
     570:	eb0001cf 	bl	cb4 <read>
     574:	e50b000c 	str	r0, [fp, #-12]
     578:	e51b300c 	ldr	r3, [fp, #-12]
     57c:	e3530000 	cmp	r3, #0
     580:	da000013 	ble	5d4 <gets+0x94>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2832001 	add	r2, r3, #1
     58c:	e50b2008 	str	r2, [fp, #-8]
     590:	e1a02003 	mov	r2, r3
     594:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     598:	e0833002 	add	r3, r3, r2
     59c:	e55b200d 	ldrb	r2, [fp, #-13]
     5a0:	e5c32000 	strb	r2, [r3]
     5a4:	e55b300d 	ldrb	r3, [fp, #-13]
     5a8:	e353000a 	cmp	r3, #10
     5ac:	0a000009 	beq	5d8 <gets+0x98>
     5b0:	e55b300d 	ldrb	r3, [fp, #-13]
     5b4:	e353000d 	cmp	r3, #13
     5b8:	0a000006 	beq	5d8 <gets+0x98>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e2833001 	add	r3, r3, #1
     5c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     5c8:	e1520003 	cmp	r2, r3
     5cc:	caffffe3 	bgt	560 <gets+0x20>
     5d0:	ea000000 	b	5d8 <gets+0x98>
     5d4:	e1a00000 	nop			@ (mov r0, r0)
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5e0:	e0823003 	add	r3, r2, r3
     5e4:	e3a02000 	mov	r2, #0
     5e8:	e5c32000 	strb	r2, [r3]
     5ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e24bd004 	sub	sp, fp, #4
     5f8:	e8bd8800 	pop	{fp, pc}

000005fc <stat>:
     5fc:	e92d4800 	push	{fp, lr}
     600:	e28db004 	add	fp, sp, #4
     604:	e24dd010 	sub	sp, sp, #16
     608:	e50b0010 	str	r0, [fp, #-16]
     60c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     610:	e3a01000 	mov	r1, #0
     614:	e51b0010 	ldr	r0, [fp, #-16]
     618:	eb0001d2 	bl	d68 <open>
     61c:	e50b0008 	str	r0, [fp, #-8]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e3530000 	cmp	r3, #0
     628:	aa000001 	bge	634 <stat+0x38>
     62c:	e3e03000 	mvn	r3, #0
     630:	ea000006 	b	650 <stat+0x54>
     634:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     638:	e51b0008 	ldr	r0, [fp, #-8]
     63c:	eb0001e4 	bl	dd4 <fstat>
     640:	e50b000c 	str	r0, [fp, #-12]
     644:	e51b0008 	ldr	r0, [fp, #-8]
     648:	eb0001ab 	bl	cfc <close>
     64c:	e51b300c 	ldr	r3, [fp, #-12]
     650:	e1a00003 	mov	r0, r3
     654:	e24bd004 	sub	sp, fp, #4
     658:	e8bd8800 	pop	{fp, pc}

0000065c <atoi>:
     65c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     660:	e28db000 	add	fp, sp, #0
     664:	e24dd014 	sub	sp, sp, #20
     668:	e50b0010 	str	r0, [fp, #-16]
     66c:	e3a03000 	mov	r3, #0
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	ea00000c 	b	6ac <atoi+0x50>
     678:	e51b2008 	ldr	r2, [fp, #-8]
     67c:	e1a03002 	mov	r3, r2
     680:	e1a03103 	lsl	r3, r3, #2
     684:	e0833002 	add	r3, r3, r2
     688:	e1a03083 	lsl	r3, r3, #1
     68c:	e1a01003 	mov	r1, r3
     690:	e51b3010 	ldr	r3, [fp, #-16]
     694:	e2832001 	add	r2, r3, #1
     698:	e50b2010 	str	r2, [fp, #-16]
     69c:	e5d33000 	ldrb	r3, [r3]
     6a0:	e0813003 	add	r3, r1, r3
     6a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     6a8:	e50b3008 	str	r3, [fp, #-8]
     6ac:	e51b3010 	ldr	r3, [fp, #-16]
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e353002f 	cmp	r3, #47	@ 0x2f
     6b8:	9a000003 	bls	6cc <atoi+0x70>
     6bc:	e51b3010 	ldr	r3, [fp, #-16]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e3530039 	cmp	r3, #57	@ 0x39
     6c8:	9affffea 	bls	678 <atoi+0x1c>
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e1a00003 	mov	r0, r3
     6d4:	e28bd000 	add	sp, fp, #0
     6d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <memmove>:
     6e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e4:	e28db000 	add	fp, sp, #0
     6e8:	e24dd01c 	sub	sp, sp, #28
     6ec:	e50b0010 	str	r0, [fp, #-16]
     6f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6f8:	e51b3010 	ldr	r3, [fp, #-16]
     6fc:	e50b3008 	str	r3, [fp, #-8]
     700:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     704:	e50b300c 	str	r3, [fp, #-12]
     708:	ea000007 	b	72c <memmove+0x4c>
     70c:	e51b200c 	ldr	r2, [fp, #-12]
     710:	e2823001 	add	r3, r2, #1
     714:	e50b300c 	str	r3, [fp, #-12]
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e2831001 	add	r1, r3, #1
     720:	e50b1008 	str	r1, [fp, #-8]
     724:	e5d22000 	ldrb	r2, [r2]
     728:	e5c32000 	strb	r2, [r3]
     72c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     730:	e2432001 	sub	r2, r3, #1
     734:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     738:	e3530000 	cmp	r3, #0
     73c:	cafffff2 	bgt	70c <memmove+0x2c>
     740:	e51b3010 	ldr	r3, [fp, #-16]
     744:	e1a00003 	mov	r0, r3
     748:	e28bd000 	add	sp, fp, #0
     74c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <strncmp>:
     754:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     758:	e28db000 	add	fp, sp, #0
     75c:	e24dd014 	sub	sp, sp, #20
     760:	e50b0008 	str	r0, [fp, #-8]
     764:	e50b100c 	str	r1, [fp, #-12]
     768:	e50b2010 	str	r2, [fp, #-16]
     76c:	ea000008 	b	794 <strncmp+0x40>
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e2833001 	add	r3, r3, #1
     778:	e50b3008 	str	r3, [fp, #-8]
     77c:	e51b300c 	ldr	r3, [fp, #-12]
     780:	e2833001 	add	r3, r3, #1
     784:	e50b300c 	str	r3, [fp, #-12]
     788:	e51b3010 	ldr	r3, [fp, #-16]
     78c:	e2433001 	sub	r3, r3, #1
     790:	e50b3010 	str	r3, [fp, #-16]
     794:	e51b3010 	ldr	r3, [fp, #-16]
     798:	e3530000 	cmp	r3, #0
     79c:	da00000d 	ble	7d8 <strncmp+0x84>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e5d33000 	ldrb	r3, [r3]
     7a8:	e3530000 	cmp	r3, #0
     7ac:	0a000009 	beq	7d8 <strncmp+0x84>
     7b0:	e51b300c 	ldr	r3, [fp, #-12]
     7b4:	e5d33000 	ldrb	r3, [r3]
     7b8:	e3530000 	cmp	r3, #0
     7bc:	0a000005 	beq	7d8 <strncmp+0x84>
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e5d32000 	ldrb	r2, [r3]
     7c8:	e51b300c 	ldr	r3, [fp, #-12]
     7cc:	e5d33000 	ldrb	r3, [r3]
     7d0:	e1520003 	cmp	r2, r3
     7d4:	0affffe5 	beq	770 <strncmp+0x1c>
     7d8:	e51b3010 	ldr	r3, [fp, #-16]
     7dc:	e3530000 	cmp	r3, #0
     7e0:	1a000001 	bne	7ec <strncmp+0x98>
     7e4:	e3a03000 	mov	r3, #0
     7e8:	ea000005 	b	804 <strncmp+0xb0>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e5d33000 	ldrb	r3, [r3]
     7f4:	e1a02003 	mov	r2, r3
     7f8:	e51b300c 	ldr	r3, [fp, #-12]
     7fc:	e5d33000 	ldrb	r3, [r3]
     800:	e0423003 	sub	r3, r2, r3
     804:	e1a00003 	mov	r0, r3
     808:	e28bd000 	add	sp, fp, #0
     80c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <strncpy>:
     814:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     818:	e28db000 	add	fp, sp, #0
     81c:	e24dd01c 	sub	sp, sp, #28
     820:	e50b0010 	str	r0, [fp, #-16]
     824:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     828:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     82c:	e51b3010 	ldr	r3, [fp, #-16]
     830:	e50b3008 	str	r3, [fp, #-8]
     834:	ea00000a 	b	864 <strncpy+0x50>
     838:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     83c:	e2823001 	add	r3, r2, #1
     840:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e2831001 	add	r1, r3, #1
     84c:	e50b1008 	str	r1, [fp, #-8]
     850:	e5d22000 	ldrb	r2, [r2]
     854:	e5c32000 	strb	r2, [r3]
     858:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     85c:	e2433001 	sub	r3, r3, #1
     860:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     864:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     868:	e3530000 	cmp	r3, #0
     86c:	da00000c 	ble	8a4 <strncpy+0x90>
     870:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     874:	e5d33000 	ldrb	r3, [r3]
     878:	e3530000 	cmp	r3, #0
     87c:	1affffed 	bne	838 <strncpy+0x24>
     880:	ea000007 	b	8a4 <strncpy+0x90>
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e2832001 	add	r2, r3, #1
     88c:	e50b2008 	str	r2, [fp, #-8]
     890:	e3a02000 	mov	r2, #0
     894:	e5c32000 	strb	r2, [r3]
     898:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     89c:	e2433001 	sub	r3, r3, #1
     8a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     8a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8a8:	e3530000 	cmp	r3, #0
     8ac:	cafffff4 	bgt	884 <strncpy+0x70>
     8b0:	e51b3010 	ldr	r3, [fp, #-16]
     8b4:	e1a00003 	mov	r0, r3
     8b8:	e28bd000 	add	sp, fp, #0
     8bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <xchg>:
     8c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c8:	e28db000 	add	fp, sp, #0
     8cc:	e24dd014 	sub	sp, sp, #20
     8d0:	e50b0010 	str	r0, [fp, #-16]
     8d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8d8:	e51b2010 	ldr	r2, [fp, #-16]
     8dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8e0:	e1023091 	swp	r3, r1, [r2]
     8e4:	e50b3008 	str	r3, [fp, #-8]
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e1a00003 	mov	r0, r3
     8f0:	e28bd000 	add	sp, fp, #0
     8f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <initiateLock>:
     8fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     900:	e28db000 	add	fp, sp, #0
     904:	e24dd00c 	sub	sp, sp, #12
     908:	e50b0008 	str	r0, [fp, #-8]
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e3a02000 	mov	r2, #0
     914:	e5832000 	str	r2, [r3]
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e3a02001 	mov	r2, #1
     920:	e5832004 	str	r2, [r3, #4]
     924:	e1a00000 	nop			@ (mov r0, r0)
     928:	e28bd000 	add	sp, fp, #0
     92c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <acquireLock>:
     934:	e92d4800 	push	{fp, lr}
     938:	e28db004 	add	fp, sp, #4
     93c:	e24dd008 	sub	sp, sp, #8
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e5933004 	ldr	r3, [r3, #4]
     94c:	e3530000 	cmp	r3, #0
     950:	0a000008 	beq	978 <acquireLock+0x44>
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e3a01001 	mov	r1, #1
     960:	e1a00003 	mov	r0, r3
     964:	ebffffd6 	bl	8c4 <xchg>
     968:	e1a03000 	mov	r3, r0
     96c:	e3530000 	cmp	r3, #0
     970:	1afffff8 	bne	958 <acquireLock+0x24>
     974:	ea000000 	b	97c <acquireLock+0x48>
     978:	e1a00000 	nop			@ (mov r0, r0)
     97c:	e24bd004 	sub	sp, fp, #4
     980:	e8bd8800 	pop	{fp, pc}

00000984 <releaseLock>:
     984:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     988:	e28db000 	add	fp, sp, #0
     98c:	e24dd00c 	sub	sp, sp, #12
     990:	e50b0008 	str	r0, [fp, #-8]
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e5933004 	ldr	r3, [r3, #4]
     99c:	e3530000 	cmp	r3, #0
     9a0:	0a000006 	beq	9c0 <releaseLock+0x3c>
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5933000 	ldr	r3, [r3]
     9ac:	e3530001 	cmp	r3, #1
     9b0:	1a000002 	bne	9c0 <releaseLock+0x3c>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e3a02000 	mov	r2, #0
     9bc:	e5832000 	str	r2, [r3]
     9c0:	e1a00000 	nop			@ (mov r0, r0)
     9c4:	e28bd000 	add	sp, fp, #0
     9c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <initiateCondVar>:
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd008 	sub	sp, sp, #8
     9dc:	e50b0008 	str	r0, [fp, #-8]
     9e0:	eb0001b8 	bl	10c8 <getChannel>
     9e4:	e1a02000 	mov	r2, r0
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e5832000 	str	r2, [r3]
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e3a02001 	mov	r2, #1
     9f8:	e5832004 	str	r2, [r3, #4]
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}

00000a08 <condWait>:
     a08:	e92d4800 	push	{fp, lr}
     a0c:	e28db004 	add	fp, sp, #4
     a10:	e24dd008 	sub	sp, sp, #8
     a14:	e50b0008 	str	r0, [fp, #-8]
     a18:	e50b100c 	str	r1, [fp, #-12]
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e5933004 	ldr	r3, [r3, #4]
     a24:	e3530000 	cmp	r3, #0
     a28:	0a00000c 	beq	a60 <condWait+0x58>
     a2c:	e51b300c 	ldr	r3, [fp, #-12]
     a30:	e5933004 	ldr	r3, [r3, #4]
     a34:	e3530000 	cmp	r3, #0
     a38:	0a000008 	beq	a60 <condWait+0x58>
     a3c:	e51b000c 	ldr	r0, [fp, #-12]
     a40:	ebffffcf 	bl	984 <releaseLock>
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e5933000 	ldr	r3, [r3]
     a4c:	e1a00003 	mov	r0, r3
     a50:	eb000193 	bl	10a4 <sleepChan>
     a54:	e51b000c 	ldr	r0, [fp, #-12]
     a58:	ebffffb5 	bl	934 <acquireLock>
     a5c:	ea000000 	b	a64 <condWait+0x5c>
     a60:	e1a00000 	nop			@ (mov r0, r0)
     a64:	e24bd004 	sub	sp, fp, #4
     a68:	e8bd8800 	pop	{fp, pc}

00000a6c <broadcast>:
     a6c:	e92d4800 	push	{fp, lr}
     a70:	e28db004 	add	fp, sp, #4
     a74:	e24dd008 	sub	sp, sp, #8
     a78:	e50b0008 	str	r0, [fp, #-8]
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e5933004 	ldr	r3, [r3, #4]
     a84:	e3530000 	cmp	r3, #0
     a88:	0a000004 	beq	aa0 <broadcast+0x34>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5933000 	ldr	r3, [r3]
     a94:	e1a00003 	mov	r0, r3
     a98:	eb000193 	bl	10ec <sigChan>
     a9c:	ea000000 	b	aa4 <broadcast+0x38>
     aa0:	e1a00000 	nop			@ (mov r0, r0)
     aa4:	e24bd004 	sub	sp, fp, #4
     aa8:	e8bd8800 	pop	{fp, pc}

00000aac <signal>:
     aac:	e92d4800 	push	{fp, lr}
     ab0:	e28db004 	add	fp, sp, #4
     ab4:	e24dd008 	sub	sp, sp, #8
     ab8:	e50b0008 	str	r0, [fp, #-8]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e5933004 	ldr	r3, [r3, #4]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	0a000004 	beq	ae0 <signal+0x34>
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e5933000 	ldr	r3, [r3]
     ad4:	e1a00003 	mov	r0, r3
     ad8:	eb00018c 	bl	1110 <sigOneChan>
     adc:	ea000000 	b	ae4 <signal+0x38>
     ae0:	e1a00000 	nop			@ (mov r0, r0)
     ae4:	e24bd004 	sub	sp, fp, #4
     ae8:	e8bd8800 	pop	{fp, pc}

00000aec <semInit>:
     aec:	e92d4800 	push	{fp, lr}
     af0:	e28db004 	add	fp, sp, #4
     af4:	e24dd008 	sub	sp, sp, #8
     af8:	e50b0008 	str	r0, [fp, #-8]
     afc:	e50b100c 	str	r1, [fp, #-12]
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e2833004 	add	r3, r3, #4
     b08:	e1a00003 	mov	r0, r3
     b0c:	ebffff7a 	bl	8fc <initiateLock>
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e283300c 	add	r3, r3, #12
     b18:	e1a00003 	mov	r0, r3
     b1c:	ebffffab 	bl	9d0 <initiateCondVar>
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e51b200c 	ldr	r2, [fp, #-12]
     b28:	e5832000 	str	r2, [r3]
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e3a02001 	mov	r2, #1
     b34:	e5832014 	str	r2, [r3, #20]
     b38:	e1a00000 	nop			@ (mov r0, r0)
     b3c:	e24bd004 	sub	sp, fp, #4
     b40:	e8bd8800 	pop	{fp, pc}

00000b44 <semUp>:
     b44:	e92d4800 	push	{fp, lr}
     b48:	e28db004 	add	fp, sp, #4
     b4c:	e24dd008 	sub	sp, sp, #8
     b50:	e50b0008 	str	r0, [fp, #-8]
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e1a00003 	mov	r0, r3
     b60:	ebffff73 	bl	934 <acquireLock>
     b64:	e51b3008 	ldr	r3, [fp, #-8]
     b68:	e5933000 	ldr	r3, [r3]
     b6c:	e2832001 	add	r2, r3, #1
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e5832000 	str	r2, [r3]
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e283300c 	add	r3, r3, #12
     b80:	e1a00003 	mov	r0, r3
     b84:	ebffffc8 	bl	aac <signal>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e2833004 	add	r3, r3, #4
     b90:	e1a00003 	mov	r0, r3
     b94:	ebffff7a 	bl	984 <releaseLock>
     b98:	e1a00000 	nop			@ (mov r0, r0)
     b9c:	e24bd004 	sub	sp, fp, #4
     ba0:	e8bd8800 	pop	{fp, pc}

00000ba4 <semDown>:
     ba4:	e92d4800 	push	{fp, lr}
     ba8:	e28db004 	add	fp, sp, #4
     bac:	e24dd008 	sub	sp, sp, #8
     bb0:	e50b0008 	str	r0, [fp, #-8]
     bb4:	e51b3008 	ldr	r3, [fp, #-8]
     bb8:	e2833004 	add	r3, r3, #4
     bbc:	e1a00003 	mov	r0, r3
     bc0:	ebffff5b 	bl	934 <acquireLock>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e2432001 	sub	r2, r3, #1
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e5832000 	str	r2, [r3]
     bd8:	ea000006 	b	bf8 <semDown+0x54>
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e283200c 	add	r2, r3, #12
     be4:	e51b3008 	ldr	r3, [fp, #-8]
     be8:	e2833004 	add	r3, r3, #4
     bec:	e1a01003 	mov	r1, r3
     bf0:	e1a00002 	mov	r0, r2
     bf4:	ebffff83 	bl	a08 <condWait>
     bf8:	e51b3008 	ldr	r3, [fp, #-8]
     bfc:	e5933000 	ldr	r3, [r3]
     c00:	e3530000 	cmp	r3, #0
     c04:	bafffff4 	blt	bdc <semDown+0x38>
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e2833004 	add	r3, r3, #4
     c10:	e1a00003 	mov	r0, r3
     c14:	ebffff5a 	bl	984 <releaseLock>
     c18:	e1a00000 	nop			@ (mov r0, r0)
     c1c:	e24bd004 	sub	sp, fp, #4
     c20:	e8bd8800 	pop	{fp, pc}

00000c24 <fork>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00001 	mov	r0, #1
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <exit>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00002 	mov	r0, #2
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <wait>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00003 	mov	r0, #3
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <pipe>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00004 	mov	r0, #4
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <read>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00005 	mov	r0, #5
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <write>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00010 	mov	r0, #16
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <close>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00015 	mov	r0, #21
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <kill>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00006 	mov	r0, #6
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <exec>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00007 	mov	r0, #7
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <open>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a0000f 	mov	r0, #15
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <mknod>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00011 	mov	r0, #17
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <unlink>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00012 	mov	r0, #18
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <fstat>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00008 	mov	r0, #8
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <link>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00013 	mov	r0, #19
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <mkdir>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00014 	mov	r0, #20
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <chdir>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00009 	mov	r0, #9
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <dup>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a0000a 	mov	r0, #10
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <getpid>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a0000b 	mov	r0, #11
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <sbrk>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a0000c 	mov	r0, #12
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <sleep>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a0000d 	mov	r0, #13
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <uptime>:
     ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef8:	e1a04003 	mov	r4, r3
     efc:	e1a03002 	mov	r3, r2
     f00:	e1a02001 	mov	r2, r1
     f04:	e1a01000 	mov	r1, r0
     f08:	e3a0000e 	mov	r0, #14
     f0c:	ef000000 	svc	0x00000000
     f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f14:	e12fff1e 	bx	lr

00000f18 <proclist>:
     f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f1c:	e1a04003 	mov	r4, r3
     f20:	e1a03002 	mov	r3, r2
     f24:	e1a02001 	mov	r2, r1
     f28:	e1a01000 	mov	r1, r0
     f2c:	e3a00016 	mov	r0, #22
     f30:	ef000000 	svc	0x00000000
     f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <settickets>:
     f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f40:	e1a04003 	mov	r4, r3
     f44:	e1a03002 	mov	r3, r2
     f48:	e1a02001 	mov	r2, r1
     f4c:	e1a01000 	mov	r1, r0
     f50:	e3a00017 	mov	r0, #23
     f54:	ef000000 	svc	0x00000000
     f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f5c:	e12fff1e 	bx	lr

00000f60 <srand>:
     f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f64:	e1a04003 	mov	r4, r3
     f68:	e1a03002 	mov	r3, r2
     f6c:	e1a02001 	mov	r2, r1
     f70:	e1a01000 	mov	r1, r0
     f74:	e3a00018 	mov	r0, #24
     f78:	ef000000 	svc	0x00000000
     f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f80:	e12fff1e 	bx	lr

00000f84 <getpinfo>:
     f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f88:	e1a04003 	mov	r4, r3
     f8c:	e1a03002 	mov	r3, r2
     f90:	e1a02001 	mov	r2, r1
     f94:	e1a01000 	mov	r1, r0
     f98:	e3a00019 	mov	r0, #25
     f9c:	ef000000 	svc	0x00000000
     fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa4:	e12fff1e 	bx	lr

00000fa8 <print_pt>:
     fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fac:	e1a04003 	mov	r4, r3
     fb0:	e1a03002 	mov	r3, r2
     fb4:	e1a02001 	mov	r2, r1
     fb8:	e1a01000 	mov	r1, r0
     fbc:	e3a0001f 	mov	r0, #31
     fc0:	ef000000 	svc	0x00000000
     fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc8:	e12fff1e 	bx	lr

00000fcc <thread_create>:
     fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd0:	e1a04003 	mov	r4, r3
     fd4:	e1a03002 	mov	r3, r2
     fd8:	e1a02001 	mov	r2, r1
     fdc:	e1a01000 	mov	r1, r0
     fe0:	e3a00020 	mov	r0, #32
     fe4:	ef000000 	svc	0x00000000
     fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fec:	e12fff1e 	bx	lr

00000ff0 <thread_exit>:
     ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff4:	e1a04003 	mov	r4, r3
     ff8:	e1a03002 	mov	r3, r2
     ffc:	e1a02001 	mov	r2, r1
    1000:	e1a01000 	mov	r1, r0
    1004:	e3a00021 	mov	r0, #33	@ 0x21
    1008:	ef000000 	svc	0x00000000
    100c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1010:	e12fff1e 	bx	lr

00001014 <thread_join>:
    1014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1018:	e1a04003 	mov	r4, r3
    101c:	e1a03002 	mov	r3, r2
    1020:	e1a02001 	mov	r2, r1
    1024:	e1a01000 	mov	r1, r0
    1028:	e3a00022 	mov	r0, #34	@ 0x22
    102c:	ef000000 	svc	0x00000000
    1030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1034:	e12fff1e 	bx	lr

00001038 <waitpid>:
    1038:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    103c:	e1a04003 	mov	r4, r3
    1040:	e1a03002 	mov	r3, r2
    1044:	e1a02001 	mov	r2, r1
    1048:	e1a01000 	mov	r1, r0
    104c:	e3a00023 	mov	r0, #35	@ 0x23
    1050:	ef000000 	svc	0x00000000
    1054:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <barrier_init>:
    105c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1060:	e1a04003 	mov	r4, r3
    1064:	e1a03002 	mov	r3, r2
    1068:	e1a02001 	mov	r2, r1
    106c:	e1a01000 	mov	r1, r0
    1070:	e3a00024 	mov	r0, #36	@ 0x24
    1074:	ef000000 	svc	0x00000000
    1078:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    107c:	e12fff1e 	bx	lr

00001080 <barrier_check>:
    1080:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1084:	e1a04003 	mov	r4, r3
    1088:	e1a03002 	mov	r3, r2
    108c:	e1a02001 	mov	r2, r1
    1090:	e1a01000 	mov	r1, r0
    1094:	e3a00025 	mov	r0, #37	@ 0x25
    1098:	ef000000 	svc	0x00000000
    109c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a0:	e12fff1e 	bx	lr

000010a4 <sleepChan>:
    10a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a8:	e1a04003 	mov	r4, r3
    10ac:	e1a03002 	mov	r3, r2
    10b0:	e1a02001 	mov	r2, r1
    10b4:	e1a01000 	mov	r1, r0
    10b8:	e3a00026 	mov	r0, #38	@ 0x26
    10bc:	ef000000 	svc	0x00000000
    10c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c4:	e12fff1e 	bx	lr

000010c8 <getChannel>:
    10c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10cc:	e1a04003 	mov	r4, r3
    10d0:	e1a03002 	mov	r3, r2
    10d4:	e1a02001 	mov	r2, r1
    10d8:	e1a01000 	mov	r1, r0
    10dc:	e3a00027 	mov	r0, #39	@ 0x27
    10e0:	ef000000 	svc	0x00000000
    10e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e8:	e12fff1e 	bx	lr

000010ec <sigChan>:
    10ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f0:	e1a04003 	mov	r4, r3
    10f4:	e1a03002 	mov	r3, r2
    10f8:	e1a02001 	mov	r2, r1
    10fc:	e1a01000 	mov	r1, r0
    1100:	e3a00028 	mov	r0, #40	@ 0x28
    1104:	ef000000 	svc	0x00000000
    1108:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    110c:	e12fff1e 	bx	lr

00001110 <sigOneChan>:
    1110:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1114:	e1a04003 	mov	r4, r3
    1118:	e1a03002 	mov	r3, r2
    111c:	e1a02001 	mov	r2, r1
    1120:	e1a01000 	mov	r1, r0
    1124:	e3a00029 	mov	r0, #41	@ 0x29
    1128:	ef000000 	svc	0x00000000
    112c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1130:	e12fff1e 	bx	lr

00001134 <syscall>:
    1134:	ef000000 	svc	0x00000000
    1138:	e12fff1e 	bx	lr

0000113c <putc>:
    113c:	e92d4800 	push	{fp, lr}
    1140:	e28db004 	add	fp, sp, #4
    1144:	e24dd008 	sub	sp, sp, #8
    1148:	e50b0008 	str	r0, [fp, #-8]
    114c:	e1a03001 	mov	r3, r1
    1150:	e54b3009 	strb	r3, [fp, #-9]
    1154:	e24b3009 	sub	r3, fp, #9
    1158:	e3a02001 	mov	r2, #1
    115c:	e1a01003 	mov	r1, r3
    1160:	e51b0008 	ldr	r0, [fp, #-8]
    1164:	ebfffedb 	bl	cd8 <write>
    1168:	e1a00000 	nop			@ (mov r0, r0)
    116c:	e24bd004 	sub	sp, fp, #4
    1170:	e8bd8800 	pop	{fp, pc}

00001174 <printint>:
    1174:	e92d4800 	push	{fp, lr}
    1178:	e28db004 	add	fp, sp, #4
    117c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1180:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1184:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1188:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    118c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1190:	e3a03000 	mov	r3, #0
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    119c:	e3530000 	cmp	r3, #0
    11a0:	0a000008 	beq	11c8 <printint+0x54>
    11a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11a8:	e3530000 	cmp	r3, #0
    11ac:	aa000005 	bge	11c8 <printint+0x54>
    11b0:	e3a03001 	mov	r3, #1
    11b4:	e50b300c 	str	r3, [fp, #-12]
    11b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11bc:	e2633000 	rsb	r3, r3, #0
    11c0:	e50b3010 	str	r3, [fp, #-16]
    11c4:	ea000001 	b	11d0 <printint+0x5c>
    11c8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    11cc:	e50b3010 	str	r3, [fp, #-16]
    11d0:	e3a03000 	mov	r3, #0
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11dc:	e51b3010 	ldr	r3, [fp, #-16]
    11e0:	e1a01002 	mov	r1, r2
    11e4:	e1a00003 	mov	r0, r3
    11e8:	eb0001d5 	bl	1944 <__aeabi_uidivmod>
    11ec:	e1a03001 	mov	r3, r1
    11f0:	e1a01003 	mov	r1, r3
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2832001 	add	r2, r3, #1
    11fc:	e50b2008 	str	r2, [fp, #-8]
    1200:	e59f20a0 	ldr	r2, [pc, #160]	@ 12a8 <printint+0x134>
    1204:	e7d22001 	ldrb	r2, [r2, r1]
    1208:	e2433004 	sub	r3, r3, #4
    120c:	e083300b 	add	r3, r3, fp
    1210:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1214:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1218:	e1a01003 	mov	r1, r3
    121c:	e51b0010 	ldr	r0, [fp, #-16]
    1220:	eb00018a 	bl	1850 <__udivsi3>
    1224:	e1a03000 	mov	r3, r0
    1228:	e50b3010 	str	r3, [fp, #-16]
    122c:	e51b3010 	ldr	r3, [fp, #-16]
    1230:	e3530000 	cmp	r3, #0
    1234:	1affffe7 	bne	11d8 <printint+0x64>
    1238:	e51b300c 	ldr	r3, [fp, #-12]
    123c:	e3530000 	cmp	r3, #0
    1240:	0a00000e 	beq	1280 <printint+0x10c>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e2832001 	add	r2, r3, #1
    124c:	e50b2008 	str	r2, [fp, #-8]
    1250:	e2433004 	sub	r3, r3, #4
    1254:	e083300b 	add	r3, r3, fp
    1258:	e3a0202d 	mov	r2, #45	@ 0x2d
    125c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1260:	ea000006 	b	1280 <printint+0x10c>
    1264:	e24b2020 	sub	r2, fp, #32
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e0823003 	add	r3, r2, r3
    1270:	e5d33000 	ldrb	r3, [r3]
    1274:	e1a01003 	mov	r1, r3
    1278:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    127c:	ebffffae 	bl	113c <putc>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e2433001 	sub	r3, r3, #1
    1288:	e50b3008 	str	r3, [fp, #-8]
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e3530000 	cmp	r3, #0
    1294:	aafffff2 	bge	1264 <printint+0xf0>
    1298:	e1a00000 	nop			@ (mov r0, r0)
    129c:	e1a00000 	nop			@ (mov r0, r0)
    12a0:	e24bd004 	sub	sp, fp, #4
    12a4:	e8bd8800 	pop	{fp, pc}
    12a8:	00001a14 	.word	0x00001a14

000012ac <printf>:
    12ac:	e92d000e 	push	{r1, r2, r3}
    12b0:	e92d4800 	push	{fp, lr}
    12b4:	e28db004 	add	fp, sp, #4
    12b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
    12bc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    12c0:	e3a03000 	mov	r3, #0
    12c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12c8:	e28b3008 	add	r3, fp, #8
    12cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d0:	e3a03000 	mov	r3, #0
    12d4:	e50b3010 	str	r3, [fp, #-16]
    12d8:	ea000074 	b	14b0 <printf+0x204>
    12dc:	e59b2004 	ldr	r2, [fp, #4]
    12e0:	e51b3010 	ldr	r3, [fp, #-16]
    12e4:	e0823003 	add	r3, r2, r3
    12e8:	e5d33000 	ldrb	r3, [r3]
    12ec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12f4:	e3530000 	cmp	r3, #0
    12f8:	1a00000b 	bne	132c <printf+0x80>
    12fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1300:	e3530025 	cmp	r3, #37	@ 0x25
    1304:	1a000002 	bne	1314 <printf+0x68>
    1308:	e3a03025 	mov	r3, #37	@ 0x25
    130c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1310:	ea000063 	b	14a4 <printf+0x1f8>
    1314:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1318:	e6ef3073 	uxtb	r3, r3
    131c:	e1a01003 	mov	r1, r3
    1320:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1324:	ebffff84 	bl	113c <putc>
    1328:	ea00005d 	b	14a4 <printf+0x1f8>
    132c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1330:	e3530025 	cmp	r3, #37	@ 0x25
    1334:	1a00005a 	bne	14a4 <printf+0x1f8>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e3530064 	cmp	r3, #100	@ 0x64
    1340:	1a00000a 	bne	1370 <printf+0xc4>
    1344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e1a01003 	mov	r1, r3
    1350:	e3a03001 	mov	r3, #1
    1354:	e3a0200a 	mov	r2, #10
    1358:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    135c:	ebffff84 	bl	1174 <printint>
    1360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1364:	e2833004 	add	r3, r3, #4
    1368:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    136c:	ea00004a 	b	149c <printf+0x1f0>
    1370:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e3530078 	cmp	r3, #120	@ 0x78
    1378:	0a000002 	beq	1388 <printf+0xdc>
    137c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1380:	e3530070 	cmp	r3, #112	@ 0x70
    1384:	1a00000a 	bne	13b4 <printf+0x108>
    1388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    138c:	e5933000 	ldr	r3, [r3]
    1390:	e1a01003 	mov	r1, r3
    1394:	e3a03000 	mov	r3, #0
    1398:	e3a02010 	mov	r2, #16
    139c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a0:	ebffff73 	bl	1174 <printint>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e2833004 	add	r3, r3, #4
    13ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13b0:	ea000039 	b	149c <printf+0x1f0>
    13b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b8:	e3530073 	cmp	r3, #115	@ 0x73
    13bc:	1a000018 	bne	1424 <printf+0x178>
    13c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e50b300c 	str	r3, [fp, #-12]
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e2833004 	add	r3, r3, #4
    13d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e3530000 	cmp	r3, #0
    13e0:	1a00000a 	bne	1410 <printf+0x164>
    13e4:	e59f30f4 	ldr	r3, [pc, #244]	@ 14e0 <printf+0x234>
    13e8:	e50b300c 	str	r3, [fp, #-12]
    13ec:	ea000007 	b	1410 <printf+0x164>
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e5d33000 	ldrb	r3, [r3]
    13f8:	e1a01003 	mov	r1, r3
    13fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1400:	ebffff4d 	bl	113c <putc>
    1404:	e51b300c 	ldr	r3, [fp, #-12]
    1408:	e2833001 	add	r3, r3, #1
    140c:	e50b300c 	str	r3, [fp, #-12]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5d33000 	ldrb	r3, [r3]
    1418:	e3530000 	cmp	r3, #0
    141c:	1afffff3 	bne	13f0 <printf+0x144>
    1420:	ea00001d 	b	149c <printf+0x1f0>
    1424:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1428:	e3530063 	cmp	r3, #99	@ 0x63
    142c:	1a000009 	bne	1458 <printf+0x1ac>
    1430:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1434:	e5933000 	ldr	r3, [r3]
    1438:	e6ef3073 	uxtb	r3, r3
    143c:	e1a01003 	mov	r1, r3
    1440:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1444:	ebffff3c 	bl	113c <putc>
    1448:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    144c:	e2833004 	add	r3, r3, #4
    1450:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1454:	ea000010 	b	149c <printf+0x1f0>
    1458:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    145c:	e3530025 	cmp	r3, #37	@ 0x25
    1460:	1a000005 	bne	147c <printf+0x1d0>
    1464:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1468:	e6ef3073 	uxtb	r3, r3
    146c:	e1a01003 	mov	r1, r3
    1470:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1474:	ebffff30 	bl	113c <putc>
    1478:	ea000007 	b	149c <printf+0x1f0>
    147c:	e3a01025 	mov	r1, #37	@ 0x25
    1480:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1484:	ebffff2c 	bl	113c <putc>
    1488:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    148c:	e6ef3073 	uxtb	r3, r3
    1490:	e1a01003 	mov	r1, r3
    1494:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1498:	ebffff27 	bl	113c <putc>
    149c:	e3a03000 	mov	r3, #0
    14a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14a4:	e51b3010 	ldr	r3, [fp, #-16]
    14a8:	e2833001 	add	r3, r3, #1
    14ac:	e50b3010 	str	r3, [fp, #-16]
    14b0:	e59b2004 	ldr	r2, [fp, #4]
    14b4:	e51b3010 	ldr	r3, [fp, #-16]
    14b8:	e0823003 	add	r3, r2, r3
    14bc:	e5d33000 	ldrb	r3, [r3]
    14c0:	e3530000 	cmp	r3, #0
    14c4:	1affff84 	bne	12dc <printf+0x30>
    14c8:	e1a00000 	nop			@ (mov r0, r0)
    14cc:	e1a00000 	nop			@ (mov r0, r0)
    14d0:	e24bd004 	sub	sp, fp, #4
    14d4:	e8bd4800 	pop	{fp, lr}
    14d8:	e28dd00c 	add	sp, sp, #12
    14dc:	e12fff1e 	bx	lr
    14e0:	00001a08 	.word	0x00001a08

000014e4 <free>:
    14e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14e8:	e28db000 	add	fp, sp, #0
    14ec:	e24dd014 	sub	sp, sp, #20
    14f0:	e50b0010 	str	r0, [fp, #-16]
    14f4:	e51b3010 	ldr	r3, [fp, #-16]
    14f8:	e2433008 	sub	r3, r3, #8
    14fc:	e50b300c 	str	r3, [fp, #-12]
    1500:	e59f3154 	ldr	r3, [pc, #340]	@ 165c <free+0x178>
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e50b3008 	str	r3, [fp, #-8]
    150c:	ea000010 	b	1554 <free+0x70>
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e51b2008 	ldr	r2, [fp, #-8]
    151c:	e1520003 	cmp	r2, r3
    1520:	3a000008 	bcc	1548 <free+0x64>
    1524:	e51b200c 	ldr	r2, [fp, #-12]
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e1520003 	cmp	r2, r3
    1530:	8a000010 	bhi	1578 <free+0x94>
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5933000 	ldr	r3, [r3]
    153c:	e51b200c 	ldr	r2, [fp, #-12]
    1540:	e1520003 	cmp	r2, r3
    1544:	3a00000b 	bcc	1578 <free+0x94>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	e51b200c 	ldr	r2, [fp, #-12]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e1520003 	cmp	r2, r3
    1560:	9affffea 	bls	1510 <free+0x2c>
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e51b200c 	ldr	r2, [fp, #-12]
    1570:	e1520003 	cmp	r2, r3
    1574:	2affffe5 	bcs	1510 <free+0x2c>
    1578:	e51b300c 	ldr	r3, [fp, #-12]
    157c:	e5933004 	ldr	r3, [r3, #4]
    1580:	e1a03183 	lsl	r3, r3, #3
    1584:	e51b200c 	ldr	r2, [fp, #-12]
    1588:	e0822003 	add	r2, r2, r3
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5933000 	ldr	r3, [r3]
    1594:	e1520003 	cmp	r2, r3
    1598:	1a00000d 	bne	15d4 <free+0xf0>
    159c:	e51b300c 	ldr	r3, [fp, #-12]
    15a0:	e5932004 	ldr	r2, [r3, #4]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e5933000 	ldr	r3, [r3]
    15ac:	e5933004 	ldr	r3, [r3, #4]
    15b0:	e0822003 	add	r2, r2, r3
    15b4:	e51b300c 	ldr	r3, [fp, #-12]
    15b8:	e5832004 	str	r2, [r3, #4]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e5933000 	ldr	r3, [r3]
    15c4:	e5932000 	ldr	r2, [r3]
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e5832000 	str	r2, [r3]
    15d0:	ea000003 	b	15e4 <free+0x100>
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e5932000 	ldr	r2, [r3]
    15dc:	e51b300c 	ldr	r3, [fp, #-12]
    15e0:	e5832000 	str	r2, [r3]
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5933004 	ldr	r3, [r3, #4]
    15ec:	e1a03183 	lsl	r3, r3, #3
    15f0:	e51b2008 	ldr	r2, [fp, #-8]
    15f4:	e0823003 	add	r3, r2, r3
    15f8:	e51b200c 	ldr	r2, [fp, #-12]
    15fc:	e1520003 	cmp	r2, r3
    1600:	1a00000b 	bne	1634 <free+0x150>
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e5932004 	ldr	r2, [r3, #4]
    160c:	e51b300c 	ldr	r3, [fp, #-12]
    1610:	e5933004 	ldr	r3, [r3, #4]
    1614:	e0822003 	add	r2, r2, r3
    1618:	e51b3008 	ldr	r3, [fp, #-8]
    161c:	e5832004 	str	r2, [r3, #4]
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5932000 	ldr	r2, [r3]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e5832000 	str	r2, [r3]
    1630:	ea000002 	b	1640 <free+0x15c>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e51b200c 	ldr	r2, [fp, #-12]
    163c:	e5832000 	str	r2, [r3]
    1640:	e59f2014 	ldr	r2, [pc, #20]	@ 165c <free+0x178>
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5823000 	str	r3, [r2]
    164c:	e1a00000 	nop			@ (mov r0, r0)
    1650:	e28bd000 	add	sp, fp, #0
    1654:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1658:	e12fff1e 	bx	lr
    165c:	00001a64 	.word	0x00001a64

00001660 <morecore>:
    1660:	e92d4800 	push	{fp, lr}
    1664:	e28db004 	add	fp, sp, #4
    1668:	e24dd010 	sub	sp, sp, #16
    166c:	e50b0010 	str	r0, [fp, #-16]
    1670:	e51b3010 	ldr	r3, [fp, #-16]
    1674:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1678:	2a000001 	bcs	1684 <morecore+0x24>
    167c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1680:	e50b3010 	str	r3, [fp, #-16]
    1684:	e51b3010 	ldr	r3, [fp, #-16]
    1688:	e1a03183 	lsl	r3, r3, #3
    168c:	e1a00003 	mov	r0, r3
    1690:	ebfffe05 	bl	eac <sbrk>
    1694:	e50b0008 	str	r0, [fp, #-8]
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e3730001 	cmn	r3, #1
    16a0:	1a000001 	bne	16ac <morecore+0x4c>
    16a4:	e3a03000 	mov	r3, #0
    16a8:	ea00000a 	b	16d8 <morecore+0x78>
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e50b300c 	str	r3, [fp, #-12]
    16b4:	e51b300c 	ldr	r3, [fp, #-12]
    16b8:	e51b2010 	ldr	r2, [fp, #-16]
    16bc:	e5832004 	str	r2, [r3, #4]
    16c0:	e51b300c 	ldr	r3, [fp, #-12]
    16c4:	e2833008 	add	r3, r3, #8
    16c8:	e1a00003 	mov	r0, r3
    16cc:	ebffff84 	bl	14e4 <free>
    16d0:	e59f300c 	ldr	r3, [pc, #12]	@ 16e4 <morecore+0x84>
    16d4:	e5933000 	ldr	r3, [r3]
    16d8:	e1a00003 	mov	r0, r3
    16dc:	e24bd004 	sub	sp, fp, #4
    16e0:	e8bd8800 	pop	{fp, pc}
    16e4:	00001a64 	.word	0x00001a64

000016e8 <malloc>:
    16e8:	e92d4800 	push	{fp, lr}
    16ec:	e28db004 	add	fp, sp, #4
    16f0:	e24dd018 	sub	sp, sp, #24
    16f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16fc:	e2833007 	add	r3, r3, #7
    1700:	e1a031a3 	lsr	r3, r3, #3
    1704:	e2833001 	add	r3, r3, #1
    1708:	e50b3010 	str	r3, [fp, #-16]
    170c:	e59f3134 	ldr	r3, [pc, #308]	@ 1848 <malloc+0x160>
    1710:	e5933000 	ldr	r3, [r3]
    1714:	e50b300c 	str	r3, [fp, #-12]
    1718:	e51b300c 	ldr	r3, [fp, #-12]
    171c:	e3530000 	cmp	r3, #0
    1720:	1a00000b 	bne	1754 <malloc+0x6c>
    1724:	e59f3120 	ldr	r3, [pc, #288]	@ 184c <malloc+0x164>
    1728:	e50b300c 	str	r3, [fp, #-12]
    172c:	e59f2114 	ldr	r2, [pc, #276]	@ 1848 <malloc+0x160>
    1730:	e51b300c 	ldr	r3, [fp, #-12]
    1734:	e5823000 	str	r3, [r2]
    1738:	e59f3108 	ldr	r3, [pc, #264]	@ 1848 <malloc+0x160>
    173c:	e5933000 	ldr	r3, [r3]
    1740:	e59f2104 	ldr	r2, [pc, #260]	@ 184c <malloc+0x164>
    1744:	e5823000 	str	r3, [r2]
    1748:	e59f30fc 	ldr	r3, [pc, #252]	@ 184c <malloc+0x164>
    174c:	e3a02000 	mov	r2, #0
    1750:	e5832004 	str	r2, [r3, #4]
    1754:	e51b300c 	ldr	r3, [fp, #-12]
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e50b3008 	str	r3, [fp, #-8]
    1760:	e51b3008 	ldr	r3, [fp, #-8]
    1764:	e5933004 	ldr	r3, [r3, #4]
    1768:	e51b2010 	ldr	r2, [fp, #-16]
    176c:	e1520003 	cmp	r2, r3
    1770:	8a00001e 	bhi	17f0 <malloc+0x108>
    1774:	e51b3008 	ldr	r3, [fp, #-8]
    1778:	e5933004 	ldr	r3, [r3, #4]
    177c:	e51b2010 	ldr	r2, [fp, #-16]
    1780:	e1520003 	cmp	r2, r3
    1784:	1a000004 	bne	179c <malloc+0xb4>
    1788:	e51b3008 	ldr	r3, [fp, #-8]
    178c:	e5932000 	ldr	r2, [r3]
    1790:	e51b300c 	ldr	r3, [fp, #-12]
    1794:	e5832000 	str	r2, [r3]
    1798:	ea00000e 	b	17d8 <malloc+0xf0>
    179c:	e51b3008 	ldr	r3, [fp, #-8]
    17a0:	e5932004 	ldr	r2, [r3, #4]
    17a4:	e51b3010 	ldr	r3, [fp, #-16]
    17a8:	e0422003 	sub	r2, r2, r3
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e5832004 	str	r2, [r3, #4]
    17b4:	e51b3008 	ldr	r3, [fp, #-8]
    17b8:	e5933004 	ldr	r3, [r3, #4]
    17bc:	e1a03183 	lsl	r3, r3, #3
    17c0:	e51b2008 	ldr	r2, [fp, #-8]
    17c4:	e0823003 	add	r3, r2, r3
    17c8:	e50b3008 	str	r3, [fp, #-8]
    17cc:	e51b3008 	ldr	r3, [fp, #-8]
    17d0:	e51b2010 	ldr	r2, [fp, #-16]
    17d4:	e5832004 	str	r2, [r3, #4]
    17d8:	e59f2068 	ldr	r2, [pc, #104]	@ 1848 <malloc+0x160>
    17dc:	e51b300c 	ldr	r3, [fp, #-12]
    17e0:	e5823000 	str	r3, [r2]
    17e4:	e51b3008 	ldr	r3, [fp, #-8]
    17e8:	e2833008 	add	r3, r3, #8
    17ec:	ea000012 	b	183c <malloc+0x154>
    17f0:	e59f3050 	ldr	r3, [pc, #80]	@ 1848 <malloc+0x160>
    17f4:	e5933000 	ldr	r3, [r3]
    17f8:	e51b2008 	ldr	r2, [fp, #-8]
    17fc:	e1520003 	cmp	r2, r3
    1800:	1a000007 	bne	1824 <malloc+0x13c>
    1804:	e51b0010 	ldr	r0, [fp, #-16]
    1808:	ebffff94 	bl	1660 <morecore>
    180c:	e50b0008 	str	r0, [fp, #-8]
    1810:	e51b3008 	ldr	r3, [fp, #-8]
    1814:	e3530000 	cmp	r3, #0
    1818:	1a000001 	bne	1824 <malloc+0x13c>
    181c:	e3a03000 	mov	r3, #0
    1820:	ea000005 	b	183c <malloc+0x154>
    1824:	e51b3008 	ldr	r3, [fp, #-8]
    1828:	e50b300c 	str	r3, [fp, #-12]
    182c:	e51b3008 	ldr	r3, [fp, #-8]
    1830:	e5933000 	ldr	r3, [r3]
    1834:	e50b3008 	str	r3, [fp, #-8]
    1838:	eaffffc8 	b	1760 <malloc+0x78>
    183c:	e1a00003 	mov	r0, r3
    1840:	e24bd004 	sub	sp, fp, #4
    1844:	e8bd8800 	pop	{fp, pc}
    1848:	00001a64 	.word	0x00001a64
    184c:	00001a5c 	.word	0x00001a5c

00001850 <__udivsi3>:
    1850:	e2512001 	subs	r2, r1, #1
    1854:	012fff1e 	bxeq	lr
    1858:	3a000036 	bcc	1938 <__udivsi3+0xe8>
    185c:	e1500001 	cmp	r0, r1
    1860:	9a000022 	bls	18f0 <__udivsi3+0xa0>
    1864:	e1110002 	tst	r1, r2
    1868:	0a000023 	beq	18fc <__udivsi3+0xac>
    186c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1870:	01a01181 	lsleq	r1, r1, #3
    1874:	03a03008 	moveq	r3, #8
    1878:	13a03001 	movne	r3, #1
    187c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1880:	31510000 	cmpcc	r1, r0
    1884:	31a01201 	lslcc	r1, r1, #4
    1888:	31a03203 	lslcc	r3, r3, #4
    188c:	3afffffa 	bcc	187c <__udivsi3+0x2c>
    1890:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1894:	31510000 	cmpcc	r1, r0
    1898:	31a01081 	lslcc	r1, r1, #1
    189c:	31a03083 	lslcc	r3, r3, #1
    18a0:	3afffffa 	bcc	1890 <__udivsi3+0x40>
    18a4:	e3a02000 	mov	r2, #0
    18a8:	e1500001 	cmp	r0, r1
    18ac:	20400001 	subcs	r0, r0, r1
    18b0:	21822003 	orrcs	r2, r2, r3
    18b4:	e15000a1 	cmp	r0, r1, lsr #1
    18b8:	204000a1 	subcs	r0, r0, r1, lsr #1
    18bc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    18c0:	e1500121 	cmp	r0, r1, lsr #2
    18c4:	20400121 	subcs	r0, r0, r1, lsr #2
    18c8:	21822123 	orrcs	r2, r2, r3, lsr #2
    18cc:	e15001a1 	cmp	r0, r1, lsr #3
    18d0:	204001a1 	subcs	r0, r0, r1, lsr #3
    18d4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18d8:	e3500000 	cmp	r0, #0
    18dc:	11b03223 	lsrsne	r3, r3, #4
    18e0:	11a01221 	lsrne	r1, r1, #4
    18e4:	1affffef 	bne	18a8 <__udivsi3+0x58>
    18e8:	e1a00002 	mov	r0, r2
    18ec:	e12fff1e 	bx	lr
    18f0:	03a00001 	moveq	r0, #1
    18f4:	13a00000 	movne	r0, #0
    18f8:	e12fff1e 	bx	lr
    18fc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1900:	21a01821 	lsrcs	r1, r1, #16
    1904:	23a02010 	movcs	r2, #16
    1908:	33a02000 	movcc	r2, #0
    190c:	e3510c01 	cmp	r1, #256	@ 0x100
    1910:	21a01421 	lsrcs	r1, r1, #8
    1914:	22822008 	addcs	r2, r2, #8
    1918:	e3510010 	cmp	r1, #16
    191c:	21a01221 	lsrcs	r1, r1, #4
    1920:	22822004 	addcs	r2, r2, #4
    1924:	e3510004 	cmp	r1, #4
    1928:	82822003 	addhi	r2, r2, #3
    192c:	908220a1 	addls	r2, r2, r1, lsr #1
    1930:	e1a00230 	lsr	r0, r0, r2
    1934:	e12fff1e 	bx	lr
    1938:	e3500000 	cmp	r0, #0
    193c:	13e00000 	mvnne	r0, #0
    1940:	ea000007 	b	1964 <__aeabi_idiv0>

00001944 <__aeabi_uidivmod>:
    1944:	e3510000 	cmp	r1, #0
    1948:	0afffffa 	beq	1938 <__udivsi3+0xe8>
    194c:	e92d4003 	push	{r0, r1, lr}
    1950:	ebffffbe 	bl	1850 <__udivsi3>
    1954:	e8bd4006 	pop	{r1, r2, lr}
    1958:	e0030092 	mul	r3, r2, r0
    195c:	e0411003 	sub	r1, r1, r3
    1960:	e12fff1e 	bx	lr

00001964 <__aeabi_idiv0>:
    1964:	e12fff1e 	bx	lr
