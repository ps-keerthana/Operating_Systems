
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
      f0:	eb00041d 	bl	116c <printf>
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
     120:	00001860 	.word	0x00001860

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
     150:	eb00037a 	bl	f40 <proclist>
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
     290:	eb0003b5 	bl	116c <printf>
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
     2bc:	eb0003aa 	bl	116c <printf>
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
     2e8:	eb00039f 	bl	116c <printf>
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
     314:	eb000394 	bl	116c <printf>
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
     340:	eb000389 	bl	116c <printf>
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
     388:	eb000377 	bl	116c <printf>
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
     3e0:	eb000361 	bl	116c <printf>
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
     440:	eb000349 	bl	116c <printf>
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
     4a0:	eb000331 	bl	116c <printf>
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
     500:	eb000319 	bl	116c <printf>
     504:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     508:	e2833001 	add	r3, r3, #1
     50c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     510:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     518:	e1520003 	cmp	r2, r3
     51c:	baffff8b 	blt	350 <main+0x22c>
     520:	eb0001d2 	bl	c70 <exit>
     524:	000018a0 	.word	0x000018a0
     528:	00001864 	.word	0x00001864
     52c:	00001868 	.word	0x00001868
     530:	00001870 	.word	0x00001870
     534:	00001878 	.word	0x00001878
     538:	00001884 	.word	0x00001884
     53c:	0000188c 	.word	0x0000188c
     540:	00001890 	.word	0x00001890
     544:	00001894 	.word	0x00001894

