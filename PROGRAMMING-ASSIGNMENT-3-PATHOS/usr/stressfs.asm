
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
      30:	eb00035a 	bl	da0 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb0000c8 	bl	36c <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb000209 	bl	880 <fork>
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
      90:	eb000342 	bl	da0 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb000241 	bl	9c4 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000214 	bl	934 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb000215 	bl	958 <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb000324 	bl	da0 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb000229 	bl	9c4 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb0001f3 	bl	910 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb0001fd 	bl	958 <close>
     160:	eb0001d8 	bl	8c8 <wait>
     164:	eb0001ce 	bl	8a4 <exit>
     168:	00001484 	.word	0x00001484
     16c:	0000145c 	.word	0x0000145c
     170:	00001470 	.word	0x00001470
     174:	00000202 	.word	0x00000202
     178:	0000147c 	.word	0x0000147c

0000017c <pg_pte>:
     17c:	e92d4800 	push	{fp, lr}
     180:	e28db004 	add	fp, sp, #4
     184:	e24dd008 	sub	sp, sp, #8
     188:	e50b0008 	str	r0, [fp, #-8]
     18c:	e51b1008 	ldr	r1, [fp, #-8]
     190:	e3a00065 	mov	r0, #101	@ 0x65
     194:	eb0002a3 	bl	c28 <syscall>
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
     1bc:	e3a00066 	mov	r0, #102	@ 0x66
     1c0:	eb000298 	bl	c28 <syscall>
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
     1e8:	e3a00067 	mov	r0, #103	@ 0x67
     1ec:	eb00028d 	bl	c28 <syscall>
     1f0:	e1a03000 	mov	r3, r0
     1f4:	e1a00003 	mov	r0, r3
     1f8:	e24bd004 	sub	sp, fp, #4
     1fc:	e8bd8800 	pop	{fp, pc}

00000200 <kpt>:
     200:	e92d4800 	push	{fp, lr}
     204:	e28db004 	add	fp, sp, #4
     208:	e3a00068 	mov	r0, #104	@ 0x68
     20c:	eb000285 	bl	c28 <syscall>
     210:	e1a03000 	mov	r3, r0
     214:	e1a00003 	mov	r0, r3
     218:	e8bd8800 	pop	{fp, pc}

0000021c <ugetpid>:
     21c:	e92d4800 	push	{fp, lr}
     220:	e28db004 	add	fp, sp, #4
     224:	e3a00069 	mov	r0, #105	@ 0x69
     228:	eb00027e 	bl	c28 <syscall>
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
     52c:	eb0000f7 	bl	910 <read>
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
     5d4:	eb0000fa 	bl	9c4 <open>
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e3530000 	cmp	r3, #0
     5e4:	aa000001 	bge	5f0 <stat+0x38>
     5e8:	e3e03000 	mvn	r3, #0
     5ec:	ea000006 	b	60c <stat+0x54>
     5f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e51b0008 	ldr	r0, [fp, #-8]
     5f8:	eb00010c 	bl	a30 <fstat>
     5fc:	e50b000c 	str	r0, [fp, #-12]
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0000d3 	bl	958 <close>
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

00000880 <fork>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00001 	mov	r0, #1
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <exit>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00002 	mov	r0, #2
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <wait>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00003 	mov	r0, #3
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <pipe>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00004 	mov	r0, #4
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <read>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a00005 	mov	r0, #5
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <write>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00010 	mov	r0, #16
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <close>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00015 	mov	r0, #21
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <kill>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00006 	mov	r0, #6
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <exec>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00007 	mov	r0, #7
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <open>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a0000f 	mov	r0, #15
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <mknod>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00011 	mov	r0, #17
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <unlink>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00012 	mov	r0, #18
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <fstat>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00008 	mov	r0, #8
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <link>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00013 	mov	r0, #19
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <mkdir>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a00014 	mov	r0, #20
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <chdir>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00009 	mov	r0, #9
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <dup>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0000a 	mov	r0, #10
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <getpid>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a0000b 	mov	r0, #11
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <sbrk>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a0000c 	mov	r0, #12
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <sleep>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a0000d 	mov	r0, #13
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <uptime>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a0000e 	mov	r0, #14
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <proclist>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00016 	mov	r0, #22
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <settickets>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00017 	mov	r0, #23
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <srand>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00018 	mov	r0, #24
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <getpinfo>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00019 	mov	r0, #25
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <print_pt>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0006a 	mov	r0, #106	@ 0x6a
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <syscall>:
     c28:	ef000000 	svc	0x00000000
     c2c:	e12fff1e 	bx	lr

00000c30 <putc>:
     c30:	e92d4800 	push	{fp, lr}
     c34:	e28db004 	add	fp, sp, #4
     c38:	e24dd008 	sub	sp, sp, #8
     c3c:	e50b0008 	str	r0, [fp, #-8]
     c40:	e1a03001 	mov	r3, r1
     c44:	e54b3009 	strb	r3, [fp, #-9]
     c48:	e24b3009 	sub	r3, fp, #9
     c4c:	e3a02001 	mov	r2, #1
     c50:	e1a01003 	mov	r1, r3
     c54:	e51b0008 	ldr	r0, [fp, #-8]
     c58:	ebffff35 	bl	934 <write>
     c5c:	e1a00000 	nop			@ (mov r0, r0)
     c60:	e24bd004 	sub	sp, fp, #4
     c64:	e8bd8800 	pop	{fp, pc}

00000c68 <printint>:
     c68:	e92d4800 	push	{fp, lr}
     c6c:	e28db004 	add	fp, sp, #4
     c70:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c74:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c78:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c7c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c80:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c84:	e3a03000 	mov	r3, #0
     c88:	e50b300c 	str	r3, [fp, #-12]
     c8c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c90:	e3530000 	cmp	r3, #0
     c94:	0a000008 	beq	cbc <printint+0x54>
     c98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c9c:	e3530000 	cmp	r3, #0
     ca0:	aa000005 	bge	cbc <printint+0x54>
     ca4:	e3a03001 	mov	r3, #1
     ca8:	e50b300c 	str	r3, [fp, #-12]
     cac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     cb0:	e2633000 	rsb	r3, r3, #0
     cb4:	e50b3010 	str	r3, [fp, #-16]
     cb8:	ea000001 	b	cc4 <printint+0x5c>
     cbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     cc0:	e50b3010 	str	r3, [fp, #-16]
     cc4:	e3a03000 	mov	r3, #0
     cc8:	e50b3008 	str	r3, [fp, #-8]
     ccc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     cd0:	e51b3010 	ldr	r3, [fp, #-16]
     cd4:	e1a01002 	mov	r1, r2
     cd8:	e1a00003 	mov	r0, r3
     cdc:	eb0001d5 	bl	1438 <__aeabi_uidivmod>
     ce0:	e1a03001 	mov	r3, r1
     ce4:	e1a01003 	mov	r1, r3
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e2832001 	add	r2, r3, #1
     cf0:	e50b2008 	str	r2, [fp, #-8]
     cf4:	e59f20a0 	ldr	r2, [pc, #160]	@ d9c <printint+0x134>
     cf8:	e7d22001 	ldrb	r2, [r2, r1]
     cfc:	e2433004 	sub	r3, r3, #4
     d00:	e083300b 	add	r3, r3, fp
     d04:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d08:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d0c:	e1a01003 	mov	r1, r3
     d10:	e51b0010 	ldr	r0, [fp, #-16]
     d14:	eb00018a 	bl	1344 <__udivsi3>
     d18:	e1a03000 	mov	r3, r0
     d1c:	e50b3010 	str	r3, [fp, #-16]
     d20:	e51b3010 	ldr	r3, [fp, #-16]
     d24:	e3530000 	cmp	r3, #0
     d28:	1affffe7 	bne	ccc <printint+0x64>
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e3530000 	cmp	r3, #0
     d34:	0a00000e 	beq	d74 <printint+0x10c>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e2832001 	add	r2, r3, #1
     d40:	e50b2008 	str	r2, [fp, #-8]
     d44:	e2433004 	sub	r3, r3, #4
     d48:	e083300b 	add	r3, r3, fp
     d4c:	e3a0202d 	mov	r2, #45	@ 0x2d
     d50:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d54:	ea000006 	b	d74 <printint+0x10c>
     d58:	e24b2020 	sub	r2, fp, #32
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e0823003 	add	r3, r2, r3
     d64:	e5d33000 	ldrb	r3, [r3]
     d68:	e1a01003 	mov	r1, r3
     d6c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d70:	ebffffae 	bl	c30 <putc>
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e2433001 	sub	r3, r3, #1
     d7c:	e50b3008 	str	r3, [fp, #-8]
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e3530000 	cmp	r3, #0
     d88:	aafffff2 	bge	d58 <printint+0xf0>
     d8c:	e1a00000 	nop			@ (mov r0, r0)
     d90:	e1a00000 	nop			@ (mov r0, r0)
     d94:	e24bd004 	sub	sp, fp, #4
     d98:	e8bd8800 	pop	{fp, pc}
     d9c:	00001498 	.word	0x00001498

00000da0 <printf>:
     da0:	e92d000e 	push	{r1, r2, r3}
     da4:	e92d4800 	push	{fp, lr}
     da8:	e28db004 	add	fp, sp, #4
     dac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     db0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     db4:	e3a03000 	mov	r3, #0
     db8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dbc:	e28b3008 	add	r3, fp, #8
     dc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dc4:	e3a03000 	mov	r3, #0
     dc8:	e50b3010 	str	r3, [fp, #-16]
     dcc:	ea000074 	b	fa4 <printf+0x204>
     dd0:	e59b2004 	ldr	r2, [fp, #4]
     dd4:	e51b3010 	ldr	r3, [fp, #-16]
     dd8:	e0823003 	add	r3, r2, r3
     ddc:	e5d33000 	ldrb	r3, [r3]
     de0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     de4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     de8:	e3530000 	cmp	r3, #0
     dec:	1a00000b 	bne	e20 <printf+0x80>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df4:	e3530025 	cmp	r3, #37	@ 0x25
     df8:	1a000002 	bne	e08 <printf+0x68>
     dfc:	e3a03025 	mov	r3, #37	@ 0x25
     e00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e04:	ea000063 	b	f98 <printf+0x1f8>
     e08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e0c:	e6ef3073 	uxtb	r3, r3
     e10:	e1a01003 	mov	r1, r3
     e14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e18:	ebffff84 	bl	c30 <putc>
     e1c:	ea00005d 	b	f98 <printf+0x1f8>
     e20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e24:	e3530025 	cmp	r3, #37	@ 0x25
     e28:	1a00005a 	bne	f98 <printf+0x1f8>
     e2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e30:	e3530064 	cmp	r3, #100	@ 0x64
     e34:	1a00000a 	bne	e64 <printf+0xc4>
     e38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e1a01003 	mov	r1, r3
     e44:	e3a03001 	mov	r3, #1
     e48:	e3a0200a 	mov	r2, #10
     e4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e50:	ebffff84 	bl	c68 <printint>
     e54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e2833004 	add	r3, r3, #4
     e5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e60:	ea00004a 	b	f90 <printf+0x1f0>
     e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e68:	e3530078 	cmp	r3, #120	@ 0x78
     e6c:	0a000002 	beq	e7c <printf+0xdc>
     e70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e3530070 	cmp	r3, #112	@ 0x70
     e78:	1a00000a 	bne	ea8 <printf+0x108>
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e1a01003 	mov	r1, r3
     e88:	e3a03000 	mov	r3, #0
     e8c:	e3a02010 	mov	r2, #16
     e90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e94:	ebffff73 	bl	c68 <printint>
     e98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e9c:	e2833004 	add	r3, r3, #4
     ea0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ea4:	ea000039 	b	f90 <printf+0x1f0>
     ea8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eac:	e3530073 	cmp	r3, #115	@ 0x73
     eb0:	1a000018 	bne	f18 <printf+0x178>
     eb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eb8:	e5933000 	ldr	r3, [r3]
     ebc:	e50b300c 	str	r3, [fp, #-12]
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	e2833004 	add	r3, r3, #4
     ec8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e3530000 	cmp	r3, #0
     ed4:	1a00000a 	bne	f04 <printf+0x164>
     ed8:	e59f30f4 	ldr	r3, [pc, #244]	@ fd4 <printf+0x234>
     edc:	e50b300c 	str	r3, [fp, #-12]
     ee0:	ea000007 	b	f04 <printf+0x164>
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5d33000 	ldrb	r3, [r3]
     eec:	e1a01003 	mov	r1, r3
     ef0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef4:	ebffff4d 	bl	c30 <putc>
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e2833001 	add	r3, r3, #1
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e5d33000 	ldrb	r3, [r3]
     f0c:	e3530000 	cmp	r3, #0
     f10:	1afffff3 	bne	ee4 <printf+0x144>
     f14:	ea00001d 	b	f90 <printf+0x1f0>
     f18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f1c:	e3530063 	cmp	r3, #99	@ 0x63
     f20:	1a000009 	bne	f4c <printf+0x1ac>
     f24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e6ef3073 	uxtb	r3, r3
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f38:	ebffff3c 	bl	c30 <putc>
     f3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f40:	e2833004 	add	r3, r3, #4
     f44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f48:	ea000010 	b	f90 <printf+0x1f0>
     f4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f50:	e3530025 	cmp	r3, #37	@ 0x25
     f54:	1a000005 	bne	f70 <printf+0x1d0>
     f58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e6ef3073 	uxtb	r3, r3
     f60:	e1a01003 	mov	r1, r3
     f64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f68:	ebffff30 	bl	c30 <putc>
     f6c:	ea000007 	b	f90 <printf+0x1f0>
     f70:	e3a01025 	mov	r1, #37	@ 0x25
     f74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f78:	ebffff2c 	bl	c30 <putc>
     f7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e6ef3073 	uxtb	r3, r3
     f84:	e1a01003 	mov	r1, r3
     f88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f8c:	ebffff27 	bl	c30 <putc>
     f90:	e3a03000 	mov	r3, #0
     f94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f98:	e51b3010 	ldr	r3, [fp, #-16]
     f9c:	e2833001 	add	r3, r3, #1
     fa0:	e50b3010 	str	r3, [fp, #-16]
     fa4:	e59b2004 	ldr	r2, [fp, #4]
     fa8:	e51b3010 	ldr	r3, [fp, #-16]
     fac:	e0823003 	add	r3, r2, r3
     fb0:	e5d33000 	ldrb	r3, [r3]
     fb4:	e3530000 	cmp	r3, #0
     fb8:	1affff84 	bne	dd0 <printf+0x30>
     fbc:	e1a00000 	nop			@ (mov r0, r0)
     fc0:	e1a00000 	nop			@ (mov r0, r0)
     fc4:	e24bd004 	sub	sp, fp, #4
     fc8:	e8bd4800 	pop	{fp, lr}
     fcc:	e28dd00c 	add	sp, sp, #12
     fd0:	e12fff1e 	bx	lr
     fd4:	00001490 	.word	0x00001490

00000fd8 <free>:
     fd8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     fdc:	e28db000 	add	fp, sp, #0
     fe0:	e24dd014 	sub	sp, sp, #20
     fe4:	e50b0010 	str	r0, [fp, #-16]
     fe8:	e51b3010 	ldr	r3, [fp, #-16]
     fec:	e2433008 	sub	r3, r3, #8
     ff0:	e50b300c 	str	r3, [fp, #-12]
     ff4:	e59f3154 	ldr	r3, [pc, #340]	@ 1150 <free+0x178>
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	ea000010 	b	1048 <free+0x70>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e51b2008 	ldr	r2, [fp, #-8]
    1010:	e1520003 	cmp	r2, r3
    1014:	3a000008 	bcc	103c <free+0x64>
    1018:	e51b200c 	ldr	r2, [fp, #-12]
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e1520003 	cmp	r2, r3
    1024:	8a000010 	bhi	106c <free+0x94>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e51b200c 	ldr	r2, [fp, #-12]
    1034:	e1520003 	cmp	r2, r3
    1038:	3a00000b 	bcc	106c <free+0x94>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e50b3008 	str	r3, [fp, #-8]
    1048:	e51b200c 	ldr	r2, [fp, #-12]
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e1520003 	cmp	r2, r3
    1054:	9affffea 	bls	1004 <free+0x2c>
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e51b200c 	ldr	r2, [fp, #-12]
    1064:	e1520003 	cmp	r2, r3
    1068:	2affffe5 	bcs	1004 <free+0x2c>
    106c:	e51b300c 	ldr	r3, [fp, #-12]
    1070:	e5933004 	ldr	r3, [r3, #4]
    1074:	e1a03183 	lsl	r3, r3, #3
    1078:	e51b200c 	ldr	r2, [fp, #-12]
    107c:	e0822003 	add	r2, r2, r3
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5933000 	ldr	r3, [r3]
    1088:	e1520003 	cmp	r2, r3
    108c:	1a00000d 	bne	10c8 <free+0xf0>
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5932004 	ldr	r2, [r3, #4]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e5933004 	ldr	r3, [r3, #4]
    10a4:	e0822003 	add	r2, r2, r3
    10a8:	e51b300c 	ldr	r3, [fp, #-12]
    10ac:	e5832004 	str	r2, [r3, #4]
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e5932000 	ldr	r2, [r3]
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e5832000 	str	r2, [r3]
    10c4:	ea000003 	b	10d8 <free+0x100>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5932000 	ldr	r2, [r3]
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5832000 	str	r2, [r3]
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5933004 	ldr	r3, [r3, #4]
    10e0:	e1a03183 	lsl	r3, r3, #3
    10e4:	e51b2008 	ldr	r2, [fp, #-8]
    10e8:	e0823003 	add	r3, r2, r3
    10ec:	e51b200c 	ldr	r2, [fp, #-12]
    10f0:	e1520003 	cmp	r2, r3
    10f4:	1a00000b 	bne	1128 <free+0x150>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5932004 	ldr	r2, [r3, #4]
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e5933004 	ldr	r3, [r3, #4]
    1108:	e0822003 	add	r2, r2, r3
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e5832004 	str	r2, [r3, #4]
    1114:	e51b300c 	ldr	r3, [fp, #-12]
    1118:	e5932000 	ldr	r2, [r3]
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5832000 	str	r2, [r3]
    1124:	ea000002 	b	1134 <free+0x15c>
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e51b200c 	ldr	r2, [fp, #-12]
    1130:	e5832000 	str	r2, [r3]
    1134:	e59f2014 	ldr	r2, [pc, #20]	@ 1150 <free+0x178>
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e5823000 	str	r3, [r2]
    1140:	e1a00000 	nop			@ (mov r0, r0)
    1144:	e28bd000 	add	sp, fp, #0
    1148:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    114c:	e12fff1e 	bx	lr
    1150:	000014b4 	.word	0x000014b4

00001154 <morecore>:
    1154:	e92d4800 	push	{fp, lr}
    1158:	e28db004 	add	fp, sp, #4
    115c:	e24dd010 	sub	sp, sp, #16
    1160:	e50b0010 	str	r0, [fp, #-16]
    1164:	e51b3010 	ldr	r3, [fp, #-16]
    1168:	e3530a01 	cmp	r3, #4096	@ 0x1000
    116c:	2a000001 	bcs	1178 <morecore+0x24>
    1170:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1174:	e50b3010 	str	r3, [fp, #-16]
    1178:	e51b3010 	ldr	r3, [fp, #-16]
    117c:	e1a03183 	lsl	r3, r3, #3
    1180:	e1a00003 	mov	r0, r3
    1184:	ebfffe5f 	bl	b08 <sbrk>
    1188:	e50b0008 	str	r0, [fp, #-8]
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e3730001 	cmn	r3, #1
    1194:	1a000001 	bne	11a0 <morecore+0x4c>
    1198:	e3a03000 	mov	r3, #0
    119c:	ea00000a 	b	11cc <morecore+0x78>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e50b300c 	str	r3, [fp, #-12]
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e51b2010 	ldr	r2, [fp, #-16]
    11b0:	e5832004 	str	r2, [r3, #4]
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e2833008 	add	r3, r3, #8
    11bc:	e1a00003 	mov	r0, r3
    11c0:	ebffff84 	bl	fd8 <free>
    11c4:	e59f300c 	ldr	r3, [pc, #12]	@ 11d8 <morecore+0x84>
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e1a00003 	mov	r0, r3
    11d0:	e24bd004 	sub	sp, fp, #4
    11d4:	e8bd8800 	pop	{fp, pc}
    11d8:	000014b4 	.word	0x000014b4

000011dc <malloc>:
    11dc:	e92d4800 	push	{fp, lr}
    11e0:	e28db004 	add	fp, sp, #4
    11e4:	e24dd018 	sub	sp, sp, #24
    11e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f0:	e2833007 	add	r3, r3, #7
    11f4:	e1a031a3 	lsr	r3, r3, #3
    11f8:	e2833001 	add	r3, r3, #1
    11fc:	e50b3010 	str	r3, [fp, #-16]
    1200:	e59f3134 	ldr	r3, [pc, #308]	@ 133c <malloc+0x160>
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e50b300c 	str	r3, [fp, #-12]
    120c:	e51b300c 	ldr	r3, [fp, #-12]
    1210:	e3530000 	cmp	r3, #0
    1214:	1a00000b 	bne	1248 <malloc+0x6c>
    1218:	e59f3120 	ldr	r3, [pc, #288]	@ 1340 <malloc+0x164>
    121c:	e50b300c 	str	r3, [fp, #-12]
    1220:	e59f2114 	ldr	r2, [pc, #276]	@ 133c <malloc+0x160>
    1224:	e51b300c 	ldr	r3, [fp, #-12]
    1228:	e5823000 	str	r3, [r2]
    122c:	e59f3108 	ldr	r3, [pc, #264]	@ 133c <malloc+0x160>
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e59f2104 	ldr	r2, [pc, #260]	@ 1340 <malloc+0x164>
    1238:	e5823000 	str	r3, [r2]
    123c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1340 <malloc+0x164>
    1240:	e3a02000 	mov	r2, #0
    1244:	e5832004 	str	r2, [r3, #4]
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e50b3008 	str	r3, [fp, #-8]
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5933004 	ldr	r3, [r3, #4]
    125c:	e51b2010 	ldr	r2, [fp, #-16]
    1260:	e1520003 	cmp	r2, r3
    1264:	8a00001e 	bhi	12e4 <malloc+0x108>
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5933004 	ldr	r3, [r3, #4]
    1270:	e51b2010 	ldr	r2, [fp, #-16]
    1274:	e1520003 	cmp	r2, r3
    1278:	1a000004 	bne	1290 <malloc+0xb4>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e5932000 	ldr	r2, [r3]
    1284:	e51b300c 	ldr	r3, [fp, #-12]
    1288:	e5832000 	str	r2, [r3]
    128c:	ea00000e 	b	12cc <malloc+0xf0>
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5932004 	ldr	r2, [r3, #4]
    1298:	e51b3010 	ldr	r3, [fp, #-16]
    129c:	e0422003 	sub	r2, r2, r3
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5832004 	str	r2, [r3, #4]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933004 	ldr	r3, [r3, #4]
    12b0:	e1a03183 	lsl	r3, r3, #3
    12b4:	e51b2008 	ldr	r2, [fp, #-8]
    12b8:	e0823003 	add	r3, r2, r3
    12bc:	e50b3008 	str	r3, [fp, #-8]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e51b2010 	ldr	r2, [fp, #-16]
    12c8:	e5832004 	str	r2, [r3, #4]
    12cc:	e59f2068 	ldr	r2, [pc, #104]	@ 133c <malloc+0x160>
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5823000 	str	r3, [r2]
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e2833008 	add	r3, r3, #8
    12e0:	ea000012 	b	1330 <malloc+0x154>
    12e4:	e59f3050 	ldr	r3, [pc, #80]	@ 133c <malloc+0x160>
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e51b2008 	ldr	r2, [fp, #-8]
    12f0:	e1520003 	cmp	r2, r3
    12f4:	1a000007 	bne	1318 <malloc+0x13c>
    12f8:	e51b0010 	ldr	r0, [fp, #-16]
    12fc:	ebffff94 	bl	1154 <morecore>
    1300:	e50b0008 	str	r0, [fp, #-8]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e3530000 	cmp	r3, #0
    130c:	1a000001 	bne	1318 <malloc+0x13c>
    1310:	e3a03000 	mov	r3, #0
    1314:	ea000005 	b	1330 <malloc+0x154>
    1318:	e51b3008 	ldr	r3, [fp, #-8]
    131c:	e50b300c 	str	r3, [fp, #-12]
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e50b3008 	str	r3, [fp, #-8]
    132c:	eaffffc8 	b	1254 <malloc+0x78>
    1330:	e1a00003 	mov	r0, r3
    1334:	e24bd004 	sub	sp, fp, #4
    1338:	e8bd8800 	pop	{fp, pc}
    133c:	000014b4 	.word	0x000014b4
    1340:	000014ac 	.word	0x000014ac

00001344 <__udivsi3>:
    1344:	e2512001 	subs	r2, r1, #1
    1348:	012fff1e 	bxeq	lr
    134c:	3a000036 	bcc	142c <__udivsi3+0xe8>
    1350:	e1500001 	cmp	r0, r1
    1354:	9a000022 	bls	13e4 <__udivsi3+0xa0>
    1358:	e1110002 	tst	r1, r2
    135c:	0a000023 	beq	13f0 <__udivsi3+0xac>
    1360:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1364:	01a01181 	lsleq	r1, r1, #3
    1368:	03a03008 	moveq	r3, #8
    136c:	13a03001 	movne	r3, #1
    1370:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1374:	31510000 	cmpcc	r1, r0
    1378:	31a01201 	lslcc	r1, r1, #4
    137c:	31a03203 	lslcc	r3, r3, #4
    1380:	3afffffa 	bcc	1370 <__udivsi3+0x2c>
    1384:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1388:	31510000 	cmpcc	r1, r0
    138c:	31a01081 	lslcc	r1, r1, #1
    1390:	31a03083 	lslcc	r3, r3, #1
    1394:	3afffffa 	bcc	1384 <__udivsi3+0x40>
    1398:	e3a02000 	mov	r2, #0
    139c:	e1500001 	cmp	r0, r1
    13a0:	20400001 	subcs	r0, r0, r1
    13a4:	21822003 	orrcs	r2, r2, r3
    13a8:	e15000a1 	cmp	r0, r1, lsr #1
    13ac:	204000a1 	subcs	r0, r0, r1, lsr #1
    13b0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    13b4:	e1500121 	cmp	r0, r1, lsr #2
    13b8:	20400121 	subcs	r0, r0, r1, lsr #2
    13bc:	21822123 	orrcs	r2, r2, r3, lsr #2
    13c0:	e15001a1 	cmp	r0, r1, lsr #3
    13c4:	204001a1 	subcs	r0, r0, r1, lsr #3
    13c8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    13cc:	e3500000 	cmp	r0, #0
    13d0:	11b03223 	lsrsne	r3, r3, #4
    13d4:	11a01221 	lsrne	r1, r1, #4
    13d8:	1affffef 	bne	139c <__udivsi3+0x58>
    13dc:	e1a00002 	mov	r0, r2
    13e0:	e12fff1e 	bx	lr
    13e4:	03a00001 	moveq	r0, #1
    13e8:	13a00000 	movne	r0, #0
    13ec:	e12fff1e 	bx	lr
    13f0:	e3510801 	cmp	r1, #65536	@ 0x10000
    13f4:	21a01821 	lsrcs	r1, r1, #16
    13f8:	23a02010 	movcs	r2, #16
    13fc:	33a02000 	movcc	r2, #0
    1400:	e3510c01 	cmp	r1, #256	@ 0x100
    1404:	21a01421 	lsrcs	r1, r1, #8
    1408:	22822008 	addcs	r2, r2, #8
    140c:	e3510010 	cmp	r1, #16
    1410:	21a01221 	lsrcs	r1, r1, #4
    1414:	22822004 	addcs	r2, r2, #4
    1418:	e3510004 	cmp	r1, #4
    141c:	82822003 	addhi	r2, r2, #3
    1420:	908220a1 	addls	r2, r2, r1, lsr #1
    1424:	e1a00230 	lsr	r0, r0, r2
    1428:	e12fff1e 	bx	lr
    142c:	e3500000 	cmp	r0, #0
    1430:	13e00000 	mvnne	r0, #0
    1434:	ea000007 	b	1458 <__aeabi_idiv0>

00001438 <__aeabi_uidivmod>:
    1438:	e3510000 	cmp	r1, #0
    143c:	0afffffa 	beq	142c <__udivsi3+0xe8>
    1440:	e92d4003 	push	{r0, r1, lr}
    1444:	ebffffbe 	bl	1344 <__udivsi3>
    1448:	e8bd4006 	pop	{r1, r2, lr}
    144c:	e0030092 	mul	r3, r2, r0
    1450:	e0411003 	sub	r1, r1, r3
    1454:	e12fff1e 	bx	lr

00001458 <__aeabi_idiv0>:
    1458:	e12fff1e 	bx	lr
