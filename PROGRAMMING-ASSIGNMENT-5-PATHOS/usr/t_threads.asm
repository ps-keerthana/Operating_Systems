
_t_threads:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e5933000 	ldr	r3, [r3]
      18:	e1a02003 	mov	r2, r3
      1c:	e59f1034 	ldr	r1, [pc, #52]	@ 58 <thread1+0x58>
      20:	e3a00001 	mov	r0, #1
      24:	eb000482 	bl	1234 <printf>
      28:	e51b3010 	ldr	r3, [fp, #-16]
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e5933000 	ldr	r3, [r3]
      38:	e2832001 	add	r2, r3, #1
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e5832000 	str	r2, [r3]
      44:	eb0003c2 	bl	f54 <thread_exit>
      48:	e3a03000 	mov	r3, #0
      4c:	e1a00003 	mov	r0, r3
      50:	e24bd004 	sub	sp, fp, #4
      54:	e8bd8800 	pop	{fp, pc}
      58:	000018f0 	.word	0x000018f0

0000005c <thread2>:
      5c:	e92d4800 	push	{fp, lr}
      60:	e28db004 	add	fp, sp, #4
      64:	e24dd008 	sub	sp, sp, #8
      68:	e50b0008 	str	r0, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e5933000 	ldr	r3, [r3]
      74:	e1a02003 	mov	r2, r3
      78:	e59f1018 	ldr	r1, [pc, #24]	@ 98 <thread2+0x3c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb00046b 	bl	1234 <printf>
      84:	eb0003b2 	bl	f54 <thread_exit>
      88:	e3a03000 	mov	r3, #0
      8c:	e1a00003 	mov	r0, r3
      90:	e24bd004 	sub	sp, fp, #4
      94:	e8bd8800 	pop	{fp, pc}
      98:	00001908 	.word	0x00001908

0000009c <main>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd010 	sub	sp, sp, #16
      a8:	e59f1064 	ldr	r1, [pc, #100]	@ 114 <main+0x78>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00045f 	bl	1234 <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3008 	str	r3, [fp, #-8]
      bc:	e24b2008 	sub	r2, fp, #8
      c0:	e24b300c 	sub	r3, fp, #12
      c4:	e59f104c 	ldr	r1, [pc, #76]	@ 118 <main+0x7c>
      c8:	e1a00003 	mov	r0, r3
      cc:	eb000397 	bl	f30 <thread_create>
      d0:	e24b2008 	sub	r2, fp, #8
      d4:	e24b3010 	sub	r3, fp, #16
      d8:	e59f103c 	ldr	r1, [pc, #60]	@ 11c <main+0x80>
      dc:	e1a00003 	mov	r0, r3
      e0:	eb000392 	bl	f30 <thread_create>
      e4:	e51b3010 	ldr	r3, [fp, #-16]
      e8:	e1a00003 	mov	r0, r3
      ec:	eb0003a1 	bl	f78 <thread_join>
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e1a00003 	mov	r0, r3
      f8:	eb00039e 	bl	f78 <thread_join>
      fc:	e51b3008 	ldr	r3, [fp, #-8]
     100:	e1a02003 	mov	r2, r3
     104:	e59f1014 	ldr	r1, [pc, #20]	@ 120 <main+0x84>
     108:	e3a00001 	mov	r0, #1
     10c:	eb000448 	bl	1234 <printf>
     110:	eb0002a5 	bl	bac <exit>
     114:	00001920 	.word	0x00001920
     118:	00000000 	.word	0x00000000
     11c:	0000005c 	.word	0x0000005c
     120:	00001930 	.word	0x00001930

00000124 <pg_pte>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dd008 	sub	sp, sp, #8
     130:	e50b0008 	str	r0, [fp, #-8]
     134:	e51b1008 	ldr	r1, [fp, #-8]
     138:	e3a0001a 	mov	r0, #26
     13c:	eb0003de 	bl	10bc <syscall>
     140:	e1a03000 	mov	r3, r0
     144:	e1a00003 	mov	r0, r3
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}

00000150 <pg_pa>:
     150:	e92d4800 	push	{fp, lr}
     154:	e28db004 	add	fp, sp, #4
     158:	e24dd008 	sub	sp, sp, #8
     15c:	e50b0008 	str	r0, [fp, #-8]
     160:	e51b1008 	ldr	r1, [fp, #-8]
     164:	e3a0001b 	mov	r0, #27
     168:	eb0003d3 	bl	10bc <syscall>
     16c:	e1a03000 	mov	r3, r0
     170:	e1a00003 	mov	r0, r3
     174:	e24bd004 	sub	sp, fp, #4
     178:	e8bd8800 	pop	{fp, pc}

0000017c <pg_flags>:
     17c:	e92d4800 	push	{fp, lr}
     180:	e28db004 	add	fp, sp, #4
     184:	e24dd008 	sub	sp, sp, #8
     188:	e50b0008 	str	r0, [fp, #-8]
     18c:	e51b1008 	ldr	r1, [fp, #-8]
     190:	e3a0001c 	mov	r0, #28
     194:	eb0003c8 	bl	10bc <syscall>
     198:	e1a03000 	mov	r3, r0
     19c:	e1a00003 	mov	r0, r3
     1a0:	e24bd004 	sub	sp, fp, #4
     1a4:	e8bd8800 	pop	{fp, pc}

000001a8 <kpt>:
     1a8:	e92d4800 	push	{fp, lr}
     1ac:	e28db004 	add	fp, sp, #4
     1b0:	e3a0001d 	mov	r0, #29
     1b4:	eb0003c0 	bl	10bc <syscall>
     1b8:	e1a03000 	mov	r3, r0
     1bc:	e1a00003 	mov	r0, r3
     1c0:	e8bd8800 	pop	{fp, pc}

000001c4 <ugetpid>:
     1c4:	e92d4800 	push	{fp, lr}
     1c8:	e28db004 	add	fp, sp, #4
     1cc:	e3a0001e 	mov	r0, #30
     1d0:	eb0003b9 	bl	10bc <syscall>
     1d4:	e1a03000 	mov	r3, r0
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e8bd8800 	pop	{fp, pc}

000001e0 <strcpy>:
     1e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e4:	e28db000 	add	fp, sp, #0
     1e8:	e24dd014 	sub	sp, sp, #20
     1ec:	e50b0010 	str	r0, [fp, #-16]
     1f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1f4:	e51b3010 	ldr	r3, [fp, #-16]
     1f8:	e50b3008 	str	r3, [fp, #-8]
     1fc:	e1a00000 	nop			@ (mov r0, r0)
     200:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     204:	e2823001 	add	r3, r2, #1
     208:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     20c:	e51b3010 	ldr	r3, [fp, #-16]
     210:	e2831001 	add	r1, r3, #1
     214:	e50b1010 	str	r1, [fp, #-16]
     218:	e5d22000 	ldrb	r2, [r2]
     21c:	e5c32000 	strb	r2, [r3]
     220:	e5d33000 	ldrb	r3, [r3]
     224:	e3530000 	cmp	r3, #0
     228:	1afffff4 	bne	200 <strcpy+0x20>
     22c:	e51b3008 	ldr	r3, [fp, #-8]
     230:	e1a00003 	mov	r0, r3
     234:	e28bd000 	add	sp, fp, #0
     238:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     23c:	e12fff1e 	bx	lr

00000240 <strcmp>:
     240:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     244:	e28db000 	add	fp, sp, #0
     248:	e24dd00c 	sub	sp, sp, #12
     24c:	e50b0008 	str	r0, [fp, #-8]
     250:	e50b100c 	str	r1, [fp, #-12]
     254:	ea000005 	b	270 <strcmp+0x30>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e2833001 	add	r3, r3, #1
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e2833001 	add	r3, r3, #1
     26c:	e50b300c 	str	r3, [fp, #-12]
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e3530000 	cmp	r3, #0
     27c:	0a000005 	beq	298 <strcmp+0x58>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e5d32000 	ldrb	r2, [r3]
     288:	e51b300c 	ldr	r3, [fp, #-12]
     28c:	e5d33000 	ldrb	r3, [r3]
     290:	e1520003 	cmp	r2, r3
     294:	0affffef 	beq	258 <strcmp+0x18>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e1a02003 	mov	r2, r3
     2a4:	e51b300c 	ldr	r3, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e0423003 	sub	r3, r2, r3
     2b0:	e1a00003 	mov	r0, r3
     2b4:	e28bd000 	add	sp, fp, #0
     2b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2bc:	e12fff1e 	bx	lr

000002c0 <strlen>:
     2c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c4:	e28db000 	add	fp, sp, #0
     2c8:	e24dd014 	sub	sp, sp, #20
     2cc:	e50b0010 	str	r0, [fp, #-16]
     2d0:	e3a03000 	mov	r3, #0
     2d4:	e50b3008 	str	r3, [fp, #-8]
     2d8:	ea000002 	b	2e8 <strlen+0x28>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e2833001 	add	r3, r3, #1
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e51b2010 	ldr	r2, [fp, #-16]
     2f0:	e0823003 	add	r3, r2, r3
     2f4:	e5d33000 	ldrb	r3, [r3]
     2f8:	e3530000 	cmp	r3, #0
     2fc:	1afffff6 	bne	2dc <strlen+0x1c>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e1a00003 	mov	r0, r3
     308:	e28bd000 	add	sp, fp, #0
     30c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     310:	e12fff1e 	bx	lr

00000314 <memset>:
     314:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     318:	e28db000 	add	fp, sp, #0
     31c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     320:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     324:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     328:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     32c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     338:	e54b300d 	strb	r3, [fp, #-13]
     33c:	e55b200d 	ldrb	r2, [fp, #-13]
     340:	e1a03002 	mov	r3, r2
     344:	e1a03403 	lsl	r3, r3, #8
     348:	e0833002 	add	r3, r3, r2
     34c:	e1a03803 	lsl	r3, r3, #16
     350:	e1a02003 	mov	r2, r3
     354:	e55b300d 	ldrb	r3, [fp, #-13]
     358:	e1a03403 	lsl	r3, r3, #8
     35c:	e1822003 	orr	r2, r2, r3
     360:	e55b300d 	ldrb	r3, [fp, #-13]
     364:	e1823003 	orr	r3, r2, r3
     368:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     36c:	ea000008 	b	394 <memset+0x80>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e55b200d 	ldrb	r2, [fp, #-13]
     378:	e5c32000 	strb	r2, [r3]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e2433001 	sub	r3, r3, #1
     384:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e2833001 	add	r3, r3, #1
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     398:	e3530000 	cmp	r3, #0
     39c:	0a000003 	beq	3b0 <memset+0x9c>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2033003 	and	r3, r3, #3
     3a8:	e3530000 	cmp	r3, #0
     3ac:	1affffef 	bne	370 <memset+0x5c>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e50b300c 	str	r3, [fp, #-12]
     3b8:	ea000008 	b	3e0 <memset+0xcc>
     3bc:	e51b300c 	ldr	r3, [fp, #-12]
     3c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3c4:	e5832000 	str	r2, [r3]
     3c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3cc:	e2433004 	sub	r3, r3, #4
     3d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3d4:	e51b300c 	ldr	r3, [fp, #-12]
     3d8:	e2833004 	add	r3, r3, #4
     3dc:	e50b300c 	str	r3, [fp, #-12]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e3530003 	cmp	r3, #3
     3e8:	8afffff3 	bhi	3bc <memset+0xa8>
     3ec:	e51b300c 	ldr	r3, [fp, #-12]
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	ea000008 	b	41c <memset+0x108>
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e55b200d 	ldrb	r2, [fp, #-13]
     400:	e5c32000 	strb	r2, [r3]
     404:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     408:	e2433001 	sub	r3, r3, #1
     40c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     420:	e3530000 	cmp	r3, #0
     424:	1afffff3 	bne	3f8 <memset+0xe4>
     428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     42c:	e1a00003 	mov	r0, r3
     430:	e28bd000 	add	sp, fp, #0
     434:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     438:	e12fff1e 	bx	lr

0000043c <strchr>:
     43c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     440:	e28db000 	add	fp, sp, #0
     444:	e24dd00c 	sub	sp, sp, #12
     448:	e50b0008 	str	r0, [fp, #-8]
     44c:	e1a03001 	mov	r3, r1
     450:	e54b3009 	strb	r3, [fp, #-9]
     454:	ea000009 	b	480 <strchr+0x44>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e55b2009 	ldrb	r2, [fp, #-9]
     464:	e1520003 	cmp	r2, r3
     468:	1a000001 	bne	474 <strchr+0x38>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	ea000007 	b	494 <strchr+0x58>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e5d33000 	ldrb	r3, [r3]
     488:	e3530000 	cmp	r3, #0
     48c:	1afffff1 	bne	458 <strchr+0x1c>
     490:	e3a03000 	mov	r3, #0
     494:	e1a00003 	mov	r0, r3
     498:	e28bd000 	add	sp, fp, #0
     49c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4a0:	e12fff1e 	bx	lr

000004a4 <gets>:
     4a4:	e92d4800 	push	{fp, lr}
     4a8:	e28db004 	add	fp, sp, #4
     4ac:	e24dd018 	sub	sp, sp, #24
     4b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4b8:	e3a03000 	mov	r3, #0
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	ea000016 	b	520 <gets+0x7c>
     4c4:	e24b300d 	sub	r3, fp, #13
     4c8:	e3a02001 	mov	r2, #1
     4cc:	e1a01003 	mov	r1, r3
     4d0:	e3a00000 	mov	r0, #0
     4d4:	eb0001cf 	bl	c18 <read>
     4d8:	e50b000c 	str	r0, [fp, #-12]
     4dc:	e51b300c 	ldr	r3, [fp, #-12]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	da000013 	ble	538 <gets+0x94>
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e2832001 	add	r2, r3, #1
     4f0:	e50b2008 	str	r2, [fp, #-8]
     4f4:	e1a02003 	mov	r2, r3
     4f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4fc:	e0833002 	add	r3, r3, r2
     500:	e55b200d 	ldrb	r2, [fp, #-13]
     504:	e5c32000 	strb	r2, [r3]
     508:	e55b300d 	ldrb	r3, [fp, #-13]
     50c:	e353000a 	cmp	r3, #10
     510:	0a000009 	beq	53c <gets+0x98>
     514:	e55b300d 	ldrb	r3, [fp, #-13]
     518:	e353000d 	cmp	r3, #13
     51c:	0a000006 	beq	53c <gets+0x98>
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e2833001 	add	r3, r3, #1
     528:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     52c:	e1520003 	cmp	r2, r3
     530:	caffffe3 	bgt	4c4 <gets+0x20>
     534:	ea000000 	b	53c <gets+0x98>
     538:	e1a00000 	nop			@ (mov r0, r0)
     53c:	e51b3008 	ldr	r3, [fp, #-8]
     540:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     544:	e0823003 	add	r3, r2, r3
     548:	e3a02000 	mov	r2, #0
     54c:	e5c32000 	strb	r2, [r3]
     550:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     554:	e1a00003 	mov	r0, r3
     558:	e24bd004 	sub	sp, fp, #4
     55c:	e8bd8800 	pop	{fp, pc}

00000560 <stat>:
     560:	e92d4800 	push	{fp, lr}
     564:	e28db004 	add	fp, sp, #4
     568:	e24dd010 	sub	sp, sp, #16
     56c:	e50b0010 	str	r0, [fp, #-16]
     570:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     574:	e3a01000 	mov	r1, #0
     578:	e51b0010 	ldr	r0, [fp, #-16]
     57c:	eb0001d2 	bl	ccc <open>
     580:	e50b0008 	str	r0, [fp, #-8]
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e3530000 	cmp	r3, #0
     58c:	aa000001 	bge	598 <stat+0x38>
     590:	e3e03000 	mvn	r3, #0
     594:	ea000006 	b	5b4 <stat+0x54>
     598:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     59c:	e51b0008 	ldr	r0, [fp, #-8]
     5a0:	eb0001e4 	bl	d38 <fstat>
     5a4:	e50b000c 	str	r0, [fp, #-12]
     5a8:	e51b0008 	ldr	r0, [fp, #-8]
     5ac:	eb0001ab 	bl	c60 <close>
     5b0:	e51b300c 	ldr	r3, [fp, #-12]
     5b4:	e1a00003 	mov	r0, r3
     5b8:	e24bd004 	sub	sp, fp, #4
     5bc:	e8bd8800 	pop	{fp, pc}

000005c0 <atoi>:
     5c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5c4:	e28db000 	add	fp, sp, #0
     5c8:	e24dd014 	sub	sp, sp, #20
     5cc:	e50b0010 	str	r0, [fp, #-16]
     5d0:	e3a03000 	mov	r3, #0
     5d4:	e50b3008 	str	r3, [fp, #-8]
     5d8:	ea00000c 	b	610 <atoi+0x50>
     5dc:	e51b2008 	ldr	r2, [fp, #-8]
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a03103 	lsl	r3, r3, #2
     5e8:	e0833002 	add	r3, r3, r2
     5ec:	e1a03083 	lsl	r3, r3, #1
     5f0:	e1a01003 	mov	r1, r3
     5f4:	e51b3010 	ldr	r3, [fp, #-16]
     5f8:	e2832001 	add	r2, r3, #1
     5fc:	e50b2010 	str	r2, [fp, #-16]
     600:	e5d33000 	ldrb	r3, [r3]
     604:	e0813003 	add	r3, r1, r3
     608:	e2433030 	sub	r3, r3, #48	@ 0x30
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e5d33000 	ldrb	r3, [r3]
     618:	e353002f 	cmp	r3, #47	@ 0x2f
     61c:	9a000003 	bls	630 <atoi+0x70>
     620:	e51b3010 	ldr	r3, [fp, #-16]
     624:	e5d33000 	ldrb	r3, [r3]
     628:	e3530039 	cmp	r3, #57	@ 0x39
     62c:	9affffea 	bls	5dc <atoi+0x1c>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e1a00003 	mov	r0, r3
     638:	e28bd000 	add	sp, fp, #0
     63c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <memmove>:
     644:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     648:	e28db000 	add	fp, sp, #0
     64c:	e24dd01c 	sub	sp, sp, #28
     650:	e50b0010 	str	r0, [fp, #-16]
     654:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     658:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     65c:	e51b3010 	ldr	r3, [fp, #-16]
     660:	e50b3008 	str	r3, [fp, #-8]
     664:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     668:	e50b300c 	str	r3, [fp, #-12]
     66c:	ea000007 	b	690 <memmove+0x4c>
     670:	e51b200c 	ldr	r2, [fp, #-12]
     674:	e2823001 	add	r3, r2, #1
     678:	e50b300c 	str	r3, [fp, #-12]
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2831001 	add	r1, r3, #1
     684:	e50b1008 	str	r1, [fp, #-8]
     688:	e5d22000 	ldrb	r2, [r2]
     68c:	e5c32000 	strb	r2, [r3]
     690:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     694:	e2432001 	sub	r2, r3, #1
     698:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     69c:	e3530000 	cmp	r3, #0
     6a0:	cafffff2 	bgt	670 <memmove+0x2c>
     6a4:	e51b3010 	ldr	r3, [fp, #-16]
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e28bd000 	add	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <strncmp>:
     6b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6bc:	e28db000 	add	fp, sp, #0
     6c0:	e24dd014 	sub	sp, sp, #20
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	e50b100c 	str	r1, [fp, #-12]
     6cc:	e50b2010 	str	r2, [fp, #-16]
     6d0:	ea000008 	b	6f8 <strncmp+0x40>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e2833001 	add	r3, r3, #1
     6dc:	e50b3008 	str	r3, [fp, #-8]
     6e0:	e51b300c 	ldr	r3, [fp, #-12]
     6e4:	e2833001 	add	r3, r3, #1
     6e8:	e50b300c 	str	r3, [fp, #-12]
     6ec:	e51b3010 	ldr	r3, [fp, #-16]
     6f0:	e2433001 	sub	r3, r3, #1
     6f4:	e50b3010 	str	r3, [fp, #-16]
     6f8:	e51b3010 	ldr	r3, [fp, #-16]
     6fc:	e3530000 	cmp	r3, #0
     700:	da00000d 	ble	73c <strncmp+0x84>
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e5d33000 	ldrb	r3, [r3]
     70c:	e3530000 	cmp	r3, #0
     710:	0a000009 	beq	73c <strncmp+0x84>
     714:	e51b300c 	ldr	r3, [fp, #-12]
     718:	e5d33000 	ldrb	r3, [r3]
     71c:	e3530000 	cmp	r3, #0
     720:	0a000005 	beq	73c <strncmp+0x84>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5d32000 	ldrb	r2, [r3]
     72c:	e51b300c 	ldr	r3, [fp, #-12]
     730:	e5d33000 	ldrb	r3, [r3]
     734:	e1520003 	cmp	r2, r3
     738:	0affffe5 	beq	6d4 <strncmp+0x1c>
     73c:	e51b3010 	ldr	r3, [fp, #-16]
     740:	e3530000 	cmp	r3, #0
     744:	1a000001 	bne	750 <strncmp+0x98>
     748:	e3a03000 	mov	r3, #0
     74c:	ea000005 	b	768 <strncmp+0xb0>
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e5d33000 	ldrb	r3, [r3]
     758:	e1a02003 	mov	r2, r3
     75c:	e51b300c 	ldr	r3, [fp, #-12]
     760:	e5d33000 	ldrb	r3, [r3]
     764:	e0423003 	sub	r3, r2, r3
     768:	e1a00003 	mov	r0, r3
     76c:	e28bd000 	add	sp, fp, #0
     770:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <strncpy>:
     778:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     77c:	e28db000 	add	fp, sp, #0
     780:	e24dd01c 	sub	sp, sp, #28
     784:	e50b0010 	str	r0, [fp, #-16]
     788:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     78c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     790:	e51b3010 	ldr	r3, [fp, #-16]
     794:	e50b3008 	str	r3, [fp, #-8]
     798:	ea00000a 	b	7c8 <strncpy+0x50>
     79c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7a0:	e2823001 	add	r3, r2, #1
     7a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e2831001 	add	r1, r3, #1
     7b0:	e50b1008 	str	r1, [fp, #-8]
     7b4:	e5d22000 	ldrb	r2, [r2]
     7b8:	e5c32000 	strb	r2, [r3]
     7bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7c0:	e2433001 	sub	r3, r3, #1
     7c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7cc:	e3530000 	cmp	r3, #0
     7d0:	da00000c 	ble	808 <strncpy+0x90>
     7d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7d8:	e5d33000 	ldrb	r3, [r3]
     7dc:	e3530000 	cmp	r3, #0
     7e0:	1affffed 	bne	79c <strncpy+0x24>
     7e4:	ea000007 	b	808 <strncpy+0x90>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e2832001 	add	r2, r3, #1
     7f0:	e50b2008 	str	r2, [fp, #-8]
     7f4:	e3a02000 	mov	r2, #0
     7f8:	e5c32000 	strb	r2, [r3]
     7fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     800:	e2433001 	sub	r3, r3, #1
     804:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     808:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     80c:	e3530000 	cmp	r3, #0
     810:	cafffff4 	bgt	7e8 <strncpy+0x70>
     814:	e51b3010 	ldr	r3, [fp, #-16]
     818:	e1a00003 	mov	r0, r3
     81c:	e28bd000 	add	sp, fp, #0
     820:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <xchg>:
     828:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     82c:	e28db000 	add	fp, sp, #0
     830:	e24dd014 	sub	sp, sp, #20
     834:	e50b0010 	str	r0, [fp, #-16]
     838:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     83c:	e51b2010 	ldr	r2, [fp, #-16]
     840:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     844:	e1023091 	swp	r3, r1, [r2]
     848:	e50b3008 	str	r3, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e1a00003 	mov	r0, r3
     854:	e28bd000 	add	sp, fp, #0
     858:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <initiateLock>:
     860:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     864:	e28db000 	add	fp, sp, #0
     868:	e24dd00c 	sub	sp, sp, #12
     86c:	e50b0008 	str	r0, [fp, #-8]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e3a02000 	mov	r2, #0
     878:	e5832000 	str	r2, [r3]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e3a02001 	mov	r2, #1
     884:	e5832004 	str	r2, [r3, #4]
     888:	e1a00000 	nop			@ (mov r0, r0)
     88c:	e28bd000 	add	sp, fp, #0
     890:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <acquireLock>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd008 	sub	sp, sp, #8
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933004 	ldr	r3, [r3, #4]
     8b0:	e3530000 	cmp	r3, #0
     8b4:	0a000008 	beq	8dc <acquireLock+0x44>
     8b8:	e1a00000 	nop			@ (mov r0, r0)
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e3a01001 	mov	r1, #1
     8c4:	e1a00003 	mov	r0, r3
     8c8:	ebffffd6 	bl	828 <xchg>
     8cc:	e1a03000 	mov	r3, r0
     8d0:	e3530000 	cmp	r3, #0
     8d4:	1afffff8 	bne	8bc <acquireLock+0x24>
     8d8:	ea000000 	b	8e0 <acquireLock+0x48>
     8dc:	e1a00000 	nop			@ (mov r0, r0)
     8e0:	e24bd004 	sub	sp, fp, #4
     8e4:	e8bd8800 	pop	{fp, pc}

000008e8 <releaseLock>:
     8e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8ec:	e28db000 	add	fp, sp, #0
     8f0:	e24dd00c 	sub	sp, sp, #12
     8f4:	e50b0008 	str	r0, [fp, #-8]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e5933004 	ldr	r3, [r3, #4]
     900:	e3530000 	cmp	r3, #0
     904:	0a000006 	beq	924 <releaseLock+0x3c>
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e5933000 	ldr	r3, [r3]
     910:	e3530001 	cmp	r3, #1
     914:	1a000002 	bne	924 <releaseLock+0x3c>
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e3a02000 	mov	r2, #0
     920:	e5832000 	str	r2, [r3]
     924:	e1a00000 	nop			@ (mov r0, r0)
     928:	e28bd000 	add	sp, fp, #0
     92c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <initiateCondVar>:
     934:	e92d4800 	push	{fp, lr}
     938:	e28db004 	add	fp, sp, #4
     93c:	e24dd008 	sub	sp, sp, #8
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	eb0001b8 	bl	102c <getChannel>
     948:	e1a02000 	mov	r2, r0
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5832000 	str	r2, [r3]
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e3a02001 	mov	r2, #1
     95c:	e5832004 	str	r2, [r3, #4]
     960:	e1a00000 	nop			@ (mov r0, r0)
     964:	e24bd004 	sub	sp, fp, #4
     968:	e8bd8800 	pop	{fp, pc}

0000096c <condWait>:
     96c:	e92d4800 	push	{fp, lr}
     970:	e28db004 	add	fp, sp, #4
     974:	e24dd008 	sub	sp, sp, #8
     978:	e50b0008 	str	r0, [fp, #-8]
     97c:	e50b100c 	str	r1, [fp, #-12]
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e5933004 	ldr	r3, [r3, #4]
     988:	e3530000 	cmp	r3, #0
     98c:	0a00000c 	beq	9c4 <condWait+0x58>
     990:	e51b300c 	ldr	r3, [fp, #-12]
     994:	e5933004 	ldr	r3, [r3, #4]
     998:	e3530000 	cmp	r3, #0
     99c:	0a000008 	beq	9c4 <condWait+0x58>
     9a0:	e51b000c 	ldr	r0, [fp, #-12]
     9a4:	ebffffcf 	bl	8e8 <releaseLock>
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e5933000 	ldr	r3, [r3]
     9b0:	e1a00003 	mov	r0, r3
     9b4:	eb000193 	bl	1008 <sleepChan>
     9b8:	e51b000c 	ldr	r0, [fp, #-12]
     9bc:	ebffffb5 	bl	898 <acquireLock>
     9c0:	ea000000 	b	9c8 <condWait+0x5c>
     9c4:	e1a00000 	nop			@ (mov r0, r0)
     9c8:	e24bd004 	sub	sp, fp, #4
     9cc:	e8bd8800 	pop	{fp, pc}

000009d0 <broadcast>:
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd008 	sub	sp, sp, #8
     9dc:	e50b0008 	str	r0, [fp, #-8]
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e5933004 	ldr	r3, [r3, #4]
     9e8:	e3530000 	cmp	r3, #0
     9ec:	0a000004 	beq	a04 <broadcast+0x34>
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e5933000 	ldr	r3, [r3]
     9f8:	e1a00003 	mov	r0, r3
     9fc:	eb000193 	bl	1050 <sigChan>
     a00:	ea000000 	b	a08 <broadcast+0x38>
     a04:	e1a00000 	nop			@ (mov r0, r0)
     a08:	e24bd004 	sub	sp, fp, #4
     a0c:	e8bd8800 	pop	{fp, pc}

00000a10 <signal>:
     a10:	e92d4800 	push	{fp, lr}
     a14:	e28db004 	add	fp, sp, #4
     a18:	e24dd008 	sub	sp, sp, #8
     a1c:	e50b0008 	str	r0, [fp, #-8]
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e5933004 	ldr	r3, [r3, #4]
     a28:	e3530000 	cmp	r3, #0
     a2c:	0a000004 	beq	a44 <signal+0x34>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5933000 	ldr	r3, [r3]
     a38:	e1a00003 	mov	r0, r3
     a3c:	eb00018c 	bl	1074 <sigOneChan>
     a40:	ea000000 	b	a48 <signal+0x38>
     a44:	e1a00000 	nop			@ (mov r0, r0)
     a48:	e24bd004 	sub	sp, fp, #4
     a4c:	e8bd8800 	pop	{fp, pc}

00000a50 <semInit>:
     a50:	e92d4800 	push	{fp, lr}
     a54:	e28db004 	add	fp, sp, #4
     a58:	e24dd008 	sub	sp, sp, #8
     a5c:	e50b0008 	str	r0, [fp, #-8]
     a60:	e50b100c 	str	r1, [fp, #-12]
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e2833004 	add	r3, r3, #4
     a6c:	e1a00003 	mov	r0, r3
     a70:	ebffff7a 	bl	860 <initiateLock>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e283300c 	add	r3, r3, #12
     a7c:	e1a00003 	mov	r0, r3
     a80:	ebffffab 	bl	934 <initiateCondVar>
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e51b200c 	ldr	r2, [fp, #-12]
     a8c:	e5832000 	str	r2, [r3]
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e3a02001 	mov	r2, #1
     a98:	e5832014 	str	r2, [r3, #20]
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	e24bd004 	sub	sp, fp, #4
     aa4:	e8bd8800 	pop	{fp, pc}

00000aa8 <semUp>:
     aa8:	e92d4800 	push	{fp, lr}
     aac:	e28db004 	add	fp, sp, #4
     ab0:	e24dd008 	sub	sp, sp, #8
     ab4:	e50b0008 	str	r0, [fp, #-8]
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e2833004 	add	r3, r3, #4
     ac0:	e1a00003 	mov	r0, r3
     ac4:	ebffff73 	bl	898 <acquireLock>
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e5933000 	ldr	r3, [r3]
     ad0:	e2832001 	add	r2, r3, #1
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e5832000 	str	r2, [r3]
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e283300c 	add	r3, r3, #12
     ae4:	e1a00003 	mov	r0, r3
     ae8:	ebffffc8 	bl	a10 <signal>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2833004 	add	r3, r3, #4
     af4:	e1a00003 	mov	r0, r3
     af8:	ebffff7a 	bl	8e8 <releaseLock>
     afc:	e1a00000 	nop			@ (mov r0, r0)
     b00:	e24bd004 	sub	sp, fp, #4
     b04:	e8bd8800 	pop	{fp, pc}

00000b08 <semDown>:
     b08:	e92d4800 	push	{fp, lr}
     b0c:	e28db004 	add	fp, sp, #4
     b10:	e24dd008 	sub	sp, sp, #8
     b14:	e50b0008 	str	r0, [fp, #-8]
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e2833004 	add	r3, r3, #4
     b20:	e1a00003 	mov	r0, r3
     b24:	ebffff5b 	bl	898 <acquireLock>
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e5933000 	ldr	r3, [r3]
     b30:	e2432001 	sub	r2, r3, #1
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e5832000 	str	r2, [r3]
     b3c:	ea000006 	b	b5c <semDown+0x54>
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e283200c 	add	r2, r3, #12
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e2833004 	add	r3, r3, #4
     b50:	e1a01003 	mov	r1, r3
     b54:	e1a00002 	mov	r0, r2
     b58:	ebffff83 	bl	96c <condWait>
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e5933000 	ldr	r3, [r3]
     b64:	e3530000 	cmp	r3, #0
     b68:	bafffff4 	blt	b40 <semDown+0x38>
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e2833004 	add	r3, r3, #4
     b74:	e1a00003 	mov	r0, r3
     b78:	ebffff5a 	bl	8e8 <releaseLock>
     b7c:	e1a00000 	nop			@ (mov r0, r0)
     b80:	e24bd004 	sub	sp, fp, #4
     b84:	e8bd8800 	pop	{fp, pc}

00000b88 <fork>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00001 	mov	r0, #1
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <exit>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00002 	mov	r0, #2
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <wait>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00003 	mov	r0, #3
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <pipe>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00004 	mov	r0, #4
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <read>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a00005 	mov	r0, #5
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <write>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00010 	mov	r0, #16
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <close>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00015 	mov	r0, #21
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <kill>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00006 	mov	r0, #6
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <exec>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00007 	mov	r0, #7
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <open>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a0000f 	mov	r0, #15
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <mknod>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00011 	mov	r0, #17
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <unlink>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00012 	mov	r0, #18
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <fstat>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a00008 	mov	r0, #8
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <link>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a00013 	mov	r0, #19
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <mkdir>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00014 	mov	r0, #20
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <chdir>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a00009 	mov	r0, #9
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <dup>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a0000a 	mov	r0, #10
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <getpid>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a0000b 	mov	r0, #11
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <sbrk>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a0000c 	mov	r0, #12
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <sleep>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a0000d 	mov	r0, #13
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <uptime>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a0000e 	mov	r0, #14
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <proclist>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00016 	mov	r0, #22
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <settickets>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00017 	mov	r0, #23
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <srand>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00018 	mov	r0, #24
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <getpinfo>:
     ee8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eec:	e1a04003 	mov	r4, r3
     ef0:	e1a03002 	mov	r3, r2
     ef4:	e1a02001 	mov	r2, r1
     ef8:	e1a01000 	mov	r1, r0
     efc:	e3a00019 	mov	r0, #25
     f00:	ef000000 	svc	0x00000000
     f04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f08:	e12fff1e 	bx	lr

00000f0c <print_pt>:
     f0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f10:	e1a04003 	mov	r4, r3
     f14:	e1a03002 	mov	r3, r2
     f18:	e1a02001 	mov	r2, r1
     f1c:	e1a01000 	mov	r1, r0
     f20:	e3a0001f 	mov	r0, #31
     f24:	ef000000 	svc	0x00000000
     f28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f2c:	e12fff1e 	bx	lr

00000f30 <thread_create>:
     f30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f34:	e1a04003 	mov	r4, r3
     f38:	e1a03002 	mov	r3, r2
     f3c:	e1a02001 	mov	r2, r1
     f40:	e1a01000 	mov	r1, r0
     f44:	e3a00020 	mov	r0, #32
     f48:	ef000000 	svc	0x00000000
     f4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f50:	e12fff1e 	bx	lr

00000f54 <thread_exit>:
     f54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f58:	e1a04003 	mov	r4, r3
     f5c:	e1a03002 	mov	r3, r2
     f60:	e1a02001 	mov	r2, r1
     f64:	e1a01000 	mov	r1, r0
     f68:	e3a00021 	mov	r0, #33	@ 0x21
     f6c:	ef000000 	svc	0x00000000
     f70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f74:	e12fff1e 	bx	lr

00000f78 <thread_join>:
     f78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f7c:	e1a04003 	mov	r4, r3
     f80:	e1a03002 	mov	r3, r2
     f84:	e1a02001 	mov	r2, r1
     f88:	e1a01000 	mov	r1, r0
     f8c:	e3a00022 	mov	r0, #34	@ 0x22
     f90:	ef000000 	svc	0x00000000
     f94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f98:	e12fff1e 	bx	lr

00000f9c <waitpid>:
     f9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa0:	e1a04003 	mov	r4, r3
     fa4:	e1a03002 	mov	r3, r2
     fa8:	e1a02001 	mov	r2, r1
     fac:	e1a01000 	mov	r1, r0
     fb0:	e3a00023 	mov	r0, #35	@ 0x23
     fb4:	ef000000 	svc	0x00000000
     fb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fbc:	e12fff1e 	bx	lr

00000fc0 <barrier_init>:
     fc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc4:	e1a04003 	mov	r4, r3
     fc8:	e1a03002 	mov	r3, r2
     fcc:	e1a02001 	mov	r2, r1
     fd0:	e1a01000 	mov	r1, r0
     fd4:	e3a00024 	mov	r0, #36	@ 0x24
     fd8:	ef000000 	svc	0x00000000
     fdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe0:	e12fff1e 	bx	lr

00000fe4 <barrier_check>:
     fe4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe8:	e1a04003 	mov	r4, r3
     fec:	e1a03002 	mov	r3, r2
     ff0:	e1a02001 	mov	r2, r1
     ff4:	e1a01000 	mov	r1, r0
     ff8:	e3a00025 	mov	r0, #37	@ 0x25
     ffc:	ef000000 	svc	0x00000000
    1000:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1004:	e12fff1e 	bx	lr

00001008 <sleepChan>:
    1008:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    100c:	e1a04003 	mov	r4, r3
    1010:	e1a03002 	mov	r3, r2
    1014:	e1a02001 	mov	r2, r1
    1018:	e1a01000 	mov	r1, r0
    101c:	e3a00026 	mov	r0, #38	@ 0x26
    1020:	ef000000 	svc	0x00000000
    1024:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1028:	e12fff1e 	bx	lr

0000102c <getChannel>:
    102c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1030:	e1a04003 	mov	r4, r3
    1034:	e1a03002 	mov	r3, r2
    1038:	e1a02001 	mov	r2, r1
    103c:	e1a01000 	mov	r1, r0
    1040:	e3a00027 	mov	r0, #39	@ 0x27
    1044:	ef000000 	svc	0x00000000
    1048:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    104c:	e12fff1e 	bx	lr

00001050 <sigChan>:
    1050:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1054:	e1a04003 	mov	r4, r3
    1058:	e1a03002 	mov	r3, r2
    105c:	e1a02001 	mov	r2, r1
    1060:	e1a01000 	mov	r1, r0
    1064:	e3a00028 	mov	r0, #40	@ 0x28
    1068:	ef000000 	svc	0x00000000
    106c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1070:	e12fff1e 	bx	lr

00001074 <sigOneChan>:
    1074:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1078:	e1a04003 	mov	r4, r3
    107c:	e1a03002 	mov	r3, r2
    1080:	e1a02001 	mov	r2, r1
    1084:	e1a01000 	mov	r1, r0
    1088:	e3a00029 	mov	r0, #41	@ 0x29
    108c:	ef000000 	svc	0x00000000
    1090:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1094:	e12fff1e 	bx	lr

00001098 <symlink>:
    1098:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    109c:	e1a04003 	mov	r4, r3
    10a0:	e1a03002 	mov	r3, r2
    10a4:	e1a02001 	mov	r2, r1
    10a8:	e1a01000 	mov	r1, r0
    10ac:	e3a0002a 	mov	r0, #42	@ 0x2a
    10b0:	ef000000 	svc	0x00000000
    10b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b8:	e12fff1e 	bx	lr

000010bc <syscall>:
    10bc:	ef000000 	svc	0x00000000
    10c0:	e12fff1e 	bx	lr

000010c4 <putc>:
    10c4:	e92d4800 	push	{fp, lr}
    10c8:	e28db004 	add	fp, sp, #4
    10cc:	e24dd008 	sub	sp, sp, #8
    10d0:	e50b0008 	str	r0, [fp, #-8]
    10d4:	e1a03001 	mov	r3, r1
    10d8:	e54b3009 	strb	r3, [fp, #-9]
    10dc:	e24b3009 	sub	r3, fp, #9
    10e0:	e3a02001 	mov	r2, #1
    10e4:	e1a01003 	mov	r1, r3
    10e8:	e51b0008 	ldr	r0, [fp, #-8]
    10ec:	ebfffed2 	bl	c3c <write>
    10f0:	e1a00000 	nop			@ (mov r0, r0)
    10f4:	e24bd004 	sub	sp, fp, #4
    10f8:	e8bd8800 	pop	{fp, pc}

000010fc <printint>:
    10fc:	e92d4800 	push	{fp, lr}
    1100:	e28db004 	add	fp, sp, #4
    1104:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1108:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    110c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1110:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1114:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1118:	e3a03000 	mov	r3, #0
    111c:	e50b300c 	str	r3, [fp, #-12]
    1120:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1124:	e3530000 	cmp	r3, #0
    1128:	0a000008 	beq	1150 <printint+0x54>
    112c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1130:	e3530000 	cmp	r3, #0
    1134:	aa000005 	bge	1150 <printint+0x54>
    1138:	e3a03001 	mov	r3, #1
    113c:	e50b300c 	str	r3, [fp, #-12]
    1140:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1144:	e2633000 	rsb	r3, r3, #0
    1148:	e50b3010 	str	r3, [fp, #-16]
    114c:	ea000001 	b	1158 <printint+0x5c>
    1150:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1154:	e50b3010 	str	r3, [fp, #-16]
    1158:	e3a03000 	mov	r3, #0
    115c:	e50b3008 	str	r3, [fp, #-8]
    1160:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1164:	e51b3010 	ldr	r3, [fp, #-16]
    1168:	e1a01002 	mov	r1, r2
    116c:	e1a00003 	mov	r0, r3
    1170:	eb0001d5 	bl	18cc <__aeabi_uidivmod>
    1174:	e1a03001 	mov	r3, r1
    1178:	e1a01003 	mov	r1, r3
    117c:	e51b3008 	ldr	r3, [fp, #-8]
    1180:	e2832001 	add	r2, r3, #1
    1184:	e50b2008 	str	r2, [fp, #-8]
    1188:	e59f20a0 	ldr	r2, [pc, #160]	@ 1230 <printint+0x134>
    118c:	e7d22001 	ldrb	r2, [r2, r1]
    1190:	e2433004 	sub	r3, r3, #4
    1194:	e083300b 	add	r3, r3, fp
    1198:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    119c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11a0:	e1a01003 	mov	r1, r3
    11a4:	e51b0010 	ldr	r0, [fp, #-16]
    11a8:	eb00018a 	bl	17d8 <__udivsi3>
    11ac:	e1a03000 	mov	r3, r0
    11b0:	e50b3010 	str	r3, [fp, #-16]
    11b4:	e51b3010 	ldr	r3, [fp, #-16]
    11b8:	e3530000 	cmp	r3, #0
    11bc:	1affffe7 	bne	1160 <printint+0x64>
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e3530000 	cmp	r3, #0
    11c8:	0a00000e 	beq	1208 <printint+0x10c>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e2832001 	add	r2, r3, #1
    11d4:	e50b2008 	str	r2, [fp, #-8]
    11d8:	e2433004 	sub	r3, r3, #4
    11dc:	e083300b 	add	r3, r3, fp
    11e0:	e3a0202d 	mov	r2, #45	@ 0x2d
    11e4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11e8:	ea000006 	b	1208 <printint+0x10c>
    11ec:	e24b2020 	sub	r2, fp, #32
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e0823003 	add	r3, r2, r3
    11f8:	e5d33000 	ldrb	r3, [r3]
    11fc:	e1a01003 	mov	r1, r3
    1200:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1204:	ebffffae 	bl	10c4 <putc>
    1208:	e51b3008 	ldr	r3, [fp, #-8]
    120c:	e2433001 	sub	r3, r3, #1
    1210:	e50b3008 	str	r3, [fp, #-8]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e3530000 	cmp	r3, #0
    121c:	aafffff2 	bge	11ec <printint+0xf0>
    1220:	e1a00000 	nop			@ (mov r0, r0)
    1224:	e1a00000 	nop			@ (mov r0, r0)
    1228:	e24bd004 	sub	sp, fp, #4
    122c:	e8bd8800 	pop	{fp, pc}
    1230:	0000194c 	.word	0x0000194c

00001234 <printf>:
    1234:	e92d000e 	push	{r1, r2, r3}
    1238:	e92d4800 	push	{fp, lr}
    123c:	e28db004 	add	fp, sp, #4
    1240:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1244:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1248:	e3a03000 	mov	r3, #0
    124c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1250:	e28b3008 	add	r3, fp, #8
    1254:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1258:	e3a03000 	mov	r3, #0
    125c:	e50b3010 	str	r3, [fp, #-16]
    1260:	ea000074 	b	1438 <printf+0x204>
    1264:	e59b2004 	ldr	r2, [fp, #4]
    1268:	e51b3010 	ldr	r3, [fp, #-16]
    126c:	e0823003 	add	r3, r2, r3
    1270:	e5d33000 	ldrb	r3, [r3]
    1274:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1278:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    127c:	e3530000 	cmp	r3, #0
    1280:	1a00000b 	bne	12b4 <printf+0x80>
    1284:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1288:	e3530025 	cmp	r3, #37	@ 0x25
    128c:	1a000002 	bne	129c <printf+0x68>
    1290:	e3a03025 	mov	r3, #37	@ 0x25
    1294:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1298:	ea000063 	b	142c <printf+0x1f8>
    129c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a0:	e6ef3073 	uxtb	r3, r3
    12a4:	e1a01003 	mov	r1, r3
    12a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12ac:	ebffff84 	bl	10c4 <putc>
    12b0:	ea00005d 	b	142c <printf+0x1f8>
    12b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12b8:	e3530025 	cmp	r3, #37	@ 0x25
    12bc:	1a00005a 	bne	142c <printf+0x1f8>
    12c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c4:	e3530064 	cmp	r3, #100	@ 0x64
    12c8:	1a00000a 	bne	12f8 <printf+0xc4>
    12cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e1a01003 	mov	r1, r3
    12d8:	e3a03001 	mov	r3, #1
    12dc:	e3a0200a 	mov	r2, #10
    12e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12e4:	ebffff84 	bl	10fc <printint>
    12e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12ec:	e2833004 	add	r3, r3, #4
    12f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12f4:	ea00004a 	b	1424 <printf+0x1f0>
    12f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12fc:	e3530078 	cmp	r3, #120	@ 0x78
    1300:	0a000002 	beq	1310 <printf+0xdc>
    1304:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1308:	e3530070 	cmp	r3, #112	@ 0x70
    130c:	1a00000a 	bne	133c <printf+0x108>
    1310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e1a01003 	mov	r1, r3
    131c:	e3a03000 	mov	r3, #0
    1320:	e3a02010 	mov	r2, #16
    1324:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1328:	ebffff73 	bl	10fc <printint>
    132c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1330:	e2833004 	add	r3, r3, #4
    1334:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1338:	ea000039 	b	1424 <printf+0x1f0>
    133c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1340:	e3530073 	cmp	r3, #115	@ 0x73
    1344:	1a000018 	bne	13ac <printf+0x178>
    1348:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    134c:	e5933000 	ldr	r3, [r3]
    1350:	e50b300c 	str	r3, [fp, #-12]
    1354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1358:	e2833004 	add	r3, r3, #4
    135c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e3530000 	cmp	r3, #0
    1368:	1a00000a 	bne	1398 <printf+0x164>
    136c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1468 <printf+0x234>
    1370:	e50b300c 	str	r3, [fp, #-12]
    1374:	ea000007 	b	1398 <printf+0x164>
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5d33000 	ldrb	r3, [r3]
    1380:	e1a01003 	mov	r1, r3
    1384:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1388:	ebffff4d 	bl	10c4 <putc>
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e2833001 	add	r3, r3, #1
    1394:	e50b300c 	str	r3, [fp, #-12]
    1398:	e51b300c 	ldr	r3, [fp, #-12]
    139c:	e5d33000 	ldrb	r3, [r3]
    13a0:	e3530000 	cmp	r3, #0
    13a4:	1afffff3 	bne	1378 <printf+0x144>
    13a8:	ea00001d 	b	1424 <printf+0x1f0>
    13ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b0:	e3530063 	cmp	r3, #99	@ 0x63
    13b4:	1a000009 	bne	13e0 <printf+0x1ac>
    13b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13bc:	e5933000 	ldr	r3, [r3]
    13c0:	e6ef3073 	uxtb	r3, r3
    13c4:	e1a01003 	mov	r1, r3
    13c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13cc:	ebffff3c 	bl	10c4 <putc>
    13d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d4:	e2833004 	add	r3, r3, #4
    13d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13dc:	ea000010 	b	1424 <printf+0x1f0>
    13e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13e4:	e3530025 	cmp	r3, #37	@ 0x25
    13e8:	1a000005 	bne	1404 <printf+0x1d0>
    13ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f0:	e6ef3073 	uxtb	r3, r3
    13f4:	e1a01003 	mov	r1, r3
    13f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13fc:	ebffff30 	bl	10c4 <putc>
    1400:	ea000007 	b	1424 <printf+0x1f0>
    1404:	e3a01025 	mov	r1, #37	@ 0x25
    1408:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    140c:	ebffff2c 	bl	10c4 <putc>
    1410:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1414:	e6ef3073 	uxtb	r3, r3
    1418:	e1a01003 	mov	r1, r3
    141c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1420:	ebffff27 	bl	10c4 <putc>
    1424:	e3a03000 	mov	r3, #0
    1428:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    142c:	e51b3010 	ldr	r3, [fp, #-16]
    1430:	e2833001 	add	r3, r3, #1
    1434:	e50b3010 	str	r3, [fp, #-16]
    1438:	e59b2004 	ldr	r2, [fp, #4]
    143c:	e51b3010 	ldr	r3, [fp, #-16]
    1440:	e0823003 	add	r3, r2, r3
    1444:	e5d33000 	ldrb	r3, [r3]
    1448:	e3530000 	cmp	r3, #0
    144c:	1affff84 	bne	1264 <printf+0x30>
    1450:	e1a00000 	nop			@ (mov r0, r0)
    1454:	e1a00000 	nop			@ (mov r0, r0)
    1458:	e24bd004 	sub	sp, fp, #4
    145c:	e8bd4800 	pop	{fp, lr}
    1460:	e28dd00c 	add	sp, sp, #12
    1464:	e12fff1e 	bx	lr
    1468:	00001944 	.word	0x00001944

0000146c <free>:
    146c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1470:	e28db000 	add	fp, sp, #0
    1474:	e24dd014 	sub	sp, sp, #20
    1478:	e50b0010 	str	r0, [fp, #-16]
    147c:	e51b3010 	ldr	r3, [fp, #-16]
    1480:	e2433008 	sub	r3, r3, #8
    1484:	e50b300c 	str	r3, [fp, #-12]
    1488:	e59f3154 	ldr	r3, [pc, #340]	@ 15e4 <free+0x178>
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e50b3008 	str	r3, [fp, #-8]
    1494:	ea000010 	b	14dc <free+0x70>
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933000 	ldr	r3, [r3]
    14a0:	e51b2008 	ldr	r2, [fp, #-8]
    14a4:	e1520003 	cmp	r2, r3
    14a8:	3a000008 	bcc	14d0 <free+0x64>
    14ac:	e51b200c 	ldr	r2, [fp, #-12]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e1520003 	cmp	r2, r3
    14b8:	8a000010 	bhi	1500 <free+0x94>
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e51b200c 	ldr	r2, [fp, #-12]
    14c8:	e1520003 	cmp	r2, r3
    14cc:	3a00000b 	bcc	1500 <free+0x94>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e50b3008 	str	r3, [fp, #-8]
    14dc:	e51b200c 	ldr	r2, [fp, #-12]
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e1520003 	cmp	r2, r3
    14e8:	9affffea 	bls	1498 <free+0x2c>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5933000 	ldr	r3, [r3]
    14f4:	e51b200c 	ldr	r2, [fp, #-12]
    14f8:	e1520003 	cmp	r2, r3
    14fc:	2affffe5 	bcs	1498 <free+0x2c>
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5933004 	ldr	r3, [r3, #4]
    1508:	e1a03183 	lsl	r3, r3, #3
    150c:	e51b200c 	ldr	r2, [fp, #-12]
    1510:	e0822003 	add	r2, r2, r3
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5933000 	ldr	r3, [r3]
    151c:	e1520003 	cmp	r2, r3
    1520:	1a00000d 	bne	155c <free+0xf0>
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e5932004 	ldr	r2, [r3, #4]
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e5933004 	ldr	r3, [r3, #4]
    1538:	e0822003 	add	r2, r2, r3
    153c:	e51b300c 	ldr	r3, [fp, #-12]
    1540:	e5832004 	str	r2, [r3, #4]
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e5933000 	ldr	r3, [r3]
    154c:	e5932000 	ldr	r2, [r3]
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5832000 	str	r2, [r3]
    1558:	ea000003 	b	156c <free+0x100>
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5932000 	ldr	r2, [r3]
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e5832000 	str	r2, [r3]
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e5933004 	ldr	r3, [r3, #4]
    1574:	e1a03183 	lsl	r3, r3, #3
    1578:	e51b2008 	ldr	r2, [fp, #-8]
    157c:	e0823003 	add	r3, r2, r3
    1580:	e51b200c 	ldr	r2, [fp, #-12]
    1584:	e1520003 	cmp	r2, r3
    1588:	1a00000b 	bne	15bc <free+0x150>
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5932004 	ldr	r2, [r3, #4]
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5933004 	ldr	r3, [r3, #4]
    159c:	e0822003 	add	r2, r2, r3
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5832004 	str	r2, [r3, #4]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e5932000 	ldr	r2, [r3]
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e5832000 	str	r2, [r3]
    15b8:	ea000002 	b	15c8 <free+0x15c>
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e51b200c 	ldr	r2, [fp, #-12]
    15c4:	e5832000 	str	r2, [r3]
    15c8:	e59f2014 	ldr	r2, [pc, #20]	@ 15e4 <free+0x178>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5823000 	str	r3, [r2]
    15d4:	e1a00000 	nop			@ (mov r0, r0)
    15d8:	e28bd000 	add	sp, fp, #0
    15dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15e0:	e12fff1e 	bx	lr
    15e4:	00001968 	.word	0x00001968

000015e8 <morecore>:
    15e8:	e92d4800 	push	{fp, lr}
    15ec:	e28db004 	add	fp, sp, #4
    15f0:	e24dd010 	sub	sp, sp, #16
    15f4:	e50b0010 	str	r0, [fp, #-16]
    15f8:	e51b3010 	ldr	r3, [fp, #-16]
    15fc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1600:	2a000001 	bcs	160c <morecore+0x24>
    1604:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1608:	e50b3010 	str	r3, [fp, #-16]
    160c:	e51b3010 	ldr	r3, [fp, #-16]
    1610:	e1a03183 	lsl	r3, r3, #3
    1614:	e1a00003 	mov	r0, r3
    1618:	ebfffdfc 	bl	e10 <sbrk>
    161c:	e50b0008 	str	r0, [fp, #-8]
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e3730001 	cmn	r3, #1
    1628:	1a000001 	bne	1634 <morecore+0x4c>
    162c:	e3a03000 	mov	r3, #0
    1630:	ea00000a 	b	1660 <morecore+0x78>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e50b300c 	str	r3, [fp, #-12]
    163c:	e51b300c 	ldr	r3, [fp, #-12]
    1640:	e51b2010 	ldr	r2, [fp, #-16]
    1644:	e5832004 	str	r2, [r3, #4]
    1648:	e51b300c 	ldr	r3, [fp, #-12]
    164c:	e2833008 	add	r3, r3, #8
    1650:	e1a00003 	mov	r0, r3
    1654:	ebffff84 	bl	146c <free>
    1658:	e59f300c 	ldr	r3, [pc, #12]	@ 166c <morecore+0x84>
    165c:	e5933000 	ldr	r3, [r3]
    1660:	e1a00003 	mov	r0, r3
    1664:	e24bd004 	sub	sp, fp, #4
    1668:	e8bd8800 	pop	{fp, pc}
    166c:	00001968 	.word	0x00001968

00001670 <malloc>:
    1670:	e92d4800 	push	{fp, lr}
    1674:	e28db004 	add	fp, sp, #4
    1678:	e24dd018 	sub	sp, sp, #24
    167c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1684:	e2833007 	add	r3, r3, #7
    1688:	e1a031a3 	lsr	r3, r3, #3
    168c:	e2833001 	add	r3, r3, #1
    1690:	e50b3010 	str	r3, [fp, #-16]
    1694:	e59f3134 	ldr	r3, [pc, #308]	@ 17d0 <malloc+0x160>
    1698:	e5933000 	ldr	r3, [r3]
    169c:	e50b300c 	str	r3, [fp, #-12]
    16a0:	e51b300c 	ldr	r3, [fp, #-12]
    16a4:	e3530000 	cmp	r3, #0
    16a8:	1a00000b 	bne	16dc <malloc+0x6c>
    16ac:	e59f3120 	ldr	r3, [pc, #288]	@ 17d4 <malloc+0x164>
    16b0:	e50b300c 	str	r3, [fp, #-12]
    16b4:	e59f2114 	ldr	r2, [pc, #276]	@ 17d0 <malloc+0x160>
    16b8:	e51b300c 	ldr	r3, [fp, #-12]
    16bc:	e5823000 	str	r3, [r2]
    16c0:	e59f3108 	ldr	r3, [pc, #264]	@ 17d0 <malloc+0x160>
    16c4:	e5933000 	ldr	r3, [r3]
    16c8:	e59f2104 	ldr	r2, [pc, #260]	@ 17d4 <malloc+0x164>
    16cc:	e5823000 	str	r3, [r2]
    16d0:	e59f30fc 	ldr	r3, [pc, #252]	@ 17d4 <malloc+0x164>
    16d4:	e3a02000 	mov	r2, #0
    16d8:	e5832004 	str	r2, [r3, #4]
    16dc:	e51b300c 	ldr	r3, [fp, #-12]
    16e0:	e5933000 	ldr	r3, [r3]
    16e4:	e50b3008 	str	r3, [fp, #-8]
    16e8:	e51b3008 	ldr	r3, [fp, #-8]
    16ec:	e5933004 	ldr	r3, [r3, #4]
    16f0:	e51b2010 	ldr	r2, [fp, #-16]
    16f4:	e1520003 	cmp	r2, r3
    16f8:	8a00001e 	bhi	1778 <malloc+0x108>
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e5933004 	ldr	r3, [r3, #4]
    1704:	e51b2010 	ldr	r2, [fp, #-16]
    1708:	e1520003 	cmp	r2, r3
    170c:	1a000004 	bne	1724 <malloc+0xb4>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5932000 	ldr	r2, [r3]
    1718:	e51b300c 	ldr	r3, [fp, #-12]
    171c:	e5832000 	str	r2, [r3]
    1720:	ea00000e 	b	1760 <malloc+0xf0>
    1724:	e51b3008 	ldr	r3, [fp, #-8]
    1728:	e5932004 	ldr	r2, [r3, #4]
    172c:	e51b3010 	ldr	r3, [fp, #-16]
    1730:	e0422003 	sub	r2, r2, r3
    1734:	e51b3008 	ldr	r3, [fp, #-8]
    1738:	e5832004 	str	r2, [r3, #4]
    173c:	e51b3008 	ldr	r3, [fp, #-8]
    1740:	e5933004 	ldr	r3, [r3, #4]
    1744:	e1a03183 	lsl	r3, r3, #3
    1748:	e51b2008 	ldr	r2, [fp, #-8]
    174c:	e0823003 	add	r3, r2, r3
    1750:	e50b3008 	str	r3, [fp, #-8]
    1754:	e51b3008 	ldr	r3, [fp, #-8]
    1758:	e51b2010 	ldr	r2, [fp, #-16]
    175c:	e5832004 	str	r2, [r3, #4]
    1760:	e59f2068 	ldr	r2, [pc, #104]	@ 17d0 <malloc+0x160>
    1764:	e51b300c 	ldr	r3, [fp, #-12]
    1768:	e5823000 	str	r3, [r2]
    176c:	e51b3008 	ldr	r3, [fp, #-8]
    1770:	e2833008 	add	r3, r3, #8
    1774:	ea000012 	b	17c4 <malloc+0x154>
    1778:	e59f3050 	ldr	r3, [pc, #80]	@ 17d0 <malloc+0x160>
    177c:	e5933000 	ldr	r3, [r3]
    1780:	e51b2008 	ldr	r2, [fp, #-8]
    1784:	e1520003 	cmp	r2, r3
    1788:	1a000007 	bne	17ac <malloc+0x13c>
    178c:	e51b0010 	ldr	r0, [fp, #-16]
    1790:	ebffff94 	bl	15e8 <morecore>
    1794:	e50b0008 	str	r0, [fp, #-8]
    1798:	e51b3008 	ldr	r3, [fp, #-8]
    179c:	e3530000 	cmp	r3, #0
    17a0:	1a000001 	bne	17ac <malloc+0x13c>
    17a4:	e3a03000 	mov	r3, #0
    17a8:	ea000005 	b	17c4 <malloc+0x154>
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e50b300c 	str	r3, [fp, #-12]
    17b4:	e51b3008 	ldr	r3, [fp, #-8]
    17b8:	e5933000 	ldr	r3, [r3]
    17bc:	e50b3008 	str	r3, [fp, #-8]
    17c0:	eaffffc8 	b	16e8 <malloc+0x78>
    17c4:	e1a00003 	mov	r0, r3
    17c8:	e24bd004 	sub	sp, fp, #4
    17cc:	e8bd8800 	pop	{fp, pc}
    17d0:	00001968 	.word	0x00001968
    17d4:	00001960 	.word	0x00001960

000017d8 <__udivsi3>:
    17d8:	e2512001 	subs	r2, r1, #1
    17dc:	012fff1e 	bxeq	lr
    17e0:	3a000036 	bcc	18c0 <__udivsi3+0xe8>
    17e4:	e1500001 	cmp	r0, r1
    17e8:	9a000022 	bls	1878 <__udivsi3+0xa0>
    17ec:	e1110002 	tst	r1, r2
    17f0:	0a000023 	beq	1884 <__udivsi3+0xac>
    17f4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17f8:	01a01181 	lsleq	r1, r1, #3
    17fc:	03a03008 	moveq	r3, #8
    1800:	13a03001 	movne	r3, #1
    1804:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1808:	31510000 	cmpcc	r1, r0
    180c:	31a01201 	lslcc	r1, r1, #4
    1810:	31a03203 	lslcc	r3, r3, #4
    1814:	3afffffa 	bcc	1804 <__udivsi3+0x2c>
    1818:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    181c:	31510000 	cmpcc	r1, r0
    1820:	31a01081 	lslcc	r1, r1, #1
    1824:	31a03083 	lslcc	r3, r3, #1
    1828:	3afffffa 	bcc	1818 <__udivsi3+0x40>
    182c:	e3a02000 	mov	r2, #0
    1830:	e1500001 	cmp	r0, r1
    1834:	20400001 	subcs	r0, r0, r1
    1838:	21822003 	orrcs	r2, r2, r3
    183c:	e15000a1 	cmp	r0, r1, lsr #1
    1840:	204000a1 	subcs	r0, r0, r1, lsr #1
    1844:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1848:	e1500121 	cmp	r0, r1, lsr #2
    184c:	20400121 	subcs	r0, r0, r1, lsr #2
    1850:	21822123 	orrcs	r2, r2, r3, lsr #2
    1854:	e15001a1 	cmp	r0, r1, lsr #3
    1858:	204001a1 	subcs	r0, r0, r1, lsr #3
    185c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1860:	e3500000 	cmp	r0, #0
    1864:	11b03223 	lsrsne	r3, r3, #4
    1868:	11a01221 	lsrne	r1, r1, #4
    186c:	1affffef 	bne	1830 <__udivsi3+0x58>
    1870:	e1a00002 	mov	r0, r2
    1874:	e12fff1e 	bx	lr
    1878:	03a00001 	moveq	r0, #1
    187c:	13a00000 	movne	r0, #0
    1880:	e12fff1e 	bx	lr
    1884:	e3510801 	cmp	r1, #65536	@ 0x10000
    1888:	21a01821 	lsrcs	r1, r1, #16
    188c:	23a02010 	movcs	r2, #16
    1890:	33a02000 	movcc	r2, #0
    1894:	e3510c01 	cmp	r1, #256	@ 0x100
    1898:	21a01421 	lsrcs	r1, r1, #8
    189c:	22822008 	addcs	r2, r2, #8
    18a0:	e3510010 	cmp	r1, #16
    18a4:	21a01221 	lsrcs	r1, r1, #4
    18a8:	22822004 	addcs	r2, r2, #4
    18ac:	e3510004 	cmp	r1, #4
    18b0:	82822003 	addhi	r2, r2, #3
    18b4:	908220a1 	addls	r2, r2, r1, lsr #1
    18b8:	e1a00230 	lsr	r0, r0, r2
    18bc:	e12fff1e 	bx	lr
    18c0:	e3500000 	cmp	r0, #0
    18c4:	13e00000 	mvnne	r0, #0
    18c8:	ea000007 	b	18ec <__aeabi_idiv0>

000018cc <__aeabi_uidivmod>:
    18cc:	e3510000 	cmp	r1, #0
    18d0:	0afffffa 	beq	18c0 <__udivsi3+0xe8>
    18d4:	e92d4003 	push	{r0, r1, lr}
    18d8:	ebffffbe 	bl	17d8 <__udivsi3>
    18dc:	e8bd4006 	pop	{r1, r2, lr}
    18e0:	e0030092 	mul	r3, r2, r0
    18e4:	e0411003 	sub	r1, r1, r3
    18e8:	e12fff1e 	bx	lr

000018ec <__aeabi_idiv0>:
    18ec:	e12fff1e 	bx	lr
