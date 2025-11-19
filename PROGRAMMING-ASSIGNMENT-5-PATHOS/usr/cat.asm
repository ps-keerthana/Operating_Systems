
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
      20:	eb00030a 	bl	c50 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb0002fd 	bl	c2c <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb00047a 	bl	1248 <printf>
      5c:	eb0002d7 	bl	bc0 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	0000194c 	.word	0x0000194c
      70:	00001904 	.word	0x00001904

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
      9c:	eb0002c7 	bl	bc0 <exit>
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
      c8:	eb000304 	bl	ce0 <open>
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
      fc:	eb000451 	bl	1248 <printf>
     100:	eb0002ae 	bl	bc0 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb0002d7 	bl	c74 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb0002a2 	bl	bc0 <exit>
     134:	00001918 	.word	0x00001918

00000138 <pg_pte>:
     138:	e92d4800 	push	{fp, lr}
     13c:	e28db004 	add	fp, sp, #4
     140:	e24dd008 	sub	sp, sp, #8
     144:	e50b0008 	str	r0, [fp, #-8]
     148:	e51b1008 	ldr	r1, [fp, #-8]
     14c:	e3a0001a 	mov	r0, #26
     150:	eb0003de 	bl	10d0 <syscall>
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
     178:	e3a0001b 	mov	r0, #27
     17c:	eb0003d3 	bl	10d0 <syscall>
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
     1a4:	e3a0001c 	mov	r0, #28
     1a8:	eb0003c8 	bl	10d0 <syscall>
     1ac:	e1a03000 	mov	r3, r0
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e24bd004 	sub	sp, fp, #4
     1b8:	e8bd8800 	pop	{fp, pc}

000001bc <kpt>:
     1bc:	e92d4800 	push	{fp, lr}
     1c0:	e28db004 	add	fp, sp, #4
     1c4:	e3a0001d 	mov	r0, #29
     1c8:	eb0003c0 	bl	10d0 <syscall>
     1cc:	e1a03000 	mov	r3, r0
     1d0:	e1a00003 	mov	r0, r3
     1d4:	e8bd8800 	pop	{fp, pc}

000001d8 <ugetpid>:
     1d8:	e92d4800 	push	{fp, lr}
     1dc:	e28db004 	add	fp, sp, #4
     1e0:	e3a0001e 	mov	r0, #30
     1e4:	eb0003b9 	bl	10d0 <syscall>
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
     4e8:	eb0001cf 	bl	c2c <read>
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
     590:	eb0001d2 	bl	ce0 <open>
     594:	e50b0008 	str	r0, [fp, #-8]
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e3530000 	cmp	r3, #0
     5a0:	aa000001 	bge	5ac <stat+0x38>
     5a4:	e3e03000 	mvn	r3, #0
     5a8:	ea000006 	b	5c8 <stat+0x54>
     5ac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e51b0008 	ldr	r0, [fp, #-8]
     5b4:	eb0001e4 	bl	d4c <fstat>
     5b8:	e50b000c 	str	r0, [fp, #-12]
     5bc:	e51b0008 	ldr	r0, [fp, #-8]
     5c0:	eb0001ab 	bl	c74 <close>
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

0000083c <xchg>:
     83c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     840:	e28db000 	add	fp, sp, #0
     844:	e24dd014 	sub	sp, sp, #20
     848:	e50b0010 	str	r0, [fp, #-16]
     84c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     850:	e51b2010 	ldr	r2, [fp, #-16]
     854:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     858:	e1023091 	swp	r3, r1, [r2]
     85c:	e50b3008 	str	r3, [fp, #-8]
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e1a00003 	mov	r0, r3
     868:	e28bd000 	add	sp, fp, #0
     86c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <initiateLock>:
     874:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     878:	e28db000 	add	fp, sp, #0
     87c:	e24dd00c 	sub	sp, sp, #12
     880:	e50b0008 	str	r0, [fp, #-8]
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e3a02000 	mov	r2, #0
     88c:	e5832000 	str	r2, [r3]
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e3a02001 	mov	r2, #1
     898:	e5832004 	str	r2, [r3, #4]
     89c:	e1a00000 	nop			@ (mov r0, r0)
     8a0:	e28bd000 	add	sp, fp, #0
     8a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <acquireLock>:
     8ac:	e92d4800 	push	{fp, lr}
     8b0:	e28db004 	add	fp, sp, #4
     8b4:	e24dd008 	sub	sp, sp, #8
     8b8:	e50b0008 	str	r0, [fp, #-8]
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e5933004 	ldr	r3, [r3, #4]
     8c4:	e3530000 	cmp	r3, #0
     8c8:	0a000008 	beq	8f0 <acquireLock+0x44>
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e3a01001 	mov	r1, #1
     8d8:	e1a00003 	mov	r0, r3
     8dc:	ebffffd6 	bl	83c <xchg>
     8e0:	e1a03000 	mov	r3, r0
     8e4:	e3530000 	cmp	r3, #0
     8e8:	1afffff8 	bne	8d0 <acquireLock+0x24>
     8ec:	ea000000 	b	8f4 <acquireLock+0x48>
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}

000008fc <releaseLock>:
     8fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     900:	e28db000 	add	fp, sp, #0
     904:	e24dd00c 	sub	sp, sp, #12
     908:	e50b0008 	str	r0, [fp, #-8]
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5933004 	ldr	r3, [r3, #4]
     914:	e3530000 	cmp	r3, #0
     918:	0a000006 	beq	938 <releaseLock+0x3c>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e5933000 	ldr	r3, [r3]
     924:	e3530001 	cmp	r3, #1
     928:	1a000002 	bne	938 <releaseLock+0x3c>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e3a02000 	mov	r2, #0
     934:	e5832000 	str	r2, [r3]
     938:	e1a00000 	nop			@ (mov r0, r0)
     93c:	e28bd000 	add	sp, fp, #0
     940:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <initiateCondVar>:
     948:	e92d4800 	push	{fp, lr}
     94c:	e28db004 	add	fp, sp, #4
     950:	e24dd008 	sub	sp, sp, #8
     954:	e50b0008 	str	r0, [fp, #-8]
     958:	eb0001b8 	bl	1040 <getChannel>
     95c:	e1a02000 	mov	r2, r0
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5832000 	str	r2, [r3]
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e3a02001 	mov	r2, #1
     970:	e5832004 	str	r2, [r3, #4]
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e24bd004 	sub	sp, fp, #4
     97c:	e8bd8800 	pop	{fp, pc}

00000980 <condWait>:
     980:	e92d4800 	push	{fp, lr}
     984:	e28db004 	add	fp, sp, #4
     988:	e24dd008 	sub	sp, sp, #8
     98c:	e50b0008 	str	r0, [fp, #-8]
     990:	e50b100c 	str	r1, [fp, #-12]
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e5933004 	ldr	r3, [r3, #4]
     99c:	e3530000 	cmp	r3, #0
     9a0:	0a00000c 	beq	9d8 <condWait+0x58>
     9a4:	e51b300c 	ldr	r3, [fp, #-12]
     9a8:	e5933004 	ldr	r3, [r3, #4]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	0a000008 	beq	9d8 <condWait+0x58>
     9b4:	e51b000c 	ldr	r0, [fp, #-12]
     9b8:	ebffffcf 	bl	8fc <releaseLock>
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e5933000 	ldr	r3, [r3]
     9c4:	e1a00003 	mov	r0, r3
     9c8:	eb000193 	bl	101c <sleepChan>
     9cc:	e51b000c 	ldr	r0, [fp, #-12]
     9d0:	ebffffb5 	bl	8ac <acquireLock>
     9d4:	ea000000 	b	9dc <condWait+0x5c>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <broadcast>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd008 	sub	sp, sp, #8
     9f0:	e50b0008 	str	r0, [fp, #-8]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e5933004 	ldr	r3, [r3, #4]
     9fc:	e3530000 	cmp	r3, #0
     a00:	0a000004 	beq	a18 <broadcast+0x34>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e5933000 	ldr	r3, [r3]
     a0c:	e1a00003 	mov	r0, r3
     a10:	eb000193 	bl	1064 <sigChan>
     a14:	ea000000 	b	a1c <broadcast+0x38>
     a18:	e1a00000 	nop			@ (mov r0, r0)
     a1c:	e24bd004 	sub	sp, fp, #4
     a20:	e8bd8800 	pop	{fp, pc}

00000a24 <signal>:
     a24:	e92d4800 	push	{fp, lr}
     a28:	e28db004 	add	fp, sp, #4
     a2c:	e24dd008 	sub	sp, sp, #8
     a30:	e50b0008 	str	r0, [fp, #-8]
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e5933004 	ldr	r3, [r3, #4]
     a3c:	e3530000 	cmp	r3, #0
     a40:	0a000004 	beq	a58 <signal+0x34>
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e5933000 	ldr	r3, [r3]
     a4c:	e1a00003 	mov	r0, r3
     a50:	eb00018c 	bl	1088 <sigOneChan>
     a54:	ea000000 	b	a5c <signal+0x38>
     a58:	e1a00000 	nop			@ (mov r0, r0)
     a5c:	e24bd004 	sub	sp, fp, #4
     a60:	e8bd8800 	pop	{fp, pc}

00000a64 <semInit>:
     a64:	e92d4800 	push	{fp, lr}
     a68:	e28db004 	add	fp, sp, #4
     a6c:	e24dd008 	sub	sp, sp, #8
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e50b100c 	str	r1, [fp, #-12]
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e2833004 	add	r3, r3, #4
     a80:	e1a00003 	mov	r0, r3
     a84:	ebffff7a 	bl	874 <initiateLock>
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e283300c 	add	r3, r3, #12
     a90:	e1a00003 	mov	r0, r3
     a94:	ebffffab 	bl	948 <initiateCondVar>
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e51b200c 	ldr	r2, [fp, #-12]
     aa0:	e5832000 	str	r2, [r3]
     aa4:	e51b3008 	ldr	r3, [fp, #-8]
     aa8:	e3a02001 	mov	r2, #1
     aac:	e5832014 	str	r2, [r3, #20]
     ab0:	e1a00000 	nop			@ (mov r0, r0)
     ab4:	e24bd004 	sub	sp, fp, #4
     ab8:	e8bd8800 	pop	{fp, pc}

00000abc <semUp>:
     abc:	e92d4800 	push	{fp, lr}
     ac0:	e28db004 	add	fp, sp, #4
     ac4:	e24dd008 	sub	sp, sp, #8
     ac8:	e50b0008 	str	r0, [fp, #-8]
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e2833004 	add	r3, r3, #4
     ad4:	e1a00003 	mov	r0, r3
     ad8:	ebffff73 	bl	8ac <acquireLock>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e5933000 	ldr	r3, [r3]
     ae4:	e2832001 	add	r2, r3, #1
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e5832000 	str	r2, [r3]
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e283300c 	add	r3, r3, #12
     af8:	e1a00003 	mov	r0, r3
     afc:	ebffffc8 	bl	a24 <signal>
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e2833004 	add	r3, r3, #4
     b08:	e1a00003 	mov	r0, r3
     b0c:	ebffff7a 	bl	8fc <releaseLock>
     b10:	e1a00000 	nop			@ (mov r0, r0)
     b14:	e24bd004 	sub	sp, fp, #4
     b18:	e8bd8800 	pop	{fp, pc}

00000b1c <semDown>:
     b1c:	e92d4800 	push	{fp, lr}
     b20:	e28db004 	add	fp, sp, #4
     b24:	e24dd008 	sub	sp, sp, #8
     b28:	e50b0008 	str	r0, [fp, #-8]
     b2c:	e51b3008 	ldr	r3, [fp, #-8]
     b30:	e2833004 	add	r3, r3, #4
     b34:	e1a00003 	mov	r0, r3
     b38:	ebffff5b 	bl	8ac <acquireLock>
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e5933000 	ldr	r3, [r3]
     b44:	e2432001 	sub	r2, r3, #1
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e5832000 	str	r2, [r3]
     b50:	ea000006 	b	b70 <semDown+0x54>
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e283200c 	add	r2, r3, #12
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e2833004 	add	r3, r3, #4
     b64:	e1a01003 	mov	r1, r3
     b68:	e1a00002 	mov	r0, r2
     b6c:	ebffff83 	bl	980 <condWait>
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e5933000 	ldr	r3, [r3]
     b78:	e3530000 	cmp	r3, #0
     b7c:	bafffff4 	blt	b54 <semDown+0x38>
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e2833004 	add	r3, r3, #4
     b88:	e1a00003 	mov	r0, r3
     b8c:	ebffff5a 	bl	8fc <releaseLock>
     b90:	e1a00000 	nop			@ (mov r0, r0)
     b94:	e24bd004 	sub	sp, fp, #4
     b98:	e8bd8800 	pop	{fp, pc}

00000b9c <fork>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00001 	mov	r0, #1
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <exit>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00002 	mov	r0, #2
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <wait>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00003 	mov	r0, #3
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <pipe>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00004 	mov	r0, #4
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <read>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00005 	mov	r0, #5
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <write>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00010 	mov	r0, #16
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <close>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00015 	mov	r0, #21
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <kill>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00006 	mov	r0, #6
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <exec>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00007 	mov	r0, #7
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <open>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a0000f 	mov	r0, #15
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <mknod>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a00011 	mov	r0, #17
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <unlink>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a00012 	mov	r0, #18
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <fstat>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a00008 	mov	r0, #8
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <link>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a00013 	mov	r0, #19
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <mkdir>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a00014 	mov	r0, #20
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <chdir>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00009 	mov	r0, #9
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <dup>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a0000a 	mov	r0, #10
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <getpid>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a0000b 	mov	r0, #11
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <sbrk>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a0000c 	mov	r0, #12
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <sleep>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a0000d 	mov	r0, #13
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <uptime>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a0000e 	mov	r0, #14
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <proclist>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a00016 	mov	r0, #22
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <settickets>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a00017 	mov	r0, #23
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <srand>:
     ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     edc:	e1a04003 	mov	r4, r3
     ee0:	e1a03002 	mov	r3, r2
     ee4:	e1a02001 	mov	r2, r1
     ee8:	e1a01000 	mov	r1, r0
     eec:	e3a00018 	mov	r0, #24
     ef0:	ef000000 	svc	0x00000000
     ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef8:	e12fff1e 	bx	lr

00000efc <getpinfo>:
     efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f00:	e1a04003 	mov	r4, r3
     f04:	e1a03002 	mov	r3, r2
     f08:	e1a02001 	mov	r2, r1
     f0c:	e1a01000 	mov	r1, r0
     f10:	e3a00019 	mov	r0, #25
     f14:	ef000000 	svc	0x00000000
     f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f1c:	e12fff1e 	bx	lr

00000f20 <print_pt>:
     f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f24:	e1a04003 	mov	r4, r3
     f28:	e1a03002 	mov	r3, r2
     f2c:	e1a02001 	mov	r2, r1
     f30:	e1a01000 	mov	r1, r0
     f34:	e3a0001f 	mov	r0, #31
     f38:	ef000000 	svc	0x00000000
     f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f40:	e12fff1e 	bx	lr

00000f44 <thread_create>:
     f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f48:	e1a04003 	mov	r4, r3
     f4c:	e1a03002 	mov	r3, r2
     f50:	e1a02001 	mov	r2, r1
     f54:	e1a01000 	mov	r1, r0
     f58:	e3a00020 	mov	r0, #32
     f5c:	ef000000 	svc	0x00000000
     f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f64:	e12fff1e 	bx	lr

00000f68 <thread_exit>:
     f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f6c:	e1a04003 	mov	r4, r3
     f70:	e1a03002 	mov	r3, r2
     f74:	e1a02001 	mov	r2, r1
     f78:	e1a01000 	mov	r1, r0
     f7c:	e3a00021 	mov	r0, #33	@ 0x21
     f80:	ef000000 	svc	0x00000000
     f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f88:	e12fff1e 	bx	lr

00000f8c <thread_join>:
     f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f90:	e1a04003 	mov	r4, r3
     f94:	e1a03002 	mov	r3, r2
     f98:	e1a02001 	mov	r2, r1
     f9c:	e1a01000 	mov	r1, r0
     fa0:	e3a00022 	mov	r0, #34	@ 0x22
     fa4:	ef000000 	svc	0x00000000
     fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fac:	e12fff1e 	bx	lr

00000fb0 <waitpid>:
     fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb4:	e1a04003 	mov	r4, r3
     fb8:	e1a03002 	mov	r3, r2
     fbc:	e1a02001 	mov	r2, r1
     fc0:	e1a01000 	mov	r1, r0
     fc4:	e3a00023 	mov	r0, #35	@ 0x23
     fc8:	ef000000 	svc	0x00000000
     fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd0:	e12fff1e 	bx	lr

00000fd4 <barrier_init>:
     fd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd8:	e1a04003 	mov	r4, r3
     fdc:	e1a03002 	mov	r3, r2
     fe0:	e1a02001 	mov	r2, r1
     fe4:	e1a01000 	mov	r1, r0
     fe8:	e3a00024 	mov	r0, #36	@ 0x24
     fec:	ef000000 	svc	0x00000000
     ff0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff4:	e12fff1e 	bx	lr

00000ff8 <barrier_check>:
     ff8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ffc:	e1a04003 	mov	r4, r3
    1000:	e1a03002 	mov	r3, r2
    1004:	e1a02001 	mov	r2, r1
    1008:	e1a01000 	mov	r1, r0
    100c:	e3a00025 	mov	r0, #37	@ 0x25
    1010:	ef000000 	svc	0x00000000
    1014:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1018:	e12fff1e 	bx	lr

0000101c <sleepChan>:
    101c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1020:	e1a04003 	mov	r4, r3
    1024:	e1a03002 	mov	r3, r2
    1028:	e1a02001 	mov	r2, r1
    102c:	e1a01000 	mov	r1, r0
    1030:	e3a00026 	mov	r0, #38	@ 0x26
    1034:	ef000000 	svc	0x00000000
    1038:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    103c:	e12fff1e 	bx	lr

00001040 <getChannel>:
    1040:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1044:	e1a04003 	mov	r4, r3
    1048:	e1a03002 	mov	r3, r2
    104c:	e1a02001 	mov	r2, r1
    1050:	e1a01000 	mov	r1, r0
    1054:	e3a00027 	mov	r0, #39	@ 0x27
    1058:	ef000000 	svc	0x00000000
    105c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1060:	e12fff1e 	bx	lr

00001064 <sigChan>:
    1064:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1068:	e1a04003 	mov	r4, r3
    106c:	e1a03002 	mov	r3, r2
    1070:	e1a02001 	mov	r2, r1
    1074:	e1a01000 	mov	r1, r0
    1078:	e3a00028 	mov	r0, #40	@ 0x28
    107c:	ef000000 	svc	0x00000000
    1080:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1084:	e12fff1e 	bx	lr

00001088 <sigOneChan>:
    1088:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    108c:	e1a04003 	mov	r4, r3
    1090:	e1a03002 	mov	r3, r2
    1094:	e1a02001 	mov	r2, r1
    1098:	e1a01000 	mov	r1, r0
    109c:	e3a00029 	mov	r0, #41	@ 0x29
    10a0:	ef000000 	svc	0x00000000
    10a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a8:	e12fff1e 	bx	lr

000010ac <symlink>:
    10ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b0:	e1a04003 	mov	r4, r3
    10b4:	e1a03002 	mov	r3, r2
    10b8:	e1a02001 	mov	r2, r1
    10bc:	e1a01000 	mov	r1, r0
    10c0:	e3a0002a 	mov	r0, #42	@ 0x2a
    10c4:	ef000000 	svc	0x00000000
    10c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10cc:	e12fff1e 	bx	lr

000010d0 <syscall>:
    10d0:	ef000000 	svc	0x00000000
    10d4:	e12fff1e 	bx	lr

000010d8 <putc>:
    10d8:	e92d4800 	push	{fp, lr}
    10dc:	e28db004 	add	fp, sp, #4
    10e0:	e24dd008 	sub	sp, sp, #8
    10e4:	e50b0008 	str	r0, [fp, #-8]
    10e8:	e1a03001 	mov	r3, r1
    10ec:	e54b3009 	strb	r3, [fp, #-9]
    10f0:	e24b3009 	sub	r3, fp, #9
    10f4:	e3a02001 	mov	r2, #1
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e51b0008 	ldr	r0, [fp, #-8]
    1100:	ebfffed2 	bl	c50 <write>
    1104:	e1a00000 	nop			@ (mov r0, r0)
    1108:	e24bd004 	sub	sp, fp, #4
    110c:	e8bd8800 	pop	{fp, pc}

00001110 <printint>:
    1110:	e92d4800 	push	{fp, lr}
    1114:	e28db004 	add	fp, sp, #4
    1118:	e24dd030 	sub	sp, sp, #48	@ 0x30
    111c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1120:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1124:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1128:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    112c:	e3a03000 	mov	r3, #0
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1138:	e3530000 	cmp	r3, #0
    113c:	0a000008 	beq	1164 <printint+0x54>
    1140:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1144:	e3530000 	cmp	r3, #0
    1148:	aa000005 	bge	1164 <printint+0x54>
    114c:	e3a03001 	mov	r3, #1
    1150:	e50b300c 	str	r3, [fp, #-12]
    1154:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1158:	e2633000 	rsb	r3, r3, #0
    115c:	e50b3010 	str	r3, [fp, #-16]
    1160:	ea000001 	b	116c <printint+0x5c>
    1164:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1168:	e50b3010 	str	r3, [fp, #-16]
    116c:	e3a03000 	mov	r3, #0
    1170:	e50b3008 	str	r3, [fp, #-8]
    1174:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1178:	e51b3010 	ldr	r3, [fp, #-16]
    117c:	e1a01002 	mov	r1, r2
    1180:	e1a00003 	mov	r0, r3
    1184:	eb0001d5 	bl	18e0 <__aeabi_uidivmod>
    1188:	e1a03001 	mov	r3, r1
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e2832001 	add	r2, r3, #1
    1198:	e50b2008 	str	r2, [fp, #-8]
    119c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1244 <printint+0x134>
    11a0:	e7d22001 	ldrb	r2, [r2, r1]
    11a4:	e2433004 	sub	r3, r3, #4
    11a8:	e083300b 	add	r3, r3, fp
    11ac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11b0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11b4:	e1a01003 	mov	r1, r3
    11b8:	e51b0010 	ldr	r0, [fp, #-16]
    11bc:	eb00018a 	bl	17ec <__udivsi3>
    11c0:	e1a03000 	mov	r3, r0
    11c4:	e50b3010 	str	r3, [fp, #-16]
    11c8:	e51b3010 	ldr	r3, [fp, #-16]
    11cc:	e3530000 	cmp	r3, #0
    11d0:	1affffe7 	bne	1174 <printint+0x64>
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e3530000 	cmp	r3, #0
    11dc:	0a00000e 	beq	121c <printint+0x10c>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e2832001 	add	r2, r3, #1
    11e8:	e50b2008 	str	r2, [fp, #-8]
    11ec:	e2433004 	sub	r3, r3, #4
    11f0:	e083300b 	add	r3, r3, fp
    11f4:	e3a0202d 	mov	r2, #45	@ 0x2d
    11f8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11fc:	ea000006 	b	121c <printint+0x10c>
    1200:	e24b2020 	sub	r2, fp, #32
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e0823003 	add	r3, r2, r3
    120c:	e5d33000 	ldrb	r3, [r3]
    1210:	e1a01003 	mov	r1, r3
    1214:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1218:	ebffffae 	bl	10d8 <putc>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e2433001 	sub	r3, r3, #1
    1224:	e50b3008 	str	r3, [fp, #-8]
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e3530000 	cmp	r3, #0
    1230:	aafffff2 	bge	1200 <printint+0xf0>
    1234:	e1a00000 	nop			@ (mov r0, r0)
    1238:	e1a00000 	nop			@ (mov r0, r0)
    123c:	e24bd004 	sub	sp, fp, #4
    1240:	e8bd8800 	pop	{fp, pc}
    1244:	00001938 	.word	0x00001938

00001248 <printf>:
    1248:	e92d000e 	push	{r1, r2, r3}
    124c:	e92d4800 	push	{fp, lr}
    1250:	e28db004 	add	fp, sp, #4
    1254:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1258:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    125c:	e3a03000 	mov	r3, #0
    1260:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1264:	e28b3008 	add	r3, fp, #8
    1268:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    126c:	e3a03000 	mov	r3, #0
    1270:	e50b3010 	str	r3, [fp, #-16]
    1274:	ea000074 	b	144c <printf+0x204>
    1278:	e59b2004 	ldr	r2, [fp, #4]
    127c:	e51b3010 	ldr	r3, [fp, #-16]
    1280:	e0823003 	add	r3, r2, r3
    1284:	e5d33000 	ldrb	r3, [r3]
    1288:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1290:	e3530000 	cmp	r3, #0
    1294:	1a00000b 	bne	12c8 <printf+0x80>
    1298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    129c:	e3530025 	cmp	r3, #37	@ 0x25
    12a0:	1a000002 	bne	12b0 <printf+0x68>
    12a4:	e3a03025 	mov	r3, #37	@ 0x25
    12a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12ac:	ea000063 	b	1440 <printf+0x1f8>
    12b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b4:	e6ef3073 	uxtb	r3, r3
    12b8:	e1a01003 	mov	r1, r3
    12bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c0:	ebffff84 	bl	10d8 <putc>
    12c4:	ea00005d 	b	1440 <printf+0x1f8>
    12c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12cc:	e3530025 	cmp	r3, #37	@ 0x25
    12d0:	1a00005a 	bne	1440 <printf+0x1f8>
    12d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d8:	e3530064 	cmp	r3, #100	@ 0x64
    12dc:	1a00000a 	bne	130c <printf+0xc4>
    12e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e1a01003 	mov	r1, r3
    12ec:	e3a03001 	mov	r3, #1
    12f0:	e3a0200a 	mov	r2, #10
    12f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f8:	ebffff84 	bl	1110 <printint>
    12fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1300:	e2833004 	add	r3, r3, #4
    1304:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1308:	ea00004a 	b	1438 <printf+0x1f0>
    130c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1310:	e3530078 	cmp	r3, #120	@ 0x78
    1314:	0a000002 	beq	1324 <printf+0xdc>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530070 	cmp	r3, #112	@ 0x70
    1320:	1a00000a 	bne	1350 <printf+0x108>
    1324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e1a01003 	mov	r1, r3
    1330:	e3a03000 	mov	r3, #0
    1334:	e3a02010 	mov	r2, #16
    1338:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    133c:	ebffff73 	bl	1110 <printint>
    1340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1344:	e2833004 	add	r3, r3, #4
    1348:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    134c:	ea000039 	b	1438 <printf+0x1f0>
    1350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1354:	e3530073 	cmp	r3, #115	@ 0x73
    1358:	1a000018 	bne	13c0 <printf+0x178>
    135c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e50b300c 	str	r3, [fp, #-12]
    1368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    136c:	e2833004 	add	r3, r3, #4
    1370:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e3530000 	cmp	r3, #0
    137c:	1a00000a 	bne	13ac <printf+0x164>
    1380:	e59f30f4 	ldr	r3, [pc, #244]	@ 147c <printf+0x234>
    1384:	e50b300c 	str	r3, [fp, #-12]
    1388:	ea000007 	b	13ac <printf+0x164>
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5d33000 	ldrb	r3, [r3]
    1394:	e1a01003 	mov	r1, r3
    1398:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    139c:	ebffff4d 	bl	10d8 <putc>
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e2833001 	add	r3, r3, #1
    13a8:	e50b300c 	str	r3, [fp, #-12]
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5d33000 	ldrb	r3, [r3]
    13b4:	e3530000 	cmp	r3, #0
    13b8:	1afffff3 	bne	138c <printf+0x144>
    13bc:	ea00001d 	b	1438 <printf+0x1f0>
    13c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c4:	e3530063 	cmp	r3, #99	@ 0x63
    13c8:	1a000009 	bne	13f4 <printf+0x1ac>
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e5933000 	ldr	r3, [r3]
    13d4:	e6ef3073 	uxtb	r3, r3
    13d8:	e1a01003 	mov	r1, r3
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff3c 	bl	10d8 <putc>
    13e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e8:	e2833004 	add	r3, r3, #4
    13ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13f0:	ea000010 	b	1438 <printf+0x1f0>
    13f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f8:	e3530025 	cmp	r3, #37	@ 0x25
    13fc:	1a000005 	bne	1418 <printf+0x1d0>
    1400:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1404:	e6ef3073 	uxtb	r3, r3
    1408:	e1a01003 	mov	r1, r3
    140c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1410:	ebffff30 	bl	10d8 <putc>
    1414:	ea000007 	b	1438 <printf+0x1f0>
    1418:	e3a01025 	mov	r1, #37	@ 0x25
    141c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1420:	ebffff2c 	bl	10d8 <putc>
    1424:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1428:	e6ef3073 	uxtb	r3, r3
    142c:	e1a01003 	mov	r1, r3
    1430:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1434:	ebffff27 	bl	10d8 <putc>
    1438:	e3a03000 	mov	r3, #0
    143c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1440:	e51b3010 	ldr	r3, [fp, #-16]
    1444:	e2833001 	add	r3, r3, #1
    1448:	e50b3010 	str	r3, [fp, #-16]
    144c:	e59b2004 	ldr	r2, [fp, #4]
    1450:	e51b3010 	ldr	r3, [fp, #-16]
    1454:	e0823003 	add	r3, r2, r3
    1458:	e5d33000 	ldrb	r3, [r3]
    145c:	e3530000 	cmp	r3, #0
    1460:	1affff84 	bne	1278 <printf+0x30>
    1464:	e1a00000 	nop			@ (mov r0, r0)
    1468:	e1a00000 	nop			@ (mov r0, r0)
    146c:	e24bd004 	sub	sp, fp, #4
    1470:	e8bd4800 	pop	{fp, lr}
    1474:	e28dd00c 	add	sp, sp, #12
    1478:	e12fff1e 	bx	lr
    147c:	00001930 	.word	0x00001930

00001480 <free>:
    1480:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1484:	e28db000 	add	fp, sp, #0
    1488:	e24dd014 	sub	sp, sp, #20
    148c:	e50b0010 	str	r0, [fp, #-16]
    1490:	e51b3010 	ldr	r3, [fp, #-16]
    1494:	e2433008 	sub	r3, r3, #8
    1498:	e50b300c 	str	r3, [fp, #-12]
    149c:	e59f3154 	ldr	r3, [pc, #340]	@ 15f8 <free+0x178>
    14a0:	e5933000 	ldr	r3, [r3]
    14a4:	e50b3008 	str	r3, [fp, #-8]
    14a8:	ea000010 	b	14f0 <free+0x70>
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e51b2008 	ldr	r2, [fp, #-8]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	3a000008 	bcc	14e4 <free+0x64>
    14c0:	e51b200c 	ldr	r2, [fp, #-12]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e1520003 	cmp	r2, r3
    14cc:	8a000010 	bhi	1514 <free+0x94>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e51b200c 	ldr	r2, [fp, #-12]
    14dc:	e1520003 	cmp	r2, r3
    14e0:	3a00000b 	bcc	1514 <free+0x94>
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e50b3008 	str	r3, [fp, #-8]
    14f0:	e51b200c 	ldr	r2, [fp, #-12]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e1520003 	cmp	r2, r3
    14fc:	9affffea 	bls	14ac <free+0x2c>
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e51b200c 	ldr	r2, [fp, #-12]
    150c:	e1520003 	cmp	r2, r3
    1510:	2affffe5 	bcs	14ac <free+0x2c>
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e5933004 	ldr	r3, [r3, #4]
    151c:	e1a03183 	lsl	r3, r3, #3
    1520:	e51b200c 	ldr	r2, [fp, #-12]
    1524:	e0822003 	add	r2, r2, r3
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5933000 	ldr	r3, [r3]
    1530:	e1520003 	cmp	r2, r3
    1534:	1a00000d 	bne	1570 <free+0xf0>
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5932004 	ldr	r2, [r3, #4]
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e5933004 	ldr	r3, [r3, #4]
    154c:	e0822003 	add	r2, r2, r3
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5832004 	str	r2, [r3, #4]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e5932000 	ldr	r2, [r3]
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e5832000 	str	r2, [r3]
    156c:	ea000003 	b	1580 <free+0x100>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5932000 	ldr	r2, [r3]
    1578:	e51b300c 	ldr	r3, [fp, #-12]
    157c:	e5832000 	str	r2, [r3]
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e5933004 	ldr	r3, [r3, #4]
    1588:	e1a03183 	lsl	r3, r3, #3
    158c:	e51b2008 	ldr	r2, [fp, #-8]
    1590:	e0823003 	add	r3, r2, r3
    1594:	e51b200c 	ldr	r2, [fp, #-12]
    1598:	e1520003 	cmp	r2, r3
    159c:	1a00000b 	bne	15d0 <free+0x150>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5932004 	ldr	r2, [r3, #4]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e5933004 	ldr	r3, [r3, #4]
    15b0:	e0822003 	add	r2, r2, r3
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5832004 	str	r2, [r3, #4]
    15bc:	e51b300c 	ldr	r3, [fp, #-12]
    15c0:	e5932000 	ldr	r2, [r3]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5832000 	str	r2, [r3]
    15cc:	ea000002 	b	15dc <free+0x15c>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e51b200c 	ldr	r2, [fp, #-12]
    15d8:	e5832000 	str	r2, [r3]
    15dc:	e59f2014 	ldr	r2, [pc, #20]	@ 15f8 <free+0x178>
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5823000 	str	r3, [r2]
    15e8:	e1a00000 	nop			@ (mov r0, r0)
    15ec:	e28bd000 	add	sp, fp, #0
    15f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15f4:	e12fff1e 	bx	lr
    15f8:	00001b54 	.word	0x00001b54

000015fc <morecore>:
    15fc:	e92d4800 	push	{fp, lr}
    1600:	e28db004 	add	fp, sp, #4
    1604:	e24dd010 	sub	sp, sp, #16
    1608:	e50b0010 	str	r0, [fp, #-16]
    160c:	e51b3010 	ldr	r3, [fp, #-16]
    1610:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1614:	2a000001 	bcs	1620 <morecore+0x24>
    1618:	e3a03a01 	mov	r3, #4096	@ 0x1000
    161c:	e50b3010 	str	r3, [fp, #-16]
    1620:	e51b3010 	ldr	r3, [fp, #-16]
    1624:	e1a03183 	lsl	r3, r3, #3
    1628:	e1a00003 	mov	r0, r3
    162c:	ebfffdfc 	bl	e24 <sbrk>
    1630:	e50b0008 	str	r0, [fp, #-8]
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e3730001 	cmn	r3, #1
    163c:	1a000001 	bne	1648 <morecore+0x4c>
    1640:	e3a03000 	mov	r3, #0
    1644:	ea00000a 	b	1674 <morecore+0x78>
    1648:	e51b3008 	ldr	r3, [fp, #-8]
    164c:	e50b300c 	str	r3, [fp, #-12]
    1650:	e51b300c 	ldr	r3, [fp, #-12]
    1654:	e51b2010 	ldr	r2, [fp, #-16]
    1658:	e5832004 	str	r2, [r3, #4]
    165c:	e51b300c 	ldr	r3, [fp, #-12]
    1660:	e2833008 	add	r3, r3, #8
    1664:	e1a00003 	mov	r0, r3
    1668:	ebffff84 	bl	1480 <free>
    166c:	e59f300c 	ldr	r3, [pc, #12]	@ 1680 <morecore+0x84>
    1670:	e5933000 	ldr	r3, [r3]
    1674:	e1a00003 	mov	r0, r3
    1678:	e24bd004 	sub	sp, fp, #4
    167c:	e8bd8800 	pop	{fp, pc}
    1680:	00001b54 	.word	0x00001b54

00001684 <malloc>:
    1684:	e92d4800 	push	{fp, lr}
    1688:	e28db004 	add	fp, sp, #4
    168c:	e24dd018 	sub	sp, sp, #24
    1690:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1694:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1698:	e2833007 	add	r3, r3, #7
    169c:	e1a031a3 	lsr	r3, r3, #3
    16a0:	e2833001 	add	r3, r3, #1
    16a4:	e50b3010 	str	r3, [fp, #-16]
    16a8:	e59f3134 	ldr	r3, [pc, #308]	@ 17e4 <malloc+0x160>
    16ac:	e5933000 	ldr	r3, [r3]
    16b0:	e50b300c 	str	r3, [fp, #-12]
    16b4:	e51b300c 	ldr	r3, [fp, #-12]
    16b8:	e3530000 	cmp	r3, #0
    16bc:	1a00000b 	bne	16f0 <malloc+0x6c>
    16c0:	e59f3120 	ldr	r3, [pc, #288]	@ 17e8 <malloc+0x164>
    16c4:	e50b300c 	str	r3, [fp, #-12]
    16c8:	e59f2114 	ldr	r2, [pc, #276]	@ 17e4 <malloc+0x160>
    16cc:	e51b300c 	ldr	r3, [fp, #-12]
    16d0:	e5823000 	str	r3, [r2]
    16d4:	e59f3108 	ldr	r3, [pc, #264]	@ 17e4 <malloc+0x160>
    16d8:	e5933000 	ldr	r3, [r3]
    16dc:	e59f2104 	ldr	r2, [pc, #260]	@ 17e8 <malloc+0x164>
    16e0:	e5823000 	str	r3, [r2]
    16e4:	e59f30fc 	ldr	r3, [pc, #252]	@ 17e8 <malloc+0x164>
    16e8:	e3a02000 	mov	r2, #0
    16ec:	e5832004 	str	r2, [r3, #4]
    16f0:	e51b300c 	ldr	r3, [fp, #-12]
    16f4:	e5933000 	ldr	r3, [r3]
    16f8:	e50b3008 	str	r3, [fp, #-8]
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e5933004 	ldr	r3, [r3, #4]
    1704:	e51b2010 	ldr	r2, [fp, #-16]
    1708:	e1520003 	cmp	r2, r3
    170c:	8a00001e 	bhi	178c <malloc+0x108>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5933004 	ldr	r3, [r3, #4]
    1718:	e51b2010 	ldr	r2, [fp, #-16]
    171c:	e1520003 	cmp	r2, r3
    1720:	1a000004 	bne	1738 <malloc+0xb4>
    1724:	e51b3008 	ldr	r3, [fp, #-8]
    1728:	e5932000 	ldr	r2, [r3]
    172c:	e51b300c 	ldr	r3, [fp, #-12]
    1730:	e5832000 	str	r2, [r3]
    1734:	ea00000e 	b	1774 <malloc+0xf0>
    1738:	e51b3008 	ldr	r3, [fp, #-8]
    173c:	e5932004 	ldr	r2, [r3, #4]
    1740:	e51b3010 	ldr	r3, [fp, #-16]
    1744:	e0422003 	sub	r2, r2, r3
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e5832004 	str	r2, [r3, #4]
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e5933004 	ldr	r3, [r3, #4]
    1758:	e1a03183 	lsl	r3, r3, #3
    175c:	e51b2008 	ldr	r2, [fp, #-8]
    1760:	e0823003 	add	r3, r2, r3
    1764:	e50b3008 	str	r3, [fp, #-8]
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e51b2010 	ldr	r2, [fp, #-16]
    1770:	e5832004 	str	r2, [r3, #4]
    1774:	e59f2068 	ldr	r2, [pc, #104]	@ 17e4 <malloc+0x160>
    1778:	e51b300c 	ldr	r3, [fp, #-12]
    177c:	e5823000 	str	r3, [r2]
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e2833008 	add	r3, r3, #8
    1788:	ea000012 	b	17d8 <malloc+0x154>
    178c:	e59f3050 	ldr	r3, [pc, #80]	@ 17e4 <malloc+0x160>
    1790:	e5933000 	ldr	r3, [r3]
    1794:	e51b2008 	ldr	r2, [fp, #-8]
    1798:	e1520003 	cmp	r2, r3
    179c:	1a000007 	bne	17c0 <malloc+0x13c>
    17a0:	e51b0010 	ldr	r0, [fp, #-16]
    17a4:	ebffff94 	bl	15fc <morecore>
    17a8:	e50b0008 	str	r0, [fp, #-8]
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e3530000 	cmp	r3, #0
    17b4:	1a000001 	bne	17c0 <malloc+0x13c>
    17b8:	e3a03000 	mov	r3, #0
    17bc:	ea000005 	b	17d8 <malloc+0x154>
    17c0:	e51b3008 	ldr	r3, [fp, #-8]
    17c4:	e50b300c 	str	r3, [fp, #-12]
    17c8:	e51b3008 	ldr	r3, [fp, #-8]
    17cc:	e5933000 	ldr	r3, [r3]
    17d0:	e50b3008 	str	r3, [fp, #-8]
    17d4:	eaffffc8 	b	16fc <malloc+0x78>
    17d8:	e1a00003 	mov	r0, r3
    17dc:	e24bd004 	sub	sp, fp, #4
    17e0:	e8bd8800 	pop	{fp, pc}
    17e4:	00001b54 	.word	0x00001b54
    17e8:	00001b4c 	.word	0x00001b4c

000017ec <__udivsi3>:
    17ec:	e2512001 	subs	r2, r1, #1
    17f0:	012fff1e 	bxeq	lr
    17f4:	3a000036 	bcc	18d4 <__udivsi3+0xe8>
    17f8:	e1500001 	cmp	r0, r1
    17fc:	9a000022 	bls	188c <__udivsi3+0xa0>
    1800:	e1110002 	tst	r1, r2
    1804:	0a000023 	beq	1898 <__udivsi3+0xac>
    1808:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    180c:	01a01181 	lsleq	r1, r1, #3
    1810:	03a03008 	moveq	r3, #8
    1814:	13a03001 	movne	r3, #1
    1818:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    181c:	31510000 	cmpcc	r1, r0
    1820:	31a01201 	lslcc	r1, r1, #4
    1824:	31a03203 	lslcc	r3, r3, #4
    1828:	3afffffa 	bcc	1818 <__udivsi3+0x2c>
    182c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1830:	31510000 	cmpcc	r1, r0
    1834:	31a01081 	lslcc	r1, r1, #1
    1838:	31a03083 	lslcc	r3, r3, #1
    183c:	3afffffa 	bcc	182c <__udivsi3+0x40>
    1840:	e3a02000 	mov	r2, #0
    1844:	e1500001 	cmp	r0, r1
    1848:	20400001 	subcs	r0, r0, r1
    184c:	21822003 	orrcs	r2, r2, r3
    1850:	e15000a1 	cmp	r0, r1, lsr #1
    1854:	204000a1 	subcs	r0, r0, r1, lsr #1
    1858:	218220a3 	orrcs	r2, r2, r3, lsr #1
    185c:	e1500121 	cmp	r0, r1, lsr #2
    1860:	20400121 	subcs	r0, r0, r1, lsr #2
    1864:	21822123 	orrcs	r2, r2, r3, lsr #2
    1868:	e15001a1 	cmp	r0, r1, lsr #3
    186c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1870:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1874:	e3500000 	cmp	r0, #0
    1878:	11b03223 	lsrsne	r3, r3, #4
    187c:	11a01221 	lsrne	r1, r1, #4
    1880:	1affffef 	bne	1844 <__udivsi3+0x58>
    1884:	e1a00002 	mov	r0, r2
    1888:	e12fff1e 	bx	lr
    188c:	03a00001 	moveq	r0, #1
    1890:	13a00000 	movne	r0, #0
    1894:	e12fff1e 	bx	lr
    1898:	e3510801 	cmp	r1, #65536	@ 0x10000
    189c:	21a01821 	lsrcs	r1, r1, #16
    18a0:	23a02010 	movcs	r2, #16
    18a4:	33a02000 	movcc	r2, #0
    18a8:	e3510c01 	cmp	r1, #256	@ 0x100
    18ac:	21a01421 	lsrcs	r1, r1, #8
    18b0:	22822008 	addcs	r2, r2, #8
    18b4:	e3510010 	cmp	r1, #16
    18b8:	21a01221 	lsrcs	r1, r1, #4
    18bc:	22822004 	addcs	r2, r2, #4
    18c0:	e3510004 	cmp	r1, #4
    18c4:	82822003 	addhi	r2, r2, #3
    18c8:	908220a1 	addls	r2, r2, r1, lsr #1
    18cc:	e1a00230 	lsr	r0, r0, r2
    18d0:	e12fff1e 	bx	lr
    18d4:	e3500000 	cmp	r0, #0
    18d8:	13e00000 	mvnne	r0, #0
    18dc:	ea000007 	b	1900 <__aeabi_idiv0>

000018e0 <__aeabi_uidivmod>:
    18e0:	e3510000 	cmp	r1, #0
    18e4:	0afffffa 	beq	18d4 <__udivsi3+0xe8>
    18e8:	e92d4003 	push	{r0, r1, lr}
    18ec:	ebffffbe 	bl	17ec <__udivsi3>
    18f0:	e8bd4006 	pop	{r1, r2, lr}
    18f4:	e0030092 	mul	r3, r2, r0
    18f8:	e0411003 	sub	r1, r1, r3
    18fc:	e12fff1e 	bx	lr

00001900 <__aeabi_idiv0>:
    1900:	e12fff1e 	bx	lr
