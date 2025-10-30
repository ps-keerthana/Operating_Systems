
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb00048c 	bl	1268 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb0000c8 	bl	36c <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb0002e1 	bl	be0 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb000474 	bl	1268 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000319 	bl	d24 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb0002ec 	bl	c94 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb0002ed 	bl	cb8 <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb000456 	bl	1268 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb000301 	bl	d24 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb0002cb 	bl	c70 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb0002d5 	bl	cb8 <close>
     160:	eb0002b0 	bl	c28 <wait>
     164:	eb0002a6 	bl	c04 <exit>
     168:	0000194c 	.word	0x0000194c
     16c:	00001924 	.word	0x00001924
     170:	00001938 	.word	0x00001938
     174:	00000202 	.word	0x00000202
     178:	00001944 	.word	0x00001944

0000017c <pg_pte>:
     17c:	e92d4800 	push	{fp, lr}
     180:	e28db004 	add	fp, sp, #4
     184:	e24dd008 	sub	sp, sp, #8
     188:	e50b0008 	str	r0, [fp, #-8]
     18c:	e51b1008 	ldr	r1, [fp, #-8]
     190:	e3a0001a 	mov	r0, #26
     194:	eb0003d5 	bl	10f0 <syscall>
     198:	e1a03000 	mov	r3, r0
     19c:	e1a00003 	mov	r0, r3
     1a0:	e24bd004 	sub	sp, fp, #4
     1a4:	e8bd8800 	pop	{fp, pc}

000001a8 <pg_pa>:
     1a8:	e92d4800 	push	{fp, lr}
     1ac:	e28db004 	add	fp, sp, #4
     1b0:	e24dd008 	sub	sp, sp, #8
     1b4:	e50b0008 	str	r0, [fp, #-8]
     1b8:	e51b1008 	ldr	r1, [fp, #-8]
     1bc:	e3a0001b 	mov	r0, #27
     1c0:	eb0003ca 	bl	10f0 <syscall>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e24bd004 	sub	sp, fp, #4
     1d0:	e8bd8800 	pop	{fp, pc}

000001d4 <pg_flags>:
     1d4:	e92d4800 	push	{fp, lr}
     1d8:	e28db004 	add	fp, sp, #4
     1dc:	e24dd008 	sub	sp, sp, #8
     1e0:	e50b0008 	str	r0, [fp, #-8]
     1e4:	e51b1008 	ldr	r1, [fp, #-8]
     1e8:	e3a0001c 	mov	r0, #28
     1ec:	eb0003bf 	bl	10f0 <syscall>
     1f0:	e1a03000 	mov	r3, r0
     1f4:	e1a00003 	mov	r0, r3
     1f8:	e24bd004 	sub	sp, fp, #4
     1fc:	e8bd8800 	pop	{fp, pc}

00000200 <kpt>:
     200:	e92d4800 	push	{fp, lr}
     204:	e28db004 	add	fp, sp, #4
     208:	e3a0001d 	mov	r0, #29
     20c:	eb0003b7 	bl	10f0 <syscall>
     210:	e1a03000 	mov	r3, r0
     214:	e1a00003 	mov	r0, r3
     218:	e8bd8800 	pop	{fp, pc}

0000021c <ugetpid>:
     21c:	e92d4800 	push	{fp, lr}
     220:	e28db004 	add	fp, sp, #4
     224:	e3a0001e 	mov	r0, #30
     228:	eb0003b0 	bl	10f0 <syscall>
     22c:	e1a03000 	mov	r3, r0
     230:	e1a00003 	mov	r0, r3
     234:	e8bd8800 	pop	{fp, pc}

00000238 <strcpy>:
     238:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     23c:	e28db000 	add	fp, sp, #0
     240:	e24dd014 	sub	sp, sp, #20
     244:	e50b0010 	str	r0, [fp, #-16]
     248:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     24c:	e51b3010 	ldr	r3, [fp, #-16]
     250:	e50b3008 	str	r3, [fp, #-8]
     254:	e1a00000 	nop			@ (mov r0, r0)
     258:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     25c:	e2823001 	add	r3, r2, #1
     260:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     264:	e51b3010 	ldr	r3, [fp, #-16]
     268:	e2831001 	add	r1, r3, #1
     26c:	e50b1010 	str	r1, [fp, #-16]
     270:	e5d22000 	ldrb	r2, [r2]
     274:	e5c32000 	strb	r2, [r3]
     278:	e5d33000 	ldrb	r3, [r3]
     27c:	e3530000 	cmp	r3, #0
     280:	1afffff4 	bne	258 <strcpy+0x20>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e1a00003 	mov	r0, r3
     28c:	e28bd000 	add	sp, fp, #0
     290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     294:	e12fff1e 	bx	lr

00000298 <strcmp>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd00c 	sub	sp, sp, #12
     2a4:	e50b0008 	str	r0, [fp, #-8]
     2a8:	e50b100c 	str	r1, [fp, #-12]
     2ac:	ea000005 	b	2c8 <strcmp+0x30>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e2833001 	add	r3, r3, #1
     2b8:	e50b3008 	str	r3, [fp, #-8]
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b300c 	str	r3, [fp, #-12]
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e3530000 	cmp	r3, #0
     2d4:	0a000005 	beq	2f0 <strcmp+0x58>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d32000 	ldrb	r2, [r3]
     2e0:	e51b300c 	ldr	r3, [fp, #-12]
     2e4:	e5d33000 	ldrb	r3, [r3]
     2e8:	e1520003 	cmp	r2, r3
     2ec:	0affffef 	beq	2b0 <strcmp+0x18>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e5d33000 	ldrb	r3, [r3]
     2f8:	e1a02003 	mov	r2, r3
     2fc:	e51b300c 	ldr	r3, [fp, #-12]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e0423003 	sub	r3, r2, r3
     308:	e1a00003 	mov	r0, r3
     30c:	e28bd000 	add	sp, fp, #0
     310:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     314:	e12fff1e 	bx	lr

00000318 <strlen>:
     318:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     31c:	e28db000 	add	fp, sp, #0
     320:	e24dd014 	sub	sp, sp, #20
     324:	e50b0010 	str	r0, [fp, #-16]
     328:	e3a03000 	mov	r3, #0
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	ea000002 	b	340 <strlen+0x28>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e2833001 	add	r3, r3, #1
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e51b2010 	ldr	r2, [fp, #-16]
     348:	e0823003 	add	r3, r2, r3
     34c:	e5d33000 	ldrb	r3, [r3]
     350:	e3530000 	cmp	r3, #0
     354:	1afffff6 	bne	334 <strlen+0x1c>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e1a00003 	mov	r0, r3
     360:	e28bd000 	add	sp, fp, #0
     364:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     368:	e12fff1e 	bx	lr

0000036c <memset>:
     36c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     370:	e28db000 	add	fp, sp, #0
     374:	e24dd024 	sub	sp, sp, #36	@ 0x24
     378:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     37c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     380:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     384:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     390:	e54b300d 	strb	r3, [fp, #-13]
     394:	e55b200d 	ldrb	r2, [fp, #-13]
     398:	e1a03002 	mov	r3, r2
     39c:	e1a03403 	lsl	r3, r3, #8
     3a0:	e0833002 	add	r3, r3, r2
     3a4:	e1a03803 	lsl	r3, r3, #16
     3a8:	e1a02003 	mov	r2, r3
     3ac:	e55b300d 	ldrb	r3, [fp, #-13]
     3b0:	e1a03403 	lsl	r3, r3, #8
     3b4:	e1822003 	orr	r2, r2, r3
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e1823003 	orr	r3, r2, r3
     3c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3c4:	ea000008 	b	3ec <memset+0x80>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e55b200d 	ldrb	r2, [fp, #-13]
     3d0:	e5c32000 	strb	r2, [r3]
     3d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d8:	e2433001 	sub	r3, r3, #1
     3dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e51b3008 	ldr	r3, [fp, #-8]
     3e4:	e2833001 	add	r3, r3, #1
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e3530000 	cmp	r3, #0
     3f4:	0a000003 	beq	408 <memset+0x9c>
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e2033003 	and	r3, r3, #3
     400:	e3530000 	cmp	r3, #0
     404:	1affffef 	bne	3c8 <memset+0x5c>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e50b300c 	str	r3, [fp, #-12]
     410:	ea000008 	b	438 <memset+0xcc>
     414:	e51b300c 	ldr	r3, [fp, #-12]
     418:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     41c:	e5832000 	str	r2, [r3]
     420:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     424:	e2433004 	sub	r3, r3, #4
     428:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     42c:	e51b300c 	ldr	r3, [fp, #-12]
     430:	e2833004 	add	r3, r3, #4
     434:	e50b300c 	str	r3, [fp, #-12]
     438:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     43c:	e3530003 	cmp	r3, #3
     440:	8afffff3 	bhi	414 <memset+0xa8>
     444:	e51b300c 	ldr	r3, [fp, #-12]
     448:	e50b3008 	str	r3, [fp, #-8]
     44c:	ea000008 	b	474 <memset+0x108>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e55b200d 	ldrb	r2, [fp, #-13]
     458:	e5c32000 	strb	r2, [r3]
     45c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     460:	e2433001 	sub	r3, r3, #1
     464:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e2833001 	add	r3, r3, #1
     470:	e50b3008 	str	r3, [fp, #-8]
     474:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     478:	e3530000 	cmp	r3, #0
     47c:	1afffff3 	bne	450 <memset+0xe4>
     480:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     484:	e1a00003 	mov	r0, r3
     488:	e28bd000 	add	sp, fp, #0
     48c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     490:	e12fff1e 	bx	lr

00000494 <strchr>:
     494:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     498:	e28db000 	add	fp, sp, #0
     49c:	e24dd00c 	sub	sp, sp, #12
     4a0:	e50b0008 	str	r0, [fp, #-8]
     4a4:	e1a03001 	mov	r3, r1
     4a8:	e54b3009 	strb	r3, [fp, #-9]
     4ac:	ea000009 	b	4d8 <strchr+0x44>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e55b2009 	ldrb	r2, [fp, #-9]
     4bc:	e1520003 	cmp	r2, r3
     4c0:	1a000001 	bne	4cc <strchr+0x38>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	ea000007 	b	4ec <strchr+0x58>
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e2833001 	add	r3, r3, #1
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e5d33000 	ldrb	r3, [r3]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	1afffff1 	bne	4b0 <strchr+0x1c>
     4e8:	e3a03000 	mov	r3, #0
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <gets>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd018 	sub	sp, sp, #24
     508:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     50c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     510:	e3a03000 	mov	r3, #0
     514:	e50b3008 	str	r3, [fp, #-8]
     518:	ea000016 	b	578 <gets+0x7c>
     51c:	e24b300d 	sub	r3, fp, #13
     520:	e3a02001 	mov	r2, #1
     524:	e1a01003 	mov	r1, r3
     528:	e3a00000 	mov	r0, #0
     52c:	eb0001cf 	bl	c70 <read>
     530:	e50b000c 	str	r0, [fp, #-12]
     534:	e51b300c 	ldr	r3, [fp, #-12]
     538:	e3530000 	cmp	r3, #0
     53c:	da000013 	ble	590 <gets+0x94>
     540:	e51b3008 	ldr	r3, [fp, #-8]
     544:	e2832001 	add	r2, r3, #1
     548:	e50b2008 	str	r2, [fp, #-8]
     54c:	e1a02003 	mov	r2, r3
     550:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     554:	e0833002 	add	r3, r3, r2
     558:	e55b200d 	ldrb	r2, [fp, #-13]
     55c:	e5c32000 	strb	r2, [r3]
     560:	e55b300d 	ldrb	r3, [fp, #-13]
     564:	e353000a 	cmp	r3, #10
     568:	0a000009 	beq	594 <gets+0x98>
     56c:	e55b300d 	ldrb	r3, [fp, #-13]
     570:	e353000d 	cmp	r3, #13
     574:	0a000006 	beq	594 <gets+0x98>
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e2833001 	add	r3, r3, #1
     580:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     584:	e1520003 	cmp	r2, r3
     588:	caffffe3 	bgt	51c <gets+0x20>
     58c:	ea000000 	b	594 <gets+0x98>
     590:	e1a00000 	nop			@ (mov r0, r0)
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     59c:	e0823003 	add	r3, r2, r3
     5a0:	e3a02000 	mov	r2, #0
     5a4:	e5c32000 	strb	r2, [r3]
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e24bd004 	sub	sp, fp, #4
     5b4:	e8bd8800 	pop	{fp, pc}

000005b8 <stat>:
     5b8:	e92d4800 	push	{fp, lr}
     5bc:	e28db004 	add	fp, sp, #4
     5c0:	e24dd010 	sub	sp, sp, #16
     5c4:	e50b0010 	str	r0, [fp, #-16]
     5c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5cc:	e3a01000 	mov	r1, #0
     5d0:	e51b0010 	ldr	r0, [fp, #-16]
     5d4:	eb0001d2 	bl	d24 <open>
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e3530000 	cmp	r3, #0
     5e4:	aa000001 	bge	5f0 <stat+0x38>
     5e8:	e3e03000 	mvn	r3, #0
     5ec:	ea000006 	b	60c <stat+0x54>
     5f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e51b0008 	ldr	r0, [fp, #-8]
     5f8:	eb0001e4 	bl	d90 <fstat>
     5fc:	e50b000c 	str	r0, [fp, #-12]
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0001ab 	bl	cb8 <close>
     608:	e51b300c 	ldr	r3, [fp, #-12]
     60c:	e1a00003 	mov	r0, r3
     610:	e24bd004 	sub	sp, fp, #4
     614:	e8bd8800 	pop	{fp, pc}

00000618 <atoi>:
     618:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     61c:	e28db000 	add	fp, sp, #0
     620:	e24dd014 	sub	sp, sp, #20
     624:	e50b0010 	str	r0, [fp, #-16]
     628:	e3a03000 	mov	r3, #0
     62c:	e50b3008 	str	r3, [fp, #-8]
     630:	ea00000c 	b	668 <atoi+0x50>
     634:	e51b2008 	ldr	r2, [fp, #-8]
     638:	e1a03002 	mov	r3, r2
     63c:	e1a03103 	lsl	r3, r3, #2
     640:	e0833002 	add	r3, r3, r2
     644:	e1a03083 	lsl	r3, r3, #1
     648:	e1a01003 	mov	r1, r3
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e2832001 	add	r2, r3, #1
     654:	e50b2010 	str	r2, [fp, #-16]
     658:	e5d33000 	ldrb	r3, [r3]
     65c:	e0813003 	add	r3, r1, r3
     660:	e2433030 	sub	r3, r3, #48	@ 0x30
     664:	e50b3008 	str	r3, [fp, #-8]
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e353002f 	cmp	r3, #47	@ 0x2f
     674:	9a000003 	bls	688 <atoi+0x70>
     678:	e51b3010 	ldr	r3, [fp, #-16]
     67c:	e5d33000 	ldrb	r3, [r3]
     680:	e3530039 	cmp	r3, #57	@ 0x39
     684:	9affffea 	bls	634 <atoi+0x1c>
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e1a00003 	mov	r0, r3
     690:	e28bd000 	add	sp, fp, #0
     694:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <memmove>:
     69c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a0:	e28db000 	add	fp, sp, #0
     6a4:	e24dd01c 	sub	sp, sp, #28
     6a8:	e50b0010 	str	r0, [fp, #-16]
     6ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6c0:	e50b300c 	str	r3, [fp, #-12]
     6c4:	ea000007 	b	6e8 <memmove+0x4c>
     6c8:	e51b200c 	ldr	r2, [fp, #-12]
     6cc:	e2823001 	add	r3, r2, #1
     6d0:	e50b300c 	str	r3, [fp, #-12]
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e2831001 	add	r1, r3, #1
     6dc:	e50b1008 	str	r1, [fp, #-8]
     6e0:	e5d22000 	ldrb	r2, [r2]
     6e4:	e5c32000 	strb	r2, [r3]
     6e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6ec:	e2432001 	sub	r2, r3, #1
     6f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6f4:	e3530000 	cmp	r3, #0
     6f8:	cafffff2 	bgt	6c8 <memmove+0x2c>
     6fc:	e51b3010 	ldr	r3, [fp, #-16]
     700:	e1a00003 	mov	r0, r3
     704:	e28bd000 	add	sp, fp, #0
     708:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <strncmp>:
     710:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     714:	e28db000 	add	fp, sp, #0
     718:	e24dd014 	sub	sp, sp, #20
     71c:	e50b0008 	str	r0, [fp, #-8]
     720:	e50b100c 	str	r1, [fp, #-12]
     724:	e50b2010 	str	r2, [fp, #-16]
     728:	ea000008 	b	750 <strncmp+0x40>
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e2833001 	add	r3, r3, #1
     734:	e50b3008 	str	r3, [fp, #-8]
     738:	e51b300c 	ldr	r3, [fp, #-12]
     73c:	e2833001 	add	r3, r3, #1
     740:	e50b300c 	str	r3, [fp, #-12]
     744:	e51b3010 	ldr	r3, [fp, #-16]
     748:	e2433001 	sub	r3, r3, #1
     74c:	e50b3010 	str	r3, [fp, #-16]
     750:	e51b3010 	ldr	r3, [fp, #-16]
     754:	e3530000 	cmp	r3, #0
     758:	da00000d 	ble	794 <strncmp+0x84>
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e5d33000 	ldrb	r3, [r3]
     764:	e3530000 	cmp	r3, #0
     768:	0a000009 	beq	794 <strncmp+0x84>
     76c:	e51b300c 	ldr	r3, [fp, #-12]
     770:	e5d33000 	ldrb	r3, [r3]
     774:	e3530000 	cmp	r3, #0
     778:	0a000005 	beq	794 <strncmp+0x84>
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e5d32000 	ldrb	r2, [r3]
     784:	e51b300c 	ldr	r3, [fp, #-12]
     788:	e5d33000 	ldrb	r3, [r3]
     78c:	e1520003 	cmp	r2, r3
     790:	0affffe5 	beq	72c <strncmp+0x1c>
     794:	e51b3010 	ldr	r3, [fp, #-16]
     798:	e3530000 	cmp	r3, #0
     79c:	1a000001 	bne	7a8 <strncmp+0x98>
     7a0:	e3a03000 	mov	r3, #0
     7a4:	ea000005 	b	7c0 <strncmp+0xb0>
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e1a02003 	mov	r2, r3
     7b4:	e51b300c 	ldr	r3, [fp, #-12]
     7b8:	e5d33000 	ldrb	r3, [r3]
     7bc:	e0423003 	sub	r3, r2, r3
     7c0:	e1a00003 	mov	r0, r3
     7c4:	e28bd000 	add	sp, fp, #0
     7c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <strncpy>:
     7d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d4:	e28db000 	add	fp, sp, #0
     7d8:	e24dd01c 	sub	sp, sp, #28
     7dc:	e50b0010 	str	r0, [fp, #-16]
     7e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7e8:	e51b3010 	ldr	r3, [fp, #-16]
     7ec:	e50b3008 	str	r3, [fp, #-8]
     7f0:	ea00000a 	b	820 <strncpy+0x50>
     7f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7f8:	e2823001 	add	r3, r2, #1
     7fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e2831001 	add	r1, r3, #1
     808:	e50b1008 	str	r1, [fp, #-8]
     80c:	e5d22000 	ldrb	r2, [r2]
     810:	e5c32000 	strb	r2, [r3]
     814:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     818:	e2433001 	sub	r3, r3, #1
     81c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     820:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     824:	e3530000 	cmp	r3, #0
     828:	da00000c 	ble	860 <strncpy+0x90>
     82c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     830:	e5d33000 	ldrb	r3, [r3]
     834:	e3530000 	cmp	r3, #0
     838:	1affffed 	bne	7f4 <strncpy+0x24>
     83c:	ea000007 	b	860 <strncpy+0x90>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e2832001 	add	r2, r3, #1
     848:	e50b2008 	str	r2, [fp, #-8]
     84c:	e3a02000 	mov	r2, #0
     850:	e5c32000 	strb	r2, [r3]
     854:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     858:	e2433001 	sub	r3, r3, #1
     85c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     860:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     864:	e3530000 	cmp	r3, #0
     868:	cafffff4 	bgt	840 <strncpy+0x70>
     86c:	e51b3010 	ldr	r3, [fp, #-16]
     870:	e1a00003 	mov	r0, r3
     874:	e28bd000 	add	sp, fp, #0
     878:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <xchg>:
     880:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     884:	e28db000 	add	fp, sp, #0
     888:	e24dd014 	sub	sp, sp, #20
     88c:	e50b0010 	str	r0, [fp, #-16]
     890:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     894:	e51b2010 	ldr	r2, [fp, #-16]
     898:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     89c:	e1023091 	swp	r3, r1, [r2]
     8a0:	e50b3008 	str	r3, [fp, #-8]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e1a00003 	mov	r0, r3
     8ac:	e28bd000 	add	sp, fp, #0
     8b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <initiateLock>:
     8b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8bc:	e28db000 	add	fp, sp, #0
     8c0:	e24dd00c 	sub	sp, sp, #12
     8c4:	e50b0008 	str	r0, [fp, #-8]
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e3a02000 	mov	r2, #0
     8d0:	e5832000 	str	r2, [r3]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e3a02001 	mov	r2, #1
     8dc:	e5832004 	str	r2, [r3, #4]
     8e0:	e1a00000 	nop			@ (mov r0, r0)
     8e4:	e28bd000 	add	sp, fp, #0
     8e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <acquireLock>:
     8f0:	e92d4800 	push	{fp, lr}
     8f4:	e28db004 	add	fp, sp, #4
     8f8:	e24dd008 	sub	sp, sp, #8
     8fc:	e50b0008 	str	r0, [fp, #-8]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e5933004 	ldr	r3, [r3, #4]
     908:	e3530000 	cmp	r3, #0
     90c:	0a000008 	beq	934 <acquireLock+0x44>
     910:	e1a00000 	nop			@ (mov r0, r0)
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e3a01001 	mov	r1, #1
     91c:	e1a00003 	mov	r0, r3
     920:	ebffffd6 	bl	880 <xchg>
     924:	e1a03000 	mov	r3, r0
     928:	e3530000 	cmp	r3, #0
     92c:	1afffff8 	bne	914 <acquireLock+0x24>
     930:	ea000000 	b	938 <acquireLock+0x48>
     934:	e1a00000 	nop			@ (mov r0, r0)
     938:	e24bd004 	sub	sp, fp, #4
     93c:	e8bd8800 	pop	{fp, pc}

00000940 <releaseLock>:
     940:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     944:	e28db000 	add	fp, sp, #0
     948:	e24dd00c 	sub	sp, sp, #12
     94c:	e50b0008 	str	r0, [fp, #-8]
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e5933004 	ldr	r3, [r3, #4]
     958:	e3530000 	cmp	r3, #0
     95c:	0a000006 	beq	97c <releaseLock+0x3c>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5933000 	ldr	r3, [r3]
     968:	e3530001 	cmp	r3, #1
     96c:	1a000002 	bne	97c <releaseLock+0x3c>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e3a02000 	mov	r2, #0
     978:	e5832000 	str	r2, [r3]
     97c:	e1a00000 	nop			@ (mov r0, r0)
     980:	e28bd000 	add	sp, fp, #0
     984:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <initiateCondVar>:
     98c:	e92d4800 	push	{fp, lr}
     990:	e28db004 	add	fp, sp, #4
     994:	e24dd008 	sub	sp, sp, #8
     998:	e50b0008 	str	r0, [fp, #-8]
     99c:	eb0001b8 	bl	1084 <getChannel>
     9a0:	e1a02000 	mov	r2, r0
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5832000 	str	r2, [r3]
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e3a02001 	mov	r2, #1
     9b4:	e5832004 	str	r2, [r3, #4]
     9b8:	e1a00000 	nop			@ (mov r0, r0)
     9bc:	e24bd004 	sub	sp, fp, #4
     9c0:	e8bd8800 	pop	{fp, pc}

000009c4 <condWait>:
     9c4:	e92d4800 	push	{fp, lr}
     9c8:	e28db004 	add	fp, sp, #4
     9cc:	e24dd008 	sub	sp, sp, #8
     9d0:	e50b0008 	str	r0, [fp, #-8]
     9d4:	e50b100c 	str	r1, [fp, #-12]
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e5933004 	ldr	r3, [r3, #4]
     9e0:	e3530000 	cmp	r3, #0
     9e4:	0a00000c 	beq	a1c <condWait+0x58>
     9e8:	e51b300c 	ldr	r3, [fp, #-12]
     9ec:	e5933004 	ldr	r3, [r3, #4]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	0a000008 	beq	a1c <condWait+0x58>
     9f8:	e51b000c 	ldr	r0, [fp, #-12]
     9fc:	ebffffcf 	bl	940 <releaseLock>
     a00:	e51b3008 	ldr	r3, [fp, #-8]
     a04:	e5933000 	ldr	r3, [r3]
     a08:	e1a00003 	mov	r0, r3
     a0c:	eb000193 	bl	1060 <sleepChan>
     a10:	e51b000c 	ldr	r0, [fp, #-12]
     a14:	ebffffb5 	bl	8f0 <acquireLock>
     a18:	ea000000 	b	a20 <condWait+0x5c>
     a1c:	e1a00000 	nop			@ (mov r0, r0)
     a20:	e24bd004 	sub	sp, fp, #4
     a24:	e8bd8800 	pop	{fp, pc}

00000a28 <broadcast>:
     a28:	e92d4800 	push	{fp, lr}
     a2c:	e28db004 	add	fp, sp, #4
     a30:	e24dd008 	sub	sp, sp, #8
     a34:	e50b0008 	str	r0, [fp, #-8]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e5933004 	ldr	r3, [r3, #4]
     a40:	e3530000 	cmp	r3, #0
     a44:	0a000004 	beq	a5c <broadcast+0x34>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e5933000 	ldr	r3, [r3]
     a50:	e1a00003 	mov	r0, r3
     a54:	eb000193 	bl	10a8 <sigChan>
     a58:	ea000000 	b	a60 <broadcast+0x38>
     a5c:	e1a00000 	nop			@ (mov r0, r0)
     a60:	e24bd004 	sub	sp, fp, #4
     a64:	e8bd8800 	pop	{fp, pc}

00000a68 <signal>:
     a68:	e92d4800 	push	{fp, lr}
     a6c:	e28db004 	add	fp, sp, #4
     a70:	e24dd008 	sub	sp, sp, #8
     a74:	e50b0008 	str	r0, [fp, #-8]
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e5933004 	ldr	r3, [r3, #4]
     a80:	e3530000 	cmp	r3, #0
     a84:	0a000004 	beq	a9c <signal+0x34>
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5933000 	ldr	r3, [r3]
     a90:	e1a00003 	mov	r0, r3
     a94:	eb00018c 	bl	10cc <sigOneChan>
     a98:	ea000000 	b	aa0 <signal+0x38>
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	e24bd004 	sub	sp, fp, #4
     aa4:	e8bd8800 	pop	{fp, pc}

00000aa8 <semInit>:
     aa8:	e92d4800 	push	{fp, lr}
     aac:	e28db004 	add	fp, sp, #4
     ab0:	e24dd008 	sub	sp, sp, #8
     ab4:	e50b0008 	str	r0, [fp, #-8]
     ab8:	e50b100c 	str	r1, [fp, #-12]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2833004 	add	r3, r3, #4
     ac4:	e1a00003 	mov	r0, r3
     ac8:	ebffff7a 	bl	8b8 <initiateLock>
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e283300c 	add	r3, r3, #12
     ad4:	e1a00003 	mov	r0, r3
     ad8:	ebffffab 	bl	98c <initiateCondVar>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e51b200c 	ldr	r2, [fp, #-12]
     ae4:	e5832000 	str	r2, [r3]
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e3a02001 	mov	r2, #1
     af0:	e5832014 	str	r2, [r3, #20]
     af4:	e1a00000 	nop			@ (mov r0, r0)
     af8:	e24bd004 	sub	sp, fp, #4
     afc:	e8bd8800 	pop	{fp, pc}

00000b00 <semUp>:
     b00:	e92d4800 	push	{fp, lr}
     b04:	e28db004 	add	fp, sp, #4
     b08:	e24dd008 	sub	sp, sp, #8
     b0c:	e50b0008 	str	r0, [fp, #-8]
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2833004 	add	r3, r3, #4
     b18:	e1a00003 	mov	r0, r3
     b1c:	ebffff73 	bl	8f0 <acquireLock>
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e5933000 	ldr	r3, [r3]
     b28:	e2832001 	add	r2, r3, #1
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e5832000 	str	r2, [r3]
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e283300c 	add	r3, r3, #12
     b3c:	e1a00003 	mov	r0, r3
     b40:	ebffffc8 	bl	a68 <signal>
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e2833004 	add	r3, r3, #4
     b4c:	e1a00003 	mov	r0, r3
     b50:	ebffff7a 	bl	940 <releaseLock>
     b54:	e1a00000 	nop			@ (mov r0, r0)
     b58:	e24bd004 	sub	sp, fp, #4
     b5c:	e8bd8800 	pop	{fp, pc}

00000b60 <semDown>:
     b60:	e92d4800 	push	{fp, lr}
     b64:	e28db004 	add	fp, sp, #4
     b68:	e24dd008 	sub	sp, sp, #8
     b6c:	e50b0008 	str	r0, [fp, #-8]
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e2833004 	add	r3, r3, #4
     b78:	e1a00003 	mov	r0, r3
     b7c:	ebffff5b 	bl	8f0 <acquireLock>
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e5933000 	ldr	r3, [r3]
     b88:	e2432001 	sub	r2, r3, #1
     b8c:	e51b3008 	ldr	r3, [fp, #-8]
     b90:	e5832000 	str	r2, [r3]
     b94:	ea000006 	b	bb4 <semDown+0x54>
     b98:	e51b3008 	ldr	r3, [fp, #-8]
     b9c:	e283200c 	add	r2, r3, #12
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e2833004 	add	r3, r3, #4
     ba8:	e1a01003 	mov	r1, r3
     bac:	e1a00002 	mov	r0, r2
     bb0:	ebffff83 	bl	9c4 <condWait>
     bb4:	e51b3008 	ldr	r3, [fp, #-8]
     bb8:	e5933000 	ldr	r3, [r3]
     bbc:	e3530000 	cmp	r3, #0
     bc0:	bafffff4 	blt	b98 <semDown+0x38>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e2833004 	add	r3, r3, #4
     bcc:	e1a00003 	mov	r0, r3
     bd0:	ebffff5a 	bl	940 <releaseLock>
     bd4:	e1a00000 	nop			@ (mov r0, r0)
     bd8:	e24bd004 	sub	sp, fp, #4
     bdc:	e8bd8800 	pop	{fp, pc}

00000be0 <fork>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00001 	mov	r0, #1
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <exit>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00002 	mov	r0, #2
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <wait>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00003 	mov	r0, #3
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <pipe>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00004 	mov	r0, #4
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <read>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00005 	mov	r0, #5
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <write>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00010 	mov	r0, #16
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <close>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00015 	mov	r0, #21
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <kill>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00006 	mov	r0, #6
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <exec>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00007 	mov	r0, #7
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <open>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a0000f 	mov	r0, #15
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <mknod>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00011 	mov	r0, #17
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <unlink>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a00012 	mov	r0, #18
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <fstat>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a00008 	mov	r0, #8
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <link>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00013 	mov	r0, #19
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <mkdir>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a00014 	mov	r0, #20
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <chdir>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00009 	mov	r0, #9
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <dup>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a0000a 	mov	r0, #10
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <getpid>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a0000b 	mov	r0, #11
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <sbrk>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a0000c 	mov	r0, #12
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <sleep>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a0000d 	mov	r0, #13
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <uptime>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a0000e 	mov	r0, #14
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <proclist>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a00016 	mov	r0, #22
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <settickets>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a00017 	mov	r0, #23
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <srand>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a00018 	mov	r0, #24
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <getpinfo>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00019 	mov	r0, #25
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <print_pt>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a0001f 	mov	r0, #31
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <thread_create>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00020 	mov	r0, #32
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <thread_exit>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00021 	mov	r0, #33	@ 0x21
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <thread_join>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00022 	mov	r0, #34	@ 0x22
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <waitpid>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00023 	mov	r0, #35	@ 0x23
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <barrier_init>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a00024 	mov	r0, #36	@ 0x24
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <barrier_check>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a00025 	mov	r0, #37	@ 0x25
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <sleepChan>:
    1060:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1064:	e1a04003 	mov	r4, r3
    1068:	e1a03002 	mov	r3, r2
    106c:	e1a02001 	mov	r2, r1
    1070:	e1a01000 	mov	r1, r0
    1074:	e3a00026 	mov	r0, #38	@ 0x26
    1078:	ef000000 	svc	0x00000000
    107c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1080:	e12fff1e 	bx	lr

00001084 <getChannel>:
    1084:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1088:	e1a04003 	mov	r4, r3
    108c:	e1a03002 	mov	r3, r2
    1090:	e1a02001 	mov	r2, r1
    1094:	e1a01000 	mov	r1, r0
    1098:	e3a00027 	mov	r0, #39	@ 0x27
    109c:	ef000000 	svc	0x00000000
    10a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <sigChan>:
    10a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ac:	e1a04003 	mov	r4, r3
    10b0:	e1a03002 	mov	r3, r2
    10b4:	e1a02001 	mov	r2, r1
    10b8:	e1a01000 	mov	r1, r0
    10bc:	e3a00028 	mov	r0, #40	@ 0x28
    10c0:	ef000000 	svc	0x00000000
    10c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c8:	e12fff1e 	bx	lr

000010cc <sigOneChan>:
    10cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10d0:	e1a04003 	mov	r4, r3
    10d4:	e1a03002 	mov	r3, r2
    10d8:	e1a02001 	mov	r2, r1
    10dc:	e1a01000 	mov	r1, r0
    10e0:	e3a00029 	mov	r0, #41	@ 0x29
    10e4:	ef000000 	svc	0x00000000
    10e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10ec:	e12fff1e 	bx	lr

000010f0 <syscall>:
    10f0:	ef000000 	svc	0x00000000
    10f4:	e12fff1e 	bx	lr

000010f8 <putc>:
    10f8:	e92d4800 	push	{fp, lr}
    10fc:	e28db004 	add	fp, sp, #4
    1100:	e24dd008 	sub	sp, sp, #8
    1104:	e50b0008 	str	r0, [fp, #-8]
    1108:	e1a03001 	mov	r3, r1
    110c:	e54b3009 	strb	r3, [fp, #-9]
    1110:	e24b3009 	sub	r3, fp, #9
    1114:	e3a02001 	mov	r2, #1
    1118:	e1a01003 	mov	r1, r3
    111c:	e51b0008 	ldr	r0, [fp, #-8]
    1120:	ebfffedb 	bl	c94 <write>
    1124:	e1a00000 	nop			@ (mov r0, r0)
    1128:	e24bd004 	sub	sp, fp, #4
    112c:	e8bd8800 	pop	{fp, pc}

00001130 <printint>:
    1130:	e92d4800 	push	{fp, lr}
    1134:	e28db004 	add	fp, sp, #4
    1138:	e24dd030 	sub	sp, sp, #48	@ 0x30
    113c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1140:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1144:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1148:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    114c:	e3a03000 	mov	r3, #0
    1150:	e50b300c 	str	r3, [fp, #-12]
    1154:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1158:	e3530000 	cmp	r3, #0
    115c:	0a000008 	beq	1184 <printint+0x54>
    1160:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1164:	e3530000 	cmp	r3, #0
    1168:	aa000005 	bge	1184 <printint+0x54>
    116c:	e3a03001 	mov	r3, #1
    1170:	e50b300c 	str	r3, [fp, #-12]
    1174:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1178:	e2633000 	rsb	r3, r3, #0
    117c:	e50b3010 	str	r3, [fp, #-16]
    1180:	ea000001 	b	118c <printint+0x5c>
    1184:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1188:	e50b3010 	str	r3, [fp, #-16]
    118c:	e3a03000 	mov	r3, #0
    1190:	e50b3008 	str	r3, [fp, #-8]
    1194:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1198:	e51b3010 	ldr	r3, [fp, #-16]
    119c:	e1a01002 	mov	r1, r2
    11a0:	e1a00003 	mov	r0, r3
    11a4:	eb0001d5 	bl	1900 <__aeabi_uidivmod>
    11a8:	e1a03001 	mov	r3, r1
    11ac:	e1a01003 	mov	r1, r3
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e2832001 	add	r2, r3, #1
    11b8:	e50b2008 	str	r2, [fp, #-8]
    11bc:	e59f20a0 	ldr	r2, [pc, #160]	@ 1264 <printint+0x134>
    11c0:	e7d22001 	ldrb	r2, [r2, r1]
    11c4:	e2433004 	sub	r3, r3, #4
    11c8:	e083300b 	add	r3, r3, fp
    11cc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11d0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11d4:	e1a01003 	mov	r1, r3
    11d8:	e51b0010 	ldr	r0, [fp, #-16]
    11dc:	eb00018a 	bl	180c <__udivsi3>
    11e0:	e1a03000 	mov	r3, r0
    11e4:	e50b3010 	str	r3, [fp, #-16]
    11e8:	e51b3010 	ldr	r3, [fp, #-16]
    11ec:	e3530000 	cmp	r3, #0
    11f0:	1affffe7 	bne	1194 <printint+0x64>
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e3530000 	cmp	r3, #0
    11fc:	0a00000e 	beq	123c <printint+0x10c>
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e2832001 	add	r2, r3, #1
    1208:	e50b2008 	str	r2, [fp, #-8]
    120c:	e2433004 	sub	r3, r3, #4
    1210:	e083300b 	add	r3, r3, fp
    1214:	e3a0202d 	mov	r2, #45	@ 0x2d
    1218:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    121c:	ea000006 	b	123c <printint+0x10c>
    1220:	e24b2020 	sub	r2, fp, #32
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e0823003 	add	r3, r2, r3
    122c:	e5d33000 	ldrb	r3, [r3]
    1230:	e1a01003 	mov	r1, r3
    1234:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1238:	ebffffae 	bl	10f8 <putc>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e2433001 	sub	r3, r3, #1
    1244:	e50b3008 	str	r3, [fp, #-8]
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e3530000 	cmp	r3, #0
    1250:	aafffff2 	bge	1220 <printint+0xf0>
    1254:	e1a00000 	nop			@ (mov r0, r0)
    1258:	e1a00000 	nop			@ (mov r0, r0)
    125c:	e24bd004 	sub	sp, fp, #4
    1260:	e8bd8800 	pop	{fp, pc}
    1264:	00001960 	.word	0x00001960

00001268 <printf>:
    1268:	e92d000e 	push	{r1, r2, r3}
    126c:	e92d4800 	push	{fp, lr}
    1270:	e28db004 	add	fp, sp, #4
    1274:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1278:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    127c:	e3a03000 	mov	r3, #0
    1280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1284:	e28b3008 	add	r3, fp, #8
    1288:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    128c:	e3a03000 	mov	r3, #0
    1290:	e50b3010 	str	r3, [fp, #-16]
    1294:	ea000074 	b	146c <printf+0x204>
    1298:	e59b2004 	ldr	r2, [fp, #4]
    129c:	e51b3010 	ldr	r3, [fp, #-16]
    12a0:	e0823003 	add	r3, r2, r3
    12a4:	e5d33000 	ldrb	r3, [r3]
    12a8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    12ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12b0:	e3530000 	cmp	r3, #0
    12b4:	1a00000b 	bne	12e8 <printf+0x80>
    12b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12bc:	e3530025 	cmp	r3, #37	@ 0x25
    12c0:	1a000002 	bne	12d0 <printf+0x68>
    12c4:	e3a03025 	mov	r3, #37	@ 0x25
    12c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12cc:	ea000063 	b	1460 <printf+0x1f8>
    12d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d4:	e6ef3073 	uxtb	r3, r3
    12d8:	e1a01003 	mov	r1, r3
    12dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12e0:	ebffff84 	bl	10f8 <putc>
    12e4:	ea00005d 	b	1460 <printf+0x1f8>
    12e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12ec:	e3530025 	cmp	r3, #37	@ 0x25
    12f0:	1a00005a 	bne	1460 <printf+0x1f8>
    12f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f8:	e3530064 	cmp	r3, #100	@ 0x64
    12fc:	1a00000a 	bne	132c <printf+0xc4>
    1300:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1304:	e5933000 	ldr	r3, [r3]
    1308:	e1a01003 	mov	r1, r3
    130c:	e3a03001 	mov	r3, #1
    1310:	e3a0200a 	mov	r2, #10
    1314:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1318:	ebffff84 	bl	1130 <printint>
    131c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1320:	e2833004 	add	r3, r3, #4
    1324:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1328:	ea00004a 	b	1458 <printf+0x1f0>
    132c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1330:	e3530078 	cmp	r3, #120	@ 0x78
    1334:	0a000002 	beq	1344 <printf+0xdc>
    1338:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    133c:	e3530070 	cmp	r3, #112	@ 0x70
    1340:	1a00000a 	bne	1370 <printf+0x108>
    1344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e1a01003 	mov	r1, r3
    1350:	e3a03000 	mov	r3, #0
    1354:	e3a02010 	mov	r2, #16
    1358:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    135c:	ebffff73 	bl	1130 <printint>
    1360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1364:	e2833004 	add	r3, r3, #4
    1368:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    136c:	ea000039 	b	1458 <printf+0x1f0>
    1370:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e3530073 	cmp	r3, #115	@ 0x73
    1378:	1a000018 	bne	13e0 <printf+0x178>
    137c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1380:	e5933000 	ldr	r3, [r3]
    1384:	e50b300c 	str	r3, [fp, #-12]
    1388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    138c:	e2833004 	add	r3, r3, #4
    1390:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1394:	e51b300c 	ldr	r3, [fp, #-12]
    1398:	e3530000 	cmp	r3, #0
    139c:	1a00000a 	bne	13cc <printf+0x164>
    13a0:	e59f30f4 	ldr	r3, [pc, #244]	@ 149c <printf+0x234>
    13a4:	e50b300c 	str	r3, [fp, #-12]
    13a8:	ea000007 	b	13cc <printf+0x164>
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5d33000 	ldrb	r3, [r3]
    13b4:	e1a01003 	mov	r1, r3
    13b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13bc:	ebffff4d 	bl	10f8 <putc>
    13c0:	e51b300c 	ldr	r3, [fp, #-12]
    13c4:	e2833001 	add	r3, r3, #1
    13c8:	e50b300c 	str	r3, [fp, #-12]
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e5d33000 	ldrb	r3, [r3]
    13d4:	e3530000 	cmp	r3, #0
    13d8:	1afffff3 	bne	13ac <printf+0x144>
    13dc:	ea00001d 	b	1458 <printf+0x1f0>
    13e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13e4:	e3530063 	cmp	r3, #99	@ 0x63
    13e8:	1a000009 	bne	1414 <printf+0x1ac>
    13ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13f0:	e5933000 	ldr	r3, [r3]
    13f4:	e6ef3073 	uxtb	r3, r3
    13f8:	e1a01003 	mov	r1, r3
    13fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1400:	ebffff3c 	bl	10f8 <putc>
    1404:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1408:	e2833004 	add	r3, r3, #4
    140c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1410:	ea000010 	b	1458 <printf+0x1f0>
    1414:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1418:	e3530025 	cmp	r3, #37	@ 0x25
    141c:	1a000005 	bne	1438 <printf+0x1d0>
    1420:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1424:	e6ef3073 	uxtb	r3, r3
    1428:	e1a01003 	mov	r1, r3
    142c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1430:	ebffff30 	bl	10f8 <putc>
    1434:	ea000007 	b	1458 <printf+0x1f0>
    1438:	e3a01025 	mov	r1, #37	@ 0x25
    143c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1440:	ebffff2c 	bl	10f8 <putc>
    1444:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1448:	e6ef3073 	uxtb	r3, r3
    144c:	e1a01003 	mov	r1, r3
    1450:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1454:	ebffff27 	bl	10f8 <putc>
    1458:	e3a03000 	mov	r3, #0
    145c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1460:	e51b3010 	ldr	r3, [fp, #-16]
    1464:	e2833001 	add	r3, r3, #1
    1468:	e50b3010 	str	r3, [fp, #-16]
    146c:	e59b2004 	ldr	r2, [fp, #4]
    1470:	e51b3010 	ldr	r3, [fp, #-16]
    1474:	e0823003 	add	r3, r2, r3
    1478:	e5d33000 	ldrb	r3, [r3]
    147c:	e3530000 	cmp	r3, #0
    1480:	1affff84 	bne	1298 <printf+0x30>
    1484:	e1a00000 	nop			@ (mov r0, r0)
    1488:	e1a00000 	nop			@ (mov r0, r0)
    148c:	e24bd004 	sub	sp, fp, #4
    1490:	e8bd4800 	pop	{fp, lr}
    1494:	e28dd00c 	add	sp, sp, #12
    1498:	e12fff1e 	bx	lr
    149c:	00001958 	.word	0x00001958

000014a0 <free>:
    14a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14a4:	e28db000 	add	fp, sp, #0
    14a8:	e24dd014 	sub	sp, sp, #20
    14ac:	e50b0010 	str	r0, [fp, #-16]
    14b0:	e51b3010 	ldr	r3, [fp, #-16]
    14b4:	e2433008 	sub	r3, r3, #8
    14b8:	e50b300c 	str	r3, [fp, #-12]
    14bc:	e59f3154 	ldr	r3, [pc, #340]	@ 1618 <free+0x178>
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e50b3008 	str	r3, [fp, #-8]
    14c8:	ea000010 	b	1510 <free+0x70>
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e5933000 	ldr	r3, [r3]
    14d4:	e51b2008 	ldr	r2, [fp, #-8]
    14d8:	e1520003 	cmp	r2, r3
    14dc:	3a000008 	bcc	1504 <free+0x64>
    14e0:	e51b200c 	ldr	r2, [fp, #-12]
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e1520003 	cmp	r2, r3
    14ec:	8a000010 	bhi	1534 <free+0x94>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5933000 	ldr	r3, [r3]
    14f8:	e51b200c 	ldr	r2, [fp, #-12]
    14fc:	e1520003 	cmp	r2, r3
    1500:	3a00000b 	bcc	1534 <free+0x94>
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5933000 	ldr	r3, [r3]
    150c:	e50b3008 	str	r3, [fp, #-8]
    1510:	e51b200c 	ldr	r2, [fp, #-12]
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e1520003 	cmp	r2, r3
    151c:	9affffea 	bls	14cc <free+0x2c>
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5933000 	ldr	r3, [r3]
    1528:	e51b200c 	ldr	r2, [fp, #-12]
    152c:	e1520003 	cmp	r2, r3
    1530:	2affffe5 	bcs	14cc <free+0x2c>
    1534:	e51b300c 	ldr	r3, [fp, #-12]
    1538:	e5933004 	ldr	r3, [r3, #4]
    153c:	e1a03183 	lsl	r3, r3, #3
    1540:	e51b200c 	ldr	r2, [fp, #-12]
    1544:	e0822003 	add	r2, r2, r3
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e1520003 	cmp	r2, r3
    1554:	1a00000d 	bne	1590 <free+0xf0>
    1558:	e51b300c 	ldr	r3, [fp, #-12]
    155c:	e5932004 	ldr	r2, [r3, #4]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5933000 	ldr	r3, [r3]
    1568:	e5933004 	ldr	r3, [r3, #4]
    156c:	e0822003 	add	r2, r2, r3
    1570:	e51b300c 	ldr	r3, [fp, #-12]
    1574:	e5832004 	str	r2, [r3, #4]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5933000 	ldr	r3, [r3]
    1580:	e5932000 	ldr	r2, [r3]
    1584:	e51b300c 	ldr	r3, [fp, #-12]
    1588:	e5832000 	str	r2, [r3]
    158c:	ea000003 	b	15a0 <free+0x100>
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e5932000 	ldr	r2, [r3]
    1598:	e51b300c 	ldr	r3, [fp, #-12]
    159c:	e5832000 	str	r2, [r3]
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5933004 	ldr	r3, [r3, #4]
    15a8:	e1a03183 	lsl	r3, r3, #3
    15ac:	e51b2008 	ldr	r2, [fp, #-8]
    15b0:	e0823003 	add	r3, r2, r3
    15b4:	e51b200c 	ldr	r2, [fp, #-12]
    15b8:	e1520003 	cmp	r2, r3
    15bc:	1a00000b 	bne	15f0 <free+0x150>
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e5932004 	ldr	r2, [r3, #4]
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e5933004 	ldr	r3, [r3, #4]
    15d0:	e0822003 	add	r2, r2, r3
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e5832004 	str	r2, [r3, #4]
    15dc:	e51b300c 	ldr	r3, [fp, #-12]
    15e0:	e5932000 	ldr	r2, [r3]
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5832000 	str	r2, [r3]
    15ec:	ea000002 	b	15fc <free+0x15c>
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e51b200c 	ldr	r2, [fp, #-12]
    15f8:	e5832000 	str	r2, [r3]
    15fc:	e59f2014 	ldr	r2, [pc, #20]	@ 1618 <free+0x178>
    1600:	e51b3008 	ldr	r3, [fp, #-8]
    1604:	e5823000 	str	r3, [r2]
    1608:	e1a00000 	nop			@ (mov r0, r0)
    160c:	e28bd000 	add	sp, fp, #0
    1610:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1614:	e12fff1e 	bx	lr
    1618:	0000197c 	.word	0x0000197c

0000161c <morecore>:
    161c:	e92d4800 	push	{fp, lr}
    1620:	e28db004 	add	fp, sp, #4
    1624:	e24dd010 	sub	sp, sp, #16
    1628:	e50b0010 	str	r0, [fp, #-16]
    162c:	e51b3010 	ldr	r3, [fp, #-16]
    1630:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1634:	2a000001 	bcs	1640 <morecore+0x24>
    1638:	e3a03a01 	mov	r3, #4096	@ 0x1000
    163c:	e50b3010 	str	r3, [fp, #-16]
    1640:	e51b3010 	ldr	r3, [fp, #-16]
    1644:	e1a03183 	lsl	r3, r3, #3
    1648:	e1a00003 	mov	r0, r3
    164c:	ebfffe05 	bl	e68 <sbrk>
    1650:	e50b0008 	str	r0, [fp, #-8]
    1654:	e51b3008 	ldr	r3, [fp, #-8]
    1658:	e3730001 	cmn	r3, #1
    165c:	1a000001 	bne	1668 <morecore+0x4c>
    1660:	e3a03000 	mov	r3, #0
    1664:	ea00000a 	b	1694 <morecore+0x78>
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e50b300c 	str	r3, [fp, #-12]
    1670:	e51b300c 	ldr	r3, [fp, #-12]
    1674:	e51b2010 	ldr	r2, [fp, #-16]
    1678:	e5832004 	str	r2, [r3, #4]
    167c:	e51b300c 	ldr	r3, [fp, #-12]
    1680:	e2833008 	add	r3, r3, #8
    1684:	e1a00003 	mov	r0, r3
    1688:	ebffff84 	bl	14a0 <free>
    168c:	e59f300c 	ldr	r3, [pc, #12]	@ 16a0 <morecore+0x84>
    1690:	e5933000 	ldr	r3, [r3]
    1694:	e1a00003 	mov	r0, r3
    1698:	e24bd004 	sub	sp, fp, #4
    169c:	e8bd8800 	pop	{fp, pc}
    16a0:	0000197c 	.word	0x0000197c

000016a4 <malloc>:
    16a4:	e92d4800 	push	{fp, lr}
    16a8:	e28db004 	add	fp, sp, #4
    16ac:	e24dd018 	sub	sp, sp, #24
    16b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    16b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16b8:	e2833007 	add	r3, r3, #7
    16bc:	e1a031a3 	lsr	r3, r3, #3
    16c0:	e2833001 	add	r3, r3, #1
    16c4:	e50b3010 	str	r3, [fp, #-16]
    16c8:	e59f3134 	ldr	r3, [pc, #308]	@ 1804 <malloc+0x160>
    16cc:	e5933000 	ldr	r3, [r3]
    16d0:	e50b300c 	str	r3, [fp, #-12]
    16d4:	e51b300c 	ldr	r3, [fp, #-12]
    16d8:	e3530000 	cmp	r3, #0
    16dc:	1a00000b 	bne	1710 <malloc+0x6c>
    16e0:	e59f3120 	ldr	r3, [pc, #288]	@ 1808 <malloc+0x164>
    16e4:	e50b300c 	str	r3, [fp, #-12]
    16e8:	e59f2114 	ldr	r2, [pc, #276]	@ 1804 <malloc+0x160>
    16ec:	e51b300c 	ldr	r3, [fp, #-12]
    16f0:	e5823000 	str	r3, [r2]
    16f4:	e59f3108 	ldr	r3, [pc, #264]	@ 1804 <malloc+0x160>
    16f8:	e5933000 	ldr	r3, [r3]
    16fc:	e59f2104 	ldr	r2, [pc, #260]	@ 1808 <malloc+0x164>
    1700:	e5823000 	str	r3, [r2]
    1704:	e59f30fc 	ldr	r3, [pc, #252]	@ 1808 <malloc+0x164>
    1708:	e3a02000 	mov	r2, #0
    170c:	e5832004 	str	r2, [r3, #4]
    1710:	e51b300c 	ldr	r3, [fp, #-12]
    1714:	e5933000 	ldr	r3, [r3]
    1718:	e50b3008 	str	r3, [fp, #-8]
    171c:	e51b3008 	ldr	r3, [fp, #-8]
    1720:	e5933004 	ldr	r3, [r3, #4]
    1724:	e51b2010 	ldr	r2, [fp, #-16]
    1728:	e1520003 	cmp	r2, r3
    172c:	8a00001e 	bhi	17ac <malloc+0x108>
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e5933004 	ldr	r3, [r3, #4]
    1738:	e51b2010 	ldr	r2, [fp, #-16]
    173c:	e1520003 	cmp	r2, r3
    1740:	1a000004 	bne	1758 <malloc+0xb4>
    1744:	e51b3008 	ldr	r3, [fp, #-8]
    1748:	e5932000 	ldr	r2, [r3]
    174c:	e51b300c 	ldr	r3, [fp, #-12]
    1750:	e5832000 	str	r2, [r3]
    1754:	ea00000e 	b	1794 <malloc+0xf0>
    1758:	e51b3008 	ldr	r3, [fp, #-8]
    175c:	e5932004 	ldr	r2, [r3, #4]
    1760:	e51b3010 	ldr	r3, [fp, #-16]
    1764:	e0422003 	sub	r2, r2, r3
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e5832004 	str	r2, [r3, #4]
    1770:	e51b3008 	ldr	r3, [fp, #-8]
    1774:	e5933004 	ldr	r3, [r3, #4]
    1778:	e1a03183 	lsl	r3, r3, #3
    177c:	e51b2008 	ldr	r2, [fp, #-8]
    1780:	e0823003 	add	r3, r2, r3
    1784:	e50b3008 	str	r3, [fp, #-8]
    1788:	e51b3008 	ldr	r3, [fp, #-8]
    178c:	e51b2010 	ldr	r2, [fp, #-16]
    1790:	e5832004 	str	r2, [r3, #4]
    1794:	e59f2068 	ldr	r2, [pc, #104]	@ 1804 <malloc+0x160>
    1798:	e51b300c 	ldr	r3, [fp, #-12]
    179c:	e5823000 	str	r3, [r2]
    17a0:	e51b3008 	ldr	r3, [fp, #-8]
    17a4:	e2833008 	add	r3, r3, #8
    17a8:	ea000012 	b	17f8 <malloc+0x154>
    17ac:	e59f3050 	ldr	r3, [pc, #80]	@ 1804 <malloc+0x160>
    17b0:	e5933000 	ldr	r3, [r3]
    17b4:	e51b2008 	ldr	r2, [fp, #-8]
    17b8:	e1520003 	cmp	r2, r3
    17bc:	1a000007 	bne	17e0 <malloc+0x13c>
    17c0:	e51b0010 	ldr	r0, [fp, #-16]
    17c4:	ebffff94 	bl	161c <morecore>
    17c8:	e50b0008 	str	r0, [fp, #-8]
    17cc:	e51b3008 	ldr	r3, [fp, #-8]
    17d0:	e3530000 	cmp	r3, #0
    17d4:	1a000001 	bne	17e0 <malloc+0x13c>
    17d8:	e3a03000 	mov	r3, #0
    17dc:	ea000005 	b	17f8 <malloc+0x154>
    17e0:	e51b3008 	ldr	r3, [fp, #-8]
    17e4:	e50b300c 	str	r3, [fp, #-12]
    17e8:	e51b3008 	ldr	r3, [fp, #-8]
    17ec:	e5933000 	ldr	r3, [r3]
    17f0:	e50b3008 	str	r3, [fp, #-8]
    17f4:	eaffffc8 	b	171c <malloc+0x78>
    17f8:	e1a00003 	mov	r0, r3
    17fc:	e24bd004 	sub	sp, fp, #4
    1800:	e8bd8800 	pop	{fp, pc}
    1804:	0000197c 	.word	0x0000197c
    1808:	00001974 	.word	0x00001974

0000180c <__udivsi3>:
    180c:	e2512001 	subs	r2, r1, #1
    1810:	012fff1e 	bxeq	lr
    1814:	3a000036 	bcc	18f4 <__udivsi3+0xe8>
    1818:	e1500001 	cmp	r0, r1
    181c:	9a000022 	bls	18ac <__udivsi3+0xa0>
    1820:	e1110002 	tst	r1, r2
    1824:	0a000023 	beq	18b8 <__udivsi3+0xac>
    1828:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    182c:	01a01181 	lsleq	r1, r1, #3
    1830:	03a03008 	moveq	r3, #8
    1834:	13a03001 	movne	r3, #1
    1838:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    183c:	31510000 	cmpcc	r1, r0
    1840:	31a01201 	lslcc	r1, r1, #4
    1844:	31a03203 	lslcc	r3, r3, #4
    1848:	3afffffa 	bcc	1838 <__udivsi3+0x2c>
    184c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1850:	31510000 	cmpcc	r1, r0
    1854:	31a01081 	lslcc	r1, r1, #1
    1858:	31a03083 	lslcc	r3, r3, #1
    185c:	3afffffa 	bcc	184c <__udivsi3+0x40>
    1860:	e3a02000 	mov	r2, #0
    1864:	e1500001 	cmp	r0, r1
    1868:	20400001 	subcs	r0, r0, r1
    186c:	21822003 	orrcs	r2, r2, r3
    1870:	e15000a1 	cmp	r0, r1, lsr #1
    1874:	204000a1 	subcs	r0, r0, r1, lsr #1
    1878:	218220a3 	orrcs	r2, r2, r3, lsr #1
    187c:	e1500121 	cmp	r0, r1, lsr #2
    1880:	20400121 	subcs	r0, r0, r1, lsr #2
    1884:	21822123 	orrcs	r2, r2, r3, lsr #2
    1888:	e15001a1 	cmp	r0, r1, lsr #3
    188c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1890:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1894:	e3500000 	cmp	r0, #0
    1898:	11b03223 	lsrsne	r3, r3, #4
    189c:	11a01221 	lsrne	r1, r1, #4
    18a0:	1affffef 	bne	1864 <__udivsi3+0x58>
    18a4:	e1a00002 	mov	r0, r2
    18a8:	e12fff1e 	bx	lr
    18ac:	03a00001 	moveq	r0, #1
    18b0:	13a00000 	movne	r0, #0
    18b4:	e12fff1e 	bx	lr
    18b8:	e3510801 	cmp	r1, #65536	@ 0x10000
    18bc:	21a01821 	lsrcs	r1, r1, #16
    18c0:	23a02010 	movcs	r2, #16
    18c4:	33a02000 	movcc	r2, #0
    18c8:	e3510c01 	cmp	r1, #256	@ 0x100
    18cc:	21a01421 	lsrcs	r1, r1, #8
    18d0:	22822008 	addcs	r2, r2, #8
    18d4:	e3510010 	cmp	r1, #16
    18d8:	21a01221 	lsrcs	r1, r1, #4
    18dc:	22822004 	addcs	r2, r2, #4
    18e0:	e3510004 	cmp	r1, #4
    18e4:	82822003 	addhi	r2, r2, #3
    18e8:	908220a1 	addls	r2, r2, r1, lsr #1
    18ec:	e1a00230 	lsr	r0, r0, r2
    18f0:	e12fff1e 	bx	lr
    18f4:	e3500000 	cmp	r0, #0
    18f8:	13e00000 	mvnne	r0, #0
    18fc:	ea000007 	b	1920 <__aeabi_idiv0>

00001900 <__aeabi_uidivmod>:
    1900:	e3510000 	cmp	r1, #0
    1904:	0afffffa 	beq	18f4 <__udivsi3+0xe8>
    1908:	e92d4003 	push	{r0, r1, lr}
    190c:	ebffffbe 	bl	180c <__udivsi3>
    1910:	e8bd4006 	pop	{r1, r2, lr}
    1914:	e0030092 	mul	r3, r2, r0
    1918:	e0411003 	sub	r1, r1, r3
    191c:	e12fff1e 	bx	lr

00001920 <__aeabi_idiv0>:
    1920:	e12fff1e 	bx	lr
