
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000232 	bl	8f0 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb000225 	bl	8cc <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb00033f 	bl	d5c <printf>
      5c:	eb0001ff 	bl	860 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001460 	.word	0x00001460
      70:	00001418 	.word	0x00001418

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb0001ef 	bl	860 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb00022c 	bl	980 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000316 	bl	d5c <printf>
     100:	eb0001d6 	bl	860 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb0001ff 	bl	914 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb0001ca 	bl	860 <exit>
     134:	0000142c 	.word	0x0000142c

00000138 <pg_pte>:
     138:	e92d4800 	push	{fp, lr}
     13c:	e28db004 	add	fp, sp, #4
     140:	e24dd008 	sub	sp, sp, #8
     144:	e50b0008 	str	r0, [fp, #-8]
     148:	e51b1008 	ldr	r1, [fp, #-8]
     14c:	e3a00065 	mov	r0, #101	@ 0x65
     150:	eb0002a3 	bl	be4 <syscall>
     154:	e1a03000 	mov	r3, r0
     158:	e1a00003 	mov	r0, r3
     15c:	e24bd004 	sub	sp, fp, #4
     160:	e8bd8800 	pop	{fp, pc}

00000164 <pg_pa>:
     164:	e92d4800 	push	{fp, lr}
     168:	e28db004 	add	fp, sp, #4
     16c:	e24dd008 	sub	sp, sp, #8
     170:	e50b0008 	str	r0, [fp, #-8]
     174:	e51b1008 	ldr	r1, [fp, #-8]
     178:	e3a00066 	mov	r0, #102	@ 0x66
     17c:	eb000298 	bl	be4 <syscall>
     180:	e1a03000 	mov	r3, r0
     184:	e1a00003 	mov	r0, r3
     188:	e24bd004 	sub	sp, fp, #4
     18c:	e8bd8800 	pop	{fp, pc}

00000190 <pg_flags>:
     190:	e92d4800 	push	{fp, lr}
     194:	e28db004 	add	fp, sp, #4
     198:	e24dd008 	sub	sp, sp, #8
     19c:	e50b0008 	str	r0, [fp, #-8]
     1a0:	e51b1008 	ldr	r1, [fp, #-8]
     1a4:	e3a00067 	mov	r0, #103	@ 0x67
     1a8:	eb00028d 	bl	be4 <syscall>
     1ac:	e1a03000 	mov	r3, r0
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e24bd004 	sub	sp, fp, #4
     1b8:	e8bd8800 	pop	{fp, pc}

000001bc <kpt>:
     1bc:	e92d4800 	push	{fp, lr}
     1c0:	e28db004 	add	fp, sp, #4
     1c4:	e3a00068 	mov	r0, #104	@ 0x68
     1c8:	eb000285 	bl	be4 <syscall>
     1cc:	e1a03000 	mov	r3, r0
     1d0:	e1a00003 	mov	r0, r3
     1d4:	e8bd8800 	pop	{fp, pc}

000001d8 <ugetpid>:
     1d8:	e92d4800 	push	{fp, lr}
     1dc:	e28db004 	add	fp, sp, #4
     1e0:	e3a00069 	mov	r0, #105	@ 0x69
     1e4:	eb00027e 	bl	be4 <syscall>
     1e8:	e1a03000 	mov	r3, r0
     1ec:	e1a00003 	mov	r0, r3
     1f0:	e8bd8800 	pop	{fp, pc}

000001f4 <strcpy>:
     1f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f8:	e28db000 	add	fp, sp, #0
     1fc:	e24dd014 	sub	sp, sp, #20
     200:	e50b0010 	str	r0, [fp, #-16]
     204:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     208:	e51b3010 	ldr	r3, [fp, #-16]
     20c:	e50b3008 	str	r3, [fp, #-8]
     210:	e1a00000 	nop			@ (mov r0, r0)
     214:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     218:	e2823001 	add	r3, r2, #1
     21c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     220:	e51b3010 	ldr	r3, [fp, #-16]
     224:	e2831001 	add	r1, r3, #1
     228:	e50b1010 	str	r1, [fp, #-16]
     22c:	e5d22000 	ldrb	r2, [r2]
     230:	e5c32000 	strb	r2, [r3]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e3530000 	cmp	r3, #0
     23c:	1afffff4 	bne	214 <strcpy+0x20>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e1a00003 	mov	r0, r3
     248:	e28bd000 	add	sp, fp, #0
     24c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     250:	e12fff1e 	bx	lr

00000254 <strcmp>:
     254:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     258:	e28db000 	add	fp, sp, #0
     25c:	e24dd00c 	sub	sp, sp, #12
     260:	e50b0008 	str	r0, [fp, #-8]
     264:	e50b100c 	str	r1, [fp, #-12]
     268:	ea000005 	b	284 <strcmp+0x30>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e2833001 	add	r3, r3, #1
     274:	e50b3008 	str	r3, [fp, #-8]
     278:	e51b300c 	ldr	r3, [fp, #-12]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b300c 	str	r3, [fp, #-12]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e5d33000 	ldrb	r3, [r3]
     28c:	e3530000 	cmp	r3, #0
     290:	0a000005 	beq	2ac <strcmp+0x58>
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e5d32000 	ldrb	r2, [r3]
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e5d33000 	ldrb	r3, [r3]
     2a4:	e1520003 	cmp	r2, r3
     2a8:	0affffef 	beq	26c <strcmp+0x18>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e5d33000 	ldrb	r3, [r3]
     2b4:	e1a02003 	mov	r2, r3
     2b8:	e51b300c 	ldr	r3, [fp, #-12]
     2bc:	e5d33000 	ldrb	r3, [r3]
     2c0:	e0423003 	sub	r3, r2, r3
     2c4:	e1a00003 	mov	r0, r3
     2c8:	e28bd000 	add	sp, fp, #0
     2cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d0:	e12fff1e 	bx	lr

000002d4 <strlen>:
     2d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d8:	e28db000 	add	fp, sp, #0
     2dc:	e24dd014 	sub	sp, sp, #20
     2e0:	e50b0010 	str	r0, [fp, #-16]
     2e4:	e3a03000 	mov	r3, #0
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	ea000002 	b	2fc <strlen+0x28>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e50b3008 	str	r3, [fp, #-8]
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e51b2010 	ldr	r2, [fp, #-16]
     304:	e0823003 	add	r3, r2, r3
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e3530000 	cmp	r3, #0
     310:	1afffff6 	bne	2f0 <strlen+0x1c>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e1a00003 	mov	r0, r3
     31c:	e28bd000 	add	sp, fp, #0
     320:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     324:	e12fff1e 	bx	lr

00000328 <memset>:
     328:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     32c:	e28db000 	add	fp, sp, #0
     330:	e24dd024 	sub	sp, sp, #36	@ 0x24
     334:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     338:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     33c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     34c:	e54b300d 	strb	r3, [fp, #-13]
     350:	e55b200d 	ldrb	r2, [fp, #-13]
     354:	e1a03002 	mov	r3, r2
     358:	e1a03403 	lsl	r3, r3, #8
     35c:	e0833002 	add	r3, r3, r2
     360:	e1a03803 	lsl	r3, r3, #16
     364:	e1a02003 	mov	r2, r3
     368:	e55b300d 	ldrb	r3, [fp, #-13]
     36c:	e1a03403 	lsl	r3, r3, #8
     370:	e1822003 	orr	r2, r2, r3
     374:	e55b300d 	ldrb	r3, [fp, #-13]
     378:	e1823003 	orr	r3, r2, r3
     37c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     380:	ea000008 	b	3a8 <memset+0x80>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e55b200d 	ldrb	r2, [fp, #-13]
     38c:	e5c32000 	strb	r2, [r3]
     390:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     394:	e2433001 	sub	r3, r3, #1
     398:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     39c:	e51b3008 	ldr	r3, [fp, #-8]
     3a0:	e2833001 	add	r3, r3, #1
     3a4:	e50b3008 	str	r3, [fp, #-8]
     3a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e3530000 	cmp	r3, #0
     3b0:	0a000003 	beq	3c4 <memset+0x9c>
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e2033003 	and	r3, r3, #3
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1affffef 	bne	384 <memset+0x5c>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e50b300c 	str	r3, [fp, #-12]
     3cc:	ea000008 	b	3f4 <memset+0xcc>
     3d0:	e51b300c 	ldr	r3, [fp, #-12]
     3d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3d8:	e5832000 	str	r2, [r3]
     3dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e2433004 	sub	r3, r3, #4
     3e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e51b300c 	ldr	r3, [fp, #-12]
     3ec:	e2833004 	add	r3, r3, #4
     3f0:	e50b300c 	str	r3, [fp, #-12]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e3530003 	cmp	r3, #3
     3fc:	8afffff3 	bhi	3d0 <memset+0xa8>
     400:	e51b300c 	ldr	r3, [fp, #-12]
     404:	e50b3008 	str	r3, [fp, #-8]
     408:	ea000008 	b	430 <memset+0x108>
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
     438:	1afffff3 	bne	40c <memset+0xe4>
     43c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     440:	e1a00003 	mov	r0, r3
     444:	e28bd000 	add	sp, fp, #0
     448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     44c:	e12fff1e 	bx	lr

00000450 <strchr>:
     450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     454:	e28db000 	add	fp, sp, #0
     458:	e24dd00c 	sub	sp, sp, #12
     45c:	e50b0008 	str	r0, [fp, #-8]
     460:	e1a03001 	mov	r3, r1
     464:	e54b3009 	strb	r3, [fp, #-9]
     468:	ea000009 	b	494 <strchr+0x44>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e5d33000 	ldrb	r3, [r3]
     474:	e55b2009 	ldrb	r2, [fp, #-9]
     478:	e1520003 	cmp	r2, r3
     47c:	1a000001 	bne	488 <strchr+0x38>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	ea000007 	b	4a8 <strchr+0x58>
     488:	e51b3008 	ldr	r3, [fp, #-8]
     48c:	e2833001 	add	r3, r3, #1
     490:	e50b3008 	str	r3, [fp, #-8]
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e5d33000 	ldrb	r3, [r3]
     49c:	e3530000 	cmp	r3, #0
     4a0:	1afffff1 	bne	46c <strchr+0x1c>
     4a4:	e3a03000 	mov	r3, #0
     4a8:	e1a00003 	mov	r0, r3
     4ac:	e28bd000 	add	sp, fp, #0
     4b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b4:	e12fff1e 	bx	lr

000004b8 <gets>:
     4b8:	e92d4800 	push	{fp, lr}
     4bc:	e28db004 	add	fp, sp, #4
     4c0:	e24dd018 	sub	sp, sp, #24
     4c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4c8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4cc:	e3a03000 	mov	r3, #0
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	ea000016 	b	534 <gets+0x7c>
     4d8:	e24b300d 	sub	r3, fp, #13
     4dc:	e3a02001 	mov	r2, #1
     4e0:	e1a01003 	mov	r1, r3
     4e4:	e3a00000 	mov	r0, #0
     4e8:	eb0000f7 	bl	8cc <read>
     4ec:	e50b000c 	str	r0, [fp, #-12]
     4f0:	e51b300c 	ldr	r3, [fp, #-12]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	da000013 	ble	54c <gets+0x94>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e2832001 	add	r2, r3, #1
     504:	e50b2008 	str	r2, [fp, #-8]
     508:	e1a02003 	mov	r2, r3
     50c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     510:	e0833002 	add	r3, r3, r2
     514:	e55b200d 	ldrb	r2, [fp, #-13]
     518:	e5c32000 	strb	r2, [r3]
     51c:	e55b300d 	ldrb	r3, [fp, #-13]
     520:	e353000a 	cmp	r3, #10
     524:	0a000009 	beq	550 <gets+0x98>
     528:	e55b300d 	ldrb	r3, [fp, #-13]
     52c:	e353000d 	cmp	r3, #13
     530:	0a000006 	beq	550 <gets+0x98>
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e2833001 	add	r3, r3, #1
     53c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     540:	e1520003 	cmp	r2, r3
     544:	caffffe3 	bgt	4d8 <gets+0x20>
     548:	ea000000 	b	550 <gets+0x98>
     54c:	e1a00000 	nop			@ (mov r0, r0)
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     558:	e0823003 	add	r3, r2, r3
     55c:	e3a02000 	mov	r2, #0
     560:	e5c32000 	strb	r2, [r3]
     564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     568:	e1a00003 	mov	r0, r3
     56c:	e24bd004 	sub	sp, fp, #4
     570:	e8bd8800 	pop	{fp, pc}

00000574 <stat>:
     574:	e92d4800 	push	{fp, lr}
     578:	e28db004 	add	fp, sp, #4
     57c:	e24dd010 	sub	sp, sp, #16
     580:	e50b0010 	str	r0, [fp, #-16]
     584:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     588:	e3a01000 	mov	r1, #0
     58c:	e51b0010 	ldr	r0, [fp, #-16]
     590:	eb0000fa 	bl	980 <open>
     594:	e50b0008 	str	r0, [fp, #-8]
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e3530000 	cmp	r3, #0
     5a0:	aa000001 	bge	5ac <stat+0x38>
     5a4:	e3e03000 	mvn	r3, #0
     5a8:	ea000006 	b	5c8 <stat+0x54>
     5ac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e51b0008 	ldr	r0, [fp, #-8]
     5b4:	eb00010c 	bl	9ec <fstat>
     5b8:	e50b000c 	str	r0, [fp, #-12]
     5bc:	e51b0008 	ldr	r0, [fp, #-8]
     5c0:	eb0000d3 	bl	914 <close>
     5c4:	e51b300c 	ldr	r3, [fp, #-12]
     5c8:	e1a00003 	mov	r0, r3
     5cc:	e24bd004 	sub	sp, fp, #4
     5d0:	e8bd8800 	pop	{fp, pc}

000005d4 <atoi>:
     5d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d8:	e28db000 	add	fp, sp, #0
     5dc:	e24dd014 	sub	sp, sp, #20
     5e0:	e50b0010 	str	r0, [fp, #-16]
     5e4:	e3a03000 	mov	r3, #0
     5e8:	e50b3008 	str	r3, [fp, #-8]
     5ec:	ea00000c 	b	624 <atoi+0x50>
     5f0:	e51b2008 	ldr	r2, [fp, #-8]
     5f4:	e1a03002 	mov	r3, r2
     5f8:	e1a03103 	lsl	r3, r3, #2
     5fc:	e0833002 	add	r3, r3, r2
     600:	e1a03083 	lsl	r3, r3, #1
     604:	e1a01003 	mov	r1, r3
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e2832001 	add	r2, r3, #1
     610:	e50b2010 	str	r2, [fp, #-16]
     614:	e5d33000 	ldrb	r3, [r3]
     618:	e0813003 	add	r3, r1, r3
     61c:	e2433030 	sub	r3, r3, #48	@ 0x30
     620:	e50b3008 	str	r3, [fp, #-8]
     624:	e51b3010 	ldr	r3, [fp, #-16]
     628:	e5d33000 	ldrb	r3, [r3]
     62c:	e353002f 	cmp	r3, #47	@ 0x2f
     630:	9a000003 	bls	644 <atoi+0x70>
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e5d33000 	ldrb	r3, [r3]
     63c:	e3530039 	cmp	r3, #57	@ 0x39
     640:	9affffea 	bls	5f0 <atoi+0x1c>
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e1a00003 	mov	r0, r3
     64c:	e28bd000 	add	sp, fp, #0
     650:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <memmove>:
     658:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     65c:	e28db000 	add	fp, sp, #0
     660:	e24dd01c 	sub	sp, sp, #28
     664:	e50b0010 	str	r0, [fp, #-16]
     668:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     66c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     670:	e51b3010 	ldr	r3, [fp, #-16]
     674:	e50b3008 	str	r3, [fp, #-8]
     678:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     67c:	e50b300c 	str	r3, [fp, #-12]
     680:	ea000007 	b	6a4 <memmove+0x4c>
     684:	e51b200c 	ldr	r2, [fp, #-12]
     688:	e2823001 	add	r3, r2, #1
     68c:	e50b300c 	str	r3, [fp, #-12]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e2831001 	add	r1, r3, #1
     698:	e50b1008 	str	r1, [fp, #-8]
     69c:	e5d22000 	ldrb	r2, [r2]
     6a0:	e5c32000 	strb	r2, [r3]
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e2432001 	sub	r2, r3, #1
     6ac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6b0:	e3530000 	cmp	r3, #0
     6b4:	cafffff2 	bgt	684 <memmove+0x2c>
     6b8:	e51b3010 	ldr	r3, [fp, #-16]
     6bc:	e1a00003 	mov	r0, r3
     6c0:	e28bd000 	add	sp, fp, #0
     6c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <strncmp>:
     6cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d0:	e28db000 	add	fp, sp, #0
     6d4:	e24dd014 	sub	sp, sp, #20
     6d8:	e50b0008 	str	r0, [fp, #-8]
     6dc:	e50b100c 	str	r1, [fp, #-12]
     6e0:	e50b2010 	str	r2, [fp, #-16]
     6e4:	ea000008 	b	70c <strncmp+0x40>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e2833001 	add	r3, r3, #1
     6f0:	e50b3008 	str	r3, [fp, #-8]
     6f4:	e51b300c 	ldr	r3, [fp, #-12]
     6f8:	e2833001 	add	r3, r3, #1
     6fc:	e50b300c 	str	r3, [fp, #-12]
     700:	e51b3010 	ldr	r3, [fp, #-16]
     704:	e2433001 	sub	r3, r3, #1
     708:	e50b3010 	str	r3, [fp, #-16]
     70c:	e51b3010 	ldr	r3, [fp, #-16]
     710:	e3530000 	cmp	r3, #0
     714:	da00000d 	ble	750 <strncmp+0x84>
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e5d33000 	ldrb	r3, [r3]
     720:	e3530000 	cmp	r3, #0
     724:	0a000009 	beq	750 <strncmp+0x84>
     728:	e51b300c 	ldr	r3, [fp, #-12]
     72c:	e5d33000 	ldrb	r3, [r3]
     730:	e3530000 	cmp	r3, #0
     734:	0a000005 	beq	750 <strncmp+0x84>
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e5d32000 	ldrb	r2, [r3]
     740:	e51b300c 	ldr	r3, [fp, #-12]
     744:	e5d33000 	ldrb	r3, [r3]
     748:	e1520003 	cmp	r2, r3
     74c:	0affffe5 	beq	6e8 <strncmp+0x1c>
     750:	e51b3010 	ldr	r3, [fp, #-16]
     754:	e3530000 	cmp	r3, #0
     758:	1a000001 	bne	764 <strncmp+0x98>
     75c:	e3a03000 	mov	r3, #0
     760:	ea000005 	b	77c <strncmp+0xb0>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5d33000 	ldrb	r3, [r3]
     76c:	e1a02003 	mov	r2, r3
     770:	e51b300c 	ldr	r3, [fp, #-12]
     774:	e5d33000 	ldrb	r3, [r3]
     778:	e0423003 	sub	r3, r2, r3
     77c:	e1a00003 	mov	r0, r3
     780:	e28bd000 	add	sp, fp, #0
     784:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <strncpy>:
     78c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     790:	e28db000 	add	fp, sp, #0
     794:	e24dd01c 	sub	sp, sp, #28
     798:	e50b0010 	str	r0, [fp, #-16]
     79c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7a0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7a4:	e51b3010 	ldr	r3, [fp, #-16]
     7a8:	e50b3008 	str	r3, [fp, #-8]
     7ac:	ea00000a 	b	7dc <strncpy+0x50>
     7b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7b4:	e2823001 	add	r3, r2, #1
     7b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e2831001 	add	r1, r3, #1
     7c4:	e50b1008 	str	r1, [fp, #-8]
     7c8:	e5d22000 	ldrb	r2, [r2]
     7cc:	e5c32000 	strb	r2, [r3]
     7d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d4:	e2433001 	sub	r3, r3, #1
     7d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7e0:	e3530000 	cmp	r3, #0
     7e4:	da00000c 	ble	81c <strncpy+0x90>
     7e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7ec:	e5d33000 	ldrb	r3, [r3]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	1affffed 	bne	7b0 <strncpy+0x24>
     7f8:	ea000007 	b	81c <strncpy+0x90>
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e2832001 	add	r2, r3, #1
     804:	e50b2008 	str	r2, [fp, #-8]
     808:	e3a02000 	mov	r2, #0
     80c:	e5c32000 	strb	r2, [r3]
     810:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     814:	e2433001 	sub	r3, r3, #1
     818:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     81c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     820:	e3530000 	cmp	r3, #0
     824:	cafffff4 	bgt	7fc <strncpy+0x70>
     828:	e51b3010 	ldr	r3, [fp, #-16]
     82c:	e1a00003 	mov	r0, r3
     830:	e28bd000 	add	sp, fp, #0
     834:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <fork>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00001 	mov	r0, #1
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <exit>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a00002 	mov	r0, #2
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <wait>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00003 	mov	r0, #3
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <pipe>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00004 	mov	r0, #4
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <read>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00005 	mov	r0, #5
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <write>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00010 	mov	r0, #16
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <close>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00015 	mov	r0, #21
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <kill>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00006 	mov	r0, #6
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <exec>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00007 	mov	r0, #7
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <open>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a0000f 	mov	r0, #15
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <mknod>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00011 	mov	r0, #17
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <unlink>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00012 	mov	r0, #18
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <fstat>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00008 	mov	r0, #8
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <link>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00013 	mov	r0, #19
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <mkdir>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00014 	mov	r0, #20
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <chdir>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00009 	mov	r0, #9
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <dup>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a0000a 	mov	r0, #10
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <getpid>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000b 	mov	r0, #11
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <sbrk>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a0000c 	mov	r0, #12
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <sleep>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a0000d 	mov	r0, #13
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <uptime>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a0000e 	mov	r0, #14
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <proclist>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00016 	mov	r0, #22
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <settickets>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00017 	mov	r0, #23
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <srand>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00018 	mov	r0, #24
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <getpinfo>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00019 	mov	r0, #25
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <print_pt>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0006a 	mov	r0, #106	@ 0x6a
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <syscall>:
     be4:	ef000000 	svc	0x00000000
     be8:	e12fff1e 	bx	lr

00000bec <putc>:
     bec:	e92d4800 	push	{fp, lr}
     bf0:	e28db004 	add	fp, sp, #4
     bf4:	e24dd008 	sub	sp, sp, #8
     bf8:	e50b0008 	str	r0, [fp, #-8]
     bfc:	e1a03001 	mov	r3, r1
     c00:	e54b3009 	strb	r3, [fp, #-9]
     c04:	e24b3009 	sub	r3, fp, #9
     c08:	e3a02001 	mov	r2, #1
     c0c:	e1a01003 	mov	r1, r3
     c10:	e51b0008 	ldr	r0, [fp, #-8]
     c14:	ebffff35 	bl	8f0 <write>
     c18:	e1a00000 	nop			@ (mov r0, r0)
     c1c:	e24bd004 	sub	sp, fp, #4
     c20:	e8bd8800 	pop	{fp, pc}

00000c24 <printint>:
     c24:	e92d4800 	push	{fp, lr}
     c28:	e28db004 	add	fp, sp, #4
     c2c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c30:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c34:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c38:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c3c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c40:	e3a03000 	mov	r3, #0
     c44:	e50b300c 	str	r3, [fp, #-12]
     c48:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c4c:	e3530000 	cmp	r3, #0
     c50:	0a000008 	beq	c78 <printint+0x54>
     c54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c58:	e3530000 	cmp	r3, #0
     c5c:	aa000005 	bge	c78 <printint+0x54>
     c60:	e3a03001 	mov	r3, #1
     c64:	e50b300c 	str	r3, [fp, #-12]
     c68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c6c:	e2633000 	rsb	r3, r3, #0
     c70:	e50b3010 	str	r3, [fp, #-16]
     c74:	ea000001 	b	c80 <printint+0x5c>
     c78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c7c:	e50b3010 	str	r3, [fp, #-16]
     c80:	e3a03000 	mov	r3, #0
     c84:	e50b3008 	str	r3, [fp, #-8]
     c88:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c8c:	e51b3010 	ldr	r3, [fp, #-16]
     c90:	e1a01002 	mov	r1, r2
     c94:	e1a00003 	mov	r0, r3
     c98:	eb0001d5 	bl	13f4 <__aeabi_uidivmod>
     c9c:	e1a03001 	mov	r3, r1
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e2832001 	add	r2, r3, #1
     cac:	e50b2008 	str	r2, [fp, #-8]
     cb0:	e59f20a0 	ldr	r2, [pc, #160]	@ d58 <printint+0x134>
     cb4:	e7d22001 	ldrb	r2, [r2, r1]
     cb8:	e2433004 	sub	r3, r3, #4
     cbc:	e083300b 	add	r3, r3, fp
     cc0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cc4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     cc8:	e1a01003 	mov	r1, r3
     ccc:	e51b0010 	ldr	r0, [fp, #-16]
     cd0:	eb00018a 	bl	1300 <__udivsi3>
     cd4:	e1a03000 	mov	r3, r0
     cd8:	e50b3010 	str	r3, [fp, #-16]
     cdc:	e51b3010 	ldr	r3, [fp, #-16]
     ce0:	e3530000 	cmp	r3, #0
     ce4:	1affffe7 	bne	c88 <printint+0x64>
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e3530000 	cmp	r3, #0
     cf0:	0a00000e 	beq	d30 <printint+0x10c>
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e2832001 	add	r2, r3, #1
     cfc:	e50b2008 	str	r2, [fp, #-8]
     d00:	e2433004 	sub	r3, r3, #4
     d04:	e083300b 	add	r3, r3, fp
     d08:	e3a0202d 	mov	r2, #45	@ 0x2d
     d0c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d10:	ea000006 	b	d30 <printint+0x10c>
     d14:	e24b2020 	sub	r2, fp, #32
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e0823003 	add	r3, r2, r3
     d20:	e5d33000 	ldrb	r3, [r3]
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d2c:	ebffffae 	bl	bec <putc>
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e2433001 	sub	r3, r3, #1
     d38:	e50b3008 	str	r3, [fp, #-8]
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e3530000 	cmp	r3, #0
     d44:	aafffff2 	bge	d14 <printint+0xf0>
     d48:	e1a00000 	nop			@ (mov r0, r0)
     d4c:	e1a00000 	nop			@ (mov r0, r0)
     d50:	e24bd004 	sub	sp, fp, #4
     d54:	e8bd8800 	pop	{fp, pc}
     d58:	0000144c 	.word	0x0000144c

00000d5c <printf>:
     d5c:	e92d000e 	push	{r1, r2, r3}
     d60:	e92d4800 	push	{fp, lr}
     d64:	e28db004 	add	fp, sp, #4
     d68:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d6c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d70:	e3a03000 	mov	r3, #0
     d74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d78:	e28b3008 	add	r3, fp, #8
     d7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d80:	e3a03000 	mov	r3, #0
     d84:	e50b3010 	str	r3, [fp, #-16]
     d88:	ea000074 	b	f60 <printf+0x204>
     d8c:	e59b2004 	ldr	r2, [fp, #4]
     d90:	e51b3010 	ldr	r3, [fp, #-16]
     d94:	e0823003 	add	r3, r2, r3
     d98:	e5d33000 	ldrb	r3, [r3]
     d9c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     da0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da4:	e3530000 	cmp	r3, #0
     da8:	1a00000b 	bne	ddc <printf+0x80>
     dac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db0:	e3530025 	cmp	r3, #37	@ 0x25
     db4:	1a000002 	bne	dc4 <printf+0x68>
     db8:	e3a03025 	mov	r3, #37	@ 0x25
     dbc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dc0:	ea000063 	b	f54 <printf+0x1f8>
     dc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc8:	e6ef3073 	uxtb	r3, r3
     dcc:	e1a01003 	mov	r1, r3
     dd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd4:	ebffff84 	bl	bec <putc>
     dd8:	ea00005d 	b	f54 <printf+0x1f8>
     ddc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     de0:	e3530025 	cmp	r3, #37	@ 0x25
     de4:	1a00005a 	bne	f54 <printf+0x1f8>
     de8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dec:	e3530064 	cmp	r3, #100	@ 0x64
     df0:	1a00000a 	bne	e20 <printf+0xc4>
     df4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e1a01003 	mov	r1, r3
     e00:	e3a03001 	mov	r3, #1
     e04:	e3a0200a 	mov	r2, #10
     e08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e0c:	ebffff84 	bl	c24 <printint>
     e10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e14:	e2833004 	add	r3, r3, #4
     e18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e1c:	ea00004a 	b	f4c <printf+0x1f0>
     e20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e24:	e3530078 	cmp	r3, #120	@ 0x78
     e28:	0a000002 	beq	e38 <printf+0xdc>
     e2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e30:	e3530070 	cmp	r3, #112	@ 0x70
     e34:	1a00000a 	bne	e64 <printf+0x108>
     e38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e1a01003 	mov	r1, r3
     e44:	e3a03000 	mov	r3, #0
     e48:	e3a02010 	mov	r2, #16
     e4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e50:	ebffff73 	bl	c24 <printint>
     e54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e58:	e2833004 	add	r3, r3, #4
     e5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e60:	ea000039 	b	f4c <printf+0x1f0>
     e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e68:	e3530073 	cmp	r3, #115	@ 0x73
     e6c:	1a000018 	bne	ed4 <printf+0x178>
     e70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e80:	e2833004 	add	r3, r3, #4
     e84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e3530000 	cmp	r3, #0
     e90:	1a00000a 	bne	ec0 <printf+0x164>
     e94:	e59f30f4 	ldr	r3, [pc, #244]	@ f90 <printf+0x234>
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	ea000007 	b	ec0 <printf+0x164>
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5d33000 	ldrb	r3, [r3]
     ea8:	e1a01003 	mov	r1, r3
     eac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb0:	ebffff4d 	bl	bec <putc>
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e2833001 	add	r3, r3, #1
     ebc:	e50b300c 	str	r3, [fp, #-12]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5d33000 	ldrb	r3, [r3]
     ec8:	e3530000 	cmp	r3, #0
     ecc:	1afffff3 	bne	ea0 <printf+0x144>
     ed0:	ea00001d 	b	f4c <printf+0x1f0>
     ed4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed8:	e3530063 	cmp	r3, #99	@ 0x63
     edc:	1a000009 	bne	f08 <printf+0x1ac>
     ee0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e6ef3073 	uxtb	r3, r3
     eec:	e1a01003 	mov	r1, r3
     ef0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef4:	ebffff3c 	bl	bec <putc>
     ef8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     efc:	e2833004 	add	r3, r3, #4
     f00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f04:	ea000010 	b	f4c <printf+0x1f0>
     f08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f0c:	e3530025 	cmp	r3, #37	@ 0x25
     f10:	1a000005 	bne	f2c <printf+0x1d0>
     f14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f18:	e6ef3073 	uxtb	r3, r3
     f1c:	e1a01003 	mov	r1, r3
     f20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f24:	ebffff30 	bl	bec <putc>
     f28:	ea000007 	b	f4c <printf+0x1f0>
     f2c:	e3a01025 	mov	r1, #37	@ 0x25
     f30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f34:	ebffff2c 	bl	bec <putc>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e6ef3073 	uxtb	r3, r3
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f48:	ebffff27 	bl	bec <putc>
     f4c:	e3a03000 	mov	r3, #0
     f50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f54:	e51b3010 	ldr	r3, [fp, #-16]
     f58:	e2833001 	add	r3, r3, #1
     f5c:	e50b3010 	str	r3, [fp, #-16]
     f60:	e59b2004 	ldr	r2, [fp, #4]
     f64:	e51b3010 	ldr	r3, [fp, #-16]
     f68:	e0823003 	add	r3, r2, r3
     f6c:	e5d33000 	ldrb	r3, [r3]
     f70:	e3530000 	cmp	r3, #0
     f74:	1affff84 	bne	d8c <printf+0x30>
     f78:	e1a00000 	nop			@ (mov r0, r0)
     f7c:	e1a00000 	nop			@ (mov r0, r0)
     f80:	e24bd004 	sub	sp, fp, #4
     f84:	e8bd4800 	pop	{fp, lr}
     f88:	e28dd00c 	add	sp, sp, #12
     f8c:	e12fff1e 	bx	lr
     f90:	00001444 	.word	0x00001444

00000f94 <free>:
     f94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f98:	e28db000 	add	fp, sp, #0
     f9c:	e24dd014 	sub	sp, sp, #20
     fa0:	e50b0010 	str	r0, [fp, #-16]
     fa4:	e51b3010 	ldr	r3, [fp, #-16]
     fa8:	e2433008 	sub	r3, r3, #8
     fac:	e50b300c 	str	r3, [fp, #-12]
     fb0:	e59f3154 	ldr	r3, [pc, #340]	@ 110c <free+0x178>
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e50b3008 	str	r3, [fp, #-8]
     fbc:	ea000010 	b	1004 <free+0x70>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5933000 	ldr	r3, [r3]
     fc8:	e51b2008 	ldr	r2, [fp, #-8]
     fcc:	e1520003 	cmp	r2, r3
     fd0:	3a000008 	bcc	ff8 <free+0x64>
     fd4:	e51b200c 	ldr	r2, [fp, #-12]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e1520003 	cmp	r2, r3
     fe0:	8a000010 	bhi	1028 <free+0x94>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e51b200c 	ldr	r2, [fp, #-12]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	3a00000b 	bcc	1028 <free+0x94>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5933000 	ldr	r3, [r3]
    1000:	e50b3008 	str	r3, [fp, #-8]
    1004:	e51b200c 	ldr	r2, [fp, #-12]
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e1520003 	cmp	r2, r3
    1010:	9affffea 	bls	fc0 <free+0x2c>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e51b200c 	ldr	r2, [fp, #-12]
    1020:	e1520003 	cmp	r2, r3
    1024:	2affffe5 	bcs	fc0 <free+0x2c>
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5933004 	ldr	r3, [r3, #4]
    1030:	e1a03183 	lsl	r3, r3, #3
    1034:	e51b200c 	ldr	r2, [fp, #-12]
    1038:	e0822003 	add	r2, r2, r3
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933000 	ldr	r3, [r3]
    1044:	e1520003 	cmp	r2, r3
    1048:	1a00000d 	bne	1084 <free+0xf0>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5932004 	ldr	r2, [r3, #4]
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e5933004 	ldr	r3, [r3, #4]
    1060:	e0822003 	add	r2, r2, r3
    1064:	e51b300c 	ldr	r3, [fp, #-12]
    1068:	e5832004 	str	r2, [r3, #4]
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e5932000 	ldr	r2, [r3]
    1078:	e51b300c 	ldr	r3, [fp, #-12]
    107c:	e5832000 	str	r2, [r3]
    1080:	ea000003 	b	1094 <free+0x100>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5932000 	ldr	r2, [r3]
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5832000 	str	r2, [r3]
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e5933004 	ldr	r3, [r3, #4]
    109c:	e1a03183 	lsl	r3, r3, #3
    10a0:	e51b2008 	ldr	r2, [fp, #-8]
    10a4:	e0823003 	add	r3, r2, r3
    10a8:	e51b200c 	ldr	r2, [fp, #-12]
    10ac:	e1520003 	cmp	r2, r3
    10b0:	1a00000b 	bne	10e4 <free+0x150>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5932004 	ldr	r2, [r3, #4]
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e5933004 	ldr	r3, [r3, #4]
    10c4:	e0822003 	add	r2, r2, r3
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5832004 	str	r2, [r3, #4]
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5932000 	ldr	r2, [r3]
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e5832000 	str	r2, [r3]
    10e0:	ea000002 	b	10f0 <free+0x15c>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e51b200c 	ldr	r2, [fp, #-12]
    10ec:	e5832000 	str	r2, [r3]
    10f0:	e59f2014 	ldr	r2, [pc, #20]	@ 110c <free+0x178>
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5823000 	str	r3, [r2]
    10fc:	e1a00000 	nop			@ (mov r0, r0)
    1100:	e28bd000 	add	sp, fp, #0
    1104:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1108:	e12fff1e 	bx	lr
    110c:	00001668 	.word	0x00001668

00001110 <morecore>:
    1110:	e92d4800 	push	{fp, lr}
    1114:	e28db004 	add	fp, sp, #4
    1118:	e24dd010 	sub	sp, sp, #16
    111c:	e50b0010 	str	r0, [fp, #-16]
    1120:	e51b3010 	ldr	r3, [fp, #-16]
    1124:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1128:	2a000001 	bcs	1134 <morecore+0x24>
    112c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1130:	e50b3010 	str	r3, [fp, #-16]
    1134:	e51b3010 	ldr	r3, [fp, #-16]
    1138:	e1a03183 	lsl	r3, r3, #3
    113c:	e1a00003 	mov	r0, r3
    1140:	ebfffe5f 	bl	ac4 <sbrk>
    1144:	e50b0008 	str	r0, [fp, #-8]
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e3730001 	cmn	r3, #1
    1150:	1a000001 	bne	115c <morecore+0x4c>
    1154:	e3a03000 	mov	r3, #0
    1158:	ea00000a 	b	1188 <morecore+0x78>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e50b300c 	str	r3, [fp, #-12]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e51b2010 	ldr	r2, [fp, #-16]
    116c:	e5832004 	str	r2, [r3, #4]
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e2833008 	add	r3, r3, #8
    1178:	e1a00003 	mov	r0, r3
    117c:	ebffff84 	bl	f94 <free>
    1180:	e59f300c 	ldr	r3, [pc, #12]	@ 1194 <morecore+0x84>
    1184:	e5933000 	ldr	r3, [r3]
    1188:	e1a00003 	mov	r0, r3
    118c:	e24bd004 	sub	sp, fp, #4
    1190:	e8bd8800 	pop	{fp, pc}
    1194:	00001668 	.word	0x00001668

00001198 <malloc>:
    1198:	e92d4800 	push	{fp, lr}
    119c:	e28db004 	add	fp, sp, #4
    11a0:	e24dd018 	sub	sp, sp, #24
    11a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11ac:	e2833007 	add	r3, r3, #7
    11b0:	e1a031a3 	lsr	r3, r3, #3
    11b4:	e2833001 	add	r3, r3, #1
    11b8:	e50b3010 	str	r3, [fp, #-16]
    11bc:	e59f3134 	ldr	r3, [pc, #308]	@ 12f8 <malloc+0x160>
    11c0:	e5933000 	ldr	r3, [r3]
    11c4:	e50b300c 	str	r3, [fp, #-12]
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e3530000 	cmp	r3, #0
    11d0:	1a00000b 	bne	1204 <malloc+0x6c>
    11d4:	e59f3120 	ldr	r3, [pc, #288]	@ 12fc <malloc+0x164>
    11d8:	e50b300c 	str	r3, [fp, #-12]
    11dc:	e59f2114 	ldr	r2, [pc, #276]	@ 12f8 <malloc+0x160>
    11e0:	e51b300c 	ldr	r3, [fp, #-12]
    11e4:	e5823000 	str	r3, [r2]
    11e8:	e59f3108 	ldr	r3, [pc, #264]	@ 12f8 <malloc+0x160>
    11ec:	e5933000 	ldr	r3, [r3]
    11f0:	e59f2104 	ldr	r2, [pc, #260]	@ 12fc <malloc+0x164>
    11f4:	e5823000 	str	r3, [r2]
    11f8:	e59f30fc 	ldr	r3, [pc, #252]	@ 12fc <malloc+0x164>
    11fc:	e3a02000 	mov	r2, #0
    1200:	e5832004 	str	r2, [r3, #4]
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e50b3008 	str	r3, [fp, #-8]
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5933004 	ldr	r3, [r3, #4]
    1218:	e51b2010 	ldr	r2, [fp, #-16]
    121c:	e1520003 	cmp	r2, r3
    1220:	8a00001e 	bhi	12a0 <malloc+0x108>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e5933004 	ldr	r3, [r3, #4]
    122c:	e51b2010 	ldr	r2, [fp, #-16]
    1230:	e1520003 	cmp	r2, r3
    1234:	1a000004 	bne	124c <malloc+0xb4>
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5932000 	ldr	r2, [r3]
    1240:	e51b300c 	ldr	r3, [fp, #-12]
    1244:	e5832000 	str	r2, [r3]
    1248:	ea00000e 	b	1288 <malloc+0xf0>
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e5932004 	ldr	r2, [r3, #4]
    1254:	e51b3010 	ldr	r3, [fp, #-16]
    1258:	e0422003 	sub	r2, r2, r3
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5832004 	str	r2, [r3, #4]
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5933004 	ldr	r3, [r3, #4]
    126c:	e1a03183 	lsl	r3, r3, #3
    1270:	e51b2008 	ldr	r2, [fp, #-8]
    1274:	e0823003 	add	r3, r2, r3
    1278:	e50b3008 	str	r3, [fp, #-8]
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e51b2010 	ldr	r2, [fp, #-16]
    1284:	e5832004 	str	r2, [r3, #4]
    1288:	e59f2068 	ldr	r2, [pc, #104]	@ 12f8 <malloc+0x160>
    128c:	e51b300c 	ldr	r3, [fp, #-12]
    1290:	e5823000 	str	r3, [r2]
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e2833008 	add	r3, r3, #8
    129c:	ea000012 	b	12ec <malloc+0x154>
    12a0:	e59f3050 	ldr	r3, [pc, #80]	@ 12f8 <malloc+0x160>
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e51b2008 	ldr	r2, [fp, #-8]
    12ac:	e1520003 	cmp	r2, r3
    12b0:	1a000007 	bne	12d4 <malloc+0x13c>
    12b4:	e51b0010 	ldr	r0, [fp, #-16]
    12b8:	ebffff94 	bl	1110 <morecore>
    12bc:	e50b0008 	str	r0, [fp, #-8]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e3530000 	cmp	r3, #0
    12c8:	1a000001 	bne	12d4 <malloc+0x13c>
    12cc:	e3a03000 	mov	r3, #0
    12d0:	ea000005 	b	12ec <malloc+0x154>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e50b300c 	str	r3, [fp, #-12]
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e50b3008 	str	r3, [fp, #-8]
    12e8:	eaffffc8 	b	1210 <malloc+0x78>
    12ec:	e1a00003 	mov	r0, r3
    12f0:	e24bd004 	sub	sp, fp, #4
    12f4:	e8bd8800 	pop	{fp, pc}
    12f8:	00001668 	.word	0x00001668
    12fc:	00001660 	.word	0x00001660

00001300 <__udivsi3>:
    1300:	e2512001 	subs	r2, r1, #1
    1304:	012fff1e 	bxeq	lr
    1308:	3a000036 	bcc	13e8 <__udivsi3+0xe8>
    130c:	e1500001 	cmp	r0, r1
    1310:	9a000022 	bls	13a0 <__udivsi3+0xa0>
    1314:	e1110002 	tst	r1, r2
    1318:	0a000023 	beq	13ac <__udivsi3+0xac>
    131c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1320:	01a01181 	lsleq	r1, r1, #3
    1324:	03a03008 	moveq	r3, #8
    1328:	13a03001 	movne	r3, #1
    132c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1330:	31510000 	cmpcc	r1, r0
    1334:	31a01201 	lslcc	r1, r1, #4
    1338:	31a03203 	lslcc	r3, r3, #4
    133c:	3afffffa 	bcc	132c <__udivsi3+0x2c>
    1340:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1344:	31510000 	cmpcc	r1, r0
    1348:	31a01081 	lslcc	r1, r1, #1
    134c:	31a03083 	lslcc	r3, r3, #1
    1350:	3afffffa 	bcc	1340 <__udivsi3+0x40>
    1354:	e3a02000 	mov	r2, #0
    1358:	e1500001 	cmp	r0, r1
    135c:	20400001 	subcs	r0, r0, r1
    1360:	21822003 	orrcs	r2, r2, r3
    1364:	e15000a1 	cmp	r0, r1, lsr #1
    1368:	204000a1 	subcs	r0, r0, r1, lsr #1
    136c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1370:	e1500121 	cmp	r0, r1, lsr #2
    1374:	20400121 	subcs	r0, r0, r1, lsr #2
    1378:	21822123 	orrcs	r2, r2, r3, lsr #2
    137c:	e15001a1 	cmp	r0, r1, lsr #3
    1380:	204001a1 	subcs	r0, r0, r1, lsr #3
    1384:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1388:	e3500000 	cmp	r0, #0
    138c:	11b03223 	lsrsne	r3, r3, #4
    1390:	11a01221 	lsrne	r1, r1, #4
    1394:	1affffef 	bne	1358 <__udivsi3+0x58>
    1398:	e1a00002 	mov	r0, r2
    139c:	e12fff1e 	bx	lr
    13a0:	03a00001 	moveq	r0, #1
    13a4:	13a00000 	movne	r0, #0
    13a8:	e12fff1e 	bx	lr
    13ac:	e3510801 	cmp	r1, #65536	@ 0x10000
    13b0:	21a01821 	lsrcs	r1, r1, #16
    13b4:	23a02010 	movcs	r2, #16
    13b8:	33a02000 	movcc	r2, #0
    13bc:	e3510c01 	cmp	r1, #256	@ 0x100
    13c0:	21a01421 	lsrcs	r1, r1, #8
    13c4:	22822008 	addcs	r2, r2, #8
    13c8:	e3510010 	cmp	r1, #16
    13cc:	21a01221 	lsrcs	r1, r1, #4
    13d0:	22822004 	addcs	r2, r2, #4
    13d4:	e3510004 	cmp	r1, #4
    13d8:	82822003 	addhi	r2, r2, #3
    13dc:	908220a1 	addls	r2, r2, r1, lsr #1
    13e0:	e1a00230 	lsr	r0, r0, r2
    13e4:	e12fff1e 	bx	lr
    13e8:	e3500000 	cmp	r0, #0
    13ec:	13e00000 	mvnne	r0, #0
    13f0:	ea000007 	b	1414 <__aeabi_idiv0>

000013f4 <__aeabi_uidivmod>:
    13f4:	e3510000 	cmp	r1, #0
    13f8:	0afffffa 	beq	13e8 <__udivsi3+0xe8>
    13fc:	e92d4003 	push	{r0, r1, lr}
    1400:	ebffffbe 	bl	1300 <__udivsi3>
    1404:	e8bd4006 	pop	{r1, r2, lr}
    1408:	e0030092 	mul	r3, r2, r0
    140c:	e0411003 	sub	r1, r1, r3
    1410:	e12fff1e 	bx	lr

00001414 <__aeabi_idiv0>:
    1414:	e12fff1e 	bx	lr
