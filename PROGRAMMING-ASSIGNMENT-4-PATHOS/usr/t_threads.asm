
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
      24:	eb000479 	bl	1210 <printf>
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
      58:	000018cc 	.word	0x000018cc

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
      80:	eb000462 	bl	1210 <printf>
      84:	eb0003b2 	bl	f54 <thread_exit>
      88:	e3a03000 	mov	r3, #0
      8c:	e1a00003 	mov	r0, r3
      90:	e24bd004 	sub	sp, fp, #4
      94:	e8bd8800 	pop	{fp, pc}
      98:	000018e4 	.word	0x000018e4

0000009c <main>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd010 	sub	sp, sp, #16
      a8:	e59f1064 	ldr	r1, [pc, #100]	@ 114 <main+0x78>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000456 	bl	1210 <printf>
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
     10c:	eb00043f 	bl	1210 <printf>
     110:	eb0002a5 	bl	bac <exit>
     114:	000018fc 	.word	0x000018fc
     118:	00000000 	.word	0x00000000
     11c:	0000005c 	.word	0x0000005c
     120:	0000190c 	.word	0x0000190c

00000124 <pg_pte>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dd008 	sub	sp, sp, #8
     130:	e50b0008 	str	r0, [fp, #-8]
     134:	e51b1008 	ldr	r1, [fp, #-8]
     138:	e3a0001a 	mov	r0, #26
     13c:	eb0003d5 	bl	1098 <syscall>
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
     168:	eb0003ca 	bl	1098 <syscall>
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
     194:	eb0003bf 	bl	1098 <syscall>
     198:	e1a03000 	mov	r3, r0
     19c:	e1a00003 	mov	r0, r3
     1a0:	e24bd004 	sub	sp, fp, #4
     1a4:	e8bd8800 	pop	{fp, pc}

000001a8 <kpt>:
     1a8:	e92d4800 	push	{fp, lr}
     1ac:	e28db004 	add	fp, sp, #4
     1b0:	e3a0001d 	mov	r0, #29
     1b4:	eb0003b7 	bl	1098 <syscall>
     1b8:	e1a03000 	mov	r3, r0
     1bc:	e1a00003 	mov	r0, r3
     1c0:	e8bd8800 	pop	{fp, pc}

000001c4 <ugetpid>:
     1c4:	e92d4800 	push	{fp, lr}
     1c8:	e28db004 	add	fp, sp, #4
     1cc:	e3a0001e 	mov	r0, #30
     1d0:	eb0003b0 	bl	1098 <syscall>
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

00001098 <syscall>:
    1098:	ef000000 	svc	0x00000000
    109c:	e12fff1e 	bx	lr

000010a0 <putc>:
    10a0:	e92d4800 	push	{fp, lr}
    10a4:	e28db004 	add	fp, sp, #4
    10a8:	e24dd008 	sub	sp, sp, #8
    10ac:	e50b0008 	str	r0, [fp, #-8]
    10b0:	e1a03001 	mov	r3, r1
    10b4:	e54b3009 	strb	r3, [fp, #-9]
    10b8:	e24b3009 	sub	r3, fp, #9
    10bc:	e3a02001 	mov	r2, #1
    10c0:	e1a01003 	mov	r1, r3
    10c4:	e51b0008 	ldr	r0, [fp, #-8]
    10c8:	ebfffedb 	bl	c3c <write>
    10cc:	e1a00000 	nop			@ (mov r0, r0)
    10d0:	e24bd004 	sub	sp, fp, #4
    10d4:	e8bd8800 	pop	{fp, pc}

000010d8 <printint>:
    10d8:	e92d4800 	push	{fp, lr}
    10dc:	e28db004 	add	fp, sp, #4
    10e0:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10e4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10e8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10ec:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10f0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10f4:	e3a03000 	mov	r3, #0
    10f8:	e50b300c 	str	r3, [fp, #-12]
    10fc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1100:	e3530000 	cmp	r3, #0
    1104:	0a000008 	beq	112c <printint+0x54>
    1108:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    110c:	e3530000 	cmp	r3, #0
    1110:	aa000005 	bge	112c <printint+0x54>
    1114:	e3a03001 	mov	r3, #1
    1118:	e50b300c 	str	r3, [fp, #-12]
    111c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1120:	e2633000 	rsb	r3, r3, #0
    1124:	e50b3010 	str	r3, [fp, #-16]
    1128:	ea000001 	b	1134 <printint+0x5c>
    112c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1130:	e50b3010 	str	r3, [fp, #-16]
    1134:	e3a03000 	mov	r3, #0
    1138:	e50b3008 	str	r3, [fp, #-8]
    113c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1140:	e51b3010 	ldr	r3, [fp, #-16]
    1144:	e1a01002 	mov	r1, r2
    1148:	e1a00003 	mov	r0, r3
    114c:	eb0001d5 	bl	18a8 <__aeabi_uidivmod>
    1150:	e1a03001 	mov	r3, r1
    1154:	e1a01003 	mov	r1, r3
    1158:	e51b3008 	ldr	r3, [fp, #-8]
    115c:	e2832001 	add	r2, r3, #1
    1160:	e50b2008 	str	r2, [fp, #-8]
    1164:	e59f20a0 	ldr	r2, [pc, #160]	@ 120c <printint+0x134>
    1168:	e7d22001 	ldrb	r2, [r2, r1]
    116c:	e2433004 	sub	r3, r3, #4
    1170:	e083300b 	add	r3, r3, fp
    1174:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1178:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    117c:	e1a01003 	mov	r1, r3
    1180:	e51b0010 	ldr	r0, [fp, #-16]
    1184:	eb00018a 	bl	17b4 <__udivsi3>
    1188:	e1a03000 	mov	r3, r0
    118c:	e50b3010 	str	r3, [fp, #-16]
    1190:	e51b3010 	ldr	r3, [fp, #-16]
    1194:	e3530000 	cmp	r3, #0
    1198:	1affffe7 	bne	113c <printint+0x64>
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e3530000 	cmp	r3, #0
    11a4:	0a00000e 	beq	11e4 <printint+0x10c>
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e2832001 	add	r2, r3, #1
    11b0:	e50b2008 	str	r2, [fp, #-8]
    11b4:	e2433004 	sub	r3, r3, #4
    11b8:	e083300b 	add	r3, r3, fp
    11bc:	e3a0202d 	mov	r2, #45	@ 0x2d
    11c0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11c4:	ea000006 	b	11e4 <printint+0x10c>
    11c8:	e24b2020 	sub	r2, fp, #32
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e0823003 	add	r3, r2, r3
    11d4:	e5d33000 	ldrb	r3, [r3]
    11d8:	e1a01003 	mov	r1, r3
    11dc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11e0:	ebffffae 	bl	10a0 <putc>
    11e4:	e51b3008 	ldr	r3, [fp, #-8]
    11e8:	e2433001 	sub	r3, r3, #1
    11ec:	e50b3008 	str	r3, [fp, #-8]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e3530000 	cmp	r3, #0
    11f8:	aafffff2 	bge	11c8 <printint+0xf0>
    11fc:	e1a00000 	nop			@ (mov r0, r0)
    1200:	e1a00000 	nop			@ (mov r0, r0)
    1204:	e24bd004 	sub	sp, fp, #4
    1208:	e8bd8800 	pop	{fp, pc}
    120c:	00001928 	.word	0x00001928

00001210 <printf>:
    1210:	e92d000e 	push	{r1, r2, r3}
    1214:	e92d4800 	push	{fp, lr}
    1218:	e28db004 	add	fp, sp, #4
    121c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1220:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1224:	e3a03000 	mov	r3, #0
    1228:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    122c:	e28b3008 	add	r3, fp, #8
    1230:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1234:	e3a03000 	mov	r3, #0
    1238:	e50b3010 	str	r3, [fp, #-16]
    123c:	ea000074 	b	1414 <printf+0x204>
    1240:	e59b2004 	ldr	r2, [fp, #4]
    1244:	e51b3010 	ldr	r3, [fp, #-16]
    1248:	e0823003 	add	r3, r2, r3
    124c:	e5d33000 	ldrb	r3, [r3]
    1250:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1254:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1258:	e3530000 	cmp	r3, #0
    125c:	1a00000b 	bne	1290 <printf+0x80>
    1260:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1264:	e3530025 	cmp	r3, #37	@ 0x25
    1268:	1a000002 	bne	1278 <printf+0x68>
    126c:	e3a03025 	mov	r3, #37	@ 0x25
    1270:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1274:	ea000063 	b	1408 <printf+0x1f8>
    1278:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    127c:	e6ef3073 	uxtb	r3, r3
    1280:	e1a01003 	mov	r1, r3
    1284:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1288:	ebffff84 	bl	10a0 <putc>
    128c:	ea00005d 	b	1408 <printf+0x1f8>
    1290:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1294:	e3530025 	cmp	r3, #37	@ 0x25
    1298:	1a00005a 	bne	1408 <printf+0x1f8>
    129c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a0:	e3530064 	cmp	r3, #100	@ 0x64
    12a4:	1a00000a 	bne	12d4 <printf+0xc4>
    12a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e1a01003 	mov	r1, r3
    12b4:	e3a03001 	mov	r3, #1
    12b8:	e3a0200a 	mov	r2, #10
    12bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c0:	ebffff84 	bl	10d8 <printint>
    12c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12c8:	e2833004 	add	r3, r3, #4
    12cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d0:	ea00004a 	b	1400 <printf+0x1f0>
    12d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d8:	e3530078 	cmp	r3, #120	@ 0x78
    12dc:	0a000002 	beq	12ec <printf+0xdc>
    12e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e4:	e3530070 	cmp	r3, #112	@ 0x70
    12e8:	1a00000a 	bne	1318 <printf+0x108>
    12ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e1a01003 	mov	r1, r3
    12f8:	e3a03000 	mov	r3, #0
    12fc:	e3a02010 	mov	r2, #16
    1300:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1304:	ebffff73 	bl	10d8 <printint>
    1308:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    130c:	e2833004 	add	r3, r3, #4
    1310:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1314:	ea000039 	b	1400 <printf+0x1f0>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530073 	cmp	r3, #115	@ 0x73
    1320:	1a000018 	bne	1388 <printf+0x178>
    1324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e50b300c 	str	r3, [fp, #-12]
    1330:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1334:	e2833004 	add	r3, r3, #4
    1338:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e3530000 	cmp	r3, #0
    1344:	1a00000a 	bne	1374 <printf+0x164>
    1348:	e59f30f4 	ldr	r3, [pc, #244]	@ 1444 <printf+0x234>
    134c:	e50b300c 	str	r3, [fp, #-12]
    1350:	ea000007 	b	1374 <printf+0x164>
    1354:	e51b300c 	ldr	r3, [fp, #-12]
    1358:	e5d33000 	ldrb	r3, [r3]
    135c:	e1a01003 	mov	r1, r3
    1360:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1364:	ebffff4d 	bl	10a0 <putc>
    1368:	e51b300c 	ldr	r3, [fp, #-12]
    136c:	e2833001 	add	r3, r3, #1
    1370:	e50b300c 	str	r3, [fp, #-12]
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5d33000 	ldrb	r3, [r3]
    137c:	e3530000 	cmp	r3, #0
    1380:	1afffff3 	bne	1354 <printf+0x144>
    1384:	ea00001d 	b	1400 <printf+0x1f0>
    1388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    138c:	e3530063 	cmp	r3, #99	@ 0x63
    1390:	1a000009 	bne	13bc <printf+0x1ac>
    1394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1398:	e5933000 	ldr	r3, [r3]
    139c:	e6ef3073 	uxtb	r3, r3
    13a0:	e1a01003 	mov	r1, r3
    13a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a8:	ebffff3c 	bl	10a0 <putc>
    13ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13b0:	e2833004 	add	r3, r3, #4
    13b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13b8:	ea000010 	b	1400 <printf+0x1f0>
    13bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c0:	e3530025 	cmp	r3, #37	@ 0x25
    13c4:	1a000005 	bne	13e0 <printf+0x1d0>
    13c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13cc:	e6ef3073 	uxtb	r3, r3
    13d0:	e1a01003 	mov	r1, r3
    13d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13d8:	ebffff30 	bl	10a0 <putc>
    13dc:	ea000007 	b	1400 <printf+0x1f0>
    13e0:	e3a01025 	mov	r1, #37	@ 0x25
    13e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e8:	ebffff2c 	bl	10a0 <putc>
    13ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f0:	e6ef3073 	uxtb	r3, r3
    13f4:	e1a01003 	mov	r1, r3
    13f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13fc:	ebffff27 	bl	10a0 <putc>
    1400:	e3a03000 	mov	r3, #0
    1404:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1408:	e51b3010 	ldr	r3, [fp, #-16]
    140c:	e2833001 	add	r3, r3, #1
    1410:	e50b3010 	str	r3, [fp, #-16]
    1414:	e59b2004 	ldr	r2, [fp, #4]
    1418:	e51b3010 	ldr	r3, [fp, #-16]
    141c:	e0823003 	add	r3, r2, r3
    1420:	e5d33000 	ldrb	r3, [r3]
    1424:	e3530000 	cmp	r3, #0
    1428:	1affff84 	bne	1240 <printf+0x30>
    142c:	e1a00000 	nop			@ (mov r0, r0)
    1430:	e1a00000 	nop			@ (mov r0, r0)
    1434:	e24bd004 	sub	sp, fp, #4
    1438:	e8bd4800 	pop	{fp, lr}
    143c:	e28dd00c 	add	sp, sp, #12
    1440:	e12fff1e 	bx	lr
    1444:	00001920 	.word	0x00001920

00001448 <free>:
    1448:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    144c:	e28db000 	add	fp, sp, #0
    1450:	e24dd014 	sub	sp, sp, #20
    1454:	e50b0010 	str	r0, [fp, #-16]
    1458:	e51b3010 	ldr	r3, [fp, #-16]
    145c:	e2433008 	sub	r3, r3, #8
    1460:	e50b300c 	str	r3, [fp, #-12]
    1464:	e59f3154 	ldr	r3, [pc, #340]	@ 15c0 <free+0x178>
    1468:	e5933000 	ldr	r3, [r3]
    146c:	e50b3008 	str	r3, [fp, #-8]
    1470:	ea000010 	b	14b8 <free+0x70>
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e5933000 	ldr	r3, [r3]
    147c:	e51b2008 	ldr	r2, [fp, #-8]
    1480:	e1520003 	cmp	r2, r3
    1484:	3a000008 	bcc	14ac <free+0x64>
    1488:	e51b200c 	ldr	r2, [fp, #-12]
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e1520003 	cmp	r2, r3
    1494:	8a000010 	bhi	14dc <free+0x94>
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933000 	ldr	r3, [r3]
    14a0:	e51b200c 	ldr	r2, [fp, #-12]
    14a4:	e1520003 	cmp	r2, r3
    14a8:	3a00000b 	bcc	14dc <free+0x94>
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e50b3008 	str	r3, [fp, #-8]
    14b8:	e51b200c 	ldr	r2, [fp, #-12]
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e1520003 	cmp	r2, r3
    14c4:	9affffea 	bls	1474 <free+0x2c>
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5933000 	ldr	r3, [r3]
    14d0:	e51b200c 	ldr	r2, [fp, #-12]
    14d4:	e1520003 	cmp	r2, r3
    14d8:	2affffe5 	bcs	1474 <free+0x2c>
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e5933004 	ldr	r3, [r3, #4]
    14e4:	e1a03183 	lsl	r3, r3, #3
    14e8:	e51b200c 	ldr	r2, [fp, #-12]
    14ec:	e0822003 	add	r2, r2, r3
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5933000 	ldr	r3, [r3]
    14f8:	e1520003 	cmp	r2, r3
    14fc:	1a00000d 	bne	1538 <free+0xf0>
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5932004 	ldr	r2, [r3, #4]
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5933000 	ldr	r3, [r3]
    1510:	e5933004 	ldr	r3, [r3, #4]
    1514:	e0822003 	add	r2, r2, r3
    1518:	e51b300c 	ldr	r3, [fp, #-12]
    151c:	e5832004 	str	r2, [r3, #4]
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5933000 	ldr	r3, [r3]
    1528:	e5932000 	ldr	r2, [r3]
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5832000 	str	r2, [r3]
    1534:	ea000003 	b	1548 <free+0x100>
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5932000 	ldr	r2, [r3]
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e5832000 	str	r2, [r3]
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933004 	ldr	r3, [r3, #4]
    1550:	e1a03183 	lsl	r3, r3, #3
    1554:	e51b2008 	ldr	r2, [fp, #-8]
    1558:	e0823003 	add	r3, r2, r3
    155c:	e51b200c 	ldr	r2, [fp, #-12]
    1560:	e1520003 	cmp	r2, r3
    1564:	1a00000b 	bne	1598 <free+0x150>
    1568:	e51b3008 	ldr	r3, [fp, #-8]
    156c:	e5932004 	ldr	r2, [r3, #4]
    1570:	e51b300c 	ldr	r3, [fp, #-12]
    1574:	e5933004 	ldr	r3, [r3, #4]
    1578:	e0822003 	add	r2, r2, r3
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5832004 	str	r2, [r3, #4]
    1584:	e51b300c 	ldr	r3, [fp, #-12]
    1588:	e5932000 	ldr	r2, [r3]
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5832000 	str	r2, [r3]
    1594:	ea000002 	b	15a4 <free+0x15c>
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e51b200c 	ldr	r2, [fp, #-12]
    15a0:	e5832000 	str	r2, [r3]
    15a4:	e59f2014 	ldr	r2, [pc, #20]	@ 15c0 <free+0x178>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e5823000 	str	r3, [r2]
    15b0:	e1a00000 	nop			@ (mov r0, r0)
    15b4:	e28bd000 	add	sp, fp, #0
    15b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15bc:	e12fff1e 	bx	lr
    15c0:	00001944 	.word	0x00001944

000015c4 <morecore>:
    15c4:	e92d4800 	push	{fp, lr}
    15c8:	e28db004 	add	fp, sp, #4
    15cc:	e24dd010 	sub	sp, sp, #16
    15d0:	e50b0010 	str	r0, [fp, #-16]
    15d4:	e51b3010 	ldr	r3, [fp, #-16]
    15d8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15dc:	2a000001 	bcs	15e8 <morecore+0x24>
    15e0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15e4:	e50b3010 	str	r3, [fp, #-16]
    15e8:	e51b3010 	ldr	r3, [fp, #-16]
    15ec:	e1a03183 	lsl	r3, r3, #3
    15f0:	e1a00003 	mov	r0, r3
    15f4:	ebfffe05 	bl	e10 <sbrk>
    15f8:	e50b0008 	str	r0, [fp, #-8]
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e3730001 	cmn	r3, #1
    1604:	1a000001 	bne	1610 <morecore+0x4c>
    1608:	e3a03000 	mov	r3, #0
    160c:	ea00000a 	b	163c <morecore+0x78>
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e50b300c 	str	r3, [fp, #-12]
    1618:	e51b300c 	ldr	r3, [fp, #-12]
    161c:	e51b2010 	ldr	r2, [fp, #-16]
    1620:	e5832004 	str	r2, [r3, #4]
    1624:	e51b300c 	ldr	r3, [fp, #-12]
    1628:	e2833008 	add	r3, r3, #8
    162c:	e1a00003 	mov	r0, r3
    1630:	ebffff84 	bl	1448 <free>
    1634:	e59f300c 	ldr	r3, [pc, #12]	@ 1648 <morecore+0x84>
    1638:	e5933000 	ldr	r3, [r3]
    163c:	e1a00003 	mov	r0, r3
    1640:	e24bd004 	sub	sp, fp, #4
    1644:	e8bd8800 	pop	{fp, pc}
    1648:	00001944 	.word	0x00001944

0000164c <malloc>:
    164c:	e92d4800 	push	{fp, lr}
    1650:	e28db004 	add	fp, sp, #4
    1654:	e24dd018 	sub	sp, sp, #24
    1658:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    165c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1660:	e2833007 	add	r3, r3, #7
    1664:	e1a031a3 	lsr	r3, r3, #3
    1668:	e2833001 	add	r3, r3, #1
    166c:	e50b3010 	str	r3, [fp, #-16]
    1670:	e59f3134 	ldr	r3, [pc, #308]	@ 17ac <malloc+0x160>
    1674:	e5933000 	ldr	r3, [r3]
    1678:	e50b300c 	str	r3, [fp, #-12]
    167c:	e51b300c 	ldr	r3, [fp, #-12]
    1680:	e3530000 	cmp	r3, #0
    1684:	1a00000b 	bne	16b8 <malloc+0x6c>
    1688:	e59f3120 	ldr	r3, [pc, #288]	@ 17b0 <malloc+0x164>
    168c:	e50b300c 	str	r3, [fp, #-12]
    1690:	e59f2114 	ldr	r2, [pc, #276]	@ 17ac <malloc+0x160>
    1694:	e51b300c 	ldr	r3, [fp, #-12]
    1698:	e5823000 	str	r3, [r2]
    169c:	e59f3108 	ldr	r3, [pc, #264]	@ 17ac <malloc+0x160>
    16a0:	e5933000 	ldr	r3, [r3]
    16a4:	e59f2104 	ldr	r2, [pc, #260]	@ 17b0 <malloc+0x164>
    16a8:	e5823000 	str	r3, [r2]
    16ac:	e59f30fc 	ldr	r3, [pc, #252]	@ 17b0 <malloc+0x164>
    16b0:	e3a02000 	mov	r2, #0
    16b4:	e5832004 	str	r2, [r3, #4]
    16b8:	e51b300c 	ldr	r3, [fp, #-12]
    16bc:	e5933000 	ldr	r3, [r3]
    16c0:	e50b3008 	str	r3, [fp, #-8]
    16c4:	e51b3008 	ldr	r3, [fp, #-8]
    16c8:	e5933004 	ldr	r3, [r3, #4]
    16cc:	e51b2010 	ldr	r2, [fp, #-16]
    16d0:	e1520003 	cmp	r2, r3
    16d4:	8a00001e 	bhi	1754 <malloc+0x108>
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e5933004 	ldr	r3, [r3, #4]
    16e0:	e51b2010 	ldr	r2, [fp, #-16]
    16e4:	e1520003 	cmp	r2, r3
    16e8:	1a000004 	bne	1700 <malloc+0xb4>
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e5932000 	ldr	r2, [r3]
    16f4:	e51b300c 	ldr	r3, [fp, #-12]
    16f8:	e5832000 	str	r2, [r3]
    16fc:	ea00000e 	b	173c <malloc+0xf0>
    1700:	e51b3008 	ldr	r3, [fp, #-8]
    1704:	e5932004 	ldr	r2, [r3, #4]
    1708:	e51b3010 	ldr	r3, [fp, #-16]
    170c:	e0422003 	sub	r2, r2, r3
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5832004 	str	r2, [r3, #4]
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e5933004 	ldr	r3, [r3, #4]
    1720:	e1a03183 	lsl	r3, r3, #3
    1724:	e51b2008 	ldr	r2, [fp, #-8]
    1728:	e0823003 	add	r3, r2, r3
    172c:	e50b3008 	str	r3, [fp, #-8]
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e51b2010 	ldr	r2, [fp, #-16]
    1738:	e5832004 	str	r2, [r3, #4]
    173c:	e59f2068 	ldr	r2, [pc, #104]	@ 17ac <malloc+0x160>
    1740:	e51b300c 	ldr	r3, [fp, #-12]
    1744:	e5823000 	str	r3, [r2]
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e2833008 	add	r3, r3, #8
    1750:	ea000012 	b	17a0 <malloc+0x154>
    1754:	e59f3050 	ldr	r3, [pc, #80]	@ 17ac <malloc+0x160>
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e51b2008 	ldr	r2, [fp, #-8]
    1760:	e1520003 	cmp	r2, r3
    1764:	1a000007 	bne	1788 <malloc+0x13c>
    1768:	e51b0010 	ldr	r0, [fp, #-16]
    176c:	ebffff94 	bl	15c4 <morecore>
    1770:	e50b0008 	str	r0, [fp, #-8]
    1774:	e51b3008 	ldr	r3, [fp, #-8]
    1778:	e3530000 	cmp	r3, #0
    177c:	1a000001 	bne	1788 <malloc+0x13c>
    1780:	e3a03000 	mov	r3, #0
    1784:	ea000005 	b	17a0 <malloc+0x154>
    1788:	e51b3008 	ldr	r3, [fp, #-8]
    178c:	e50b300c 	str	r3, [fp, #-12]
    1790:	e51b3008 	ldr	r3, [fp, #-8]
    1794:	e5933000 	ldr	r3, [r3]
    1798:	e50b3008 	str	r3, [fp, #-8]
    179c:	eaffffc8 	b	16c4 <malloc+0x78>
    17a0:	e1a00003 	mov	r0, r3
    17a4:	e24bd004 	sub	sp, fp, #4
    17a8:	e8bd8800 	pop	{fp, pc}
    17ac:	00001944 	.word	0x00001944
    17b0:	0000193c 	.word	0x0000193c

000017b4 <__udivsi3>:
    17b4:	e2512001 	subs	r2, r1, #1
    17b8:	012fff1e 	bxeq	lr
    17bc:	3a000036 	bcc	189c <__udivsi3+0xe8>
    17c0:	e1500001 	cmp	r0, r1
    17c4:	9a000022 	bls	1854 <__udivsi3+0xa0>
    17c8:	e1110002 	tst	r1, r2
    17cc:	0a000023 	beq	1860 <__udivsi3+0xac>
    17d0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    17d4:	01a01181 	lsleq	r1, r1, #3
    17d8:	03a03008 	moveq	r3, #8
    17dc:	13a03001 	movne	r3, #1
    17e0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17e4:	31510000 	cmpcc	r1, r0
    17e8:	31a01201 	lslcc	r1, r1, #4
    17ec:	31a03203 	lslcc	r3, r3, #4
    17f0:	3afffffa 	bcc	17e0 <__udivsi3+0x2c>
    17f4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17f8:	31510000 	cmpcc	r1, r0
    17fc:	31a01081 	lslcc	r1, r1, #1
    1800:	31a03083 	lslcc	r3, r3, #1
    1804:	3afffffa 	bcc	17f4 <__udivsi3+0x40>
    1808:	e3a02000 	mov	r2, #0
    180c:	e1500001 	cmp	r0, r1
    1810:	20400001 	subcs	r0, r0, r1
    1814:	21822003 	orrcs	r2, r2, r3
    1818:	e15000a1 	cmp	r0, r1, lsr #1
    181c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1820:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1824:	e1500121 	cmp	r0, r1, lsr #2
    1828:	20400121 	subcs	r0, r0, r1, lsr #2
    182c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1830:	e15001a1 	cmp	r0, r1, lsr #3
    1834:	204001a1 	subcs	r0, r0, r1, lsr #3
    1838:	218221a3 	orrcs	r2, r2, r3, lsr #3
    183c:	e3500000 	cmp	r0, #0
    1840:	11b03223 	lsrsne	r3, r3, #4
    1844:	11a01221 	lsrne	r1, r1, #4
    1848:	1affffef 	bne	180c <__udivsi3+0x58>
    184c:	e1a00002 	mov	r0, r2
    1850:	e12fff1e 	bx	lr
    1854:	03a00001 	moveq	r0, #1
    1858:	13a00000 	movne	r0, #0
    185c:	e12fff1e 	bx	lr
    1860:	e3510801 	cmp	r1, #65536	@ 0x10000
    1864:	21a01821 	lsrcs	r1, r1, #16
    1868:	23a02010 	movcs	r2, #16
    186c:	33a02000 	movcc	r2, #0
    1870:	e3510c01 	cmp	r1, #256	@ 0x100
    1874:	21a01421 	lsrcs	r1, r1, #8
    1878:	22822008 	addcs	r2, r2, #8
    187c:	e3510010 	cmp	r1, #16
    1880:	21a01221 	lsrcs	r1, r1, #4
    1884:	22822004 	addcs	r2, r2, #4
    1888:	e3510004 	cmp	r1, #4
    188c:	82822003 	addhi	r2, r2, #3
    1890:	908220a1 	addls	r2, r2, r1, lsr #1
    1894:	e1a00230 	lsr	r0, r0, r2
    1898:	e12fff1e 	bx	lr
    189c:	e3500000 	cmp	r0, #0
    18a0:	13e00000 	mvnne	r0, #0
    18a4:	ea000007 	b	18c8 <__aeabi_idiv0>

000018a8 <__aeabi_uidivmod>:
    18a8:	e3510000 	cmp	r1, #0
    18ac:	0afffffa 	beq	189c <__udivsi3+0xe8>
    18b0:	e92d4003 	push	{r0, r1, lr}
    18b4:	ebffffbe 	bl	17b4 <__udivsi3>
    18b8:	e8bd4006 	pop	{r1, r2, lr}
    18bc:	e0030092 	mul	r3, r2, r0
    18c0:	e0411003 	sub	r1, r1, r3
    18c4:	e12fff1e 	bx	lr

000018c8 <__aeabi_idiv0>:
    18c8:	e12fff1e 	bx	lr
