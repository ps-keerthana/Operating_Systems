
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <str_length>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e3a03000 	mov	r3, #0
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	ea000002 	b	28 <str_length+0x28>
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e2833001 	add	r3, r3, #1
      24:	e50b3008 	str	r3, [fp, #-8]
      28:	e51b3008 	ldr	r3, [fp, #-8]
      2c:	e51b2010 	ldr	r2, [fp, #-16]
      30:	e0823003 	add	r3, r2, r3
      34:	e5d33000 	ldrb	r3, [r3]
      38:	e3530000 	cmp	r3, #0
      3c:	1afffff6 	bne	1c <str_length+0x1c>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e1a00003 	mov	r0, r3
      48:	e28bd000 	add	sp, fp, #0
      4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      50:	e12fff1e 	bx	lr

00000054 <int_len>:
      54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      58:	e28db000 	add	fp, sp, #0
      5c:	e24dd014 	sub	sp, sp, #20
      60:	e50b0010 	str	r0, [fp, #-16]
      64:	e3a03000 	mov	r3, #0
      68:	e50b3008 	str	r3, [fp, #-8]
      6c:	e51b3010 	ldr	r3, [fp, #-16]
      70:	e3530000 	cmp	r3, #0
      74:	1a00000b 	bne	a8 <int_len+0x54>
      78:	e3a03001 	mov	r3, #1
      7c:	ea00000d 	b	b8 <int_len+0x64>
      80:	e51b3010 	ldr	r3, [fp, #-16]
      84:	e59f203c 	ldr	r2, [pc, #60]	@ c8 <int_len+0x74>
      88:	e0c21392 	smull	r1, r2, r2, r3
      8c:	e1a02142 	asr	r2, r2, #2
      90:	e1a03fc3 	asr	r3, r3, #31
      94:	e0423003 	sub	r3, r2, r3
      98:	e50b3010 	str	r3, [fp, #-16]
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e2833001 	add	r3, r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e51b3010 	ldr	r3, [fp, #-16]
      ac:	e3530000 	cmp	r3, #0
      b0:	cafffff2 	bgt	80 <int_len+0x2c>
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e1a00003 	mov	r0, r3
      bc:	e28bd000 	add	sp, fp, #0
      c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      c4:	e12fff1e 	bx	lr
      c8:	66666667 	.word	0x66666667

000000cc <print_spaces>:
      cc:	e92d4800 	push	{fp, lr}
      d0:	e28db004 	add	fp, sp, #4
      d4:	e24dd010 	sub	sp, sp, #16
      d8:	e50b0010 	str	r0, [fp, #-16]
      dc:	e3a03000 	mov	r3, #0
      e0:	e50b3008 	str	r3, [fp, #-8]
      e4:	ea000005 	b	100 <print_spaces+0x34>
      e8:	e59f1030 	ldr	r1, [pc, #48]	@ 120 <print_spaces+0x54>
      ec:	e3a00001 	mov	r0, #1
      f0:	eb00054f 	bl	1634 <printf>
      f4:	e51b3008 	ldr	r3, [fp, #-8]
      f8:	e2833001 	add	r3, r3, #1
      fc:	e50b3008 	str	r3, [fp, #-8]
     100:	e51b2008 	ldr	r2, [fp, #-8]
     104:	e51b3010 	ldr	r3, [fp, #-16]
     108:	e1520003 	cmp	r2, r3
     10c:	bafffff5 	blt	e8 <print_spaces+0x1c>
     110:	e1a00000 	nop			@ (mov r0, r0)
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e24bd004 	sub	sp, fp, #4
     11c:	e8bd8800 	pop	{fp, pc}
     120:	00001d28 	.word	0x00001d28

00000124 <main>:
     124:	e92d4800 	push	{fp, lr}
     128:	e28db004 	add	fp, sp, #4
     12c:	e24dde83 	sub	sp, sp, #2096	@ 0x830
     130:	e24dd008 	sub	sp, sp, #8
     134:	e50b0838 	str	r0, [fp, #-2104]	@ 0xfffff7c8
     138:	e50b183c 	str	r1, [fp, #-2108]	@ 0xfffff7c4
     13c:	e24b3e82 	sub	r3, fp, #2080	@ 0x820
     140:	e2433004 	sub	r3, r3, #4
     144:	e243300c 	sub	r3, r3, #12
     148:	e1a01003 	mov	r1, r3
     14c:	e3a00040 	mov	r0, #64	@ 0x40
     150:	eb000452 	bl	12a0 <proclist>
     154:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     158:	e3a03005 	mov	r3, #5
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	e3a03005 	mov	r3, #5
     164:	e50b300c 	str	r3, [fp, #-12]
     168:	e3a03008 	mov	r3, #8
     16c:	e50b3010 	str	r3, [fp, #-16]
     170:	e3a0300a 	mov	r3, #10
     174:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     180:	ea00003c 	b	278 <main+0x154>
     184:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     188:	e1a03283 	lsl	r3, r3, #5
     18c:	e2433004 	sub	r3, r3, #4
     190:	e083300b 	add	r3, r3, fp
     194:	e513382c 	ldr	r3, [r3, #-2092]	@ 0xfffff7d4
     198:	e1a00003 	mov	r0, r3
     19c:	ebffffac 	bl	54 <int_len>
     1a0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     1a4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1520003 	cmp	r2, r3
     1b0:	da000001 	ble	1bc <main+0x98>
     1b4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1c0:	e1a03283 	lsl	r3, r3, #5
     1c4:	e2433004 	sub	r3, r3, #4
     1c8:	e083300b 	add	r3, r3, fp
     1cc:	e5133828 	ldr	r3, [r3, #-2088]	@ 0xfffff7d8
     1d0:	e1a00003 	mov	r0, r3
     1d4:	ebffff9e 	bl	54 <int_len>
     1d8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     1dc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e1520003 	cmp	r2, r3
     1e8:	da000001 	ble	1f4 <main+0xd0>
     1ec:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     1f0:	e50b300c 	str	r3, [fp, #-12]
     1f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1f8:	e1a03283 	lsl	r3, r3, #5
     1fc:	e2433004 	sub	r3, r3, #4
     200:	e083300b 	add	r3, r3, fp
     204:	e5133810 	ldr	r3, [r3, #-2064]	@ 0xfffff7f0
     208:	e1a00003 	mov	r0, r3
     20c:	ebffff90 	bl	54 <int_len>
     210:	e50b002c 	str	r0, [fp, #-44]	@ 0xffffffd4
     214:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
     218:	e51b3010 	ldr	r3, [fp, #-16]
     21c:	e1520003 	cmp	r2, r3
     220:	da000001 	ble	22c <main+0x108>
     224:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     228:	e50b3010 	str	r3, [fp, #-16]
     22c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     230:	e1a03283 	lsl	r3, r3, #5
     234:	e2433004 	sub	r3, r3, #4
     238:	e083300b 	add	r3, r3, fp
     23c:	e5133814 	ldr	r3, [r3, #-2068]	@ 0xfffff7ec
     240:	e59f22dc 	ldr	r2, [pc, #732]	@ 524 <main+0x400>
     244:	e7923103 	ldr	r3, [r2, r3, lsl #2]
     248:	e1a00003 	mov	r0, r3
     24c:	ebffff6b 	bl	0 <str_length>
     250:	e50b0030 	str	r0, [fp, #-48]	@ 0xffffffd0
     254:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     258:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     25c:	e1520003 	cmp	r2, r3
     260:	da000001 	ble	26c <main+0x148>
     264:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     268:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     26c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     270:	e2833001 	add	r3, r3, #1
     274:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     278:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     27c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     280:	e1520003 	cmp	r2, r3
     284:	baffffbe 	blt	184 <main+0x60>
     288:	e59f1298 	ldr	r1, [pc, #664]	@ 528 <main+0x404>
     28c:	e3a00001 	mov	r0, #1
     290:	eb0004e7 	bl	1634 <printf>
     294:	e59f028c 	ldr	r0, [pc, #652]	@ 528 <main+0x404>
     298:	ebffff58 	bl	0 <str_length>
     29c:	e1a02000 	mov	r2, r0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e0433002 	sub	r3, r3, r2
     2a8:	e2833001 	add	r3, r3, #1
     2ac:	e1a00003 	mov	r0, r3
     2b0:	ebffff85 	bl	cc <print_spaces>
     2b4:	e59f1270 	ldr	r1, [pc, #624]	@ 52c <main+0x408>
     2b8:	e3a00001 	mov	r0, #1
     2bc:	eb0004dc 	bl	1634 <printf>
     2c0:	e59f0264 	ldr	r0, [pc, #612]	@ 52c <main+0x408>
     2c4:	ebffff4d 	bl	0 <str_length>
     2c8:	e1a02000 	mov	r2, r0
     2cc:	e51b300c 	ldr	r3, [fp, #-12]
     2d0:	e0433002 	sub	r3, r3, r2
     2d4:	e2833001 	add	r3, r3, #1
     2d8:	e1a00003 	mov	r0, r3
     2dc:	ebffff7a 	bl	cc <print_spaces>
     2e0:	e59f1248 	ldr	r1, [pc, #584]	@ 530 <main+0x40c>
     2e4:	e3a00001 	mov	r0, #1
     2e8:	eb0004d1 	bl	1634 <printf>
     2ec:	e59f023c 	ldr	r0, [pc, #572]	@ 530 <main+0x40c>
     2f0:	ebffff42 	bl	0 <str_length>
     2f4:	e1a02000 	mov	r2, r0
     2f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     2fc:	e0433002 	sub	r3, r3, r2
     300:	e2833001 	add	r3, r3, #1
     304:	e1a00003 	mov	r0, r3
     308:	ebffff6f 	bl	cc <print_spaces>
     30c:	e59f1220 	ldr	r1, [pc, #544]	@ 534 <main+0x410>
     310:	e3a00001 	mov	r0, #1
     314:	eb0004c6 	bl	1634 <printf>
     318:	e59f0214 	ldr	r0, [pc, #532]	@ 534 <main+0x410>
     31c:	ebffff37 	bl	0 <str_length>
     320:	e1a02000 	mov	r2, r0
     324:	e51b3010 	ldr	r3, [fp, #-16]
     328:	e0433002 	sub	r3, r3, r2
     32c:	e2833001 	add	r3, r3, #1
     330:	e1a00003 	mov	r0, r3
     334:	ebffff64 	bl	cc <print_spaces>
     338:	e59f11f8 	ldr	r1, [pc, #504]	@ 538 <main+0x414>
     33c:	e3a00001 	mov	r0, #1
     340:	eb0004bb 	bl	1634 <printf>
     344:	e3a03000 	mov	r3, #0
     348:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     34c:	ea00006f 	b	510 <main+0x3ec>
     350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     354:	e1a03283 	lsl	r3, r3, #5
     358:	e2433004 	sub	r3, r3, #4
     35c:	e083300b 	add	r3, r3, fp
     360:	e3a02000 	mov	r2, #0
     364:	e5432815 	strb	r2, [r3, #-2069]	@ 0xfffff7eb
     368:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     36c:	e1a03283 	lsl	r3, r3, #5
     370:	e2433004 	sub	r3, r3, #4
     374:	e083300b 	add	r3, r3, fp
     378:	e513382c 	ldr	r3, [r3, #-2092]	@ 0xfffff7d4
     37c:	e1a02003 	mov	r2, r3
     380:	e59f11b4 	ldr	r1, [pc, #436]	@ 53c <main+0x418>
     384:	e3a00001 	mov	r0, #1
     388:	eb0004a9 	bl	1634 <printf>
     38c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     390:	e1a03283 	lsl	r3, r3, #5
     394:	e2433004 	sub	r3, r3, #4
     398:	e083300b 	add	r3, r3, fp
     39c:	e513382c 	ldr	r3, [r3, #-2092]	@ 0xfffff7d4
     3a0:	e1a00003 	mov	r0, r3
     3a4:	ebffff2a 	bl	54 <int_len>
     3a8:	e1a02000 	mov	r2, r0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e0433002 	sub	r3, r3, r2
     3b4:	e2833001 	add	r3, r3, #1
     3b8:	e1a00003 	mov	r0, r3
     3bc:	ebffff42 	bl	cc <print_spaces>
     3c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3c4:	e1a03283 	lsl	r3, r3, #5
     3c8:	e2433004 	sub	r3, r3, #4
     3cc:	e083300b 	add	r3, r3, fp
     3d0:	e5133828 	ldr	r3, [r3, #-2088]	@ 0xfffff7d8
     3d4:	e1a02003 	mov	r2, r3
     3d8:	e59f115c 	ldr	r1, [pc, #348]	@ 53c <main+0x418>
     3dc:	e3a00001 	mov	r0, #1
     3e0:	eb000493 	bl	1634 <printf>
     3e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3e8:	e1a03283 	lsl	r3, r3, #5
     3ec:	e2433004 	sub	r3, r3, #4
     3f0:	e083300b 	add	r3, r3, fp
     3f4:	e5133828 	ldr	r3, [r3, #-2088]	@ 0xfffff7d8
     3f8:	e1a00003 	mov	r0, r3
     3fc:	ebffff14 	bl	54 <int_len>
     400:	e1a02000 	mov	r2, r0
     404:	e51b300c 	ldr	r3, [fp, #-12]
     408:	e0433002 	sub	r3, r3, r2
     40c:	e2833001 	add	r3, r3, #1
     410:	e1a00003 	mov	r0, r3
     414:	ebffff2c 	bl	cc <print_spaces>
     418:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     41c:	e1a03283 	lsl	r3, r3, #5
     420:	e2433004 	sub	r3, r3, #4
     424:	e083300b 	add	r3, r3, fp
     428:	e5133814 	ldr	r3, [r3, #-2068]	@ 0xfffff7ec
     42c:	e59f20f0 	ldr	r2, [pc, #240]	@ 524 <main+0x400>
     430:	e7923103 	ldr	r3, [r2, r3, lsl #2]
     434:	e1a02003 	mov	r2, r3
     438:	e59f1100 	ldr	r1, [pc, #256]	@ 540 <main+0x41c>
     43c:	e3a00001 	mov	r0, #1
     440:	eb00047b 	bl	1634 <printf>
     444:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     448:	e1a03283 	lsl	r3, r3, #5
     44c:	e2433004 	sub	r3, r3, #4
     450:	e083300b 	add	r3, r3, fp
     454:	e5133814 	ldr	r3, [r3, #-2068]	@ 0xfffff7ec
     458:	e59f20c4 	ldr	r2, [pc, #196]	@ 524 <main+0x400>
     45c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
     460:	e1a00003 	mov	r0, r3
     464:	ebfffee5 	bl	0 <str_length>
     468:	e1a02000 	mov	r2, r0
     46c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     470:	e0433002 	sub	r3, r3, r2
     474:	e2833001 	add	r3, r3, #1
     478:	e1a00003 	mov	r0, r3
     47c:	ebffff12 	bl	cc <print_spaces>
     480:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     484:	e1a03283 	lsl	r3, r3, #5
     488:	e2433004 	sub	r3, r3, #4
     48c:	e083300b 	add	r3, r3, fp
     490:	e5133810 	ldr	r3, [r3, #-2064]	@ 0xfffff7f0
     494:	e1a02003 	mov	r2, r3
     498:	e59f109c 	ldr	r1, [pc, #156]	@ 53c <main+0x418>
     49c:	e3a00001 	mov	r0, #1
     4a0:	eb000463 	bl	1634 <printf>
     4a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4a8:	e1a03283 	lsl	r3, r3, #5
     4ac:	e2433004 	sub	r3, r3, #4
     4b0:	e083300b 	add	r3, r3, fp
     4b4:	e5133810 	ldr	r3, [r3, #-2064]	@ 0xfffff7f0
     4b8:	e1a00003 	mov	r0, r3
     4bc:	ebfffee4 	bl	54 <int_len>
     4c0:	e1a02000 	mov	r2, r0
     4c4:	e51b3010 	ldr	r3, [fp, #-16]
     4c8:	e0433002 	sub	r3, r3, r2
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e1a00003 	mov	r0, r3
     4d4:	ebfffefc 	bl	cc <print_spaces>
     4d8:	e24b3e82 	sub	r3, fp, #2080	@ 0x820
     4dc:	e2433004 	sub	r3, r3, #4
     4e0:	e243300c 	sub	r3, r3, #12
     4e4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4e8:	e1a02282 	lsl	r2, r2, #5
     4ec:	e2822008 	add	r2, r2, #8
     4f0:	e0833002 	add	r3, r3, r2
     4f4:	e1a02003 	mov	r2, r3
     4f8:	e59f1044 	ldr	r1, [pc, #68]	@ 544 <main+0x420>
     4fc:	e3a00001 	mov	r0, #1
     500:	eb00044b 	bl	1634 <printf>
     504:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     508:	e2833001 	add	r3, r3, #1
     50c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     510:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     518:	e1520003 	cmp	r2, r3
     51c:	baffff8b 	blt	350 <main+0x22c>
     520:	eb0002aa 	bl	fd0 <exit>
     524:	00001d68 	.word	0x00001d68
     528:	00001d2c 	.word	0x00001d2c
     52c:	00001d30 	.word	0x00001d30
     530:	00001d38 	.word	0x00001d38
     534:	00001d40 	.word	0x00001d40
     538:	00001d4c 	.word	0x00001d4c
     53c:	00001d54 	.word	0x00001d54
     540:	00001d58 	.word	0x00001d58
     544:	00001d5c 	.word	0x00001d5c

00000548 <pg_pte>:
     548:	e92d4800 	push	{fp, lr}
     54c:	e28db004 	add	fp, sp, #4
     550:	e24dd008 	sub	sp, sp, #8
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e51b1008 	ldr	r1, [fp, #-8]
     55c:	e3a0001a 	mov	r0, #26
     560:	eb0003d5 	bl	14bc <syscall>
     564:	e1a03000 	mov	r3, r0
     568:	e1a00003 	mov	r0, r3
     56c:	e24bd004 	sub	sp, fp, #4
     570:	e8bd8800 	pop	{fp, pc}

00000574 <pg_pa>:
     574:	e92d4800 	push	{fp, lr}
     578:	e28db004 	add	fp, sp, #4
     57c:	e24dd008 	sub	sp, sp, #8
     580:	e50b0008 	str	r0, [fp, #-8]
     584:	e51b1008 	ldr	r1, [fp, #-8]
     588:	e3a0001b 	mov	r0, #27
     58c:	eb0003ca 	bl	14bc <syscall>
     590:	e1a03000 	mov	r3, r0
     594:	e1a00003 	mov	r0, r3
     598:	e24bd004 	sub	sp, fp, #4
     59c:	e8bd8800 	pop	{fp, pc}

000005a0 <pg_flags>:
     5a0:	e92d4800 	push	{fp, lr}
     5a4:	e28db004 	add	fp, sp, #4
     5a8:	e24dd008 	sub	sp, sp, #8
     5ac:	e50b0008 	str	r0, [fp, #-8]
     5b0:	e51b1008 	ldr	r1, [fp, #-8]
     5b4:	e3a0001c 	mov	r0, #28
     5b8:	eb0003bf 	bl	14bc <syscall>
     5bc:	e1a03000 	mov	r3, r0
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e24bd004 	sub	sp, fp, #4
     5c8:	e8bd8800 	pop	{fp, pc}

000005cc <kpt>:
     5cc:	e92d4800 	push	{fp, lr}
     5d0:	e28db004 	add	fp, sp, #4
     5d4:	e3a0001d 	mov	r0, #29
     5d8:	eb0003b7 	bl	14bc <syscall>
     5dc:	e1a03000 	mov	r3, r0
     5e0:	e1a00003 	mov	r0, r3
     5e4:	e8bd8800 	pop	{fp, pc}

000005e8 <ugetpid>:
     5e8:	e92d4800 	push	{fp, lr}
     5ec:	e28db004 	add	fp, sp, #4
     5f0:	e3a0001e 	mov	r0, #30
     5f4:	eb0003b0 	bl	14bc <syscall>
     5f8:	e1a03000 	mov	r3, r0
     5fc:	e1a00003 	mov	r0, r3
     600:	e8bd8800 	pop	{fp, pc}

00000604 <strcpy>:
     604:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     608:	e28db000 	add	fp, sp, #0
     60c:	e24dd014 	sub	sp, sp, #20
     610:	e50b0010 	str	r0, [fp, #-16]
     614:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     618:	e51b3010 	ldr	r3, [fp, #-16]
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     628:	e2823001 	add	r3, r2, #1
     62c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e2831001 	add	r1, r3, #1
     638:	e50b1010 	str	r1, [fp, #-16]
     63c:	e5d22000 	ldrb	r2, [r2]
     640:	e5c32000 	strb	r2, [r3]
     644:	e5d33000 	ldrb	r3, [r3]
     648:	e3530000 	cmp	r3, #0
     64c:	1afffff4 	bne	624 <strcpy+0x20>
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e1a00003 	mov	r0, r3
     658:	e28bd000 	add	sp, fp, #0
     65c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <strcmp>:
     664:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     668:	e28db000 	add	fp, sp, #0
     66c:	e24dd00c 	sub	sp, sp, #12
     670:	e50b0008 	str	r0, [fp, #-8]
     674:	e50b100c 	str	r1, [fp, #-12]
     678:	ea000005 	b	694 <strcmp+0x30>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2833001 	add	r3, r3, #1
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	e51b300c 	ldr	r3, [fp, #-12]
     68c:	e2833001 	add	r3, r3, #1
     690:	e50b300c 	str	r3, [fp, #-12]
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e3530000 	cmp	r3, #0
     6a0:	0a000005 	beq	6bc <strcmp+0x58>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5d32000 	ldrb	r2, [r3]
     6ac:	e51b300c 	ldr	r3, [fp, #-12]
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e1520003 	cmp	r2, r3
     6b8:	0affffef 	beq	67c <strcmp+0x18>
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e1a02003 	mov	r2, r3
     6c8:	e51b300c 	ldr	r3, [fp, #-12]
     6cc:	e5d33000 	ldrb	r3, [r3]
     6d0:	e0423003 	sub	r3, r2, r3
     6d4:	e1a00003 	mov	r0, r3
     6d8:	e28bd000 	add	sp, fp, #0
     6dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <strlen>:
     6e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e8:	e28db000 	add	fp, sp, #0
     6ec:	e24dd014 	sub	sp, sp, #20
     6f0:	e50b0010 	str	r0, [fp, #-16]
     6f4:	e3a03000 	mov	r3, #0
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	ea000002 	b	70c <strlen+0x28>
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e2833001 	add	r3, r3, #1
     708:	e50b3008 	str	r3, [fp, #-8]
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e51b2010 	ldr	r2, [fp, #-16]
     714:	e0823003 	add	r3, r2, r3
     718:	e5d33000 	ldrb	r3, [r3]
     71c:	e3530000 	cmp	r3, #0
     720:	1afffff6 	bne	700 <strlen+0x1c>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e1a00003 	mov	r0, r3
     72c:	e28bd000 	add	sp, fp, #0
     730:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <memset>:
     738:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     73c:	e28db000 	add	fp, sp, #0
     740:	e24dd024 	sub	sp, sp, #36	@ 0x24
     744:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     748:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     74c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     750:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     754:	e50b3008 	str	r3, [fp, #-8]
     758:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     75c:	e54b300d 	strb	r3, [fp, #-13]
     760:	e55b200d 	ldrb	r2, [fp, #-13]
     764:	e1a03002 	mov	r3, r2
     768:	e1a03403 	lsl	r3, r3, #8
     76c:	e0833002 	add	r3, r3, r2
     770:	e1a03803 	lsl	r3, r3, #16
     774:	e1a02003 	mov	r2, r3
     778:	e55b300d 	ldrb	r3, [fp, #-13]
     77c:	e1a03403 	lsl	r3, r3, #8
     780:	e1822003 	orr	r2, r2, r3
     784:	e55b300d 	ldrb	r3, [fp, #-13]
     788:	e1823003 	orr	r3, r2, r3
     78c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     790:	ea000008 	b	7b8 <memset+0x80>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e55b200d 	ldrb	r2, [fp, #-13]
     79c:	e5c32000 	strb	r2, [r3]
     7a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7a4:	e2433001 	sub	r3, r3, #1
     7a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e2833001 	add	r3, r3, #1
     7b4:	e50b3008 	str	r3, [fp, #-8]
     7b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7bc:	e3530000 	cmp	r3, #0
     7c0:	0a000003 	beq	7d4 <memset+0x9c>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e2033003 	and	r3, r3, #3
     7cc:	e3530000 	cmp	r3, #0
     7d0:	1affffef 	bne	794 <memset+0x5c>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e50b300c 	str	r3, [fp, #-12]
     7dc:	ea000008 	b	804 <memset+0xcc>
     7e0:	e51b300c 	ldr	r3, [fp, #-12]
     7e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     7e8:	e5832000 	str	r2, [r3]
     7ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7f0:	e2433004 	sub	r3, r3, #4
     7f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     7f8:	e51b300c 	ldr	r3, [fp, #-12]
     7fc:	e2833004 	add	r3, r3, #4
     800:	e50b300c 	str	r3, [fp, #-12]
     804:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     808:	e3530003 	cmp	r3, #3
     80c:	8afffff3 	bhi	7e0 <memset+0xa8>
     810:	e51b300c 	ldr	r3, [fp, #-12]
     814:	e50b3008 	str	r3, [fp, #-8]
     818:	ea000008 	b	840 <memset+0x108>
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e55b200d 	ldrb	r2, [fp, #-13]
     824:	e5c32000 	strb	r2, [r3]
     828:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     82c:	e2433001 	sub	r3, r3, #1
     830:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e2833001 	add	r3, r3, #1
     83c:	e50b3008 	str	r3, [fp, #-8]
     840:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     844:	e3530000 	cmp	r3, #0
     848:	1afffff3 	bne	81c <memset+0xe4>
     84c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     850:	e1a00003 	mov	r0, r3
     854:	e28bd000 	add	sp, fp, #0
     858:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <strchr>:
     860:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     864:	e28db000 	add	fp, sp, #0
     868:	e24dd00c 	sub	sp, sp, #12
     86c:	e50b0008 	str	r0, [fp, #-8]
     870:	e1a03001 	mov	r3, r1
     874:	e54b3009 	strb	r3, [fp, #-9]
     878:	ea000009 	b	8a4 <strchr+0x44>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e5d33000 	ldrb	r3, [r3]
     884:	e55b2009 	ldrb	r2, [fp, #-9]
     888:	e1520003 	cmp	r2, r3
     88c:	1a000001 	bne	898 <strchr+0x38>
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	ea000007 	b	8b8 <strchr+0x58>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e2833001 	add	r3, r3, #1
     8a0:	e50b3008 	str	r3, [fp, #-8]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e5d33000 	ldrb	r3, [r3]
     8ac:	e3530000 	cmp	r3, #0
     8b0:	1afffff1 	bne	87c <strchr+0x1c>
     8b4:	e3a03000 	mov	r3, #0
     8b8:	e1a00003 	mov	r0, r3
     8bc:	e28bd000 	add	sp, fp, #0
     8c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <gets>:
     8c8:	e92d4800 	push	{fp, lr}
     8cc:	e28db004 	add	fp, sp, #4
     8d0:	e24dd018 	sub	sp, sp, #24
     8d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     8d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     8dc:	e3a03000 	mov	r3, #0
     8e0:	e50b3008 	str	r3, [fp, #-8]
     8e4:	ea000016 	b	944 <gets+0x7c>
     8e8:	e24b300d 	sub	r3, fp, #13
     8ec:	e3a02001 	mov	r2, #1
     8f0:	e1a01003 	mov	r1, r3
     8f4:	e3a00000 	mov	r0, #0
     8f8:	eb0001cf 	bl	103c <read>
     8fc:	e50b000c 	str	r0, [fp, #-12]
     900:	e51b300c 	ldr	r3, [fp, #-12]
     904:	e3530000 	cmp	r3, #0
     908:	da000013 	ble	95c <gets+0x94>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2832001 	add	r2, r3, #1
     914:	e50b2008 	str	r2, [fp, #-8]
     918:	e1a02003 	mov	r2, r3
     91c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     920:	e0833002 	add	r3, r3, r2
     924:	e55b200d 	ldrb	r2, [fp, #-13]
     928:	e5c32000 	strb	r2, [r3]
     92c:	e55b300d 	ldrb	r3, [fp, #-13]
     930:	e353000a 	cmp	r3, #10
     934:	0a000009 	beq	960 <gets+0x98>
     938:	e55b300d 	ldrb	r3, [fp, #-13]
     93c:	e353000d 	cmp	r3, #13
     940:	0a000006 	beq	960 <gets+0x98>
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2833001 	add	r3, r3, #1
     94c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     950:	e1520003 	cmp	r2, r3
     954:	caffffe3 	bgt	8e8 <gets+0x20>
     958:	ea000000 	b	960 <gets+0x98>
     95c:	e1a00000 	nop			@ (mov r0, r0)
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     968:	e0823003 	add	r3, r2, r3
     96c:	e3a02000 	mov	r2, #0
     970:	e5c32000 	strb	r2, [r3]
     974:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     978:	e1a00003 	mov	r0, r3
     97c:	e24bd004 	sub	sp, fp, #4
     980:	e8bd8800 	pop	{fp, pc}

00000984 <stat>:
     984:	e92d4800 	push	{fp, lr}
     988:	e28db004 	add	fp, sp, #4
     98c:	e24dd010 	sub	sp, sp, #16
     990:	e50b0010 	str	r0, [fp, #-16]
     994:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     998:	e3a01000 	mov	r1, #0
     99c:	e51b0010 	ldr	r0, [fp, #-16]
     9a0:	eb0001d2 	bl	10f0 <open>
     9a4:	e50b0008 	str	r0, [fp, #-8]
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	aa000001 	bge	9bc <stat+0x38>
     9b4:	e3e03000 	mvn	r3, #0
     9b8:	ea000006 	b	9d8 <stat+0x54>
     9bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     9c0:	e51b0008 	ldr	r0, [fp, #-8]
     9c4:	eb0001e4 	bl	115c <fstat>
     9c8:	e50b000c 	str	r0, [fp, #-12]
     9cc:	e51b0008 	ldr	r0, [fp, #-8]
     9d0:	eb0001ab 	bl	1084 <close>
     9d4:	e51b300c 	ldr	r3, [fp, #-12]
     9d8:	e1a00003 	mov	r0, r3
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <atoi>:
     9e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9e8:	e28db000 	add	fp, sp, #0
     9ec:	e24dd014 	sub	sp, sp, #20
     9f0:	e50b0010 	str	r0, [fp, #-16]
     9f4:	e3a03000 	mov	r3, #0
     9f8:	e50b3008 	str	r3, [fp, #-8]
     9fc:	ea00000c 	b	a34 <atoi+0x50>
     a00:	e51b2008 	ldr	r2, [fp, #-8]
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a03103 	lsl	r3, r3, #2
     a0c:	e0833002 	add	r3, r3, r2
     a10:	e1a03083 	lsl	r3, r3, #1
     a14:	e1a01003 	mov	r1, r3
     a18:	e51b3010 	ldr	r3, [fp, #-16]
     a1c:	e2832001 	add	r2, r3, #1
     a20:	e50b2010 	str	r2, [fp, #-16]
     a24:	e5d33000 	ldrb	r3, [r3]
     a28:	e0813003 	add	r3, r1, r3
     a2c:	e2433030 	sub	r3, r3, #48	@ 0x30
     a30:	e50b3008 	str	r3, [fp, #-8]
     a34:	e51b3010 	ldr	r3, [fp, #-16]
     a38:	e5d33000 	ldrb	r3, [r3]
     a3c:	e353002f 	cmp	r3, #47	@ 0x2f
     a40:	9a000003 	bls	a54 <atoi+0x70>
     a44:	e51b3010 	ldr	r3, [fp, #-16]
     a48:	e5d33000 	ldrb	r3, [r3]
     a4c:	e3530039 	cmp	r3, #57	@ 0x39
     a50:	9affffea 	bls	a00 <atoi+0x1c>
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e1a00003 	mov	r0, r3
     a5c:	e28bd000 	add	sp, fp, #0
     a60:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <memmove>:
     a68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a6c:	e28db000 	add	fp, sp, #0
     a70:	e24dd01c 	sub	sp, sp, #28
     a74:	e50b0010 	str	r0, [fp, #-16]
     a78:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a7c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a80:	e51b3010 	ldr	r3, [fp, #-16]
     a84:	e50b3008 	str	r3, [fp, #-8]
     a88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a8c:	e50b300c 	str	r3, [fp, #-12]
     a90:	ea000007 	b	ab4 <memmove+0x4c>
     a94:	e51b200c 	ldr	r2, [fp, #-12]
     a98:	e2823001 	add	r3, r2, #1
     a9c:	e50b300c 	str	r3, [fp, #-12]
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e2831001 	add	r1, r3, #1
     aa8:	e50b1008 	str	r1, [fp, #-8]
     aac:	e5d22000 	ldrb	r2, [r2]
     ab0:	e5c32000 	strb	r2, [r3]
     ab4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab8:	e2432001 	sub	r2, r3, #1
     abc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     ac0:	e3530000 	cmp	r3, #0
     ac4:	cafffff2 	bgt	a94 <memmove+0x2c>
     ac8:	e51b3010 	ldr	r3, [fp, #-16]
     acc:	e1a00003 	mov	r0, r3
     ad0:	e28bd000 	add	sp, fp, #0
     ad4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <strncmp>:
     adc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ae0:	e28db000 	add	fp, sp, #0
     ae4:	e24dd014 	sub	sp, sp, #20
     ae8:	e50b0008 	str	r0, [fp, #-8]
     aec:	e50b100c 	str	r1, [fp, #-12]
     af0:	e50b2010 	str	r2, [fp, #-16]
     af4:	ea000008 	b	b1c <strncmp+0x40>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2833001 	add	r3, r3, #1
     b00:	e50b3008 	str	r3, [fp, #-8]
     b04:	e51b300c 	ldr	r3, [fp, #-12]
     b08:	e2833001 	add	r3, r3, #1
     b0c:	e50b300c 	str	r3, [fp, #-12]
     b10:	e51b3010 	ldr	r3, [fp, #-16]
     b14:	e2433001 	sub	r3, r3, #1
     b18:	e50b3010 	str	r3, [fp, #-16]
     b1c:	e51b3010 	ldr	r3, [fp, #-16]
     b20:	e3530000 	cmp	r3, #0
     b24:	da00000d 	ble	b60 <strncmp+0x84>
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e5d33000 	ldrb	r3, [r3]
     b30:	e3530000 	cmp	r3, #0
     b34:	0a000009 	beq	b60 <strncmp+0x84>
     b38:	e51b300c 	ldr	r3, [fp, #-12]
     b3c:	e5d33000 	ldrb	r3, [r3]
     b40:	e3530000 	cmp	r3, #0
     b44:	0a000005 	beq	b60 <strncmp+0x84>
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e5d32000 	ldrb	r2, [r3]
     b50:	e51b300c 	ldr	r3, [fp, #-12]
     b54:	e5d33000 	ldrb	r3, [r3]
     b58:	e1520003 	cmp	r2, r3
     b5c:	0affffe5 	beq	af8 <strncmp+0x1c>
     b60:	e51b3010 	ldr	r3, [fp, #-16]
     b64:	e3530000 	cmp	r3, #0
     b68:	1a000001 	bne	b74 <strncmp+0x98>
     b6c:	e3a03000 	mov	r3, #0
     b70:	ea000005 	b	b8c <strncmp+0xb0>
     b74:	e51b3008 	ldr	r3, [fp, #-8]
     b78:	e5d33000 	ldrb	r3, [r3]
     b7c:	e1a02003 	mov	r2, r3
     b80:	e51b300c 	ldr	r3, [fp, #-12]
     b84:	e5d33000 	ldrb	r3, [r3]
     b88:	e0423003 	sub	r3, r2, r3
     b8c:	e1a00003 	mov	r0, r3
     b90:	e28bd000 	add	sp, fp, #0
     b94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <strncpy>:
     b9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ba0:	e28db000 	add	fp, sp, #0
     ba4:	e24dd01c 	sub	sp, sp, #28
     ba8:	e50b0010 	str	r0, [fp, #-16]
     bac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     bb0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     bb4:	e51b3010 	ldr	r3, [fp, #-16]
     bb8:	e50b3008 	str	r3, [fp, #-8]
     bbc:	ea00000a 	b	bec <strncpy+0x50>
     bc0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     bc4:	e2823001 	add	r3, r2, #1
     bc8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e2831001 	add	r1, r3, #1
     bd4:	e50b1008 	str	r1, [fp, #-8]
     bd8:	e5d22000 	ldrb	r2, [r2]
     bdc:	e5c32000 	strb	r2, [r3]
     be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e2433001 	sub	r3, r3, #1
     be8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	e3530000 	cmp	r3, #0
     bf4:	da00000c 	ble	c2c <strncpy+0x90>
     bf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bfc:	e5d33000 	ldrb	r3, [r3]
     c00:	e3530000 	cmp	r3, #0
     c04:	1affffed 	bne	bc0 <strncpy+0x24>
     c08:	ea000007 	b	c2c <strncpy+0x90>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e2832001 	add	r2, r3, #1
     c14:	e50b2008 	str	r2, [fp, #-8]
     c18:	e3a02000 	mov	r2, #0
     c1c:	e5c32000 	strb	r2, [r3]
     c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c24:	e2433001 	sub	r3, r3, #1
     c28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c30:	e3530000 	cmp	r3, #0
     c34:	cafffff4 	bgt	c0c <strncpy+0x70>
     c38:	e51b3010 	ldr	r3, [fp, #-16]
     c3c:	e1a00003 	mov	r0, r3
     c40:	e28bd000 	add	sp, fp, #0
     c44:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <xchg>:
     c4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c50:	e28db000 	add	fp, sp, #0
     c54:	e24dd014 	sub	sp, sp, #20
     c58:	e50b0010 	str	r0, [fp, #-16]
     c5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c60:	e51b2010 	ldr	r2, [fp, #-16]
     c64:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c68:	e1023091 	swp	r3, r1, [r2]
     c6c:	e50b3008 	str	r3, [fp, #-8]
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e1a00003 	mov	r0, r3
     c78:	e28bd000 	add	sp, fp, #0
     c7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <initiateLock>:
     c84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c88:	e28db000 	add	fp, sp, #0
     c8c:	e24dd00c 	sub	sp, sp, #12
     c90:	e50b0008 	str	r0, [fp, #-8]
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e3a02000 	mov	r2, #0
     c9c:	e5832000 	str	r2, [r3]
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e3a02001 	mov	r2, #1
     ca8:	e5832004 	str	r2, [r3, #4]
     cac:	e1a00000 	nop			@ (mov r0, r0)
     cb0:	e28bd000 	add	sp, fp, #0
     cb4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <acquireLock>:
     cbc:	e92d4800 	push	{fp, lr}
     cc0:	e28db004 	add	fp, sp, #4
     cc4:	e24dd008 	sub	sp, sp, #8
     cc8:	e50b0008 	str	r0, [fp, #-8]
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5933004 	ldr	r3, [r3, #4]
     cd4:	e3530000 	cmp	r3, #0
     cd8:	0a000008 	beq	d00 <acquireLock+0x44>
     cdc:	e1a00000 	nop			@ (mov r0, r0)
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e3a01001 	mov	r1, #1
     ce8:	e1a00003 	mov	r0, r3
     cec:	ebffffd6 	bl	c4c <xchg>
     cf0:	e1a03000 	mov	r3, r0
     cf4:	e3530000 	cmp	r3, #0
     cf8:	1afffff8 	bne	ce0 <acquireLock+0x24>
     cfc:	ea000000 	b	d04 <acquireLock+0x48>
     d00:	e1a00000 	nop			@ (mov r0, r0)
     d04:	e24bd004 	sub	sp, fp, #4
     d08:	e8bd8800 	pop	{fp, pc}

00000d0c <releaseLock>:
     d0c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d10:	e28db000 	add	fp, sp, #0
     d14:	e24dd00c 	sub	sp, sp, #12
     d18:	e50b0008 	str	r0, [fp, #-8]
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5933004 	ldr	r3, [r3, #4]
     d24:	e3530000 	cmp	r3, #0
     d28:	0a000006 	beq	d48 <releaseLock+0x3c>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e3530001 	cmp	r3, #1
     d38:	1a000002 	bne	d48 <releaseLock+0x3c>
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e3a02000 	mov	r2, #0
     d44:	e5832000 	str	r2, [r3]
     d48:	e1a00000 	nop			@ (mov r0, r0)
     d4c:	e28bd000 	add	sp, fp, #0
     d50:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <initiateCondVar>:
     d58:	e92d4800 	push	{fp, lr}
     d5c:	e28db004 	add	fp, sp, #4
     d60:	e24dd008 	sub	sp, sp, #8
     d64:	e50b0008 	str	r0, [fp, #-8]
     d68:	eb0001b8 	bl	1450 <getChannel>
     d6c:	e1a02000 	mov	r2, r0
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5832000 	str	r2, [r3]
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e3a02001 	mov	r2, #1
     d80:	e5832004 	str	r2, [r3, #4]
     d84:	e1a00000 	nop			@ (mov r0, r0)
     d88:	e24bd004 	sub	sp, fp, #4
     d8c:	e8bd8800 	pop	{fp, pc}

00000d90 <condWait>:
     d90:	e92d4800 	push	{fp, lr}
     d94:	e28db004 	add	fp, sp, #4
     d98:	e24dd008 	sub	sp, sp, #8
     d9c:	e50b0008 	str	r0, [fp, #-8]
     da0:	e50b100c 	str	r1, [fp, #-12]
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5933004 	ldr	r3, [r3, #4]
     dac:	e3530000 	cmp	r3, #0
     db0:	0a00000c 	beq	de8 <condWait+0x58>
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5933004 	ldr	r3, [r3, #4]
     dbc:	e3530000 	cmp	r3, #0
     dc0:	0a000008 	beq	de8 <condWait+0x58>
     dc4:	e51b000c 	ldr	r0, [fp, #-12]
     dc8:	ebffffcf 	bl	d0c <releaseLock>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e1a00003 	mov	r0, r3
     dd8:	eb000193 	bl	142c <sleepChan>
     ddc:	e51b000c 	ldr	r0, [fp, #-12]
     de0:	ebffffb5 	bl	cbc <acquireLock>
     de4:	ea000000 	b	dec <condWait+0x5c>
     de8:	e1a00000 	nop			@ (mov r0, r0)
     dec:	e24bd004 	sub	sp, fp, #4
     df0:	e8bd8800 	pop	{fp, pc}

00000df4 <broadcast>:
     df4:	e92d4800 	push	{fp, lr}
     df8:	e28db004 	add	fp, sp, #4
     dfc:	e24dd008 	sub	sp, sp, #8
     e00:	e50b0008 	str	r0, [fp, #-8]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5933004 	ldr	r3, [r3, #4]
     e0c:	e3530000 	cmp	r3, #0
     e10:	0a000004 	beq	e28 <broadcast+0x34>
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933000 	ldr	r3, [r3]
     e1c:	e1a00003 	mov	r0, r3
     e20:	eb000193 	bl	1474 <sigChan>
     e24:	ea000000 	b	e2c <broadcast+0x38>
     e28:	e1a00000 	nop			@ (mov r0, r0)
     e2c:	e24bd004 	sub	sp, fp, #4
     e30:	e8bd8800 	pop	{fp, pc}

00000e34 <signal>:
     e34:	e92d4800 	push	{fp, lr}
     e38:	e28db004 	add	fp, sp, #4
     e3c:	e24dd008 	sub	sp, sp, #8
     e40:	e50b0008 	str	r0, [fp, #-8]
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e5933004 	ldr	r3, [r3, #4]
     e4c:	e3530000 	cmp	r3, #0
     e50:	0a000004 	beq	e68 <signal+0x34>
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e1a00003 	mov	r0, r3
     e60:	eb00018c 	bl	1498 <sigOneChan>
     e64:	ea000000 	b	e6c <signal+0x38>
     e68:	e1a00000 	nop			@ (mov r0, r0)
     e6c:	e24bd004 	sub	sp, fp, #4
     e70:	e8bd8800 	pop	{fp, pc}

00000e74 <semInit>:
     e74:	e92d4800 	push	{fp, lr}
     e78:	e28db004 	add	fp, sp, #4
     e7c:	e24dd008 	sub	sp, sp, #8
     e80:	e50b0008 	str	r0, [fp, #-8]
     e84:	e50b100c 	str	r1, [fp, #-12]
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e2833004 	add	r3, r3, #4
     e90:	e1a00003 	mov	r0, r3
     e94:	ebffff7a 	bl	c84 <initiateLock>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e283300c 	add	r3, r3, #12
     ea0:	e1a00003 	mov	r0, r3
     ea4:	ebffffab 	bl	d58 <initiateCondVar>
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e5832000 	str	r2, [r3]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e3a02001 	mov	r2, #1
     ebc:	e5832014 	str	r2, [r3, #20]
     ec0:	e1a00000 	nop			@ (mov r0, r0)
     ec4:	e24bd004 	sub	sp, fp, #4
     ec8:	e8bd8800 	pop	{fp, pc}

00000ecc <semUp>:
     ecc:	e92d4800 	push	{fp, lr}
     ed0:	e28db004 	add	fp, sp, #4
     ed4:	e24dd008 	sub	sp, sp, #8
     ed8:	e50b0008 	str	r0, [fp, #-8]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e2833004 	add	r3, r3, #4
     ee4:	e1a00003 	mov	r0, r3
     ee8:	ebffff73 	bl	cbc <acquireLock>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5933000 	ldr	r3, [r3]
     ef4:	e2832001 	add	r2, r3, #1
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5832000 	str	r2, [r3]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e283300c 	add	r3, r3, #12
     f08:	e1a00003 	mov	r0, r3
     f0c:	ebffffc8 	bl	e34 <signal>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e2833004 	add	r3, r3, #4
     f18:	e1a00003 	mov	r0, r3
     f1c:	ebffff7a 	bl	d0c <releaseLock>
     f20:	e1a00000 	nop			@ (mov r0, r0)
     f24:	e24bd004 	sub	sp, fp, #4
     f28:	e8bd8800 	pop	{fp, pc}

00000f2c <semDown>:
     f2c:	e92d4800 	push	{fp, lr}
     f30:	e28db004 	add	fp, sp, #4
     f34:	e24dd008 	sub	sp, sp, #8
     f38:	e50b0008 	str	r0, [fp, #-8]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e2833004 	add	r3, r3, #4
     f44:	e1a00003 	mov	r0, r3
     f48:	ebffff5b 	bl	cbc <acquireLock>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e2432001 	sub	r2, r3, #1
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5832000 	str	r2, [r3]
     f60:	ea000006 	b	f80 <semDown+0x54>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e283200c 	add	r2, r3, #12
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e2833004 	add	r3, r3, #4
     f74:	e1a01003 	mov	r1, r3
     f78:	e1a00002 	mov	r0, r2
     f7c:	ebffff83 	bl	d90 <condWait>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e3530000 	cmp	r3, #0
     f8c:	bafffff4 	blt	f64 <semDown+0x38>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e2833004 	add	r3, r3, #4
     f98:	e1a00003 	mov	r0, r3
     f9c:	ebffff5a 	bl	d0c <releaseLock>
     fa0:	e1a00000 	nop			@ (mov r0, r0)
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd8800 	pop	{fp, pc}

00000fac <fork>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00001 	mov	r0, #1
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <exit>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00002 	mov	r0, #2
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <wait>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00003 	mov	r0, #3
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <pipe>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a00004 	mov	r0, #4
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <read>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a00005 	mov	r0, #5
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <write>:
    1060:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1064:	e1a04003 	mov	r4, r3
    1068:	e1a03002 	mov	r3, r2
    106c:	e1a02001 	mov	r2, r1
    1070:	e1a01000 	mov	r1, r0
    1074:	e3a00010 	mov	r0, #16
    1078:	ef000000 	svc	0x00000000
    107c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1080:	e12fff1e 	bx	lr

00001084 <close>:
    1084:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1088:	e1a04003 	mov	r4, r3
    108c:	e1a03002 	mov	r3, r2
    1090:	e1a02001 	mov	r2, r1
    1094:	e1a01000 	mov	r1, r0
    1098:	e3a00015 	mov	r0, #21
    109c:	ef000000 	svc	0x00000000
    10a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <kill>:
    10a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ac:	e1a04003 	mov	r4, r3
    10b0:	e1a03002 	mov	r3, r2
    10b4:	e1a02001 	mov	r2, r1
    10b8:	e1a01000 	mov	r1, r0
    10bc:	e3a00006 	mov	r0, #6
    10c0:	ef000000 	svc	0x00000000
    10c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c8:	e12fff1e 	bx	lr

000010cc <exec>:
    10cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10d0:	e1a04003 	mov	r4, r3
    10d4:	e1a03002 	mov	r3, r2
    10d8:	e1a02001 	mov	r2, r1
    10dc:	e1a01000 	mov	r1, r0
    10e0:	e3a00007 	mov	r0, #7
    10e4:	ef000000 	svc	0x00000000
    10e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10ec:	e12fff1e 	bx	lr

000010f0 <open>:
    10f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f4:	e1a04003 	mov	r4, r3
    10f8:	e1a03002 	mov	r3, r2
    10fc:	e1a02001 	mov	r2, r1
    1100:	e1a01000 	mov	r1, r0
    1104:	e3a0000f 	mov	r0, #15
    1108:	ef000000 	svc	0x00000000
    110c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1110:	e12fff1e 	bx	lr

00001114 <mknod>:
    1114:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1118:	e1a04003 	mov	r4, r3
    111c:	e1a03002 	mov	r3, r2
    1120:	e1a02001 	mov	r2, r1
    1124:	e1a01000 	mov	r1, r0
    1128:	e3a00011 	mov	r0, #17
    112c:	ef000000 	svc	0x00000000
    1130:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1134:	e12fff1e 	bx	lr

00001138 <unlink>:
    1138:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    113c:	e1a04003 	mov	r4, r3
    1140:	e1a03002 	mov	r3, r2
    1144:	e1a02001 	mov	r2, r1
    1148:	e1a01000 	mov	r1, r0
    114c:	e3a00012 	mov	r0, #18
    1150:	ef000000 	svc	0x00000000
    1154:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1158:	e12fff1e 	bx	lr

0000115c <fstat>:
    115c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1160:	e1a04003 	mov	r4, r3
    1164:	e1a03002 	mov	r3, r2
    1168:	e1a02001 	mov	r2, r1
    116c:	e1a01000 	mov	r1, r0
    1170:	e3a00008 	mov	r0, #8
    1174:	ef000000 	svc	0x00000000
    1178:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    117c:	e12fff1e 	bx	lr

00001180 <link>:
    1180:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1184:	e1a04003 	mov	r4, r3
    1188:	e1a03002 	mov	r3, r2
    118c:	e1a02001 	mov	r2, r1
    1190:	e1a01000 	mov	r1, r0
    1194:	e3a00013 	mov	r0, #19
    1198:	ef000000 	svc	0x00000000
    119c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11a0:	e12fff1e 	bx	lr

000011a4 <mkdir>:
    11a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11a8:	e1a04003 	mov	r4, r3
    11ac:	e1a03002 	mov	r3, r2
    11b0:	e1a02001 	mov	r2, r1
    11b4:	e1a01000 	mov	r1, r0
    11b8:	e3a00014 	mov	r0, #20
    11bc:	ef000000 	svc	0x00000000
    11c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11c4:	e12fff1e 	bx	lr

000011c8 <chdir>:
    11c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11cc:	e1a04003 	mov	r4, r3
    11d0:	e1a03002 	mov	r3, r2
    11d4:	e1a02001 	mov	r2, r1
    11d8:	e1a01000 	mov	r1, r0
    11dc:	e3a00009 	mov	r0, #9
    11e0:	ef000000 	svc	0x00000000
    11e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11e8:	e12fff1e 	bx	lr

000011ec <dup>:
    11ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11f0:	e1a04003 	mov	r4, r3
    11f4:	e1a03002 	mov	r3, r2
    11f8:	e1a02001 	mov	r2, r1
    11fc:	e1a01000 	mov	r1, r0
    1200:	e3a0000a 	mov	r0, #10
    1204:	ef000000 	svc	0x00000000
    1208:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    120c:	e12fff1e 	bx	lr

00001210 <getpid>:
    1210:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1214:	e1a04003 	mov	r4, r3
    1218:	e1a03002 	mov	r3, r2
    121c:	e1a02001 	mov	r2, r1
    1220:	e1a01000 	mov	r1, r0
    1224:	e3a0000b 	mov	r0, #11
    1228:	ef000000 	svc	0x00000000
    122c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1230:	e12fff1e 	bx	lr

00001234 <sbrk>:
    1234:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1238:	e1a04003 	mov	r4, r3
    123c:	e1a03002 	mov	r3, r2
    1240:	e1a02001 	mov	r2, r1
    1244:	e1a01000 	mov	r1, r0
    1248:	e3a0000c 	mov	r0, #12
    124c:	ef000000 	svc	0x00000000
    1250:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1254:	e12fff1e 	bx	lr

00001258 <sleep>:
    1258:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    125c:	e1a04003 	mov	r4, r3
    1260:	e1a03002 	mov	r3, r2
    1264:	e1a02001 	mov	r2, r1
    1268:	e1a01000 	mov	r1, r0
    126c:	e3a0000d 	mov	r0, #13
    1270:	ef000000 	svc	0x00000000
    1274:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1278:	e12fff1e 	bx	lr

0000127c <uptime>:
    127c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1280:	e1a04003 	mov	r4, r3
    1284:	e1a03002 	mov	r3, r2
    1288:	e1a02001 	mov	r2, r1
    128c:	e1a01000 	mov	r1, r0
    1290:	e3a0000e 	mov	r0, #14
    1294:	ef000000 	svc	0x00000000
    1298:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    129c:	e12fff1e 	bx	lr

000012a0 <proclist>:
    12a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12a4:	e1a04003 	mov	r4, r3
    12a8:	e1a03002 	mov	r3, r2
    12ac:	e1a02001 	mov	r2, r1
    12b0:	e1a01000 	mov	r1, r0
    12b4:	e3a00016 	mov	r0, #22
    12b8:	ef000000 	svc	0x00000000
    12bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12c0:	e12fff1e 	bx	lr

000012c4 <settickets>:
    12c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12c8:	e1a04003 	mov	r4, r3
    12cc:	e1a03002 	mov	r3, r2
    12d0:	e1a02001 	mov	r2, r1
    12d4:	e1a01000 	mov	r1, r0
    12d8:	e3a00017 	mov	r0, #23
    12dc:	ef000000 	svc	0x00000000
    12e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    12e4:	e12fff1e 	bx	lr

000012e8 <srand>:
    12e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    12ec:	e1a04003 	mov	r4, r3
    12f0:	e1a03002 	mov	r3, r2
    12f4:	e1a02001 	mov	r2, r1
    12f8:	e1a01000 	mov	r1, r0
    12fc:	e3a00018 	mov	r0, #24
    1300:	ef000000 	svc	0x00000000
    1304:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1308:	e12fff1e 	bx	lr

0000130c <getpinfo>:
    130c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1310:	e1a04003 	mov	r4, r3
    1314:	e1a03002 	mov	r3, r2
    1318:	e1a02001 	mov	r2, r1
    131c:	e1a01000 	mov	r1, r0
    1320:	e3a00019 	mov	r0, #25
    1324:	ef000000 	svc	0x00000000
    1328:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    132c:	e12fff1e 	bx	lr

00001330 <print_pt>:
    1330:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1334:	e1a04003 	mov	r4, r3
    1338:	e1a03002 	mov	r3, r2
    133c:	e1a02001 	mov	r2, r1
    1340:	e1a01000 	mov	r1, r0
    1344:	e3a0001f 	mov	r0, #31
    1348:	ef000000 	svc	0x00000000
    134c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1350:	e12fff1e 	bx	lr

00001354 <thread_create>:
    1354:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1358:	e1a04003 	mov	r4, r3
    135c:	e1a03002 	mov	r3, r2
    1360:	e1a02001 	mov	r2, r1
    1364:	e1a01000 	mov	r1, r0
    1368:	e3a00020 	mov	r0, #32
    136c:	ef000000 	svc	0x00000000
    1370:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1374:	e12fff1e 	bx	lr

00001378 <thread_exit>:
    1378:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    137c:	e1a04003 	mov	r4, r3
    1380:	e1a03002 	mov	r3, r2
    1384:	e1a02001 	mov	r2, r1
    1388:	e1a01000 	mov	r1, r0
    138c:	e3a00021 	mov	r0, #33	@ 0x21
    1390:	ef000000 	svc	0x00000000
    1394:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1398:	e12fff1e 	bx	lr

0000139c <thread_join>:
    139c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    13a0:	e1a04003 	mov	r4, r3
    13a4:	e1a03002 	mov	r3, r2
    13a8:	e1a02001 	mov	r2, r1
    13ac:	e1a01000 	mov	r1, r0
    13b0:	e3a00022 	mov	r0, #34	@ 0x22
    13b4:	ef000000 	svc	0x00000000
    13b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    13bc:	e12fff1e 	bx	lr

000013c0 <waitpid>:
    13c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    13c4:	e1a04003 	mov	r4, r3
    13c8:	e1a03002 	mov	r3, r2
    13cc:	e1a02001 	mov	r2, r1
    13d0:	e1a01000 	mov	r1, r0
    13d4:	e3a00023 	mov	r0, #35	@ 0x23
    13d8:	ef000000 	svc	0x00000000
    13dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    13e0:	e12fff1e 	bx	lr

000013e4 <barrier_init>:
    13e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    13e8:	e1a04003 	mov	r4, r3
    13ec:	e1a03002 	mov	r3, r2
    13f0:	e1a02001 	mov	r2, r1
    13f4:	e1a01000 	mov	r1, r0
    13f8:	e3a00024 	mov	r0, #36	@ 0x24
    13fc:	ef000000 	svc	0x00000000
    1400:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1404:	e12fff1e 	bx	lr

00001408 <barrier_check>:
    1408:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    140c:	e1a04003 	mov	r4, r3
    1410:	e1a03002 	mov	r3, r2
    1414:	e1a02001 	mov	r2, r1
    1418:	e1a01000 	mov	r1, r0
    141c:	e3a00025 	mov	r0, #37	@ 0x25
    1420:	ef000000 	svc	0x00000000
    1424:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1428:	e12fff1e 	bx	lr

0000142c <sleepChan>:
    142c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1430:	e1a04003 	mov	r4, r3
    1434:	e1a03002 	mov	r3, r2
    1438:	e1a02001 	mov	r2, r1
    143c:	e1a01000 	mov	r1, r0
    1440:	e3a00026 	mov	r0, #38	@ 0x26
    1444:	ef000000 	svc	0x00000000
    1448:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    144c:	e12fff1e 	bx	lr

00001450 <getChannel>:
    1450:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1454:	e1a04003 	mov	r4, r3
    1458:	e1a03002 	mov	r3, r2
    145c:	e1a02001 	mov	r2, r1
    1460:	e1a01000 	mov	r1, r0
    1464:	e3a00027 	mov	r0, #39	@ 0x27
    1468:	ef000000 	svc	0x00000000
    146c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1470:	e12fff1e 	bx	lr

00001474 <sigChan>:
    1474:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1478:	e1a04003 	mov	r4, r3
    147c:	e1a03002 	mov	r3, r2
    1480:	e1a02001 	mov	r2, r1
    1484:	e1a01000 	mov	r1, r0
    1488:	e3a00028 	mov	r0, #40	@ 0x28
    148c:	ef000000 	svc	0x00000000
    1490:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1494:	e12fff1e 	bx	lr

00001498 <sigOneChan>:
    1498:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    149c:	e1a04003 	mov	r4, r3
    14a0:	e1a03002 	mov	r3, r2
    14a4:	e1a02001 	mov	r2, r1
    14a8:	e1a01000 	mov	r1, r0
    14ac:	e3a00029 	mov	r0, #41	@ 0x29
    14b0:	ef000000 	svc	0x00000000
    14b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    14b8:	e12fff1e 	bx	lr

000014bc <syscall>:
    14bc:	ef000000 	svc	0x00000000
    14c0:	e12fff1e 	bx	lr

000014c4 <putc>:
    14c4:	e92d4800 	push	{fp, lr}
    14c8:	e28db004 	add	fp, sp, #4
    14cc:	e24dd008 	sub	sp, sp, #8
    14d0:	e50b0008 	str	r0, [fp, #-8]
    14d4:	e1a03001 	mov	r3, r1
    14d8:	e54b3009 	strb	r3, [fp, #-9]
    14dc:	e24b3009 	sub	r3, fp, #9
    14e0:	e3a02001 	mov	r2, #1
    14e4:	e1a01003 	mov	r1, r3
    14e8:	e51b0008 	ldr	r0, [fp, #-8]
    14ec:	ebfffedb 	bl	1060 <write>
    14f0:	e1a00000 	nop			@ (mov r0, r0)
    14f4:	e24bd004 	sub	sp, fp, #4
    14f8:	e8bd8800 	pop	{fp, pc}

000014fc <printint>:
    14fc:	e92d4800 	push	{fp, lr}
    1500:	e28db004 	add	fp, sp, #4
    1504:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1508:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    150c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1510:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1514:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1518:	e3a03000 	mov	r3, #0
    151c:	e50b300c 	str	r3, [fp, #-12]
    1520:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1524:	e3530000 	cmp	r3, #0
    1528:	0a000008 	beq	1550 <printint+0x54>
    152c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1530:	e3530000 	cmp	r3, #0
    1534:	aa000005 	bge	1550 <printint+0x54>
    1538:	e3a03001 	mov	r3, #1
    153c:	e50b300c 	str	r3, [fp, #-12]
    1540:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1544:	e2633000 	rsb	r3, r3, #0
    1548:	e50b3010 	str	r3, [fp, #-16]
    154c:	ea000001 	b	1558 <printint+0x5c>
    1550:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1554:	e50b3010 	str	r3, [fp, #-16]
    1558:	e3a03000 	mov	r3, #0
    155c:	e50b3008 	str	r3, [fp, #-8]
    1560:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1564:	e51b3010 	ldr	r3, [fp, #-16]
    1568:	e1a01002 	mov	r1, r2
    156c:	e1a00003 	mov	r0, r3
    1570:	eb0001d5 	bl	1ccc <__aeabi_uidivmod>
    1574:	e1a03001 	mov	r3, r1
    1578:	e1a01003 	mov	r1, r3
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e2832001 	add	r2, r3, #1
    1584:	e50b2008 	str	r2, [fp, #-8]
    1588:	e59f20a0 	ldr	r2, [pc, #160]	@ 1630 <printint+0x134>
    158c:	e7d22001 	ldrb	r2, [r2, r1]
    1590:	e2433004 	sub	r3, r3, #4
    1594:	e083300b 	add	r3, r3, fp
    1598:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    159c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    15a0:	e1a01003 	mov	r1, r3
    15a4:	e51b0010 	ldr	r0, [fp, #-16]
    15a8:	eb00018a 	bl	1bd8 <__udivsi3>
    15ac:	e1a03000 	mov	r3, r0
    15b0:	e50b3010 	str	r3, [fp, #-16]
    15b4:	e51b3010 	ldr	r3, [fp, #-16]
    15b8:	e3530000 	cmp	r3, #0
    15bc:	1affffe7 	bne	1560 <printint+0x64>
    15c0:	e51b300c 	ldr	r3, [fp, #-12]
    15c4:	e3530000 	cmp	r3, #0
    15c8:	0a00000e 	beq	1608 <printint+0x10c>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e2832001 	add	r2, r3, #1
    15d4:	e50b2008 	str	r2, [fp, #-8]
    15d8:	e2433004 	sub	r3, r3, #4
    15dc:	e083300b 	add	r3, r3, fp
    15e0:	e3a0202d 	mov	r2, #45	@ 0x2d
    15e4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    15e8:	ea000006 	b	1608 <printint+0x10c>
    15ec:	e24b2020 	sub	r2, fp, #32
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e0823003 	add	r3, r2, r3
    15f8:	e5d33000 	ldrb	r3, [r3]
    15fc:	e1a01003 	mov	r1, r3
    1600:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1604:	ebffffae 	bl	14c4 <putc>
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e2433001 	sub	r3, r3, #1
    1610:	e50b3008 	str	r3, [fp, #-8]
    1614:	e51b3008 	ldr	r3, [fp, #-8]
    1618:	e3530000 	cmp	r3, #0
    161c:	aafffff2 	bge	15ec <printint+0xf0>
    1620:	e1a00000 	nop			@ (mov r0, r0)
    1624:	e1a00000 	nop			@ (mov r0, r0)
    1628:	e24bd004 	sub	sp, fp, #4
    162c:	e8bd8800 	pop	{fp, pc}
    1630:	00001d80 	.word	0x00001d80

00001634 <printf>:
    1634:	e92d000e 	push	{r1, r2, r3}
    1638:	e92d4800 	push	{fp, lr}
    163c:	e28db004 	add	fp, sp, #4
    1640:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1644:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1648:	e3a03000 	mov	r3, #0
    164c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1650:	e28b3008 	add	r3, fp, #8
    1654:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1658:	e3a03000 	mov	r3, #0
    165c:	e50b3010 	str	r3, [fp, #-16]
    1660:	ea000074 	b	1838 <printf+0x204>
    1664:	e59b2004 	ldr	r2, [fp, #4]
    1668:	e51b3010 	ldr	r3, [fp, #-16]
    166c:	e0823003 	add	r3, r2, r3
    1670:	e5d33000 	ldrb	r3, [r3]
    1674:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1678:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    167c:	e3530000 	cmp	r3, #0
    1680:	1a00000b 	bne	16b4 <printf+0x80>
    1684:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1688:	e3530025 	cmp	r3, #37	@ 0x25
    168c:	1a000002 	bne	169c <printf+0x68>
    1690:	e3a03025 	mov	r3, #37	@ 0x25
    1694:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1698:	ea000063 	b	182c <printf+0x1f8>
    169c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    16a0:	e6ef3073 	uxtb	r3, r3
    16a4:	e1a01003 	mov	r1, r3
    16a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    16ac:	ebffff84 	bl	14c4 <putc>
    16b0:	ea00005d 	b	182c <printf+0x1f8>
    16b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    16b8:	e3530025 	cmp	r3, #37	@ 0x25
    16bc:	1a00005a 	bne	182c <printf+0x1f8>
    16c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    16c4:	e3530064 	cmp	r3, #100	@ 0x64
    16c8:	1a00000a 	bne	16f8 <printf+0xc4>
    16cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16d0:	e5933000 	ldr	r3, [r3]
    16d4:	e1a01003 	mov	r1, r3
    16d8:	e3a03001 	mov	r3, #1
    16dc:	e3a0200a 	mov	r2, #10
    16e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    16e4:	ebffff84 	bl	14fc <printint>
    16e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16ec:	e2833004 	add	r3, r3, #4
    16f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    16f4:	ea00004a 	b	1824 <printf+0x1f0>
    16f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    16fc:	e3530078 	cmp	r3, #120	@ 0x78
    1700:	0a000002 	beq	1710 <printf+0xdc>
    1704:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1708:	e3530070 	cmp	r3, #112	@ 0x70
    170c:	1a00000a 	bne	173c <printf+0x108>
    1710:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1714:	e5933000 	ldr	r3, [r3]
    1718:	e1a01003 	mov	r1, r3
    171c:	e3a03000 	mov	r3, #0
    1720:	e3a02010 	mov	r2, #16
    1724:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1728:	ebffff73 	bl	14fc <printint>
    172c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1730:	e2833004 	add	r3, r3, #4
    1734:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1738:	ea000039 	b	1824 <printf+0x1f0>
    173c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1740:	e3530073 	cmp	r3, #115	@ 0x73
    1744:	1a000018 	bne	17ac <printf+0x178>
    1748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    174c:	e5933000 	ldr	r3, [r3]
    1750:	e50b300c 	str	r3, [fp, #-12]
    1754:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1758:	e2833004 	add	r3, r3, #4
    175c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1760:	e51b300c 	ldr	r3, [fp, #-12]
    1764:	e3530000 	cmp	r3, #0
    1768:	1a00000a 	bne	1798 <printf+0x164>
    176c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1868 <printf+0x234>
    1770:	e50b300c 	str	r3, [fp, #-12]
    1774:	ea000007 	b	1798 <printf+0x164>
    1778:	e51b300c 	ldr	r3, [fp, #-12]
    177c:	e5d33000 	ldrb	r3, [r3]
    1780:	e1a01003 	mov	r1, r3
    1784:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1788:	ebffff4d 	bl	14c4 <putc>
    178c:	e51b300c 	ldr	r3, [fp, #-12]
    1790:	e2833001 	add	r3, r3, #1
    1794:	e50b300c 	str	r3, [fp, #-12]
    1798:	e51b300c 	ldr	r3, [fp, #-12]
    179c:	e5d33000 	ldrb	r3, [r3]
    17a0:	e3530000 	cmp	r3, #0
    17a4:	1afffff3 	bne	1778 <printf+0x144>
    17a8:	ea00001d 	b	1824 <printf+0x1f0>
    17ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    17b0:	e3530063 	cmp	r3, #99	@ 0x63
    17b4:	1a000009 	bne	17e0 <printf+0x1ac>
    17b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    17bc:	e5933000 	ldr	r3, [r3]
    17c0:	e6ef3073 	uxtb	r3, r3
    17c4:	e1a01003 	mov	r1, r3
    17c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    17cc:	ebffff3c 	bl	14c4 <putc>
    17d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    17d4:	e2833004 	add	r3, r3, #4
    17d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    17dc:	ea000010 	b	1824 <printf+0x1f0>
    17e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    17e4:	e3530025 	cmp	r3, #37	@ 0x25
    17e8:	1a000005 	bne	1804 <printf+0x1d0>
    17ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    17f0:	e6ef3073 	uxtb	r3, r3
    17f4:	e1a01003 	mov	r1, r3
    17f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    17fc:	ebffff30 	bl	14c4 <putc>
    1800:	ea000007 	b	1824 <printf+0x1f0>
    1804:	e3a01025 	mov	r1, #37	@ 0x25
    1808:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    180c:	ebffff2c 	bl	14c4 <putc>
    1810:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1814:	e6ef3073 	uxtb	r3, r3
    1818:	e1a01003 	mov	r1, r3
    181c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1820:	ebffff27 	bl	14c4 <putc>
    1824:	e3a03000 	mov	r3, #0
    1828:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    182c:	e51b3010 	ldr	r3, [fp, #-16]
    1830:	e2833001 	add	r3, r3, #1
    1834:	e50b3010 	str	r3, [fp, #-16]
    1838:	e59b2004 	ldr	r2, [fp, #4]
    183c:	e51b3010 	ldr	r3, [fp, #-16]
    1840:	e0823003 	add	r3, r2, r3
    1844:	e5d33000 	ldrb	r3, [r3]
    1848:	e3530000 	cmp	r3, #0
    184c:	1affff84 	bne	1664 <printf+0x30>
    1850:	e1a00000 	nop			@ (mov r0, r0)
    1854:	e1a00000 	nop			@ (mov r0, r0)
    1858:	e24bd004 	sub	sp, fp, #4
    185c:	e8bd4800 	pop	{fp, lr}
    1860:	e28dd00c 	add	sp, sp, #12
    1864:	e12fff1e 	bx	lr
    1868:	00001d60 	.word	0x00001d60

0000186c <free>:
    186c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1870:	e28db000 	add	fp, sp, #0
    1874:	e24dd014 	sub	sp, sp, #20
    1878:	e50b0010 	str	r0, [fp, #-16]
    187c:	e51b3010 	ldr	r3, [fp, #-16]
    1880:	e2433008 	sub	r3, r3, #8
    1884:	e50b300c 	str	r3, [fp, #-12]
    1888:	e59f3154 	ldr	r3, [pc, #340]	@ 19e4 <free+0x178>
    188c:	e5933000 	ldr	r3, [r3]
    1890:	e50b3008 	str	r3, [fp, #-8]
    1894:	ea000010 	b	18dc <free+0x70>
    1898:	e51b3008 	ldr	r3, [fp, #-8]
    189c:	e5933000 	ldr	r3, [r3]
    18a0:	e51b2008 	ldr	r2, [fp, #-8]
    18a4:	e1520003 	cmp	r2, r3
    18a8:	3a000008 	bcc	18d0 <free+0x64>
    18ac:	e51b200c 	ldr	r2, [fp, #-12]
    18b0:	e51b3008 	ldr	r3, [fp, #-8]
    18b4:	e1520003 	cmp	r2, r3
    18b8:	8a000010 	bhi	1900 <free+0x94>
    18bc:	e51b3008 	ldr	r3, [fp, #-8]
    18c0:	e5933000 	ldr	r3, [r3]
    18c4:	e51b200c 	ldr	r2, [fp, #-12]
    18c8:	e1520003 	cmp	r2, r3
    18cc:	3a00000b 	bcc	1900 <free+0x94>
    18d0:	e51b3008 	ldr	r3, [fp, #-8]
    18d4:	e5933000 	ldr	r3, [r3]
    18d8:	e50b3008 	str	r3, [fp, #-8]
    18dc:	e51b200c 	ldr	r2, [fp, #-12]
    18e0:	e51b3008 	ldr	r3, [fp, #-8]
    18e4:	e1520003 	cmp	r2, r3
    18e8:	9affffea 	bls	1898 <free+0x2c>
    18ec:	e51b3008 	ldr	r3, [fp, #-8]
    18f0:	e5933000 	ldr	r3, [r3]
    18f4:	e51b200c 	ldr	r2, [fp, #-12]
    18f8:	e1520003 	cmp	r2, r3
    18fc:	2affffe5 	bcs	1898 <free+0x2c>
    1900:	e51b300c 	ldr	r3, [fp, #-12]
    1904:	e5933004 	ldr	r3, [r3, #4]
    1908:	e1a03183 	lsl	r3, r3, #3
    190c:	e51b200c 	ldr	r2, [fp, #-12]
    1910:	e0822003 	add	r2, r2, r3
    1914:	e51b3008 	ldr	r3, [fp, #-8]
    1918:	e5933000 	ldr	r3, [r3]
    191c:	e1520003 	cmp	r2, r3
    1920:	1a00000d 	bne	195c <free+0xf0>
    1924:	e51b300c 	ldr	r3, [fp, #-12]
    1928:	e5932004 	ldr	r2, [r3, #4]
    192c:	e51b3008 	ldr	r3, [fp, #-8]
    1930:	e5933000 	ldr	r3, [r3]
    1934:	e5933004 	ldr	r3, [r3, #4]
    1938:	e0822003 	add	r2, r2, r3
    193c:	e51b300c 	ldr	r3, [fp, #-12]
    1940:	e5832004 	str	r2, [r3, #4]
    1944:	e51b3008 	ldr	r3, [fp, #-8]
    1948:	e5933000 	ldr	r3, [r3]
    194c:	e5932000 	ldr	r2, [r3]
    1950:	e51b300c 	ldr	r3, [fp, #-12]
    1954:	e5832000 	str	r2, [r3]
    1958:	ea000003 	b	196c <free+0x100>
    195c:	e51b3008 	ldr	r3, [fp, #-8]
    1960:	e5932000 	ldr	r2, [r3]
    1964:	e51b300c 	ldr	r3, [fp, #-12]
    1968:	e5832000 	str	r2, [r3]
    196c:	e51b3008 	ldr	r3, [fp, #-8]
    1970:	e5933004 	ldr	r3, [r3, #4]
    1974:	e1a03183 	lsl	r3, r3, #3
    1978:	e51b2008 	ldr	r2, [fp, #-8]
    197c:	e0823003 	add	r3, r2, r3
    1980:	e51b200c 	ldr	r2, [fp, #-12]
    1984:	e1520003 	cmp	r2, r3
    1988:	1a00000b 	bne	19bc <free+0x150>
    198c:	e51b3008 	ldr	r3, [fp, #-8]
    1990:	e5932004 	ldr	r2, [r3, #4]
    1994:	e51b300c 	ldr	r3, [fp, #-12]
    1998:	e5933004 	ldr	r3, [r3, #4]
    199c:	e0822003 	add	r2, r2, r3
    19a0:	e51b3008 	ldr	r3, [fp, #-8]
    19a4:	e5832004 	str	r2, [r3, #4]
    19a8:	e51b300c 	ldr	r3, [fp, #-12]
    19ac:	e5932000 	ldr	r2, [r3]
    19b0:	e51b3008 	ldr	r3, [fp, #-8]
    19b4:	e5832000 	str	r2, [r3]
    19b8:	ea000002 	b	19c8 <free+0x15c>
    19bc:	e51b3008 	ldr	r3, [fp, #-8]
    19c0:	e51b200c 	ldr	r2, [fp, #-12]
    19c4:	e5832000 	str	r2, [r3]
    19c8:	e59f2014 	ldr	r2, [pc, #20]	@ 19e4 <free+0x178>
    19cc:	e51b3008 	ldr	r3, [fp, #-8]
    19d0:	e5823000 	str	r3, [r2]
    19d4:	e1a00000 	nop			@ (mov r0, r0)
    19d8:	e28bd000 	add	sp, fp, #0
    19dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    19e0:	e12fff1e 	bx	lr
    19e4:	00001d9c 	.word	0x00001d9c

000019e8 <morecore>:
    19e8:	e92d4800 	push	{fp, lr}
    19ec:	e28db004 	add	fp, sp, #4
    19f0:	e24dd010 	sub	sp, sp, #16
    19f4:	e50b0010 	str	r0, [fp, #-16]
    19f8:	e51b3010 	ldr	r3, [fp, #-16]
    19fc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1a00:	2a000001 	bcs	1a0c <morecore+0x24>
    1a04:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1a08:	e50b3010 	str	r3, [fp, #-16]
    1a0c:	e51b3010 	ldr	r3, [fp, #-16]
    1a10:	e1a03183 	lsl	r3, r3, #3
    1a14:	e1a00003 	mov	r0, r3
    1a18:	ebfffe05 	bl	1234 <sbrk>
    1a1c:	e50b0008 	str	r0, [fp, #-8]
    1a20:	e51b3008 	ldr	r3, [fp, #-8]
    1a24:	e3730001 	cmn	r3, #1
    1a28:	1a000001 	bne	1a34 <morecore+0x4c>
    1a2c:	e3a03000 	mov	r3, #0
    1a30:	ea00000a 	b	1a60 <morecore+0x78>
    1a34:	e51b3008 	ldr	r3, [fp, #-8]
    1a38:	e50b300c 	str	r3, [fp, #-12]
    1a3c:	e51b300c 	ldr	r3, [fp, #-12]
    1a40:	e51b2010 	ldr	r2, [fp, #-16]
    1a44:	e5832004 	str	r2, [r3, #4]
    1a48:	e51b300c 	ldr	r3, [fp, #-12]
    1a4c:	e2833008 	add	r3, r3, #8
    1a50:	e1a00003 	mov	r0, r3
    1a54:	ebffff84 	bl	186c <free>
    1a58:	e59f300c 	ldr	r3, [pc, #12]	@ 1a6c <morecore+0x84>
    1a5c:	e5933000 	ldr	r3, [r3]
    1a60:	e1a00003 	mov	r0, r3
    1a64:	e24bd004 	sub	sp, fp, #4
    1a68:	e8bd8800 	pop	{fp, pc}
    1a6c:	00001d9c 	.word	0x00001d9c

00001a70 <malloc>:
    1a70:	e92d4800 	push	{fp, lr}
    1a74:	e28db004 	add	fp, sp, #4
    1a78:	e24dd018 	sub	sp, sp, #24
    1a7c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1a80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a84:	e2833007 	add	r3, r3, #7
    1a88:	e1a031a3 	lsr	r3, r3, #3
    1a8c:	e2833001 	add	r3, r3, #1
    1a90:	e50b3010 	str	r3, [fp, #-16]
    1a94:	e59f3134 	ldr	r3, [pc, #308]	@ 1bd0 <malloc+0x160>
    1a98:	e5933000 	ldr	r3, [r3]
    1a9c:	e50b300c 	str	r3, [fp, #-12]
    1aa0:	e51b300c 	ldr	r3, [fp, #-12]
    1aa4:	e3530000 	cmp	r3, #0
    1aa8:	1a00000b 	bne	1adc <malloc+0x6c>
    1aac:	e59f3120 	ldr	r3, [pc, #288]	@ 1bd4 <malloc+0x164>
    1ab0:	e50b300c 	str	r3, [fp, #-12]
    1ab4:	e59f2114 	ldr	r2, [pc, #276]	@ 1bd0 <malloc+0x160>
    1ab8:	e51b300c 	ldr	r3, [fp, #-12]
    1abc:	e5823000 	str	r3, [r2]
    1ac0:	e59f3108 	ldr	r3, [pc, #264]	@ 1bd0 <malloc+0x160>
    1ac4:	e5933000 	ldr	r3, [r3]
    1ac8:	e59f2104 	ldr	r2, [pc, #260]	@ 1bd4 <malloc+0x164>
    1acc:	e5823000 	str	r3, [r2]
    1ad0:	e59f30fc 	ldr	r3, [pc, #252]	@ 1bd4 <malloc+0x164>
    1ad4:	e3a02000 	mov	r2, #0
    1ad8:	e5832004 	str	r2, [r3, #4]
    1adc:	e51b300c 	ldr	r3, [fp, #-12]
    1ae0:	e5933000 	ldr	r3, [r3]
    1ae4:	e50b3008 	str	r3, [fp, #-8]
    1ae8:	e51b3008 	ldr	r3, [fp, #-8]
    1aec:	e5933004 	ldr	r3, [r3, #4]
    1af0:	e51b2010 	ldr	r2, [fp, #-16]
    1af4:	e1520003 	cmp	r2, r3
    1af8:	8a00001e 	bhi	1b78 <malloc+0x108>
    1afc:	e51b3008 	ldr	r3, [fp, #-8]
    1b00:	e5933004 	ldr	r3, [r3, #4]
    1b04:	e51b2010 	ldr	r2, [fp, #-16]
    1b08:	e1520003 	cmp	r2, r3
    1b0c:	1a000004 	bne	1b24 <malloc+0xb4>
    1b10:	e51b3008 	ldr	r3, [fp, #-8]
    1b14:	e5932000 	ldr	r2, [r3]
    1b18:	e51b300c 	ldr	r3, [fp, #-12]
    1b1c:	e5832000 	str	r2, [r3]
    1b20:	ea00000e 	b	1b60 <malloc+0xf0>
    1b24:	e51b3008 	ldr	r3, [fp, #-8]
    1b28:	e5932004 	ldr	r2, [r3, #4]
    1b2c:	e51b3010 	ldr	r3, [fp, #-16]
    1b30:	e0422003 	sub	r2, r2, r3
    1b34:	e51b3008 	ldr	r3, [fp, #-8]
    1b38:	e5832004 	str	r2, [r3, #4]
    1b3c:	e51b3008 	ldr	r3, [fp, #-8]
    1b40:	e5933004 	ldr	r3, [r3, #4]
    1b44:	e1a03183 	lsl	r3, r3, #3
    1b48:	e51b2008 	ldr	r2, [fp, #-8]
    1b4c:	e0823003 	add	r3, r2, r3
    1b50:	e50b3008 	str	r3, [fp, #-8]
    1b54:	e51b3008 	ldr	r3, [fp, #-8]
    1b58:	e51b2010 	ldr	r2, [fp, #-16]
    1b5c:	e5832004 	str	r2, [r3, #4]
    1b60:	e59f2068 	ldr	r2, [pc, #104]	@ 1bd0 <malloc+0x160>
    1b64:	e51b300c 	ldr	r3, [fp, #-12]
    1b68:	e5823000 	str	r3, [r2]
    1b6c:	e51b3008 	ldr	r3, [fp, #-8]
    1b70:	e2833008 	add	r3, r3, #8
    1b74:	ea000012 	b	1bc4 <malloc+0x154>
    1b78:	e59f3050 	ldr	r3, [pc, #80]	@ 1bd0 <malloc+0x160>
    1b7c:	e5933000 	ldr	r3, [r3]
    1b80:	e51b2008 	ldr	r2, [fp, #-8]
    1b84:	e1520003 	cmp	r2, r3
    1b88:	1a000007 	bne	1bac <malloc+0x13c>
    1b8c:	e51b0010 	ldr	r0, [fp, #-16]
    1b90:	ebffff94 	bl	19e8 <morecore>
    1b94:	e50b0008 	str	r0, [fp, #-8]
    1b98:	e51b3008 	ldr	r3, [fp, #-8]
    1b9c:	e3530000 	cmp	r3, #0
    1ba0:	1a000001 	bne	1bac <malloc+0x13c>
    1ba4:	e3a03000 	mov	r3, #0
    1ba8:	ea000005 	b	1bc4 <malloc+0x154>
    1bac:	e51b3008 	ldr	r3, [fp, #-8]
    1bb0:	e50b300c 	str	r3, [fp, #-12]
    1bb4:	e51b3008 	ldr	r3, [fp, #-8]
    1bb8:	e5933000 	ldr	r3, [r3]
    1bbc:	e50b3008 	str	r3, [fp, #-8]
    1bc0:	eaffffc8 	b	1ae8 <malloc+0x78>
    1bc4:	e1a00003 	mov	r0, r3
    1bc8:	e24bd004 	sub	sp, fp, #4
    1bcc:	e8bd8800 	pop	{fp, pc}
    1bd0:	00001d9c 	.word	0x00001d9c
    1bd4:	00001d94 	.word	0x00001d94

00001bd8 <__udivsi3>:
    1bd8:	e2512001 	subs	r2, r1, #1
    1bdc:	012fff1e 	bxeq	lr
    1be0:	3a000036 	bcc	1cc0 <__udivsi3+0xe8>
    1be4:	e1500001 	cmp	r0, r1
    1be8:	9a000022 	bls	1c78 <__udivsi3+0xa0>
    1bec:	e1110002 	tst	r1, r2
    1bf0:	0a000023 	beq	1c84 <__udivsi3+0xac>
    1bf4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1bf8:	01a01181 	lsleq	r1, r1, #3
    1bfc:	03a03008 	moveq	r3, #8
    1c00:	13a03001 	movne	r3, #1
    1c04:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1c08:	31510000 	cmpcc	r1, r0
    1c0c:	31a01201 	lslcc	r1, r1, #4
    1c10:	31a03203 	lslcc	r3, r3, #4
    1c14:	3afffffa 	bcc	1c04 <__udivsi3+0x2c>
    1c18:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1c1c:	31510000 	cmpcc	r1, r0
    1c20:	31a01081 	lslcc	r1, r1, #1
    1c24:	31a03083 	lslcc	r3, r3, #1
    1c28:	3afffffa 	bcc	1c18 <__udivsi3+0x40>
    1c2c:	e3a02000 	mov	r2, #0
    1c30:	e1500001 	cmp	r0, r1
    1c34:	20400001 	subcs	r0, r0, r1
    1c38:	21822003 	orrcs	r2, r2, r3
    1c3c:	e15000a1 	cmp	r0, r1, lsr #1
    1c40:	204000a1 	subcs	r0, r0, r1, lsr #1
    1c44:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1c48:	e1500121 	cmp	r0, r1, lsr #2
    1c4c:	20400121 	subcs	r0, r0, r1, lsr #2
    1c50:	21822123 	orrcs	r2, r2, r3, lsr #2
    1c54:	e15001a1 	cmp	r0, r1, lsr #3
    1c58:	204001a1 	subcs	r0, r0, r1, lsr #3
    1c5c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1c60:	e3500000 	cmp	r0, #0
    1c64:	11b03223 	lsrsne	r3, r3, #4
    1c68:	11a01221 	lsrne	r1, r1, #4
    1c6c:	1affffef 	bne	1c30 <__udivsi3+0x58>
    1c70:	e1a00002 	mov	r0, r2
    1c74:	e12fff1e 	bx	lr
    1c78:	03a00001 	moveq	r0, #1
    1c7c:	13a00000 	movne	r0, #0
    1c80:	e12fff1e 	bx	lr
    1c84:	e3510801 	cmp	r1, #65536	@ 0x10000
    1c88:	21a01821 	lsrcs	r1, r1, #16
    1c8c:	23a02010 	movcs	r2, #16
    1c90:	33a02000 	movcc	r2, #0
    1c94:	e3510c01 	cmp	r1, #256	@ 0x100
    1c98:	21a01421 	lsrcs	r1, r1, #8
    1c9c:	22822008 	addcs	r2, r2, #8
    1ca0:	e3510010 	cmp	r1, #16
    1ca4:	21a01221 	lsrcs	r1, r1, #4
    1ca8:	22822004 	addcs	r2, r2, #4
    1cac:	e3510004 	cmp	r1, #4
    1cb0:	82822003 	addhi	r2, r2, #3
    1cb4:	908220a1 	addls	r2, r2, r1, lsr #1
    1cb8:	e1a00230 	lsr	r0, r0, r2
    1cbc:	e12fff1e 	bx	lr
    1cc0:	e3500000 	cmp	r0, #0
    1cc4:	13e00000 	mvnne	r0, #0
    1cc8:	ea000007 	b	1cec <__aeabi_idiv0>

00001ccc <__aeabi_uidivmod>:
    1ccc:	e3510000 	cmp	r1, #0
    1cd0:	0afffffa 	beq	1cc0 <__udivsi3+0xe8>
    1cd4:	e92d4003 	push	{r0, r1, lr}
    1cd8:	ebffffbe 	bl	1bd8 <__udivsi3>
    1cdc:	e8bd4006 	pop	{r1, r2, lr}
    1ce0:	e0030092 	mul	r3, r2, r0
    1ce4:	e0411003 	sub	r1, r1, r3
    1ce8:	e12fff1e 	bx	lr

00001cec <__aeabi_idiv0>:
    1cec:	e12fff1e 	bx	lr