00000548 <pg_pte>:
     548:	e92d4800 	push	{fp, lr}
     54c:	e28db004 	add	fp, sp, #4
     550:	e24dd008 	sub	sp, sp, #8
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e51b1008 	ldr	r1, [fp, #-8]
     55c:	e3a00065 	mov	r0, #101	@ 0x65
     560:	eb0002a3 	bl	ff4 <syscall>
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
     588:	e3a00066 	mov	r0, #102	@ 0x66
     58c:	eb000298 	bl	ff4 <syscall>
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
     5b4:	e3a00067 	mov	r0, #103	@ 0x67
     5b8:	eb00028d 	bl	ff4 <syscall>
     5bc:	e1a03000 	mov	r3, r0
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e24bd004 	sub	sp, fp, #4
     5c8:	e8bd8800 	pop	{fp, pc}

000005cc <kpt>:
     5cc:	e92d4800 	push	{fp, lr}
     5d0:	e28db004 	add	fp, sp, #4
     5d4:	e3a00068 	mov	r0, #104	@ 0x68
     5d8:	eb000285 	bl	ff4 <syscall>
     5dc:	e1a03000 	mov	r3, r0
     5e0:	e1a00003 	mov	r0, r3
     5e4:	e8bd8800 	pop	{fp, pc}

000005e8 <ugetpid>:
     5e8:	e92d4800 	push	{fp, lr}
     5ec:	e28db004 	add	fp, sp, #4
     5f0:	e3a00069 	mov	r0, #105	@ 0x69
     5f4:	eb00027e 	bl	ff4 <syscall>
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
     8f8:	eb0000f7 	bl	cdc <read>
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
     9a0:	eb0000fa 	bl	d90 <open>
     9a4:	e50b0008 	str	r0, [fp, #-8]
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	aa000001 	bge	9bc <stat+0x38>
     9b4:	e3e03000 	mvn	r3, #0
     9b8:	ea000006 	b	9d8 <stat+0x54>
     9bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     9c0:	e51b0008 	ldr	r0, [fp, #-8]
     9c4:	eb00010c 	bl	dfc <fstat>
     9c8:	e50b000c 	str	r0, [fp, #-12]
     9cc:	e51b0008 	ldr	r0, [fp, #-8]
     9d0:	eb0000d3 	bl	d24 <close>
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

00000c4c <fork>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00001 	mov	r0, #1
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <exit>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00002 	mov	r0, #2
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <wait>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00003 	mov	r0, #3
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <pipe>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00004 	mov	r0, #4
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <read>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00005 	mov	r0, #5
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <write>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00010 	mov	r0, #16
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <close>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00015 	mov	r0, #21
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <kill>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00006 	mov	r0, #6
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <exec>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a00007 	mov	r0, #7
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <open>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0000f 	mov	r0, #15
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <mknod>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00011 	mov	r0, #17
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <unlink>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a00012 	mov	r0, #18
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <fstat>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00008 	mov	r0, #8
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <link>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00013 	mov	r0, #19
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <mkdir>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00014 	mov	r0, #20
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <chdir>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00009 	mov	r0, #9
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <dup>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a0000a 	mov	r0, #10
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <getpid>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a0000b 	mov	r0, #11
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <sbrk>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a0000c 	mov	r0, #12
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <sleep>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a0000d 	mov	r0, #13
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <uptime>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a0000e 	mov	r0, #14
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <proclist>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a00016 	mov	r0, #22
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <settickets>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a00017 	mov	r0, #23
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <srand>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00018 	mov	r0, #24
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <getpinfo>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00019 	mov	r0, #25
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <print_pt>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a0006a 	mov	r0, #106	@ 0x6a
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <syscall>:
     ff4:	ef000000 	svc	0x00000000
     ff8:	e12fff1e 	bx	lr

00000ffc <putc>:
     ffc:	e92d4800 	push	{fp, lr}
    1000:	e28db004 	add	fp, sp, #4
    1004:	e24dd008 	sub	sp, sp, #8
    1008:	e50b0008 	str	r0, [fp, #-8]
    100c:	e1a03001 	mov	r3, r1
    1010:	e54b3009 	strb	r3, [fp, #-9]
    1014:	e24b3009 	sub	r3, fp, #9
    1018:	e3a02001 	mov	r2, #1
    101c:	e1a01003 	mov	r1, r3
    1020:	e51b0008 	ldr	r0, [fp, #-8]
    1024:	ebffff35 	bl	d00 <write>
    1028:	e1a00000 	nop			@ (mov r0, r0)
    102c:	e24bd004 	sub	sp, fp, #4
    1030:	e8bd8800 	pop	{fp, pc}

00001034 <printint>:
    1034:	e92d4800 	push	{fp, lr}
    1038:	e28db004 	add	fp, sp, #4
    103c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1040:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1044:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1048:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    104c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1050:	e3a03000 	mov	r3, #0
    1054:	e50b300c 	str	r3, [fp, #-12]
    1058:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    105c:	e3530000 	cmp	r3, #0
    1060:	0a000008 	beq	1088 <printint+0x54>
    1064:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1068:	e3530000 	cmp	r3, #0
    106c:	aa000005 	bge	1088 <printint+0x54>
    1070:	e3a03001 	mov	r3, #1
    1074:	e50b300c 	str	r3, [fp, #-12]
    1078:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    107c:	e2633000 	rsb	r3, r3, #0
    1080:	e50b3010 	str	r3, [fp, #-16]
    1084:	ea000001 	b	1090 <printint+0x5c>
    1088:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    108c:	e50b3010 	str	r3, [fp, #-16]
    1090:	e3a03000 	mov	r3, #0
    1094:	e50b3008 	str	r3, [fp, #-8]
    1098:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    109c:	e51b3010 	ldr	r3, [fp, #-16]
    10a0:	e1a01002 	mov	r1, r2
    10a4:	e1a00003 	mov	r0, r3
    10a8:	eb0001d5 	bl	1804 <__aeabi_uidivmod>
    10ac:	e1a03001 	mov	r3, r1
    10b0:	e1a01003 	mov	r1, r3
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e2832001 	add	r2, r3, #1
    10bc:	e50b2008 	str	r2, [fp, #-8]
    10c0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1168 <printint+0x134>
    10c4:	e7d22001 	ldrb	r2, [r2, r1]
    10c8:	e2433004 	sub	r3, r3, #4
    10cc:	e083300b 	add	r3, r3, fp
    10d0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10d4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10d8:	e1a01003 	mov	r1, r3
    10dc:	e51b0010 	ldr	r0, [fp, #-16]
    10e0:	eb00018a 	bl	1710 <__udivsi3>
    10e4:	e1a03000 	mov	r3, r0
    10e8:	e50b3010 	str	r3, [fp, #-16]
    10ec:	e51b3010 	ldr	r3, [fp, #-16]
    10f0:	e3530000 	cmp	r3, #0
    10f4:	1affffe7 	bne	1098 <printint+0x64>
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e3530000 	cmp	r3, #0
    1100:	0a00000e 	beq	1140 <printint+0x10c>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e2832001 	add	r2, r3, #1
    110c:	e50b2008 	str	r2, [fp, #-8]
    1110:	e2433004 	sub	r3, r3, #4
    1114:	e083300b 	add	r3, r3, fp
    1118:	e3a0202d 	mov	r2, #45	@ 0x2d
    111c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1120:	ea000006 	b	1140 <printint+0x10c>
    1124:	e24b2020 	sub	r2, fp, #32
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e0823003 	add	r3, r2, r3
    1130:	e5d33000 	ldrb	r3, [r3]
    1134:	e1a01003 	mov	r1, r3
    1138:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    113c:	ebffffae 	bl	ffc <putc>
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e2433001 	sub	r3, r3, #1
    1148:	e50b3008 	str	r3, [fp, #-8]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e3530000 	cmp	r3, #0
    1154:	aafffff2 	bge	1124 <printint+0xf0>
    1158:	e1a00000 	nop			@ (mov r0, r0)
    115c:	e1a00000 	nop			@ (mov r0, r0)
    1160:	e24bd004 	sub	sp, fp, #4
    1164:	e8bd8800 	pop	{fp, pc}
    1168:	000018b8 	.word	0x000018b8

0000116c <printf>:
    116c:	e92d000e 	push	{r1, r2, r3}
    1170:	e92d4800 	push	{fp, lr}
    1174:	e28db004 	add	fp, sp, #4
    1178:	e24dd024 	sub	sp, sp, #36	@ 0x24
    117c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1180:	e3a03000 	mov	r3, #0
    1184:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1188:	e28b3008 	add	r3, fp, #8
    118c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1190:	e3a03000 	mov	r3, #0
    1194:	e50b3010 	str	r3, [fp, #-16]
    1198:	ea000074 	b	1370 <printf+0x204>
    119c:	e59b2004 	ldr	r2, [fp, #4]
    11a0:	e51b3010 	ldr	r3, [fp, #-16]
    11a4:	e0823003 	add	r3, r2, r3
    11a8:	e5d33000 	ldrb	r3, [r3]
    11ac:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11b4:	e3530000 	cmp	r3, #0
    11b8:	1a00000b 	bne	11ec <printf+0x80>
    11bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c0:	e3530025 	cmp	r3, #37	@ 0x25
    11c4:	1a000002 	bne	11d4 <printf+0x68>
    11c8:	e3a03025 	mov	r3, #37	@ 0x25
    11cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11d0:	ea000063 	b	1364 <printf+0x1f8>
    11d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d8:	e6ef3073 	uxtb	r3, r3
    11dc:	e1a01003 	mov	r1, r3
    11e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e4:	ebffff84 	bl	ffc <putc>
    11e8:	ea00005d 	b	1364 <printf+0x1f8>
    11ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11f0:	e3530025 	cmp	r3, #37	@ 0x25
    11f4:	1a00005a 	bne	1364 <printf+0x1f8>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e3530064 	cmp	r3, #100	@ 0x64
    1200:	1a00000a 	bne	1230 <printf+0xc4>
    1204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e1a01003 	mov	r1, r3
    1210:	e3a03001 	mov	r3, #1
    1214:	e3a0200a 	mov	r2, #10
    1218:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    121c:	ebffff84 	bl	1034 <printint>
    1220:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1224:	e2833004 	add	r3, r3, #4
    1228:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    122c:	ea00004a 	b	135c <printf+0x1f0>
    1230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1234:	e3530078 	cmp	r3, #120	@ 0x78
    1238:	0a000002 	beq	1248 <printf+0xdc>
    123c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1240:	e3530070 	cmp	r3, #112	@ 0x70
    1244:	1a00000a 	bne	1274 <printf+0x108>
    1248:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e1a01003 	mov	r1, r3
    1254:	e3a03000 	mov	r3, #0
    1258:	e3a02010 	mov	r2, #16
    125c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1260:	ebffff73 	bl	1034 <printint>
    1264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1268:	e2833004 	add	r3, r3, #4
    126c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1270:	ea000039 	b	135c <printf+0x1f0>
    1274:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1278:	e3530073 	cmp	r3, #115	@ 0x73
    127c:	1a000018 	bne	12e4 <printf+0x178>
    1280:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e50b300c 	str	r3, [fp, #-12]
    128c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1290:	e2833004 	add	r3, r3, #4
    1294:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e3530000 	cmp	r3, #0
    12a0:	1a00000a 	bne	12d0 <printf+0x164>
    12a4:	e59f30f4 	ldr	r3, [pc, #244]	@ 13a0 <printf+0x234>
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	ea000007 	b	12d0 <printf+0x164>
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e5d33000 	ldrb	r3, [r3]
    12b8:	e1a01003 	mov	r1, r3
    12bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c0:	ebffff4d 	bl	ffc <putc>
    12c4:	e51b300c 	ldr	r3, [fp, #-12]
    12c8:	e2833001 	add	r3, r3, #1
    12cc:	e50b300c 	str	r3, [fp, #-12]
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5d33000 	ldrb	r3, [r3]
    12d8:	e3530000 	cmp	r3, #0
    12dc:	1afffff3 	bne	12b0 <printf+0x144>
    12e0:	ea00001d 	b	135c <printf+0x1f0>
    12e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e8:	e3530063 	cmp	r3, #99	@ 0x63
    12ec:	1a000009 	bne	1318 <printf+0x1ac>
    12f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f4:	e5933000 	ldr	r3, [r3]
    12f8:	e6ef3073 	uxtb	r3, r3
    12fc:	e1a01003 	mov	r1, r3
    1300:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1304:	ebffff3c 	bl	ffc <putc>
    1308:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    130c:	e2833004 	add	r3, r3, #4
    1310:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1314:	ea000010 	b	135c <printf+0x1f0>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530025 	cmp	r3, #37	@ 0x25
    1320:	1a000005 	bne	133c <printf+0x1d0>
    1324:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1328:	e6ef3073 	uxtb	r3, r3
    132c:	e1a01003 	mov	r1, r3
    1330:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1334:	ebffff30 	bl	ffc <putc>
    1338:	ea000007 	b	135c <printf+0x1f0>
    133c:	e3a01025 	mov	r1, #37	@ 0x25
    1340:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1344:	ebffff2c 	bl	ffc <putc>
    1348:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    134c:	e6ef3073 	uxtb	r3, r3
    1350:	e1a01003 	mov	r1, r3
    1354:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1358:	ebffff27 	bl	ffc <putc>
    135c:	e3a03000 	mov	r3, #0
    1360:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1364:	e51b3010 	ldr	r3, [fp, #-16]
    1368:	e2833001 	add	r3, r3, #1
    136c:	e50b3010 	str	r3, [fp, #-16]
    1370:	e59b2004 	ldr	r2, [fp, #4]
    1374:	e51b3010 	ldr	r3, [fp, #-16]
    1378:	e0823003 	add	r3, r2, r3
    137c:	e5d33000 	ldrb	r3, [r3]
    1380:	e3530000 	cmp	r3, #0
    1384:	1affff84 	bne	119c <printf+0x30>
    1388:	e1a00000 	nop			@ (mov r0, r0)
    138c:	e1a00000 	nop			@ (mov r0, r0)
    1390:	e24bd004 	sub	sp, fp, #4
    1394:	e8bd4800 	pop	{fp, lr}
    1398:	e28dd00c 	add	sp, sp, #12
    139c:	e12fff1e 	bx	lr
    13a0:	00001898 	.word	0x00001898

000013a4 <free>:
    13a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13a8:	e28db000 	add	fp, sp, #0
    13ac:	e24dd014 	sub	sp, sp, #20
    13b0:	e50b0010 	str	r0, [fp, #-16]
    13b4:	e51b3010 	ldr	r3, [fp, #-16]
    13b8:	e2433008 	sub	r3, r3, #8
    13bc:	e50b300c 	str	r3, [fp, #-12]
    13c0:	e59f3154 	ldr	r3, [pc, #340]	@ 151c <free+0x178>
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e50b3008 	str	r3, [fp, #-8]
    13cc:	ea000010 	b	1414 <free+0x70>
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e51b2008 	ldr	r2, [fp, #-8]
    13dc:	e1520003 	cmp	r2, r3
    13e0:	3a000008 	bcc	1408 <free+0x64>
    13e4:	e51b200c 	ldr	r2, [fp, #-12]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e1520003 	cmp	r2, r3
    13f0:	8a000010 	bhi	1438 <free+0x94>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5933000 	ldr	r3, [r3]
    13fc:	e51b200c 	ldr	r2, [fp, #-12]
    1400:	e1520003 	cmp	r2, r3
    1404:	3a00000b 	bcc	1438 <free+0x94>
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5933000 	ldr	r3, [r3]
    1410:	e50b3008 	str	r3, [fp, #-8]
    1414:	e51b200c 	ldr	r2, [fp, #-12]
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e1520003 	cmp	r2, r3
    1420:	9affffea 	bls	13d0 <free+0x2c>
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e51b200c 	ldr	r2, [fp, #-12]
    1430:	e1520003 	cmp	r2, r3
    1434:	2affffe5 	bcs	13d0 <free+0x2c>
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5933004 	ldr	r3, [r3, #4]
    1440:	e1a03183 	lsl	r3, r3, #3
    1444:	e51b200c 	ldr	r2, [fp, #-12]
    1448:	e0822003 	add	r2, r2, r3
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e5933000 	ldr	r3, [r3]
    1454:	e1520003 	cmp	r2, r3
    1458:	1a00000d 	bne	1494 <free+0xf0>
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5932004 	ldr	r2, [r3, #4]
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e5933000 	ldr	r3, [r3]
    146c:	e5933004 	ldr	r3, [r3, #4]
    1470:	e0822003 	add	r2, r2, r3
    1474:	e51b300c 	ldr	r3, [fp, #-12]
    1478:	e5832004 	str	r2, [r3, #4]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e5932000 	ldr	r2, [r3]
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e5832000 	str	r2, [r3]
    1490:	ea000003 	b	14a4 <free+0x100>
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e5932000 	ldr	r2, [r3]
    149c:	e51b300c 	ldr	r3, [fp, #-12]
    14a0:	e5832000 	str	r2, [r3]
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e1a03183 	lsl	r3, r3, #3
    14b0:	e51b2008 	ldr	r2, [fp, #-8]
    14b4:	e0823003 	add	r3, r2, r3
    14b8:	e51b200c 	ldr	r2, [fp, #-12]
    14bc:	e1520003 	cmp	r2, r3
    14c0:	1a00000b 	bne	14f4 <free+0x150>
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5932004 	ldr	r2, [r3, #4]
    14cc:	e51b300c 	ldr	r3, [fp, #-12]
    14d0:	e5933004 	ldr	r3, [r3, #4]
    14d4:	e0822003 	add	r2, r2, r3
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5832004 	str	r2, [r3, #4]
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5932000 	ldr	r2, [r3]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5832000 	str	r2, [r3]
    14f0:	ea000002 	b	1500 <free+0x15c>
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e51b200c 	ldr	r2, [fp, #-12]
    14fc:	e5832000 	str	r2, [r3]
    1500:	e59f2014 	ldr	r2, [pc, #20]	@ 151c <free+0x178>
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5823000 	str	r3, [r2]
    150c:	e1a00000 	nop			@ (mov r0, r0)
    1510:	e28bd000 	add	sp, fp, #0
    1514:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1518:	e12fff1e 	bx	lr
    151c:	000018d4 	.word	0x000018d4

00001520 <morecore>:
    1520:	e92d4800 	push	{fp, lr}
    1524:	e28db004 	add	fp, sp, #4
    1528:	e24dd010 	sub	sp, sp, #16
    152c:	e50b0010 	str	r0, [fp, #-16]
    1530:	e51b3010 	ldr	r3, [fp, #-16]
    1534:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1538:	2a000001 	bcs	1544 <morecore+0x24>
    153c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1540:	e50b3010 	str	r3, [fp, #-16]
    1544:	e51b3010 	ldr	r3, [fp, #-16]
    1548:	e1a03183 	lsl	r3, r3, #3
    154c:	e1a00003 	mov	r0, r3
    1550:	ebfffe5f 	bl	ed4 <sbrk>
    1554:	e50b0008 	str	r0, [fp, #-8]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e3730001 	cmn	r3, #1
    1560:	1a000001 	bne	156c <morecore+0x4c>
    1564:	e3a03000 	mov	r3, #0
    1568:	ea00000a 	b	1598 <morecore+0x78>
    156c:	e51b3008 	ldr	r3, [fp, #-8]
    1570:	e50b300c 	str	r3, [fp, #-12]
    1574:	e51b300c 	ldr	r3, [fp, #-12]
    1578:	e51b2010 	ldr	r2, [fp, #-16]
    157c:	e5832004 	str	r2, [r3, #4]
    1580:	e51b300c 	ldr	r3, [fp, #-12]
    1584:	e2833008 	add	r3, r3, #8
    1588:	e1a00003 	mov	r0, r3
    158c:	ebffff84 	bl	13a4 <free>
    1590:	e59f300c 	ldr	r3, [pc, #12]	@ 15a4 <morecore+0x84>
    1594:	e5933000 	ldr	r3, [r3]
    1598:	e1a00003 	mov	r0, r3
    159c:	e24bd004 	sub	sp, fp, #4
    15a0:	e8bd8800 	pop	{fp, pc}
    15a4:	000018d4 	.word	0x000018d4

000015a8 <malloc>:
    15a8:	e92d4800 	push	{fp, lr}
    15ac:	e28db004 	add	fp, sp, #4
    15b0:	e24dd018 	sub	sp, sp, #24
    15b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15bc:	e2833007 	add	r3, r3, #7
    15c0:	e1a031a3 	lsr	r3, r3, #3
    15c4:	e2833001 	add	r3, r3, #1
    15c8:	e50b3010 	str	r3, [fp, #-16]
    15cc:	e59f3134 	ldr	r3, [pc, #308]	@ 1708 <malloc+0x160>
    15d0:	e5933000 	ldr	r3, [r3]
    15d4:	e50b300c 	str	r3, [fp, #-12]
    15d8:	e51b300c 	ldr	r3, [fp, #-12]
    15dc:	e3530000 	cmp	r3, #0
    15e0:	1a00000b 	bne	1614 <malloc+0x6c>
    15e4:	e59f3120 	ldr	r3, [pc, #288]	@ 170c <malloc+0x164>
    15e8:	e50b300c 	str	r3, [fp, #-12]
    15ec:	e59f2114 	ldr	r2, [pc, #276]	@ 1708 <malloc+0x160>
    15f0:	e51b300c 	ldr	r3, [fp, #-12]
    15f4:	e5823000 	str	r3, [r2]
    15f8:	e59f3108 	ldr	r3, [pc, #264]	@ 1708 <malloc+0x160>
    15fc:	e5933000 	ldr	r3, [r3]
    1600:	e59f2104 	ldr	r2, [pc, #260]	@ 170c <malloc+0x164>
    1604:	e5823000 	str	r3, [r2]
    1608:	e59f30fc 	ldr	r3, [pc, #252]	@ 170c <malloc+0x164>
    160c:	e3a02000 	mov	r2, #0
    1610:	e5832004 	str	r2, [r3, #4]
    1614:	e51b300c 	ldr	r3, [fp, #-12]
    1618:	e5933000 	ldr	r3, [r3]
    161c:	e50b3008 	str	r3, [fp, #-8]
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e5933004 	ldr	r3, [r3, #4]
    1628:	e51b2010 	ldr	r2, [fp, #-16]
    162c:	e1520003 	cmp	r2, r3
    1630:	8a00001e 	bhi	16b0 <malloc+0x108>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e5933004 	ldr	r3, [r3, #4]
    163c:	e51b2010 	ldr	r2, [fp, #-16]
    1640:	e1520003 	cmp	r2, r3
    1644:	1a000004 	bne	165c <malloc+0xb4>
    1648:	e51b3008 	ldr	r3, [fp, #-8]
    164c:	e5932000 	ldr	r2, [r3]
    1650:	e51b300c 	ldr	r3, [fp, #-12]
    1654:	e5832000 	str	r2, [r3]
    1658:	ea00000e 	b	1698 <malloc+0xf0>
    165c:	e51b3008 	ldr	r3, [fp, #-8]
    1660:	e5932004 	ldr	r2, [r3, #4]
    1664:	e51b3010 	ldr	r3, [fp, #-16]
    1668:	e0422003 	sub	r2, r2, r3
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e5832004 	str	r2, [r3, #4]
    1674:	e51b3008 	ldr	r3, [fp, #-8]
    1678:	e5933004 	ldr	r3, [r3, #4]
    167c:	e1a03183 	lsl	r3, r3, #3
    1680:	e51b2008 	ldr	r2, [fp, #-8]
    1684:	e0823003 	add	r3, r2, r3
    1688:	e50b3008 	str	r3, [fp, #-8]
    168c:	e51b3008 	ldr	r3, [fp, #-8]
    1690:	e51b2010 	ldr	r2, [fp, #-16]
    1694:	e5832004 	str	r2, [r3, #4]
    1698:	e59f2068 	ldr	r2, [pc, #104]	@ 1708 <malloc+0x160>
    169c:	e51b300c 	ldr	r3, [fp, #-12]
    16a0:	e5823000 	str	r3, [r2]
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e2833008 	add	r3, r3, #8
    16ac:	ea000012 	b	16fc <malloc+0x154>
    16b0:	e59f3050 	ldr	r3, [pc, #80]	@ 1708 <malloc+0x160>
    16b4:	e5933000 	ldr	r3, [r3]
    16b8:	e51b2008 	ldr	r2, [fp, #-8]
    16bc:	e1520003 	cmp	r2, r3
    16c0:	1a000007 	bne	16e4 <malloc+0x13c>
    16c4:	e51b0010 	ldr	r0, [fp, #-16]
    16c8:	ebffff94 	bl	1520 <morecore>
    16cc:	e50b0008 	str	r0, [fp, #-8]
    16d0:	e51b3008 	ldr	r3, [fp, #-8]
    16d4:	e3530000 	cmp	r3, #0
    16d8:	1a000001 	bne	16e4 <malloc+0x13c>
    16dc:	e3a03000 	mov	r3, #0
    16e0:	ea000005 	b	16fc <malloc+0x154>
    16e4:	e51b3008 	ldr	r3, [fp, #-8]
    16e8:	e50b300c 	str	r3, [fp, #-12]
    16ec:	e51b3008 	ldr	r3, [fp, #-8]
    16f0:	e5933000 	ldr	r3, [r3]
    16f4:	e50b3008 	str	r3, [fp, #-8]
    16f8:	eaffffc8 	b	1620 <malloc+0x78>
    16fc:	e1a00003 	mov	r0, r3
    1700:	e24bd004 	sub	sp, fp, #4
    1704:	e8bd8800 	pop	{fp, pc}
    1708:	000018d4 	.word	0x000018d4
    170c:	000018cc 	.word	0x000018cc

00001710 <__udivsi3>:
    1710:	e2512001 	subs	r2, r1, #1
    1714:	012fff1e 	bxeq	lr
    1718:	3a000036 	bcc	17f8 <__udivsi3+0xe8>
    171c:	e1500001 	cmp	r0, r1
    1720:	9a000022 	bls	17b0 <__udivsi3+0xa0>
    1724:	e1110002 	tst	r1, r2
    1728:	0a000023 	beq	17bc <__udivsi3+0xac>
    172c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1730:	01a01181 	lsleq	r1, r1, #3
    1734:	03a03008 	moveq	r3, #8
    1738:	13a03001 	movne	r3, #1
    173c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1740:	31510000 	cmpcc	r1, r0
    1744:	31a01201 	lslcc	r1, r1, #4
    1748:	31a03203 	lslcc	r3, r3, #4
    174c:	3afffffa 	bcc	173c <__udivsi3+0x2c>
    1750:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1754:	31510000 	cmpcc	r1, r0
    1758:	31a01081 	lslcc	r1, r1, #1
    175c:	31a03083 	lslcc	r3, r3, #1
    1760:	3afffffa 	bcc	1750 <__udivsi3+0x40>
    1764:	e3a02000 	mov	r2, #0
    1768:	e1500001 	cmp	r0, r1
    176c:	20400001 	subcs	r0, r0, r1
    1770:	21822003 	orrcs	r2, r2, r3
    1774:	e15000a1 	cmp	r0, r1, lsr #1
    1778:	204000a1 	subcs	r0, r0, r1, lsr #1
    177c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1780:	e1500121 	cmp	r0, r1, lsr #2
    1784:	20400121 	subcs	r0, r0, r1, lsr #2
    1788:	21822123 	orrcs	r2, r2, r3, lsr #2
    178c:	e15001a1 	cmp	r0, r1, lsr #3
    1790:	204001a1 	subcs	r0, r0, r1, lsr #3
    1794:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1798:	e3500000 	cmp	r0, #0
    179c:	11b03223 	lsrsne	r3, r3, #4
    17a0:	11a01221 	lsrne	r1, r1, #4
    17a4:	1affffef 	bne	1768 <__udivsi3+0x58>
    17a8:	e1a00002 	mov	r0, r2
    17ac:	e12fff1e 	bx	lr
    17b0:	03a00001 	moveq	r0, #1
    17b4:	13a00000 	movne	r0, #0
    17b8:	e12fff1e 	bx	lr
    17bc:	e3510801 	cmp	r1, #65536	@ 0x10000
    17c0:	21a01821 	lsrcs	r1, r1, #16
    17c4:	23a02010 	movcs	r2, #16
    17c8:	33a02000 	movcc	r2, #0
    17cc:	e3510c01 	cmp	r1, #256	@ 0x100
    17d0:	21a01421 	lsrcs	r1, r1, #8
    17d4:	22822008 	addcs	r2, r2, #8
    17d8:	e3510010 	cmp	r1, #16
    17dc:	21a01221 	lsrcs	r1, r1, #4
    17e0:	22822004 	addcs	r2, r2, #4
    17e4:	e3510004 	cmp	r1, #4
    17e8:	82822003 	addhi	r2, r2, #3
    17ec:	908220a1 	addls	r2, r2, r1, lsr #1
    17f0:	e1a00230 	lsr	r0, r0, r2
    17f4:	e12fff1e 	bx	lr
    17f8:	e3500000 	cmp	r0, #0
    17fc:	13e00000 	mvnne	r0, #0
    1800:	ea000007 	b	1824 <__aeabi_idiv0>

00001804 <__aeabi_uidivmod>:
    1804:	e3510000 	cmp	r1, #0
    1808:	0afffffa 	beq	17f8 <__udivsi3+0xe8>
    180c:	e92d4003 	push	{r0, r1, lr}
    1810:	ebffffbe 	bl	1710 <__udivsi3>
    1814:	e8bd4006 	pop	{r1, r2, lr}
    1818:	e0030092 	mul	r3, r2, r0
    181c:	e0411003 	sub	r1, r1, r3
    1820:	e12fff1e 	bx	lr

00001824 <__aeabi_idiv0>:
    1824:	e12fff1e 	bx	lr
