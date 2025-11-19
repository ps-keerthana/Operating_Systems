
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	0001059c 	.word	0x0001059c
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	00010500 	.word	0x00010500

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010594 	.word	0x00010594

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	00010598 	.word	0x00010598
   102d4:	00010594 	.word	0x00010594

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	00010514 	.word	0x00010514
   103cc:	55555555 	.word	0x55555555
   103d0:	00010594 	.word	0x00010594
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb00003c 	bl	104f0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b3000 	.word	0x800b3000
   10408:	800ac118 	.word	0x800ac118

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00ac 	ldr	r0, [pc, #172]	@ 104cc <start+0xc0>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e59f00a8 	ldr	r0, [pc, #168]	@ 104d0 <start+0xc4>
   10424:	ebffff15 	bl	10080 <_puts>
   10428:	e3a03000 	mov	r3, #0
   1042c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10430:	e3a01000 	mov	r1, #0
   10434:	e3a00000 	mov	r0, #0
   10438:	ebffff5e 	bl	101b8 <set_bootpgtbl>
   1043c:	e3a03000 	mov	r3, #0
   10440:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10444:	e3a01000 	mov	r1, #0
   10448:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   1044c:	ebffff59 	bl	101b8 <set_bootpgtbl>
   10450:	e59f307c 	ldr	r3, [pc, #124]	@ 104d4 <start+0xc8>
   10454:	e50b3008 	str	r3, [fp, #-8]
   10458:	e59f2078 	ldr	r2, [pc, #120]	@ 104d8 <start+0xcc>
   1045c:	e51b3008 	ldr	r3, [fp, #-8]
   10460:	e1530002 	cmp	r3, r2
   10464:	8a000001 	bhi	10470 <start+0x64>
   10468:	e59f006c 	ldr	r0, [pc, #108]	@ 104dc <start+0xd0>
   1046c:	ebffff03 	bl	10080 <_puts>
   10470:	e3a03000 	mov	r3, #0
   10474:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10478:	e3a01000 	mov	r1, #0
   1047c:	e59f005c 	ldr	r0, [pc, #92]	@ 104e0 <start+0xd4>
   10480:	ebffff4c 	bl	101b8 <set_bootpgtbl>
   10484:	e3a03001 	mov	r3, #1
   10488:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   1048c:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10490:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   10494:	ebffff47 	bl	101b8 <set_bootpgtbl>
   10498:	e59f3044 	ldr	r3, [pc, #68]	@ 104e4 <start+0xd8>
   1049c:	e5933000 	ldr	r3, [r3]
   104a0:	e59f2040 	ldr	r2, [pc, #64]	@ 104e8 <start+0xdc>
   104a4:	e5922000 	ldr	r2, [r2]
   104a8:	e1a01002 	mov	r1, r2
   104ac:	e1a00003 	mov	r0, r3
   104b0:	ebffff93 	bl	10304 <load_pgtlb>
   104b4:	ebfffedb 	bl	10028 <jump_stack>
   104b8:	ebffffc6 	bl	103d8 <clear_bss>
   104bc:	eb00000d 	bl	104f8 <__kmain_veneer>
   104c0:	e1a00000 	nop			@ (mov r0, r0)
   104c4:	e24bd004 	sub	sp, fp, #4
   104c8:	e8bd8800 	pop	{fp, pc}
   104cc:	0001052c 	.word	0x0001052c
   104d0:	00010550 	.word	0x00010550
   104d4:	800f0000 	.word	0x800f0000
   104d8:	800b3000 	.word	0x800b3000
   104dc:	0001056c 	.word	0x0001056c
   104e0:	ffff0000 	.word	0xffff0000
   104e4:	00010594 	.word	0x00010594
   104e8:	00010598 	.word	0x00010598
   104ec:	00000000 	.word	0x00000000

000104f0 <__memset_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__memset_veneer+0x4>
   104f4:	80020000 	.word	0x80020000

000104f8 <__kmain_veneer>:
   104f8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104fc <__kmain_veneer+0x4>
   104fc:	80024aa4 	.word	0x80024aa4
   10500:	33323130 	.word	0x33323130
   10504:	37363534 	.word	0x37363534
   10508:	42413938 	.word	0x42413938
   1050c:	46454443 	.word	0x46454443
   10510:	00000000 	.word	0x00000000
   10514:	6465656e 	.word	0x6465656e
   10518:	52414120 	.word	0x52414120
   1051c:	3676204d 	.word	0x3676204d
   10520:	20726f20 	.word	0x20726f20
   10524:	68676968 	.word	0x68676968
   10528:	000a7265 	.word	0x000a7265
   1052c:	202d2d2d 	.word	0x202d2d2d
   10530:	53494854 	.word	0x53494854
   10534:	20534920 	.word	0x20534920
   10538:	454e2041 	.word	0x454e2041
   1053c:	454b2057 	.word	0x454b2057
   10540:	4c454e52 	.word	0x4c454e52
   10544:	49554220 	.word	0x49554220
   10548:	2d20444c 	.word	0x2d20444c
   1054c:	000a2d2d 	.word	0x000a2d2d
   10550:	72617473 	.word	0x72617473
   10554:	676e6974 	.word	0x676e6974
   10558:	36767820 	.word	0x36767820
   1055c:	726f6620 	.word	0x726f6620
   10560:	4d524120 	.word	0x4d524120
   10564:	0a2e2e2e 	.word	0x0a2e2e2e
   10568:	00000000 	.word	0x00000000
   1056c:	6f727265 	.word	0x6f727265
   10570:	76203a72 	.word	0x76203a72
   10574:	6f746365 	.word	0x6f746365
   10578:	61742072 	.word	0x61742072
   1057c:	20656c62 	.word	0x20656c62
   10580:	7265766f 	.word	0x7265766f
   10584:	7370616c 	.word	0x7370616c
   10588:	72656b20 	.word	0x72656b20
   1058c:	0a6c656e 	.word	0x0a6c656e
   10590:	00000000 	.word	0x00000000

00010594 <kernel_pgtbl>:
   10594:	00014000                                .@..

00010598 <user_pgtbl>:
   10598:	00018000                                ....

0001059c <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800af588 	.word	0x800af588

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000514 	bl	80021af4 <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb000502 	bl	80021af4 <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	8002ac94 	.word	0x8002ac94
80020720:	800af588 	.word	0x800af588
80020724:	8002acac 	.word	0x8002acac
80020728:	8002acc0 	.word	0x8002acc0

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00041a 	bl	80021894 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000407 	bl	80021894 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	8002acd4 	.word	0x8002acd4
800208a0:	8002acd8 	.word	0x8002acd8

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb0018b3 	bl	80026bb8 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	8002ace4 	.word	0x8002ace4
800209a0:	800ac118 	.word	0x800ac118
800209a4:	800ad63c 	.word	0x800ad63c
800209a8:	800ac14c 	.word	0x800ac14c

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb00188d 	bl	80026c00 <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb00187d 	bl	80026c2c <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb00158b 	bl	80026078 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb001856 	bl	80026c2c <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003fd 	bl	80021af4 <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800ac118 	.word	0x800ac118
80020b0c:	800ad63c 	.word	0x800ad63c
80020b10:	8002acec 	.word	0x8002acec

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb001020 	bl	80024bd8 <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003d8 	bl	80021af4 <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb00100a 	bl	80024bd8 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	8002ad00 	.word	0x8002ad00

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003c2 	bl	80021af4 <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb001803 	bl	80026c00 <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb001572 	bl	80026248 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0017e9 	bl	80026c2c <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	8002ad08 	.word	0x8002ad08
80020c94:	800ac118 	.word	0x800ac118
80020c98:	800ad63c 	.word	0x800ad63c

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ad854 	.word	0x800ad854

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ad854 	.word	0x800ad854

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ad854 	.word	0x800ad854

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb00177a 	bl	80026bb8 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	8002ad10 	.word	0x8002ad10
80020dd8:	800ad854 	.word	0x800ad854

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ad854 	.word	0x800ad854
80020f7c:	800ad894 	.word	0x800ad894
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002bf 	bl	80021af4 <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ad854 	.word	0x800ad854
8002111c:	8002ad18 	.word	0x8002ad18
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb000250 	bl	80021af4 <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ad854 	.word	0x800ad854
8002126c:	8002ad28 	.word	0x8002ad28
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb000208 	bl	80021af4 <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ad854 	.word	0x800ad854
80021360:	8002ad38 	.word	0x8002ad38

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ad854 	.word	0x800ad854
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb0001a7 	bl	80021af4 <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb0015e8 	bl	80026c00 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0015ee 	bl	80026c2c <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	8002ad50 	.word	0x8002ad50
80021484:	800ad854 	.word	0x800ad854

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb000181 	bl	80021af4 <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	8002ad70 	.word	0x8002ad70

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000146 	bl	80021af4 <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb001587 	bl	80026c00 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb00158d 	bl	80026c2c <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	8002ad84 	.word	0x8002ad84
80021604:	800ad854 	.word	0x800ad854

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000e8 	bl	80021af4 <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	8002adb4 	.word	0x8002adb4

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb0024d3 	bl	8002ab28 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb002488 	bl	8002aa34 <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000bb 	bl	80021b58 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002c000 	.word	0x8002c000

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f323c 	ldr	r3, [pc, #572]	@ 80021ae8 <cprintf+0x254>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f0224 	ldr	r0, [pc, #548]	@ 80021ae8 <cprintf+0x254>
800218c0:	eb0014ce 	bl	80026c00 <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f0214 	ldr	r0, [pc, #532]	@ 80021aec <cprintf+0x258>
800218d4:	eb000086 	bl	80021af4 <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea00006a 	b	80021a98 <cprintf+0x204>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000095 	bl	80021b58 <consputc>
80021900:	ea000061 	b	80021a8c <cprintf+0x1f8>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a000062 	beq	80021abc <cprintf+0x228>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a00004b 	beq	80021a6c <cprintf+0x1d8>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba00004b 	blt	80021a78 <cprintf+0x1e4>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000048 	bgt	80021a78 <cprintf+0x1e4>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000045 	blt	80021a78 <cprintf+0x1e4>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2433064 	sub	r3, r3, #100	@ 0x64
80021968:	e3530014 	cmp	r3, #20
8002196c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
80021970:	ea000040 	b	80021a78 <cprintf+0x1e4>
80021974:	800219c8 	.word	0x800219c8
80021978:	80021a78 	.word	0x80021a78
8002197c:	80021a78 	.word	0x80021a78
80021980:	80021a78 	.word	0x80021a78
80021984:	80021a78 	.word	0x80021a78
80021988:	80021a78 	.word	0x80021a78
8002198c:	80021a78 	.word	0x80021a78
80021990:	80021a78 	.word	0x80021a78
80021994:	80021a78 	.word	0x80021a78
80021998:	80021a78 	.word	0x80021a78
8002199c:	80021a78 	.word	0x80021a78
800219a0:	80021a78 	.word	0x80021a78
800219a4:	800219ec 	.word	0x800219ec
800219a8:	80021a78 	.word	0x80021a78
800219ac:	80021a78 	.word	0x80021a78
800219b0:	80021a10 	.word	0x80021a10
800219b4:	80021a78 	.word	0x80021a78
800219b8:	80021a78 	.word	0x80021a78
800219bc:	80021a78 	.word	0x80021a78
800219c0:	80021a78 	.word	0x80021a78
800219c4:	800219ec 	.word	0x800219ec
800219c8:	e51b300c 	ldr	r3, [fp, #-12]
800219cc:	e2832004 	add	r2, r3, #4
800219d0:	e50b200c 	str	r2, [fp, #-12]
800219d4:	e5933000 	ldr	r3, [r3]
800219d8:	e3a02001 	mov	r2, #1
800219dc:	e3a0100a 	mov	r1, #10
800219e0:	e1a00003 	mov	r0, r3
800219e4:	ebffff5e 	bl	80021764 <printint>
800219e8:	ea000027 	b	80021a8c <cprintf+0x1f8>
800219ec:	e51b300c 	ldr	r3, [fp, #-12]
800219f0:	e2832004 	add	r2, r3, #4
800219f4:	e50b200c 	str	r2, [fp, #-12]
800219f8:	e5933000 	ldr	r3, [r3]
800219fc:	e3a02000 	mov	r2, #0
80021a00:	e3a01010 	mov	r1, #16
80021a04:	e1a00003 	mov	r0, r3
80021a08:	ebffff55 	bl	80021764 <printint>
80021a0c:	ea00001e 	b	80021a8c <cprintf+0x1f8>
80021a10:	e51b300c 	ldr	r3, [fp, #-12]
80021a14:	e2832004 	add	r2, r3, #4
80021a18:	e50b200c 	str	r2, [fp, #-12]
80021a1c:	e5933000 	ldr	r3, [r3]
80021a20:	e50b3010 	str	r3, [fp, #-16]
80021a24:	e51b3010 	ldr	r3, [fp, #-16]
80021a28:	e3530000 	cmp	r3, #0
80021a2c:	1a000009 	bne	80021a58 <cprintf+0x1c4>
80021a30:	e59f30b8 	ldr	r3, [pc, #184]	@ 80021af0 <cprintf+0x25c>
80021a34:	e50b3010 	str	r3, [fp, #-16]
80021a38:	ea000006 	b	80021a58 <cprintf+0x1c4>
80021a3c:	e51b3010 	ldr	r3, [fp, #-16]
80021a40:	e5d33000 	ldrb	r3, [r3]
80021a44:	e1a00003 	mov	r0, r3
80021a48:	eb000042 	bl	80021b58 <consputc>
80021a4c:	e51b3010 	ldr	r3, [fp, #-16]
80021a50:	e2833001 	add	r3, r3, #1
80021a54:	e50b3010 	str	r3, [fp, #-16]
80021a58:	e51b3010 	ldr	r3, [fp, #-16]
80021a5c:	e5d33000 	ldrb	r3, [r3]
80021a60:	e3530000 	cmp	r3, #0
80021a64:	1afffff4 	bne	80021a3c <cprintf+0x1a8>
80021a68:	ea000007 	b	80021a8c <cprintf+0x1f8>
80021a6c:	e3a00025 	mov	r0, #37	@ 0x25
80021a70:	eb000038 	bl	80021b58 <consputc>
80021a74:	ea000004 	b	80021a8c <cprintf+0x1f8>
80021a78:	e3a00025 	mov	r0, #37	@ 0x25
80021a7c:	eb000035 	bl	80021b58 <consputc>
80021a80:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a84:	eb000033 	bl	80021b58 <consputc>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e51b3008 	ldr	r3, [fp, #-8]
80021a90:	e2833001 	add	r3, r3, #1
80021a94:	e50b3008 	str	r3, [fp, #-8]
80021a98:	e59b2004 	ldr	r2, [fp, #4]
80021a9c:	e51b3008 	ldr	r3, [fp, #-8]
80021aa0:	e0823003 	add	r3, r2, r3
80021aa4:	e5d33000 	ldrb	r3, [r3]
80021aa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ab0:	e3530000 	cmp	r3, #0
80021ab4:	1affff8c 	bne	800218ec <cprintf+0x58>
80021ab8:	ea000000 	b	80021ac0 <cprintf+0x22c>
80021abc:	e1a00000 	nop			@ (mov r0, r0)
80021ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ac4:	e3530000 	cmp	r3, #0
80021ac8:	0a000001 	beq	80021ad4 <cprintf+0x240>
80021acc:	e59f0014 	ldr	r0, [pc, #20]	@ 80021ae8 <cprintf+0x254>
80021ad0:	eb001455 	bl	80026c2c <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ad8d0 	.word	0x800ad8d0
80021aec:	8002adc4 	.word	0x8002adc4
80021af0:	8002add0 	.word	0x8002add0

80021af4 <panic>:
80021af4:	e92d4800 	push	{fp, lr}
80021af8:	e28db004 	add	fp, sp, #4
80021afc:	e24dd008 	sub	sp, sp, #8
80021b00:	e50b0008 	str	r0, [fp, #-8]
80021b04:	ebfffa8d 	bl	80020540 <cli>
80021b08:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b48 <panic+0x54>
80021b0c:	e3a02000 	mov	r2, #0
80021b10:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021b14:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b4c <panic+0x58>
80021b18:	e5933000 	ldr	r3, [r3]
80021b1c:	e5d33000 	ldrb	r3, [r3]
80021b20:	e1a01003 	mov	r1, r3
80021b24:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b50 <panic+0x5c>
80021b28:	ebffff59 	bl	80021894 <cprintf>
80021b2c:	e51b0008 	ldr	r0, [fp, #-8]
80021b30:	ebfffb35 	bl	8002080c <show_callstk>
80021b34:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b54 <panic+0x60>
80021b38:	e3a02001 	mov	r2, #1
80021b3c:	e5832000 	str	r2, [r3]
80021b40:	e1a00000 	nop			@ (mov r0, r0)
80021b44:	eafffffd 	b	80021b40 <panic+0x4c>
80021b48:	800ad8d0 	.word	0x800ad8d0
80021b4c:	800af588 	.word	0x800af588
80021b50:	8002add8 	.word	0x8002add8
80021b54:	800ad8cc 	.word	0x800ad8cc

80021b58 <consputc>:
80021b58:	e92d4800 	push	{fp, lr}
80021b5c:	e28db004 	add	fp, sp, #4
80021b60:	e24dd008 	sub	sp, sp, #8
80021b64:	e50b0008 	str	r0, [fp, #-8]
80021b68:	e59f3050 	ldr	r3, [pc, #80]	@ 80021bc0 <consputc+0x68>
80021b6c:	e5933000 	ldr	r3, [r3]
80021b70:	e3530000 	cmp	r3, #0
80021b74:	0a000002 	beq	80021b84 <consputc+0x2c>
80021b78:	ebfffa70 	bl	80020540 <cli>
80021b7c:	e1a00000 	nop			@ (mov r0, r0)
80021b80:	eafffffd 	b	80021b7c <consputc+0x24>
80021b84:	e51b3008 	ldr	r3, [fp, #-8]
80021b88:	e3530c01 	cmp	r3, #256	@ 0x100
80021b8c:	1a000006 	bne	80021bac <consputc+0x54>
80021b90:	e3a00008 	mov	r0, #8
80021b94:	eb002365 	bl	8002a930 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb002363 	bl	8002a930 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb002361 	bl	8002a930 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb00235e 	bl	8002a930 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ad8cc 	.word	0x800ad8cc

80021bc4 <consoleintr>:
80021bc4:	e92d4800 	push	{fp, lr}
80021bc8:	e28db004 	add	fp, sp, #4
80021bcc:	e24dd010 	sub	sp, sp, #16
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f0258 	ldr	r0, [pc, #600]	@ 80021e34 <consoleintr+0x270>
80021bd8:	eb001408 	bl	80026c00 <acquire>
80021bdc:	ea000089 	b	80021e08 <consoleintr+0x244>
80021be0:	e51b3008 	ldr	r3, [fp, #-8]
80021be4:	e353007f 	cmp	r3, #127	@ 0x7f
80021be8:	0a000028 	beq	80021c90 <consoleintr+0xcc>
80021bec:	e51b3008 	ldr	r3, [fp, #-8]
80021bf0:	e353007f 	cmp	r3, #127	@ 0x7f
80021bf4:	ca000033 	bgt	80021cc8 <consoleintr+0x104>
80021bf8:	e51b3008 	ldr	r3, [fp, #-8]
80021bfc:	e3530015 	cmp	r3, #21
80021c00:	0a000011 	beq	80021c4c <consoleintr+0x88>
80021c04:	e51b3008 	ldr	r3, [fp, #-8]
80021c08:	e3530015 	cmp	r3, #21
80021c0c:	ca00002d 	bgt	80021cc8 <consoleintr+0x104>
80021c10:	e51b3008 	ldr	r3, [fp, #-8]
80021c14:	e3530008 	cmp	r3, #8
80021c18:	0a00001c 	beq	80021c90 <consoleintr+0xcc>
80021c1c:	e51b3008 	ldr	r3, [fp, #-8]
80021c20:	e3530010 	cmp	r3, #16
80021c24:	1a000027 	bne	80021cc8 <consoleintr+0x104>
80021c28:	eb0011c0 	bl	80026330 <procdump>
80021c2c:	ea000075 	b	80021e08 <consoleintr+0x244>
80021c30:	e59f31fc 	ldr	r3, [pc, #508]	@ 80021e34 <consoleintr+0x270>
80021c34:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c38:	e2433001 	sub	r3, r3, #1
80021c3c:	e59f21f0 	ldr	r2, [pc, #496]	@ 80021e34 <consoleintr+0x270>
80021c40:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021c44:	e3a00c01 	mov	r0, #256	@ 0x100
80021c48:	ebffffc2 	bl	80021b58 <consputc>
80021c4c:	e59f31e0 	ldr	r3, [pc, #480]	@ 80021e34 <consoleintr+0x270>
80021c50:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c54:	e59f31d8 	ldr	r3, [pc, #472]	@ 80021e34 <consoleintr+0x270>
80021c58:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c5c:	e1520003 	cmp	r2, r3
80021c60:	0a000063 	beq	80021df4 <consoleintr+0x230>
80021c64:	e59f31c8 	ldr	r3, [pc, #456]	@ 80021e34 <consoleintr+0x270>
80021c68:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c6c:	e2433001 	sub	r3, r3, #1
80021c70:	e1a03b83 	lsl	r3, r3, #23
80021c74:	e1a03ba3 	lsr	r3, r3, #23
80021c78:	e59f21b4 	ldr	r2, [pc, #436]	@ 80021e34 <consoleintr+0x270>
80021c7c:	e0823003 	add	r3, r2, r3
80021c80:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021c84:	e353000a 	cmp	r3, #10
80021c88:	1affffe8 	bne	80021c30 <consoleintr+0x6c>
80021c8c:	ea000058 	b	80021df4 <consoleintr+0x230>
80021c90:	e59f319c 	ldr	r3, [pc, #412]	@ 80021e34 <consoleintr+0x270>
80021c94:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c98:	e59f3194 	ldr	r3, [pc, #404]	@ 80021e34 <consoleintr+0x270>
80021c9c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021ca0:	e1520003 	cmp	r2, r3
80021ca4:	0a000054 	beq	80021dfc <consoleintr+0x238>
80021ca8:	e59f3184 	ldr	r3, [pc, #388]	@ 80021e34 <consoleintr+0x270>
80021cac:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021cb0:	e2433001 	sub	r3, r3, #1
80021cb4:	e59f2178 	ldr	r2, [pc, #376]	@ 80021e34 <consoleintr+0x270>
80021cb8:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021cbc:	e3a00c01 	mov	r0, #256	@ 0x100
80021cc0:	ebffffa4 	bl	80021b58 <consputc>
80021cc4:	ea00004c 	b	80021dfc <consoleintr+0x238>
80021cc8:	e51b3008 	ldr	r3, [fp, #-8]
80021ccc:	e3530009 	cmp	r3, #9
80021cd0:	1a000013 	bne	80021d24 <consoleintr+0x160>
80021cd4:	e59f3158 	ldr	r3, [pc, #344]	@ 80021e34 <consoleintr+0x270>
80021cd8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021cdc:	e2832001 	add	r2, r3, #1
80021ce0:	e59f114c 	ldr	r1, [pc, #332]	@ 80021e34 <consoleintr+0x270>
80021ce4:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021ce8:	e1a03b83 	lsl	r3, r3, #23
80021cec:	e1a03ba3 	lsr	r3, r3, #23
80021cf0:	e51b2008 	ldr	r2, [fp, #-8]
80021cf4:	e6ef1072 	uxtb	r1, r2
80021cf8:	e59f2134 	ldr	r2, [pc, #308]	@ 80021e34 <consoleintr+0x270>
80021cfc:	e0823003 	add	r3, r2, r3
80021d00:	e1a02001 	mov	r2, r1
80021d04:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021d08:	e59f3124 	ldr	r3, [pc, #292]	@ 80021e34 <consoleintr+0x270>
80021d0c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d10:	e59f211c 	ldr	r2, [pc, #284]	@ 80021e34 <consoleintr+0x270>
80021d14:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021d18:	e59f0118 	ldr	r0, [pc, #280]	@ 80021e38 <consoleintr+0x274>
80021d1c:	eb001149 	bl	80026248 <wakeup>
80021d20:	ea000037 	b	80021e04 <consoleintr+0x240>
80021d24:	e51b3008 	ldr	r3, [fp, #-8]
80021d28:	e3530000 	cmp	r3, #0
80021d2c:	0a000034 	beq	80021e04 <consoleintr+0x240>
80021d30:	e59f30fc 	ldr	r3, [pc, #252]	@ 80021e34 <consoleintr+0x270>
80021d34:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d38:	e59f30f4 	ldr	r3, [pc, #244]	@ 80021e34 <consoleintr+0x270>
80021d3c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021d40:	e0423003 	sub	r3, r2, r3
80021d44:	e3530c02 	cmp	r3, #512	@ 0x200
80021d48:	2a00002d 	bcs	80021e04 <consoleintr+0x240>
80021d4c:	e51b3008 	ldr	r3, [fp, #-8]
80021d50:	e353000d 	cmp	r3, #13
80021d54:	0a000001 	beq	80021d60 <consoleintr+0x19c>
80021d58:	e51b3008 	ldr	r3, [fp, #-8]
80021d5c:	ea000000 	b	80021d64 <consoleintr+0x1a0>
80021d60:	e3a0300a 	mov	r3, #10
80021d64:	e50b3008 	str	r3, [fp, #-8]
80021d68:	e59f30c4 	ldr	r3, [pc, #196]	@ 80021e34 <consoleintr+0x270>
80021d6c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d70:	e2832001 	add	r2, r3, #1
80021d74:	e59f10b8 	ldr	r1, [pc, #184]	@ 80021e34 <consoleintr+0x270>
80021d78:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021d7c:	e1a03b83 	lsl	r3, r3, #23
80021d80:	e1a03ba3 	lsr	r3, r3, #23
80021d84:	e51b2008 	ldr	r2, [fp, #-8]
80021d88:	e6ef1072 	uxtb	r1, r2
80021d8c:	e59f20a0 	ldr	r2, [pc, #160]	@ 80021e34 <consoleintr+0x270>
80021d90:	e0823003 	add	r3, r2, r3
80021d94:	e1a02001 	mov	r2, r1
80021d98:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021d9c:	e51b0008 	ldr	r0, [fp, #-8]
80021da0:	ebffff6c 	bl	80021b58 <consputc>
80021da4:	e51b3008 	ldr	r3, [fp, #-8]
80021da8:	e353000a 	cmp	r3, #10
80021dac:	0a000009 	beq	80021dd8 <consoleintr+0x214>
80021db0:	e51b3008 	ldr	r3, [fp, #-8]
80021db4:	e3530004 	cmp	r3, #4
80021db8:	0a000006 	beq	80021dd8 <consoleintr+0x214>
80021dbc:	e59f3070 	ldr	r3, [pc, #112]	@ 80021e34 <consoleintr+0x270>
80021dc0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021dc4:	e59f3068 	ldr	r3, [pc, #104]	@ 80021e34 <consoleintr+0x270>
80021dc8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021dcc:	e2833c02 	add	r3, r3, #512	@ 0x200
80021dd0:	e1520003 	cmp	r2, r3
80021dd4:	1a00000a 	bne	80021e04 <consoleintr+0x240>
80021dd8:	e59f3054 	ldr	r3, [pc, #84]	@ 80021e34 <consoleintr+0x270>
80021ddc:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021de0:	e59f204c 	ldr	r2, [pc, #76]	@ 80021e34 <consoleintr+0x270>
80021de4:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021de8:	e59f0048 	ldr	r0, [pc, #72]	@ 80021e38 <consoleintr+0x274>
80021dec:	eb001115 	bl	80026248 <wakeup>
80021df0:	ea000003 	b	80021e04 <consoleintr+0x240>
80021df4:	e1a00000 	nop			@ (mov r0, r0)
80021df8:	ea000002 	b	80021e08 <consoleintr+0x244>
80021dfc:	e1a00000 	nop			@ (mov r0, r0)
80021e00:	ea000000 	b	80021e08 <consoleintr+0x244>
80021e04:	e1a00000 	nop			@ (mov r0, r0)
80021e08:	e51b3010 	ldr	r3, [fp, #-16]
80021e0c:	e12fff33 	blx	r3
80021e10:	e50b0008 	str	r0, [fp, #-8]
80021e14:	e51b3008 	ldr	r3, [fp, #-8]
80021e18:	e3530000 	cmp	r3, #0
80021e1c:	aaffff6f 	bge	80021be0 <consoleintr+0x1c>
80021e20:	e59f000c 	ldr	r0, [pc, #12]	@ 80021e34 <consoleintr+0x270>
80021e24:	eb001380 	bl	80026c2c <release>
80021e28:	e1a00000 	nop			@ (mov r0, r0)
80021e2c:	e24bd004 	sub	sp, fp, #4
80021e30:	e8bd8800 	pop	{fp, pc}
80021e34:	800ad908 	.word	0x800ad908
80021e38:	800adb3c 	.word	0x800adb3c

80021e3c <consoleread>:
80021e3c:	e92d4800 	push	{fp, lr}
80021e40:	e28db004 	add	fp, sp, #4
80021e44:	e24dd018 	sub	sp, sp, #24
80021e48:	e50b0010 	str	r0, [fp, #-16]
80021e4c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021e50:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021e54:	e51b0010 	ldr	r0, [fp, #-16]
80021e58:	eb00054f 	bl	8002339c <iunlock>
80021e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e60:	e50b3008 	str	r3, [fp, #-8]
80021e64:	e59f0128 	ldr	r0, [pc, #296]	@ 80021f94 <consoleread+0x158>
80021e68:	eb001364 	bl	80026c00 <acquire>
80021e6c:	ea000037 	b	80021f50 <consoleread+0x114>
80021e70:	e59f3120 	ldr	r3, [pc, #288]	@ 80021f98 <consoleread+0x15c>
80021e74:	e5933000 	ldr	r3, [r3]
80021e78:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021e7c:	e3530000 	cmp	r3, #0
80021e80:	0a000005 	beq	80021e9c <consoleread+0x60>
80021e84:	e59f0108 	ldr	r0, [pc, #264]	@ 80021f94 <consoleread+0x158>
80021e88:	eb001367 	bl	80026c2c <release>
80021e8c:	e51b0010 	ldr	r0, [fp, #-16]
80021e90:	eb0004dd 	bl	8002320c <ilock>
80021e94:	e3e03000 	mvn	r3, #0
80021e98:	ea00003a 	b	80021f88 <consoleread+0x14c>
80021e9c:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021f94 <consoleread+0x158>
80021ea0:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021f9c <consoleread+0x160>
80021ea4:	eb001073 	bl	80026078 <sleep>
80021ea8:	e59f30e4 	ldr	r3, [pc, #228]	@ 80021f94 <consoleread+0x158>
80021eac:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80021eb0:	e59f30dc 	ldr	r3, [pc, #220]	@ 80021f94 <consoleread+0x158>
80021eb4:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021eb8:	e1520003 	cmp	r2, r3
80021ebc:	0affffeb 	beq	80021e70 <consoleread+0x34>
80021ec0:	e59f30cc 	ldr	r3, [pc, #204]	@ 80021f94 <consoleread+0x158>
80021ec4:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ec8:	e2832001 	add	r2, r3, #1
80021ecc:	e59f10c0 	ldr	r1, [pc, #192]	@ 80021f94 <consoleread+0x158>
80021ed0:	e5812234 	str	r2, [r1, #564]	@ 0x234
80021ed4:	e1a03b83 	lsl	r3, r3, #23
80021ed8:	e1a03ba3 	lsr	r3, r3, #23
80021edc:	e59f20b0 	ldr	r2, [pc, #176]	@ 80021f94 <consoleread+0x158>
80021ee0:	e0823003 	add	r3, r2, r3
80021ee4:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021ee8:	e50b300c 	str	r3, [fp, #-12]
80021eec:	e51b300c 	ldr	r3, [fp, #-12]
80021ef0:	e3530004 	cmp	r3, #4
80021ef4:	1a000009 	bne	80021f20 <consoleread+0xe4>
80021ef8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021efc:	e51b2008 	ldr	r2, [fp, #-8]
80021f00:	e1520003 	cmp	r2, r3
80021f04:	9a000015 	bls	80021f60 <consoleread+0x124>
80021f08:	e59f3084 	ldr	r3, [pc, #132]	@ 80021f94 <consoleread+0x158>
80021f0c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021f10:	e2433001 	sub	r3, r3, #1
80021f14:	e59f2078 	ldr	r2, [pc, #120]	@ 80021f94 <consoleread+0x158>
80021f18:	e5823234 	str	r3, [r2, #564]	@ 0x234
80021f1c:	ea00000f 	b	80021f60 <consoleread+0x124>
80021f20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021f24:	e2832001 	add	r2, r3, #1
80021f28:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80021f2c:	e51b200c 	ldr	r2, [fp, #-12]
80021f30:	e6ef2072 	uxtb	r2, r2
80021f34:	e5c32000 	strb	r2, [r3]
80021f38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f3c:	e2433001 	sub	r3, r3, #1
80021f40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021f44:	e51b300c 	ldr	r3, [fp, #-12]
80021f48:	e353000a 	cmp	r3, #10
80021f4c:	0a000005 	beq	80021f68 <consoleread+0x12c>
80021f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f54:	e3530000 	cmp	r3, #0
80021f58:	caffffd2 	bgt	80021ea8 <consoleread+0x6c>
80021f5c:	ea000002 	b	80021f6c <consoleread+0x130>
80021f60:	e1a00000 	nop			@ (mov r0, r0)
80021f64:	ea000000 	b	80021f6c <consoleread+0x130>
80021f68:	e1a00000 	nop			@ (mov r0, r0)
80021f6c:	e59f0020 	ldr	r0, [pc, #32]	@ 80021f94 <consoleread+0x158>
80021f70:	eb00132d 	bl	80026c2c <release>
80021f74:	e51b0010 	ldr	r0, [fp, #-16]
80021f78:	eb0004a3 	bl	8002320c <ilock>
80021f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f80:	e51b2008 	ldr	r2, [fp, #-8]
80021f84:	e0423003 	sub	r3, r2, r3
80021f88:	e1a00003 	mov	r0, r3
80021f8c:	e24bd004 	sub	sp, fp, #4
80021f90:	e8bd8800 	pop	{fp, pc}
80021f94:	800ad908 	.word	0x800ad908
80021f98:	800b1ed0 	.word	0x800b1ed0
80021f9c:	800adb3c 	.word	0x800adb3c

80021fa0 <consolewrite>:
80021fa0:	e92d4800 	push	{fp, lr}
80021fa4:	e28db004 	add	fp, sp, #4
80021fa8:	e24dd018 	sub	sp, sp, #24
80021fac:	e50b0010 	str	r0, [fp, #-16]
80021fb0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021fb4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021fb8:	e51b0010 	ldr	r0, [fp, #-16]
80021fbc:	eb0004f6 	bl	8002339c <iunlock>
80021fc0:	e59f0060 	ldr	r0, [pc, #96]	@ 80022028 <consolewrite+0x88>
80021fc4:	eb00130d 	bl	80026c00 <acquire>
80021fc8:	e3a03000 	mov	r3, #0
80021fcc:	e50b3008 	str	r3, [fp, #-8]
80021fd0:	ea000008 	b	80021ff8 <consolewrite+0x58>
80021fd4:	e51b3008 	ldr	r3, [fp, #-8]
80021fd8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021fdc:	e0823003 	add	r3, r2, r3
80021fe0:	e5d33000 	ldrb	r3, [r3]
80021fe4:	e1a00003 	mov	r0, r3
80021fe8:	ebfffeda 	bl	80021b58 <consputc>
80021fec:	e51b3008 	ldr	r3, [fp, #-8]
80021ff0:	e2833001 	add	r3, r3, #1
80021ff4:	e50b3008 	str	r3, [fp, #-8]
80021ff8:	e51b2008 	ldr	r2, [fp, #-8]
80021ffc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022000:	e1520003 	cmp	r2, r3
80022004:	bafffff2 	blt	80021fd4 <consolewrite+0x34>
80022008:	e59f0018 	ldr	r0, [pc, #24]	@ 80022028 <consolewrite+0x88>
8002200c:	eb001306 	bl	80026c2c <release>
80022010:	e51b0010 	ldr	r0, [fp, #-16]
80022014:	eb00047c 	bl	8002320c <ilock>
80022018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002201c:	e1a00003 	mov	r0, r3
80022020:	e24bd004 	sub	sp, fp, #4
80022024:	e8bd8800 	pop	{fp, pc}
80022028:	800ad8d0 	.word	0x800ad8d0

8002202c <consoleinit>:
8002202c:	e92d4800 	push	{fp, lr}
80022030:	e28db004 	add	fp, sp, #4
80022034:	e59f103c 	ldr	r1, [pc, #60]	@ 80022078 <consoleinit+0x4c>
80022038:	e59f003c 	ldr	r0, [pc, #60]	@ 8002207c <consoleinit+0x50>
8002203c:	eb0012dd 	bl	80026bb8 <initlock>
80022040:	e59f1038 	ldr	r1, [pc, #56]	@ 80022080 <consoleinit+0x54>
80022044:	e59f0038 	ldr	r0, [pc, #56]	@ 80022084 <consoleinit+0x58>
80022048:	eb0012da 	bl	80026bb8 <initlock>
8002204c:	e59f3034 	ldr	r3, [pc, #52]	@ 80022088 <consoleinit+0x5c>
80022050:	e59f2034 	ldr	r2, [pc, #52]	@ 8002208c <consoleinit+0x60>
80022054:	e583200c 	str	r2, [r3, #12]
80022058:	e59f3028 	ldr	r3, [pc, #40]	@ 80022088 <consoleinit+0x5c>
8002205c:	e59f202c 	ldr	r2, [pc, #44]	@ 80022090 <consoleinit+0x64>
80022060:	e5832008 	str	r2, [r3, #8]
80022064:	e59f3010 	ldr	r3, [pc, #16]	@ 8002207c <consoleinit+0x50>
80022068:	e3a02001 	mov	r2, #1
8002206c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80022070:	e1a00000 	nop			@ (mov r0, r0)
80022074:	e8bd8800 	pop	{fp, pc}
80022078:	8002ade8 	.word	0x8002ade8
8002207c:	800ad8d0 	.word	0x800ad8d0
80022080:	8002adf0 	.word	0x8002adf0
80022084:	800ad908 	.word	0x800ad908
80022088:	800adb48 	.word	0x800adb48
8002208c:	80021fa0 	.word	0x80021fa0
80022090:	80021e3c 	.word	0x80021e3c

80022094 <exec>:
80022094:	e92d4810 	push	{r4, fp, lr}
80022098:	e28db008 	add	fp, sp, #8
8002209c:	e24ddf49 	sub	sp, sp, #292	@ 0x124
800220a0:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
800220a4:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
800220a8:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
800220ac:	eb0008f6 	bl	8002448c <namei>
800220b0:	e50b0010 	str	r0, [fp, #-16]
800220b4:	e51b3010 	ldr	r3, [fp, #-16]
800220b8:	e3530000 	cmp	r3, #0
800220bc:	1a000001 	bne	800220c8 <exec+0x34>
800220c0:	e3e03000 	mvn	r3, #0
800220c4:	ea00013b 	b	800225b8 <exec+0x524>
800220c8:	e51b0010 	ldr	r0, [fp, #-16]
800220cc:	eb00044e 	bl	8002320c <ilock>
800220d0:	e24b106c 	sub	r1, fp, #108	@ 0x6c
800220d4:	e3a03034 	mov	r3, #52	@ 0x34
800220d8:	e3a02000 	mov	r2, #0
800220dc:	e51b0010 	ldr	r0, [fp, #-16]
800220e0:	eb0006c0 	bl	80023be8 <readi>
800220e4:	e1a03000 	mov	r3, r0
800220e8:	e3530033 	cmp	r3, #51	@ 0x33
800220ec:	9a00010f 	bls	80022530 <exec+0x49c>
800220f0:	e51b306c 	ldr	r3, [fp, #-108]	@ 0xffffff94
800220f4:	e59f24c8 	ldr	r2, [pc, #1224]	@ 800225c4 <exec+0x530>
800220f8:	e1530002 	cmp	r3, r2
800220fc:	1a00010d 	bne	80022538 <exec+0x4a4>
80022100:	e3a03000 	mov	r3, #0
80022104:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022108:	eb001de9 	bl	800298b4 <kpt_alloc>
8002210c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022110:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022114:	e3530000 	cmp	r3, #0
80022118:	0a000108 	beq	80022540 <exec+0x4ac>
8002211c:	e3a03000 	mov	r3, #0
80022120:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022124:	e3a03000 	mov	r3, #0
80022128:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002212c:	e51b3050 	ldr	r3, [fp, #-80]	@ 0xffffffb0
80022130:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022134:	ea00002e 	b	800221f4 <exec+0x160>
80022138:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002213c:	e24b108c 	sub	r1, fp, #140	@ 0x8c
80022140:	e3a03020 	mov	r3, #32
80022144:	e51b0010 	ldr	r0, [fp, #-16]
80022148:	eb0006a6 	bl	80023be8 <readi>
8002214c:	e1a03000 	mov	r3, r0
80022150:	e3530020 	cmp	r3, #32
80022154:	1a0000fb 	bne	80022548 <exec+0x4b4>
80022158:	e51b308c 	ldr	r3, [fp, #-140]	@ 0xffffff74
8002215c:	e3530001 	cmp	r3, #1
80022160:	1a00001c 	bne	800221d8 <exec+0x144>
80022164:	e51b2078 	ldr	r2, [fp, #-120]	@ 0xffffff88
80022168:	e51b307c 	ldr	r3, [fp, #-124]	@ 0xffffff84
8002216c:	e1520003 	cmp	r2, r3
80022170:	3a0000f6 	bcc	80022550 <exec+0x4bc>
80022174:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
80022178:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
8002217c:	e0823003 	add	r3, r2, r3
80022180:	e1a02003 	mov	r2, r3
80022184:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022188:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002218c:	eb001f06 	bl	80029dac <allocuvm>
80022190:	e1a03000 	mov	r3, r0
80022194:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022198:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002219c:	e3530000 	cmp	r3, #0
800221a0:	0a0000ec 	beq	80022558 <exec+0x4c4>
800221a4:	e51b3084 	ldr	r3, [fp, #-132]	@ 0xffffff7c
800221a8:	e1a01003 	mov	r1, r3
800221ac:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
800221b0:	e51b307c 	ldr	r3, [fp, #-124]	@ 0xffffff84
800221b4:	e58d3000 	str	r3, [sp]
800221b8:	e1a03002 	mov	r3, r2
800221bc:	e51b2010 	ldr	r2, [fp, #-16]
800221c0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800221c4:	eb001e98 	bl	80029c2c <loaduvm>
800221c8:	e1a03000 	mov	r3, r0
800221cc:	e3530000 	cmp	r3, #0
800221d0:	ba0000e2 	blt	80022560 <exec+0x4cc>
800221d4:	ea000000 	b	800221dc <exec+0x148>
800221d8:	e1a00000 	nop			@ (mov r0, r0)
800221dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800221e0:	e2833001 	add	r3, r3, #1
800221e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800221e8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800221ec:	e2833020 	add	r3, r3, #32
800221f0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800221f4:	e15b34b0 	ldrh	r3, [fp, #-64]	@ 0xffffffc0
800221f8:	e1a02003 	mov	r2, r3
800221fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022200:	e1530002 	cmp	r3, r2
80022204:	baffffcb 	blt	80022138 <exec+0xa4>
80022208:	e51b0010 	ldr	r0, [fp, #-16]
8002220c:	eb0004bf 	bl	80023510 <iunlockput>
80022210:	e3a03000 	mov	r3, #0
80022214:	e50b3010 	str	r3, [fp, #-16]
80022218:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002221c:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80022220:	e283300f 	add	r3, r3, #15
80022224:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80022228:	e3c3300f 	bic	r3, r3, #15
8002222c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022230:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022234:	e2833a02 	add	r3, r3, #8192	@ 0x2000
80022238:	e1a02003 	mov	r2, r3
8002223c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022240:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022244:	eb001ed8 	bl	80029dac <allocuvm>
80022248:	e1a03000 	mov	r3, r0
8002224c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022250:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022254:	e3530000 	cmp	r3, #0
80022258:	0a0000c2 	beq	80022568 <exec+0x4d4>
8002225c:	ebfffcf3 	bl	80021630 <alloc_page>
80022260:	e50b0034 	str	r0, [fp, #-52]	@ 0xffffffcc
80022264:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
80022268:	e3530000 	cmp	r3, #0
8002226c:	0a0000bf 	beq	80022570 <exec+0x4dc>
80022270:	e3a02a01 	mov	r2, #4096	@ 0x1000
80022274:	e3a01000 	mov	r1, #0
80022278:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
8002227c:	ebfff75f 	bl	80020000 <memset>
80022280:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022284:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
80022288:	e1a01003 	mov	r1, r3
8002228c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
80022290:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80022294:	e3a02003 	mov	r2, #3
80022298:	e58d2000 	str	r2, [sp]
8002229c:	e3a02a01 	mov	r2, #4096	@ 0x1000
800222a0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222a4:	eb001ddd 	bl	80029a20 <mappages>
800222a8:	e1a03000 	mov	r3, r0
800222ac:	e3530000 	cmp	r3, #0
800222b0:	aa000002 	bge	800222c0 <exec+0x22c>
800222b4:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
800222b8:	ebfffcd2 	bl	80021608 <free_page>
800222bc:	ea0000b2 	b	8002258c <exec+0x4f8>
800222c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800222c4:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
800222c8:	e1a01003 	mov	r1, r3
800222cc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222d0:	eb001f41 	bl	80029fdc <clearpteu>
800222d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800222d8:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800222dc:	e3a03000 	mov	r3, #0
800222e0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800222e4:	ea00002e 	b	800223a4 <exec+0x310>
800222e8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222ec:	e353001f 	cmp	r3, #31
800222f0:	8a0000a0 	bhi	80022578 <exec+0x4e4>
800222f4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222f8:	e1a03103 	lsl	r3, r3, #2
800222fc:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022300:	e0823003 	add	r3, r2, r3
80022304:	e5933000 	ldr	r3, [r3]
80022308:	e1a00003 	mov	r0, r3
8002230c:	ebfff876 	bl	800204ec <strlen>
80022310:	e1a03000 	mov	r3, r0
80022314:	e1a02003 	mov	r2, r3
80022318:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002231c:	e0433002 	sub	r3, r3, r2
80022320:	e2433001 	sub	r3, r3, #1
80022324:	e3c33003 	bic	r3, r3, #3
80022328:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
8002232c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022330:	e1a03103 	lsl	r3, r3, #2
80022334:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022338:	e0823003 	add	r3, r2, r3
8002233c:	e5934000 	ldr	r4, [r3]
80022340:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022344:	e1a03103 	lsl	r3, r3, #2
80022348:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002234c:	e0823003 	add	r3, r2, r3
80022350:	e5933000 	ldr	r3, [r3]
80022354:	e1a00003 	mov	r0, r3
80022358:	ebfff863 	bl	800204ec <strlen>
8002235c:	e1a03000 	mov	r3, r0
80022360:	e2833001 	add	r3, r3, #1
80022364:	e1a02004 	mov	r2, r4
80022368:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
8002236c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022370:	eb001fa8 	bl	8002a218 <copyout>
80022374:	e1a03000 	mov	r3, r0
80022378:	e3530000 	cmp	r3, #0
8002237c:	ba00007f 	blt	80022580 <exec+0x4ec>
80022380:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022384:	e1a03103 	lsl	r3, r3, #2
80022388:	e243300c 	sub	r3, r3, #12
8002238c:	e083300b 	add	r3, r3, fp
80022390:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022394:	e5032110 	str	r2, [r3, #-272]	@ 0xfffffef0
80022398:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002239c:	e2833001 	add	r3, r3, #1
800223a0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800223a4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223a8:	e1a03103 	lsl	r3, r3, #2
800223ac:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800223b0:	e0823003 	add	r3, r2, r3
800223b4:	e5933000 	ldr	r3, [r3]
800223b8:	e3530000 	cmp	r3, #0
800223bc:	1affffc9 	bne	800222e8 <exec+0x254>
800223c0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223c4:	e1a03103 	lsl	r3, r3, #2
800223c8:	e243300c 	sub	r3, r3, #12
800223cc:	e083300b 	add	r3, r3, fp
800223d0:	e3a02000 	mov	r2, #0
800223d4:	e5032110 	str	r2, [r3, #-272]	@ 0xfffffef0
800223d8:	e59f31e8 	ldr	r3, [pc, #488]	@ 800225c8 <exec+0x534>
800223dc:	e5933000 	ldr	r3, [r3]
800223e0:	e5933018 	ldr	r3, [r3, #24]
800223e4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800223e8:	e5832010 	str	r2, [r3, #16]
800223ec:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223f0:	e2833001 	add	r3, r3, #1
800223f4:	e1a02103 	lsl	r2, r3, #2
800223f8:	e59f31c8 	ldr	r3, [pc, #456]	@ 800225c8 <exec+0x534>
800223fc:	e5933000 	ldr	r3, [r3]
80022400:	e5933018 	ldr	r3, [r3, #24]
80022404:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022408:	e0412002 	sub	r2, r1, r2
8002240c:	e5832014 	str	r2, [r3, #20]
80022410:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022414:	e2833001 	add	r3, r3, #1
80022418:	e1a03103 	lsl	r3, r3, #2
8002241c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022420:	e0423003 	sub	r3, r2, r3
80022424:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022428:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002242c:	e2833001 	add	r3, r3, #1
80022430:	e1a03103 	lsl	r3, r3, #2
80022434:	e24b2f47 	sub	r2, fp, #284	@ 0x11c
80022438:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
8002243c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022440:	eb001f74 	bl	8002a218 <copyout>
80022444:	e1a03000 	mov	r3, r0
80022448:	e3530000 	cmp	r3, #0
8002244c:	ba00004d 	blt	80022588 <exec+0x4f4>
80022450:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
80022454:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022458:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002245c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022460:	ea000009 	b	8002248c <exec+0x3f8>
80022464:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022468:	e5d33000 	ldrb	r3, [r3]
8002246c:	e353002f 	cmp	r3, #47	@ 0x2f
80022470:	1a000002 	bne	80022480 <exec+0x3ec>
80022474:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022478:	e2833001 	add	r3, r3, #1
8002247c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022480:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022484:	e2833001 	add	r3, r3, #1
80022488:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002248c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022490:	e5d33000 	ldrb	r3, [r3]
80022494:	e3530000 	cmp	r3, #0
80022498:	1afffff1 	bne	80022464 <exec+0x3d0>
8002249c:	e59f3124 	ldr	r3, [pc, #292]	@ 800225c8 <exec+0x534>
800224a0:	e5933000 	ldr	r3, [r3]
800224a4:	e283306c 	add	r3, r3, #108	@ 0x6c
800224a8:	e3a02010 	mov	r2, #16
800224ac:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800224b0:	e1a00003 	mov	r0, r3
800224b4:	ebfff7e5 	bl	80020450 <safestrcpy>
800224b8:	e59f3108 	ldr	r3, [pc, #264]	@ 800225c8 <exec+0x534>
800224bc:	e5933000 	ldr	r3, [r3]
800224c0:	e5933004 	ldr	r3, [r3, #4]
800224c4:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
800224c8:	e59f30f8 	ldr	r3, [pc, #248]	@ 800225c8 <exec+0x534>
800224cc:	e5933000 	ldr	r3, [r3]
800224d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800224d4:	e5832004 	str	r2, [r3, #4]
800224d8:	e59f30e8 	ldr	r3, [pc, #232]	@ 800225c8 <exec+0x534>
800224dc:	e5933000 	ldr	r3, [r3]
800224e0:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
800224e4:	e5832000 	str	r2, [r3]
800224e8:	e59f30d8 	ldr	r3, [pc, #216]	@ 800225c8 <exec+0x534>
800224ec:	e5933000 	ldr	r3, [r3]
800224f0:	e5933018 	ldr	r3, [r3, #24]
800224f4:	e51b2054 	ldr	r2, [fp, #-84]	@ 0xffffffac
800224f8:	e5832044 	str	r2, [r3, #68]	@ 0x44
800224fc:	e59f30c4 	ldr	r3, [pc, #196]	@ 800225c8 <exec+0x534>
80022500:	e5933000 	ldr	r3, [r3]
80022504:	e5933018 	ldr	r3, [r3, #24]
80022508:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002250c:	e5832000 	str	r2, [r3]
80022510:	e59f30b0 	ldr	r3, [pc, #176]	@ 800225c8 <exec+0x534>
80022514:	e5933000 	ldr	r3, [r3]
80022518:	e1a00003 	mov	r0, r3
8002251c:	eb001d8a 	bl	80029b4c <switchuvm>
80022520:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
80022524:	eb001e7c 	bl	80029f1c <freevm>
80022528:	e3a03000 	mov	r3, #0
8002252c:	ea000021 	b	800225b8 <exec+0x524>
80022530:	e1a00000 	nop			@ (mov r0, r0)
80022534:	ea000014 	b	8002258c <exec+0x4f8>
80022538:	e1a00000 	nop			@ (mov r0, r0)
8002253c:	ea000012 	b	8002258c <exec+0x4f8>
80022540:	e1a00000 	nop			@ (mov r0, r0)
80022544:	ea000010 	b	8002258c <exec+0x4f8>
80022548:	e1a00000 	nop			@ (mov r0, r0)
8002254c:	ea00000e 	b	8002258c <exec+0x4f8>
80022550:	e1a00000 	nop			@ (mov r0, r0)
80022554:	ea00000c 	b	8002258c <exec+0x4f8>
80022558:	e1a00000 	nop			@ (mov r0, r0)
8002255c:	ea00000a 	b	8002258c <exec+0x4f8>
80022560:	e1a00000 	nop			@ (mov r0, r0)
80022564:	ea000008 	b	8002258c <exec+0x4f8>
80022568:	e1a00000 	nop			@ (mov r0, r0)
8002256c:	ea000006 	b	8002258c <exec+0x4f8>
80022570:	e1a00000 	nop			@ (mov r0, r0)
80022574:	ea000004 	b	8002258c <exec+0x4f8>
80022578:	e1a00000 	nop			@ (mov r0, r0)
8002257c:	ea000002 	b	8002258c <exec+0x4f8>
80022580:	e1a00000 	nop			@ (mov r0, r0)
80022584:	ea000000 	b	8002258c <exec+0x4f8>
80022588:	e1a00000 	nop			@ (mov r0, r0)
8002258c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022590:	e3530000 	cmp	r3, #0
80022594:	0a000001 	beq	800225a0 <exec+0x50c>
80022598:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002259c:	eb001e5e 	bl	80029f1c <freevm>
800225a0:	e51b3010 	ldr	r3, [fp, #-16]
800225a4:	e3530000 	cmp	r3, #0
800225a8:	0a000001 	beq	800225b4 <exec+0x520>
800225ac:	e51b0010 	ldr	r0, [fp, #-16]
800225b0:	eb0003d6 	bl	80023510 <iunlockput>
800225b4:	e3e03000 	mvn	r3, #0
800225b8:	e1a00003 	mov	r0, r3
800225bc:	e24bd008 	sub	sp, fp, #8
800225c0:	e8bd8810 	pop	{r4, fp, pc}
800225c4:	464c457f 	.word	0x464c457f
800225c8:	800b1ed0 	.word	0x800b1ed0

800225cc <fileinit>:
800225cc:	e92d4800 	push	{fp, lr}
800225d0:	e28db004 	add	fp, sp, #4
800225d4:	e59f100c 	ldr	r1, [pc, #12]	@ 800225e8 <fileinit+0x1c>
800225d8:	e59f000c 	ldr	r0, [pc, #12]	@ 800225ec <fileinit+0x20>
800225dc:	eb001175 	bl	80026bb8 <initlock>
800225e0:	e1a00000 	nop			@ (mov r0, r0)
800225e4:	e8bd8800 	pop	{fp, pc}
800225e8:	8002adf8 	.word	0x8002adf8
800225ec:	800adb98 	.word	0x800adb98

800225f0 <filealloc>:
800225f0:	e92d4800 	push	{fp, lr}
800225f4:	e28db004 	add	fp, sp, #4
800225f8:	e24dd008 	sub	sp, sp, #8
800225fc:	e59f006c 	ldr	r0, [pc, #108]	@ 80022670 <filealloc+0x80>
80022600:	eb00117e 	bl	80026c00 <acquire>
80022604:	e59f3068 	ldr	r3, [pc, #104]	@ 80022674 <filealloc+0x84>
80022608:	e50b3008 	str	r3, [fp, #-8]
8002260c:	ea00000d 	b	80022648 <filealloc+0x58>
80022610:	e51b3008 	ldr	r3, [fp, #-8]
80022614:	e5933004 	ldr	r3, [r3, #4]
80022618:	e3530000 	cmp	r3, #0
8002261c:	1a000006 	bne	8002263c <filealloc+0x4c>
80022620:	e51b3008 	ldr	r3, [fp, #-8]
80022624:	e3a02001 	mov	r2, #1
80022628:	e5832004 	str	r2, [r3, #4]
8002262c:	e59f003c 	ldr	r0, [pc, #60]	@ 80022670 <filealloc+0x80>
80022630:	eb00117d 	bl	80026c2c <release>
80022634:	e51b3008 	ldr	r3, [fp, #-8]
80022638:	ea000009 	b	80022664 <filealloc+0x74>
8002263c:	e51b3008 	ldr	r3, [fp, #-8]
80022640:	e2833018 	add	r3, r3, #24
80022644:	e50b3008 	str	r3, [fp, #-8]
80022648:	e59f2028 	ldr	r2, [pc, #40]	@ 80022678 <filealloc+0x88>
8002264c:	e51b3008 	ldr	r3, [fp, #-8]
80022650:	e1530002 	cmp	r3, r2
80022654:	3affffed 	bcc	80022610 <filealloc+0x20>
80022658:	e59f0010 	ldr	r0, [pc, #16]	@ 80022670 <filealloc+0x80>
8002265c:	eb001172 	bl	80026c2c <release>
80022660:	e3a03000 	mov	r3, #0
80022664:	e1a00003 	mov	r0, r3
80022668:	e24bd004 	sub	sp, fp, #4
8002266c:	e8bd8800 	pop	{fp, pc}
80022670:	800adb98 	.word	0x800adb98
80022674:	800adbcc 	.word	0x800adbcc
80022678:	800ae52c 	.word	0x800ae52c

8002267c <filedup>:
8002267c:	e92d4800 	push	{fp, lr}
80022680:	e28db004 	add	fp, sp, #4
80022684:	e24dd008 	sub	sp, sp, #8
80022688:	e50b0008 	str	r0, [fp, #-8]
8002268c:	e59f0044 	ldr	r0, [pc, #68]	@ 800226d8 <filedup+0x5c>
80022690:	eb00115a 	bl	80026c00 <acquire>
80022694:	e51b3008 	ldr	r3, [fp, #-8]
80022698:	e5933004 	ldr	r3, [r3, #4]
8002269c:	e3530000 	cmp	r3, #0
800226a0:	ca000001 	bgt	800226ac <filedup+0x30>
800226a4:	e59f0030 	ldr	r0, [pc, #48]	@ 800226dc <filedup+0x60>
800226a8:	ebfffd11 	bl	80021af4 <panic>
800226ac:	e51b3008 	ldr	r3, [fp, #-8]
800226b0:	e5933004 	ldr	r3, [r3, #4]
800226b4:	e2832001 	add	r2, r3, #1
800226b8:	e51b3008 	ldr	r3, [fp, #-8]
800226bc:	e5832004 	str	r2, [r3, #4]
800226c0:	e59f0010 	ldr	r0, [pc, #16]	@ 800226d8 <filedup+0x5c>
800226c4:	eb001158 	bl	80026c2c <release>
800226c8:	e51b3008 	ldr	r3, [fp, #-8]
800226cc:	e1a00003 	mov	r0, r3
800226d0:	e24bd004 	sub	sp, fp, #4
800226d4:	e8bd8800 	pop	{fp, pc}
800226d8:	800adb98 	.word	0x800adb98
800226dc:	8002ae00 	.word	0x8002ae00

800226e0 <fileclose>:
800226e0:	e92d4800 	push	{fp, lr}
800226e4:	e28db004 	add	fp, sp, #4
800226e8:	e24dd020 	sub	sp, sp, #32
800226ec:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800226f0:	e59f00d0 	ldr	r0, [pc, #208]	@ 800227c8 <fileclose+0xe8>
800226f4:	eb001141 	bl	80026c00 <acquire>
800226f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226fc:	e5933004 	ldr	r3, [r3, #4]
80022700:	e3530000 	cmp	r3, #0
80022704:	ca000001 	bgt	80022710 <fileclose+0x30>
80022708:	e59f00bc 	ldr	r0, [pc, #188]	@ 800227cc <fileclose+0xec>
8002270c:	ebfffcf8 	bl	80021af4 <panic>
80022710:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022714:	e5933004 	ldr	r3, [r3, #4]
80022718:	e2432001 	sub	r2, r3, #1
8002271c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022720:	e5832004 	str	r2, [r3, #4]
80022724:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022728:	e5933004 	ldr	r3, [r3, #4]
8002272c:	e3530000 	cmp	r3, #0
80022730:	da000002 	ble	80022740 <fileclose+0x60>
80022734:	e59f008c 	ldr	r0, [pc, #140]	@ 800227c8 <fileclose+0xe8>
80022738:	eb00113b 	bl	80026c2c <release>
8002273c:	ea00001f 	b	800227c0 <fileclose+0xe0>
80022740:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022744:	e24bc01c 	sub	ip, fp, #28
80022748:	e1a0e003 	mov	lr, r3
8002274c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80022750:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80022754:	e89e0003 	ldm	lr, {r0, r1}
80022758:	e88c0003 	stm	ip, {r0, r1}
8002275c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022760:	e3a02000 	mov	r2, #0
80022764:	e5832004 	str	r2, [r3, #4]
80022768:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002276c:	e3a02000 	mov	r2, #0
80022770:	e5c32000 	strb	r2, [r3]
80022774:	e59f004c 	ldr	r0, [pc, #76]	@ 800227c8 <fileclose+0xe8>
80022778:	eb00112b 	bl	80026c2c <release>
8002277c:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022780:	e3530001 	cmp	r3, #1
80022784:	1a000005 	bne	800227a0 <fileclose+0xc0>
80022788:	e51b3010 	ldr	r3, [fp, #-16]
8002278c:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022790:	e1a01002 	mov	r1, r2
80022794:	e1a00003 	mov	r0, r3
80022798:	eb0009d4 	bl	80024ef0 <pipeclose>
8002279c:	ea000007 	b	800227c0 <fileclose+0xe0>
800227a0:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800227a4:	e3530002 	cmp	r3, #2
800227a8:	1a000004 	bne	800227c0 <fileclose+0xe0>
800227ac:	eb00082e 	bl	8002486c <begin_trans>
800227b0:	e51b300c 	ldr	r3, [fp, #-12]
800227b4:	e1a00003 	mov	r0, r3
800227b8:	eb000319 	bl	80023424 <iput>
800227bc:	eb00083e 	bl	800248bc <commit_trans>
800227c0:	e24bd004 	sub	sp, fp, #4
800227c4:	e8bd8800 	pop	{fp, pc}
800227c8:	800adb98 	.word	0x800adb98
800227cc:	8002ae08 	.word	0x8002ae08

800227d0 <filestat>:
800227d0:	e92d4800 	push	{fp, lr}
800227d4:	e28db004 	add	fp, sp, #4
800227d8:	e24dd008 	sub	sp, sp, #8
800227dc:	e50b0008 	str	r0, [fp, #-8]
800227e0:	e50b100c 	str	r1, [fp, #-12]
800227e4:	e51b3008 	ldr	r3, [fp, #-8]
800227e8:	e5d33000 	ldrb	r3, [r3]
800227ec:	e3530002 	cmp	r3, #2
800227f0:	1a00000e 	bne	80022830 <filestat+0x60>
800227f4:	e51b3008 	ldr	r3, [fp, #-8]
800227f8:	e5933010 	ldr	r3, [r3, #16]
800227fc:	e1a00003 	mov	r0, r3
80022800:	eb000281 	bl	8002320c <ilock>
80022804:	e51b3008 	ldr	r3, [fp, #-8]
80022808:	e5933010 	ldr	r3, [r3, #16]
8002280c:	e51b100c 	ldr	r1, [fp, #-12]
80022810:	e1a00003 	mov	r0, r3
80022814:	eb0004d5 	bl	80023b70 <stati>
80022818:	e51b3008 	ldr	r3, [fp, #-8]
8002281c:	e5933010 	ldr	r3, [r3, #16]
80022820:	e1a00003 	mov	r0, r3
80022824:	eb0002dc 	bl	8002339c <iunlock>
80022828:	e3a03000 	mov	r3, #0
8002282c:	ea000000 	b	80022834 <filestat+0x64>
80022830:	e3e03000 	mvn	r3, #0
80022834:	e1a00003 	mov	r0, r3
80022838:	e24bd004 	sub	sp, fp, #4
8002283c:	e8bd8800 	pop	{fp, pc}

80022840 <fileread>:
80022840:	e92d4800 	push	{fp, lr}
80022844:	e28db004 	add	fp, sp, #4
80022848:	e24dd018 	sub	sp, sp, #24
8002284c:	e50b0010 	str	r0, [fp, #-16]
80022850:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022854:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022858:	e51b3010 	ldr	r3, [fp, #-16]
8002285c:	e5d33008 	ldrb	r3, [r3, #8]
80022860:	e3530000 	cmp	r3, #0
80022864:	1a000001 	bne	80022870 <fileread+0x30>
80022868:	e3e03000 	mvn	r3, #0
8002286c:	ea00002c 	b	80022924 <fileread+0xe4>
80022870:	e51b3010 	ldr	r3, [fp, #-16]
80022874:	e5d33000 	ldrb	r3, [r3]
80022878:	e3530001 	cmp	r3, #1
8002287c:	1a000007 	bne	800228a0 <fileread+0x60>
80022880:	e51b3010 	ldr	r3, [fp, #-16]
80022884:	e593300c 	ldr	r3, [r3, #12]
80022888:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002288c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022890:	e1a00003 	mov	r0, r3
80022894:	eb000a0f 	bl	800250d8 <piperead>
80022898:	e1a03000 	mov	r3, r0
8002289c:	ea000020 	b	80022924 <fileread+0xe4>
800228a0:	e51b3010 	ldr	r3, [fp, #-16]
800228a4:	e5d33000 	ldrb	r3, [r3]
800228a8:	e3530002 	cmp	r3, #2
800228ac:	1a00001a 	bne	8002291c <fileread+0xdc>
800228b0:	e51b3010 	ldr	r3, [fp, #-16]
800228b4:	e5933010 	ldr	r3, [r3, #16]
800228b8:	e1a00003 	mov	r0, r3
800228bc:	eb000252 	bl	8002320c <ilock>
800228c0:	e51b3010 	ldr	r3, [fp, #-16]
800228c4:	e5930010 	ldr	r0, [r3, #16]
800228c8:	e51b3010 	ldr	r3, [fp, #-16]
800228cc:	e5932014 	ldr	r2, [r3, #20]
800228d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800228d8:	eb0004c2 	bl	80023be8 <readi>
800228dc:	e50b0008 	str	r0, [fp, #-8]
800228e0:	e51b3008 	ldr	r3, [fp, #-8]
800228e4:	e3530000 	cmp	r3, #0
800228e8:	da000005 	ble	80022904 <fileread+0xc4>
800228ec:	e51b3010 	ldr	r3, [fp, #-16]
800228f0:	e5932014 	ldr	r2, [r3, #20]
800228f4:	e51b3008 	ldr	r3, [fp, #-8]
800228f8:	e0822003 	add	r2, r2, r3
800228fc:	e51b3010 	ldr	r3, [fp, #-16]
80022900:	e5832014 	str	r2, [r3, #20]
80022904:	e51b3010 	ldr	r3, [fp, #-16]
80022908:	e5933010 	ldr	r3, [r3, #16]
8002290c:	e1a00003 	mov	r0, r3
80022910:	eb0002a1 	bl	8002339c <iunlock>
80022914:	e51b3008 	ldr	r3, [fp, #-8]
80022918:	ea000001 	b	80022924 <fileread+0xe4>
8002291c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022930 <fileread+0xf0>
80022920:	ebfffc73 	bl	80021af4 <panic>
80022924:	e1a00003 	mov	r0, r3
80022928:	e24bd004 	sub	sp, fp, #4
8002292c:	e8bd8800 	pop	{fp, pc}
80022930:	8002ae14 	.word	0x8002ae14

80022934 <filewrite>:
80022934:	e92d4800 	push	{fp, lr}
80022938:	e28db004 	add	fp, sp, #4
8002293c:	e24dd020 	sub	sp, sp, #32
80022940:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022944:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022948:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002294c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022950:	e5d33009 	ldrb	r3, [r3, #9]
80022954:	e3530000 	cmp	r3, #0
80022958:	1a000001 	bne	80022964 <filewrite+0x30>
8002295c:	e3e03000 	mvn	r3, #0
80022960:	ea000058 	b	80022ac8 <filewrite+0x194>
80022964:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022968:	e5d33000 	ldrb	r3, [r3]
8002296c:	e3530001 	cmp	r3, #1
80022970:	1a000007 	bne	80022994 <filewrite+0x60>
80022974:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022978:	e593300c 	ldr	r3, [r3, #12]
8002297c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022980:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022984:	e1a00003 	mov	r0, r3
80022988:	eb00098b 	bl	80024fbc <pipewrite>
8002298c:	e1a03000 	mov	r3, r0
80022990:	ea00004c 	b	80022ac8 <filewrite+0x194>
80022994:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022998:	e5d33000 	ldrb	r3, [r3]
8002299c:	e3530002 	cmp	r3, #2
800229a0:	1a000046 	bne	80022ac0 <filewrite+0x18c>
800229a4:	e3a03c06 	mov	r3, #1536	@ 0x600
800229a8:	e50b3010 	str	r3, [fp, #-16]
800229ac:	e3a03000 	mov	r3, #0
800229b0:	e50b3008 	str	r3, [fp, #-8]
800229b4:	ea000033 	b	80022a88 <filewrite+0x154>
800229b8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800229bc:	e51b3008 	ldr	r3, [fp, #-8]
800229c0:	e0423003 	sub	r3, r2, r3
800229c4:	e50b300c 	str	r3, [fp, #-12]
800229c8:	e51b200c 	ldr	r2, [fp, #-12]
800229cc:	e51b3010 	ldr	r3, [fp, #-16]
800229d0:	e1520003 	cmp	r2, r3
800229d4:	da000001 	ble	800229e0 <filewrite+0xac>
800229d8:	e51b3010 	ldr	r3, [fp, #-16]
800229dc:	e50b300c 	str	r3, [fp, #-12]
800229e0:	eb0007a1 	bl	8002486c <begin_trans>
800229e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229e8:	e5933010 	ldr	r3, [r3, #16]
800229ec:	e1a00003 	mov	r0, r3
800229f0:	eb000205 	bl	8002320c <ilock>
800229f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229f8:	e5930010 	ldr	r0, [r3, #16]
800229fc:	e51b3008 	ldr	r3, [fp, #-8]
80022a00:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022a04:	e0821003 	add	r1, r2, r3
80022a08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a0c:	e5932014 	ldr	r2, [r3, #20]
80022a10:	e51b300c 	ldr	r3, [fp, #-12]
80022a14:	eb0004ee 	bl	80023dd4 <writei>
80022a18:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022a1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a20:	e3530000 	cmp	r3, #0
80022a24:	da000005 	ble	80022a40 <filewrite+0x10c>
80022a28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a2c:	e5932014 	ldr	r2, [r3, #20]
80022a30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a34:	e0822003 	add	r2, r2, r3
80022a38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a3c:	e5832014 	str	r2, [r3, #20]
80022a40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a44:	e5933010 	ldr	r3, [r3, #16]
80022a48:	e1a00003 	mov	r0, r3
80022a4c:	eb000252 	bl	8002339c <iunlock>
80022a50:	eb000799 	bl	800248bc <commit_trans>
80022a54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a58:	e3530000 	cmp	r3, #0
80022a5c:	ba00000e 	blt	80022a9c <filewrite+0x168>
80022a60:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022a64:	e51b300c 	ldr	r3, [fp, #-12]
80022a68:	e1520003 	cmp	r2, r3
80022a6c:	0a000001 	beq	80022a78 <filewrite+0x144>
80022a70:	e59f005c 	ldr	r0, [pc, #92]	@ 80022ad4 <filewrite+0x1a0>
80022a74:	ebfffc1e 	bl	80021af4 <panic>
80022a78:	e51b2008 	ldr	r2, [fp, #-8]
80022a7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a80:	e0823003 	add	r3, r2, r3
80022a84:	e50b3008 	str	r3, [fp, #-8]
80022a88:	e51b2008 	ldr	r2, [fp, #-8]
80022a8c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a90:	e1520003 	cmp	r2, r3
80022a94:	baffffc7 	blt	800229b8 <filewrite+0x84>
80022a98:	ea000000 	b	80022aa0 <filewrite+0x16c>
80022a9c:	e1a00000 	nop			@ (mov r0, r0)
80022aa0:	e51b2008 	ldr	r2, [fp, #-8]
80022aa4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022aa8:	e1520003 	cmp	r2, r3
80022aac:	1a000001 	bne	80022ab8 <filewrite+0x184>
80022ab0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022ab4:	ea000003 	b	80022ac8 <filewrite+0x194>
80022ab8:	e3e03000 	mvn	r3, #0
80022abc:	ea000001 	b	80022ac8 <filewrite+0x194>
80022ac0:	e59f0010 	ldr	r0, [pc, #16]	@ 80022ad8 <filewrite+0x1a4>
80022ac4:	ebfffc0a 	bl	80021af4 <panic>
80022ac8:	e1a00003 	mov	r0, r3
80022acc:	e24bd004 	sub	sp, fp, #4
80022ad0:	e8bd8800 	pop	{fp, pc}
80022ad4:	8002ae20 	.word	0x8002ae20
80022ad8:	8002ae30 	.word	0x8002ae30

80022adc <readsb>:
80022adc:	e92d4800 	push	{fp, lr}
80022ae0:	e28db004 	add	fp, sp, #4
80022ae4:	e24dd010 	sub	sp, sp, #16
80022ae8:	e50b0010 	str	r0, [fp, #-16]
80022aec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022af0:	e51b3010 	ldr	r3, [fp, #-16]
80022af4:	e3a01001 	mov	r1, #1
80022af8:	e1a00003 	mov	r0, r3
80022afc:	ebfff804 	bl	80020b14 <bread>
80022b00:	e50b0008 	str	r0, [fp, #-8]
80022b04:	e51b3008 	ldr	r3, [fp, #-8]
80022b08:	e2833018 	add	r3, r3, #24
80022b0c:	e3a02010 	mov	r2, #16
80022b10:	e1a01003 	mov	r1, r3
80022b14:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022b18:	ebfff5aa 	bl	800201c8 <memmove>
80022b1c:	e51b0008 	ldr	r0, [fp, #-8]
80022b20:	ebfff825 	bl	80020bbc <brelse>
80022b24:	e1a00000 	nop			@ (mov r0, r0)
80022b28:	e24bd004 	sub	sp, fp, #4
80022b2c:	e8bd8800 	pop	{fp, pc}

80022b30 <bzero>:
80022b30:	e92d4800 	push	{fp, lr}
80022b34:	e28db004 	add	fp, sp, #4
80022b38:	e24dd010 	sub	sp, sp, #16
80022b3c:	e50b0010 	str	r0, [fp, #-16]
80022b40:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022b44:	e51b3010 	ldr	r3, [fp, #-16]
80022b48:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022b4c:	e1a01002 	mov	r1, r2
80022b50:	e1a00003 	mov	r0, r3
80022b54:	ebfff7ee 	bl	80020b14 <bread>
80022b58:	e50b0008 	str	r0, [fp, #-8]
80022b5c:	e51b3008 	ldr	r3, [fp, #-8]
80022b60:	e2833018 	add	r3, r3, #24
80022b64:	e3a02c02 	mov	r2, #512	@ 0x200
80022b68:	e3a01000 	mov	r1, #0
80022b6c:	e1a00003 	mov	r0, r3
80022b70:	ebfff522 	bl	80020000 <memset>
80022b74:	e51b0008 	ldr	r0, [fp, #-8]
80022b78:	eb000767 	bl	8002491c <log_write>
80022b7c:	e51b0008 	ldr	r0, [fp, #-8]
80022b80:	ebfff80d 	bl	80020bbc <brelse>
80022b84:	e1a00000 	nop			@ (mov r0, r0)
80022b88:	e24bd004 	sub	sp, fp, #4
80022b8c:	e8bd8800 	pop	{fp, pc}

80022b90 <balloc>:
80022b90:	e92d4800 	push	{fp, lr}
80022b94:	e28db004 	add	fp, sp, #4
80022b98:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022b9c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022ba0:	e3a03000 	mov	r3, #0
80022ba4:	e50b3010 	str	r3, [fp, #-16]
80022ba8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022bac:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022bb0:	e1a01002 	mov	r1, r2
80022bb4:	e1a00003 	mov	r0, r3
80022bb8:	ebffffc7 	bl	80022adc <readsb>
80022bbc:	e3a03000 	mov	r3, #0
80022bc0:	e50b3008 	str	r3, [fp, #-8]
80022bc4:	ea000059 	b	80022d30 <balloc+0x1a0>
80022bc8:	e51b3008 	ldr	r3, [fp, #-8]
80022bcc:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022bd0:	e282200f 	add	r2, r2, #15
80022bd4:	e3530000 	cmp	r3, #0
80022bd8:	b1a03002 	movlt	r3, r2
80022bdc:	a1a03003 	movge	r3, r3
80022be0:	e1a03643 	asr	r3, r3, #12
80022be4:	e1a02003 	mov	r2, r3
80022be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022bec:	e1a031a3 	lsr	r3, r3, #3
80022bf0:	e0823003 	add	r3, r2, r3
80022bf4:	e2833003 	add	r3, r3, #3
80022bf8:	e1a01003 	mov	r1, r3
80022bfc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c00:	ebfff7c3 	bl	80020b14 <bread>
80022c04:	e50b0010 	str	r0, [fp, #-16]
80022c08:	e3a03000 	mov	r3, #0
80022c0c:	e50b300c 	str	r3, [fp, #-12]
80022c10:	ea000037 	b	80022cf4 <balloc+0x164>
80022c14:	e51b300c 	ldr	r3, [fp, #-12]
80022c18:	e2033007 	and	r3, r3, #7
80022c1c:	e3a02001 	mov	r2, #1
80022c20:	e1a03312 	lsl	r3, r2, r3
80022c24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022c28:	e51b300c 	ldr	r3, [fp, #-12]
80022c2c:	e2832007 	add	r2, r3, #7
80022c30:	e3530000 	cmp	r3, #0
80022c34:	b1a03002 	movlt	r3, r2
80022c38:	a1a03003 	movge	r3, r3
80022c3c:	e1a031c3 	asr	r3, r3, #3
80022c40:	e1a02003 	mov	r2, r3
80022c44:	e51b3010 	ldr	r3, [fp, #-16]
80022c48:	e0833002 	add	r3, r3, r2
80022c4c:	e5d33018 	ldrb	r3, [r3, #24]
80022c50:	e1a02003 	mov	r2, r3
80022c54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022c58:	e0033002 	and	r3, r3, r2
80022c5c:	e3530000 	cmp	r3, #0
80022c60:	1a000020 	bne	80022ce8 <balloc+0x158>
80022c64:	e51b300c 	ldr	r3, [fp, #-12]
80022c68:	e2832007 	add	r2, r3, #7
80022c6c:	e3530000 	cmp	r3, #0
80022c70:	b1a03002 	movlt	r3, r2
80022c74:	a1a03003 	movge	r3, r3
80022c78:	e1a031c3 	asr	r3, r3, #3
80022c7c:	e51b2010 	ldr	r2, [fp, #-16]
80022c80:	e0822003 	add	r2, r2, r3
80022c84:	e5d22018 	ldrb	r2, [r2, #24]
80022c88:	e6af1072 	sxtb	r1, r2
80022c8c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022c90:	e6af2072 	sxtb	r2, r2
80022c94:	e1812002 	orr	r2, r1, r2
80022c98:	e6af2072 	sxtb	r2, r2
80022c9c:	e6ef1072 	uxtb	r1, r2
80022ca0:	e51b2010 	ldr	r2, [fp, #-16]
80022ca4:	e0823003 	add	r3, r2, r3
80022ca8:	e1a02001 	mov	r2, r1
80022cac:	e5c32018 	strb	r2, [r3, #24]
80022cb0:	e51b0010 	ldr	r0, [fp, #-16]
80022cb4:	eb000718 	bl	8002491c <log_write>
80022cb8:	e51b0010 	ldr	r0, [fp, #-16]
80022cbc:	ebfff7be 	bl	80020bbc <brelse>
80022cc0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022cc4:	e51b2008 	ldr	r2, [fp, #-8]
80022cc8:	e51b300c 	ldr	r3, [fp, #-12]
80022ccc:	e0823003 	add	r3, r2, r3
80022cd0:	e1a01003 	mov	r1, r3
80022cd4:	ebffff95 	bl	80022b30 <bzero>
80022cd8:	e51b2008 	ldr	r2, [fp, #-8]
80022cdc:	e51b300c 	ldr	r3, [fp, #-12]
80022ce0:	e0823003 	add	r3, r2, r3
80022ce4:	ea000017 	b	80022d48 <balloc+0x1b8>
80022ce8:	e51b300c 	ldr	r3, [fp, #-12]
80022cec:	e2833001 	add	r3, r3, #1
80022cf0:	e50b300c 	str	r3, [fp, #-12]
80022cf4:	e51b300c 	ldr	r3, [fp, #-12]
80022cf8:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022cfc:	aa000006 	bge	80022d1c <balloc+0x18c>
80022d00:	e51b2008 	ldr	r2, [fp, #-8]
80022d04:	e51b300c 	ldr	r3, [fp, #-12]
80022d08:	e0823003 	add	r3, r2, r3
80022d0c:	e1a02003 	mov	r2, r3
80022d10:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022d14:	e1520003 	cmp	r2, r3
80022d18:	3affffbd 	bcc	80022c14 <balloc+0x84>
80022d1c:	e51b0010 	ldr	r0, [fp, #-16]
80022d20:	ebfff7a5 	bl	80020bbc <brelse>
80022d24:	e51b3008 	ldr	r3, [fp, #-8]
80022d28:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022d2c:	e50b3008 	str	r3, [fp, #-8]
80022d30:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022d34:	e51b3008 	ldr	r3, [fp, #-8]
80022d38:	e1520003 	cmp	r2, r3
80022d3c:	8affffa1 	bhi	80022bc8 <balloc+0x38>
80022d40:	e59f000c 	ldr	r0, [pc, #12]	@ 80022d54 <balloc+0x1c4>
80022d44:	ebfffb6a 	bl	80021af4 <panic>
80022d48:	e1a00003 	mov	r0, r3
80022d4c:	e24bd004 	sub	sp, fp, #4
80022d50:	e8bd8800 	pop	{fp, pc}
80022d54:	8002ae3c 	.word	0x8002ae3c

80022d58 <bfree>:
80022d58:	e92d4800 	push	{fp, lr}
80022d5c:	e28db004 	add	fp, sp, #4
80022d60:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022d64:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022d68:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022d6c:	e24b3020 	sub	r3, fp, #32
80022d70:	e1a01003 	mov	r1, r3
80022d74:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d78:	ebffff57 	bl	80022adc <readsb>
80022d7c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022d84:	e1a02623 	lsr	r2, r3, #12
80022d88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022d8c:	e1a031a3 	lsr	r3, r3, #3
80022d90:	e0823003 	add	r3, r2, r3
80022d94:	e2833003 	add	r3, r3, #3
80022d98:	e1a01003 	mov	r1, r3
80022d9c:	ebfff75c 	bl	80020b14 <bread>
80022da0:	e50b0008 	str	r0, [fp, #-8]
80022da4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022da8:	e1a03a03 	lsl	r3, r3, #20
80022dac:	e1a03a23 	lsr	r3, r3, #20
80022db0:	e50b300c 	str	r3, [fp, #-12]
80022db4:	e51b300c 	ldr	r3, [fp, #-12]
80022db8:	e2033007 	and	r3, r3, #7
80022dbc:	e3a02001 	mov	r2, #1
80022dc0:	e1a03312 	lsl	r3, r2, r3
80022dc4:	e50b3010 	str	r3, [fp, #-16]
80022dc8:	e51b300c 	ldr	r3, [fp, #-12]
80022dcc:	e2832007 	add	r2, r3, #7
80022dd0:	e3530000 	cmp	r3, #0
80022dd4:	b1a03002 	movlt	r3, r2
80022dd8:	a1a03003 	movge	r3, r3
80022ddc:	e1a031c3 	asr	r3, r3, #3
80022de0:	e1a02003 	mov	r2, r3
80022de4:	e51b3008 	ldr	r3, [fp, #-8]
80022de8:	e0833002 	add	r3, r3, r2
80022dec:	e5d33018 	ldrb	r3, [r3, #24]
80022df0:	e1a02003 	mov	r2, r3
80022df4:	e51b3010 	ldr	r3, [fp, #-16]
80022df8:	e0033002 	and	r3, r3, r2
80022dfc:	e3530000 	cmp	r3, #0
80022e00:	1a000001 	bne	80022e0c <bfree+0xb4>
80022e04:	e59f0070 	ldr	r0, [pc, #112]	@ 80022e7c <bfree+0x124>
80022e08:	ebfffb39 	bl	80021af4 <panic>
80022e0c:	e51b300c 	ldr	r3, [fp, #-12]
80022e10:	e2832007 	add	r2, r3, #7
80022e14:	e3530000 	cmp	r3, #0
80022e18:	b1a03002 	movlt	r3, r2
80022e1c:	a1a03003 	movge	r3, r3
80022e20:	e1a031c3 	asr	r3, r3, #3
80022e24:	e51b2008 	ldr	r2, [fp, #-8]
80022e28:	e0822003 	add	r2, r2, r3
80022e2c:	e5d22018 	ldrb	r2, [r2, #24]
80022e30:	e6af1072 	sxtb	r1, r2
80022e34:	e51b2010 	ldr	r2, [fp, #-16]
80022e38:	e6af2072 	sxtb	r2, r2
80022e3c:	e1e02002 	mvn	r2, r2
80022e40:	e6af2072 	sxtb	r2, r2
80022e44:	e0022001 	and	r2, r2, r1
80022e48:	e6af2072 	sxtb	r2, r2
80022e4c:	e6ef1072 	uxtb	r1, r2
80022e50:	e51b2008 	ldr	r2, [fp, #-8]
80022e54:	e0823003 	add	r3, r2, r3
80022e58:	e1a02001 	mov	r2, r1
80022e5c:	e5c32018 	strb	r2, [r3, #24]
80022e60:	e51b0008 	ldr	r0, [fp, #-8]
80022e64:	eb0006ac 	bl	8002491c <log_write>
80022e68:	e51b0008 	ldr	r0, [fp, #-8]
80022e6c:	ebfff752 	bl	80020bbc <brelse>
80022e70:	e1a00000 	nop			@ (mov r0, r0)
80022e74:	e24bd004 	sub	sp, fp, #4
80022e78:	e8bd8800 	pop	{fp, pc}
80022e7c:	8002ae54 	.word	0x8002ae54

80022e80 <iinit>:
80022e80:	e92d4800 	push	{fp, lr}
80022e84:	e28db004 	add	fp, sp, #4
80022e88:	e59f100c 	ldr	r1, [pc, #12]	@ 80022e9c <iinit+0x1c>
80022e8c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ea0 <iinit+0x20>
80022e90:	eb000f48 	bl	80026bb8 <initlock>
80022e94:	e1a00000 	nop			@ (mov r0, r0)
80022e98:	e8bd8800 	pop	{fp, pc}
80022e9c:	8002ae68 	.word	0x8002ae68
80022ea0:	800ae52c 	.word	0x800ae52c

80022ea4 <ialloc>:
80022ea4:	e92d4800 	push	{fp, lr}
80022ea8:	e28db004 	add	fp, sp, #4
80022eac:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022eb0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022eb4:	e1a03001 	mov	r3, r1
80022eb8:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022ebc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022ec0:	e24b2020 	sub	r2, fp, #32
80022ec4:	e1a01002 	mov	r1, r2
80022ec8:	e1a00003 	mov	r0, r3
80022ecc:	ebffff02 	bl	80022adc <readsb>
80022ed0:	e3a03001 	mov	r3, #1
80022ed4:	e50b3008 	str	r3, [fp, #-8]
80022ed8:	ea000027 	b	80022f7c <ialloc+0xd8>
80022edc:	e51b3008 	ldr	r3, [fp, #-8]
80022ee0:	e1a031a3 	lsr	r3, r3, #3
80022ee4:	e2833002 	add	r3, r3, #2
80022ee8:	e1a01003 	mov	r1, r3
80022eec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022ef0:	ebfff707 	bl	80020b14 <bread>
80022ef4:	e50b000c 	str	r0, [fp, #-12]
80022ef8:	e51b300c 	ldr	r3, [fp, #-12]
80022efc:	e2832018 	add	r2, r3, #24
80022f00:	e51b3008 	ldr	r3, [fp, #-8]
80022f04:	e2033007 	and	r3, r3, #7
80022f08:	e1a03303 	lsl	r3, r3, #6
80022f0c:	e0823003 	add	r3, r2, r3
80022f10:	e50b3010 	str	r3, [fp, #-16]
80022f14:	e51b3010 	ldr	r3, [fp, #-16]
80022f18:	e1d330f0 	ldrsh	r3, [r3]
80022f1c:	e3530000 	cmp	r3, #0
80022f20:	1a000010 	bne	80022f68 <ialloc+0xc4>
80022f24:	e3a02040 	mov	r2, #64	@ 0x40
80022f28:	e3a01000 	mov	r1, #0
80022f2c:	e51b0010 	ldr	r0, [fp, #-16]
80022f30:	ebfff432 	bl	80020000 <memset>
80022f34:	e51b3010 	ldr	r3, [fp, #-16]
80022f38:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022f3c:	e1c320b0 	strh	r2, [r3]
80022f40:	e51b000c 	ldr	r0, [fp, #-12]
80022f44:	eb000674 	bl	8002491c <log_write>
80022f48:	e51b000c 	ldr	r0, [fp, #-12]
80022f4c:	ebfff71a 	bl	80020bbc <brelse>
80022f50:	e51b3008 	ldr	r3, [fp, #-8]
80022f54:	e1a01003 	mov	r1, r3
80022f58:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022f5c:	eb000048 	bl	80023084 <iget>
80022f60:	e1a03000 	mov	r3, r0
80022f64:	ea00000a 	b	80022f94 <ialloc+0xf0>
80022f68:	e51b000c 	ldr	r0, [fp, #-12]
80022f6c:	ebfff712 	bl	80020bbc <brelse>
80022f70:	e51b3008 	ldr	r3, [fp, #-8]
80022f74:	e2833001 	add	r3, r3, #1
80022f78:	e50b3008 	str	r3, [fp, #-8]
80022f7c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022f80:	e51b3008 	ldr	r3, [fp, #-8]
80022f84:	e1520003 	cmp	r2, r3
80022f88:	8affffd3 	bhi	80022edc <ialloc+0x38>
80022f8c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022fa0 <ialloc+0xfc>
80022f90:	ebfffad7 	bl	80021af4 <panic>
80022f94:	e1a00003 	mov	r0, r3
80022f98:	e24bd004 	sub	sp, fp, #4
80022f9c:	e8bd8800 	pop	{fp, pc}
80022fa0:	8002ae70 	.word	0x8002ae70

80022fa4 <iupdate>:
80022fa4:	e92d4800 	push	{fp, lr}
80022fa8:	e28db004 	add	fp, sp, #4
80022fac:	e24dd010 	sub	sp, sp, #16
80022fb0:	e50b0010 	str	r0, [fp, #-16]
80022fb4:	e51b3010 	ldr	r3, [fp, #-16]
80022fb8:	e5932000 	ldr	r2, [r3]
80022fbc:	e51b3010 	ldr	r3, [fp, #-16]
80022fc0:	e5933004 	ldr	r3, [r3, #4]
80022fc4:	e1a031a3 	lsr	r3, r3, #3
80022fc8:	e2833002 	add	r3, r3, #2
80022fcc:	e1a01003 	mov	r1, r3
80022fd0:	e1a00002 	mov	r0, r2
80022fd4:	ebfff6ce 	bl	80020b14 <bread>
80022fd8:	e50b0008 	str	r0, [fp, #-8]
80022fdc:	e51b3008 	ldr	r3, [fp, #-8]
80022fe0:	e2832018 	add	r2, r3, #24
80022fe4:	e51b3010 	ldr	r3, [fp, #-16]
80022fe8:	e5933004 	ldr	r3, [r3, #4]
80022fec:	e2033007 	and	r3, r3, #7
80022ff0:	e1a03303 	lsl	r3, r3, #6
80022ff4:	e0823003 	add	r3, r2, r3
80022ff8:	e50b300c 	str	r3, [fp, #-12]
80022ffc:	e51b3010 	ldr	r3, [fp, #-16]
80023000:	e1d321f0 	ldrsh	r2, [r3, #16]
80023004:	e51b300c 	ldr	r3, [fp, #-12]
80023008:	e1c320b0 	strh	r2, [r3]
8002300c:	e51b3010 	ldr	r3, [fp, #-16]
80023010:	e1d321f2 	ldrsh	r2, [r3, #18]
80023014:	e51b300c 	ldr	r3, [fp, #-12]
80023018:	e1c320b2 	strh	r2, [r3, #2]
8002301c:	e51b3010 	ldr	r3, [fp, #-16]
80023020:	e1d321f4 	ldrsh	r2, [r3, #20]
80023024:	e51b300c 	ldr	r3, [fp, #-12]
80023028:	e1c320b4 	strh	r2, [r3, #4]
8002302c:	e51b3010 	ldr	r3, [fp, #-16]
80023030:	e1d321f6 	ldrsh	r2, [r3, #22]
80023034:	e51b300c 	ldr	r3, [fp, #-12]
80023038:	e1c320b6 	strh	r2, [r3, #6]
8002303c:	e51b3010 	ldr	r3, [fp, #-16]
80023040:	e5932018 	ldr	r2, [r3, #24]
80023044:	e51b300c 	ldr	r3, [fp, #-12]
80023048:	e5832008 	str	r2, [r3, #8]
8002304c:	e51b300c 	ldr	r3, [fp, #-12]
80023050:	e283000c 	add	r0, r3, #12
80023054:	e51b3010 	ldr	r3, [fp, #-16]
80023058:	e283301c 	add	r3, r3, #28
8002305c:	e3a02030 	mov	r2, #48	@ 0x30
80023060:	e1a01003 	mov	r1, r3
80023064:	ebfff457 	bl	800201c8 <memmove>
80023068:	e51b0008 	ldr	r0, [fp, #-8]
8002306c:	eb00062a 	bl	8002491c <log_write>
80023070:	e51b0008 	ldr	r0, [fp, #-8]
80023074:	ebfff6d0 	bl	80020bbc <brelse>
80023078:	e1a00000 	nop			@ (mov r0, r0)
8002307c:	e24bd004 	sub	sp, fp, #4
80023080:	e8bd8800 	pop	{fp, pc}

80023084 <iget>:
80023084:	e92d4800 	push	{fp, lr}
80023088:	e28db004 	add	fp, sp, #4
8002308c:	e24dd010 	sub	sp, sp, #16
80023090:	e50b0010 	str	r0, [fp, #-16]
80023094:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023098:	e59f0114 	ldr	r0, [pc, #276]	@ 800231b4 <iget+0x130>
8002309c:	eb000ed7 	bl	80026c00 <acquire>
800230a0:	e3a03000 	mov	r3, #0
800230a4:	e50b300c 	str	r3, [fp, #-12]
800230a8:	e59f3108 	ldr	r3, [pc, #264]	@ 800231b8 <iget+0x134>
800230ac:	e50b3008 	str	r3, [fp, #-8]
800230b0:	ea000022 	b	80023140 <iget+0xbc>
800230b4:	e51b3008 	ldr	r3, [fp, #-8]
800230b8:	e5933008 	ldr	r3, [r3, #8]
800230bc:	e3530000 	cmp	r3, #0
800230c0:	da000012 	ble	80023110 <iget+0x8c>
800230c4:	e51b3008 	ldr	r3, [fp, #-8]
800230c8:	e5933000 	ldr	r3, [r3]
800230cc:	e51b2010 	ldr	r2, [fp, #-16]
800230d0:	e1520003 	cmp	r2, r3
800230d4:	1a00000d 	bne	80023110 <iget+0x8c>
800230d8:	e51b3008 	ldr	r3, [fp, #-8]
800230dc:	e5933004 	ldr	r3, [r3, #4]
800230e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800230e4:	e1520003 	cmp	r2, r3
800230e8:	1a000008 	bne	80023110 <iget+0x8c>
800230ec:	e51b3008 	ldr	r3, [fp, #-8]
800230f0:	e5933008 	ldr	r3, [r3, #8]
800230f4:	e2832001 	add	r2, r3, #1
800230f8:	e51b3008 	ldr	r3, [fp, #-8]
800230fc:	e5832008 	str	r2, [r3, #8]
80023100:	e59f00ac 	ldr	r0, [pc, #172]	@ 800231b4 <iget+0x130>
80023104:	eb000ec8 	bl	80026c2c <release>
80023108:	e51b3008 	ldr	r3, [fp, #-8]
8002310c:	ea000025 	b	800231a8 <iget+0x124>
80023110:	e51b300c 	ldr	r3, [fp, #-12]
80023114:	e3530000 	cmp	r3, #0
80023118:	1a000005 	bne	80023134 <iget+0xb0>
8002311c:	e51b3008 	ldr	r3, [fp, #-8]
80023120:	e5933008 	ldr	r3, [r3, #8]
80023124:	e3530000 	cmp	r3, #0
80023128:	1a000001 	bne	80023134 <iget+0xb0>
8002312c:	e51b3008 	ldr	r3, [fp, #-8]
80023130:	e50b300c 	str	r3, [fp, #-12]
80023134:	e51b3008 	ldr	r3, [fp, #-8]
80023138:	e283304c 	add	r3, r3, #76	@ 0x4c
8002313c:	e50b3008 	str	r3, [fp, #-8]
80023140:	e51b3008 	ldr	r3, [fp, #-8]
80023144:	e59f2070 	ldr	r2, [pc, #112]	@ 800231bc <iget+0x138>
80023148:	e1530002 	cmp	r3, r2
8002314c:	3affffd8 	bcc	800230b4 <iget+0x30>
80023150:	e51b300c 	ldr	r3, [fp, #-12]
80023154:	e3530000 	cmp	r3, #0
80023158:	1a000001 	bne	80023164 <iget+0xe0>
8002315c:	e59f005c 	ldr	r0, [pc, #92]	@ 800231c0 <iget+0x13c>
80023160:	ebfffa63 	bl	80021af4 <panic>
80023164:	e51b300c 	ldr	r3, [fp, #-12]
80023168:	e50b3008 	str	r3, [fp, #-8]
8002316c:	e51b3008 	ldr	r3, [fp, #-8]
80023170:	e51b2010 	ldr	r2, [fp, #-16]
80023174:	e5832000 	str	r2, [r3]
80023178:	e51b3008 	ldr	r3, [fp, #-8]
8002317c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023180:	e5832004 	str	r2, [r3, #4]
80023184:	e51b3008 	ldr	r3, [fp, #-8]
80023188:	e3a02001 	mov	r2, #1
8002318c:	e5832008 	str	r2, [r3, #8]
80023190:	e51b3008 	ldr	r3, [fp, #-8]
80023194:	e3a02000 	mov	r2, #0
80023198:	e583200c 	str	r2, [r3, #12]
8002319c:	e59f0010 	ldr	r0, [pc, #16]	@ 800231b4 <iget+0x130>
800231a0:	eb000ea1 	bl	80026c2c <release>
800231a4:	e51b3008 	ldr	r3, [fp, #-8]
800231a8:	e1a00003 	mov	r0, r3
800231ac:	e24bd004 	sub	sp, fp, #4
800231b0:	e8bd8800 	pop	{fp, pc}
800231b4:	800ae52c 	.word	0x800ae52c
800231b8:	800ae560 	.word	0x800ae560
800231bc:	800af438 	.word	0x800af438
800231c0:	8002ae84 	.word	0x8002ae84

800231c4 <idup>:
800231c4:	e92d4800 	push	{fp, lr}
800231c8:	e28db004 	add	fp, sp, #4
800231cc:	e24dd008 	sub	sp, sp, #8
800231d0:	e50b0008 	str	r0, [fp, #-8]
800231d4:	e59f002c 	ldr	r0, [pc, #44]	@ 80023208 <idup+0x44>
800231d8:	eb000e88 	bl	80026c00 <acquire>
800231dc:	e51b3008 	ldr	r3, [fp, #-8]
800231e0:	e5933008 	ldr	r3, [r3, #8]
800231e4:	e2832001 	add	r2, r3, #1
800231e8:	e51b3008 	ldr	r3, [fp, #-8]
800231ec:	e5832008 	str	r2, [r3, #8]
800231f0:	e59f0010 	ldr	r0, [pc, #16]	@ 80023208 <idup+0x44>
800231f4:	eb000e8c 	bl	80026c2c <release>
800231f8:	e51b3008 	ldr	r3, [fp, #-8]
800231fc:	e1a00003 	mov	r0, r3
80023200:	e24bd004 	sub	sp, fp, #4
80023204:	e8bd8800 	pop	{fp, pc}
80023208:	800ae52c 	.word	0x800ae52c

8002320c <ilock>:
8002320c:	e92d4800 	push	{fp, lr}
80023210:	e28db004 	add	fp, sp, #4
80023214:	e24dd010 	sub	sp, sp, #16
80023218:	e50b0010 	str	r0, [fp, #-16]
8002321c:	e51b3010 	ldr	r3, [fp, #-16]
80023220:	e3530000 	cmp	r3, #0
80023224:	0a000003 	beq	80023238 <ilock+0x2c>
80023228:	e51b3010 	ldr	r3, [fp, #-16]
8002322c:	e5933008 	ldr	r3, [r3, #8]
80023230:	e3530000 	cmp	r3, #0
80023234:	ca000001 	bgt	80023240 <ilock+0x34>
80023238:	e59f0150 	ldr	r0, [pc, #336]	@ 80023390 <ilock+0x184>
8002323c:	ebfffa2c 	bl	80021af4 <panic>
80023240:	e59f014c 	ldr	r0, [pc, #332]	@ 80023394 <ilock+0x188>
80023244:	eb000e6d 	bl	80026c00 <acquire>
80023248:	ea000002 	b	80023258 <ilock+0x4c>
8002324c:	e59f1140 	ldr	r1, [pc, #320]	@ 80023394 <ilock+0x188>
80023250:	e51b0010 	ldr	r0, [fp, #-16]
80023254:	eb000b87 	bl	80026078 <sleep>
80023258:	e51b3010 	ldr	r3, [fp, #-16]
8002325c:	e593300c 	ldr	r3, [r3, #12]
80023260:	e2033001 	and	r3, r3, #1
80023264:	e3530000 	cmp	r3, #0
80023268:	1afffff7 	bne	8002324c <ilock+0x40>
8002326c:	e51b3010 	ldr	r3, [fp, #-16]
80023270:	e593300c 	ldr	r3, [r3, #12]
80023274:	e3832001 	orr	r2, r3, #1
80023278:	e51b3010 	ldr	r3, [fp, #-16]
8002327c:	e583200c 	str	r2, [r3, #12]
80023280:	e59f010c 	ldr	r0, [pc, #268]	@ 80023394 <ilock+0x188>
80023284:	eb000e68 	bl	80026c2c <release>
80023288:	e51b3010 	ldr	r3, [fp, #-16]
8002328c:	e593300c 	ldr	r3, [r3, #12]
80023290:	e2033002 	and	r3, r3, #2
80023294:	e3530000 	cmp	r3, #0
80023298:	1a000039 	bne	80023384 <ilock+0x178>
8002329c:	e51b3010 	ldr	r3, [fp, #-16]
800232a0:	e5932000 	ldr	r2, [r3]
800232a4:	e51b3010 	ldr	r3, [fp, #-16]
800232a8:	e5933004 	ldr	r3, [r3, #4]
800232ac:	e1a031a3 	lsr	r3, r3, #3
800232b0:	e2833002 	add	r3, r3, #2
800232b4:	e1a01003 	mov	r1, r3
800232b8:	e1a00002 	mov	r0, r2
800232bc:	ebfff614 	bl	80020b14 <bread>
800232c0:	e50b0008 	str	r0, [fp, #-8]
800232c4:	e51b3008 	ldr	r3, [fp, #-8]
800232c8:	e2832018 	add	r2, r3, #24
800232cc:	e51b3010 	ldr	r3, [fp, #-16]
800232d0:	e5933004 	ldr	r3, [r3, #4]
800232d4:	e2033007 	and	r3, r3, #7
800232d8:	e1a03303 	lsl	r3, r3, #6
800232dc:	e0823003 	add	r3, r2, r3
800232e0:	e50b300c 	str	r3, [fp, #-12]
800232e4:	e51b300c 	ldr	r3, [fp, #-12]
800232e8:	e1d320f0 	ldrsh	r2, [r3]
800232ec:	e51b3010 	ldr	r3, [fp, #-16]
800232f0:	e1c321b0 	strh	r2, [r3, #16]
800232f4:	e51b300c 	ldr	r3, [fp, #-12]
800232f8:	e1d320f2 	ldrsh	r2, [r3, #2]
800232fc:	e51b3010 	ldr	r3, [fp, #-16]
80023300:	e1c321b2 	strh	r2, [r3, #18]
80023304:	e51b300c 	ldr	r3, [fp, #-12]
80023308:	e1d320f4 	ldrsh	r2, [r3, #4]
8002330c:	e51b3010 	ldr	r3, [fp, #-16]
80023310:	e1c321b4 	strh	r2, [r3, #20]
80023314:	e51b300c 	ldr	r3, [fp, #-12]
80023318:	e1d320f6 	ldrsh	r2, [r3, #6]
8002331c:	e51b3010 	ldr	r3, [fp, #-16]
80023320:	e1c321b6 	strh	r2, [r3, #22]
80023324:	e51b300c 	ldr	r3, [fp, #-12]
80023328:	e5932008 	ldr	r2, [r3, #8]
8002332c:	e51b3010 	ldr	r3, [fp, #-16]
80023330:	e5832018 	str	r2, [r3, #24]
80023334:	e51b3010 	ldr	r3, [fp, #-16]
80023338:	e283001c 	add	r0, r3, #28
8002333c:	e51b300c 	ldr	r3, [fp, #-12]
80023340:	e283300c 	add	r3, r3, #12
80023344:	e3a02030 	mov	r2, #48	@ 0x30
80023348:	e1a01003 	mov	r1, r3
8002334c:	ebfff39d 	bl	800201c8 <memmove>
80023350:	e51b0008 	ldr	r0, [fp, #-8]
80023354:	ebfff618 	bl	80020bbc <brelse>
80023358:	e51b3010 	ldr	r3, [fp, #-16]
8002335c:	e593300c 	ldr	r3, [r3, #12]
80023360:	e3832002 	orr	r2, r3, #2
80023364:	e51b3010 	ldr	r3, [fp, #-16]
80023368:	e583200c 	str	r2, [r3, #12]
8002336c:	e51b3010 	ldr	r3, [fp, #-16]
80023370:	e1d331f0 	ldrsh	r3, [r3, #16]
80023374:	e3530000 	cmp	r3, #0
80023378:	1a000001 	bne	80023384 <ilock+0x178>
8002337c:	e59f0014 	ldr	r0, [pc, #20]	@ 80023398 <ilock+0x18c>
80023380:	ebfff9db 	bl	80021af4 <panic>
80023384:	e1a00000 	nop			@ (mov r0, r0)
80023388:	e24bd004 	sub	sp, fp, #4
8002338c:	e8bd8800 	pop	{fp, pc}
80023390:	8002ae94 	.word	0x8002ae94
80023394:	800ae52c 	.word	0x800ae52c
80023398:	8002ae9c 	.word	0x8002ae9c

8002339c <iunlock>:
8002339c:	e92d4800 	push	{fp, lr}
800233a0:	e28db004 	add	fp, sp, #4
800233a4:	e24dd008 	sub	sp, sp, #8
800233a8:	e50b0008 	str	r0, [fp, #-8]
800233ac:	e51b3008 	ldr	r3, [fp, #-8]
800233b0:	e3530000 	cmp	r3, #0
800233b4:	0a000008 	beq	800233dc <iunlock+0x40>
800233b8:	e51b3008 	ldr	r3, [fp, #-8]
800233bc:	e593300c 	ldr	r3, [r3, #12]
800233c0:	e2033001 	and	r3, r3, #1
800233c4:	e3530000 	cmp	r3, #0
800233c8:	0a000003 	beq	800233dc <iunlock+0x40>
800233cc:	e51b3008 	ldr	r3, [fp, #-8]
800233d0:	e5933008 	ldr	r3, [r3, #8]
800233d4:	e3530000 	cmp	r3, #0
800233d8:	ca000001 	bgt	800233e4 <iunlock+0x48>
800233dc:	e59f0038 	ldr	r0, [pc, #56]	@ 8002341c <iunlock+0x80>
800233e0:	ebfff9c3 	bl	80021af4 <panic>
800233e4:	e59f0034 	ldr	r0, [pc, #52]	@ 80023420 <iunlock+0x84>
800233e8:	eb000e04 	bl	80026c00 <acquire>
800233ec:	e51b3008 	ldr	r3, [fp, #-8]
800233f0:	e593300c 	ldr	r3, [r3, #12]
800233f4:	e3c32001 	bic	r2, r3, #1
800233f8:	e51b3008 	ldr	r3, [fp, #-8]
800233fc:	e583200c 	str	r2, [r3, #12]
80023400:	e51b0008 	ldr	r0, [fp, #-8]
80023404:	eb000b8f 	bl	80026248 <wakeup>
80023408:	e59f0010 	ldr	r0, [pc, #16]	@ 80023420 <iunlock+0x84>
8002340c:	eb000e06 	bl	80026c2c <release>
80023410:	e1a00000 	nop			@ (mov r0, r0)
80023414:	e24bd004 	sub	sp, fp, #4
80023418:	e8bd8800 	pop	{fp, pc}
8002341c:	8002aeac 	.word	0x8002aeac
80023420:	800ae52c 	.word	0x800ae52c

80023424 <iput>:
80023424:	e92d4800 	push	{fp, lr}
80023428:	e28db004 	add	fp, sp, #4
8002342c:	e24dd008 	sub	sp, sp, #8
80023430:	e50b0008 	str	r0, [fp, #-8]
80023434:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023508 <iput+0xe4>
80023438:	eb000df0 	bl	80026c00 <acquire>
8002343c:	e51b3008 	ldr	r3, [fp, #-8]
80023440:	e5933008 	ldr	r3, [r3, #8]
80023444:	e3530001 	cmp	r3, #1
80023448:	1a000024 	bne	800234e0 <iput+0xbc>
8002344c:	e51b3008 	ldr	r3, [fp, #-8]
80023450:	e593300c 	ldr	r3, [r3, #12]
80023454:	e2033002 	and	r3, r3, #2
80023458:	e3530000 	cmp	r3, #0
8002345c:	0a00001f 	beq	800234e0 <iput+0xbc>
80023460:	e51b3008 	ldr	r3, [fp, #-8]
80023464:	e1d331f6 	ldrsh	r3, [r3, #22]
80023468:	e3530000 	cmp	r3, #0
8002346c:	1a00001b 	bne	800234e0 <iput+0xbc>
80023470:	e51b3008 	ldr	r3, [fp, #-8]
80023474:	e593300c 	ldr	r3, [r3, #12]
80023478:	e2033001 	and	r3, r3, #1
8002347c:	e3530000 	cmp	r3, #0
80023480:	0a000001 	beq	8002348c <iput+0x68>
80023484:	e59f0080 	ldr	r0, [pc, #128]	@ 8002350c <iput+0xe8>
80023488:	ebfff999 	bl	80021af4 <panic>
8002348c:	e51b3008 	ldr	r3, [fp, #-8]
80023490:	e593300c 	ldr	r3, [r3, #12]
80023494:	e3832001 	orr	r2, r3, #1
80023498:	e51b3008 	ldr	r3, [fp, #-8]
8002349c:	e583200c 	str	r2, [r3, #12]
800234a0:	e59f0060 	ldr	r0, [pc, #96]	@ 80023508 <iput+0xe4>
800234a4:	eb000de0 	bl	80026c2c <release>
800234a8:	e51b0008 	ldr	r0, [fp, #-8]
800234ac:	eb0000eb 	bl	80023860 <itrunc>
800234b0:	e51b3008 	ldr	r3, [fp, #-8]
800234b4:	e3a02000 	mov	r2, #0
800234b8:	e1c321b0 	strh	r2, [r3, #16]
800234bc:	e51b0008 	ldr	r0, [fp, #-8]
800234c0:	ebfffeb7 	bl	80022fa4 <iupdate>
800234c4:	e59f003c 	ldr	r0, [pc, #60]	@ 80023508 <iput+0xe4>
800234c8:	eb000dcc 	bl	80026c00 <acquire>
800234cc:	e51b3008 	ldr	r3, [fp, #-8]
800234d0:	e3a02000 	mov	r2, #0
800234d4:	e583200c 	str	r2, [r3, #12]
800234d8:	e51b0008 	ldr	r0, [fp, #-8]
800234dc:	eb000b59 	bl	80026248 <wakeup>
800234e0:	e51b3008 	ldr	r3, [fp, #-8]
800234e4:	e5933008 	ldr	r3, [r3, #8]
800234e8:	e2432001 	sub	r2, r3, #1
800234ec:	e51b3008 	ldr	r3, [fp, #-8]
800234f0:	e5832008 	str	r2, [r3, #8]
800234f4:	e59f000c 	ldr	r0, [pc, #12]	@ 80023508 <iput+0xe4>
800234f8:	eb000dcb 	bl	80026c2c <release>
800234fc:	e1a00000 	nop			@ (mov r0, r0)
80023500:	e24bd004 	sub	sp, fp, #4
80023504:	e8bd8800 	pop	{fp, pc}
80023508:	800ae52c 	.word	0x800ae52c
8002350c:	8002aeb4 	.word	0x8002aeb4

80023510 <iunlockput>:
80023510:	e92d4800 	push	{fp, lr}
80023514:	e28db004 	add	fp, sp, #4
80023518:	e24dd008 	sub	sp, sp, #8
8002351c:	e50b0008 	str	r0, [fp, #-8]
80023520:	e51b0008 	ldr	r0, [fp, #-8]
80023524:	ebffff9c 	bl	8002339c <iunlock>
80023528:	e51b0008 	ldr	r0, [fp, #-8]
8002352c:	ebffffbc 	bl	80023424 <iput>
80023530:	e1a00000 	nop			@ (mov r0, r0)
80023534:	e24bd004 	sub	sp, fp, #4
80023538:	e8bd8800 	pop	{fp, pc}

8002353c <bmap>:
8002353c:	e92d4800 	push	{fp, lr}
80023540:	e28db004 	add	fp, sp, #4
80023544:	e24dd020 	sub	sp, sp, #32
80023548:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002354c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023550:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80023554:	e353000a 	cmp	r3, #10
80023558:	8a000017 	bhi	800235bc <bmap+0x80>
8002355c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80023560:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80023564:	e2833006 	add	r3, r3, #6
80023568:	e1a03103 	lsl	r3, r3, #2
8002356c:	e0823003 	add	r3, r2, r3
80023570:	e5933004 	ldr	r3, [r3, #4]
80023574:	e50b3008 	str	r3, [fp, #-8]
80023578:	e51b3008 	ldr	r3, [fp, #-8]
8002357c:	e3530000 	cmp	r3, #0
80023580:	1a00000b 	bne	800235b4 <bmap+0x78>
80023584:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023588:	e5933000 	ldr	r3, [r3]
8002358c:	e1a00003 	mov	r0, r3
80023590:	ebfffd7e 	bl	80022b90 <balloc>
80023594:	e50b0008 	str	r0, [fp, #-8]
80023598:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002359c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800235a0:	e2833006 	add	r3, r3, #6
800235a4:	e1a03103 	lsl	r3, r3, #2
800235a8:	e0823003 	add	r3, r2, r3
800235ac:	e51b2008 	ldr	r2, [fp, #-8]
800235b0:	e5832004 	str	r2, [r3, #4]
800235b4:	e51b3008 	ldr	r3, [fp, #-8]
800235b8:	ea0000a4 	b	80023850 <bmap+0x314>
800235bc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800235c0:	e243300b 	sub	r3, r3, #11
800235c4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800235c8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800235cc:	e353007f 	cmp	r3, #127	@ 0x7f
800235d0:	8a000030 	bhi	80023698 <bmap+0x15c>
800235d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800235d8:	e5933048 	ldr	r3, [r3, #72]	@ 0x48
800235dc:	e50b3008 	str	r3, [fp, #-8]
800235e0:	e51b3008 	ldr	r3, [fp, #-8]
800235e4:	e3530000 	cmp	r3, #0
800235e8:	1a000007 	bne	8002360c <bmap+0xd0>
800235ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800235f0:	e5933000 	ldr	r3, [r3]
800235f4:	e1a00003 	mov	r0, r3
800235f8:	ebfffd64 	bl	80022b90 <balloc>
800235fc:	e50b0008 	str	r0, [fp, #-8]
80023600:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023604:	e51b2008 	ldr	r2, [fp, #-8]
80023608:	e5832048 	str	r2, [r3, #72]	@ 0x48
8002360c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023610:	e5933000 	ldr	r3, [r3]
80023614:	e51b1008 	ldr	r1, [fp, #-8]
80023618:	e1a00003 	mov	r0, r3
8002361c:	ebfff53c 	bl	80020b14 <bread>
80023620:	e50b0010 	str	r0, [fp, #-16]
80023624:	e51b3010 	ldr	r3, [fp, #-16]
80023628:	e2833018 	add	r3, r3, #24
8002362c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80023630:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80023634:	e1a03103 	lsl	r3, r3, #2
80023638:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002363c:	e0823003 	add	r3, r2, r3
80023640:	e5933000 	ldr	r3, [r3]
80023644:	e50b3008 	str	r3, [fp, #-8]
80023648:	e51b3008 	ldr	r3, [fp, #-8]
8002364c:	e3530000 	cmp	r3, #0
80023650:	1a00000c 	bne	80023688 <bmap+0x14c>
80023654:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023658:	e5933000 	ldr	r3, [r3]
8002365c:	e1a00003 	mov	r0, r3
80023660:	ebfffd4a 	bl	80022b90 <balloc>
80023664:	e50b0008 	str	r0, [fp, #-8]
80023668:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002366c:	e1a03103 	lsl	r3, r3, #2
80023670:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023674:	e0823003 	add	r3, r2, r3
80023678:	e51b2008 	ldr	r2, [fp, #-8]
8002367c:	e5832000 	str	r2, [r3]
80023680:	e51b0010 	ldr	r0, [fp, #-16]
80023684:	eb0004a4 	bl	8002491c <log_write>
80023688:	e51b0010 	ldr	r0, [fp, #-16]
8002368c:	ebfff54a 	bl	80020bbc <brelse>
80023690:	e51b3008 	ldr	r3, [fp, #-8]
80023694:	ea00006d 	b	80023850 <bmap+0x314>
80023698:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002369c:	e2433080 	sub	r3, r3, #128	@ 0x80
800236a0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800236a4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800236a8:	e3530901 	cmp	r3, #16384	@ 0x4000
800236ac:	2a000065 	bcs	80023848 <bmap+0x30c>
800236b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800236b4:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800236b8:	e50b3008 	str	r3, [fp, #-8]
800236bc:	e51b3008 	ldr	r3, [fp, #-8]
800236c0:	e3530000 	cmp	r3, #0
800236c4:	1a000007 	bne	800236e8 <bmap+0x1ac>
800236c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800236cc:	e5933000 	ldr	r3, [r3]
800236d0:	e1a00003 	mov	r0, r3
800236d4:	ebfffd2d 	bl	80022b90 <balloc>
800236d8:	e50b0008 	str	r0, [fp, #-8]
800236dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800236e0:	e51b2008 	ldr	r2, [fp, #-8]
800236e4:	e583204c 	str	r2, [r3, #76]	@ 0x4c
800236e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800236ec:	e5933000 	ldr	r3, [r3]
800236f0:	e51b1008 	ldr	r1, [fp, #-8]
800236f4:	e1a00003 	mov	r0, r3
800236f8:	ebfff505 	bl	80020b14 <bread>
800236fc:	e50b0010 	str	r0, [fp, #-16]
80023700:	e51b3010 	ldr	r3, [fp, #-16]
80023704:	e2833018 	add	r3, r3, #24
80023708:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002370c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80023710:	e1a033a3 	lsr	r3, r3, #7
80023714:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023718:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002371c:	e203307f 	and	r3, r3, #127	@ 0x7f
80023720:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80023724:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023728:	e1a03103 	lsl	r3, r3, #2
8002372c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023730:	e0823003 	add	r3, r2, r3
80023734:	e5933000 	ldr	r3, [r3]
80023738:	e3530000 	cmp	r3, #0
8002373c:	1a000018 	bne	800237a4 <bmap+0x268>
80023740:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023744:	e5933000 	ldr	r3, [r3]
80023748:	e1a00003 	mov	r0, r3
8002374c:	ebfffd0f 	bl	80022b90 <balloc>
80023750:	e50b0008 	str	r0, [fp, #-8]
80023754:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023758:	e1a03103 	lsl	r3, r3, #2
8002375c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023760:	e0823003 	add	r3, r2, r3
80023764:	e51b2008 	ldr	r2, [fp, #-8]
80023768:	e5832000 	str	r2, [r3]
8002376c:	e51b0010 	ldr	r0, [fp, #-16]
80023770:	eb000469 	bl	8002491c <log_write>
80023774:	e51b0010 	ldr	r0, [fp, #-16]
80023778:	ebfff50f 	bl	80020bbc <brelse>
8002377c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023780:	e5933000 	ldr	r3, [r3]
80023784:	e51b1008 	ldr	r1, [fp, #-8]
80023788:	e1a00003 	mov	r0, r3
8002378c:	ebfff4e0 	bl	80020b14 <bread>
80023790:	e50b0010 	str	r0, [fp, #-16]
80023794:	e51b3010 	ldr	r3, [fp, #-16]
80023798:	e2833018 	add	r3, r3, #24
8002379c:	e50b300c 	str	r3, [fp, #-12]
800237a0:	ea00000e 	b	800237e0 <bmap+0x2a4>
800237a4:	e51b0010 	ldr	r0, [fp, #-16]
800237a8:	ebfff503 	bl	80020bbc <brelse>
800237ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800237b0:	e5930000 	ldr	r0, [r3]
800237b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237b8:	e1a03103 	lsl	r3, r3, #2
800237bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800237c0:	e0823003 	add	r3, r2, r3
800237c4:	e5933000 	ldr	r3, [r3]
800237c8:	e1a01003 	mov	r1, r3
800237cc:	ebfff4d0 	bl	80020b14 <bread>
800237d0:	e50b0010 	str	r0, [fp, #-16]
800237d4:	e51b3010 	ldr	r3, [fp, #-16]
800237d8:	e2833018 	add	r3, r3, #24
800237dc:	e50b300c 	str	r3, [fp, #-12]
800237e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800237e4:	e1a03103 	lsl	r3, r3, #2
800237e8:	e51b200c 	ldr	r2, [fp, #-12]
800237ec:	e0823003 	add	r3, r2, r3
800237f0:	e5933000 	ldr	r3, [r3]
800237f4:	e50b3008 	str	r3, [fp, #-8]
800237f8:	e51b3008 	ldr	r3, [fp, #-8]
800237fc:	e3530000 	cmp	r3, #0
80023800:	1a00000c 	bne	80023838 <bmap+0x2fc>
80023804:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023808:	e5933000 	ldr	r3, [r3]
8002380c:	e1a00003 	mov	r0, r3
80023810:	ebfffcde 	bl	80022b90 <balloc>
80023814:	e50b0008 	str	r0, [fp, #-8]
80023818:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002381c:	e1a03103 	lsl	r3, r3, #2
80023820:	e51b200c 	ldr	r2, [fp, #-12]
80023824:	e0823003 	add	r3, r2, r3
80023828:	e51b2008 	ldr	r2, [fp, #-8]
8002382c:	e5832000 	str	r2, [r3]
80023830:	e51b0010 	ldr	r0, [fp, #-16]
80023834:	eb000438 	bl	8002491c <log_write>
80023838:	e51b0010 	ldr	r0, [fp, #-16]
8002383c:	ebfff4de 	bl	80020bbc <brelse>
80023840:	e51b3008 	ldr	r3, [fp, #-8]
80023844:	ea000001 	b	80023850 <bmap+0x314>
80023848:	e59f000c 	ldr	r0, [pc, #12]	@ 8002385c <bmap+0x320>
8002384c:	ebfff8a8 	bl	80021af4 <panic>
80023850:	e1a00003 	mov	r0, r3
80023854:	e24bd004 	sub	sp, fp, #4
80023858:	e8bd8800 	pop	{fp, pc}
8002385c:	8002aec0 	.word	0x8002aec0

80023860 <itrunc>:
80023860:	e92d4800 	push	{fp, lr}
80023864:	e28db004 	add	fp, sp, #4
80023868:	e24dd028 	sub	sp, sp, #40	@ 0x28
8002386c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80023870:	e3a03000 	mov	r3, #0
80023874:	e50b3008 	str	r3, [fp, #-8]
80023878:	ea00001c 	b	800238f0 <itrunc+0x90>
8002387c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023880:	e51b3008 	ldr	r3, [fp, #-8]
80023884:	e2833006 	add	r3, r3, #6
80023888:	e1a03103 	lsl	r3, r3, #2
8002388c:	e0823003 	add	r3, r2, r3
80023890:	e5933004 	ldr	r3, [r3, #4]
80023894:	e3530000 	cmp	r3, #0
80023898:	0a000011 	beq	800238e4 <itrunc+0x84>
8002389c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800238a0:	e5933000 	ldr	r3, [r3]
800238a4:	e1a00003 	mov	r0, r3
800238a8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238ac:	e51b3008 	ldr	r3, [fp, #-8]
800238b0:	e2833006 	add	r3, r3, #6
800238b4:	e1a03103 	lsl	r3, r3, #2
800238b8:	e0823003 	add	r3, r2, r3
800238bc:	e5933004 	ldr	r3, [r3, #4]
800238c0:	e1a01003 	mov	r1, r3
800238c4:	ebfffd23 	bl	80022d58 <bfree>
800238c8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238cc:	e51b3008 	ldr	r3, [fp, #-8]
800238d0:	e2833006 	add	r3, r3, #6
800238d4:	e1a03103 	lsl	r3, r3, #2
800238d8:	e0823003 	add	r3, r2, r3
800238dc:	e3a02000 	mov	r2, #0
800238e0:	e5832004 	str	r2, [r3, #4]
800238e4:	e51b3008 	ldr	r3, [fp, #-8]
800238e8:	e2833001 	add	r3, r3, #1
800238ec:	e50b3008 	str	r3, [fp, #-8]
800238f0:	e51b3008 	ldr	r3, [fp, #-8]
800238f4:	e353000a 	cmp	r3, #10
800238f8:	daffffdf 	ble	8002387c <itrunc+0x1c>
800238fc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023900:	e5933048 	ldr	r3, [r3, #72]	@ 0x48
80023904:	e3530000 	cmp	r3, #0
80023908:	0a000031 	beq	800239d4 <itrunc+0x174>
8002390c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023910:	e5932000 	ldr	r2, [r3]
80023914:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023918:	e5933048 	ldr	r3, [r3, #72]	@ 0x48
8002391c:	e1a01003 	mov	r1, r3
80023920:	e1a00002 	mov	r0, r2
80023924:	ebfff47a 	bl	80020b14 <bread>
80023928:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002392c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023930:	e2833018 	add	r3, r3, #24
80023934:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023938:	e3a03000 	mov	r3, #0
8002393c:	e50b300c 	str	r3, [fp, #-12]
80023940:	ea000013 	b	80023994 <itrunc+0x134>
80023944:	e51b300c 	ldr	r3, [fp, #-12]
80023948:	e1a03103 	lsl	r3, r3, #2
8002394c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023950:	e0823003 	add	r3, r2, r3
80023954:	e5933000 	ldr	r3, [r3]
80023958:	e3530000 	cmp	r3, #0
8002395c:	0a000009 	beq	80023988 <itrunc+0x128>
80023960:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023964:	e5933000 	ldr	r3, [r3]
80023968:	e1a00003 	mov	r0, r3
8002396c:	e51b300c 	ldr	r3, [fp, #-12]
80023970:	e1a03103 	lsl	r3, r3, #2
80023974:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023978:	e0823003 	add	r3, r2, r3
8002397c:	e5933000 	ldr	r3, [r3]
80023980:	e1a01003 	mov	r1, r3
80023984:	ebfffcf3 	bl	80022d58 <bfree>
80023988:	e51b300c 	ldr	r3, [fp, #-12]
8002398c:	e2833001 	add	r3, r3, #1
80023990:	e50b300c 	str	r3, [fp, #-12]
80023994:	e51b300c 	ldr	r3, [fp, #-12]
80023998:	e353007f 	cmp	r3, #127	@ 0x7f
8002399c:	9affffe8 	bls	80023944 <itrunc+0xe4>
800239a0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800239a4:	ebfff484 	bl	80020bbc <brelse>
800239a8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239ac:	e5933000 	ldr	r3, [r3]
800239b0:	e1a02003 	mov	r2, r3
800239b4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239b8:	e5933048 	ldr	r3, [r3, #72]	@ 0x48
800239bc:	e1a01003 	mov	r1, r3
800239c0:	e1a00002 	mov	r0, r2
800239c4:	ebfffce3 	bl	80022d58 <bfree>
800239c8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239cc:	e3a02000 	mov	r2, #0
800239d0:	e5832048 	str	r2, [r3, #72]	@ 0x48
800239d4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239d8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800239dc:	e3530000 	cmp	r3, #0
800239e0:	0a00005a 	beq	80023b50 <itrunc+0x2f0>
800239e4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239e8:	e5932000 	ldr	r2, [r3]
800239ec:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239f0:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800239f4:	e1a01003 	mov	r1, r3
800239f8:	e1a00002 	mov	r0, r2
800239fc:	ebfff444 	bl	80020b14 <bread>
80023a00:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023a04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023a08:	e2833018 	add	r3, r3, #24
80023a0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023a10:	e3a03000 	mov	r3, #0
80023a14:	e50b300c 	str	r3, [fp, #-12]
80023a18:	ea00003c 	b	80023b10 <itrunc+0x2b0>
80023a1c:	e51b300c 	ldr	r3, [fp, #-12]
80023a20:	e1a03103 	lsl	r3, r3, #2
80023a24:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023a28:	e0823003 	add	r3, r2, r3
80023a2c:	e5933000 	ldr	r3, [r3]
80023a30:	e3530000 	cmp	r3, #0
80023a34:	0a000032 	beq	80023b04 <itrunc+0x2a4>
80023a38:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a3c:	e5930000 	ldr	r0, [r3]
80023a40:	e51b300c 	ldr	r3, [fp, #-12]
80023a44:	e1a03103 	lsl	r3, r3, #2
80023a48:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023a4c:	e0823003 	add	r3, r2, r3
80023a50:	e5933000 	ldr	r3, [r3]
80023a54:	e1a01003 	mov	r1, r3
80023a58:	ebfff42d 	bl	80020b14 <bread>
80023a5c:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
80023a60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023a64:	e2833018 	add	r3, r3, #24
80023a68:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80023a6c:	e3a03000 	mov	r3, #0
80023a70:	e50b3010 	str	r3, [fp, #-16]
80023a74:	ea000013 	b	80023ac8 <itrunc+0x268>
80023a78:	e51b3010 	ldr	r3, [fp, #-16]
80023a7c:	e1a03103 	lsl	r3, r3, #2
80023a80:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80023a84:	e0823003 	add	r3, r2, r3
80023a88:	e5933000 	ldr	r3, [r3]
80023a8c:	e3530000 	cmp	r3, #0
80023a90:	0a000009 	beq	80023abc <itrunc+0x25c>
80023a94:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a98:	e5933000 	ldr	r3, [r3]
80023a9c:	e1a00003 	mov	r0, r3
80023aa0:	e51b3010 	ldr	r3, [fp, #-16]
80023aa4:	e1a03103 	lsl	r3, r3, #2
80023aa8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80023aac:	e0823003 	add	r3, r2, r3
80023ab0:	e5933000 	ldr	r3, [r3]
80023ab4:	e1a01003 	mov	r1, r3
80023ab8:	ebfffca6 	bl	80022d58 <bfree>
80023abc:	e51b3010 	ldr	r3, [fp, #-16]
80023ac0:	e2833001 	add	r3, r3, #1
80023ac4:	e50b3010 	str	r3, [fp, #-16]
80023ac8:	e51b3010 	ldr	r3, [fp, #-16]
80023acc:	e353007f 	cmp	r3, #127	@ 0x7f
80023ad0:	9affffe8 	bls	80023a78 <itrunc+0x218>
80023ad4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80023ad8:	ebfff437 	bl	80020bbc <brelse>
80023adc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ae0:	e5933000 	ldr	r3, [r3]
80023ae4:	e1a00003 	mov	r0, r3
80023ae8:	e51b300c 	ldr	r3, [fp, #-12]
80023aec:	e1a03103 	lsl	r3, r3, #2
80023af0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023af4:	e0823003 	add	r3, r2, r3
80023af8:	e5933000 	ldr	r3, [r3]
80023afc:	e1a01003 	mov	r1, r3
80023b00:	ebfffc94 	bl	80022d58 <bfree>
80023b04:	e51b300c 	ldr	r3, [fp, #-12]
80023b08:	e2833001 	add	r3, r3, #1
80023b0c:	e50b300c 	str	r3, [fp, #-12]
80023b10:	e51b300c 	ldr	r3, [fp, #-12]
80023b14:	e353007f 	cmp	r3, #127	@ 0x7f
80023b18:	9affffbf 	bls	80023a1c <itrunc+0x1bc>
80023b1c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b20:	ebfff425 	bl	80020bbc <brelse>
80023b24:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b28:	e5933000 	ldr	r3, [r3]
80023b2c:	e1a02003 	mov	r2, r3
80023b30:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b34:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023b38:	e1a01003 	mov	r1, r3
80023b3c:	e1a00002 	mov	r0, r2
80023b40:	ebfffc84 	bl	80022d58 <bfree>
80023b44:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b48:	e3a02000 	mov	r2, #0
80023b4c:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023b50:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b54:	e3a02000 	mov	r2, #0
80023b58:	e5832018 	str	r2, [r3, #24]
80023b5c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023b60:	ebfffd0f 	bl	80022fa4 <iupdate>
80023b64:	e1a00000 	nop			@ (mov r0, r0)
80023b68:	e24bd004 	sub	sp, fp, #4
80023b6c:	e8bd8800 	pop	{fp, pc}

80023b70 <stati>:
80023b70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023b74:	e28db000 	add	fp, sp, #0
80023b78:	e24dd00c 	sub	sp, sp, #12
80023b7c:	e50b0008 	str	r0, [fp, #-8]
80023b80:	e50b100c 	str	r1, [fp, #-12]
80023b84:	e51b3008 	ldr	r3, [fp, #-8]
80023b88:	e5933000 	ldr	r3, [r3]
80023b8c:	e1a02003 	mov	r2, r3
80023b90:	e51b300c 	ldr	r3, [fp, #-12]
80023b94:	e5832004 	str	r2, [r3, #4]
80023b98:	e51b3008 	ldr	r3, [fp, #-8]
80023b9c:	e5932004 	ldr	r2, [r3, #4]
80023ba0:	e51b300c 	ldr	r3, [fp, #-12]
80023ba4:	e5832008 	str	r2, [r3, #8]
80023ba8:	e51b3008 	ldr	r3, [fp, #-8]
80023bac:	e1d321f0 	ldrsh	r2, [r3, #16]
80023bb0:	e51b300c 	ldr	r3, [fp, #-12]
80023bb4:	e1c320b0 	strh	r2, [r3]
80023bb8:	e51b3008 	ldr	r3, [fp, #-8]
80023bbc:	e1d321f6 	ldrsh	r2, [r3, #22]
80023bc0:	e51b300c 	ldr	r3, [fp, #-12]
80023bc4:	e1c320bc 	strh	r2, [r3, #12]
80023bc8:	e51b3008 	ldr	r3, [fp, #-8]
80023bcc:	e5932018 	ldr	r2, [r3, #24]
80023bd0:	e51b300c 	ldr	r3, [fp, #-12]
80023bd4:	e5832010 	str	r2, [r3, #16]
80023bd8:	e1a00000 	nop			@ (mov r0, r0)
80023bdc:	e28bd000 	add	sp, fp, #0
80023be0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80023be4:	e12fff1e 	bx	lr

80023be8 <readi>:
80023be8:	e92d4810 	push	{r4, fp, lr}
80023bec:	e28db008 	add	fp, sp, #8
80023bf0:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023bf4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023bf8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023bfc:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023c00:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023c04:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c08:	e1d331f0 	ldrsh	r3, [r3, #16]
80023c0c:	e3530003 	cmp	r3, #3
80023c10:	1a00001b 	bne	80023c84 <readi+0x9c>
80023c14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c18:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c1c:	e3530000 	cmp	r3, #0
80023c20:	ba00000a 	blt	80023c50 <readi+0x68>
80023c24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c28:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c2c:	e3530009 	cmp	r3, #9
80023c30:	ca000006 	bgt	80023c50 <readi+0x68>
80023c34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c38:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c3c:	e1a02003 	mov	r2, r3
80023c40:	e59f3188 	ldr	r3, [pc, #392]	@ 80023dd0 <readi+0x1e8>
80023c44:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023c48:	e3530000 	cmp	r3, #0
80023c4c:	1a000001 	bne	80023c58 <readi+0x70>
80023c50:	e3e03000 	mvn	r3, #0
80023c54:	ea00005a 	b	80023dc4 <readi+0x1dc>
80023c58:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c5c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c60:	e1a02003 	mov	r2, r3
80023c64:	e59f3164 	ldr	r3, [pc, #356]	@ 80023dd0 <readi+0x1e8>
80023c68:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023c6c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023c70:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023c74:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c78:	e12fff33 	blx	r3
80023c7c:	e1a03000 	mov	r3, r0
80023c80:	ea00004f 	b	80023dc4 <readi+0x1dc>
80023c84:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c88:	e5933018 	ldr	r3, [r3, #24]
80023c8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c90:	e1520003 	cmp	r2, r3
80023c94:	8a000005 	bhi	80023cb0 <readi+0xc8>
80023c98:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ca0:	e0823003 	add	r3, r2, r3
80023ca4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ca8:	e1520003 	cmp	r2, r3
80023cac:	9a000001 	bls	80023cb8 <readi+0xd0>
80023cb0:	e3e03000 	mvn	r3, #0
80023cb4:	ea000042 	b	80023dc4 <readi+0x1dc>
80023cb8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023cbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cc0:	e0822003 	add	r2, r2, r3
80023cc4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cc8:	e5933018 	ldr	r3, [r3, #24]
80023ccc:	e1520003 	cmp	r2, r3
80023cd0:	9a000004 	bls	80023ce8 <readi+0x100>
80023cd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cd8:	e5932018 	ldr	r2, [r3, #24]
80023cdc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ce0:	e0423003 	sub	r3, r2, r3
80023ce4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023ce8:	e3a03000 	mov	r3, #0
80023cec:	e50b3010 	str	r3, [fp, #-16]
80023cf0:	ea00002e 	b	80023db0 <readi+0x1c8>
80023cf4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cf8:	e5934000 	ldr	r4, [r3]
80023cfc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d00:	e1a034a3 	lsr	r3, r3, #9
80023d04:	e1a01003 	mov	r1, r3
80023d08:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d0c:	ebfffe0a 	bl	8002353c <bmap>
80023d10:	e1a03000 	mov	r3, r0
80023d14:	e1a01003 	mov	r1, r3
80023d18:	e1a00004 	mov	r0, r4
80023d1c:	ebfff37c 	bl	80020b14 <bread>
80023d20:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023d24:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d28:	e1a03b83 	lsl	r3, r3, #23
80023d2c:	e1a03ba3 	lsr	r3, r3, #23
80023d30:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023d34:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023d38:	e51b3010 	ldr	r3, [fp, #-16]
80023d3c:	e0413003 	sub	r3, r1, r3
80023d40:	e1520003 	cmp	r2, r3
80023d44:	31a03002 	movcc	r3, r2
80023d48:	21a03003 	movcs	r3, r3
80023d4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023d50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023d54:	e2832018 	add	r2, r3, #24
80023d58:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d5c:	e1a03b83 	lsl	r3, r3, #23
80023d60:	e1a03ba3 	lsr	r3, r3, #23
80023d64:	e0823003 	add	r3, r2, r3
80023d68:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023d6c:	e1a01003 	mov	r1, r3
80023d70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023d74:	ebfff113 	bl	800201c8 <memmove>
80023d78:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023d7c:	ebfff38e 	bl	80020bbc <brelse>
80023d80:	e51b2010 	ldr	r2, [fp, #-16]
80023d84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d88:	e0823003 	add	r3, r2, r3
80023d8c:	e50b3010 	str	r3, [fp, #-16]
80023d90:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d98:	e0823003 	add	r3, r2, r3
80023d9c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023da0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023da4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023da8:	e0823003 	add	r3, r2, r3
80023dac:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023db0:	e51b2010 	ldr	r2, [fp, #-16]
80023db4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023db8:	e1520003 	cmp	r2, r3
80023dbc:	3affffcc 	bcc	80023cf4 <readi+0x10c>
80023dc0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023dc4:	e1a00003 	mov	r0, r3
80023dc8:	e24bd008 	sub	sp, fp, #8
80023dcc:	e8bd8810 	pop	{r4, fp, pc}
80023dd0:	800adb48 	.word	0x800adb48

80023dd4 <writei>:
80023dd4:	e92d4810 	push	{r4, fp, lr}
80023dd8:	e28db008 	add	fp, sp, #8
80023ddc:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023de0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023de4:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023de8:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023dec:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023df0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023df4:	e1d331f0 	ldrsh	r3, [r3, #16]
80023df8:	e3530003 	cmp	r3, #3
80023dfc:	1a00001d 	bne	80023e78 <writei+0xa4>
80023e00:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e04:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e08:	e3530000 	cmp	r3, #0
80023e0c:	ba00000b 	blt	80023e40 <writei+0x6c>
80023e10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e14:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e18:	e3530009 	cmp	r3, #9
80023e1c:	ca000007 	bgt	80023e40 <writei+0x6c>
80023e20:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e24:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e28:	e59f21c0 	ldr	r2, [pc, #448]	@ 80023ff0 <writei+0x21c>
80023e2c:	e1a03183 	lsl	r3, r3, #3
80023e30:	e0823003 	add	r3, r2, r3
80023e34:	e5933004 	ldr	r3, [r3, #4]
80023e38:	e3530000 	cmp	r3, #0
80023e3c:	1a000001 	bne	80023e48 <writei+0x74>
80023e40:	e3e03000 	mvn	r3, #0
80023e44:	ea000066 	b	80023fe4 <writei+0x210>
80023e48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e4c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023e50:	e59f2198 	ldr	r2, [pc, #408]	@ 80023ff0 <writei+0x21c>
80023e54:	e1a03183 	lsl	r3, r3, #3
80023e58:	e0823003 	add	r3, r2, r3
80023e5c:	e5933004 	ldr	r3, [r3, #4]
80023e60:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023e64:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023e68:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e6c:	e12fff33 	blx	r3
80023e70:	e1a03000 	mov	r3, r0
80023e74:	ea00005a 	b	80023fe4 <writei+0x210>
80023e78:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e7c:	e5933018 	ldr	r3, [r3, #24]
80023e80:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e84:	e1520003 	cmp	r2, r3
80023e88:	8a000005 	bhi	80023ea4 <writei+0xd0>
80023e8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023e94:	e0823003 	add	r3, r2, r3
80023e98:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e9c:	e1520003 	cmp	r2, r3
80023ea0:	9a000001 	bls	80023eac <writei+0xd8>
80023ea4:	e3e03000 	mvn	r3, #0
80023ea8:	ea00004d 	b	80023fe4 <writei+0x210>
80023eac:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023eb0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023eb4:	e0823003 	add	r3, r2, r3
80023eb8:	e59f2134 	ldr	r2, [pc, #308]	@ 80023ff4 <writei+0x220>
80023ebc:	e1530002 	cmp	r3, r2
80023ec0:	9a000001 	bls	80023ecc <writei+0xf8>
80023ec4:	e3e03000 	mvn	r3, #0
80023ec8:	ea000045 	b	80023fe4 <writei+0x210>
80023ecc:	e3a03000 	mov	r3, #0
80023ed0:	e50b3010 	str	r3, [fp, #-16]
80023ed4:	ea000030 	b	80023f9c <writei+0x1c8>
80023ed8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023edc:	e5934000 	ldr	r4, [r3]
80023ee0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ee4:	e1a034a3 	lsr	r3, r3, #9
80023ee8:	e1a01003 	mov	r1, r3
80023eec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ef0:	ebfffd91 	bl	8002353c <bmap>
80023ef4:	e1a03000 	mov	r3, r0
80023ef8:	e1a01003 	mov	r1, r3
80023efc:	e1a00004 	mov	r0, r4
80023f00:	ebfff303 	bl	80020b14 <bread>
80023f04:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023f08:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f0c:	e1a03b83 	lsl	r3, r3, #23
80023f10:	e1a03ba3 	lsr	r3, r3, #23
80023f14:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023f18:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023f1c:	e51b3010 	ldr	r3, [fp, #-16]
80023f20:	e0413003 	sub	r3, r1, r3
80023f24:	e1520003 	cmp	r2, r3
80023f28:	31a03002 	movcc	r3, r2
80023f2c:	21a03003 	movcs	r3, r3
80023f30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023f34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023f38:	e2832018 	add	r2, r3, #24
80023f3c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f40:	e1a03b83 	lsl	r3, r3, #23
80023f44:	e1a03ba3 	lsr	r3, r3, #23
80023f48:	e0823003 	add	r3, r2, r3
80023f4c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023f50:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023f54:	e1a00003 	mov	r0, r3
80023f58:	ebfff09a 	bl	800201c8 <memmove>
80023f5c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f60:	eb00026d 	bl	8002491c <log_write>
80023f64:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f68:	ebfff313 	bl	80020bbc <brelse>
80023f6c:	e51b2010 	ldr	r2, [fp, #-16]
80023f70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023f74:	e0823003 	add	r3, r2, r3
80023f78:	e50b3010 	str	r3, [fp, #-16]
80023f7c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023f80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023f84:	e0823003 	add	r3, r2, r3
80023f88:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023f8c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023f90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023f94:	e0823003 	add	r3, r2, r3
80023f98:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023f9c:	e51b2010 	ldr	r2, [fp, #-16]
80023fa0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023fa4:	e1520003 	cmp	r2, r3
80023fa8:	3affffca 	bcc	80023ed8 <writei+0x104>
80023fac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023fb0:	e3530000 	cmp	r3, #0
80023fb4:	0a000009 	beq	80023fe0 <writei+0x20c>
80023fb8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023fbc:	e5933018 	ldr	r3, [r3, #24]
80023fc0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023fc4:	e1520003 	cmp	r2, r3
80023fc8:	9a000004 	bls	80023fe0 <writei+0x20c>
80023fcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023fd0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023fd4:	e5832018 	str	r2, [r3, #24]
80023fd8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023fdc:	ebfffbf0 	bl	80022fa4 <iupdate>
80023fe0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023fe4:	e1a00003 	mov	r0, r3
80023fe8:	e24bd008 	sub	sp, fp, #8
80023fec:	e8bd8810 	pop	{r4, fp, pc}
80023ff0:	800adb48 	.word	0x800adb48
80023ff4:	00811600 	.word	0x00811600

80023ff8 <namecmp>:
80023ff8:	e92d4800 	push	{fp, lr}
80023ffc:	e28db004 	add	fp, sp, #4
80024000:	e24dd008 	sub	sp, sp, #8
80024004:	e50b0008 	str	r0, [fp, #-8]
80024008:	e50b100c 	str	r1, [fp, #-12]
8002400c:	e3a0200e 	mov	r2, #14
80024010:	e51b100c 	ldr	r1, [fp, #-12]
80024014:	e51b0008 	ldr	r0, [fp, #-8]
80024018:	ebfff0b7 	bl	800202fc <strncmp>
8002401c:	e1a03000 	mov	r3, r0
80024020:	e1a00003 	mov	r0, r3
80024024:	e24bd004 	sub	sp, fp, #4
80024028:	e8bd8800 	pop	{fp, pc}

8002402c <dirlookup>:
8002402c:	e92d4800 	push	{fp, lr}
80024030:	e28db004 	add	fp, sp, #4
80024034:	e24dd028 	sub	sp, sp, #40	@ 0x28
80024038:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002403c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80024040:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80024044:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024048:	e1d331f0 	ldrsh	r3, [r3, #16]
8002404c:	e3530001 	cmp	r3, #1
80024050:	0a000001 	beq	8002405c <dirlookup+0x30>
80024054:	e59f00d0 	ldr	r0, [pc, #208]	@ 8002412c <dirlookup+0x100>
80024058:	ebfff6a5 	bl	80021af4 <panic>
8002405c:	e3a03000 	mov	r3, #0
80024060:	e50b3008 	str	r3, [fp, #-8]
80024064:	ea000027 	b	80024108 <dirlookup+0xdc>
80024068:	e24b101c 	sub	r1, fp, #28
8002406c:	e3a03010 	mov	r3, #16
80024070:	e51b2008 	ldr	r2, [fp, #-8]
80024074:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024078:	ebfffeda 	bl	80023be8 <readi>
8002407c:	e1a03000 	mov	r3, r0
80024080:	e3530010 	cmp	r3, #16
80024084:	0a000001 	beq	80024090 <dirlookup+0x64>
80024088:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024130 <dirlookup+0x104>
8002408c:	ebfff698 	bl	80021af4 <panic>
80024090:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80024094:	e3530000 	cmp	r3, #0
80024098:	0a000016 	beq	800240f8 <dirlookup+0xcc>
8002409c:	e24b301c 	sub	r3, fp, #28
800240a0:	e2833002 	add	r3, r3, #2
800240a4:	e1a01003 	mov	r1, r3
800240a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800240ac:	ebffffd1 	bl	80023ff8 <namecmp>
800240b0:	e1a03000 	mov	r3, r0
800240b4:	e3530000 	cmp	r3, #0
800240b8:	1a00000f 	bne	800240fc <dirlookup+0xd0>
800240bc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800240c0:	e3530000 	cmp	r3, #0
800240c4:	0a000002 	beq	800240d4 <dirlookup+0xa8>
800240c8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800240cc:	e51b2008 	ldr	r2, [fp, #-8]
800240d0:	e5832000 	str	r2, [r3]
800240d4:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
800240d8:	e50b300c 	str	r3, [fp, #-12]
800240dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800240e0:	e5933000 	ldr	r3, [r3]
800240e4:	e51b100c 	ldr	r1, [fp, #-12]
800240e8:	e1a00003 	mov	r0, r3
800240ec:	ebfffbe4 	bl	80023084 <iget>
800240f0:	e1a03000 	mov	r3, r0
800240f4:	ea000009 	b	80024120 <dirlookup+0xf4>
800240f8:	e1a00000 	nop			@ (mov r0, r0)
800240fc:	e51b3008 	ldr	r3, [fp, #-8]
80024100:	e2833010 	add	r3, r3, #16
80024104:	e50b3008 	str	r3, [fp, #-8]
80024108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002410c:	e5933018 	ldr	r3, [r3, #24]
80024110:	e51b2008 	ldr	r2, [fp, #-8]
80024114:	e1520003 	cmp	r2, r3
80024118:	3affffd2 	bcc	80024068 <dirlookup+0x3c>
8002411c:	e3a03000 	mov	r3, #0
80024120:	e1a00003 	mov	r0, r3
80024124:	e24bd004 	sub	sp, fp, #4
80024128:	e8bd8800 	pop	{fp, pc}
8002412c:	8002aed4 	.word	0x8002aed4
80024130:	8002aee8 	.word	0x8002aee8

80024134 <dirlink>:
80024134:	e92d4800 	push	{fp, lr}
80024138:	e28db004 	add	fp, sp, #4
8002413c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80024140:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80024144:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80024148:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002414c:	e3a02000 	mov	r2, #0
80024150:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80024154:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024158:	ebffffb3 	bl	8002402c <dirlookup>
8002415c:	e50b000c 	str	r0, [fp, #-12]
80024160:	e51b300c 	ldr	r3, [fp, #-12]
80024164:	e3530000 	cmp	r3, #0
80024168:	0a000003 	beq	8002417c <dirlink+0x48>
8002416c:	e51b000c 	ldr	r0, [fp, #-12]
80024170:	ebfffcab 	bl	80023424 <iput>
80024174:	e3e03000 	mvn	r3, #0
80024178:	ea00002d 	b	80024234 <dirlink+0x100>
8002417c:	e3a03000 	mov	r3, #0
80024180:	e50b3008 	str	r3, [fp, #-8]
80024184:	ea00000f 	b	800241c8 <dirlink+0x94>
80024188:	e51b2008 	ldr	r2, [fp, #-8]
8002418c:	e24b101c 	sub	r1, fp, #28
80024190:	e3a03010 	mov	r3, #16
80024194:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024198:	ebfffe92 	bl	80023be8 <readi>
8002419c:	e1a03000 	mov	r3, r0
800241a0:	e3530010 	cmp	r3, #16
800241a4:	0a000001 	beq	800241b0 <dirlink+0x7c>
800241a8:	e59f0090 	ldr	r0, [pc, #144]	@ 80024240 <dirlink+0x10c>
800241ac:	ebfff650 	bl	80021af4 <panic>
800241b0:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
800241b4:	e3530000 	cmp	r3, #0
800241b8:	0a000008 	beq	800241e0 <dirlink+0xac>
800241bc:	e51b3008 	ldr	r3, [fp, #-8]
800241c0:	e2833010 	add	r3, r3, #16
800241c4:	e50b3008 	str	r3, [fp, #-8]
800241c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800241cc:	e5932018 	ldr	r2, [r3, #24]
800241d0:	e51b3008 	ldr	r3, [fp, #-8]
800241d4:	e1520003 	cmp	r2, r3
800241d8:	8affffea 	bhi	80024188 <dirlink+0x54>
800241dc:	ea000000 	b	800241e4 <dirlink+0xb0>
800241e0:	e1a00000 	nop			@ (mov r0, r0)
800241e4:	e24b301c 	sub	r3, fp, #28
800241e8:	e2833002 	add	r3, r3, #2
800241ec:	e3a0200e 	mov	r2, #14
800241f0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
800241f4:	e1a00003 	mov	r0, r3
800241f8:	ebfff06b 	bl	800203ac <strncpy>
800241fc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80024200:	e6ff3073 	uxth	r3, r3
80024204:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80024208:	e51b2008 	ldr	r2, [fp, #-8]
8002420c:	e24b101c 	sub	r1, fp, #28
80024210:	e3a03010 	mov	r3, #16
80024214:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024218:	ebfffeed 	bl	80023dd4 <writei>
8002421c:	e1a03000 	mov	r3, r0
80024220:	e3530010 	cmp	r3, #16
80024224:	0a000001 	beq	80024230 <dirlink+0xfc>
80024228:	e59f0014 	ldr	r0, [pc, #20]	@ 80024244 <dirlink+0x110>
8002422c:	ebfff630 	bl	80021af4 <panic>
80024230:	e3a03000 	mov	r3, #0
80024234:	e1a00003 	mov	r0, r3
80024238:	e24bd004 	sub	sp, fp, #4
8002423c:	e8bd8800 	pop	{fp, pc}
80024240:	8002aee8 	.word	0x8002aee8
80024244:	8002aef8 	.word	0x8002aef8

80024248 <skipelem>:
80024248:	e92d4800 	push	{fp, lr}
8002424c:	e28db004 	add	fp, sp, #4
80024250:	e24dd010 	sub	sp, sp, #16
80024254:	e50b0010 	str	r0, [fp, #-16]
80024258:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002425c:	ea000002 	b	8002426c <skipelem+0x24>
80024260:	e51b3010 	ldr	r3, [fp, #-16]
80024264:	e2833001 	add	r3, r3, #1
80024268:	e50b3010 	str	r3, [fp, #-16]
8002426c:	e51b3010 	ldr	r3, [fp, #-16]
80024270:	e5d33000 	ldrb	r3, [r3]
80024274:	e353002f 	cmp	r3, #47	@ 0x2f
80024278:	0afffff8 	beq	80024260 <skipelem+0x18>
8002427c:	e51b3010 	ldr	r3, [fp, #-16]
80024280:	e5d33000 	ldrb	r3, [r3]
80024284:	e3530000 	cmp	r3, #0
80024288:	1a000001 	bne	80024294 <skipelem+0x4c>
8002428c:	e3a03000 	mov	r3, #0
80024290:	ea00002c 	b	80024348 <skipelem+0x100>
80024294:	e51b3010 	ldr	r3, [fp, #-16]
80024298:	e50b3008 	str	r3, [fp, #-8]
8002429c:	ea000002 	b	800242ac <skipelem+0x64>
800242a0:	e51b3010 	ldr	r3, [fp, #-16]
800242a4:	e2833001 	add	r3, r3, #1
800242a8:	e50b3010 	str	r3, [fp, #-16]
800242ac:	e51b3010 	ldr	r3, [fp, #-16]
800242b0:	e5d33000 	ldrb	r3, [r3]
800242b4:	e353002f 	cmp	r3, #47	@ 0x2f
800242b8:	0a000003 	beq	800242cc <skipelem+0x84>
800242bc:	e51b3010 	ldr	r3, [fp, #-16]
800242c0:	e5d33000 	ldrb	r3, [r3]
800242c4:	e3530000 	cmp	r3, #0
800242c8:	1afffff4 	bne	800242a0 <skipelem+0x58>
800242cc:	e51b2010 	ldr	r2, [fp, #-16]
800242d0:	e51b3008 	ldr	r3, [fp, #-8]
800242d4:	e0423003 	sub	r3, r2, r3
800242d8:	e50b300c 	str	r3, [fp, #-12]
800242dc:	e51b300c 	ldr	r3, [fp, #-12]
800242e0:	e353000d 	cmp	r3, #13
800242e4:	da000004 	ble	800242fc <skipelem+0xb4>
800242e8:	e3a0200e 	mov	r2, #14
800242ec:	e51b1008 	ldr	r1, [fp, #-8]
800242f0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800242f4:	ebffefb3 	bl	800201c8 <memmove>
800242f8:	ea00000d 	b	80024334 <skipelem+0xec>
800242fc:	e51b300c 	ldr	r3, [fp, #-12]
80024300:	e1a02003 	mov	r2, r3
80024304:	e51b1008 	ldr	r1, [fp, #-8]
80024308:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002430c:	ebffefad 	bl	800201c8 <memmove>
80024310:	e51b300c 	ldr	r3, [fp, #-12]
80024314:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024318:	e0823003 	add	r3, r2, r3
8002431c:	e3a02000 	mov	r2, #0
80024320:	e5c32000 	strb	r2, [r3]
80024324:	ea000002 	b	80024334 <skipelem+0xec>
80024328:	e51b3010 	ldr	r3, [fp, #-16]
8002432c:	e2833001 	add	r3, r3, #1
80024330:	e50b3010 	str	r3, [fp, #-16]
80024334:	e51b3010 	ldr	r3, [fp, #-16]
80024338:	e5d33000 	ldrb	r3, [r3]
8002433c:	e353002f 	cmp	r3, #47	@ 0x2f
80024340:	0afffff8 	beq	80024328 <skipelem+0xe0>
80024344:	e51b3010 	ldr	r3, [fp, #-16]
80024348:	e1a00003 	mov	r0, r3
8002434c:	e24bd004 	sub	sp, fp, #4
80024350:	e8bd8800 	pop	{fp, pc}

80024354 <namex>:
80024354:	e92d4800 	push	{fp, lr}
80024358:	e28db004 	add	fp, sp, #4
8002435c:	e24dd018 	sub	sp, sp, #24
80024360:	e50b0010 	str	r0, [fp, #-16]
80024364:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024368:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
8002436c:	e51b3010 	ldr	r3, [fp, #-16]
80024370:	e5d33000 	ldrb	r3, [r3]
80024374:	e353002f 	cmp	r3, #47	@ 0x2f
80024378:	1a000004 	bne	80024390 <namex+0x3c>
8002437c:	e3a01001 	mov	r1, #1
80024380:	e3a00001 	mov	r0, #1
80024384:	ebfffb3e 	bl	80023084 <iget>
80024388:	e50b0008 	str	r0, [fp, #-8]
8002438c:	ea00002b 	b	80024440 <namex+0xec>
80024390:	e59f30f0 	ldr	r3, [pc, #240]	@ 80024488 <namex+0x134>
80024394:	e5933000 	ldr	r3, [r3]
80024398:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002439c:	e1a00003 	mov	r0, r3
800243a0:	ebfffb87 	bl	800231c4 <idup>
800243a4:	e50b0008 	str	r0, [fp, #-8]
800243a8:	ea000024 	b	80024440 <namex+0xec>
800243ac:	e51b0008 	ldr	r0, [fp, #-8]
800243b0:	ebfffb95 	bl	8002320c <ilock>
800243b4:	e51b3008 	ldr	r3, [fp, #-8]
800243b8:	e1d331f0 	ldrsh	r3, [r3, #16]
800243bc:	e3530001 	cmp	r3, #1
800243c0:	0a000003 	beq	800243d4 <namex+0x80>
800243c4:	e51b0008 	ldr	r0, [fp, #-8]
800243c8:	ebfffc50 	bl	80023510 <iunlockput>
800243cc:	e3a03000 	mov	r3, #0
800243d0:	ea000029 	b	8002447c <namex+0x128>
800243d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800243d8:	e3530000 	cmp	r3, #0
800243dc:	0a000007 	beq	80024400 <namex+0xac>
800243e0:	e51b3010 	ldr	r3, [fp, #-16]
800243e4:	e5d33000 	ldrb	r3, [r3]
800243e8:	e3530000 	cmp	r3, #0
800243ec:	1a000003 	bne	80024400 <namex+0xac>
800243f0:	e51b0008 	ldr	r0, [fp, #-8]
800243f4:	ebfffbe8 	bl	8002339c <iunlock>
800243f8:	e51b3008 	ldr	r3, [fp, #-8]
800243fc:	ea00001e 	b	8002447c <namex+0x128>
80024400:	e3a02000 	mov	r2, #0
80024404:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024408:	e51b0008 	ldr	r0, [fp, #-8]
8002440c:	ebffff06 	bl	8002402c <dirlookup>
80024410:	e50b000c 	str	r0, [fp, #-12]
80024414:	e51b300c 	ldr	r3, [fp, #-12]
80024418:	e3530000 	cmp	r3, #0
8002441c:	1a000003 	bne	80024430 <namex+0xdc>
80024420:	e51b0008 	ldr	r0, [fp, #-8]
80024424:	ebfffc39 	bl	80023510 <iunlockput>
80024428:	e3a03000 	mov	r3, #0
8002442c:	ea000012 	b	8002447c <namex+0x128>
80024430:	e51b0008 	ldr	r0, [fp, #-8]
80024434:	ebfffc35 	bl	80023510 <iunlockput>
80024438:	e51b300c 	ldr	r3, [fp, #-12]
8002443c:	e50b3008 	str	r3, [fp, #-8]
80024440:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024444:	e51b0010 	ldr	r0, [fp, #-16]
80024448:	ebffff7e 	bl	80024248 <skipelem>
8002444c:	e50b0010 	str	r0, [fp, #-16]
80024450:	e51b3010 	ldr	r3, [fp, #-16]
80024454:	e3530000 	cmp	r3, #0
80024458:	1affffd3 	bne	800243ac <namex+0x58>
8002445c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024460:	e3530000 	cmp	r3, #0
80024464:	0a000003 	beq	80024478 <namex+0x124>
80024468:	e51b0008 	ldr	r0, [fp, #-8]
8002446c:	ebfffbec 	bl	80023424 <iput>
80024470:	e3a03000 	mov	r3, #0
80024474:	ea000000 	b	8002447c <namex+0x128>
80024478:	e51b3008 	ldr	r3, [fp, #-8]
8002447c:	e1a00003 	mov	r0, r3
80024480:	e24bd004 	sub	sp, fp, #4
80024484:	e8bd8800 	pop	{fp, pc}
80024488:	800b1ed0 	.word	0x800b1ed0

8002448c <namei>:
8002448c:	e92d4800 	push	{fp, lr}
80024490:	e28db004 	add	fp, sp, #4
80024494:	e24dd018 	sub	sp, sp, #24
80024498:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002449c:	e24b3014 	sub	r3, fp, #20
800244a0:	e1a02003 	mov	r2, r3
800244a4:	e3a01000 	mov	r1, #0
800244a8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800244ac:	ebffffa8 	bl	80024354 <namex>
800244b0:	e1a03000 	mov	r3, r0
800244b4:	e1a00003 	mov	r0, r3
800244b8:	e24bd004 	sub	sp, fp, #4
800244bc:	e8bd8800 	pop	{fp, pc}

800244c0 <nameiparent>:
800244c0:	e92d4800 	push	{fp, lr}
800244c4:	e28db004 	add	fp, sp, #4
800244c8:	e24dd008 	sub	sp, sp, #8
800244cc:	e50b0008 	str	r0, [fp, #-8]
800244d0:	e50b100c 	str	r1, [fp, #-12]
800244d4:	e51b200c 	ldr	r2, [fp, #-12]
800244d8:	e3a01001 	mov	r1, #1
800244dc:	e51b0008 	ldr	r0, [fp, #-8]
800244e0:	ebffff9b 	bl	80024354 <namex>
800244e4:	e1a03000 	mov	r3, r0
800244e8:	e1a00003 	mov	r0, r3
800244ec:	e24bd004 	sub	sp, fp, #4
800244f0:	e8bd8800 	pop	{fp, pc}

800244f4 <symlink_write_target>:
800244f4:	e92d4800 	push	{fp, lr}
800244f8:	e28db004 	add	fp, sp, #4
800244fc:	e24dd010 	sub	sp, sp, #16
80024500:	e50b0010 	str	r0, [fp, #-16]
80024504:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024508:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002450c:	ebffeff6 	bl	800204ec <strlen>
80024510:	e50b0008 	str	r0, [fp, #-8]
80024514:	e51b3008 	ldr	r3, [fp, #-8]
80024518:	e59f204c 	ldr	r2, [pc, #76]	@ 8002456c <symlink_write_target+0x78>
8002451c:	e1530002 	cmp	r3, r2
80024520:	9a000001 	bls	8002452c <symlink_write_target+0x38>
80024524:	e3e03000 	mvn	r3, #0
80024528:	ea00000c 	b	80024560 <symlink_write_target+0x6c>
8002452c:	e51b3008 	ldr	r3, [fp, #-8]
80024530:	e3a02000 	mov	r2, #0
80024534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024538:	e51b0010 	ldr	r0, [fp, #-16]
8002453c:	ebfffe24 	bl	80023dd4 <writei>
80024540:	e50b000c 	str	r0, [fp, #-12]
80024544:	e51b200c 	ldr	r2, [fp, #-12]
80024548:	e51b3008 	ldr	r3, [fp, #-8]
8002454c:	e1520003 	cmp	r2, r3
80024550:	0a000001 	beq	8002455c <symlink_write_target+0x68>
80024554:	e3e03000 	mvn	r3, #0
80024558:	ea000000 	b	80024560 <symlink_write_target+0x6c>
8002455c:	e3a03000 	mov	r3, #0
80024560:	e1a00003 	mov	r0, r3
80024564:	e24bd004 	sub	sp, fp, #4
80024568:	e8bd8800 	pop	{fp, pc}
8002456c:	00811600 	.word	0x00811600

80024570 <initlog>:
80024570:	e92d4800 	push	{fp, lr}
80024574:	e28db004 	add	fp, sp, #4
80024578:	e24dd010 	sub	sp, sp, #16
8002457c:	e59f1058 	ldr	r1, [pc, #88]	@ 800245dc <initlog+0x6c>
80024580:	e59f0058 	ldr	r0, [pc, #88]	@ 800245e0 <initlog+0x70>
80024584:	eb00098b 	bl	80026bb8 <initlock>
80024588:	e24b3014 	sub	r3, fp, #20
8002458c:	e1a01003 	mov	r1, r3
80024590:	e3a00001 	mov	r0, #1
80024594:	ebfff950 	bl	80022adc <readsb>
80024598:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002459c:	e51b3008 	ldr	r3, [fp, #-8]
800245a0:	e0423003 	sub	r3, r2, r3
800245a4:	e1a02003 	mov	r2, r3
800245a8:	e59f3030 	ldr	r3, [pc, #48]	@ 800245e0 <initlog+0x70>
800245ac:	e5832034 	str	r2, [r3, #52]	@ 0x34
800245b0:	e51b3008 	ldr	r3, [fp, #-8]
800245b4:	e1a02003 	mov	r2, r3
800245b8:	e59f3020 	ldr	r3, [pc, #32]	@ 800245e0 <initlog+0x70>
800245bc:	e5832038 	str	r2, [r3, #56]	@ 0x38
800245c0:	e59f3018 	ldr	r3, [pc, #24]	@ 800245e0 <initlog+0x70>
800245c4:	e3a02001 	mov	r2, #1
800245c8:	e5832040 	str	r2, [r3, #64]	@ 0x40
800245cc:	eb00009b 	bl	80024840 <recover_from_log>
800245d0:	e1a00000 	nop			@ (mov r0, r0)
800245d4:	e24bd004 	sub	sp, fp, #4
800245d8:	e8bd8800 	pop	{fp, pc}
800245dc:	8002af00 	.word	0x8002af00
800245e0:	800af438 	.word	0x800af438

800245e4 <install_trans>:
800245e4:	e92d4800 	push	{fp, lr}
800245e8:	e28db004 	add	fp, sp, #4
800245ec:	e24dd010 	sub	sp, sp, #16
800245f0:	e3a03000 	mov	r3, #0
800245f4:	e50b3008 	str	r3, [fp, #-8]
800245f8:	ea000026 	b	80024698 <install_trans+0xb4>
800245fc:	e59f30b8 	ldr	r3, [pc, #184]	@ 800246bc <install_trans+0xd8>
80024600:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024604:	e1a00003 	mov	r0, r3
80024608:	e59f30ac 	ldr	r3, [pc, #172]	@ 800246bc <install_trans+0xd8>
8002460c:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024610:	e51b3008 	ldr	r3, [fp, #-8]
80024614:	e0823003 	add	r3, r2, r3
80024618:	e2833001 	add	r3, r3, #1
8002461c:	e1a01003 	mov	r1, r3
80024620:	ebfff13b 	bl	80020b14 <bread>
80024624:	e50b000c 	str	r0, [fp, #-12]
80024628:	e59f308c 	ldr	r3, [pc, #140]	@ 800246bc <install_trans+0xd8>
8002462c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024630:	e1a00003 	mov	r0, r3
80024634:	e59f2080 	ldr	r2, [pc, #128]	@ 800246bc <install_trans+0xd8>
80024638:	e51b3008 	ldr	r3, [fp, #-8]
8002463c:	e2833010 	add	r3, r3, #16
80024640:	e1a03103 	lsl	r3, r3, #2
80024644:	e0823003 	add	r3, r2, r3
80024648:	e5933008 	ldr	r3, [r3, #8]
8002464c:	e1a01003 	mov	r1, r3
80024650:	ebfff12f 	bl	80020b14 <bread>
80024654:	e50b0010 	str	r0, [fp, #-16]
80024658:	e51b3010 	ldr	r3, [fp, #-16]
8002465c:	e2830018 	add	r0, r3, #24
80024660:	e51b300c 	ldr	r3, [fp, #-12]
80024664:	e2833018 	add	r3, r3, #24
80024668:	e3a02c02 	mov	r2, #512	@ 0x200
8002466c:	e1a01003 	mov	r1, r3
80024670:	ebffeed4 	bl	800201c8 <memmove>
80024674:	e51b0010 	ldr	r0, [fp, #-16]
80024678:	ebfff139 	bl	80020b64 <bwrite>
8002467c:	e51b000c 	ldr	r0, [fp, #-12]
80024680:	ebfff14d 	bl	80020bbc <brelse>
80024684:	e51b0010 	ldr	r0, [fp, #-16]
80024688:	ebfff14b 	bl	80020bbc <brelse>
8002468c:	e51b3008 	ldr	r3, [fp, #-8]
80024690:	e2833001 	add	r3, r3, #1
80024694:	e50b3008 	str	r3, [fp, #-8]
80024698:	e59f301c 	ldr	r3, [pc, #28]	@ 800246bc <install_trans+0xd8>
8002469c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246a0:	e51b2008 	ldr	r2, [fp, #-8]
800246a4:	e1520003 	cmp	r2, r3
800246a8:	baffffd3 	blt	800245fc <install_trans+0x18>
800246ac:	e1a00000 	nop			@ (mov r0, r0)
800246b0:	e1a00000 	nop			@ (mov r0, r0)
800246b4:	e24bd004 	sub	sp, fp, #4
800246b8:	e8bd8800 	pop	{fp, pc}
800246bc:	800af438 	.word	0x800af438

800246c0 <read_head>:
800246c0:	e92d4800 	push	{fp, lr}
800246c4:	e28db004 	add	fp, sp, #4
800246c8:	e24dd010 	sub	sp, sp, #16
800246cc:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024778 <read_head+0xb8>
800246d0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800246d4:	e1a02003 	mov	r2, r3
800246d8:	e59f3098 	ldr	r3, [pc, #152]	@ 80024778 <read_head+0xb8>
800246dc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800246e0:	e1a01003 	mov	r1, r3
800246e4:	e1a00002 	mov	r0, r2
800246e8:	ebfff109 	bl	80020b14 <bread>
800246ec:	e50b000c 	str	r0, [fp, #-12]
800246f0:	e51b300c 	ldr	r3, [fp, #-12]
800246f4:	e2833018 	add	r3, r3, #24
800246f8:	e50b3010 	str	r3, [fp, #-16]
800246fc:	e51b3010 	ldr	r3, [fp, #-16]
80024700:	e5933000 	ldr	r3, [r3]
80024704:	e59f206c 	ldr	r2, [pc, #108]	@ 80024778 <read_head+0xb8>
80024708:	e5823044 	str	r3, [r2, #68]	@ 0x44
8002470c:	e3a03000 	mov	r3, #0
80024710:	e50b3008 	str	r3, [fp, #-8]
80024714:	ea00000d 	b	80024750 <read_head+0x90>
80024718:	e51b2010 	ldr	r2, [fp, #-16]
8002471c:	e51b3008 	ldr	r3, [fp, #-8]
80024720:	e1a03103 	lsl	r3, r3, #2
80024724:	e0823003 	add	r3, r2, r3
80024728:	e5932004 	ldr	r2, [r3, #4]
8002472c:	e59f1044 	ldr	r1, [pc, #68]	@ 80024778 <read_head+0xb8>
80024730:	e51b3008 	ldr	r3, [fp, #-8]
80024734:	e2833010 	add	r3, r3, #16
80024738:	e1a03103 	lsl	r3, r3, #2
8002473c:	e0813003 	add	r3, r1, r3
80024740:	e5832008 	str	r2, [r3, #8]
80024744:	e51b3008 	ldr	r3, [fp, #-8]
80024748:	e2833001 	add	r3, r3, #1
8002474c:	e50b3008 	str	r3, [fp, #-8]
80024750:	e59f3020 	ldr	r3, [pc, #32]	@ 80024778 <read_head+0xb8>
80024754:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024758:	e51b2008 	ldr	r2, [fp, #-8]
8002475c:	e1520003 	cmp	r2, r3
80024760:	baffffec 	blt	80024718 <read_head+0x58>
80024764:	e51b000c 	ldr	r0, [fp, #-12]
80024768:	ebfff113 	bl	80020bbc <brelse>
8002476c:	e1a00000 	nop			@ (mov r0, r0)
80024770:	e24bd004 	sub	sp, fp, #4
80024774:	e8bd8800 	pop	{fp, pc}
80024778:	800af438 	.word	0x800af438

8002477c <write_head>:
8002477c:	e92d4800 	push	{fp, lr}
80024780:	e28db004 	add	fp, sp, #4
80024784:	e24dd010 	sub	sp, sp, #16
80024788:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002483c <write_head+0xc0>
8002478c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024790:	e1a02003 	mov	r2, r3
80024794:	e59f30a0 	ldr	r3, [pc, #160]	@ 8002483c <write_head+0xc0>
80024798:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002479c:	e1a01003 	mov	r1, r3
800247a0:	e1a00002 	mov	r0, r2
800247a4:	ebfff0da 	bl	80020b14 <bread>
800247a8:	e50b000c 	str	r0, [fp, #-12]
800247ac:	e51b300c 	ldr	r3, [fp, #-12]
800247b0:	e2833018 	add	r3, r3, #24
800247b4:	e50b3010 	str	r3, [fp, #-16]
800247b8:	e59f307c 	ldr	r3, [pc, #124]	@ 8002483c <write_head+0xc0>
800247bc:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800247c0:	e51b3010 	ldr	r3, [fp, #-16]
800247c4:	e5832000 	str	r2, [r3]
800247c8:	e3a03000 	mov	r3, #0
800247cc:	e50b3008 	str	r3, [fp, #-8]
800247d0:	ea00000d 	b	8002480c <write_head+0x90>
800247d4:	e59f2060 	ldr	r2, [pc, #96]	@ 8002483c <write_head+0xc0>
800247d8:	e51b3008 	ldr	r3, [fp, #-8]
800247dc:	e2833010 	add	r3, r3, #16
800247e0:	e1a03103 	lsl	r3, r3, #2
800247e4:	e0823003 	add	r3, r2, r3
800247e8:	e5932008 	ldr	r2, [r3, #8]
800247ec:	e51b1010 	ldr	r1, [fp, #-16]
800247f0:	e51b3008 	ldr	r3, [fp, #-8]
800247f4:	e1a03103 	lsl	r3, r3, #2
800247f8:	e0813003 	add	r3, r1, r3
800247fc:	e5832004 	str	r2, [r3, #4]
80024800:	e51b3008 	ldr	r3, [fp, #-8]
80024804:	e2833001 	add	r3, r3, #1
80024808:	e50b3008 	str	r3, [fp, #-8]
8002480c:	e59f3028 	ldr	r3, [pc, #40]	@ 8002483c <write_head+0xc0>
80024810:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024814:	e51b2008 	ldr	r2, [fp, #-8]
80024818:	e1520003 	cmp	r2, r3
8002481c:	baffffec 	blt	800247d4 <write_head+0x58>
80024820:	e51b000c 	ldr	r0, [fp, #-12]
80024824:	ebfff0ce 	bl	80020b64 <bwrite>
80024828:	e51b000c 	ldr	r0, [fp, #-12]
8002482c:	ebfff0e2 	bl	80020bbc <brelse>
80024830:	e1a00000 	nop			@ (mov r0, r0)
80024834:	e24bd004 	sub	sp, fp, #4
80024838:	e8bd8800 	pop	{fp, pc}
8002483c:	800af438 	.word	0x800af438

80024840 <recover_from_log>:
80024840:	e92d4800 	push	{fp, lr}
80024844:	e28db004 	add	fp, sp, #4
80024848:	ebffff9c 	bl	800246c0 <read_head>
8002484c:	ebffff64 	bl	800245e4 <install_trans>
80024850:	e59f3010 	ldr	r3, [pc, #16]	@ 80024868 <recover_from_log+0x28>
80024854:	e3a02000 	mov	r2, #0
80024858:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002485c:	ebffffc6 	bl	8002477c <write_head>
80024860:	e1a00000 	nop			@ (mov r0, r0)
80024864:	e8bd8800 	pop	{fp, pc}
80024868:	800af438 	.word	0x800af438

8002486c <begin_trans>:
8002486c:	e92d4800 	push	{fp, lr}
80024870:	e28db004 	add	fp, sp, #4
80024874:	e59f003c 	ldr	r0, [pc, #60]	@ 800248b8 <begin_trans+0x4c>
80024878:	eb0008e0 	bl	80026c00 <acquire>
8002487c:	ea000002 	b	8002488c <begin_trans+0x20>
80024880:	e59f1030 	ldr	r1, [pc, #48]	@ 800248b8 <begin_trans+0x4c>
80024884:	e59f002c 	ldr	r0, [pc, #44]	@ 800248b8 <begin_trans+0x4c>
80024888:	eb0005fa 	bl	80026078 <sleep>
8002488c:	e59f3024 	ldr	r3, [pc, #36]	@ 800248b8 <begin_trans+0x4c>
80024890:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024894:	e3530000 	cmp	r3, #0
80024898:	1afffff8 	bne	80024880 <begin_trans+0x14>
8002489c:	e59f3014 	ldr	r3, [pc, #20]	@ 800248b8 <begin_trans+0x4c>
800248a0:	e3a02001 	mov	r2, #1
800248a4:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800248a8:	e59f0008 	ldr	r0, [pc, #8]	@ 800248b8 <begin_trans+0x4c>
800248ac:	eb0008de 	bl	80026c2c <release>
800248b0:	e1a00000 	nop			@ (mov r0, r0)
800248b4:	e8bd8800 	pop	{fp, pc}
800248b8:	800af438 	.word	0x800af438

800248bc <commit_trans>:
800248bc:	e92d4800 	push	{fp, lr}
800248c0:	e28db004 	add	fp, sp, #4
800248c4:	e59f304c 	ldr	r3, [pc, #76]	@ 80024918 <commit_trans+0x5c>
800248c8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800248cc:	e3530000 	cmp	r3, #0
800248d0:	da000005 	ble	800248ec <commit_trans+0x30>
800248d4:	ebffffa8 	bl	8002477c <write_head>
800248d8:	ebffff41 	bl	800245e4 <install_trans>
800248dc:	e59f3034 	ldr	r3, [pc, #52]	@ 80024918 <commit_trans+0x5c>
800248e0:	e3a02000 	mov	r2, #0
800248e4:	e5832044 	str	r2, [r3, #68]	@ 0x44
800248e8:	ebffffa3 	bl	8002477c <write_head>
800248ec:	e59f0024 	ldr	r0, [pc, #36]	@ 80024918 <commit_trans+0x5c>
800248f0:	eb0008c2 	bl	80026c00 <acquire>
800248f4:	e59f301c 	ldr	r3, [pc, #28]	@ 80024918 <commit_trans+0x5c>
800248f8:	e3a02000 	mov	r2, #0
800248fc:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024900:	e59f0010 	ldr	r0, [pc, #16]	@ 80024918 <commit_trans+0x5c>
80024904:	eb00064f 	bl	80026248 <wakeup>
80024908:	e59f0008 	ldr	r0, [pc, #8]	@ 80024918 <commit_trans+0x5c>
8002490c:	eb0008c6 	bl	80026c2c <release>
80024910:	e1a00000 	nop			@ (mov r0, r0)
80024914:	e8bd8800 	pop	{fp, pc}
80024918:	800af438 	.word	0x800af438

8002491c <log_write>:
8002491c:	e92d4800 	push	{fp, lr}
80024920:	e28db004 	add	fp, sp, #4
80024924:	e24dd010 	sub	sp, sp, #16
80024928:	e50b0010 	str	r0, [fp, #-16]
8002492c:	e59f3164 	ldr	r3, [pc, #356]	@ 80024a98 <log_write+0x17c>
80024930:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024934:	e3530009 	cmp	r3, #9
80024938:	ca000006 	bgt	80024958 <log_write+0x3c>
8002493c:	e59f3154 	ldr	r3, [pc, #340]	@ 80024a98 <log_write+0x17c>
80024940:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024944:	e59f314c 	ldr	r3, [pc, #332]	@ 80024a98 <log_write+0x17c>
80024948:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002494c:	e2433001 	sub	r3, r3, #1
80024950:	e1520003 	cmp	r2, r3
80024954:	ba000001 	blt	80024960 <log_write+0x44>
80024958:	e59f013c 	ldr	r0, [pc, #316]	@ 80024a9c <log_write+0x180>
8002495c:	ebfff464 	bl	80021af4 <panic>
80024960:	e59f3130 	ldr	r3, [pc, #304]	@ 80024a98 <log_write+0x17c>
80024964:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024968:	e3530000 	cmp	r3, #0
8002496c:	1a000001 	bne	80024978 <log_write+0x5c>
80024970:	e59f0128 	ldr	r0, [pc, #296]	@ 80024aa0 <log_write+0x184>
80024974:	ebfff45e 	bl	80021af4 <panic>
80024978:	e3a03000 	mov	r3, #0
8002497c:	e50b3008 	str	r3, [fp, #-8]
80024980:	ea00000d 	b	800249bc <log_write+0xa0>
80024984:	e59f210c 	ldr	r2, [pc, #268]	@ 80024a98 <log_write+0x17c>
80024988:	e51b3008 	ldr	r3, [fp, #-8]
8002498c:	e2833010 	add	r3, r3, #16
80024990:	e1a03103 	lsl	r3, r3, #2
80024994:	e0823003 	add	r3, r2, r3
80024998:	e5933008 	ldr	r3, [r3, #8]
8002499c:	e1a02003 	mov	r2, r3
800249a0:	e51b3010 	ldr	r3, [fp, #-16]
800249a4:	e5933008 	ldr	r3, [r3, #8]
800249a8:	e1520003 	cmp	r2, r3
800249ac:	0a000008 	beq	800249d4 <log_write+0xb8>
800249b0:	e51b3008 	ldr	r3, [fp, #-8]
800249b4:	e2833001 	add	r3, r3, #1
800249b8:	e50b3008 	str	r3, [fp, #-8]
800249bc:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024a98 <log_write+0x17c>
800249c0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800249c4:	e51b2008 	ldr	r2, [fp, #-8]
800249c8:	e1520003 	cmp	r2, r3
800249cc:	baffffec 	blt	80024984 <log_write+0x68>
800249d0:	ea000000 	b	800249d8 <log_write+0xbc>
800249d4:	e1a00000 	nop			@ (mov r0, r0)
800249d8:	e51b3010 	ldr	r3, [fp, #-16]
800249dc:	e5933008 	ldr	r3, [r3, #8]
800249e0:	e1a01003 	mov	r1, r3
800249e4:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024a98 <log_write+0x17c>
800249e8:	e51b3008 	ldr	r3, [fp, #-8]
800249ec:	e2833010 	add	r3, r3, #16
800249f0:	e1a03103 	lsl	r3, r3, #2
800249f4:	e0823003 	add	r3, r2, r3
800249f8:	e5831008 	str	r1, [r3, #8]
800249fc:	e51b3010 	ldr	r3, [fp, #-16]
80024a00:	e5930004 	ldr	r0, [r3, #4]
80024a04:	e59f308c 	ldr	r3, [pc, #140]	@ 80024a98 <log_write+0x17c>
80024a08:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024a0c:	e51b3008 	ldr	r3, [fp, #-8]
80024a10:	e0823003 	add	r3, r2, r3
80024a14:	e2833001 	add	r3, r3, #1
80024a18:	e1a01003 	mov	r1, r3
80024a1c:	ebfff03c 	bl	80020b14 <bread>
80024a20:	e50b000c 	str	r0, [fp, #-12]
80024a24:	e51b300c 	ldr	r3, [fp, #-12]
80024a28:	e2830018 	add	r0, r3, #24
80024a2c:	e51b3010 	ldr	r3, [fp, #-16]
80024a30:	e2833018 	add	r3, r3, #24
80024a34:	e3a02c02 	mov	r2, #512	@ 0x200
80024a38:	e1a01003 	mov	r1, r3
80024a3c:	ebffede1 	bl	800201c8 <memmove>
80024a40:	e51b000c 	ldr	r0, [fp, #-12]
80024a44:	ebfff046 	bl	80020b64 <bwrite>
80024a48:	e51b000c 	ldr	r0, [fp, #-12]
80024a4c:	ebfff05a 	bl	80020bbc <brelse>
80024a50:	e59f3040 	ldr	r3, [pc, #64]	@ 80024a98 <log_write+0x17c>
80024a54:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024a58:	e51b2008 	ldr	r2, [fp, #-8]
80024a5c:	e1520003 	cmp	r2, r3
80024a60:	1a000004 	bne	80024a78 <log_write+0x15c>
80024a64:	e59f302c 	ldr	r3, [pc, #44]	@ 80024a98 <log_write+0x17c>
80024a68:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024a6c:	e2833001 	add	r3, r3, #1
80024a70:	e59f2020 	ldr	r2, [pc, #32]	@ 80024a98 <log_write+0x17c>
80024a74:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024a78:	e51b3010 	ldr	r3, [fp, #-16]
80024a7c:	e5933000 	ldr	r3, [r3]
80024a80:	e3832004 	orr	r2, r3, #4
80024a84:	e51b3010 	ldr	r3, [fp, #-16]
80024a88:	e5832000 	str	r2, [r3]
80024a8c:	e1a00000 	nop			@ (mov r0, r0)
80024a90:	e24bd004 	sub	sp, fp, #4
80024a94:	e8bd8800 	pop	{fp, pc}
80024a98:	800af438 	.word	0x800af438
80024a9c:	8002af04 	.word	0x8002af04
80024aa0:	8002af1c 	.word	0x8002af1c

80024aa4 <kmain>:
80024aa4:	e92d4800 	push	{fp, lr}
80024aa8:	e28db004 	add	fp, sp, #4
80024aac:	e24dd008 	sub	sp, sp, #8
80024ab0:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024b5c <kmain+0xb8>
80024ab4:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024b60 <kmain+0xbc>
80024ab8:	e5832000 	str	r2, [r3]
80024abc:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024b64 <kmain+0xc0>
80024ac0:	eb00175b 	bl	8002a834 <uart_init>
80024ac4:	e59f309c 	ldr	r3, [pc, #156]	@ 80024b68 <kmain+0xc4>
80024ac8:	e50b3008 	str	r3, [fp, #-8]
80024acc:	eb001330 	bl	80029794 <init_vmm>
80024ad0:	e59f3094 	ldr	r3, [pc, #148]	@ 80024b6c <kmain+0xc8>
80024ad4:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024ad8:	e2833003 	add	r3, r3, #3
80024adc:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024ae0:	e3c33003 	bic	r3, r3, #3
80024ae4:	e51b1008 	ldr	r1, [fp, #-8]
80024ae8:	e1a00003 	mov	r0, r3
80024aec:	eb00135c 	bl	80029864 <kpt_freerange>
80024af0:	e51b3008 	ldr	r3, [fp, #-8]
80024af4:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024af8:	e59f1070 	ldr	r1, [pc, #112]	@ 80024b70 <kmain+0xcc>
80024afc:	e1a00003 	mov	r0, r3
80024b00:	eb001357 	bl	80029864 <kpt_freerange>
80024b04:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024b08:	e3a00601 	mov	r0, #1048576	@ 0x100000
80024b0c:	eb0015ff 	bl	8002a310 <paging_init>
80024b10:	ebfff0a8 	bl	80020db8 <kmem_init>
80024b14:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024b18:	e59f0050 	ldr	r0, [pc, #80]	@ 80024b70 <kmain+0xcc>
80024b1c:	ebfff0ae 	bl	80020ddc <kmem_init2>
80024b20:	eb001229 	bl	800293cc <trap_init>
80024b24:	e59f0048 	ldr	r0, [pc, #72]	@ 80024b74 <kmain+0xd0>
80024b28:	eb00165d 	bl	8002a4a4 <pic_init>
80024b2c:	eb001771 	bl	8002a8f8 <uart_enable_rx>
80024b30:	ebfff53d 	bl	8002202c <consoleinit>
80024b34:	eb0001ca 	bl	80025264 <pinit>
80024b38:	ebffef64 	bl	800208d0 <binit>
80024b3c:	ebfff6a2 	bl	800225cc <fileinit>
80024b40:	ebfff8ce 	bl	80022e80 <iinit>
80024b44:	eb00000b 	bl	80024b78 <ideinit>
80024b48:	e3a0000a 	mov	r0, #10
80024b4c:	eb0016e7 	bl	8002a6f0 <timer_init>
80024b50:	ebffee88 	bl	80020578 <sti>
80024b54:	eb0002e1 	bl	800256e0 <userinit>
80024b58:	eb000497 	bl	80025dbc <scheduler>
80024b5c:	800af588 	.word	0x800af588
80024b60:	800af4a8 	.word	0x800af4a8
80024b64:	901f1000 	.word	0x901f1000
80024b68:	800f0000 	.word	0x800f0000
80024b6c:	800b3000 	.word	0x800b3000
80024b70:	80100000 	.word	0x80100000
80024b74:	90140000 	.word	0x90140000

80024b78 <ideinit>:
80024b78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024b7c:	e28db000 	add	fp, sp, #0
80024b80:	e59f3028 	ldr	r3, [pc, #40]	@ 80024bb0 <ideinit+0x38>
80024b84:	e59f2028 	ldr	r2, [pc, #40]	@ 80024bb4 <ideinit+0x3c>
80024b88:	e5832000 	str	r2, [r3]
80024b8c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024bb8 <ideinit+0x40>
80024b90:	e1a034a3 	lsr	r3, r3, #9
80024b94:	e1a02003 	mov	r2, r3
80024b98:	e59f301c 	ldr	r3, [pc, #28]	@ 80024bbc <ideinit+0x44>
80024b9c:	e5832000 	str	r2, [r3]
80024ba0:	e1a00000 	nop			@ (mov r0, r0)
80024ba4:	e28bd000 	add	sp, fp, #0
80024ba8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024bac:	e12fff1e 	bx	lr
80024bb0:	800af590 	.word	0x800af590
80024bb4:	8002c118 	.word	0x8002c118
80024bb8:	00080000 	.word	0x00080000
80024bbc:	800af58c 	.word	0x800af58c

80024bc0 <ideintr>:
80024bc0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024bc4:	e28db000 	add	fp, sp, #0
80024bc8:	e1a00000 	nop			@ (mov r0, r0)
80024bcc:	e28bd000 	add	sp, fp, #0
80024bd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024bd4:	e12fff1e 	bx	lr

80024bd8 <iderw>:
80024bd8:	e92d4800 	push	{fp, lr}
80024bdc:	e28db004 	add	fp, sp, #4
80024be0:	e24dd010 	sub	sp, sp, #16
80024be4:	e50b0010 	str	r0, [fp, #-16]
80024be8:	e51b3010 	ldr	r3, [fp, #-16]
80024bec:	e5933000 	ldr	r3, [r3]
80024bf0:	e2033001 	and	r3, r3, #1
80024bf4:	e3530000 	cmp	r3, #0
80024bf8:	1a000001 	bne	80024c04 <iderw+0x2c>
80024bfc:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024cf0 <iderw+0x118>
80024c00:	ebfff3bb 	bl	80021af4 <panic>
80024c04:	e51b3010 	ldr	r3, [fp, #-16]
80024c08:	e5933000 	ldr	r3, [r3]
80024c0c:	e2033006 	and	r3, r3, #6
80024c10:	e3530002 	cmp	r3, #2
80024c14:	1a000001 	bne	80024c20 <iderw+0x48>
80024c18:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024cf4 <iderw+0x11c>
80024c1c:	ebfff3b4 	bl	80021af4 <panic>
80024c20:	e51b3010 	ldr	r3, [fp, #-16]
80024c24:	e5933004 	ldr	r3, [r3, #4]
80024c28:	e3530001 	cmp	r3, #1
80024c2c:	0a000001 	beq	80024c38 <iderw+0x60>
80024c30:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024cf8 <iderw+0x120>
80024c34:	ebfff3ae 	bl	80021af4 <panic>
80024c38:	e51b3010 	ldr	r3, [fp, #-16]
80024c3c:	e5933008 	ldr	r3, [r3, #8]
80024c40:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024cfc <iderw+0x124>
80024c44:	e5922000 	ldr	r2, [r2]
80024c48:	e1530002 	cmp	r3, r2
80024c4c:	3a000001 	bcc	80024c58 <iderw+0x80>
80024c50:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024d00 <iderw+0x128>
80024c54:	ebfff3a6 	bl	80021af4 <panic>
80024c58:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024d04 <iderw+0x12c>
80024c5c:	e5932000 	ldr	r2, [r3]
80024c60:	e51b3010 	ldr	r3, [fp, #-16]
80024c64:	e5933008 	ldr	r3, [r3, #8]
80024c68:	e1a03483 	lsl	r3, r3, #9
80024c6c:	e0823003 	add	r3, r2, r3
80024c70:	e50b3008 	str	r3, [fp, #-8]
80024c74:	e51b3010 	ldr	r3, [fp, #-16]
80024c78:	e5933000 	ldr	r3, [r3]
80024c7c:	e2033004 	and	r3, r3, #4
80024c80:	e3530000 	cmp	r3, #0
80024c84:	0a00000b 	beq	80024cb8 <iderw+0xe0>
80024c88:	e51b3010 	ldr	r3, [fp, #-16]
80024c8c:	e5933000 	ldr	r3, [r3]
80024c90:	e3c32004 	bic	r2, r3, #4
80024c94:	e51b3010 	ldr	r3, [fp, #-16]
80024c98:	e5832000 	str	r2, [r3]
80024c9c:	e51b3010 	ldr	r3, [fp, #-16]
80024ca0:	e2833018 	add	r3, r3, #24
80024ca4:	e3a02c02 	mov	r2, #512	@ 0x200
80024ca8:	e1a01003 	mov	r1, r3
80024cac:	e51b0008 	ldr	r0, [fp, #-8]
80024cb0:	ebffed44 	bl	800201c8 <memmove>
80024cb4:	ea000005 	b	80024cd0 <iderw+0xf8>
80024cb8:	e51b3010 	ldr	r3, [fp, #-16]
80024cbc:	e2833018 	add	r3, r3, #24
80024cc0:	e3a02c02 	mov	r2, #512	@ 0x200
80024cc4:	e51b1008 	ldr	r1, [fp, #-8]
80024cc8:	e1a00003 	mov	r0, r3
80024ccc:	ebffed3d 	bl	800201c8 <memmove>
80024cd0:	e51b3010 	ldr	r3, [fp, #-16]
80024cd4:	e5933000 	ldr	r3, [r3]
80024cd8:	e3832002 	orr	r2, r3, #2
80024cdc:	e51b3010 	ldr	r3, [fp, #-16]
80024ce0:	e5832000 	str	r2, [r3]
80024ce4:	e1a00000 	nop			@ (mov r0, r0)
80024ce8:	e24bd004 	sub	sp, fp, #4
80024cec:	e8bd8800 	pop	{fp, pc}
80024cf0:	8002af34 	.word	0x8002af34
80024cf4:	8002af48 	.word	0x8002af48
80024cf8:	8002af60 	.word	0x8002af60
80024cfc:	800af58c 	.word	0x800af58c
80024d00:	8002af80 	.word	0x8002af80
80024d04:	800af590 	.word	0x800af590

80024d08 <pipealloc>:
80024d08:	e92d4800 	push	{fp, lr}
80024d0c:	e28db004 	add	fp, sp, #4
80024d10:	e24dd010 	sub	sp, sp, #16
80024d14:	e50b0010 	str	r0, [fp, #-16]
80024d18:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024d1c:	e3a03000 	mov	r3, #0
80024d20:	e50b3008 	str	r3, [fp, #-8]
80024d24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d28:	e3a02000 	mov	r2, #0
80024d2c:	e5832000 	str	r2, [r3]
80024d30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d34:	e5932000 	ldr	r2, [r3]
80024d38:	e51b3010 	ldr	r3, [fp, #-16]
80024d3c:	e5832000 	str	r2, [r3]
80024d40:	ebfff62a 	bl	800225f0 <filealloc>
80024d44:	e1a02000 	mov	r2, r0
80024d48:	e51b3010 	ldr	r3, [fp, #-16]
80024d4c:	e5832000 	str	r2, [r3]
80024d50:	e51b3010 	ldr	r3, [fp, #-16]
80024d54:	e5933000 	ldr	r3, [r3]
80024d58:	e3530000 	cmp	r3, #0
80024d5c:	0a000042 	beq	80024e6c <pipealloc+0x164>
80024d60:	ebfff622 	bl	800225f0 <filealloc>
80024d64:	e1a02000 	mov	r2, r0
80024d68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d6c:	e5832000 	str	r2, [r3]
80024d70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d74:	e5933000 	ldr	r3, [r3]
80024d78:	e3530000 	cmp	r3, #0
80024d7c:	0a00003a 	beq	80024e6c <pipealloc+0x164>
80024d80:	e3a00f91 	mov	r0, #580	@ 0x244
80024d84:	ebfff230 	bl	8002164c <get_order>
80024d88:	e1a03000 	mov	r3, r0
80024d8c:	e1a00003 	mov	r0, r3
80024d90:	ebfff1a3 	bl	80021424 <kmalloc>
80024d94:	e50b0008 	str	r0, [fp, #-8]
80024d98:	e51b3008 	ldr	r3, [fp, #-8]
80024d9c:	e3530000 	cmp	r3, #0
80024da0:	0a000033 	beq	80024e74 <pipealloc+0x16c>
80024da4:	e51b3008 	ldr	r3, [fp, #-8]
80024da8:	e3a02001 	mov	r2, #1
80024dac:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024db0:	e51b3008 	ldr	r3, [fp, #-8]
80024db4:	e3a02001 	mov	r2, #1
80024db8:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024dbc:	e51b3008 	ldr	r3, [fp, #-8]
80024dc0:	e3a02000 	mov	r2, #0
80024dc4:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024dc8:	e51b3008 	ldr	r3, [fp, #-8]
80024dcc:	e3a02000 	mov	r2, #0
80024dd0:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024dd4:	e51b3008 	ldr	r3, [fp, #-8]
80024dd8:	e59f110c 	ldr	r1, [pc, #268]	@ 80024eec <pipealloc+0x1e4>
80024ddc:	e1a00003 	mov	r0, r3
80024de0:	eb000774 	bl	80026bb8 <initlock>
80024de4:	e51b3010 	ldr	r3, [fp, #-16]
80024de8:	e5933000 	ldr	r3, [r3]
80024dec:	e3a02001 	mov	r2, #1
80024df0:	e5c32000 	strb	r2, [r3]
80024df4:	e51b3010 	ldr	r3, [fp, #-16]
80024df8:	e5933000 	ldr	r3, [r3]
80024dfc:	e3a02001 	mov	r2, #1
80024e00:	e5c32008 	strb	r2, [r3, #8]
80024e04:	e51b3010 	ldr	r3, [fp, #-16]
80024e08:	e5933000 	ldr	r3, [r3]
80024e0c:	e3a02000 	mov	r2, #0
80024e10:	e5c32009 	strb	r2, [r3, #9]
80024e14:	e51b3010 	ldr	r3, [fp, #-16]
80024e18:	e5933000 	ldr	r3, [r3]
80024e1c:	e51b2008 	ldr	r2, [fp, #-8]
80024e20:	e583200c 	str	r2, [r3, #12]
80024e24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e28:	e5933000 	ldr	r3, [r3]
80024e2c:	e3a02001 	mov	r2, #1
80024e30:	e5c32000 	strb	r2, [r3]
80024e34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e38:	e5933000 	ldr	r3, [r3]
80024e3c:	e3a02000 	mov	r2, #0
80024e40:	e5c32008 	strb	r2, [r3, #8]
80024e44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e48:	e5933000 	ldr	r3, [r3]
80024e4c:	e3a02001 	mov	r2, #1
80024e50:	e5c32009 	strb	r2, [r3, #9]
80024e54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024e58:	e5933000 	ldr	r3, [r3]
80024e5c:	e51b2008 	ldr	r2, [fp, #-8]
80024e60:	e583200c 	str	r2, [r3, #12]
80024e64:	e3a03000 	mov	r3, #0
80024e68:	ea00001c 	b	80024ee0 <pipealloc+0x1d8>
80024e6c:	e1a00000 	nop			@ (mov r0, r0)
80024e70:	ea000000 	b	80024e78 <pipealloc+0x170>
80024e74:	e1a00000 	nop			@ (mov r0, r0)
80024e78:	e51b3008 	ldr	r3, [fp, #-8]
80024e7c:	e3530000 	cmp	r3, #0
80024e80:	0a000005 	beq	80024e9c <pipealloc+0x194>
80024e84:	e3a00f91 	mov	r0, #580	@ 0x244
80024e88:	ebfff1ef 	bl	8002164c <get_order>
80024e8c:	e1a03000 	mov	r3, r0
80024e90:	e1a01003 	mov	r1, r3
80024e94:	e51b0008 	ldr	r0, [fp, #-8]
80024e98:	ebfff1b8 	bl	80021580 <kfree>
80024e9c:	e51b3010 	ldr	r3, [fp, #-16]
80024ea0:	e5933000 	ldr	r3, [r3]
80024ea4:	e3530000 	cmp	r3, #0
80024ea8:	0a000003 	beq	80024ebc <pipealloc+0x1b4>
80024eac:	e51b3010 	ldr	r3, [fp, #-16]
80024eb0:	e5933000 	ldr	r3, [r3]
80024eb4:	e1a00003 	mov	r0, r3
80024eb8:	ebfff608 	bl	800226e0 <fileclose>
80024ebc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ec0:	e5933000 	ldr	r3, [r3]
80024ec4:	e3530000 	cmp	r3, #0
80024ec8:	0a000003 	beq	80024edc <pipealloc+0x1d4>
80024ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ed0:	e5933000 	ldr	r3, [r3]
80024ed4:	e1a00003 	mov	r0, r3
80024ed8:	ebfff600 	bl	800226e0 <fileclose>
80024edc:	e3e03000 	mvn	r3, #0
80024ee0:	e1a00003 	mov	r0, r3
80024ee4:	e24bd004 	sub	sp, fp, #4
80024ee8:	e8bd8800 	pop	{fp, pc}
80024eec:	8002af9c 	.word	0x8002af9c

80024ef0 <pipeclose>:
80024ef0:	e92d4800 	push	{fp, lr}
80024ef4:	e28db004 	add	fp, sp, #4
80024ef8:	e24dd008 	sub	sp, sp, #8
80024efc:	e50b0008 	str	r0, [fp, #-8]
80024f00:	e50b100c 	str	r1, [fp, #-12]
80024f04:	e51b3008 	ldr	r3, [fp, #-8]
80024f08:	e1a00003 	mov	r0, r3
80024f0c:	eb00073b 	bl	80026c00 <acquire>
80024f10:	e51b300c 	ldr	r3, [fp, #-12]
80024f14:	e3530000 	cmp	r3, #0
80024f18:	0a000007 	beq	80024f3c <pipeclose+0x4c>
80024f1c:	e51b3008 	ldr	r3, [fp, #-8]
80024f20:	e3a02000 	mov	r2, #0
80024f24:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024f28:	e51b3008 	ldr	r3, [fp, #-8]
80024f2c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024f30:	e1a00003 	mov	r0, r3
80024f34:	eb0004c3 	bl	80026248 <wakeup>
80024f38:	ea000006 	b	80024f58 <pipeclose+0x68>
80024f3c:	e51b3008 	ldr	r3, [fp, #-8]
80024f40:	e3a02000 	mov	r2, #0
80024f44:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024f48:	e51b3008 	ldr	r3, [fp, #-8]
80024f4c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024f50:	e1a00003 	mov	r0, r3
80024f54:	eb0004bb 	bl	80026248 <wakeup>
80024f58:	e51b3008 	ldr	r3, [fp, #-8]
80024f5c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024f60:	e3530000 	cmp	r3, #0
80024f64:	1a00000d 	bne	80024fa0 <pipeclose+0xb0>
80024f68:	e51b3008 	ldr	r3, [fp, #-8]
80024f6c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024f70:	e3530000 	cmp	r3, #0
80024f74:	1a000009 	bne	80024fa0 <pipeclose+0xb0>
80024f78:	e51b3008 	ldr	r3, [fp, #-8]
80024f7c:	e1a00003 	mov	r0, r3
80024f80:	eb000729 	bl	80026c2c <release>
80024f84:	e3a00f91 	mov	r0, #580	@ 0x244
80024f88:	ebfff1af 	bl	8002164c <get_order>
80024f8c:	e1a03000 	mov	r3, r0
80024f90:	e1a01003 	mov	r1, r3
80024f94:	e51b0008 	ldr	r0, [fp, #-8]
80024f98:	ebfff178 	bl	80021580 <kfree>
80024f9c:	ea000003 	b	80024fb0 <pipeclose+0xc0>
80024fa0:	e51b3008 	ldr	r3, [fp, #-8]
80024fa4:	e1a00003 	mov	r0, r3
80024fa8:	eb00071f 	bl	80026c2c <release>
80024fac:	e1a00000 	nop			@ (mov r0, r0)
80024fb0:	e1a00000 	nop			@ (mov r0, r0)
80024fb4:	e24bd004 	sub	sp, fp, #4
80024fb8:	e8bd8800 	pop	{fp, pc}

80024fbc <pipewrite>:
80024fbc:	e92d4800 	push	{fp, lr}
80024fc0:	e28db004 	add	fp, sp, #4
80024fc4:	e24dd018 	sub	sp, sp, #24
80024fc8:	e50b0010 	str	r0, [fp, #-16]
80024fcc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024fd0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024fd4:	e51b3010 	ldr	r3, [fp, #-16]
80024fd8:	e1a00003 	mov	r0, r3
80024fdc:	eb000707 	bl	80026c00 <acquire>
80024fe0:	e3a03000 	mov	r3, #0
80024fe4:	e50b3008 	str	r3, [fp, #-8]
80024fe8:	ea00002b 	b	8002509c <pipewrite+0xe0>
80024fec:	e51b3010 	ldr	r3, [fp, #-16]
80024ff0:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024ff4:	e3530000 	cmp	r3, #0
80024ff8:	1a000004 	bne	80025010 <pipewrite+0x54>
80024ffc:	e51b3010 	ldr	r3, [fp, #-16]
80025000:	e1a00003 	mov	r0, r3
80025004:	eb000708 	bl	80026c2c <release>
80025008:	e3e03000 	mvn	r3, #0
8002500c:	ea00002e 	b	800250cc <pipewrite+0x110>
80025010:	e51b3010 	ldr	r3, [fp, #-16]
80025014:	e2833f8d 	add	r3, r3, #564	@ 0x234
80025018:	e1a00003 	mov	r0, r3
8002501c:	eb000489 	bl	80026248 <wakeup>
80025020:	e51b3010 	ldr	r3, [fp, #-16]
80025024:	e2833f8e 	add	r3, r3, #568	@ 0x238
80025028:	e51b2010 	ldr	r2, [fp, #-16]
8002502c:	e1a01002 	mov	r1, r2
80025030:	e1a00003 	mov	r0, r3
80025034:	eb00040f 	bl	80026078 <sleep>
80025038:	e51b3010 	ldr	r3, [fp, #-16]
8002503c:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80025040:	e51b3010 	ldr	r3, [fp, #-16]
80025044:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80025048:	e2833c02 	add	r3, r3, #512	@ 0x200
8002504c:	e1520003 	cmp	r2, r3
80025050:	0affffe5 	beq	80024fec <pipewrite+0x30>
80025054:	e51b3008 	ldr	r3, [fp, #-8]
80025058:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002505c:	e0822003 	add	r2, r2, r3
80025060:	e51b3010 	ldr	r3, [fp, #-16]
80025064:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025068:	e2830001 	add	r0, r3, #1
8002506c:	e51b1010 	ldr	r1, [fp, #-16]
80025070:	e5810238 	str	r0, [r1, #568]	@ 0x238
80025074:	e1a03b83 	lsl	r3, r3, #23
80025078:	e1a03ba3 	lsr	r3, r3, #23
8002507c:	e5d21000 	ldrb	r1, [r2]
80025080:	e51b2010 	ldr	r2, [fp, #-16]
80025084:	e0823003 	add	r3, r2, r3
80025088:	e1a02001 	mov	r2, r1
8002508c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80025090:	e51b3008 	ldr	r3, [fp, #-8]
80025094:	e2833001 	add	r3, r3, #1
80025098:	e50b3008 	str	r3, [fp, #-8]
8002509c:	e51b2008 	ldr	r2, [fp, #-8]
800250a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800250a4:	e1520003 	cmp	r2, r3
800250a8:	baffffe2 	blt	80025038 <pipewrite+0x7c>
800250ac:	e51b3010 	ldr	r3, [fp, #-16]
800250b0:	e2833f8d 	add	r3, r3, #564	@ 0x234
800250b4:	e1a00003 	mov	r0, r3
800250b8:	eb000462 	bl	80026248 <wakeup>
800250bc:	e51b3010 	ldr	r3, [fp, #-16]
800250c0:	e1a00003 	mov	r0, r3
800250c4:	eb0006d8 	bl	80026c2c <release>
800250c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800250cc:	e1a00003 	mov	r0, r3
800250d0:	e24bd004 	sub	sp, fp, #4
800250d4:	e8bd8800 	pop	{fp, pc}

800250d8 <piperead>:
800250d8:	e92d4800 	push	{fp, lr}
800250dc:	e28db004 	add	fp, sp, #4
800250e0:	e24dd018 	sub	sp, sp, #24
800250e4:	e50b0010 	str	r0, [fp, #-16]
800250e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800250ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800250f0:	e51b3010 	ldr	r3, [fp, #-16]
800250f4:	e1a00003 	mov	r0, r3
800250f8:	eb0006c0 	bl	80026c00 <acquire>
800250fc:	ea00000f 	b	80025140 <piperead+0x68>
80025100:	e59f310c 	ldr	r3, [pc, #268]	@ 80025214 <piperead+0x13c>
80025104:	e5933000 	ldr	r3, [r3]
80025108:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
8002510c:	e3530000 	cmp	r3, #0
80025110:	0a000004 	beq	80025128 <piperead+0x50>
80025114:	e51b3010 	ldr	r3, [fp, #-16]
80025118:	e1a00003 	mov	r0, r3
8002511c:	eb0006c2 	bl	80026c2c <release>
80025120:	e3e03000 	mvn	r3, #0
80025124:	ea000037 	b	80025208 <piperead+0x130>
80025128:	e51b3010 	ldr	r3, [fp, #-16]
8002512c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80025130:	e51b2010 	ldr	r2, [fp, #-16]
80025134:	e1a01002 	mov	r1, r2
80025138:	e1a00003 	mov	r0, r3
8002513c:	eb0003cd 	bl	80026078 <sleep>
80025140:	e51b3010 	ldr	r3, [fp, #-16]
80025144:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80025148:	e51b3010 	ldr	r3, [fp, #-16]
8002514c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025150:	e1520003 	cmp	r2, r3
80025154:	1a000003 	bne	80025168 <piperead+0x90>
80025158:	e51b3010 	ldr	r3, [fp, #-16]
8002515c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80025160:	e3530000 	cmp	r3, #0
80025164:	1affffe5 	bne	80025100 <piperead+0x28>
80025168:	e3a03000 	mov	r3, #0
8002516c:	e50b3008 	str	r3, [fp, #-8]
80025170:	ea000016 	b	800251d0 <piperead+0xf8>
80025174:	e51b3010 	ldr	r3, [fp, #-16]
80025178:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
8002517c:	e51b3010 	ldr	r3, [fp, #-16]
80025180:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025184:	e1520003 	cmp	r2, r3
80025188:	0a000015 	beq	800251e4 <piperead+0x10c>
8002518c:	e51b3010 	ldr	r3, [fp, #-16]
80025190:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80025194:	e2831001 	add	r1, r3, #1
80025198:	e51b2010 	ldr	r2, [fp, #-16]
8002519c:	e5821234 	str	r1, [r2, #564]	@ 0x234
800251a0:	e1a03b83 	lsl	r3, r3, #23
800251a4:	e1a03ba3 	lsr	r3, r3, #23
800251a8:	e51b2008 	ldr	r2, [fp, #-8]
800251ac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800251b0:	e0812002 	add	r2, r1, r2
800251b4:	e51b1010 	ldr	r1, [fp, #-16]
800251b8:	e0813003 	add	r3, r1, r3
800251bc:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
800251c0:	e5c23000 	strb	r3, [r2]
800251c4:	e51b3008 	ldr	r3, [fp, #-8]
800251c8:	e2833001 	add	r3, r3, #1
800251cc:	e50b3008 	str	r3, [fp, #-8]
800251d0:	e51b2008 	ldr	r2, [fp, #-8]
800251d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800251d8:	e1520003 	cmp	r2, r3
800251dc:	baffffe4 	blt	80025174 <piperead+0x9c>
800251e0:	ea000000 	b	800251e8 <piperead+0x110>
800251e4:	e1a00000 	nop			@ (mov r0, r0)
800251e8:	e51b3010 	ldr	r3, [fp, #-16]
800251ec:	e2833f8e 	add	r3, r3, #568	@ 0x238
800251f0:	e1a00003 	mov	r0, r3
800251f4:	eb000413 	bl	80026248 <wakeup>
800251f8:	e51b3010 	ldr	r3, [fp, #-16]
800251fc:	e1a00003 	mov	r0, r3
80025200:	eb000689 	bl	80026c2c <release>
80025204:	e51b3008 	ldr	r3, [fp, #-8]
80025208:	e1a00003 	mov	r0, r3
8002520c:	e24bd004 	sub	sp, fp, #4
80025210:	e8bd8800 	pop	{fp, pc}
80025214:	800b1ed0 	.word	0x800b1ed0

80025218 <rand>:
80025218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002521c:	e28db000 	add	fp, sp, #0
80025220:	e59f3034 	ldr	r3, [pc, #52]	@ 8002525c <rand+0x44>
80025224:	e5933000 	ldr	r3, [r3]
80025228:	e59f2030 	ldr	r2, [pc, #48]	@ 80025260 <rand+0x48>
8002522c:	e0030392 	mul	r3, r2, r3
80025230:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80025234:	e2833039 	add	r3, r3, #57	@ 0x39
80025238:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
8002523c:	e59f2018 	ldr	r2, [pc, #24]	@ 8002525c <rand+0x44>
80025240:	e5823000 	str	r3, [r2]
80025244:	e59f3010 	ldr	r3, [pc, #16]	@ 8002525c <rand+0x44>
80025248:	e5933000 	ldr	r3, [r3]
8002524c:	e1a00003 	mov	r0, r3
80025250:	e28bd000 	add	sp, fp, #0
80025254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025258:	e12fff1e 	bx	lr
8002525c:	800af594 	.word	0x800af594
80025260:	41c64e6d 	.word	0x41c64e6d

80025264 <pinit>:
80025264:	e92d4800 	push	{fp, lr}
80025268:	e28db004 	add	fp, sp, #4
8002526c:	e59f100c 	ldr	r1, [pc, #12]	@ 80025280 <pinit+0x1c>
80025270:	e59f000c 	ldr	r0, [pc, #12]	@ 80025284 <pinit+0x20>
80025274:	eb00064f 	bl	80026bb8 <initlock>
80025278:	e1a00000 	nop			@ (mov r0, r0)
8002527c:	e8bd8800 	pop	{fp, pc}
80025280:	8002afa4 	.word	0x8002afa4
80025284:	800af598 	.word	0x800af598

80025288 <allocproc>:
80025288:	e92d4800 	push	{fp, lr}
8002528c:	e28db004 	add	fp, sp, #4
80025290:	e24dd008 	sub	sp, sp, #8
80025294:	e59f01b8 	ldr	r0, [pc, #440]	@ 80025454 <allocproc+0x1cc>
80025298:	eb000658 	bl	80026c00 <acquire>
8002529c:	e59f31b4 	ldr	r3, [pc, #436]	@ 80025458 <allocproc+0x1d0>
800252a0:	e50b3008 	str	r3, [fp, #-8]
800252a4:	ea000006 	b	800252c4 <allocproc+0x3c>
800252a8:	e51b3008 	ldr	r3, [fp, #-8]
800252ac:	e5d3300c 	ldrb	r3, [r3, #12]
800252b0:	e3530000 	cmp	r3, #0
800252b4:	0a00000a 	beq	800252e4 <allocproc+0x5c>
800252b8:	e51b3008 	ldr	r3, [fp, #-8]
800252bc:	e28330a4 	add	r3, r3, #164	@ 0xa4
800252c0:	e50b3008 	str	r3, [fp, #-8]
800252c4:	e51b3008 	ldr	r3, [fp, #-8]
800252c8:	e59f218c 	ldr	r2, [pc, #396]	@ 8002545c <allocproc+0x1d4>
800252cc:	e1530002 	cmp	r3, r2
800252d0:	3afffff4 	bcc	800252a8 <allocproc+0x20>
800252d4:	e59f0178 	ldr	r0, [pc, #376]	@ 80025454 <allocproc+0x1cc>
800252d8:	eb000653 	bl	80026c2c <release>
800252dc:	e3a03000 	mov	r3, #0
800252e0:	ea000058 	b	80025448 <allocproc+0x1c0>
800252e4:	e1a00000 	nop			@ (mov r0, r0)
800252e8:	e51b3008 	ldr	r3, [fp, #-8]
800252ec:	e3a02001 	mov	r2, #1
800252f0:	e5c3200c 	strb	r2, [r3, #12]
800252f4:	e59f3164 	ldr	r3, [pc, #356]	@ 80025460 <allocproc+0x1d8>
800252f8:	e5933000 	ldr	r3, [r3]
800252fc:	e2832001 	add	r2, r3, #1
80025300:	e59f1158 	ldr	r1, [pc, #344]	@ 80025460 <allocproc+0x1d8>
80025304:	e5812000 	str	r2, [r1]
80025308:	e51b2008 	ldr	r2, [fp, #-8]
8002530c:	e5823010 	str	r3, [r2, #16]
80025310:	e59f013c 	ldr	r0, [pc, #316]	@ 80025454 <allocproc+0x1cc>
80025314:	eb000644 	bl	80026c2c <release>
80025318:	ebfff0c4 	bl	80021630 <alloc_page>
8002531c:	e1a02000 	mov	r2, r0
80025320:	e51b3008 	ldr	r3, [fp, #-8]
80025324:	e5832008 	str	r2, [r3, #8]
80025328:	e51b3008 	ldr	r3, [fp, #-8]
8002532c:	e5933008 	ldr	r3, [r3, #8]
80025330:	e3530000 	cmp	r3, #0
80025334:	1a000004 	bne	8002534c <allocproc+0xc4>
80025338:	e51b3008 	ldr	r3, [fp, #-8]
8002533c:	e3a02000 	mov	r2, #0
80025340:	e5c3200c 	strb	r2, [r3, #12]
80025344:	e3a03000 	mov	r3, #0
80025348:	ea00003e 	b	80025448 <allocproc+0x1c0>
8002534c:	e51b3008 	ldr	r3, [fp, #-8]
80025350:	e5933008 	ldr	r3, [r3, #8]
80025354:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80025358:	e50b300c 	str	r3, [fp, #-12]
8002535c:	e51b300c 	ldr	r3, [fp, #-12]
80025360:	e2433048 	sub	r3, r3, #72	@ 0x48
80025364:	e50b300c 	str	r3, [fp, #-12]
80025368:	e51b3008 	ldr	r3, [fp, #-8]
8002536c:	e51b200c 	ldr	r2, [fp, #-12]
80025370:	e5832018 	str	r2, [r3, #24]
80025374:	e51b300c 	ldr	r3, [fp, #-12]
80025378:	e2433004 	sub	r3, r3, #4
8002537c:	e50b300c 	str	r3, [fp, #-12]
80025380:	e59f20dc 	ldr	r2, [pc, #220]	@ 80025464 <allocproc+0x1dc>
80025384:	e51b300c 	ldr	r3, [fp, #-12]
80025388:	e5832000 	str	r2, [r3]
8002538c:	e51b300c 	ldr	r3, [fp, #-12]
80025390:	e2433004 	sub	r3, r3, #4
80025394:	e50b300c 	str	r3, [fp, #-12]
80025398:	e51b3008 	ldr	r3, [fp, #-8]
8002539c:	e5933008 	ldr	r3, [r3, #8]
800253a0:	e2832a01 	add	r2, r3, #4096	@ 0x1000
800253a4:	e51b300c 	ldr	r3, [fp, #-12]
800253a8:	e5832000 	str	r2, [r3]
800253ac:	e51b300c 	ldr	r3, [fp, #-12]
800253b0:	e2433028 	sub	r3, r3, #40	@ 0x28
800253b4:	e50b300c 	str	r3, [fp, #-12]
800253b8:	e51b3008 	ldr	r3, [fp, #-8]
800253bc:	e51b200c 	ldr	r2, [fp, #-12]
800253c0:	e583201c 	str	r2, [r3, #28]
800253c4:	e51b3008 	ldr	r3, [fp, #-8]
800253c8:	e593301c 	ldr	r3, [r3, #28]
800253cc:	e3a02028 	mov	r2, #40	@ 0x28
800253d0:	e3a01000 	mov	r1, #0
800253d4:	e1a00003 	mov	r0, r3
800253d8:	ebffeb08 	bl	80020000 <memset>
800253dc:	e59f2084 	ldr	r2, [pc, #132]	@ 80025468 <allocproc+0x1e0>
800253e0:	e51b3008 	ldr	r3, [fp, #-8]
800253e4:	e593301c 	ldr	r3, [r3, #28]
800253e8:	e2822004 	add	r2, r2, #4
800253ec:	e5832024 	str	r2, [r3, #36]	@ 0x24
800253f0:	e51b3008 	ldr	r3, [fp, #-8]
800253f4:	e3a02000 	mov	r2, #0
800253f8:	e583207c 	str	r2, [r3, #124]	@ 0x7c
800253fc:	e59f3068 	ldr	r3, [pc, #104]	@ 8002546c <allocproc+0x1e4>
80025400:	e5933000 	ldr	r3, [r3]
80025404:	e5933014 	ldr	r3, [r3, #20]
80025408:	e3530000 	cmp	r3, #0
8002540c:	0a000006 	beq	8002542c <allocproc+0x1a4>
80025410:	e59f3054 	ldr	r3, [pc, #84]	@ 8002546c <allocproc+0x1e4>
80025414:	e5933000 	ldr	r3, [r3]
80025418:	e5933014 	ldr	r3, [r3, #20]
8002541c:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025420:	e51b3008 	ldr	r3, [fp, #-8]
80025424:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025428:	ea000002 	b	80025438 <allocproc+0x1b0>
8002542c:	e51b3008 	ldr	r3, [fp, #-8]
80025430:	e3a02001 	mov	r2, #1
80025434:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025438:	e51b3008 	ldr	r3, [fp, #-8]
8002543c:	e3a02000 	mov	r2, #0
80025440:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025444:	e51b3008 	ldr	r3, [fp, #-8]
80025448:	e1a00003 	mov	r0, r3
8002544c:	e24bd004 	sub	sp, fp, #4
80025450:	e8bd8800 	pop	{fp, pc}
80025454:	800af598 	.word	0x800af598
80025458:	800af5cc 	.word	0x800af5cc
8002545c:	800b1ecc 	.word	0x800b1ecc
80025460:	8002c014 	.word	0x8002c014
80025464:	80028f68 	.word	0x80028f68
80025468:	80026038 	.word	0x80026038
8002546c:	800b1ed0 	.word	0x800b1ed0

80025470 <proclist>:
80025470:	e92d4800 	push	{fp, lr}
80025474:	e28db004 	add	fp, sp, #4
80025478:	e24dd010 	sub	sp, sp, #16
8002547c:	e50b0010 	str	r0, [fp, #-16]
80025480:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025484:	e3a03000 	mov	r3, #0
80025488:	e50b300c 	str	r3, [fp, #-12]
8002548c:	e59f012c 	ldr	r0, [pc, #300]	@ 800255c0 <proclist+0x150>
80025490:	eb0005da 	bl	80026c00 <acquire>
80025494:	e59f3128 	ldr	r3, [pc, #296]	@ 800255c4 <proclist+0x154>
80025498:	e50b3008 	str	r3, [fp, #-8]
8002549c:	ea000039 	b	80025588 <proclist+0x118>
800254a0:	e51b3008 	ldr	r3, [fp, #-8]
800254a4:	e5d3300c 	ldrb	r3, [r3, #12]
800254a8:	e3530000 	cmp	r3, #0
800254ac:	0a000031 	beq	80025578 <proclist+0x108>
800254b0:	e51b300c 	ldr	r3, [fp, #-12]
800254b4:	e1a03283 	lsl	r3, r3, #5
800254b8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800254bc:	e0823003 	add	r3, r2, r3
800254c0:	e51b2008 	ldr	r2, [fp, #-8]
800254c4:	e5922010 	ldr	r2, [r2, #16]
800254c8:	e5832000 	str	r2, [r3]
800254cc:	e51b3008 	ldr	r3, [fp, #-8]
800254d0:	e5933014 	ldr	r3, [r3, #20]
800254d4:	e3530000 	cmp	r3, #0
800254d8:	0a000003 	beq	800254ec <proclist+0x7c>
800254dc:	e51b3008 	ldr	r3, [fp, #-8]
800254e0:	e5933014 	ldr	r3, [r3, #20]
800254e4:	e5933010 	ldr	r3, [r3, #16]
800254e8:	ea000000 	b	800254f0 <proclist+0x80>
800254ec:	e3a03000 	mov	r3, #0
800254f0:	e51b200c 	ldr	r2, [fp, #-12]
800254f4:	e1a02282 	lsl	r2, r2, #5
800254f8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800254fc:	e0812002 	add	r2, r1, r2
80025500:	e5823004 	str	r3, [r2, #4]
80025504:	e51b300c 	ldr	r3, [fp, #-12]
80025508:	e1a03283 	lsl	r3, r3, #5
8002550c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025510:	e0823003 	add	r3, r2, r3
80025514:	e2830008 	add	r0, r3, #8
80025518:	e51b3008 	ldr	r3, [fp, #-8]
8002551c:	e283306c 	add	r3, r3, #108	@ 0x6c
80025520:	e3a02010 	mov	r2, #16
80025524:	e1a01003 	mov	r1, r3
80025528:	ebffebc8 	bl	80020450 <safestrcpy>
8002552c:	e51b3008 	ldr	r3, [fp, #-8]
80025530:	e5d3100c 	ldrb	r1, [r3, #12]
80025534:	e51b300c 	ldr	r3, [fp, #-12]
80025538:	e1a03283 	lsl	r3, r3, #5
8002553c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025540:	e0823003 	add	r3, r2, r3
80025544:	e1a02001 	mov	r2, r1
80025548:	e5832018 	str	r2, [r3, #24]
8002554c:	e51b300c 	ldr	r3, [fp, #-12]
80025550:	e1a03283 	lsl	r3, r3, #5
80025554:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025558:	e0823003 	add	r3, r2, r3
8002555c:	e51b2008 	ldr	r2, [fp, #-8]
80025560:	e592207c 	ldr	r2, [r2, #124]	@ 0x7c
80025564:	e583201c 	str	r2, [r3, #28]
80025568:	e51b300c 	ldr	r3, [fp, #-12]
8002556c:	e2833001 	add	r3, r3, #1
80025570:	e50b300c 	str	r3, [fp, #-12]
80025574:	ea000000 	b	8002557c <proclist+0x10c>
80025578:	e1a00000 	nop			@ (mov r0, r0)
8002557c:	e51b3008 	ldr	r3, [fp, #-8]
80025580:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025584:	e50b3008 	str	r3, [fp, #-8]
80025588:	e51b3008 	ldr	r3, [fp, #-8]
8002558c:	e59f2034 	ldr	r2, [pc, #52]	@ 800255c8 <proclist+0x158>
80025590:	e1530002 	cmp	r3, r2
80025594:	2a000003 	bcs	800255a8 <proclist+0x138>
80025598:	e51b200c 	ldr	r2, [fp, #-12]
8002559c:	e51b3010 	ldr	r3, [fp, #-16]
800255a0:	e1520003 	cmp	r2, r3
800255a4:	baffffbd 	blt	800254a0 <proclist+0x30>
800255a8:	e59f0010 	ldr	r0, [pc, #16]	@ 800255c0 <proclist+0x150>
800255ac:	eb00059e 	bl	80026c2c <release>
800255b0:	e51b300c 	ldr	r3, [fp, #-12]
800255b4:	e1a00003 	mov	r0, r3
800255b8:	e24bd004 	sub	sp, fp, #4
800255bc:	e8bd8800 	pop	{fp, pc}
800255c0:	800af598 	.word	0x800af598
800255c4:	800af5cc 	.word	0x800af5cc
800255c8:	800b1ecc 	.word	0x800b1ecc

800255cc <error_init>:
800255cc:	e92d4800 	push	{fp, lr}
800255d0:	e28db004 	add	fp, sp, #4
800255d4:	e59f0000 	ldr	r0, [pc]	@ 800255dc <error_init+0x10>
800255d8:	ebfff145 	bl	80021af4 <panic>
800255dc:	8002afac 	.word	0x8002afac

800255e0 <hold_lottery>:
800255e0:	e92d4800 	push	{fp, lr}
800255e4:	e28db004 	add	fp, sp, #4
800255e8:	e24dd020 	sub	sp, sp, #32
800255ec:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800255f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800255f4:	e3530000 	cmp	r3, #0
800255f8:	ca000003 	bgt	8002560c <hold_lottery+0x2c>
800255fc:	e59f00d0 	ldr	r0, [pc, #208]	@ 800256d4 <hold_lottery+0xf4>
80025600:	ebfff0a3 	bl	80021894 <cprintf>
80025604:	e3a03000 	mov	r3, #0
80025608:	ea00002e 	b	800256c8 <hold_lottery+0xe8>
8002560c:	ebffff01 	bl	80025218 <rand>
80025610:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025614:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80025618:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002561c:	e1a01002 	mov	r1, r2
80025620:	e1a00003 	mov	r0, r3
80025624:	eb00153f 	bl	8002ab28 <__aeabi_uidivmod>
80025628:	e1a03001 	mov	r3, r1
8002562c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025630:	e3a03000 	mov	r3, #0
80025634:	e50b3008 	str	r3, [fp, #-8]
80025638:	e59f3098 	ldr	r3, [pc, #152]	@ 800256d8 <hold_lottery+0xf8>
8002563c:	e50b300c 	str	r3, [fp, #-12]
80025640:	ea00001b 	b	800256b4 <hold_lottery+0xd4>
80025644:	e51b300c 	ldr	r3, [fp, #-12]
80025648:	e5d3300c 	ldrb	r3, [r3, #12]
8002564c:	e3530003 	cmp	r3, #3
80025650:	1a000013 	bne	800256a4 <hold_lottery+0xc4>
80025654:	e51b300c 	ldr	r3, [fp, #-12]
80025658:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
8002565c:	e50b3010 	str	r3, [fp, #-16]
80025660:	e51b300c 	ldr	r3, [fp, #-12]
80025664:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025668:	e3530000 	cmp	r3, #0
8002566c:	da000002 	ble	8002567c <hold_lottery+0x9c>
80025670:	e51b3010 	ldr	r3, [fp, #-16]
80025674:	e1a03083 	lsl	r3, r3, #1
80025678:	e50b3010 	str	r3, [fp, #-16]
8002567c:	e51b2008 	ldr	r2, [fp, #-8]
80025680:	e51b3010 	ldr	r3, [fp, #-16]
80025684:	e0823003 	add	r3, r2, r3
80025688:	e50b3008 	str	r3, [fp, #-8]
8002568c:	e51b3008 	ldr	r3, [fp, #-8]
80025690:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80025694:	e1520003 	cmp	r2, r3
80025698:	2a000002 	bcs	800256a8 <hold_lottery+0xc8>
8002569c:	e51b300c 	ldr	r3, [fp, #-12]
800256a0:	ea000008 	b	800256c8 <hold_lottery+0xe8>
800256a4:	e1a00000 	nop			@ (mov r0, r0)
800256a8:	e51b300c 	ldr	r3, [fp, #-12]
800256ac:	e28330a4 	add	r3, r3, #164	@ 0xa4
800256b0:	e50b300c 	str	r3, [fp, #-12]
800256b4:	e51b300c 	ldr	r3, [fp, #-12]
800256b8:	e59f201c 	ldr	r2, [pc, #28]	@ 800256dc <hold_lottery+0xfc>
800256bc:	e1530002 	cmp	r3, r2
800256c0:	3affffdf 	bcc	80025644 <hold_lottery+0x64>
800256c4:	e3a03000 	mov	r3, #0
800256c8:	e1a00003 	mov	r0, r3
800256cc:	e24bd004 	sub	sp, fp, #4
800256d0:	e8bd8800 	pop	{fp, pc}
800256d4:	8002afcc 	.word	0x8002afcc
800256d8:	800af5cc 	.word	0x800af5cc
800256dc:	800b1ecc 	.word	0x800b1ecc

800256e0 <userinit>:
800256e0:	e92d4810 	push	{r4, fp, lr}
800256e4:	e28db008 	add	fp, sp, #8
800256e8:	e24dd00c 	sub	sp, sp, #12
800256ec:	ebfffee5 	bl	80025288 <allocproc>
800256f0:	e50b0010 	str	r0, [fp, #-16]
800256f4:	e59f2100 	ldr	r2, [pc, #256]	@ 800257fc <userinit+0x11c>
800256f8:	e51b3010 	ldr	r3, [fp, #-16]
800256fc:	e5823000 	str	r3, [r2]
80025700:	eb00106b 	bl	800298b4 <kpt_alloc>
80025704:	e1a02000 	mov	r2, r0
80025708:	e51b3010 	ldr	r3, [fp, #-16]
8002570c:	e5832004 	str	r2, [r3, #4]
80025710:	e51b3010 	ldr	r3, [fp, #-16]
80025714:	e5933004 	ldr	r3, [r3, #4]
80025718:	e3530000 	cmp	r3, #0
8002571c:	1a000001 	bne	80025728 <userinit+0x48>
80025720:	e59f00d8 	ldr	r0, [pc, #216]	@ 80025800 <userinit+0x120>
80025724:	ebfff0f2 	bl	80021af4 <panic>
80025728:	e51b3010 	ldr	r3, [fp, #-16]
8002572c:	e5933004 	ldr	r3, [r3, #4]
80025730:	e59f20cc 	ldr	r2, [pc, #204]	@ 80025804 <userinit+0x124>
80025734:	e59f10cc 	ldr	r1, [pc, #204]	@ 80025808 <userinit+0x128>
80025738:	e1a00003 	mov	r0, r3
8002573c:	eb001119 	bl	80029ba8 <inituvm>
80025740:	e51b3010 	ldr	r3, [fp, #-16]
80025744:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025748:	e5832000 	str	r2, [r3]
8002574c:	e51b3010 	ldr	r3, [fp, #-16]
80025750:	e5933018 	ldr	r3, [r3, #24]
80025754:	e3a02048 	mov	r2, #72	@ 0x48
80025758:	e3a01000 	mov	r1, #0
8002575c:	e1a00003 	mov	r0, r3
80025760:	ebffea26 	bl	80020000 <memset>
80025764:	e51b3010 	ldr	r3, [fp, #-16]
80025768:	e5933018 	ldr	r3, [r3, #24]
8002576c:	e59f2098 	ldr	r2, [pc, #152]	@ 8002580c <userinit+0x12c>
80025770:	e5832008 	str	r2, [r3, #8]
80025774:	e51b3010 	ldr	r3, [fp, #-16]
80025778:	e5934018 	ldr	r4, [r3, #24]
8002577c:	ebffeb8b 	bl	800205b0 <spsr_usr>
80025780:	e1a03000 	mov	r3, r0
80025784:	e584300c 	str	r3, [r4, #12]
80025788:	e51b3010 	ldr	r3, [fp, #-16]
8002578c:	e5933018 	ldr	r3, [r3, #24]
80025790:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025794:	e5832000 	str	r2, [r3]
80025798:	e51b3010 	ldr	r3, [fp, #-16]
8002579c:	e5933018 	ldr	r3, [r3, #24]
800257a0:	e3a02000 	mov	r2, #0
800257a4:	e5832004 	str	r2, [r3, #4]
800257a8:	e51b3010 	ldr	r3, [fp, #-16]
800257ac:	e5933018 	ldr	r3, [r3, #24]
800257b0:	e3a02000 	mov	r2, #0
800257b4:	e5832044 	str	r2, [r3, #68]	@ 0x44
800257b8:	e51b3010 	ldr	r3, [fp, #-16]
800257bc:	e283306c 	add	r3, r3, #108	@ 0x6c
800257c0:	e3a02010 	mov	r2, #16
800257c4:	e59f1044 	ldr	r1, [pc, #68]	@ 80025810 <userinit+0x130>
800257c8:	e1a00003 	mov	r0, r3
800257cc:	ebffeb1f 	bl	80020450 <safestrcpy>
800257d0:	e59f003c 	ldr	r0, [pc, #60]	@ 80025814 <userinit+0x134>
800257d4:	ebfffb2c 	bl	8002448c <namei>
800257d8:	e1a02000 	mov	r2, r0
800257dc:	e51b3010 	ldr	r3, [fp, #-16]
800257e0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800257e4:	e51b3010 	ldr	r3, [fp, #-16]
800257e8:	e3a02003 	mov	r2, #3
800257ec:	e5c3200c 	strb	r2, [r3, #12]
800257f0:	e1a00000 	nop			@ (mov r0, r0)
800257f4:	e24bd008 	sub	sp, fp, #8
800257f8:	e8bd8810 	pop	{r4, fp, pc}
800257fc:	800b1ecc 	.word	0x800b1ecc
80025800:	8002afe8 	.word	0x8002afe8
80025804:	00000034 	.word	0x00000034
80025808:	8002c0e4 	.word	0x8002c0e4
8002580c:	800255cc 	.word	0x800255cc
80025810:	8002b004 	.word	0x8002b004
80025814:	8002b010 	.word	0x8002b010

80025818 <growproc>:
80025818:	e92d4800 	push	{fp, lr}
8002581c:	e28db004 	add	fp, sp, #4
80025820:	e24dd010 	sub	sp, sp, #16
80025824:	e50b0010 	str	r0, [fp, #-16]
80025828:	e59f30d0 	ldr	r3, [pc, #208]	@ 80025900 <growproc+0xe8>
8002582c:	e5933000 	ldr	r3, [r3]
80025830:	e5933000 	ldr	r3, [r3]
80025834:	e50b3008 	str	r3, [fp, #-8]
80025838:	e51b3010 	ldr	r3, [fp, #-16]
8002583c:	e3530000 	cmp	r3, #0
80025840:	da00000f 	ble	80025884 <growproc+0x6c>
80025844:	e59f30b4 	ldr	r3, [pc, #180]	@ 80025900 <growproc+0xe8>
80025848:	e5933000 	ldr	r3, [r3]
8002584c:	e5930004 	ldr	r0, [r3, #4]
80025850:	e51b2010 	ldr	r2, [fp, #-16]
80025854:	e51b3008 	ldr	r3, [fp, #-8]
80025858:	e0823003 	add	r3, r2, r3
8002585c:	e1a02003 	mov	r2, r3
80025860:	e51b1008 	ldr	r1, [fp, #-8]
80025864:	eb001150 	bl	80029dac <allocuvm>
80025868:	e1a03000 	mov	r3, r0
8002586c:	e50b3008 	str	r3, [fp, #-8]
80025870:	e51b3008 	ldr	r3, [fp, #-8]
80025874:	e3530000 	cmp	r3, #0
80025878:	1a000014 	bne	800258d0 <growproc+0xb8>
8002587c:	e3e03000 	mvn	r3, #0
80025880:	ea00001b 	b	800258f4 <growproc+0xdc>
80025884:	e51b3010 	ldr	r3, [fp, #-16]
80025888:	e3530000 	cmp	r3, #0
8002588c:	aa00000f 	bge	800258d0 <growproc+0xb8>
80025890:	e59f3068 	ldr	r3, [pc, #104]	@ 80025900 <growproc+0xe8>
80025894:	e5933000 	ldr	r3, [r3]
80025898:	e5930004 	ldr	r0, [r3, #4]
8002589c:	e51b2010 	ldr	r2, [fp, #-16]
800258a0:	e51b3008 	ldr	r3, [fp, #-8]
800258a4:	e0823003 	add	r3, r2, r3
800258a8:	e1a02003 	mov	r2, r3
800258ac:	e51b1008 	ldr	r1, [fp, #-8]
800258b0:	eb001153 	bl	80029e04 <deallocuvm>
800258b4:	e1a03000 	mov	r3, r0
800258b8:	e50b3008 	str	r3, [fp, #-8]
800258bc:	e51b3008 	ldr	r3, [fp, #-8]
800258c0:	e3530000 	cmp	r3, #0
800258c4:	1a000001 	bne	800258d0 <growproc+0xb8>
800258c8:	e3e03000 	mvn	r3, #0
800258cc:	ea000008 	b	800258f4 <growproc+0xdc>
800258d0:	e59f3028 	ldr	r3, [pc, #40]	@ 80025900 <growproc+0xe8>
800258d4:	e5933000 	ldr	r3, [r3]
800258d8:	e51b2008 	ldr	r2, [fp, #-8]
800258dc:	e5832000 	str	r2, [r3]
800258e0:	e59f3018 	ldr	r3, [pc, #24]	@ 80025900 <growproc+0xe8>
800258e4:	e5933000 	ldr	r3, [r3]
800258e8:	e1a00003 	mov	r0, r3
800258ec:	eb001096 	bl	80029b4c <switchuvm>
800258f0:	e3a03000 	mov	r3, #0
800258f4:	e1a00003 	mov	r0, r3
800258f8:	e24bd004 	sub	sp, fp, #4
800258fc:	e8bd8800 	pop	{fp, pc}
80025900:	800b1ed0 	.word	0x800b1ed0

80025904 <fork>:
80025904:	e92d4800 	push	{fp, lr}
80025908:	e28db004 	add	fp, sp, #4
8002590c:	e24dd010 	sub	sp, sp, #16
80025910:	ebfffe5c 	bl	80025288 <allocproc>
80025914:	e50b000c 	str	r0, [fp, #-12]
80025918:	e51b300c 	ldr	r3, [fp, #-12]
8002591c:	e3530000 	cmp	r3, #0
80025920:	1a000001 	bne	8002592c <fork+0x28>
80025924:	e3e03000 	mvn	r3, #0
80025928:	ea000065 	b	80025ac4 <fork+0x1c0>
8002592c:	e59f319c 	ldr	r3, [pc, #412]	@ 80025ad0 <fork+0x1cc>
80025930:	e5933000 	ldr	r3, [r3]
80025934:	e5932004 	ldr	r2, [r3, #4]
80025938:	e59f3190 	ldr	r3, [pc, #400]	@ 80025ad0 <fork+0x1cc>
8002593c:	e5933000 	ldr	r3, [r3]
80025940:	e5933000 	ldr	r3, [r3]
80025944:	e1a01003 	mov	r1, r3
80025948:	e1a00002 	mov	r0, r2
8002594c:	eb0011bb 	bl	8002a040 <copyuvm>
80025950:	e1a02000 	mov	r2, r0
80025954:	e51b300c 	ldr	r3, [fp, #-12]
80025958:	e5832004 	str	r2, [r3, #4]
8002595c:	e51b300c 	ldr	r3, [fp, #-12]
80025960:	e5933004 	ldr	r3, [r3, #4]
80025964:	e3530000 	cmp	r3, #0
80025968:	1a00000b 	bne	8002599c <fork+0x98>
8002596c:	e51b300c 	ldr	r3, [fp, #-12]
80025970:	e5933008 	ldr	r3, [r3, #8]
80025974:	e1a00003 	mov	r0, r3
80025978:	ebffef22 	bl	80021608 <free_page>
8002597c:	e51b300c 	ldr	r3, [fp, #-12]
80025980:	e3a02000 	mov	r2, #0
80025984:	e5832008 	str	r2, [r3, #8]
80025988:	e51b300c 	ldr	r3, [fp, #-12]
8002598c:	e3a02000 	mov	r2, #0
80025990:	e5c3200c 	strb	r2, [r3, #12]
80025994:	e3e03000 	mvn	r3, #0
80025998:	ea000049 	b	80025ac4 <fork+0x1c0>
8002599c:	e59f312c 	ldr	r3, [pc, #300]	@ 80025ad0 <fork+0x1cc>
800259a0:	e5933000 	ldr	r3, [r3]
800259a4:	e5932000 	ldr	r2, [r3]
800259a8:	e51b300c 	ldr	r3, [fp, #-12]
800259ac:	e5832000 	str	r2, [r3]
800259b0:	e59f3118 	ldr	r3, [pc, #280]	@ 80025ad0 <fork+0x1cc>
800259b4:	e5932000 	ldr	r2, [r3]
800259b8:	e51b300c 	ldr	r3, [fp, #-12]
800259bc:	e5832014 	str	r2, [r3, #20]
800259c0:	e59f3108 	ldr	r3, [pc, #264]	@ 80025ad0 <fork+0x1cc>
800259c4:	e5933000 	ldr	r3, [r3]
800259c8:	e5932018 	ldr	r2, [r3, #24]
800259cc:	e51b300c 	ldr	r3, [fp, #-12]
800259d0:	e5933018 	ldr	r3, [r3, #24]
800259d4:	e1a00003 	mov	r0, r3
800259d8:	e1a01002 	mov	r1, r2
800259dc:	e3a03048 	mov	r3, #72	@ 0x48
800259e0:	e1a02003 	mov	r2, r3
800259e4:	ebffea36 	bl	800202c4 <memcpy>
800259e8:	e51b300c 	ldr	r3, [fp, #-12]
800259ec:	e5933018 	ldr	r3, [r3, #24]
800259f0:	e3a02000 	mov	r2, #0
800259f4:	e5832010 	str	r2, [r3, #16]
800259f8:	e3a03000 	mov	r3, #0
800259fc:	e50b3008 	str	r3, [fp, #-8]
80025a00:	ea000015 	b	80025a5c <fork+0x158>
80025a04:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025ad0 <fork+0x1cc>
80025a08:	e5933000 	ldr	r3, [r3]
80025a0c:	e51b2008 	ldr	r2, [fp, #-8]
80025a10:	e282200a 	add	r2, r2, #10
80025a14:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025a18:	e3530000 	cmp	r3, #0
80025a1c:	0a00000b 	beq	80025a50 <fork+0x14c>
80025a20:	e59f30a8 	ldr	r3, [pc, #168]	@ 80025ad0 <fork+0x1cc>
80025a24:	e5933000 	ldr	r3, [r3]
80025a28:	e51b2008 	ldr	r2, [fp, #-8]
80025a2c:	e282200a 	add	r2, r2, #10
80025a30:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025a34:	e1a00003 	mov	r0, r3
80025a38:	ebfff30f 	bl	8002267c <filedup>
80025a3c:	e1a01000 	mov	r1, r0
80025a40:	e51b300c 	ldr	r3, [fp, #-12]
80025a44:	e51b2008 	ldr	r2, [fp, #-8]
80025a48:	e282200a 	add	r2, r2, #10
80025a4c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025a50:	e51b3008 	ldr	r3, [fp, #-8]
80025a54:	e2833001 	add	r3, r3, #1
80025a58:	e50b3008 	str	r3, [fp, #-8]
80025a5c:	e51b3008 	ldr	r3, [fp, #-8]
80025a60:	e353000f 	cmp	r3, #15
80025a64:	daffffe6 	ble	80025a04 <fork+0x100>
80025a68:	e59f3060 	ldr	r3, [pc, #96]	@ 80025ad0 <fork+0x1cc>
80025a6c:	e5933000 	ldr	r3, [r3]
80025a70:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025a74:	e1a00003 	mov	r0, r3
80025a78:	ebfff5d1 	bl	800231c4 <idup>
80025a7c:	e1a02000 	mov	r2, r0
80025a80:	e51b300c 	ldr	r3, [fp, #-12]
80025a84:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025a88:	e51b300c 	ldr	r3, [fp, #-12]
80025a8c:	e5933010 	ldr	r3, [r3, #16]
80025a90:	e50b3010 	str	r3, [fp, #-16]
80025a94:	e51b300c 	ldr	r3, [fp, #-12]
80025a98:	e3a02003 	mov	r2, #3
80025a9c:	e5c3200c 	strb	r2, [r3, #12]
80025aa0:	e51b300c 	ldr	r3, [fp, #-12]
80025aa4:	e283006c 	add	r0, r3, #108	@ 0x6c
80025aa8:	e59f3020 	ldr	r3, [pc, #32]	@ 80025ad0 <fork+0x1cc>
80025aac:	e5933000 	ldr	r3, [r3]
80025ab0:	e283306c 	add	r3, r3, #108	@ 0x6c
80025ab4:	e3a02010 	mov	r2, #16
80025ab8:	e1a01003 	mov	r1, r3
80025abc:	ebffea63 	bl	80020450 <safestrcpy>
80025ac0:	e51b3010 	ldr	r3, [fp, #-16]
80025ac4:	e1a00003 	mov	r0, r3
80025ac8:	e24bd004 	sub	sp, fp, #4
80025acc:	e8bd8800 	pop	{fp, pc}
80025ad0:	800b1ed0 	.word	0x800b1ed0

80025ad4 <exit>:
80025ad4:	e92d4800 	push	{fp, lr}
80025ad8:	e28db004 	add	fp, sp, #4
80025adc:	e24dd008 	sub	sp, sp, #8
80025ae0:	e59f3158 	ldr	r3, [pc, #344]	@ 80025c40 <exit+0x16c>
80025ae4:	e5932000 	ldr	r2, [r3]
80025ae8:	e59f3154 	ldr	r3, [pc, #340]	@ 80025c44 <exit+0x170>
80025aec:	e5933000 	ldr	r3, [r3]
80025af0:	e1520003 	cmp	r2, r3
80025af4:	1a000001 	bne	80025b00 <exit+0x2c>
80025af8:	e59f0148 	ldr	r0, [pc, #328]	@ 80025c48 <exit+0x174>
80025afc:	ebffeffc 	bl	80021af4 <panic>
80025b00:	e3a03000 	mov	r3, #0
80025b04:	e50b300c 	str	r3, [fp, #-12]
80025b08:	ea000016 	b	80025b68 <exit+0x94>
80025b0c:	e59f312c 	ldr	r3, [pc, #300]	@ 80025c40 <exit+0x16c>
80025b10:	e5933000 	ldr	r3, [r3]
80025b14:	e51b200c 	ldr	r2, [fp, #-12]
80025b18:	e282200a 	add	r2, r2, #10
80025b1c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b20:	e3530000 	cmp	r3, #0
80025b24:	0a00000c 	beq	80025b5c <exit+0x88>
80025b28:	e59f3110 	ldr	r3, [pc, #272]	@ 80025c40 <exit+0x16c>
80025b2c:	e5933000 	ldr	r3, [r3]
80025b30:	e51b200c 	ldr	r2, [fp, #-12]
80025b34:	e282200a 	add	r2, r2, #10
80025b38:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b3c:	e1a00003 	mov	r0, r3
80025b40:	ebfff2e6 	bl	800226e0 <fileclose>
80025b44:	e59f30f4 	ldr	r3, [pc, #244]	@ 80025c40 <exit+0x16c>
80025b48:	e5933000 	ldr	r3, [r3]
80025b4c:	e51b200c 	ldr	r2, [fp, #-12]
80025b50:	e282200a 	add	r2, r2, #10
80025b54:	e3a01000 	mov	r1, #0
80025b58:	e7831102 	str	r1, [r3, r2, lsl #2]
80025b5c:	e51b300c 	ldr	r3, [fp, #-12]
80025b60:	e2833001 	add	r3, r3, #1
80025b64:	e50b300c 	str	r3, [fp, #-12]
80025b68:	e51b300c 	ldr	r3, [fp, #-12]
80025b6c:	e353000f 	cmp	r3, #15
80025b70:	daffffe5 	ble	80025b0c <exit+0x38>
80025b74:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025c40 <exit+0x16c>
80025b78:	e5933000 	ldr	r3, [r3]
80025b7c:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025b80:	e1a00003 	mov	r0, r3
80025b84:	ebfff626 	bl	80023424 <iput>
80025b88:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025c40 <exit+0x16c>
80025b8c:	e5933000 	ldr	r3, [r3]
80025b90:	e3a02000 	mov	r2, #0
80025b94:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025b98:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025c4c <exit+0x178>
80025b9c:	eb000417 	bl	80026c00 <acquire>
80025ba0:	e59f3098 	ldr	r3, [pc, #152]	@ 80025c40 <exit+0x16c>
80025ba4:	e5933000 	ldr	r3, [r3]
80025ba8:	e5933014 	ldr	r3, [r3, #20]
80025bac:	e1a00003 	mov	r0, r3
80025bb0:	eb000164 	bl	80026148 <wakeup1>
80025bb4:	e59f3094 	ldr	r3, [pc, #148]	@ 80025c50 <exit+0x17c>
80025bb8:	e50b3008 	str	r3, [fp, #-8]
80025bbc:	ea000014 	b	80025c14 <exit+0x140>
80025bc0:	e51b3008 	ldr	r3, [fp, #-8]
80025bc4:	e5932014 	ldr	r2, [r3, #20]
80025bc8:	e59f3070 	ldr	r3, [pc, #112]	@ 80025c40 <exit+0x16c>
80025bcc:	e5933000 	ldr	r3, [r3]
80025bd0:	e1520003 	cmp	r2, r3
80025bd4:	1a00000b 	bne	80025c08 <exit+0x134>
80025bd8:	e59f3064 	ldr	r3, [pc, #100]	@ 80025c44 <exit+0x170>
80025bdc:	e5932000 	ldr	r2, [r3]
80025be0:	e51b3008 	ldr	r3, [fp, #-8]
80025be4:	e5832014 	str	r2, [r3, #20]
80025be8:	e51b3008 	ldr	r3, [fp, #-8]
80025bec:	e5d3300c 	ldrb	r3, [r3, #12]
80025bf0:	e3530005 	cmp	r3, #5
80025bf4:	1a000003 	bne	80025c08 <exit+0x134>
80025bf8:	e59f3044 	ldr	r3, [pc, #68]	@ 80025c44 <exit+0x170>
80025bfc:	e5933000 	ldr	r3, [r3]
80025c00:	e1a00003 	mov	r0, r3
80025c04:	eb00014f 	bl	80026148 <wakeup1>
80025c08:	e51b3008 	ldr	r3, [fp, #-8]
80025c0c:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025c10:	e50b3008 	str	r3, [fp, #-8]
80025c14:	e51b3008 	ldr	r3, [fp, #-8]
80025c18:	e59f2034 	ldr	r2, [pc, #52]	@ 80025c54 <exit+0x180>
80025c1c:	e1530002 	cmp	r3, r2
80025c20:	3affffe6 	bcc	80025bc0 <exit+0xec>
80025c24:	e59f3014 	ldr	r3, [pc, #20]	@ 80025c40 <exit+0x16c>
80025c28:	e5933000 	ldr	r3, [r3]
80025c2c:	e3a02005 	mov	r2, #5
80025c30:	e5c3200c 	strb	r2, [r3, #12]
80025c34:	eb0000b7 	bl	80025f18 <sched>
80025c38:	e59f0018 	ldr	r0, [pc, #24]	@ 80025c58 <exit+0x184>
80025c3c:	ebffefac 	bl	80021af4 <panic>
80025c40:	800b1ed0 	.word	0x800b1ed0
80025c44:	800b1ecc 	.word	0x800b1ecc
80025c48:	8002b014 	.word	0x8002b014
80025c4c:	800af598 	.word	0x800af598
80025c50:	800af5cc 	.word	0x800af5cc
80025c54:	800b1ecc 	.word	0x800b1ecc
80025c58:	8002b024 	.word	0x8002b024

80025c5c <wait>:
80025c5c:	e92d4800 	push	{fp, lr}
80025c60:	e28db004 	add	fp, sp, #4
80025c64:	e24dd010 	sub	sp, sp, #16
80025c68:	e59f013c 	ldr	r0, [pc, #316]	@ 80025dac <wait+0x150>
80025c6c:	eb0003e3 	bl	80026c00 <acquire>
80025c70:	e3a03000 	mov	r3, #0
80025c74:	e50b300c 	str	r3, [fp, #-12]
80025c78:	e59f3130 	ldr	r3, [pc, #304]	@ 80025db0 <wait+0x154>
80025c7c:	e50b3008 	str	r3, [fp, #-8]
80025c80:	ea000030 	b	80025d48 <wait+0xec>
80025c84:	e51b3008 	ldr	r3, [fp, #-8]
80025c88:	e5932014 	ldr	r2, [r3, #20]
80025c8c:	e59f3120 	ldr	r3, [pc, #288]	@ 80025db4 <wait+0x158>
80025c90:	e5933000 	ldr	r3, [r3]
80025c94:	e1520003 	cmp	r2, r3
80025c98:	1a000026 	bne	80025d38 <wait+0xdc>
80025c9c:	e3a03001 	mov	r3, #1
80025ca0:	e50b300c 	str	r3, [fp, #-12]
80025ca4:	e51b3008 	ldr	r3, [fp, #-8]
80025ca8:	e5d3300c 	ldrb	r3, [r3, #12]
80025cac:	e3530005 	cmp	r3, #5
80025cb0:	1a000021 	bne	80025d3c <wait+0xe0>
80025cb4:	e51b3008 	ldr	r3, [fp, #-8]
80025cb8:	e5933010 	ldr	r3, [r3, #16]
80025cbc:	e50b3010 	str	r3, [fp, #-16]
80025cc0:	e51b3008 	ldr	r3, [fp, #-8]
80025cc4:	e5933008 	ldr	r3, [r3, #8]
80025cc8:	e1a00003 	mov	r0, r3
80025ccc:	ebffee4d 	bl	80021608 <free_page>
80025cd0:	e51b3008 	ldr	r3, [fp, #-8]
80025cd4:	e3a02000 	mov	r2, #0
80025cd8:	e5832008 	str	r2, [r3, #8]
80025cdc:	e51b3008 	ldr	r3, [fp, #-8]
80025ce0:	e5933004 	ldr	r3, [r3, #4]
80025ce4:	e1a00003 	mov	r0, r3
80025ce8:	eb00108b 	bl	80029f1c <freevm>
80025cec:	e51b3008 	ldr	r3, [fp, #-8]
80025cf0:	e3a02000 	mov	r2, #0
80025cf4:	e5c3200c 	strb	r2, [r3, #12]
80025cf8:	e51b3008 	ldr	r3, [fp, #-8]
80025cfc:	e3a02000 	mov	r2, #0
80025d00:	e5832010 	str	r2, [r3, #16]
80025d04:	e51b3008 	ldr	r3, [fp, #-8]
80025d08:	e3a02000 	mov	r2, #0
80025d0c:	e5832014 	str	r2, [r3, #20]
80025d10:	e51b3008 	ldr	r3, [fp, #-8]
80025d14:	e3a02000 	mov	r2, #0
80025d18:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80025d1c:	e51b3008 	ldr	r3, [fp, #-8]
80025d20:	e3a02000 	mov	r2, #0
80025d24:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025d28:	e59f007c 	ldr	r0, [pc, #124]	@ 80025dac <wait+0x150>
80025d2c:	eb0003be 	bl	80026c2c <release>
80025d30:	e51b3010 	ldr	r3, [fp, #-16]
80025d34:	ea000019 	b	80025da0 <wait+0x144>
80025d38:	e1a00000 	nop			@ (mov r0, r0)
80025d3c:	e51b3008 	ldr	r3, [fp, #-8]
80025d40:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025d44:	e50b3008 	str	r3, [fp, #-8]
80025d48:	e51b3008 	ldr	r3, [fp, #-8]
80025d4c:	e59f2064 	ldr	r2, [pc, #100]	@ 80025db8 <wait+0x15c>
80025d50:	e1530002 	cmp	r3, r2
80025d54:	3affffca 	bcc	80025c84 <wait+0x28>
80025d58:	e51b300c 	ldr	r3, [fp, #-12]
80025d5c:	e3530000 	cmp	r3, #0
80025d60:	0a000004 	beq	80025d78 <wait+0x11c>
80025d64:	e59f3048 	ldr	r3, [pc, #72]	@ 80025db4 <wait+0x158>
80025d68:	e5933000 	ldr	r3, [r3]
80025d6c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025d70:	e3530000 	cmp	r3, #0
80025d74:	0a000003 	beq	80025d88 <wait+0x12c>
80025d78:	e59f002c 	ldr	r0, [pc, #44]	@ 80025dac <wait+0x150>
80025d7c:	eb0003aa 	bl	80026c2c <release>
80025d80:	e3e03000 	mvn	r3, #0
80025d84:	ea000005 	b	80025da0 <wait+0x144>
80025d88:	e59f3024 	ldr	r3, [pc, #36]	@ 80025db4 <wait+0x158>
80025d8c:	e5933000 	ldr	r3, [r3]
80025d90:	e59f1014 	ldr	r1, [pc, #20]	@ 80025dac <wait+0x150>
80025d94:	e1a00003 	mov	r0, r3
80025d98:	eb0000b6 	bl	80026078 <sleep>
80025d9c:	eaffffb3 	b	80025c70 <wait+0x14>
80025da0:	e1a00003 	mov	r0, r3
80025da4:	e24bd004 	sub	sp, fp, #4
80025da8:	e8bd8800 	pop	{fp, pc}
80025dac:	800af598 	.word	0x800af598
80025db0:	800af5cc 	.word	0x800af5cc
80025db4:	800b1ed0 	.word	0x800b1ed0
80025db8:	800b1ecc 	.word	0x800b1ecc

80025dbc <scheduler>:
80025dbc:	e92d4800 	push	{fp, lr}
80025dc0:	e28db004 	add	fp, sp, #4
80025dc4:	e24dd010 	sub	sp, sp, #16
80025dc8:	ebffe9ea 	bl	80020578 <sti>
80025dcc:	e59f0130 	ldr	r0, [pc, #304]	@ 80025f04 <scheduler+0x148>
80025dd0:	eb00038a 	bl	80026c00 <acquire>
80025dd4:	e3a03000 	mov	r3, #0
80025dd8:	e50b300c 	str	r3, [fp, #-12]
80025ddc:	e59f3124 	ldr	r3, [pc, #292]	@ 80025f08 <scheduler+0x14c>
80025de0:	e50b3008 	str	r3, [fp, #-8]
80025de4:	ea000014 	b	80025e3c <scheduler+0x80>
80025de8:	e51b3008 	ldr	r3, [fp, #-8]
80025dec:	e5d3300c 	ldrb	r3, [r3, #12]
80025df0:	e3530003 	cmp	r3, #3
80025df4:	1a00000d 	bne	80025e30 <scheduler+0x74>
80025df8:	e51b3008 	ldr	r3, [fp, #-8]
80025dfc:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025e00:	e50b3010 	str	r3, [fp, #-16]
80025e04:	e51b3008 	ldr	r3, [fp, #-8]
80025e08:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025e0c:	e3530000 	cmp	r3, #0
80025e10:	da000002 	ble	80025e20 <scheduler+0x64>
80025e14:	e51b3010 	ldr	r3, [fp, #-16]
80025e18:	e1a03083 	lsl	r3, r3, #1
80025e1c:	e50b3010 	str	r3, [fp, #-16]
80025e20:	e51b200c 	ldr	r2, [fp, #-12]
80025e24:	e51b3010 	ldr	r3, [fp, #-16]
80025e28:	e0823003 	add	r3, r2, r3
80025e2c:	e50b300c 	str	r3, [fp, #-12]
80025e30:	e51b3008 	ldr	r3, [fp, #-8]
80025e34:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025e38:	e50b3008 	str	r3, [fp, #-8]
80025e3c:	e51b3008 	ldr	r3, [fp, #-8]
80025e40:	e59f20c4 	ldr	r2, [pc, #196]	@ 80025f0c <scheduler+0x150>
80025e44:	e1530002 	cmp	r3, r2
80025e48:	3affffe6 	bcc	80025de8 <scheduler+0x2c>
80025e4c:	e51b300c 	ldr	r3, [fp, #-12]
80025e50:	e3530000 	cmp	r3, #0
80025e54:	da000027 	ble	80025ef8 <scheduler+0x13c>
80025e58:	e51b000c 	ldr	r0, [fp, #-12]
80025e5c:	ebfffddf 	bl	800255e0 <hold_lottery>
80025e60:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025e64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e68:	e3530000 	cmp	r3, #0
80025e6c:	0a000021 	beq	80025ef8 <scheduler+0x13c>
80025e70:	e59f2098 	ldr	r2, [pc, #152]	@ 80025f10 <scheduler+0x154>
80025e74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e78:	e5823000 	str	r3, [r2]
80025e7c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80025e80:	eb000f31 	bl	80029b4c <switchuvm>
80025e84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e88:	e3a02004 	mov	r2, #4
80025e8c:	e5c3200c 	strb	r2, [r3, #12]
80025e90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025e94:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025e98:	e2832001 	add	r2, r3, #1
80025e9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ea0:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025ea4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ea8:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025eac:	e3530000 	cmp	r3, #0
80025eb0:	da000004 	ble	80025ec8 <scheduler+0x10c>
80025eb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025eb8:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025ebc:	e2432001 	sub	r2, r3, #1
80025ec0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ec4:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025ec8:	e59f3044 	ldr	r3, [pc, #68]	@ 80025f14 <scheduler+0x158>
80025ecc:	e5933000 	ldr	r3, [r3]
80025ed0:	e2832004 	add	r2, r3, #4
80025ed4:	e59f3034 	ldr	r3, [pc, #52]	@ 80025f10 <scheduler+0x154>
80025ed8:	e5933000 	ldr	r3, [r3]
80025edc:	e593301c 	ldr	r3, [r3, #28]
80025ee0:	e1a01003 	mov	r1, r3
80025ee4:	e1a00002 	mov	r0, r2
80025ee8:	eb000364 	bl	80026c80 <swtch>
80025eec:	e59f301c 	ldr	r3, [pc, #28]	@ 80025f10 <scheduler+0x154>
80025ef0:	e3a02000 	mov	r2, #0
80025ef4:	e5832000 	str	r2, [r3]
80025ef8:	e59f0004 	ldr	r0, [pc, #4]	@ 80025f04 <scheduler+0x148>
80025efc:	eb00034a 	bl	80026c2c <release>
80025f00:	eaffffb0 	b	80025dc8 <scheduler+0xc>
80025f04:	800af598 	.word	0x800af598
80025f08:	800af5cc 	.word	0x800af5cc
80025f0c:	800b1ecc 	.word	0x800b1ecc
80025f10:	800b1ed0 	.word	0x800b1ed0
80025f14:	800af588 	.word	0x800af588

80025f18 <sched>:
80025f18:	e92d4800 	push	{fp, lr}
80025f1c:	e28db004 	add	fp, sp, #4
80025f20:	e24dd008 	sub	sp, sp, #8
80025f24:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025fe0 <sched+0xc8>
80025f28:	eb00034a 	bl	80026c58 <holding>
80025f2c:	e1a03000 	mov	r3, r0
80025f30:	e3530000 	cmp	r3, #0
80025f34:	1a000001 	bne	80025f40 <sched+0x28>
80025f38:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025fe4 <sched+0xcc>
80025f3c:	ebffeeec 	bl	80021af4 <panic>
80025f40:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025fe8 <sched+0xd0>
80025f44:	e5933000 	ldr	r3, [r3]
80025f48:	e593300c 	ldr	r3, [r3, #12]
80025f4c:	e3530001 	cmp	r3, #1
80025f50:	0a000001 	beq	80025f5c <sched+0x44>
80025f54:	e59f0090 	ldr	r0, [pc, #144]	@ 80025fec <sched+0xd4>
80025f58:	ebffeee5 	bl	80021af4 <panic>
80025f5c:	e59f308c 	ldr	r3, [pc, #140]	@ 80025ff0 <sched+0xd8>
80025f60:	e5933000 	ldr	r3, [r3]
80025f64:	e5d3300c 	ldrb	r3, [r3, #12]
80025f68:	e3530004 	cmp	r3, #4
80025f6c:	1a000001 	bne	80025f78 <sched+0x60>
80025f70:	e59f007c 	ldr	r0, [pc, #124]	@ 80025ff4 <sched+0xdc>
80025f74:	ebffeede 	bl	80021af4 <panic>
80025f78:	ebffe99c 	bl	800205f0 <int_enabled>
80025f7c:	e1a03000 	mov	r3, r0
80025f80:	e3530000 	cmp	r3, #0
80025f84:	0a000001 	beq	80025f90 <sched+0x78>
80025f88:	e59f0068 	ldr	r0, [pc, #104]	@ 80025ff8 <sched+0xe0>
80025f8c:	ebffeed8 	bl	80021af4 <panic>
80025f90:	e59f3050 	ldr	r3, [pc, #80]	@ 80025fe8 <sched+0xd0>
80025f94:	e5933000 	ldr	r3, [r3]
80025f98:	e5933010 	ldr	r3, [r3, #16]
80025f9c:	e50b3008 	str	r3, [fp, #-8]
80025fa0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025ff0 <sched+0xd8>
80025fa4:	e5933000 	ldr	r3, [r3]
80025fa8:	e283201c 	add	r2, r3, #28
80025fac:	e59f3034 	ldr	r3, [pc, #52]	@ 80025fe8 <sched+0xd0>
80025fb0:	e5933000 	ldr	r3, [r3]
80025fb4:	e5933004 	ldr	r3, [r3, #4]
80025fb8:	e1a01003 	mov	r1, r3
80025fbc:	e1a00002 	mov	r0, r2
80025fc0:	eb00032e 	bl	80026c80 <swtch>
80025fc4:	e59f301c 	ldr	r3, [pc, #28]	@ 80025fe8 <sched+0xd0>
80025fc8:	e5933000 	ldr	r3, [r3]
80025fcc:	e51b2008 	ldr	r2, [fp, #-8]
80025fd0:	e5832010 	str	r2, [r3, #16]
80025fd4:	e1a00000 	nop			@ (mov r0, r0)
80025fd8:	e24bd004 	sub	sp, fp, #4
80025fdc:	e8bd8800 	pop	{fp, pc}
80025fe0:	800af598 	.word	0x800af598
80025fe4:	8002b030 	.word	0x8002b030
80025fe8:	800af588 	.word	0x800af588
80025fec:	8002b044 	.word	0x8002b044
80025ff0:	800b1ed0 	.word	0x800b1ed0
80025ff4:	8002b050 	.word	0x8002b050
80025ff8:	8002b060 	.word	0x8002b060

80025ffc <yield>:
80025ffc:	e92d4800 	push	{fp, lr}
80026000:	e28db004 	add	fp, sp, #4
80026004:	e59f0024 	ldr	r0, [pc, #36]	@ 80026030 <yield+0x34>
80026008:	eb0002fc 	bl	80026c00 <acquire>
8002600c:	e59f3020 	ldr	r3, [pc, #32]	@ 80026034 <yield+0x38>
80026010:	e5933000 	ldr	r3, [r3]
80026014:	e3a02003 	mov	r2, #3
80026018:	e5c3200c 	strb	r2, [r3, #12]
8002601c:	ebffffbd 	bl	80025f18 <sched>
80026020:	e59f0008 	ldr	r0, [pc, #8]	@ 80026030 <yield+0x34>
80026024:	eb000300 	bl	80026c2c <release>
80026028:	e1a00000 	nop			@ (mov r0, r0)
8002602c:	e8bd8800 	pop	{fp, pc}
80026030:	800af598 	.word	0x800af598
80026034:	800b1ed0 	.word	0x800b1ed0

80026038 <forkret>:
80026038:	e92d4800 	push	{fp, lr}
8002603c:	e28db004 	add	fp, sp, #4
80026040:	e59f0028 	ldr	r0, [pc, #40]	@ 80026070 <forkret+0x38>
80026044:	eb0002f8 	bl	80026c2c <release>
80026048:	e59f3024 	ldr	r3, [pc, #36]	@ 80026074 <forkret+0x3c>
8002604c:	e5933000 	ldr	r3, [r3]
80026050:	e3530000 	cmp	r3, #0
80026054:	0a000003 	beq	80026068 <forkret+0x30>
80026058:	e59f3014 	ldr	r3, [pc, #20]	@ 80026074 <forkret+0x3c>
8002605c:	e3a02000 	mov	r2, #0
80026060:	e5832000 	str	r2, [r3]
80026064:	ebfff941 	bl	80024570 <initlog>
80026068:	e1a00000 	nop			@ (mov r0, r0)
8002606c:	e8bd8800 	pop	{fp, pc}
80026070:	800af598 	.word	0x800af598
80026074:	8002c018 	.word	0x8002c018

80026078 <sleep>:
80026078:	e92d4800 	push	{fp, lr}
8002607c:	e28db004 	add	fp, sp, #4
80026080:	e24dd008 	sub	sp, sp, #8
80026084:	e50b0008 	str	r0, [fp, #-8]
80026088:	e50b100c 	str	r1, [fp, #-12]
8002608c:	e59f30a4 	ldr	r3, [pc, #164]	@ 80026138 <sleep+0xc0>
80026090:	e5933000 	ldr	r3, [r3]
80026094:	e3530000 	cmp	r3, #0
80026098:	1a000001 	bne	800260a4 <sleep+0x2c>
8002609c:	e59f0098 	ldr	r0, [pc, #152]	@ 8002613c <sleep+0xc4>
800260a0:	ebffee93 	bl	80021af4 <panic>
800260a4:	e51b300c 	ldr	r3, [fp, #-12]
800260a8:	e3530000 	cmp	r3, #0
800260ac:	1a000001 	bne	800260b8 <sleep+0x40>
800260b0:	e59f0088 	ldr	r0, [pc, #136]	@ 80026140 <sleep+0xc8>
800260b4:	ebffee8e 	bl	80021af4 <panic>
800260b8:	e51b300c 	ldr	r3, [fp, #-12]
800260bc:	e59f2080 	ldr	r2, [pc, #128]	@ 80026144 <sleep+0xcc>
800260c0:	e1530002 	cmp	r3, r2
800260c4:	0a000003 	beq	800260d8 <sleep+0x60>
800260c8:	e59f0074 	ldr	r0, [pc, #116]	@ 80026144 <sleep+0xcc>
800260cc:	eb0002cb 	bl	80026c00 <acquire>
800260d0:	e51b000c 	ldr	r0, [fp, #-12]
800260d4:	eb0002d4 	bl	80026c2c <release>
800260d8:	e59f3058 	ldr	r3, [pc, #88]	@ 80026138 <sleep+0xc0>
800260dc:	e5933000 	ldr	r3, [r3]
800260e0:	e51b2008 	ldr	r2, [fp, #-8]
800260e4:	e5832020 	str	r2, [r3, #32]
800260e8:	e59f3048 	ldr	r3, [pc, #72]	@ 80026138 <sleep+0xc0>
800260ec:	e5933000 	ldr	r3, [r3]
800260f0:	e3a02002 	mov	r2, #2
800260f4:	e5c3200c 	strb	r2, [r3, #12]
800260f8:	ebffff86 	bl	80025f18 <sched>
800260fc:	e59f3034 	ldr	r3, [pc, #52]	@ 80026138 <sleep+0xc0>
80026100:	e5933000 	ldr	r3, [r3]
80026104:	e3a02000 	mov	r2, #0
80026108:	e5832020 	str	r2, [r3, #32]
8002610c:	e51b300c 	ldr	r3, [fp, #-12]
80026110:	e59f202c 	ldr	r2, [pc, #44]	@ 80026144 <sleep+0xcc>
80026114:	e1530002 	cmp	r3, r2
80026118:	0a000003 	beq	8002612c <sleep+0xb4>
8002611c:	e59f0020 	ldr	r0, [pc, #32]	@ 80026144 <sleep+0xcc>
80026120:	eb0002c1 	bl	80026c2c <release>
80026124:	e51b000c 	ldr	r0, [fp, #-12]
80026128:	eb0002b4 	bl	80026c00 <acquire>
8002612c:	e1a00000 	nop			@ (mov r0, r0)
80026130:	e24bd004 	sub	sp, fp, #4
80026134:	e8bd8800 	pop	{fp, pc}
80026138:	800b1ed0 	.word	0x800b1ed0
8002613c:	8002b074 	.word	0x8002b074
80026140:	8002b07c 	.word	0x8002b07c
80026144:	800af598 	.word	0x800af598

80026148 <wakeup1>:
80026148:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002614c:	e28db000 	add	fp, sp, #0
80026150:	e24dd014 	sub	sp, sp, #20
80026154:	e50b0010 	str	r0, [fp, #-16]
80026158:	e59f30dc 	ldr	r3, [pc, #220]	@ 8002623c <wakeup1+0xf4>
8002615c:	e50b3008 	str	r3, [fp, #-8]
80026160:	ea00002c 	b	80026218 <wakeup1+0xd0>
80026164:	e51b3008 	ldr	r3, [fp, #-8]
80026168:	e5d3300c 	ldrb	r3, [r3, #12]
8002616c:	e3530002 	cmp	r3, #2
80026170:	1a000024 	bne	80026208 <wakeup1+0xc0>
80026174:	e51b3008 	ldr	r3, [fp, #-8]
80026178:	e5933020 	ldr	r3, [r3, #32]
8002617c:	e51b2010 	ldr	r2, [fp, #-16]
80026180:	e1520003 	cmp	r2, r3
80026184:	1a00001f 	bne	80026208 <wakeup1+0xc0>
80026188:	e51b3010 	ldr	r3, [fp, #-16]
8002618c:	e59f20ac 	ldr	r2, [pc, #172]	@ 80026240 <wakeup1+0xf8>
80026190:	e1530002 	cmp	r3, r2
80026194:	1a000017 	bne	800261f8 <wakeup1+0xb0>
80026198:	e51b3008 	ldr	r3, [fp, #-8]
8002619c:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
800261a0:	e1a02003 	mov	r2, r3
800261a4:	e59f3094 	ldr	r3, [pc, #148]	@ 80026240 <wakeup1+0xf8>
800261a8:	e5933000 	ldr	r3, [r3]
800261ac:	e1520003 	cmp	r2, r3
800261b0:	8a000015 	bhi	8002620c <wakeup1+0xc4>
800261b4:	e51b3008 	ldr	r3, [fp, #-8]
800261b8:	e5932084 	ldr	r2, [r3, #132]	@ 0x84
800261bc:	e51b3008 	ldr	r3, [fp, #-8]
800261c0:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
800261c4:	e0822003 	add	r2, r2, r3
800261c8:	e51b3008 	ldr	r3, [fp, #-8]
800261cc:	e5832084 	str	r2, [r3, #132]	@ 0x84
800261d0:	e51b3008 	ldr	r3, [fp, #-8]
800261d4:	e3a02003 	mov	r2, #3
800261d8:	e5c3200c 	strb	r2, [r3, #12]
800261dc:	e51b3008 	ldr	r3, [fp, #-8]
800261e0:	e3a02000 	mov	r2, #0
800261e4:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800261e8:	e51b3008 	ldr	r3, [fp, #-8]
800261ec:	e3a02000 	mov	r2, #0
800261f0:	e5832090 	str	r2, [r3, #144]	@ 0x90
800261f4:	ea000004 	b	8002620c <wakeup1+0xc4>
800261f8:	e51b3008 	ldr	r3, [fp, #-8]
800261fc:	e3a02003 	mov	r2, #3
80026200:	e5c3200c 	strb	r2, [r3, #12]
80026204:	ea000000 	b	8002620c <wakeup1+0xc4>
80026208:	e1a00000 	nop			@ (mov r0, r0)
8002620c:	e51b3008 	ldr	r3, [fp, #-8]
80026210:	e28330a4 	add	r3, r3, #164	@ 0xa4
80026214:	e50b3008 	str	r3, [fp, #-8]
80026218:	e51b3008 	ldr	r3, [fp, #-8]
8002621c:	e59f2020 	ldr	r2, [pc, #32]	@ 80026244 <wakeup1+0xfc>
80026220:	e1530002 	cmp	r3, r2
80026224:	3affffce 	bcc	80026164 <wakeup1+0x1c>
80026228:	e1a00000 	nop			@ (mov r0, r0)
8002622c:	e1a00000 	nop			@ (mov r0, r0)
80026230:	e28bd000 	add	sp, fp, #0
80026234:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026238:	e12fff1e 	bx	lr
8002623c:	800af5cc 	.word	0x800af5cc
80026240:	800b2008 	.word	0x800b2008
80026244:	800b1ecc 	.word	0x800b1ecc

80026248 <wakeup>:
80026248:	e92d4800 	push	{fp, lr}
8002624c:	e28db004 	add	fp, sp, #4
80026250:	e24dd008 	sub	sp, sp, #8
80026254:	e50b0008 	str	r0, [fp, #-8]
80026258:	e59f001c 	ldr	r0, [pc, #28]	@ 8002627c <wakeup+0x34>
8002625c:	eb000267 	bl	80026c00 <acquire>
80026260:	e51b0008 	ldr	r0, [fp, #-8]
80026264:	ebffffb7 	bl	80026148 <wakeup1>
80026268:	e59f000c 	ldr	r0, [pc, #12]	@ 8002627c <wakeup+0x34>
8002626c:	eb00026e 	bl	80026c2c <release>
80026270:	e1a00000 	nop			@ (mov r0, r0)
80026274:	e24bd004 	sub	sp, fp, #4
80026278:	e8bd8800 	pop	{fp, pc}
8002627c:	800af598 	.word	0x800af598

80026280 <kill>:
80026280:	e92d4800 	push	{fp, lr}
80026284:	e28db004 	add	fp, sp, #4
80026288:	e24dd010 	sub	sp, sp, #16
8002628c:	e50b0010 	str	r0, [fp, #-16]
80026290:	e59f008c 	ldr	r0, [pc, #140]	@ 80026324 <kill+0xa4>
80026294:	eb000259 	bl	80026c00 <acquire>
80026298:	e59f3088 	ldr	r3, [pc, #136]	@ 80026328 <kill+0xa8>
8002629c:	e50b3008 	str	r3, [fp, #-8]
800262a0:	ea000015 	b	800262fc <kill+0x7c>
800262a4:	e51b3008 	ldr	r3, [fp, #-8]
800262a8:	e5933010 	ldr	r3, [r3, #16]
800262ac:	e51b2010 	ldr	r2, [fp, #-16]
800262b0:	e1520003 	cmp	r2, r3
800262b4:	1a00000d 	bne	800262f0 <kill+0x70>
800262b8:	e51b3008 	ldr	r3, [fp, #-8]
800262bc:	e3a02001 	mov	r2, #1
800262c0:	e5832024 	str	r2, [r3, #36]	@ 0x24
800262c4:	e51b3008 	ldr	r3, [fp, #-8]
800262c8:	e5d3300c 	ldrb	r3, [r3, #12]
800262cc:	e3530002 	cmp	r3, #2
800262d0:	1a000002 	bne	800262e0 <kill+0x60>
800262d4:	e51b3008 	ldr	r3, [fp, #-8]
800262d8:	e3a02003 	mov	r2, #3
800262dc:	e5c3200c 	strb	r2, [r3, #12]
800262e0:	e59f003c 	ldr	r0, [pc, #60]	@ 80026324 <kill+0xa4>
800262e4:	eb000250 	bl	80026c2c <release>
800262e8:	e3a03000 	mov	r3, #0
800262ec:	ea000009 	b	80026318 <kill+0x98>
800262f0:	e51b3008 	ldr	r3, [fp, #-8]
800262f4:	e28330a4 	add	r3, r3, #164	@ 0xa4
800262f8:	e50b3008 	str	r3, [fp, #-8]
800262fc:	e51b3008 	ldr	r3, [fp, #-8]
80026300:	e59f2024 	ldr	r2, [pc, #36]	@ 8002632c <kill+0xac>
80026304:	e1530002 	cmp	r3, r2
80026308:	3affffe5 	bcc	800262a4 <kill+0x24>
8002630c:	e59f0010 	ldr	r0, [pc, #16]	@ 80026324 <kill+0xa4>
80026310:	eb000245 	bl	80026c2c <release>
80026314:	e3e03000 	mvn	r3, #0
80026318:	e1a00003 	mov	r0, r3
8002631c:	e24bd004 	sub	sp, fp, #4
80026320:	e8bd8800 	pop	{fp, pc}
80026324:	800af598 	.word	0x800af598
80026328:	800af5cc 	.word	0x800af5cc
8002632c:	800b1ecc 	.word	0x800b1ecc

80026330 <procdump>:
80026330:	e92d4800 	push	{fp, lr}
80026334:	e28db004 	add	fp, sp, #4
80026338:	e24dd008 	sub	sp, sp, #8
8002633c:	e59f30b8 	ldr	r3, [pc, #184]	@ 800263fc <procdump+0xcc>
80026340:	e50b3008 	str	r3, [fp, #-8]
80026344:	ea000023 	b	800263d8 <procdump+0xa8>
80026348:	e51b3008 	ldr	r3, [fp, #-8]
8002634c:	e5d3300c 	ldrb	r3, [r3, #12]
80026350:	e3530000 	cmp	r3, #0
80026354:	0a00001b 	beq	800263c8 <procdump+0x98>
80026358:	e51b3008 	ldr	r3, [fp, #-8]
8002635c:	e5d3300c 	ldrb	r3, [r3, #12]
80026360:	e3530005 	cmp	r3, #5
80026364:	8a00000d 	bhi	800263a0 <procdump+0x70>
80026368:	e51b3008 	ldr	r3, [fp, #-8]
8002636c:	e5d3300c 	ldrb	r3, [r3, #12]
80026370:	e1a02003 	mov	r2, r3
80026374:	e59f3084 	ldr	r3, [pc, #132]	@ 80026400 <procdump+0xd0>
80026378:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002637c:	e3530000 	cmp	r3, #0
80026380:	0a000006 	beq	800263a0 <procdump+0x70>
80026384:	e51b3008 	ldr	r3, [fp, #-8]
80026388:	e5d3300c 	ldrb	r3, [r3, #12]
8002638c:	e1a02003 	mov	r2, r3
80026390:	e59f3068 	ldr	r3, [pc, #104]	@ 80026400 <procdump+0xd0>
80026394:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026398:	e50b300c 	str	r3, [fp, #-12]
8002639c:	ea000001 	b	800263a8 <procdump+0x78>
800263a0:	e59f305c 	ldr	r3, [pc, #92]	@ 80026404 <procdump+0xd4>
800263a4:	e50b300c 	str	r3, [fp, #-12]
800263a8:	e51b3008 	ldr	r3, [fp, #-8]
800263ac:	e5931010 	ldr	r1, [r3, #16]
800263b0:	e51b3008 	ldr	r3, [fp, #-8]
800263b4:	e283306c 	add	r3, r3, #108	@ 0x6c
800263b8:	e51b200c 	ldr	r2, [fp, #-12]
800263bc:	e59f0044 	ldr	r0, [pc, #68]	@ 80026408 <procdump+0xd8>
800263c0:	ebffed33 	bl	80021894 <cprintf>
800263c4:	ea000000 	b	800263cc <procdump+0x9c>
800263c8:	e1a00000 	nop			@ (mov r0, r0)
800263cc:	e51b3008 	ldr	r3, [fp, #-8]
800263d0:	e28330a4 	add	r3, r3, #164	@ 0xa4
800263d4:	e50b3008 	str	r3, [fp, #-8]
800263d8:	e51b3008 	ldr	r3, [fp, #-8]
800263dc:	e59f2028 	ldr	r2, [pc, #40]	@ 8002640c <procdump+0xdc>
800263e0:	e1530002 	cmp	r3, r2
800263e4:	3affffd7 	bcc	80026348 <procdump+0x18>
800263e8:	e59f0020 	ldr	r0, [pc, #32]	@ 80026410 <procdump+0xe0>
800263ec:	ebffe906 	bl	8002080c <show_callstk>
800263f0:	e1a00000 	nop			@ (mov r0, r0)
800263f4:	e24bd004 	sub	sp, fp, #4
800263f8:	e8bd8800 	pop	{fp, pc}
800263fc:	800af5cc 	.word	0x800af5cc
80026400:	8002c01c 	.word	0x8002c01c
80026404:	8002b090 	.word	0x8002b090
80026408:	8002b094 	.word	0x8002b094
8002640c:	800b1ecc 	.word	0x800b1ecc
80026410:	8002b0a0 	.word	0x8002b0a0

80026414 <settickets>:
80026414:	e92d4800 	push	{fp, lr}
80026418:	e28db004 	add	fp, sp, #4
8002641c:	e24dd010 	sub	sp, sp, #16
80026420:	e50b0010 	str	r0, [fp, #-16]
80026424:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026428:	e3a03000 	mov	r3, #0
8002642c:	e50b300c 	str	r3, [fp, #-12]
80026430:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026434:	e3530000 	cmp	r3, #0
80026438:	ca000001 	bgt	80026444 <settickets+0x30>
8002643c:	e3e03000 	mvn	r3, #0
80026440:	ea00001e 	b	800264c0 <settickets+0xac>
80026444:	e59f0080 	ldr	r0, [pc, #128]	@ 800264cc <settickets+0xb8>
80026448:	eb0001ec 	bl	80026c00 <acquire>
8002644c:	e59f307c 	ldr	r3, [pc, #124]	@ 800264d0 <settickets+0xbc>
80026450:	e50b3008 	str	r3, [fp, #-8]
80026454:	ea00000d 	b	80026490 <settickets+0x7c>
80026458:	e51b3008 	ldr	r3, [fp, #-8]
8002645c:	e5933010 	ldr	r3, [r3, #16]
80026460:	e51b2010 	ldr	r2, [fp, #-16]
80026464:	e1520003 	cmp	r2, r3
80026468:	1a000005 	bne	80026484 <settickets+0x70>
8002646c:	e51b3008 	ldr	r3, [fp, #-8]
80026470:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80026474:	e5832080 	str	r2, [r3, #128]	@ 0x80
80026478:	e3a03001 	mov	r3, #1
8002647c:	e50b300c 	str	r3, [fp, #-12]
80026480:	ea000006 	b	800264a0 <settickets+0x8c>
80026484:	e51b3008 	ldr	r3, [fp, #-8]
80026488:	e28330a4 	add	r3, r3, #164	@ 0xa4
8002648c:	e50b3008 	str	r3, [fp, #-8]
80026490:	e51b3008 	ldr	r3, [fp, #-8]
80026494:	e59f2038 	ldr	r2, [pc, #56]	@ 800264d4 <settickets+0xc0>
80026498:	e1530002 	cmp	r3, r2
8002649c:	3affffed 	bcc	80026458 <settickets+0x44>
800264a0:	e59f0024 	ldr	r0, [pc, #36]	@ 800264cc <settickets+0xb8>
800264a4:	eb0001e0 	bl	80026c2c <release>
800264a8:	e51b300c 	ldr	r3, [fp, #-12]
800264ac:	e3530000 	cmp	r3, #0
800264b0:	0a000001 	beq	800264bc <settickets+0xa8>
800264b4:	e3a03000 	mov	r3, #0
800264b8:	ea000000 	b	800264c0 <settickets+0xac>
800264bc:	e3e03000 	mvn	r3, #0
800264c0:	e1a00003 	mov	r0, r3
800264c4:	e24bd004 	sub	sp, fp, #4
800264c8:	e8bd8800 	pop	{fp, pc}
800264cc:	800af598 	.word	0x800af598
800264d0:	800af5cc 	.word	0x800af5cc
800264d4:	800b1ecc 	.word	0x800b1ecc

800264d8 <srand>:
800264d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800264dc:	e28db000 	add	fp, sp, #0
800264e0:	e24dd00c 	sub	sp, sp, #12
800264e4:	e50b0008 	str	r0, [fp, #-8]
800264e8:	e59f2014 	ldr	r2, [pc, #20]	@ 80026504 <srand+0x2c>
800264ec:	e51b3008 	ldr	r3, [fp, #-8]
800264f0:	e5823000 	str	r3, [r2]
800264f4:	e1a00000 	nop			@ (mov r0, r0)
800264f8:	e28bd000 	add	sp, fp, #0
800264fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026500:	e12fff1e 	bx	lr
80026504:	800af594 	.word	0x800af594

80026508 <getpinfo>:
80026508:	e92d4800 	push	{fp, lr}
8002650c:	e28db004 	add	fp, sp, #4
80026510:	e24dd010 	sub	sp, sp, #16
80026514:	e50b0010 	str	r0, [fp, #-16]
80026518:	e3a03000 	mov	r3, #0
8002651c:	e50b300c 	str	r3, [fp, #-12]
80026520:	e51b3010 	ldr	r3, [fp, #-16]
80026524:	e3530000 	cmp	r3, #0
80026528:	1a000001 	bne	80026534 <getpinfo+0x2c>
8002652c:	e3e03000 	mvn	r3, #0
80026530:	ea000033 	b	80026604 <getpinfo+0xfc>
80026534:	e59f00d4 	ldr	r0, [pc, #212]	@ 80026610 <getpinfo+0x108>
80026538:	eb0001b0 	bl	80026c00 <acquire>
8002653c:	e59f30d0 	ldr	r3, [pc, #208]	@ 80026614 <getpinfo+0x10c>
80026540:	e50b3008 	str	r3, [fp, #-8]
80026544:	ea000027 	b	800265e8 <getpinfo+0xe0>
80026548:	e51b3008 	ldr	r3, [fp, #-8]
8002654c:	e5d3300c 	ldrb	r3, [r3, #12]
80026550:	e3530000 	cmp	r3, #0
80026554:	13a03001 	movne	r3, #1
80026558:	03a03000 	moveq	r3, #0
8002655c:	e6ef3073 	uxtb	r3, r3
80026560:	e1a01003 	mov	r1, r3
80026564:	e51b3010 	ldr	r3, [fp, #-16]
80026568:	e51b200c 	ldr	r2, [fp, #-12]
8002656c:	e7831102 	str	r1, [r3, r2, lsl #2]
80026570:	e51b3008 	ldr	r3, [fp, #-8]
80026574:	e5931010 	ldr	r1, [r3, #16]
80026578:	e51b3010 	ldr	r3, [fp, #-16]
8002657c:	e51b200c 	ldr	r2, [fp, #-12]
80026580:	e2822040 	add	r2, r2, #64	@ 0x40
80026584:	e7831102 	str	r1, [r3, r2, lsl #2]
80026588:	e51b3008 	ldr	r3, [fp, #-8]
8002658c:	e5931080 	ldr	r1, [r3, #128]	@ 0x80
80026590:	e51b3010 	ldr	r3, [fp, #-16]
80026594:	e51b200c 	ldr	r2, [fp, #-12]
80026598:	e2822080 	add	r2, r2, #128	@ 0x80
8002659c:	e7831102 	str	r1, [r3, r2, lsl #2]
800265a0:	e51b3008 	ldr	r3, [fp, #-8]
800265a4:	e5931088 	ldr	r1, [r3, #136]	@ 0x88
800265a8:	e51b3010 	ldr	r3, [fp, #-16]
800265ac:	e51b200c 	ldr	r2, [fp, #-12]
800265b0:	e28220c0 	add	r2, r2, #192	@ 0xc0
800265b4:	e7831102 	str	r1, [r3, r2, lsl #2]
800265b8:	e51b3008 	ldr	r3, [fp, #-8]
800265bc:	e5931084 	ldr	r1, [r3, #132]	@ 0x84
800265c0:	e51b3010 	ldr	r3, [fp, #-16]
800265c4:	e51b200c 	ldr	r2, [fp, #-12]
800265c8:	e2822c01 	add	r2, r2, #256	@ 0x100
800265cc:	e7831102 	str	r1, [r3, r2, lsl #2]
800265d0:	e51b3008 	ldr	r3, [fp, #-8]
800265d4:	e28330a4 	add	r3, r3, #164	@ 0xa4
800265d8:	e50b3008 	str	r3, [fp, #-8]
800265dc:	e51b300c 	ldr	r3, [fp, #-12]
800265e0:	e2833001 	add	r3, r3, #1
800265e4:	e50b300c 	str	r3, [fp, #-12]
800265e8:	e51b3008 	ldr	r3, [fp, #-8]
800265ec:	e59f2024 	ldr	r2, [pc, #36]	@ 80026618 <getpinfo+0x110>
800265f0:	e1530002 	cmp	r3, r2
800265f4:	3affffd3 	bcc	80026548 <getpinfo+0x40>
800265f8:	e59f0010 	ldr	r0, [pc, #16]	@ 80026610 <getpinfo+0x108>
800265fc:	eb00018a 	bl	80026c2c <release>
80026600:	e3a03000 	mov	r3, #0
80026604:	e1a00003 	mov	r0, r3
80026608:	e24bd004 	sub	sp, fp, #4
8002660c:	e8bd8800 	pop	{fp, pc}
80026610:	800af598 	.word	0x800af598
80026614:	800af5cc 	.word	0x800af5cc
80026618:	800b1ecc 	.word	0x800b1ecc

8002661c <thread_create>:
8002661c:	e92d4810 	push	{r4, fp, lr}
80026620:	e28db008 	add	fp, sp, #8
80026624:	e24dd024 	sub	sp, sp, #36	@ 0x24
80026628:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002662c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80026630:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80026634:	ebfffb13 	bl	80025288 <allocproc>
80026638:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002663c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026640:	e3530000 	cmp	r3, #0
80026644:	1a000001 	bne	80026650 <thread_create+0x34>
80026648:	e3e03000 	mvn	r3, #0
8002664c:	ea0000a8 	b	800268f4 <thread_create+0x2d8>
80026650:	e59f32a8 	ldr	r3, [pc, #680]	@ 80026900 <thread_create+0x2e4>
80026654:	e5933000 	ldr	r3, [r3]
80026658:	e5932004 	ldr	r2, [r3, #4]
8002665c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026660:	e5832004 	str	r2, [r3, #4]
80026664:	e59f3294 	ldr	r3, [pc, #660]	@ 80026900 <thread_create+0x2e4>
80026668:	e5933000 	ldr	r3, [r3]
8002666c:	e5932000 	ldr	r2, [r3]
80026670:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026674:	e5832000 	str	r2, [r3]
80026678:	e59f3280 	ldr	r3, [pc, #640]	@ 80026900 <thread_create+0x2e4>
8002667c:	e5933000 	ldr	r3, [r3]
80026680:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80026684:	e3530000 	cmp	r3, #0
80026688:	0a000003 	beq	8002669c <thread_create+0x80>
8002668c:	e59f326c 	ldr	r3, [pc, #620]	@ 80026900 <thread_create+0x2e4>
80026690:	e5933000 	ldr	r3, [r3]
80026694:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
80026698:	ea000001 	b	800266a4 <thread_create+0x88>
8002669c:	e59f325c 	ldr	r3, [pc, #604]	@ 80026900 <thread_create+0x2e4>
800266a0:	e5933000 	ldr	r3, [r3]
800266a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800266a8:	e5823098 	str	r3, [r2, #152]	@ 0x98
800266ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800266b0:	e3a02001 	mov	r2, #1
800266b4:	e5832094 	str	r2, [r3, #148]	@ 0x94
800266b8:	e59f3240 	ldr	r3, [pc, #576]	@ 80026900 <thread_create+0x2e4>
800266bc:	e5933000 	ldr	r3, [r3]
800266c0:	e5932018 	ldr	r2, [r3, #24]
800266c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800266c8:	e5933018 	ldr	r3, [r3, #24]
800266cc:	e1a00003 	mov	r0, r3
800266d0:	e1a01002 	mov	r1, r2
800266d4:	e3a03048 	mov	r3, #72	@ 0x48
800266d8:	e1a02003 	mov	r2, r3
800266dc:	ebffe6f8 	bl	800202c4 <memcpy>
800266e0:	e59f3218 	ldr	r3, [pc, #536]	@ 80026900 <thread_create+0x2e4>
800266e4:	e5933000 	ldr	r3, [r3]
800266e8:	e5933000 	ldr	r3, [r3]
800266ec:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800266f0:	e283300f 	add	r3, r3, #15
800266f4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800266f8:	e3c3300f 	bic	r3, r3, #15
800266fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80026700:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026704:	e5930004 	ldr	r0, [r3, #4]
80026708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002670c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80026710:	e1a02003 	mov	r2, r3
80026714:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80026718:	eb000da3 	bl	80029dac <allocuvm>
8002671c:	e1a03000 	mov	r3, r0
80026720:	e3530000 	cmp	r3, #0
80026724:	1a000004 	bne	8002673c <thread_create+0x120>
80026728:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002672c:	e3a02000 	mov	r2, #0
80026730:	e5c3200c 	strb	r2, [r3, #12]
80026734:	e3e03000 	mvn	r3, #0
80026738:	ea00006d 	b	800268f4 <thread_create+0x2d8>
8002673c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80026740:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026744:	e583209c 	str	r2, [r3, #156]	@ 0x9c
80026748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002674c:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80026750:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026754:	e5832000 	str	r2, [r3]
80026758:	e59f31a0 	ldr	r3, [pc, #416]	@ 80026900 <thread_create+0x2e4>
8002675c:	e5933000 	ldr	r3, [r3]
80026760:	e5932000 	ldr	r2, [r3]
80026764:	e59f3194 	ldr	r3, [pc, #404]	@ 80026900 <thread_create+0x2e4>
80026768:	e5933000 	ldr	r3, [r3]
8002676c:	e2822a01 	add	r2, r2, #4096	@ 0x1000
80026770:	e5832000 	str	r2, [r3]
80026774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026778:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002677c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80026780:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80026784:	e2433004 	sub	r3, r3, #4
80026788:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002678c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80026790:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80026794:	e5832000 	str	r2, [r3]
80026798:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002679c:	e5933018 	ldr	r3, [r3, #24]
800267a0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800267a4:	e5832000 	str	r2, [r3]
800267a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267ac:	e5933018 	ldr	r3, [r3, #24]
800267b0:	e3a02000 	mov	r2, #0
800267b4:	e5832004 	str	r2, [r3, #4]
800267b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267bc:	e5933018 	ldr	r3, [r3, #24]
800267c0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800267c4:	e5832044 	str	r2, [r3, #68]	@ 0x44
800267c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267cc:	e5934018 	ldr	r4, [r3, #24]
800267d0:	ebffe776 	bl	800205b0 <spsr_usr>
800267d4:	e1a03000 	mov	r3, r0
800267d8:	e584300c 	str	r3, [r4, #12]
800267dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267e0:	e5933018 	ldr	r3, [r3, #24]
800267e4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800267e8:	e5832010 	str	r2, [r3, #16]
800267ec:	e3a03000 	mov	r3, #0
800267f0:	e50b3010 	str	r3, [fp, #-16]
800267f4:	ea000015 	b	80026850 <thread_create+0x234>
800267f8:	e59f3100 	ldr	r3, [pc, #256]	@ 80026900 <thread_create+0x2e4>
800267fc:	e5933000 	ldr	r3, [r3]
80026800:	e51b2010 	ldr	r2, [fp, #-16]
80026804:	e282200a 	add	r2, r2, #10
80026808:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002680c:	e3530000 	cmp	r3, #0
80026810:	0a00000b 	beq	80026844 <thread_create+0x228>
80026814:	e59f30e4 	ldr	r3, [pc, #228]	@ 80026900 <thread_create+0x2e4>
80026818:	e5933000 	ldr	r3, [r3]
8002681c:	e51b2010 	ldr	r2, [fp, #-16]
80026820:	e282200a 	add	r2, r2, #10
80026824:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026828:	e1a00003 	mov	r0, r3
8002682c:	ebffef92 	bl	8002267c <filedup>
80026830:	e1a01000 	mov	r1, r0
80026834:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026838:	e51b2010 	ldr	r2, [fp, #-16]
8002683c:	e282200a 	add	r2, r2, #10
80026840:	e7831102 	str	r1, [r3, r2, lsl #2]
80026844:	e51b3010 	ldr	r3, [fp, #-16]
80026848:	e2833001 	add	r3, r3, #1
8002684c:	e50b3010 	str	r3, [fp, #-16]
80026850:	e51b3010 	ldr	r3, [fp, #-16]
80026854:	e353000f 	cmp	r3, #15
80026858:	daffffe6 	ble	800267f8 <thread_create+0x1dc>
8002685c:	e59f309c 	ldr	r3, [pc, #156]	@ 80026900 <thread_create+0x2e4>
80026860:	e5933000 	ldr	r3, [r3]
80026864:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80026868:	e1a00003 	mov	r0, r3
8002686c:	ebfff254 	bl	800231c4 <idup>
80026870:	e1a02000 	mov	r2, r0
80026874:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026878:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002687c:	e59f307c 	ldr	r3, [pc, #124]	@ 80026900 <thread_create+0x2e4>
80026880:	e5932000 	ldr	r2, [r3]
80026884:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026888:	e5832014 	str	r2, [r3, #20]
8002688c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026890:	e3a02003 	mov	r2, #3
80026894:	e5c3200c 	strb	r2, [r3, #12]
80026898:	e59f3060 	ldr	r3, [pc, #96]	@ 80026900 <thread_create+0x2e4>
8002689c:	e5933000 	ldr	r3, [r3]
800268a0:	e5930004 	ldr	r0, [r3, #4]
800268a4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
800268a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268ac:	e2832010 	add	r2, r3, #16
800268b0:	e3a03004 	mov	r3, #4
800268b4:	eb000e57 	bl	8002a218 <copyout>
800268b8:	e1a03000 	mov	r3, r0
800268bc:	e3530000 	cmp	r3, #0
800268c0:	aa000001 	bge	800268cc <thread_create+0x2b0>
800268c4:	e3e03000 	mvn	r3, #0
800268c8:	ea000009 	b	800268f4 <thread_create+0x2d8>
800268cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268d0:	e283006c 	add	r0, r3, #108	@ 0x6c
800268d4:	e59f3024 	ldr	r3, [pc, #36]	@ 80026900 <thread_create+0x2e4>
800268d8:	e5933000 	ldr	r3, [r3]
800268dc:	e283306c 	add	r3, r3, #108	@ 0x6c
800268e0:	e3a02010 	mov	r2, #16
800268e4:	e1a01003 	mov	r1, r3
800268e8:	ebffe6d8 	bl	80020450 <safestrcpy>
800268ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800268f0:	e5933010 	ldr	r3, [r3, #16]
800268f4:	e1a00003 	mov	r0, r3
800268f8:	e24bd008 	sub	sp, fp, #8
800268fc:	e8bd8810 	pop	{r4, fp, pc}
80026900:	800b1ed0 	.word	0x800b1ed0

80026904 <thread_exit>:
80026904:	e92d4800 	push	{fp, lr}
80026908:	e28db004 	add	fp, sp, #4
8002690c:	e24dd008 	sub	sp, sp, #8
80026910:	e59f30e8 	ldr	r3, [pc, #232]	@ 80026a00 <thread_exit+0xfc>
80026914:	e5933000 	ldr	r3, [r3]
80026918:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
8002691c:	e3530000 	cmp	r3, #0
80026920:	0a000033 	beq	800269f4 <thread_exit+0xf0>
80026924:	e3a03000 	mov	r3, #0
80026928:	e50b3008 	str	r3, [fp, #-8]
8002692c:	ea000016 	b	8002698c <thread_exit+0x88>
80026930:	e59f30c8 	ldr	r3, [pc, #200]	@ 80026a00 <thread_exit+0xfc>
80026934:	e5933000 	ldr	r3, [r3]
80026938:	e51b2008 	ldr	r2, [fp, #-8]
8002693c:	e282200a 	add	r2, r2, #10
80026940:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026944:	e3530000 	cmp	r3, #0
80026948:	0a00000c 	beq	80026980 <thread_exit+0x7c>
8002694c:	e59f30ac 	ldr	r3, [pc, #172]	@ 80026a00 <thread_exit+0xfc>
80026950:	e5933000 	ldr	r3, [r3]
80026954:	e51b2008 	ldr	r2, [fp, #-8]
80026958:	e282200a 	add	r2, r2, #10
8002695c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026960:	e1a00003 	mov	r0, r3
80026964:	ebffef5d 	bl	800226e0 <fileclose>
80026968:	e59f3090 	ldr	r3, [pc, #144]	@ 80026a00 <thread_exit+0xfc>
8002696c:	e5933000 	ldr	r3, [r3]
80026970:	e51b2008 	ldr	r2, [fp, #-8]
80026974:	e282200a 	add	r2, r2, #10
80026978:	e3a01000 	mov	r1, #0
8002697c:	e7831102 	str	r1, [r3, r2, lsl #2]
80026980:	e51b3008 	ldr	r3, [fp, #-8]
80026984:	e2833001 	add	r3, r3, #1
80026988:	e50b3008 	str	r3, [fp, #-8]
8002698c:	e51b3008 	ldr	r3, [fp, #-8]
80026990:	e353000f 	cmp	r3, #15
80026994:	daffffe5 	ble	80026930 <thread_exit+0x2c>
80026998:	e59f3060 	ldr	r3, [pc, #96]	@ 80026a00 <thread_exit+0xfc>
8002699c:	e5933000 	ldr	r3, [r3]
800269a0:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800269a4:	e1a00003 	mov	r0, r3
800269a8:	ebfff29d 	bl	80023424 <iput>
800269ac:	e59f304c 	ldr	r3, [pc, #76]	@ 80026a00 <thread_exit+0xfc>
800269b0:	e5933000 	ldr	r3, [r3]
800269b4:	e3a02000 	mov	r2, #0
800269b8:	e5832068 	str	r2, [r3, #104]	@ 0x68
800269bc:	e59f0040 	ldr	r0, [pc, #64]	@ 80026a04 <thread_exit+0x100>
800269c0:	eb00008e 	bl	80026c00 <acquire>
800269c4:	e59f3034 	ldr	r3, [pc, #52]	@ 80026a00 <thread_exit+0xfc>
800269c8:	e5933000 	ldr	r3, [r3]
800269cc:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
800269d0:	e1a00003 	mov	r0, r3
800269d4:	ebfffddb 	bl	80026148 <wakeup1>
800269d8:	e59f3020 	ldr	r3, [pc, #32]	@ 80026a00 <thread_exit+0xfc>
800269dc:	e5933000 	ldr	r3, [r3]
800269e0:	e3a02005 	mov	r2, #5
800269e4:	e5c3200c 	strb	r2, [r3, #12]
800269e8:	ebfffd4a 	bl	80025f18 <sched>
800269ec:	e59f0014 	ldr	r0, [pc, #20]	@ 80026a08 <thread_exit+0x104>
800269f0:	ebffec3f 	bl	80021af4 <panic>
800269f4:	e1a00000 	nop			@ (mov r0, r0)
800269f8:	e24bd004 	sub	sp, fp, #4
800269fc:	e8bd8800 	pop	{fp, pc}
80026a00:	800b1ed0 	.word	0x800b1ed0
80026a04:	800af598 	.word	0x800af598
80026a08:	8002b024 	.word	0x8002b024

80026a0c <thread_join>:
80026a0c:	e92d4800 	push	{fp, lr}
80026a10:	e28db004 	add	fp, sp, #4
80026a14:	e24dd010 	sub	sp, sp, #16
80026a18:	e50b0010 	str	r0, [fp, #-16]
80026a1c:	e3a03000 	mov	r3, #0
80026a20:	e50b300c 	str	r3, [fp, #-12]
80026a24:	e59f017c 	ldr	r0, [pc, #380]	@ 80026ba8 <thread_join+0x19c>
80026a28:	eb000074 	bl	80026c00 <acquire>
80026a2c:	e3a03000 	mov	r3, #0
80026a30:	e50b300c 	str	r3, [fp, #-12]
80026a34:	e59f3170 	ldr	r3, [pc, #368]	@ 80026bac <thread_join+0x1a0>
80026a38:	e50b3008 	str	r3, [fp, #-8]
80026a3c:	ea000040 	b	80026b44 <thread_join+0x138>
80026a40:	e51b3008 	ldr	r3, [fp, #-8]
80026a44:	e5933010 	ldr	r3, [r3, #16]
80026a48:	e1a02003 	mov	r2, r3
80026a4c:	e51b3010 	ldr	r3, [fp, #-16]
80026a50:	e1530002 	cmp	r3, r2
80026a54:	1a000037 	bne	80026b38 <thread_join+0x12c>
80026a58:	e51b3008 	ldr	r3, [fp, #-8]
80026a5c:	e5932098 	ldr	r2, [r3, #152]	@ 0x98
80026a60:	e59f3148 	ldr	r3, [pc, #328]	@ 80026bb0 <thread_join+0x1a4>
80026a64:	e5933000 	ldr	r3, [r3]
80026a68:	e1520003 	cmp	r2, r3
80026a6c:	1a000031 	bne	80026b38 <thread_join+0x12c>
80026a70:	e51b3008 	ldr	r3, [fp, #-8]
80026a74:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80026a78:	e3530000 	cmp	r3, #0
80026a7c:	0a00002d 	beq	80026b38 <thread_join+0x12c>
80026a80:	e3a03001 	mov	r3, #1
80026a84:	e50b300c 	str	r3, [fp, #-12]
80026a88:	e51b3008 	ldr	r3, [fp, #-8]
80026a8c:	e5d3300c 	ldrb	r3, [r3, #12]
80026a90:	e3530005 	cmp	r3, #5
80026a94:	1a000027 	bne	80026b38 <thread_join+0x12c>
80026a98:	e51b3008 	ldr	r3, [fp, #-8]
80026a9c:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
80026aa0:	e3530000 	cmp	r3, #0
80026aa4:	0a000009 	beq	80026ad0 <thread_join+0xc4>
80026aa8:	e59f3100 	ldr	r3, [pc, #256]	@ 80026bb0 <thread_join+0x1a4>
80026aac:	e5933000 	ldr	r3, [r3]
80026ab0:	e5930004 	ldr	r0, [r3, #4]
80026ab4:	e51b3008 	ldr	r3, [fp, #-8]
80026ab8:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
80026abc:	e2831a01 	add	r1, r3, #4096	@ 0x1000
80026ac0:	e51b3008 	ldr	r3, [fp, #-8]
80026ac4:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
80026ac8:	e1a02003 	mov	r2, r3
80026acc:	eb000ccc 	bl	80029e04 <deallocuvm>
80026ad0:	e51b3008 	ldr	r3, [fp, #-8]
80026ad4:	e5933008 	ldr	r3, [r3, #8]
80026ad8:	e1a00003 	mov	r0, r3
80026adc:	ebffeac9 	bl	80021608 <free_page>
80026ae0:	e51b3008 	ldr	r3, [fp, #-8]
80026ae4:	e3a02000 	mov	r2, #0
80026ae8:	e5c3200c 	strb	r2, [r3, #12]
80026aec:	e51b3008 	ldr	r3, [fp, #-8]
80026af0:	e3a02000 	mov	r2, #0
80026af4:	e5832010 	str	r2, [r3, #16]
80026af8:	e51b3008 	ldr	r3, [fp, #-8]
80026afc:	e3a02000 	mov	r2, #0
80026b00:	e5832014 	str	r2, [r3, #20]
80026b04:	e51b3008 	ldr	r3, [fp, #-8]
80026b08:	e3a02000 	mov	r2, #0
80026b0c:	e5832098 	str	r2, [r3, #152]	@ 0x98
80026b10:	e51b3008 	ldr	r3, [fp, #-8]
80026b14:	e3a02000 	mov	r2, #0
80026b18:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80026b1c:	e51b3008 	ldr	r3, [fp, #-8]
80026b20:	e3a02000 	mov	r2, #0
80026b24:	e5832024 	str	r2, [r3, #36]	@ 0x24
80026b28:	e59f0078 	ldr	r0, [pc, #120]	@ 80026ba8 <thread_join+0x19c>
80026b2c:	eb00003e 	bl	80026c2c <release>
80026b30:	e51b3010 	ldr	r3, [fp, #-16]
80026b34:	ea000018 	b	80026b9c <thread_join+0x190>
80026b38:	e51b3008 	ldr	r3, [fp, #-8]
80026b3c:	e28330a4 	add	r3, r3, #164	@ 0xa4
80026b40:	e50b3008 	str	r3, [fp, #-8]
80026b44:	e51b3008 	ldr	r3, [fp, #-8]
80026b48:	e59f2064 	ldr	r2, [pc, #100]	@ 80026bb4 <thread_join+0x1a8>
80026b4c:	e1530002 	cmp	r3, r2
80026b50:	3affffba 	bcc	80026a40 <thread_join+0x34>
80026b54:	e51b300c 	ldr	r3, [fp, #-12]
80026b58:	e3530000 	cmp	r3, #0
80026b5c:	0a000004 	beq	80026b74 <thread_join+0x168>
80026b60:	e59f3048 	ldr	r3, [pc, #72]	@ 80026bb0 <thread_join+0x1a4>
80026b64:	e5933000 	ldr	r3, [r3]
80026b68:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80026b6c:	e3530000 	cmp	r3, #0
80026b70:	0a000003 	beq	80026b84 <thread_join+0x178>
80026b74:	e59f002c 	ldr	r0, [pc, #44]	@ 80026ba8 <thread_join+0x19c>
80026b78:	eb00002b 	bl	80026c2c <release>
80026b7c:	e3e03000 	mvn	r3, #0
80026b80:	ea000005 	b	80026b9c <thread_join+0x190>
80026b84:	e59f3024 	ldr	r3, [pc, #36]	@ 80026bb0 <thread_join+0x1a4>
80026b88:	e5933000 	ldr	r3, [r3]
80026b8c:	e59f1014 	ldr	r1, [pc, #20]	@ 80026ba8 <thread_join+0x19c>
80026b90:	e1a00003 	mov	r0, r3
80026b94:	ebfffd37 	bl	80026078 <sleep>
80026b98:	eaffffa3 	b	80026a2c <thread_join+0x20>
80026b9c:	e1a00003 	mov	r0, r3
80026ba0:	e24bd004 	sub	sp, fp, #4
80026ba4:	e8bd8800 	pop	{fp, pc}
80026ba8:	800af598 	.word	0x800af598
80026bac:	800af5cc 	.word	0x800af5cc
80026bb0:	800b1ed0 	.word	0x800b1ed0
80026bb4:	800b1ecc 	.word	0x800b1ecc

80026bb8 <initlock>:
80026bb8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026bbc:	e28db000 	add	fp, sp, #0
80026bc0:	e24dd00c 	sub	sp, sp, #12
80026bc4:	e50b0008 	str	r0, [fp, #-8]
80026bc8:	e50b100c 	str	r1, [fp, #-12]
80026bcc:	e51b3008 	ldr	r3, [fp, #-8]
80026bd0:	e51b200c 	ldr	r2, [fp, #-12]
80026bd4:	e5832004 	str	r2, [r3, #4]
80026bd8:	e51b3008 	ldr	r3, [fp, #-8]
80026bdc:	e3a02000 	mov	r2, #0
80026be0:	e5832000 	str	r2, [r3]
80026be4:	e51b3008 	ldr	r3, [fp, #-8]
80026be8:	e3a02000 	mov	r2, #0
80026bec:	e5832008 	str	r2, [r3, #8]
80026bf0:	e1a00000 	nop			@ (mov r0, r0)
80026bf4:	e28bd000 	add	sp, fp, #0
80026bf8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026bfc:	e12fff1e 	bx	lr

80026c00 <acquire>:
80026c00:	e92d4800 	push	{fp, lr}
80026c04:	e28db004 	add	fp, sp, #4
80026c08:	e24dd008 	sub	sp, sp, #8
80026c0c:	e50b0008 	str	r0, [fp, #-8]
80026c10:	ebffe685 	bl	8002062c <pushcli>
80026c14:	e51b3008 	ldr	r3, [fp, #-8]
80026c18:	e3a02001 	mov	r2, #1
80026c1c:	e5832000 	str	r2, [r3]
80026c20:	e1a00000 	nop			@ (mov r0, r0)
80026c24:	e24bd004 	sub	sp, fp, #4
80026c28:	e8bd8800 	pop	{fp, pc}

80026c2c <release>:
80026c2c:	e92d4800 	push	{fp, lr}
80026c30:	e28db004 	add	fp, sp, #4
80026c34:	e24dd008 	sub	sp, sp, #8
80026c38:	e50b0008 	str	r0, [fp, #-8]
80026c3c:	e51b3008 	ldr	r3, [fp, #-8]
80026c40:	e3a02000 	mov	r2, #0
80026c44:	e5832000 	str	r2, [r3]
80026c48:	ebffe68c 	bl	80020680 <popcli>
80026c4c:	e1a00000 	nop			@ (mov r0, r0)
80026c50:	e24bd004 	sub	sp, fp, #4
80026c54:	e8bd8800 	pop	{fp, pc}

80026c58 <holding>:
80026c58:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026c5c:	e28db000 	add	fp, sp, #0
80026c60:	e24dd00c 	sub	sp, sp, #12
80026c64:	e50b0008 	str	r0, [fp, #-8]
80026c68:	e51b3008 	ldr	r3, [fp, #-8]
80026c6c:	e5933000 	ldr	r3, [r3]
80026c70:	e1a00003 	mov	r0, r3
80026c74:	e28bd000 	add	sp, fp, #0
80026c78:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026c7c:	e12fff1e 	bx	lr

80026c80 <swtch>:
80026c80:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026c84:	e580d000 	str	sp, [r0]
80026c88:	e1a0d001 	mov	sp, r1
80026c8c:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026c90:	e12fff1e 	bx	lr

80026c94 <fetchint>:
80026c94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026c98:	e28db000 	add	fp, sp, #0
80026c9c:	e24dd00c 	sub	sp, sp, #12
80026ca0:	e50b0008 	str	r0, [fp, #-8]
80026ca4:	e50b100c 	str	r1, [fp, #-12]
80026ca8:	e59f3058 	ldr	r3, [pc, #88]	@ 80026d08 <fetchint+0x74>
80026cac:	e5933000 	ldr	r3, [r3]
80026cb0:	e5933000 	ldr	r3, [r3]
80026cb4:	e51b2008 	ldr	r2, [fp, #-8]
80026cb8:	e1520003 	cmp	r2, r3
80026cbc:	2a000006 	bcs	80026cdc <fetchint+0x48>
80026cc0:	e51b3008 	ldr	r3, [fp, #-8]
80026cc4:	e2832004 	add	r2, r3, #4
80026cc8:	e59f3038 	ldr	r3, [pc, #56]	@ 80026d08 <fetchint+0x74>
80026ccc:	e5933000 	ldr	r3, [r3]
80026cd0:	e5933000 	ldr	r3, [r3]
80026cd4:	e1520003 	cmp	r2, r3
80026cd8:	9a000001 	bls	80026ce4 <fetchint+0x50>
80026cdc:	e3e03000 	mvn	r3, #0
80026ce0:	ea000004 	b	80026cf8 <fetchint+0x64>
80026ce4:	e51b3008 	ldr	r3, [fp, #-8]
80026ce8:	e5932000 	ldr	r2, [r3]
80026cec:	e51b300c 	ldr	r3, [fp, #-12]
80026cf0:	e5832000 	str	r2, [r3]
80026cf4:	e3a03000 	mov	r3, #0
80026cf8:	e1a00003 	mov	r0, r3
80026cfc:	e28bd000 	add	sp, fp, #0
80026d00:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026d04:	e12fff1e 	bx	lr
80026d08:	800b1ed0 	.word	0x800b1ed0

80026d0c <fetchstr>:
80026d0c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026d10:	e28db000 	add	fp, sp, #0
80026d14:	e24dd014 	sub	sp, sp, #20
80026d18:	e50b0010 	str	r0, [fp, #-16]
80026d1c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026d20:	e59f3098 	ldr	r3, [pc, #152]	@ 80026dc0 <fetchstr+0xb4>
80026d24:	e5933000 	ldr	r3, [r3]
80026d28:	e5933000 	ldr	r3, [r3]
80026d2c:	e51b2010 	ldr	r2, [fp, #-16]
80026d30:	e1520003 	cmp	r2, r3
80026d34:	3a000001 	bcc	80026d40 <fetchstr+0x34>
80026d38:	e3e03000 	mvn	r3, #0
80026d3c:	ea00001b 	b	80026db0 <fetchstr+0xa4>
80026d40:	e51b2010 	ldr	r2, [fp, #-16]
80026d44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026d48:	e5832000 	str	r2, [r3]
80026d4c:	e59f306c 	ldr	r3, [pc, #108]	@ 80026dc0 <fetchstr+0xb4>
80026d50:	e5933000 	ldr	r3, [r3]
80026d54:	e5933000 	ldr	r3, [r3]
80026d58:	e50b300c 	str	r3, [fp, #-12]
80026d5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026d60:	e5933000 	ldr	r3, [r3]
80026d64:	e50b3008 	str	r3, [fp, #-8]
80026d68:	ea00000b 	b	80026d9c <fetchstr+0x90>
80026d6c:	e51b3008 	ldr	r3, [fp, #-8]
80026d70:	e5d33000 	ldrb	r3, [r3]
80026d74:	e3530000 	cmp	r3, #0
80026d78:	1a000004 	bne	80026d90 <fetchstr+0x84>
80026d7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026d80:	e5933000 	ldr	r3, [r3]
80026d84:	e51b2008 	ldr	r2, [fp, #-8]
80026d88:	e0423003 	sub	r3, r2, r3
80026d8c:	ea000007 	b	80026db0 <fetchstr+0xa4>
80026d90:	e51b3008 	ldr	r3, [fp, #-8]
80026d94:	e2833001 	add	r3, r3, #1
80026d98:	e50b3008 	str	r3, [fp, #-8]
80026d9c:	e51b2008 	ldr	r2, [fp, #-8]
80026da0:	e51b300c 	ldr	r3, [fp, #-12]
80026da4:	e1520003 	cmp	r2, r3
80026da8:	3affffef 	bcc	80026d6c <fetchstr+0x60>
80026dac:	e3e03000 	mvn	r3, #0
80026db0:	e1a00003 	mov	r0, r3
80026db4:	e28bd000 	add	sp, fp, #0
80026db8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026dbc:	e12fff1e 	bx	lr
80026dc0:	800b1ed0 	.word	0x800b1ed0

80026dc4 <argint>:
80026dc4:	e92d4800 	push	{fp, lr}
80026dc8:	e28db004 	add	fp, sp, #4
80026dcc:	e24dd008 	sub	sp, sp, #8
80026dd0:	e50b0008 	str	r0, [fp, #-8]
80026dd4:	e50b100c 	str	r1, [fp, #-12]
80026dd8:	e51b3008 	ldr	r3, [fp, #-8]
80026ddc:	e3530003 	cmp	r3, #3
80026de0:	da000001 	ble	80026dec <argint+0x28>
80026de4:	e59f003c 	ldr	r0, [pc, #60]	@ 80026e28 <argint+0x64>
80026de8:	ebffeb41 	bl	80021af4 <panic>
80026dec:	e59f3038 	ldr	r3, [pc, #56]	@ 80026e2c <argint+0x68>
80026df0:	e5933000 	ldr	r3, [r3]
80026df4:	e5933018 	ldr	r3, [r3, #24]
80026df8:	e2832014 	add	r2, r3, #20
80026dfc:	e51b3008 	ldr	r3, [fp, #-8]
80026e00:	e1a03103 	lsl	r3, r3, #2
80026e04:	e0823003 	add	r3, r2, r3
80026e08:	e5933000 	ldr	r3, [r3]
80026e0c:	e1a02003 	mov	r2, r3
80026e10:	e51b300c 	ldr	r3, [fp, #-12]
80026e14:	e5832000 	str	r2, [r3]
80026e18:	e3a03000 	mov	r3, #0
80026e1c:	e1a00003 	mov	r0, r3
80026e20:	e24bd004 	sub	sp, fp, #4
80026e24:	e8bd8800 	pop	{fp, pc}
80026e28:	8002b0dc 	.word	0x8002b0dc
80026e2c:	800b1ed0 	.word	0x800b1ed0

80026e30 <argptr>:
80026e30:	e92d4800 	push	{fp, lr}
80026e34:	e28db004 	add	fp, sp, #4
80026e38:	e24dd018 	sub	sp, sp, #24
80026e3c:	e50b0010 	str	r0, [fp, #-16]
80026e40:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026e44:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026e48:	e24b3008 	sub	r3, fp, #8
80026e4c:	e1a01003 	mov	r1, r3
80026e50:	e51b0010 	ldr	r0, [fp, #-16]
80026e54:	ebffffda 	bl	80026dc4 <argint>
80026e58:	e1a03000 	mov	r3, r0
80026e5c:	e3530000 	cmp	r3, #0
80026e60:	aa000001 	bge	80026e6c <argptr+0x3c>
80026e64:	e3e03000 	mvn	r3, #0
80026e68:	ea000015 	b	80026ec4 <argptr+0x94>
80026e6c:	e59f305c 	ldr	r3, [pc, #92]	@ 80026ed0 <argptr+0xa0>
80026e70:	e5933000 	ldr	r3, [r3]
80026e74:	e5933000 	ldr	r3, [r3]
80026e78:	e51b2008 	ldr	r2, [fp, #-8]
80026e7c:	e1530002 	cmp	r3, r2
80026e80:	9a000008 	bls	80026ea8 <argptr+0x78>
80026e84:	e51b3008 	ldr	r3, [fp, #-8]
80026e88:	e1a02003 	mov	r2, r3
80026e8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026e90:	e0822003 	add	r2, r2, r3
80026e94:	e59f3034 	ldr	r3, [pc, #52]	@ 80026ed0 <argptr+0xa0>
80026e98:	e5933000 	ldr	r3, [r3]
80026e9c:	e5933000 	ldr	r3, [r3]
80026ea0:	e1520003 	cmp	r2, r3
80026ea4:	9a000001 	bls	80026eb0 <argptr+0x80>
80026ea8:	e3e03000 	mvn	r3, #0
80026eac:	ea000004 	b	80026ec4 <argptr+0x94>
80026eb0:	e51b3008 	ldr	r3, [fp, #-8]
80026eb4:	e1a02003 	mov	r2, r3
80026eb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026ebc:	e5832000 	str	r2, [r3]
80026ec0:	e3a03000 	mov	r3, #0
80026ec4:	e1a00003 	mov	r0, r3
80026ec8:	e24bd004 	sub	sp, fp, #4
80026ecc:	e8bd8800 	pop	{fp, pc}
80026ed0:	800b1ed0 	.word	0x800b1ed0

80026ed4 <argstr>:
80026ed4:	e92d4800 	push	{fp, lr}
80026ed8:	e28db004 	add	fp, sp, #4
80026edc:	e24dd010 	sub	sp, sp, #16
80026ee0:	e50b0010 	str	r0, [fp, #-16]
80026ee4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026ee8:	e24b3008 	sub	r3, fp, #8
80026eec:	e1a01003 	mov	r1, r3
80026ef0:	e51b0010 	ldr	r0, [fp, #-16]
80026ef4:	ebffffb2 	bl	80026dc4 <argint>
80026ef8:	e1a03000 	mov	r3, r0
80026efc:	e3530000 	cmp	r3, #0
80026f00:	aa000001 	bge	80026f0c <argstr+0x38>
80026f04:	e3e03000 	mvn	r3, #0
80026f08:	ea000004 	b	80026f20 <argstr+0x4c>
80026f0c:	e51b3008 	ldr	r3, [fp, #-8]
80026f10:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026f14:	e1a00003 	mov	r0, r3
80026f18:	ebffff7b 	bl	80026d0c <fetchstr>
80026f1c:	e1a03000 	mov	r3, r0
80026f20:	e1a00003 	mov	r0, r3
80026f24:	e24bd004 	sub	sp, fp, #4
80026f28:	e8bd8800 	pop	{fp, pc}

80026f2c <syscall>:
80026f2c:	e92d4800 	push	{fp, lr}
80026f30:	e28db004 	add	fp, sp, #4
80026f34:	e24dd008 	sub	sp, sp, #8
80026f38:	e59f30cc 	ldr	r3, [pc, #204]	@ 8002700c <syscall+0xe0>
80026f3c:	e5933000 	ldr	r3, [r3]
80026f40:	e5933018 	ldr	r3, [r3, #24]
80026f44:	e5933010 	ldr	r3, [r3, #16]
80026f48:	e50b3008 	str	r3, [fp, #-8]
80026f4c:	e51b3008 	ldr	r3, [fp, #-8]
80026f50:	e3530000 	cmp	r3, #0
80026f54:	da00001a 	ble	80026fc4 <syscall+0x98>
80026f58:	e51b3008 	ldr	r3, [fp, #-8]
80026f5c:	e353002b 	cmp	r3, #43	@ 0x2b
80026f60:	8a000017 	bhi	80026fc4 <syscall+0x98>
80026f64:	e59f20a4 	ldr	r2, [pc, #164]	@ 80027010 <syscall+0xe4>
80026f68:	e51b3008 	ldr	r3, [fp, #-8]
80026f6c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026f70:	e3530000 	cmp	r3, #0
80026f74:	0a000012 	beq	80026fc4 <syscall+0x98>
80026f78:	e59f2090 	ldr	r2, [pc, #144]	@ 80027010 <syscall+0xe4>
80026f7c:	e51b3008 	ldr	r3, [fp, #-8]
80026f80:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026f84:	e12fff33 	blx	r3
80026f88:	e50b000c 	str	r0, [fp, #-12]
80026f8c:	e59f3078 	ldr	r3, [pc, #120]	@ 8002700c <syscall+0xe0>
80026f90:	e5933000 	ldr	r3, [r3]
80026f94:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
80026f98:	e2822001 	add	r2, r2, #1
80026f9c:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80026fa0:	e51b3008 	ldr	r3, [fp, #-8]
80026fa4:	e3530007 	cmp	r3, #7
80026fa8:	0a000014 	beq	80027000 <syscall+0xd4>
80026fac:	e59f3058 	ldr	r3, [pc, #88]	@ 8002700c <syscall+0xe0>
80026fb0:	e5933000 	ldr	r3, [r3]
80026fb4:	e5933018 	ldr	r3, [r3, #24]
80026fb8:	e51b200c 	ldr	r2, [fp, #-12]
80026fbc:	e5832010 	str	r2, [r3, #16]
80026fc0:	ea00000e 	b	80027000 <syscall+0xd4>
80026fc4:	e59f3040 	ldr	r3, [pc, #64]	@ 8002700c <syscall+0xe0>
80026fc8:	e5933000 	ldr	r3, [r3]
80026fcc:	e5931010 	ldr	r1, [r3, #16]
80026fd0:	e59f3034 	ldr	r3, [pc, #52]	@ 8002700c <syscall+0xe0>
80026fd4:	e5933000 	ldr	r3, [r3]
80026fd8:	e283206c 	add	r2, r3, #108	@ 0x6c
80026fdc:	e51b3008 	ldr	r3, [fp, #-8]
80026fe0:	e59f002c 	ldr	r0, [pc, #44]	@ 80027014 <syscall+0xe8>
80026fe4:	ebffea2a 	bl	80021894 <cprintf>
80026fe8:	e59f301c 	ldr	r3, [pc, #28]	@ 8002700c <syscall+0xe0>
80026fec:	e5933000 	ldr	r3, [r3]
80026ff0:	e5933018 	ldr	r3, [r3, #24]
80026ff4:	e3e02000 	mvn	r2, #0
80026ff8:	e5832010 	str	r2, [r3, #16]
80026ffc:	e1a00000 	nop			@ (mov r0, r0)
80027000:	e1a00000 	nop			@ (mov r0, r0)
80027004:	e24bd004 	sub	sp, fp, #4
80027008:	e8bd8800 	pop	{fp, pc}
8002700c:	800b1ed0 	.word	0x800b1ed0
80027010:	8002c034 	.word	0x8002c034
80027014:	8002b100 	.word	0x8002b100

80027018 <argfd>:
80027018:	e92d4800 	push	{fp, lr}
8002701c:	e28db004 	add	fp, sp, #4
80027020:	e24dd018 	sub	sp, sp, #24
80027024:	e50b0010 	str	r0, [fp, #-16]
80027028:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002702c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80027030:	e24b300c 	sub	r3, fp, #12
80027034:	e1a01003 	mov	r1, r3
80027038:	e51b0010 	ldr	r0, [fp, #-16]
8002703c:	ebffff60 	bl	80026dc4 <argint>
80027040:	e1a03000 	mov	r3, r0
80027044:	e3530000 	cmp	r3, #0
80027048:	aa000001 	bge	80027054 <argfd+0x3c>
8002704c:	e3e03000 	mvn	r3, #0
80027050:	ea00001d 	b	800270cc <argfd+0xb4>
80027054:	e51b300c 	ldr	r3, [fp, #-12]
80027058:	e3530000 	cmp	r3, #0
8002705c:	ba00000b 	blt	80027090 <argfd+0x78>
80027060:	e51b300c 	ldr	r3, [fp, #-12]
80027064:	e353000f 	cmp	r3, #15
80027068:	ca000008 	bgt	80027090 <argfd+0x78>
8002706c:	e59f3064 	ldr	r3, [pc, #100]	@ 800270d8 <argfd+0xc0>
80027070:	e5933000 	ldr	r3, [r3]
80027074:	e51b200c 	ldr	r2, [fp, #-12]
80027078:	e282200a 	add	r2, r2, #10
8002707c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80027080:	e50b3008 	str	r3, [fp, #-8]
80027084:	e51b3008 	ldr	r3, [fp, #-8]
80027088:	e3530000 	cmp	r3, #0
8002708c:	1a000001 	bne	80027098 <argfd+0x80>
80027090:	e3e03000 	mvn	r3, #0
80027094:	ea00000c 	b	800270cc <argfd+0xb4>
80027098:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002709c:	e3530000 	cmp	r3, #0
800270a0:	0a000002 	beq	800270b0 <argfd+0x98>
800270a4:	e51b200c 	ldr	r2, [fp, #-12]
800270a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800270ac:	e5832000 	str	r2, [r3]
800270b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800270b4:	e3530000 	cmp	r3, #0
800270b8:	0a000002 	beq	800270c8 <argfd+0xb0>
800270bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800270c0:	e51b2008 	ldr	r2, [fp, #-8]
800270c4:	e5832000 	str	r2, [r3]
800270c8:	e3a03000 	mov	r3, #0
800270cc:	e1a00003 	mov	r0, r3
800270d0:	e24bd004 	sub	sp, fp, #4
800270d4:	e8bd8800 	pop	{fp, pc}
800270d8:	800b1ed0 	.word	0x800b1ed0

800270dc <fdalloc>:
800270dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800270e0:	e28db000 	add	fp, sp, #0
800270e4:	e24dd014 	sub	sp, sp, #20
800270e8:	e50b0010 	str	r0, [fp, #-16]
800270ec:	e3a03000 	mov	r3, #0
800270f0:	e50b3008 	str	r3, [fp, #-8]
800270f4:	ea000011 	b	80027140 <fdalloc+0x64>
800270f8:	e59f3060 	ldr	r3, [pc, #96]	@ 80027160 <fdalloc+0x84>
800270fc:	e5933000 	ldr	r3, [r3]
80027100:	e51b2008 	ldr	r2, [fp, #-8]
80027104:	e282200a 	add	r2, r2, #10
80027108:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002710c:	e3530000 	cmp	r3, #0
80027110:	1a000007 	bne	80027134 <fdalloc+0x58>
80027114:	e59f3044 	ldr	r3, [pc, #68]	@ 80027160 <fdalloc+0x84>
80027118:	e5933000 	ldr	r3, [r3]
8002711c:	e51b2008 	ldr	r2, [fp, #-8]
80027120:	e282200a 	add	r2, r2, #10
80027124:	e51b1010 	ldr	r1, [fp, #-16]
80027128:	e7831102 	str	r1, [r3, r2, lsl #2]
8002712c:	e51b3008 	ldr	r3, [fp, #-8]
80027130:	ea000006 	b	80027150 <fdalloc+0x74>
80027134:	e51b3008 	ldr	r3, [fp, #-8]
80027138:	e2833001 	add	r3, r3, #1
8002713c:	e50b3008 	str	r3, [fp, #-8]
80027140:	e51b3008 	ldr	r3, [fp, #-8]
80027144:	e353000f 	cmp	r3, #15
80027148:	daffffea 	ble	800270f8 <fdalloc+0x1c>
8002714c:	e3e03000 	mvn	r3, #0
80027150:	e1a00003 	mov	r0, r3
80027154:	e28bd000 	add	sp, fp, #0
80027158:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002715c:	e12fff1e 	bx	lr
80027160:	800b1ed0 	.word	0x800b1ed0

80027164 <sys_dup>:
80027164:	e92d4800 	push	{fp, lr}
80027168:	e28db004 	add	fp, sp, #4
8002716c:	e24dd008 	sub	sp, sp, #8
80027170:	e24b300c 	sub	r3, fp, #12
80027174:	e1a02003 	mov	r2, r3
80027178:	e3a01000 	mov	r1, #0
8002717c:	e3a00000 	mov	r0, #0
80027180:	ebffffa4 	bl	80027018 <argfd>
80027184:	e1a03000 	mov	r3, r0
80027188:	e3530000 	cmp	r3, #0
8002718c:	aa000001 	bge	80027198 <sys_dup+0x34>
80027190:	e3e03000 	mvn	r3, #0
80027194:	ea00000c 	b	800271cc <sys_dup+0x68>
80027198:	e51b300c 	ldr	r3, [fp, #-12]
8002719c:	e1a00003 	mov	r0, r3
800271a0:	ebffffcd 	bl	800270dc <fdalloc>
800271a4:	e50b0008 	str	r0, [fp, #-8]
800271a8:	e51b3008 	ldr	r3, [fp, #-8]
800271ac:	e3530000 	cmp	r3, #0
800271b0:	aa000001 	bge	800271bc <sys_dup+0x58>
800271b4:	e3e03000 	mvn	r3, #0
800271b8:	ea000003 	b	800271cc <sys_dup+0x68>
800271bc:	e51b300c 	ldr	r3, [fp, #-12]
800271c0:	e1a00003 	mov	r0, r3
800271c4:	ebffed2c 	bl	8002267c <filedup>
800271c8:	e51b3008 	ldr	r3, [fp, #-8]
800271cc:	e1a00003 	mov	r0, r3
800271d0:	e24bd004 	sub	sp, fp, #4
800271d4:	e8bd8800 	pop	{fp, pc}

800271d8 <sys_read>:
800271d8:	e92d4800 	push	{fp, lr}
800271dc:	e28db004 	add	fp, sp, #4
800271e0:	e24dd010 	sub	sp, sp, #16
800271e4:	e24b3008 	sub	r3, fp, #8
800271e8:	e1a02003 	mov	r2, r3
800271ec:	e3a01000 	mov	r1, #0
800271f0:	e3a00000 	mov	r0, #0
800271f4:	ebffff87 	bl	80027018 <argfd>
800271f8:	e1a03000 	mov	r3, r0
800271fc:	e3530000 	cmp	r3, #0
80027200:	ba00000e 	blt	80027240 <sys_read+0x68>
80027204:	e24b300c 	sub	r3, fp, #12
80027208:	e1a01003 	mov	r1, r3
8002720c:	e3a00002 	mov	r0, #2
80027210:	ebfffeeb 	bl	80026dc4 <argint>
80027214:	e1a03000 	mov	r3, r0
80027218:	e3530000 	cmp	r3, #0
8002721c:	ba000007 	blt	80027240 <sys_read+0x68>
80027220:	e51b200c 	ldr	r2, [fp, #-12]
80027224:	e24b3010 	sub	r3, fp, #16
80027228:	e1a01003 	mov	r1, r3
8002722c:	e3a00001 	mov	r0, #1
80027230:	ebfffefe 	bl	80026e30 <argptr>
80027234:	e1a03000 	mov	r3, r0
80027238:	e3530000 	cmp	r3, #0
8002723c:	aa000001 	bge	80027248 <sys_read+0x70>
80027240:	e3e03000 	mvn	r3, #0
80027244:	ea000005 	b	80027260 <sys_read+0x88>
80027248:	e51b3008 	ldr	r3, [fp, #-8]
8002724c:	e51b1010 	ldr	r1, [fp, #-16]
80027250:	e51b200c 	ldr	r2, [fp, #-12]
80027254:	e1a00003 	mov	r0, r3
80027258:	ebffed78 	bl	80022840 <fileread>
8002725c:	e1a03000 	mov	r3, r0
80027260:	e1a00003 	mov	r0, r3
80027264:	e24bd004 	sub	sp, fp, #4
80027268:	e8bd8800 	pop	{fp, pc}

8002726c <sys_write>:
8002726c:	e92d4800 	push	{fp, lr}
80027270:	e28db004 	add	fp, sp, #4
80027274:	e24dd010 	sub	sp, sp, #16
80027278:	e24b3008 	sub	r3, fp, #8
8002727c:	e1a02003 	mov	r2, r3
80027280:	e3a01000 	mov	r1, #0
80027284:	e3a00000 	mov	r0, #0
80027288:	ebffff62 	bl	80027018 <argfd>
8002728c:	e1a03000 	mov	r3, r0
80027290:	e3530000 	cmp	r3, #0
80027294:	ba00000e 	blt	800272d4 <sys_write+0x68>
80027298:	e24b300c 	sub	r3, fp, #12
8002729c:	e1a01003 	mov	r1, r3
800272a0:	e3a00002 	mov	r0, #2
800272a4:	ebfffec6 	bl	80026dc4 <argint>
800272a8:	e1a03000 	mov	r3, r0
800272ac:	e3530000 	cmp	r3, #0
800272b0:	ba000007 	blt	800272d4 <sys_write+0x68>
800272b4:	e51b200c 	ldr	r2, [fp, #-12]
800272b8:	e24b3010 	sub	r3, fp, #16
800272bc:	e1a01003 	mov	r1, r3
800272c0:	e3a00001 	mov	r0, #1
800272c4:	ebfffed9 	bl	80026e30 <argptr>
800272c8:	e1a03000 	mov	r3, r0
800272cc:	e3530000 	cmp	r3, #0
800272d0:	aa000001 	bge	800272dc <sys_write+0x70>
800272d4:	e3e03000 	mvn	r3, #0
800272d8:	ea000005 	b	800272f4 <sys_write+0x88>
800272dc:	e51b3008 	ldr	r3, [fp, #-8]
800272e0:	e51b1010 	ldr	r1, [fp, #-16]
800272e4:	e51b200c 	ldr	r2, [fp, #-12]
800272e8:	e1a00003 	mov	r0, r3
800272ec:	ebffed90 	bl	80022934 <filewrite>
800272f0:	e1a03000 	mov	r3, r0
800272f4:	e1a00003 	mov	r0, r3
800272f8:	e24bd004 	sub	sp, fp, #4
800272fc:	e8bd8800 	pop	{fp, pc}

80027300 <sys_close>:
80027300:	e92d4800 	push	{fp, lr}
80027304:	e28db004 	add	fp, sp, #4
80027308:	e24dd008 	sub	sp, sp, #8
8002730c:	e24b200c 	sub	r2, fp, #12
80027310:	e24b3008 	sub	r3, fp, #8
80027314:	e1a01003 	mov	r1, r3
80027318:	e3a00000 	mov	r0, #0
8002731c:	ebffff3d 	bl	80027018 <argfd>
80027320:	e1a03000 	mov	r3, r0
80027324:	e3530000 	cmp	r3, #0
80027328:	aa000001 	bge	80027334 <sys_close+0x34>
8002732c:	e3e03000 	mvn	r3, #0
80027330:	ea000009 	b	8002735c <sys_close+0x5c>
80027334:	e59f302c 	ldr	r3, [pc, #44]	@ 80027368 <sys_close+0x68>
80027338:	e5933000 	ldr	r3, [r3]
8002733c:	e51b2008 	ldr	r2, [fp, #-8]
80027340:	e282200a 	add	r2, r2, #10
80027344:	e3a01000 	mov	r1, #0
80027348:	e7831102 	str	r1, [r3, r2, lsl #2]
8002734c:	e51b300c 	ldr	r3, [fp, #-12]
80027350:	e1a00003 	mov	r0, r3
80027354:	ebffece1 	bl	800226e0 <fileclose>
80027358:	e3a03000 	mov	r3, #0
8002735c:	e1a00003 	mov	r0, r3
80027360:	e24bd004 	sub	sp, fp, #4
80027364:	e8bd8800 	pop	{fp, pc}
80027368:	800b1ed0 	.word	0x800b1ed0

8002736c <sys_fstat>:
8002736c:	e92d4800 	push	{fp, lr}
80027370:	e28db004 	add	fp, sp, #4
80027374:	e24dd008 	sub	sp, sp, #8
80027378:	e24b3008 	sub	r3, fp, #8
8002737c:	e1a02003 	mov	r2, r3
80027380:	e3a01000 	mov	r1, #0
80027384:	e3a00000 	mov	r0, #0
80027388:	ebffff22 	bl	80027018 <argfd>
8002738c:	e1a03000 	mov	r3, r0
80027390:	e3530000 	cmp	r3, #0
80027394:	ba000007 	blt	800273b8 <sys_fstat+0x4c>
80027398:	e24b300c 	sub	r3, fp, #12
8002739c:	e3a02014 	mov	r2, #20
800273a0:	e1a01003 	mov	r1, r3
800273a4:	e3a00001 	mov	r0, #1
800273a8:	ebfffea0 	bl	80026e30 <argptr>
800273ac:	e1a03000 	mov	r3, r0
800273b0:	e3530000 	cmp	r3, #0
800273b4:	aa000001 	bge	800273c0 <sys_fstat+0x54>
800273b8:	e3e03000 	mvn	r3, #0
800273bc:	ea000005 	b	800273d8 <sys_fstat+0x6c>
800273c0:	e51b3008 	ldr	r3, [fp, #-8]
800273c4:	e51b200c 	ldr	r2, [fp, #-12]
800273c8:	e1a01002 	mov	r1, r2
800273cc:	e1a00003 	mov	r0, r3
800273d0:	ebffecfe 	bl	800227d0 <filestat>
800273d4:	e1a03000 	mov	r3, r0
800273d8:	e1a00003 	mov	r0, r3
800273dc:	e24bd004 	sub	sp, fp, #4
800273e0:	e8bd8800 	pop	{fp, pc}

800273e4 <sys_link>:
800273e4:	e92d4800 	push	{fp, lr}
800273e8:	e28db004 	add	fp, sp, #4
800273ec:	e24dd020 	sub	sp, sp, #32
800273f0:	e24b3024 	sub	r3, fp, #36	@ 0x24
800273f4:	e1a01003 	mov	r1, r3
800273f8:	e3a00000 	mov	r0, #0
800273fc:	ebfffeb4 	bl	80026ed4 <argstr>
80027400:	e1a03000 	mov	r3, r0
80027404:	e3530000 	cmp	r3, #0
80027408:	ba000006 	blt	80027428 <sys_link+0x44>
8002740c:	e24b3020 	sub	r3, fp, #32
80027410:	e1a01003 	mov	r1, r3
80027414:	e3a00001 	mov	r0, #1
80027418:	ebfffead 	bl	80026ed4 <argstr>
8002741c:	e1a03000 	mov	r3, r0
80027420:	e3530000 	cmp	r3, #0
80027424:	aa000001 	bge	80027430 <sys_link+0x4c>
80027428:	e3e03000 	mvn	r3, #0
8002742c:	ea000055 	b	80027588 <sys_link+0x1a4>
80027430:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027434:	e1a00003 	mov	r0, r3
80027438:	ebfff413 	bl	8002448c <namei>
8002743c:	e50b0008 	str	r0, [fp, #-8]
80027440:	e51b3008 	ldr	r3, [fp, #-8]
80027444:	e3530000 	cmp	r3, #0
80027448:	1a000001 	bne	80027454 <sys_link+0x70>
8002744c:	e3e03000 	mvn	r3, #0
80027450:	ea00004c 	b	80027588 <sys_link+0x1a4>
80027454:	ebfff504 	bl	8002486c <begin_trans>
80027458:	e51b0008 	ldr	r0, [fp, #-8]
8002745c:	ebffef6a 	bl	8002320c <ilock>
80027460:	e51b3008 	ldr	r3, [fp, #-8]
80027464:	e1d331f0 	ldrsh	r3, [r3, #16]
80027468:	e3530001 	cmp	r3, #1
8002746c:	1a000004 	bne	80027484 <sys_link+0xa0>
80027470:	e51b0008 	ldr	r0, [fp, #-8]
80027474:	ebfff025 	bl	80023510 <iunlockput>
80027478:	ebfff50f 	bl	800248bc <commit_trans>
8002747c:	e3e03000 	mvn	r3, #0
80027480:	ea000040 	b	80027588 <sys_link+0x1a4>
80027484:	e51b3008 	ldr	r3, [fp, #-8]
80027488:	e1d331f6 	ldrsh	r3, [r3, #22]
8002748c:	e6ff3073 	uxth	r3, r3
80027490:	e2833001 	add	r3, r3, #1
80027494:	e6ff3073 	uxth	r3, r3
80027498:	e6bf2073 	sxth	r2, r3
8002749c:	e51b3008 	ldr	r3, [fp, #-8]
800274a0:	e1c321b6 	strh	r2, [r3, #22]
800274a4:	e51b0008 	ldr	r0, [fp, #-8]
800274a8:	ebffeebd 	bl	80022fa4 <iupdate>
800274ac:	e51b0008 	ldr	r0, [fp, #-8]
800274b0:	ebffefb9 	bl	8002339c <iunlock>
800274b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800274b8:	e24b201c 	sub	r2, fp, #28
800274bc:	e1a01002 	mov	r1, r2
800274c0:	e1a00003 	mov	r0, r3
800274c4:	ebfff3fd 	bl	800244c0 <nameiparent>
800274c8:	e50b000c 	str	r0, [fp, #-12]
800274cc:	e51b300c 	ldr	r3, [fp, #-12]
800274d0:	e3530000 	cmp	r3, #0
800274d4:	0a00001a 	beq	80027544 <sys_link+0x160>
800274d8:	e51b000c 	ldr	r0, [fp, #-12]
800274dc:	ebffef4a 	bl	8002320c <ilock>
800274e0:	e51b300c 	ldr	r3, [fp, #-12]
800274e4:	e5932000 	ldr	r2, [r3]
800274e8:	e51b3008 	ldr	r3, [fp, #-8]
800274ec:	e5933000 	ldr	r3, [r3]
800274f0:	e1520003 	cmp	r2, r3
800274f4:	1a000008 	bne	8002751c <sys_link+0x138>
800274f8:	e51b3008 	ldr	r3, [fp, #-8]
800274fc:	e5932004 	ldr	r2, [r3, #4]
80027500:	e24b301c 	sub	r3, fp, #28
80027504:	e1a01003 	mov	r1, r3
80027508:	e51b000c 	ldr	r0, [fp, #-12]
8002750c:	ebfff308 	bl	80024134 <dirlink>
80027510:	e1a03000 	mov	r3, r0
80027514:	e3530000 	cmp	r3, #0
80027518:	aa000002 	bge	80027528 <sys_link+0x144>
8002751c:	e51b000c 	ldr	r0, [fp, #-12]
80027520:	ebffeffa 	bl	80023510 <iunlockput>
80027524:	ea000007 	b	80027548 <sys_link+0x164>
80027528:	e51b000c 	ldr	r0, [fp, #-12]
8002752c:	ebffeff7 	bl	80023510 <iunlockput>
80027530:	e51b0008 	ldr	r0, [fp, #-8]
80027534:	ebffefba 	bl	80023424 <iput>
80027538:	ebfff4df 	bl	800248bc <commit_trans>
8002753c:	e3a03000 	mov	r3, #0
80027540:	ea000010 	b	80027588 <sys_link+0x1a4>
80027544:	e1a00000 	nop			@ (mov r0, r0)
80027548:	e51b0008 	ldr	r0, [fp, #-8]
8002754c:	ebffef2e 	bl	8002320c <ilock>
80027550:	e51b3008 	ldr	r3, [fp, #-8]
80027554:	e1d331f6 	ldrsh	r3, [r3, #22]
80027558:	e6ff3073 	uxth	r3, r3
8002755c:	e2433001 	sub	r3, r3, #1
80027560:	e6ff3073 	uxth	r3, r3
80027564:	e6bf2073 	sxth	r2, r3
80027568:	e51b3008 	ldr	r3, [fp, #-8]
8002756c:	e1c321b6 	strh	r2, [r3, #22]
80027570:	e51b0008 	ldr	r0, [fp, #-8]
80027574:	ebffee8a 	bl	80022fa4 <iupdate>
80027578:	e51b0008 	ldr	r0, [fp, #-8]
8002757c:	ebffefe3 	bl	80023510 <iunlockput>
80027580:	ebfff4cd 	bl	800248bc <commit_trans>
80027584:	e3e03000 	mvn	r3, #0
80027588:	e1a00003 	mov	r0, r3
8002758c:	e24bd004 	sub	sp, fp, #4
80027590:	e8bd8800 	pop	{fp, pc}

80027594 <isdirempty>:
80027594:	e92d4800 	push	{fp, lr}
80027598:	e28db004 	add	fp, sp, #4
8002759c:	e24dd020 	sub	sp, sp, #32
800275a0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800275a4:	e3a03020 	mov	r3, #32
800275a8:	e50b3008 	str	r3, [fp, #-8]
800275ac:	ea000011 	b	800275f8 <isdirempty+0x64>
800275b0:	e51b2008 	ldr	r2, [fp, #-8]
800275b4:	e24b1018 	sub	r1, fp, #24
800275b8:	e3a03010 	mov	r3, #16
800275bc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800275c0:	ebfff188 	bl	80023be8 <readi>
800275c4:	e1a03000 	mov	r3, r0
800275c8:	e3530010 	cmp	r3, #16
800275cc:	0a000001 	beq	800275d8 <isdirempty+0x44>
800275d0:	e59f0044 	ldr	r0, [pc, #68]	@ 8002761c <isdirempty+0x88>
800275d4:	ebffe946 	bl	80021af4 <panic>
800275d8:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
800275dc:	e3530000 	cmp	r3, #0
800275e0:	0a000001 	beq	800275ec <isdirempty+0x58>
800275e4:	e3a03000 	mov	r3, #0
800275e8:	ea000008 	b	80027610 <isdirempty+0x7c>
800275ec:	e51b3008 	ldr	r3, [fp, #-8]
800275f0:	e2833010 	add	r3, r3, #16
800275f4:	e50b3008 	str	r3, [fp, #-8]
800275f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800275fc:	e5932018 	ldr	r2, [r3, #24]
80027600:	e51b3008 	ldr	r3, [fp, #-8]
80027604:	e1520003 	cmp	r2, r3
80027608:	8affffe8 	bhi	800275b0 <isdirempty+0x1c>
8002760c:	e3a03001 	mov	r3, #1
80027610:	e1a00003 	mov	r0, r3
80027614:	e24bd004 	sub	sp, fp, #4
80027618:	e8bd8800 	pop	{fp, pc}
8002761c:	8002b11c 	.word	0x8002b11c

80027620 <sys_unlink>:
80027620:	e92d4800 	push	{fp, lr}
80027624:	e28db004 	add	fp, sp, #4
80027628:	e24dd030 	sub	sp, sp, #48	@ 0x30
8002762c:	e24b3030 	sub	r3, fp, #48	@ 0x30
80027630:	e1a01003 	mov	r1, r3
80027634:	e3a00000 	mov	r0, #0
80027638:	ebfffe25 	bl	80026ed4 <argstr>
8002763c:	e1a03000 	mov	r3, r0
80027640:	e3530000 	cmp	r3, #0
80027644:	aa000001 	bge	80027650 <sys_unlink+0x30>
80027648:	e3e03000 	mvn	r3, #0
8002764c:	ea00006d 	b	80027808 <sys_unlink+0x1e8>
80027650:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80027654:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80027658:	e1a01002 	mov	r1, r2
8002765c:	e1a00003 	mov	r0, r3
80027660:	ebfff396 	bl	800244c0 <nameiparent>
80027664:	e50b0008 	str	r0, [fp, #-8]
80027668:	e51b3008 	ldr	r3, [fp, #-8]
8002766c:	e3530000 	cmp	r3, #0
80027670:	1a000001 	bne	8002767c <sys_unlink+0x5c>
80027674:	e3e03000 	mvn	r3, #0
80027678:	ea000062 	b	80027808 <sys_unlink+0x1e8>
8002767c:	ebfff47a 	bl	8002486c <begin_trans>
80027680:	e51b0008 	ldr	r0, [fp, #-8]
80027684:	ebffeee0 	bl	8002320c <ilock>
80027688:	e24b302c 	sub	r3, fp, #44	@ 0x2c
8002768c:	e59f1180 	ldr	r1, [pc, #384]	@ 80027814 <sys_unlink+0x1f4>
80027690:	e1a00003 	mov	r0, r3
80027694:	ebfff257 	bl	80023ff8 <namecmp>
80027698:	e1a03000 	mov	r3, r0
8002769c:	e3530000 	cmp	r3, #0
800276a0:	0a000051 	beq	800277ec <sys_unlink+0x1cc>
800276a4:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800276a8:	e59f1168 	ldr	r1, [pc, #360]	@ 80027818 <sys_unlink+0x1f8>
800276ac:	e1a00003 	mov	r0, r3
800276b0:	ebfff250 	bl	80023ff8 <namecmp>
800276b4:	e1a03000 	mov	r3, r0
800276b8:	e3530000 	cmp	r3, #0
800276bc:	0a00004a 	beq	800277ec <sys_unlink+0x1cc>
800276c0:	e24b2034 	sub	r2, fp, #52	@ 0x34
800276c4:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800276c8:	e1a01003 	mov	r1, r3
800276cc:	e51b0008 	ldr	r0, [fp, #-8]
800276d0:	ebfff255 	bl	8002402c <dirlookup>
800276d4:	e50b000c 	str	r0, [fp, #-12]
800276d8:	e51b300c 	ldr	r3, [fp, #-12]
800276dc:	e3530000 	cmp	r3, #0
800276e0:	0a000043 	beq	800277f4 <sys_unlink+0x1d4>
800276e4:	e51b000c 	ldr	r0, [fp, #-12]
800276e8:	ebffeec7 	bl	8002320c <ilock>
800276ec:	e51b300c 	ldr	r3, [fp, #-12]
800276f0:	e1d331f6 	ldrsh	r3, [r3, #22]
800276f4:	e3530000 	cmp	r3, #0
800276f8:	ca000001 	bgt	80027704 <sys_unlink+0xe4>
800276fc:	e59f0118 	ldr	r0, [pc, #280]	@ 8002781c <sys_unlink+0x1fc>
80027700:	ebffe8fb 	bl	80021af4 <panic>
80027704:	e51b300c 	ldr	r3, [fp, #-12]
80027708:	e1d331f0 	ldrsh	r3, [r3, #16]
8002770c:	e3530001 	cmp	r3, #1
80027710:	1a000007 	bne	80027734 <sys_unlink+0x114>
80027714:	e51b000c 	ldr	r0, [fp, #-12]
80027718:	ebffff9d 	bl	80027594 <isdirempty>
8002771c:	e1a03000 	mov	r3, r0
80027720:	e3530000 	cmp	r3, #0
80027724:	1a000002 	bne	80027734 <sys_unlink+0x114>
80027728:	e51b000c 	ldr	r0, [fp, #-12]
8002772c:	ebffef77 	bl	80023510 <iunlockput>
80027730:	ea000030 	b	800277f8 <sys_unlink+0x1d8>
80027734:	e24b301c 	sub	r3, fp, #28
80027738:	e3a02010 	mov	r2, #16
8002773c:	e3a01000 	mov	r1, #0
80027740:	e1a00003 	mov	r0, r3
80027744:	ebffe22d 	bl	80020000 <memset>
80027748:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
8002774c:	e24b101c 	sub	r1, fp, #28
80027750:	e3a03010 	mov	r3, #16
80027754:	e51b0008 	ldr	r0, [fp, #-8]
80027758:	ebfff19d 	bl	80023dd4 <writei>
8002775c:	e1a03000 	mov	r3, r0
80027760:	e3530010 	cmp	r3, #16
80027764:	0a000001 	beq	80027770 <sys_unlink+0x150>
80027768:	e59f00b0 	ldr	r0, [pc, #176]	@ 80027820 <sys_unlink+0x200>
8002776c:	ebffe8e0 	bl	80021af4 <panic>
80027770:	e51b300c 	ldr	r3, [fp, #-12]
80027774:	e1d331f0 	ldrsh	r3, [r3, #16]
80027778:	e3530001 	cmp	r3, #1
8002777c:	1a000009 	bne	800277a8 <sys_unlink+0x188>
80027780:	e51b3008 	ldr	r3, [fp, #-8]
80027784:	e1d331f6 	ldrsh	r3, [r3, #22]
80027788:	e6ff3073 	uxth	r3, r3
8002778c:	e2433001 	sub	r3, r3, #1
80027790:	e6ff3073 	uxth	r3, r3
80027794:	e6bf2073 	sxth	r2, r3
80027798:	e51b3008 	ldr	r3, [fp, #-8]
8002779c:	e1c321b6 	strh	r2, [r3, #22]
800277a0:	e51b0008 	ldr	r0, [fp, #-8]
800277a4:	ebffedfe 	bl	80022fa4 <iupdate>
800277a8:	e51b0008 	ldr	r0, [fp, #-8]
800277ac:	ebffef57 	bl	80023510 <iunlockput>
800277b0:	e51b300c 	ldr	r3, [fp, #-12]
800277b4:	e1d331f6 	ldrsh	r3, [r3, #22]
800277b8:	e6ff3073 	uxth	r3, r3
800277bc:	e2433001 	sub	r3, r3, #1
800277c0:	e6ff3073 	uxth	r3, r3
800277c4:	e6bf2073 	sxth	r2, r3
800277c8:	e51b300c 	ldr	r3, [fp, #-12]
800277cc:	e1c321b6 	strh	r2, [r3, #22]
800277d0:	e51b000c 	ldr	r0, [fp, #-12]
800277d4:	ebffedf2 	bl	80022fa4 <iupdate>
800277d8:	e51b000c 	ldr	r0, [fp, #-12]
800277dc:	ebffef4b 	bl	80023510 <iunlockput>
800277e0:	ebfff435 	bl	800248bc <commit_trans>
800277e4:	e3a03000 	mov	r3, #0
800277e8:	ea000006 	b	80027808 <sys_unlink+0x1e8>
800277ec:	e1a00000 	nop			@ (mov r0, r0)
800277f0:	ea000000 	b	800277f8 <sys_unlink+0x1d8>
800277f4:	e1a00000 	nop			@ (mov r0, r0)
800277f8:	e51b0008 	ldr	r0, [fp, #-8]
800277fc:	ebffef43 	bl	80023510 <iunlockput>
80027800:	ebfff42d 	bl	800248bc <commit_trans>
80027804:	e3e03000 	mvn	r3, #0
80027808:	e1a00003 	mov	r0, r3
8002780c:	e24bd004 	sub	sp, fp, #4
80027810:	e8bd8800 	pop	{fp, pc}
80027814:	8002b130 	.word	0x8002b130
80027818:	8002b134 	.word	0x8002b134
8002781c:	8002b138 	.word	0x8002b138
80027820:	8002b14c 	.word	0x8002b14c

80027824 <create>:
80027824:	e92d4800 	push	{fp, lr}
80027828:	e28db004 	add	fp, sp, #4
8002782c:	e24dd030 	sub	sp, sp, #48	@ 0x30
80027830:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80027834:	e1a00001 	mov	r0, r1
80027838:	e1a01002 	mov	r1, r2
8002783c:	e1a02003 	mov	r2, r3
80027840:	e1a03000 	mov	r3, r0
80027844:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80027848:	e1a03001 	mov	r3, r1
8002784c:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80027850:	e1a03002 	mov	r3, r2
80027854:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80027858:	e24b3020 	sub	r3, fp, #32
8002785c:	e1a01003 	mov	r1, r3
80027860:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80027864:	ebfff315 	bl	800244c0 <nameiparent>
80027868:	e50b0008 	str	r0, [fp, #-8]
8002786c:	e51b3008 	ldr	r3, [fp, #-8]
80027870:	e3530000 	cmp	r3, #0
80027874:	1a000001 	bne	80027880 <create+0x5c>
80027878:	e3a03000 	mov	r3, #0
8002787c:	ea000063 	b	80027a10 <create+0x1ec>
80027880:	e51b0008 	ldr	r0, [fp, #-8]
80027884:	ebffee60 	bl	8002320c <ilock>
80027888:	e24b2010 	sub	r2, fp, #16
8002788c:	e24b3020 	sub	r3, fp, #32
80027890:	e1a01003 	mov	r1, r3
80027894:	e51b0008 	ldr	r0, [fp, #-8]
80027898:	ebfff1e3 	bl	8002402c <dirlookup>
8002789c:	e50b000c 	str	r0, [fp, #-12]
800278a0:	e51b300c 	ldr	r3, [fp, #-12]
800278a4:	e3530000 	cmp	r3, #0
800278a8:	0a000010 	beq	800278f0 <create+0xcc>
800278ac:	e51b0008 	ldr	r0, [fp, #-8]
800278b0:	ebffef16 	bl	80023510 <iunlockput>
800278b4:	e51b000c 	ldr	r0, [fp, #-12]
800278b8:	ebffee53 	bl	8002320c <ilock>
800278bc:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800278c0:	e3530002 	cmp	r3, #2
800278c4:	1a000005 	bne	800278e0 <create+0xbc>
800278c8:	e51b300c 	ldr	r3, [fp, #-12]
800278cc:	e1d331f0 	ldrsh	r3, [r3, #16]
800278d0:	e3530002 	cmp	r3, #2
800278d4:	1a000001 	bne	800278e0 <create+0xbc>
800278d8:	e51b300c 	ldr	r3, [fp, #-12]
800278dc:	ea00004b 	b	80027a10 <create+0x1ec>
800278e0:	e51b000c 	ldr	r0, [fp, #-12]
800278e4:	ebffef09 	bl	80023510 <iunlockput>
800278e8:	e3a03000 	mov	r3, #0
800278ec:	ea000047 	b	80027a10 <create+0x1ec>
800278f0:	e51b3008 	ldr	r3, [fp, #-8]
800278f4:	e5933000 	ldr	r3, [r3]
800278f8:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
800278fc:	e1a01002 	mov	r1, r2
80027900:	e1a00003 	mov	r0, r3
80027904:	ebffed66 	bl	80022ea4 <ialloc>
80027908:	e50b000c 	str	r0, [fp, #-12]
8002790c:	e51b300c 	ldr	r3, [fp, #-12]
80027910:	e3530000 	cmp	r3, #0
80027914:	1a000001 	bne	80027920 <create+0xfc>
80027918:	e59f00fc 	ldr	r0, [pc, #252]	@ 80027a1c <create+0x1f8>
8002791c:	ebffe874 	bl	80021af4 <panic>
80027920:	e51b000c 	ldr	r0, [fp, #-12]
80027924:	ebffee38 	bl	8002320c <ilock>
80027928:	e51b300c 	ldr	r3, [fp, #-12]
8002792c:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80027930:	e1c321b2 	strh	r2, [r3, #18]
80027934:	e51b300c 	ldr	r3, [fp, #-12]
80027938:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
8002793c:	e1c321b4 	strh	r2, [r3, #20]
80027940:	e51b300c 	ldr	r3, [fp, #-12]
80027944:	e3a02001 	mov	r2, #1
80027948:	e1c321b6 	strh	r2, [r3, #22]
8002794c:	e51b000c 	ldr	r0, [fp, #-12]
80027950:	ebffed93 	bl	80022fa4 <iupdate>
80027954:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027958:	e3530001 	cmp	r3, #1
8002795c:	1a00001d 	bne	800279d8 <create+0x1b4>
80027960:	e51b3008 	ldr	r3, [fp, #-8]
80027964:	e1d331f6 	ldrsh	r3, [r3, #22]
80027968:	e6ff3073 	uxth	r3, r3
8002796c:	e2833001 	add	r3, r3, #1
80027970:	e6ff3073 	uxth	r3, r3
80027974:	e6bf2073 	sxth	r2, r3
80027978:	e51b3008 	ldr	r3, [fp, #-8]
8002797c:	e1c321b6 	strh	r2, [r3, #22]
80027980:	e51b0008 	ldr	r0, [fp, #-8]
80027984:	ebffed86 	bl	80022fa4 <iupdate>
80027988:	e51b300c 	ldr	r3, [fp, #-12]
8002798c:	e5933004 	ldr	r3, [r3, #4]
80027990:	e1a02003 	mov	r2, r3
80027994:	e59f1084 	ldr	r1, [pc, #132]	@ 80027a20 <create+0x1fc>
80027998:	e51b000c 	ldr	r0, [fp, #-12]
8002799c:	ebfff1e4 	bl	80024134 <dirlink>
800279a0:	e1a03000 	mov	r3, r0
800279a4:	e3530000 	cmp	r3, #0
800279a8:	ba000008 	blt	800279d0 <create+0x1ac>
800279ac:	e51b3008 	ldr	r3, [fp, #-8]
800279b0:	e5933004 	ldr	r3, [r3, #4]
800279b4:	e1a02003 	mov	r2, r3
800279b8:	e59f1064 	ldr	r1, [pc, #100]	@ 80027a24 <create+0x200>
800279bc:	e51b000c 	ldr	r0, [fp, #-12]
800279c0:	ebfff1db 	bl	80024134 <dirlink>
800279c4:	e1a03000 	mov	r3, r0
800279c8:	e3530000 	cmp	r3, #0
800279cc:	aa000001 	bge	800279d8 <create+0x1b4>
800279d0:	e59f0050 	ldr	r0, [pc, #80]	@ 80027a28 <create+0x204>
800279d4:	ebffe846 	bl	80021af4 <panic>
800279d8:	e51b300c 	ldr	r3, [fp, #-12]
800279dc:	e5932004 	ldr	r2, [r3, #4]
800279e0:	e24b3020 	sub	r3, fp, #32
800279e4:	e1a01003 	mov	r1, r3
800279e8:	e51b0008 	ldr	r0, [fp, #-8]
800279ec:	ebfff1d0 	bl	80024134 <dirlink>
800279f0:	e1a03000 	mov	r3, r0
800279f4:	e3530000 	cmp	r3, #0
800279f8:	aa000001 	bge	80027a04 <create+0x1e0>
800279fc:	e59f0028 	ldr	r0, [pc, #40]	@ 80027a2c <create+0x208>
80027a00:	ebffe83b 	bl	80021af4 <panic>
80027a04:	e51b0008 	ldr	r0, [fp, #-8]
80027a08:	ebffeec0 	bl	80023510 <iunlockput>
80027a0c:	e51b300c 	ldr	r3, [fp, #-12]
80027a10:	e1a00003 	mov	r0, r3
80027a14:	e24bd004 	sub	sp, fp, #4
80027a18:	e8bd8800 	pop	{fp, pc}
80027a1c:	8002b15c 	.word	0x8002b15c
80027a20:	8002b130 	.word	0x8002b130
80027a24:	8002b134 	.word	0x8002b134
80027a28:	8002b16c 	.word	0x8002b16c
80027a2c:	8002b178 	.word	0x8002b178

80027a30 <sys_symlink>:
80027a30:	e92d4800 	push	{fp, lr}
80027a34:	e28db004 	add	fp, sp, #4
80027a38:	e24dd020 	sub	sp, sp, #32
80027a3c:	e24b3010 	sub	r3, fp, #16
80027a40:	e1a01003 	mov	r1, r3
80027a44:	e3a00000 	mov	r0, #0
80027a48:	ebfffd21 	bl	80026ed4 <argstr>
80027a4c:	e1a03000 	mov	r3, r0
80027a50:	e3530000 	cmp	r3, #0
80027a54:	ba000006 	blt	80027a74 <sys_symlink+0x44>
80027a58:	e24b3014 	sub	r3, fp, #20
80027a5c:	e1a01003 	mov	r1, r3
80027a60:	e3a00001 	mov	r0, #1
80027a64:	ebfffd1a 	bl	80026ed4 <argstr>
80027a68:	e1a03000 	mov	r3, r0
80027a6c:	e3530000 	cmp	r3, #0
80027a70:	aa000001 	bge	80027a7c <sys_symlink+0x4c>
80027a74:	e3e03000 	mvn	r3, #0
80027a78:	ea000069 	b	80027c24 <sys_symlink+0x1f4>
80027a7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027a80:	e24b2024 	sub	r2, fp, #36	@ 0x24
80027a84:	e1a01002 	mov	r1, r2
80027a88:	e1a00003 	mov	r0, r3
80027a8c:	ebfff28b 	bl	800244c0 <nameiparent>
80027a90:	e50b0008 	str	r0, [fp, #-8]
80027a94:	e51b3008 	ldr	r3, [fp, #-8]
80027a98:	e3530000 	cmp	r3, #0
80027a9c:	1a000001 	bne	80027aa8 <sys_symlink+0x78>
80027aa0:	e3e03000 	mvn	r3, #0
80027aa4:	ea00005e 	b	80027c24 <sys_symlink+0x1f4>
80027aa8:	ebfff36f 	bl	8002486c <begin_trans>
80027aac:	e51b0008 	ldr	r0, [fp, #-8]
80027ab0:	ebffedd5 	bl	8002320c <ilock>
80027ab4:	e24b3024 	sub	r3, fp, #36	@ 0x24
80027ab8:	e3a02000 	mov	r2, #0
80027abc:	e1a01003 	mov	r1, r3
80027ac0:	e51b0008 	ldr	r0, [fp, #-8]
80027ac4:	ebfff158 	bl	8002402c <dirlookup>
80027ac8:	e1a03000 	mov	r3, r0
80027acc:	e3530000 	cmp	r3, #0
80027ad0:	0a000004 	beq	80027ae8 <sys_symlink+0xb8>
80027ad4:	e51b0008 	ldr	r0, [fp, #-8]
80027ad8:	ebffee8c 	bl	80023510 <iunlockput>
80027adc:	ebfff376 	bl	800248bc <commit_trans>
80027ae0:	e3e03000 	mvn	r3, #0
80027ae4:	ea00004e 	b	80027c24 <sys_symlink+0x1f4>
80027ae8:	e51b3008 	ldr	r3, [fp, #-8]
80027aec:	e5933000 	ldr	r3, [r3]
80027af0:	e3a01004 	mov	r1, #4
80027af4:	e1a00003 	mov	r0, r3
80027af8:	ebffece9 	bl	80022ea4 <ialloc>
80027afc:	e50b000c 	str	r0, [fp, #-12]
80027b00:	e51b300c 	ldr	r3, [fp, #-12]
80027b04:	e3530000 	cmp	r3, #0
80027b08:	1a000004 	bne	80027b20 <sys_symlink+0xf0>
80027b0c:	e51b0008 	ldr	r0, [fp, #-8]
80027b10:	ebffee7e 	bl	80023510 <iunlockput>
80027b14:	ebfff368 	bl	800248bc <commit_trans>
80027b18:	e3e03000 	mvn	r3, #0
80027b1c:	ea000040 	b	80027c24 <sys_symlink+0x1f4>
80027b20:	e51b000c 	ldr	r0, [fp, #-12]
80027b24:	ebffedb8 	bl	8002320c <ilock>
80027b28:	e51b300c 	ldr	r3, [fp, #-12]
80027b2c:	e3a02001 	mov	r2, #1
80027b30:	e1c321b6 	strh	r2, [r3, #22]
80027b34:	e51b3010 	ldr	r3, [fp, #-16]
80027b38:	e1a00003 	mov	r0, r3
80027b3c:	ebffe26a 	bl	800204ec <strlen>
80027b40:	e1a03000 	mov	r3, r0
80027b44:	e1a02003 	mov	r2, r3
80027b48:	e51b300c 	ldr	r3, [fp, #-12]
80027b4c:	e5832018 	str	r2, [r3, #24]
80027b50:	e51b000c 	ldr	r0, [fp, #-12]
80027b54:	ebffed12 	bl	80022fa4 <iupdate>
80027b58:	e51b1010 	ldr	r1, [fp, #-16]
80027b5c:	e51b300c 	ldr	r3, [fp, #-12]
80027b60:	e5933018 	ldr	r3, [r3, #24]
80027b64:	e3a02000 	mov	r2, #0
80027b68:	e51b000c 	ldr	r0, [fp, #-12]
80027b6c:	ebfff098 	bl	80023dd4 <writei>
80027b70:	e1a03000 	mov	r3, r0
80027b74:	e1a02003 	mov	r2, r3
80027b78:	e51b300c 	ldr	r3, [fp, #-12]
80027b7c:	e5933018 	ldr	r3, [r3, #24]
80027b80:	e1520003 	cmp	r2, r3
80027b84:	0a00000b 	beq	80027bb8 <sys_symlink+0x188>
80027b88:	e51b300c 	ldr	r3, [fp, #-12]
80027b8c:	e3a02000 	mov	r2, #0
80027b90:	e1c321b6 	strh	r2, [r3, #22]
80027b94:	e51b000c 	ldr	r0, [fp, #-12]
80027b98:	ebffed01 	bl	80022fa4 <iupdate>
80027b9c:	e51b000c 	ldr	r0, [fp, #-12]
80027ba0:	ebffee5a 	bl	80023510 <iunlockput>
80027ba4:	e51b0008 	ldr	r0, [fp, #-8]
80027ba8:	ebffee58 	bl	80023510 <iunlockput>
80027bac:	ebfff342 	bl	800248bc <commit_trans>
80027bb0:	e3e03000 	mvn	r3, #0
80027bb4:	ea00001a 	b	80027c24 <sys_symlink+0x1f4>
80027bb8:	e51b000c 	ldr	r0, [fp, #-12]
80027bbc:	ebffedf6 	bl	8002339c <iunlock>
80027bc0:	e51b300c 	ldr	r3, [fp, #-12]
80027bc4:	e5932004 	ldr	r2, [r3, #4]
80027bc8:	e24b3024 	sub	r3, fp, #36	@ 0x24
80027bcc:	e1a01003 	mov	r1, r3
80027bd0:	e51b0008 	ldr	r0, [fp, #-8]
80027bd4:	ebfff156 	bl	80024134 <dirlink>
80027bd8:	e1a03000 	mov	r3, r0
80027bdc:	e3530000 	cmp	r3, #0
80027be0:	aa00000b 	bge	80027c14 <sys_symlink+0x1e4>
80027be4:	e51b300c 	ldr	r3, [fp, #-12]
80027be8:	e3a02000 	mov	r2, #0
80027bec:	e1c321b6 	strh	r2, [r3, #22]
80027bf0:	e51b000c 	ldr	r0, [fp, #-12]
80027bf4:	ebffecea 	bl	80022fa4 <iupdate>
80027bf8:	e51b000c 	ldr	r0, [fp, #-12]
80027bfc:	ebffee08 	bl	80023424 <iput>
80027c00:	e51b0008 	ldr	r0, [fp, #-8]
80027c04:	ebffee41 	bl	80023510 <iunlockput>
80027c08:	ebfff32b 	bl	800248bc <commit_trans>
80027c0c:	e3e03000 	mvn	r3, #0
80027c10:	ea000003 	b	80027c24 <sys_symlink+0x1f4>
80027c14:	e51b0008 	ldr	r0, [fp, #-8]
80027c18:	ebffee3c 	bl	80023510 <iunlockput>
80027c1c:	ebfff326 	bl	800248bc <commit_trans>
80027c20:	e3a03000 	mov	r3, #0
80027c24:	e1a00003 	mov	r0, r3
80027c28:	e24bd004 	sub	sp, fp, #4
80027c2c:	e8bd8800 	pop	{fp, pc}

80027c30 <sys_open>:
80027c30:	e92d4800 	push	{fp, lr}
80027c34:	e28db004 	add	fp, sp, #4
80027c38:	e24dd098 	sub	sp, sp, #152	@ 0x98
80027c3c:	e24b3018 	sub	r3, fp, #24
80027c40:	e1a01003 	mov	r1, r3
80027c44:	e3a00000 	mov	r0, #0
80027c48:	ebfffca1 	bl	80026ed4 <argstr>
80027c4c:	e1a03000 	mov	r3, r0
80027c50:	e3530000 	cmp	r3, #0
80027c54:	ba000006 	blt	80027c74 <sys_open+0x44>
80027c58:	e24b301c 	sub	r3, fp, #28
80027c5c:	e1a01003 	mov	r1, r3
80027c60:	e3a00001 	mov	r0, #1
80027c64:	ebfffc56 	bl	80026dc4 <argint>
80027c68:	e1a03000 	mov	r3, r0
80027c6c:	e3530000 	cmp	r3, #0
80027c70:	aa000001 	bge	80027c7c <sys_open+0x4c>
80027c74:	e3e03000 	mvn	r3, #0
80027c78:	ea000081 	b	80027e84 <sys_open+0x254>
80027c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027c80:	e2033c02 	and	r3, r3, #512	@ 0x200
80027c84:	e3530000 	cmp	r3, #0
80027c88:	0a00000c 	beq	80027cc0 <sys_open+0x90>
80027c8c:	ebfff2f6 	bl	8002486c <begin_trans>
80027c90:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80027c94:	e3a03000 	mov	r3, #0
80027c98:	e3a02000 	mov	r2, #0
80027c9c:	e3a01002 	mov	r1, #2
80027ca0:	ebfffedf 	bl	80027824 <create>
80027ca4:	e50b0008 	str	r0, [fp, #-8]
80027ca8:	ebfff303 	bl	800248bc <commit_trans>
80027cac:	e51b3008 	ldr	r3, [fp, #-8]
80027cb0:	e3530000 	cmp	r3, #0
80027cb4:	1a00003b 	bne	80027da8 <sys_open+0x178>
80027cb8:	e3e03000 	mvn	r3, #0
80027cbc:	ea000070 	b	80027e84 <sys_open+0x254>
80027cc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027cc4:	e1a00003 	mov	r0, r3
80027cc8:	ebfff1ef 	bl	8002448c <namei>
80027ccc:	e50b0008 	str	r0, [fp, #-8]
80027cd0:	e51b3008 	ldr	r3, [fp, #-8]
80027cd4:	e3530000 	cmp	r3, #0
80027cd8:	1a000001 	bne	80027ce4 <sys_open+0xb4>
80027cdc:	e3e03000 	mvn	r3, #0
80027ce0:	ea000067 	b	80027e84 <sys_open+0x254>
80027ce4:	e51b0008 	ldr	r0, [fp, #-8]
80027ce8:	ebffed47 	bl	8002320c <ilock>
80027cec:	ea00001e 	b	80027d6c <sys_open+0x13c>
80027cf0:	e24b109c 	sub	r1, fp, #156	@ 0x9c
80027cf4:	e3a0307f 	mov	r3, #127	@ 0x7f
80027cf8:	e3a02000 	mov	r2, #0
80027cfc:	e51b0008 	ldr	r0, [fp, #-8]
80027d00:	ebffefb8 	bl	80023be8 <readi>
80027d04:	e50b000c 	str	r0, [fp, #-12]
80027d08:	e51b300c 	ldr	r3, [fp, #-12]
80027d0c:	e3530000 	cmp	r3, #0
80027d10:	ca000003 	bgt	80027d24 <sys_open+0xf4>
80027d14:	e51b0008 	ldr	r0, [fp, #-8]
80027d18:	ebffedfc 	bl	80023510 <iunlockput>
80027d1c:	e3e03000 	mvn	r3, #0
80027d20:	ea000057 	b	80027e84 <sys_open+0x254>
80027d24:	e24b209c 	sub	r2, fp, #156	@ 0x9c
80027d28:	e51b300c 	ldr	r3, [fp, #-12]
80027d2c:	e0823003 	add	r3, r2, r3
80027d30:	e3a02000 	mov	r2, #0
80027d34:	e5c32000 	strb	r2, [r3]
80027d38:	e51b0008 	ldr	r0, [fp, #-8]
80027d3c:	ebffedf3 	bl	80023510 <iunlockput>
80027d40:	e24b309c 	sub	r3, fp, #156	@ 0x9c
80027d44:	e1a00003 	mov	r0, r3
80027d48:	ebfff1cf 	bl	8002448c <namei>
80027d4c:	e50b0008 	str	r0, [fp, #-8]
80027d50:	e51b3008 	ldr	r3, [fp, #-8]
80027d54:	e3530000 	cmp	r3, #0
80027d58:	1a000001 	bne	80027d64 <sys_open+0x134>
80027d5c:	e3e03000 	mvn	r3, #0
80027d60:	ea000047 	b	80027e84 <sys_open+0x254>
80027d64:	e51b0008 	ldr	r0, [fp, #-8]
80027d68:	ebffed27 	bl	8002320c <ilock>
80027d6c:	e51b3008 	ldr	r3, [fp, #-8]
80027d70:	e1d331f0 	ldrsh	r3, [r3, #16]
80027d74:	e3530004 	cmp	r3, #4
80027d78:	0affffdc 	beq	80027cf0 <sys_open+0xc0>
80027d7c:	e51b3008 	ldr	r3, [fp, #-8]
80027d80:	e1d331f0 	ldrsh	r3, [r3, #16]
80027d84:	e3530001 	cmp	r3, #1
80027d88:	1a000006 	bne	80027da8 <sys_open+0x178>
80027d8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027d90:	e3530000 	cmp	r3, #0
80027d94:	0a000003 	beq	80027da8 <sys_open+0x178>
80027d98:	e51b0008 	ldr	r0, [fp, #-8]
80027d9c:	ebffeddb 	bl	80023510 <iunlockput>
80027da0:	e3e03000 	mvn	r3, #0
80027da4:	ea000036 	b	80027e84 <sys_open+0x254>
80027da8:	ebffea10 	bl	800225f0 <filealloc>
80027dac:	e50b0010 	str	r0, [fp, #-16]
80027db0:	e51b3010 	ldr	r3, [fp, #-16]
80027db4:	e3530000 	cmp	r3, #0
80027db8:	0a000005 	beq	80027dd4 <sys_open+0x1a4>
80027dbc:	e51b0010 	ldr	r0, [fp, #-16]
80027dc0:	ebfffcc5 	bl	800270dc <fdalloc>
80027dc4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80027dc8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027dcc:	e3530000 	cmp	r3, #0
80027dd0:	aa000008 	bge	80027df8 <sys_open+0x1c8>
80027dd4:	e51b3010 	ldr	r3, [fp, #-16]
80027dd8:	e3530000 	cmp	r3, #0
80027ddc:	0a000001 	beq	80027de8 <sys_open+0x1b8>
80027de0:	e51b0010 	ldr	r0, [fp, #-16]
80027de4:	ebffea3d 	bl	800226e0 <fileclose>
80027de8:	e51b0008 	ldr	r0, [fp, #-8]
80027dec:	ebffedc7 	bl	80023510 <iunlockput>
80027df0:	e3e03000 	mvn	r3, #0
80027df4:	ea000022 	b	80027e84 <sys_open+0x254>
80027df8:	e51b0008 	ldr	r0, [fp, #-8]
80027dfc:	ebffed66 	bl	8002339c <iunlock>
80027e00:	e51b3010 	ldr	r3, [fp, #-16]
80027e04:	e3a02002 	mov	r2, #2
80027e08:	e5c32000 	strb	r2, [r3]
80027e0c:	e51b3010 	ldr	r3, [fp, #-16]
80027e10:	e51b2008 	ldr	r2, [fp, #-8]
80027e14:	e5832010 	str	r2, [r3, #16]
80027e18:	e51b3010 	ldr	r3, [fp, #-16]
80027e1c:	e3a02000 	mov	r2, #0
80027e20:	e5832014 	str	r2, [r3, #20]
80027e24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027e28:	e2033001 	and	r3, r3, #1
80027e2c:	e3530000 	cmp	r3, #0
80027e30:	03a03001 	moveq	r3, #1
80027e34:	13a03000 	movne	r3, #0
80027e38:	e6ef3073 	uxtb	r3, r3
80027e3c:	e1a02003 	mov	r2, r3
80027e40:	e51b3010 	ldr	r3, [fp, #-16]
80027e44:	e5c32008 	strb	r2, [r3, #8]
80027e48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027e4c:	e2033001 	and	r3, r3, #1
80027e50:	e3530000 	cmp	r3, #0
80027e54:	1a000003 	bne	80027e68 <sys_open+0x238>
80027e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027e5c:	e2033002 	and	r3, r3, #2
80027e60:	e3530000 	cmp	r3, #0
80027e64:	0a000001 	beq	80027e70 <sys_open+0x240>
80027e68:	e3a03001 	mov	r3, #1
80027e6c:	ea000000 	b	80027e74 <sys_open+0x244>
80027e70:	e3a03000 	mov	r3, #0
80027e74:	e6ef2073 	uxtb	r2, r3
80027e78:	e51b3010 	ldr	r3, [fp, #-16]
80027e7c:	e5c32009 	strb	r2, [r3, #9]
80027e80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027e84:	e1a00003 	mov	r0, r3
80027e88:	e24bd004 	sub	sp, fp, #4
80027e8c:	e8bd8800 	pop	{fp, pc}

80027e90 <sys_mkdir>:
80027e90:	e92d4800 	push	{fp, lr}
80027e94:	e28db004 	add	fp, sp, #4
80027e98:	e24dd008 	sub	sp, sp, #8
80027e9c:	ebfff272 	bl	8002486c <begin_trans>
80027ea0:	e24b300c 	sub	r3, fp, #12
80027ea4:	e1a01003 	mov	r1, r3
80027ea8:	e3a00000 	mov	r0, #0
80027eac:	ebfffc08 	bl	80026ed4 <argstr>
80027eb0:	e1a03000 	mov	r3, r0
80027eb4:	e3530000 	cmp	r3, #0
80027eb8:	ba000008 	blt	80027ee0 <sys_mkdir+0x50>
80027ebc:	e51b000c 	ldr	r0, [fp, #-12]
80027ec0:	e3a03000 	mov	r3, #0
80027ec4:	e3a02000 	mov	r2, #0
80027ec8:	e3a01001 	mov	r1, #1
80027ecc:	ebfffe54 	bl	80027824 <create>
80027ed0:	e50b0008 	str	r0, [fp, #-8]
80027ed4:	e51b3008 	ldr	r3, [fp, #-8]
80027ed8:	e3530000 	cmp	r3, #0
80027edc:	1a000002 	bne	80027eec <sys_mkdir+0x5c>
80027ee0:	ebfff275 	bl	800248bc <commit_trans>
80027ee4:	e3e03000 	mvn	r3, #0
80027ee8:	ea000003 	b	80027efc <sys_mkdir+0x6c>
80027eec:	e51b0008 	ldr	r0, [fp, #-8]
80027ef0:	ebffed86 	bl	80023510 <iunlockput>
80027ef4:	ebfff270 	bl	800248bc <commit_trans>
80027ef8:	e3a03000 	mov	r3, #0
80027efc:	e1a00003 	mov	r0, r3
80027f00:	e24bd004 	sub	sp, fp, #4
80027f04:	e8bd8800 	pop	{fp, pc}

80027f08 <sys_mknod>:
80027f08:	e92d4800 	push	{fp, lr}
80027f0c:	e28db004 	add	fp, sp, #4
80027f10:	e24dd018 	sub	sp, sp, #24
80027f14:	ebfff254 	bl	8002486c <begin_trans>
80027f18:	e24b3010 	sub	r3, fp, #16
80027f1c:	e1a01003 	mov	r1, r3
80027f20:	e3a00000 	mov	r0, #0
80027f24:	ebfffbea 	bl	80026ed4 <argstr>
80027f28:	e50b0008 	str	r0, [fp, #-8]
80027f2c:	e51b3008 	ldr	r3, [fp, #-8]
80027f30:	e3530000 	cmp	r3, #0
80027f34:	ba000018 	blt	80027f9c <sys_mknod+0x94>
80027f38:	e24b3014 	sub	r3, fp, #20
80027f3c:	e1a01003 	mov	r1, r3
80027f40:	e3a00001 	mov	r0, #1
80027f44:	ebfffb9e 	bl	80026dc4 <argint>
80027f48:	e1a03000 	mov	r3, r0
80027f4c:	e3530000 	cmp	r3, #0
80027f50:	ba000011 	blt	80027f9c <sys_mknod+0x94>
80027f54:	e24b3018 	sub	r3, fp, #24
80027f58:	e1a01003 	mov	r1, r3
80027f5c:	e3a00002 	mov	r0, #2
80027f60:	ebfffb97 	bl	80026dc4 <argint>
80027f64:	e1a03000 	mov	r3, r0
80027f68:	e3530000 	cmp	r3, #0
80027f6c:	ba00000a 	blt	80027f9c <sys_mknod+0x94>
80027f70:	e51b0010 	ldr	r0, [fp, #-16]
80027f74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027f78:	e6bf2073 	sxth	r2, r3
80027f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027f80:	e6bf3073 	sxth	r3, r3
80027f84:	e3a01003 	mov	r1, #3
80027f88:	ebfffe25 	bl	80027824 <create>
80027f8c:	e50b000c 	str	r0, [fp, #-12]
80027f90:	e51b300c 	ldr	r3, [fp, #-12]
80027f94:	e3530000 	cmp	r3, #0
80027f98:	1a000002 	bne	80027fa8 <sys_mknod+0xa0>
80027f9c:	ebfff246 	bl	800248bc <commit_trans>
80027fa0:	e3e03000 	mvn	r3, #0
80027fa4:	ea000003 	b	80027fb8 <sys_mknod+0xb0>
80027fa8:	e51b000c 	ldr	r0, [fp, #-12]
80027fac:	ebffed57 	bl	80023510 <iunlockput>
80027fb0:	ebfff241 	bl	800248bc <commit_trans>
80027fb4:	e3a03000 	mov	r3, #0
80027fb8:	e1a00003 	mov	r0, r3
80027fbc:	e24bd004 	sub	sp, fp, #4
80027fc0:	e8bd8800 	pop	{fp, pc}

80027fc4 <sys_chdir>:
80027fc4:	e92d4800 	push	{fp, lr}
80027fc8:	e28db004 	add	fp, sp, #4
80027fcc:	e24dd008 	sub	sp, sp, #8
80027fd0:	e24b300c 	sub	r3, fp, #12
80027fd4:	e1a01003 	mov	r1, r3
80027fd8:	e3a00000 	mov	r0, #0
80027fdc:	ebfffbbc 	bl	80026ed4 <argstr>
80027fe0:	e1a03000 	mov	r3, r0
80027fe4:	e3530000 	cmp	r3, #0
80027fe8:	ba000006 	blt	80028008 <sys_chdir+0x44>
80027fec:	e51b300c 	ldr	r3, [fp, #-12]
80027ff0:	e1a00003 	mov	r0, r3
80027ff4:	ebfff124 	bl	8002448c <namei>
80027ff8:	e50b0008 	str	r0, [fp, #-8]
80027ffc:	e51b3008 	ldr	r3, [fp, #-8]
80028000:	e3530000 	cmp	r3, #0
80028004:	1a000001 	bne	80028010 <sys_chdir+0x4c>
80028008:	e3e03000 	mvn	r3, #0
8002800c:	ea000015 	b	80028068 <sys_chdir+0xa4>
80028010:	e51b0008 	ldr	r0, [fp, #-8]
80028014:	ebffec7c 	bl	8002320c <ilock>
80028018:	e51b3008 	ldr	r3, [fp, #-8]
8002801c:	e1d331f0 	ldrsh	r3, [r3, #16]
80028020:	e3530001 	cmp	r3, #1
80028024:	0a000003 	beq	80028038 <sys_chdir+0x74>
80028028:	e51b0008 	ldr	r0, [fp, #-8]
8002802c:	ebffed37 	bl	80023510 <iunlockput>
80028030:	e3e03000 	mvn	r3, #0
80028034:	ea00000b 	b	80028068 <sys_chdir+0xa4>
80028038:	e51b0008 	ldr	r0, [fp, #-8]
8002803c:	ebffecd6 	bl	8002339c <iunlock>
80028040:	e59f302c 	ldr	r3, [pc, #44]	@ 80028074 <sys_chdir+0xb0>
80028044:	e5933000 	ldr	r3, [r3]
80028048:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002804c:	e1a00003 	mov	r0, r3
80028050:	ebffecf3 	bl	80023424 <iput>
80028054:	e59f3018 	ldr	r3, [pc, #24]	@ 80028074 <sys_chdir+0xb0>
80028058:	e5933000 	ldr	r3, [r3]
8002805c:	e51b2008 	ldr	r2, [fp, #-8]
80028060:	e5832068 	str	r2, [r3, #104]	@ 0x68
80028064:	e3a03000 	mov	r3, #0
80028068:	e1a00003 	mov	r0, r3
8002806c:	e24bd004 	sub	sp, fp, #4
80028070:	e8bd8800 	pop	{fp, pc}
80028074:	800b1ed0 	.word	0x800b1ed0

80028078 <sys_exec>:
80028078:	e92d4800 	push	{fp, lr}
8002807c:	e28db004 	add	fp, sp, #4
80028080:	e24dd090 	sub	sp, sp, #144	@ 0x90
80028084:	e24b300c 	sub	r3, fp, #12
80028088:	e1a01003 	mov	r1, r3
8002808c:	e3a00000 	mov	r0, #0
80028090:	ebfffb8f 	bl	80026ed4 <argstr>
80028094:	e1a03000 	mov	r3, r0
80028098:	e3530000 	cmp	r3, #0
8002809c:	ba000006 	blt	800280bc <sys_exec+0x44>
800280a0:	e24b3090 	sub	r3, fp, #144	@ 0x90
800280a4:	e1a01003 	mov	r1, r3
800280a8:	e3a00001 	mov	r0, #1
800280ac:	ebfffb44 	bl	80026dc4 <argint>
800280b0:	e1a03000 	mov	r3, r0
800280b4:	e3530000 	cmp	r3, #0
800280b8:	aa000001 	bge	800280c4 <sys_exec+0x4c>
800280bc:	e3e03000 	mvn	r3, #0
800280c0:	ea00003a 	b	800281b0 <sys_exec+0x138>
800280c4:	e24b308c 	sub	r3, fp, #140	@ 0x8c
800280c8:	e3a02080 	mov	r2, #128	@ 0x80
800280cc:	e3a01000 	mov	r1, #0
800280d0:	e1a00003 	mov	r0, r3
800280d4:	ebffdfc9 	bl	80020000 <memset>
800280d8:	e3a03000 	mov	r3, #0
800280dc:	e50b3008 	str	r3, [fp, #-8]
800280e0:	e51b3008 	ldr	r3, [fp, #-8]
800280e4:	e353001f 	cmp	r3, #31
800280e8:	9a000001 	bls	800280f4 <sys_exec+0x7c>
800280ec:	e3e03000 	mvn	r3, #0
800280f0:	ea00002e 	b	800281b0 <sys_exec+0x138>
800280f4:	e51b3008 	ldr	r3, [fp, #-8]
800280f8:	e1a03103 	lsl	r3, r3, #2
800280fc:	e1a02003 	mov	r2, r3
80028100:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80028104:	e0823003 	add	r3, r2, r3
80028108:	e24b2094 	sub	r2, fp, #148	@ 0x94
8002810c:	e1a01002 	mov	r1, r2
80028110:	e1a00003 	mov	r0, r3
80028114:	ebfffade 	bl	80026c94 <fetchint>
80028118:	e1a03000 	mov	r3, r0
8002811c:	e3530000 	cmp	r3, #0
80028120:	aa000001 	bge	8002812c <sys_exec+0xb4>
80028124:	e3e03000 	mvn	r3, #0
80028128:	ea000020 	b	800281b0 <sys_exec+0x138>
8002812c:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80028130:	e3530000 	cmp	r3, #0
80028134:	1a00000d 	bne	80028170 <sys_exec+0xf8>
80028138:	e51b3008 	ldr	r3, [fp, #-8]
8002813c:	e1a03103 	lsl	r3, r3, #2
80028140:	e2433004 	sub	r3, r3, #4
80028144:	e083300b 	add	r3, r3, fp
80028148:	e3a02000 	mov	r2, #0
8002814c:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80028150:	e1a00000 	nop			@ (mov r0, r0)
80028154:	e51b300c 	ldr	r3, [fp, #-12]
80028158:	e24b208c 	sub	r2, fp, #140	@ 0x8c
8002815c:	e1a01002 	mov	r1, r2
80028160:	e1a00003 	mov	r0, r3
80028164:	ebffe7ca 	bl	80022094 <exec>
80028168:	e1a03000 	mov	r3, r0
8002816c:	ea00000f 	b	800281b0 <sys_exec+0x138>
80028170:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80028174:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80028178:	e51b3008 	ldr	r3, [fp, #-8]
8002817c:	e1a03103 	lsl	r3, r3, #2
80028180:	e0823003 	add	r3, r2, r3
80028184:	e1a01003 	mov	r1, r3
80028188:	ebfffadf 	bl	80026d0c <fetchstr>
8002818c:	e1a03000 	mov	r3, r0
80028190:	e3530000 	cmp	r3, #0
80028194:	aa000001 	bge	800281a0 <sys_exec+0x128>
80028198:	e3e03000 	mvn	r3, #0
8002819c:	ea000003 	b	800281b0 <sys_exec+0x138>
800281a0:	e51b3008 	ldr	r3, [fp, #-8]
800281a4:	e2833001 	add	r3, r3, #1
800281a8:	e50b3008 	str	r3, [fp, #-8]
800281ac:	eaffffcb 	b	800280e0 <sys_exec+0x68>
800281b0:	e1a00003 	mov	r0, r3
800281b4:	e24bd004 	sub	sp, fp, #4
800281b8:	e8bd8800 	pop	{fp, pc}

800281bc <sys_pipe>:
800281bc:	e92d4800 	push	{fp, lr}
800281c0:	e28db004 	add	fp, sp, #4
800281c4:	e24dd018 	sub	sp, sp, #24
800281c8:	e24b3010 	sub	r3, fp, #16
800281cc:	e3a02008 	mov	r2, #8
800281d0:	e1a01003 	mov	r1, r3
800281d4:	e3a00000 	mov	r0, #0
800281d8:	ebfffb14 	bl	80026e30 <argptr>
800281dc:	e1a03000 	mov	r3, r0
800281e0:	e3530000 	cmp	r3, #0
800281e4:	aa000001 	bge	800281f0 <sys_pipe+0x34>
800281e8:	e3e03000 	mvn	r3, #0
800281ec:	ea000032 	b	800282bc <sys_pipe+0x100>
800281f0:	e24b2018 	sub	r2, fp, #24
800281f4:	e24b3014 	sub	r3, fp, #20
800281f8:	e1a01002 	mov	r1, r2
800281fc:	e1a00003 	mov	r0, r3
80028200:	ebfff2c0 	bl	80024d08 <pipealloc>
80028204:	e1a03000 	mov	r3, r0
80028208:	e3530000 	cmp	r3, #0
8002820c:	aa000001 	bge	80028218 <sys_pipe+0x5c>
80028210:	e3e03000 	mvn	r3, #0
80028214:	ea000028 	b	800282bc <sys_pipe+0x100>
80028218:	e3e03000 	mvn	r3, #0
8002821c:	e50b3008 	str	r3, [fp, #-8]
80028220:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028224:	e1a00003 	mov	r0, r3
80028228:	ebfffbab 	bl	800270dc <fdalloc>
8002822c:	e50b0008 	str	r0, [fp, #-8]
80028230:	e51b3008 	ldr	r3, [fp, #-8]
80028234:	e3530000 	cmp	r3, #0
80028238:	ba000006 	blt	80028258 <sys_pipe+0x9c>
8002823c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028240:	e1a00003 	mov	r0, r3
80028244:	ebfffba4 	bl	800270dc <fdalloc>
80028248:	e50b000c 	str	r0, [fp, #-12]
8002824c:	e51b300c 	ldr	r3, [fp, #-12]
80028250:	e3530000 	cmp	r3, #0
80028254:	aa000010 	bge	8002829c <sys_pipe+0xe0>
80028258:	e51b3008 	ldr	r3, [fp, #-8]
8002825c:	e3530000 	cmp	r3, #0
80028260:	ba000005 	blt	8002827c <sys_pipe+0xc0>
80028264:	e59f305c 	ldr	r3, [pc, #92]	@ 800282c8 <sys_pipe+0x10c>
80028268:	e5933000 	ldr	r3, [r3]
8002826c:	e51b2008 	ldr	r2, [fp, #-8]
80028270:	e282200a 	add	r2, r2, #10
80028274:	e3a01000 	mov	r1, #0
80028278:	e7831102 	str	r1, [r3, r2, lsl #2]
8002827c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028280:	e1a00003 	mov	r0, r3
80028284:	ebffe915 	bl	800226e0 <fileclose>
80028288:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002828c:	e1a00003 	mov	r0, r3
80028290:	ebffe912 	bl	800226e0 <fileclose>
80028294:	e3e03000 	mvn	r3, #0
80028298:	ea000007 	b	800282bc <sys_pipe+0x100>
8002829c:	e51b3010 	ldr	r3, [fp, #-16]
800282a0:	e51b2008 	ldr	r2, [fp, #-8]
800282a4:	e5832000 	str	r2, [r3]
800282a8:	e51b3010 	ldr	r3, [fp, #-16]
800282ac:	e2833004 	add	r3, r3, #4
800282b0:	e51b200c 	ldr	r2, [fp, #-12]
800282b4:	e5832000 	str	r2, [r3]
800282b8:	e3a03000 	mov	r3, #0
800282bc:	e1a00003 	mov	r0, r3
800282c0:	e24bd004 	sub	sp, fp, #4
800282c4:	e8bd8800 	pop	{fp, pc}
800282c8:	800b1ed0 	.word	0x800b1ed0

800282cc <sys_print_pt>:
800282cc:	e92d4800 	push	{fp, lr}
800282d0:	e28db004 	add	fp, sp, #4
800282d4:	e24dd028 	sub	sp, sp, #40	@ 0x28
800282d8:	e59f3210 	ldr	r3, [pc, #528]	@ 800284f0 <sys_print_pt+0x224>
800282dc:	e5933000 	ldr	r3, [r3]
800282e0:	e50b300c 	str	r3, [fp, #-12]
800282e4:	e51b300c 	ldr	r3, [fp, #-12]
800282e8:	e5933004 	ldr	r3, [r3, #4]
800282ec:	e50b3010 	str	r3, [fp, #-16]
800282f0:	e51b300c 	ldr	r3, [fp, #-12]
800282f4:	e5933010 	ldr	r3, [r3, #16]
800282f8:	e1a01003 	mov	r1, r3
800282fc:	e59f01f0 	ldr	r0, [pc, #496]	@ 800284f4 <sys_print_pt+0x228>
80028300:	ebffe563 	bl	80021894 <cprintf>
80028304:	e59f01ec 	ldr	r0, [pc, #492]	@ 800284f8 <sys_print_pt+0x22c>
80028308:	ebffe561 	bl	80021894 <cprintf>
8002830c:	e3a03000 	mov	r3, #0
80028310:	e50b3008 	str	r3, [fp, #-8]
80028314:	ea00002c 	b	800283cc <sys_print_pt+0x100>
80028318:	e51b3008 	ldr	r3, [fp, #-8]
8002831c:	e1a03603 	lsl	r3, r3, #12
80028320:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028324:	e51b300c 	ldr	r3, [fp, #-12]
80028328:	e5933000 	ldr	r3, [r3]
8002832c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028330:	e1520003 	cmp	r2, r3
80028334:	2a000028 	bcs	800283dc <sys_print_pt+0x110>
80028338:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002833c:	e3a02000 	mov	r2, #0
80028340:	e1a01003 	mov	r1, r3
80028344:	e51b0010 	ldr	r0, [fp, #-16]
80028348:	eb00057f 	bl	8002994c <walkpgdir>
8002834c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028350:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028354:	e3530000 	cmp	r3, #0
80028358:	0a000015 	beq	800283b4 <sys_print_pt+0xe8>
8002835c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028360:	e5933000 	ldr	r3, [r3]
80028364:	e2033003 	and	r3, r3, #3
80028368:	e3530000 	cmp	r3, #0
8002836c:	0a000010 	beq	800283b4 <sys_print_pt+0xe8>
80028370:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028374:	e5931000 	ldr	r1, [r3]
80028378:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002837c:	e5933000 	ldr	r3, [r3]
80028380:	e3c32eff 	bic	r2, r3, #4080	@ 0xff0
80028384:	e3c2200f 	bic	r2, r2, #15
80028388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002838c:	e5933000 	ldr	r3, [r3]
80028390:	e1a03a03 	lsl	r3, r3, #20
80028394:	e1a03a23 	lsr	r3, r3, #20
80028398:	e58d3000 	str	r3, [sp]
8002839c:	e1a03002 	mov	r3, r2
800283a0:	e1a02001 	mov	r2, r1
800283a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800283a8:	e59f014c 	ldr	r0, [pc, #332]	@ 800284fc <sys_print_pt+0x230>
800283ac:	ebffe538 	bl	80021894 <cprintf>
800283b0:	ea000002 	b	800283c0 <sys_print_pt+0xf4>
800283b4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800283b8:	e59f0140 	ldr	r0, [pc, #320]	@ 80028500 <sys_print_pt+0x234>
800283bc:	ebffe534 	bl	80021894 <cprintf>
800283c0:	e51b3008 	ldr	r3, [fp, #-8]
800283c4:	e2833001 	add	r3, r3, #1
800283c8:	e50b3008 	str	r3, [fp, #-8]
800283cc:	e51b3008 	ldr	r3, [fp, #-8]
800283d0:	e3530009 	cmp	r3, #9
800283d4:	daffffcf 	ble	80028318 <sys_print_pt+0x4c>
800283d8:	ea000000 	b	800283e0 <sys_print_pt+0x114>
800283dc:	e1a00000 	nop			@ (mov r0, r0)
800283e0:	e59f011c 	ldr	r0, [pc, #284]	@ 80028504 <sys_print_pt+0x238>
800283e4:	ebffe52a 	bl	80021894 <cprintf>
800283e8:	e51b300c 	ldr	r3, [fp, #-12]
800283ec:	e5933000 	ldr	r3, [r3]
800283f0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800283f4:	e3a0300a 	mov	r3, #10
800283f8:	e50b3008 	str	r3, [fp, #-8]
800283fc:	ea000034 	b	800284d4 <sys_print_pt+0x208>
80028400:	e51b3008 	ldr	r3, [fp, #-8]
80028404:	e1a03603 	lsl	r3, r3, #12
80028408:	e1a02003 	mov	r2, r3
8002840c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028410:	e0433002 	sub	r3, r3, r2
80028414:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80028418:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002841c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028420:	e1520003 	cmp	r2, r3
80028424:	2a000026 	bcs	800284c4 <sys_print_pt+0x1f8>
80028428:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002842c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028430:	e3c3300f 	bic	r3, r3, #15
80028434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80028438:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002843c:	e3a02000 	mov	r2, #0
80028440:	e1a01003 	mov	r1, r3
80028444:	e51b0010 	ldr	r0, [fp, #-16]
80028448:	eb00053f 	bl	8002994c <walkpgdir>
8002844c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028450:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028454:	e3530000 	cmp	r3, #0
80028458:	0a000015 	beq	800284b4 <sys_print_pt+0x1e8>
8002845c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028460:	e5933000 	ldr	r3, [r3]
80028464:	e2033003 	and	r3, r3, #3
80028468:	e3530000 	cmp	r3, #0
8002846c:	0a000010 	beq	800284b4 <sys_print_pt+0x1e8>
80028470:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028474:	e5931000 	ldr	r1, [r3]
80028478:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002847c:	e5933000 	ldr	r3, [r3]
80028480:	e3c32eff 	bic	r2, r3, #4080	@ 0xff0
80028484:	e3c2200f 	bic	r2, r2, #15
80028488:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002848c:	e5933000 	ldr	r3, [r3]
80028490:	e1a03a03 	lsl	r3, r3, #20
80028494:	e1a03a23 	lsr	r3, r3, #20
80028498:	e58d3000 	str	r3, [sp]
8002849c:	e1a03002 	mov	r3, r2
800284a0:	e1a02001 	mov	r2, r1
800284a4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
800284a8:	e59f004c 	ldr	r0, [pc, #76]	@ 800284fc <sys_print_pt+0x230>
800284ac:	ebffe4f8 	bl	80021894 <cprintf>
800284b0:	ea000004 	b	800284c8 <sys_print_pt+0x1fc>
800284b4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
800284b8:	e59f0040 	ldr	r0, [pc, #64]	@ 80028500 <sys_print_pt+0x234>
800284bc:	ebffe4f4 	bl	80021894 <cprintf>
800284c0:	ea000000 	b	800284c8 <sys_print_pt+0x1fc>
800284c4:	e1a00000 	nop			@ (mov r0, r0)
800284c8:	e51b3008 	ldr	r3, [fp, #-8]
800284cc:	e2433001 	sub	r3, r3, #1
800284d0:	e50b3008 	str	r3, [fp, #-8]
800284d4:	e51b3008 	ldr	r3, [fp, #-8]
800284d8:	e3530000 	cmp	r3, #0
800284dc:	caffffc7 	bgt	80028400 <sys_print_pt+0x134>
800284e0:	e3a03000 	mov	r3, #0
800284e4:	e1a00003 	mov	r0, r3
800284e8:	e24bd004 	sub	sp, fp, #4
800284ec:	e8bd8800 	pop	{fp, pc}
800284f0:	800b1ed0 	.word	0x800b1ed0
800284f4:	8002b188 	.word	0x8002b188
800284f8:	8002b1a4 	.word	0x8002b1a4
800284fc:	8002b1bc 	.word	0x8002b1bc
80028500:	8002b1e0 	.word	0x8002b1e0
80028504:	8002b1f8 	.word	0x8002b1f8

80028508 <sys_fork>:
80028508:	e92d4800 	push	{fp, lr}
8002850c:	e28db004 	add	fp, sp, #4
80028510:	ebfff4fb 	bl	80025904 <fork>
80028514:	e1a03000 	mov	r3, r0
80028518:	e1a00003 	mov	r0, r3
8002851c:	e8bd8800 	pop	{fp, pc}

80028520 <sys_exit>:
80028520:	e92d4800 	push	{fp, lr}
80028524:	e28db004 	add	fp, sp, #4
80028528:	ebfff569 	bl	80025ad4 <exit>
8002852c:	e3a03000 	mov	r3, #0
80028530:	e1a00003 	mov	r0, r3
80028534:	e8bd8800 	pop	{fp, pc}

80028538 <sys_wait>:
80028538:	e92d4800 	push	{fp, lr}
8002853c:	e28db004 	add	fp, sp, #4
80028540:	ebfff5c5 	bl	80025c5c <wait>
80028544:	e1a03000 	mov	r3, r0
80028548:	e1a00003 	mov	r0, r3
8002854c:	e8bd8800 	pop	{fp, pc}

80028550 <sys_kill>:
80028550:	e92d4800 	push	{fp, lr}
80028554:	e28db004 	add	fp, sp, #4
80028558:	e24dd008 	sub	sp, sp, #8
8002855c:	e24b3008 	sub	r3, fp, #8
80028560:	e1a01003 	mov	r1, r3
80028564:	e3a00000 	mov	r0, #0
80028568:	ebfffa15 	bl	80026dc4 <argint>
8002856c:	e1a03000 	mov	r3, r0
80028570:	e3530000 	cmp	r3, #0
80028574:	aa000001 	bge	80028580 <sys_kill+0x30>
80028578:	e3e03000 	mvn	r3, #0
8002857c:	ea000003 	b	80028590 <sys_kill+0x40>
80028580:	e51b3008 	ldr	r3, [fp, #-8]
80028584:	e1a00003 	mov	r0, r3
80028588:	ebfff73c 	bl	80026280 <kill>
8002858c:	e1a03000 	mov	r3, r0
80028590:	e1a00003 	mov	r0, r3
80028594:	e24bd004 	sub	sp, fp, #4
80028598:	e8bd8800 	pop	{fp, pc}

8002859c <sys_getpid>:
8002859c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800285a0:	e28db000 	add	fp, sp, #0
800285a4:	e59f3014 	ldr	r3, [pc, #20]	@ 800285c0 <sys_getpid+0x24>
800285a8:	e5933000 	ldr	r3, [r3]
800285ac:	e5933010 	ldr	r3, [r3, #16]
800285b0:	e1a00003 	mov	r0, r3
800285b4:	e28bd000 	add	sp, fp, #0
800285b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800285bc:	e12fff1e 	bx	lr
800285c0:	800b1ed0 	.word	0x800b1ed0

800285c4 <sys_sbrk>:
800285c4:	e92d4800 	push	{fp, lr}
800285c8:	e28db004 	add	fp, sp, #4
800285cc:	e24dd008 	sub	sp, sp, #8
800285d0:	e24b300c 	sub	r3, fp, #12
800285d4:	e1a01003 	mov	r1, r3
800285d8:	e3a00000 	mov	r0, #0
800285dc:	ebfff9f8 	bl	80026dc4 <argint>
800285e0:	e1a03000 	mov	r3, r0
800285e4:	e3530000 	cmp	r3, #0
800285e8:	aa000001 	bge	800285f4 <sys_sbrk+0x30>
800285ec:	e3e03000 	mvn	r3, #0
800285f0:	ea00000c 	b	80028628 <sys_sbrk+0x64>
800285f4:	e59f3038 	ldr	r3, [pc, #56]	@ 80028634 <sys_sbrk+0x70>
800285f8:	e5933000 	ldr	r3, [r3]
800285fc:	e5933000 	ldr	r3, [r3]
80028600:	e50b3008 	str	r3, [fp, #-8]
80028604:	e51b300c 	ldr	r3, [fp, #-12]
80028608:	e1a00003 	mov	r0, r3
8002860c:	ebfff481 	bl	80025818 <growproc>
80028610:	e1a03000 	mov	r3, r0
80028614:	e3530000 	cmp	r3, #0
80028618:	aa000001 	bge	80028624 <sys_sbrk+0x60>
8002861c:	e3e03000 	mvn	r3, #0
80028620:	ea000000 	b	80028628 <sys_sbrk+0x64>
80028624:	e51b3008 	ldr	r3, [fp, #-8]
80028628:	e1a00003 	mov	r0, r3
8002862c:	e24bd004 	sub	sp, fp, #4
80028630:	e8bd8800 	pop	{fp, pc}
80028634:	800b1ed0 	.word	0x800b1ed0

80028638 <sys_sleep>:
80028638:	e92d4800 	push	{fp, lr}
8002863c:	e28db004 	add	fp, sp, #4
80028640:	e24dd008 	sub	sp, sp, #8
80028644:	e24b300c 	sub	r3, fp, #12
80028648:	e1a01003 	mov	r1, r3
8002864c:	e3a00000 	mov	r0, #0
80028650:	ebfff9db 	bl	80026dc4 <argint>
80028654:	e1a03000 	mov	r3, r0
80028658:	e3530000 	cmp	r3, #0
8002865c:	aa000001 	bge	80028668 <sys_sleep+0x30>
80028660:	e3e03000 	mvn	r3, #0
80028664:	ea00002a 	b	80028714 <sys_sleep+0xdc>
80028668:	e59f00b0 	ldr	r0, [pc, #176]	@ 80028720 <sys_sleep+0xe8>
8002866c:	ebfff963 	bl	80026c00 <acquire>
80028670:	e59f30ac 	ldr	r3, [pc, #172]	@ 80028724 <sys_sleep+0xec>
80028674:	e5933000 	ldr	r3, [r3]
80028678:	e50b3008 	str	r3, [fp, #-8]
8002867c:	e59f00a4 	ldr	r0, [pc, #164]	@ 80028728 <sys_sleep+0xf0>
80028680:	ebfff95e 	bl	80026c00 <acquire>
80028684:	e59f30a0 	ldr	r3, [pc, #160]	@ 8002872c <sys_sleep+0xf4>
80028688:	e5933000 	ldr	r3, [r3]
8002868c:	e51b200c 	ldr	r2, [fp, #-12]
80028690:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80028694:	e51b300c 	ldr	r3, [fp, #-12]
80028698:	e1a02003 	mov	r2, r3
8002869c:	e51b3008 	ldr	r3, [fp, #-8]
800286a0:	e0822003 	add	r2, r2, r3
800286a4:	e59f3080 	ldr	r3, [pc, #128]	@ 8002872c <sys_sleep+0xf4>
800286a8:	e5933000 	ldr	r3, [r3]
800286ac:	e5832090 	str	r2, [r3, #144]	@ 0x90
800286b0:	e59f0070 	ldr	r0, [pc, #112]	@ 80028728 <sys_sleep+0xf0>
800286b4:	ebfff95c 	bl	80026c2c <release>
800286b8:	ea00000b 	b	800286ec <sys_sleep+0xb4>
800286bc:	e59f3068 	ldr	r3, [pc, #104]	@ 8002872c <sys_sleep+0xf4>
800286c0:	e5933000 	ldr	r3, [r3]
800286c4:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800286c8:	e3530000 	cmp	r3, #0
800286cc:	0a000003 	beq	800286e0 <sys_sleep+0xa8>
800286d0:	e59f0048 	ldr	r0, [pc, #72]	@ 80028720 <sys_sleep+0xe8>
800286d4:	ebfff954 	bl	80026c2c <release>
800286d8:	e3e03000 	mvn	r3, #0
800286dc:	ea00000c 	b	80028714 <sys_sleep+0xdc>
800286e0:	e59f1038 	ldr	r1, [pc, #56]	@ 80028720 <sys_sleep+0xe8>
800286e4:	e59f0038 	ldr	r0, [pc, #56]	@ 80028724 <sys_sleep+0xec>
800286e8:	ebfff662 	bl	80026078 <sleep>
800286ec:	e59f3030 	ldr	r3, [pc, #48]	@ 80028724 <sys_sleep+0xec>
800286f0:	e5932000 	ldr	r2, [r3]
800286f4:	e51b3008 	ldr	r3, [fp, #-8]
800286f8:	e0423003 	sub	r3, r2, r3
800286fc:	e51b200c 	ldr	r2, [fp, #-12]
80028700:	e1530002 	cmp	r3, r2
80028704:	3affffec 	bcc	800286bc <sys_sleep+0x84>
80028708:	e59f0010 	ldr	r0, [pc, #16]	@ 80028720 <sys_sleep+0xe8>
8002870c:	ebfff946 	bl	80026c2c <release>
80028710:	e3a03000 	mov	r3, #0
80028714:	e1a00003 	mov	r0, r3
80028718:	e24bd004 	sub	sp, fp, #4
8002871c:	e8bd8800 	pop	{fp, pc}
80028720:	800b1fd4 	.word	0x800b1fd4
80028724:	800b2008 	.word	0x800b2008
80028728:	800af598 	.word	0x800af598
8002872c:	800b1ed0 	.word	0x800b1ed0

80028730 <sys_proclist>:
80028730:	e92d4800 	push	{fp, lr}
80028734:	e28db004 	add	fp, sp, #4
80028738:	e24dd008 	sub	sp, sp, #8
8002873c:	e24b3008 	sub	r3, fp, #8
80028740:	e1a01003 	mov	r1, r3
80028744:	e3a00000 	mov	r0, #0
80028748:	ebfff99d 	bl	80026dc4 <argint>
8002874c:	e1a03000 	mov	r3, r0
80028750:	e3530000 	cmp	r3, #0
80028754:	ba000009 	blt	80028780 <sys_proclist+0x50>
80028758:	e51b3008 	ldr	r3, [fp, #-8]
8002875c:	e1a03283 	lsl	r3, r3, #5
80028760:	e1a02003 	mov	r2, r3
80028764:	e24b300c 	sub	r3, fp, #12
80028768:	e1a01003 	mov	r1, r3
8002876c:	e3a00001 	mov	r0, #1
80028770:	ebfff9ae 	bl	80026e30 <argptr>
80028774:	e1a03000 	mov	r3, r0
80028778:	e3530000 	cmp	r3, #0
8002877c:	aa000001 	bge	80028788 <sys_proclist+0x58>
80028780:	e3e03000 	mvn	r3, #0
80028784:	ea000005 	b	800287a0 <sys_proclist+0x70>
80028788:	e51b3008 	ldr	r3, [fp, #-8]
8002878c:	e51b200c 	ldr	r2, [fp, #-12]
80028790:	e1a01002 	mov	r1, r2
80028794:	e1a00003 	mov	r0, r3
80028798:	ebfff334 	bl	80025470 <proclist>
8002879c:	e1a03000 	mov	r3, r0
800287a0:	e1a00003 	mov	r0, r3
800287a4:	e24bd004 	sub	sp, fp, #4
800287a8:	e8bd8800 	pop	{fp, pc}

800287ac <sys_uptime>:
800287ac:	e92d4800 	push	{fp, lr}
800287b0:	e28db004 	add	fp, sp, #4
800287b4:	e24dd008 	sub	sp, sp, #8
800287b8:	e59f0024 	ldr	r0, [pc, #36]	@ 800287e4 <sys_uptime+0x38>
800287bc:	ebfff90f 	bl	80026c00 <acquire>
800287c0:	e59f3020 	ldr	r3, [pc, #32]	@ 800287e8 <sys_uptime+0x3c>
800287c4:	e5933000 	ldr	r3, [r3]
800287c8:	e50b3008 	str	r3, [fp, #-8]
800287cc:	e59f0010 	ldr	r0, [pc, #16]	@ 800287e4 <sys_uptime+0x38>
800287d0:	ebfff915 	bl	80026c2c <release>
800287d4:	e51b3008 	ldr	r3, [fp, #-8]
800287d8:	e1a00003 	mov	r0, r3
800287dc:	e24bd004 	sub	sp, fp, #4
800287e0:	e8bd8800 	pop	{fp, pc}
800287e4:	800b1fd4 	.word	0x800b1fd4
800287e8:	800b2008 	.word	0x800b2008

800287ec <sys_thread_create>:
800287ec:	e92d4800 	push	{fp, lr}
800287f0:	e28db004 	add	fp, sp, #4
800287f4:	e24dd010 	sub	sp, sp, #16
800287f8:	e24b3008 	sub	r3, fp, #8
800287fc:	e1a01003 	mov	r1, r3
80028800:	e3a00000 	mov	r0, #0
80028804:	ebfff96e 	bl	80026dc4 <argint>
80028808:	e1a03000 	mov	r3, r0
8002880c:	e3530000 	cmp	r3, #0
80028810:	aa000001 	bge	8002881c <sys_thread_create+0x30>
80028814:	e3e03000 	mvn	r3, #0
80028818:	ea000019 	b	80028884 <sys_thread_create+0x98>
8002881c:	e24b300c 	sub	r3, fp, #12
80028820:	e1a01003 	mov	r1, r3
80028824:	e3a00001 	mov	r0, #1
80028828:	ebfff965 	bl	80026dc4 <argint>
8002882c:	e1a03000 	mov	r3, r0
80028830:	e3530000 	cmp	r3, #0
80028834:	aa000001 	bge	80028840 <sys_thread_create+0x54>
80028838:	e3e03000 	mvn	r3, #0
8002883c:	ea000010 	b	80028884 <sys_thread_create+0x98>
80028840:	e24b3010 	sub	r3, fp, #16
80028844:	e1a01003 	mov	r1, r3
80028848:	e3a00002 	mov	r0, #2
8002884c:	ebfff95c 	bl	80026dc4 <argint>
80028850:	e1a03000 	mov	r3, r0
80028854:	e3530000 	cmp	r3, #0
80028858:	aa000001 	bge	80028864 <sys_thread_create+0x78>
8002885c:	e3e03000 	mvn	r3, #0
80028860:	ea000007 	b	80028884 <sys_thread_create+0x98>
80028864:	e51b3008 	ldr	r3, [fp, #-8]
80028868:	e1a00003 	mov	r0, r3
8002886c:	e51b300c 	ldr	r3, [fp, #-12]
80028870:	e1a01003 	mov	r1, r3
80028874:	e51b3010 	ldr	r3, [fp, #-16]
80028878:	e1a02003 	mov	r2, r3
8002887c:	ebfff766 	bl	8002661c <thread_create>
80028880:	e1a03000 	mov	r3, r0
80028884:	e1a00003 	mov	r0, r3
80028888:	e24bd004 	sub	sp, fp, #4
8002888c:	e8bd8800 	pop	{fp, pc}

80028890 <sys_thread_exit>:
80028890:	e92d4800 	push	{fp, lr}
80028894:	e28db004 	add	fp, sp, #4
80028898:	ebfff819 	bl	80026904 <thread_exit>
8002889c:	e3a03000 	mov	r3, #0
800288a0:	e1a00003 	mov	r0, r3
800288a4:	e8bd8800 	pop	{fp, pc}

800288a8 <sys_thread_join>:
800288a8:	e92d4800 	push	{fp, lr}
800288ac:	e28db004 	add	fp, sp, #4
800288b0:	e24dd008 	sub	sp, sp, #8
800288b4:	e24b3008 	sub	r3, fp, #8
800288b8:	e1a01003 	mov	r1, r3
800288bc:	e3a00000 	mov	r0, #0
800288c0:	ebfff93f 	bl	80026dc4 <argint>
800288c4:	e1a03000 	mov	r3, r0
800288c8:	e3530000 	cmp	r3, #0
800288cc:	aa000001 	bge	800288d8 <sys_thread_join+0x30>
800288d0:	e3e03000 	mvn	r3, #0
800288d4:	ea000003 	b	800288e8 <sys_thread_join+0x40>
800288d8:	e51b3008 	ldr	r3, [fp, #-8]
800288dc:	e1a00003 	mov	r0, r3
800288e0:	ebfff849 	bl	80026a0c <thread_join>
800288e4:	e1a03000 	mov	r3, r0
800288e8:	e1a00003 	mov	r0, r3
800288ec:	e24bd004 	sub	sp, fp, #4
800288f0:	e8bd8800 	pop	{fp, pc}

800288f4 <sys_barrier_init>:
800288f4:	e92d4800 	push	{fp, lr}
800288f8:	e28db004 	add	fp, sp, #4
800288fc:	e24dd008 	sub	sp, sp, #8
80028900:	e24b3008 	sub	r3, fp, #8
80028904:	e1a01003 	mov	r1, r3
80028908:	e3a00000 	mov	r0, #0
8002890c:	ebfff92c 	bl	80026dc4 <argint>
80028910:	e1a03000 	mov	r3, r0
80028914:	e3530000 	cmp	r3, #0
80028918:	aa000001 	bge	80028924 <sys_barrier_init+0x30>
8002891c:	e3e03000 	mvn	r3, #0
80028920:	ea000003 	b	80028934 <sys_barrier_init+0x40>
80028924:	e51b3008 	ldr	r3, [fp, #-8]
80028928:	e1a00003 	mov	r0, r3
8002892c:	eb00068c 	bl	8002a364 <barrier_init>
80028930:	e1a03000 	mov	r3, r0
80028934:	e1a00003 	mov	r0, r3
80028938:	e24bd004 	sub	sp, fp, #4
8002893c:	e8bd8800 	pop	{fp, pc}

80028940 <sys_barrier_check>:
80028940:	e92d4800 	push	{fp, lr}
80028944:	e28db004 	add	fp, sp, #4
80028948:	eb00069e 	bl	8002a3c8 <barrier_check>
8002894c:	e1a03000 	mov	r3, r0
80028950:	e1a00003 	mov	r0, r3
80028954:	e8bd8800 	pop	{fp, pc}

80028958 <sys_waitpid>:
80028958:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002895c:	e28db000 	add	fp, sp, #0
80028960:	e3e03000 	mvn	r3, #0
80028964:	e1a00003 	mov	r0, r3
80028968:	e28bd000 	add	sp, fp, #0
8002896c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028970:	e12fff1e 	bx	lr

80028974 <sys_getChannel>:
80028974:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028978:	e28db000 	add	fp, sp, #0
8002897c:	e59f301c 	ldr	r3, [pc, #28]	@ 800289a0 <sys_getChannel+0x2c>
80028980:	e5933000 	ldr	r3, [r3]
80028984:	e2832001 	add	r2, r3, #1
80028988:	e59f1010 	ldr	r1, [pc, #16]	@ 800289a0 <sys_getChannel+0x2c>
8002898c:	e5812000 	str	r2, [r1]
80028990:	e1a00003 	mov	r0, r3
80028994:	e28bd000 	add	sp, fp, #0
80028998:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002899c:	e12fff1e 	bx	lr
800289a0:	8002c0e0 	.word	0x8002c0e0

800289a4 <sys_sleepChan>:
800289a4:	e92d4800 	push	{fp, lr}
800289a8:	e28db004 	add	fp, sp, #4
800289ac:	e24dd008 	sub	sp, sp, #8
800289b0:	e24b3008 	sub	r3, fp, #8
800289b4:	e1a01003 	mov	r1, r3
800289b8:	e3a00000 	mov	r0, #0
800289bc:	ebfff900 	bl	80026dc4 <argint>
800289c0:	e1a03000 	mov	r3, r0
800289c4:	e3530000 	cmp	r3, #0
800289c8:	aa000001 	bge	800289d4 <sys_sleepChan+0x30>
800289cc:	e3e03000 	mvn	r3, #0
800289d0:	ea000008 	b	800289f8 <sys_sleepChan+0x54>
800289d4:	e59f0028 	ldr	r0, [pc, #40]	@ 80028a04 <sys_sleepChan+0x60>
800289d8:	ebfff888 	bl	80026c00 <acquire>
800289dc:	e51b3008 	ldr	r3, [fp, #-8]
800289e0:	e59f101c 	ldr	r1, [pc, #28]	@ 80028a04 <sys_sleepChan+0x60>
800289e4:	e1a00003 	mov	r0, r3
800289e8:	ebfff5a2 	bl	80026078 <sleep>
800289ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80028a04 <sys_sleepChan+0x60>
800289f0:	ebfff88d 	bl	80026c2c <release>
800289f4:	e3a03000 	mov	r3, #0
800289f8:	e1a00003 	mov	r0, r3
800289fc:	e24bd004 	sub	sp, fp, #4
80028a00:	e8bd8800 	pop	{fp, pc}
80028a04:	800af598 	.word	0x800af598

80028a08 <sys_sigChan>:
80028a08:	e92d4800 	push	{fp, lr}
80028a0c:	e28db004 	add	fp, sp, #4
80028a10:	e24dd008 	sub	sp, sp, #8
80028a14:	e24b3008 	sub	r3, fp, #8
80028a18:	e1a01003 	mov	r1, r3
80028a1c:	e3a00000 	mov	r0, #0
80028a20:	ebfff8e7 	bl	80026dc4 <argint>
80028a24:	e1a03000 	mov	r3, r0
80028a28:	e3530000 	cmp	r3, #0
80028a2c:	aa000001 	bge	80028a38 <sys_sigChan+0x30>
80028a30:	e3e03000 	mvn	r3, #0
80028a34:	ea000003 	b	80028a48 <sys_sigChan+0x40>
80028a38:	e51b3008 	ldr	r3, [fp, #-8]
80028a3c:	e1a00003 	mov	r0, r3
80028a40:	ebfff600 	bl	80026248 <wakeup>
80028a44:	e3a03000 	mov	r3, #0
80028a48:	e1a00003 	mov	r0, r3
80028a4c:	e24bd004 	sub	sp, fp, #4
80028a50:	e8bd8800 	pop	{fp, pc}

80028a54 <sys_sigOneChan>:
80028a54:	e92d4800 	push	{fp, lr}
80028a58:	e28db004 	add	fp, sp, #4
80028a5c:	e24dd008 	sub	sp, sp, #8
80028a60:	e24b3008 	sub	r3, fp, #8
80028a64:	e1a01003 	mov	r1, r3
80028a68:	e3a00000 	mov	r0, #0
80028a6c:	ebfff8d4 	bl	80026dc4 <argint>
80028a70:	e1a03000 	mov	r3, r0
80028a74:	e3530000 	cmp	r3, #0
80028a78:	aa000001 	bge	80028a84 <sys_sigOneChan+0x30>
80028a7c:	e3e03000 	mvn	r3, #0
80028a80:	ea000003 	b	80028a94 <sys_sigOneChan+0x40>
80028a84:	e51b3008 	ldr	r3, [fp, #-8]
80028a88:	e1a00003 	mov	r0, r3
80028a8c:	ebfff5ed 	bl	80026248 <wakeup>
80028a90:	e3a03000 	mov	r3, #0
80028a94:	e1a00003 	mov	r0, r3
80028a98:	e24bd004 	sub	sp, fp, #4
80028a9c:	e8bd8800 	pop	{fp, pc}

80028aa0 <sys_settickets>:
80028aa0:	e92d4800 	push	{fp, lr}
80028aa4:	e28db004 	add	fp, sp, #4
80028aa8:	e24dd010 	sub	sp, sp, #16
80028aac:	e24b300c 	sub	r3, fp, #12
80028ab0:	e1a01003 	mov	r1, r3
80028ab4:	e3a00000 	mov	r0, #0
80028ab8:	ebfff8c1 	bl	80026dc4 <argint>
80028abc:	e1a03000 	mov	r3, r0
80028ac0:	e3530000 	cmp	r3, #0
80028ac4:	ba000006 	blt	80028ae4 <sys_settickets+0x44>
80028ac8:	e24b3010 	sub	r3, fp, #16
80028acc:	e1a01003 	mov	r1, r3
80028ad0:	e3a00001 	mov	r0, #1
80028ad4:	ebfff8ba 	bl	80026dc4 <argint>
80028ad8:	e1a03000 	mov	r3, r0
80028adc:	e3530000 	cmp	r3, #0
80028ae0:	aa000001 	bge	80028aec <sys_settickets+0x4c>
80028ae4:	e3e03000 	mvn	r3, #0
80028ae8:	ea00001f 	b	80028b6c <sys_settickets+0xcc>
80028aec:	e51b3010 	ldr	r3, [fp, #-16]
80028af0:	e3530000 	cmp	r3, #0
80028af4:	ca000001 	bgt	80028b00 <sys_settickets+0x60>
80028af8:	e3e03000 	mvn	r3, #0
80028afc:	ea00001a 	b	80028b6c <sys_settickets+0xcc>
80028b00:	e59f0070 	ldr	r0, [pc, #112]	@ 80028b78 <sys_settickets+0xd8>
80028b04:	ebfff83d 	bl	80026c00 <acquire>
80028b08:	e59f306c 	ldr	r3, [pc, #108]	@ 80028b7c <sys_settickets+0xdc>
80028b0c:	e50b3008 	str	r3, [fp, #-8]
80028b10:	ea00000e 	b	80028b50 <sys_settickets+0xb0>
80028b14:	e51b3008 	ldr	r3, [fp, #-8]
80028b18:	e5932010 	ldr	r2, [r3, #16]
80028b1c:	e51b300c 	ldr	r3, [fp, #-12]
80028b20:	e1520003 	cmp	r2, r3
80028b24:	1a000006 	bne	80028b44 <sys_settickets+0xa4>
80028b28:	e51b2010 	ldr	r2, [fp, #-16]
80028b2c:	e51b3008 	ldr	r3, [fp, #-8]
80028b30:	e5832080 	str	r2, [r3, #128]	@ 0x80
80028b34:	e59f003c 	ldr	r0, [pc, #60]	@ 80028b78 <sys_settickets+0xd8>
80028b38:	ebfff83b 	bl	80026c2c <release>
80028b3c:	e3a03000 	mov	r3, #0
80028b40:	ea000009 	b	80028b6c <sys_settickets+0xcc>
80028b44:	e51b3008 	ldr	r3, [fp, #-8]
80028b48:	e28330a4 	add	r3, r3, #164	@ 0xa4
80028b4c:	e50b3008 	str	r3, [fp, #-8]
80028b50:	e51b3008 	ldr	r3, [fp, #-8]
80028b54:	e59f2024 	ldr	r2, [pc, #36]	@ 80028b80 <sys_settickets+0xe0>
80028b58:	e1530002 	cmp	r3, r2
80028b5c:	3affffec 	bcc	80028b14 <sys_settickets+0x74>
80028b60:	e59f0010 	ldr	r0, [pc, #16]	@ 80028b78 <sys_settickets+0xd8>
80028b64:	ebfff830 	bl	80026c2c <release>
80028b68:	e3e03000 	mvn	r3, #0
80028b6c:	e1a00003 	mov	r0, r3
80028b70:	e24bd004 	sub	sp, fp, #4
80028b74:	e8bd8800 	pop	{fp, pc}
80028b78:	800af598 	.word	0x800af598
80028b7c:	800af5cc 	.word	0x800af5cc
80028b80:	800b1ecc 	.word	0x800b1ecc

80028b84 <sys_srand>:
80028b84:	e92d4800 	push	{fp, lr}
80028b88:	e28db004 	add	fp, sp, #4
80028b8c:	e24dd008 	sub	sp, sp, #8
80028b90:	e24b3008 	sub	r3, fp, #8
80028b94:	e1a01003 	mov	r1, r3
80028b98:	e3a00000 	mov	r0, #0
80028b9c:	ebfff888 	bl	80026dc4 <argint>
80028ba0:	e1a03000 	mov	r3, r0
80028ba4:	e3530000 	cmp	r3, #0
80028ba8:	aa000001 	bge	80028bb4 <sys_srand+0x30>
80028bac:	e3e03000 	mvn	r3, #0
80028bb0:	ea000004 	b	80028bc8 <sys_srand+0x44>
80028bb4:	e51b3008 	ldr	r3, [fp, #-8]
80028bb8:	e1a02003 	mov	r2, r3
80028bbc:	e59f3010 	ldr	r3, [pc, #16]	@ 80028bd4 <sys_srand+0x50>
80028bc0:	e5832000 	str	r2, [r3]
80028bc4:	e3a03000 	mov	r3, #0
80028bc8:	e1a00003 	mov	r0, r3
80028bcc:	e24bd004 	sub	sp, fp, #4
80028bd0:	e8bd8800 	pop	{fp, pc}
80028bd4:	800af594 	.word	0x800af594

80028bd8 <sys_getpinfo>:
80028bd8:	e92d4800 	push	{fp, lr}
80028bdc:	e28db004 	add	fp, sp, #4
80028be0:	e24dd010 	sub	sp, sp, #16
80028be4:	e24b3010 	sub	r3, fp, #16
80028be8:	e3a02c05 	mov	r2, #1280	@ 0x500
80028bec:	e1a01003 	mov	r1, r3
80028bf0:	e3a00000 	mov	r0, #0
80028bf4:	ebfff88d 	bl	80026e30 <argptr>
80028bf8:	e1a03000 	mov	r3, r0
80028bfc:	e3530000 	cmp	r3, #0
80028c00:	aa000001 	bge	80028c0c <sys_getpinfo+0x34>
80028c04:	e3e03000 	mvn	r3, #0
80028c08:	ea000035 	b	80028ce4 <sys_getpinfo+0x10c>
80028c0c:	e59f00dc 	ldr	r0, [pc, #220]	@ 80028cf0 <sys_getpinfo+0x118>
80028c10:	ebfff7fa 	bl	80026c00 <acquire>
80028c14:	e3a03000 	mov	r3, #0
80028c18:	e50b300c 	str	r3, [fp, #-12]
80028c1c:	e59f30d0 	ldr	r3, [pc, #208]	@ 80028cf4 <sys_getpinfo+0x11c>
80028c20:	e50b3008 	str	r3, [fp, #-8]
80028c24:	ea000027 	b	80028cc8 <sys_getpinfo+0xf0>
80028c28:	e51b3008 	ldr	r3, [fp, #-8]
80028c2c:	e5d3300c 	ldrb	r3, [r3, #12]
80028c30:	e3530000 	cmp	r3, #0
80028c34:	13a03001 	movne	r3, #1
80028c38:	03a03000 	moveq	r3, #0
80028c3c:	e6ef2073 	uxtb	r2, r3
80028c40:	e51b3010 	ldr	r3, [fp, #-16]
80028c44:	e1a01002 	mov	r1, r2
80028c48:	e51b200c 	ldr	r2, [fp, #-12]
80028c4c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028c50:	e51b3010 	ldr	r3, [fp, #-16]
80028c54:	e51b2008 	ldr	r2, [fp, #-8]
80028c58:	e5921010 	ldr	r1, [r2, #16]
80028c5c:	e51b200c 	ldr	r2, [fp, #-12]
80028c60:	e2822040 	add	r2, r2, #64	@ 0x40
80028c64:	e7831102 	str	r1, [r3, r2, lsl #2]
80028c68:	e51b3010 	ldr	r3, [fp, #-16]
80028c6c:	e51b2008 	ldr	r2, [fp, #-8]
80028c70:	e5921080 	ldr	r1, [r2, #128]	@ 0x80
80028c74:	e51b200c 	ldr	r2, [fp, #-12]
80028c78:	e2822080 	add	r2, r2, #128	@ 0x80
80028c7c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028c80:	e51b3010 	ldr	r3, [fp, #-16]
80028c84:	e51b2008 	ldr	r2, [fp, #-8]
80028c88:	e5921088 	ldr	r1, [r2, #136]	@ 0x88
80028c8c:	e51b200c 	ldr	r2, [fp, #-12]
80028c90:	e28220c0 	add	r2, r2, #192	@ 0xc0
80028c94:	e7831102 	str	r1, [r3, r2, lsl #2]
80028c98:	e51b3010 	ldr	r3, [fp, #-16]
80028c9c:	e51b2008 	ldr	r2, [fp, #-8]
80028ca0:	e5921084 	ldr	r1, [r2, #132]	@ 0x84
80028ca4:	e51b200c 	ldr	r2, [fp, #-12]
80028ca8:	e2822c01 	add	r2, r2, #256	@ 0x100
80028cac:	e7831102 	str	r1, [r3, r2, lsl #2]
80028cb0:	e51b3008 	ldr	r3, [fp, #-8]
80028cb4:	e28330a4 	add	r3, r3, #164	@ 0xa4
80028cb8:	e50b3008 	str	r3, [fp, #-8]
80028cbc:	e51b300c 	ldr	r3, [fp, #-12]
80028cc0:	e2833001 	add	r3, r3, #1
80028cc4:	e50b300c 	str	r3, [fp, #-12]
80028cc8:	e51b3008 	ldr	r3, [fp, #-8]
80028ccc:	e59f2024 	ldr	r2, [pc, #36]	@ 80028cf8 <sys_getpinfo+0x120>
80028cd0:	e1530002 	cmp	r3, r2
80028cd4:	3affffd3 	bcc	80028c28 <sys_getpinfo+0x50>
80028cd8:	e59f0010 	ldr	r0, [pc, #16]	@ 80028cf0 <sys_getpinfo+0x118>
80028cdc:	ebfff7d2 	bl	80026c2c <release>
80028ce0:	e3a03000 	mov	r3, #0
80028ce4:	e1a00003 	mov	r0, r3
80028ce8:	e24bd004 	sub	sp, fp, #4
80028cec:	e8bd8800 	pop	{fp, pc}
80028cf0:	800af598 	.word	0x800af598
80028cf4:	800af5cc 	.word	0x800af5cc
80028cf8:	800b1ecc 	.word	0x800b1ecc

80028cfc <sys_pg_pte>:
80028cfc:	e92d4800 	push	{fp, lr}
80028d00:	e28db004 	add	fp, sp, #4
80028d04:	e24dd018 	sub	sp, sp, #24
80028d08:	e24b3014 	sub	r3, fp, #20
80028d0c:	e1a01003 	mov	r1, r3
80028d10:	e3a00000 	mov	r0, #0
80028d14:	ebfff82a 	bl	80026dc4 <argint>
80028d18:	e1a03000 	mov	r3, r0
80028d1c:	e3530000 	cmp	r3, #0
80028d20:	aa000001 	bge	80028d2c <sys_pg_pte+0x30>
80028d24:	e3e03000 	mvn	r3, #0
80028d28:	ea00004a 	b	80028e58 <sys_pg_pte+0x15c>
80028d2c:	e59f3130 	ldr	r3, [pc, #304]	@ 80028e64 <sys_pg_pte+0x168>
80028d30:	e5933000 	ldr	r3, [r3]
80028d34:	e50b3008 	str	r3, [fp, #-8]
80028d38:	e51b3008 	ldr	r3, [fp, #-8]
80028d3c:	e5932000 	ldr	r2, [r3]
80028d40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028d44:	e1520003 	cmp	r2, r3
80028d48:	8a000001 	bhi	80028d54 <sys_pg_pte+0x58>
80028d4c:	e3a03000 	mov	r3, #0
80028d50:	ea000040 	b	80028e58 <sys_pg_pte+0x15c>
80028d54:	e51b3008 	ldr	r3, [fp, #-8]
80028d58:	e5933004 	ldr	r3, [r3, #4]
80028d5c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028d60:	e1a01002 	mov	r1, r2
80028d64:	e3a02000 	mov	r2, #0
80028d68:	e1a00003 	mov	r0, r3
80028d6c:	eb0002f6 	bl	8002994c <walkpgdir>
80028d70:	e50b000c 	str	r0, [fp, #-12]
80028d74:	e51b300c 	ldr	r3, [fp, #-12]
80028d78:	e3530000 	cmp	r3, #0
80028d7c:	0a000004 	beq	80028d94 <sys_pg_pte+0x98>
80028d80:	e51b300c 	ldr	r3, [fp, #-12]
80028d84:	e5933000 	ldr	r3, [r3]
80028d88:	e2033003 	and	r3, r3, #3
80028d8c:	e3530000 	cmp	r3, #0
80028d90:	1a000021 	bne	80028e1c <sys_pg_pte+0x120>
80028d94:	ebffe225 	bl	80021630 <alloc_page>
80028d98:	e50b0010 	str	r0, [fp, #-16]
80028d9c:	e51b3010 	ldr	r3, [fp, #-16]
80028da0:	e3530000 	cmp	r3, #0
80028da4:	1a000003 	bne	80028db8 <sys_pg_pte+0xbc>
80028da8:	e59f00b8 	ldr	r0, [pc, #184]	@ 80028e68 <sys_pg_pte+0x16c>
80028dac:	ebffe2b8 	bl	80021894 <cprintf>
80028db0:	e3a03000 	mov	r3, #0
80028db4:	ea000027 	b	80028e58 <sys_pg_pte+0x15c>
80028db8:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028dbc:	e3a01000 	mov	r1, #0
80028dc0:	e51b0010 	ldr	r0, [fp, #-16]
80028dc4:	ebffdc8d 	bl	80020000 <memset>
80028dc8:	e51b3008 	ldr	r3, [fp, #-8]
80028dcc:	e5930004 	ldr	r0, [r3, #4]
80028dd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028dd4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028dd8:	e3c3300f 	bic	r3, r3, #15
80028ddc:	e1a01003 	mov	r1, r3
80028de0:	e51b3010 	ldr	r3, [fp, #-16]
80028de4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028de8:	e3a02003 	mov	r2, #3
80028dec:	e58d2000 	str	r2, [sp]
80028df0:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028df4:	eb000309 	bl	80029a20 <mappages>
80028df8:	e1a03000 	mov	r3, r0
80028dfc:	e3530000 	cmp	r3, #0
80028e00:	aa000005 	bge	80028e1c <sys_pg_pte+0x120>
80028e04:	e51b0010 	ldr	r0, [fp, #-16]
80028e08:	ebffe1fe 	bl	80021608 <free_page>
80028e0c:	e59f0058 	ldr	r0, [pc, #88]	@ 80028e6c <sys_pg_pte+0x170>
80028e10:	ebffe29f 	bl	80021894 <cprintf>
80028e14:	e3a03000 	mov	r3, #0
80028e18:	ea00000e 	b	80028e58 <sys_pg_pte+0x15c>
80028e1c:	e51b3008 	ldr	r3, [fp, #-8]
80028e20:	e5933004 	ldr	r3, [r3, #4]
80028e24:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028e28:	e1a01002 	mov	r1, r2
80028e2c:	e3a02000 	mov	r2, #0
80028e30:	e1a00003 	mov	r0, r3
80028e34:	eb0002c4 	bl	8002994c <walkpgdir>
80028e38:	e50b000c 	str	r0, [fp, #-12]
80028e3c:	e51b300c 	ldr	r3, [fp, #-12]
80028e40:	e3530000 	cmp	r3, #0
80028e44:	1a000001 	bne	80028e50 <sys_pg_pte+0x154>
80028e48:	e3a03000 	mov	r3, #0
80028e4c:	ea000001 	b	80028e58 <sys_pg_pte+0x15c>
80028e50:	e51b300c 	ldr	r3, [fp, #-12]
80028e54:	e5933000 	ldr	r3, [r3]
80028e58:	e1a00003 	mov	r0, r3
80028e5c:	e24bd004 	sub	sp, fp, #4
80028e60:	e8bd8800 	pop	{fp, pc}
80028e64:	800b1ed0 	.word	0x800b1ed0
80028e68:	8002b210 	.word	0x8002b210
80028e6c:	8002b22c 	.word	0x8002b22c

80028e70 <sys_pg_pa>:
80028e70:	e92d4800 	push	{fp, lr}
80028e74:	e28db004 	add	fp, sp, #4
80028e78:	e24dd008 	sub	sp, sp, #8
80028e7c:	e24b3008 	sub	r3, fp, #8
80028e80:	e1a01003 	mov	r1, r3
80028e84:	e3a00000 	mov	r0, #0
80028e88:	ebfff7cd 	bl	80026dc4 <argint>
80028e8c:	e1a03000 	mov	r3, r0
80028e90:	e3530000 	cmp	r3, #0
80028e94:	aa000001 	bge	80028ea0 <sys_pg_pa+0x30>
80028e98:	e3e03000 	mvn	r3, #0
80028e9c:	ea000002 	b	80028eac <sys_pg_pa+0x3c>
80028ea0:	e51b3008 	ldr	r3, [fp, #-8]
80028ea4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028ea8:	e3c3300f 	bic	r3, r3, #15
80028eac:	e1a00003 	mov	r0, r3
80028eb0:	e24bd004 	sub	sp, fp, #4
80028eb4:	e8bd8800 	pop	{fp, pc}

80028eb8 <sys_pg_flags>:
80028eb8:	e92d4800 	push	{fp, lr}
80028ebc:	e28db004 	add	fp, sp, #4
80028ec0:	e24dd008 	sub	sp, sp, #8
80028ec4:	e24b3008 	sub	r3, fp, #8
80028ec8:	e1a01003 	mov	r1, r3
80028ecc:	e3a00000 	mov	r0, #0
80028ed0:	ebfff7bb 	bl	80026dc4 <argint>
80028ed4:	e1a03000 	mov	r3, r0
80028ed8:	e3530000 	cmp	r3, #0
80028edc:	aa000001 	bge	80028ee8 <sys_pg_flags+0x30>
80028ee0:	e3e03000 	mvn	r3, #0
80028ee4:	ea000002 	b	80028ef4 <sys_pg_flags+0x3c>
80028ee8:	e51b3008 	ldr	r3, [fp, #-8]
80028eec:	e1a03a03 	lsl	r3, r3, #20
80028ef0:	e1a03a23 	lsr	r3, r3, #20
80028ef4:	e1a00003 	mov	r0, r3
80028ef8:	e24bd004 	sub	sp, fp, #4
80028efc:	e8bd8800 	pop	{fp, pc}

80028f00 <sys_kpt>:
80028f00:	e92d4800 	push	{fp, lr}
80028f04:	e28db004 	add	fp, sp, #4
80028f08:	e59f000c 	ldr	r0, [pc, #12]	@ 80028f1c <sys_kpt+0x1c>
80028f0c:	ebffe260 	bl	80021894 <cprintf>
80028f10:	e3a03000 	mov	r3, #0
80028f14:	e1a00003 	mov	r0, r3
80028f18:	e8bd8800 	pop	{fp, pc}
80028f1c:	8002b24c 	.word	0x8002b24c

80028f20 <sys_ugetpid>:
80028f20:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028f24:	e28db000 	add	fp, sp, #0
80028f28:	e59f3014 	ldr	r3, [pc, #20]	@ 80028f44 <sys_ugetpid+0x24>
80028f2c:	e5933000 	ldr	r3, [r3]
80028f30:	e5933010 	ldr	r3, [r3, #16]
80028f34:	e1a00003 	mov	r0, r3
80028f38:	e28bd000 	add	sp, fp, #0
80028f3c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028f40:	e12fff1e 	bx	lr
80028f44:	800b1ed0 	.word	0x800b1ed0

80028f48 <trap_swi>:
80028f48:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028f4c:	e14f2000 	mrs	r2, SPSR
80028f50:	e92d0004 	stmfd	sp!, {r2}
80028f54:	e92d4000 	stmfd	sp!, {lr}
80028f58:	e94d6000 	stmdb	sp, {sp, lr}^
80028f5c:	e24dd008 	sub	sp, sp, #8
80028f60:	e1a0000d 	mov	r0, sp
80028f64:	eb000054 	bl	800290bc <swi_handler>

80028f68 <trapret>:
80028f68:	e8dd6000 	ldm	sp, {sp, lr}^
80028f6c:	e28dd008 	add	sp, sp, #8
80028f70:	e8bd4000 	ldmfd	sp!, {lr}
80028f74:	e8bd0004 	ldmfd	sp!, {r2}
80028f78:	e16ff002 	msr	SPSR_fsxc, r2
80028f7c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80028f80 <trap_irq>:
80028f80:	e24ee004 	sub	lr, lr, #4
80028f84:	e92d4007 	push	{r0, r1, r2, lr}
80028f88:	e14f1000 	mrs	r1, SPSR
80028f8c:	e1a0000d 	mov	r0, sp
80028f90:	e28dd010 	add	sp, sp, #16
80028f94:	e10f2000 	mrs	r2, CPSR
80028f98:	e3c2201f 	bic	r2, r2, #31
80028f9c:	e3822013 	orr	r2, r2, #19
80028fa0:	e12ff002 	msr	CPSR_fsxc, r2
80028fa4:	e590200c 	ldr	r2, [r0, #12]
80028fa8:	e92d0004 	stmfd	sp!, {r2}
80028fac:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80028fb0:	e8900038 	ldm	r0, {r3, r4, r5}
80028fb4:	e92d0038 	push	{r3, r4, r5}
80028fb8:	e92d0002 	stmfd	sp!, {r1}
80028fbc:	e92d4000 	stmfd	sp!, {lr}
80028fc0:	e94d6000 	stmdb	sp, {sp, lr}^
80028fc4:	e24dd008 	sub	sp, sp, #8
80028fc8:	e1a0000d 	mov	r0, sp
80028fcc:	eb000047 	bl	800290f0 <irq_handler>
80028fd0:	eaffffe4 	b	80028f68 <trapret>

80028fd4 <trap_reset>:
80028fd4:	e3a0e000 	mov	lr, #0
80028fd8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028fdc:	e14f2000 	mrs	r2, SPSR
80028fe0:	e92d0004 	stmfd	sp!, {r2}
80028fe4:	e92d4000 	stmfd	sp!, {lr}
80028fe8:	e94d6000 	stmdb	sp, {sp, lr}^
80028fec:	e24dd008 	sub	sp, sp, #8
80028ff0:	e1a0000d 	mov	r0, sp
80028ff4:	eb00004f 	bl	80029138 <reset_handler>
80028ff8:	eafffffe 	b	80028ff8 <trap_reset+0x24>

80028ffc <trap_und>:
80028ffc:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029000:	e14f2000 	mrs	r2, SPSR
80029004:	e92d0004 	stmfd	sp!, {r2}
80029008:	e92d4000 	stmfd	sp!, {lr}
8002900c:	e94d6000 	stmdb	sp, {sp, lr}^
80029010:	e24dd008 	sub	sp, sp, #8
80029014:	e1a0000d 	mov	r0, sp
80029018:	eb000054 	bl	80029170 <und_handler>
8002901c:	eafffffe 	b	8002901c <trap_und+0x20>

80029020 <trap_iabort>:
80029020:	e24ee004 	sub	lr, lr, #4
80029024:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029028:	e14f2000 	mrs	r2, SPSR
8002902c:	e92d0004 	stmfd	sp!, {r2}
80029030:	e92d4000 	stmfd	sp!, {lr}
80029034:	e94d6000 	stmdb	sp, {sp, lr}^
80029038:	e24dd008 	sub	sp, sp, #8
8002903c:	e1a0000d 	mov	r0, sp
80029040:	eb0000b2 	bl	80029310 <iabort_handler>
80029044:	eafffffe 	b	80029044 <trap_iabort+0x24>

80029048 <trap_dabort>:
80029048:	e24ee008 	sub	lr, lr, #8
8002904c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029050:	e14f2000 	mrs	r2, SPSR
80029054:	e92d0004 	stmfd	sp!, {r2}
80029058:	e92d4000 	stmfd	sp!, {lr}
8002905c:	e94d6000 	stmdb	sp, {sp, lr}^
80029060:	e24dd008 	sub	sp, sp, #8
80029064:	e1a0000d 	mov	r0, sp
80029068:	eb00004e 	bl	800291a8 <dabort_handler>
8002906c:	eaffffbd 	b	80028f68 <trapret>

80029070 <trap_na>:
80029070:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029074:	e14f2000 	mrs	r2, SPSR
80029078:	e92d0004 	stmfd	sp!, {r2}
8002907c:	e92d4000 	stmfd	sp!, {lr}
80029080:	e94d6000 	stmdb	sp, {sp, lr}^
80029084:	e24dd008 	sub	sp, sp, #8
80029088:	e1a0000d 	mov	r0, sp
8002908c:	eb0000b2 	bl	8002935c <na_handler>
80029090:	eafffffe 	b	80029090 <trap_na+0x20>

80029094 <trap_fiq>:
80029094:	e24ee004 	sub	lr, lr, #4
80029098:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002909c:	e14f2000 	mrs	r2, SPSR
800290a0:	e92d0004 	stmfd	sp!, {r2}
800290a4:	e92d4000 	stmfd	sp!, {lr}
800290a8:	e94d6000 	stmdb	sp, {sp, lr}^
800290ac:	e24dd008 	sub	sp, sp, #8
800290b0:	e1a0000d 	mov	r0, sp
800290b4:	eb0000b6 	bl	80029394 <fiq_handler>
800290b8:	eafffffe 	b	800290b8 <trap_fiq+0x24>

800290bc <swi_handler>:
800290bc:	e92d4800 	push	{fp, lr}
800290c0:	e28db004 	add	fp, sp, #4
800290c4:	e24dd008 	sub	sp, sp, #8
800290c8:	e50b0008 	str	r0, [fp, #-8]
800290cc:	e59f3018 	ldr	r3, [pc, #24]	@ 800290ec <swi_handler+0x30>
800290d0:	e5933000 	ldr	r3, [r3]
800290d4:	e51b2008 	ldr	r2, [fp, #-8]
800290d8:	e5832018 	str	r2, [r3, #24]
800290dc:	ebfff792 	bl	80026f2c <syscall>
800290e0:	e1a00000 	nop			@ (mov r0, r0)
800290e4:	e24bd004 	sub	sp, fp, #4
800290e8:	e8bd8800 	pop	{fp, pc}
800290ec:	800b1ed0 	.word	0x800b1ed0

800290f0 <irq_handler>:
800290f0:	e92d4800 	push	{fp, lr}
800290f4:	e28db004 	add	fp, sp, #4
800290f8:	e24dd008 	sub	sp, sp, #8
800290fc:	e50b0008 	str	r0, [fp, #-8]
80029100:	e59f302c 	ldr	r3, [pc, #44]	@ 80029134 <irq_handler+0x44>
80029104:	e5933000 	ldr	r3, [r3]
80029108:	e3530000 	cmp	r3, #0
8002910c:	0a000003 	beq	80029120 <irq_handler+0x30>
80029110:	e59f301c 	ldr	r3, [pc, #28]	@ 80029134 <irq_handler+0x44>
80029114:	e5933000 	ldr	r3, [r3]
80029118:	e51b2008 	ldr	r2, [fp, #-8]
8002911c:	e5832018 	str	r2, [r3, #24]
80029120:	e51b0008 	ldr	r0, [fp, #-8]
80029124:	eb00053b 	bl	8002a618 <pic_dispatch>
80029128:	e1a00000 	nop			@ (mov r0, r0)
8002912c:	e24bd004 	sub	sp, fp, #4
80029130:	e8bd8800 	pop	{fp, pc}
80029134:	800b1ed0 	.word	0x800b1ed0

80029138 <reset_handler>:
80029138:	e92d4800 	push	{fp, lr}
8002913c:	e28db004 	add	fp, sp, #4
80029140:	e24dd008 	sub	sp, sp, #8
80029144:	e50b0008 	str	r0, [fp, #-8]
80029148:	ebffdcfc 	bl	80020540 <cli>
8002914c:	e51b3008 	ldr	r3, [fp, #-8]
80029150:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029154:	e1a01003 	mov	r1, r3
80029158:	e59f000c 	ldr	r0, [pc, #12]	@ 8002916c <reset_handler+0x34>
8002915c:	ebffe1cc 	bl	80021894 <cprintf>
80029160:	e1a00000 	nop			@ (mov r0, r0)
80029164:	e24bd004 	sub	sp, fp, #4
80029168:	e8bd8800 	pop	{fp, pc}
8002916c:	8002b274 	.word	0x8002b274

80029170 <und_handler>:
80029170:	e92d4800 	push	{fp, lr}
80029174:	e28db004 	add	fp, sp, #4
80029178:	e24dd008 	sub	sp, sp, #8
8002917c:	e50b0008 	str	r0, [fp, #-8]
80029180:	ebffdcee 	bl	80020540 <cli>
80029184:	e51b3008 	ldr	r3, [fp, #-8]
80029188:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002918c:	e1a01003 	mov	r1, r3
80029190:	e59f000c 	ldr	r0, [pc, #12]	@ 800291a4 <und_handler+0x34>
80029194:	ebffe1be 	bl	80021894 <cprintf>
80029198:	e1a00000 	nop			@ (mov r0, r0)
8002919c:	e24bd004 	sub	sp, fp, #4
800291a0:	e8bd8800 	pop	{fp, pc}
800291a4:	8002b288 	.word	0x8002b288

800291a8 <dabort_handler>:
800291a8:	e92d4800 	push	{fp, lr}
800291ac:	e28db004 	add	fp, sp, #4
800291b0:	e24dd030 	sub	sp, sp, #48	@ 0x30
800291b4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800291b8:	e59f313c 	ldr	r3, [pc, #316]	@ 800292fc <dabort_handler+0x154>
800291bc:	e5933000 	ldr	r3, [r3]
800291c0:	e50b3008 	str	r3, [fp, #-8]
800291c4:	ebffdcdd 	bl	80020540 <cli>
800291c8:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800291cc:	e50b300c 	str	r3, [fp, #-12]
800291d0:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
800291d4:	e50b3010 	str	r3, [fp, #-16]
800291d8:	e51b3008 	ldr	r3, [fp, #-8]
800291dc:	e3530000 	cmp	r3, #0
800291e0:	0a000039 	beq	800292cc <dabort_handler+0x124>
800291e4:	e51b3008 	ldr	r3, [fp, #-8]
800291e8:	e5933000 	ldr	r3, [r3]
800291ec:	e51b2010 	ldr	r2, [fp, #-16]
800291f0:	e1520003 	cmp	r2, r3
800291f4:	2a000034 	bcs	800292cc <dabort_handler+0x124>
800291f8:	e51b3010 	ldr	r3, [fp, #-16]
800291fc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029200:	e3c3300f 	bic	r3, r3, #15
80029204:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029208:	e51b3008 	ldr	r3, [fp, #-8]
8002920c:	e5933004 	ldr	r3, [r3, #4]
80029210:	e3a02001 	mov	r2, #1
80029214:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029218:	e1a00003 	mov	r0, r3
8002921c:	eb0001ca 	bl	8002994c <walkpgdir>
80029220:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029228:	e3530000 	cmp	r3, #0
8002922c:	0a000007 	beq	80029250 <dabort_handler+0xa8>
80029230:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029234:	e5933000 	ldr	r3, [r3]
80029238:	e2033003 	and	r3, r3, #3
8002923c:	e3530000 	cmp	r3, #0
80029240:	0a000002 	beq	80029250 <dabort_handler+0xa8>
80029244:	eb000231 	bl	80029b10 <flush_tlb>
80029248:	ebffdcca 	bl	80020578 <sti>
8002924c:	ea000028 	b	800292f4 <dabort_handler+0x14c>
80029250:	ebffe0f6 	bl	80021630 <alloc_page>
80029254:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
80029258:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002925c:	e3530000 	cmp	r3, #0
80029260:	1a000001 	bne	8002926c <dabort_handler+0xc4>
80029264:	e59f0094 	ldr	r0, [pc, #148]	@ 80029300 <dabort_handler+0x158>
80029268:	ebffe221 	bl	80021af4 <panic>
8002926c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029270:	e3a01000 	mov	r1, #0
80029274:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80029278:	ebffdb60 	bl	80020000 <memset>
8002927c:	e51b3008 	ldr	r3, [fp, #-8]
80029280:	e5930004 	ldr	r0, [r3, #4]
80029284:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029288:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002928c:	e3a02003 	mov	r2, #3
80029290:	e58d2000 	str	r2, [sp]
80029294:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029298:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002929c:	eb0001df 	bl	80029a20 <mappages>
800292a0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800292a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800292a8:	e3530000 	cmp	r3, #0
800292ac:	0a000003 	beq	800292c0 <dabort_handler+0x118>
800292b0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800292b4:	ebffe0d3 	bl	80021608 <free_page>
800292b8:	e59f0044 	ldr	r0, [pc, #68]	@ 80029304 <dabort_handler+0x15c>
800292bc:	ebffe20c 	bl	80021af4 <panic>
800292c0:	eb000212 	bl	80029b10 <flush_tlb>
800292c4:	ebffdcab 	bl	80020578 <sti>
800292c8:	ea000009 	b	800292f4 <dabort_handler+0x14c>
800292cc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800292d0:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
800292d4:	e51b300c 	ldr	r3, [fp, #-12]
800292d8:	e51b2010 	ldr	r2, [fp, #-16]
800292dc:	e59f0024 	ldr	r0, [pc, #36]	@ 80029308 <dabort_handler+0x160>
800292e0:	ebffe16b 	bl	80021894 <cprintf>
800292e4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800292e8:	eb0000b8 	bl	800295d0 <dump_trapframe>
800292ec:	e59f0018 	ldr	r0, [pc, #24]	@ 8002930c <dabort_handler+0x164>
800292f0:	ebffe1ff 	bl	80021af4 <panic>
800292f4:	e24bd004 	sub	sp, fp, #4
800292f8:	e8bd8800 	pop	{fp, pc}
800292fc:	800b1ed0 	.word	0x800b1ed0
80029300:	8002b298 	.word	0x8002b298
80029304:	8002b2b8 	.word	0x8002b2b8
80029308:	8002b2d8 	.word	0x8002b2d8
8002930c:	8002b314 	.word	0x8002b314

80029310 <iabort_handler>:
80029310:	e92d4800 	push	{fp, lr}
80029314:	e28db004 	add	fp, sp, #4
80029318:	e24dd010 	sub	sp, sp, #16
8002931c:	e50b0010 	str	r0, [fp, #-16]
80029320:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80029324:	e50b3008 	str	r3, [fp, #-8]
80029328:	ebffdc84 	bl	80020540 <cli>
8002932c:	e51b3010 	ldr	r3, [fp, #-16]
80029330:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029334:	e51b2008 	ldr	r2, [fp, #-8]
80029338:	e1a01003 	mov	r1, r3
8002933c:	e59f0014 	ldr	r0, [pc, #20]	@ 80029358 <iabort_handler+0x48>
80029340:	ebffe153 	bl	80021894 <cprintf>
80029344:	e51b0010 	ldr	r0, [fp, #-16]
80029348:	eb0000a0 	bl	800295d0 <dump_trapframe>
8002934c:	e1a00000 	nop			@ (mov r0, r0)
80029350:	e24bd004 	sub	sp, fp, #4
80029354:	e8bd8800 	pop	{fp, pc}
80029358:	8002b32c 	.word	0x8002b32c

8002935c <na_handler>:
8002935c:	e92d4800 	push	{fp, lr}
80029360:	e28db004 	add	fp, sp, #4
80029364:	e24dd008 	sub	sp, sp, #8
80029368:	e50b0008 	str	r0, [fp, #-8]
8002936c:	ebffdc73 	bl	80020540 <cli>
80029370:	e51b3008 	ldr	r3, [fp, #-8]
80029374:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029378:	e1a01003 	mov	r1, r3
8002937c:	e59f000c 	ldr	r0, [pc, #12]	@ 80029390 <na_handler+0x34>
80029380:	ebffe143 	bl	80021894 <cprintf>
80029384:	e1a00000 	nop			@ (mov r0, r0)
80029388:	e24bd004 	sub	sp, fp, #4
8002938c:	e8bd8800 	pop	{fp, pc}
80029390:	8002b354 	.word	0x8002b354

80029394 <fiq_handler>:
80029394:	e92d4800 	push	{fp, lr}
80029398:	e28db004 	add	fp, sp, #4
8002939c:	e24dd008 	sub	sp, sp, #8
800293a0:	e50b0008 	str	r0, [fp, #-8]
800293a4:	ebffdc65 	bl	80020540 <cli>
800293a8:	e51b3008 	ldr	r3, [fp, #-8]
800293ac:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800293b0:	e1a01003 	mov	r1, r3
800293b4:	e59f000c 	ldr	r0, [pc, #12]	@ 800293c8 <fiq_handler+0x34>
800293b8:	ebffe135 	bl	80021894 <cprintf>
800293bc:	e1a00000 	nop			@ (mov r0, r0)
800293c0:	e24bd004 	sub	sp, fp, #4
800293c4:	e8bd8800 	pop	{fp, pc}
800293c8:	8002b364 	.word	0x8002b364

800293cc <trap_init>:
800293cc:	e92d4800 	push	{fp, lr}
800293d0:	e28db004 	add	fp, sp, #4
800293d4:	e24dd020 	sub	sp, sp, #32
800293d8:	e59f31c0 	ldr	r3, [pc, #448]	@ 800295a0 <trap_init+0x1d4>
800293dc:	e24bc020 	sub	ip, fp, #32
800293e0:	e893000f 	ldm	r3, {r0, r1, r2, r3}
800293e4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
800293e8:	e59f31b4 	ldr	r3, [pc, #436]	@ 800295a4 <trap_init+0x1d8>
800293ec:	e50b300c 	str	r3, [fp, #-12]
800293f0:	e59f31b0 	ldr	r3, [pc, #432]	@ 800295a8 <trap_init+0x1dc>
800293f4:	e5933000 	ldr	r3, [r3]
800293f8:	e3832018 	orr	r2, r3, #24
800293fc:	e51b300c 	ldr	r3, [fp, #-12]
80029400:	e5832000 	str	r2, [r3]
80029404:	e59f319c 	ldr	r3, [pc, #412]	@ 800295a8 <trap_init+0x1dc>
80029408:	e5932000 	ldr	r2, [r3]
8002940c:	e51b300c 	ldr	r3, [fp, #-12]
80029410:	e2833004 	add	r3, r3, #4
80029414:	e3822018 	orr	r2, r2, #24
80029418:	e5832000 	str	r2, [r3]
8002941c:	e59f3184 	ldr	r3, [pc, #388]	@ 800295a8 <trap_init+0x1dc>
80029420:	e5932000 	ldr	r2, [r3]
80029424:	e51b300c 	ldr	r3, [fp, #-12]
80029428:	e2833008 	add	r3, r3, #8
8002942c:	e3822018 	orr	r2, r2, #24
80029430:	e5832000 	str	r2, [r3]
80029434:	e59f316c 	ldr	r3, [pc, #364]	@ 800295a8 <trap_init+0x1dc>
80029438:	e5932000 	ldr	r2, [r3]
8002943c:	e51b300c 	ldr	r3, [fp, #-12]
80029440:	e283300c 	add	r3, r3, #12
80029444:	e3822018 	orr	r2, r2, #24
80029448:	e5832000 	str	r2, [r3]
8002944c:	e59f3154 	ldr	r3, [pc, #340]	@ 800295a8 <trap_init+0x1dc>
80029450:	e5932000 	ldr	r2, [r3]
80029454:	e51b300c 	ldr	r3, [fp, #-12]
80029458:	e2833010 	add	r3, r3, #16
8002945c:	e3822018 	orr	r2, r2, #24
80029460:	e5832000 	str	r2, [r3]
80029464:	e59f313c 	ldr	r3, [pc, #316]	@ 800295a8 <trap_init+0x1dc>
80029468:	e5932000 	ldr	r2, [r3]
8002946c:	e51b300c 	ldr	r3, [fp, #-12]
80029470:	e2833014 	add	r3, r3, #20
80029474:	e3822018 	orr	r2, r2, #24
80029478:	e5832000 	str	r2, [r3]
8002947c:	e59f3124 	ldr	r3, [pc, #292]	@ 800295a8 <trap_init+0x1dc>
80029480:	e5932000 	ldr	r2, [r3]
80029484:	e51b300c 	ldr	r3, [fp, #-12]
80029488:	e2833018 	add	r3, r3, #24
8002948c:	e3822018 	orr	r2, r2, #24
80029490:	e5832000 	str	r2, [r3]
80029494:	e59f310c 	ldr	r3, [pc, #268]	@ 800295a8 <trap_init+0x1dc>
80029498:	e5932000 	ldr	r2, [r3]
8002949c:	e51b300c 	ldr	r3, [fp, #-12]
800294a0:	e283301c 	add	r3, r3, #28
800294a4:	e3822018 	orr	r2, r2, #24
800294a8:	e5832000 	str	r2, [r3]
800294ac:	e51b300c 	ldr	r3, [fp, #-12]
800294b0:	e2833020 	add	r3, r3, #32
800294b4:	e59f20f0 	ldr	r2, [pc, #240]	@ 800295ac <trap_init+0x1e0>
800294b8:	e5832000 	str	r2, [r3]
800294bc:	e51b300c 	ldr	r3, [fp, #-12]
800294c0:	e2833024 	add	r3, r3, #36	@ 0x24
800294c4:	e59f20e4 	ldr	r2, [pc, #228]	@ 800295b0 <trap_init+0x1e4>
800294c8:	e5832000 	str	r2, [r3]
800294cc:	e51b300c 	ldr	r3, [fp, #-12]
800294d0:	e2833028 	add	r3, r3, #40	@ 0x28
800294d4:	e59f20d8 	ldr	r2, [pc, #216]	@ 800295b4 <trap_init+0x1e8>
800294d8:	e5832000 	str	r2, [r3]
800294dc:	e51b300c 	ldr	r3, [fp, #-12]
800294e0:	e283302c 	add	r3, r3, #44	@ 0x2c
800294e4:	e59f20cc 	ldr	r2, [pc, #204]	@ 800295b8 <trap_init+0x1ec>
800294e8:	e5832000 	str	r2, [r3]
800294ec:	e51b300c 	ldr	r3, [fp, #-12]
800294f0:	e2833030 	add	r3, r3, #48	@ 0x30
800294f4:	e59f20c0 	ldr	r2, [pc, #192]	@ 800295bc <trap_init+0x1f0>
800294f8:	e5832000 	str	r2, [r3]
800294fc:	e51b300c 	ldr	r3, [fp, #-12]
80029500:	e2833034 	add	r3, r3, #52	@ 0x34
80029504:	e59f20b4 	ldr	r2, [pc, #180]	@ 800295c0 <trap_init+0x1f4>
80029508:	e5832000 	str	r2, [r3]
8002950c:	e51b300c 	ldr	r3, [fp, #-12]
80029510:	e2833038 	add	r3, r3, #56	@ 0x38
80029514:	e59f20a8 	ldr	r2, [pc, #168]	@ 800295c4 <trap_init+0x1f8>
80029518:	e5832000 	str	r2, [r3]
8002951c:	e51b300c 	ldr	r3, [fp, #-12]
80029520:	e283303c 	add	r3, r3, #60	@ 0x3c
80029524:	e59f209c 	ldr	r2, [pc, #156]	@ 800295c8 <trap_init+0x1fc>
80029528:	e5832000 	str	r2, [r3]
8002952c:	e3a03000 	mov	r3, #0
80029530:	e50b3008 	str	r3, [fp, #-8]
80029534:	ea000012 	b	80029584 <trap_init+0x1b8>
80029538:	ebffe03c 	bl	80021630 <alloc_page>
8002953c:	e50b0010 	str	r0, [fp, #-16]
80029540:	e51b3010 	ldr	r3, [fp, #-16]
80029544:	e3530000 	cmp	r3, #0
80029548:	1a000001 	bne	80029554 <trap_init+0x188>
8002954c:	e59f0078 	ldr	r0, [pc, #120]	@ 800295cc <trap_init+0x200>
80029550:	ebffe167 	bl	80021af4 <panic>
80029554:	e51b3008 	ldr	r3, [fp, #-8]
80029558:	e1a03103 	lsl	r3, r3, #2
8002955c:	e2433004 	sub	r3, r3, #4
80029560:	e083300b 	add	r3, r3, fp
80029564:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80029568:	e51b2010 	ldr	r2, [fp, #-16]
8002956c:	e1a01002 	mov	r1, r2
80029570:	e1a00003 	mov	r0, r3
80029574:	ebffdcca 	bl	800208a4 <set_stk>
80029578:	e51b3008 	ldr	r3, [fp, #-8]
8002957c:	e2833001 	add	r3, r3, #1
80029580:	e50b3008 	str	r3, [fp, #-8]
80029584:	e51b3008 	ldr	r3, [fp, #-8]
80029588:	e3530003 	cmp	r3, #3
8002958c:	9affffe9 	bls	80029538 <trap_init+0x16c>
80029590:	e1a00000 	nop			@ (mov r0, r0)
80029594:	e1a00000 	nop			@ (mov r0, r0)
80029598:	e24bd004 	sub	sp, fp, #4
8002959c:	e8bd8800 	pop	{fp, pc}
800295a0:	8002b39c 	.word	0x8002b39c
800295a4:	ffff0000 	.word	0xffff0000
800295a8:	8002b4ac 	.word	0x8002b4ac
800295ac:	80028fd4 	.word	0x80028fd4
800295b0:	80028ffc 	.word	0x80028ffc
800295b4:	80028f48 	.word	0x80028f48
800295b8:	80029020 	.word	0x80029020
800295bc:	80029048 	.word	0x80029048
800295c0:	80029070 	.word	0x80029070
800295c4:	80028f80 	.word	0x80028f80
800295c8:	80029094 	.word	0x80029094
800295cc:	8002b374 	.word	0x8002b374

800295d0 <dump_trapframe>:
800295d0:	e92d4800 	push	{fp, lr}
800295d4:	e28db004 	add	fp, sp, #4
800295d8:	e24dd008 	sub	sp, sp, #8
800295dc:	e50b0008 	str	r0, [fp, #-8]
800295e0:	e51b3008 	ldr	r3, [fp, #-8]
800295e4:	e5933008 	ldr	r3, [r3, #8]
800295e8:	e1a01003 	mov	r1, r3
800295ec:	e59f0138 	ldr	r0, [pc, #312]	@ 8002972c <dump_trapframe+0x15c>
800295f0:	ebffe0a7 	bl	80021894 <cprintf>
800295f4:	e51b3008 	ldr	r3, [fp, #-8]
800295f8:	e593300c 	ldr	r3, [r3, #12]
800295fc:	e1a01003 	mov	r1, r3
80029600:	e59f0128 	ldr	r0, [pc, #296]	@ 80029730 <dump_trapframe+0x160>
80029604:	ebffe0a2 	bl	80021894 <cprintf>
80029608:	e51b3008 	ldr	r3, [fp, #-8]
8002960c:	e5933010 	ldr	r3, [r3, #16]
80029610:	e1a01003 	mov	r1, r3
80029614:	e59f0118 	ldr	r0, [pc, #280]	@ 80029734 <dump_trapframe+0x164>
80029618:	ebffe09d 	bl	80021894 <cprintf>
8002961c:	e51b3008 	ldr	r3, [fp, #-8]
80029620:	e5933014 	ldr	r3, [r3, #20]
80029624:	e1a01003 	mov	r1, r3
80029628:	e59f0108 	ldr	r0, [pc, #264]	@ 80029738 <dump_trapframe+0x168>
8002962c:	ebffe098 	bl	80021894 <cprintf>
80029630:	e51b3008 	ldr	r3, [fp, #-8]
80029634:	e5933018 	ldr	r3, [r3, #24]
80029638:	e1a01003 	mov	r1, r3
8002963c:	e59f00f8 	ldr	r0, [pc, #248]	@ 8002973c <dump_trapframe+0x16c>
80029640:	ebffe093 	bl	80021894 <cprintf>
80029644:	e51b3008 	ldr	r3, [fp, #-8]
80029648:	e593301c 	ldr	r3, [r3, #28]
8002964c:	e1a01003 	mov	r1, r3
80029650:	e59f00e8 	ldr	r0, [pc, #232]	@ 80029740 <dump_trapframe+0x170>
80029654:	ebffe08e 	bl	80021894 <cprintf>
80029658:	e51b3008 	ldr	r3, [fp, #-8]
8002965c:	e5933020 	ldr	r3, [r3, #32]
80029660:	e1a01003 	mov	r1, r3
80029664:	e59f00d8 	ldr	r0, [pc, #216]	@ 80029744 <dump_trapframe+0x174>
80029668:	ebffe089 	bl	80021894 <cprintf>
8002966c:	e51b3008 	ldr	r3, [fp, #-8]
80029670:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80029674:	e1a01003 	mov	r1, r3
80029678:	e59f00c8 	ldr	r0, [pc, #200]	@ 80029748 <dump_trapframe+0x178>
8002967c:	ebffe084 	bl	80021894 <cprintf>
80029680:	e51b3008 	ldr	r3, [fp, #-8]
80029684:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80029688:	e1a01003 	mov	r1, r3
8002968c:	e59f00b8 	ldr	r0, [pc, #184]	@ 8002974c <dump_trapframe+0x17c>
80029690:	ebffe07f 	bl	80021894 <cprintf>
80029694:	e51b3008 	ldr	r3, [fp, #-8]
80029698:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
8002969c:	e1a01003 	mov	r1, r3
800296a0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80029750 <dump_trapframe+0x180>
800296a4:	ebffe07a 	bl	80021894 <cprintf>
800296a8:	e51b3008 	ldr	r3, [fp, #-8]
800296ac:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
800296b0:	e1a01003 	mov	r1, r3
800296b4:	e59f0098 	ldr	r0, [pc, #152]	@ 80029754 <dump_trapframe+0x184>
800296b8:	ebffe075 	bl	80021894 <cprintf>
800296bc:	e51b3008 	ldr	r3, [fp, #-8]
800296c0:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800296c4:	e1a01003 	mov	r1, r3
800296c8:	e59f0088 	ldr	r0, [pc, #136]	@ 80029758 <dump_trapframe+0x188>
800296cc:	ebffe070 	bl	80021894 <cprintf>
800296d0:	e51b3008 	ldr	r3, [fp, #-8]
800296d4:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800296d8:	e1a01003 	mov	r1, r3
800296dc:	e59f0078 	ldr	r0, [pc, #120]	@ 8002975c <dump_trapframe+0x18c>
800296e0:	ebffe06b 	bl	80021894 <cprintf>
800296e4:	e51b3008 	ldr	r3, [fp, #-8]
800296e8:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800296ec:	e1a01003 	mov	r1, r3
800296f0:	e59f0068 	ldr	r0, [pc, #104]	@ 80029760 <dump_trapframe+0x190>
800296f4:	ebffe066 	bl	80021894 <cprintf>
800296f8:	e51b3008 	ldr	r3, [fp, #-8]
800296fc:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80029700:	e1a01003 	mov	r1, r3
80029704:	e59f0058 	ldr	r0, [pc, #88]	@ 80029764 <dump_trapframe+0x194>
80029708:	ebffe061 	bl	80021894 <cprintf>
8002970c:	e51b3008 	ldr	r3, [fp, #-8]
80029710:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029714:	e1a01003 	mov	r1, r3
80029718:	e59f0048 	ldr	r0, [pc, #72]	@ 80029768 <dump_trapframe+0x198>
8002971c:	ebffe05c 	bl	80021894 <cprintf>
80029720:	e1a00000 	nop			@ (mov r0, r0)
80029724:	e24bd004 	sub	sp, fp, #4
80029728:	e8bd8800 	pop	{fp, pc}
8002972c:	8002b3ac 	.word	0x8002b3ac
80029730:	8002b3bc 	.word	0x8002b3bc
80029734:	8002b3cc 	.word	0x8002b3cc
80029738:	8002b3dc 	.word	0x8002b3dc
8002973c:	8002b3ec 	.word	0x8002b3ec
80029740:	8002b3fc 	.word	0x8002b3fc
80029744:	8002b40c 	.word	0x8002b40c
80029748:	8002b41c 	.word	0x8002b41c
8002974c:	8002b42c 	.word	0x8002b42c
80029750:	8002b43c 	.word	0x8002b43c
80029754:	8002b44c 	.word	0x8002b44c
80029758:	8002b45c 	.word	0x8002b45c
8002975c:	8002b46c 	.word	0x8002b46c
80029760:	8002b47c 	.word	0x8002b47c
80029764:	8002b48c 	.word	0x8002b48c
80029768:	8002b49c 	.word	0x8002b49c

8002976c <p2v>:
8002976c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029770:	e28db000 	add	fp, sp, #0
80029774:	e24dd00c 	sub	sp, sp, #12
80029778:	e50b0008 	str	r0, [fp, #-8]
8002977c:	e51b3008 	ldr	r3, [fp, #-8]
80029780:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029784:	e1a00003 	mov	r0, r3
80029788:	e28bd000 	add	sp, fp, #0
8002978c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029790:	e12fff1e 	bx	lr

80029794 <init_vmm>:
80029794:	e92d4800 	push	{fp, lr}
80029798:	e28db004 	add	fp, sp, #4
8002979c:	e59f1018 	ldr	r1, [pc, #24]	@ 800297bc <init_vmm+0x28>
800297a0:	e59f0018 	ldr	r0, [pc, #24]	@ 800297c0 <init_vmm+0x2c>
800297a4:	ebfff503 	bl	80026bb8 <initlock>
800297a8:	e59f3010 	ldr	r3, [pc, #16]	@ 800297c0 <init_vmm+0x2c>
800297ac:	e3a02000 	mov	r2, #0
800297b0:	e5832034 	str	r2, [r3, #52]	@ 0x34
800297b4:	e1a00000 	nop			@ (mov r0, r0)
800297b8:	e8bd8800 	pop	{fp, pc}
800297bc:	8002b4b0 	.word	0x8002b4b0
800297c0:	800b1ed8 	.word	0x800b1ed8

800297c4 <_kpt_free>:
800297c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800297c8:	e28db000 	add	fp, sp, #0
800297cc:	e24dd014 	sub	sp, sp, #20
800297d0:	e50b0010 	str	r0, [fp, #-16]
800297d4:	e51b3010 	ldr	r3, [fp, #-16]
800297d8:	e50b3008 	str	r3, [fp, #-8]
800297dc:	e59f3024 	ldr	r3, [pc, #36]	@ 80029808 <_kpt_free+0x44>
800297e0:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800297e4:	e51b3008 	ldr	r3, [fp, #-8]
800297e8:	e5832000 	str	r2, [r3]
800297ec:	e59f2014 	ldr	r2, [pc, #20]	@ 80029808 <_kpt_free+0x44>
800297f0:	e51b3008 	ldr	r3, [fp, #-8]
800297f4:	e5823034 	str	r3, [r2, #52]	@ 0x34
800297f8:	e1a00000 	nop			@ (mov r0, r0)
800297fc:	e28bd000 	add	sp, fp, #0
80029800:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029804:	e12fff1e 	bx	lr
80029808:	800b1ed8 	.word	0x800b1ed8

8002980c <kpt_free>:
8002980c:	e92d4800 	push	{fp, lr}
80029810:	e28db004 	add	fp, sp, #4
80029814:	e24dd008 	sub	sp, sp, #8
80029818:	e50b0008 	str	r0, [fp, #-8]
8002981c:	e51b3008 	ldr	r3, [fp, #-8]
80029820:	e59f2034 	ldr	r2, [pc, #52]	@ 8002985c <kpt_free+0x50>
80029824:	e1530002 	cmp	r3, r2
80029828:	9a000003 	bls	8002983c <kpt_free+0x30>
8002982c:	e3a0100a 	mov	r1, #10
80029830:	e51b0008 	ldr	r0, [fp, #-8]
80029834:	ebffdf51 	bl	80021580 <kfree>
80029838:	ea000005 	b	80029854 <kpt_free+0x48>
8002983c:	e59f001c 	ldr	r0, [pc, #28]	@ 80029860 <kpt_free+0x54>
80029840:	ebfff4ee 	bl	80026c00 <acquire>
80029844:	e51b0008 	ldr	r0, [fp, #-8]
80029848:	ebffffdd 	bl	800297c4 <_kpt_free>
8002984c:	e59f000c 	ldr	r0, [pc, #12]	@ 80029860 <kpt_free+0x54>
80029850:	ebfff4f5 	bl	80026c2c <release>
80029854:	e24bd004 	sub	sp, fp, #4
80029858:	e8bd8800 	pop	{fp, pc}
8002985c:	800fffff 	.word	0x800fffff
80029860:	800b1ed8 	.word	0x800b1ed8

80029864 <kpt_freerange>:
80029864:	e92d4800 	push	{fp, lr}
80029868:	e28db004 	add	fp, sp, #4
8002986c:	e24dd008 	sub	sp, sp, #8
80029870:	e50b0008 	str	r0, [fp, #-8]
80029874:	e50b100c 	str	r1, [fp, #-12]
80029878:	ea000005 	b	80029894 <kpt_freerange+0x30>
8002987c:	e51b3008 	ldr	r3, [fp, #-8]
80029880:	e1a00003 	mov	r0, r3
80029884:	ebffffce 	bl	800297c4 <_kpt_free>
80029888:	e51b3008 	ldr	r3, [fp, #-8]
8002988c:	e2833b01 	add	r3, r3, #1024	@ 0x400
80029890:	e50b3008 	str	r3, [fp, #-8]
80029894:	e51b2008 	ldr	r2, [fp, #-8]
80029898:	e51b300c 	ldr	r3, [fp, #-12]
8002989c:	e1520003 	cmp	r2, r3
800298a0:	3afffff5 	bcc	8002987c <kpt_freerange+0x18>
800298a4:	e1a00000 	nop			@ (mov r0, r0)
800298a8:	e1a00000 	nop			@ (mov r0, r0)
800298ac:	e24bd004 	sub	sp, fp, #4
800298b0:	e8bd8800 	pop	{fp, pc}

800298b4 <kpt_alloc>:
800298b4:	e92d4800 	push	{fp, lr}
800298b8:	e28db004 	add	fp, sp, #4
800298bc:	e24dd008 	sub	sp, sp, #8
800298c0:	e59f007c 	ldr	r0, [pc, #124]	@ 80029944 <kpt_alloc+0x90>
800298c4:	ebfff4cd 	bl	80026c00 <acquire>
800298c8:	e59f3074 	ldr	r3, [pc, #116]	@ 80029944 <kpt_alloc+0x90>
800298cc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800298d0:	e50b3008 	str	r3, [fp, #-8]
800298d4:	e51b3008 	ldr	r3, [fp, #-8]
800298d8:	e3530000 	cmp	r3, #0
800298dc:	0a000003 	beq	800298f0 <kpt_alloc+0x3c>
800298e0:	e51b3008 	ldr	r3, [fp, #-8]
800298e4:	e5933000 	ldr	r3, [r3]
800298e8:	e59f2054 	ldr	r2, [pc, #84]	@ 80029944 <kpt_alloc+0x90>
800298ec:	e5823034 	str	r3, [r2, #52]	@ 0x34
800298f0:	e59f004c 	ldr	r0, [pc, #76]	@ 80029944 <kpt_alloc+0x90>
800298f4:	ebfff4cc 	bl	80026c2c <release>
800298f8:	e51b3008 	ldr	r3, [fp, #-8]
800298fc:	e3530000 	cmp	r3, #0
80029900:	1a000007 	bne	80029924 <kpt_alloc+0x70>
80029904:	e3a0000a 	mov	r0, #10
80029908:	ebffdec5 	bl	80021424 <kmalloc>
8002990c:	e50b0008 	str	r0, [fp, #-8]
80029910:	e51b3008 	ldr	r3, [fp, #-8]
80029914:	e3530000 	cmp	r3, #0
80029918:	1a000001 	bne	80029924 <kpt_alloc+0x70>
8002991c:	e59f0024 	ldr	r0, [pc, #36]	@ 80029948 <kpt_alloc+0x94>
80029920:	ebffe073 	bl	80021af4 <panic>
80029924:	e3a02b01 	mov	r2, #1024	@ 0x400
80029928:	e3a01000 	mov	r1, #0
8002992c:	e51b0008 	ldr	r0, [fp, #-8]
80029930:	ebffd9b2 	bl	80020000 <memset>
80029934:	e51b3008 	ldr	r3, [fp, #-8]
80029938:	e1a00003 	mov	r0, r3
8002993c:	e24bd004 	sub	sp, fp, #4
80029940:	e8bd8800 	pop	{fp, pc}
80029944:	800b1ed8 	.word	0x800b1ed8
80029948:	8002b4b4 	.word	0x8002b4b4

8002994c <walkpgdir>:
8002994c:	e92d4800 	push	{fp, lr}
80029950:	e28db004 	add	fp, sp, #4
80029954:	e24dd018 	sub	sp, sp, #24
80029958:	e50b0010 	str	r0, [fp, #-16]
8002995c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029960:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80029964:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029968:	e1a03a23 	lsr	r3, r3, #20
8002996c:	e1a03103 	lsl	r3, r3, #2
80029970:	e51b2010 	ldr	r2, [fp, #-16]
80029974:	e0823003 	add	r3, r2, r3
80029978:	e50b300c 	str	r3, [fp, #-12]
8002997c:	e51b300c 	ldr	r3, [fp, #-12]
80029980:	e5933000 	ldr	r3, [r3]
80029984:	e2033003 	and	r3, r3, #3
80029988:	e3530000 	cmp	r3, #0
8002998c:	0a000007 	beq	800299b0 <walkpgdir+0x64>
80029990:	e51b300c 	ldr	r3, [fp, #-12]
80029994:	e5933000 	ldr	r3, [r3]
80029998:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
8002999c:	e3c33003 	bic	r3, r3, #3
800299a0:	e1a00003 	mov	r0, r3
800299a4:	ebffff70 	bl	8002976c <p2v>
800299a8:	e50b0008 	str	r0, [fp, #-8]
800299ac:	ea000012 	b	800299fc <walkpgdir+0xb0>
800299b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800299b4:	e3530000 	cmp	r3, #0
800299b8:	0a000004 	beq	800299d0 <walkpgdir+0x84>
800299bc:	ebffffbc 	bl	800298b4 <kpt_alloc>
800299c0:	e50b0008 	str	r0, [fp, #-8]
800299c4:	e51b3008 	ldr	r3, [fp, #-8]
800299c8:	e3530000 	cmp	r3, #0
800299cc:	1a000001 	bne	800299d8 <walkpgdir+0x8c>
800299d0:	e3a03000 	mov	r3, #0
800299d4:	ea00000e 	b	80029a14 <walkpgdir+0xc8>
800299d8:	e3a02b01 	mov	r2, #1024	@ 0x400
800299dc:	e3a01000 	mov	r1, #0
800299e0:	e51b0008 	ldr	r0, [fp, #-8]
800299e4:	ebffd985 	bl	80020000 <memset>
800299e8:	e51b3008 	ldr	r3, [fp, #-8]
800299ec:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800299f0:	e3832001 	orr	r2, r3, #1
800299f4:	e51b300c 	ldr	r3, [fp, #-12]
800299f8:	e5832000 	str	r2, [r3]
800299fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029a00:	e1a03623 	lsr	r3, r3, #12
80029a04:	e6ef3073 	uxtb	r3, r3
80029a08:	e1a03103 	lsl	r3, r3, #2
80029a0c:	e51b2008 	ldr	r2, [fp, #-8]
80029a10:	e0823003 	add	r3, r2, r3
80029a14:	e1a00003 	mov	r0, r3
80029a18:	e24bd004 	sub	sp, fp, #4
80029a1c:	e8bd8800 	pop	{fp, pc}

80029a20 <mappages>:
80029a20:	e92d4800 	push	{fp, lr}
80029a24:	e28db004 	add	fp, sp, #4
80029a28:	e24dd020 	sub	sp, sp, #32
80029a2c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029a30:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029a34:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029a38:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029a3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029a40:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029a44:	e3c3300f 	bic	r3, r3, #15
80029a48:	e50b3008 	str	r3, [fp, #-8]
80029a4c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029a50:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029a54:	e0823003 	add	r3, r2, r3
80029a58:	e2433001 	sub	r3, r3, #1
80029a5c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029a60:	e3c3300f 	bic	r3, r3, #15
80029a64:	e50b300c 	str	r3, [fp, #-12]
80029a68:	e3a02001 	mov	r2, #1
80029a6c:	e51b1008 	ldr	r1, [fp, #-8]
80029a70:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029a74:	ebffffb4 	bl	8002994c <walkpgdir>
80029a78:	e50b0010 	str	r0, [fp, #-16]
80029a7c:	e51b3010 	ldr	r3, [fp, #-16]
80029a80:	e3530000 	cmp	r3, #0
80029a84:	1a000001 	bne	80029a90 <mappages+0x70>
80029a88:	e3e03000 	mvn	r3, #0
80029a8c:	ea00001b 	b	80029b00 <mappages+0xe0>
80029a90:	e51b3010 	ldr	r3, [fp, #-16]
80029a94:	e5933000 	ldr	r3, [r3]
80029a98:	e2033003 	and	r3, r3, #3
80029a9c:	e3530000 	cmp	r3, #0
80029aa0:	0a000001 	beq	80029aac <mappages+0x8c>
80029aa4:	e59f0060 	ldr	r0, [pc, #96]	@ 80029b0c <mappages+0xec>
80029aa8:	ebffe011 	bl	80021af4 <panic>
80029aac:	e59b3004 	ldr	r3, [fp, #4]
80029ab0:	e1a03203 	lsl	r3, r3, #4
80029ab4:	e2032030 	and	r2, r3, #48	@ 0x30
80029ab8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029abc:	e1823003 	orr	r3, r2, r3
80029ac0:	e383200e 	orr	r2, r3, #14
80029ac4:	e51b3010 	ldr	r3, [fp, #-16]
80029ac8:	e5832000 	str	r2, [r3]
80029acc:	e51b2008 	ldr	r2, [fp, #-8]
80029ad0:	e51b300c 	ldr	r3, [fp, #-12]
80029ad4:	e1520003 	cmp	r2, r3
80029ad8:	0a000006 	beq	80029af8 <mappages+0xd8>
80029adc:	e51b3008 	ldr	r3, [fp, #-8]
80029ae0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029ae4:	e50b3008 	str	r3, [fp, #-8]
80029ae8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029aec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029af0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029af4:	eaffffdb 	b	80029a68 <mappages+0x48>
80029af8:	e1a00000 	nop			@ (mov r0, r0)
80029afc:	e3a03000 	mov	r3, #0
80029b00:	e1a00003 	mov	r0, r3
80029b04:	e24bd004 	sub	sp, fp, #4
80029b08:	e8bd8800 	pop	{fp, pc}
80029b0c:	8002b4c4 	.word	0x8002b4c4

80029b10 <flush_tlb>:
80029b10:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029b14:	e28db000 	add	fp, sp, #0
80029b18:	e24dd00c 	sub	sp, sp, #12
80029b1c:	e3a03000 	mov	r3, #0
80029b20:	e50b3008 	str	r3, [fp, #-8]
80029b24:	e51b3008 	ldr	r3, [fp, #-8]
80029b28:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80029b2c:	e51b3008 	ldr	r3, [fp, #-8]
80029b30:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80029b34:	e51b3008 	ldr	r3, [fp, #-8]
80029b38:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80029b3c:	e1a00000 	nop			@ (mov r0, r0)
80029b40:	e28bd000 	add	sp, fp, #0
80029b44:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029b48:	e12fff1e 	bx	lr

80029b4c <switchuvm>:
80029b4c:	e92d4800 	push	{fp, lr}
80029b50:	e28db004 	add	fp, sp, #4
80029b54:	e24dd010 	sub	sp, sp, #16
80029b58:	e50b0010 	str	r0, [fp, #-16]
80029b5c:	ebffdab2 	bl	8002062c <pushcli>
80029b60:	e51b3010 	ldr	r3, [fp, #-16]
80029b64:	e5933004 	ldr	r3, [r3, #4]
80029b68:	e3530000 	cmp	r3, #0
80029b6c:	1a000001 	bne	80029b78 <switchuvm+0x2c>
80029b70:	e59f002c 	ldr	r0, [pc, #44]	@ 80029ba4 <switchuvm+0x58>
80029b74:	ebffdfde 	bl	80021af4 <panic>
80029b78:	e51b3010 	ldr	r3, [fp, #-16]
80029b7c:	e5933004 	ldr	r3, [r3, #4]
80029b80:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029b84:	e50b3008 	str	r3, [fp, #-8]
80029b88:	e51b3008 	ldr	r3, [fp, #-8]
80029b8c:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80029b90:	ebffffde 	bl	80029b10 <flush_tlb>
80029b94:	ebffdab9 	bl	80020680 <popcli>
80029b98:	e1a00000 	nop			@ (mov r0, r0)
80029b9c:	e24bd004 	sub	sp, fp, #4
80029ba0:	e8bd8800 	pop	{fp, pc}
80029ba4:	8002b4cc 	.word	0x8002b4cc

80029ba8 <inituvm>:
80029ba8:	e92d4800 	push	{fp, lr}
80029bac:	e28db004 	add	fp, sp, #4
80029bb0:	e24dd020 	sub	sp, sp, #32
80029bb4:	e50b0010 	str	r0, [fp, #-16]
80029bb8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029bbc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80029bc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029bc4:	e3530a01 	cmp	r3, #4096	@ 0x1000
80029bc8:	3a000001 	bcc	80029bd4 <inituvm+0x2c>
80029bcc:	e59f0054 	ldr	r0, [pc, #84]	@ 80029c28 <inituvm+0x80>
80029bd0:	ebffdfc7 	bl	80021af4 <panic>
80029bd4:	ebffde95 	bl	80021630 <alloc_page>
80029bd8:	e50b0008 	str	r0, [fp, #-8]
80029bdc:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029be0:	e3a01000 	mov	r1, #0
80029be4:	e51b0008 	ldr	r0, [fp, #-8]
80029be8:	ebffd904 	bl	80020000 <memset>
80029bec:	e51b3008 	ldr	r3, [fp, #-8]
80029bf0:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029bf4:	e3a02003 	mov	r2, #3
80029bf8:	e58d2000 	str	r2, [sp]
80029bfc:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029c00:	e3a01000 	mov	r1, #0
80029c04:	e51b0010 	ldr	r0, [fp, #-16]
80029c08:	ebffff84 	bl	80029a20 <mappages>
80029c0c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80029c10:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029c14:	e51b0008 	ldr	r0, [fp, #-8]
80029c18:	ebffd96a 	bl	800201c8 <memmove>
80029c1c:	e1a00000 	nop			@ (mov r0, r0)
80029c20:	e24bd004 	sub	sp, fp, #4
80029c24:	e8bd8800 	pop	{fp, pc}
80029c28:	8002b4e0 	.word	0x8002b4e0

80029c2c <loaduvm>:
80029c2c:	e92d4800 	push	{fp, lr}
80029c30:	e28db004 	add	fp, sp, #4
80029c34:	e24dd028 	sub	sp, sp, #40	@ 0x28
80029c38:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029c3c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029c40:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029c44:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029c4c:	e1a03a03 	lsl	r3, r3, #20
80029c50:	e1a03a23 	lsr	r3, r3, #20
80029c54:	e3530000 	cmp	r3, #0
80029c58:	0a000001 	beq	80029c64 <loaduvm+0x38>
80029c5c:	e59f0144 	ldr	r0, [pc, #324]	@ 80029da8 <loaduvm+0x17c>
80029c60:	ebffdfa3 	bl	80021af4 <panic>
80029c64:	e3a03000 	mov	r3, #0
80029c68:	e50b3008 	str	r3, [fp, #-8]
80029c6c:	ea000045 	b	80029d88 <loaduvm+0x15c>
80029c70:	ebffde6e 	bl	80021630 <alloc_page>
80029c74:	e50b0010 	str	r0, [fp, #-16]
80029c78:	e51b3010 	ldr	r3, [fp, #-16]
80029c7c:	e3530000 	cmp	r3, #0
80029c80:	1a000005 	bne	80029c9c <loaduvm+0x70>
80029c84:	e3a02000 	mov	r2, #0
80029c88:	e59b1004 	ldr	r1, [fp, #4]
80029c8c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029c90:	eb00005b 	bl	80029e04 <deallocuvm>
80029c94:	e3e03000 	mvn	r3, #0
80029c98:	ea00003f 	b	80029d9c <loaduvm+0x170>
80029c9c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029ca0:	e3a01000 	mov	r1, #0
80029ca4:	e51b0010 	ldr	r0, [fp, #-16]
80029ca8:	ebffd8d4 	bl	80020000 <memset>
80029cac:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029cb0:	e51b3008 	ldr	r3, [fp, #-8]
80029cb4:	e0821003 	add	r1, r2, r3
80029cb8:	e51b3010 	ldr	r3, [fp, #-16]
80029cbc:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029cc0:	e3a02003 	mov	r2, #3
80029cc4:	e58d2000 	str	r2, [sp]
80029cc8:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029ccc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029cd0:	ebffff52 	bl	80029a20 <mappages>
80029cd4:	e1a03000 	mov	r3, r0
80029cd8:	e3530000 	cmp	r3, #0
80029cdc:	aa000007 	bge	80029d00 <loaduvm+0xd4>
80029ce0:	e51b0010 	ldr	r0, [fp, #-16]
80029ce4:	ebffde47 	bl	80021608 <free_page>
80029ce8:	e3a02000 	mov	r2, #0
80029cec:	e59b1004 	ldr	r1, [fp, #4]
80029cf0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029cf4:	eb000042 	bl	80029e04 <deallocuvm>
80029cf8:	e3e03000 	mvn	r3, #0
80029cfc:	ea000026 	b	80029d9c <loaduvm+0x170>
80029d00:	e51b3010 	ldr	r3, [fp, #-16]
80029d04:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029d08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029d0c:	e59b2004 	ldr	r2, [fp, #4]
80029d10:	e51b3008 	ldr	r3, [fp, #-8]
80029d14:	e0423003 	sub	r3, r2, r3
80029d18:	e3530a01 	cmp	r3, #4096	@ 0x1000
80029d1c:	2a000004 	bcs	80029d34 <loaduvm+0x108>
80029d20:	e59b2004 	ldr	r2, [fp, #4]
80029d24:	e51b3008 	ldr	r3, [fp, #-8]
80029d28:	e0423003 	sub	r3, r2, r3
80029d2c:	e50b300c 	str	r3, [fp, #-12]
80029d30:	ea000001 	b	80029d3c <loaduvm+0x110>
80029d34:	e3a03a01 	mov	r3, #4096	@ 0x1000
80029d38:	e50b300c 	str	r3, [fp, #-12]
80029d3c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80029d40:	ebfffe89 	bl	8002976c <p2v>
80029d44:	e1a01000 	mov	r1, r0
80029d48:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80029d4c:	e51b3008 	ldr	r3, [fp, #-8]
80029d50:	e0822003 	add	r2, r2, r3
80029d54:	e51b300c 	ldr	r3, [fp, #-12]
80029d58:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80029d5c:	ebffe7a1 	bl	80023be8 <readi>
80029d60:	e1a03000 	mov	r3, r0
80029d64:	e1a02003 	mov	r2, r3
80029d68:	e51b300c 	ldr	r3, [fp, #-12]
80029d6c:	e1530002 	cmp	r3, r2
80029d70:	0a000001 	beq	80029d7c <loaduvm+0x150>
80029d74:	e3e03000 	mvn	r3, #0
80029d78:	ea000007 	b	80029d9c <loaduvm+0x170>
80029d7c:	e51b3008 	ldr	r3, [fp, #-8]
80029d80:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029d84:	e50b3008 	str	r3, [fp, #-8]
80029d88:	e51b2008 	ldr	r2, [fp, #-8]
80029d8c:	e59b3004 	ldr	r3, [fp, #4]
80029d90:	e1520003 	cmp	r2, r3
80029d94:	3affffb5 	bcc	80029c70 <loaduvm+0x44>
80029d98:	e3a03000 	mov	r3, #0
80029d9c:	e1a00003 	mov	r0, r3
80029da0:	e24bd004 	sub	sp, fp, #4
80029da4:	e8bd8800 	pop	{fp, pc}
80029da8:	8002b4fc 	.word	0x8002b4fc

80029dac <allocuvm>:
80029dac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029db0:	e28db000 	add	fp, sp, #0
80029db4:	e24dd014 	sub	sp, sp, #20
80029db8:	e50b0008 	str	r0, [fp, #-8]
80029dbc:	e50b100c 	str	r1, [fp, #-12]
80029dc0:	e50b2010 	str	r2, [fp, #-16]
80029dc4:	e51b3010 	ldr	r3, [fp, #-16]
80029dc8:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80029dcc:	9a000001 	bls	80029dd8 <allocuvm+0x2c>
80029dd0:	e3a03000 	mov	r3, #0
80029dd4:	ea000006 	b	80029df4 <allocuvm+0x48>
80029dd8:	e51b2010 	ldr	r2, [fp, #-16]
80029ddc:	e51b300c 	ldr	r3, [fp, #-12]
80029de0:	e1520003 	cmp	r2, r3
80029de4:	2a000001 	bcs	80029df0 <allocuvm+0x44>
80029de8:	e51b300c 	ldr	r3, [fp, #-12]
80029dec:	ea000000 	b	80029df4 <allocuvm+0x48>
80029df0:	e51b3010 	ldr	r3, [fp, #-16]
80029df4:	e1a00003 	mov	r0, r3
80029df8:	e28bd000 	add	sp, fp, #0
80029dfc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029e00:	e12fff1e 	bx	lr

80029e04 <deallocuvm>:
80029e04:	e92d4800 	push	{fp, lr}
80029e08:	e28db004 	add	fp, sp, #4
80029e0c:	e24dd020 	sub	sp, sp, #32
80029e10:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029e14:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029e18:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029e1c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80029e20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029e24:	e1520003 	cmp	r2, r3
80029e28:	3a000001 	bcc	80029e34 <deallocuvm+0x30>
80029e2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029e30:	ea000035 	b	80029f0c <deallocuvm+0x108>
80029e34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029e38:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80029e3c:	e283300f 	add	r3, r3, #15
80029e40:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029e44:	e3c3300f 	bic	r3, r3, #15
80029e48:	e50b3008 	str	r3, [fp, #-8]
80029e4c:	ea000029 	b	80029ef8 <deallocuvm+0xf4>
80029e50:	e51b3008 	ldr	r3, [fp, #-8]
80029e54:	e3a02000 	mov	r2, #0
80029e58:	e1a01003 	mov	r1, r3
80029e5c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029e60:	ebfffeb9 	bl	8002994c <walkpgdir>
80029e64:	e50b000c 	str	r0, [fp, #-12]
80029e68:	e51b300c 	ldr	r3, [fp, #-12]
80029e6c:	e3530000 	cmp	r3, #0
80029e70:	1a000006 	bne	80029e90 <deallocuvm+0x8c>
80029e74:	e51b3008 	ldr	r3, [fp, #-8]
80029e78:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80029e7c:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80029e80:	e1a03a23 	lsr	r3, r3, #20
80029e84:	e1a03a03 	lsl	r3, r3, #20
80029e88:	e50b3008 	str	r3, [fp, #-8]
80029e8c:	ea000016 	b	80029eec <deallocuvm+0xe8>
80029e90:	e51b300c 	ldr	r3, [fp, #-12]
80029e94:	e5933000 	ldr	r3, [r3]
80029e98:	e2033003 	and	r3, r3, #3
80029e9c:	e3530000 	cmp	r3, #0
80029ea0:	0a000011 	beq	80029eec <deallocuvm+0xe8>
80029ea4:	e51b300c 	ldr	r3, [fp, #-12]
80029ea8:	e5933000 	ldr	r3, [r3]
80029eac:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029eb0:	e3c3300f 	bic	r3, r3, #15
80029eb4:	e50b3010 	str	r3, [fp, #-16]
80029eb8:	e51b3010 	ldr	r3, [fp, #-16]
80029ebc:	e3530000 	cmp	r3, #0
80029ec0:	1a000001 	bne	80029ecc <deallocuvm+0xc8>
80029ec4:	e59f004c 	ldr	r0, [pc, #76]	@ 80029f18 <deallocuvm+0x114>
80029ec8:	ebffdf09 	bl	80021af4 <panic>
80029ecc:	e51b0010 	ldr	r0, [fp, #-16]
80029ed0:	ebfffe25 	bl	8002976c <p2v>
80029ed4:	e1a03000 	mov	r3, r0
80029ed8:	e1a00003 	mov	r0, r3
80029edc:	ebffddc9 	bl	80021608 <free_page>
80029ee0:	e51b300c 	ldr	r3, [fp, #-12]
80029ee4:	e3a02000 	mov	r2, #0
80029ee8:	e5832000 	str	r2, [r3]
80029eec:	e51b3008 	ldr	r3, [fp, #-8]
80029ef0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029ef4:	e50b3008 	str	r3, [fp, #-8]
80029ef8:	e51b2008 	ldr	r2, [fp, #-8]
80029efc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029f00:	e1520003 	cmp	r2, r3
80029f04:	3affffd1 	bcc	80029e50 <deallocuvm+0x4c>
80029f08:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029f0c:	e1a00003 	mov	r0, r3
80029f10:	e24bd004 	sub	sp, fp, #4
80029f14:	e8bd8800 	pop	{fp, pc}
80029f18:	8002b520 	.word	0x8002b520

80029f1c <freevm>:
80029f1c:	e92d4800 	push	{fp, lr}
80029f20:	e28db004 	add	fp, sp, #4
80029f24:	e24dd010 	sub	sp, sp, #16
80029f28:	e50b0010 	str	r0, [fp, #-16]
80029f2c:	e51b3010 	ldr	r3, [fp, #-16]
80029f30:	e3530000 	cmp	r3, #0
80029f34:	1a000001 	bne	80029f40 <freevm+0x24>
80029f38:	e59f0098 	ldr	r0, [pc, #152]	@ 80029fd8 <freevm+0xbc>
80029f3c:	ebffdeec 	bl	80021af4 <panic>
80029f40:	e3a02000 	mov	r2, #0
80029f44:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80029f48:	e51b0010 	ldr	r0, [fp, #-16]
80029f4c:	ebffffac 	bl	80029e04 <deallocuvm>
80029f50:	e3a03000 	mov	r3, #0
80029f54:	e50b3008 	str	r3, [fp, #-8]
80029f58:	ea000016 	b	80029fb8 <freevm+0x9c>
80029f5c:	e51b3008 	ldr	r3, [fp, #-8]
80029f60:	e1a03103 	lsl	r3, r3, #2
80029f64:	e51b2010 	ldr	r2, [fp, #-16]
80029f68:	e0823003 	add	r3, r2, r3
80029f6c:	e5933000 	ldr	r3, [r3]
80029f70:	e2033003 	and	r3, r3, #3
80029f74:	e3530000 	cmp	r3, #0
80029f78:	0a00000b 	beq	80029fac <freevm+0x90>
80029f7c:	e51b3008 	ldr	r3, [fp, #-8]
80029f80:	e1a03103 	lsl	r3, r3, #2
80029f84:	e51b2010 	ldr	r2, [fp, #-16]
80029f88:	e0823003 	add	r3, r2, r3
80029f8c:	e5933000 	ldr	r3, [r3]
80029f90:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80029f94:	e3c33003 	bic	r3, r3, #3
80029f98:	e1a00003 	mov	r0, r3
80029f9c:	ebfffdf2 	bl	8002976c <p2v>
80029fa0:	e50b000c 	str	r0, [fp, #-12]
80029fa4:	e51b000c 	ldr	r0, [fp, #-12]
80029fa8:	ebfffe17 	bl	8002980c <kpt_free>
80029fac:	e51b3008 	ldr	r3, [fp, #-8]
80029fb0:	e2833001 	add	r3, r3, #1
80029fb4:	e50b3008 	str	r3, [fp, #-8]
80029fb8:	e51b3008 	ldr	r3, [fp, #-8]
80029fbc:	e35300ff 	cmp	r3, #255	@ 0xff
80029fc0:	9affffe5 	bls	80029f5c <freevm+0x40>
80029fc4:	e51b0010 	ldr	r0, [fp, #-16]
80029fc8:	ebfffe0f 	bl	8002980c <kpt_free>
80029fcc:	e1a00000 	nop			@ (mov r0, r0)
80029fd0:	e24bd004 	sub	sp, fp, #4
80029fd4:	e8bd8800 	pop	{fp, pc}
80029fd8:	8002b52c 	.word	0x8002b52c

80029fdc <clearpteu>:
80029fdc:	e92d4800 	push	{fp, lr}
80029fe0:	e28db004 	add	fp, sp, #4
80029fe4:	e24dd010 	sub	sp, sp, #16
80029fe8:	e50b0010 	str	r0, [fp, #-16]
80029fec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029ff0:	e3a02000 	mov	r2, #0
80029ff4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029ff8:	e51b0010 	ldr	r0, [fp, #-16]
80029ffc:	ebfffe52 	bl	8002994c <walkpgdir>
8002a000:	e50b0008 	str	r0, [fp, #-8]
8002a004:	e51b3008 	ldr	r3, [fp, #-8]
8002a008:	e3530000 	cmp	r3, #0
8002a00c:	1a000001 	bne	8002a018 <clearpteu+0x3c>
8002a010:	e59f0024 	ldr	r0, [pc, #36]	@ 8002a03c <clearpteu+0x60>
8002a014:	ebffdeb6 	bl	80021af4 <panic>
8002a018:	e51b3008 	ldr	r3, [fp, #-8]
8002a01c:	e5933000 	ldr	r3, [r3]
8002a020:	e3c33030 	bic	r3, r3, #48	@ 0x30
8002a024:	e3832010 	orr	r2, r3, #16
8002a028:	e51b3008 	ldr	r3, [fp, #-8]
8002a02c:	e5832000 	str	r2, [r3]
8002a030:	e1a00000 	nop			@ (mov r0, r0)
8002a034:	e24bd004 	sub	sp, fp, #4
8002a038:	e8bd8800 	pop	{fp, pc}
8002a03c:	8002b540 	.word	0x8002b540

8002a040 <copyuvm>:
8002a040:	e92d4800 	push	{fp, lr}
8002a044:	e28db004 	add	fp, sp, #4
8002a048:	e24dd028 	sub	sp, sp, #40	@ 0x28
8002a04c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002a050:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
8002a054:	ebfffe16 	bl	800298b4 <kpt_alloc>
8002a058:	e50b000c 	str	r0, [fp, #-12]
8002a05c:	e51b300c 	ldr	r3, [fp, #-12]
8002a060:	e3530000 	cmp	r3, #0
8002a064:	1a000001 	bne	8002a070 <copyuvm+0x30>
8002a068:	e3a03000 	mov	r3, #0
8002a06c:	ea000043 	b	8002a180 <copyuvm+0x140>
8002a070:	e3a03000 	mov	r3, #0
8002a074:	e50b3008 	str	r3, [fp, #-8]
8002a078:	ea000036 	b	8002a158 <copyuvm+0x118>
8002a07c:	e51b3008 	ldr	r3, [fp, #-8]
8002a080:	e3a02000 	mov	r2, #0
8002a084:	e1a01003 	mov	r1, r3
8002a088:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002a08c:	ebfffe2e 	bl	8002994c <walkpgdir>
8002a090:	e50b0010 	str	r0, [fp, #-16]
8002a094:	e51b3010 	ldr	r3, [fp, #-16]
8002a098:	e3530000 	cmp	r3, #0
8002a09c:	0a000029 	beq	8002a148 <copyuvm+0x108>
8002a0a0:	e51b3010 	ldr	r3, [fp, #-16]
8002a0a4:	e5933000 	ldr	r3, [r3]
8002a0a8:	e2033003 	and	r3, r3, #3
8002a0ac:	e3530000 	cmp	r3, #0
8002a0b0:	0a000024 	beq	8002a148 <copyuvm+0x108>
8002a0b4:	e51b3010 	ldr	r3, [fp, #-16]
8002a0b8:	e5933000 	ldr	r3, [r3]
8002a0bc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a0c0:	e3c3300f 	bic	r3, r3, #15
8002a0c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002a0c8:	e51b3010 	ldr	r3, [fp, #-16]
8002a0cc:	e5933000 	ldr	r3, [r3]
8002a0d0:	e1a03223 	lsr	r3, r3, #4
8002a0d4:	e2033003 	and	r3, r3, #3
8002a0d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002a0dc:	ebffdd53 	bl	80021630 <alloc_page>
8002a0e0:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
8002a0e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a0e8:	e3530000 	cmp	r3, #0
8002a0ec:	0a00001f 	beq	8002a170 <copyuvm+0x130>
8002a0f0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002a0f4:	ebfffd9c 	bl	8002976c <p2v>
8002a0f8:	e1a03000 	mov	r3, r0
8002a0fc:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002a100:	e1a01003 	mov	r1, r3
8002a104:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002a108:	ebffd82e 	bl	800201c8 <memmove>
8002a10c:	e51b1008 	ldr	r1, [fp, #-8]
8002a110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a114:	e2832102 	add	r2, r3, #-2147483648	@ 0x80000000
8002a118:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a11c:	e58d3000 	str	r3, [sp]
8002a120:	e1a03002 	mov	r3, r2
8002a124:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002a128:	e51b000c 	ldr	r0, [fp, #-12]
8002a12c:	ebfffe3b 	bl	80029a20 <mappages>
8002a130:	e1a03000 	mov	r3, r0
8002a134:	e3530000 	cmp	r3, #0
8002a138:	aa000003 	bge	8002a14c <copyuvm+0x10c>
8002a13c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002a140:	ebffdd30 	bl	80021608 <free_page>
8002a144:	ea00000a 	b	8002a174 <copyuvm+0x134>
8002a148:	e1a00000 	nop			@ (mov r0, r0)
8002a14c:	e51b3008 	ldr	r3, [fp, #-8]
8002a150:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a154:	e50b3008 	str	r3, [fp, #-8]
8002a158:	e51b2008 	ldr	r2, [fp, #-8]
8002a15c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a160:	e1520003 	cmp	r2, r3
8002a164:	3affffc4 	bcc	8002a07c <copyuvm+0x3c>
8002a168:	e51b300c 	ldr	r3, [fp, #-12]
8002a16c:	ea000003 	b	8002a180 <copyuvm+0x140>
8002a170:	e1a00000 	nop			@ (mov r0, r0)
8002a174:	e51b000c 	ldr	r0, [fp, #-12]
8002a178:	ebffff67 	bl	80029f1c <freevm>
8002a17c:	e3a03000 	mov	r3, #0
8002a180:	e1a00003 	mov	r0, r3
8002a184:	e24bd004 	sub	sp, fp, #4
8002a188:	e8bd8800 	pop	{fp, pc}

8002a18c <uva2ka>:
8002a18c:	e92d4800 	push	{fp, lr}
8002a190:	e28db004 	add	fp, sp, #4
8002a194:	e24dd010 	sub	sp, sp, #16
8002a198:	e50b0010 	str	r0, [fp, #-16]
8002a19c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002a1a0:	e3a02000 	mov	r2, #0
8002a1a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002a1a8:	e51b0010 	ldr	r0, [fp, #-16]
8002a1ac:	ebfffde6 	bl	8002994c <walkpgdir>
8002a1b0:	e50b0008 	str	r0, [fp, #-8]
8002a1b4:	e51b3008 	ldr	r3, [fp, #-8]
8002a1b8:	e5933000 	ldr	r3, [r3]
8002a1bc:	e2033003 	and	r3, r3, #3
8002a1c0:	e3530000 	cmp	r3, #0
8002a1c4:	1a000001 	bne	8002a1d0 <uva2ka+0x44>
8002a1c8:	e3a03000 	mov	r3, #0
8002a1cc:	ea00000e 	b	8002a20c <uva2ka+0x80>
8002a1d0:	e51b3008 	ldr	r3, [fp, #-8]
8002a1d4:	e5933000 	ldr	r3, [r3]
8002a1d8:	e2033030 	and	r3, r3, #48	@ 0x30
8002a1dc:	e3530030 	cmp	r3, #48	@ 0x30
8002a1e0:	0a000001 	beq	8002a1ec <uva2ka+0x60>
8002a1e4:	e3a03000 	mov	r3, #0
8002a1e8:	ea000007 	b	8002a20c <uva2ka+0x80>
8002a1ec:	e51b3008 	ldr	r3, [fp, #-8]
8002a1f0:	e5933000 	ldr	r3, [r3]
8002a1f4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a1f8:	e3c3300f 	bic	r3, r3, #15
8002a1fc:	e1a00003 	mov	r0, r3
8002a200:	ebfffd59 	bl	8002976c <p2v>
8002a204:	e1a03000 	mov	r3, r0
8002a208:	e1a00000 	nop			@ (mov r0, r0)
8002a20c:	e1a00003 	mov	r0, r3
8002a210:	e24bd004 	sub	sp, fp, #4
8002a214:	e8bd8800 	pop	{fp, pc}

8002a218 <copyout>:
8002a218:	e92d4800 	push	{fp, lr}
8002a21c:	e28db004 	add	fp, sp, #4
8002a220:	e24dd020 	sub	sp, sp, #32
8002a224:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002a228:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002a22c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002a230:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002a234:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a238:	e50b3008 	str	r3, [fp, #-8]
8002a23c:	ea00002c 	b	8002a2f4 <copyout+0xdc>
8002a240:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a244:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a248:	e3c3300f 	bic	r3, r3, #15
8002a24c:	e50b3010 	str	r3, [fp, #-16]
8002a250:	e51b3010 	ldr	r3, [fp, #-16]
8002a254:	e1a01003 	mov	r1, r3
8002a258:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002a25c:	ebffffca 	bl	8002a18c <uva2ka>
8002a260:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002a264:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a268:	e3530000 	cmp	r3, #0
8002a26c:	1a000001 	bne	8002a278 <copyout+0x60>
8002a270:	e3e03000 	mvn	r3, #0
8002a274:	ea000022 	b	8002a304 <copyout+0xec>
8002a278:	e51b2010 	ldr	r2, [fp, #-16]
8002a27c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a280:	e0423003 	sub	r3, r2, r3
8002a284:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a288:	e50b300c 	str	r3, [fp, #-12]
8002a28c:	e51b200c 	ldr	r2, [fp, #-12]
8002a290:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a294:	e1520003 	cmp	r2, r3
8002a298:	9a000001 	bls	8002a2a4 <copyout+0x8c>
8002a29c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a2a0:	e50b300c 	str	r3, [fp, #-12]
8002a2a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002a2a8:	e51b3010 	ldr	r3, [fp, #-16]
8002a2ac:	e0423003 	sub	r3, r2, r3
8002a2b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002a2b4:	e0823003 	add	r3, r2, r3
8002a2b8:	e51b200c 	ldr	r2, [fp, #-12]
8002a2bc:	e51b1008 	ldr	r1, [fp, #-8]
8002a2c0:	e1a00003 	mov	r0, r3
8002a2c4:	ebffd7bf 	bl	800201c8 <memmove>
8002a2c8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002a2cc:	e51b300c 	ldr	r3, [fp, #-12]
8002a2d0:	e0423003 	sub	r3, r2, r3
8002a2d4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002a2d8:	e51b2008 	ldr	r2, [fp, #-8]
8002a2dc:	e51b300c 	ldr	r3, [fp, #-12]
8002a2e0:	e0823003 	add	r3, r2, r3
8002a2e4:	e50b3008 	str	r3, [fp, #-8]
8002a2e8:	e51b3010 	ldr	r3, [fp, #-16]
8002a2ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a2f0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a2f4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a2f8:	e3530000 	cmp	r3, #0
8002a2fc:	1affffcf 	bne	8002a240 <copyout+0x28>
8002a300:	e3a03000 	mov	r3, #0
8002a304:	e1a00003 	mov	r0, r3
8002a308:	e24bd004 	sub	sp, fp, #4
8002a30c:	e8bd8800 	pop	{fp, pc}

8002a310 <paging_init>:
8002a310:	e92d4800 	push	{fp, lr}
8002a314:	e28db004 	add	fp, sp, #4
8002a318:	e24dd010 	sub	sp, sp, #16
8002a31c:	e50b0008 	str	r0, [fp, #-8]
8002a320:	e50b100c 	str	r1, [fp, #-12]
8002a324:	e59f0034 	ldr	r0, [pc, #52]	@ 8002a360 <paging_init+0x50>
8002a328:	e51b3008 	ldr	r3, [fp, #-8]
8002a32c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002a330:	e1a01003 	mov	r1, r3
8002a334:	e51b200c 	ldr	r2, [fp, #-12]
8002a338:	e51b3008 	ldr	r3, [fp, #-8]
8002a33c:	e0422003 	sub	r2, r2, r3
8002a340:	e3a03003 	mov	r3, #3
8002a344:	e58d3000 	str	r3, [sp]
8002a348:	e51b3008 	ldr	r3, [fp, #-8]
8002a34c:	ebfffdb3 	bl	80029a20 <mappages>
8002a350:	ebfffdee 	bl	80029b10 <flush_tlb>
8002a354:	e1a00000 	nop			@ (mov r0, r0)
8002a358:	e24bd004 	sub	sp, fp, #4
8002a35c:	e8bd8800 	pop	{fp, pc}
8002a360:	80014000 	.word	0x80014000

8002a364 <barrier_init>:
8002a364:	e92d4800 	push	{fp, lr}
8002a368:	e28db004 	add	fp, sp, #4
8002a36c:	e24dd008 	sub	sp, sp, #8
8002a370:	e50b0008 	str	r0, [fp, #-8]
8002a374:	e59f003c 	ldr	r0, [pc, #60]	@ 8002a3b8 <barrier_init+0x54>
8002a378:	ebfff220 	bl	80026c00 <acquire>
8002a37c:	e59f2038 	ldr	r2, [pc, #56]	@ 8002a3bc <barrier_init+0x58>
8002a380:	e51b3008 	ldr	r3, [fp, #-8]
8002a384:	e5823000 	str	r3, [r2]
8002a388:	e59f3030 	ldr	r3, [pc, #48]	@ 8002a3c0 <barrier_init+0x5c>
8002a38c:	e3a02000 	mov	r2, #0
8002a390:	e5832000 	str	r2, [r3]
8002a394:	e59f3028 	ldr	r3, [pc, #40]	@ 8002a3c4 <barrier_init+0x60>
8002a398:	e3a02001 	mov	r2, #1
8002a39c:	e5832000 	str	r2, [r3]
8002a3a0:	e59f0010 	ldr	r0, [pc, #16]	@ 8002a3b8 <barrier_init+0x54>
8002a3a4:	ebfff220 	bl	80026c2c <release>
8002a3a8:	e3a03000 	mov	r3, #0
8002a3ac:	e1a00003 	mov	r0, r3
8002a3b0:	e24bd004 	sub	sp, fp, #4
8002a3b4:	e8bd8800 	pop	{fp, pc}
8002a3b8:	800b1f10 	.word	0x800b1f10
8002a3bc:	800b1f48 	.word	0x800b1f48
8002a3c0:	800b1f44 	.word	0x800b1f44
8002a3c4:	800b1f4c 	.word	0x800b1f4c

8002a3c8 <barrier_check>:
8002a3c8:	e92d4800 	push	{fp, lr}
8002a3cc:	e28db004 	add	fp, sp, #4
8002a3d0:	e59f008c 	ldr	r0, [pc, #140]	@ 8002a464 <barrier_check+0x9c>
8002a3d4:	ebfff209 	bl	80026c00 <acquire>
8002a3d8:	e59f3088 	ldr	r3, [pc, #136]	@ 8002a468 <barrier_check+0xa0>
8002a3dc:	e5933000 	ldr	r3, [r3]
8002a3e0:	e3530000 	cmp	r3, #0
8002a3e4:	1a000003 	bne	8002a3f8 <barrier_check+0x30>
8002a3e8:	e59f0074 	ldr	r0, [pc, #116]	@ 8002a464 <barrier_check+0x9c>
8002a3ec:	ebfff20e 	bl	80026c2c <release>
8002a3f0:	e3e03000 	mvn	r3, #0
8002a3f4:	ea000018 	b	8002a45c <barrier_check+0x94>
8002a3f8:	e59f306c 	ldr	r3, [pc, #108]	@ 8002a46c <barrier_check+0xa4>
8002a3fc:	e5933000 	ldr	r3, [r3]
8002a400:	e2833001 	add	r3, r3, #1
8002a404:	e59f2060 	ldr	r2, [pc, #96]	@ 8002a46c <barrier_check+0xa4>
8002a408:	e5823000 	str	r3, [r2]
8002a40c:	e59f3058 	ldr	r3, [pc, #88]	@ 8002a46c <barrier_check+0xa4>
8002a410:	e5932000 	ldr	r2, [r3]
8002a414:	e59f3054 	ldr	r3, [pc, #84]	@ 8002a470 <barrier_check+0xa8>
8002a418:	e5933000 	ldr	r3, [r3]
8002a41c:	e1520003 	cmp	r2, r3
8002a420:	aa000005 	bge	8002a43c <barrier_check+0x74>
8002a424:	e59f1038 	ldr	r1, [pc, #56]	@ 8002a464 <barrier_check+0x9c>
8002a428:	e59f003c 	ldr	r0, [pc, #60]	@ 8002a46c <barrier_check+0xa4>
8002a42c:	ebffef11 	bl	80026078 <sleep>
8002a430:	e59f002c 	ldr	r0, [pc, #44]	@ 8002a464 <barrier_check+0x9c>
8002a434:	ebfff1fc 	bl	80026c2c <release>
8002a438:	ea000006 	b	8002a458 <barrier_check+0x90>
8002a43c:	e59f0028 	ldr	r0, [pc, #40]	@ 8002a46c <barrier_check+0xa4>
8002a440:	ebffef80 	bl	80026248 <wakeup>
8002a444:	e59f3020 	ldr	r3, [pc, #32]	@ 8002a46c <barrier_check+0xa4>
8002a448:	e3a02000 	mov	r2, #0
8002a44c:	e5832000 	str	r2, [r3]
8002a450:	e59f000c 	ldr	r0, [pc, #12]	@ 8002a464 <barrier_check+0x9c>
8002a454:	ebfff1f4 	bl	80026c2c <release>
8002a458:	e3a03000 	mov	r3, #0
8002a45c:	e1a00003 	mov	r0, r3
8002a460:	e8bd8800 	pop	{fp, pc}
8002a464:	800b1f10 	.word	0x800b1f10
8002a468:	800b1f4c 	.word	0x800b1f4c
8002a46c:	800b1f44 	.word	0x800b1f44
8002a470:	800b1f48 	.word	0x800b1f48

8002a474 <default_isr>:
8002a474:	e92d4800 	push	{fp, lr}
8002a478:	e28db004 	add	fp, sp, #4
8002a47c:	e24dd008 	sub	sp, sp, #8
8002a480:	e50b0008 	str	r0, [fp, #-8]
8002a484:	e50b100c 	str	r1, [fp, #-12]
8002a488:	e51b100c 	ldr	r1, [fp, #-12]
8002a48c:	e59f000c 	ldr	r0, [pc, #12]	@ 8002a4a0 <default_isr+0x2c>
8002a490:	ebffdcff 	bl	80021894 <cprintf>
8002a494:	e1a00000 	nop			@ (mov r0, r0)
8002a498:	e24bd004 	sub	sp, fp, #4
8002a49c:	e8bd8800 	pop	{fp, pc}
8002a4a0:	8002b54c 	.word	0x8002b54c

8002a4a4 <pic_init>:
8002a4a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a4a8:	e28db000 	add	fp, sp, #0
8002a4ac:	e24dd014 	sub	sp, sp, #20
8002a4b0:	e50b0010 	str	r0, [fp, #-16]
8002a4b4:	e59f2060 	ldr	r2, [pc, #96]	@ 8002a51c <pic_init+0x78>
8002a4b8:	e51b3010 	ldr	r3, [fp, #-16]
8002a4bc:	e5823000 	str	r3, [r2]
8002a4c0:	e59f3054 	ldr	r3, [pc, #84]	@ 8002a51c <pic_init+0x78>
8002a4c4:	e5933000 	ldr	r3, [r3]
8002a4c8:	e2833014 	add	r3, r3, #20
8002a4cc:	e3e02000 	mvn	r2, #0
8002a4d0:	e5832000 	str	r2, [r3]
8002a4d4:	e3a03000 	mov	r3, #0
8002a4d8:	e50b3008 	str	r3, [fp, #-8]
8002a4dc:	ea000006 	b	8002a4fc <pic_init+0x58>
8002a4e0:	e59f2038 	ldr	r2, [pc, #56]	@ 8002a520 <pic_init+0x7c>
8002a4e4:	e51b3008 	ldr	r3, [fp, #-8]
8002a4e8:	e59f1034 	ldr	r1, [pc, #52]	@ 8002a524 <pic_init+0x80>
8002a4ec:	e7821103 	str	r1, [r2, r3, lsl #2]
8002a4f0:	e51b3008 	ldr	r3, [fp, #-8]
8002a4f4:	e2833001 	add	r3, r3, #1
8002a4f8:	e50b3008 	str	r3, [fp, #-8]
8002a4fc:	e51b3008 	ldr	r3, [fp, #-8]
8002a500:	e353001f 	cmp	r3, #31
8002a504:	dafffff5 	ble	8002a4e0 <pic_init+0x3c>
8002a508:	e1a00000 	nop			@ (mov r0, r0)
8002a50c:	e1a00000 	nop			@ (mov r0, r0)
8002a510:	e28bd000 	add	sp, fp, #0
8002a514:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a518:	e12fff1e 	bx	lr
8002a51c:	800b1f50 	.word	0x800b1f50
8002a520:	800b1f54 	.word	0x800b1f54
8002a524:	8002a474 	.word	0x8002a474

8002a528 <pic_enable>:
8002a528:	e92d4800 	push	{fp, lr}
8002a52c:	e28db004 	add	fp, sp, #4
8002a530:	e24dd008 	sub	sp, sp, #8
8002a534:	e50b0008 	str	r0, [fp, #-8]
8002a538:	e50b100c 	str	r1, [fp, #-12]
8002a53c:	e51b3008 	ldr	r3, [fp, #-8]
8002a540:	e3530000 	cmp	r3, #0
8002a544:	ba000002 	blt	8002a554 <pic_enable+0x2c>
8002a548:	e51b3008 	ldr	r3, [fp, #-8]
8002a54c:	e353001f 	cmp	r3, #31
8002a550:	da000001 	ble	8002a55c <pic_enable+0x34>
8002a554:	e59f0038 	ldr	r0, [pc, #56]	@ 8002a594 <pic_enable+0x6c>
8002a558:	ebffdd65 	bl	80021af4 <panic>
8002a55c:	e59f1034 	ldr	r1, [pc, #52]	@ 8002a598 <pic_enable+0x70>
8002a560:	e51b3008 	ldr	r3, [fp, #-8]
8002a564:	e51b200c 	ldr	r2, [fp, #-12]
8002a568:	e7812103 	str	r2, [r1, r3, lsl #2]
8002a56c:	e3a02001 	mov	r2, #1
8002a570:	e51b3008 	ldr	r3, [fp, #-8]
8002a574:	e1a02312 	lsl	r2, r2, r3
8002a578:	e59f301c 	ldr	r3, [pc, #28]	@ 8002a59c <pic_enable+0x74>
8002a57c:	e5933000 	ldr	r3, [r3]
8002a580:	e2833010 	add	r3, r3, #16
8002a584:	e5832000 	str	r2, [r3]
8002a588:	e1a00000 	nop			@ (mov r0, r0)
8002a58c:	e24bd004 	sub	sp, fp, #4
8002a590:	e8bd8800 	pop	{fp, pc}
8002a594:	8002b568 	.word	0x8002b568
8002a598:	800b1f54 	.word	0x800b1f54
8002a59c:	800b1f50 	.word	0x800b1f50

8002a5a0 <pic_disable>:
8002a5a0:	e92d4800 	push	{fp, lr}
8002a5a4:	e28db004 	add	fp, sp, #4
8002a5a8:	e24dd008 	sub	sp, sp, #8
8002a5ac:	e50b0008 	str	r0, [fp, #-8]
8002a5b0:	e51b3008 	ldr	r3, [fp, #-8]
8002a5b4:	e3530000 	cmp	r3, #0
8002a5b8:	ba000002 	blt	8002a5c8 <pic_disable+0x28>
8002a5bc:	e51b3008 	ldr	r3, [fp, #-8]
8002a5c0:	e353001f 	cmp	r3, #31
8002a5c4:	da000001 	ble	8002a5d0 <pic_disable+0x30>
8002a5c8:	e59f0038 	ldr	r0, [pc, #56]	@ 8002a608 <pic_disable+0x68>
8002a5cc:	ebffdd48 	bl	80021af4 <panic>
8002a5d0:	e3a02001 	mov	r2, #1
8002a5d4:	e51b3008 	ldr	r3, [fp, #-8]
8002a5d8:	e1a02312 	lsl	r2, r2, r3
8002a5dc:	e59f3028 	ldr	r3, [pc, #40]	@ 8002a60c <pic_disable+0x6c>
8002a5e0:	e5933000 	ldr	r3, [r3]
8002a5e4:	e2833014 	add	r3, r3, #20
8002a5e8:	e5832000 	str	r2, [r3]
8002a5ec:	e59f201c 	ldr	r2, [pc, #28]	@ 8002a610 <pic_disable+0x70>
8002a5f0:	e51b3008 	ldr	r3, [fp, #-8]
8002a5f4:	e59f1018 	ldr	r1, [pc, #24]	@ 8002a614 <pic_disable+0x74>
8002a5f8:	e7821103 	str	r1, [r2, r3, lsl #2]
8002a5fc:	e1a00000 	nop			@ (mov r0, r0)
8002a600:	e24bd004 	sub	sp, fp, #4
8002a604:	e8bd8800 	pop	{fp, pc}
8002a608:	8002b568 	.word	0x8002b568
8002a60c:	800b1f50 	.word	0x800b1f50
8002a610:	800b1f54 	.word	0x800b1f54
8002a614:	8002a474 	.word	0x8002a474

8002a618 <pic_dispatch>:
8002a618:	e92d4800 	push	{fp, lr}
8002a61c:	e28db004 	add	fp, sp, #4
8002a620:	e24dd010 	sub	sp, sp, #16
8002a624:	e50b0010 	str	r0, [fp, #-16]
8002a628:	e59f3080 	ldr	r3, [pc, #128]	@ 8002a6b0 <pic_dispatch+0x98>
8002a62c:	e5933000 	ldr	r3, [r3]
8002a630:	e5933000 	ldr	r3, [r3]
8002a634:	e50b300c 	str	r3, [fp, #-12]
8002a638:	e3a03000 	mov	r3, #0
8002a63c:	e50b3008 	str	r3, [fp, #-8]
8002a640:	ea000010 	b	8002a688 <pic_dispatch+0x70>
8002a644:	e3a02001 	mov	r2, #1
8002a648:	e51b3008 	ldr	r3, [fp, #-8]
8002a64c:	e1a03312 	lsl	r3, r2, r3
8002a650:	e1a02003 	mov	r2, r3
8002a654:	e51b300c 	ldr	r3, [fp, #-12]
8002a658:	e0033002 	and	r3, r3, r2
8002a65c:	e3530000 	cmp	r3, #0
8002a660:	0a000005 	beq	8002a67c <pic_dispatch+0x64>
8002a664:	e59f2048 	ldr	r2, [pc, #72]	@ 8002a6b4 <pic_dispatch+0x9c>
8002a668:	e51b3008 	ldr	r3, [fp, #-8]
8002a66c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002a670:	e51b1008 	ldr	r1, [fp, #-8]
8002a674:	e51b0010 	ldr	r0, [fp, #-16]
8002a678:	e12fff33 	blx	r3
8002a67c:	e51b3008 	ldr	r3, [fp, #-8]
8002a680:	e2833001 	add	r3, r3, #1
8002a684:	e50b3008 	str	r3, [fp, #-8]
8002a688:	e51b3008 	ldr	r3, [fp, #-8]
8002a68c:	e353001f 	cmp	r3, #31
8002a690:	daffffeb 	ble	8002a644 <pic_dispatch+0x2c>
8002a694:	e59f3014 	ldr	r3, [pc, #20]	@ 8002a6b0 <pic_dispatch+0x98>
8002a698:	e5933000 	ldr	r3, [r3]
8002a69c:	e5933000 	ldr	r3, [r3]
8002a6a0:	e50b300c 	str	r3, [fp, #-12]
8002a6a4:	e1a00000 	nop			@ (mov r0, r0)
8002a6a8:	e24bd004 	sub	sp, fp, #4
8002a6ac:	e8bd8800 	pop	{fp, pc}
8002a6b0:	800b1f50 	.word	0x800b1f50
8002a6b4:	800b1f54 	.word	0x800b1f54

8002a6b8 <ack_timer>:
8002a6b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a6bc:	e28db000 	add	fp, sp, #0
8002a6c0:	e24dd00c 	sub	sp, sp, #12
8002a6c4:	e59f3020 	ldr	r3, [pc, #32]	@ 8002a6ec <ack_timer+0x34>
8002a6c8:	e50b3008 	str	r3, [fp, #-8]
8002a6cc:	e51b3008 	ldr	r3, [fp, #-8]
8002a6d0:	e283300c 	add	r3, r3, #12
8002a6d4:	e3a02001 	mov	r2, #1
8002a6d8:	e5832000 	str	r2, [r3]
8002a6dc:	e1a00000 	nop			@ (mov r0, r0)
8002a6e0:	e28bd000 	add	sp, fp, #0
8002a6e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a6e8:	e12fff1e 	bx	lr
8002a6ec:	901e2000 	.word	0x901e2000

8002a6f0 <timer_init>:
8002a6f0:	e92d4800 	push	{fp, lr}
8002a6f4:	e28db004 	add	fp, sp, #4
8002a6f8:	e24dd010 	sub	sp, sp, #16
8002a6fc:	e50b0010 	str	r0, [fp, #-16]
8002a700:	e59f3050 	ldr	r3, [pc, #80]	@ 8002a758 <timer_init+0x68>
8002a704:	e50b3008 	str	r3, [fp, #-8]
8002a708:	e59f104c 	ldr	r1, [pc, #76]	@ 8002a75c <timer_init+0x6c>
8002a70c:	e59f004c 	ldr	r0, [pc, #76]	@ 8002a760 <timer_init+0x70>
8002a710:	ebfff128 	bl	80026bb8 <initlock>
8002a714:	e51b1010 	ldr	r1, [fp, #-16]
8002a718:	e59f0044 	ldr	r0, [pc, #68]	@ 8002a764 <timer_init+0x74>
8002a71c:	eb000109 	bl	8002ab48 <__divsi3>
8002a720:	e1a03000 	mov	r3, r0
8002a724:	e1a02003 	mov	r2, r3
8002a728:	e51b3008 	ldr	r3, [fp, #-8]
8002a72c:	e5832000 	str	r2, [r3]
8002a730:	e51b3008 	ldr	r3, [fp, #-8]
8002a734:	e2833008 	add	r3, r3, #8
8002a738:	e3a020e2 	mov	r2, #226	@ 0xe2
8002a73c:	e5832000 	str	r2, [r3]
8002a740:	e59f1020 	ldr	r1, [pc, #32]	@ 8002a768 <timer_init+0x78>
8002a744:	e3a00004 	mov	r0, #4
8002a748:	ebffff76 	bl	8002a528 <pic_enable>
8002a74c:	e1a00000 	nop			@ (mov r0, r0)
8002a750:	e24bd004 	sub	sp, fp, #4
8002a754:	e8bd8800 	pop	{fp, pc}
8002a758:	901e2000 	.word	0x901e2000
8002a75c:	8002b584 	.word	0x8002b584
8002a760:	800b1fd4 	.word	0x800b1fd4
8002a764:	000f4240 	.word	0x000f4240
8002a768:	8002a76c 	.word	0x8002a76c

8002a76c <isr_timer>:
8002a76c:	e92d4800 	push	{fp, lr}
8002a770:	e28db004 	add	fp, sp, #4
8002a774:	e24dd008 	sub	sp, sp, #8
8002a778:	e50b0008 	str	r0, [fp, #-8]
8002a77c:	e50b100c 	str	r1, [fp, #-12]
8002a780:	e59f0034 	ldr	r0, [pc, #52]	@ 8002a7bc <isr_timer+0x50>
8002a784:	ebfff11d 	bl	80026c00 <acquire>
8002a788:	e59f3030 	ldr	r3, [pc, #48]	@ 8002a7c0 <isr_timer+0x54>
8002a78c:	e5933000 	ldr	r3, [r3]
8002a790:	e2833001 	add	r3, r3, #1
8002a794:	e59f2024 	ldr	r2, [pc, #36]	@ 8002a7c0 <isr_timer+0x54>
8002a798:	e5823000 	str	r3, [r2]
8002a79c:	e59f001c 	ldr	r0, [pc, #28]	@ 8002a7c0 <isr_timer+0x54>
8002a7a0:	ebffeea8 	bl	80026248 <wakeup>
8002a7a4:	e59f0010 	ldr	r0, [pc, #16]	@ 8002a7bc <isr_timer+0x50>
8002a7a8:	ebfff11f 	bl	80026c2c <release>
8002a7ac:	ebffffc1 	bl	8002a6b8 <ack_timer>
8002a7b0:	e1a00000 	nop			@ (mov r0, r0)
8002a7b4:	e24bd004 	sub	sp, fp, #4
8002a7b8:	e8bd8800 	pop	{fp, pc}
8002a7bc:	800b1fd4 	.word	0x800b1fd4
8002a7c0:	800b2008 	.word	0x800b2008

8002a7c4 <micro_delay>:
8002a7c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a7c8:	e28db000 	add	fp, sp, #0
8002a7cc:	e24dd014 	sub	sp, sp, #20
8002a7d0:	e50b0010 	str	r0, [fp, #-16]
8002a7d4:	e59f3054 	ldr	r3, [pc, #84]	@ 8002a830 <micro_delay+0x6c>
8002a7d8:	e50b3008 	str	r3, [fp, #-8]
8002a7dc:	e51b3008 	ldr	r3, [fp, #-8]
8002a7e0:	e2833008 	add	r3, r3, #8
8002a7e4:	e3a02082 	mov	r2, #130	@ 0x82
8002a7e8:	e5832000 	str	r2, [r3]
8002a7ec:	e51b2010 	ldr	r2, [fp, #-16]
8002a7f0:	e51b3008 	ldr	r3, [fp, #-8]
8002a7f4:	e5832000 	str	r2, [r3]
8002a7f8:	e1a00000 	nop			@ (mov r0, r0)
8002a7fc:	e51b3008 	ldr	r3, [fp, #-8]
8002a800:	e2833004 	add	r3, r3, #4
8002a804:	e5933000 	ldr	r3, [r3]
8002a808:	e3530000 	cmp	r3, #0
8002a80c:	cafffffa 	bgt	8002a7fc <micro_delay+0x38>
8002a810:	e51b3008 	ldr	r3, [fp, #-8]
8002a814:	e2833008 	add	r3, r3, #8
8002a818:	e3a02000 	mov	r2, #0
8002a81c:	e5832000 	str	r2, [r3]
8002a820:	e1a00000 	nop			@ (mov r0, r0)
8002a824:	e28bd000 	add	sp, fp, #0
8002a828:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a82c:	e12fff1e 	bx	lr
8002a830:	901e2020 	.word	0x901e2020

8002a834 <uart_init>:
8002a834:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a838:	e28db000 	add	fp, sp, #0
8002a83c:	e24dd014 	sub	sp, sp, #20
8002a840:	e50b0010 	str	r0, [fp, #-16]
8002a844:	e59f20a4 	ldr	r2, [pc, #164]	@ 8002a8f0 <uart_init+0xbc>
8002a848:	e51b3010 	ldr	r3, [fp, #-16]
8002a84c:	e5823000 	str	r3, [r2]
8002a850:	e59f3098 	ldr	r3, [pc, #152]	@ 8002a8f0 <uart_init+0xbc>
8002a854:	e5933000 	ldr	r3, [r3]
8002a858:	e2833024 	add	r3, r3, #36	@ 0x24
8002a85c:	e3a0204e 	mov	r2, #78	@ 0x4e
8002a860:	e5832000 	str	r2, [r3]
8002a864:	e3a03c96 	mov	r3, #38400	@ 0x9600
8002a868:	e50b3008 	str	r3, [fp, #-8]
8002a86c:	e51b3008 	ldr	r3, [fp, #-8]
8002a870:	e2833e96 	add	r3, r3, #2400	@ 0x960
8002a874:	e1a02103 	lsl	r2, r3, #2
8002a878:	e59f3070 	ldr	r3, [pc, #112]	@ 8002a8f0 <uart_init+0xbc>
8002a87c:	e5933000 	ldr	r3, [r3]
8002a880:	e2833028 	add	r3, r3, #40	@ 0x28
8002a884:	e59f1068 	ldr	r1, [pc, #104]	@ 8002a8f4 <uart_init+0xc0>
8002a888:	e0821291 	umull	r1, r2, r1, r2
8002a88c:	e1a025a2 	lsr	r2, r2, #11
8002a890:	e5832000 	str	r2, [r3]
8002a894:	e59f3054 	ldr	r3, [pc, #84]	@ 8002a8f0 <uart_init+0xbc>
8002a898:	e5933000 	ldr	r3, [r3]
8002a89c:	e2833030 	add	r3, r3, #48	@ 0x30
8002a8a0:	e5933000 	ldr	r3, [r3]
8002a8a4:	e59f2044 	ldr	r2, [pc, #68]	@ 8002a8f0 <uart_init+0xbc>
8002a8a8:	e5922000 	ldr	r2, [r2]
8002a8ac:	e2822030 	add	r2, r2, #48	@ 0x30
8002a8b0:	e3833c03 	orr	r3, r3, #768	@ 0x300
8002a8b4:	e3833001 	orr	r3, r3, #1
8002a8b8:	e5823000 	str	r3, [r2]
8002a8bc:	e59f302c 	ldr	r3, [pc, #44]	@ 8002a8f0 <uart_init+0xbc>
8002a8c0:	e5933000 	ldr	r3, [r3]
8002a8c4:	e283302c 	add	r3, r3, #44	@ 0x2c
8002a8c8:	e5932000 	ldr	r2, [r3]
8002a8cc:	e59f301c 	ldr	r3, [pc, #28]	@ 8002a8f0 <uart_init+0xbc>
8002a8d0:	e5933000 	ldr	r3, [r3]
8002a8d4:	e283302c 	add	r3, r3, #44	@ 0x2c
8002a8d8:	e3822010 	orr	r2, r2, #16
8002a8dc:	e5832000 	str	r2, [r3]
8002a8e0:	e1a00000 	nop			@ (mov r0, r0)
8002a8e4:	e28bd000 	add	sp, fp, #0
8002a8e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a8ec:	e12fff1e 	bx	lr
8002a8f0:	800b200c 	.word	0x800b200c
8002a8f4:	1b4e81b5 	.word	0x1b4e81b5

8002a8f8 <uart_enable_rx>:
8002a8f8:	e92d4800 	push	{fp, lr}
8002a8fc:	e28db004 	add	fp, sp, #4
8002a900:	e59f3020 	ldr	r3, [pc, #32]	@ 8002a928 <uart_enable_rx+0x30>
8002a904:	e5933000 	ldr	r3, [r3]
8002a908:	e2833038 	add	r3, r3, #56	@ 0x38
8002a90c:	e3a02010 	mov	r2, #16
8002a910:	e5832000 	str	r2, [r3]
8002a914:	e59f1010 	ldr	r1, [pc, #16]	@ 8002a92c <uart_enable_rx+0x34>
8002a918:	e3a0000c 	mov	r0, #12
8002a91c:	ebffff01 	bl	8002a528 <pic_enable>
8002a920:	e1a00000 	nop			@ (mov r0, r0)
8002a924:	e8bd8800 	pop	{fp, pc}
8002a928:	800b200c 	.word	0x800b200c
8002a92c:	8002a9d4 	.word	0x8002a9d4

8002a930 <uartputc>:
8002a930:	e92d4800 	push	{fp, lr}
8002a934:	e28db004 	add	fp, sp, #4
8002a938:	e24dd008 	sub	sp, sp, #8
8002a93c:	e50b0008 	str	r0, [fp, #-8]
8002a940:	ea000001 	b	8002a94c <uartputc+0x1c>
8002a944:	e3a0000a 	mov	r0, #10
8002a948:	ebffff9d 	bl	8002a7c4 <micro_delay>
8002a94c:	e59f3030 	ldr	r3, [pc, #48]	@ 8002a984 <uartputc+0x54>
8002a950:	e5933000 	ldr	r3, [r3]
8002a954:	e2833018 	add	r3, r3, #24
8002a958:	e5933000 	ldr	r3, [r3]
8002a95c:	e2033020 	and	r3, r3, #32
8002a960:	e3530000 	cmp	r3, #0
8002a964:	1afffff6 	bne	8002a944 <uartputc+0x14>
8002a968:	e59f3014 	ldr	r3, [pc, #20]	@ 8002a984 <uartputc+0x54>
8002a96c:	e5933000 	ldr	r3, [r3]
8002a970:	e51b2008 	ldr	r2, [fp, #-8]
8002a974:	e5832000 	str	r2, [r3]
8002a978:	e1a00000 	nop			@ (mov r0, r0)
8002a97c:	e24bd004 	sub	sp, fp, #4
8002a980:	e8bd8800 	pop	{fp, pc}
8002a984:	800b200c 	.word	0x800b200c

8002a988 <uartgetc>:
8002a988:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a98c:	e28db000 	add	fp, sp, #0
8002a990:	e59f3038 	ldr	r3, [pc, #56]	@ 8002a9d0 <uartgetc+0x48>
8002a994:	e5933000 	ldr	r3, [r3]
8002a998:	e2833018 	add	r3, r3, #24
8002a99c:	e5933000 	ldr	r3, [r3]
8002a9a0:	e2033010 	and	r3, r3, #16
8002a9a4:	e3530000 	cmp	r3, #0
8002a9a8:	0a000001 	beq	8002a9b4 <uartgetc+0x2c>
8002a9ac:	e3e03000 	mvn	r3, #0
8002a9b0:	ea000002 	b	8002a9c0 <uartgetc+0x38>
8002a9b4:	e59f3014 	ldr	r3, [pc, #20]	@ 8002a9d0 <uartgetc+0x48>
8002a9b8:	e5933000 	ldr	r3, [r3]
8002a9bc:	e5933000 	ldr	r3, [r3]
8002a9c0:	e1a00003 	mov	r0, r3
8002a9c4:	e28bd000 	add	sp, fp, #0
8002a9c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a9cc:	e12fff1e 	bx	lr
8002a9d0:	800b200c 	.word	0x800b200c

8002a9d4 <isr_uart>:
8002a9d4:	e92d4800 	push	{fp, lr}
8002a9d8:	e28db004 	add	fp, sp, #4
8002a9dc:	e24dd008 	sub	sp, sp, #8
8002a9e0:	e50b0008 	str	r0, [fp, #-8]
8002a9e4:	e50b100c 	str	r1, [fp, #-12]
8002a9e8:	e59f303c 	ldr	r3, [pc, #60]	@ 8002aa2c <isr_uart+0x58>
8002a9ec:	e5933000 	ldr	r3, [r3]
8002a9f0:	e2833040 	add	r3, r3, #64	@ 0x40
8002a9f4:	e5933000 	ldr	r3, [r3]
8002a9f8:	e2033010 	and	r3, r3, #16
8002a9fc:	e3530000 	cmp	r3, #0
8002aa00:	0a000001 	beq	8002aa0c <isr_uart+0x38>
8002aa04:	e59f0024 	ldr	r0, [pc, #36]	@ 8002aa30 <isr_uart+0x5c>
8002aa08:	ebffdc6d 	bl	80021bc4 <consoleintr>
8002aa0c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002aa2c <isr_uart+0x58>
8002aa10:	e5933000 	ldr	r3, [r3]
8002aa14:	e2833044 	add	r3, r3, #68	@ 0x44
8002aa18:	e3a02030 	mov	r2, #48	@ 0x30
8002aa1c:	e5832000 	str	r2, [r3]
8002aa20:	e1a00000 	nop			@ (mov r0, r0)
8002aa24:	e24bd004 	sub	sp, fp, #4
8002aa28:	e8bd8800 	pop	{fp, pc}
8002aa2c:	800b200c 	.word	0x800b200c
8002aa30:	8002a988 	.word	0x8002a988

8002aa34 <__udivsi3>:
8002aa34:	e2512001 	subs	r2, r1, #1
8002aa38:	012fff1e 	bxeq	lr
8002aa3c:	3a000036 	bcc	8002ab1c <__udivsi3+0xe8>
8002aa40:	e1500001 	cmp	r0, r1
8002aa44:	9a000022 	bls	8002aad4 <__udivsi3+0xa0>
8002aa48:	e1110002 	tst	r1, r2
8002aa4c:	0a000023 	beq	8002aae0 <__udivsi3+0xac>
8002aa50:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002aa54:	01a01181 	lsleq	r1, r1, #3
8002aa58:	03a03008 	moveq	r3, #8
8002aa5c:	13a03001 	movne	r3, #1
8002aa60:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002aa64:	31510000 	cmpcc	r1, r0
8002aa68:	31a01201 	lslcc	r1, r1, #4
8002aa6c:	31a03203 	lslcc	r3, r3, #4
8002aa70:	3afffffa 	bcc	8002aa60 <__udivsi3+0x2c>
8002aa74:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
8002aa78:	31510000 	cmpcc	r1, r0
8002aa7c:	31a01081 	lslcc	r1, r1, #1
8002aa80:	31a03083 	lslcc	r3, r3, #1
8002aa84:	3afffffa 	bcc	8002aa74 <__udivsi3+0x40>
8002aa88:	e3a02000 	mov	r2, #0
8002aa8c:	e1500001 	cmp	r0, r1
8002aa90:	20400001 	subcs	r0, r0, r1
8002aa94:	21822003 	orrcs	r2, r2, r3
8002aa98:	e15000a1 	cmp	r0, r1, lsr #1
8002aa9c:	204000a1 	subcs	r0, r0, r1, lsr #1
8002aaa0:	218220a3 	orrcs	r2, r2, r3, lsr #1
8002aaa4:	e1500121 	cmp	r0, r1, lsr #2
8002aaa8:	20400121 	subcs	r0, r0, r1, lsr #2
8002aaac:	21822123 	orrcs	r2, r2, r3, lsr #2
8002aab0:	e15001a1 	cmp	r0, r1, lsr #3
8002aab4:	204001a1 	subcs	r0, r0, r1, lsr #3
8002aab8:	218221a3 	orrcs	r2, r2, r3, lsr #3
8002aabc:	e3500000 	cmp	r0, #0
8002aac0:	11b03223 	lsrsne	r3, r3, #4
8002aac4:	11a01221 	lsrne	r1, r1, #4
8002aac8:	1affffef 	bne	8002aa8c <__udivsi3+0x58>
8002aacc:	e1a00002 	mov	r0, r2
8002aad0:	e12fff1e 	bx	lr
8002aad4:	03a00001 	moveq	r0, #1
8002aad8:	13a00000 	movne	r0, #0
8002aadc:	e12fff1e 	bx	lr
8002aae0:	e3510801 	cmp	r1, #65536	@ 0x10000
8002aae4:	21a01821 	lsrcs	r1, r1, #16
8002aae8:	23a02010 	movcs	r2, #16
8002aaec:	33a02000 	movcc	r2, #0
8002aaf0:	e3510c01 	cmp	r1, #256	@ 0x100
8002aaf4:	21a01421 	lsrcs	r1, r1, #8
8002aaf8:	22822008 	addcs	r2, r2, #8
8002aafc:	e3510010 	cmp	r1, #16
8002ab00:	21a01221 	lsrcs	r1, r1, #4
8002ab04:	22822004 	addcs	r2, r2, #4
8002ab08:	e3510004 	cmp	r1, #4
8002ab0c:	82822003 	addhi	r2, r2, #3
8002ab10:	908220a1 	addls	r2, r2, r1, lsr #1
8002ab14:	e1a00230 	lsr	r0, r0, r2
8002ab18:	e12fff1e 	bx	lr
8002ab1c:	e3500000 	cmp	r0, #0
8002ab20:	13e00000 	mvnne	r0, #0
8002ab24:	ea000059 	b	8002ac90 <__aeabi_idiv0>

8002ab28 <__aeabi_uidivmod>:
8002ab28:	e3510000 	cmp	r1, #0
8002ab2c:	0afffffa 	beq	8002ab1c <__udivsi3+0xe8>
8002ab30:	e92d4003 	push	{r0, r1, lr}
8002ab34:	ebffffbe 	bl	8002aa34 <__udivsi3>
8002ab38:	e8bd4006 	pop	{r1, r2, lr}
8002ab3c:	e0030092 	mul	r3, r2, r0
8002ab40:	e0411003 	sub	r1, r1, r3
8002ab44:	e12fff1e 	bx	lr

8002ab48 <__divsi3>:
8002ab48:	e3510000 	cmp	r1, #0
8002ab4c:	0a000043 	beq	8002ac60 <.divsi3_skip_div0_test+0x110>

8002ab50 <.divsi3_skip_div0_test>:
8002ab50:	e020c001 	eor	ip, r0, r1
8002ab54:	42611000 	rsbmi	r1, r1, #0
8002ab58:	e2512001 	subs	r2, r1, #1
8002ab5c:	0a000027 	beq	8002ac00 <.divsi3_skip_div0_test+0xb0>
8002ab60:	e1b03000 	movs	r3, r0
8002ab64:	42603000 	rsbmi	r3, r0, #0
8002ab68:	e1530001 	cmp	r3, r1
8002ab6c:	9a000026 	bls	8002ac0c <.divsi3_skip_div0_test+0xbc>
8002ab70:	e1110002 	tst	r1, r2
8002ab74:	0a000028 	beq	8002ac1c <.divsi3_skip_div0_test+0xcc>
8002ab78:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002ab7c:	01a01181 	lsleq	r1, r1, #3
8002ab80:	03a02008 	moveq	r2, #8
8002ab84:	13a02001 	movne	r2, #1
8002ab88:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002ab8c:	31510003 	cmpcc	r1, r3
8002ab90:	31a01201 	lslcc	r1, r1, #4
8002ab94:	31a02202 	lslcc	r2, r2, #4
8002ab98:	3afffffa 	bcc	8002ab88 <.divsi3_skip_div0_test+0x38>
8002ab9c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
8002aba0:	31510003 	cmpcc	r1, r3
8002aba4:	31a01081 	lslcc	r1, r1, #1
8002aba8:	31a02082 	lslcc	r2, r2, #1
8002abac:	3afffffa 	bcc	8002ab9c <.divsi3_skip_div0_test+0x4c>
8002abb0:	e3a00000 	mov	r0, #0
8002abb4:	e1530001 	cmp	r3, r1
8002abb8:	20433001 	subcs	r3, r3, r1
8002abbc:	21800002 	orrcs	r0, r0, r2
8002abc0:	e15300a1 	cmp	r3, r1, lsr #1
8002abc4:	204330a1 	subcs	r3, r3, r1, lsr #1
8002abc8:	218000a2 	orrcs	r0, r0, r2, lsr #1
8002abcc:	e1530121 	cmp	r3, r1, lsr #2
8002abd0:	20433121 	subcs	r3, r3, r1, lsr #2
8002abd4:	21800122 	orrcs	r0, r0, r2, lsr #2
8002abd8:	e15301a1 	cmp	r3, r1, lsr #3
8002abdc:	204331a1 	subcs	r3, r3, r1, lsr #3
8002abe0:	218001a2 	orrcs	r0, r0, r2, lsr #3
8002abe4:	e3530000 	cmp	r3, #0
8002abe8:	11b02222 	lsrsne	r2, r2, #4
8002abec:	11a01221 	lsrne	r1, r1, #4
8002abf0:	1affffef 	bne	8002abb4 <.divsi3_skip_div0_test+0x64>
8002abf4:	e35c0000 	cmp	ip, #0
8002abf8:	42600000 	rsbmi	r0, r0, #0
8002abfc:	e12fff1e 	bx	lr
8002ac00:	e13c0000 	teq	ip, r0
8002ac04:	42600000 	rsbmi	r0, r0, #0
8002ac08:	e12fff1e 	bx	lr
8002ac0c:	33a00000 	movcc	r0, #0
8002ac10:	01a00fcc 	asreq	r0, ip, #31
8002ac14:	03800001 	orreq	r0, r0, #1
8002ac18:	e12fff1e 	bx	lr
8002ac1c:	e3510801 	cmp	r1, #65536	@ 0x10000
8002ac20:	21a01821 	lsrcs	r1, r1, #16
8002ac24:	23a02010 	movcs	r2, #16
8002ac28:	33a02000 	movcc	r2, #0
8002ac2c:	e3510c01 	cmp	r1, #256	@ 0x100
8002ac30:	21a01421 	lsrcs	r1, r1, #8
8002ac34:	22822008 	addcs	r2, r2, #8
8002ac38:	e3510010 	cmp	r1, #16
8002ac3c:	21a01221 	lsrcs	r1, r1, #4
8002ac40:	22822004 	addcs	r2, r2, #4
8002ac44:	e3510004 	cmp	r1, #4
8002ac48:	82822003 	addhi	r2, r2, #3
8002ac4c:	908220a1 	addls	r2, r2, r1, lsr #1
8002ac50:	e35c0000 	cmp	ip, #0
8002ac54:	e1a00233 	lsr	r0, r3, r2
8002ac58:	42600000 	rsbmi	r0, r0, #0
8002ac5c:	e12fff1e 	bx	lr
8002ac60:	e3500000 	cmp	r0, #0
8002ac64:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
8002ac68:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
8002ac6c:	ea000007 	b	8002ac90 <__aeabi_idiv0>

8002ac70 <__aeabi_idivmod>:
8002ac70:	e3510000 	cmp	r1, #0
8002ac74:	0afffff9 	beq	8002ac60 <.divsi3_skip_div0_test+0x110>
8002ac78:	e92d4003 	push	{r0, r1, lr}
8002ac7c:	ebffffb3 	bl	8002ab50 <.divsi3_skip_div0_test>
8002ac80:	e8bd4006 	pop	{r1, r2, lr}
8002ac84:	e0030092 	mul	r3, r2, r0
8002ac88:	e0411003 	sub	r1, r1, r3
8002ac8c:	e12fff1e 	bx	lr

8002ac90 <__aeabi_idiv0>:
8002ac90:	e12fff1e 	bx	lr
