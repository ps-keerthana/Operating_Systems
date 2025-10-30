
_t_l_cv1:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread2>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e1a00000 	nop			@ (mov r0, r0)
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e593300c 	ldr	r3, [r3, #12]
      24:	e5933000 	ldr	r3, [r3]
      28:	e3530000 	cmp	r3, #0
      2c:	0afffffa 	beq	1c <thread2+0x1c>
      30:	e59f1074 	ldr	r1, [pc, #116]	@ ac <thread2+0xac>
      34:	e3a00001 	mov	r0, #1
      38:	eb00048e 	bl	1278 <printf>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e5933004 	ldr	r3, [r3, #4]
      44:	e1a00003 	mov	r0, r3
      48:	eb00022c 	bl	900 <acquireLock>
      4c:	e59f105c 	ldr	r1, [pc, #92]	@ b0 <thread2+0xb0>
      50:	e3a00001 	mov	r0, #1
      54:	eb000487 	bl	1278 <printf>
      58:	e51b3008 	ldr	r3, [fp, #-8]
      5c:	e5933000 	ldr	r3, [r3]
      60:	e50b300c 	str	r3, [fp, #-12]
      64:	e51b300c 	ldr	r3, [fp, #-12]
      68:	e5933000 	ldr	r3, [r3]
      6c:	e2832001 	add	r2, r3, #1
      70:	e51b300c 	ldr	r3, [fp, #-12]
      74:	e5832000 	str	r2, [r3]
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e5933008 	ldr	r3, [r3, #8]
      80:	e1a00003 	mov	r0, r3
      84:	eb00026b 	bl	a38 <broadcast>
      88:	e51b3008 	ldr	r3, [fp, #-8]
      8c:	e5933004 	ldr	r3, [r3, #4]
      90:	e1a00003 	mov	r0, r3
      94:	eb00022d 	bl	950 <releaseLock>
      98:	eb0003c7 	bl	fbc <thread_exit>
      9c:	e3a03000 	mov	r3, #0
      a0:	e1a00003 	mov	r0, r3
      a4:	e24bd004 	sub	sp, fp, #4
      a8:	e8bd8800 	pop	{fp, pc}
      ac:	00001934 	.word	0x00001934
      b0:	00001948 	.word	0x00001948

000000b4 <main>:
      b4:	e92d4800 	push	{fp, lr}
      b8:	e28db004 	add	fp, sp, #4
      bc:	e24dd030 	sub	sp, sp, #48	@ 0x30
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e59f10b0 	ldr	r1, [pc, #176]	@ 180 <main+0xcc>
      cc:	e3a00001 	mov	r0, #1
      d0:	eb000468 	bl	1278 <printf>
      d4:	e3a0300a 	mov	r3, #10
      d8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e24b301c 	sub	r3, fp, #28
      e0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
      e4:	e24b300c 	sub	r3, fp, #12
      e8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
      ec:	e24b3014 	sub	r3, fp, #20
      f0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      f4:	e24b3018 	sub	r3, fp, #24
      f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      fc:	e24b300c 	sub	r3, fp, #12
     100:	e1a00003 	mov	r0, r3
     104:	eb0001ef 	bl	8c8 <initiateLock>
     108:	e24b3014 	sub	r3, fp, #20
     10c:	e1a00003 	mov	r0, r3
     110:	eb000221 	bl	99c <initiateCondVar>
     114:	e24b300c 	sub	r3, fp, #12
     118:	e1a00003 	mov	r0, r3
     11c:	eb0001f7 	bl	900 <acquireLock>
     120:	e24b202c 	sub	r2, fp, #44	@ 0x2c
     124:	e24b3030 	sub	r3, fp, #48	@ 0x30
     128:	e59f1054 	ldr	r1, [pc, #84]	@ 184 <main+0xd0>
     12c:	e1a00003 	mov	r0, r3
     130:	eb000398 	bl	f98 <thread_create>
     134:	e3a03001 	mov	r3, #1
     138:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     13c:	e24b200c 	sub	r2, fp, #12
     140:	e24b3014 	sub	r3, fp, #20
     144:	e1a01002 	mov	r1, r2
     148:	e1a00003 	mov	r0, r3
     14c:	eb000220 	bl	9d4 <condWait>
     150:	e24b300c 	sub	r3, fp, #12
     154:	e1a00003 	mov	r0, r3
     158:	eb0001fc 	bl	950 <releaseLock>
     15c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     160:	e1a00003 	mov	r0, r3
     164:	eb00039d 	bl	fe0 <thread_join>
     168:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     16c:	e1a02003 	mov	r2, r3
     170:	e59f1010 	ldr	r1, [pc, #16]	@ 188 <main+0xd4>
     174:	e3a00001 	mov	r0, #1
     178:	eb00043e 	bl	1278 <printf>
     17c:	eb0002a4 	bl	c14 <exit>
     180:	00001964 	.word	0x00001964
     184:	00000000 	.word	0x00000000
     188:	00001974 	.word	0x00001974

0000018c <pg_pte>:
     18c:	e92d4800 	push	{fp, lr}
     190:	e28db004 	add	fp, sp, #4
     194:	e24dd008 	sub	sp, sp, #8
     198:	e50b0008 	str	r0, [fp, #-8]
     19c:	e51b1008 	ldr	r1, [fp, #-8]
     1a0:	e3a0001a 	mov	r0, #26
     1a4:	eb0003d5 	bl	1100 <syscall>
     1a8:	e1a03000 	mov	r3, r0
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e24bd004 	sub	sp, fp, #4
     1b4:	e8bd8800 	pop	{fp, pc}

000001b8 <pg_pa>:
     1b8:	e92d4800 	push	{fp, lr}
     1bc:	e28db004 	add	fp, sp, #4
     1c0:	e24dd008 	sub	sp, sp, #8
     1c4:	e50b0008 	str	r0, [fp, #-8]
     1c8:	e51b1008 	ldr	r1, [fp, #-8]
     1cc:	e3a0001b 	mov	r0, #27
     1d0:	eb0003ca 	bl	1100 <syscall>
     1d4:	e1a03000 	mov	r3, r0
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e24bd004 	sub	sp, fp, #4
     1e0:	e8bd8800 	pop	{fp, pc}

000001e4 <pg_flags>:
     1e4:	e92d4800 	push	{fp, lr}
     1e8:	e28db004 	add	fp, sp, #4
     1ec:	e24dd008 	sub	sp, sp, #8
     1f0:	e50b0008 	str	r0, [fp, #-8]
     1f4:	e51b1008 	ldr	r1, [fp, #-8]
     1f8:	e3a0001c 	mov	r0, #28
     1fc:	eb0003bf 	bl	1100 <syscall>
     200:	e1a03000 	mov	r3, r0
     204:	e1a00003 	mov	r0, r3
     208:	e24bd004 	sub	sp, fp, #4
     20c:	e8bd8800 	pop	{fp, pc}

00000210 <kpt>:
     210:	e92d4800 	push	{fp, lr}
     214:	e28db004 	add	fp, sp, #4
     218:	e3a0001d 	mov	r0, #29
     21c:	eb0003b7 	bl	1100 <syscall>
     220:	e1a03000 	mov	r3, r0
     224:	e1a00003 	mov	r0, r3
     228:	e8bd8800 	pop	{fp, pc}

0000022c <ugetpid>:
     22c:	e92d4800 	push	{fp, lr}
     230:	e28db004 	add	fp, sp, #4
     234:	e3a0001e 	mov	r0, #30
     238:	eb0003b0 	bl	1100 <syscall>
     23c:	e1a03000 	mov	r3, r0
     240:	e1a00003 	mov	r0, r3
     244:	e8bd8800 	pop	{fp, pc}

00000248 <strcpy>:
     248:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     24c:	e28db000 	add	fp, sp, #0
     250:	e24dd014 	sub	sp, sp, #20
     254:	e50b0010 	str	r0, [fp, #-16]
     258:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     25c:	e51b3010 	ldr	r3, [fp, #-16]
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	e1a00000 	nop			@ (mov r0, r0)
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e2823001 	add	r3, r2, #1
     270:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     274:	e51b3010 	ldr	r3, [fp, #-16]
     278:	e2831001 	add	r1, r3, #1
     27c:	e50b1010 	str	r1, [fp, #-16]
     280:	e5d22000 	ldrb	r2, [r2]
     284:	e5c32000 	strb	r2, [r3]
     288:	e5d33000 	ldrb	r3, [r3]
     28c:	e3530000 	cmp	r3, #0
     290:	1afffff4 	bne	268 <strcpy+0x20>
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e1a00003 	mov	r0, r3
     29c:	e28bd000 	add	sp, fp, #0
     2a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a4:	e12fff1e 	bx	lr

000002a8 <strcmp>:
     2a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ac:	e28db000 	add	fp, sp, #0
     2b0:	e24dd00c 	sub	sp, sp, #12
     2b4:	e50b0008 	str	r0, [fp, #-8]
     2b8:	e50b100c 	str	r1, [fp, #-12]
     2bc:	ea000005 	b	2d8 <strcmp+0x30>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b300c 	ldr	r3, [fp, #-12]
     2d0:	e2833001 	add	r3, r3, #1
     2d4:	e50b300c 	str	r3, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	0a000005 	beq	300 <strcmp+0x58>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e5d32000 	ldrb	r2, [r3]
     2f0:	e51b300c 	ldr	r3, [fp, #-12]
     2f4:	e5d33000 	ldrb	r3, [r3]
     2f8:	e1520003 	cmp	r2, r3
     2fc:	0affffef 	beq	2c0 <strcmp+0x18>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e1a02003 	mov	r2, r3
     30c:	e51b300c 	ldr	r3, [fp, #-12]
     310:	e5d33000 	ldrb	r3, [r3]
     314:	e0423003 	sub	r3, r2, r3
     318:	e1a00003 	mov	r0, r3
     31c:	e28bd000 	add	sp, fp, #0
     320:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     324:	e12fff1e 	bx	lr

00000328 <strlen>:
     328:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     32c:	e28db000 	add	fp, sp, #0
     330:	e24dd014 	sub	sp, sp, #20
     334:	e50b0010 	str	r0, [fp, #-16]
     338:	e3a03000 	mov	r3, #0
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	ea000002 	b	350 <strlen+0x28>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2833001 	add	r3, r3, #1
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e51b2010 	ldr	r2, [fp, #-16]
     358:	e0823003 	add	r3, r2, r3
     35c:	e5d33000 	ldrb	r3, [r3]
     360:	e3530000 	cmp	r3, #0
     364:	1afffff6 	bne	344 <strlen+0x1c>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e1a00003 	mov	r0, r3
     370:	e28bd000 	add	sp, fp, #0
     374:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     378:	e12fff1e 	bx	lr

0000037c <memset>:
     37c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     380:	e28db000 	add	fp, sp, #0
     384:	e24dd024 	sub	sp, sp, #36	@ 0x24
     388:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     38c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     390:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3a0:	e54b300d 	strb	r3, [fp, #-13]
     3a4:	e55b200d 	ldrb	r2, [fp, #-13]
     3a8:	e1a03002 	mov	r3, r2
     3ac:	e1a03403 	lsl	r3, r3, #8
     3b0:	e0833002 	add	r3, r3, r2
     3b4:	e1a03803 	lsl	r3, r3, #16
     3b8:	e1a02003 	mov	r2, r3
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e1a03403 	lsl	r3, r3, #8
     3c4:	e1822003 	orr	r2, r2, r3
     3c8:	e55b300d 	ldrb	r3, [fp, #-13]
     3cc:	e1823003 	orr	r3, r2, r3
     3d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d4:	ea000008 	b	3fc <memset+0x80>
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e55b200d 	ldrb	r2, [fp, #-13]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e2433001 	sub	r3, r3, #1
     3ec:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e2833001 	add	r3, r3, #1
     3f8:	e50b3008 	str	r3, [fp, #-8]
     3fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     400:	e3530000 	cmp	r3, #0
     404:	0a000003 	beq	418 <memset+0x9c>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e2033003 	and	r3, r3, #3
     410:	e3530000 	cmp	r3, #0
     414:	1affffef 	bne	3d8 <memset+0x5c>
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e50b300c 	str	r3, [fp, #-12]
     420:	ea000008 	b	448 <memset+0xcc>
     424:	e51b300c 	ldr	r3, [fp, #-12]
     428:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     42c:	e5832000 	str	r2, [r3]
     430:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     434:	e2433004 	sub	r3, r3, #4
     438:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     43c:	e51b300c 	ldr	r3, [fp, #-12]
     440:	e2833004 	add	r3, r3, #4
     444:	e50b300c 	str	r3, [fp, #-12]
     448:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     44c:	e3530003 	cmp	r3, #3
     450:	8afffff3 	bhi	424 <memset+0xa8>
     454:	e51b300c 	ldr	r3, [fp, #-12]
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000008 	b	484 <memset+0x108>
     460:	e51b3008 	ldr	r3, [fp, #-8]
     464:	e55b200d 	ldrb	r2, [fp, #-13]
     468:	e5c32000 	strb	r2, [r3]
     46c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     470:	e2433001 	sub	r3, r3, #1
     474:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2833001 	add	r3, r3, #1
     480:	e50b3008 	str	r3, [fp, #-8]
     484:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     488:	e3530000 	cmp	r3, #0
     48c:	1afffff3 	bne	460 <memset+0xe4>
     490:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     494:	e1a00003 	mov	r0, r3
     498:	e28bd000 	add	sp, fp, #0
     49c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4a0:	e12fff1e 	bx	lr

000004a4 <strchr>:
     4a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a8:	e28db000 	add	fp, sp, #0
     4ac:	e24dd00c 	sub	sp, sp, #12
     4b0:	e50b0008 	str	r0, [fp, #-8]
     4b4:	e1a03001 	mov	r3, r1
     4b8:	e54b3009 	strb	r3, [fp, #-9]
     4bc:	ea000009 	b	4e8 <strchr+0x44>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e55b2009 	ldrb	r2, [fp, #-9]
     4cc:	e1520003 	cmp	r2, r3
     4d0:	1a000001 	bne	4dc <strchr+0x38>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	ea000007 	b	4fc <strchr+0x58>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e2833001 	add	r3, r3, #1
     4e4:	e50b3008 	str	r3, [fp, #-8]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e5d33000 	ldrb	r3, [r3]
     4f0:	e3530000 	cmp	r3, #0
     4f4:	1afffff1 	bne	4c0 <strchr+0x1c>
     4f8:	e3a03000 	mov	r3, #0
     4fc:	e1a00003 	mov	r0, r3
     500:	e28bd000 	add	sp, fp, #0
     504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     508:	e12fff1e 	bx	lr

0000050c <gets>:
     50c:	e92d4800 	push	{fp, lr}
     510:	e28db004 	add	fp, sp, #4
     514:	e24dd018 	sub	sp, sp, #24
     518:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     51c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     520:	e3a03000 	mov	r3, #0
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	ea000016 	b	588 <gets+0x7c>
     52c:	e24b300d 	sub	r3, fp, #13
     530:	e3a02001 	mov	r2, #1
     534:	e1a01003 	mov	r1, r3
     538:	e3a00000 	mov	r0, #0
     53c:	eb0001cf 	bl	c80 <read>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b300c 	ldr	r3, [fp, #-12]
     548:	e3530000 	cmp	r3, #0
     54c:	da000013 	ble	5a0 <gets+0x94>
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e2832001 	add	r2, r3, #1
     558:	e50b2008 	str	r2, [fp, #-8]
     55c:	e1a02003 	mov	r2, r3
     560:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     564:	e0833002 	add	r3, r3, r2
     568:	e55b200d 	ldrb	r2, [fp, #-13]
     56c:	e5c32000 	strb	r2, [r3]
     570:	e55b300d 	ldrb	r3, [fp, #-13]
     574:	e353000a 	cmp	r3, #10
     578:	0a000009 	beq	5a4 <gets+0x98>
     57c:	e55b300d 	ldrb	r3, [fp, #-13]
     580:	e353000d 	cmp	r3, #13
     584:	0a000006 	beq	5a4 <gets+0x98>
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e2833001 	add	r3, r3, #1
     590:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     594:	e1520003 	cmp	r2, r3
     598:	caffffe3 	bgt	52c <gets+0x20>
     59c:	ea000000 	b	5a4 <gets+0x98>
     5a0:	e1a00000 	nop			@ (mov r0, r0)
     5a4:	e51b3008 	ldr	r3, [fp, #-8]
     5a8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5ac:	e0823003 	add	r3, r2, r3
     5b0:	e3a02000 	mov	r2, #0
     5b4:	e5c32000 	strb	r2, [r3]
     5b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5bc:	e1a00003 	mov	r0, r3
     5c0:	e24bd004 	sub	sp, fp, #4
     5c4:	e8bd8800 	pop	{fp, pc}

000005c8 <stat>:
     5c8:	e92d4800 	push	{fp, lr}
     5cc:	e28db004 	add	fp, sp, #4
     5d0:	e24dd010 	sub	sp, sp, #16
     5d4:	e50b0010 	str	r0, [fp, #-16]
     5d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5dc:	e3a01000 	mov	r1, #0
     5e0:	e51b0010 	ldr	r0, [fp, #-16]
     5e4:	eb0001d2 	bl	d34 <open>
     5e8:	e50b0008 	str	r0, [fp, #-8]
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e3530000 	cmp	r3, #0
     5f4:	aa000001 	bge	600 <stat+0x38>
     5f8:	e3e03000 	mvn	r3, #0
     5fc:	ea000006 	b	61c <stat+0x54>
     600:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     604:	e51b0008 	ldr	r0, [fp, #-8]
     608:	eb0001e4 	bl	da0 <fstat>
     60c:	e50b000c 	str	r0, [fp, #-12]
     610:	e51b0008 	ldr	r0, [fp, #-8]
     614:	eb0001ab 	bl	cc8 <close>
     618:	e51b300c 	ldr	r3, [fp, #-12]
     61c:	e1a00003 	mov	r0, r3
     620:	e24bd004 	sub	sp, fp, #4
     624:	e8bd8800 	pop	{fp, pc}

00000628 <atoi>:
     628:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     62c:	e28db000 	add	fp, sp, #0
     630:	e24dd014 	sub	sp, sp, #20
     634:	e50b0010 	str	r0, [fp, #-16]
     638:	e3a03000 	mov	r3, #0
     63c:	e50b3008 	str	r3, [fp, #-8]
     640:	ea00000c 	b	678 <atoi+0x50>
     644:	e51b2008 	ldr	r2, [fp, #-8]
     648:	e1a03002 	mov	r3, r2
     64c:	e1a03103 	lsl	r3, r3, #2
     650:	e0833002 	add	r3, r3, r2
     654:	e1a03083 	lsl	r3, r3, #1
     658:	e1a01003 	mov	r1, r3
     65c:	e51b3010 	ldr	r3, [fp, #-16]
     660:	e2832001 	add	r2, r3, #1
     664:	e50b2010 	str	r2, [fp, #-16]
     668:	e5d33000 	ldrb	r3, [r3]
     66c:	e0813003 	add	r3, r1, r3
     670:	e2433030 	sub	r3, r3, #48	@ 0x30
     674:	e50b3008 	str	r3, [fp, #-8]
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e5d33000 	ldrb	r3, [r3]
     680:	e353002f 	cmp	r3, #47	@ 0x2f
     684:	9a000003 	bls	698 <atoi+0x70>
     688:	e51b3010 	ldr	r3, [fp, #-16]
     68c:	e5d33000 	ldrb	r3, [r3]
     690:	e3530039 	cmp	r3, #57	@ 0x39
     694:	9affffea 	bls	644 <atoi+0x1c>
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e1a00003 	mov	r0, r3
     6a0:	e28bd000 	add	sp, fp, #0
     6a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <memmove>:
     6ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6b0:	e28db000 	add	fp, sp, #0
     6b4:	e24dd01c 	sub	sp, sp, #28
     6b8:	e50b0010 	str	r0, [fp, #-16]
     6bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6c4:	e51b3010 	ldr	r3, [fp, #-16]
     6c8:	e50b3008 	str	r3, [fp, #-8]
     6cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6d0:	e50b300c 	str	r3, [fp, #-12]
     6d4:	ea000007 	b	6f8 <memmove+0x4c>
     6d8:	e51b200c 	ldr	r2, [fp, #-12]
     6dc:	e2823001 	add	r3, r2, #1
     6e0:	e50b300c 	str	r3, [fp, #-12]
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2831001 	add	r1, r3, #1
     6ec:	e50b1008 	str	r1, [fp, #-8]
     6f0:	e5d22000 	ldrb	r2, [r2]
     6f4:	e5c32000 	strb	r2, [r3]
     6f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6fc:	e2432001 	sub	r2, r3, #1
     700:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     704:	e3530000 	cmp	r3, #0
     708:	cafffff2 	bgt	6d8 <memmove+0x2c>
     70c:	e51b3010 	ldr	r3, [fp, #-16]
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <strncmp>:
     720:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     724:	e28db000 	add	fp, sp, #0
     728:	e24dd014 	sub	sp, sp, #20
     72c:	e50b0008 	str	r0, [fp, #-8]
     730:	e50b100c 	str	r1, [fp, #-12]
     734:	e50b2010 	str	r2, [fp, #-16]
     738:	ea000008 	b	760 <strncmp+0x40>
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e2833001 	add	r3, r3, #1
     744:	e50b3008 	str	r3, [fp, #-8]
     748:	e51b300c 	ldr	r3, [fp, #-12]
     74c:	e2833001 	add	r3, r3, #1
     750:	e50b300c 	str	r3, [fp, #-12]
     754:	e51b3010 	ldr	r3, [fp, #-16]
     758:	e2433001 	sub	r3, r3, #1
     75c:	e50b3010 	str	r3, [fp, #-16]
     760:	e51b3010 	ldr	r3, [fp, #-16]
     764:	e3530000 	cmp	r3, #0
     768:	da00000d 	ble	7a4 <strncmp+0x84>
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e5d33000 	ldrb	r3, [r3]
     774:	e3530000 	cmp	r3, #0
     778:	0a000009 	beq	7a4 <strncmp+0x84>
     77c:	e51b300c 	ldr	r3, [fp, #-12]
     780:	e5d33000 	ldrb	r3, [r3]
     784:	e3530000 	cmp	r3, #0
     788:	0a000005 	beq	7a4 <strncmp+0x84>
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e5d32000 	ldrb	r2, [r3]
     794:	e51b300c 	ldr	r3, [fp, #-12]
     798:	e5d33000 	ldrb	r3, [r3]
     79c:	e1520003 	cmp	r2, r3
     7a0:	0affffe5 	beq	73c <strncmp+0x1c>
     7a4:	e51b3010 	ldr	r3, [fp, #-16]
     7a8:	e3530000 	cmp	r3, #0
     7ac:	1a000001 	bne	7b8 <strncmp+0x98>
     7b0:	e3a03000 	mov	r3, #0
     7b4:	ea000005 	b	7d0 <strncmp+0xb0>
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e5d33000 	ldrb	r3, [r3]
     7c0:	e1a02003 	mov	r2, r3
     7c4:	e51b300c 	ldr	r3, [fp, #-12]
     7c8:	e5d33000 	ldrb	r3, [r3]
     7cc:	e0423003 	sub	r3, r2, r3
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e28bd000 	add	sp, fp, #0
     7d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <strncpy>:
     7e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7e4:	e28db000 	add	fp, sp, #0
     7e8:	e24dd01c 	sub	sp, sp, #28
     7ec:	e50b0010 	str	r0, [fp, #-16]
     7f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7f8:	e51b3010 	ldr	r3, [fp, #-16]
     7fc:	e50b3008 	str	r3, [fp, #-8]
     800:	ea00000a 	b	830 <strncpy+0x50>
     804:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     808:	e2823001 	add	r3, r2, #1
     80c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e2831001 	add	r1, r3, #1
     818:	e50b1008 	str	r1, [fp, #-8]
     81c:	e5d22000 	ldrb	r2, [r2]
     820:	e5c32000 	strb	r2, [r3]
     824:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     828:	e2433001 	sub	r3, r3, #1
     82c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     830:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     834:	e3530000 	cmp	r3, #0
     838:	da00000c 	ble	870 <strncpy+0x90>
     83c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     840:	e5d33000 	ldrb	r3, [r3]
     844:	e3530000 	cmp	r3, #0
     848:	1affffed 	bne	804 <strncpy+0x24>
     84c:	ea000007 	b	870 <strncpy+0x90>
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e2832001 	add	r2, r3, #1
     858:	e50b2008 	str	r2, [fp, #-8]
     85c:	e3a02000 	mov	r2, #0
     860:	e5c32000 	strb	r2, [r3]
     864:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     868:	e2433001 	sub	r3, r3, #1
     86c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     870:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     874:	e3530000 	cmp	r3, #0
     878:	cafffff4 	bgt	850 <strncpy+0x70>
     87c:	e51b3010 	ldr	r3, [fp, #-16]
     880:	e1a00003 	mov	r0, r3
     884:	e28bd000 	add	sp, fp, #0
     888:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <xchg>:
     890:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     894:	e28db000 	add	fp, sp, #0
     898:	e24dd014 	sub	sp, sp, #20
     89c:	e50b0010 	str	r0, [fp, #-16]
     8a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8a4:	e51b2010 	ldr	r2, [fp, #-16]
     8a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8ac:	e1023091 	swp	r3, r1, [r2]
     8b0:	e50b3008 	str	r3, [fp, #-8]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e1a00003 	mov	r0, r3
     8bc:	e28bd000 	add	sp, fp, #0
     8c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <initiateLock>:
     8c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8cc:	e28db000 	add	fp, sp, #0
     8d0:	e24dd00c 	sub	sp, sp, #12
     8d4:	e50b0008 	str	r0, [fp, #-8]
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e3a02000 	mov	r2, #0
     8e0:	e5832000 	str	r2, [r3]
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e3a02001 	mov	r2, #1
     8ec:	e5832004 	str	r2, [r3, #4]
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e28bd000 	add	sp, fp, #0
     8f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <acquireLock>:
     900:	e92d4800 	push	{fp, lr}
     904:	e28db004 	add	fp, sp, #4
     908:	e24dd008 	sub	sp, sp, #8
     90c:	e50b0008 	str	r0, [fp, #-8]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5933004 	ldr	r3, [r3, #4]
     918:	e3530000 	cmp	r3, #0
     91c:	0a000008 	beq	944 <acquireLock+0x44>
     920:	e1a00000 	nop			@ (mov r0, r0)
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e3a01001 	mov	r1, #1
     92c:	e1a00003 	mov	r0, r3
     930:	ebffffd6 	bl	890 <xchg>
     934:	e1a03000 	mov	r3, r0
     938:	e3530000 	cmp	r3, #0
     93c:	1afffff8 	bne	924 <acquireLock+0x24>
     940:	ea000000 	b	948 <acquireLock+0x48>
     944:	e1a00000 	nop			@ (mov r0, r0)
     948:	e24bd004 	sub	sp, fp, #4
     94c:	e8bd8800 	pop	{fp, pc}

00000950 <releaseLock>:
     950:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     954:	e28db000 	add	fp, sp, #0
     958:	e24dd00c 	sub	sp, sp, #12
     95c:	e50b0008 	str	r0, [fp, #-8]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5933004 	ldr	r3, [r3, #4]
     968:	e3530000 	cmp	r3, #0
     96c:	0a000006 	beq	98c <releaseLock+0x3c>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933000 	ldr	r3, [r3]
     978:	e3530001 	cmp	r3, #1
     97c:	1a000002 	bne	98c <releaseLock+0x3c>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e3a02000 	mov	r2, #0
     988:	e5832000 	str	r2, [r3]
     98c:	e1a00000 	nop			@ (mov r0, r0)
     990:	e28bd000 	add	sp, fp, #0
     994:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <initiateCondVar>:
     99c:	e92d4800 	push	{fp, lr}
     9a0:	e28db004 	add	fp, sp, #4
     9a4:	e24dd008 	sub	sp, sp, #8
     9a8:	e50b0008 	str	r0, [fp, #-8]
     9ac:	eb0001b8 	bl	1094 <getChannel>
     9b0:	e1a02000 	mov	r2, r0
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5832000 	str	r2, [r3]
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e3a02001 	mov	r2, #1
     9c4:	e5832004 	str	r2, [r3, #4]
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e24bd004 	sub	sp, fp, #4
     9d0:	e8bd8800 	pop	{fp, pc}

000009d4 <condWait>:
     9d4:	e92d4800 	push	{fp, lr}
     9d8:	e28db004 	add	fp, sp, #4
     9dc:	e24dd008 	sub	sp, sp, #8
     9e0:	e50b0008 	str	r0, [fp, #-8]
     9e4:	e50b100c 	str	r1, [fp, #-12]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e5933004 	ldr	r3, [r3, #4]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	0a00000c 	beq	a2c <condWait+0x58>
     9f8:	e51b300c 	ldr	r3, [fp, #-12]
     9fc:	e5933004 	ldr	r3, [r3, #4]
     a00:	e3530000 	cmp	r3, #0
     a04:	0a000008 	beq	a2c <condWait+0x58>
     a08:	e51b000c 	ldr	r0, [fp, #-12]
     a0c:	ebffffcf 	bl	950 <releaseLock>
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e5933000 	ldr	r3, [r3]
     a18:	e1a00003 	mov	r0, r3
     a1c:	eb000193 	bl	1070 <sleepChan>
     a20:	e51b000c 	ldr	r0, [fp, #-12]
     a24:	ebffffb5 	bl	900 <acquireLock>
     a28:	ea000000 	b	a30 <condWait+0x5c>
     a2c:	e1a00000 	nop			@ (mov r0, r0)
     a30:	e24bd004 	sub	sp, fp, #4
     a34:	e8bd8800 	pop	{fp, pc}

00000a38 <broadcast>:
     a38:	e92d4800 	push	{fp, lr}
     a3c:	e28db004 	add	fp, sp, #4
     a40:	e24dd008 	sub	sp, sp, #8
     a44:	e50b0008 	str	r0, [fp, #-8]
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e5933004 	ldr	r3, [r3, #4]
     a50:	e3530000 	cmp	r3, #0
     a54:	0a000004 	beq	a6c <broadcast+0x34>
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e5933000 	ldr	r3, [r3]
     a60:	e1a00003 	mov	r0, r3
     a64:	eb000193 	bl	10b8 <sigChan>
     a68:	ea000000 	b	a70 <broadcast+0x38>
     a6c:	e1a00000 	nop			@ (mov r0, r0)
     a70:	e24bd004 	sub	sp, fp, #4
     a74:	e8bd8800 	pop	{fp, pc}

00000a78 <signal>:
     a78:	e92d4800 	push	{fp, lr}
     a7c:	e28db004 	add	fp, sp, #4
     a80:	e24dd008 	sub	sp, sp, #8
     a84:	e50b0008 	str	r0, [fp, #-8]
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5933004 	ldr	r3, [r3, #4]
     a90:	e3530000 	cmp	r3, #0
     a94:	0a000004 	beq	aac <signal+0x34>
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e5933000 	ldr	r3, [r3]
     aa0:	e1a00003 	mov	r0, r3
     aa4:	eb00018c 	bl	10dc <sigOneChan>
     aa8:	ea000000 	b	ab0 <signal+0x38>
     aac:	e1a00000 	nop			@ (mov r0, r0)
     ab0:	e24bd004 	sub	sp, fp, #4
     ab4:	e8bd8800 	pop	{fp, pc}

00000ab8 <semInit>:
     ab8:	e92d4800 	push	{fp, lr}
     abc:	e28db004 	add	fp, sp, #4
     ac0:	e24dd008 	sub	sp, sp, #8
     ac4:	e50b0008 	str	r0, [fp, #-8]
     ac8:	e50b100c 	str	r1, [fp, #-12]
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e2833004 	add	r3, r3, #4
     ad4:	e1a00003 	mov	r0, r3
     ad8:	ebffff7a 	bl	8c8 <initiateLock>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e283300c 	add	r3, r3, #12
     ae4:	e1a00003 	mov	r0, r3
     ae8:	ebffffab 	bl	99c <initiateCondVar>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e51b200c 	ldr	r2, [fp, #-12]
     af4:	e5832000 	str	r2, [r3]
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e3a02001 	mov	r2, #1
     b00:	e5832014 	str	r2, [r3, #20]
     b04:	e1a00000 	nop			@ (mov r0, r0)
     b08:	e24bd004 	sub	sp, fp, #4
     b0c:	e8bd8800 	pop	{fp, pc}

00000b10 <semUp>:
     b10:	e92d4800 	push	{fp, lr}
     b14:	e28db004 	add	fp, sp, #4
     b18:	e24dd008 	sub	sp, sp, #8
     b1c:	e50b0008 	str	r0, [fp, #-8]
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e2833004 	add	r3, r3, #4
     b28:	e1a00003 	mov	r0, r3
     b2c:	ebffff73 	bl	900 <acquireLock>
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e2832001 	add	r2, r3, #1
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e5832000 	str	r2, [r3]
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e283300c 	add	r3, r3, #12
     b4c:	e1a00003 	mov	r0, r3
     b50:	ebffffc8 	bl	a78 <signal>
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e1a00003 	mov	r0, r3
     b60:	ebffff7a 	bl	950 <releaseLock>
     b64:	e1a00000 	nop			@ (mov r0, r0)
     b68:	e24bd004 	sub	sp, fp, #4
     b6c:	e8bd8800 	pop	{fp, pc}

00000b70 <semDown>:
     b70:	e92d4800 	push	{fp, lr}
     b74:	e28db004 	add	fp, sp, #4
     b78:	e24dd008 	sub	sp, sp, #8
     b7c:	e50b0008 	str	r0, [fp, #-8]
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e2833004 	add	r3, r3, #4
     b88:	e1a00003 	mov	r0, r3
     b8c:	ebffff5b 	bl	900 <acquireLock>
     b90:	e51b3008 	ldr	r3, [fp, #-8]
     b94:	e5933000 	ldr	r3, [r3]
     b98:	e2432001 	sub	r2, r3, #1
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e5832000 	str	r2, [r3]
     ba4:	ea000006 	b	bc4 <semDown+0x54>
     ba8:	e51b3008 	ldr	r3, [fp, #-8]
     bac:	e283200c 	add	r2, r3, #12
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e2833004 	add	r3, r3, #4
     bb8:	e1a01003 	mov	r1, r3
     bbc:	e1a00002 	mov	r0, r2
     bc0:	ebffff83 	bl	9d4 <condWait>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e3530000 	cmp	r3, #0
     bd0:	bafffff4 	blt	ba8 <semDown+0x38>
     bd4:	e51b3008 	ldr	r3, [fp, #-8]
     bd8:	e2833004 	add	r3, r3, #4
     bdc:	e1a00003 	mov	r0, r3
     be0:	ebffff5a 	bl	950 <releaseLock>
     be4:	e1a00000 	nop			@ (mov r0, r0)
     be8:	e24bd004 	sub	sp, fp, #4
     bec:	e8bd8800 	pop	{fp, pc}

00000bf0 <fork>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00001 	mov	r0, #1
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <exit>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00002 	mov	r0, #2
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <wait>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00003 	mov	r0, #3
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <pipe>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00004 	mov	r0, #4
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <read>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00005 	mov	r0, #5
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <write>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a00010 	mov	r0, #16
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <close>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a00015 	mov	r0, #21
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <kill>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a00006 	mov	r0, #6
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <exec>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a00007 	mov	r0, #7
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <open>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0000f 	mov	r0, #15
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <mknod>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00011 	mov	r0, #17
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <unlink>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00012 	mov	r0, #18
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <fstat>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00008 	mov	r0, #8
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <link>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a00013 	mov	r0, #19
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <mkdir>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a00014 	mov	r0, #20
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <chdir>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a00009 	mov	r0, #9
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <dup>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a0000a 	mov	r0, #10
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <getpid>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a0000b 	mov	r0, #11
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <sbrk>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a0000c 	mov	r0, #12
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <sleep>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a0000d 	mov	r0, #13
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <uptime>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a0000e 	mov	r0, #14
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <proclist>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a00016 	mov	r0, #22
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <settickets>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00017 	mov	r0, #23
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <srand>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00018 	mov	r0, #24
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <getpinfo>:
     f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f54:	e1a04003 	mov	r4, r3
     f58:	e1a03002 	mov	r3, r2
     f5c:	e1a02001 	mov	r2, r1
     f60:	e1a01000 	mov	r1, r0
     f64:	e3a00019 	mov	r0, #25
     f68:	ef000000 	svc	0x00000000
     f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f70:	e12fff1e 	bx	lr

00000f74 <print_pt>:
     f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f78:	e1a04003 	mov	r4, r3
     f7c:	e1a03002 	mov	r3, r2
     f80:	e1a02001 	mov	r2, r1
     f84:	e1a01000 	mov	r1, r0
     f88:	e3a0001f 	mov	r0, #31
     f8c:	ef000000 	svc	0x00000000
     f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f94:	e12fff1e 	bx	lr

00000f98 <thread_create>:
     f98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f9c:	e1a04003 	mov	r4, r3
     fa0:	e1a03002 	mov	r3, r2
     fa4:	e1a02001 	mov	r2, r1
     fa8:	e1a01000 	mov	r1, r0
     fac:	e3a00020 	mov	r0, #32
     fb0:	ef000000 	svc	0x00000000
     fb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb8:	e12fff1e 	bx	lr

00000fbc <thread_exit>:
     fbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fc0:	e1a04003 	mov	r4, r3
     fc4:	e1a03002 	mov	r3, r2
     fc8:	e1a02001 	mov	r2, r1
     fcc:	e1a01000 	mov	r1, r0
     fd0:	e3a00021 	mov	r0, #33	@ 0x21
     fd4:	ef000000 	svc	0x00000000
     fd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fdc:	e12fff1e 	bx	lr

00000fe0 <thread_join>:
     fe0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe4:	e1a04003 	mov	r4, r3
     fe8:	e1a03002 	mov	r3, r2
     fec:	e1a02001 	mov	r2, r1
     ff0:	e1a01000 	mov	r1, r0
     ff4:	e3a00022 	mov	r0, #34	@ 0x22
     ff8:	ef000000 	svc	0x00000000
     ffc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1000:	e12fff1e 	bx	lr

00001004 <waitpid>:
    1004:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1008:	e1a04003 	mov	r4, r3
    100c:	e1a03002 	mov	r3, r2
    1010:	e1a02001 	mov	r2, r1
    1014:	e1a01000 	mov	r1, r0
    1018:	e3a00023 	mov	r0, #35	@ 0x23
    101c:	ef000000 	svc	0x00000000
    1020:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1024:	e12fff1e 	bx	lr

00001028 <barrier_init>:
    1028:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    102c:	e1a04003 	mov	r4, r3
    1030:	e1a03002 	mov	r3, r2
    1034:	e1a02001 	mov	r2, r1
    1038:	e1a01000 	mov	r1, r0
    103c:	e3a00024 	mov	r0, #36	@ 0x24
    1040:	ef000000 	svc	0x00000000
    1044:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1048:	e12fff1e 	bx	lr

0000104c <barrier_check>:
    104c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1050:	e1a04003 	mov	r4, r3
    1054:	e1a03002 	mov	r3, r2
    1058:	e1a02001 	mov	r2, r1
    105c:	e1a01000 	mov	r1, r0
    1060:	e3a00025 	mov	r0, #37	@ 0x25
    1064:	ef000000 	svc	0x00000000
    1068:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    106c:	e12fff1e 	bx	lr

00001070 <sleepChan>:
    1070:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1074:	e1a04003 	mov	r4, r3
    1078:	e1a03002 	mov	r3, r2
    107c:	e1a02001 	mov	r2, r1
    1080:	e1a01000 	mov	r1, r0
    1084:	e3a00026 	mov	r0, #38	@ 0x26
    1088:	ef000000 	svc	0x00000000
    108c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1090:	e12fff1e 	bx	lr

00001094 <getChannel>:
    1094:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1098:	e1a04003 	mov	r4, r3
    109c:	e1a03002 	mov	r3, r2
    10a0:	e1a02001 	mov	r2, r1
    10a4:	e1a01000 	mov	r1, r0
    10a8:	e3a00027 	mov	r0, #39	@ 0x27
    10ac:	ef000000 	svc	0x00000000
    10b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b4:	e12fff1e 	bx	lr

000010b8 <sigChan>:
    10b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10bc:	e1a04003 	mov	r4, r3
    10c0:	e1a03002 	mov	r3, r2
    10c4:	e1a02001 	mov	r2, r1
    10c8:	e1a01000 	mov	r1, r0
    10cc:	e3a00028 	mov	r0, #40	@ 0x28
    10d0:	ef000000 	svc	0x00000000
    10d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10d8:	e12fff1e 	bx	lr

000010dc <sigOneChan>:
    10dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10e0:	e1a04003 	mov	r4, r3
    10e4:	e1a03002 	mov	r3, r2
    10e8:	e1a02001 	mov	r2, r1
    10ec:	e1a01000 	mov	r1, r0
    10f0:	e3a00029 	mov	r0, #41	@ 0x29
    10f4:	ef000000 	svc	0x00000000
    10f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10fc:	e12fff1e 	bx	lr

00001100 <syscall>:
    1100:	ef000000 	svc	0x00000000
    1104:	e12fff1e 	bx	lr

00001108 <putc>:
    1108:	e92d4800 	push	{fp, lr}
    110c:	e28db004 	add	fp, sp, #4
    1110:	e24dd008 	sub	sp, sp, #8
    1114:	e50b0008 	str	r0, [fp, #-8]
    1118:	e1a03001 	mov	r3, r1
    111c:	e54b3009 	strb	r3, [fp, #-9]
    1120:	e24b3009 	sub	r3, fp, #9
    1124:	e3a02001 	mov	r2, #1
    1128:	e1a01003 	mov	r1, r3
    112c:	e51b0008 	ldr	r0, [fp, #-8]
    1130:	ebfffedb 	bl	ca4 <write>
    1134:	e1a00000 	nop			@ (mov r0, r0)
    1138:	e24bd004 	sub	sp, fp, #4
    113c:	e8bd8800 	pop	{fp, pc}

00001140 <printint>:
    1140:	e92d4800 	push	{fp, lr}
    1144:	e28db004 	add	fp, sp, #4
    1148:	e24dd030 	sub	sp, sp, #48	@ 0x30
    114c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1150:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1154:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1158:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    115c:	e3a03000 	mov	r3, #0
    1160:	e50b300c 	str	r3, [fp, #-12]
    1164:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1168:	e3530000 	cmp	r3, #0
    116c:	0a000008 	beq	1194 <printint+0x54>
    1170:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1174:	e3530000 	cmp	r3, #0
    1178:	aa000005 	bge	1194 <printint+0x54>
    117c:	e3a03001 	mov	r3, #1
    1180:	e50b300c 	str	r3, [fp, #-12]
    1184:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1188:	e2633000 	rsb	r3, r3, #0
    118c:	e50b3010 	str	r3, [fp, #-16]
    1190:	ea000001 	b	119c <printint+0x5c>
    1194:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1198:	e50b3010 	str	r3, [fp, #-16]
    119c:	e3a03000 	mov	r3, #0
    11a0:	e50b3008 	str	r3, [fp, #-8]
    11a4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    11a8:	e51b3010 	ldr	r3, [fp, #-16]
    11ac:	e1a01002 	mov	r1, r2
    11b0:	e1a00003 	mov	r0, r3
    11b4:	eb0001d5 	bl	1910 <__aeabi_uidivmod>
    11b8:	e1a03001 	mov	r3, r1
    11bc:	e1a01003 	mov	r1, r3
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e2832001 	add	r2, r3, #1
    11c8:	e50b2008 	str	r2, [fp, #-8]
    11cc:	e59f20a0 	ldr	r2, [pc, #160]	@ 1274 <printint+0x134>
    11d0:	e7d22001 	ldrb	r2, [r2, r1]
    11d4:	e2433004 	sub	r3, r3, #4
    11d8:	e083300b 	add	r3, r3, fp
    11dc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11e0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e51b0010 	ldr	r0, [fp, #-16]
    11ec:	eb00018a 	bl	181c <__udivsi3>
    11f0:	e1a03000 	mov	r3, r0
    11f4:	e50b3010 	str	r3, [fp, #-16]
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e3530000 	cmp	r3, #0
    1200:	1affffe7 	bne	11a4 <printint+0x64>
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e3530000 	cmp	r3, #0
    120c:	0a00000e 	beq	124c <printint+0x10c>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e2832001 	add	r2, r3, #1
    1218:	e50b2008 	str	r2, [fp, #-8]
    121c:	e2433004 	sub	r3, r3, #4
    1220:	e083300b 	add	r3, r3, fp
    1224:	e3a0202d 	mov	r2, #45	@ 0x2d
    1228:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    122c:	ea000006 	b	124c <printint+0x10c>
    1230:	e24b2020 	sub	r2, fp, #32
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e0823003 	add	r3, r2, r3
    123c:	e5d33000 	ldrb	r3, [r3]
    1240:	e1a01003 	mov	r1, r3
    1244:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1248:	ebffffae 	bl	1108 <putc>
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e2433001 	sub	r3, r3, #1
    1254:	e50b3008 	str	r3, [fp, #-8]
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e3530000 	cmp	r3, #0
    1260:	aafffff2 	bge	1230 <printint+0xf0>
    1264:	e1a00000 	nop			@ (mov r0, r0)
    1268:	e1a00000 	nop			@ (mov r0, r0)
    126c:	e24bd004 	sub	sp, fp, #4
    1270:	e8bd8800 	pop	{fp, pc}
    1274:	00001990 	.word	0x00001990

00001278 <printf>:
    1278:	e92d000e 	push	{r1, r2, r3}
    127c:	e92d4800 	push	{fp, lr}
    1280:	e28db004 	add	fp, sp, #4
    1284:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1288:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    128c:	e3a03000 	mov	r3, #0
    1290:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1294:	e28b3008 	add	r3, fp, #8
    1298:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    129c:	e3a03000 	mov	r3, #0
    12a0:	e50b3010 	str	r3, [fp, #-16]
    12a4:	ea000074 	b	147c <printf+0x204>
    12a8:	e59b2004 	ldr	r2, [fp, #4]
    12ac:	e51b3010 	ldr	r3, [fp, #-16]
    12b0:	e0823003 	add	r3, r2, r3
    12b4:	e5d33000 	ldrb	r3, [r3]
    12b8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12c0:	e3530000 	cmp	r3, #0
    12c4:	1a00000b 	bne	12f8 <printf+0x80>
    12c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12cc:	e3530025 	cmp	r3, #37	@ 0x25
    12d0:	1a000002 	bne	12e0 <printf+0x68>
    12d4:	e3a03025 	mov	r3, #37	@ 0x25
    12d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12dc:	ea000063 	b	1470 <printf+0x1f8>
    12e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e4:	e6ef3073 	uxtb	r3, r3
    12e8:	e1a01003 	mov	r1, r3
    12ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f0:	ebffff84 	bl	1108 <putc>
    12f4:	ea00005d 	b	1470 <printf+0x1f8>
    12f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12fc:	e3530025 	cmp	r3, #37	@ 0x25
    1300:	1a00005a 	bne	1470 <printf+0x1f8>
    1304:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1308:	e3530064 	cmp	r3, #100	@ 0x64
    130c:	1a00000a 	bne	133c <printf+0xc4>
    1310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e1a01003 	mov	r1, r3
    131c:	e3a03001 	mov	r3, #1
    1320:	e3a0200a 	mov	r2, #10
    1324:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1328:	ebffff84 	bl	1140 <printint>
    132c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1330:	e2833004 	add	r3, r3, #4
    1334:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1338:	ea00004a 	b	1468 <printf+0x1f0>
    133c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1340:	e3530078 	cmp	r3, #120	@ 0x78
    1344:	0a000002 	beq	1354 <printf+0xdc>
    1348:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    134c:	e3530070 	cmp	r3, #112	@ 0x70
    1350:	1a00000a 	bne	1380 <printf+0x108>
    1354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1358:	e5933000 	ldr	r3, [r3]
    135c:	e1a01003 	mov	r1, r3
    1360:	e3a03000 	mov	r3, #0
    1364:	e3a02010 	mov	r2, #16
    1368:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    136c:	ebffff73 	bl	1140 <printint>
    1370:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1374:	e2833004 	add	r3, r3, #4
    1378:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    137c:	ea000039 	b	1468 <printf+0x1f0>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e3530073 	cmp	r3, #115	@ 0x73
    1388:	1a000018 	bne	13f0 <printf+0x178>
    138c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1390:	e5933000 	ldr	r3, [r3]
    1394:	e50b300c 	str	r3, [fp, #-12]
    1398:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    139c:	e2833004 	add	r3, r3, #4
    13a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e3530000 	cmp	r3, #0
    13ac:	1a00000a 	bne	13dc <printf+0x164>
    13b0:	e59f30f4 	ldr	r3, [pc, #244]	@ 14ac <printf+0x234>
    13b4:	e50b300c 	str	r3, [fp, #-12]
    13b8:	ea000007 	b	13dc <printf+0x164>
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e5d33000 	ldrb	r3, [r3]
    13c4:	e1a01003 	mov	r1, r3
    13c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13cc:	ebffff4d 	bl	1108 <putc>
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e2833001 	add	r3, r3, #1
    13d8:	e50b300c 	str	r3, [fp, #-12]
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e5d33000 	ldrb	r3, [r3]
    13e4:	e3530000 	cmp	r3, #0
    13e8:	1afffff3 	bne	13bc <printf+0x144>
    13ec:	ea00001d 	b	1468 <printf+0x1f0>
    13f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f4:	e3530063 	cmp	r3, #99	@ 0x63
    13f8:	1a000009 	bne	1424 <printf+0x1ac>
    13fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e6ef3073 	uxtb	r3, r3
    1408:	e1a01003 	mov	r1, r3
    140c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1410:	ebffff3c 	bl	1108 <putc>
    1414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1418:	e2833004 	add	r3, r3, #4
    141c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1420:	ea000010 	b	1468 <printf+0x1f0>
    1424:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1428:	e3530025 	cmp	r3, #37	@ 0x25
    142c:	1a000005 	bne	1448 <printf+0x1d0>
    1430:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1434:	e6ef3073 	uxtb	r3, r3
    1438:	e1a01003 	mov	r1, r3
    143c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1440:	ebffff30 	bl	1108 <putc>
    1444:	ea000007 	b	1468 <printf+0x1f0>
    1448:	e3a01025 	mov	r1, #37	@ 0x25
    144c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1450:	ebffff2c 	bl	1108 <putc>
    1454:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1458:	e6ef3073 	uxtb	r3, r3
    145c:	e1a01003 	mov	r1, r3
    1460:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1464:	ebffff27 	bl	1108 <putc>
    1468:	e3a03000 	mov	r3, #0
    146c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1470:	e51b3010 	ldr	r3, [fp, #-16]
    1474:	e2833001 	add	r3, r3, #1
    1478:	e50b3010 	str	r3, [fp, #-16]
    147c:	e59b2004 	ldr	r2, [fp, #4]
    1480:	e51b3010 	ldr	r3, [fp, #-16]
    1484:	e0823003 	add	r3, r2, r3
    1488:	e5d33000 	ldrb	r3, [r3]
    148c:	e3530000 	cmp	r3, #0
    1490:	1affff84 	bne	12a8 <printf+0x30>
    1494:	e1a00000 	nop			@ (mov r0, r0)
    1498:	e1a00000 	nop			@ (mov r0, r0)
    149c:	e24bd004 	sub	sp, fp, #4
    14a0:	e8bd4800 	pop	{fp, lr}
    14a4:	e28dd00c 	add	sp, sp, #12
    14a8:	e12fff1e 	bx	lr
    14ac:	00001988 	.word	0x00001988

000014b0 <free>:
    14b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14b4:	e28db000 	add	fp, sp, #0
    14b8:	e24dd014 	sub	sp, sp, #20
    14bc:	e50b0010 	str	r0, [fp, #-16]
    14c0:	e51b3010 	ldr	r3, [fp, #-16]
    14c4:	e2433008 	sub	r3, r3, #8
    14c8:	e50b300c 	str	r3, [fp, #-12]
    14cc:	e59f3154 	ldr	r3, [pc, #340]	@ 1628 <free+0x178>
    14d0:	e5933000 	ldr	r3, [r3]
    14d4:	e50b3008 	str	r3, [fp, #-8]
    14d8:	ea000010 	b	1520 <free+0x70>
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5933000 	ldr	r3, [r3]
    14e4:	e51b2008 	ldr	r2, [fp, #-8]
    14e8:	e1520003 	cmp	r2, r3
    14ec:	3a000008 	bcc	1514 <free+0x64>
    14f0:	e51b200c 	ldr	r2, [fp, #-12]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e1520003 	cmp	r2, r3
    14fc:	8a000010 	bhi	1544 <free+0x94>
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e51b200c 	ldr	r2, [fp, #-12]
    150c:	e1520003 	cmp	r2, r3
    1510:	3a00000b 	bcc	1544 <free+0x94>
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5933000 	ldr	r3, [r3]
    151c:	e50b3008 	str	r3, [fp, #-8]
    1520:	e51b200c 	ldr	r2, [fp, #-12]
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e1520003 	cmp	r2, r3
    152c:	9affffea 	bls	14dc <free+0x2c>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5933000 	ldr	r3, [r3]
    1538:	e51b200c 	ldr	r2, [fp, #-12]
    153c:	e1520003 	cmp	r2, r3
    1540:	2affffe5 	bcs	14dc <free+0x2c>
    1544:	e51b300c 	ldr	r3, [fp, #-12]
    1548:	e5933004 	ldr	r3, [r3, #4]
    154c:	e1a03183 	lsl	r3, r3, #3
    1550:	e51b200c 	ldr	r2, [fp, #-12]
    1554:	e0822003 	add	r2, r2, r3
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e1520003 	cmp	r2, r3
    1564:	1a00000d 	bne	15a0 <free+0xf0>
    1568:	e51b300c 	ldr	r3, [fp, #-12]
    156c:	e5932004 	ldr	r2, [r3, #4]
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5933000 	ldr	r3, [r3]
    1578:	e5933004 	ldr	r3, [r3, #4]
    157c:	e0822003 	add	r2, r2, r3
    1580:	e51b300c 	ldr	r3, [fp, #-12]
    1584:	e5832004 	str	r2, [r3, #4]
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e5933000 	ldr	r3, [r3]
    1590:	e5932000 	ldr	r2, [r3]
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5832000 	str	r2, [r3]
    159c:	ea000003 	b	15b0 <free+0x100>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5932000 	ldr	r2, [r3]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e5832000 	str	r2, [r3]
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e5933004 	ldr	r3, [r3, #4]
    15b8:	e1a03183 	lsl	r3, r3, #3
    15bc:	e51b2008 	ldr	r2, [fp, #-8]
    15c0:	e0823003 	add	r3, r2, r3
    15c4:	e51b200c 	ldr	r2, [fp, #-12]
    15c8:	e1520003 	cmp	r2, r3
    15cc:	1a00000b 	bne	1600 <free+0x150>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e5932004 	ldr	r2, [r3, #4]
    15d8:	e51b300c 	ldr	r3, [fp, #-12]
    15dc:	e5933004 	ldr	r3, [r3, #4]
    15e0:	e0822003 	add	r2, r2, r3
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5832004 	str	r2, [r3, #4]
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e5932000 	ldr	r2, [r3]
    15f4:	e51b3008 	ldr	r3, [fp, #-8]
    15f8:	e5832000 	str	r2, [r3]
    15fc:	ea000002 	b	160c <free+0x15c>
    1600:	e51b3008 	ldr	r3, [fp, #-8]
    1604:	e51b200c 	ldr	r2, [fp, #-12]
    1608:	e5832000 	str	r2, [r3]
    160c:	e59f2014 	ldr	r2, [pc, #20]	@ 1628 <free+0x178>
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5823000 	str	r3, [r2]
    1618:	e1a00000 	nop			@ (mov r0, r0)
    161c:	e28bd000 	add	sp, fp, #0
    1620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1624:	e12fff1e 	bx	lr
    1628:	000019ac 	.word	0x000019ac

0000162c <morecore>:
    162c:	e92d4800 	push	{fp, lr}
    1630:	e28db004 	add	fp, sp, #4
    1634:	e24dd010 	sub	sp, sp, #16
    1638:	e50b0010 	str	r0, [fp, #-16]
    163c:	e51b3010 	ldr	r3, [fp, #-16]
    1640:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1644:	2a000001 	bcs	1650 <morecore+0x24>
    1648:	e3a03a01 	mov	r3, #4096	@ 0x1000
    164c:	e50b3010 	str	r3, [fp, #-16]
    1650:	e51b3010 	ldr	r3, [fp, #-16]
    1654:	e1a03183 	lsl	r3, r3, #3
    1658:	e1a00003 	mov	r0, r3
    165c:	ebfffe05 	bl	e78 <sbrk>
    1660:	e50b0008 	str	r0, [fp, #-8]
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e3730001 	cmn	r3, #1
    166c:	1a000001 	bne	1678 <morecore+0x4c>
    1670:	e3a03000 	mov	r3, #0
    1674:	ea00000a 	b	16a4 <morecore+0x78>
    1678:	e51b3008 	ldr	r3, [fp, #-8]
    167c:	e50b300c 	str	r3, [fp, #-12]
    1680:	e51b300c 	ldr	r3, [fp, #-12]
    1684:	e51b2010 	ldr	r2, [fp, #-16]
    1688:	e5832004 	str	r2, [r3, #4]
    168c:	e51b300c 	ldr	r3, [fp, #-12]
    1690:	e2833008 	add	r3, r3, #8
    1694:	e1a00003 	mov	r0, r3
    1698:	ebffff84 	bl	14b0 <free>
    169c:	e59f300c 	ldr	r3, [pc, #12]	@ 16b0 <morecore+0x84>
    16a0:	e5933000 	ldr	r3, [r3]
    16a4:	e1a00003 	mov	r0, r3
    16a8:	e24bd004 	sub	sp, fp, #4
    16ac:	e8bd8800 	pop	{fp, pc}
    16b0:	000019ac 	.word	0x000019ac

000016b4 <malloc>:
    16b4:	e92d4800 	push	{fp, lr}
    16b8:	e28db004 	add	fp, sp, #4
    16bc:	e24dd018 	sub	sp, sp, #24
    16c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16c8:	e2833007 	add	r3, r3, #7
    16cc:	e1a031a3 	lsr	r3, r3, #3
    16d0:	e2833001 	add	r3, r3, #1
    16d4:	e50b3010 	str	r3, [fp, #-16]
    16d8:	e59f3134 	ldr	r3, [pc, #308]	@ 1814 <malloc+0x160>
    16dc:	e5933000 	ldr	r3, [r3]
    16e0:	e50b300c 	str	r3, [fp, #-12]
    16e4:	e51b300c 	ldr	r3, [fp, #-12]
    16e8:	e3530000 	cmp	r3, #0
    16ec:	1a00000b 	bne	1720 <malloc+0x6c>
    16f0:	e59f3120 	ldr	r3, [pc, #288]	@ 1818 <malloc+0x164>
    16f4:	e50b300c 	str	r3, [fp, #-12]
    16f8:	e59f2114 	ldr	r2, [pc, #276]	@ 1814 <malloc+0x160>
    16fc:	e51b300c 	ldr	r3, [fp, #-12]
    1700:	e5823000 	str	r3, [r2]
    1704:	e59f3108 	ldr	r3, [pc, #264]	@ 1814 <malloc+0x160>
    1708:	e5933000 	ldr	r3, [r3]
    170c:	e59f2104 	ldr	r2, [pc, #260]	@ 1818 <malloc+0x164>
    1710:	e5823000 	str	r3, [r2]
    1714:	e59f30fc 	ldr	r3, [pc, #252]	@ 1818 <malloc+0x164>
    1718:	e3a02000 	mov	r2, #0
    171c:	e5832004 	str	r2, [r3, #4]
    1720:	e51b300c 	ldr	r3, [fp, #-12]
    1724:	e5933000 	ldr	r3, [r3]
    1728:	e50b3008 	str	r3, [fp, #-8]
    172c:	e51b3008 	ldr	r3, [fp, #-8]
    1730:	e5933004 	ldr	r3, [r3, #4]
    1734:	e51b2010 	ldr	r2, [fp, #-16]
    1738:	e1520003 	cmp	r2, r3
    173c:	8a00001e 	bhi	17bc <malloc+0x108>
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e5933004 	ldr	r3, [r3, #4]
    1748:	e51b2010 	ldr	r2, [fp, #-16]
    174c:	e1520003 	cmp	r2, r3
    1750:	1a000004 	bne	1768 <malloc+0xb4>
    1754:	e51b3008 	ldr	r3, [fp, #-8]
    1758:	e5932000 	ldr	r2, [r3]
    175c:	e51b300c 	ldr	r3, [fp, #-12]
    1760:	e5832000 	str	r2, [r3]
    1764:	ea00000e 	b	17a4 <malloc+0xf0>
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e5932004 	ldr	r2, [r3, #4]
    1770:	e51b3010 	ldr	r3, [fp, #-16]
    1774:	e0422003 	sub	r2, r2, r3
    1778:	e51b3008 	ldr	r3, [fp, #-8]
    177c:	e5832004 	str	r2, [r3, #4]
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e5933004 	ldr	r3, [r3, #4]
    1788:	e1a03183 	lsl	r3, r3, #3
    178c:	e51b2008 	ldr	r2, [fp, #-8]
    1790:	e0823003 	add	r3, r2, r3
    1794:	e50b3008 	str	r3, [fp, #-8]
    1798:	e51b3008 	ldr	r3, [fp, #-8]
    179c:	e51b2010 	ldr	r2, [fp, #-16]
    17a0:	e5832004 	str	r2, [r3, #4]
    17a4:	e59f2068 	ldr	r2, [pc, #104]	@ 1814 <malloc+0x160>
    17a8:	e51b300c 	ldr	r3, [fp, #-12]
    17ac:	e5823000 	str	r3, [r2]
    17b0:	e51b3008 	ldr	r3, [fp, #-8]
    17b4:	e2833008 	add	r3, r3, #8
    17b8:	ea000012 	b	1808 <malloc+0x154>
    17bc:	e59f3050 	ldr	r3, [pc, #80]	@ 1814 <malloc+0x160>
    17c0:	e5933000 	ldr	r3, [r3]
    17c4:	e51b2008 	ldr	r2, [fp, #-8]
    17c8:	e1520003 	cmp	r2, r3
    17cc:	1a000007 	bne	17f0 <malloc+0x13c>
    17d0:	e51b0010 	ldr	r0, [fp, #-16]
    17d4:	ebffff94 	bl	162c <morecore>
    17d8:	e50b0008 	str	r0, [fp, #-8]
    17dc:	e51b3008 	ldr	r3, [fp, #-8]
    17e0:	e3530000 	cmp	r3, #0
    17e4:	1a000001 	bne	17f0 <malloc+0x13c>
    17e8:	e3a03000 	mov	r3, #0
    17ec:	ea000005 	b	1808 <malloc+0x154>
    17f0:	e51b3008 	ldr	r3, [fp, #-8]
    17f4:	e50b300c 	str	r3, [fp, #-12]
    17f8:	e51b3008 	ldr	r3, [fp, #-8]
    17fc:	e5933000 	ldr	r3, [r3]
    1800:	e50b3008 	str	r3, [fp, #-8]
    1804:	eaffffc8 	b	172c <malloc+0x78>
    1808:	e1a00003 	mov	r0, r3
    180c:	e24bd004 	sub	sp, fp, #4
    1810:	e8bd8800 	pop	{fp, pc}
    1814:	000019ac 	.word	0x000019ac
    1818:	000019a4 	.word	0x000019a4

0000181c <__udivsi3>:
    181c:	e2512001 	subs	r2, r1, #1
    1820:	012fff1e 	bxeq	lr
    1824:	3a000036 	bcc	1904 <__udivsi3+0xe8>
    1828:	e1500001 	cmp	r0, r1
    182c:	9a000022 	bls	18bc <__udivsi3+0xa0>
    1830:	e1110002 	tst	r1, r2
    1834:	0a000023 	beq	18c8 <__udivsi3+0xac>
    1838:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    183c:	01a01181 	lsleq	r1, r1, #3
    1840:	03a03008 	moveq	r3, #8
    1844:	13a03001 	movne	r3, #1
    1848:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    184c:	31510000 	cmpcc	r1, r0
    1850:	31a01201 	lslcc	r1, r1, #4
    1854:	31a03203 	lslcc	r3, r3, #4
    1858:	3afffffa 	bcc	1848 <__udivsi3+0x2c>
    185c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1860:	31510000 	cmpcc	r1, r0
    1864:	31a01081 	lslcc	r1, r1, #1
    1868:	31a03083 	lslcc	r3, r3, #1
    186c:	3afffffa 	bcc	185c <__udivsi3+0x40>
    1870:	e3a02000 	mov	r2, #0
    1874:	e1500001 	cmp	r0, r1
    1878:	20400001 	subcs	r0, r0, r1
    187c:	21822003 	orrcs	r2, r2, r3
    1880:	e15000a1 	cmp	r0, r1, lsr #1
    1884:	204000a1 	subcs	r0, r0, r1, lsr #1
    1888:	218220a3 	orrcs	r2, r2, r3, lsr #1
    188c:	e1500121 	cmp	r0, r1, lsr #2
    1890:	20400121 	subcs	r0, r0, r1, lsr #2
    1894:	21822123 	orrcs	r2, r2, r3, lsr #2
    1898:	e15001a1 	cmp	r0, r1, lsr #3
    189c:	204001a1 	subcs	r0, r0, r1, lsr #3
    18a0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    18a4:	e3500000 	cmp	r0, #0
    18a8:	11b03223 	lsrsne	r3, r3, #4
    18ac:	11a01221 	lsrne	r1, r1, #4
    18b0:	1affffef 	bne	1874 <__udivsi3+0x58>
    18b4:	e1a00002 	mov	r0, r2
    18b8:	e12fff1e 	bx	lr
    18bc:	03a00001 	moveq	r0, #1
    18c0:	13a00000 	movne	r0, #0
    18c4:	e12fff1e 	bx	lr
    18c8:	e3510801 	cmp	r1, #65536	@ 0x10000
    18cc:	21a01821 	lsrcs	r1, r1, #16
    18d0:	23a02010 	movcs	r2, #16
    18d4:	33a02000 	movcc	r2, #0
    18d8:	e3510c01 	cmp	r1, #256	@ 0x100
    18dc:	21a01421 	lsrcs	r1, r1, #8
    18e0:	22822008 	addcs	r2, r2, #8
    18e4:	e3510010 	cmp	r1, #16
    18e8:	21a01221 	lsrcs	r1, r1, #4
    18ec:	22822004 	addcs	r2, r2, #4
    18f0:	e3510004 	cmp	r1, #4
    18f4:	82822003 	addhi	r2, r2, #3
    18f8:	908220a1 	addls	r2, r2, r1, lsr #1
    18fc:	e1a00230 	lsr	r0, r0, r2
    1900:	e12fff1e 	bx	lr
    1904:	e3500000 	cmp	r0, #0
    1908:	13e00000 	mvnne	r0, #0
    190c:	ea000007 	b	1930 <__aeabi_idiv0>

00001910 <__aeabi_uidivmod>:
    1910:	e3510000 	cmp	r1, #0
    1914:	0afffffa 	beq	1904 <__udivsi3+0xe8>
    1918:	e92d4003 	push	{r0, r1, lr}
    191c:	ebffffbe 	bl	181c <__udivsi3>
    1920:	e8bd4006 	pop	{r1, r2, lr}
    1924:	e0030092 	mul	r3, r2, r0
    1928:	e0411003 	sub	r1, r1, r3
    192c:	e12fff1e 	bx	lr

00001930 <__aeabi_idiv0>:
    1930:	e12fff1e 	bx	lr
