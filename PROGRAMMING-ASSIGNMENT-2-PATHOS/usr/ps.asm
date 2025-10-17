
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
      f0:	eb0003e3 	bl	1084 <printf>
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
     120:	00001778 	.word	0x00001778

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
     150:	eb00034b 	bl	e84 <proclist>
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
     290:	eb00037b 	bl	1084 <printf>
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
     2bc:	eb000370 	bl	1084 <printf>
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
     2e8:	eb000365 	bl	1084 <printf>
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
     314:	eb00035a 	bl	1084 <printf>
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
     340:	eb00034f 	bl	1084 <printf>
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
     388:	eb00033d 	bl	1084 <printf>
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
     3e0:	eb000327 	bl	1084 <printf>
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
     440:	eb00030f 	bl	1084 <printf>
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
     4a0:	eb0002f7 	bl	1084 <printf>
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
     500:	eb0002df 	bl	1084 <printf>
     504:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     508:	e2833001 	add	r3, r3, #1
     50c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     510:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     518:	e1520003 	cmp	r2, r3
     51c:	baffff8b 	blt	350 <main+0x22c>
     520:	eb0001a3 	bl	bb4 <exit>
     524:	000017b8 	.word	0x000017b8
     528:	0000177c 	.word	0x0000177c
     52c:	00001780 	.word	0x00001780
     530:	00001788 	.word	0x00001788
     534:	00001790 	.word	0x00001790
     538:	0000179c 	.word	0x0000179c
     53c:	000017a4 	.word	0x000017a4
     540:	000017a8 	.word	0x000017a8
     544:	000017ac 	.word	0x000017ac

