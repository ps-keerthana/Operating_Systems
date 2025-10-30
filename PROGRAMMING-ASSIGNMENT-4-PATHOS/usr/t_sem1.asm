
_t_sem1:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread2>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e59f1064 	ldr	r1, [pc, #100]	@ 84 <thread2+0x84>
      1c:	e3a00001 	mov	r0, #1
      20:	eb00047d 	bl	121c <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb0002b7 	bl	b14 <semDown>
      34:	e59f104c 	ldr	r1, [pc, #76]	@ 88 <thread2+0x88>
      38:	e3a00001 	mov	r0, #1
      3c:	eb000476 	bl	121c <printf>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e5933000 	ldr	r3, [r3]
      48:	e50b300c 	str	r3, [fp, #-12]
      4c:	e51b300c 	ldr	r3, [fp, #-12]
      50:	e5933000 	ldr	r3, [r3]
      54:	e2832001 	add	r2, r3, #1
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e5832000 	str	r2, [r3]
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e5933004 	ldr	r3, [r3, #4]
      68:	e1a00003 	mov	r0, r3
      6c:	eb000290 	bl	ab4 <semUp>
      70:	eb0003ba 	bl	f60 <thread_exit>
      74:	e3a03000 	mov	r3, #0
      78:	e1a00003 	mov	r0, r3
      7c:	e24bd004 	sub	sp, fp, #4
      80:	e8bd8800 	pop	{fp, pc}
      84:	000018d8 	.word	0x000018d8
      88:	000018f4 	.word	0x000018f4

0000008c <main>:
      8c:	e92d4800 	push	{fp, lr}
      90:	e28db004 	add	fp, sp, #4
      94:	e24dd028 	sub	sp, sp, #40	@ 0x28
      98:	e24b301c 	sub	r3, fp, #28
      9c:	e3a01001 	mov	r1, #1
      a0:	e1a00003 	mov	r0, r3
      a4:	eb00026c 	bl	a5c <semInit>
      a8:	e59f1074 	ldr	r1, [pc, #116]	@ 124 <main+0x98>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000459 	bl	121c <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      bc:	e24b3020 	sub	r3, fp, #32
      c0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
      c4:	e24b301c 	sub	r3, fp, #28
      c8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      cc:	e24b301c 	sub	r3, fp, #28
      d0:	e1a00003 	mov	r0, r3
      d4:	eb00028e 	bl	b14 <semDown>
      d8:	e24b2028 	sub	r2, fp, #40	@ 0x28
      dc:	e24b302c 	sub	r3, fp, #44	@ 0x2c
      e0:	e59f1040 	ldr	r1, [pc, #64]	@ 128 <main+0x9c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb000393 	bl	f3c <thread_create>
      ec:	e3a0000a 	mov	r0, #10
      f0:	eb000352 	bl	e40 <sleep>
      f4:	e24b301c 	sub	r3, fp, #28
      f8:	e1a00003 	mov	r0, r3
      fc:	eb00026c 	bl	ab4 <semUp>
     100:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     104:	e1a00003 	mov	r0, r3
     108:	eb00039d 	bl	f84 <thread_join>
     10c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     110:	e1a02003 	mov	r2, r3
     114:	e59f1010 	ldr	r1, [pc, #16]	@ 12c <main+0xa0>
     118:	e3a00001 	mov	r0, #1
     11c:	eb00043e 	bl	121c <printf>
     120:	eb0002a4 	bl	bb8 <exit>
     124:	00001918 	.word	0x00001918
     128:	00000000 	.word	0x00000000
     12c:	00001928 	.word	0x00001928

00000130 <pg_pte>:
     130:	e92d4800 	push	{fp, lr}
     134:	e28db004 	add	fp, sp, #4
     138:	e24dd008 	sub	sp, sp, #8
     13c:	e50b0008 	str	r0, [fp, #-8]
     140:	e51b1008 	ldr	r1, [fp, #-8]
     144:	e3a0001a 	mov	r0, #26
     148:	eb0003d5 	bl	10a4 <syscall>
     14c:	e1a03000 	mov	r3, r0
     150:	e1a00003 	mov	r0, r3
     154:	e24bd004 	sub	sp, fp, #4
     158:	e8bd8800 	pop	{fp, pc}

0000015c <pg_pa>:
     15c:	e92d4800 	push	{fp, lr}
     160:	e28db004 	add	fp, sp, #4
     164:	e24dd008 	sub	sp, sp, #8
     168:	e50b0008 	str	r0, [fp, #-8]
     16c:	e51b1008 	ldr	r1, [fp, #-8]
     170:	e3a0001b 	mov	r0, #27
     174:	eb0003ca 	bl	10a4 <syscall>
     178:	e1a03000 	mov	r3, r0
     17c:	e1a00003 	mov	r0, r3
     180:	e24bd004 	sub	sp, fp, #4
     184:	e8bd8800 	pop	{fp, pc}

00000188 <pg_flags>:
     188:	e92d4800 	push	{fp, lr}
     18c:	e28db004 	add	fp, sp, #4
     190:	e24dd008 	sub	sp, sp, #8
     194:	e50b0008 	str	r0, [fp, #-8]
     198:	e51b1008 	ldr	r1, [fp, #-8]
     19c:	e3a0001c 	mov	r0, #28
     1a0:	eb0003bf 	bl	10a4 <syscall>
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a00003 	mov	r0, r3
     1ac:	e24bd004 	sub	sp, fp, #4
     1b0:	e8bd8800 	pop	{fp, pc}

000001b4 <kpt>:
     1b4:	e92d4800 	push	{fp, lr}
     1b8:	e28db004 	add	fp, sp, #4
     1bc:	e3a0001d 	mov	r0, #29
     1c0:	eb0003b7 	bl	10a4 <syscall>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e8bd8800 	pop	{fp, pc}

000001d0 <ugetpid>:
     1d0:	e92d4800 	push	{fp, lr}
     1d4:	e28db004 	add	fp, sp, #4
     1d8:	e3a0001e 	mov	r0, #30
     1dc:	eb0003b0 	bl	10a4 <syscall>
     1e0:	e1a03000 	mov	r3, r0
     1e4:	e1a00003 	mov	r0, r3
     1e8:	e8bd8800 	pop	{fp, pc}

000001ec <strcpy>:
     1ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f0:	e28db000 	add	fp, sp, #0
     1f4:	e24dd014 	sub	sp, sp, #20
     1f8:	e50b0010 	str	r0, [fp, #-16]
     1fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     200:	e51b3010 	ldr	r3, [fp, #-16]
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e1a00000 	nop			@ (mov r0, r0)
     20c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     210:	e2823001 	add	r3, r2, #1
     214:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     218:	e51b3010 	ldr	r3, [fp, #-16]
     21c:	e2831001 	add	r1, r3, #1
     220:	e50b1010 	str	r1, [fp, #-16]
     224:	e5d22000 	ldrb	r2, [r2]
     228:	e5c32000 	strb	r2, [r3]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e3530000 	cmp	r3, #0
     234:	1afffff4 	bne	20c <strcpy+0x20>
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e1a00003 	mov	r0, r3
     240:	e28bd000 	add	sp, fp, #0
     244:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     248:	e12fff1e 	bx	lr

0000024c <strcmp>:
     24c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     250:	e28db000 	add	fp, sp, #0
     254:	e24dd00c 	sub	sp, sp, #12
     258:	e50b0008 	str	r0, [fp, #-8]
     25c:	e50b100c 	str	r1, [fp, #-12]
     260:	ea000005 	b	27c <strcmp+0x30>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e2833001 	add	r3, r3, #1
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	e51b300c 	ldr	r3, [fp, #-12]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b300c 	str	r3, [fp, #-12]
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e3530000 	cmp	r3, #0
     288:	0a000005 	beq	2a4 <strcmp+0x58>
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e5d32000 	ldrb	r2, [r3]
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e1520003 	cmp	r2, r3
     2a0:	0affffef 	beq	264 <strcmp+0x18>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e1a02003 	mov	r2, r3
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e5d33000 	ldrb	r3, [r3]
     2b8:	e0423003 	sub	r3, r2, r3
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e28bd000 	add	sp, fp, #0
     2c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2c8:	e12fff1e 	bx	lr

000002cc <strlen>:
     2cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d0:	e28db000 	add	fp, sp, #0
     2d4:	e24dd014 	sub	sp, sp, #20
     2d8:	e50b0010 	str	r0, [fp, #-16]
     2dc:	e3a03000 	mov	r3, #0
     2e0:	e50b3008 	str	r3, [fp, #-8]
     2e4:	ea000002 	b	2f4 <strlen+0x28>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e2833001 	add	r3, r3, #1
     2f0:	e50b3008 	str	r3, [fp, #-8]
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e51b2010 	ldr	r2, [fp, #-16]
     2fc:	e0823003 	add	r3, r2, r3
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e3530000 	cmp	r3, #0
     308:	1afffff6 	bne	2e8 <strlen+0x1c>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e1a00003 	mov	r0, r3
     314:	e28bd000 	add	sp, fp, #0
     318:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     31c:	e12fff1e 	bx	lr

00000320 <memset>:
     320:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     324:	e28db000 	add	fp, sp, #0
     328:	e24dd024 	sub	sp, sp, #36	@ 0x24
     32c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     330:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     334:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     338:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     344:	e54b300d 	strb	r3, [fp, #-13]
     348:	e55b200d 	ldrb	r2, [fp, #-13]
     34c:	e1a03002 	mov	r3, r2
     350:	e1a03403 	lsl	r3, r3, #8
     354:	e0833002 	add	r3, r3, r2
     358:	e1a03803 	lsl	r3, r3, #16
     35c:	e1a02003 	mov	r2, r3
     360:	e55b300d 	ldrb	r3, [fp, #-13]
     364:	e1a03403 	lsl	r3, r3, #8
     368:	e1822003 	orr	r2, r2, r3
     36c:	e55b300d 	ldrb	r3, [fp, #-13]
     370:	e1823003 	orr	r3, r2, r3
     374:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     378:	ea000008 	b	3a0 <memset+0x80>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e55b200d 	ldrb	r2, [fp, #-13]
     384:	e5c32000 	strb	r2, [r3]
     388:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     38c:	e2433001 	sub	r3, r3, #1
     390:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2833001 	add	r3, r3, #1
     39c:	e50b3008 	str	r3, [fp, #-8]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e3530000 	cmp	r3, #0
     3a8:	0a000003 	beq	3bc <memset+0x9c>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2033003 	and	r3, r3, #3
     3b4:	e3530000 	cmp	r3, #0
     3b8:	1affffef 	bne	37c <memset+0x5c>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e50b300c 	str	r3, [fp, #-12]
     3c4:	ea000008 	b	3ec <memset+0xcc>
     3c8:	e51b300c 	ldr	r3, [fp, #-12]
     3cc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3d0:	e5832000 	str	r2, [r3]
     3d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d8:	e2433004 	sub	r3, r3, #4
     3dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e51b300c 	ldr	r3, [fp, #-12]
     3e4:	e2833004 	add	r3, r3, #4
     3e8:	e50b300c 	str	r3, [fp, #-12]
     3ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e3530003 	cmp	r3, #3
     3f4:	8afffff3 	bhi	3c8 <memset+0xa8>
     3f8:	e51b300c 	ldr	r3, [fp, #-12]
     3fc:	e50b3008 	str	r3, [fp, #-8]
     400:	ea000008 	b	428 <memset+0x108>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e55b200d 	ldrb	r2, [fp, #-13]
     40c:	e5c32000 	strb	r2, [r3]
     410:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     414:	e2433001 	sub	r3, r3, #1
     418:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     42c:	e3530000 	cmp	r3, #0
     430:	1afffff3 	bne	404 <memset+0xe4>
     434:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     438:	e1a00003 	mov	r0, r3
     43c:	e28bd000 	add	sp, fp, #0
     440:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     444:	e12fff1e 	bx	lr

00000448 <strchr>:
     448:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     44c:	e28db000 	add	fp, sp, #0
     450:	e24dd00c 	sub	sp, sp, #12
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e1a03001 	mov	r3, r1
     45c:	e54b3009 	strb	r3, [fp, #-9]
     460:	ea000009 	b	48c <strchr+0x44>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e55b2009 	ldrb	r2, [fp, #-9]
     470:	e1520003 	cmp	r2, r3
     474:	1a000001 	bne	480 <strchr+0x38>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	ea000007 	b	4a0 <strchr+0x58>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e2833001 	add	r3, r3, #1
     488:	e50b3008 	str	r3, [fp, #-8]
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e5d33000 	ldrb	r3, [r3]
     494:	e3530000 	cmp	r3, #0
     498:	1afffff1 	bne	464 <strchr+0x1c>
     49c:	e3a03000 	mov	r3, #0
     4a0:	e1a00003 	mov	r0, r3
     4a4:	e28bd000 	add	sp, fp, #0
     4a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4ac:	e12fff1e 	bx	lr

000004b0 <gets>:
     4b0:	e92d4800 	push	{fp, lr}
     4b4:	e28db004 	add	fp, sp, #4
     4b8:	e24dd018 	sub	sp, sp, #24
     4bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4c4:	e3a03000 	mov	r3, #0
     4c8:	e50b3008 	str	r3, [fp, #-8]
     4cc:	ea000016 	b	52c <gets+0x7c>
     4d0:	e24b300d 	sub	r3, fp, #13
     4d4:	e3a02001 	mov	r2, #1
     4d8:	e1a01003 	mov	r1, r3
     4dc:	e3a00000 	mov	r0, #0
     4e0:	eb0001cf 	bl	c24 <read>
     4e4:	e50b000c 	str	r0, [fp, #-12]
     4e8:	e51b300c 	ldr	r3, [fp, #-12]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	da000013 	ble	544 <gets+0x94>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e2832001 	add	r2, r3, #1
     4fc:	e50b2008 	str	r2, [fp, #-8]
     500:	e1a02003 	mov	r2, r3
     504:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     508:	e0833002 	add	r3, r3, r2
     50c:	e55b200d 	ldrb	r2, [fp, #-13]
     510:	e5c32000 	strb	r2, [r3]
     514:	e55b300d 	ldrb	r3, [fp, #-13]
     518:	e353000a 	cmp	r3, #10
     51c:	0a000009 	beq	548 <gets+0x98>
     520:	e55b300d 	ldrb	r3, [fp, #-13]
     524:	e353000d 	cmp	r3, #13
     528:	0a000006 	beq	548 <gets+0x98>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e2833001 	add	r3, r3, #1
     534:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     538:	e1520003 	cmp	r2, r3
     53c:	caffffe3 	bgt	4d0 <gets+0x20>
     540:	ea000000 	b	548 <gets+0x98>
     544:	e1a00000 	nop			@ (mov r0, r0)
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     550:	e0823003 	add	r3, r2, r3
     554:	e3a02000 	mov	r2, #0
     558:	e5c32000 	strb	r2, [r3]
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e1a00003 	mov	r0, r3
     564:	e24bd004 	sub	sp, fp, #4
     568:	e8bd8800 	pop	{fp, pc}

0000056c <stat>:
     56c:	e92d4800 	push	{fp, lr}
     570:	e28db004 	add	fp, sp, #4
     574:	e24dd010 	sub	sp, sp, #16
     578:	e50b0010 	str	r0, [fp, #-16]
     57c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     580:	e3a01000 	mov	r1, #0
     584:	e51b0010 	ldr	r0, [fp, #-16]
     588:	eb0001d2 	bl	cd8 <open>
     58c:	e50b0008 	str	r0, [fp, #-8]
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	e3530000 	cmp	r3, #0
     598:	aa000001 	bge	5a4 <stat+0x38>
     59c:	e3e03000 	mvn	r3, #0
     5a0:	ea000006 	b	5c0 <stat+0x54>
     5a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5a8:	e51b0008 	ldr	r0, [fp, #-8]
     5ac:	eb0001e4 	bl	d44 <fstat>
     5b0:	e50b000c 	str	r0, [fp, #-12]
     5b4:	e51b0008 	ldr	r0, [fp, #-8]
     5b8:	eb0001ab 	bl	c6c <close>
     5bc:	e51b300c 	ldr	r3, [fp, #-12]
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e24bd004 	sub	sp, fp, #4
     5c8:	e8bd8800 	pop	{fp, pc}

000005cc <atoi>:
     5cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d0:	e28db000 	add	fp, sp, #0
     5d4:	e24dd014 	sub	sp, sp, #20
     5d8:	e50b0010 	str	r0, [fp, #-16]
     5dc:	e3a03000 	mov	r3, #0
     5e0:	e50b3008 	str	r3, [fp, #-8]
     5e4:	ea00000c 	b	61c <atoi+0x50>
     5e8:	e51b2008 	ldr	r2, [fp, #-8]
     5ec:	e1a03002 	mov	r3, r2
     5f0:	e1a03103 	lsl	r3, r3, #2
     5f4:	e0833002 	add	r3, r3, r2
     5f8:	e1a03083 	lsl	r3, r3, #1
     5fc:	e1a01003 	mov	r1, r3
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e2832001 	add	r2, r3, #1
     608:	e50b2010 	str	r2, [fp, #-16]
     60c:	e5d33000 	ldrb	r3, [r3]
     610:	e0813003 	add	r3, r1, r3
     614:	e2433030 	sub	r3, r3, #48	@ 0x30
     618:	e50b3008 	str	r3, [fp, #-8]
     61c:	e51b3010 	ldr	r3, [fp, #-16]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e353002f 	cmp	r3, #47	@ 0x2f
     628:	9a000003 	bls	63c <atoi+0x70>
     62c:	e51b3010 	ldr	r3, [fp, #-16]
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e3530039 	cmp	r3, #57	@ 0x39
     638:	9affffea 	bls	5e8 <atoi+0x1c>
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e1a00003 	mov	r0, r3
     644:	e28bd000 	add	sp, fp, #0
     648:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <memmove>:
     650:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     654:	e28db000 	add	fp, sp, #0
     658:	e24dd01c 	sub	sp, sp, #28
     65c:	e50b0010 	str	r0, [fp, #-16]
     660:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     664:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     674:	e50b300c 	str	r3, [fp, #-12]
     678:	ea000007 	b	69c <memmove+0x4c>
     67c:	e51b200c 	ldr	r2, [fp, #-12]
     680:	e2823001 	add	r3, r2, #1
     684:	e50b300c 	str	r3, [fp, #-12]
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e2831001 	add	r1, r3, #1
     690:	e50b1008 	str	r1, [fp, #-8]
     694:	e5d22000 	ldrb	r2, [r2]
     698:	e5c32000 	strb	r2, [r3]
     69c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a0:	e2432001 	sub	r2, r3, #1
     6a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6a8:	e3530000 	cmp	r3, #0
     6ac:	cafffff2 	bgt	67c <memmove+0x2c>
     6b0:	e51b3010 	ldr	r3, [fp, #-16]
     6b4:	e1a00003 	mov	r0, r3
     6b8:	e28bd000 	add	sp, fp, #0
     6bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <strncmp>:
     6c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c8:	e28db000 	add	fp, sp, #0
     6cc:	e24dd014 	sub	sp, sp, #20
     6d0:	e50b0008 	str	r0, [fp, #-8]
     6d4:	e50b100c 	str	r1, [fp, #-12]
     6d8:	e50b2010 	str	r2, [fp, #-16]
     6dc:	ea000008 	b	704 <strncmp+0x40>
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e2833001 	add	r3, r3, #1
     6e8:	e50b3008 	str	r3, [fp, #-8]
     6ec:	e51b300c 	ldr	r3, [fp, #-12]
     6f0:	e2833001 	add	r3, r3, #1
     6f4:	e50b300c 	str	r3, [fp, #-12]
     6f8:	e51b3010 	ldr	r3, [fp, #-16]
     6fc:	e2433001 	sub	r3, r3, #1
     700:	e50b3010 	str	r3, [fp, #-16]
     704:	e51b3010 	ldr	r3, [fp, #-16]
     708:	e3530000 	cmp	r3, #0
     70c:	da00000d 	ble	748 <strncmp+0x84>
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e5d33000 	ldrb	r3, [r3]
     718:	e3530000 	cmp	r3, #0
     71c:	0a000009 	beq	748 <strncmp+0x84>
     720:	e51b300c 	ldr	r3, [fp, #-12]
     724:	e5d33000 	ldrb	r3, [r3]
     728:	e3530000 	cmp	r3, #0
     72c:	0a000005 	beq	748 <strncmp+0x84>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e5d32000 	ldrb	r2, [r3]
     738:	e51b300c 	ldr	r3, [fp, #-12]
     73c:	e5d33000 	ldrb	r3, [r3]
     740:	e1520003 	cmp	r2, r3
     744:	0affffe5 	beq	6e0 <strncmp+0x1c>
     748:	e51b3010 	ldr	r3, [fp, #-16]
     74c:	e3530000 	cmp	r3, #0
     750:	1a000001 	bne	75c <strncmp+0x98>
     754:	e3a03000 	mov	r3, #0
     758:	ea000005 	b	774 <strncmp+0xb0>
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e5d33000 	ldrb	r3, [r3]
     764:	e1a02003 	mov	r2, r3
     768:	e51b300c 	ldr	r3, [fp, #-12]
     76c:	e5d33000 	ldrb	r3, [r3]
     770:	e0423003 	sub	r3, r2, r3
     774:	e1a00003 	mov	r0, r3
     778:	e28bd000 	add	sp, fp, #0
     77c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <strncpy>:
     784:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     788:	e28db000 	add	fp, sp, #0
     78c:	e24dd01c 	sub	sp, sp, #28
     790:	e50b0010 	str	r0, [fp, #-16]
     794:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     798:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     79c:	e51b3010 	ldr	r3, [fp, #-16]
     7a0:	e50b3008 	str	r3, [fp, #-8]
     7a4:	ea00000a 	b	7d4 <strncpy+0x50>
     7a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7ac:	e2823001 	add	r3, r2, #1
     7b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e2831001 	add	r1, r3, #1
     7bc:	e50b1008 	str	r1, [fp, #-8]
     7c0:	e5d22000 	ldrb	r2, [r2]
     7c4:	e5c32000 	strb	r2, [r3]
     7c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7cc:	e2433001 	sub	r3, r3, #1
     7d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d8:	e3530000 	cmp	r3, #0
     7dc:	da00000c 	ble	814 <strncpy+0x90>
     7e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7e4:	e5d33000 	ldrb	r3, [r3]
     7e8:	e3530000 	cmp	r3, #0
     7ec:	1affffed 	bne	7a8 <strncpy+0x24>
     7f0:	ea000007 	b	814 <strncpy+0x90>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e2832001 	add	r2, r3, #1
     7fc:	e50b2008 	str	r2, [fp, #-8]
     800:	e3a02000 	mov	r2, #0
     804:	e5c32000 	strb	r2, [r3]
     808:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     80c:	e2433001 	sub	r3, r3, #1
     810:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     814:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     818:	e3530000 	cmp	r3, #0
     81c:	cafffff4 	bgt	7f4 <strncpy+0x70>
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e1a00003 	mov	r0, r3
     828:	e28bd000 	add	sp, fp, #0
     82c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <xchg>:
     834:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     838:	e28db000 	add	fp, sp, #0
     83c:	e24dd014 	sub	sp, sp, #20
     840:	e50b0010 	str	r0, [fp, #-16]
     844:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     848:	e51b2010 	ldr	r2, [fp, #-16]
     84c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     850:	e1023091 	swp	r3, r1, [r2]
     854:	e50b3008 	str	r3, [fp, #-8]
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e1a00003 	mov	r0, r3
     860:	e28bd000 	add	sp, fp, #0
     864:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <initiateLock>:
     86c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     870:	e28db000 	add	fp, sp, #0
     874:	e24dd00c 	sub	sp, sp, #12
     878:	e50b0008 	str	r0, [fp, #-8]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e3a02000 	mov	r2, #0
     884:	e5832000 	str	r2, [r3]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e3a02001 	mov	r2, #1
     890:	e5832004 	str	r2, [r3, #4]
     894:	e1a00000 	nop			@ (mov r0, r0)
     898:	e28bd000 	add	sp, fp, #0
     89c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <acquireLock>:
     8a4:	e92d4800 	push	{fp, lr}
     8a8:	e28db004 	add	fp, sp, #4
     8ac:	e24dd008 	sub	sp, sp, #8
     8b0:	e50b0008 	str	r0, [fp, #-8]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e5933004 	ldr	r3, [r3, #4]
     8bc:	e3530000 	cmp	r3, #0
     8c0:	0a000008 	beq	8e8 <acquireLock+0x44>
     8c4:	e1a00000 	nop			@ (mov r0, r0)
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e3a01001 	mov	r1, #1
     8d0:	e1a00003 	mov	r0, r3
     8d4:	ebffffd6 	bl	834 <xchg>
     8d8:	e1a03000 	mov	r3, r0
     8dc:	e3530000 	cmp	r3, #0
     8e0:	1afffff8 	bne	8c8 <acquireLock+0x24>
     8e4:	ea000000 	b	8ec <acquireLock+0x48>
     8e8:	e1a00000 	nop			@ (mov r0, r0)
     8ec:	e24bd004 	sub	sp, fp, #4
     8f0:	e8bd8800 	pop	{fp, pc}

000008f4 <releaseLock>:
     8f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8f8:	e28db000 	add	fp, sp, #0
     8fc:	e24dd00c 	sub	sp, sp, #12
     900:	e50b0008 	str	r0, [fp, #-8]
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e5933004 	ldr	r3, [r3, #4]
     90c:	e3530000 	cmp	r3, #0
     910:	0a000006 	beq	930 <releaseLock+0x3c>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5933000 	ldr	r3, [r3]
     91c:	e3530001 	cmp	r3, #1
     920:	1a000002 	bne	930 <releaseLock+0x3c>
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e3a02000 	mov	r2, #0
     92c:	e5832000 	str	r2, [r3]
     930:	e1a00000 	nop			@ (mov r0, r0)
     934:	e28bd000 	add	sp, fp, #0
     938:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <initiateCondVar>:
     940:	e92d4800 	push	{fp, lr}
     944:	e28db004 	add	fp, sp, #4
     948:	e24dd008 	sub	sp, sp, #8
     94c:	e50b0008 	str	r0, [fp, #-8]
     950:	eb0001b8 	bl	1038 <getChannel>
     954:	e1a02000 	mov	r2, r0
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e5832000 	str	r2, [r3]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e3a02001 	mov	r2, #1
     968:	e5832004 	str	r2, [r3, #4]
     96c:	e1a00000 	nop			@ (mov r0, r0)
     970:	e24bd004 	sub	sp, fp, #4
     974:	e8bd8800 	pop	{fp, pc}

00000978 <condWait>:
     978:	e92d4800 	push	{fp, lr}
     97c:	e28db004 	add	fp, sp, #4
     980:	e24dd008 	sub	sp, sp, #8
     984:	e50b0008 	str	r0, [fp, #-8]
     988:	e50b100c 	str	r1, [fp, #-12]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933004 	ldr	r3, [r3, #4]
     994:	e3530000 	cmp	r3, #0
     998:	0a00000c 	beq	9d0 <condWait+0x58>
     99c:	e51b300c 	ldr	r3, [fp, #-12]
     9a0:	e5933004 	ldr	r3, [r3, #4]
     9a4:	e3530000 	cmp	r3, #0
     9a8:	0a000008 	beq	9d0 <condWait+0x58>
     9ac:	e51b000c 	ldr	r0, [fp, #-12]
     9b0:	ebffffcf 	bl	8f4 <releaseLock>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933000 	ldr	r3, [r3]
     9bc:	e1a00003 	mov	r0, r3
     9c0:	eb000193 	bl	1014 <sleepChan>
     9c4:	e51b000c 	ldr	r0, [fp, #-12]
     9c8:	ebffffb5 	bl	8a4 <acquireLock>
     9cc:	ea000000 	b	9d4 <condWait+0x5c>
     9d0:	e1a00000 	nop			@ (mov r0, r0)
     9d4:	e24bd004 	sub	sp, fp, #4
     9d8:	e8bd8800 	pop	{fp, pc}

000009dc <broadcast>:
     9dc:	e92d4800 	push	{fp, lr}
     9e0:	e28db004 	add	fp, sp, #4
     9e4:	e24dd008 	sub	sp, sp, #8
     9e8:	e50b0008 	str	r0, [fp, #-8]
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e5933004 	ldr	r3, [r3, #4]
     9f4:	e3530000 	cmp	r3, #0
     9f8:	0a000004 	beq	a10 <broadcast+0x34>
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e5933000 	ldr	r3, [r3]
     a04:	e1a00003 	mov	r0, r3
     a08:	eb000193 	bl	105c <sigChan>
     a0c:	ea000000 	b	a14 <broadcast+0x38>
     a10:	e1a00000 	nop			@ (mov r0, r0)
     a14:	e24bd004 	sub	sp, fp, #4
     a18:	e8bd8800 	pop	{fp, pc}

00000a1c <signal>:
     a1c:	e92d4800 	push	{fp, lr}
     a20:	e28db004 	add	fp, sp, #4
     a24:	e24dd008 	sub	sp, sp, #8
     a28:	e50b0008 	str	r0, [fp, #-8]
     a2c:	e51b3008 	ldr	r3, [fp, #-8]
     a30:	e5933004 	ldr	r3, [r3, #4]
     a34:	e3530000 	cmp	r3, #0
     a38:	0a000004 	beq	a50 <signal+0x34>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e5933000 	ldr	r3, [r3]
     a44:	e1a00003 	mov	r0, r3
     a48:	eb00018c 	bl	1080 <sigOneChan>
     a4c:	ea000000 	b	a54 <signal+0x38>
     a50:	e1a00000 	nop			@ (mov r0, r0)
     a54:	e24bd004 	sub	sp, fp, #4
     a58:	e8bd8800 	pop	{fp, pc}

00000a5c <semInit>:
     a5c:	e92d4800 	push	{fp, lr}
     a60:	e28db004 	add	fp, sp, #4
     a64:	e24dd008 	sub	sp, sp, #8
     a68:	e50b0008 	str	r0, [fp, #-8]
     a6c:	e50b100c 	str	r1, [fp, #-12]
     a70:	e51b3008 	ldr	r3, [fp, #-8]
     a74:	e2833004 	add	r3, r3, #4
     a78:	e1a00003 	mov	r0, r3
     a7c:	ebffff7a 	bl	86c <initiateLock>
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e283300c 	add	r3, r3, #12
     a88:	e1a00003 	mov	r0, r3
     a8c:	ebffffab 	bl	940 <initiateCondVar>
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e51b200c 	ldr	r2, [fp, #-12]
     a98:	e5832000 	str	r2, [r3]
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e3a02001 	mov	r2, #1
     aa4:	e5832014 	str	r2, [r3, #20]
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}

00000ab4 <semUp>:
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd008 	sub	sp, sp, #8
     ac0:	e50b0008 	str	r0, [fp, #-8]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e2833004 	add	r3, r3, #4
     acc:	e1a00003 	mov	r0, r3
     ad0:	ebffff73 	bl	8a4 <acquireLock>
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e2832001 	add	r2, r3, #1
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e5832000 	str	r2, [r3]
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e283300c 	add	r3, r3, #12
     af0:	e1a00003 	mov	r0, r3
     af4:	ebffffc8 	bl	a1c <signal>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2833004 	add	r3, r3, #4
     b00:	e1a00003 	mov	r0, r3
     b04:	ebffff7a 	bl	8f4 <releaseLock>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	e24bd004 	sub	sp, fp, #4
     b10:	e8bd8800 	pop	{fp, pc}

00000b14 <semDown>:
     b14:	e92d4800 	push	{fp, lr}
     b18:	e28db004 	add	fp, sp, #4
     b1c:	e24dd008 	sub	sp, sp, #8
     b20:	e50b0008 	str	r0, [fp, #-8]
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e2833004 	add	r3, r3, #4
     b2c:	e1a00003 	mov	r0, r3
     b30:	ebffff5b 	bl	8a4 <acquireLock>
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e5933000 	ldr	r3, [r3]
     b3c:	e2432001 	sub	r2, r3, #1
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e5832000 	str	r2, [r3]
     b48:	ea000006 	b	b68 <semDown+0x54>
     b4c:	e51b3008 	ldr	r3, [fp, #-8]
     b50:	e283200c 	add	r2, r3, #12
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e1a01003 	mov	r1, r3
     b60:	e1a00002 	mov	r0, r2
     b64:	ebffff83 	bl	978 <condWait>
     b68:	e51b3008 	ldr	r3, [fp, #-8]
     b6c:	e5933000 	ldr	r3, [r3]
     b70:	e3530000 	cmp	r3, #0
     b74:	bafffff4 	blt	b4c <semDown+0x38>
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e2833004 	add	r3, r3, #4
     b80:	e1a00003 	mov	r0, r3
     b84:	ebffff5a 	bl	8f4 <releaseLock>
     b88:	e1a00000 	nop			@ (mov r0, r0)
     b8c:	e24bd004 	sub	sp, fp, #4
     b90:	e8bd8800 	pop	{fp, pc}

00000b94 <fork>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00001 	mov	r0, #1
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <exit>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a00002 	mov	r0, #2
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <wait>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a00003 	mov	r0, #3
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <pipe>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00004 	mov	r0, #4
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <read>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00005 	mov	r0, #5
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <write>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00010 	mov	r0, #16
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <close>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00015 	mov	r0, #21
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <kill>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00006 	mov	r0, #6
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <exec>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00007 	mov	r0, #7
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <open>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a0000f 	mov	r0, #15
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <mknod>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00011 	mov	r0, #17
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <unlink>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a00012 	mov	r0, #18
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <fstat>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00008 	mov	r0, #8
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <link>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00013 	mov	r0, #19
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <mkdir>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00014 	mov	r0, #20
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <chdir>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00009 	mov	r0, #9
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <dup>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a0000a 	mov	r0, #10
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <getpid>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a0000b 	mov	r0, #11
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <sbrk>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a0000c 	mov	r0, #12
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <sleep>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a0000d 	mov	r0, #13
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <uptime>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a0000e 	mov	r0, #14
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <proclist>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00016 	mov	r0, #22
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <settickets>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a00017 	mov	r0, #23
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <srand>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a00018 	mov	r0, #24
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <getpinfo>:
     ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef8:	e1a04003 	mov	r4, r3
     efc:	e1a03002 	mov	r3, r2
     f00:	e1a02001 	mov	r2, r1
     f04:	e1a01000 	mov	r1, r0
     f08:	e3a00019 	mov	r0, #25
     f0c:	ef000000 	svc	0x00000000
     f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f14:	e12fff1e 	bx	lr

00000f18 <print_pt>:
     f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f1c:	e1a04003 	mov	r4, r3
     f20:	e1a03002 	mov	r3, r2
     f24:	e1a02001 	mov	r2, r1
     f28:	e1a01000 	mov	r1, r0
     f2c:	e3a0001f 	mov	r0, #31
     f30:	ef000000 	svc	0x00000000
     f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <thread_create>:
     f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f40:	e1a04003 	mov	r4, r3
     f44:	e1a03002 	mov	r3, r2
     f48:	e1a02001 	mov	r2, r1
     f4c:	e1a01000 	mov	r1, r0
     f50:	e3a00020 	mov	r0, #32
     f54:	ef000000 	svc	0x00000000
     f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f5c:	e12fff1e 	bx	lr

00000f60 <thread_exit>:
     f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f64:	e1a04003 	mov	r4, r3
     f68:	e1a03002 	mov	r3, r2
     f6c:	e1a02001 	mov	r2, r1
     f70:	e1a01000 	mov	r1, r0
     f74:	e3a00021 	mov	r0, #33	@ 0x21
     f78:	ef000000 	svc	0x00000000
     f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f80:	e12fff1e 	bx	lr

00000f84 <thread_join>:
     f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f88:	e1a04003 	mov	r4, r3
     f8c:	e1a03002 	mov	r3, r2
     f90:	e1a02001 	mov	r2, r1
     f94:	e1a01000 	mov	r1, r0
     f98:	e3a00022 	mov	r0, #34	@ 0x22
     f9c:	ef000000 	svc	0x00000000
     fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa4:	e12fff1e 	bx	lr

00000fa8 <waitpid>:
     fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fac:	e1a04003 	mov	r4, r3
     fb0:	e1a03002 	mov	r3, r2
     fb4:	e1a02001 	mov	r2, r1
     fb8:	e1a01000 	mov	r1, r0
     fbc:	e3a00023 	mov	r0, #35	@ 0x23
     fc0:	ef000000 	svc	0x00000000
     fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc8:	e12fff1e 	bx	lr

00000fcc <barrier_init>:
     fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd0:	e1a04003 	mov	r4, r3
     fd4:	e1a03002 	mov	r3, r2
     fd8:	e1a02001 	mov	r2, r1
     fdc:	e1a01000 	mov	r1, r0
     fe0:	e3a00024 	mov	r0, #36	@ 0x24
     fe4:	ef000000 	svc	0x00000000
     fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fec:	e12fff1e 	bx	lr

00000ff0 <barrier_check>:
     ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff4:	e1a04003 	mov	r4, r3
     ff8:	e1a03002 	mov	r3, r2
     ffc:	e1a02001 	mov	r2, r1
    1000:	e1a01000 	mov	r1, r0
    1004:	e3a00025 	mov	r0, #37	@ 0x25
    1008:	ef000000 	svc	0x00000000
    100c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1010:	e12fff1e 	bx	lr

00001014 <sleepChan>:
    1014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1018:	e1a04003 	mov	r4, r3
    101c:	e1a03002 	mov	r3, r2
    1020:	e1a02001 	mov	r2, r1
    1024:	e1a01000 	mov	r1, r0
    1028:	e3a00026 	mov	r0, #38	@ 0x26
    102c:	ef000000 	svc	0x00000000
    1030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1034:	e12fff1e 	bx	lr

00001038 <getChannel>:
    1038:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    103c:	e1a04003 	mov	r4, r3
    1040:	e1a03002 	mov	r3, r2
    1044:	e1a02001 	mov	r2, r1
    1048:	e1a01000 	mov	r1, r0
    104c:	e3a00027 	mov	r0, #39	@ 0x27
    1050:	ef000000 	svc	0x00000000
    1054:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <sigChan>:
    105c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1060:	e1a04003 	mov	r4, r3
    1064:	e1a03002 	mov	r3, r2
    1068:	e1a02001 	mov	r2, r1
    106c:	e1a01000 	mov	r1, r0
    1070:	e3a00028 	mov	r0, #40	@ 0x28
    1074:	ef000000 	svc	0x00000000
    1078:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    107c:	e12fff1e 	bx	lr

00001080 <sigOneChan>:
    1080:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1084:	e1a04003 	mov	r4, r3
    1088:	e1a03002 	mov	r3, r2
    108c:	e1a02001 	mov	r2, r1
    1090:	e1a01000 	mov	r1, r0
    1094:	e3a00029 	mov	r0, #41	@ 0x29
    1098:	ef000000 	svc	0x00000000
    109c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a0:	e12fff1e 	bx	lr

000010a4 <syscall>:
    10a4:	ef000000 	svc	0x00000000
    10a8:	e12fff1e 	bx	lr

000010ac <putc>:
    10ac:	e92d4800 	push	{fp, lr}
    10b0:	e28db004 	add	fp, sp, #4
    10b4:	e24dd008 	sub	sp, sp, #8
    10b8:	e50b0008 	str	r0, [fp, #-8]
    10bc:	e1a03001 	mov	r3, r1
    10c0:	e54b3009 	strb	r3, [fp, #-9]
    10c4:	e24b3009 	sub	r3, fp, #9
    10c8:	e3a02001 	mov	r2, #1
    10cc:	e1a01003 	mov	r1, r3
    10d0:	e51b0008 	ldr	r0, [fp, #-8]
    10d4:	ebfffedb 	bl	c48 <write>
    10d8:	e1a00000 	nop			@ (mov r0, r0)
    10dc:	e24bd004 	sub	sp, fp, #4
    10e0:	e8bd8800 	pop	{fp, pc}

000010e4 <printint>:
    10e4:	e92d4800 	push	{fp, lr}
    10e8:	e28db004 	add	fp, sp, #4
    10ec:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10f0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10f4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10f8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10fc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1100:	e3a03000 	mov	r3, #0
    1104:	e50b300c 	str	r3, [fp, #-12]
    1108:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    110c:	e3530000 	cmp	r3, #0
    1110:	0a000008 	beq	1138 <printint+0x54>
    1114:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1118:	e3530000 	cmp	r3, #0
    111c:	aa000005 	bge	1138 <printint+0x54>
    1120:	e3a03001 	mov	r3, #1
    1124:	e50b300c 	str	r3, [fp, #-12]
    1128:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    112c:	e2633000 	rsb	r3, r3, #0
    1130:	e50b3010 	str	r3, [fp, #-16]
    1134:	ea000001 	b	1140 <printint+0x5c>
    1138:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    113c:	e50b3010 	str	r3, [fp, #-16]
    1140:	e3a03000 	mov	r3, #0
    1144:	e50b3008 	str	r3, [fp, #-8]
    1148:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    114c:	e51b3010 	ldr	r3, [fp, #-16]
    1150:	e1a01002 	mov	r1, r2
    1154:	e1a00003 	mov	r0, r3
    1158:	eb0001d5 	bl	18b4 <__aeabi_uidivmod>
    115c:	e1a03001 	mov	r3, r1
    1160:	e1a01003 	mov	r1, r3
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e2832001 	add	r2, r3, #1
    116c:	e50b2008 	str	r2, [fp, #-8]
    1170:	e59f20a0 	ldr	r2, [pc, #160]	@ 1218 <printint+0x134>
    1174:	e7d22001 	ldrb	r2, [r2, r1]
    1178:	e2433004 	sub	r3, r3, #4
    117c:	e083300b 	add	r3, r3, fp
    1180:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1184:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1188:	e1a01003 	mov	r1, r3
    118c:	e51b0010 	ldr	r0, [fp, #-16]
    1190:	eb00018a 	bl	17c0 <__udivsi3>
    1194:	e1a03000 	mov	r3, r0
    1198:	e50b3010 	str	r3, [fp, #-16]
    119c:	e51b3010 	ldr	r3, [fp, #-16]
    11a0:	e3530000 	cmp	r3, #0
    11a4:	1affffe7 	bne	1148 <printint+0x64>
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e3530000 	cmp	r3, #0
    11b0:	0a00000e 	beq	11f0 <printint+0x10c>
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e2832001 	add	r2, r3, #1
    11bc:	e50b2008 	str	r2, [fp, #-8]
    11c0:	e2433004 	sub	r3, r3, #4
    11c4:	e083300b 	add	r3, r3, fp
    11c8:	e3a0202d 	mov	r2, #45	@ 0x2d
    11cc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11d0:	ea000006 	b	11f0 <printint+0x10c>
    11d4:	e24b2020 	sub	r2, fp, #32
    11d8:	e51b3008 	ldr	r3, [fp, #-8]
    11dc:	e0823003 	add	r3, r2, r3
    11e0:	e5d33000 	ldrb	r3, [r3]
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11ec:	ebffffae 	bl	10ac <putc>
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e2433001 	sub	r3, r3, #1
    11f8:	e50b3008 	str	r3, [fp, #-8]
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e3530000 	cmp	r3, #0
    1204:	aafffff2 	bge	11d4 <printint+0xf0>
    1208:	e1a00000 	nop			@ (mov r0, r0)
    120c:	e1a00000 	nop			@ (mov r0, r0)
    1210:	e24bd004 	sub	sp, fp, #4
    1214:	e8bd8800 	pop	{fp, pc}
    1218:	00001944 	.word	0x00001944

0000121c <printf>:
    121c:	e92d000e 	push	{r1, r2, r3}
    1220:	e92d4800 	push	{fp, lr}
    1224:	e28db004 	add	fp, sp, #4
    1228:	e24dd024 	sub	sp, sp, #36	@ 0x24
    122c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1230:	e3a03000 	mov	r3, #0
    1234:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1238:	e28b3008 	add	r3, fp, #8
    123c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1240:	e3a03000 	mov	r3, #0
    1244:	e50b3010 	str	r3, [fp, #-16]
    1248:	ea000074 	b	1420 <printf+0x204>
    124c:	e59b2004 	ldr	r2, [fp, #4]
    1250:	e51b3010 	ldr	r3, [fp, #-16]
    1254:	e0823003 	add	r3, r2, r3
    1258:	e5d33000 	ldrb	r3, [r3]
    125c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1260:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1264:	e3530000 	cmp	r3, #0
    1268:	1a00000b 	bne	129c <printf+0x80>
    126c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1270:	e3530025 	cmp	r3, #37	@ 0x25
    1274:	1a000002 	bne	1284 <printf+0x68>
    1278:	e3a03025 	mov	r3, #37	@ 0x25
    127c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1280:	ea000063 	b	1414 <printf+0x1f8>
    1284:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1288:	e6ef3073 	uxtb	r3, r3
    128c:	e1a01003 	mov	r1, r3
    1290:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1294:	ebffff84 	bl	10ac <putc>
    1298:	ea00005d 	b	1414 <printf+0x1f8>
    129c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12a0:	e3530025 	cmp	r3, #37	@ 0x25
    12a4:	1a00005a 	bne	1414 <printf+0x1f8>
    12a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12ac:	e3530064 	cmp	r3, #100	@ 0x64
    12b0:	1a00000a 	bne	12e0 <printf+0xc4>
    12b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e1a01003 	mov	r1, r3
    12c0:	e3a03001 	mov	r3, #1
    12c4:	e3a0200a 	mov	r2, #10
    12c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12cc:	ebffff84 	bl	10e4 <printint>
    12d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d4:	e2833004 	add	r3, r3, #4
    12d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12dc:	ea00004a 	b	140c <printf+0x1f0>
    12e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e4:	e3530078 	cmp	r3, #120	@ 0x78
    12e8:	0a000002 	beq	12f8 <printf+0xdc>
    12ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f0:	e3530070 	cmp	r3, #112	@ 0x70
    12f4:	1a00000a 	bne	1324 <printf+0x108>
    12f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e1a01003 	mov	r1, r3
    1304:	e3a03000 	mov	r3, #0
    1308:	e3a02010 	mov	r2, #16
    130c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1310:	ebffff73 	bl	10e4 <printint>
    1314:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1318:	e2833004 	add	r3, r3, #4
    131c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1320:	ea000039 	b	140c <printf+0x1f0>
    1324:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1328:	e3530073 	cmp	r3, #115	@ 0x73
    132c:	1a000018 	bne	1394 <printf+0x178>
    1330:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1334:	e5933000 	ldr	r3, [r3]
    1338:	e50b300c 	str	r3, [fp, #-12]
    133c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1340:	e2833004 	add	r3, r3, #4
    1344:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e3530000 	cmp	r3, #0
    1350:	1a00000a 	bne	1380 <printf+0x164>
    1354:	e59f30f4 	ldr	r3, [pc, #244]	@ 1450 <printf+0x234>
    1358:	e50b300c 	str	r3, [fp, #-12]
    135c:	ea000007 	b	1380 <printf+0x164>
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5d33000 	ldrb	r3, [r3]
    1368:	e1a01003 	mov	r1, r3
    136c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1370:	ebffff4d 	bl	10ac <putc>
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e2833001 	add	r3, r3, #1
    137c:	e50b300c 	str	r3, [fp, #-12]
    1380:	e51b300c 	ldr	r3, [fp, #-12]
    1384:	e5d33000 	ldrb	r3, [r3]
    1388:	e3530000 	cmp	r3, #0
    138c:	1afffff3 	bne	1360 <printf+0x144>
    1390:	ea00001d 	b	140c <printf+0x1f0>
    1394:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1398:	e3530063 	cmp	r3, #99	@ 0x63
    139c:	1a000009 	bne	13c8 <printf+0x1ac>
    13a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a4:	e5933000 	ldr	r3, [r3]
    13a8:	e6ef3073 	uxtb	r3, r3
    13ac:	e1a01003 	mov	r1, r3
    13b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b4:	ebffff3c 	bl	10ac <putc>
    13b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13bc:	e2833004 	add	r3, r3, #4
    13c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	ea000010 	b	140c <printf+0x1f0>
    13c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13cc:	e3530025 	cmp	r3, #37	@ 0x25
    13d0:	1a000005 	bne	13ec <printf+0x1d0>
    13d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d8:	e6ef3073 	uxtb	r3, r3
    13dc:	e1a01003 	mov	r1, r3
    13e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e4:	ebffff30 	bl	10ac <putc>
    13e8:	ea000007 	b	140c <printf+0x1f0>
    13ec:	e3a01025 	mov	r1, #37	@ 0x25
    13f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f4:	ebffff2c 	bl	10ac <putc>
    13f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13fc:	e6ef3073 	uxtb	r3, r3
    1400:	e1a01003 	mov	r1, r3
    1404:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1408:	ebffff27 	bl	10ac <putc>
    140c:	e3a03000 	mov	r3, #0
    1410:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1414:	e51b3010 	ldr	r3, [fp, #-16]
    1418:	e2833001 	add	r3, r3, #1
    141c:	e50b3010 	str	r3, [fp, #-16]
    1420:	e59b2004 	ldr	r2, [fp, #4]
    1424:	e51b3010 	ldr	r3, [fp, #-16]
    1428:	e0823003 	add	r3, r2, r3
    142c:	e5d33000 	ldrb	r3, [r3]
    1430:	e3530000 	cmp	r3, #0
    1434:	1affff84 	bne	124c <printf+0x30>
    1438:	e1a00000 	nop			@ (mov r0, r0)
    143c:	e1a00000 	nop			@ (mov r0, r0)
    1440:	e24bd004 	sub	sp, fp, #4
    1444:	e8bd4800 	pop	{fp, lr}
    1448:	e28dd00c 	add	sp, sp, #12
    144c:	e12fff1e 	bx	lr
    1450:	0000193c 	.word	0x0000193c

00001454 <free>:
    1454:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1458:	e28db000 	add	fp, sp, #0
    145c:	e24dd014 	sub	sp, sp, #20
    1460:	e50b0010 	str	r0, [fp, #-16]
    1464:	e51b3010 	ldr	r3, [fp, #-16]
    1468:	e2433008 	sub	r3, r3, #8
    146c:	e50b300c 	str	r3, [fp, #-12]
    1470:	e59f3154 	ldr	r3, [pc, #340]	@ 15cc <free+0x178>
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e50b3008 	str	r3, [fp, #-8]
    147c:	ea000010 	b	14c4 <free+0x70>
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e51b2008 	ldr	r2, [fp, #-8]
    148c:	e1520003 	cmp	r2, r3
    1490:	3a000008 	bcc	14b8 <free+0x64>
    1494:	e51b200c 	ldr	r2, [fp, #-12]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e1520003 	cmp	r2, r3
    14a0:	8a000010 	bhi	14e8 <free+0x94>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e51b200c 	ldr	r2, [fp, #-12]
    14b0:	e1520003 	cmp	r2, r3
    14b4:	3a00000b 	bcc	14e8 <free+0x94>
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e50b3008 	str	r3, [fp, #-8]
    14c4:	e51b200c 	ldr	r2, [fp, #-12]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e1520003 	cmp	r2, r3
    14d0:	9affffea 	bls	1480 <free+0x2c>
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e5933000 	ldr	r3, [r3]
    14dc:	e51b200c 	ldr	r2, [fp, #-12]
    14e0:	e1520003 	cmp	r2, r3
    14e4:	2affffe5 	bcs	1480 <free+0x2c>
    14e8:	e51b300c 	ldr	r3, [fp, #-12]
    14ec:	e5933004 	ldr	r3, [r3, #4]
    14f0:	e1a03183 	lsl	r3, r3, #3
    14f4:	e51b200c 	ldr	r2, [fp, #-12]
    14f8:	e0822003 	add	r2, r2, r3
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e1520003 	cmp	r2, r3
    1508:	1a00000d 	bne	1544 <free+0xf0>
    150c:	e51b300c 	ldr	r3, [fp, #-12]
    1510:	e5932004 	ldr	r2, [r3, #4]
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5933000 	ldr	r3, [r3]
    151c:	e5933004 	ldr	r3, [r3, #4]
    1520:	e0822003 	add	r2, r2, r3
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e5832004 	str	r2, [r3, #4]
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e5932000 	ldr	r2, [r3]
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5832000 	str	r2, [r3]
    1540:	ea000003 	b	1554 <free+0x100>
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e5932000 	ldr	r2, [r3]
    154c:	e51b300c 	ldr	r3, [fp, #-12]
    1550:	e5832000 	str	r2, [r3]
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5933004 	ldr	r3, [r3, #4]
    155c:	e1a03183 	lsl	r3, r3, #3
    1560:	e51b2008 	ldr	r2, [fp, #-8]
    1564:	e0823003 	add	r3, r2, r3
    1568:	e51b200c 	ldr	r2, [fp, #-12]
    156c:	e1520003 	cmp	r2, r3
    1570:	1a00000b 	bne	15a4 <free+0x150>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e5932004 	ldr	r2, [r3, #4]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e5933004 	ldr	r3, [r3, #4]
    1584:	e0822003 	add	r2, r2, r3
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e5832004 	str	r2, [r3, #4]
    1590:	e51b300c 	ldr	r3, [fp, #-12]
    1594:	e5932000 	ldr	r2, [r3]
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e5832000 	str	r2, [r3]
    15a0:	ea000002 	b	15b0 <free+0x15c>
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e51b200c 	ldr	r2, [fp, #-12]
    15ac:	e5832000 	str	r2, [r3]
    15b0:	e59f2014 	ldr	r2, [pc, #20]	@ 15cc <free+0x178>
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5823000 	str	r3, [r2]
    15bc:	e1a00000 	nop			@ (mov r0, r0)
    15c0:	e28bd000 	add	sp, fp, #0
    15c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15c8:	e12fff1e 	bx	lr
    15cc:	00001960 	.word	0x00001960

000015d0 <morecore>:
    15d0:	e92d4800 	push	{fp, lr}
    15d4:	e28db004 	add	fp, sp, #4
    15d8:	e24dd010 	sub	sp, sp, #16
    15dc:	e50b0010 	str	r0, [fp, #-16]
    15e0:	e51b3010 	ldr	r3, [fp, #-16]
    15e4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15e8:	2a000001 	bcs	15f4 <morecore+0x24>
    15ec:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15f0:	e50b3010 	str	r3, [fp, #-16]
    15f4:	e51b3010 	ldr	r3, [fp, #-16]
    15f8:	e1a03183 	lsl	r3, r3, #3
    15fc:	e1a00003 	mov	r0, r3
    1600:	ebfffe05 	bl	e1c <sbrk>
    1604:	e50b0008 	str	r0, [fp, #-8]
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e3730001 	cmn	r3, #1
    1610:	1a000001 	bne	161c <morecore+0x4c>
    1614:	e3a03000 	mov	r3, #0
    1618:	ea00000a 	b	1648 <morecore+0x78>
    161c:	e51b3008 	ldr	r3, [fp, #-8]
    1620:	e50b300c 	str	r3, [fp, #-12]
    1624:	e51b300c 	ldr	r3, [fp, #-12]
    1628:	e51b2010 	ldr	r2, [fp, #-16]
    162c:	e5832004 	str	r2, [r3, #4]
    1630:	e51b300c 	ldr	r3, [fp, #-12]
    1634:	e2833008 	add	r3, r3, #8
    1638:	e1a00003 	mov	r0, r3
    163c:	ebffff84 	bl	1454 <free>
    1640:	e59f300c 	ldr	r3, [pc, #12]	@ 1654 <morecore+0x84>
    1644:	e5933000 	ldr	r3, [r3]
    1648:	e1a00003 	mov	r0, r3
    164c:	e24bd004 	sub	sp, fp, #4
    1650:	e8bd8800 	pop	{fp, pc}
    1654:	00001960 	.word	0x00001960

00001658 <malloc>:
    1658:	e92d4800 	push	{fp, lr}
    165c:	e28db004 	add	fp, sp, #4
    1660:	e24dd018 	sub	sp, sp, #24
    1664:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1668:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    166c:	e2833007 	add	r3, r3, #7
    1670:	e1a031a3 	lsr	r3, r3, #3
    1674:	e2833001 	add	r3, r3, #1
    1678:	e50b3010 	str	r3, [fp, #-16]
    167c:	e59f3134 	ldr	r3, [pc, #308]	@ 17b8 <malloc+0x160>
    1680:	e5933000 	ldr	r3, [r3]
    1684:	e50b300c 	str	r3, [fp, #-12]
    1688:	e51b300c 	ldr	r3, [fp, #-12]
    168c:	e3530000 	cmp	r3, #0
    1690:	1a00000b 	bne	16c4 <malloc+0x6c>
    1694:	e59f3120 	ldr	r3, [pc, #288]	@ 17bc <malloc+0x164>
    1698:	e50b300c 	str	r3, [fp, #-12]
    169c:	e59f2114 	ldr	r2, [pc, #276]	@ 17b8 <malloc+0x160>
    16a0:	e51b300c 	ldr	r3, [fp, #-12]
    16a4:	e5823000 	str	r3, [r2]
    16a8:	e59f3108 	ldr	r3, [pc, #264]	@ 17b8 <malloc+0x160>
    16ac:	e5933000 	ldr	r3, [r3]
    16b0:	e59f2104 	ldr	r2, [pc, #260]	@ 17bc <malloc+0x164>
    16b4:	e5823000 	str	r3, [r2]
    16b8:	e59f30fc 	ldr	r3, [pc, #252]	@ 17bc <malloc+0x164>
    16bc:	e3a02000 	mov	r2, #0
    16c0:	e5832004 	str	r2, [r3, #4]
    16c4:	e51b300c 	ldr	r3, [fp, #-12]
    16c8:	e5933000 	ldr	r3, [r3]
    16cc:	e50b3008 	str	r3, [fp, #-8]
    16d0:	e51b3008 	ldr	r3, [fp, #-8]
    16d4:	e5933004 	ldr	r3, [r3, #4]
    16d8:	e51b2010 	ldr	r2, [fp, #-16]
    16dc:	e1520003 	cmp	r2, r3
    16e0:	8a00001e 	bhi	1760 <malloc+0x108>
    16e4:	e51b3008 	ldr	r3, [fp, #-8]
    16e8:	e5933004 	ldr	r3, [r3, #4]
    16ec:	e51b2010 	ldr	r2, [fp, #-16]
    16f0:	e1520003 	cmp	r2, r3
    16f4:	1a000004 	bne	170c <malloc+0xb4>
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e5932000 	ldr	r2, [r3]
    1700:	e51b300c 	ldr	r3, [fp, #-12]
    1704:	e5832000 	str	r2, [r3]
    1708:	ea00000e 	b	1748 <malloc+0xf0>
    170c:	e51b3008 	ldr	r3, [fp, #-8]
    1710:	e5932004 	ldr	r2, [r3, #4]
    1714:	e51b3010 	ldr	r3, [fp, #-16]
    1718:	e0422003 	sub	r2, r2, r3
    171c:	e51b3008 	ldr	r3, [fp, #-8]
    1720:	e5832004 	str	r2, [r3, #4]
    1724:	e51b3008 	ldr	r3, [fp, #-8]
    1728:	e5933004 	ldr	r3, [r3, #4]
    172c:	e1a03183 	lsl	r3, r3, #3
    1730:	e51b2008 	ldr	r2, [fp, #-8]
    1734:	e0823003 	add	r3, r2, r3
    1738:	e50b3008 	str	r3, [fp, #-8]
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e51b2010 	ldr	r2, [fp, #-16]
    1744:	e5832004 	str	r2, [r3, #4]
    1748:	e59f2068 	ldr	r2, [pc, #104]	@ 17b8 <malloc+0x160>
    174c:	e51b300c 	ldr	r3, [fp, #-12]
    1750:	e5823000 	str	r3, [r2]
    1754:	e51b3008 	ldr	r3, [fp, #-8]
    1758:	e2833008 	add	r3, r3, #8
    175c:	ea000012 	b	17ac <malloc+0x154>
    1760:	e59f3050 	ldr	r3, [pc, #80]	@ 17b8 <malloc+0x160>
    1764:	e5933000 	ldr	r3, [r3]
    1768:	e51b2008 	ldr	r2, [fp, #-8]
    176c:	e1520003 	cmp	r2, r3
    1770:	1a000007 	bne	1794 <malloc+0x13c>
    1774:	e51b0010 	ldr	r0, [fp, #-16]
    1778:	ebffff94 	bl	15d0 <morecore>
    177c:	e50b0008 	str	r0, [fp, #-8]
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e3530000 	cmp	r3, #0
    1788:	1a000001 	bne	1794 <malloc+0x13c>
    178c:	e3a03000 	mov	r3, #0
    1790:	ea000005 	b	17ac <malloc+0x154>
    1794:	e51b3008 	ldr	r3, [fp, #-8]
    1798:	e50b300c 	str	r3, [fp, #-12]
    179c:	e51b3008 	ldr	r3, [fp, #-8]
    17a0:	e5933000 	ldr	r3, [r3]
    17a4:	e50b3008 	str	r3, [fp, #-8]
    17a8:	eaffffc8 	b	16d0 <malloc+0x78>
    17ac:	e1a00003 	mov	r0, r3
    17b0:	e24bd004 	sub	sp, fp, #4
    17b4:	e8bd8800 	pop	{fp, pc}
    17b8:	00001960 	.word	0x00001960
    17bc:	00001958 	.word	0x00001958

000017c0 <__udivsi3>:
    17c0:	e2512001 	subs	r2, r1, #1
    17c4:	012fff1e 	bxeq	lr
    17c8:	3a000036 	bcc	18a8 <__udivsi3+0xe8>
    17cc:	e1500001 	cmp	r0, r1
    17d0:	9a000022 	bls	1860 <__udivsi3+0xa0>
    17d4:	e1110002 	tst	r1, r2
    17d8:	0a000023 	beq	186c <__udivsi3+0xac>
    17dc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17e0:	01a01181 	lsleq	r1, r1, #3
    17e4:	03a03008 	moveq	r3, #8
    17e8:	13a03001 	movne	r3, #1
    17ec:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17f0:	31510000 	cmpcc	r1, r0
    17f4:	31a01201 	lslcc	r1, r1, #4
    17f8:	31a03203 	lslcc	r3, r3, #4
    17fc:	3afffffa 	bcc	17ec <__udivsi3+0x2c>
    1800:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1804:	31510000 	cmpcc	r1, r0
    1808:	31a01081 	lslcc	r1, r1, #1
    180c:	31a03083 	lslcc	r3, r3, #1
    1810:	3afffffa 	bcc	1800 <__udivsi3+0x40>
    1814:	e3a02000 	mov	r2, #0
    1818:	e1500001 	cmp	r0, r1
    181c:	20400001 	subcs	r0, r0, r1
    1820:	21822003 	orrcs	r2, r2, r3
    1824:	e15000a1 	cmp	r0, r1, lsr #1
    1828:	204000a1 	subcs	r0, r0, r1, lsr #1
    182c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1830:	e1500121 	cmp	r0, r1, lsr #2
    1834:	20400121 	subcs	r0, r0, r1, lsr #2
    1838:	21822123 	orrcs	r2, r2, r3, lsr #2
    183c:	e15001a1 	cmp	r0, r1, lsr #3
    1840:	204001a1 	subcs	r0, r0, r1, lsr #3
    1844:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1848:	e3500000 	cmp	r0, #0
    184c:	11b03223 	lsrsne	r3, r3, #4
    1850:	11a01221 	lsrne	r1, r1, #4
    1854:	1affffef 	bne	1818 <__udivsi3+0x58>
    1858:	e1a00002 	mov	r0, r2
    185c:	e12fff1e 	bx	lr
    1860:	03a00001 	moveq	r0, #1
    1864:	13a00000 	movne	r0, #0
    1868:	e12fff1e 	bx	lr
    186c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1870:	21a01821 	lsrcs	r1, r1, #16
    1874:	23a02010 	movcs	r2, #16
    1878:	33a02000 	movcc	r2, #0
    187c:	e3510c01 	cmp	r1, #256	@ 0x100
    1880:	21a01421 	lsrcs	r1, r1, #8
    1884:	22822008 	addcs	r2, r2, #8
    1888:	e3510010 	cmp	r1, #16
    188c:	21a01221 	lsrcs	r1, r1, #4
    1890:	22822004 	addcs	r2, r2, #4
    1894:	e3510004 	cmp	r1, #4
    1898:	82822003 	addhi	r2, r2, #3
    189c:	908220a1 	addls	r2, r2, r1, lsr #1
    18a0:	e1a00230 	lsr	r0, r0, r2
    18a4:	e12fff1e 	bx	lr
    18a8:	e3500000 	cmp	r0, #0
    18ac:	13e00000 	mvnne	r0, #0
    18b0:	ea000007 	b	18d4 <__aeabi_idiv0>

000018b4 <__aeabi_uidivmod>:
    18b4:	e3510000 	cmp	r1, #0
    18b8:	0afffffa 	beq	18a8 <__udivsi3+0xe8>
    18bc:	e92d4003 	push	{r0, r1, lr}
    18c0:	ebffffbe 	bl	17c0 <__udivsi3>
    18c4:	e8bd4006 	pop	{r1, r2, lr}
    18c8:	e0030092 	mul	r3, r2, r0
    18cc:	e0411003 	sub	r1, r1, r3
    18d0:	e12fff1e 	bx	lr

000018d4 <__aeabi_idiv0>:
    18d4:	e12fff1e 	bx	lr