00000548 <strcpy>:
     548:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     54c:	e28db000 	add	fp, sp, #0
     550:	e24dd014 	sub	sp, sp, #20
     554:	e50b0010 	str	r0, [fp, #-16]
     558:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e1a00000 	nop			@ (mov r0, r0)
     568:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     56c:	e2823001 	add	r3, r2, #1
     570:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e2831001 	add	r1, r3, #1
     57c:	e50b1010 	str	r1, [fp, #-16]
     580:	e5d22000 	ldrb	r2, [r2]
     584:	e5c32000 	strb	r2, [r3]
     588:	e5d33000 	ldrb	r3, [r3]
     58c:	e3530000 	cmp	r3, #0
     590:	1afffff4 	bne	568 <strcpy+0x20>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e1a00003 	mov	r0, r3
     59c:	e28bd000 	add	sp, fp, #0
     5a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <strcmp>:
     5a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ac:	e28db000 	add	fp, sp, #0
     5b0:	e24dd00c 	sub	sp, sp, #12
     5b4:	e50b0008 	str	r0, [fp, #-8]
     5b8:	e50b100c 	str	r1, [fp, #-12]
     5bc:	ea000005 	b	5d8 <strcmp+0x30>
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e2833001 	add	r3, r3, #1
     5c8:	e50b3008 	str	r3, [fp, #-8]
     5cc:	e51b300c 	ldr	r3, [fp, #-12]
     5d0:	e2833001 	add	r3, r3, #1
     5d4:	e50b300c 	str	r3, [fp, #-12]
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e5d33000 	ldrb	r3, [r3]
     5e0:	e3530000 	cmp	r3, #0
     5e4:	0a000005 	beq	600 <strcmp+0x58>
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e5d32000 	ldrb	r2, [r3]
     5f0:	e51b300c 	ldr	r3, [fp, #-12]
     5f4:	e5d33000 	ldrb	r3, [r3]
     5f8:	e1520003 	cmp	r2, r3
     5fc:	0affffef 	beq	5c0 <strcmp+0x18>
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e5d33000 	ldrb	r3, [r3]
     608:	e1a02003 	mov	r2, r3
     60c:	e51b300c 	ldr	r3, [fp, #-12]
     610:	e5d33000 	ldrb	r3, [r3]
     614:	e0423003 	sub	r3, r2, r3
     618:	e1a00003 	mov	r0, r3
     61c:	e28bd000 	add	sp, fp, #0
     620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <strlen>:
     628:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     62c:	e28db000 	add	fp, sp, #0
     630:	e24dd014 	sub	sp, sp, #20
     634:	e50b0010 	str	r0, [fp, #-16]
     638:	e3a03000 	mov	r3, #0
     63c:	e50b3008 	str	r3, [fp, #-8]
     640:	ea000002 	b	650 <strlen+0x28>
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e2833001 	add	r3, r3, #1
     64c:	e50b3008 	str	r3, [fp, #-8]
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e51b2010 	ldr	r2, [fp, #-16]
     658:	e0823003 	add	r3, r2, r3
     65c:	e5d33000 	ldrb	r3, [r3]
     660:	e3530000 	cmp	r3, #0
     664:	1afffff6 	bne	644 <strlen+0x1c>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e1a00003 	mov	r0, r3
     670:	e28bd000 	add	sp, fp, #0
     674:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <memset>:
     67c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     680:	e28db000 	add	fp, sp, #0
     684:	e24dd024 	sub	sp, sp, #36	@ 0x24
     688:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     68c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     690:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     694:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     698:	e50b3008 	str	r3, [fp, #-8]
     69c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     6a0:	e54b300d 	strb	r3, [fp, #-13]
     6a4:	e55b200d 	ldrb	r2, [fp, #-13]
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a03403 	lsl	r3, r3, #8
     6b0:	e0833002 	add	r3, r3, r2
     6b4:	e1a03803 	lsl	r3, r3, #16
     6b8:	e1a02003 	mov	r2, r3
     6bc:	e55b300d 	ldrb	r3, [fp, #-13]
     6c0:	e1a03403 	lsl	r3, r3, #8
     6c4:	e1822003 	orr	r2, r2, r3
     6c8:	e55b300d 	ldrb	r3, [fp, #-13]
     6cc:	e1823003 	orr	r3, r2, r3
     6d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6d4:	ea000008 	b	6fc <memset+0x80>
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e55b200d 	ldrb	r2, [fp, #-13]
     6e0:	e5c32000 	strb	r2, [r3]
     6e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6e8:	e2433001 	sub	r3, r3, #1
     6ec:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     700:	e3530000 	cmp	r3, #0
     704:	0a000003 	beq	718 <memset+0x9c>
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e2033003 	and	r3, r3, #3
     710:	e3530000 	cmp	r3, #0
     714:	1affffef 	bne	6d8 <memset+0x5c>
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e50b300c 	str	r3, [fp, #-12]
     720:	ea000008 	b	748 <memset+0xcc>
     724:	e51b300c 	ldr	r3, [fp, #-12]
     728:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     72c:	e5832000 	str	r2, [r3]
     730:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     734:	e2433004 	sub	r3, r3, #4
     738:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     73c:	e51b300c 	ldr	r3, [fp, #-12]
     740:	e2833004 	add	r3, r3, #4
     744:	e50b300c 	str	r3, [fp, #-12]
     748:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     74c:	e3530003 	cmp	r3, #3
     750:	8afffff3 	bhi	724 <memset+0xa8>
     754:	e51b300c 	ldr	r3, [fp, #-12]
     758:	e50b3008 	str	r3, [fp, #-8]
     75c:	ea000008 	b	784 <memset+0x108>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e55b200d 	ldrb	r2, [fp, #-13]
     768:	e5c32000 	strb	r2, [r3]
     76c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     770:	e2433001 	sub	r3, r3, #1
     774:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e2833001 	add	r3, r3, #1
     780:	e50b3008 	str	r3, [fp, #-8]
     784:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     788:	e3530000 	cmp	r3, #0
     78c:	1afffff3 	bne	760 <memset+0xe4>
     790:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     794:	e1a00003 	mov	r0, r3
     798:	e28bd000 	add	sp, fp, #0
     79c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <strchr>:
     7a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7a8:	e28db000 	add	fp, sp, #0
     7ac:	e24dd00c 	sub	sp, sp, #12
     7b0:	e50b0008 	str	r0, [fp, #-8]
     7b4:	e1a03001 	mov	r3, r1
     7b8:	e54b3009 	strb	r3, [fp, #-9]
     7bc:	ea000009 	b	7e8 <strchr+0x44>
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e55b2009 	ldrb	r2, [fp, #-9]
     7cc:	e1520003 	cmp	r2, r3
     7d0:	1a000001 	bne	7dc <strchr+0x38>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	ea000007 	b	7fc <strchr+0x58>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e2833001 	add	r3, r3, #1
     7e4:	e50b3008 	str	r3, [fp, #-8]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5d33000 	ldrb	r3, [r3]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	1afffff1 	bne	7c0 <strchr+0x1c>
     7f8:	e3a03000 	mov	r3, #0
     7fc:	e1a00003 	mov	r0, r3
     800:	e28bd000 	add	sp, fp, #0
     804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <gets>:
     80c:	e92d4800 	push	{fp, lr}
     810:	e28db004 	add	fp, sp, #4
     814:	e24dd018 	sub	sp, sp, #24
     818:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     81c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     820:	e3a03000 	mov	r3, #0
     824:	e50b3008 	str	r3, [fp, #-8]
     828:	ea000016 	b	888 <gets+0x7c>
     82c:	e24b300d 	sub	r3, fp, #13
     830:	e3a02001 	mov	r2, #1
     834:	e1a01003 	mov	r1, r3
     838:	e3a00000 	mov	r0, #0
     83c:	eb0000f7 	bl	c20 <read>
     840:	e50b000c 	str	r0, [fp, #-12]
     844:	e51b300c 	ldr	r3, [fp, #-12]
     848:	e3530000 	cmp	r3, #0
     84c:	da000013 	ble	8a0 <gets+0x94>
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e2832001 	add	r2, r3, #1
     858:	e50b2008 	str	r2, [fp, #-8]
     85c:	e1a02003 	mov	r2, r3
     860:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     864:	e0833002 	add	r3, r3, r2
     868:	e55b200d 	ldrb	r2, [fp, #-13]
     86c:	e5c32000 	strb	r2, [r3]
     870:	e55b300d 	ldrb	r3, [fp, #-13]
     874:	e353000a 	cmp	r3, #10
     878:	0a000009 	beq	8a4 <gets+0x98>
     87c:	e55b300d 	ldrb	r3, [fp, #-13]
     880:	e353000d 	cmp	r3, #13
     884:	0a000006 	beq	8a4 <gets+0x98>
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833001 	add	r3, r3, #1
     890:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     894:	e1520003 	cmp	r2, r3
     898:	caffffe3 	bgt	82c <gets+0x20>
     89c:	ea000000 	b	8a4 <gets+0x98>
     8a0:	e1a00000 	nop			@ (mov r0, r0)
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     8ac:	e0823003 	add	r3, r2, r3
     8b0:	e3a02000 	mov	r2, #0
     8b4:	e5c32000 	strb	r2, [r3]
     8b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8bc:	e1a00003 	mov	r0, r3
     8c0:	e24bd004 	sub	sp, fp, #4
     8c4:	e8bd8800 	pop	{fp, pc}

000008c8 <stat>:
     8c8:	e92d4800 	push	{fp, lr}
     8cc:	e28db004 	add	fp, sp, #4
     8d0:	e24dd010 	sub	sp, sp, #16
     8d4:	e50b0010 	str	r0, [fp, #-16]
     8d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8dc:	e3a01000 	mov	r1, #0
     8e0:	e51b0010 	ldr	r0, [fp, #-16]
     8e4:	eb0000fa 	bl	cd4 <open>
     8e8:	e50b0008 	str	r0, [fp, #-8]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e3530000 	cmp	r3, #0
     8f4:	aa000001 	bge	900 <stat+0x38>
     8f8:	e3e03000 	mvn	r3, #0
     8fc:	ea000006 	b	91c <stat+0x54>
     900:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     904:	e51b0008 	ldr	r0, [fp, #-8]
     908:	eb00010c 	bl	d40 <fstat>
     90c:	e50b000c 	str	r0, [fp, #-12]
     910:	e51b0008 	ldr	r0, [fp, #-8]
     914:	eb0000d3 	bl	c68 <close>
     918:	e51b300c 	ldr	r3, [fp, #-12]
     91c:	e1a00003 	mov	r0, r3
     920:	e24bd004 	sub	sp, fp, #4
     924:	e8bd8800 	pop	{fp, pc}

00000928 <atoi>:
     928:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     92c:	e28db000 	add	fp, sp, #0
     930:	e24dd014 	sub	sp, sp, #20
     934:	e50b0010 	str	r0, [fp, #-16]
     938:	e3a03000 	mov	r3, #0
     93c:	e50b3008 	str	r3, [fp, #-8]
     940:	ea00000c 	b	978 <atoi+0x50>
     944:	e51b2008 	ldr	r2, [fp, #-8]
     948:	e1a03002 	mov	r3, r2
     94c:	e1a03103 	lsl	r3, r3, #2
     950:	e0833002 	add	r3, r3, r2
     954:	e1a03083 	lsl	r3, r3, #1
     958:	e1a01003 	mov	r1, r3
     95c:	e51b3010 	ldr	r3, [fp, #-16]
     960:	e2832001 	add	r2, r3, #1
     964:	e50b2010 	str	r2, [fp, #-16]
     968:	e5d33000 	ldrb	r3, [r3]
     96c:	e0813003 	add	r3, r1, r3
     970:	e2433030 	sub	r3, r3, #48	@ 0x30
     974:	e50b3008 	str	r3, [fp, #-8]
     978:	e51b3010 	ldr	r3, [fp, #-16]
     97c:	e5d33000 	ldrb	r3, [r3]
     980:	e353002f 	cmp	r3, #47	@ 0x2f
     984:	9a000003 	bls	998 <atoi+0x70>
     988:	e51b3010 	ldr	r3, [fp, #-16]
     98c:	e5d33000 	ldrb	r3, [r3]
     990:	e3530039 	cmp	r3, #57	@ 0x39
     994:	9affffea 	bls	944 <atoi+0x1c>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e1a00003 	mov	r0, r3
     9a0:	e28bd000 	add	sp, fp, #0
     9a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <memmove>:
     9ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     9b0:	e28db000 	add	fp, sp, #0
     9b4:	e24dd01c 	sub	sp, sp, #28
     9b8:	e50b0010 	str	r0, [fp, #-16]
     9bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9c4:	e51b3010 	ldr	r3, [fp, #-16]
     9c8:	e50b3008 	str	r3, [fp, #-8]
     9cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9d0:	e50b300c 	str	r3, [fp, #-12]
     9d4:	ea000007 	b	9f8 <memmove+0x4c>
     9d8:	e51b200c 	ldr	r2, [fp, #-12]
     9dc:	e2823001 	add	r3, r2, #1
     9e0:	e50b300c 	str	r3, [fp, #-12]
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e2831001 	add	r1, r3, #1
     9ec:	e50b1008 	str	r1, [fp, #-8]
     9f0:	e5d22000 	ldrb	r2, [r2]
     9f4:	e5c32000 	strb	r2, [r3]
     9f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9fc:	e2432001 	sub	r2, r3, #1
     a00:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a04:	e3530000 	cmp	r3, #0
     a08:	cafffff2 	bgt	9d8 <memmove+0x2c>
     a0c:	e51b3010 	ldr	r3, [fp, #-16]
     a10:	e1a00003 	mov	r0, r3
     a14:	e28bd000 	add	sp, fp, #0
     a18:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <strncmp>:
     a20:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a24:	e28db000 	add	fp, sp, #0
     a28:	e24dd014 	sub	sp, sp, #20
     a2c:	e50b0008 	str	r0, [fp, #-8]
     a30:	e50b100c 	str	r1, [fp, #-12]
     a34:	e50b2010 	str	r2, [fp, #-16]
     a38:	ea000008 	b	a60 <strncmp+0x40>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e2833001 	add	r3, r3, #1
     a44:	e50b3008 	str	r3, [fp, #-8]
     a48:	e51b300c 	ldr	r3, [fp, #-12]
     a4c:	e2833001 	add	r3, r3, #1
     a50:	e50b300c 	str	r3, [fp, #-12]
     a54:	e51b3010 	ldr	r3, [fp, #-16]
     a58:	e2433001 	sub	r3, r3, #1
     a5c:	e50b3010 	str	r3, [fp, #-16]
     a60:	e51b3010 	ldr	r3, [fp, #-16]
     a64:	e3530000 	cmp	r3, #0
     a68:	da00000d 	ble	aa4 <strncmp+0x84>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e5d33000 	ldrb	r3, [r3]
     a74:	e3530000 	cmp	r3, #0
     a78:	0a000009 	beq	aa4 <strncmp+0x84>
     a7c:	e51b300c 	ldr	r3, [fp, #-12]
     a80:	e5d33000 	ldrb	r3, [r3]
     a84:	e3530000 	cmp	r3, #0
     a88:	0a000005 	beq	aa4 <strncmp+0x84>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5d32000 	ldrb	r2, [r3]
     a94:	e51b300c 	ldr	r3, [fp, #-12]
     a98:	e5d33000 	ldrb	r3, [r3]
     a9c:	e1520003 	cmp	r2, r3
     aa0:	0affffe5 	beq	a3c <strncmp+0x1c>
     aa4:	e51b3010 	ldr	r3, [fp, #-16]
     aa8:	e3530000 	cmp	r3, #0
     aac:	1a000001 	bne	ab8 <strncmp+0x98>
     ab0:	e3a03000 	mov	r3, #0
     ab4:	ea000005 	b	ad0 <strncmp+0xb0>
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e5d33000 	ldrb	r3, [r3]
     ac0:	e1a02003 	mov	r2, r3
     ac4:	e51b300c 	ldr	r3, [fp, #-12]
     ac8:	e5d33000 	ldrb	r3, [r3]
     acc:	e0423003 	sub	r3, r2, r3
     ad0:	e1a00003 	mov	r0, r3
     ad4:	e28bd000 	add	sp, fp, #0
     ad8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <strncpy>:
     ae0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ae4:	e28db000 	add	fp, sp, #0
     ae8:	e24dd01c 	sub	sp, sp, #28
     aec:	e50b0010 	str	r0, [fp, #-16]
     af0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     af4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     af8:	e51b3010 	ldr	r3, [fp, #-16]
     afc:	e50b3008 	str	r3, [fp, #-8]
     b00:	ea00000a 	b	b30 <strncpy+0x50>
     b04:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     b08:	e2823001 	add	r3, r2, #1
     b0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2831001 	add	r1, r3, #1
     b18:	e50b1008 	str	r1, [fp, #-8]
     b1c:	e5d22000 	ldrb	r2, [r2]
     b20:	e5c32000 	strb	r2, [r3]
     b24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b28:	e2433001 	sub	r3, r3, #1
     b2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e3530000 	cmp	r3, #0
     b38:	da00000c 	ble	b70 <strncpy+0x90>
     b3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b40:	e5d33000 	ldrb	r3, [r3]
     b44:	e3530000 	cmp	r3, #0
     b48:	1affffed 	bne	b04 <strncpy+0x24>
     b4c:	ea000007 	b	b70 <strncpy+0x90>
     b50:	e51b3008 	ldr	r3, [fp, #-8]
     b54:	e2832001 	add	r2, r3, #1
     b58:	e50b2008 	str	r2, [fp, #-8]
     b5c:	e3a02000 	mov	r2, #0
     b60:	e5c32000 	strb	r2, [r3]
     b64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b68:	e2433001 	sub	r3, r3, #1
     b6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b74:	e3530000 	cmp	r3, #0
     b78:	cafffff4 	bgt	b50 <strncpy+0x70>
     b7c:	e51b3010 	ldr	r3, [fp, #-16]
     b80:	e1a00003 	mov	r0, r3
     b84:	e28bd000 	add	sp, fp, #0
     b88:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <fork>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a00001 	mov	r0, #1
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <exit>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a00002 	mov	r0, #2
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <wait>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a00003 	mov	r0, #3
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <pipe>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a00004 	mov	r0, #4
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <read>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a00005 	mov	r0, #5
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <write>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a00010 	mov	r0, #16
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <close>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a00015 	mov	r0, #21
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <kill>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a00006 	mov	r0, #6
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <exec>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a00007 	mov	r0, #7
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <open>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a0000f 	mov	r0, #15
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <mknod>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00011 	mov	r0, #17
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <unlink>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a00012 	mov	r0, #18
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <fstat>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a00008 	mov	r0, #8
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <link>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a00013 	mov	r0, #19
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <mkdir>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a00014 	mov	r0, #20
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <chdir>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a00009 	mov	r0, #9
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <dup>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a0000a 	mov	r0, #10
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <getpid>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a0000b 	mov	r0, #11
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <sbrk>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a0000c 	mov	r0, #12
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <sleep>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a0000d 	mov	r0, #13
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <uptime>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a0000e 	mov	r0, #14
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <proclist>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00016 	mov	r0, #22
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <settickets>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a00017 	mov	r0, #23
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <srand>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a00018 	mov	r0, #24
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <getpinfo>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a00019 	mov	r0, #25
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <putc>:
     f14:	e92d4800 	push	{fp, lr}
     f18:	e28db004 	add	fp, sp, #4
     f1c:	e24dd008 	sub	sp, sp, #8
     f20:	e50b0008 	str	r0, [fp, #-8]
     f24:	e1a03001 	mov	r3, r1
     f28:	e54b3009 	strb	r3, [fp, #-9]
     f2c:	e24b3009 	sub	r3, fp, #9
     f30:	e3a02001 	mov	r2, #1
     f34:	e1a01003 	mov	r1, r3
     f38:	e51b0008 	ldr	r0, [fp, #-8]
     f3c:	ebffff40 	bl	c44 <write>
     f40:	e1a00000 	nop			@ (mov r0, r0)
     f44:	e24bd004 	sub	sp, fp, #4
     f48:	e8bd8800 	pop	{fp, pc}

00000f4c <printint>:
     f4c:	e92d4800 	push	{fp, lr}
     f50:	e28db004 	add	fp, sp, #4
     f54:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f58:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f5c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f60:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f64:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f68:	e3a03000 	mov	r3, #0
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f74:	e3530000 	cmp	r3, #0
     f78:	0a000008 	beq	fa0 <printint+0x54>
     f7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f80:	e3530000 	cmp	r3, #0
     f84:	aa000005 	bge	fa0 <printint+0x54>
     f88:	e3a03001 	mov	r3, #1
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f94:	e2633000 	rsb	r3, r3, #0
     f98:	e50b3010 	str	r3, [fp, #-16]
     f9c:	ea000001 	b	fa8 <printint+0x5c>
     fa0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fa4:	e50b3010 	str	r3, [fp, #-16]
     fa8:	e3a03000 	mov	r3, #0
     fac:	e50b3008 	str	r3, [fp, #-8]
     fb0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fb4:	e51b3010 	ldr	r3, [fp, #-16]
     fb8:	e1a01002 	mov	r1, r2
     fbc:	e1a00003 	mov	r0, r3
     fc0:	eb0001d5 	bl	171c <__aeabi_uidivmod>
     fc4:	e1a03001 	mov	r3, r1
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e2832001 	add	r2, r3, #1
     fd4:	e50b2008 	str	r2, [fp, #-8]
     fd8:	e59f20a0 	ldr	r2, [pc, #160]	@ 1080 <printint+0x134>
     fdc:	e7d22001 	ldrb	r2, [r2, r1]
     fe0:	e2433004 	sub	r3, r3, #4
     fe4:	e083300b 	add	r3, r3, fp
     fe8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ff0:	e1a01003 	mov	r1, r3
     ff4:	e51b0010 	ldr	r0, [fp, #-16]
     ff8:	eb00018a 	bl	1628 <__udivsi3>
     ffc:	e1a03000 	mov	r3, r0
    1000:	e50b3010 	str	r3, [fp, #-16]
    1004:	e51b3010 	ldr	r3, [fp, #-16]
    1008:	e3530000 	cmp	r3, #0
    100c:	1affffe7 	bne	fb0 <printint+0x64>
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e3530000 	cmp	r3, #0
    1018:	0a00000e 	beq	1058 <printint+0x10c>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e2832001 	add	r2, r3, #1
    1024:	e50b2008 	str	r2, [fp, #-8]
    1028:	e2433004 	sub	r3, r3, #4
    102c:	e083300b 	add	r3, r3, fp
    1030:	e3a0202d 	mov	r2, #45	@ 0x2d
    1034:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1038:	ea000006 	b	1058 <printint+0x10c>
    103c:	e24b2020 	sub	r2, fp, #32
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e0823003 	add	r3, r2, r3
    1048:	e5d33000 	ldrb	r3, [r3]
    104c:	e1a01003 	mov	r1, r3
    1050:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1054:	ebffffae 	bl	f14 <putc>
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e2433001 	sub	r3, r3, #1
    1060:	e50b3008 	str	r3, [fp, #-8]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e3530000 	cmp	r3, #0
    106c:	aafffff2 	bge	103c <printint+0xf0>
    1070:	e1a00000 	nop			@ (mov r0, r0)
    1074:	e1a00000 	nop			@ (mov r0, r0)
    1078:	e24bd004 	sub	sp, fp, #4
    107c:	e8bd8800 	pop	{fp, pc}
    1080:	000017d0 	.word	0x000017d0

00001084 <printf>:
    1084:	e92d000e 	push	{r1, r2, r3}
    1088:	e92d4800 	push	{fp, lr}
    108c:	e28db004 	add	fp, sp, #4
    1090:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1094:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1098:	e3a03000 	mov	r3, #0
    109c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10a0:	e28b3008 	add	r3, fp, #8
    10a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e3a03000 	mov	r3, #0
    10ac:	e50b3010 	str	r3, [fp, #-16]
    10b0:	ea000074 	b	1288 <printf+0x204>
    10b4:	e59b2004 	ldr	r2, [fp, #4]
    10b8:	e51b3010 	ldr	r3, [fp, #-16]
    10bc:	e0823003 	add	r3, r2, r3
    10c0:	e5d33000 	ldrb	r3, [r3]
    10c4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10cc:	e3530000 	cmp	r3, #0
    10d0:	1a00000b 	bne	1104 <printf+0x80>
    10d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d8:	e3530025 	cmp	r3, #37	@ 0x25
    10dc:	1a000002 	bne	10ec <printf+0x68>
    10e0:	e3a03025 	mov	r3, #37	@ 0x25
    10e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10e8:	ea000063 	b	127c <printf+0x1f8>
    10ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f0:	e6ef3073 	uxtb	r3, r3
    10f4:	e1a01003 	mov	r1, r3
    10f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10fc:	ebffff84 	bl	f14 <putc>
    1100:	ea00005d 	b	127c <printf+0x1f8>
    1104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1108:	e3530025 	cmp	r3, #37	@ 0x25
    110c:	1a00005a 	bne	127c <printf+0x1f8>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e3530064 	cmp	r3, #100	@ 0x64
    1118:	1a00000a 	bne	1148 <printf+0xc4>
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e1a01003 	mov	r1, r3
    1128:	e3a03001 	mov	r3, #1
    112c:	e3a0200a 	mov	r2, #10
    1130:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1134:	ebffff84 	bl	f4c <printint>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e2833004 	add	r3, r3, #4
    1140:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1144:	ea00004a 	b	1274 <printf+0x1f0>
    1148:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e3530078 	cmp	r3, #120	@ 0x78
    1150:	0a000002 	beq	1160 <printf+0xdc>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e3530070 	cmp	r3, #112	@ 0x70
    115c:	1a00000a 	bne	118c <printf+0x108>
    1160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e1a01003 	mov	r1, r3
    116c:	e3a03000 	mov	r3, #0
    1170:	e3a02010 	mov	r2, #16
    1174:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1178:	ebffff73 	bl	f4c <printint>
    117c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e2833004 	add	r3, r3, #4
    1184:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1188:	ea000039 	b	1274 <printf+0x1f0>
    118c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1190:	e3530073 	cmp	r3, #115	@ 0x73
    1194:	1a000018 	bne	11fc <printf+0x178>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e50b300c 	str	r3, [fp, #-12]
    11a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a8:	e2833004 	add	r3, r3, #4
    11ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e3530000 	cmp	r3, #0
    11b8:	1a00000a 	bne	11e8 <printf+0x164>
    11bc:	e59f30f4 	ldr	r3, [pc, #244]	@ 12b8 <printf+0x234>
    11c0:	e50b300c 	str	r3, [fp, #-12]
    11c4:	ea000007 	b	11e8 <printf+0x164>
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5d33000 	ldrb	r3, [r3]
    11d0:	e1a01003 	mov	r1, r3
    11d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d8:	ebffff4d 	bl	f14 <putc>
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e2833001 	add	r3, r3, #1
    11e4:	e50b300c 	str	r3, [fp, #-12]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5d33000 	ldrb	r3, [r3]
    11f0:	e3530000 	cmp	r3, #0
    11f4:	1afffff3 	bne	11c8 <printf+0x144>
    11f8:	ea00001d 	b	1274 <printf+0x1f0>
    11fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1200:	e3530063 	cmp	r3, #99	@ 0x63
    1204:	1a000009 	bne	1230 <printf+0x1ac>
    1208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e6ef3073 	uxtb	r3, r3
    1214:	e1a01003 	mov	r1, r3
    1218:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    121c:	ebffff3c 	bl	f14 <putc>
    1220:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1224:	e2833004 	add	r3, r3, #4
    1228:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    122c:	ea000010 	b	1274 <printf+0x1f0>
    1230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1234:	e3530025 	cmp	r3, #37	@ 0x25
    1238:	1a000005 	bne	1254 <printf+0x1d0>
    123c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1240:	e6ef3073 	uxtb	r3, r3
    1244:	e1a01003 	mov	r1, r3
    1248:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    124c:	ebffff30 	bl	f14 <putc>
    1250:	ea000007 	b	1274 <printf+0x1f0>
    1254:	e3a01025 	mov	r1, #37	@ 0x25
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff2c 	bl	f14 <putc>
    1260:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1264:	e6ef3073 	uxtb	r3, r3
    1268:	e1a01003 	mov	r1, r3
    126c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1270:	ebffff27 	bl	f14 <putc>
    1274:	e3a03000 	mov	r3, #0
    1278:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    127c:	e51b3010 	ldr	r3, [fp, #-16]
    1280:	e2833001 	add	r3, r3, #1
    1284:	e50b3010 	str	r3, [fp, #-16]
    1288:	e59b2004 	ldr	r2, [fp, #4]
    128c:	e51b3010 	ldr	r3, [fp, #-16]
    1290:	e0823003 	add	r3, r2, r3
    1294:	e5d33000 	ldrb	r3, [r3]
    1298:	e3530000 	cmp	r3, #0
    129c:	1affff84 	bne	10b4 <printf+0x30>
    12a0:	e1a00000 	nop			@ (mov r0, r0)
    12a4:	e1a00000 	nop			@ (mov r0, r0)
    12a8:	e24bd004 	sub	sp, fp, #4
    12ac:	e8bd4800 	pop	{fp, lr}
    12b0:	e28dd00c 	add	sp, sp, #12
    12b4:	e12fff1e 	bx	lr
    12b8:	000017b0 	.word	0x000017b0

000012bc <free>:
    12bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12c0:	e28db000 	add	fp, sp, #0
    12c4:	e24dd014 	sub	sp, sp, #20
    12c8:	e50b0010 	str	r0, [fp, #-16]
    12cc:	e51b3010 	ldr	r3, [fp, #-16]
    12d0:	e2433008 	sub	r3, r3, #8
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	e59f3154 	ldr	r3, [pc, #340]	@ 1434 <free+0x178>
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e50b3008 	str	r3, [fp, #-8]
    12e4:	ea000010 	b	132c <free+0x70>
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5933000 	ldr	r3, [r3]
    12f0:	e51b2008 	ldr	r2, [fp, #-8]
    12f4:	e1520003 	cmp	r2, r3
    12f8:	3a000008 	bcc	1320 <free+0x64>
    12fc:	e51b200c 	ldr	r2, [fp, #-12]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e1520003 	cmp	r2, r3
    1308:	8a000010 	bhi	1350 <free+0x94>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e51b200c 	ldr	r2, [fp, #-12]
    1318:	e1520003 	cmp	r2, r3
    131c:	3a00000b 	bcc	1350 <free+0x94>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e50b3008 	str	r3, [fp, #-8]
    132c:	e51b200c 	ldr	r2, [fp, #-12]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e1520003 	cmp	r2, r3
    1338:	9affffea 	bls	12e8 <free+0x2c>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e51b200c 	ldr	r2, [fp, #-12]
    1348:	e1520003 	cmp	r2, r3
    134c:	2affffe5 	bcs	12e8 <free+0x2c>
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e5933004 	ldr	r3, [r3, #4]
    1358:	e1a03183 	lsl	r3, r3, #3
    135c:	e51b200c 	ldr	r2, [fp, #-12]
    1360:	e0822003 	add	r2, r2, r3
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5933000 	ldr	r3, [r3]
    136c:	e1520003 	cmp	r2, r3
    1370:	1a00000d 	bne	13ac <free+0xf0>
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5932004 	ldr	r2, [r3, #4]
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5933000 	ldr	r3, [r3]
    1384:	e5933004 	ldr	r3, [r3, #4]
    1388:	e0822003 	add	r2, r2, r3
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5832004 	str	r2, [r3, #4]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5933000 	ldr	r3, [r3]
    139c:	e5932000 	ldr	r2, [r3]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e5832000 	str	r2, [r3]
    13a8:	ea000003 	b	13bc <free+0x100>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5932000 	ldr	r2, [r3]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5832000 	str	r2, [r3]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e5933004 	ldr	r3, [r3, #4]
    13c4:	e1a03183 	lsl	r3, r3, #3
    13c8:	e51b2008 	ldr	r2, [fp, #-8]
    13cc:	e0823003 	add	r3, r2, r3
    13d0:	e51b200c 	ldr	r2, [fp, #-12]
    13d4:	e1520003 	cmp	r2, r3
    13d8:	1a00000b 	bne	140c <free+0x150>
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e5932004 	ldr	r2, [r3, #4]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e5933004 	ldr	r3, [r3, #4]
    13ec:	e0822003 	add	r2, r2, r3
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5832004 	str	r2, [r3, #4]
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5932000 	ldr	r2, [r3]
    1400:	e51b3008 	ldr	r3, [fp, #-8]
    1404:	e5832000 	str	r2, [r3]
    1408:	ea000002 	b	1418 <free+0x15c>
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e51b200c 	ldr	r2, [fp, #-12]
    1414:	e5832000 	str	r2, [r3]
    1418:	e59f2014 	ldr	r2, [pc, #20]	@ 1434 <free+0x178>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5823000 	str	r3, [r2]
    1424:	e1a00000 	nop			@ (mov r0, r0)
    1428:	e28bd000 	add	sp, fp, #0
    142c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1430:	e12fff1e 	bx	lr
    1434:	000017ec 	.word	0x000017ec

00001438 <morecore>:
    1438:	e92d4800 	push	{fp, lr}
    143c:	e28db004 	add	fp, sp, #4
    1440:	e24dd010 	sub	sp, sp, #16
    1444:	e50b0010 	str	r0, [fp, #-16]
    1448:	e51b3010 	ldr	r3, [fp, #-16]
    144c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1450:	2a000001 	bcs	145c <morecore+0x24>
    1454:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1458:	e50b3010 	str	r3, [fp, #-16]
    145c:	e51b3010 	ldr	r3, [fp, #-16]
    1460:	e1a03183 	lsl	r3, r3, #3
    1464:	e1a00003 	mov	r0, r3
    1468:	ebfffe6a 	bl	e18 <sbrk>
    146c:	e50b0008 	str	r0, [fp, #-8]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e3730001 	cmn	r3, #1
    1478:	1a000001 	bne	1484 <morecore+0x4c>
    147c:	e3a03000 	mov	r3, #0
    1480:	ea00000a 	b	14b0 <morecore+0x78>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e50b300c 	str	r3, [fp, #-12]
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e51b2010 	ldr	r2, [fp, #-16]
    1494:	e5832004 	str	r2, [r3, #4]
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e2833008 	add	r3, r3, #8
    14a0:	e1a00003 	mov	r0, r3
    14a4:	ebffff84 	bl	12bc <free>
    14a8:	e59f300c 	ldr	r3, [pc, #12]	@ 14bc <morecore+0x84>
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e1a00003 	mov	r0, r3
    14b4:	e24bd004 	sub	sp, fp, #4
    14b8:	e8bd8800 	pop	{fp, pc}
    14bc:	000017ec 	.word	0x000017ec

000014c0 <malloc>:
    14c0:	e92d4800 	push	{fp, lr}
    14c4:	e28db004 	add	fp, sp, #4
    14c8:	e24dd018 	sub	sp, sp, #24
    14cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14d4:	e2833007 	add	r3, r3, #7
    14d8:	e1a031a3 	lsr	r3, r3, #3
    14dc:	e2833001 	add	r3, r3, #1
    14e0:	e50b3010 	str	r3, [fp, #-16]
    14e4:	e59f3134 	ldr	r3, [pc, #308]	@ 1620 <malloc+0x160>
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e50b300c 	str	r3, [fp, #-12]
    14f0:	e51b300c 	ldr	r3, [fp, #-12]
    14f4:	e3530000 	cmp	r3, #0
    14f8:	1a00000b 	bne	152c <malloc+0x6c>
    14fc:	e59f3120 	ldr	r3, [pc, #288]	@ 1624 <malloc+0x164>
    1500:	e50b300c 	str	r3, [fp, #-12]
    1504:	e59f2114 	ldr	r2, [pc, #276]	@ 1620 <malloc+0x160>
    1508:	e51b300c 	ldr	r3, [fp, #-12]
    150c:	e5823000 	str	r3, [r2]
    1510:	e59f3108 	ldr	r3, [pc, #264]	@ 1620 <malloc+0x160>
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e59f2104 	ldr	r2, [pc, #260]	@ 1624 <malloc+0x164>
    151c:	e5823000 	str	r3, [r2]
    1520:	e59f30fc 	ldr	r3, [pc, #252]	@ 1624 <malloc+0x164>
    1524:	e3a02000 	mov	r2, #0
    1528:	e5832004 	str	r2, [r3, #4]
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e50b3008 	str	r3, [fp, #-8]
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5933004 	ldr	r3, [r3, #4]
    1540:	e51b2010 	ldr	r2, [fp, #-16]
    1544:	e1520003 	cmp	r2, r3
    1548:	8a00001e 	bhi	15c8 <malloc+0x108>
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5933004 	ldr	r3, [r3, #4]
    1554:	e51b2010 	ldr	r2, [fp, #-16]
    1558:	e1520003 	cmp	r2, r3
    155c:	1a000004 	bne	1574 <malloc+0xb4>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5932000 	ldr	r2, [r3]
    1568:	e51b300c 	ldr	r3, [fp, #-12]
    156c:	e5832000 	str	r2, [r3]
    1570:	ea00000e 	b	15b0 <malloc+0xf0>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e5932004 	ldr	r2, [r3, #4]
    157c:	e51b3010 	ldr	r3, [fp, #-16]
    1580:	e0422003 	sub	r2, r2, r3
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5832004 	str	r2, [r3, #4]
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5933004 	ldr	r3, [r3, #4]
    1594:	e1a03183 	lsl	r3, r3, #3
    1598:	e51b2008 	ldr	r2, [fp, #-8]
    159c:	e0823003 	add	r3, r2, r3
    15a0:	e50b3008 	str	r3, [fp, #-8]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e51b2010 	ldr	r2, [fp, #-16]
    15ac:	e5832004 	str	r2, [r3, #4]
    15b0:	e59f2068 	ldr	r2, [pc, #104]	@ 1620 <malloc+0x160>
    15b4:	e51b300c 	ldr	r3, [fp, #-12]
    15b8:	e5823000 	str	r3, [r2]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e2833008 	add	r3, r3, #8
    15c4:	ea000012 	b	1614 <malloc+0x154>
    15c8:	e59f3050 	ldr	r3, [pc, #80]	@ 1620 <malloc+0x160>
    15cc:	e5933000 	ldr	r3, [r3]
    15d0:	e51b2008 	ldr	r2, [fp, #-8]
    15d4:	e1520003 	cmp	r2, r3
    15d8:	1a000007 	bne	15fc <malloc+0x13c>
    15dc:	e51b0010 	ldr	r0, [fp, #-16]
    15e0:	ebffff94 	bl	1438 <morecore>
    15e4:	e50b0008 	str	r0, [fp, #-8]
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e3530000 	cmp	r3, #0
    15f0:	1a000001 	bne	15fc <malloc+0x13c>
    15f4:	e3a03000 	mov	r3, #0
    15f8:	ea000005 	b	1614 <malloc+0x154>
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e50b300c 	str	r3, [fp, #-12]
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e5933000 	ldr	r3, [r3]
    160c:	e50b3008 	str	r3, [fp, #-8]
    1610:	eaffffc8 	b	1538 <malloc+0x78>
    1614:	e1a00003 	mov	r0, r3
    1618:	e24bd004 	sub	sp, fp, #4
    161c:	e8bd8800 	pop	{fp, pc}
    1620:	000017ec 	.word	0x000017ec
    1624:	000017e4 	.word	0x000017e4

00001628 <__udivsi3>:
    1628:	e2512001 	subs	r2, r1, #1
    162c:	012fff1e 	bxeq	lr
    1630:	3a000036 	bcc	1710 <__udivsi3+0xe8>
    1634:	e1500001 	cmp	r0, r1
    1638:	9a000022 	bls	16c8 <__udivsi3+0xa0>
    163c:	e1110002 	tst	r1, r2
    1640:	0a000023 	beq	16d4 <__udivsi3+0xac>
    1644:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1648:	01a01181 	lsleq	r1, r1, #3
    164c:	03a03008 	moveq	r3, #8
    1650:	13a03001 	movne	r3, #1
    1654:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1658:	31510000 	cmpcc	r1, r0
    165c:	31a01201 	lslcc	r1, r1, #4
    1660:	31a03203 	lslcc	r3, r3, #4
    1664:	3afffffa 	bcc	1654 <__udivsi3+0x2c>
    1668:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    166c:	31510000 	cmpcc	r1, r0
    1670:	31a01081 	lslcc	r1, r1, #1
    1674:	31a03083 	lslcc	r3, r3, #1
    1678:	3afffffa 	bcc	1668 <__udivsi3+0x40>
    167c:	e3a02000 	mov	r2, #0
    1680:	e1500001 	cmp	r0, r1
    1684:	20400001 	subcs	r0, r0, r1
    1688:	21822003 	orrcs	r2, r2, r3
    168c:	e15000a1 	cmp	r0, r1, lsr #1
    1690:	204000a1 	subcs	r0, r0, r1, lsr #1
    1694:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1698:	e1500121 	cmp	r0, r1, lsr #2
    169c:	20400121 	subcs	r0, r0, r1, lsr #2
    16a0:	21822123 	orrcs	r2, r2, r3, lsr #2
    16a4:	e15001a1 	cmp	r0, r1, lsr #3
    16a8:	204001a1 	subcs	r0, r0, r1, lsr #3
    16ac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16b0:	e3500000 	cmp	r0, #0
    16b4:	11b03223 	lsrsne	r3, r3, #4
    16b8:	11a01221 	lsrne	r1, r1, #4
    16bc:	1affffef 	bne	1680 <__udivsi3+0x58>
    16c0:	e1a00002 	mov	r0, r2
    16c4:	e12fff1e 	bx	lr
    16c8:	03a00001 	moveq	r0, #1
    16cc:	13a00000 	movne	r0, #0
    16d0:	e12fff1e 	bx	lr
    16d4:	e3510801 	cmp	r1, #65536	@ 0x10000
    16d8:	21a01821 	lsrcs	r1, r1, #16
    16dc:	23a02010 	movcs	r2, #16
    16e0:	33a02000 	movcc	r2, #0
    16e4:	e3510c01 	cmp	r1, #256	@ 0x100
    16e8:	21a01421 	lsrcs	r1, r1, #8
    16ec:	22822008 	addcs	r2, r2, #8
    16f0:	e3510010 	cmp	r1, #16
    16f4:	21a01221 	lsrcs	r1, r1, #4
    16f8:	22822004 	addcs	r2, r2, #4
    16fc:	e3510004 	cmp	r1, #4
    1700:	82822003 	addhi	r2, r2, #3
    1704:	908220a1 	addls	r2, r2, r1, lsr #1
    1708:	e1a00230 	lsr	r0, r0, r2
    170c:	e12fff1e 	bx	lr
    1710:	e3500000 	cmp	r0, #0
    1714:	13e00000 	mvnne	r0, #0
    1718:	ea000007 	b	173c <__aeabi_idiv0>

0000171c <__aeabi_uidivmod>:
    171c:	e3510000 	cmp	r1, #0
    1720:	0afffffa 	beq	1710 <__udivsi3+0xe8>
    1724:	e92d4003 	push	{r0, r1, lr}
    1728:	ebffffbe 	bl	1628 <__udivsi3>
    172c:	e8bd4006 	pop	{r1, r2, lr}
    1730:	e0030092 	mul	r3, r2, r0
    1734:	e0411003 	sub	r1, r1, r3
    1738:	e12fff1e 	bx	lr

0000173c <__aeabi_idiv0>:
    173c:	e12fff1e 	bx	lr
