
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
   10038:	00010570 	.word	0x00010570
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
   1016c:	000104f8 	.word	0x000104f8

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
   101b4:	00010568 	.word	0x00010568

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
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

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
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
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
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b2000 	.word	0x800b2000
   10408:	800ab114 	.word	0x800ab114

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b2000 	.word	0x800b2000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	800246f4 	.word	0x800246f4
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
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
8002067c:	800ae64c 	.word	0x800ae64c

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
8002071c:	8002a654 	.word	0x8002a654
80020720:	800ae64c 	.word	0x800ae64c
80020724:	8002a66c 	.word	0x8002a66c
80020728:	8002a680 	.word	0x8002a680

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
8002089c:	8002a694 	.word	0x8002a694
800208a0:	8002a698 	.word	0x8002a698

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
800208e4:	eb0017c7 	bl	80026808 <initlock>
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
8002099c:	8002a6a4 	.word	0x8002a6a4
800209a0:	800ab114 	.word	0x800ab114
800209a4:	800ac638 	.word	0x800ac638
800209a8:	800ab148 	.word	0x800ab148

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb0017a1 	bl	80026850 <acquire>
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
80020a30:	eb001791 	bl	8002687c <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb00149f 	bl	80025cc8 <sleep>
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
80020acc:	eb00176a 	bl	8002687c <release>
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
80020b08:	800ab114 	.word	0x800ab114
80020b0c:	800ac638 	.word	0x800ac638
80020b10:	8002a6ac 	.word	0x8002a6ac

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
80020b50:	eb000f34 	bl	80024828 <iderw>
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
80020ba8:	eb000f1e 	bl	80024828 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	8002a6c0 	.word	0x8002a6c0

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
80020bec:	eb001717 	bl	80026850 <acquire>
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
80020c78:	eb001486 	bl	80025e98 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0016fd 	bl	8002687c <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	8002a6c8 	.word	0x8002a6c8
80020c94:	800ab114 	.word	0x800ab114
80020c98:	800ac638 	.word	0x800ac638

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
80020cf4:	800ac850 	.word	0x800ac850

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
80020d34:	800ac850 	.word	0x800ac850

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
80020d74:	800ac850 	.word	0x800ac850

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
80020dc8:	eb00168e 	bl	80026808 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	8002a6d0 	.word	0x8002a6d0
80020dd8:	800ac850 	.word	0x800ac850

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
80020f78:	800ac850 	.word	0x800ac850
80020f7c:	800ac890 	.word	0x800ac890
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
80021118:	800ac850 	.word	0x800ac850
8002111c:	8002a6d8 	.word	0x8002a6d8
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
80021268:	800ac850 	.word	0x800ac850
8002126c:	8002a6e8 	.word	0x8002a6e8
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
8002135c:	800ac850 	.word	0x800ac850
80021360:	8002a6f8 	.word	0x8002a6f8

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
8002141c:	800ac850 	.word	0x800ac850
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
80021458:	eb0014fc 	bl	80026850 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb001502 	bl	8002687c <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	8002a710 	.word	0x8002a710
80021484:	800ac850 	.word	0x800ac850

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
8002157c:	8002a730 	.word	0x8002a730

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
800215dc:	eb00149b 	bl	80026850 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb0014a1 	bl	8002687c <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	8002a744 	.word	0x8002a744
80021604:	800ac850 	.word	0x800ac850

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
80021760:	8002a774 	.word	0x8002a774

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
800217d4:	eb002343 	bl	8002a4e8 <__aeabi_uidivmod>
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
8002180c:	eb0022f8 	bl	8002a3f4 <__udivsi3>
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
80021890:	8002b000 	.word	0x8002b000

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
800218c0:	eb0013e2 	bl	80026850 <acquire>
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
80021ad0:	eb001369 	bl	8002687c <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ac8cc 	.word	0x800ac8cc
80021aec:	8002a784 	.word	0x8002a784
80021af0:	8002a790 	.word	0x8002a790

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
80021b48:	800ac8cc 	.word	0x800ac8cc
80021b4c:	800ae64c 	.word	0x800ae64c
80021b50:	8002a798 	.word	0x8002a798
80021b54:	800ac8c8 	.word	0x800ac8c8

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
80021b94:	eb0021d5 	bl	8002a2f0 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb0021d3 	bl	8002a2f0 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb0021d1 	bl	8002a2f0 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb0021ce 	bl	8002a2f0 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ac8c8 	.word	0x800ac8c8

80021bc4 <consoleintr>:
80021bc4:	e92d4800 	push	{fp, lr}
80021bc8:	e28db004 	add	fp, sp, #4
80021bcc:	e24dd010 	sub	sp, sp, #16
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f0258 	ldr	r0, [pc, #600]	@ 80021e34 <consoleintr+0x270>
80021bd8:	eb00131c 	bl	80026850 <acquire>
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
80021c28:	eb0010d4 	bl	80025f80 <procdump>
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
80021d1c:	eb00105d 	bl	80025e98 <wakeup>
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
80021dec:	eb001029 	bl	80025e98 <wakeup>
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
80021e24:	eb001294 	bl	8002687c <release>
80021e28:	e1a00000 	nop			@ (mov r0, r0)
80021e2c:	e24bd004 	sub	sp, fp, #4
80021e30:	e8bd8800 	pop	{fp, pc}
80021e34:	800ac904 	.word	0x800ac904
80021e38:	800acb38 	.word	0x800acb38

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
80021e68:	eb001278 	bl	80026850 <acquire>
80021e6c:	ea000037 	b	80021f50 <consoleread+0x114>
80021e70:	e59f3120 	ldr	r3, [pc, #288]	@ 80021f98 <consoleread+0x15c>
80021e74:	e5933000 	ldr	r3, [r3]
80021e78:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021e7c:	e3530000 	cmp	r3, #0
80021e80:	0a000005 	beq	80021e9c <consoleread+0x60>
80021e84:	e59f0108 	ldr	r0, [pc, #264]	@ 80021f94 <consoleread+0x158>
80021e88:	eb00127b 	bl	8002687c <release>
80021e8c:	e51b0010 	ldr	r0, [fp, #-16]
80021e90:	eb0004dd 	bl	8002320c <ilock>
80021e94:	e3e03000 	mvn	r3, #0
80021e98:	ea00003a 	b	80021f88 <consoleread+0x14c>
80021e9c:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021f94 <consoleread+0x158>
80021ea0:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021f9c <consoleread+0x160>
80021ea4:	eb000f87 	bl	80025cc8 <sleep>
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
80021f70:	eb001241 	bl	8002687c <release>
80021f74:	e51b0010 	ldr	r0, [fp, #-16]
80021f78:	eb0004a3 	bl	8002320c <ilock>
80021f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f80:	e51b2008 	ldr	r2, [fp, #-8]
80021f84:	e0423003 	sub	r3, r2, r3
80021f88:	e1a00003 	mov	r0, r3
80021f8c:	e24bd004 	sub	sp, fp, #4
80021f90:	e8bd8800 	pop	{fp, pc}
80021f94:	800ac904 	.word	0x800ac904
80021f98:	800b0f94 	.word	0x800b0f94
80021f9c:	800acb38 	.word	0x800acb38

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
80021fc4:	eb001221 	bl	80026850 <acquire>
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
8002200c:	eb00121a 	bl	8002687c <release>
80022010:	e51b0010 	ldr	r0, [fp, #-16]
80022014:	eb00047c 	bl	8002320c <ilock>
80022018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002201c:	e1a00003 	mov	r0, r3
80022020:	e24bd004 	sub	sp, fp, #4
80022024:	e8bd8800 	pop	{fp, pc}
80022028:	800ac8cc 	.word	0x800ac8cc

8002202c <consoleinit>:
8002202c:	e92d4800 	push	{fp, lr}
80022030:	e28db004 	add	fp, sp, #4
80022034:	e59f103c 	ldr	r1, [pc, #60]	@ 80022078 <consoleinit+0x4c>
80022038:	e59f003c 	ldr	r0, [pc, #60]	@ 8002207c <consoleinit+0x50>
8002203c:	eb0011f1 	bl	80026808 <initlock>
80022040:	e59f1038 	ldr	r1, [pc, #56]	@ 80022080 <consoleinit+0x54>
80022044:	e59f0038 	ldr	r0, [pc, #56]	@ 80022084 <consoleinit+0x58>
80022048:	eb0011ee 	bl	80026808 <initlock>
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
80022078:	8002a7a8 	.word	0x8002a7a8
8002207c:	800ac8cc 	.word	0x800ac8cc
80022080:	8002a7b0 	.word	0x8002a7b0
80022084:	800ac904 	.word	0x800ac904
80022088:	800acb44 	.word	0x800acb44
8002208c:	80021fa0 	.word	0x80021fa0
80022090:	80021e3c 	.word	0x80021e3c

80022094 <exec>:
80022094:	e92d4810 	push	{r4, fp, lr}
80022098:	e28db008 	add	fp, sp, #8
8002209c:	e24ddf49 	sub	sp, sp, #292	@ 0x124
800220a0:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
800220a4:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
800220a8:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
800220ac:	eb000829 	bl	80024158 <namei>
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
800220e0:	eb0005f5 	bl	800238bc <readi>
800220e4:	e1a03000 	mov	r3, r0
800220e8:	e3530033 	cmp	r3, #51	@ 0x33
800220ec:	9a00010f 	bls	80022530 <exec+0x49c>
800220f0:	e51b306c 	ldr	r3, [fp, #-108]	@ 0xffffff94
800220f4:	e59f24c8 	ldr	r2, [pc, #1224]	@ 800225c4 <exec+0x530>
800220f8:	e1530002 	cmp	r3, r2
800220fc:	1a00010d 	bne	80022538 <exec+0x4a4>
80022100:	e3a03000 	mov	r3, #0
80022104:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022108:	eb001c59 	bl	80029274 <kpt_alloc>
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
80022148:	eb0005db 	bl	800238bc <readi>
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
8002218c:	eb001d76 	bl	8002976c <allocuvm>
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
800221c4:	eb001d08 	bl	800295ec <loaduvm>
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
80022244:	eb001d48 	bl	8002976c <allocuvm>
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
800222a4:	eb001c4d 	bl	800293e0 <mappages>
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
800222d0:	eb001db1 	bl	8002999c <clearpteu>
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
80022370:	eb001e18 	bl	80029bd8 <copyout>
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
80022440:	eb001de4 	bl	80029bd8 <copyout>
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
8002251c:	eb001bfa 	bl	8002950c <switchuvm>
80022520:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
80022524:	eb001cec 	bl	800298dc <freevm>
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
8002259c:	eb001cce 	bl	800298dc <freevm>
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
800225c8:	800b0f94 	.word	0x800b0f94

800225cc <fileinit>:
800225cc:	e92d4800 	push	{fp, lr}
800225d0:	e28db004 	add	fp, sp, #4
800225d4:	e59f100c 	ldr	r1, [pc, #12]	@ 800225e8 <fileinit+0x1c>
800225d8:	e59f000c 	ldr	r0, [pc, #12]	@ 800225ec <fileinit+0x20>
800225dc:	eb001089 	bl	80026808 <initlock>
800225e0:	e1a00000 	nop			@ (mov r0, r0)
800225e4:	e8bd8800 	pop	{fp, pc}
800225e8:	8002a7b8 	.word	0x8002a7b8
800225ec:	800acb94 	.word	0x800acb94

800225f0 <filealloc>:
800225f0:	e92d4800 	push	{fp, lr}
800225f4:	e28db004 	add	fp, sp, #4
800225f8:	e24dd008 	sub	sp, sp, #8
800225fc:	e59f006c 	ldr	r0, [pc, #108]	@ 80022670 <filealloc+0x80>
80022600:	eb001092 	bl	80026850 <acquire>
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
80022630:	eb001091 	bl	8002687c <release>
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
8002265c:	eb001086 	bl	8002687c <release>
80022660:	e3a03000 	mov	r3, #0
80022664:	e1a00003 	mov	r0, r3
80022668:	e24bd004 	sub	sp, fp, #4
8002266c:	e8bd8800 	pop	{fp, pc}
80022670:	800acb94 	.word	0x800acb94
80022674:	800acbc8 	.word	0x800acbc8
80022678:	800ad528 	.word	0x800ad528

8002267c <filedup>:
8002267c:	e92d4800 	push	{fp, lr}
80022680:	e28db004 	add	fp, sp, #4
80022684:	e24dd008 	sub	sp, sp, #8
80022688:	e50b0008 	str	r0, [fp, #-8]
8002268c:	e59f0044 	ldr	r0, [pc, #68]	@ 800226d8 <filedup+0x5c>
80022690:	eb00106e 	bl	80026850 <acquire>
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
800226c4:	eb00106c 	bl	8002687c <release>
800226c8:	e51b3008 	ldr	r3, [fp, #-8]
800226cc:	e1a00003 	mov	r0, r3
800226d0:	e24bd004 	sub	sp, fp, #4
800226d4:	e8bd8800 	pop	{fp, pc}
800226d8:	800acb94 	.word	0x800acb94
800226dc:	8002a7c0 	.word	0x8002a7c0

800226e0 <fileclose>:
800226e0:	e92d4800 	push	{fp, lr}
800226e4:	e28db004 	add	fp, sp, #4
800226e8:	e24dd020 	sub	sp, sp, #32
800226ec:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800226f0:	e59f00d0 	ldr	r0, [pc, #208]	@ 800227c8 <fileclose+0xe8>
800226f4:	eb001055 	bl	80026850 <acquire>
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
80022738:	eb00104f 	bl	8002687c <release>
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
80022778:	eb00103f 	bl	8002687c <release>
8002277c:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022780:	e3530001 	cmp	r3, #1
80022784:	1a000005 	bne	800227a0 <fileclose+0xc0>
80022788:	e51b3010 	ldr	r3, [fp, #-16]
8002278c:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022790:	e1a01002 	mov	r1, r2
80022794:	e1a00003 	mov	r0, r3
80022798:	eb0008e8 	bl	80024b40 <pipeclose>
8002279c:	ea000007 	b	800227c0 <fileclose+0xe0>
800227a0:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800227a4:	e3530002 	cmp	r3, #2
800227a8:	1a000004 	bne	800227c0 <fileclose+0xe0>
800227ac:	eb000742 	bl	800244bc <begin_trans>
800227b0:	e51b300c 	ldr	r3, [fp, #-12]
800227b4:	e1a00003 	mov	r0, r3
800227b8:	eb000319 	bl	80023424 <iput>
800227bc:	eb000752 	bl	8002450c <commit_trans>
800227c0:	e24bd004 	sub	sp, fp, #4
800227c4:	e8bd8800 	pop	{fp, pc}
800227c8:	800acb94 	.word	0x800acb94
800227cc:	8002a7c8 	.word	0x8002a7c8

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
80022814:	eb00040a 	bl	80023844 <stati>
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
80022894:	eb000923 	bl	80024d28 <piperead>
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
800228d8:	eb0003f7 	bl	800238bc <readi>
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
80022930:	8002a7d4 	.word	0x8002a7d4

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
80022988:	eb00089f 	bl	80024c0c <pipewrite>
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
800229e0:	eb0006b5 	bl	800244bc <begin_trans>
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
80022a14:	eb000423 	bl	80023aa8 <writei>
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
80022a50:	eb0006ad 	bl	8002450c <commit_trans>
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
80022ad4:	8002a7e0 	.word	0x8002a7e0
80022ad8:	8002a7f0 	.word	0x8002a7f0

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
80022b78:	eb00067b 	bl	8002456c <log_write>
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
80022cb4:	eb00062c 	bl	8002456c <log_write>
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
80022d54:	8002a7fc 	.word	0x8002a7fc

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
80022e64:	eb0005c0 	bl	8002456c <log_write>
80022e68:	e51b0008 	ldr	r0, [fp, #-8]
80022e6c:	ebfff752 	bl	80020bbc <brelse>
80022e70:	e1a00000 	nop			@ (mov r0, r0)
80022e74:	e24bd004 	sub	sp, fp, #4
80022e78:	e8bd8800 	pop	{fp, pc}
80022e7c:	8002a814 	.word	0x8002a814

80022e80 <iinit>:
80022e80:	e92d4800 	push	{fp, lr}
80022e84:	e28db004 	add	fp, sp, #4
80022e88:	e59f100c 	ldr	r1, [pc, #12]	@ 80022e9c <iinit+0x1c>
80022e8c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ea0 <iinit+0x20>
80022e90:	eb000e5c 	bl	80026808 <initlock>
80022e94:	e1a00000 	nop			@ (mov r0, r0)
80022e98:	e8bd8800 	pop	{fp, pc}
80022e9c:	8002a828 	.word	0x8002a828
80022ea0:	800ad528 	.word	0x800ad528

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
80022f44:	eb000588 	bl	8002456c <log_write>
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
80022fa0:	8002a830 	.word	0x8002a830

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
8002305c:	e3a02034 	mov	r2, #52	@ 0x34
80023060:	e1a01003 	mov	r1, r3
80023064:	ebfff457 	bl	800201c8 <memmove>
80023068:	e51b0008 	ldr	r0, [fp, #-8]
8002306c:	eb00053e 	bl	8002456c <log_write>
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
8002309c:	eb000deb 	bl	80026850 <acquire>
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
80023104:	eb000ddc 	bl	8002687c <release>
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
80023138:	e2833050 	add	r3, r3, #80	@ 0x50
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
800231a0:	eb000db5 	bl	8002687c <release>
800231a4:	e51b3008 	ldr	r3, [fp, #-8]
800231a8:	e1a00003 	mov	r0, r3
800231ac:	e24bd004 	sub	sp, fp, #4
800231b0:	e8bd8800 	pop	{fp, pc}
800231b4:	800ad528 	.word	0x800ad528
800231b8:	800ad55c 	.word	0x800ad55c
800231bc:	800ae4fc 	.word	0x800ae4fc
800231c0:	8002a844 	.word	0x8002a844

800231c4 <idup>:
800231c4:	e92d4800 	push	{fp, lr}
800231c8:	e28db004 	add	fp, sp, #4
800231cc:	e24dd008 	sub	sp, sp, #8
800231d0:	e50b0008 	str	r0, [fp, #-8]
800231d4:	e59f002c 	ldr	r0, [pc, #44]	@ 80023208 <idup+0x44>
800231d8:	eb000d9c 	bl	80026850 <acquire>
800231dc:	e51b3008 	ldr	r3, [fp, #-8]
800231e0:	e5933008 	ldr	r3, [r3, #8]
800231e4:	e2832001 	add	r2, r3, #1
800231e8:	e51b3008 	ldr	r3, [fp, #-8]
800231ec:	e5832008 	str	r2, [r3, #8]
800231f0:	e59f0010 	ldr	r0, [pc, #16]	@ 80023208 <idup+0x44>
800231f4:	eb000da0 	bl	8002687c <release>
800231f8:	e51b3008 	ldr	r3, [fp, #-8]
800231fc:	e1a00003 	mov	r0, r3
80023200:	e24bd004 	sub	sp, fp, #4
80023204:	e8bd8800 	pop	{fp, pc}
80023208:	800ad528 	.word	0x800ad528

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
80023244:	eb000d81 	bl	80026850 <acquire>
80023248:	ea000002 	b	80023258 <ilock+0x4c>
8002324c:	e59f1140 	ldr	r1, [pc, #320]	@ 80023394 <ilock+0x188>
80023250:	e51b0010 	ldr	r0, [fp, #-16]
80023254:	eb000a9b 	bl	80025cc8 <sleep>
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
80023284:	eb000d7c 	bl	8002687c <release>
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
80023344:	e3a02034 	mov	r2, #52	@ 0x34
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
80023390:	8002a854 	.word	0x8002a854
80023394:	800ad528 	.word	0x800ad528
80023398:	8002a85c 	.word	0x8002a85c

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
800233e8:	eb000d18 	bl	80026850 <acquire>
800233ec:	e51b3008 	ldr	r3, [fp, #-8]
800233f0:	e593300c 	ldr	r3, [r3, #12]
800233f4:	e3c32001 	bic	r2, r3, #1
800233f8:	e51b3008 	ldr	r3, [fp, #-8]
800233fc:	e583200c 	str	r2, [r3, #12]
80023400:	e51b0008 	ldr	r0, [fp, #-8]
80023404:	eb000aa3 	bl	80025e98 <wakeup>
80023408:	e59f0010 	ldr	r0, [pc, #16]	@ 80023420 <iunlock+0x84>
8002340c:	eb000d1a 	bl	8002687c <release>
80023410:	e1a00000 	nop			@ (mov r0, r0)
80023414:	e24bd004 	sub	sp, fp, #4
80023418:	e8bd8800 	pop	{fp, pc}
8002341c:	8002a86c 	.word	0x8002a86c
80023420:	800ad528 	.word	0x800ad528

80023424 <iput>:
80023424:	e92d4800 	push	{fp, lr}
80023428:	e28db004 	add	fp, sp, #4
8002342c:	e24dd008 	sub	sp, sp, #8
80023430:	e50b0008 	str	r0, [fp, #-8]
80023434:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023508 <iput+0xe4>
80023438:	eb000d04 	bl	80026850 <acquire>
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
800234a4:	eb000cf4 	bl	8002687c <release>
800234a8:	e51b0008 	ldr	r0, [fp, #-8]
800234ac:	eb00007f 	bl	800236b0 <itrunc>
800234b0:	e51b3008 	ldr	r3, [fp, #-8]
800234b4:	e3a02000 	mov	r2, #0
800234b8:	e1c321b0 	strh	r2, [r3, #16]
800234bc:	e51b0008 	ldr	r0, [fp, #-8]
800234c0:	ebfffeb7 	bl	80022fa4 <iupdate>
800234c4:	e59f003c 	ldr	r0, [pc, #60]	@ 80023508 <iput+0xe4>
800234c8:	eb000ce0 	bl	80026850 <acquire>
800234cc:	e51b3008 	ldr	r3, [fp, #-8]
800234d0:	e3a02000 	mov	r2, #0
800234d4:	e583200c 	str	r2, [r3, #12]
800234d8:	e51b0008 	ldr	r0, [fp, #-8]
800234dc:	eb000a6d 	bl	80025e98 <wakeup>
800234e0:	e51b3008 	ldr	r3, [fp, #-8]
800234e4:	e5933008 	ldr	r3, [r3, #8]
800234e8:	e2432001 	sub	r2, r3, #1
800234ec:	e51b3008 	ldr	r3, [fp, #-8]
800234f0:	e5832008 	str	r2, [r3, #8]
800234f4:	e59f000c 	ldr	r0, [pc, #12]	@ 80023508 <iput+0xe4>
800234f8:	eb000cdf 	bl	8002687c <release>
800234fc:	e1a00000 	nop			@ (mov r0, r0)
80023500:	e24bd004 	sub	sp, fp, #4
80023504:	e8bd8800 	pop	{fp, pc}
80023508:	800ad528 	.word	0x800ad528
8002350c:	8002a874 	.word	0x8002a874

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
80023544:	e24dd018 	sub	sp, sp, #24
80023548:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002354c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80023550:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023554:	e353000b 	cmp	r3, #11
80023558:	8a000017 	bhi	800235bc <bmap+0x80>
8002355c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023560:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023564:	e2833006 	add	r3, r3, #6
80023568:	e1a03103 	lsl	r3, r3, #2
8002356c:	e0823003 	add	r3, r2, r3
80023570:	e5933004 	ldr	r3, [r3, #4]
80023574:	e50b3008 	str	r3, [fp, #-8]
80023578:	e51b3008 	ldr	r3, [fp, #-8]
8002357c:	e3530000 	cmp	r3, #0
80023580:	1a00000b 	bne	800235b4 <bmap+0x78>
80023584:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023588:	e5933000 	ldr	r3, [r3]
8002358c:	e1a00003 	mov	r0, r3
80023590:	ebfffd7e 	bl	80022b90 <balloc>
80023594:	e50b0008 	str	r0, [fp, #-8]
80023598:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002359c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235a0:	e2833006 	add	r3, r3, #6
800235a4:	e1a03103 	lsl	r3, r3, #2
800235a8:	e0823003 	add	r3, r2, r3
800235ac:	e51b2008 	ldr	r2, [fp, #-8]
800235b0:	e5832004 	str	r2, [r3, #4]
800235b4:	e51b3008 	ldr	r3, [fp, #-8]
800235b8:	ea000038 	b	800236a0 <bmap+0x164>
800235bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235c0:	e243300c 	sub	r3, r3, #12
800235c4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800235c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235cc:	e353007f 	cmp	r3, #127	@ 0x7f
800235d0:	8a000030 	bhi	80023698 <bmap+0x15c>
800235d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235d8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800235dc:	e50b3008 	str	r3, [fp, #-8]
800235e0:	e51b3008 	ldr	r3, [fp, #-8]
800235e4:	e3530000 	cmp	r3, #0
800235e8:	1a000007 	bne	8002360c <bmap+0xd0>
800235ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235f0:	e5933000 	ldr	r3, [r3]
800235f4:	e1a00003 	mov	r0, r3
800235f8:	ebfffd64 	bl	80022b90 <balloc>
800235fc:	e50b0008 	str	r0, [fp, #-8]
80023600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023604:	e51b2008 	ldr	r2, [fp, #-8]
80023608:	e583204c 	str	r2, [r3, #76]	@ 0x4c
8002360c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023610:	e5933000 	ldr	r3, [r3]
80023614:	e51b1008 	ldr	r1, [fp, #-8]
80023618:	e1a00003 	mov	r0, r3
8002361c:	ebfff53c 	bl	80020b14 <bread>
80023620:	e50b000c 	str	r0, [fp, #-12]
80023624:	e51b300c 	ldr	r3, [fp, #-12]
80023628:	e2833018 	add	r3, r3, #24
8002362c:	e50b3010 	str	r3, [fp, #-16]
80023630:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023634:	e1a03103 	lsl	r3, r3, #2
80023638:	e51b2010 	ldr	r2, [fp, #-16]
8002363c:	e0823003 	add	r3, r2, r3
80023640:	e5933000 	ldr	r3, [r3]
80023644:	e50b3008 	str	r3, [fp, #-8]
80023648:	e51b3008 	ldr	r3, [fp, #-8]
8002364c:	e3530000 	cmp	r3, #0
80023650:	1a00000c 	bne	80023688 <bmap+0x14c>
80023654:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023658:	e5933000 	ldr	r3, [r3]
8002365c:	e1a00003 	mov	r0, r3
80023660:	ebfffd4a 	bl	80022b90 <balloc>
80023664:	e50b0008 	str	r0, [fp, #-8]
80023668:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002366c:	e1a03103 	lsl	r3, r3, #2
80023670:	e51b2010 	ldr	r2, [fp, #-16]
80023674:	e0823003 	add	r3, r2, r3
80023678:	e51b2008 	ldr	r2, [fp, #-8]
8002367c:	e5832000 	str	r2, [r3]
80023680:	e51b000c 	ldr	r0, [fp, #-12]
80023684:	eb0003b8 	bl	8002456c <log_write>
80023688:	e51b000c 	ldr	r0, [fp, #-12]
8002368c:	ebfff54a 	bl	80020bbc <brelse>
80023690:	e51b3008 	ldr	r3, [fp, #-8]
80023694:	ea000001 	b	800236a0 <bmap+0x164>
80023698:	e59f000c 	ldr	r0, [pc, #12]	@ 800236ac <bmap+0x170>
8002369c:	ebfff914 	bl	80021af4 <panic>
800236a0:	e1a00003 	mov	r0, r3
800236a4:	e24bd004 	sub	sp, fp, #4
800236a8:	e8bd8800 	pop	{fp, pc}
800236ac:	8002a880 	.word	0x8002a880

800236b0 <itrunc>:
800236b0:	e92d4800 	push	{fp, lr}
800236b4:	e28db004 	add	fp, sp, #4
800236b8:	e24dd018 	sub	sp, sp, #24
800236bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800236c0:	e3a03000 	mov	r3, #0
800236c4:	e50b3008 	str	r3, [fp, #-8]
800236c8:	ea00001c 	b	80023740 <itrunc+0x90>
800236cc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800236d0:	e51b3008 	ldr	r3, [fp, #-8]
800236d4:	e2833006 	add	r3, r3, #6
800236d8:	e1a03103 	lsl	r3, r3, #2
800236dc:	e0823003 	add	r3, r2, r3
800236e0:	e5933004 	ldr	r3, [r3, #4]
800236e4:	e3530000 	cmp	r3, #0
800236e8:	0a000011 	beq	80023734 <itrunc+0x84>
800236ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236f0:	e5933000 	ldr	r3, [r3]
800236f4:	e1a00003 	mov	r0, r3
800236f8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800236fc:	e51b3008 	ldr	r3, [fp, #-8]
80023700:	e2833006 	add	r3, r3, #6
80023704:	e1a03103 	lsl	r3, r3, #2
80023708:	e0823003 	add	r3, r2, r3
8002370c:	e5933004 	ldr	r3, [r3, #4]
80023710:	e1a01003 	mov	r1, r3
80023714:	ebfffd8f 	bl	80022d58 <bfree>
80023718:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002371c:	e51b3008 	ldr	r3, [fp, #-8]
80023720:	e2833006 	add	r3, r3, #6
80023724:	e1a03103 	lsl	r3, r3, #2
80023728:	e0823003 	add	r3, r2, r3
8002372c:	e3a02000 	mov	r2, #0
80023730:	e5832004 	str	r2, [r3, #4]
80023734:	e51b3008 	ldr	r3, [fp, #-8]
80023738:	e2833001 	add	r3, r3, #1
8002373c:	e50b3008 	str	r3, [fp, #-8]
80023740:	e51b3008 	ldr	r3, [fp, #-8]
80023744:	e353000b 	cmp	r3, #11
80023748:	daffffdf 	ble	800236cc <itrunc+0x1c>
8002374c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023750:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023754:	e3530000 	cmp	r3, #0
80023758:	0a000031 	beq	80023824 <itrunc+0x174>
8002375c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023760:	e5932000 	ldr	r2, [r3]
80023764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023768:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002376c:	e1a01003 	mov	r1, r3
80023770:	e1a00002 	mov	r0, r2
80023774:	ebfff4e6 	bl	80020b14 <bread>
80023778:	e50b0010 	str	r0, [fp, #-16]
8002377c:	e51b3010 	ldr	r3, [fp, #-16]
80023780:	e2833018 	add	r3, r3, #24
80023784:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80023788:	e3a03000 	mov	r3, #0
8002378c:	e50b300c 	str	r3, [fp, #-12]
80023790:	ea000013 	b	800237e4 <itrunc+0x134>
80023794:	e51b300c 	ldr	r3, [fp, #-12]
80023798:	e1a03103 	lsl	r3, r3, #2
8002379c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800237a0:	e0823003 	add	r3, r2, r3
800237a4:	e5933000 	ldr	r3, [r3]
800237a8:	e3530000 	cmp	r3, #0
800237ac:	0a000009 	beq	800237d8 <itrunc+0x128>
800237b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237b4:	e5933000 	ldr	r3, [r3]
800237b8:	e1a00003 	mov	r0, r3
800237bc:	e51b300c 	ldr	r3, [fp, #-12]
800237c0:	e1a03103 	lsl	r3, r3, #2
800237c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800237c8:	e0823003 	add	r3, r2, r3
800237cc:	e5933000 	ldr	r3, [r3]
800237d0:	e1a01003 	mov	r1, r3
800237d4:	ebfffd5f 	bl	80022d58 <bfree>
800237d8:	e51b300c 	ldr	r3, [fp, #-12]
800237dc:	e2833001 	add	r3, r3, #1
800237e0:	e50b300c 	str	r3, [fp, #-12]
800237e4:	e51b300c 	ldr	r3, [fp, #-12]
800237e8:	e353007f 	cmp	r3, #127	@ 0x7f
800237ec:	9affffe8 	bls	80023794 <itrunc+0xe4>
800237f0:	e51b0010 	ldr	r0, [fp, #-16]
800237f4:	ebfff4f0 	bl	80020bbc <brelse>
800237f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237fc:	e5933000 	ldr	r3, [r3]
80023800:	e1a02003 	mov	r2, r3
80023804:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023808:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002380c:	e1a01003 	mov	r1, r3
80023810:	e1a00002 	mov	r0, r2
80023814:	ebfffd4f 	bl	80022d58 <bfree>
80023818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002381c:	e3a02000 	mov	r2, #0
80023820:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023824:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023828:	e3a02000 	mov	r2, #0
8002382c:	e5832018 	str	r2, [r3, #24]
80023830:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023834:	ebfffdda 	bl	80022fa4 <iupdate>
80023838:	e1a00000 	nop			@ (mov r0, r0)
8002383c:	e24bd004 	sub	sp, fp, #4
80023840:	e8bd8800 	pop	{fp, pc}

80023844 <stati>:
80023844:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023848:	e28db000 	add	fp, sp, #0
8002384c:	e24dd00c 	sub	sp, sp, #12
80023850:	e50b0008 	str	r0, [fp, #-8]
80023854:	e50b100c 	str	r1, [fp, #-12]
80023858:	e51b3008 	ldr	r3, [fp, #-8]
8002385c:	e5933000 	ldr	r3, [r3]
80023860:	e1a02003 	mov	r2, r3
80023864:	e51b300c 	ldr	r3, [fp, #-12]
80023868:	e5832004 	str	r2, [r3, #4]
8002386c:	e51b3008 	ldr	r3, [fp, #-8]
80023870:	e5932004 	ldr	r2, [r3, #4]
80023874:	e51b300c 	ldr	r3, [fp, #-12]
80023878:	e5832008 	str	r2, [r3, #8]
8002387c:	e51b3008 	ldr	r3, [fp, #-8]
80023880:	e1d321f0 	ldrsh	r2, [r3, #16]
80023884:	e51b300c 	ldr	r3, [fp, #-12]
80023888:	e1c320b0 	strh	r2, [r3]
8002388c:	e51b3008 	ldr	r3, [fp, #-8]
80023890:	e1d321f6 	ldrsh	r2, [r3, #22]
80023894:	e51b300c 	ldr	r3, [fp, #-12]
80023898:	e1c320bc 	strh	r2, [r3, #12]
8002389c:	e51b3008 	ldr	r3, [fp, #-8]
800238a0:	e5932018 	ldr	r2, [r3, #24]
800238a4:	e51b300c 	ldr	r3, [fp, #-12]
800238a8:	e5832010 	str	r2, [r3, #16]
800238ac:	e1a00000 	nop			@ (mov r0, r0)
800238b0:	e28bd000 	add	sp, fp, #0
800238b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800238b8:	e12fff1e 	bx	lr

800238bc <readi>:
800238bc:	e92d4810 	push	{r4, fp, lr}
800238c0:	e28db008 	add	fp, sp, #8
800238c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
800238c8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800238cc:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800238d0:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800238d4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800238d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238dc:	e1d331f0 	ldrsh	r3, [r3, #16]
800238e0:	e3530003 	cmp	r3, #3
800238e4:	1a00001b 	bne	80023958 <readi+0x9c>
800238e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238ec:	e1d331f2 	ldrsh	r3, [r3, #18]
800238f0:	e3530000 	cmp	r3, #0
800238f4:	ba00000a 	blt	80023924 <readi+0x68>
800238f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238fc:	e1d331f2 	ldrsh	r3, [r3, #18]
80023900:	e3530009 	cmp	r3, #9
80023904:	ca000006 	bgt	80023924 <readi+0x68>
80023908:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002390c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023910:	e1a02003 	mov	r2, r3
80023914:	e59f3188 	ldr	r3, [pc, #392]	@ 80023aa4 <readi+0x1e8>
80023918:	e7933182 	ldr	r3, [r3, r2, lsl #3]
8002391c:	e3530000 	cmp	r3, #0
80023920:	1a000001 	bne	8002392c <readi+0x70>
80023924:	e3e03000 	mvn	r3, #0
80023928:	ea00005a 	b	80023a98 <readi+0x1dc>
8002392c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023930:	e1d331f2 	ldrsh	r3, [r3, #18]
80023934:	e1a02003 	mov	r2, r3
80023938:	e59f3164 	ldr	r3, [pc, #356]	@ 80023aa4 <readi+0x1e8>
8002393c:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023940:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023944:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023948:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002394c:	e12fff33 	blx	r3
80023950:	e1a03000 	mov	r3, r0
80023954:	ea00004f 	b	80023a98 <readi+0x1dc>
80023958:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002395c:	e5933018 	ldr	r3, [r3, #24]
80023960:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023964:	e1520003 	cmp	r2, r3
80023968:	8a000005 	bhi	80023984 <readi+0xc8>
8002396c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023970:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023974:	e0823003 	add	r3, r2, r3
80023978:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
8002397c:	e1520003 	cmp	r2, r3
80023980:	9a000001 	bls	8002398c <readi+0xd0>
80023984:	e3e03000 	mvn	r3, #0
80023988:	ea000042 	b	80023a98 <readi+0x1dc>
8002398c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023990:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023994:	e0822003 	add	r2, r2, r3
80023998:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002399c:	e5933018 	ldr	r3, [r3, #24]
800239a0:	e1520003 	cmp	r2, r3
800239a4:	9a000004 	bls	800239bc <readi+0x100>
800239a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239ac:	e5932018 	ldr	r2, [r3, #24]
800239b0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239b4:	e0423003 	sub	r3, r2, r3
800239b8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800239bc:	e3a03000 	mov	r3, #0
800239c0:	e50b3010 	str	r3, [fp, #-16]
800239c4:	ea00002e 	b	80023a84 <readi+0x1c8>
800239c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239cc:	e5934000 	ldr	r4, [r3]
800239d0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239d4:	e1a034a3 	lsr	r3, r3, #9
800239d8:	e1a01003 	mov	r1, r3
800239dc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800239e0:	ebfffed5 	bl	8002353c <bmap>
800239e4:	e1a03000 	mov	r3, r0
800239e8:	e1a01003 	mov	r1, r3
800239ec:	e1a00004 	mov	r0, r4
800239f0:	ebfff447 	bl	80020b14 <bread>
800239f4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800239f8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239fc:	e1a03b83 	lsl	r3, r3, #23
80023a00:	e1a03ba3 	lsr	r3, r3, #23
80023a04:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023a08:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023a0c:	e51b3010 	ldr	r3, [fp, #-16]
80023a10:	e0413003 	sub	r3, r1, r3
80023a14:	e1520003 	cmp	r2, r3
80023a18:	31a03002 	movcc	r3, r2
80023a1c:	21a03003 	movcs	r3, r3
80023a20:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023a24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023a28:	e2832018 	add	r2, r3, #24
80023a2c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a30:	e1a03b83 	lsl	r3, r3, #23
80023a34:	e1a03ba3 	lsr	r3, r3, #23
80023a38:	e0823003 	add	r3, r2, r3
80023a3c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023a40:	e1a01003 	mov	r1, r3
80023a44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023a48:	ebfff1de 	bl	800201c8 <memmove>
80023a4c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023a50:	ebfff459 	bl	80020bbc <brelse>
80023a54:	e51b2010 	ldr	r2, [fp, #-16]
80023a58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a5c:	e0823003 	add	r3, r2, r3
80023a60:	e50b3010 	str	r3, [fp, #-16]
80023a64:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a6c:	e0823003 	add	r3, r2, r3
80023a70:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023a74:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023a78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a7c:	e0823003 	add	r3, r2, r3
80023a80:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023a84:	e51b2010 	ldr	r2, [fp, #-16]
80023a88:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a8c:	e1520003 	cmp	r2, r3
80023a90:	3affffcc 	bcc	800239c8 <readi+0x10c>
80023a94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a98:	e1a00003 	mov	r0, r3
80023a9c:	e24bd008 	sub	sp, fp, #8
80023aa0:	e8bd8810 	pop	{r4, fp, pc}
80023aa4:	800acb44 	.word	0x800acb44

80023aa8 <writei>:
80023aa8:	e92d4810 	push	{r4, fp, lr}
80023aac:	e28db008 	add	fp, sp, #8
80023ab0:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023ab4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023ab8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023abc:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023ac0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023ac4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ac8:	e1d331f0 	ldrsh	r3, [r3, #16]
80023acc:	e3530003 	cmp	r3, #3
80023ad0:	1a00001d 	bne	80023b4c <writei+0xa4>
80023ad4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ad8:	e1d331f2 	ldrsh	r3, [r3, #18]
80023adc:	e3530000 	cmp	r3, #0
80023ae0:	ba00000b 	blt	80023b14 <writei+0x6c>
80023ae4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ae8:	e1d331f2 	ldrsh	r3, [r3, #18]
80023aec:	e3530009 	cmp	r3, #9
80023af0:	ca000007 	bgt	80023b14 <writei+0x6c>
80023af4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023af8:	e1d331f2 	ldrsh	r3, [r3, #18]
80023afc:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023cc0 <writei+0x218>
80023b00:	e1a03183 	lsl	r3, r3, #3
80023b04:	e0823003 	add	r3, r2, r3
80023b08:	e5933004 	ldr	r3, [r3, #4]
80023b0c:	e3530000 	cmp	r3, #0
80023b10:	1a000001 	bne	80023b1c <writei+0x74>
80023b14:	e3e03000 	mvn	r3, #0
80023b18:	ea000065 	b	80023cb4 <writei+0x20c>
80023b1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b20:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b24:	e59f2194 	ldr	r2, [pc, #404]	@ 80023cc0 <writei+0x218>
80023b28:	e1a03183 	lsl	r3, r3, #3
80023b2c:	e0823003 	add	r3, r2, r3
80023b30:	e5933004 	ldr	r3, [r3, #4]
80023b34:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023b38:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023b3c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b40:	e12fff33 	blx	r3
80023b44:	e1a03000 	mov	r3, r0
80023b48:	ea000059 	b	80023cb4 <writei+0x20c>
80023b4c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b50:	e5933018 	ldr	r3, [r3, #24]
80023b54:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b58:	e1520003 	cmp	r2, r3
80023b5c:	8a000005 	bhi	80023b78 <writei+0xd0>
80023b60:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b68:	e0823003 	add	r3, r2, r3
80023b6c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b70:	e1520003 	cmp	r2, r3
80023b74:	9a000001 	bls	80023b80 <writei+0xd8>
80023b78:	e3e03000 	mvn	r3, #0
80023b7c:	ea00004c 	b	80023cb4 <writei+0x20c>
80023b80:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b88:	e0823003 	add	r3, r2, r3
80023b8c:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023b90:	9a000001 	bls	80023b9c <writei+0xf4>
80023b94:	e3e03000 	mvn	r3, #0
80023b98:	ea000045 	b	80023cb4 <writei+0x20c>
80023b9c:	e3a03000 	mov	r3, #0
80023ba0:	e50b3010 	str	r3, [fp, #-16]
80023ba4:	ea000030 	b	80023c6c <writei+0x1c4>
80023ba8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bac:	e5934000 	ldr	r4, [r3]
80023bb0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023bb4:	e1a034a3 	lsr	r3, r3, #9
80023bb8:	e1a01003 	mov	r1, r3
80023bbc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023bc0:	ebfffe5d 	bl	8002353c <bmap>
80023bc4:	e1a03000 	mov	r3, r0
80023bc8:	e1a01003 	mov	r1, r3
80023bcc:	e1a00004 	mov	r0, r4
80023bd0:	ebfff3cf 	bl	80020b14 <bread>
80023bd4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023bd8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023bdc:	e1a03b83 	lsl	r3, r3, #23
80023be0:	e1a03ba3 	lsr	r3, r3, #23
80023be4:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023be8:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023bec:	e51b3010 	ldr	r3, [fp, #-16]
80023bf0:	e0413003 	sub	r3, r1, r3
80023bf4:	e1520003 	cmp	r2, r3
80023bf8:	31a03002 	movcc	r3, r2
80023bfc:	21a03003 	movcs	r3, r3
80023c00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023c04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023c08:	e2832018 	add	r2, r3, #24
80023c0c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c10:	e1a03b83 	lsl	r3, r3, #23
80023c14:	e1a03ba3 	lsr	r3, r3, #23
80023c18:	e0823003 	add	r3, r2, r3
80023c1c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023c20:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023c24:	e1a00003 	mov	r0, r3
80023c28:	ebfff166 	bl	800201c8 <memmove>
80023c2c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023c30:	eb00024d 	bl	8002456c <log_write>
80023c34:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023c38:	ebfff3df 	bl	80020bbc <brelse>
80023c3c:	e51b2010 	ldr	r2, [fp, #-16]
80023c40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c44:	e0823003 	add	r3, r2, r3
80023c48:	e50b3010 	str	r3, [fp, #-16]
80023c4c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c54:	e0823003 	add	r3, r2, r3
80023c58:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023c5c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c64:	e0823003 	add	r3, r2, r3
80023c68:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023c6c:	e51b2010 	ldr	r2, [fp, #-16]
80023c70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c74:	e1520003 	cmp	r2, r3
80023c78:	3affffca 	bcc	80023ba8 <writei+0x100>
80023c7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c80:	e3530000 	cmp	r3, #0
80023c84:	0a000009 	beq	80023cb0 <writei+0x208>
80023c88:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c8c:	e5933018 	ldr	r3, [r3, #24]
80023c90:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c94:	e1520003 	cmp	r2, r3
80023c98:	9a000004 	bls	80023cb0 <writei+0x208>
80023c9c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ca0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ca4:	e5832018 	str	r2, [r3, #24]
80023ca8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023cac:	ebfffcbc 	bl	80022fa4 <iupdate>
80023cb0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cb4:	e1a00003 	mov	r0, r3
80023cb8:	e24bd008 	sub	sp, fp, #8
80023cbc:	e8bd8810 	pop	{r4, fp, pc}
80023cc0:	800acb44 	.word	0x800acb44

80023cc4 <namecmp>:
80023cc4:	e92d4800 	push	{fp, lr}
80023cc8:	e28db004 	add	fp, sp, #4
80023ccc:	e24dd008 	sub	sp, sp, #8
80023cd0:	e50b0008 	str	r0, [fp, #-8]
80023cd4:	e50b100c 	str	r1, [fp, #-12]
80023cd8:	e3a0200e 	mov	r2, #14
80023cdc:	e51b100c 	ldr	r1, [fp, #-12]
80023ce0:	e51b0008 	ldr	r0, [fp, #-8]
80023ce4:	ebfff184 	bl	800202fc <strncmp>
80023ce8:	e1a03000 	mov	r3, r0
80023cec:	e1a00003 	mov	r0, r3
80023cf0:	e24bd004 	sub	sp, fp, #4
80023cf4:	e8bd8800 	pop	{fp, pc}

80023cf8 <dirlookup>:
80023cf8:	e92d4800 	push	{fp, lr}
80023cfc:	e28db004 	add	fp, sp, #4
80023d00:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023d04:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d08:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d0c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023d10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d14:	e1d331f0 	ldrsh	r3, [r3, #16]
80023d18:	e3530001 	cmp	r3, #1
80023d1c:	0a000001 	beq	80023d28 <dirlookup+0x30>
80023d20:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023df8 <dirlookup+0x100>
80023d24:	ebfff772 	bl	80021af4 <panic>
80023d28:	e3a03000 	mov	r3, #0
80023d2c:	e50b3008 	str	r3, [fp, #-8]
80023d30:	ea000027 	b	80023dd4 <dirlookup+0xdc>
80023d34:	e24b101c 	sub	r1, fp, #28
80023d38:	e3a03010 	mov	r3, #16
80023d3c:	e51b2008 	ldr	r2, [fp, #-8]
80023d40:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d44:	ebfffedc 	bl	800238bc <readi>
80023d48:	e1a03000 	mov	r3, r0
80023d4c:	e3530010 	cmp	r3, #16
80023d50:	0a000001 	beq	80023d5c <dirlookup+0x64>
80023d54:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023dfc <dirlookup+0x104>
80023d58:	ebfff765 	bl	80021af4 <panic>
80023d5c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023d60:	e3530000 	cmp	r3, #0
80023d64:	0a000016 	beq	80023dc4 <dirlookup+0xcc>
80023d68:	e24b301c 	sub	r3, fp, #28
80023d6c:	e2833002 	add	r3, r3, #2
80023d70:	e1a01003 	mov	r1, r3
80023d74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023d78:	ebffffd1 	bl	80023cc4 <namecmp>
80023d7c:	e1a03000 	mov	r3, r0
80023d80:	e3530000 	cmp	r3, #0
80023d84:	1a00000f 	bne	80023dc8 <dirlookup+0xd0>
80023d88:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d8c:	e3530000 	cmp	r3, #0
80023d90:	0a000002 	beq	80023da0 <dirlookup+0xa8>
80023d94:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d98:	e51b2008 	ldr	r2, [fp, #-8]
80023d9c:	e5832000 	str	r2, [r3]
80023da0:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023da4:	e50b300c 	str	r3, [fp, #-12]
80023da8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dac:	e5933000 	ldr	r3, [r3]
80023db0:	e51b100c 	ldr	r1, [fp, #-12]
80023db4:	e1a00003 	mov	r0, r3
80023db8:	ebfffcb1 	bl	80023084 <iget>
80023dbc:	e1a03000 	mov	r3, r0
80023dc0:	ea000009 	b	80023dec <dirlookup+0xf4>
80023dc4:	e1a00000 	nop			@ (mov r0, r0)
80023dc8:	e51b3008 	ldr	r3, [fp, #-8]
80023dcc:	e2833010 	add	r3, r3, #16
80023dd0:	e50b3008 	str	r3, [fp, #-8]
80023dd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dd8:	e5933018 	ldr	r3, [r3, #24]
80023ddc:	e51b2008 	ldr	r2, [fp, #-8]
80023de0:	e1520003 	cmp	r2, r3
80023de4:	3affffd2 	bcc	80023d34 <dirlookup+0x3c>
80023de8:	e3a03000 	mov	r3, #0
80023dec:	e1a00003 	mov	r0, r3
80023df0:	e24bd004 	sub	sp, fp, #4
80023df4:	e8bd8800 	pop	{fp, pc}
80023df8:	8002a894 	.word	0x8002a894
80023dfc:	8002a8a8 	.word	0x8002a8a8

80023e00 <dirlink>:
80023e00:	e92d4800 	push	{fp, lr}
80023e04:	e28db004 	add	fp, sp, #4
80023e08:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023e0c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023e10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023e14:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023e18:	e3a02000 	mov	r2, #0
80023e1c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023e20:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e24:	ebffffb3 	bl	80023cf8 <dirlookup>
80023e28:	e50b000c 	str	r0, [fp, #-12]
80023e2c:	e51b300c 	ldr	r3, [fp, #-12]
80023e30:	e3530000 	cmp	r3, #0
80023e34:	0a000003 	beq	80023e48 <dirlink+0x48>
80023e38:	e51b000c 	ldr	r0, [fp, #-12]
80023e3c:	ebfffd78 	bl	80023424 <iput>
80023e40:	e3e03000 	mvn	r3, #0
80023e44:	ea00002d 	b	80023f00 <dirlink+0x100>
80023e48:	e3a03000 	mov	r3, #0
80023e4c:	e50b3008 	str	r3, [fp, #-8]
80023e50:	ea00000f 	b	80023e94 <dirlink+0x94>
80023e54:	e51b2008 	ldr	r2, [fp, #-8]
80023e58:	e24b101c 	sub	r1, fp, #28
80023e5c:	e3a03010 	mov	r3, #16
80023e60:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e64:	ebfffe94 	bl	800238bc <readi>
80023e68:	e1a03000 	mov	r3, r0
80023e6c:	e3530010 	cmp	r3, #16
80023e70:	0a000001 	beq	80023e7c <dirlink+0x7c>
80023e74:	e59f0090 	ldr	r0, [pc, #144]	@ 80023f0c <dirlink+0x10c>
80023e78:	ebfff71d 	bl	80021af4 <panic>
80023e7c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023e80:	e3530000 	cmp	r3, #0
80023e84:	0a000008 	beq	80023eac <dirlink+0xac>
80023e88:	e51b3008 	ldr	r3, [fp, #-8]
80023e8c:	e2833010 	add	r3, r3, #16
80023e90:	e50b3008 	str	r3, [fp, #-8]
80023e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e98:	e5932018 	ldr	r2, [r3, #24]
80023e9c:	e51b3008 	ldr	r3, [fp, #-8]
80023ea0:	e1520003 	cmp	r2, r3
80023ea4:	8affffea 	bhi	80023e54 <dirlink+0x54>
80023ea8:	ea000000 	b	80023eb0 <dirlink+0xb0>
80023eac:	e1a00000 	nop			@ (mov r0, r0)
80023eb0:	e24b301c 	sub	r3, fp, #28
80023eb4:	e2833002 	add	r3, r3, #2
80023eb8:	e3a0200e 	mov	r2, #14
80023ebc:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023ec0:	e1a00003 	mov	r0, r3
80023ec4:	ebfff138 	bl	800203ac <strncpy>
80023ec8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ecc:	e6ff3073 	uxth	r3, r3
80023ed0:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023ed4:	e51b2008 	ldr	r2, [fp, #-8]
80023ed8:	e24b101c 	sub	r1, fp, #28
80023edc:	e3a03010 	mov	r3, #16
80023ee0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ee4:	ebfffeef 	bl	80023aa8 <writei>
80023ee8:	e1a03000 	mov	r3, r0
80023eec:	e3530010 	cmp	r3, #16
80023ef0:	0a000001 	beq	80023efc <dirlink+0xfc>
80023ef4:	e59f0014 	ldr	r0, [pc, #20]	@ 80023f10 <dirlink+0x110>
80023ef8:	ebfff6fd 	bl	80021af4 <panic>
80023efc:	e3a03000 	mov	r3, #0
80023f00:	e1a00003 	mov	r0, r3
80023f04:	e24bd004 	sub	sp, fp, #4
80023f08:	e8bd8800 	pop	{fp, pc}
80023f0c:	8002a8a8 	.word	0x8002a8a8
80023f10:	8002a8b8 	.word	0x8002a8b8

80023f14 <skipelem>:
80023f14:	e92d4800 	push	{fp, lr}
80023f18:	e28db004 	add	fp, sp, #4
80023f1c:	e24dd010 	sub	sp, sp, #16
80023f20:	e50b0010 	str	r0, [fp, #-16]
80023f24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023f28:	ea000002 	b	80023f38 <skipelem+0x24>
80023f2c:	e51b3010 	ldr	r3, [fp, #-16]
80023f30:	e2833001 	add	r3, r3, #1
80023f34:	e50b3010 	str	r3, [fp, #-16]
80023f38:	e51b3010 	ldr	r3, [fp, #-16]
80023f3c:	e5d33000 	ldrb	r3, [r3]
80023f40:	e353002f 	cmp	r3, #47	@ 0x2f
80023f44:	0afffff8 	beq	80023f2c <skipelem+0x18>
80023f48:	e51b3010 	ldr	r3, [fp, #-16]
80023f4c:	e5d33000 	ldrb	r3, [r3]
80023f50:	e3530000 	cmp	r3, #0
80023f54:	1a000001 	bne	80023f60 <skipelem+0x4c>
80023f58:	e3a03000 	mov	r3, #0
80023f5c:	ea00002c 	b	80024014 <skipelem+0x100>
80023f60:	e51b3010 	ldr	r3, [fp, #-16]
80023f64:	e50b3008 	str	r3, [fp, #-8]
80023f68:	ea000002 	b	80023f78 <skipelem+0x64>
80023f6c:	e51b3010 	ldr	r3, [fp, #-16]
80023f70:	e2833001 	add	r3, r3, #1
80023f74:	e50b3010 	str	r3, [fp, #-16]
80023f78:	e51b3010 	ldr	r3, [fp, #-16]
80023f7c:	e5d33000 	ldrb	r3, [r3]
80023f80:	e353002f 	cmp	r3, #47	@ 0x2f
80023f84:	0a000003 	beq	80023f98 <skipelem+0x84>
80023f88:	e51b3010 	ldr	r3, [fp, #-16]
80023f8c:	e5d33000 	ldrb	r3, [r3]
80023f90:	e3530000 	cmp	r3, #0
80023f94:	1afffff4 	bne	80023f6c <skipelem+0x58>
80023f98:	e51b2010 	ldr	r2, [fp, #-16]
80023f9c:	e51b3008 	ldr	r3, [fp, #-8]
80023fa0:	e0423003 	sub	r3, r2, r3
80023fa4:	e50b300c 	str	r3, [fp, #-12]
80023fa8:	e51b300c 	ldr	r3, [fp, #-12]
80023fac:	e353000d 	cmp	r3, #13
80023fb0:	da000004 	ble	80023fc8 <skipelem+0xb4>
80023fb4:	e3a0200e 	mov	r2, #14
80023fb8:	e51b1008 	ldr	r1, [fp, #-8]
80023fbc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023fc0:	ebfff080 	bl	800201c8 <memmove>
80023fc4:	ea00000d 	b	80024000 <skipelem+0xec>
80023fc8:	e51b300c 	ldr	r3, [fp, #-12]
80023fcc:	e1a02003 	mov	r2, r3
80023fd0:	e51b1008 	ldr	r1, [fp, #-8]
80023fd4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023fd8:	ebfff07a 	bl	800201c8 <memmove>
80023fdc:	e51b300c 	ldr	r3, [fp, #-12]
80023fe0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023fe4:	e0823003 	add	r3, r2, r3
80023fe8:	e3a02000 	mov	r2, #0
80023fec:	e5c32000 	strb	r2, [r3]
80023ff0:	ea000002 	b	80024000 <skipelem+0xec>
80023ff4:	e51b3010 	ldr	r3, [fp, #-16]
80023ff8:	e2833001 	add	r3, r3, #1
80023ffc:	e50b3010 	str	r3, [fp, #-16]
80024000:	e51b3010 	ldr	r3, [fp, #-16]
80024004:	e5d33000 	ldrb	r3, [r3]
80024008:	e353002f 	cmp	r3, #47	@ 0x2f
8002400c:	0afffff8 	beq	80023ff4 <skipelem+0xe0>
80024010:	e51b3010 	ldr	r3, [fp, #-16]
80024014:	e1a00003 	mov	r0, r3
80024018:	e24bd004 	sub	sp, fp, #4
8002401c:	e8bd8800 	pop	{fp, pc}

80024020 <namex>:
80024020:	e92d4800 	push	{fp, lr}
80024024:	e28db004 	add	fp, sp, #4
80024028:	e24dd018 	sub	sp, sp, #24
8002402c:	e50b0010 	str	r0, [fp, #-16]
80024030:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024034:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024038:	e51b3010 	ldr	r3, [fp, #-16]
8002403c:	e5d33000 	ldrb	r3, [r3]
80024040:	e353002f 	cmp	r3, #47	@ 0x2f
80024044:	1a000004 	bne	8002405c <namex+0x3c>
80024048:	e3a01001 	mov	r1, #1
8002404c:	e3a00001 	mov	r0, #1
80024050:	ebfffc0b 	bl	80023084 <iget>
80024054:	e50b0008 	str	r0, [fp, #-8]
80024058:	ea00002b 	b	8002410c <namex+0xec>
8002405c:	e59f30f0 	ldr	r3, [pc, #240]	@ 80024154 <namex+0x134>
80024060:	e5933000 	ldr	r3, [r3]
80024064:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80024068:	e1a00003 	mov	r0, r3
8002406c:	ebfffc54 	bl	800231c4 <idup>
80024070:	e50b0008 	str	r0, [fp, #-8]
80024074:	ea000024 	b	8002410c <namex+0xec>
80024078:	e51b0008 	ldr	r0, [fp, #-8]
8002407c:	ebfffc62 	bl	8002320c <ilock>
80024080:	e51b3008 	ldr	r3, [fp, #-8]
80024084:	e1d331f0 	ldrsh	r3, [r3, #16]
80024088:	e3530001 	cmp	r3, #1
8002408c:	0a000003 	beq	800240a0 <namex+0x80>
80024090:	e51b0008 	ldr	r0, [fp, #-8]
80024094:	ebfffd1d 	bl	80023510 <iunlockput>
80024098:	e3a03000 	mov	r3, #0
8002409c:	ea000029 	b	80024148 <namex+0x128>
800240a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800240a4:	e3530000 	cmp	r3, #0
800240a8:	0a000007 	beq	800240cc <namex+0xac>
800240ac:	e51b3010 	ldr	r3, [fp, #-16]
800240b0:	e5d33000 	ldrb	r3, [r3]
800240b4:	e3530000 	cmp	r3, #0
800240b8:	1a000003 	bne	800240cc <namex+0xac>
800240bc:	e51b0008 	ldr	r0, [fp, #-8]
800240c0:	ebfffcb5 	bl	8002339c <iunlock>
800240c4:	e51b3008 	ldr	r3, [fp, #-8]
800240c8:	ea00001e 	b	80024148 <namex+0x128>
800240cc:	e3a02000 	mov	r2, #0
800240d0:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800240d4:	e51b0008 	ldr	r0, [fp, #-8]
800240d8:	ebffff06 	bl	80023cf8 <dirlookup>
800240dc:	e50b000c 	str	r0, [fp, #-12]
800240e0:	e51b300c 	ldr	r3, [fp, #-12]
800240e4:	e3530000 	cmp	r3, #0
800240e8:	1a000003 	bne	800240fc <namex+0xdc>
800240ec:	e51b0008 	ldr	r0, [fp, #-8]
800240f0:	ebfffd06 	bl	80023510 <iunlockput>
800240f4:	e3a03000 	mov	r3, #0
800240f8:	ea000012 	b	80024148 <namex+0x128>
800240fc:	e51b0008 	ldr	r0, [fp, #-8]
80024100:	ebfffd02 	bl	80023510 <iunlockput>
80024104:	e51b300c 	ldr	r3, [fp, #-12]
80024108:	e50b3008 	str	r3, [fp, #-8]
8002410c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024110:	e51b0010 	ldr	r0, [fp, #-16]
80024114:	ebffff7e 	bl	80023f14 <skipelem>
80024118:	e50b0010 	str	r0, [fp, #-16]
8002411c:	e51b3010 	ldr	r3, [fp, #-16]
80024120:	e3530000 	cmp	r3, #0
80024124:	1affffd3 	bne	80024078 <namex+0x58>
80024128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002412c:	e3530000 	cmp	r3, #0
80024130:	0a000003 	beq	80024144 <namex+0x124>
80024134:	e51b0008 	ldr	r0, [fp, #-8]
80024138:	ebfffcb9 	bl	80023424 <iput>
8002413c:	e3a03000 	mov	r3, #0
80024140:	ea000000 	b	80024148 <namex+0x128>
80024144:	e51b3008 	ldr	r3, [fp, #-8]
80024148:	e1a00003 	mov	r0, r3
8002414c:	e24bd004 	sub	sp, fp, #4
80024150:	e8bd8800 	pop	{fp, pc}
80024154:	800b0f94 	.word	0x800b0f94

80024158 <namei>:
80024158:	e92d4800 	push	{fp, lr}
8002415c:	e28db004 	add	fp, sp, #4
80024160:	e24dd018 	sub	sp, sp, #24
80024164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80024168:	e24b3014 	sub	r3, fp, #20
8002416c:	e1a02003 	mov	r2, r3
80024170:	e3a01000 	mov	r1, #0
80024174:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80024178:	ebffffa8 	bl	80024020 <namex>
8002417c:	e1a03000 	mov	r3, r0
80024180:	e1a00003 	mov	r0, r3
80024184:	e24bd004 	sub	sp, fp, #4
80024188:	e8bd8800 	pop	{fp, pc}

8002418c <nameiparent>:
8002418c:	e92d4800 	push	{fp, lr}
80024190:	e28db004 	add	fp, sp, #4
80024194:	e24dd008 	sub	sp, sp, #8
80024198:	e50b0008 	str	r0, [fp, #-8]
8002419c:	e50b100c 	str	r1, [fp, #-12]
800241a0:	e51b200c 	ldr	r2, [fp, #-12]
800241a4:	e3a01001 	mov	r1, #1
800241a8:	e51b0008 	ldr	r0, [fp, #-8]
800241ac:	ebffff9b 	bl	80024020 <namex>
800241b0:	e1a03000 	mov	r3, r0
800241b4:	e1a00003 	mov	r0, r3
800241b8:	e24bd004 	sub	sp, fp, #4
800241bc:	e8bd8800 	pop	{fp, pc}

800241c0 <initlog>:
800241c0:	e92d4800 	push	{fp, lr}
800241c4:	e28db004 	add	fp, sp, #4
800241c8:	e24dd010 	sub	sp, sp, #16
800241cc:	e59f1058 	ldr	r1, [pc, #88]	@ 8002422c <initlog+0x6c>
800241d0:	e59f0058 	ldr	r0, [pc, #88]	@ 80024230 <initlog+0x70>
800241d4:	eb00098b 	bl	80026808 <initlock>
800241d8:	e24b3014 	sub	r3, fp, #20
800241dc:	e1a01003 	mov	r1, r3
800241e0:	e3a00001 	mov	r0, #1
800241e4:	ebfffa3c 	bl	80022adc <readsb>
800241e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800241ec:	e51b3008 	ldr	r3, [fp, #-8]
800241f0:	e0423003 	sub	r3, r2, r3
800241f4:	e1a02003 	mov	r2, r3
800241f8:	e59f3030 	ldr	r3, [pc, #48]	@ 80024230 <initlog+0x70>
800241fc:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024200:	e51b3008 	ldr	r3, [fp, #-8]
80024204:	e1a02003 	mov	r2, r3
80024208:	e59f3020 	ldr	r3, [pc, #32]	@ 80024230 <initlog+0x70>
8002420c:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024210:	e59f3018 	ldr	r3, [pc, #24]	@ 80024230 <initlog+0x70>
80024214:	e3a02001 	mov	r2, #1
80024218:	e5832040 	str	r2, [r3, #64]	@ 0x40
8002421c:	eb00009b 	bl	80024490 <recover_from_log>
80024220:	e1a00000 	nop			@ (mov r0, r0)
80024224:	e24bd004 	sub	sp, fp, #4
80024228:	e8bd8800 	pop	{fp, pc}
8002422c:	8002a8c0 	.word	0x8002a8c0
80024230:	800ae4fc 	.word	0x800ae4fc

80024234 <install_trans>:
80024234:	e92d4800 	push	{fp, lr}
80024238:	e28db004 	add	fp, sp, #4
8002423c:	e24dd010 	sub	sp, sp, #16
80024240:	e3a03000 	mov	r3, #0
80024244:	e50b3008 	str	r3, [fp, #-8]
80024248:	ea000026 	b	800242e8 <install_trans+0xb4>
8002424c:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002430c <install_trans+0xd8>
80024250:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024254:	e1a00003 	mov	r0, r3
80024258:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002430c <install_trans+0xd8>
8002425c:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024260:	e51b3008 	ldr	r3, [fp, #-8]
80024264:	e0823003 	add	r3, r2, r3
80024268:	e2833001 	add	r3, r3, #1
8002426c:	e1a01003 	mov	r1, r3
80024270:	ebfff227 	bl	80020b14 <bread>
80024274:	e50b000c 	str	r0, [fp, #-12]
80024278:	e59f308c 	ldr	r3, [pc, #140]	@ 8002430c <install_trans+0xd8>
8002427c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024280:	e1a00003 	mov	r0, r3
80024284:	e59f2080 	ldr	r2, [pc, #128]	@ 8002430c <install_trans+0xd8>
80024288:	e51b3008 	ldr	r3, [fp, #-8]
8002428c:	e2833010 	add	r3, r3, #16
80024290:	e1a03103 	lsl	r3, r3, #2
80024294:	e0823003 	add	r3, r2, r3
80024298:	e5933008 	ldr	r3, [r3, #8]
8002429c:	e1a01003 	mov	r1, r3
800242a0:	ebfff21b 	bl	80020b14 <bread>
800242a4:	e50b0010 	str	r0, [fp, #-16]
800242a8:	e51b3010 	ldr	r3, [fp, #-16]
800242ac:	e2830018 	add	r0, r3, #24
800242b0:	e51b300c 	ldr	r3, [fp, #-12]
800242b4:	e2833018 	add	r3, r3, #24
800242b8:	e3a02c02 	mov	r2, #512	@ 0x200
800242bc:	e1a01003 	mov	r1, r3
800242c0:	ebffefc0 	bl	800201c8 <memmove>
800242c4:	e51b0010 	ldr	r0, [fp, #-16]
800242c8:	ebfff225 	bl	80020b64 <bwrite>
800242cc:	e51b000c 	ldr	r0, [fp, #-12]
800242d0:	ebfff239 	bl	80020bbc <brelse>
800242d4:	e51b0010 	ldr	r0, [fp, #-16]
800242d8:	ebfff237 	bl	80020bbc <brelse>
800242dc:	e51b3008 	ldr	r3, [fp, #-8]
800242e0:	e2833001 	add	r3, r3, #1
800242e4:	e50b3008 	str	r3, [fp, #-8]
800242e8:	e59f301c 	ldr	r3, [pc, #28]	@ 8002430c <install_trans+0xd8>
800242ec:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800242f0:	e51b2008 	ldr	r2, [fp, #-8]
800242f4:	e1520003 	cmp	r2, r3
800242f8:	baffffd3 	blt	8002424c <install_trans+0x18>
800242fc:	e1a00000 	nop			@ (mov r0, r0)
80024300:	e1a00000 	nop			@ (mov r0, r0)
80024304:	e24bd004 	sub	sp, fp, #4
80024308:	e8bd8800 	pop	{fp, pc}
8002430c:	800ae4fc 	.word	0x800ae4fc

80024310 <read_head>:
80024310:	e92d4800 	push	{fp, lr}
80024314:	e28db004 	add	fp, sp, #4
80024318:	e24dd010 	sub	sp, sp, #16
8002431c:	e59f30a4 	ldr	r3, [pc, #164]	@ 800243c8 <read_head+0xb8>
80024320:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024324:	e1a02003 	mov	r2, r3
80024328:	e59f3098 	ldr	r3, [pc, #152]	@ 800243c8 <read_head+0xb8>
8002432c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024330:	e1a01003 	mov	r1, r3
80024334:	e1a00002 	mov	r0, r2
80024338:	ebfff1f5 	bl	80020b14 <bread>
8002433c:	e50b000c 	str	r0, [fp, #-12]
80024340:	e51b300c 	ldr	r3, [fp, #-12]
80024344:	e2833018 	add	r3, r3, #24
80024348:	e50b3010 	str	r3, [fp, #-16]
8002434c:	e51b3010 	ldr	r3, [fp, #-16]
80024350:	e5933000 	ldr	r3, [r3]
80024354:	e59f206c 	ldr	r2, [pc, #108]	@ 800243c8 <read_head+0xb8>
80024358:	e5823044 	str	r3, [r2, #68]	@ 0x44
8002435c:	e3a03000 	mov	r3, #0
80024360:	e50b3008 	str	r3, [fp, #-8]
80024364:	ea00000d 	b	800243a0 <read_head+0x90>
80024368:	e51b2010 	ldr	r2, [fp, #-16]
8002436c:	e51b3008 	ldr	r3, [fp, #-8]
80024370:	e1a03103 	lsl	r3, r3, #2
80024374:	e0823003 	add	r3, r2, r3
80024378:	e5932004 	ldr	r2, [r3, #4]
8002437c:	e59f1044 	ldr	r1, [pc, #68]	@ 800243c8 <read_head+0xb8>
80024380:	e51b3008 	ldr	r3, [fp, #-8]
80024384:	e2833010 	add	r3, r3, #16
80024388:	e1a03103 	lsl	r3, r3, #2
8002438c:	e0813003 	add	r3, r1, r3
80024390:	e5832008 	str	r2, [r3, #8]
80024394:	e51b3008 	ldr	r3, [fp, #-8]
80024398:	e2833001 	add	r3, r3, #1
8002439c:	e50b3008 	str	r3, [fp, #-8]
800243a0:	e59f3020 	ldr	r3, [pc, #32]	@ 800243c8 <read_head+0xb8>
800243a4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800243a8:	e51b2008 	ldr	r2, [fp, #-8]
800243ac:	e1520003 	cmp	r2, r3
800243b0:	baffffec 	blt	80024368 <read_head+0x58>
800243b4:	e51b000c 	ldr	r0, [fp, #-12]
800243b8:	ebfff1ff 	bl	80020bbc <brelse>
800243bc:	e1a00000 	nop			@ (mov r0, r0)
800243c0:	e24bd004 	sub	sp, fp, #4
800243c4:	e8bd8800 	pop	{fp, pc}
800243c8:	800ae4fc 	.word	0x800ae4fc

800243cc <write_head>:
800243cc:	e92d4800 	push	{fp, lr}
800243d0:	e28db004 	add	fp, sp, #4
800243d4:	e24dd010 	sub	sp, sp, #16
800243d8:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002448c <write_head+0xc0>
800243dc:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800243e0:	e1a02003 	mov	r2, r3
800243e4:	e59f30a0 	ldr	r3, [pc, #160]	@ 8002448c <write_head+0xc0>
800243e8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800243ec:	e1a01003 	mov	r1, r3
800243f0:	e1a00002 	mov	r0, r2
800243f4:	ebfff1c6 	bl	80020b14 <bread>
800243f8:	e50b000c 	str	r0, [fp, #-12]
800243fc:	e51b300c 	ldr	r3, [fp, #-12]
80024400:	e2833018 	add	r3, r3, #24
80024404:	e50b3010 	str	r3, [fp, #-16]
80024408:	e59f307c 	ldr	r3, [pc, #124]	@ 8002448c <write_head+0xc0>
8002440c:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024410:	e51b3010 	ldr	r3, [fp, #-16]
80024414:	e5832000 	str	r2, [r3]
80024418:	e3a03000 	mov	r3, #0
8002441c:	e50b3008 	str	r3, [fp, #-8]
80024420:	ea00000d 	b	8002445c <write_head+0x90>
80024424:	e59f2060 	ldr	r2, [pc, #96]	@ 8002448c <write_head+0xc0>
80024428:	e51b3008 	ldr	r3, [fp, #-8]
8002442c:	e2833010 	add	r3, r3, #16
80024430:	e1a03103 	lsl	r3, r3, #2
80024434:	e0823003 	add	r3, r2, r3
80024438:	e5932008 	ldr	r2, [r3, #8]
8002443c:	e51b1010 	ldr	r1, [fp, #-16]
80024440:	e51b3008 	ldr	r3, [fp, #-8]
80024444:	e1a03103 	lsl	r3, r3, #2
80024448:	e0813003 	add	r3, r1, r3
8002444c:	e5832004 	str	r2, [r3, #4]
80024450:	e51b3008 	ldr	r3, [fp, #-8]
80024454:	e2833001 	add	r3, r3, #1
80024458:	e50b3008 	str	r3, [fp, #-8]
8002445c:	e59f3028 	ldr	r3, [pc, #40]	@ 8002448c <write_head+0xc0>
80024460:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024464:	e51b2008 	ldr	r2, [fp, #-8]
80024468:	e1520003 	cmp	r2, r3
8002446c:	baffffec 	blt	80024424 <write_head+0x58>
80024470:	e51b000c 	ldr	r0, [fp, #-12]
80024474:	ebfff1ba 	bl	80020b64 <bwrite>
80024478:	e51b000c 	ldr	r0, [fp, #-12]
8002447c:	ebfff1ce 	bl	80020bbc <brelse>
80024480:	e1a00000 	nop			@ (mov r0, r0)
80024484:	e24bd004 	sub	sp, fp, #4
80024488:	e8bd8800 	pop	{fp, pc}
8002448c:	800ae4fc 	.word	0x800ae4fc

80024490 <recover_from_log>:
80024490:	e92d4800 	push	{fp, lr}
80024494:	e28db004 	add	fp, sp, #4
80024498:	ebffff9c 	bl	80024310 <read_head>
8002449c:	ebffff64 	bl	80024234 <install_trans>
800244a0:	e59f3010 	ldr	r3, [pc, #16]	@ 800244b8 <recover_from_log+0x28>
800244a4:	e3a02000 	mov	r2, #0
800244a8:	e5832044 	str	r2, [r3, #68]	@ 0x44
800244ac:	ebffffc6 	bl	800243cc <write_head>
800244b0:	e1a00000 	nop			@ (mov r0, r0)
800244b4:	e8bd8800 	pop	{fp, pc}
800244b8:	800ae4fc 	.word	0x800ae4fc

800244bc <begin_trans>:
800244bc:	e92d4800 	push	{fp, lr}
800244c0:	e28db004 	add	fp, sp, #4
800244c4:	e59f003c 	ldr	r0, [pc, #60]	@ 80024508 <begin_trans+0x4c>
800244c8:	eb0008e0 	bl	80026850 <acquire>
800244cc:	ea000002 	b	800244dc <begin_trans+0x20>
800244d0:	e59f1030 	ldr	r1, [pc, #48]	@ 80024508 <begin_trans+0x4c>
800244d4:	e59f002c 	ldr	r0, [pc, #44]	@ 80024508 <begin_trans+0x4c>
800244d8:	eb0005fa 	bl	80025cc8 <sleep>
800244dc:	e59f3024 	ldr	r3, [pc, #36]	@ 80024508 <begin_trans+0x4c>
800244e0:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800244e4:	e3530000 	cmp	r3, #0
800244e8:	1afffff8 	bne	800244d0 <begin_trans+0x14>
800244ec:	e59f3014 	ldr	r3, [pc, #20]	@ 80024508 <begin_trans+0x4c>
800244f0:	e3a02001 	mov	r2, #1
800244f4:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800244f8:	e59f0008 	ldr	r0, [pc, #8]	@ 80024508 <begin_trans+0x4c>
800244fc:	eb0008de 	bl	8002687c <release>
80024500:	e1a00000 	nop			@ (mov r0, r0)
80024504:	e8bd8800 	pop	{fp, pc}
80024508:	800ae4fc 	.word	0x800ae4fc

8002450c <commit_trans>:
8002450c:	e92d4800 	push	{fp, lr}
80024510:	e28db004 	add	fp, sp, #4
80024514:	e59f304c 	ldr	r3, [pc, #76]	@ 80024568 <commit_trans+0x5c>
80024518:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002451c:	e3530000 	cmp	r3, #0
80024520:	da000005 	ble	8002453c <commit_trans+0x30>
80024524:	ebffffa8 	bl	800243cc <write_head>
80024528:	ebffff41 	bl	80024234 <install_trans>
8002452c:	e59f3034 	ldr	r3, [pc, #52]	@ 80024568 <commit_trans+0x5c>
80024530:	e3a02000 	mov	r2, #0
80024534:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024538:	ebffffa3 	bl	800243cc <write_head>
8002453c:	e59f0024 	ldr	r0, [pc, #36]	@ 80024568 <commit_trans+0x5c>
80024540:	eb0008c2 	bl	80026850 <acquire>
80024544:	e59f301c 	ldr	r3, [pc, #28]	@ 80024568 <commit_trans+0x5c>
80024548:	e3a02000 	mov	r2, #0
8002454c:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024550:	e59f0010 	ldr	r0, [pc, #16]	@ 80024568 <commit_trans+0x5c>
80024554:	eb00064f 	bl	80025e98 <wakeup>
80024558:	e59f0008 	ldr	r0, [pc, #8]	@ 80024568 <commit_trans+0x5c>
8002455c:	eb0008c6 	bl	8002687c <release>
80024560:	e1a00000 	nop			@ (mov r0, r0)
80024564:	e8bd8800 	pop	{fp, pc}
80024568:	800ae4fc 	.word	0x800ae4fc

8002456c <log_write>:
8002456c:	e92d4800 	push	{fp, lr}
80024570:	e28db004 	add	fp, sp, #4
80024574:	e24dd010 	sub	sp, sp, #16
80024578:	e50b0010 	str	r0, [fp, #-16]
8002457c:	e59f3164 	ldr	r3, [pc, #356]	@ 800246e8 <log_write+0x17c>
80024580:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024584:	e3530009 	cmp	r3, #9
80024588:	ca000006 	bgt	800245a8 <log_write+0x3c>
8002458c:	e59f3154 	ldr	r3, [pc, #340]	@ 800246e8 <log_write+0x17c>
80024590:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024594:	e59f314c 	ldr	r3, [pc, #332]	@ 800246e8 <log_write+0x17c>
80024598:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002459c:	e2433001 	sub	r3, r3, #1
800245a0:	e1520003 	cmp	r2, r3
800245a4:	ba000001 	blt	800245b0 <log_write+0x44>
800245a8:	e59f013c 	ldr	r0, [pc, #316]	@ 800246ec <log_write+0x180>
800245ac:	ebfff550 	bl	80021af4 <panic>
800245b0:	e59f3130 	ldr	r3, [pc, #304]	@ 800246e8 <log_write+0x17c>
800245b4:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800245b8:	e3530000 	cmp	r3, #0
800245bc:	1a000001 	bne	800245c8 <log_write+0x5c>
800245c0:	e59f0128 	ldr	r0, [pc, #296]	@ 800246f0 <log_write+0x184>
800245c4:	ebfff54a 	bl	80021af4 <panic>
800245c8:	e3a03000 	mov	r3, #0
800245cc:	e50b3008 	str	r3, [fp, #-8]
800245d0:	ea00000d 	b	8002460c <log_write+0xa0>
800245d4:	e59f210c 	ldr	r2, [pc, #268]	@ 800246e8 <log_write+0x17c>
800245d8:	e51b3008 	ldr	r3, [fp, #-8]
800245dc:	e2833010 	add	r3, r3, #16
800245e0:	e1a03103 	lsl	r3, r3, #2
800245e4:	e0823003 	add	r3, r2, r3
800245e8:	e5933008 	ldr	r3, [r3, #8]
800245ec:	e1a02003 	mov	r2, r3
800245f0:	e51b3010 	ldr	r3, [fp, #-16]
800245f4:	e5933008 	ldr	r3, [r3, #8]
800245f8:	e1520003 	cmp	r2, r3
800245fc:	0a000008 	beq	80024624 <log_write+0xb8>
80024600:	e51b3008 	ldr	r3, [fp, #-8]
80024604:	e2833001 	add	r3, r3, #1
80024608:	e50b3008 	str	r3, [fp, #-8]
8002460c:	e59f30d4 	ldr	r3, [pc, #212]	@ 800246e8 <log_write+0x17c>
80024610:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024614:	e51b2008 	ldr	r2, [fp, #-8]
80024618:	e1520003 	cmp	r2, r3
8002461c:	baffffec 	blt	800245d4 <log_write+0x68>
80024620:	ea000000 	b	80024628 <log_write+0xbc>
80024624:	e1a00000 	nop			@ (mov r0, r0)
80024628:	e51b3010 	ldr	r3, [fp, #-16]
8002462c:	e5933008 	ldr	r3, [r3, #8]
80024630:	e1a01003 	mov	r1, r3
80024634:	e59f20ac 	ldr	r2, [pc, #172]	@ 800246e8 <log_write+0x17c>
80024638:	e51b3008 	ldr	r3, [fp, #-8]
8002463c:	e2833010 	add	r3, r3, #16
80024640:	e1a03103 	lsl	r3, r3, #2
80024644:	e0823003 	add	r3, r2, r3
80024648:	e5831008 	str	r1, [r3, #8]
8002464c:	e51b3010 	ldr	r3, [fp, #-16]
80024650:	e5930004 	ldr	r0, [r3, #4]
80024654:	e59f308c 	ldr	r3, [pc, #140]	@ 800246e8 <log_write+0x17c>
80024658:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
8002465c:	e51b3008 	ldr	r3, [fp, #-8]
80024660:	e0823003 	add	r3, r2, r3
80024664:	e2833001 	add	r3, r3, #1
80024668:	e1a01003 	mov	r1, r3
8002466c:	ebfff128 	bl	80020b14 <bread>
80024670:	e50b000c 	str	r0, [fp, #-12]
80024674:	e51b300c 	ldr	r3, [fp, #-12]
80024678:	e2830018 	add	r0, r3, #24
8002467c:	e51b3010 	ldr	r3, [fp, #-16]
80024680:	e2833018 	add	r3, r3, #24
80024684:	e3a02c02 	mov	r2, #512	@ 0x200
80024688:	e1a01003 	mov	r1, r3
8002468c:	ebffeecd 	bl	800201c8 <memmove>
80024690:	e51b000c 	ldr	r0, [fp, #-12]
80024694:	ebfff132 	bl	80020b64 <bwrite>
80024698:	e51b000c 	ldr	r0, [fp, #-12]
8002469c:	ebfff146 	bl	80020bbc <brelse>
800246a0:	e59f3040 	ldr	r3, [pc, #64]	@ 800246e8 <log_write+0x17c>
800246a4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246a8:	e51b2008 	ldr	r2, [fp, #-8]
800246ac:	e1520003 	cmp	r2, r3
800246b0:	1a000004 	bne	800246c8 <log_write+0x15c>
800246b4:	e59f302c 	ldr	r3, [pc, #44]	@ 800246e8 <log_write+0x17c>
800246b8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246bc:	e2833001 	add	r3, r3, #1
800246c0:	e59f2020 	ldr	r2, [pc, #32]	@ 800246e8 <log_write+0x17c>
800246c4:	e5823044 	str	r3, [r2, #68]	@ 0x44
800246c8:	e51b3010 	ldr	r3, [fp, #-16]
800246cc:	e5933000 	ldr	r3, [r3]
800246d0:	e3832004 	orr	r2, r3, #4
800246d4:	e51b3010 	ldr	r3, [fp, #-16]
800246d8:	e5832000 	str	r2, [r3]
800246dc:	e1a00000 	nop			@ (mov r0, r0)
800246e0:	e24bd004 	sub	sp, fp, #4
800246e4:	e8bd8800 	pop	{fp, pc}
800246e8:	800ae4fc 	.word	0x800ae4fc
800246ec:	8002a8c4 	.word	0x8002a8c4
800246f0:	8002a8dc 	.word	0x8002a8dc

800246f4 <kmain>:
800246f4:	e92d4800 	push	{fp, lr}
800246f8:	e28db004 	add	fp, sp, #4
800246fc:	e24dd008 	sub	sp, sp, #8
80024700:	e59f30a4 	ldr	r3, [pc, #164]	@ 800247ac <kmain+0xb8>
80024704:	e59f20a4 	ldr	r2, [pc, #164]	@ 800247b0 <kmain+0xbc>
80024708:	e5832000 	str	r2, [r3]
8002470c:	e59f00a0 	ldr	r0, [pc, #160]	@ 800247b4 <kmain+0xc0>
80024710:	eb0016b7 	bl	8002a1f4 <uart_init>
80024714:	e59f309c 	ldr	r3, [pc, #156]	@ 800247b8 <kmain+0xc4>
80024718:	e50b3008 	str	r3, [fp, #-8]
8002471c:	eb00128c 	bl	80029154 <init_vmm>
80024720:	e59f3094 	ldr	r3, [pc, #148]	@ 800247bc <kmain+0xc8>
80024724:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024728:	e2833003 	add	r3, r3, #3
8002472c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024730:	e3c33003 	bic	r3, r3, #3
80024734:	e51b1008 	ldr	r1, [fp, #-8]
80024738:	e1a00003 	mov	r0, r3
8002473c:	eb0012b8 	bl	80029224 <kpt_freerange>
80024740:	e51b3008 	ldr	r3, [fp, #-8]
80024744:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024748:	e59f1070 	ldr	r1, [pc, #112]	@ 800247c0 <kmain+0xcc>
8002474c:	e1a00003 	mov	r0, r3
80024750:	eb0012b3 	bl	80029224 <kpt_freerange>
80024754:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024758:	e3a00601 	mov	r0, #1048576	@ 0x100000
8002475c:	eb00155b 	bl	80029cd0 <paging_init>
80024760:	ebfff194 	bl	80020db8 <kmem_init>
80024764:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024768:	e59f0050 	ldr	r0, [pc, #80]	@ 800247c0 <kmain+0xcc>
8002476c:	ebfff19a 	bl	80020ddc <kmem_init2>
80024770:	eb001185 	bl	80028d8c <trap_init>
80024774:	e59f0048 	ldr	r0, [pc, #72]	@ 800247c4 <kmain+0xd0>
80024778:	eb0015b9 	bl	80029e64 <pic_init>
8002477c:	eb0016cd 	bl	8002a2b8 <uart_enable_rx>
80024780:	ebfff629 	bl	8002202c <consoleinit>
80024784:	eb0001ca 	bl	80024eb4 <pinit>
80024788:	ebfff050 	bl	800208d0 <binit>
8002478c:	ebfff78e 	bl	800225cc <fileinit>
80024790:	ebfff9ba 	bl	80022e80 <iinit>
80024794:	eb00000b 	bl	800247c8 <ideinit>
80024798:	e3a0000a 	mov	r0, #10
8002479c:	eb001643 	bl	8002a0b0 <timer_init>
800247a0:	ebffef74 	bl	80020578 <sti>
800247a4:	eb0002e1 	bl	80025330 <userinit>
800247a8:	eb000497 	bl	80025a0c <scheduler>
800247ac:	800ae64c 	.word	0x800ae64c
800247b0:	800ae56c 	.word	0x800ae56c
800247b4:	901f1000 	.word	0x901f1000
800247b8:	800f0000 	.word	0x800f0000
800247bc:	800b2000 	.word	0x800b2000
800247c0:	80100000 	.word	0x80100000
800247c4:	90140000 	.word	0x90140000

800247c8 <ideinit>:
800247c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800247cc:	e28db000 	add	fp, sp, #0
800247d0:	e59f3028 	ldr	r3, [pc, #40]	@ 80024800 <ideinit+0x38>
800247d4:	e59f2028 	ldr	r2, [pc, #40]	@ 80024804 <ideinit+0x3c>
800247d8:	e5832000 	str	r2, [r3]
800247dc:	e59f3024 	ldr	r3, [pc, #36]	@ 80024808 <ideinit+0x40>
800247e0:	e1a034a3 	lsr	r3, r3, #9
800247e4:	e1a02003 	mov	r2, r3
800247e8:	e59f301c 	ldr	r3, [pc, #28]	@ 8002480c <ideinit+0x44>
800247ec:	e5832000 	str	r2, [r3]
800247f0:	e1a00000 	nop			@ (mov r0, r0)
800247f4:	e28bd000 	add	sp, fp, #0
800247f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800247fc:	e12fff1e 	bx	lr
80024800:	800ae654 	.word	0x800ae654
80024804:	8002b114 	.word	0x8002b114
80024808:	00080000 	.word	0x00080000
8002480c:	800ae650 	.word	0x800ae650

80024810 <ideintr>:
80024810:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024814:	e28db000 	add	fp, sp, #0
80024818:	e1a00000 	nop			@ (mov r0, r0)
8002481c:	e28bd000 	add	sp, fp, #0
80024820:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024824:	e12fff1e 	bx	lr

80024828 <iderw>:
80024828:	e92d4800 	push	{fp, lr}
8002482c:	e28db004 	add	fp, sp, #4
80024830:	e24dd010 	sub	sp, sp, #16
80024834:	e50b0010 	str	r0, [fp, #-16]
80024838:	e51b3010 	ldr	r3, [fp, #-16]
8002483c:	e5933000 	ldr	r3, [r3]
80024840:	e2033001 	and	r3, r3, #1
80024844:	e3530000 	cmp	r3, #0
80024848:	1a000001 	bne	80024854 <iderw+0x2c>
8002484c:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024940 <iderw+0x118>
80024850:	ebfff4a7 	bl	80021af4 <panic>
80024854:	e51b3010 	ldr	r3, [fp, #-16]
80024858:	e5933000 	ldr	r3, [r3]
8002485c:	e2033006 	and	r3, r3, #6
80024860:	e3530002 	cmp	r3, #2
80024864:	1a000001 	bne	80024870 <iderw+0x48>
80024868:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024944 <iderw+0x11c>
8002486c:	ebfff4a0 	bl	80021af4 <panic>
80024870:	e51b3010 	ldr	r3, [fp, #-16]
80024874:	e5933004 	ldr	r3, [r3, #4]
80024878:	e3530001 	cmp	r3, #1
8002487c:	0a000001 	beq	80024888 <iderw+0x60>
80024880:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024948 <iderw+0x120>
80024884:	ebfff49a 	bl	80021af4 <panic>
80024888:	e51b3010 	ldr	r3, [fp, #-16]
8002488c:	e5933008 	ldr	r3, [r3, #8]
80024890:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002494c <iderw+0x124>
80024894:	e5922000 	ldr	r2, [r2]
80024898:	e1530002 	cmp	r3, r2
8002489c:	3a000001 	bcc	800248a8 <iderw+0x80>
800248a0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024950 <iderw+0x128>
800248a4:	ebfff492 	bl	80021af4 <panic>
800248a8:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024954 <iderw+0x12c>
800248ac:	e5932000 	ldr	r2, [r3]
800248b0:	e51b3010 	ldr	r3, [fp, #-16]
800248b4:	e5933008 	ldr	r3, [r3, #8]
800248b8:	e1a03483 	lsl	r3, r3, #9
800248bc:	e0823003 	add	r3, r2, r3
800248c0:	e50b3008 	str	r3, [fp, #-8]
800248c4:	e51b3010 	ldr	r3, [fp, #-16]
800248c8:	e5933000 	ldr	r3, [r3]
800248cc:	e2033004 	and	r3, r3, #4
800248d0:	e3530000 	cmp	r3, #0
800248d4:	0a00000b 	beq	80024908 <iderw+0xe0>
800248d8:	e51b3010 	ldr	r3, [fp, #-16]
800248dc:	e5933000 	ldr	r3, [r3]
800248e0:	e3c32004 	bic	r2, r3, #4
800248e4:	e51b3010 	ldr	r3, [fp, #-16]
800248e8:	e5832000 	str	r2, [r3]
800248ec:	e51b3010 	ldr	r3, [fp, #-16]
800248f0:	e2833018 	add	r3, r3, #24
800248f4:	e3a02c02 	mov	r2, #512	@ 0x200
800248f8:	e1a01003 	mov	r1, r3
800248fc:	e51b0008 	ldr	r0, [fp, #-8]
80024900:	ebffee30 	bl	800201c8 <memmove>
80024904:	ea000005 	b	80024920 <iderw+0xf8>
80024908:	e51b3010 	ldr	r3, [fp, #-16]
8002490c:	e2833018 	add	r3, r3, #24
80024910:	e3a02c02 	mov	r2, #512	@ 0x200
80024914:	e51b1008 	ldr	r1, [fp, #-8]
80024918:	e1a00003 	mov	r0, r3
8002491c:	ebffee29 	bl	800201c8 <memmove>
80024920:	e51b3010 	ldr	r3, [fp, #-16]
80024924:	e5933000 	ldr	r3, [r3]
80024928:	e3832002 	orr	r2, r3, #2
8002492c:	e51b3010 	ldr	r3, [fp, #-16]
80024930:	e5832000 	str	r2, [r3]
80024934:	e1a00000 	nop			@ (mov r0, r0)
80024938:	e24bd004 	sub	sp, fp, #4
8002493c:	e8bd8800 	pop	{fp, pc}
80024940:	8002a8f4 	.word	0x8002a8f4
80024944:	8002a908 	.word	0x8002a908
80024948:	8002a920 	.word	0x8002a920
8002494c:	800ae650 	.word	0x800ae650
80024950:	8002a940 	.word	0x8002a940
80024954:	800ae654 	.word	0x800ae654

80024958 <pipealloc>:
80024958:	e92d4800 	push	{fp, lr}
8002495c:	e28db004 	add	fp, sp, #4
80024960:	e24dd010 	sub	sp, sp, #16
80024964:	e50b0010 	str	r0, [fp, #-16]
80024968:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002496c:	e3a03000 	mov	r3, #0
80024970:	e50b3008 	str	r3, [fp, #-8]
80024974:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024978:	e3a02000 	mov	r2, #0
8002497c:	e5832000 	str	r2, [r3]
80024980:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024984:	e5932000 	ldr	r2, [r3]
80024988:	e51b3010 	ldr	r3, [fp, #-16]
8002498c:	e5832000 	str	r2, [r3]
80024990:	ebfff716 	bl	800225f0 <filealloc>
80024994:	e1a02000 	mov	r2, r0
80024998:	e51b3010 	ldr	r3, [fp, #-16]
8002499c:	e5832000 	str	r2, [r3]
800249a0:	e51b3010 	ldr	r3, [fp, #-16]
800249a4:	e5933000 	ldr	r3, [r3]
800249a8:	e3530000 	cmp	r3, #0
800249ac:	0a000042 	beq	80024abc <pipealloc+0x164>
800249b0:	ebfff70e 	bl	800225f0 <filealloc>
800249b4:	e1a02000 	mov	r2, r0
800249b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249bc:	e5832000 	str	r2, [r3]
800249c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249c4:	e5933000 	ldr	r3, [r3]
800249c8:	e3530000 	cmp	r3, #0
800249cc:	0a00003a 	beq	80024abc <pipealloc+0x164>
800249d0:	e3a00f91 	mov	r0, #580	@ 0x244
800249d4:	ebfff31c 	bl	8002164c <get_order>
800249d8:	e1a03000 	mov	r3, r0
800249dc:	e1a00003 	mov	r0, r3
800249e0:	ebfff28f 	bl	80021424 <kmalloc>
800249e4:	e50b0008 	str	r0, [fp, #-8]
800249e8:	e51b3008 	ldr	r3, [fp, #-8]
800249ec:	e3530000 	cmp	r3, #0
800249f0:	0a000033 	beq	80024ac4 <pipealloc+0x16c>
800249f4:	e51b3008 	ldr	r3, [fp, #-8]
800249f8:	e3a02001 	mov	r2, #1
800249fc:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024a00:	e51b3008 	ldr	r3, [fp, #-8]
80024a04:	e3a02001 	mov	r2, #1
80024a08:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024a0c:	e51b3008 	ldr	r3, [fp, #-8]
80024a10:	e3a02000 	mov	r2, #0
80024a14:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024a18:	e51b3008 	ldr	r3, [fp, #-8]
80024a1c:	e3a02000 	mov	r2, #0
80024a20:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024a24:	e51b3008 	ldr	r3, [fp, #-8]
80024a28:	e59f110c 	ldr	r1, [pc, #268]	@ 80024b3c <pipealloc+0x1e4>
80024a2c:	e1a00003 	mov	r0, r3
80024a30:	eb000774 	bl	80026808 <initlock>
80024a34:	e51b3010 	ldr	r3, [fp, #-16]
80024a38:	e5933000 	ldr	r3, [r3]
80024a3c:	e3a02001 	mov	r2, #1
80024a40:	e5c32000 	strb	r2, [r3]
80024a44:	e51b3010 	ldr	r3, [fp, #-16]
80024a48:	e5933000 	ldr	r3, [r3]
80024a4c:	e3a02001 	mov	r2, #1
80024a50:	e5c32008 	strb	r2, [r3, #8]
80024a54:	e51b3010 	ldr	r3, [fp, #-16]
80024a58:	e5933000 	ldr	r3, [r3]
80024a5c:	e3a02000 	mov	r2, #0
80024a60:	e5c32009 	strb	r2, [r3, #9]
80024a64:	e51b3010 	ldr	r3, [fp, #-16]
80024a68:	e5933000 	ldr	r3, [r3]
80024a6c:	e51b2008 	ldr	r2, [fp, #-8]
80024a70:	e583200c 	str	r2, [r3, #12]
80024a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a78:	e5933000 	ldr	r3, [r3]
80024a7c:	e3a02001 	mov	r2, #1
80024a80:	e5c32000 	strb	r2, [r3]
80024a84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a88:	e5933000 	ldr	r3, [r3]
80024a8c:	e3a02000 	mov	r2, #0
80024a90:	e5c32008 	strb	r2, [r3, #8]
80024a94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a98:	e5933000 	ldr	r3, [r3]
80024a9c:	e3a02001 	mov	r2, #1
80024aa0:	e5c32009 	strb	r2, [r3, #9]
80024aa4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024aa8:	e5933000 	ldr	r3, [r3]
80024aac:	e51b2008 	ldr	r2, [fp, #-8]
80024ab0:	e583200c 	str	r2, [r3, #12]
80024ab4:	e3a03000 	mov	r3, #0
80024ab8:	ea00001c 	b	80024b30 <pipealloc+0x1d8>
80024abc:	e1a00000 	nop			@ (mov r0, r0)
80024ac0:	ea000000 	b	80024ac8 <pipealloc+0x170>
80024ac4:	e1a00000 	nop			@ (mov r0, r0)
80024ac8:	e51b3008 	ldr	r3, [fp, #-8]
80024acc:	e3530000 	cmp	r3, #0
80024ad0:	0a000005 	beq	80024aec <pipealloc+0x194>
80024ad4:	e3a00f91 	mov	r0, #580	@ 0x244
80024ad8:	ebfff2db 	bl	8002164c <get_order>
80024adc:	e1a03000 	mov	r3, r0
80024ae0:	e1a01003 	mov	r1, r3
80024ae4:	e51b0008 	ldr	r0, [fp, #-8]
80024ae8:	ebfff2a4 	bl	80021580 <kfree>
80024aec:	e51b3010 	ldr	r3, [fp, #-16]
80024af0:	e5933000 	ldr	r3, [r3]
80024af4:	e3530000 	cmp	r3, #0
80024af8:	0a000003 	beq	80024b0c <pipealloc+0x1b4>
80024afc:	e51b3010 	ldr	r3, [fp, #-16]
80024b00:	e5933000 	ldr	r3, [r3]
80024b04:	e1a00003 	mov	r0, r3
80024b08:	ebfff6f4 	bl	800226e0 <fileclose>
80024b0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b10:	e5933000 	ldr	r3, [r3]
80024b14:	e3530000 	cmp	r3, #0
80024b18:	0a000003 	beq	80024b2c <pipealloc+0x1d4>
80024b1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b20:	e5933000 	ldr	r3, [r3]
80024b24:	e1a00003 	mov	r0, r3
80024b28:	ebfff6ec 	bl	800226e0 <fileclose>
80024b2c:	e3e03000 	mvn	r3, #0
80024b30:	e1a00003 	mov	r0, r3
80024b34:	e24bd004 	sub	sp, fp, #4
80024b38:	e8bd8800 	pop	{fp, pc}
80024b3c:	8002a95c 	.word	0x8002a95c

80024b40 <pipeclose>:
80024b40:	e92d4800 	push	{fp, lr}
80024b44:	e28db004 	add	fp, sp, #4
80024b48:	e24dd008 	sub	sp, sp, #8
80024b4c:	e50b0008 	str	r0, [fp, #-8]
80024b50:	e50b100c 	str	r1, [fp, #-12]
80024b54:	e51b3008 	ldr	r3, [fp, #-8]
80024b58:	e1a00003 	mov	r0, r3
80024b5c:	eb00073b 	bl	80026850 <acquire>
80024b60:	e51b300c 	ldr	r3, [fp, #-12]
80024b64:	e3530000 	cmp	r3, #0
80024b68:	0a000007 	beq	80024b8c <pipeclose+0x4c>
80024b6c:	e51b3008 	ldr	r3, [fp, #-8]
80024b70:	e3a02000 	mov	r2, #0
80024b74:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024b78:	e51b3008 	ldr	r3, [fp, #-8]
80024b7c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024b80:	e1a00003 	mov	r0, r3
80024b84:	eb0004c3 	bl	80025e98 <wakeup>
80024b88:	ea000006 	b	80024ba8 <pipeclose+0x68>
80024b8c:	e51b3008 	ldr	r3, [fp, #-8]
80024b90:	e3a02000 	mov	r2, #0
80024b94:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024b98:	e51b3008 	ldr	r3, [fp, #-8]
80024b9c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024ba0:	e1a00003 	mov	r0, r3
80024ba4:	eb0004bb 	bl	80025e98 <wakeup>
80024ba8:	e51b3008 	ldr	r3, [fp, #-8]
80024bac:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024bb0:	e3530000 	cmp	r3, #0
80024bb4:	1a00000d 	bne	80024bf0 <pipeclose+0xb0>
80024bb8:	e51b3008 	ldr	r3, [fp, #-8]
80024bbc:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024bc0:	e3530000 	cmp	r3, #0
80024bc4:	1a000009 	bne	80024bf0 <pipeclose+0xb0>
80024bc8:	e51b3008 	ldr	r3, [fp, #-8]
80024bcc:	e1a00003 	mov	r0, r3
80024bd0:	eb000729 	bl	8002687c <release>
80024bd4:	e3a00f91 	mov	r0, #580	@ 0x244
80024bd8:	ebfff29b 	bl	8002164c <get_order>
80024bdc:	e1a03000 	mov	r3, r0
80024be0:	e1a01003 	mov	r1, r3
80024be4:	e51b0008 	ldr	r0, [fp, #-8]
80024be8:	ebfff264 	bl	80021580 <kfree>
80024bec:	ea000003 	b	80024c00 <pipeclose+0xc0>
80024bf0:	e51b3008 	ldr	r3, [fp, #-8]
80024bf4:	e1a00003 	mov	r0, r3
80024bf8:	eb00071f 	bl	8002687c <release>
80024bfc:	e1a00000 	nop			@ (mov r0, r0)
80024c00:	e1a00000 	nop			@ (mov r0, r0)
80024c04:	e24bd004 	sub	sp, fp, #4
80024c08:	e8bd8800 	pop	{fp, pc}

80024c0c <pipewrite>:
80024c0c:	e92d4800 	push	{fp, lr}
80024c10:	e28db004 	add	fp, sp, #4
80024c14:	e24dd018 	sub	sp, sp, #24
80024c18:	e50b0010 	str	r0, [fp, #-16]
80024c1c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024c20:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024c24:	e51b3010 	ldr	r3, [fp, #-16]
80024c28:	e1a00003 	mov	r0, r3
80024c2c:	eb000707 	bl	80026850 <acquire>
80024c30:	e3a03000 	mov	r3, #0
80024c34:	e50b3008 	str	r3, [fp, #-8]
80024c38:	ea00002b 	b	80024cec <pipewrite+0xe0>
80024c3c:	e51b3010 	ldr	r3, [fp, #-16]
80024c40:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024c44:	e3530000 	cmp	r3, #0
80024c48:	1a000004 	bne	80024c60 <pipewrite+0x54>
80024c4c:	e51b3010 	ldr	r3, [fp, #-16]
80024c50:	e1a00003 	mov	r0, r3
80024c54:	eb000708 	bl	8002687c <release>
80024c58:	e3e03000 	mvn	r3, #0
80024c5c:	ea00002e 	b	80024d1c <pipewrite+0x110>
80024c60:	e51b3010 	ldr	r3, [fp, #-16]
80024c64:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024c68:	e1a00003 	mov	r0, r3
80024c6c:	eb000489 	bl	80025e98 <wakeup>
80024c70:	e51b3010 	ldr	r3, [fp, #-16]
80024c74:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024c78:	e51b2010 	ldr	r2, [fp, #-16]
80024c7c:	e1a01002 	mov	r1, r2
80024c80:	e1a00003 	mov	r0, r3
80024c84:	eb00040f 	bl	80025cc8 <sleep>
80024c88:	e51b3010 	ldr	r3, [fp, #-16]
80024c8c:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024c90:	e51b3010 	ldr	r3, [fp, #-16]
80024c94:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024c98:	e2833c02 	add	r3, r3, #512	@ 0x200
80024c9c:	e1520003 	cmp	r2, r3
80024ca0:	0affffe5 	beq	80024c3c <pipewrite+0x30>
80024ca4:	e51b3008 	ldr	r3, [fp, #-8]
80024ca8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024cac:	e0822003 	add	r2, r2, r3
80024cb0:	e51b3010 	ldr	r3, [fp, #-16]
80024cb4:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024cb8:	e2830001 	add	r0, r3, #1
80024cbc:	e51b1010 	ldr	r1, [fp, #-16]
80024cc0:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024cc4:	e1a03b83 	lsl	r3, r3, #23
80024cc8:	e1a03ba3 	lsr	r3, r3, #23
80024ccc:	e5d21000 	ldrb	r1, [r2]
80024cd0:	e51b2010 	ldr	r2, [fp, #-16]
80024cd4:	e0823003 	add	r3, r2, r3
80024cd8:	e1a02001 	mov	r2, r1
80024cdc:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024ce0:	e51b3008 	ldr	r3, [fp, #-8]
80024ce4:	e2833001 	add	r3, r3, #1
80024ce8:	e50b3008 	str	r3, [fp, #-8]
80024cec:	e51b2008 	ldr	r2, [fp, #-8]
80024cf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024cf4:	e1520003 	cmp	r2, r3
80024cf8:	baffffe2 	blt	80024c88 <pipewrite+0x7c>
80024cfc:	e51b3010 	ldr	r3, [fp, #-16]
80024d00:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d04:	e1a00003 	mov	r0, r3
80024d08:	eb000462 	bl	80025e98 <wakeup>
80024d0c:	e51b3010 	ldr	r3, [fp, #-16]
80024d10:	e1a00003 	mov	r0, r3
80024d14:	eb0006d8 	bl	8002687c <release>
80024d18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d1c:	e1a00003 	mov	r0, r3
80024d20:	e24bd004 	sub	sp, fp, #4
80024d24:	e8bd8800 	pop	{fp, pc}

80024d28 <piperead>:
80024d28:	e92d4800 	push	{fp, lr}
80024d2c:	e28db004 	add	fp, sp, #4
80024d30:	e24dd018 	sub	sp, sp, #24
80024d34:	e50b0010 	str	r0, [fp, #-16]
80024d38:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024d3c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024d40:	e51b3010 	ldr	r3, [fp, #-16]
80024d44:	e1a00003 	mov	r0, r3
80024d48:	eb0006c0 	bl	80026850 <acquire>
80024d4c:	ea00000f 	b	80024d90 <piperead+0x68>
80024d50:	e59f310c 	ldr	r3, [pc, #268]	@ 80024e64 <piperead+0x13c>
80024d54:	e5933000 	ldr	r3, [r3]
80024d58:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024d5c:	e3530000 	cmp	r3, #0
80024d60:	0a000004 	beq	80024d78 <piperead+0x50>
80024d64:	e51b3010 	ldr	r3, [fp, #-16]
80024d68:	e1a00003 	mov	r0, r3
80024d6c:	eb0006c2 	bl	8002687c <release>
80024d70:	e3e03000 	mvn	r3, #0
80024d74:	ea000037 	b	80024e58 <piperead+0x130>
80024d78:	e51b3010 	ldr	r3, [fp, #-16]
80024d7c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d80:	e51b2010 	ldr	r2, [fp, #-16]
80024d84:	e1a01002 	mov	r1, r2
80024d88:	e1a00003 	mov	r0, r3
80024d8c:	eb0003cd 	bl	80025cc8 <sleep>
80024d90:	e51b3010 	ldr	r3, [fp, #-16]
80024d94:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024d98:	e51b3010 	ldr	r3, [fp, #-16]
80024d9c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024da0:	e1520003 	cmp	r2, r3
80024da4:	1a000003 	bne	80024db8 <piperead+0x90>
80024da8:	e51b3010 	ldr	r3, [fp, #-16]
80024dac:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024db0:	e3530000 	cmp	r3, #0
80024db4:	1affffe5 	bne	80024d50 <piperead+0x28>
80024db8:	e3a03000 	mov	r3, #0
80024dbc:	e50b3008 	str	r3, [fp, #-8]
80024dc0:	ea000016 	b	80024e20 <piperead+0xf8>
80024dc4:	e51b3010 	ldr	r3, [fp, #-16]
80024dc8:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024dcc:	e51b3010 	ldr	r3, [fp, #-16]
80024dd0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024dd4:	e1520003 	cmp	r2, r3
80024dd8:	0a000015 	beq	80024e34 <piperead+0x10c>
80024ddc:	e51b3010 	ldr	r3, [fp, #-16]
80024de0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024de4:	e2831001 	add	r1, r3, #1
80024de8:	e51b2010 	ldr	r2, [fp, #-16]
80024dec:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024df0:	e1a03b83 	lsl	r3, r3, #23
80024df4:	e1a03ba3 	lsr	r3, r3, #23
80024df8:	e51b2008 	ldr	r2, [fp, #-8]
80024dfc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024e00:	e0812002 	add	r2, r1, r2
80024e04:	e51b1010 	ldr	r1, [fp, #-16]
80024e08:	e0813003 	add	r3, r1, r3
80024e0c:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024e10:	e5c23000 	strb	r3, [r2]
80024e14:	e51b3008 	ldr	r3, [fp, #-8]
80024e18:	e2833001 	add	r3, r3, #1
80024e1c:	e50b3008 	str	r3, [fp, #-8]
80024e20:	e51b2008 	ldr	r2, [fp, #-8]
80024e24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024e28:	e1520003 	cmp	r2, r3
80024e2c:	baffffe4 	blt	80024dc4 <piperead+0x9c>
80024e30:	ea000000 	b	80024e38 <piperead+0x110>
80024e34:	e1a00000 	nop			@ (mov r0, r0)
80024e38:	e51b3010 	ldr	r3, [fp, #-16]
80024e3c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024e40:	e1a00003 	mov	r0, r3
80024e44:	eb000413 	bl	80025e98 <wakeup>
80024e48:	e51b3010 	ldr	r3, [fp, #-16]
80024e4c:	e1a00003 	mov	r0, r3
80024e50:	eb000689 	bl	8002687c <release>
80024e54:	e51b3008 	ldr	r3, [fp, #-8]
80024e58:	e1a00003 	mov	r0, r3
80024e5c:	e24bd004 	sub	sp, fp, #4
80024e60:	e8bd8800 	pop	{fp, pc}
80024e64:	800b0f94 	.word	0x800b0f94

80024e68 <rand>:
80024e68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024e6c:	e28db000 	add	fp, sp, #0
80024e70:	e59f3034 	ldr	r3, [pc, #52]	@ 80024eac <rand+0x44>
80024e74:	e5933000 	ldr	r3, [r3]
80024e78:	e59f2030 	ldr	r2, [pc, #48]	@ 80024eb0 <rand+0x48>
80024e7c:	e0030392 	mul	r3, r2, r3
80024e80:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80024e84:	e2833039 	add	r3, r3, #57	@ 0x39
80024e88:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80024e8c:	e59f2018 	ldr	r2, [pc, #24]	@ 80024eac <rand+0x44>
80024e90:	e5823000 	str	r3, [r2]
80024e94:	e59f3010 	ldr	r3, [pc, #16]	@ 80024eac <rand+0x44>
80024e98:	e5933000 	ldr	r3, [r3]
80024e9c:	e1a00003 	mov	r0, r3
80024ea0:	e28bd000 	add	sp, fp, #0
80024ea4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024ea8:	e12fff1e 	bx	lr
80024eac:	800ae658 	.word	0x800ae658
80024eb0:	41c64e6d 	.word	0x41c64e6d

80024eb4 <pinit>:
80024eb4:	e92d4800 	push	{fp, lr}
80024eb8:	e28db004 	add	fp, sp, #4
80024ebc:	e59f100c 	ldr	r1, [pc, #12]	@ 80024ed0 <pinit+0x1c>
80024ec0:	e59f000c 	ldr	r0, [pc, #12]	@ 80024ed4 <pinit+0x20>
80024ec4:	eb00064f 	bl	80026808 <initlock>
80024ec8:	e1a00000 	nop			@ (mov r0, r0)
80024ecc:	e8bd8800 	pop	{fp, pc}
80024ed0:	8002a964 	.word	0x8002a964
80024ed4:	800ae65c 	.word	0x800ae65c

80024ed8 <allocproc>:
80024ed8:	e92d4800 	push	{fp, lr}
80024edc:	e28db004 	add	fp, sp, #4
80024ee0:	e24dd008 	sub	sp, sp, #8
80024ee4:	e59f01b8 	ldr	r0, [pc, #440]	@ 800250a4 <allocproc+0x1cc>
80024ee8:	eb000658 	bl	80026850 <acquire>
80024eec:	e59f31b4 	ldr	r3, [pc, #436]	@ 800250a8 <allocproc+0x1d0>
80024ef0:	e50b3008 	str	r3, [fp, #-8]
80024ef4:	ea000006 	b	80024f14 <allocproc+0x3c>
80024ef8:	e51b3008 	ldr	r3, [fp, #-8]
80024efc:	e5d3300c 	ldrb	r3, [r3, #12]
80024f00:	e3530000 	cmp	r3, #0
80024f04:	0a00000a 	beq	80024f34 <allocproc+0x5c>
80024f08:	e51b3008 	ldr	r3, [fp, #-8]
80024f0c:	e28330a4 	add	r3, r3, #164	@ 0xa4
80024f10:	e50b3008 	str	r3, [fp, #-8]
80024f14:	e51b3008 	ldr	r3, [fp, #-8]
80024f18:	e59f218c 	ldr	r2, [pc, #396]	@ 800250ac <allocproc+0x1d4>
80024f1c:	e1530002 	cmp	r3, r2
80024f20:	3afffff4 	bcc	80024ef8 <allocproc+0x20>
80024f24:	e59f0178 	ldr	r0, [pc, #376]	@ 800250a4 <allocproc+0x1cc>
80024f28:	eb000653 	bl	8002687c <release>
80024f2c:	e3a03000 	mov	r3, #0
80024f30:	ea000058 	b	80025098 <allocproc+0x1c0>
80024f34:	e1a00000 	nop			@ (mov r0, r0)
80024f38:	e51b3008 	ldr	r3, [fp, #-8]
80024f3c:	e3a02001 	mov	r2, #1
80024f40:	e5c3200c 	strb	r2, [r3, #12]
80024f44:	e59f3164 	ldr	r3, [pc, #356]	@ 800250b0 <allocproc+0x1d8>
80024f48:	e5933000 	ldr	r3, [r3]
80024f4c:	e2832001 	add	r2, r3, #1
80024f50:	e59f1158 	ldr	r1, [pc, #344]	@ 800250b0 <allocproc+0x1d8>
80024f54:	e5812000 	str	r2, [r1]
80024f58:	e51b2008 	ldr	r2, [fp, #-8]
80024f5c:	e5823010 	str	r3, [r2, #16]
80024f60:	e59f013c 	ldr	r0, [pc, #316]	@ 800250a4 <allocproc+0x1cc>
80024f64:	eb000644 	bl	8002687c <release>
80024f68:	ebfff1b0 	bl	80021630 <alloc_page>
80024f6c:	e1a02000 	mov	r2, r0
80024f70:	e51b3008 	ldr	r3, [fp, #-8]
80024f74:	e5832008 	str	r2, [r3, #8]
80024f78:	e51b3008 	ldr	r3, [fp, #-8]
80024f7c:	e5933008 	ldr	r3, [r3, #8]
80024f80:	e3530000 	cmp	r3, #0
80024f84:	1a000004 	bne	80024f9c <allocproc+0xc4>
80024f88:	e51b3008 	ldr	r3, [fp, #-8]
80024f8c:	e3a02000 	mov	r2, #0
80024f90:	e5c3200c 	strb	r2, [r3, #12]
80024f94:	e3a03000 	mov	r3, #0
80024f98:	ea00003e 	b	80025098 <allocproc+0x1c0>
80024f9c:	e51b3008 	ldr	r3, [fp, #-8]
80024fa0:	e5933008 	ldr	r3, [r3, #8]
80024fa4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80024fa8:	e50b300c 	str	r3, [fp, #-12]
80024fac:	e51b300c 	ldr	r3, [fp, #-12]
80024fb0:	e2433048 	sub	r3, r3, #72	@ 0x48
80024fb4:	e50b300c 	str	r3, [fp, #-12]
80024fb8:	e51b3008 	ldr	r3, [fp, #-8]
80024fbc:	e51b200c 	ldr	r2, [fp, #-12]
80024fc0:	e5832018 	str	r2, [r3, #24]
80024fc4:	e51b300c 	ldr	r3, [fp, #-12]
80024fc8:	e2433004 	sub	r3, r3, #4
80024fcc:	e50b300c 	str	r3, [fp, #-12]
80024fd0:	e59f20dc 	ldr	r2, [pc, #220]	@ 800250b4 <allocproc+0x1dc>
80024fd4:	e51b300c 	ldr	r3, [fp, #-12]
80024fd8:	e5832000 	str	r2, [r3]
80024fdc:	e51b300c 	ldr	r3, [fp, #-12]
80024fe0:	e2433004 	sub	r3, r3, #4
80024fe4:	e50b300c 	str	r3, [fp, #-12]
80024fe8:	e51b3008 	ldr	r3, [fp, #-8]
80024fec:	e5933008 	ldr	r3, [r3, #8]
80024ff0:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80024ff4:	e51b300c 	ldr	r3, [fp, #-12]
80024ff8:	e5832000 	str	r2, [r3]
80024ffc:	e51b300c 	ldr	r3, [fp, #-12]
80025000:	e2433028 	sub	r3, r3, #40	@ 0x28
80025004:	e50b300c 	str	r3, [fp, #-12]
80025008:	e51b3008 	ldr	r3, [fp, #-8]
8002500c:	e51b200c 	ldr	r2, [fp, #-12]
80025010:	e583201c 	str	r2, [r3, #28]
80025014:	e51b3008 	ldr	r3, [fp, #-8]
80025018:	e593301c 	ldr	r3, [r3, #28]
8002501c:	e3a02028 	mov	r2, #40	@ 0x28
80025020:	e3a01000 	mov	r1, #0
80025024:	e1a00003 	mov	r0, r3
80025028:	ebffebf4 	bl	80020000 <memset>
8002502c:	e59f2084 	ldr	r2, [pc, #132]	@ 800250b8 <allocproc+0x1e0>
80025030:	e51b3008 	ldr	r3, [fp, #-8]
80025034:	e593301c 	ldr	r3, [r3, #28]
80025038:	e2822004 	add	r2, r2, #4
8002503c:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025040:	e51b3008 	ldr	r3, [fp, #-8]
80025044:	e3a02000 	mov	r2, #0
80025048:	e583207c 	str	r2, [r3, #124]	@ 0x7c
8002504c:	e59f3068 	ldr	r3, [pc, #104]	@ 800250bc <allocproc+0x1e4>
80025050:	e5933000 	ldr	r3, [r3]
80025054:	e5933014 	ldr	r3, [r3, #20]
80025058:	e3530000 	cmp	r3, #0
8002505c:	0a000006 	beq	8002507c <allocproc+0x1a4>
80025060:	e59f3054 	ldr	r3, [pc, #84]	@ 800250bc <allocproc+0x1e4>
80025064:	e5933000 	ldr	r3, [r3]
80025068:	e5933014 	ldr	r3, [r3, #20]
8002506c:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025070:	e51b3008 	ldr	r3, [fp, #-8]
80025074:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025078:	ea000002 	b	80025088 <allocproc+0x1b0>
8002507c:	e51b3008 	ldr	r3, [fp, #-8]
80025080:	e3a02001 	mov	r2, #1
80025084:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025088:	e51b3008 	ldr	r3, [fp, #-8]
8002508c:	e3a02000 	mov	r2, #0
80025090:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025094:	e51b3008 	ldr	r3, [fp, #-8]
80025098:	e1a00003 	mov	r0, r3
8002509c:	e24bd004 	sub	sp, fp, #4
800250a0:	e8bd8800 	pop	{fp, pc}
800250a4:	800ae65c 	.word	0x800ae65c
800250a8:	800ae690 	.word	0x800ae690
800250ac:	800b0f90 	.word	0x800b0f90
800250b0:	8002b014 	.word	0x8002b014
800250b4:	80028928 	.word	0x80028928
800250b8:	80025c88 	.word	0x80025c88
800250bc:	800b0f94 	.word	0x800b0f94

800250c0 <proclist>:
800250c0:	e92d4800 	push	{fp, lr}
800250c4:	e28db004 	add	fp, sp, #4
800250c8:	e24dd010 	sub	sp, sp, #16
800250cc:	e50b0010 	str	r0, [fp, #-16]
800250d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800250d4:	e3a03000 	mov	r3, #0
800250d8:	e50b300c 	str	r3, [fp, #-12]
800250dc:	e59f012c 	ldr	r0, [pc, #300]	@ 80025210 <proclist+0x150>
800250e0:	eb0005da 	bl	80026850 <acquire>
800250e4:	e59f3128 	ldr	r3, [pc, #296]	@ 80025214 <proclist+0x154>
800250e8:	e50b3008 	str	r3, [fp, #-8]
800250ec:	ea000039 	b	800251d8 <proclist+0x118>
800250f0:	e51b3008 	ldr	r3, [fp, #-8]
800250f4:	e5d3300c 	ldrb	r3, [r3, #12]
800250f8:	e3530000 	cmp	r3, #0
800250fc:	0a000031 	beq	800251c8 <proclist+0x108>
80025100:	e51b300c 	ldr	r3, [fp, #-12]
80025104:	e1a03283 	lsl	r3, r3, #5
80025108:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002510c:	e0823003 	add	r3, r2, r3
80025110:	e51b2008 	ldr	r2, [fp, #-8]
80025114:	e5922010 	ldr	r2, [r2, #16]
80025118:	e5832000 	str	r2, [r3]
8002511c:	e51b3008 	ldr	r3, [fp, #-8]
80025120:	e5933014 	ldr	r3, [r3, #20]
80025124:	e3530000 	cmp	r3, #0
80025128:	0a000003 	beq	8002513c <proclist+0x7c>
8002512c:	e51b3008 	ldr	r3, [fp, #-8]
80025130:	e5933014 	ldr	r3, [r3, #20]
80025134:	e5933010 	ldr	r3, [r3, #16]
80025138:	ea000000 	b	80025140 <proclist+0x80>
8002513c:	e3a03000 	mov	r3, #0
80025140:	e51b200c 	ldr	r2, [fp, #-12]
80025144:	e1a02282 	lsl	r2, r2, #5
80025148:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002514c:	e0812002 	add	r2, r1, r2
80025150:	e5823004 	str	r3, [r2, #4]
80025154:	e51b300c 	ldr	r3, [fp, #-12]
80025158:	e1a03283 	lsl	r3, r3, #5
8002515c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025160:	e0823003 	add	r3, r2, r3
80025164:	e2830008 	add	r0, r3, #8
80025168:	e51b3008 	ldr	r3, [fp, #-8]
8002516c:	e283306c 	add	r3, r3, #108	@ 0x6c
80025170:	e3a02010 	mov	r2, #16
80025174:	e1a01003 	mov	r1, r3
80025178:	ebffecb4 	bl	80020450 <safestrcpy>
8002517c:	e51b3008 	ldr	r3, [fp, #-8]
80025180:	e5d3100c 	ldrb	r1, [r3, #12]
80025184:	e51b300c 	ldr	r3, [fp, #-12]
80025188:	e1a03283 	lsl	r3, r3, #5
8002518c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025190:	e0823003 	add	r3, r2, r3
80025194:	e1a02001 	mov	r2, r1
80025198:	e5832018 	str	r2, [r3, #24]
8002519c:	e51b300c 	ldr	r3, [fp, #-12]
800251a0:	e1a03283 	lsl	r3, r3, #5
800251a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800251a8:	e0823003 	add	r3, r2, r3
800251ac:	e51b2008 	ldr	r2, [fp, #-8]
800251b0:	e592207c 	ldr	r2, [r2, #124]	@ 0x7c
800251b4:	e583201c 	str	r2, [r3, #28]
800251b8:	e51b300c 	ldr	r3, [fp, #-12]
800251bc:	e2833001 	add	r3, r3, #1
800251c0:	e50b300c 	str	r3, [fp, #-12]
800251c4:	ea000000 	b	800251cc <proclist+0x10c>
800251c8:	e1a00000 	nop			@ (mov r0, r0)
800251cc:	e51b3008 	ldr	r3, [fp, #-8]
800251d0:	e28330a4 	add	r3, r3, #164	@ 0xa4
800251d4:	e50b3008 	str	r3, [fp, #-8]
800251d8:	e51b3008 	ldr	r3, [fp, #-8]
800251dc:	e59f2034 	ldr	r2, [pc, #52]	@ 80025218 <proclist+0x158>
800251e0:	e1530002 	cmp	r3, r2
800251e4:	2a000003 	bcs	800251f8 <proclist+0x138>
800251e8:	e51b200c 	ldr	r2, [fp, #-12]
800251ec:	e51b3010 	ldr	r3, [fp, #-16]
800251f0:	e1520003 	cmp	r2, r3
800251f4:	baffffbd 	blt	800250f0 <proclist+0x30>
800251f8:	e59f0010 	ldr	r0, [pc, #16]	@ 80025210 <proclist+0x150>
800251fc:	eb00059e 	bl	8002687c <release>
80025200:	e51b300c 	ldr	r3, [fp, #-12]
80025204:	e1a00003 	mov	r0, r3
80025208:	e24bd004 	sub	sp, fp, #4
8002520c:	e8bd8800 	pop	{fp, pc}
80025210:	800ae65c 	.word	0x800ae65c
80025214:	800ae690 	.word	0x800ae690
80025218:	800b0f90 	.word	0x800b0f90

8002521c <error_init>:
8002521c:	e92d4800 	push	{fp, lr}
80025220:	e28db004 	add	fp, sp, #4
80025224:	e59f0000 	ldr	r0, [pc]	@ 8002522c <error_init+0x10>
80025228:	ebfff231 	bl	80021af4 <panic>
8002522c:	8002a96c 	.word	0x8002a96c

80025230 <hold_lottery>:
80025230:	e92d4800 	push	{fp, lr}
80025234:	e28db004 	add	fp, sp, #4
80025238:	e24dd020 	sub	sp, sp, #32
8002523c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025240:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025244:	e3530000 	cmp	r3, #0
80025248:	ca000003 	bgt	8002525c <hold_lottery+0x2c>
8002524c:	e59f00d0 	ldr	r0, [pc, #208]	@ 80025324 <hold_lottery+0xf4>
80025250:	ebfff18f 	bl	80021894 <cprintf>
80025254:	e3a03000 	mov	r3, #0
80025258:	ea00002e 	b	80025318 <hold_lottery+0xe8>
8002525c:	ebffff01 	bl	80024e68 <rand>
80025260:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025264:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80025268:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002526c:	e1a01002 	mov	r1, r2
80025270:	e1a00003 	mov	r0, r3
80025274:	eb00149b 	bl	8002a4e8 <__aeabi_uidivmod>
80025278:	e1a03001 	mov	r3, r1
8002527c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025280:	e3a03000 	mov	r3, #0
80025284:	e50b3008 	str	r3, [fp, #-8]
80025288:	e59f3098 	ldr	r3, [pc, #152]	@ 80025328 <hold_lottery+0xf8>
8002528c:	e50b300c 	str	r3, [fp, #-12]
80025290:	ea00001b 	b	80025304 <hold_lottery+0xd4>
80025294:	e51b300c 	ldr	r3, [fp, #-12]
80025298:	e5d3300c 	ldrb	r3, [r3, #12]
8002529c:	e3530003 	cmp	r3, #3
800252a0:	1a000013 	bne	800252f4 <hold_lottery+0xc4>
800252a4:	e51b300c 	ldr	r3, [fp, #-12]
800252a8:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800252ac:	e50b3010 	str	r3, [fp, #-16]
800252b0:	e51b300c 	ldr	r3, [fp, #-12]
800252b4:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
800252b8:	e3530000 	cmp	r3, #0
800252bc:	da000002 	ble	800252cc <hold_lottery+0x9c>
800252c0:	e51b3010 	ldr	r3, [fp, #-16]
800252c4:	e1a03083 	lsl	r3, r3, #1
800252c8:	e50b3010 	str	r3, [fp, #-16]
800252cc:	e51b2008 	ldr	r2, [fp, #-8]
800252d0:	e51b3010 	ldr	r3, [fp, #-16]
800252d4:	e0823003 	add	r3, r2, r3
800252d8:	e50b3008 	str	r3, [fp, #-8]
800252dc:	e51b3008 	ldr	r3, [fp, #-8]
800252e0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800252e4:	e1520003 	cmp	r2, r3
800252e8:	2a000002 	bcs	800252f8 <hold_lottery+0xc8>
800252ec:	e51b300c 	ldr	r3, [fp, #-12]
800252f0:	ea000008 	b	80025318 <hold_lottery+0xe8>
800252f4:	e1a00000 	nop			@ (mov r0, r0)
800252f8:	e51b300c 	ldr	r3, [fp, #-12]
800252fc:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025300:	e50b300c 	str	r3, [fp, #-12]
80025304:	e51b300c 	ldr	r3, [fp, #-12]
80025308:	e59f201c 	ldr	r2, [pc, #28]	@ 8002532c <hold_lottery+0xfc>
8002530c:	e1530002 	cmp	r3, r2
80025310:	3affffdf 	bcc	80025294 <hold_lottery+0x64>
80025314:	e3a03000 	mov	r3, #0
80025318:	e1a00003 	mov	r0, r3
8002531c:	e24bd004 	sub	sp, fp, #4
80025320:	e8bd8800 	pop	{fp, pc}
80025324:	8002a98c 	.word	0x8002a98c
80025328:	800ae690 	.word	0x800ae690
8002532c:	800b0f90 	.word	0x800b0f90

80025330 <userinit>:
80025330:	e92d4810 	push	{r4, fp, lr}
80025334:	e28db008 	add	fp, sp, #8
80025338:	e24dd00c 	sub	sp, sp, #12
8002533c:	ebfffee5 	bl	80024ed8 <allocproc>
80025340:	e50b0010 	str	r0, [fp, #-16]
80025344:	e59f2100 	ldr	r2, [pc, #256]	@ 8002544c <userinit+0x11c>
80025348:	e51b3010 	ldr	r3, [fp, #-16]
8002534c:	e5823000 	str	r3, [r2]
80025350:	eb000fc7 	bl	80029274 <kpt_alloc>
80025354:	e1a02000 	mov	r2, r0
80025358:	e51b3010 	ldr	r3, [fp, #-16]
8002535c:	e5832004 	str	r2, [r3, #4]
80025360:	e51b3010 	ldr	r3, [fp, #-16]
80025364:	e5933004 	ldr	r3, [r3, #4]
80025368:	e3530000 	cmp	r3, #0
8002536c:	1a000001 	bne	80025378 <userinit+0x48>
80025370:	e59f00d8 	ldr	r0, [pc, #216]	@ 80025450 <userinit+0x120>
80025374:	ebfff1de 	bl	80021af4 <panic>
80025378:	e51b3010 	ldr	r3, [fp, #-16]
8002537c:	e5933004 	ldr	r3, [r3, #4]
80025380:	e59f20cc 	ldr	r2, [pc, #204]	@ 80025454 <userinit+0x124>
80025384:	e59f10cc 	ldr	r1, [pc, #204]	@ 80025458 <userinit+0x128>
80025388:	e1a00003 	mov	r0, r3
8002538c:	eb001075 	bl	80029568 <inituvm>
80025390:	e51b3010 	ldr	r3, [fp, #-16]
80025394:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025398:	e5832000 	str	r2, [r3]
8002539c:	e51b3010 	ldr	r3, [fp, #-16]
800253a0:	e5933018 	ldr	r3, [r3, #24]
800253a4:	e3a02048 	mov	r2, #72	@ 0x48
800253a8:	e3a01000 	mov	r1, #0
800253ac:	e1a00003 	mov	r0, r3
800253b0:	ebffeb12 	bl	80020000 <memset>
800253b4:	e51b3010 	ldr	r3, [fp, #-16]
800253b8:	e5933018 	ldr	r3, [r3, #24]
800253bc:	e59f2098 	ldr	r2, [pc, #152]	@ 8002545c <userinit+0x12c>
800253c0:	e5832008 	str	r2, [r3, #8]
800253c4:	e51b3010 	ldr	r3, [fp, #-16]
800253c8:	e5934018 	ldr	r4, [r3, #24]
800253cc:	ebffec77 	bl	800205b0 <spsr_usr>
800253d0:	e1a03000 	mov	r3, r0
800253d4:	e584300c 	str	r3, [r4, #12]
800253d8:	e51b3010 	ldr	r3, [fp, #-16]
800253dc:	e5933018 	ldr	r3, [r3, #24]
800253e0:	e3a02a01 	mov	r2, #4096	@ 0x1000
800253e4:	e5832000 	str	r2, [r3]
800253e8:	e51b3010 	ldr	r3, [fp, #-16]
800253ec:	e5933018 	ldr	r3, [r3, #24]
800253f0:	e3a02000 	mov	r2, #0
800253f4:	e5832004 	str	r2, [r3, #4]
800253f8:	e51b3010 	ldr	r3, [fp, #-16]
800253fc:	e5933018 	ldr	r3, [r3, #24]
80025400:	e3a02000 	mov	r2, #0
80025404:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025408:	e51b3010 	ldr	r3, [fp, #-16]
8002540c:	e283306c 	add	r3, r3, #108	@ 0x6c
80025410:	e3a02010 	mov	r2, #16
80025414:	e59f1044 	ldr	r1, [pc, #68]	@ 80025460 <userinit+0x130>
80025418:	e1a00003 	mov	r0, r3
8002541c:	ebffec0b 	bl	80020450 <safestrcpy>
80025420:	e59f003c 	ldr	r0, [pc, #60]	@ 80025464 <userinit+0x134>
80025424:	ebfffb4b 	bl	80024158 <namei>
80025428:	e1a02000 	mov	r2, r0
8002542c:	e51b3010 	ldr	r3, [fp, #-16]
80025430:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025434:	e51b3010 	ldr	r3, [fp, #-16]
80025438:	e3a02003 	mov	r2, #3
8002543c:	e5c3200c 	strb	r2, [r3, #12]
80025440:	e1a00000 	nop			@ (mov r0, r0)
80025444:	e24bd008 	sub	sp, fp, #8
80025448:	e8bd8810 	pop	{r4, fp, pc}
8002544c:	800b0f90 	.word	0x800b0f90
80025450:	8002a9a8 	.word	0x8002a9a8
80025454:	00000034 	.word	0x00000034
80025458:	8002b0e0 	.word	0x8002b0e0
8002545c:	8002521c 	.word	0x8002521c
80025460:	8002a9c4 	.word	0x8002a9c4
80025464:	8002a9d0 	.word	0x8002a9d0

80025468 <growproc>:
80025468:	e92d4800 	push	{fp, lr}
8002546c:	e28db004 	add	fp, sp, #4
80025470:	e24dd010 	sub	sp, sp, #16
80025474:	e50b0010 	str	r0, [fp, #-16]
80025478:	e59f30d0 	ldr	r3, [pc, #208]	@ 80025550 <growproc+0xe8>
8002547c:	e5933000 	ldr	r3, [r3]
80025480:	e5933000 	ldr	r3, [r3]
80025484:	e50b3008 	str	r3, [fp, #-8]
80025488:	e51b3010 	ldr	r3, [fp, #-16]
8002548c:	e3530000 	cmp	r3, #0
80025490:	da00000f 	ble	800254d4 <growproc+0x6c>
80025494:	e59f30b4 	ldr	r3, [pc, #180]	@ 80025550 <growproc+0xe8>
80025498:	e5933000 	ldr	r3, [r3]
8002549c:	e5930004 	ldr	r0, [r3, #4]
800254a0:	e51b2010 	ldr	r2, [fp, #-16]
800254a4:	e51b3008 	ldr	r3, [fp, #-8]
800254a8:	e0823003 	add	r3, r2, r3
800254ac:	e1a02003 	mov	r2, r3
800254b0:	e51b1008 	ldr	r1, [fp, #-8]
800254b4:	eb0010ac 	bl	8002976c <allocuvm>
800254b8:	e1a03000 	mov	r3, r0
800254bc:	e50b3008 	str	r3, [fp, #-8]
800254c0:	e51b3008 	ldr	r3, [fp, #-8]
800254c4:	e3530000 	cmp	r3, #0
800254c8:	1a000014 	bne	80025520 <growproc+0xb8>
800254cc:	e3e03000 	mvn	r3, #0
800254d0:	ea00001b 	b	80025544 <growproc+0xdc>
800254d4:	e51b3010 	ldr	r3, [fp, #-16]
800254d8:	e3530000 	cmp	r3, #0
800254dc:	aa00000f 	bge	80025520 <growproc+0xb8>
800254e0:	e59f3068 	ldr	r3, [pc, #104]	@ 80025550 <growproc+0xe8>
800254e4:	e5933000 	ldr	r3, [r3]
800254e8:	e5930004 	ldr	r0, [r3, #4]
800254ec:	e51b2010 	ldr	r2, [fp, #-16]
800254f0:	e51b3008 	ldr	r3, [fp, #-8]
800254f4:	e0823003 	add	r3, r2, r3
800254f8:	e1a02003 	mov	r2, r3
800254fc:	e51b1008 	ldr	r1, [fp, #-8]
80025500:	eb0010af 	bl	800297c4 <deallocuvm>
80025504:	e1a03000 	mov	r3, r0
80025508:	e50b3008 	str	r3, [fp, #-8]
8002550c:	e51b3008 	ldr	r3, [fp, #-8]
80025510:	e3530000 	cmp	r3, #0
80025514:	1a000001 	bne	80025520 <growproc+0xb8>
80025518:	e3e03000 	mvn	r3, #0
8002551c:	ea000008 	b	80025544 <growproc+0xdc>
80025520:	e59f3028 	ldr	r3, [pc, #40]	@ 80025550 <growproc+0xe8>
80025524:	e5933000 	ldr	r3, [r3]
80025528:	e51b2008 	ldr	r2, [fp, #-8]
8002552c:	e5832000 	str	r2, [r3]
80025530:	e59f3018 	ldr	r3, [pc, #24]	@ 80025550 <growproc+0xe8>
80025534:	e5933000 	ldr	r3, [r3]
80025538:	e1a00003 	mov	r0, r3
8002553c:	eb000ff2 	bl	8002950c <switchuvm>
80025540:	e3a03000 	mov	r3, #0
80025544:	e1a00003 	mov	r0, r3
80025548:	e24bd004 	sub	sp, fp, #4
8002554c:	e8bd8800 	pop	{fp, pc}
80025550:	800b0f94 	.word	0x800b0f94

80025554 <fork>:
80025554:	e92d4800 	push	{fp, lr}
80025558:	e28db004 	add	fp, sp, #4
8002555c:	e24dd010 	sub	sp, sp, #16
80025560:	ebfffe5c 	bl	80024ed8 <allocproc>
80025564:	e50b000c 	str	r0, [fp, #-12]
80025568:	e51b300c 	ldr	r3, [fp, #-12]
8002556c:	e3530000 	cmp	r3, #0
80025570:	1a000001 	bne	8002557c <fork+0x28>
80025574:	e3e03000 	mvn	r3, #0
80025578:	ea000065 	b	80025714 <fork+0x1c0>
8002557c:	e59f319c 	ldr	r3, [pc, #412]	@ 80025720 <fork+0x1cc>
80025580:	e5933000 	ldr	r3, [r3]
80025584:	e5932004 	ldr	r2, [r3, #4]
80025588:	e59f3190 	ldr	r3, [pc, #400]	@ 80025720 <fork+0x1cc>
8002558c:	e5933000 	ldr	r3, [r3]
80025590:	e5933000 	ldr	r3, [r3]
80025594:	e1a01003 	mov	r1, r3
80025598:	e1a00002 	mov	r0, r2
8002559c:	eb001117 	bl	80029a00 <copyuvm>
800255a0:	e1a02000 	mov	r2, r0
800255a4:	e51b300c 	ldr	r3, [fp, #-12]
800255a8:	e5832004 	str	r2, [r3, #4]
800255ac:	e51b300c 	ldr	r3, [fp, #-12]
800255b0:	e5933004 	ldr	r3, [r3, #4]
800255b4:	e3530000 	cmp	r3, #0
800255b8:	1a00000b 	bne	800255ec <fork+0x98>
800255bc:	e51b300c 	ldr	r3, [fp, #-12]
800255c0:	e5933008 	ldr	r3, [r3, #8]
800255c4:	e1a00003 	mov	r0, r3
800255c8:	ebfff00e 	bl	80021608 <free_page>
800255cc:	e51b300c 	ldr	r3, [fp, #-12]
800255d0:	e3a02000 	mov	r2, #0
800255d4:	e5832008 	str	r2, [r3, #8]
800255d8:	e51b300c 	ldr	r3, [fp, #-12]
800255dc:	e3a02000 	mov	r2, #0
800255e0:	e5c3200c 	strb	r2, [r3, #12]
800255e4:	e3e03000 	mvn	r3, #0
800255e8:	ea000049 	b	80025714 <fork+0x1c0>
800255ec:	e59f312c 	ldr	r3, [pc, #300]	@ 80025720 <fork+0x1cc>
800255f0:	e5933000 	ldr	r3, [r3]
800255f4:	e5932000 	ldr	r2, [r3]
800255f8:	e51b300c 	ldr	r3, [fp, #-12]
800255fc:	e5832000 	str	r2, [r3]
80025600:	e59f3118 	ldr	r3, [pc, #280]	@ 80025720 <fork+0x1cc>
80025604:	e5932000 	ldr	r2, [r3]
80025608:	e51b300c 	ldr	r3, [fp, #-12]
8002560c:	e5832014 	str	r2, [r3, #20]
80025610:	e59f3108 	ldr	r3, [pc, #264]	@ 80025720 <fork+0x1cc>
80025614:	e5933000 	ldr	r3, [r3]
80025618:	e5932018 	ldr	r2, [r3, #24]
8002561c:	e51b300c 	ldr	r3, [fp, #-12]
80025620:	e5933018 	ldr	r3, [r3, #24]
80025624:	e1a00003 	mov	r0, r3
80025628:	e1a01002 	mov	r1, r2
8002562c:	e3a03048 	mov	r3, #72	@ 0x48
80025630:	e1a02003 	mov	r2, r3
80025634:	ebffeb22 	bl	800202c4 <memcpy>
80025638:	e51b300c 	ldr	r3, [fp, #-12]
8002563c:	e5933018 	ldr	r3, [r3, #24]
80025640:	e3a02000 	mov	r2, #0
80025644:	e5832010 	str	r2, [r3, #16]
80025648:	e3a03000 	mov	r3, #0
8002564c:	e50b3008 	str	r3, [fp, #-8]
80025650:	ea000015 	b	800256ac <fork+0x158>
80025654:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025720 <fork+0x1cc>
80025658:	e5933000 	ldr	r3, [r3]
8002565c:	e51b2008 	ldr	r2, [fp, #-8]
80025660:	e282200a 	add	r2, r2, #10
80025664:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025668:	e3530000 	cmp	r3, #0
8002566c:	0a00000b 	beq	800256a0 <fork+0x14c>
80025670:	e59f30a8 	ldr	r3, [pc, #168]	@ 80025720 <fork+0x1cc>
80025674:	e5933000 	ldr	r3, [r3]
80025678:	e51b2008 	ldr	r2, [fp, #-8]
8002567c:	e282200a 	add	r2, r2, #10
80025680:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025684:	e1a00003 	mov	r0, r3
80025688:	ebfff3fb 	bl	8002267c <filedup>
8002568c:	e1a01000 	mov	r1, r0
80025690:	e51b300c 	ldr	r3, [fp, #-12]
80025694:	e51b2008 	ldr	r2, [fp, #-8]
80025698:	e282200a 	add	r2, r2, #10
8002569c:	e7831102 	str	r1, [r3, r2, lsl #2]
800256a0:	e51b3008 	ldr	r3, [fp, #-8]
800256a4:	e2833001 	add	r3, r3, #1
800256a8:	e50b3008 	str	r3, [fp, #-8]
800256ac:	e51b3008 	ldr	r3, [fp, #-8]
800256b0:	e353000f 	cmp	r3, #15
800256b4:	daffffe6 	ble	80025654 <fork+0x100>
800256b8:	e59f3060 	ldr	r3, [pc, #96]	@ 80025720 <fork+0x1cc>
800256bc:	e5933000 	ldr	r3, [r3]
800256c0:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800256c4:	e1a00003 	mov	r0, r3
800256c8:	ebfff6bd 	bl	800231c4 <idup>
800256cc:	e1a02000 	mov	r2, r0
800256d0:	e51b300c 	ldr	r3, [fp, #-12]
800256d4:	e5832068 	str	r2, [r3, #104]	@ 0x68
800256d8:	e51b300c 	ldr	r3, [fp, #-12]
800256dc:	e5933010 	ldr	r3, [r3, #16]
800256e0:	e50b3010 	str	r3, [fp, #-16]
800256e4:	e51b300c 	ldr	r3, [fp, #-12]
800256e8:	e3a02003 	mov	r2, #3
800256ec:	e5c3200c 	strb	r2, [r3, #12]
800256f0:	e51b300c 	ldr	r3, [fp, #-12]
800256f4:	e283006c 	add	r0, r3, #108	@ 0x6c
800256f8:	e59f3020 	ldr	r3, [pc, #32]	@ 80025720 <fork+0x1cc>
800256fc:	e5933000 	ldr	r3, [r3]
80025700:	e283306c 	add	r3, r3, #108	@ 0x6c
80025704:	e3a02010 	mov	r2, #16
80025708:	e1a01003 	mov	r1, r3
8002570c:	ebffeb4f 	bl	80020450 <safestrcpy>
80025710:	e51b3010 	ldr	r3, [fp, #-16]
80025714:	e1a00003 	mov	r0, r3
80025718:	e24bd004 	sub	sp, fp, #4
8002571c:	e8bd8800 	pop	{fp, pc}
80025720:	800b0f94 	.word	0x800b0f94

80025724 <exit>:
80025724:	e92d4800 	push	{fp, lr}
80025728:	e28db004 	add	fp, sp, #4
8002572c:	e24dd008 	sub	sp, sp, #8
80025730:	e59f3158 	ldr	r3, [pc, #344]	@ 80025890 <exit+0x16c>
80025734:	e5932000 	ldr	r2, [r3]
80025738:	e59f3154 	ldr	r3, [pc, #340]	@ 80025894 <exit+0x170>
8002573c:	e5933000 	ldr	r3, [r3]
80025740:	e1520003 	cmp	r2, r3
80025744:	1a000001 	bne	80025750 <exit+0x2c>
80025748:	e59f0148 	ldr	r0, [pc, #328]	@ 80025898 <exit+0x174>
8002574c:	ebfff0e8 	bl	80021af4 <panic>
80025750:	e3a03000 	mov	r3, #0
80025754:	e50b300c 	str	r3, [fp, #-12]
80025758:	ea000016 	b	800257b8 <exit+0x94>
8002575c:	e59f312c 	ldr	r3, [pc, #300]	@ 80025890 <exit+0x16c>
80025760:	e5933000 	ldr	r3, [r3]
80025764:	e51b200c 	ldr	r2, [fp, #-12]
80025768:	e282200a 	add	r2, r2, #10
8002576c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025770:	e3530000 	cmp	r3, #0
80025774:	0a00000c 	beq	800257ac <exit+0x88>
80025778:	e59f3110 	ldr	r3, [pc, #272]	@ 80025890 <exit+0x16c>
8002577c:	e5933000 	ldr	r3, [r3]
80025780:	e51b200c 	ldr	r2, [fp, #-12]
80025784:	e282200a 	add	r2, r2, #10
80025788:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002578c:	e1a00003 	mov	r0, r3
80025790:	ebfff3d2 	bl	800226e0 <fileclose>
80025794:	e59f30f4 	ldr	r3, [pc, #244]	@ 80025890 <exit+0x16c>
80025798:	e5933000 	ldr	r3, [r3]
8002579c:	e51b200c 	ldr	r2, [fp, #-12]
800257a0:	e282200a 	add	r2, r2, #10
800257a4:	e3a01000 	mov	r1, #0
800257a8:	e7831102 	str	r1, [r3, r2, lsl #2]
800257ac:	e51b300c 	ldr	r3, [fp, #-12]
800257b0:	e2833001 	add	r3, r3, #1
800257b4:	e50b300c 	str	r3, [fp, #-12]
800257b8:	e51b300c 	ldr	r3, [fp, #-12]
800257bc:	e353000f 	cmp	r3, #15
800257c0:	daffffe5 	ble	8002575c <exit+0x38>
800257c4:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025890 <exit+0x16c>
800257c8:	e5933000 	ldr	r3, [r3]
800257cc:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800257d0:	e1a00003 	mov	r0, r3
800257d4:	ebfff712 	bl	80023424 <iput>
800257d8:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025890 <exit+0x16c>
800257dc:	e5933000 	ldr	r3, [r3]
800257e0:	e3a02000 	mov	r2, #0
800257e4:	e5832068 	str	r2, [r3, #104]	@ 0x68
800257e8:	e59f00ac 	ldr	r0, [pc, #172]	@ 8002589c <exit+0x178>
800257ec:	eb000417 	bl	80026850 <acquire>
800257f0:	e59f3098 	ldr	r3, [pc, #152]	@ 80025890 <exit+0x16c>
800257f4:	e5933000 	ldr	r3, [r3]
800257f8:	e5933014 	ldr	r3, [r3, #20]
800257fc:	e1a00003 	mov	r0, r3
80025800:	eb000164 	bl	80025d98 <wakeup1>
80025804:	e59f3094 	ldr	r3, [pc, #148]	@ 800258a0 <exit+0x17c>
80025808:	e50b3008 	str	r3, [fp, #-8]
8002580c:	ea000014 	b	80025864 <exit+0x140>
80025810:	e51b3008 	ldr	r3, [fp, #-8]
80025814:	e5932014 	ldr	r2, [r3, #20]
80025818:	e59f3070 	ldr	r3, [pc, #112]	@ 80025890 <exit+0x16c>
8002581c:	e5933000 	ldr	r3, [r3]
80025820:	e1520003 	cmp	r2, r3
80025824:	1a00000b 	bne	80025858 <exit+0x134>
80025828:	e59f3064 	ldr	r3, [pc, #100]	@ 80025894 <exit+0x170>
8002582c:	e5932000 	ldr	r2, [r3]
80025830:	e51b3008 	ldr	r3, [fp, #-8]
80025834:	e5832014 	str	r2, [r3, #20]
80025838:	e51b3008 	ldr	r3, [fp, #-8]
8002583c:	e5d3300c 	ldrb	r3, [r3, #12]
80025840:	e3530005 	cmp	r3, #5
80025844:	1a000003 	bne	80025858 <exit+0x134>
80025848:	e59f3044 	ldr	r3, [pc, #68]	@ 80025894 <exit+0x170>
8002584c:	e5933000 	ldr	r3, [r3]
80025850:	e1a00003 	mov	r0, r3
80025854:	eb00014f 	bl	80025d98 <wakeup1>
80025858:	e51b3008 	ldr	r3, [fp, #-8]
8002585c:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025860:	e50b3008 	str	r3, [fp, #-8]
80025864:	e51b3008 	ldr	r3, [fp, #-8]
80025868:	e59f2034 	ldr	r2, [pc, #52]	@ 800258a4 <exit+0x180>
8002586c:	e1530002 	cmp	r3, r2
80025870:	3affffe6 	bcc	80025810 <exit+0xec>
80025874:	e59f3014 	ldr	r3, [pc, #20]	@ 80025890 <exit+0x16c>
80025878:	e5933000 	ldr	r3, [r3]
8002587c:	e3a02005 	mov	r2, #5
80025880:	e5c3200c 	strb	r2, [r3, #12]
80025884:	eb0000b7 	bl	80025b68 <sched>
80025888:	e59f0018 	ldr	r0, [pc, #24]	@ 800258a8 <exit+0x184>
8002588c:	ebfff098 	bl	80021af4 <panic>
80025890:	800b0f94 	.word	0x800b0f94
80025894:	800b0f90 	.word	0x800b0f90
80025898:	8002a9d4 	.word	0x8002a9d4
8002589c:	800ae65c 	.word	0x800ae65c
800258a0:	800ae690 	.word	0x800ae690
800258a4:	800b0f90 	.word	0x800b0f90
800258a8:	8002a9e4 	.word	0x8002a9e4

800258ac <wait>:
800258ac:	e92d4800 	push	{fp, lr}
800258b0:	e28db004 	add	fp, sp, #4
800258b4:	e24dd010 	sub	sp, sp, #16
800258b8:	e59f013c 	ldr	r0, [pc, #316]	@ 800259fc <wait+0x150>
800258bc:	eb0003e3 	bl	80026850 <acquire>
800258c0:	e3a03000 	mov	r3, #0
800258c4:	e50b300c 	str	r3, [fp, #-12]
800258c8:	e59f3130 	ldr	r3, [pc, #304]	@ 80025a00 <wait+0x154>
800258cc:	e50b3008 	str	r3, [fp, #-8]
800258d0:	ea000030 	b	80025998 <wait+0xec>
800258d4:	e51b3008 	ldr	r3, [fp, #-8]
800258d8:	e5932014 	ldr	r2, [r3, #20]
800258dc:	e59f3120 	ldr	r3, [pc, #288]	@ 80025a04 <wait+0x158>
800258e0:	e5933000 	ldr	r3, [r3]
800258e4:	e1520003 	cmp	r2, r3
800258e8:	1a000026 	bne	80025988 <wait+0xdc>
800258ec:	e3a03001 	mov	r3, #1
800258f0:	e50b300c 	str	r3, [fp, #-12]
800258f4:	e51b3008 	ldr	r3, [fp, #-8]
800258f8:	e5d3300c 	ldrb	r3, [r3, #12]
800258fc:	e3530005 	cmp	r3, #5
80025900:	1a000021 	bne	8002598c <wait+0xe0>
80025904:	e51b3008 	ldr	r3, [fp, #-8]
80025908:	e5933010 	ldr	r3, [r3, #16]
8002590c:	e50b3010 	str	r3, [fp, #-16]
80025910:	e51b3008 	ldr	r3, [fp, #-8]
80025914:	e5933008 	ldr	r3, [r3, #8]
80025918:	e1a00003 	mov	r0, r3
8002591c:	ebffef39 	bl	80021608 <free_page>
80025920:	e51b3008 	ldr	r3, [fp, #-8]
80025924:	e3a02000 	mov	r2, #0
80025928:	e5832008 	str	r2, [r3, #8]
8002592c:	e51b3008 	ldr	r3, [fp, #-8]
80025930:	e5933004 	ldr	r3, [r3, #4]
80025934:	e1a00003 	mov	r0, r3
80025938:	eb000fe7 	bl	800298dc <freevm>
8002593c:	e51b3008 	ldr	r3, [fp, #-8]
80025940:	e3a02000 	mov	r2, #0
80025944:	e5c3200c 	strb	r2, [r3, #12]
80025948:	e51b3008 	ldr	r3, [fp, #-8]
8002594c:	e3a02000 	mov	r2, #0
80025950:	e5832010 	str	r2, [r3, #16]
80025954:	e51b3008 	ldr	r3, [fp, #-8]
80025958:	e3a02000 	mov	r2, #0
8002595c:	e5832014 	str	r2, [r3, #20]
80025960:	e51b3008 	ldr	r3, [fp, #-8]
80025964:	e3a02000 	mov	r2, #0
80025968:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
8002596c:	e51b3008 	ldr	r3, [fp, #-8]
80025970:	e3a02000 	mov	r2, #0
80025974:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025978:	e59f007c 	ldr	r0, [pc, #124]	@ 800259fc <wait+0x150>
8002597c:	eb0003be 	bl	8002687c <release>
80025980:	e51b3010 	ldr	r3, [fp, #-16]
80025984:	ea000019 	b	800259f0 <wait+0x144>
80025988:	e1a00000 	nop			@ (mov r0, r0)
8002598c:	e51b3008 	ldr	r3, [fp, #-8]
80025990:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025994:	e50b3008 	str	r3, [fp, #-8]
80025998:	e51b3008 	ldr	r3, [fp, #-8]
8002599c:	e59f2064 	ldr	r2, [pc, #100]	@ 80025a08 <wait+0x15c>
800259a0:	e1530002 	cmp	r3, r2
800259a4:	3affffca 	bcc	800258d4 <wait+0x28>
800259a8:	e51b300c 	ldr	r3, [fp, #-12]
800259ac:	e3530000 	cmp	r3, #0
800259b0:	0a000004 	beq	800259c8 <wait+0x11c>
800259b4:	e59f3048 	ldr	r3, [pc, #72]	@ 80025a04 <wait+0x158>
800259b8:	e5933000 	ldr	r3, [r3]
800259bc:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800259c0:	e3530000 	cmp	r3, #0
800259c4:	0a000003 	beq	800259d8 <wait+0x12c>
800259c8:	e59f002c 	ldr	r0, [pc, #44]	@ 800259fc <wait+0x150>
800259cc:	eb0003aa 	bl	8002687c <release>
800259d0:	e3e03000 	mvn	r3, #0
800259d4:	ea000005 	b	800259f0 <wait+0x144>
800259d8:	e59f3024 	ldr	r3, [pc, #36]	@ 80025a04 <wait+0x158>
800259dc:	e5933000 	ldr	r3, [r3]
800259e0:	e59f1014 	ldr	r1, [pc, #20]	@ 800259fc <wait+0x150>
800259e4:	e1a00003 	mov	r0, r3
800259e8:	eb0000b6 	bl	80025cc8 <sleep>
800259ec:	eaffffb3 	b	800258c0 <wait+0x14>
800259f0:	e1a00003 	mov	r0, r3
800259f4:	e24bd004 	sub	sp, fp, #4
800259f8:	e8bd8800 	pop	{fp, pc}
800259fc:	800ae65c 	.word	0x800ae65c
80025a00:	800ae690 	.word	0x800ae690
80025a04:	800b0f94 	.word	0x800b0f94
80025a08:	800b0f90 	.word	0x800b0f90

80025a0c <scheduler>:
80025a0c:	e92d4800 	push	{fp, lr}
80025a10:	e28db004 	add	fp, sp, #4
80025a14:	e24dd010 	sub	sp, sp, #16
80025a18:	ebffead6 	bl	80020578 <sti>
80025a1c:	e59f0130 	ldr	r0, [pc, #304]	@ 80025b54 <scheduler+0x148>
80025a20:	eb00038a 	bl	80026850 <acquire>
80025a24:	e3a03000 	mov	r3, #0
80025a28:	e50b300c 	str	r3, [fp, #-12]
80025a2c:	e59f3124 	ldr	r3, [pc, #292]	@ 80025b58 <scheduler+0x14c>
80025a30:	e50b3008 	str	r3, [fp, #-8]
80025a34:	ea000014 	b	80025a8c <scheduler+0x80>
80025a38:	e51b3008 	ldr	r3, [fp, #-8]
80025a3c:	e5d3300c 	ldrb	r3, [r3, #12]
80025a40:	e3530003 	cmp	r3, #3
80025a44:	1a00000d 	bne	80025a80 <scheduler+0x74>
80025a48:	e51b3008 	ldr	r3, [fp, #-8]
80025a4c:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025a50:	e50b3010 	str	r3, [fp, #-16]
80025a54:	e51b3008 	ldr	r3, [fp, #-8]
80025a58:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025a5c:	e3530000 	cmp	r3, #0
80025a60:	da000002 	ble	80025a70 <scheduler+0x64>
80025a64:	e51b3010 	ldr	r3, [fp, #-16]
80025a68:	e1a03083 	lsl	r3, r3, #1
80025a6c:	e50b3010 	str	r3, [fp, #-16]
80025a70:	e51b200c 	ldr	r2, [fp, #-12]
80025a74:	e51b3010 	ldr	r3, [fp, #-16]
80025a78:	e0823003 	add	r3, r2, r3
80025a7c:	e50b300c 	str	r3, [fp, #-12]
80025a80:	e51b3008 	ldr	r3, [fp, #-8]
80025a84:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025a88:	e50b3008 	str	r3, [fp, #-8]
80025a8c:	e51b3008 	ldr	r3, [fp, #-8]
80025a90:	e59f20c4 	ldr	r2, [pc, #196]	@ 80025b5c <scheduler+0x150>
80025a94:	e1530002 	cmp	r3, r2
80025a98:	3affffe6 	bcc	80025a38 <scheduler+0x2c>
80025a9c:	e51b300c 	ldr	r3, [fp, #-12]
80025aa0:	e3530000 	cmp	r3, #0
80025aa4:	da000027 	ble	80025b48 <scheduler+0x13c>
80025aa8:	e51b000c 	ldr	r0, [fp, #-12]
80025aac:	ebfffddf 	bl	80025230 <hold_lottery>
80025ab0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025ab4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ab8:	e3530000 	cmp	r3, #0
80025abc:	0a000021 	beq	80025b48 <scheduler+0x13c>
80025ac0:	e59f2098 	ldr	r2, [pc, #152]	@ 80025b60 <scheduler+0x154>
80025ac4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ac8:	e5823000 	str	r3, [r2]
80025acc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80025ad0:	eb000e8d 	bl	8002950c <switchuvm>
80025ad4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ad8:	e3a02004 	mov	r2, #4
80025adc:	e5c3200c 	strb	r2, [r3, #12]
80025ae0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ae4:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025ae8:	e2832001 	add	r2, r3, #1
80025aec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025af0:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025af4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025af8:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025afc:	e3530000 	cmp	r3, #0
80025b00:	da000004 	ble	80025b18 <scheduler+0x10c>
80025b04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025b08:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025b0c:	e2432001 	sub	r2, r3, #1
80025b10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025b14:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025b18:	e59f3044 	ldr	r3, [pc, #68]	@ 80025b64 <scheduler+0x158>
80025b1c:	e5933000 	ldr	r3, [r3]
80025b20:	e2832004 	add	r2, r3, #4
80025b24:	e59f3034 	ldr	r3, [pc, #52]	@ 80025b60 <scheduler+0x154>
80025b28:	e5933000 	ldr	r3, [r3]
80025b2c:	e593301c 	ldr	r3, [r3, #28]
80025b30:	e1a01003 	mov	r1, r3
80025b34:	e1a00002 	mov	r0, r2
80025b38:	eb000364 	bl	800268d0 <swtch>
80025b3c:	e59f301c 	ldr	r3, [pc, #28]	@ 80025b60 <scheduler+0x154>
80025b40:	e3a02000 	mov	r2, #0
80025b44:	e5832000 	str	r2, [r3]
80025b48:	e59f0004 	ldr	r0, [pc, #4]	@ 80025b54 <scheduler+0x148>
80025b4c:	eb00034a 	bl	8002687c <release>
80025b50:	eaffffb0 	b	80025a18 <scheduler+0xc>
80025b54:	800ae65c 	.word	0x800ae65c
80025b58:	800ae690 	.word	0x800ae690
80025b5c:	800b0f90 	.word	0x800b0f90
80025b60:	800b0f94 	.word	0x800b0f94
80025b64:	800ae64c 	.word	0x800ae64c

80025b68 <sched>:
80025b68:	e92d4800 	push	{fp, lr}
80025b6c:	e28db004 	add	fp, sp, #4
80025b70:	e24dd008 	sub	sp, sp, #8
80025b74:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025c30 <sched+0xc8>
80025b78:	eb00034a 	bl	800268a8 <holding>
80025b7c:	e1a03000 	mov	r3, r0
80025b80:	e3530000 	cmp	r3, #0
80025b84:	1a000001 	bne	80025b90 <sched+0x28>
80025b88:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025c34 <sched+0xcc>
80025b8c:	ebffefd8 	bl	80021af4 <panic>
80025b90:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025c38 <sched+0xd0>
80025b94:	e5933000 	ldr	r3, [r3]
80025b98:	e593300c 	ldr	r3, [r3, #12]
80025b9c:	e3530001 	cmp	r3, #1
80025ba0:	0a000001 	beq	80025bac <sched+0x44>
80025ba4:	e59f0090 	ldr	r0, [pc, #144]	@ 80025c3c <sched+0xd4>
80025ba8:	ebffefd1 	bl	80021af4 <panic>
80025bac:	e59f308c 	ldr	r3, [pc, #140]	@ 80025c40 <sched+0xd8>
80025bb0:	e5933000 	ldr	r3, [r3]
80025bb4:	e5d3300c 	ldrb	r3, [r3, #12]
80025bb8:	e3530004 	cmp	r3, #4
80025bbc:	1a000001 	bne	80025bc8 <sched+0x60>
80025bc0:	e59f007c 	ldr	r0, [pc, #124]	@ 80025c44 <sched+0xdc>
80025bc4:	ebffefca 	bl	80021af4 <panic>
80025bc8:	ebffea88 	bl	800205f0 <int_enabled>
80025bcc:	e1a03000 	mov	r3, r0
80025bd0:	e3530000 	cmp	r3, #0
80025bd4:	0a000001 	beq	80025be0 <sched+0x78>
80025bd8:	e59f0068 	ldr	r0, [pc, #104]	@ 80025c48 <sched+0xe0>
80025bdc:	ebffefc4 	bl	80021af4 <panic>
80025be0:	e59f3050 	ldr	r3, [pc, #80]	@ 80025c38 <sched+0xd0>
80025be4:	e5933000 	ldr	r3, [r3]
80025be8:	e5933010 	ldr	r3, [r3, #16]
80025bec:	e50b3008 	str	r3, [fp, #-8]
80025bf0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025c40 <sched+0xd8>
80025bf4:	e5933000 	ldr	r3, [r3]
80025bf8:	e283201c 	add	r2, r3, #28
80025bfc:	e59f3034 	ldr	r3, [pc, #52]	@ 80025c38 <sched+0xd0>
80025c00:	e5933000 	ldr	r3, [r3]
80025c04:	e5933004 	ldr	r3, [r3, #4]
80025c08:	e1a01003 	mov	r1, r3
80025c0c:	e1a00002 	mov	r0, r2
80025c10:	eb00032e 	bl	800268d0 <swtch>
80025c14:	e59f301c 	ldr	r3, [pc, #28]	@ 80025c38 <sched+0xd0>
80025c18:	e5933000 	ldr	r3, [r3]
80025c1c:	e51b2008 	ldr	r2, [fp, #-8]
80025c20:	e5832010 	str	r2, [r3, #16]
80025c24:	e1a00000 	nop			@ (mov r0, r0)
80025c28:	e24bd004 	sub	sp, fp, #4
80025c2c:	e8bd8800 	pop	{fp, pc}
80025c30:	800ae65c 	.word	0x800ae65c
80025c34:	8002a9f0 	.word	0x8002a9f0
80025c38:	800ae64c 	.word	0x800ae64c
80025c3c:	8002aa04 	.word	0x8002aa04
80025c40:	800b0f94 	.word	0x800b0f94
80025c44:	8002aa10 	.word	0x8002aa10
80025c48:	8002aa20 	.word	0x8002aa20

80025c4c <yield>:
80025c4c:	e92d4800 	push	{fp, lr}
80025c50:	e28db004 	add	fp, sp, #4
80025c54:	e59f0024 	ldr	r0, [pc, #36]	@ 80025c80 <yield+0x34>
80025c58:	eb0002fc 	bl	80026850 <acquire>
80025c5c:	e59f3020 	ldr	r3, [pc, #32]	@ 80025c84 <yield+0x38>
80025c60:	e5933000 	ldr	r3, [r3]
80025c64:	e3a02003 	mov	r2, #3
80025c68:	e5c3200c 	strb	r2, [r3, #12]
80025c6c:	ebffffbd 	bl	80025b68 <sched>
80025c70:	e59f0008 	ldr	r0, [pc, #8]	@ 80025c80 <yield+0x34>
80025c74:	eb000300 	bl	8002687c <release>
80025c78:	e1a00000 	nop			@ (mov r0, r0)
80025c7c:	e8bd8800 	pop	{fp, pc}
80025c80:	800ae65c 	.word	0x800ae65c
80025c84:	800b0f94 	.word	0x800b0f94

80025c88 <forkret>:
80025c88:	e92d4800 	push	{fp, lr}
80025c8c:	e28db004 	add	fp, sp, #4
80025c90:	e59f0028 	ldr	r0, [pc, #40]	@ 80025cc0 <forkret+0x38>
80025c94:	eb0002f8 	bl	8002687c <release>
80025c98:	e59f3024 	ldr	r3, [pc, #36]	@ 80025cc4 <forkret+0x3c>
80025c9c:	e5933000 	ldr	r3, [r3]
80025ca0:	e3530000 	cmp	r3, #0
80025ca4:	0a000003 	beq	80025cb8 <forkret+0x30>
80025ca8:	e59f3014 	ldr	r3, [pc, #20]	@ 80025cc4 <forkret+0x3c>
80025cac:	e3a02000 	mov	r2, #0
80025cb0:	e5832000 	str	r2, [r3]
80025cb4:	ebfff941 	bl	800241c0 <initlog>
80025cb8:	e1a00000 	nop			@ (mov r0, r0)
80025cbc:	e8bd8800 	pop	{fp, pc}
80025cc0:	800ae65c 	.word	0x800ae65c
80025cc4:	8002b018 	.word	0x8002b018

80025cc8 <sleep>:
80025cc8:	e92d4800 	push	{fp, lr}
80025ccc:	e28db004 	add	fp, sp, #4
80025cd0:	e24dd008 	sub	sp, sp, #8
80025cd4:	e50b0008 	str	r0, [fp, #-8]
80025cd8:	e50b100c 	str	r1, [fp, #-12]
80025cdc:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025d88 <sleep+0xc0>
80025ce0:	e5933000 	ldr	r3, [r3]
80025ce4:	e3530000 	cmp	r3, #0
80025ce8:	1a000001 	bne	80025cf4 <sleep+0x2c>
80025cec:	e59f0098 	ldr	r0, [pc, #152]	@ 80025d8c <sleep+0xc4>
80025cf0:	ebffef7f 	bl	80021af4 <panic>
80025cf4:	e51b300c 	ldr	r3, [fp, #-12]
80025cf8:	e3530000 	cmp	r3, #0
80025cfc:	1a000001 	bne	80025d08 <sleep+0x40>
80025d00:	e59f0088 	ldr	r0, [pc, #136]	@ 80025d90 <sleep+0xc8>
80025d04:	ebffef7a 	bl	80021af4 <panic>
80025d08:	e51b300c 	ldr	r3, [fp, #-12]
80025d0c:	e59f2080 	ldr	r2, [pc, #128]	@ 80025d94 <sleep+0xcc>
80025d10:	e1530002 	cmp	r3, r2
80025d14:	0a000003 	beq	80025d28 <sleep+0x60>
80025d18:	e59f0074 	ldr	r0, [pc, #116]	@ 80025d94 <sleep+0xcc>
80025d1c:	eb0002cb 	bl	80026850 <acquire>
80025d20:	e51b000c 	ldr	r0, [fp, #-12]
80025d24:	eb0002d4 	bl	8002687c <release>
80025d28:	e59f3058 	ldr	r3, [pc, #88]	@ 80025d88 <sleep+0xc0>
80025d2c:	e5933000 	ldr	r3, [r3]
80025d30:	e51b2008 	ldr	r2, [fp, #-8]
80025d34:	e5832020 	str	r2, [r3, #32]
80025d38:	e59f3048 	ldr	r3, [pc, #72]	@ 80025d88 <sleep+0xc0>
80025d3c:	e5933000 	ldr	r3, [r3]
80025d40:	e3a02002 	mov	r2, #2
80025d44:	e5c3200c 	strb	r2, [r3, #12]
80025d48:	ebffff86 	bl	80025b68 <sched>
80025d4c:	e59f3034 	ldr	r3, [pc, #52]	@ 80025d88 <sleep+0xc0>
80025d50:	e5933000 	ldr	r3, [r3]
80025d54:	e3a02000 	mov	r2, #0
80025d58:	e5832020 	str	r2, [r3, #32]
80025d5c:	e51b300c 	ldr	r3, [fp, #-12]
80025d60:	e59f202c 	ldr	r2, [pc, #44]	@ 80025d94 <sleep+0xcc>
80025d64:	e1530002 	cmp	r3, r2
80025d68:	0a000003 	beq	80025d7c <sleep+0xb4>
80025d6c:	e59f0020 	ldr	r0, [pc, #32]	@ 80025d94 <sleep+0xcc>
80025d70:	eb0002c1 	bl	8002687c <release>
80025d74:	e51b000c 	ldr	r0, [fp, #-12]
80025d78:	eb0002b4 	bl	80026850 <acquire>
80025d7c:	e1a00000 	nop			@ (mov r0, r0)
80025d80:	e24bd004 	sub	sp, fp, #4
80025d84:	e8bd8800 	pop	{fp, pc}
80025d88:	800b0f94 	.word	0x800b0f94
80025d8c:	8002aa34 	.word	0x8002aa34
80025d90:	8002aa3c 	.word	0x8002aa3c
80025d94:	800ae65c 	.word	0x800ae65c

80025d98 <wakeup1>:
80025d98:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025d9c:	e28db000 	add	fp, sp, #0
80025da0:	e24dd014 	sub	sp, sp, #20
80025da4:	e50b0010 	str	r0, [fp, #-16]
80025da8:	e59f30dc 	ldr	r3, [pc, #220]	@ 80025e8c <wakeup1+0xf4>
80025dac:	e50b3008 	str	r3, [fp, #-8]
80025db0:	ea00002c 	b	80025e68 <wakeup1+0xd0>
80025db4:	e51b3008 	ldr	r3, [fp, #-8]
80025db8:	e5d3300c 	ldrb	r3, [r3, #12]
80025dbc:	e3530002 	cmp	r3, #2
80025dc0:	1a000024 	bne	80025e58 <wakeup1+0xc0>
80025dc4:	e51b3008 	ldr	r3, [fp, #-8]
80025dc8:	e5933020 	ldr	r3, [r3, #32]
80025dcc:	e51b2010 	ldr	r2, [fp, #-16]
80025dd0:	e1520003 	cmp	r2, r3
80025dd4:	1a00001f 	bne	80025e58 <wakeup1+0xc0>
80025dd8:	e51b3010 	ldr	r3, [fp, #-16]
80025ddc:	e59f20ac 	ldr	r2, [pc, #172]	@ 80025e90 <wakeup1+0xf8>
80025de0:	e1530002 	cmp	r3, r2
80025de4:	1a000017 	bne	80025e48 <wakeup1+0xb0>
80025de8:	e51b3008 	ldr	r3, [fp, #-8]
80025dec:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80025df0:	e1a02003 	mov	r2, r3
80025df4:	e59f3094 	ldr	r3, [pc, #148]	@ 80025e90 <wakeup1+0xf8>
80025df8:	e5933000 	ldr	r3, [r3]
80025dfc:	e1520003 	cmp	r2, r3
80025e00:	8a000015 	bhi	80025e5c <wakeup1+0xc4>
80025e04:	e51b3008 	ldr	r3, [fp, #-8]
80025e08:	e5932084 	ldr	r2, [r3, #132]	@ 0x84
80025e0c:	e51b3008 	ldr	r3, [fp, #-8]
80025e10:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80025e14:	e0822003 	add	r2, r2, r3
80025e18:	e51b3008 	ldr	r3, [fp, #-8]
80025e1c:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025e20:	e51b3008 	ldr	r3, [fp, #-8]
80025e24:	e3a02003 	mov	r2, #3
80025e28:	e5c3200c 	strb	r2, [r3, #12]
80025e2c:	e51b3008 	ldr	r3, [fp, #-8]
80025e30:	e3a02000 	mov	r2, #0
80025e34:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80025e38:	e51b3008 	ldr	r3, [fp, #-8]
80025e3c:	e3a02000 	mov	r2, #0
80025e40:	e5832090 	str	r2, [r3, #144]	@ 0x90
80025e44:	ea000004 	b	80025e5c <wakeup1+0xc4>
80025e48:	e51b3008 	ldr	r3, [fp, #-8]
80025e4c:	e3a02003 	mov	r2, #3
80025e50:	e5c3200c 	strb	r2, [r3, #12]
80025e54:	ea000000 	b	80025e5c <wakeup1+0xc4>
80025e58:	e1a00000 	nop			@ (mov r0, r0)
80025e5c:	e51b3008 	ldr	r3, [fp, #-8]
80025e60:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025e64:	e50b3008 	str	r3, [fp, #-8]
80025e68:	e51b3008 	ldr	r3, [fp, #-8]
80025e6c:	e59f2020 	ldr	r2, [pc, #32]	@ 80025e94 <wakeup1+0xfc>
80025e70:	e1530002 	cmp	r3, r2
80025e74:	3affffce 	bcc	80025db4 <wakeup1+0x1c>
80025e78:	e1a00000 	nop			@ (mov r0, r0)
80025e7c:	e1a00000 	nop			@ (mov r0, r0)
80025e80:	e28bd000 	add	sp, fp, #0
80025e84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025e88:	e12fff1e 	bx	lr
80025e8c:	800ae690 	.word	0x800ae690
80025e90:	800b10cc 	.word	0x800b10cc
80025e94:	800b0f90 	.word	0x800b0f90

80025e98 <wakeup>:
80025e98:	e92d4800 	push	{fp, lr}
80025e9c:	e28db004 	add	fp, sp, #4
80025ea0:	e24dd008 	sub	sp, sp, #8
80025ea4:	e50b0008 	str	r0, [fp, #-8]
80025ea8:	e59f001c 	ldr	r0, [pc, #28]	@ 80025ecc <wakeup+0x34>
80025eac:	eb000267 	bl	80026850 <acquire>
80025eb0:	e51b0008 	ldr	r0, [fp, #-8]
80025eb4:	ebffffb7 	bl	80025d98 <wakeup1>
80025eb8:	e59f000c 	ldr	r0, [pc, #12]	@ 80025ecc <wakeup+0x34>
80025ebc:	eb00026e 	bl	8002687c <release>
80025ec0:	e1a00000 	nop			@ (mov r0, r0)
80025ec4:	e24bd004 	sub	sp, fp, #4
80025ec8:	e8bd8800 	pop	{fp, pc}
80025ecc:	800ae65c 	.word	0x800ae65c

80025ed0 <kill>:
80025ed0:	e92d4800 	push	{fp, lr}
80025ed4:	e28db004 	add	fp, sp, #4
80025ed8:	e24dd010 	sub	sp, sp, #16
80025edc:	e50b0010 	str	r0, [fp, #-16]
80025ee0:	e59f008c 	ldr	r0, [pc, #140]	@ 80025f74 <kill+0xa4>
80025ee4:	eb000259 	bl	80026850 <acquire>
80025ee8:	e59f3088 	ldr	r3, [pc, #136]	@ 80025f78 <kill+0xa8>
80025eec:	e50b3008 	str	r3, [fp, #-8]
80025ef0:	ea000015 	b	80025f4c <kill+0x7c>
80025ef4:	e51b3008 	ldr	r3, [fp, #-8]
80025ef8:	e5933010 	ldr	r3, [r3, #16]
80025efc:	e51b2010 	ldr	r2, [fp, #-16]
80025f00:	e1520003 	cmp	r2, r3
80025f04:	1a00000d 	bne	80025f40 <kill+0x70>
80025f08:	e51b3008 	ldr	r3, [fp, #-8]
80025f0c:	e3a02001 	mov	r2, #1
80025f10:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025f14:	e51b3008 	ldr	r3, [fp, #-8]
80025f18:	e5d3300c 	ldrb	r3, [r3, #12]
80025f1c:	e3530002 	cmp	r3, #2
80025f20:	1a000002 	bne	80025f30 <kill+0x60>
80025f24:	e51b3008 	ldr	r3, [fp, #-8]
80025f28:	e3a02003 	mov	r2, #3
80025f2c:	e5c3200c 	strb	r2, [r3, #12]
80025f30:	e59f003c 	ldr	r0, [pc, #60]	@ 80025f74 <kill+0xa4>
80025f34:	eb000250 	bl	8002687c <release>
80025f38:	e3a03000 	mov	r3, #0
80025f3c:	ea000009 	b	80025f68 <kill+0x98>
80025f40:	e51b3008 	ldr	r3, [fp, #-8]
80025f44:	e28330a4 	add	r3, r3, #164	@ 0xa4
80025f48:	e50b3008 	str	r3, [fp, #-8]
80025f4c:	e51b3008 	ldr	r3, [fp, #-8]
80025f50:	e59f2024 	ldr	r2, [pc, #36]	@ 80025f7c <kill+0xac>
80025f54:	e1530002 	cmp	r3, r2
80025f58:	3affffe5 	bcc	80025ef4 <kill+0x24>
80025f5c:	e59f0010 	ldr	r0, [pc, #16]	@ 80025f74 <kill+0xa4>
80025f60:	eb000245 	bl	8002687c <release>
80025f64:	e3e03000 	mvn	r3, #0
80025f68:	e1a00003 	mov	r0, r3
80025f6c:	e24bd004 	sub	sp, fp, #4
80025f70:	e8bd8800 	pop	{fp, pc}
80025f74:	800ae65c 	.word	0x800ae65c
80025f78:	800ae690 	.word	0x800ae690
80025f7c:	800b0f90 	.word	0x800b0f90

80025f80 <procdump>:
80025f80:	e92d4800 	push	{fp, lr}
80025f84:	e28db004 	add	fp, sp, #4
80025f88:	e24dd008 	sub	sp, sp, #8
80025f8c:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002604c <procdump+0xcc>
80025f90:	e50b3008 	str	r3, [fp, #-8]
80025f94:	ea000023 	b	80026028 <procdump+0xa8>
80025f98:	e51b3008 	ldr	r3, [fp, #-8]
80025f9c:	e5d3300c 	ldrb	r3, [r3, #12]
80025fa0:	e3530000 	cmp	r3, #0
80025fa4:	0a00001b 	beq	80026018 <procdump+0x98>
80025fa8:	e51b3008 	ldr	r3, [fp, #-8]
80025fac:	e5d3300c 	ldrb	r3, [r3, #12]
80025fb0:	e3530005 	cmp	r3, #5
80025fb4:	8a00000d 	bhi	80025ff0 <procdump+0x70>
80025fb8:	e51b3008 	ldr	r3, [fp, #-8]
80025fbc:	e5d3300c 	ldrb	r3, [r3, #12]
80025fc0:	e1a02003 	mov	r2, r3
80025fc4:	e59f3084 	ldr	r3, [pc, #132]	@ 80026050 <procdump+0xd0>
80025fc8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025fcc:	e3530000 	cmp	r3, #0
80025fd0:	0a000006 	beq	80025ff0 <procdump+0x70>
80025fd4:	e51b3008 	ldr	r3, [fp, #-8]
80025fd8:	e5d3300c 	ldrb	r3, [r3, #12]
80025fdc:	e1a02003 	mov	r2, r3
80025fe0:	e59f3068 	ldr	r3, [pc, #104]	@ 80026050 <procdump+0xd0>
80025fe4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025fe8:	e50b300c 	str	r3, [fp, #-12]
80025fec:	ea000001 	b	80025ff8 <procdump+0x78>
80025ff0:	e59f305c 	ldr	r3, [pc, #92]	@ 80026054 <procdump+0xd4>
80025ff4:	e50b300c 	str	r3, [fp, #-12]
80025ff8:	e51b3008 	ldr	r3, [fp, #-8]
80025ffc:	e5931010 	ldr	r1, [r3, #16]
80026000:	e51b3008 	ldr	r3, [fp, #-8]
80026004:	e283306c 	add	r3, r3, #108	@ 0x6c
80026008:	e51b200c 	ldr	r2, [fp, #-12]
8002600c:	e59f0044 	ldr	r0, [pc, #68]	@ 80026058 <procdump+0xd8>
80026010:	ebffee1f 	bl	80021894 <cprintf>
80026014:	ea000000 	b	8002601c <procdump+0x9c>
80026018:	e1a00000 	nop			@ (mov r0, r0)
8002601c:	e51b3008 	ldr	r3, [fp, #-8]
80026020:	e28330a4 	add	r3, r3, #164	@ 0xa4
80026024:	e50b3008 	str	r3, [fp, #-8]
80026028:	e51b3008 	ldr	r3, [fp, #-8]
8002602c:	e59f2028 	ldr	r2, [pc, #40]	@ 8002605c <procdump+0xdc>
80026030:	e1530002 	cmp	r3, r2
80026034:	3affffd7 	bcc	80025f98 <procdump+0x18>
80026038:	e59f0020 	ldr	r0, [pc, #32]	@ 80026060 <procdump+0xe0>
8002603c:	ebffe9f2 	bl	8002080c <show_callstk>
80026040:	e1a00000 	nop			@ (mov r0, r0)
80026044:	e24bd004 	sub	sp, fp, #4
80026048:	e8bd8800 	pop	{fp, pc}
8002604c:	800ae690 	.word	0x800ae690
80026050:	8002b01c 	.word	0x8002b01c
80026054:	8002aa50 	.word	0x8002aa50
80026058:	8002aa54 	.word	0x8002aa54
8002605c:	800b0f90 	.word	0x800b0f90
80026060:	8002aa60 	.word	0x8002aa60

80026064 <settickets>:
80026064:	e92d4800 	push	{fp, lr}
80026068:	e28db004 	add	fp, sp, #4
8002606c:	e24dd010 	sub	sp, sp, #16
80026070:	e50b0010 	str	r0, [fp, #-16]
80026074:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026078:	e3a03000 	mov	r3, #0
8002607c:	e50b300c 	str	r3, [fp, #-12]
80026080:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026084:	e3530000 	cmp	r3, #0
80026088:	ca000001 	bgt	80026094 <settickets+0x30>
8002608c:	e3e03000 	mvn	r3, #0
80026090:	ea00001e 	b	80026110 <settickets+0xac>
80026094:	e59f0080 	ldr	r0, [pc, #128]	@ 8002611c <settickets+0xb8>
80026098:	eb0001ec 	bl	80026850 <acquire>
8002609c:	e59f307c 	ldr	r3, [pc, #124]	@ 80026120 <settickets+0xbc>
800260a0:	e50b3008 	str	r3, [fp, #-8]
800260a4:	ea00000d 	b	800260e0 <settickets+0x7c>
800260a8:	e51b3008 	ldr	r3, [fp, #-8]
800260ac:	e5933010 	ldr	r3, [r3, #16]
800260b0:	e51b2010 	ldr	r2, [fp, #-16]
800260b4:	e1520003 	cmp	r2, r3
800260b8:	1a000005 	bne	800260d4 <settickets+0x70>
800260bc:	e51b3008 	ldr	r3, [fp, #-8]
800260c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800260c4:	e5832080 	str	r2, [r3, #128]	@ 0x80
800260c8:	e3a03001 	mov	r3, #1
800260cc:	e50b300c 	str	r3, [fp, #-12]
800260d0:	ea000006 	b	800260f0 <settickets+0x8c>
800260d4:	e51b3008 	ldr	r3, [fp, #-8]
800260d8:	e28330a4 	add	r3, r3, #164	@ 0xa4
800260dc:	e50b3008 	str	r3, [fp, #-8]
800260e0:	e51b3008 	ldr	r3, [fp, #-8]
800260e4:	e59f2038 	ldr	r2, [pc, #56]	@ 80026124 <settickets+0xc0>
800260e8:	e1530002 	cmp	r3, r2
800260ec:	3affffed 	bcc	800260a8 <settickets+0x44>
800260f0:	e59f0024 	ldr	r0, [pc, #36]	@ 8002611c <settickets+0xb8>
800260f4:	eb0001e0 	bl	8002687c <release>
800260f8:	e51b300c 	ldr	r3, [fp, #-12]
800260fc:	e3530000 	cmp	r3, #0
80026100:	0a000001 	beq	8002610c <settickets+0xa8>
80026104:	e3a03000 	mov	r3, #0
80026108:	ea000000 	b	80026110 <settickets+0xac>
8002610c:	e3e03000 	mvn	r3, #0
80026110:	e1a00003 	mov	r0, r3
80026114:	e24bd004 	sub	sp, fp, #4
80026118:	e8bd8800 	pop	{fp, pc}
8002611c:	800ae65c 	.word	0x800ae65c
80026120:	800ae690 	.word	0x800ae690
80026124:	800b0f90 	.word	0x800b0f90

80026128 <srand>:
80026128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002612c:	e28db000 	add	fp, sp, #0
80026130:	e24dd00c 	sub	sp, sp, #12
80026134:	e50b0008 	str	r0, [fp, #-8]
80026138:	e59f2014 	ldr	r2, [pc, #20]	@ 80026154 <srand+0x2c>
8002613c:	e51b3008 	ldr	r3, [fp, #-8]
80026140:	e5823000 	str	r3, [r2]
80026144:	e1a00000 	nop			@ (mov r0, r0)
80026148:	e28bd000 	add	sp, fp, #0
8002614c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026150:	e12fff1e 	bx	lr
80026154:	800ae658 	.word	0x800ae658

80026158 <getpinfo>:
80026158:	e92d4800 	push	{fp, lr}
8002615c:	e28db004 	add	fp, sp, #4
80026160:	e24dd010 	sub	sp, sp, #16
80026164:	e50b0010 	str	r0, [fp, #-16]
80026168:	e3a03000 	mov	r3, #0
8002616c:	e50b300c 	str	r3, [fp, #-12]
80026170:	e51b3010 	ldr	r3, [fp, #-16]
80026174:	e3530000 	cmp	r3, #0
80026178:	1a000001 	bne	80026184 <getpinfo+0x2c>
8002617c:	e3e03000 	mvn	r3, #0
80026180:	ea000033 	b	80026254 <getpinfo+0xfc>
80026184:	e59f00d4 	ldr	r0, [pc, #212]	@ 80026260 <getpinfo+0x108>
80026188:	eb0001b0 	bl	80026850 <acquire>
8002618c:	e59f30d0 	ldr	r3, [pc, #208]	@ 80026264 <getpinfo+0x10c>
80026190:	e50b3008 	str	r3, [fp, #-8]
80026194:	ea000027 	b	80026238 <getpinfo+0xe0>
80026198:	e51b3008 	ldr	r3, [fp, #-8]
8002619c:	e5d3300c 	ldrb	r3, [r3, #12]
800261a0:	e3530000 	cmp	r3, #0
800261a4:	13a03001 	movne	r3, #1
800261a8:	03a03000 	moveq	r3, #0
800261ac:	e6ef3073 	uxtb	r3, r3
800261b0:	e1a01003 	mov	r1, r3
800261b4:	e51b3010 	ldr	r3, [fp, #-16]
800261b8:	e51b200c 	ldr	r2, [fp, #-12]
800261bc:	e7831102 	str	r1, [r3, r2, lsl #2]
800261c0:	e51b3008 	ldr	r3, [fp, #-8]
800261c4:	e5931010 	ldr	r1, [r3, #16]
800261c8:	e51b3010 	ldr	r3, [fp, #-16]
800261cc:	e51b200c 	ldr	r2, [fp, #-12]
800261d0:	e2822040 	add	r2, r2, #64	@ 0x40
800261d4:	e7831102 	str	r1, [r3, r2, lsl #2]
800261d8:	e51b3008 	ldr	r3, [fp, #-8]
800261dc:	e5931080 	ldr	r1, [r3, #128]	@ 0x80
800261e0:	e51b3010 	ldr	r3, [fp, #-16]
800261e4:	e51b200c 	ldr	r2, [fp, #-12]
800261e8:	e2822080 	add	r2, r2, #128	@ 0x80
800261ec:	e7831102 	str	r1, [r3, r2, lsl #2]
800261f0:	e51b3008 	ldr	r3, [fp, #-8]
800261f4:	e5931088 	ldr	r1, [r3, #136]	@ 0x88
800261f8:	e51b3010 	ldr	r3, [fp, #-16]
800261fc:	e51b200c 	ldr	r2, [fp, #-12]
80026200:	e28220c0 	add	r2, r2, #192	@ 0xc0
80026204:	e7831102 	str	r1, [r3, r2, lsl #2]
80026208:	e51b3008 	ldr	r3, [fp, #-8]
8002620c:	e5931084 	ldr	r1, [r3, #132]	@ 0x84
80026210:	e51b3010 	ldr	r3, [fp, #-16]
80026214:	e51b200c 	ldr	r2, [fp, #-12]
80026218:	e2822c01 	add	r2, r2, #256	@ 0x100
8002621c:	e7831102 	str	r1, [r3, r2, lsl #2]
80026220:	e51b3008 	ldr	r3, [fp, #-8]
80026224:	e28330a4 	add	r3, r3, #164	@ 0xa4
80026228:	e50b3008 	str	r3, [fp, #-8]
8002622c:	e51b300c 	ldr	r3, [fp, #-12]
80026230:	e2833001 	add	r3, r3, #1
80026234:	e50b300c 	str	r3, [fp, #-12]
80026238:	e51b3008 	ldr	r3, [fp, #-8]
8002623c:	e59f2024 	ldr	r2, [pc, #36]	@ 80026268 <getpinfo+0x110>
80026240:	e1530002 	cmp	r3, r2
80026244:	3affffd3 	bcc	80026198 <getpinfo+0x40>
80026248:	e59f0010 	ldr	r0, [pc, #16]	@ 80026260 <getpinfo+0x108>
8002624c:	eb00018a 	bl	8002687c <release>
80026250:	e3a03000 	mov	r3, #0
80026254:	e1a00003 	mov	r0, r3
80026258:	e24bd004 	sub	sp, fp, #4
8002625c:	e8bd8800 	pop	{fp, pc}
80026260:	800ae65c 	.word	0x800ae65c
80026264:	800ae690 	.word	0x800ae690
80026268:	800b0f90 	.word	0x800b0f90

8002626c <thread_create>:
8002626c:	e92d4810 	push	{r4, fp, lr}
80026270:	e28db008 	add	fp, sp, #8
80026274:	e24dd024 	sub	sp, sp, #36	@ 0x24
80026278:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002627c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80026280:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80026284:	ebfffb13 	bl	80024ed8 <allocproc>
80026288:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002628c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026290:	e3530000 	cmp	r3, #0
80026294:	1a000001 	bne	800262a0 <thread_create+0x34>
80026298:	e3e03000 	mvn	r3, #0
8002629c:	ea0000a8 	b	80026544 <thread_create+0x2d8>
800262a0:	e59f32a8 	ldr	r3, [pc, #680]	@ 80026550 <thread_create+0x2e4>
800262a4:	e5933000 	ldr	r3, [r3]
800262a8:	e5932004 	ldr	r2, [r3, #4]
800262ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800262b0:	e5832004 	str	r2, [r3, #4]
800262b4:	e59f3294 	ldr	r3, [pc, #660]	@ 80026550 <thread_create+0x2e4>
800262b8:	e5933000 	ldr	r3, [r3]
800262bc:	e5932000 	ldr	r2, [r3]
800262c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800262c4:	e5832000 	str	r2, [r3]
800262c8:	e59f3280 	ldr	r3, [pc, #640]	@ 80026550 <thread_create+0x2e4>
800262cc:	e5933000 	ldr	r3, [r3]
800262d0:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
800262d4:	e3530000 	cmp	r3, #0
800262d8:	0a000003 	beq	800262ec <thread_create+0x80>
800262dc:	e59f326c 	ldr	r3, [pc, #620]	@ 80026550 <thread_create+0x2e4>
800262e0:	e5933000 	ldr	r3, [r3]
800262e4:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
800262e8:	ea000001 	b	800262f4 <thread_create+0x88>
800262ec:	e59f325c 	ldr	r3, [pc, #604]	@ 80026550 <thread_create+0x2e4>
800262f0:	e5933000 	ldr	r3, [r3]
800262f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800262f8:	e5823098 	str	r3, [r2, #152]	@ 0x98
800262fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026300:	e3a02001 	mov	r2, #1
80026304:	e5832094 	str	r2, [r3, #148]	@ 0x94
80026308:	e59f3240 	ldr	r3, [pc, #576]	@ 80026550 <thread_create+0x2e4>
8002630c:	e5933000 	ldr	r3, [r3]
80026310:	e5932018 	ldr	r2, [r3, #24]
80026314:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026318:	e5933018 	ldr	r3, [r3, #24]
8002631c:	e1a00003 	mov	r0, r3
80026320:	e1a01002 	mov	r1, r2
80026324:	e3a03048 	mov	r3, #72	@ 0x48
80026328:	e1a02003 	mov	r2, r3
8002632c:	ebffe7e4 	bl	800202c4 <memcpy>
80026330:	e59f3218 	ldr	r3, [pc, #536]	@ 80026550 <thread_create+0x2e4>
80026334:	e5933000 	ldr	r3, [r3]
80026338:	e5933000 	ldr	r3, [r3]
8002633c:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80026340:	e283300f 	add	r3, r3, #15
80026344:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80026348:	e3c3300f 	bic	r3, r3, #15
8002634c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80026350:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026354:	e5930004 	ldr	r0, [r3, #4]
80026358:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002635c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80026360:	e1a02003 	mov	r2, r3
80026364:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80026368:	eb000cff 	bl	8002976c <allocuvm>
8002636c:	e1a03000 	mov	r3, r0
80026370:	e3530000 	cmp	r3, #0
80026374:	1a000004 	bne	8002638c <thread_create+0x120>
80026378:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002637c:	e3a02000 	mov	r2, #0
80026380:	e5c3200c 	strb	r2, [r3, #12]
80026384:	e3e03000 	mvn	r3, #0
80026388:	ea00006d 	b	80026544 <thread_create+0x2d8>
8002638c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80026390:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026394:	e583209c 	str	r2, [r3, #156]	@ 0x9c
80026398:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002639c:	e2832a01 	add	r2, r3, #4096	@ 0x1000
800263a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263a4:	e5832000 	str	r2, [r3]
800263a8:	e59f31a0 	ldr	r3, [pc, #416]	@ 80026550 <thread_create+0x2e4>
800263ac:	e5933000 	ldr	r3, [r3]
800263b0:	e5932000 	ldr	r2, [r3]
800263b4:	e59f3194 	ldr	r3, [pc, #404]	@ 80026550 <thread_create+0x2e4>
800263b8:	e5933000 	ldr	r3, [r3]
800263bc:	e2822a01 	add	r2, r2, #4096	@ 0x1000
800263c0:	e5832000 	str	r2, [r3]
800263c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800263c8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800263cc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800263d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800263d4:	e2433004 	sub	r3, r3, #4
800263d8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800263dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800263e0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800263e4:	e5832000 	str	r2, [r3]
800263e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263ec:	e5933018 	ldr	r3, [r3, #24]
800263f0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800263f4:	e5832000 	str	r2, [r3]
800263f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263fc:	e5933018 	ldr	r3, [r3, #24]
80026400:	e3a02000 	mov	r2, #0
80026404:	e5832004 	str	r2, [r3, #4]
80026408:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002640c:	e5933018 	ldr	r3, [r3, #24]
80026410:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80026414:	e5832044 	str	r2, [r3, #68]	@ 0x44
80026418:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002641c:	e5934018 	ldr	r4, [r3, #24]
80026420:	ebffe862 	bl	800205b0 <spsr_usr>
80026424:	e1a03000 	mov	r3, r0
80026428:	e584300c 	str	r3, [r4, #12]
8002642c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026430:	e5933018 	ldr	r3, [r3, #24]
80026434:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80026438:	e5832010 	str	r2, [r3, #16]
8002643c:	e3a03000 	mov	r3, #0
80026440:	e50b3010 	str	r3, [fp, #-16]
80026444:	ea000015 	b	800264a0 <thread_create+0x234>
80026448:	e59f3100 	ldr	r3, [pc, #256]	@ 80026550 <thread_create+0x2e4>
8002644c:	e5933000 	ldr	r3, [r3]
80026450:	e51b2010 	ldr	r2, [fp, #-16]
80026454:	e282200a 	add	r2, r2, #10
80026458:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002645c:	e3530000 	cmp	r3, #0
80026460:	0a00000b 	beq	80026494 <thread_create+0x228>
80026464:	e59f30e4 	ldr	r3, [pc, #228]	@ 80026550 <thread_create+0x2e4>
80026468:	e5933000 	ldr	r3, [r3]
8002646c:	e51b2010 	ldr	r2, [fp, #-16]
80026470:	e282200a 	add	r2, r2, #10
80026474:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026478:	e1a00003 	mov	r0, r3
8002647c:	ebfff07e 	bl	8002267c <filedup>
80026480:	e1a01000 	mov	r1, r0
80026484:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026488:	e51b2010 	ldr	r2, [fp, #-16]
8002648c:	e282200a 	add	r2, r2, #10
80026490:	e7831102 	str	r1, [r3, r2, lsl #2]
80026494:	e51b3010 	ldr	r3, [fp, #-16]
80026498:	e2833001 	add	r3, r3, #1
8002649c:	e50b3010 	str	r3, [fp, #-16]
800264a0:	e51b3010 	ldr	r3, [fp, #-16]
800264a4:	e353000f 	cmp	r3, #15
800264a8:	daffffe6 	ble	80026448 <thread_create+0x1dc>
800264ac:	e59f309c 	ldr	r3, [pc, #156]	@ 80026550 <thread_create+0x2e4>
800264b0:	e5933000 	ldr	r3, [r3]
800264b4:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800264b8:	e1a00003 	mov	r0, r3
800264bc:	ebfff340 	bl	800231c4 <idup>
800264c0:	e1a02000 	mov	r2, r0
800264c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800264c8:	e5832068 	str	r2, [r3, #104]	@ 0x68
800264cc:	e59f307c 	ldr	r3, [pc, #124]	@ 80026550 <thread_create+0x2e4>
800264d0:	e5932000 	ldr	r2, [r3]
800264d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800264d8:	e5832014 	str	r2, [r3, #20]
800264dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800264e0:	e3a02003 	mov	r2, #3
800264e4:	e5c3200c 	strb	r2, [r3, #12]
800264e8:	e59f3060 	ldr	r3, [pc, #96]	@ 80026550 <thread_create+0x2e4>
800264ec:	e5933000 	ldr	r3, [r3]
800264f0:	e5930004 	ldr	r0, [r3, #4]
800264f4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
800264f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800264fc:	e2832010 	add	r2, r3, #16
80026500:	e3a03004 	mov	r3, #4
80026504:	eb000db3 	bl	80029bd8 <copyout>
80026508:	e1a03000 	mov	r3, r0
8002650c:	e3530000 	cmp	r3, #0
80026510:	aa000001 	bge	8002651c <thread_create+0x2b0>
80026514:	e3e03000 	mvn	r3, #0
80026518:	ea000009 	b	80026544 <thread_create+0x2d8>
8002651c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026520:	e283006c 	add	r0, r3, #108	@ 0x6c
80026524:	e59f3024 	ldr	r3, [pc, #36]	@ 80026550 <thread_create+0x2e4>
80026528:	e5933000 	ldr	r3, [r3]
8002652c:	e283306c 	add	r3, r3, #108	@ 0x6c
80026530:	e3a02010 	mov	r2, #16
80026534:	e1a01003 	mov	r1, r3
80026538:	ebffe7c4 	bl	80020450 <safestrcpy>
8002653c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026540:	e5933010 	ldr	r3, [r3, #16]
80026544:	e1a00003 	mov	r0, r3
80026548:	e24bd008 	sub	sp, fp, #8
8002654c:	e8bd8810 	pop	{r4, fp, pc}
80026550:	800b0f94 	.word	0x800b0f94

80026554 <thread_exit>:
80026554:	e92d4800 	push	{fp, lr}
80026558:	e28db004 	add	fp, sp, #4
8002655c:	e24dd008 	sub	sp, sp, #8
80026560:	e59f30e8 	ldr	r3, [pc, #232]	@ 80026650 <thread_exit+0xfc>
80026564:	e5933000 	ldr	r3, [r3]
80026568:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
8002656c:	e3530000 	cmp	r3, #0
80026570:	0a000033 	beq	80026644 <thread_exit+0xf0>
80026574:	e3a03000 	mov	r3, #0
80026578:	e50b3008 	str	r3, [fp, #-8]
8002657c:	ea000016 	b	800265dc <thread_exit+0x88>
80026580:	e59f30c8 	ldr	r3, [pc, #200]	@ 80026650 <thread_exit+0xfc>
80026584:	e5933000 	ldr	r3, [r3]
80026588:	e51b2008 	ldr	r2, [fp, #-8]
8002658c:	e282200a 	add	r2, r2, #10
80026590:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026594:	e3530000 	cmp	r3, #0
80026598:	0a00000c 	beq	800265d0 <thread_exit+0x7c>
8002659c:	e59f30ac 	ldr	r3, [pc, #172]	@ 80026650 <thread_exit+0xfc>
800265a0:	e5933000 	ldr	r3, [r3]
800265a4:	e51b2008 	ldr	r2, [fp, #-8]
800265a8:	e282200a 	add	r2, r2, #10
800265ac:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800265b0:	e1a00003 	mov	r0, r3
800265b4:	ebfff049 	bl	800226e0 <fileclose>
800265b8:	e59f3090 	ldr	r3, [pc, #144]	@ 80026650 <thread_exit+0xfc>
800265bc:	e5933000 	ldr	r3, [r3]
800265c0:	e51b2008 	ldr	r2, [fp, #-8]
800265c4:	e282200a 	add	r2, r2, #10
800265c8:	e3a01000 	mov	r1, #0
800265cc:	e7831102 	str	r1, [r3, r2, lsl #2]
800265d0:	e51b3008 	ldr	r3, [fp, #-8]
800265d4:	e2833001 	add	r3, r3, #1
800265d8:	e50b3008 	str	r3, [fp, #-8]
800265dc:	e51b3008 	ldr	r3, [fp, #-8]
800265e0:	e353000f 	cmp	r3, #15
800265e4:	daffffe5 	ble	80026580 <thread_exit+0x2c>
800265e8:	e59f3060 	ldr	r3, [pc, #96]	@ 80026650 <thread_exit+0xfc>
800265ec:	e5933000 	ldr	r3, [r3]
800265f0:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800265f4:	e1a00003 	mov	r0, r3
800265f8:	ebfff389 	bl	80023424 <iput>
800265fc:	e59f304c 	ldr	r3, [pc, #76]	@ 80026650 <thread_exit+0xfc>
80026600:	e5933000 	ldr	r3, [r3]
80026604:	e3a02000 	mov	r2, #0
80026608:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002660c:	e59f0040 	ldr	r0, [pc, #64]	@ 80026654 <thread_exit+0x100>
80026610:	eb00008e 	bl	80026850 <acquire>
80026614:	e59f3034 	ldr	r3, [pc, #52]	@ 80026650 <thread_exit+0xfc>
80026618:	e5933000 	ldr	r3, [r3]
8002661c:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
80026620:	e1a00003 	mov	r0, r3
80026624:	ebfffddb 	bl	80025d98 <wakeup1>
80026628:	e59f3020 	ldr	r3, [pc, #32]	@ 80026650 <thread_exit+0xfc>
8002662c:	e5933000 	ldr	r3, [r3]
80026630:	e3a02005 	mov	r2, #5
80026634:	e5c3200c 	strb	r2, [r3, #12]
80026638:	ebfffd4a 	bl	80025b68 <sched>
8002663c:	e59f0014 	ldr	r0, [pc, #20]	@ 80026658 <thread_exit+0x104>
80026640:	ebffed2b 	bl	80021af4 <panic>
80026644:	e1a00000 	nop			@ (mov r0, r0)
80026648:	e24bd004 	sub	sp, fp, #4
8002664c:	e8bd8800 	pop	{fp, pc}
80026650:	800b0f94 	.word	0x800b0f94
80026654:	800ae65c 	.word	0x800ae65c
80026658:	8002a9e4 	.word	0x8002a9e4

8002665c <thread_join>:
8002665c:	e92d4800 	push	{fp, lr}
80026660:	e28db004 	add	fp, sp, #4
80026664:	e24dd010 	sub	sp, sp, #16
80026668:	e50b0010 	str	r0, [fp, #-16]
8002666c:	e3a03000 	mov	r3, #0
80026670:	e50b300c 	str	r3, [fp, #-12]
80026674:	e59f017c 	ldr	r0, [pc, #380]	@ 800267f8 <thread_join+0x19c>
80026678:	eb000074 	bl	80026850 <acquire>
8002667c:	e3a03000 	mov	r3, #0
80026680:	e50b300c 	str	r3, [fp, #-12]
80026684:	e59f3170 	ldr	r3, [pc, #368]	@ 800267fc <thread_join+0x1a0>
80026688:	e50b3008 	str	r3, [fp, #-8]
8002668c:	ea000040 	b	80026794 <thread_join+0x138>
80026690:	e51b3008 	ldr	r3, [fp, #-8]
80026694:	e5933010 	ldr	r3, [r3, #16]
80026698:	e1a02003 	mov	r2, r3
8002669c:	e51b3010 	ldr	r3, [fp, #-16]
800266a0:	e1530002 	cmp	r3, r2
800266a4:	1a000037 	bne	80026788 <thread_join+0x12c>
800266a8:	e51b3008 	ldr	r3, [fp, #-8]
800266ac:	e5932098 	ldr	r2, [r3, #152]	@ 0x98
800266b0:	e59f3148 	ldr	r3, [pc, #328]	@ 80026800 <thread_join+0x1a4>
800266b4:	e5933000 	ldr	r3, [r3]
800266b8:	e1520003 	cmp	r2, r3
800266bc:	1a000031 	bne	80026788 <thread_join+0x12c>
800266c0:	e51b3008 	ldr	r3, [fp, #-8]
800266c4:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
800266c8:	e3530000 	cmp	r3, #0
800266cc:	0a00002d 	beq	80026788 <thread_join+0x12c>
800266d0:	e3a03001 	mov	r3, #1
800266d4:	e50b300c 	str	r3, [fp, #-12]
800266d8:	e51b3008 	ldr	r3, [fp, #-8]
800266dc:	e5d3300c 	ldrb	r3, [r3, #12]
800266e0:	e3530005 	cmp	r3, #5
800266e4:	1a000027 	bne	80026788 <thread_join+0x12c>
800266e8:	e51b3008 	ldr	r3, [fp, #-8]
800266ec:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
800266f0:	e3530000 	cmp	r3, #0
800266f4:	0a000009 	beq	80026720 <thread_join+0xc4>
800266f8:	e59f3100 	ldr	r3, [pc, #256]	@ 80026800 <thread_join+0x1a4>
800266fc:	e5933000 	ldr	r3, [r3]
80026700:	e5930004 	ldr	r0, [r3, #4]
80026704:	e51b3008 	ldr	r3, [fp, #-8]
80026708:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
8002670c:	e2831a01 	add	r1, r3, #4096	@ 0x1000
80026710:	e51b3008 	ldr	r3, [fp, #-8]
80026714:	e593309c 	ldr	r3, [r3, #156]	@ 0x9c
80026718:	e1a02003 	mov	r2, r3
8002671c:	eb000c28 	bl	800297c4 <deallocuvm>
80026720:	e51b3008 	ldr	r3, [fp, #-8]
80026724:	e5933008 	ldr	r3, [r3, #8]
80026728:	e1a00003 	mov	r0, r3
8002672c:	ebffebb5 	bl	80021608 <free_page>
80026730:	e51b3008 	ldr	r3, [fp, #-8]
80026734:	e3a02000 	mov	r2, #0
80026738:	e5c3200c 	strb	r2, [r3, #12]
8002673c:	e51b3008 	ldr	r3, [fp, #-8]
80026740:	e3a02000 	mov	r2, #0
80026744:	e5832010 	str	r2, [r3, #16]
80026748:	e51b3008 	ldr	r3, [fp, #-8]
8002674c:	e3a02000 	mov	r2, #0
80026750:	e5832014 	str	r2, [r3, #20]
80026754:	e51b3008 	ldr	r3, [fp, #-8]
80026758:	e3a02000 	mov	r2, #0
8002675c:	e5832098 	str	r2, [r3, #152]	@ 0x98
80026760:	e51b3008 	ldr	r3, [fp, #-8]
80026764:	e3a02000 	mov	r2, #0
80026768:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
8002676c:	e51b3008 	ldr	r3, [fp, #-8]
80026770:	e3a02000 	mov	r2, #0
80026774:	e5832024 	str	r2, [r3, #36]	@ 0x24
80026778:	e59f0078 	ldr	r0, [pc, #120]	@ 800267f8 <thread_join+0x19c>
8002677c:	eb00003e 	bl	8002687c <release>
80026780:	e51b3010 	ldr	r3, [fp, #-16]
80026784:	ea000018 	b	800267ec <thread_join+0x190>
80026788:	e51b3008 	ldr	r3, [fp, #-8]
8002678c:	e28330a4 	add	r3, r3, #164	@ 0xa4
80026790:	e50b3008 	str	r3, [fp, #-8]
80026794:	e51b3008 	ldr	r3, [fp, #-8]
80026798:	e59f2064 	ldr	r2, [pc, #100]	@ 80026804 <thread_join+0x1a8>
8002679c:	e1530002 	cmp	r3, r2
800267a0:	3affffba 	bcc	80026690 <thread_join+0x34>
800267a4:	e51b300c 	ldr	r3, [fp, #-12]
800267a8:	e3530000 	cmp	r3, #0
800267ac:	0a000004 	beq	800267c4 <thread_join+0x168>
800267b0:	e59f3048 	ldr	r3, [pc, #72]	@ 80026800 <thread_join+0x1a4>
800267b4:	e5933000 	ldr	r3, [r3]
800267b8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800267bc:	e3530000 	cmp	r3, #0
800267c0:	0a000003 	beq	800267d4 <thread_join+0x178>
800267c4:	e59f002c 	ldr	r0, [pc, #44]	@ 800267f8 <thread_join+0x19c>
800267c8:	eb00002b 	bl	8002687c <release>
800267cc:	e3e03000 	mvn	r3, #0
800267d0:	ea000005 	b	800267ec <thread_join+0x190>
800267d4:	e59f3024 	ldr	r3, [pc, #36]	@ 80026800 <thread_join+0x1a4>
800267d8:	e5933000 	ldr	r3, [r3]
800267dc:	e59f1014 	ldr	r1, [pc, #20]	@ 800267f8 <thread_join+0x19c>
800267e0:	e1a00003 	mov	r0, r3
800267e4:	ebfffd37 	bl	80025cc8 <sleep>
800267e8:	eaffffa3 	b	8002667c <thread_join+0x20>
800267ec:	e1a00003 	mov	r0, r3
800267f0:	e24bd004 	sub	sp, fp, #4
800267f4:	e8bd8800 	pop	{fp, pc}
800267f8:	800ae65c 	.word	0x800ae65c
800267fc:	800ae690 	.word	0x800ae690
80026800:	800b0f94 	.word	0x800b0f94
80026804:	800b0f90 	.word	0x800b0f90

80026808 <initlock>:
80026808:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002680c:	e28db000 	add	fp, sp, #0
80026810:	e24dd00c 	sub	sp, sp, #12
80026814:	e50b0008 	str	r0, [fp, #-8]
80026818:	e50b100c 	str	r1, [fp, #-12]
8002681c:	e51b3008 	ldr	r3, [fp, #-8]
80026820:	e51b200c 	ldr	r2, [fp, #-12]
80026824:	e5832004 	str	r2, [r3, #4]
80026828:	e51b3008 	ldr	r3, [fp, #-8]
8002682c:	e3a02000 	mov	r2, #0
80026830:	e5832000 	str	r2, [r3]
80026834:	e51b3008 	ldr	r3, [fp, #-8]
80026838:	e3a02000 	mov	r2, #0
8002683c:	e5832008 	str	r2, [r3, #8]
80026840:	e1a00000 	nop			@ (mov r0, r0)
80026844:	e28bd000 	add	sp, fp, #0
80026848:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002684c:	e12fff1e 	bx	lr

80026850 <acquire>:
80026850:	e92d4800 	push	{fp, lr}
80026854:	e28db004 	add	fp, sp, #4
80026858:	e24dd008 	sub	sp, sp, #8
8002685c:	e50b0008 	str	r0, [fp, #-8]
80026860:	ebffe771 	bl	8002062c <pushcli>
80026864:	e51b3008 	ldr	r3, [fp, #-8]
80026868:	e3a02001 	mov	r2, #1
8002686c:	e5832000 	str	r2, [r3]
80026870:	e1a00000 	nop			@ (mov r0, r0)
80026874:	e24bd004 	sub	sp, fp, #4
80026878:	e8bd8800 	pop	{fp, pc}

8002687c <release>:
8002687c:	e92d4800 	push	{fp, lr}
80026880:	e28db004 	add	fp, sp, #4
80026884:	e24dd008 	sub	sp, sp, #8
80026888:	e50b0008 	str	r0, [fp, #-8]
8002688c:	e51b3008 	ldr	r3, [fp, #-8]
80026890:	e3a02000 	mov	r2, #0
80026894:	e5832000 	str	r2, [r3]
80026898:	ebffe778 	bl	80020680 <popcli>
8002689c:	e1a00000 	nop			@ (mov r0, r0)
800268a0:	e24bd004 	sub	sp, fp, #4
800268a4:	e8bd8800 	pop	{fp, pc}

800268a8 <holding>:
800268a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800268ac:	e28db000 	add	fp, sp, #0
800268b0:	e24dd00c 	sub	sp, sp, #12
800268b4:	e50b0008 	str	r0, [fp, #-8]
800268b8:	e51b3008 	ldr	r3, [fp, #-8]
800268bc:	e5933000 	ldr	r3, [r3]
800268c0:	e1a00003 	mov	r0, r3
800268c4:	e28bd000 	add	sp, fp, #0
800268c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800268cc:	e12fff1e 	bx	lr

800268d0 <swtch>:
800268d0:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800268d4:	e580d000 	str	sp, [r0]
800268d8:	e1a0d001 	mov	sp, r1
800268dc:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800268e0:	e12fff1e 	bx	lr

800268e4 <fetchint>:
800268e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800268e8:	e28db000 	add	fp, sp, #0
800268ec:	e24dd00c 	sub	sp, sp, #12
800268f0:	e50b0008 	str	r0, [fp, #-8]
800268f4:	e50b100c 	str	r1, [fp, #-12]
800268f8:	e59f3058 	ldr	r3, [pc, #88]	@ 80026958 <fetchint+0x74>
800268fc:	e5933000 	ldr	r3, [r3]
80026900:	e5933000 	ldr	r3, [r3]
80026904:	e51b2008 	ldr	r2, [fp, #-8]
80026908:	e1520003 	cmp	r2, r3
8002690c:	2a000006 	bcs	8002692c <fetchint+0x48>
80026910:	e51b3008 	ldr	r3, [fp, #-8]
80026914:	e2832004 	add	r2, r3, #4
80026918:	e59f3038 	ldr	r3, [pc, #56]	@ 80026958 <fetchint+0x74>
8002691c:	e5933000 	ldr	r3, [r3]
80026920:	e5933000 	ldr	r3, [r3]
80026924:	e1520003 	cmp	r2, r3
80026928:	9a000001 	bls	80026934 <fetchint+0x50>
8002692c:	e3e03000 	mvn	r3, #0
80026930:	ea000004 	b	80026948 <fetchint+0x64>
80026934:	e51b3008 	ldr	r3, [fp, #-8]
80026938:	e5932000 	ldr	r2, [r3]
8002693c:	e51b300c 	ldr	r3, [fp, #-12]
80026940:	e5832000 	str	r2, [r3]
80026944:	e3a03000 	mov	r3, #0
80026948:	e1a00003 	mov	r0, r3
8002694c:	e28bd000 	add	sp, fp, #0
80026950:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026954:	e12fff1e 	bx	lr
80026958:	800b0f94 	.word	0x800b0f94

8002695c <fetchstr>:
8002695c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026960:	e28db000 	add	fp, sp, #0
80026964:	e24dd014 	sub	sp, sp, #20
80026968:	e50b0010 	str	r0, [fp, #-16]
8002696c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026970:	e59f3098 	ldr	r3, [pc, #152]	@ 80026a10 <fetchstr+0xb4>
80026974:	e5933000 	ldr	r3, [r3]
80026978:	e5933000 	ldr	r3, [r3]
8002697c:	e51b2010 	ldr	r2, [fp, #-16]
80026980:	e1520003 	cmp	r2, r3
80026984:	3a000001 	bcc	80026990 <fetchstr+0x34>
80026988:	e3e03000 	mvn	r3, #0
8002698c:	ea00001b 	b	80026a00 <fetchstr+0xa4>
80026990:	e51b2010 	ldr	r2, [fp, #-16]
80026994:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026998:	e5832000 	str	r2, [r3]
8002699c:	e59f306c 	ldr	r3, [pc, #108]	@ 80026a10 <fetchstr+0xb4>
800269a0:	e5933000 	ldr	r3, [r3]
800269a4:	e5933000 	ldr	r3, [r3]
800269a8:	e50b300c 	str	r3, [fp, #-12]
800269ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800269b0:	e5933000 	ldr	r3, [r3]
800269b4:	e50b3008 	str	r3, [fp, #-8]
800269b8:	ea00000b 	b	800269ec <fetchstr+0x90>
800269bc:	e51b3008 	ldr	r3, [fp, #-8]
800269c0:	e5d33000 	ldrb	r3, [r3]
800269c4:	e3530000 	cmp	r3, #0
800269c8:	1a000004 	bne	800269e0 <fetchstr+0x84>
800269cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800269d0:	e5933000 	ldr	r3, [r3]
800269d4:	e51b2008 	ldr	r2, [fp, #-8]
800269d8:	e0423003 	sub	r3, r2, r3
800269dc:	ea000007 	b	80026a00 <fetchstr+0xa4>
800269e0:	e51b3008 	ldr	r3, [fp, #-8]
800269e4:	e2833001 	add	r3, r3, #1
800269e8:	e50b3008 	str	r3, [fp, #-8]
800269ec:	e51b2008 	ldr	r2, [fp, #-8]
800269f0:	e51b300c 	ldr	r3, [fp, #-12]
800269f4:	e1520003 	cmp	r2, r3
800269f8:	3affffef 	bcc	800269bc <fetchstr+0x60>
800269fc:	e3e03000 	mvn	r3, #0
80026a00:	e1a00003 	mov	r0, r3
80026a04:	e28bd000 	add	sp, fp, #0
80026a08:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026a0c:	e12fff1e 	bx	lr
80026a10:	800b0f94 	.word	0x800b0f94

80026a14 <argint>:
80026a14:	e92d4800 	push	{fp, lr}
80026a18:	e28db004 	add	fp, sp, #4
80026a1c:	e24dd008 	sub	sp, sp, #8
80026a20:	e50b0008 	str	r0, [fp, #-8]
80026a24:	e50b100c 	str	r1, [fp, #-12]
80026a28:	e51b3008 	ldr	r3, [fp, #-8]
80026a2c:	e3530003 	cmp	r3, #3
80026a30:	da000001 	ble	80026a3c <argint+0x28>
80026a34:	e59f003c 	ldr	r0, [pc, #60]	@ 80026a78 <argint+0x64>
80026a38:	ebffec2d 	bl	80021af4 <panic>
80026a3c:	e59f3038 	ldr	r3, [pc, #56]	@ 80026a7c <argint+0x68>
80026a40:	e5933000 	ldr	r3, [r3]
80026a44:	e5933018 	ldr	r3, [r3, #24]
80026a48:	e2832014 	add	r2, r3, #20
80026a4c:	e51b3008 	ldr	r3, [fp, #-8]
80026a50:	e1a03103 	lsl	r3, r3, #2
80026a54:	e0823003 	add	r3, r2, r3
80026a58:	e5933000 	ldr	r3, [r3]
80026a5c:	e1a02003 	mov	r2, r3
80026a60:	e51b300c 	ldr	r3, [fp, #-12]
80026a64:	e5832000 	str	r2, [r3]
80026a68:	e3a03000 	mov	r3, #0
80026a6c:	e1a00003 	mov	r0, r3
80026a70:	e24bd004 	sub	sp, fp, #4
80026a74:	e8bd8800 	pop	{fp, pc}
80026a78:	8002aa9c 	.word	0x8002aa9c
80026a7c:	800b0f94 	.word	0x800b0f94

80026a80 <argptr>:
80026a80:	e92d4800 	push	{fp, lr}
80026a84:	e28db004 	add	fp, sp, #4
80026a88:	e24dd018 	sub	sp, sp, #24
80026a8c:	e50b0010 	str	r0, [fp, #-16]
80026a90:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026a94:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026a98:	e24b3008 	sub	r3, fp, #8
80026a9c:	e1a01003 	mov	r1, r3
80026aa0:	e51b0010 	ldr	r0, [fp, #-16]
80026aa4:	ebffffda 	bl	80026a14 <argint>
80026aa8:	e1a03000 	mov	r3, r0
80026aac:	e3530000 	cmp	r3, #0
80026ab0:	aa000001 	bge	80026abc <argptr+0x3c>
80026ab4:	e3e03000 	mvn	r3, #0
80026ab8:	ea000015 	b	80026b14 <argptr+0x94>
80026abc:	e59f305c 	ldr	r3, [pc, #92]	@ 80026b20 <argptr+0xa0>
80026ac0:	e5933000 	ldr	r3, [r3]
80026ac4:	e5933000 	ldr	r3, [r3]
80026ac8:	e51b2008 	ldr	r2, [fp, #-8]
80026acc:	e1530002 	cmp	r3, r2
80026ad0:	9a000008 	bls	80026af8 <argptr+0x78>
80026ad4:	e51b3008 	ldr	r3, [fp, #-8]
80026ad8:	e1a02003 	mov	r2, r3
80026adc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026ae0:	e0822003 	add	r2, r2, r3
80026ae4:	e59f3034 	ldr	r3, [pc, #52]	@ 80026b20 <argptr+0xa0>
80026ae8:	e5933000 	ldr	r3, [r3]
80026aec:	e5933000 	ldr	r3, [r3]
80026af0:	e1520003 	cmp	r2, r3
80026af4:	9a000001 	bls	80026b00 <argptr+0x80>
80026af8:	e3e03000 	mvn	r3, #0
80026afc:	ea000004 	b	80026b14 <argptr+0x94>
80026b00:	e51b3008 	ldr	r3, [fp, #-8]
80026b04:	e1a02003 	mov	r2, r3
80026b08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026b0c:	e5832000 	str	r2, [r3]
80026b10:	e3a03000 	mov	r3, #0
80026b14:	e1a00003 	mov	r0, r3
80026b18:	e24bd004 	sub	sp, fp, #4
80026b1c:	e8bd8800 	pop	{fp, pc}
80026b20:	800b0f94 	.word	0x800b0f94

80026b24 <argstr>:
80026b24:	e92d4800 	push	{fp, lr}
80026b28:	e28db004 	add	fp, sp, #4
80026b2c:	e24dd010 	sub	sp, sp, #16
80026b30:	e50b0010 	str	r0, [fp, #-16]
80026b34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026b38:	e24b3008 	sub	r3, fp, #8
80026b3c:	e1a01003 	mov	r1, r3
80026b40:	e51b0010 	ldr	r0, [fp, #-16]
80026b44:	ebffffb2 	bl	80026a14 <argint>
80026b48:	e1a03000 	mov	r3, r0
80026b4c:	e3530000 	cmp	r3, #0
80026b50:	aa000001 	bge	80026b5c <argstr+0x38>
80026b54:	e3e03000 	mvn	r3, #0
80026b58:	ea000004 	b	80026b70 <argstr+0x4c>
80026b5c:	e51b3008 	ldr	r3, [fp, #-8]
80026b60:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026b64:	e1a00003 	mov	r0, r3
80026b68:	ebffff7b 	bl	8002695c <fetchstr>
80026b6c:	e1a03000 	mov	r3, r0
80026b70:	e1a00003 	mov	r0, r3
80026b74:	e24bd004 	sub	sp, fp, #4
80026b78:	e8bd8800 	pop	{fp, pc}

80026b7c <syscall>:
80026b7c:	e92d4800 	push	{fp, lr}
80026b80:	e28db004 	add	fp, sp, #4
80026b84:	e24dd008 	sub	sp, sp, #8
80026b88:	e59f30cc 	ldr	r3, [pc, #204]	@ 80026c5c <syscall+0xe0>
80026b8c:	e5933000 	ldr	r3, [r3]
80026b90:	e5933018 	ldr	r3, [r3, #24]
80026b94:	e5933010 	ldr	r3, [r3, #16]
80026b98:	e50b3008 	str	r3, [fp, #-8]
80026b9c:	e51b3008 	ldr	r3, [fp, #-8]
80026ba0:	e3530000 	cmp	r3, #0
80026ba4:	da00001a 	ble	80026c14 <syscall+0x98>
80026ba8:	e51b3008 	ldr	r3, [fp, #-8]
80026bac:	e353002a 	cmp	r3, #42	@ 0x2a
80026bb0:	8a000017 	bhi	80026c14 <syscall+0x98>
80026bb4:	e59f20a4 	ldr	r2, [pc, #164]	@ 80026c60 <syscall+0xe4>
80026bb8:	e51b3008 	ldr	r3, [fp, #-8]
80026bbc:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026bc0:	e3530000 	cmp	r3, #0
80026bc4:	0a000012 	beq	80026c14 <syscall+0x98>
80026bc8:	e59f2090 	ldr	r2, [pc, #144]	@ 80026c60 <syscall+0xe4>
80026bcc:	e51b3008 	ldr	r3, [fp, #-8]
80026bd0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026bd4:	e12fff33 	blx	r3
80026bd8:	e50b000c 	str	r0, [fp, #-12]
80026bdc:	e59f3078 	ldr	r3, [pc, #120]	@ 80026c5c <syscall+0xe0>
80026be0:	e5933000 	ldr	r3, [r3]
80026be4:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
80026be8:	e2822001 	add	r2, r2, #1
80026bec:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80026bf0:	e51b3008 	ldr	r3, [fp, #-8]
80026bf4:	e3530007 	cmp	r3, #7
80026bf8:	0a000014 	beq	80026c50 <syscall+0xd4>
80026bfc:	e59f3058 	ldr	r3, [pc, #88]	@ 80026c5c <syscall+0xe0>
80026c00:	e5933000 	ldr	r3, [r3]
80026c04:	e5933018 	ldr	r3, [r3, #24]
80026c08:	e51b200c 	ldr	r2, [fp, #-12]
80026c0c:	e5832010 	str	r2, [r3, #16]
80026c10:	ea00000e 	b	80026c50 <syscall+0xd4>
80026c14:	e59f3040 	ldr	r3, [pc, #64]	@ 80026c5c <syscall+0xe0>
80026c18:	e5933000 	ldr	r3, [r3]
80026c1c:	e5931010 	ldr	r1, [r3, #16]
80026c20:	e59f3034 	ldr	r3, [pc, #52]	@ 80026c5c <syscall+0xe0>
80026c24:	e5933000 	ldr	r3, [r3]
80026c28:	e283206c 	add	r2, r3, #108	@ 0x6c
80026c2c:	e51b3008 	ldr	r3, [fp, #-8]
80026c30:	e59f002c 	ldr	r0, [pc, #44]	@ 80026c64 <syscall+0xe8>
80026c34:	ebffeb16 	bl	80021894 <cprintf>
80026c38:	e59f301c 	ldr	r3, [pc, #28]	@ 80026c5c <syscall+0xe0>
80026c3c:	e5933000 	ldr	r3, [r3]
80026c40:	e5933018 	ldr	r3, [r3, #24]
80026c44:	e3e02000 	mvn	r2, #0
80026c48:	e5832010 	str	r2, [r3, #16]
80026c4c:	e1a00000 	nop			@ (mov r0, r0)
80026c50:	e1a00000 	nop			@ (mov r0, r0)
80026c54:	e24bd004 	sub	sp, fp, #4
80026c58:	e8bd8800 	pop	{fp, pc}
80026c5c:	800b0f94 	.word	0x800b0f94
80026c60:	8002b034 	.word	0x8002b034
80026c64:	8002aac0 	.word	0x8002aac0

80026c68 <argfd>:
80026c68:	e92d4800 	push	{fp, lr}
80026c6c:	e28db004 	add	fp, sp, #4
80026c70:	e24dd018 	sub	sp, sp, #24
80026c74:	e50b0010 	str	r0, [fp, #-16]
80026c78:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026c7c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026c80:	e24b300c 	sub	r3, fp, #12
80026c84:	e1a01003 	mov	r1, r3
80026c88:	e51b0010 	ldr	r0, [fp, #-16]
80026c8c:	ebffff60 	bl	80026a14 <argint>
80026c90:	e1a03000 	mov	r3, r0
80026c94:	e3530000 	cmp	r3, #0
80026c98:	aa000001 	bge	80026ca4 <argfd+0x3c>
80026c9c:	e3e03000 	mvn	r3, #0
80026ca0:	ea00001d 	b	80026d1c <argfd+0xb4>
80026ca4:	e51b300c 	ldr	r3, [fp, #-12]
80026ca8:	e3530000 	cmp	r3, #0
80026cac:	ba00000b 	blt	80026ce0 <argfd+0x78>
80026cb0:	e51b300c 	ldr	r3, [fp, #-12]
80026cb4:	e353000f 	cmp	r3, #15
80026cb8:	ca000008 	bgt	80026ce0 <argfd+0x78>
80026cbc:	e59f3064 	ldr	r3, [pc, #100]	@ 80026d28 <argfd+0xc0>
80026cc0:	e5933000 	ldr	r3, [r3]
80026cc4:	e51b200c 	ldr	r2, [fp, #-12]
80026cc8:	e282200a 	add	r2, r2, #10
80026ccc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026cd0:	e50b3008 	str	r3, [fp, #-8]
80026cd4:	e51b3008 	ldr	r3, [fp, #-8]
80026cd8:	e3530000 	cmp	r3, #0
80026cdc:	1a000001 	bne	80026ce8 <argfd+0x80>
80026ce0:	e3e03000 	mvn	r3, #0
80026ce4:	ea00000c 	b	80026d1c <argfd+0xb4>
80026ce8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026cec:	e3530000 	cmp	r3, #0
80026cf0:	0a000002 	beq	80026d00 <argfd+0x98>
80026cf4:	e51b200c 	ldr	r2, [fp, #-12]
80026cf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026cfc:	e5832000 	str	r2, [r3]
80026d00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d04:	e3530000 	cmp	r3, #0
80026d08:	0a000002 	beq	80026d18 <argfd+0xb0>
80026d0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d10:	e51b2008 	ldr	r2, [fp, #-8]
80026d14:	e5832000 	str	r2, [r3]
80026d18:	e3a03000 	mov	r3, #0
80026d1c:	e1a00003 	mov	r0, r3
80026d20:	e24bd004 	sub	sp, fp, #4
80026d24:	e8bd8800 	pop	{fp, pc}
80026d28:	800b0f94 	.word	0x800b0f94

80026d2c <fdalloc>:
80026d2c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026d30:	e28db000 	add	fp, sp, #0
80026d34:	e24dd014 	sub	sp, sp, #20
80026d38:	e50b0010 	str	r0, [fp, #-16]
80026d3c:	e3a03000 	mov	r3, #0
80026d40:	e50b3008 	str	r3, [fp, #-8]
80026d44:	ea000011 	b	80026d90 <fdalloc+0x64>
80026d48:	e59f3060 	ldr	r3, [pc, #96]	@ 80026db0 <fdalloc+0x84>
80026d4c:	e5933000 	ldr	r3, [r3]
80026d50:	e51b2008 	ldr	r2, [fp, #-8]
80026d54:	e282200a 	add	r2, r2, #10
80026d58:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026d5c:	e3530000 	cmp	r3, #0
80026d60:	1a000007 	bne	80026d84 <fdalloc+0x58>
80026d64:	e59f3044 	ldr	r3, [pc, #68]	@ 80026db0 <fdalloc+0x84>
80026d68:	e5933000 	ldr	r3, [r3]
80026d6c:	e51b2008 	ldr	r2, [fp, #-8]
80026d70:	e282200a 	add	r2, r2, #10
80026d74:	e51b1010 	ldr	r1, [fp, #-16]
80026d78:	e7831102 	str	r1, [r3, r2, lsl #2]
80026d7c:	e51b3008 	ldr	r3, [fp, #-8]
80026d80:	ea000006 	b	80026da0 <fdalloc+0x74>
80026d84:	e51b3008 	ldr	r3, [fp, #-8]
80026d88:	e2833001 	add	r3, r3, #1
80026d8c:	e50b3008 	str	r3, [fp, #-8]
80026d90:	e51b3008 	ldr	r3, [fp, #-8]
80026d94:	e353000f 	cmp	r3, #15
80026d98:	daffffea 	ble	80026d48 <fdalloc+0x1c>
80026d9c:	e3e03000 	mvn	r3, #0
80026da0:	e1a00003 	mov	r0, r3
80026da4:	e28bd000 	add	sp, fp, #0
80026da8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026dac:	e12fff1e 	bx	lr
80026db0:	800b0f94 	.word	0x800b0f94

80026db4 <sys_dup>:
80026db4:	e92d4800 	push	{fp, lr}
80026db8:	e28db004 	add	fp, sp, #4
80026dbc:	e24dd008 	sub	sp, sp, #8
80026dc0:	e24b300c 	sub	r3, fp, #12
80026dc4:	e1a02003 	mov	r2, r3
80026dc8:	e3a01000 	mov	r1, #0
80026dcc:	e3a00000 	mov	r0, #0
80026dd0:	ebffffa4 	bl	80026c68 <argfd>
80026dd4:	e1a03000 	mov	r3, r0
80026dd8:	e3530000 	cmp	r3, #0
80026ddc:	aa000001 	bge	80026de8 <sys_dup+0x34>
80026de0:	e3e03000 	mvn	r3, #0
80026de4:	ea00000c 	b	80026e1c <sys_dup+0x68>
80026de8:	e51b300c 	ldr	r3, [fp, #-12]
80026dec:	e1a00003 	mov	r0, r3
80026df0:	ebffffcd 	bl	80026d2c <fdalloc>
80026df4:	e50b0008 	str	r0, [fp, #-8]
80026df8:	e51b3008 	ldr	r3, [fp, #-8]
80026dfc:	e3530000 	cmp	r3, #0
80026e00:	aa000001 	bge	80026e0c <sys_dup+0x58>
80026e04:	e3e03000 	mvn	r3, #0
80026e08:	ea000003 	b	80026e1c <sys_dup+0x68>
80026e0c:	e51b300c 	ldr	r3, [fp, #-12]
80026e10:	e1a00003 	mov	r0, r3
80026e14:	ebffee18 	bl	8002267c <filedup>
80026e18:	e51b3008 	ldr	r3, [fp, #-8]
80026e1c:	e1a00003 	mov	r0, r3
80026e20:	e24bd004 	sub	sp, fp, #4
80026e24:	e8bd8800 	pop	{fp, pc}

80026e28 <sys_read>:
80026e28:	e92d4800 	push	{fp, lr}
80026e2c:	e28db004 	add	fp, sp, #4
80026e30:	e24dd010 	sub	sp, sp, #16
80026e34:	e24b3008 	sub	r3, fp, #8
80026e38:	e1a02003 	mov	r2, r3
80026e3c:	e3a01000 	mov	r1, #0
80026e40:	e3a00000 	mov	r0, #0
80026e44:	ebffff87 	bl	80026c68 <argfd>
80026e48:	e1a03000 	mov	r3, r0
80026e4c:	e3530000 	cmp	r3, #0
80026e50:	ba00000e 	blt	80026e90 <sys_read+0x68>
80026e54:	e24b300c 	sub	r3, fp, #12
80026e58:	e1a01003 	mov	r1, r3
80026e5c:	e3a00002 	mov	r0, #2
80026e60:	ebfffeeb 	bl	80026a14 <argint>
80026e64:	e1a03000 	mov	r3, r0
80026e68:	e3530000 	cmp	r3, #0
80026e6c:	ba000007 	blt	80026e90 <sys_read+0x68>
80026e70:	e51b200c 	ldr	r2, [fp, #-12]
80026e74:	e24b3010 	sub	r3, fp, #16
80026e78:	e1a01003 	mov	r1, r3
80026e7c:	e3a00001 	mov	r0, #1
80026e80:	ebfffefe 	bl	80026a80 <argptr>
80026e84:	e1a03000 	mov	r3, r0
80026e88:	e3530000 	cmp	r3, #0
80026e8c:	aa000001 	bge	80026e98 <sys_read+0x70>
80026e90:	e3e03000 	mvn	r3, #0
80026e94:	ea000005 	b	80026eb0 <sys_read+0x88>
80026e98:	e51b3008 	ldr	r3, [fp, #-8]
80026e9c:	e51b1010 	ldr	r1, [fp, #-16]
80026ea0:	e51b200c 	ldr	r2, [fp, #-12]
80026ea4:	e1a00003 	mov	r0, r3
80026ea8:	ebffee64 	bl	80022840 <fileread>
80026eac:	e1a03000 	mov	r3, r0
80026eb0:	e1a00003 	mov	r0, r3
80026eb4:	e24bd004 	sub	sp, fp, #4
80026eb8:	e8bd8800 	pop	{fp, pc}

80026ebc <sys_write>:
80026ebc:	e92d4800 	push	{fp, lr}
80026ec0:	e28db004 	add	fp, sp, #4
80026ec4:	e24dd010 	sub	sp, sp, #16
80026ec8:	e24b3008 	sub	r3, fp, #8
80026ecc:	e1a02003 	mov	r2, r3
80026ed0:	e3a01000 	mov	r1, #0
80026ed4:	e3a00000 	mov	r0, #0
80026ed8:	ebffff62 	bl	80026c68 <argfd>
80026edc:	e1a03000 	mov	r3, r0
80026ee0:	e3530000 	cmp	r3, #0
80026ee4:	ba00000e 	blt	80026f24 <sys_write+0x68>
80026ee8:	e24b300c 	sub	r3, fp, #12
80026eec:	e1a01003 	mov	r1, r3
80026ef0:	e3a00002 	mov	r0, #2
80026ef4:	ebfffec6 	bl	80026a14 <argint>
80026ef8:	e1a03000 	mov	r3, r0
80026efc:	e3530000 	cmp	r3, #0
80026f00:	ba000007 	blt	80026f24 <sys_write+0x68>
80026f04:	e51b200c 	ldr	r2, [fp, #-12]
80026f08:	e24b3010 	sub	r3, fp, #16
80026f0c:	e1a01003 	mov	r1, r3
80026f10:	e3a00001 	mov	r0, #1
80026f14:	ebfffed9 	bl	80026a80 <argptr>
80026f18:	e1a03000 	mov	r3, r0
80026f1c:	e3530000 	cmp	r3, #0
80026f20:	aa000001 	bge	80026f2c <sys_write+0x70>
80026f24:	e3e03000 	mvn	r3, #0
80026f28:	ea000005 	b	80026f44 <sys_write+0x88>
80026f2c:	e51b3008 	ldr	r3, [fp, #-8]
80026f30:	e51b1010 	ldr	r1, [fp, #-16]
80026f34:	e51b200c 	ldr	r2, [fp, #-12]
80026f38:	e1a00003 	mov	r0, r3
80026f3c:	ebffee7c 	bl	80022934 <filewrite>
80026f40:	e1a03000 	mov	r3, r0
80026f44:	e1a00003 	mov	r0, r3
80026f48:	e24bd004 	sub	sp, fp, #4
80026f4c:	e8bd8800 	pop	{fp, pc}

80026f50 <sys_close>:
80026f50:	e92d4800 	push	{fp, lr}
80026f54:	e28db004 	add	fp, sp, #4
80026f58:	e24dd008 	sub	sp, sp, #8
80026f5c:	e24b200c 	sub	r2, fp, #12
80026f60:	e24b3008 	sub	r3, fp, #8
80026f64:	e1a01003 	mov	r1, r3
80026f68:	e3a00000 	mov	r0, #0
80026f6c:	ebffff3d 	bl	80026c68 <argfd>
80026f70:	e1a03000 	mov	r3, r0
80026f74:	e3530000 	cmp	r3, #0
80026f78:	aa000001 	bge	80026f84 <sys_close+0x34>
80026f7c:	e3e03000 	mvn	r3, #0
80026f80:	ea000009 	b	80026fac <sys_close+0x5c>
80026f84:	e59f302c 	ldr	r3, [pc, #44]	@ 80026fb8 <sys_close+0x68>
80026f88:	e5933000 	ldr	r3, [r3]
80026f8c:	e51b2008 	ldr	r2, [fp, #-8]
80026f90:	e282200a 	add	r2, r2, #10
80026f94:	e3a01000 	mov	r1, #0
80026f98:	e7831102 	str	r1, [r3, r2, lsl #2]
80026f9c:	e51b300c 	ldr	r3, [fp, #-12]
80026fa0:	e1a00003 	mov	r0, r3
80026fa4:	ebffedcd 	bl	800226e0 <fileclose>
80026fa8:	e3a03000 	mov	r3, #0
80026fac:	e1a00003 	mov	r0, r3
80026fb0:	e24bd004 	sub	sp, fp, #4
80026fb4:	e8bd8800 	pop	{fp, pc}
80026fb8:	800b0f94 	.word	0x800b0f94

80026fbc <sys_fstat>:
80026fbc:	e92d4800 	push	{fp, lr}
80026fc0:	e28db004 	add	fp, sp, #4
80026fc4:	e24dd008 	sub	sp, sp, #8
80026fc8:	e24b3008 	sub	r3, fp, #8
80026fcc:	e1a02003 	mov	r2, r3
80026fd0:	e3a01000 	mov	r1, #0
80026fd4:	e3a00000 	mov	r0, #0
80026fd8:	ebffff22 	bl	80026c68 <argfd>
80026fdc:	e1a03000 	mov	r3, r0
80026fe0:	e3530000 	cmp	r3, #0
80026fe4:	ba000007 	blt	80027008 <sys_fstat+0x4c>
80026fe8:	e24b300c 	sub	r3, fp, #12
80026fec:	e3a02014 	mov	r2, #20
80026ff0:	e1a01003 	mov	r1, r3
80026ff4:	e3a00001 	mov	r0, #1
80026ff8:	ebfffea0 	bl	80026a80 <argptr>
80026ffc:	e1a03000 	mov	r3, r0
80027000:	e3530000 	cmp	r3, #0
80027004:	aa000001 	bge	80027010 <sys_fstat+0x54>
80027008:	e3e03000 	mvn	r3, #0
8002700c:	ea000005 	b	80027028 <sys_fstat+0x6c>
80027010:	e51b3008 	ldr	r3, [fp, #-8]
80027014:	e51b200c 	ldr	r2, [fp, #-12]
80027018:	e1a01002 	mov	r1, r2
8002701c:	e1a00003 	mov	r0, r3
80027020:	ebffedea 	bl	800227d0 <filestat>
80027024:	e1a03000 	mov	r3, r0
80027028:	e1a00003 	mov	r0, r3
8002702c:	e24bd004 	sub	sp, fp, #4
80027030:	e8bd8800 	pop	{fp, pc}

80027034 <sys_link>:
80027034:	e92d4800 	push	{fp, lr}
80027038:	e28db004 	add	fp, sp, #4
8002703c:	e24dd020 	sub	sp, sp, #32
80027040:	e24b3024 	sub	r3, fp, #36	@ 0x24
80027044:	e1a01003 	mov	r1, r3
80027048:	e3a00000 	mov	r0, #0
8002704c:	ebfffeb4 	bl	80026b24 <argstr>
80027050:	e1a03000 	mov	r3, r0
80027054:	e3530000 	cmp	r3, #0
80027058:	ba000006 	blt	80027078 <sys_link+0x44>
8002705c:	e24b3020 	sub	r3, fp, #32
80027060:	e1a01003 	mov	r1, r3
80027064:	e3a00001 	mov	r0, #1
80027068:	ebfffead 	bl	80026b24 <argstr>
8002706c:	e1a03000 	mov	r3, r0
80027070:	e3530000 	cmp	r3, #0
80027074:	aa000001 	bge	80027080 <sys_link+0x4c>
80027078:	e3e03000 	mvn	r3, #0
8002707c:	ea000055 	b	800271d8 <sys_link+0x1a4>
80027080:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027084:	e1a00003 	mov	r0, r3
80027088:	ebfff432 	bl	80024158 <namei>
8002708c:	e50b0008 	str	r0, [fp, #-8]
80027090:	e51b3008 	ldr	r3, [fp, #-8]
80027094:	e3530000 	cmp	r3, #0
80027098:	1a000001 	bne	800270a4 <sys_link+0x70>
8002709c:	e3e03000 	mvn	r3, #0
800270a0:	ea00004c 	b	800271d8 <sys_link+0x1a4>
800270a4:	ebfff504 	bl	800244bc <begin_trans>
800270a8:	e51b0008 	ldr	r0, [fp, #-8]
800270ac:	ebfff056 	bl	8002320c <ilock>
800270b0:	e51b3008 	ldr	r3, [fp, #-8]
800270b4:	e1d331f0 	ldrsh	r3, [r3, #16]
800270b8:	e3530001 	cmp	r3, #1
800270bc:	1a000004 	bne	800270d4 <sys_link+0xa0>
800270c0:	e51b0008 	ldr	r0, [fp, #-8]
800270c4:	ebfff111 	bl	80023510 <iunlockput>
800270c8:	ebfff50f 	bl	8002450c <commit_trans>
800270cc:	e3e03000 	mvn	r3, #0
800270d0:	ea000040 	b	800271d8 <sys_link+0x1a4>
800270d4:	e51b3008 	ldr	r3, [fp, #-8]
800270d8:	e1d331f6 	ldrsh	r3, [r3, #22]
800270dc:	e6ff3073 	uxth	r3, r3
800270e0:	e2833001 	add	r3, r3, #1
800270e4:	e6ff3073 	uxth	r3, r3
800270e8:	e6bf2073 	sxth	r2, r3
800270ec:	e51b3008 	ldr	r3, [fp, #-8]
800270f0:	e1c321b6 	strh	r2, [r3, #22]
800270f4:	e51b0008 	ldr	r0, [fp, #-8]
800270f8:	ebffefa9 	bl	80022fa4 <iupdate>
800270fc:	e51b0008 	ldr	r0, [fp, #-8]
80027100:	ebfff0a5 	bl	8002339c <iunlock>
80027104:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027108:	e24b201c 	sub	r2, fp, #28
8002710c:	e1a01002 	mov	r1, r2
80027110:	e1a00003 	mov	r0, r3
80027114:	ebfff41c 	bl	8002418c <nameiparent>
80027118:	e50b000c 	str	r0, [fp, #-12]
8002711c:	e51b300c 	ldr	r3, [fp, #-12]
80027120:	e3530000 	cmp	r3, #0
80027124:	0a00001a 	beq	80027194 <sys_link+0x160>
80027128:	e51b000c 	ldr	r0, [fp, #-12]
8002712c:	ebfff036 	bl	8002320c <ilock>
80027130:	e51b300c 	ldr	r3, [fp, #-12]
80027134:	e5932000 	ldr	r2, [r3]
80027138:	e51b3008 	ldr	r3, [fp, #-8]
8002713c:	e5933000 	ldr	r3, [r3]
80027140:	e1520003 	cmp	r2, r3
80027144:	1a000008 	bne	8002716c <sys_link+0x138>
80027148:	e51b3008 	ldr	r3, [fp, #-8]
8002714c:	e5932004 	ldr	r2, [r3, #4]
80027150:	e24b301c 	sub	r3, fp, #28
80027154:	e1a01003 	mov	r1, r3
80027158:	e51b000c 	ldr	r0, [fp, #-12]
8002715c:	ebfff327 	bl	80023e00 <dirlink>
80027160:	e1a03000 	mov	r3, r0
80027164:	e3530000 	cmp	r3, #0
80027168:	aa000002 	bge	80027178 <sys_link+0x144>
8002716c:	e51b000c 	ldr	r0, [fp, #-12]
80027170:	ebfff0e6 	bl	80023510 <iunlockput>
80027174:	ea000007 	b	80027198 <sys_link+0x164>
80027178:	e51b000c 	ldr	r0, [fp, #-12]
8002717c:	ebfff0e3 	bl	80023510 <iunlockput>
80027180:	e51b0008 	ldr	r0, [fp, #-8]
80027184:	ebfff0a6 	bl	80023424 <iput>
80027188:	ebfff4df 	bl	8002450c <commit_trans>
8002718c:	e3a03000 	mov	r3, #0
80027190:	ea000010 	b	800271d8 <sys_link+0x1a4>
80027194:	e1a00000 	nop			@ (mov r0, r0)
80027198:	e51b0008 	ldr	r0, [fp, #-8]
8002719c:	ebfff01a 	bl	8002320c <ilock>
800271a0:	e51b3008 	ldr	r3, [fp, #-8]
800271a4:	e1d331f6 	ldrsh	r3, [r3, #22]
800271a8:	e6ff3073 	uxth	r3, r3
800271ac:	e2433001 	sub	r3, r3, #1
800271b0:	e6ff3073 	uxth	r3, r3
800271b4:	e6bf2073 	sxth	r2, r3
800271b8:	e51b3008 	ldr	r3, [fp, #-8]
800271bc:	e1c321b6 	strh	r2, [r3, #22]
800271c0:	e51b0008 	ldr	r0, [fp, #-8]
800271c4:	ebffef76 	bl	80022fa4 <iupdate>
800271c8:	e51b0008 	ldr	r0, [fp, #-8]
800271cc:	ebfff0cf 	bl	80023510 <iunlockput>
800271d0:	ebfff4cd 	bl	8002450c <commit_trans>
800271d4:	e3e03000 	mvn	r3, #0
800271d8:	e1a00003 	mov	r0, r3
800271dc:	e24bd004 	sub	sp, fp, #4
800271e0:	e8bd8800 	pop	{fp, pc}

800271e4 <isdirempty>:
800271e4:	e92d4800 	push	{fp, lr}
800271e8:	e28db004 	add	fp, sp, #4
800271ec:	e24dd020 	sub	sp, sp, #32
800271f0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800271f4:	e3a03020 	mov	r3, #32
800271f8:	e50b3008 	str	r3, [fp, #-8]
800271fc:	ea000011 	b	80027248 <isdirempty+0x64>
80027200:	e51b2008 	ldr	r2, [fp, #-8]
80027204:	e24b1018 	sub	r1, fp, #24
80027208:	e3a03010 	mov	r3, #16
8002720c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80027210:	ebfff1a9 	bl	800238bc <readi>
80027214:	e1a03000 	mov	r3, r0
80027218:	e3530010 	cmp	r3, #16
8002721c:	0a000001 	beq	80027228 <isdirempty+0x44>
80027220:	e59f0044 	ldr	r0, [pc, #68]	@ 8002726c <isdirempty+0x88>
80027224:	ebffea32 	bl	80021af4 <panic>
80027228:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
8002722c:	e3530000 	cmp	r3, #0
80027230:	0a000001 	beq	8002723c <isdirempty+0x58>
80027234:	e3a03000 	mov	r3, #0
80027238:	ea000008 	b	80027260 <isdirempty+0x7c>
8002723c:	e51b3008 	ldr	r3, [fp, #-8]
80027240:	e2833010 	add	r3, r3, #16
80027244:	e50b3008 	str	r3, [fp, #-8]
80027248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002724c:	e5932018 	ldr	r2, [r3, #24]
80027250:	e51b3008 	ldr	r3, [fp, #-8]
80027254:	e1520003 	cmp	r2, r3
80027258:	8affffe8 	bhi	80027200 <isdirempty+0x1c>
8002725c:	e3a03001 	mov	r3, #1
80027260:	e1a00003 	mov	r0, r3
80027264:	e24bd004 	sub	sp, fp, #4
80027268:	e8bd8800 	pop	{fp, pc}
8002726c:	8002aadc 	.word	0x8002aadc

80027270 <sys_unlink>:
80027270:	e92d4800 	push	{fp, lr}
80027274:	e28db004 	add	fp, sp, #4
80027278:	e24dd030 	sub	sp, sp, #48	@ 0x30
8002727c:	e24b3030 	sub	r3, fp, #48	@ 0x30
80027280:	e1a01003 	mov	r1, r3
80027284:	e3a00000 	mov	r0, #0
80027288:	ebfffe25 	bl	80026b24 <argstr>
8002728c:	e1a03000 	mov	r3, r0
80027290:	e3530000 	cmp	r3, #0
80027294:	aa000001 	bge	800272a0 <sys_unlink+0x30>
80027298:	e3e03000 	mvn	r3, #0
8002729c:	ea00006d 	b	80027458 <sys_unlink+0x1e8>
800272a0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800272a4:	e24b202c 	sub	r2, fp, #44	@ 0x2c
800272a8:	e1a01002 	mov	r1, r2
800272ac:	e1a00003 	mov	r0, r3
800272b0:	ebfff3b5 	bl	8002418c <nameiparent>
800272b4:	e50b0008 	str	r0, [fp, #-8]
800272b8:	e51b3008 	ldr	r3, [fp, #-8]
800272bc:	e3530000 	cmp	r3, #0
800272c0:	1a000001 	bne	800272cc <sys_unlink+0x5c>
800272c4:	e3e03000 	mvn	r3, #0
800272c8:	ea000062 	b	80027458 <sys_unlink+0x1e8>
800272cc:	ebfff47a 	bl	800244bc <begin_trans>
800272d0:	e51b0008 	ldr	r0, [fp, #-8]
800272d4:	ebffefcc 	bl	8002320c <ilock>
800272d8:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800272dc:	e59f1180 	ldr	r1, [pc, #384]	@ 80027464 <sys_unlink+0x1f4>
800272e0:	e1a00003 	mov	r0, r3
800272e4:	ebfff276 	bl	80023cc4 <namecmp>
800272e8:	e1a03000 	mov	r3, r0
800272ec:	e3530000 	cmp	r3, #0
800272f0:	0a000051 	beq	8002743c <sys_unlink+0x1cc>
800272f4:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800272f8:	e59f1168 	ldr	r1, [pc, #360]	@ 80027468 <sys_unlink+0x1f8>
800272fc:	e1a00003 	mov	r0, r3
80027300:	ebfff26f 	bl	80023cc4 <namecmp>
80027304:	e1a03000 	mov	r3, r0
80027308:	e3530000 	cmp	r3, #0
8002730c:	0a00004a 	beq	8002743c <sys_unlink+0x1cc>
80027310:	e24b2034 	sub	r2, fp, #52	@ 0x34
80027314:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027318:	e1a01003 	mov	r1, r3
8002731c:	e51b0008 	ldr	r0, [fp, #-8]
80027320:	ebfff274 	bl	80023cf8 <dirlookup>
80027324:	e50b000c 	str	r0, [fp, #-12]
80027328:	e51b300c 	ldr	r3, [fp, #-12]
8002732c:	e3530000 	cmp	r3, #0
80027330:	0a000043 	beq	80027444 <sys_unlink+0x1d4>
80027334:	e51b000c 	ldr	r0, [fp, #-12]
80027338:	ebffefb3 	bl	8002320c <ilock>
8002733c:	e51b300c 	ldr	r3, [fp, #-12]
80027340:	e1d331f6 	ldrsh	r3, [r3, #22]
80027344:	e3530000 	cmp	r3, #0
80027348:	ca000001 	bgt	80027354 <sys_unlink+0xe4>
8002734c:	e59f0118 	ldr	r0, [pc, #280]	@ 8002746c <sys_unlink+0x1fc>
80027350:	ebffe9e7 	bl	80021af4 <panic>
80027354:	e51b300c 	ldr	r3, [fp, #-12]
80027358:	e1d331f0 	ldrsh	r3, [r3, #16]
8002735c:	e3530001 	cmp	r3, #1
80027360:	1a000007 	bne	80027384 <sys_unlink+0x114>
80027364:	e51b000c 	ldr	r0, [fp, #-12]
80027368:	ebffff9d 	bl	800271e4 <isdirempty>
8002736c:	e1a03000 	mov	r3, r0
80027370:	e3530000 	cmp	r3, #0
80027374:	1a000002 	bne	80027384 <sys_unlink+0x114>
80027378:	e51b000c 	ldr	r0, [fp, #-12]
8002737c:	ebfff063 	bl	80023510 <iunlockput>
80027380:	ea000030 	b	80027448 <sys_unlink+0x1d8>
80027384:	e24b301c 	sub	r3, fp, #28
80027388:	e3a02010 	mov	r2, #16
8002738c:	e3a01000 	mov	r1, #0
80027390:	e1a00003 	mov	r0, r3
80027394:	ebffe319 	bl	80020000 <memset>
80027398:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
8002739c:	e24b101c 	sub	r1, fp, #28
800273a0:	e3a03010 	mov	r3, #16
800273a4:	e51b0008 	ldr	r0, [fp, #-8]
800273a8:	ebfff1be 	bl	80023aa8 <writei>
800273ac:	e1a03000 	mov	r3, r0
800273b0:	e3530010 	cmp	r3, #16
800273b4:	0a000001 	beq	800273c0 <sys_unlink+0x150>
800273b8:	e59f00b0 	ldr	r0, [pc, #176]	@ 80027470 <sys_unlink+0x200>
800273bc:	ebffe9cc 	bl	80021af4 <panic>
800273c0:	e51b300c 	ldr	r3, [fp, #-12]
800273c4:	e1d331f0 	ldrsh	r3, [r3, #16]
800273c8:	e3530001 	cmp	r3, #1
800273cc:	1a000009 	bne	800273f8 <sys_unlink+0x188>
800273d0:	e51b3008 	ldr	r3, [fp, #-8]
800273d4:	e1d331f6 	ldrsh	r3, [r3, #22]
800273d8:	e6ff3073 	uxth	r3, r3
800273dc:	e2433001 	sub	r3, r3, #1
800273e0:	e6ff3073 	uxth	r3, r3
800273e4:	e6bf2073 	sxth	r2, r3
800273e8:	e51b3008 	ldr	r3, [fp, #-8]
800273ec:	e1c321b6 	strh	r2, [r3, #22]
800273f0:	e51b0008 	ldr	r0, [fp, #-8]
800273f4:	ebffeeea 	bl	80022fa4 <iupdate>
800273f8:	e51b0008 	ldr	r0, [fp, #-8]
800273fc:	ebfff043 	bl	80023510 <iunlockput>
80027400:	e51b300c 	ldr	r3, [fp, #-12]
80027404:	e1d331f6 	ldrsh	r3, [r3, #22]
80027408:	e6ff3073 	uxth	r3, r3
8002740c:	e2433001 	sub	r3, r3, #1
80027410:	e6ff3073 	uxth	r3, r3
80027414:	e6bf2073 	sxth	r2, r3
80027418:	e51b300c 	ldr	r3, [fp, #-12]
8002741c:	e1c321b6 	strh	r2, [r3, #22]
80027420:	e51b000c 	ldr	r0, [fp, #-12]
80027424:	ebffeede 	bl	80022fa4 <iupdate>
80027428:	e51b000c 	ldr	r0, [fp, #-12]
8002742c:	ebfff037 	bl	80023510 <iunlockput>
80027430:	ebfff435 	bl	8002450c <commit_trans>
80027434:	e3a03000 	mov	r3, #0
80027438:	ea000006 	b	80027458 <sys_unlink+0x1e8>
8002743c:	e1a00000 	nop			@ (mov r0, r0)
80027440:	ea000000 	b	80027448 <sys_unlink+0x1d8>
80027444:	e1a00000 	nop			@ (mov r0, r0)
80027448:	e51b0008 	ldr	r0, [fp, #-8]
8002744c:	ebfff02f 	bl	80023510 <iunlockput>
80027450:	ebfff42d 	bl	8002450c <commit_trans>
80027454:	e3e03000 	mvn	r3, #0
80027458:	e1a00003 	mov	r0, r3
8002745c:	e24bd004 	sub	sp, fp, #4
80027460:	e8bd8800 	pop	{fp, pc}
80027464:	8002aaf0 	.word	0x8002aaf0
80027468:	8002aaf4 	.word	0x8002aaf4
8002746c:	8002aaf8 	.word	0x8002aaf8
80027470:	8002ab0c 	.word	0x8002ab0c

80027474 <create>:
80027474:	e92d4800 	push	{fp, lr}
80027478:	e28db004 	add	fp, sp, #4
8002747c:	e24dd030 	sub	sp, sp, #48	@ 0x30
80027480:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80027484:	e1a00001 	mov	r0, r1
80027488:	e1a01002 	mov	r1, r2
8002748c:	e1a02003 	mov	r2, r3
80027490:	e1a03000 	mov	r3, r0
80027494:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80027498:	e1a03001 	mov	r3, r1
8002749c:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
800274a0:	e1a03002 	mov	r3, r2
800274a4:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
800274a8:	e24b3020 	sub	r3, fp, #32
800274ac:	e1a01003 	mov	r1, r3
800274b0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800274b4:	ebfff334 	bl	8002418c <nameiparent>
800274b8:	e50b0008 	str	r0, [fp, #-8]
800274bc:	e51b3008 	ldr	r3, [fp, #-8]
800274c0:	e3530000 	cmp	r3, #0
800274c4:	1a000001 	bne	800274d0 <create+0x5c>
800274c8:	e3a03000 	mov	r3, #0
800274cc:	ea000063 	b	80027660 <create+0x1ec>
800274d0:	e51b0008 	ldr	r0, [fp, #-8]
800274d4:	ebffef4c 	bl	8002320c <ilock>
800274d8:	e24b2010 	sub	r2, fp, #16
800274dc:	e24b3020 	sub	r3, fp, #32
800274e0:	e1a01003 	mov	r1, r3
800274e4:	e51b0008 	ldr	r0, [fp, #-8]
800274e8:	ebfff202 	bl	80023cf8 <dirlookup>
800274ec:	e50b000c 	str	r0, [fp, #-12]
800274f0:	e51b300c 	ldr	r3, [fp, #-12]
800274f4:	e3530000 	cmp	r3, #0
800274f8:	0a000010 	beq	80027540 <create+0xcc>
800274fc:	e51b0008 	ldr	r0, [fp, #-8]
80027500:	ebfff002 	bl	80023510 <iunlockput>
80027504:	e51b000c 	ldr	r0, [fp, #-12]
80027508:	ebffef3f 	bl	8002320c <ilock>
8002750c:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027510:	e3530002 	cmp	r3, #2
80027514:	1a000005 	bne	80027530 <create+0xbc>
80027518:	e51b300c 	ldr	r3, [fp, #-12]
8002751c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027520:	e3530002 	cmp	r3, #2
80027524:	1a000001 	bne	80027530 <create+0xbc>
80027528:	e51b300c 	ldr	r3, [fp, #-12]
8002752c:	ea00004b 	b	80027660 <create+0x1ec>
80027530:	e51b000c 	ldr	r0, [fp, #-12]
80027534:	ebffeff5 	bl	80023510 <iunlockput>
80027538:	e3a03000 	mov	r3, #0
8002753c:	ea000047 	b	80027660 <create+0x1ec>
80027540:	e51b3008 	ldr	r3, [fp, #-8]
80027544:	e5933000 	ldr	r3, [r3]
80027548:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
8002754c:	e1a01002 	mov	r1, r2
80027550:	e1a00003 	mov	r0, r3
80027554:	ebffee52 	bl	80022ea4 <ialloc>
80027558:	e50b000c 	str	r0, [fp, #-12]
8002755c:	e51b300c 	ldr	r3, [fp, #-12]
80027560:	e3530000 	cmp	r3, #0
80027564:	1a000001 	bne	80027570 <create+0xfc>
80027568:	e59f00fc 	ldr	r0, [pc, #252]	@ 8002766c <create+0x1f8>
8002756c:	ebffe960 	bl	80021af4 <panic>
80027570:	e51b000c 	ldr	r0, [fp, #-12]
80027574:	ebffef24 	bl	8002320c <ilock>
80027578:	e51b300c 	ldr	r3, [fp, #-12]
8002757c:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80027580:	e1c321b2 	strh	r2, [r3, #18]
80027584:	e51b300c 	ldr	r3, [fp, #-12]
80027588:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
8002758c:	e1c321b4 	strh	r2, [r3, #20]
80027590:	e51b300c 	ldr	r3, [fp, #-12]
80027594:	e3a02001 	mov	r2, #1
80027598:	e1c321b6 	strh	r2, [r3, #22]
8002759c:	e51b000c 	ldr	r0, [fp, #-12]
800275a0:	ebffee7f 	bl	80022fa4 <iupdate>
800275a4:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800275a8:	e3530001 	cmp	r3, #1
800275ac:	1a00001d 	bne	80027628 <create+0x1b4>
800275b0:	e51b3008 	ldr	r3, [fp, #-8]
800275b4:	e1d331f6 	ldrsh	r3, [r3, #22]
800275b8:	e6ff3073 	uxth	r3, r3
800275bc:	e2833001 	add	r3, r3, #1
800275c0:	e6ff3073 	uxth	r3, r3
800275c4:	e6bf2073 	sxth	r2, r3
800275c8:	e51b3008 	ldr	r3, [fp, #-8]
800275cc:	e1c321b6 	strh	r2, [r3, #22]
800275d0:	e51b0008 	ldr	r0, [fp, #-8]
800275d4:	ebffee72 	bl	80022fa4 <iupdate>
800275d8:	e51b300c 	ldr	r3, [fp, #-12]
800275dc:	e5933004 	ldr	r3, [r3, #4]
800275e0:	e1a02003 	mov	r2, r3
800275e4:	e59f1084 	ldr	r1, [pc, #132]	@ 80027670 <create+0x1fc>
800275e8:	e51b000c 	ldr	r0, [fp, #-12]
800275ec:	ebfff203 	bl	80023e00 <dirlink>
800275f0:	e1a03000 	mov	r3, r0
800275f4:	e3530000 	cmp	r3, #0
800275f8:	ba000008 	blt	80027620 <create+0x1ac>
800275fc:	e51b3008 	ldr	r3, [fp, #-8]
80027600:	e5933004 	ldr	r3, [r3, #4]
80027604:	e1a02003 	mov	r2, r3
80027608:	e59f1064 	ldr	r1, [pc, #100]	@ 80027674 <create+0x200>
8002760c:	e51b000c 	ldr	r0, [fp, #-12]
80027610:	ebfff1fa 	bl	80023e00 <dirlink>
80027614:	e1a03000 	mov	r3, r0
80027618:	e3530000 	cmp	r3, #0
8002761c:	aa000001 	bge	80027628 <create+0x1b4>
80027620:	e59f0050 	ldr	r0, [pc, #80]	@ 80027678 <create+0x204>
80027624:	ebffe932 	bl	80021af4 <panic>
80027628:	e51b300c 	ldr	r3, [fp, #-12]
8002762c:	e5932004 	ldr	r2, [r3, #4]
80027630:	e24b3020 	sub	r3, fp, #32
80027634:	e1a01003 	mov	r1, r3
80027638:	e51b0008 	ldr	r0, [fp, #-8]
8002763c:	ebfff1ef 	bl	80023e00 <dirlink>
80027640:	e1a03000 	mov	r3, r0
80027644:	e3530000 	cmp	r3, #0
80027648:	aa000001 	bge	80027654 <create+0x1e0>
8002764c:	e59f0028 	ldr	r0, [pc, #40]	@ 8002767c <create+0x208>
80027650:	ebffe927 	bl	80021af4 <panic>
80027654:	e51b0008 	ldr	r0, [fp, #-8]
80027658:	ebffefac 	bl	80023510 <iunlockput>
8002765c:	e51b300c 	ldr	r3, [fp, #-12]
80027660:	e1a00003 	mov	r0, r3
80027664:	e24bd004 	sub	sp, fp, #4
80027668:	e8bd8800 	pop	{fp, pc}
8002766c:	8002ab1c 	.word	0x8002ab1c
80027670:	8002aaf0 	.word	0x8002aaf0
80027674:	8002aaf4 	.word	0x8002aaf4
80027678:	8002ab2c 	.word	0x8002ab2c
8002767c:	8002ab38 	.word	0x8002ab38

80027680 <sys_open>:
80027680:	e92d4800 	push	{fp, lr}
80027684:	e28db004 	add	fp, sp, #4
80027688:	e24dd018 	sub	sp, sp, #24
8002768c:	e24b3014 	sub	r3, fp, #20
80027690:	e1a01003 	mov	r1, r3
80027694:	e3a00000 	mov	r0, #0
80027698:	ebfffd21 	bl	80026b24 <argstr>
8002769c:	e1a03000 	mov	r3, r0
800276a0:	e3530000 	cmp	r3, #0
800276a4:	ba000006 	blt	800276c4 <sys_open+0x44>
800276a8:	e24b3018 	sub	r3, fp, #24
800276ac:	e1a01003 	mov	r1, r3
800276b0:	e3a00001 	mov	r0, #1
800276b4:	ebfffcd6 	bl	80026a14 <argint>
800276b8:	e1a03000 	mov	r3, r0
800276bc:	e3530000 	cmp	r3, #0
800276c0:	aa000001 	bge	800276cc <sys_open+0x4c>
800276c4:	e3e03000 	mvn	r3, #0
800276c8:	ea00005d 	b	80027844 <sys_open+0x1c4>
800276cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800276d0:	e2033c02 	and	r3, r3, #512	@ 0x200
800276d4:	e3530000 	cmp	r3, #0
800276d8:	0a00000c 	beq	80027710 <sys_open+0x90>
800276dc:	ebfff376 	bl	800244bc <begin_trans>
800276e0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800276e4:	e3a03000 	mov	r3, #0
800276e8:	e3a02000 	mov	r2, #0
800276ec:	e3a01002 	mov	r1, #2
800276f0:	ebffff5f 	bl	80027474 <create>
800276f4:	e50b0008 	str	r0, [fp, #-8]
800276f8:	ebfff383 	bl	8002450c <commit_trans>
800276fc:	e51b3008 	ldr	r3, [fp, #-8]
80027700:	e3530000 	cmp	r3, #0
80027704:	1a000017 	bne	80027768 <sys_open+0xe8>
80027708:	e3e03000 	mvn	r3, #0
8002770c:	ea00004c 	b	80027844 <sys_open+0x1c4>
80027710:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027714:	e1a00003 	mov	r0, r3
80027718:	ebfff28e 	bl	80024158 <namei>
8002771c:	e50b0008 	str	r0, [fp, #-8]
80027720:	e51b3008 	ldr	r3, [fp, #-8]
80027724:	e3530000 	cmp	r3, #0
80027728:	1a000001 	bne	80027734 <sys_open+0xb4>
8002772c:	e3e03000 	mvn	r3, #0
80027730:	ea000043 	b	80027844 <sys_open+0x1c4>
80027734:	e51b0008 	ldr	r0, [fp, #-8]
80027738:	ebffeeb3 	bl	8002320c <ilock>
8002773c:	e51b3008 	ldr	r3, [fp, #-8]
80027740:	e1d331f0 	ldrsh	r3, [r3, #16]
80027744:	e3530001 	cmp	r3, #1
80027748:	1a000006 	bne	80027768 <sys_open+0xe8>
8002774c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027750:	e3530000 	cmp	r3, #0
80027754:	0a000003 	beq	80027768 <sys_open+0xe8>
80027758:	e51b0008 	ldr	r0, [fp, #-8]
8002775c:	ebffef6b 	bl	80023510 <iunlockput>
80027760:	e3e03000 	mvn	r3, #0
80027764:	ea000036 	b	80027844 <sys_open+0x1c4>
80027768:	ebffeba0 	bl	800225f0 <filealloc>
8002776c:	e50b000c 	str	r0, [fp, #-12]
80027770:	e51b300c 	ldr	r3, [fp, #-12]
80027774:	e3530000 	cmp	r3, #0
80027778:	0a000005 	beq	80027794 <sys_open+0x114>
8002777c:	e51b000c 	ldr	r0, [fp, #-12]
80027780:	ebfffd69 	bl	80026d2c <fdalloc>
80027784:	e50b0010 	str	r0, [fp, #-16]
80027788:	e51b3010 	ldr	r3, [fp, #-16]
8002778c:	e3530000 	cmp	r3, #0
80027790:	aa000008 	bge	800277b8 <sys_open+0x138>
80027794:	e51b300c 	ldr	r3, [fp, #-12]
80027798:	e3530000 	cmp	r3, #0
8002779c:	0a000001 	beq	800277a8 <sys_open+0x128>
800277a0:	e51b000c 	ldr	r0, [fp, #-12]
800277a4:	ebffebcd 	bl	800226e0 <fileclose>
800277a8:	e51b0008 	ldr	r0, [fp, #-8]
800277ac:	ebffef57 	bl	80023510 <iunlockput>
800277b0:	e3e03000 	mvn	r3, #0
800277b4:	ea000022 	b	80027844 <sys_open+0x1c4>
800277b8:	e51b0008 	ldr	r0, [fp, #-8]
800277bc:	ebffeef6 	bl	8002339c <iunlock>
800277c0:	e51b300c 	ldr	r3, [fp, #-12]
800277c4:	e3a02002 	mov	r2, #2
800277c8:	e5c32000 	strb	r2, [r3]
800277cc:	e51b300c 	ldr	r3, [fp, #-12]
800277d0:	e51b2008 	ldr	r2, [fp, #-8]
800277d4:	e5832010 	str	r2, [r3, #16]
800277d8:	e51b300c 	ldr	r3, [fp, #-12]
800277dc:	e3a02000 	mov	r2, #0
800277e0:	e5832014 	str	r2, [r3, #20]
800277e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800277e8:	e2033001 	and	r3, r3, #1
800277ec:	e3530000 	cmp	r3, #0
800277f0:	03a03001 	moveq	r3, #1
800277f4:	13a03000 	movne	r3, #0
800277f8:	e6ef3073 	uxtb	r3, r3
800277fc:	e1a02003 	mov	r2, r3
80027800:	e51b300c 	ldr	r3, [fp, #-12]
80027804:	e5c32008 	strb	r2, [r3, #8]
80027808:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002780c:	e2033001 	and	r3, r3, #1
80027810:	e3530000 	cmp	r3, #0
80027814:	1a000003 	bne	80027828 <sys_open+0x1a8>
80027818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002781c:	e2033002 	and	r3, r3, #2
80027820:	e3530000 	cmp	r3, #0
80027824:	0a000001 	beq	80027830 <sys_open+0x1b0>
80027828:	e3a03001 	mov	r3, #1
8002782c:	ea000000 	b	80027834 <sys_open+0x1b4>
80027830:	e3a03000 	mov	r3, #0
80027834:	e6ef2073 	uxtb	r2, r3
80027838:	e51b300c 	ldr	r3, [fp, #-12]
8002783c:	e5c32009 	strb	r2, [r3, #9]
80027840:	e51b3010 	ldr	r3, [fp, #-16]
80027844:	e1a00003 	mov	r0, r3
80027848:	e24bd004 	sub	sp, fp, #4
8002784c:	e8bd8800 	pop	{fp, pc}

80027850 <sys_mkdir>:
80027850:	e92d4800 	push	{fp, lr}
80027854:	e28db004 	add	fp, sp, #4
80027858:	e24dd008 	sub	sp, sp, #8
8002785c:	ebfff316 	bl	800244bc <begin_trans>
80027860:	e24b300c 	sub	r3, fp, #12
80027864:	e1a01003 	mov	r1, r3
80027868:	e3a00000 	mov	r0, #0
8002786c:	ebfffcac 	bl	80026b24 <argstr>
80027870:	e1a03000 	mov	r3, r0
80027874:	e3530000 	cmp	r3, #0
80027878:	ba000008 	blt	800278a0 <sys_mkdir+0x50>
8002787c:	e51b000c 	ldr	r0, [fp, #-12]
80027880:	e3a03000 	mov	r3, #0
80027884:	e3a02000 	mov	r2, #0
80027888:	e3a01001 	mov	r1, #1
8002788c:	ebfffef8 	bl	80027474 <create>
80027890:	e50b0008 	str	r0, [fp, #-8]
80027894:	e51b3008 	ldr	r3, [fp, #-8]
80027898:	e3530000 	cmp	r3, #0
8002789c:	1a000002 	bne	800278ac <sys_mkdir+0x5c>
800278a0:	ebfff319 	bl	8002450c <commit_trans>
800278a4:	e3e03000 	mvn	r3, #0
800278a8:	ea000003 	b	800278bc <sys_mkdir+0x6c>
800278ac:	e51b0008 	ldr	r0, [fp, #-8]
800278b0:	ebffef16 	bl	80023510 <iunlockput>
800278b4:	ebfff314 	bl	8002450c <commit_trans>
800278b8:	e3a03000 	mov	r3, #0
800278bc:	e1a00003 	mov	r0, r3
800278c0:	e24bd004 	sub	sp, fp, #4
800278c4:	e8bd8800 	pop	{fp, pc}

800278c8 <sys_mknod>:
800278c8:	e92d4800 	push	{fp, lr}
800278cc:	e28db004 	add	fp, sp, #4
800278d0:	e24dd018 	sub	sp, sp, #24
800278d4:	ebfff2f8 	bl	800244bc <begin_trans>
800278d8:	e24b3010 	sub	r3, fp, #16
800278dc:	e1a01003 	mov	r1, r3
800278e0:	e3a00000 	mov	r0, #0
800278e4:	ebfffc8e 	bl	80026b24 <argstr>
800278e8:	e50b0008 	str	r0, [fp, #-8]
800278ec:	e51b3008 	ldr	r3, [fp, #-8]
800278f0:	e3530000 	cmp	r3, #0
800278f4:	ba000018 	blt	8002795c <sys_mknod+0x94>
800278f8:	e24b3014 	sub	r3, fp, #20
800278fc:	e1a01003 	mov	r1, r3
80027900:	e3a00001 	mov	r0, #1
80027904:	ebfffc42 	bl	80026a14 <argint>
80027908:	e1a03000 	mov	r3, r0
8002790c:	e3530000 	cmp	r3, #0
80027910:	ba000011 	blt	8002795c <sys_mknod+0x94>
80027914:	e24b3018 	sub	r3, fp, #24
80027918:	e1a01003 	mov	r1, r3
8002791c:	e3a00002 	mov	r0, #2
80027920:	ebfffc3b 	bl	80026a14 <argint>
80027924:	e1a03000 	mov	r3, r0
80027928:	e3530000 	cmp	r3, #0
8002792c:	ba00000a 	blt	8002795c <sys_mknod+0x94>
80027930:	e51b0010 	ldr	r0, [fp, #-16]
80027934:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027938:	e6bf2073 	sxth	r2, r3
8002793c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027940:	e6bf3073 	sxth	r3, r3
80027944:	e3a01003 	mov	r1, #3
80027948:	ebfffec9 	bl	80027474 <create>
8002794c:	e50b000c 	str	r0, [fp, #-12]
80027950:	e51b300c 	ldr	r3, [fp, #-12]
80027954:	e3530000 	cmp	r3, #0
80027958:	1a000002 	bne	80027968 <sys_mknod+0xa0>
8002795c:	ebfff2ea 	bl	8002450c <commit_trans>
80027960:	e3e03000 	mvn	r3, #0
80027964:	ea000003 	b	80027978 <sys_mknod+0xb0>
80027968:	e51b000c 	ldr	r0, [fp, #-12]
8002796c:	ebffeee7 	bl	80023510 <iunlockput>
80027970:	ebfff2e5 	bl	8002450c <commit_trans>
80027974:	e3a03000 	mov	r3, #0
80027978:	e1a00003 	mov	r0, r3
8002797c:	e24bd004 	sub	sp, fp, #4
80027980:	e8bd8800 	pop	{fp, pc}

80027984 <sys_chdir>:
80027984:	e92d4800 	push	{fp, lr}
80027988:	e28db004 	add	fp, sp, #4
8002798c:	e24dd008 	sub	sp, sp, #8
80027990:	e24b300c 	sub	r3, fp, #12
80027994:	e1a01003 	mov	r1, r3
80027998:	e3a00000 	mov	r0, #0
8002799c:	ebfffc60 	bl	80026b24 <argstr>
800279a0:	e1a03000 	mov	r3, r0
800279a4:	e3530000 	cmp	r3, #0
800279a8:	ba000006 	blt	800279c8 <sys_chdir+0x44>
800279ac:	e51b300c 	ldr	r3, [fp, #-12]
800279b0:	e1a00003 	mov	r0, r3
800279b4:	ebfff1e7 	bl	80024158 <namei>
800279b8:	e50b0008 	str	r0, [fp, #-8]
800279bc:	e51b3008 	ldr	r3, [fp, #-8]
800279c0:	e3530000 	cmp	r3, #0
800279c4:	1a000001 	bne	800279d0 <sys_chdir+0x4c>
800279c8:	e3e03000 	mvn	r3, #0
800279cc:	ea000015 	b	80027a28 <sys_chdir+0xa4>
800279d0:	e51b0008 	ldr	r0, [fp, #-8]
800279d4:	ebffee0c 	bl	8002320c <ilock>
800279d8:	e51b3008 	ldr	r3, [fp, #-8]
800279dc:	e1d331f0 	ldrsh	r3, [r3, #16]
800279e0:	e3530001 	cmp	r3, #1
800279e4:	0a000003 	beq	800279f8 <sys_chdir+0x74>
800279e8:	e51b0008 	ldr	r0, [fp, #-8]
800279ec:	ebffeec7 	bl	80023510 <iunlockput>
800279f0:	e3e03000 	mvn	r3, #0
800279f4:	ea00000b 	b	80027a28 <sys_chdir+0xa4>
800279f8:	e51b0008 	ldr	r0, [fp, #-8]
800279fc:	ebffee66 	bl	8002339c <iunlock>
80027a00:	e59f302c 	ldr	r3, [pc, #44]	@ 80027a34 <sys_chdir+0xb0>
80027a04:	e5933000 	ldr	r3, [r3]
80027a08:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80027a0c:	e1a00003 	mov	r0, r3
80027a10:	ebffee83 	bl	80023424 <iput>
80027a14:	e59f3018 	ldr	r3, [pc, #24]	@ 80027a34 <sys_chdir+0xb0>
80027a18:	e5933000 	ldr	r3, [r3]
80027a1c:	e51b2008 	ldr	r2, [fp, #-8]
80027a20:	e5832068 	str	r2, [r3, #104]	@ 0x68
80027a24:	e3a03000 	mov	r3, #0
80027a28:	e1a00003 	mov	r0, r3
80027a2c:	e24bd004 	sub	sp, fp, #4
80027a30:	e8bd8800 	pop	{fp, pc}
80027a34:	800b0f94 	.word	0x800b0f94

80027a38 <sys_exec>:
80027a38:	e92d4800 	push	{fp, lr}
80027a3c:	e28db004 	add	fp, sp, #4
80027a40:	e24dd090 	sub	sp, sp, #144	@ 0x90
80027a44:	e24b300c 	sub	r3, fp, #12
80027a48:	e1a01003 	mov	r1, r3
80027a4c:	e3a00000 	mov	r0, #0
80027a50:	ebfffc33 	bl	80026b24 <argstr>
80027a54:	e1a03000 	mov	r3, r0
80027a58:	e3530000 	cmp	r3, #0
80027a5c:	ba000006 	blt	80027a7c <sys_exec+0x44>
80027a60:	e24b3090 	sub	r3, fp, #144	@ 0x90
80027a64:	e1a01003 	mov	r1, r3
80027a68:	e3a00001 	mov	r0, #1
80027a6c:	ebfffbe8 	bl	80026a14 <argint>
80027a70:	e1a03000 	mov	r3, r0
80027a74:	e3530000 	cmp	r3, #0
80027a78:	aa000001 	bge	80027a84 <sys_exec+0x4c>
80027a7c:	e3e03000 	mvn	r3, #0
80027a80:	ea00003a 	b	80027b70 <sys_exec+0x138>
80027a84:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027a88:	e3a02080 	mov	r2, #128	@ 0x80
80027a8c:	e3a01000 	mov	r1, #0
80027a90:	e1a00003 	mov	r0, r3
80027a94:	ebffe159 	bl	80020000 <memset>
80027a98:	e3a03000 	mov	r3, #0
80027a9c:	e50b3008 	str	r3, [fp, #-8]
80027aa0:	e51b3008 	ldr	r3, [fp, #-8]
80027aa4:	e353001f 	cmp	r3, #31
80027aa8:	9a000001 	bls	80027ab4 <sys_exec+0x7c>
80027aac:	e3e03000 	mvn	r3, #0
80027ab0:	ea00002e 	b	80027b70 <sys_exec+0x138>
80027ab4:	e51b3008 	ldr	r3, [fp, #-8]
80027ab8:	e1a03103 	lsl	r3, r3, #2
80027abc:	e1a02003 	mov	r2, r3
80027ac0:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80027ac4:	e0823003 	add	r3, r2, r3
80027ac8:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027acc:	e1a01002 	mov	r1, r2
80027ad0:	e1a00003 	mov	r0, r3
80027ad4:	ebfffb82 	bl	800268e4 <fetchint>
80027ad8:	e1a03000 	mov	r3, r0
80027adc:	e3530000 	cmp	r3, #0
80027ae0:	aa000001 	bge	80027aec <sys_exec+0xb4>
80027ae4:	e3e03000 	mvn	r3, #0
80027ae8:	ea000020 	b	80027b70 <sys_exec+0x138>
80027aec:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80027af0:	e3530000 	cmp	r3, #0
80027af4:	1a00000d 	bne	80027b30 <sys_exec+0xf8>
80027af8:	e51b3008 	ldr	r3, [fp, #-8]
80027afc:	e1a03103 	lsl	r3, r3, #2
80027b00:	e2433004 	sub	r3, r3, #4
80027b04:	e083300b 	add	r3, r3, fp
80027b08:	e3a02000 	mov	r2, #0
80027b0c:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027b10:	e1a00000 	nop			@ (mov r0, r0)
80027b14:	e51b300c 	ldr	r3, [fp, #-12]
80027b18:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027b1c:	e1a01002 	mov	r1, r2
80027b20:	e1a00003 	mov	r0, r3
80027b24:	ebffe95a 	bl	80022094 <exec>
80027b28:	e1a03000 	mov	r3, r0
80027b2c:	ea00000f 	b	80027b70 <sys_exec+0x138>
80027b30:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027b34:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027b38:	e51b3008 	ldr	r3, [fp, #-8]
80027b3c:	e1a03103 	lsl	r3, r3, #2
80027b40:	e0823003 	add	r3, r2, r3
80027b44:	e1a01003 	mov	r1, r3
80027b48:	ebfffb83 	bl	8002695c <fetchstr>
80027b4c:	e1a03000 	mov	r3, r0
80027b50:	e3530000 	cmp	r3, #0
80027b54:	aa000001 	bge	80027b60 <sys_exec+0x128>
80027b58:	e3e03000 	mvn	r3, #0
80027b5c:	ea000003 	b	80027b70 <sys_exec+0x138>
80027b60:	e51b3008 	ldr	r3, [fp, #-8]
80027b64:	e2833001 	add	r3, r3, #1
80027b68:	e50b3008 	str	r3, [fp, #-8]
80027b6c:	eaffffcb 	b	80027aa0 <sys_exec+0x68>
80027b70:	e1a00003 	mov	r0, r3
80027b74:	e24bd004 	sub	sp, fp, #4
80027b78:	e8bd8800 	pop	{fp, pc}

80027b7c <sys_pipe>:
80027b7c:	e92d4800 	push	{fp, lr}
80027b80:	e28db004 	add	fp, sp, #4
80027b84:	e24dd018 	sub	sp, sp, #24
80027b88:	e24b3010 	sub	r3, fp, #16
80027b8c:	e3a02008 	mov	r2, #8
80027b90:	e1a01003 	mov	r1, r3
80027b94:	e3a00000 	mov	r0, #0
80027b98:	ebfffbb8 	bl	80026a80 <argptr>
80027b9c:	e1a03000 	mov	r3, r0
80027ba0:	e3530000 	cmp	r3, #0
80027ba4:	aa000001 	bge	80027bb0 <sys_pipe+0x34>
80027ba8:	e3e03000 	mvn	r3, #0
80027bac:	ea000032 	b	80027c7c <sys_pipe+0x100>
80027bb0:	e24b2018 	sub	r2, fp, #24
80027bb4:	e24b3014 	sub	r3, fp, #20
80027bb8:	e1a01002 	mov	r1, r2
80027bbc:	e1a00003 	mov	r0, r3
80027bc0:	ebfff364 	bl	80024958 <pipealloc>
80027bc4:	e1a03000 	mov	r3, r0
80027bc8:	e3530000 	cmp	r3, #0
80027bcc:	aa000001 	bge	80027bd8 <sys_pipe+0x5c>
80027bd0:	e3e03000 	mvn	r3, #0
80027bd4:	ea000028 	b	80027c7c <sys_pipe+0x100>
80027bd8:	e3e03000 	mvn	r3, #0
80027bdc:	e50b3008 	str	r3, [fp, #-8]
80027be0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027be4:	e1a00003 	mov	r0, r3
80027be8:	ebfffc4f 	bl	80026d2c <fdalloc>
80027bec:	e50b0008 	str	r0, [fp, #-8]
80027bf0:	e51b3008 	ldr	r3, [fp, #-8]
80027bf4:	e3530000 	cmp	r3, #0
80027bf8:	ba000006 	blt	80027c18 <sys_pipe+0x9c>
80027bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027c00:	e1a00003 	mov	r0, r3
80027c04:	ebfffc48 	bl	80026d2c <fdalloc>
80027c08:	e50b000c 	str	r0, [fp, #-12]
80027c0c:	e51b300c 	ldr	r3, [fp, #-12]
80027c10:	e3530000 	cmp	r3, #0
80027c14:	aa000010 	bge	80027c5c <sys_pipe+0xe0>
80027c18:	e51b3008 	ldr	r3, [fp, #-8]
80027c1c:	e3530000 	cmp	r3, #0
80027c20:	ba000005 	blt	80027c3c <sys_pipe+0xc0>
80027c24:	e59f305c 	ldr	r3, [pc, #92]	@ 80027c88 <sys_pipe+0x10c>
80027c28:	e5933000 	ldr	r3, [r3]
80027c2c:	e51b2008 	ldr	r2, [fp, #-8]
80027c30:	e282200a 	add	r2, r2, #10
80027c34:	e3a01000 	mov	r1, #0
80027c38:	e7831102 	str	r1, [r3, r2, lsl #2]
80027c3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027c40:	e1a00003 	mov	r0, r3
80027c44:	ebffeaa5 	bl	800226e0 <fileclose>
80027c48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027c4c:	e1a00003 	mov	r0, r3
80027c50:	ebffeaa2 	bl	800226e0 <fileclose>
80027c54:	e3e03000 	mvn	r3, #0
80027c58:	ea000007 	b	80027c7c <sys_pipe+0x100>
80027c5c:	e51b3010 	ldr	r3, [fp, #-16]
80027c60:	e51b2008 	ldr	r2, [fp, #-8]
80027c64:	e5832000 	str	r2, [r3]
80027c68:	e51b3010 	ldr	r3, [fp, #-16]
80027c6c:	e2833004 	add	r3, r3, #4
80027c70:	e51b200c 	ldr	r2, [fp, #-12]
80027c74:	e5832000 	str	r2, [r3]
80027c78:	e3a03000 	mov	r3, #0
80027c7c:	e1a00003 	mov	r0, r3
80027c80:	e24bd004 	sub	sp, fp, #4
80027c84:	e8bd8800 	pop	{fp, pc}
80027c88:	800b0f94 	.word	0x800b0f94

80027c8c <sys_print_pt>:
80027c8c:	e92d4800 	push	{fp, lr}
80027c90:	e28db004 	add	fp, sp, #4
80027c94:	e24dd028 	sub	sp, sp, #40	@ 0x28
80027c98:	e59f3210 	ldr	r3, [pc, #528]	@ 80027eb0 <sys_print_pt+0x224>
80027c9c:	e5933000 	ldr	r3, [r3]
80027ca0:	e50b300c 	str	r3, [fp, #-12]
80027ca4:	e51b300c 	ldr	r3, [fp, #-12]
80027ca8:	e5933004 	ldr	r3, [r3, #4]
80027cac:	e50b3010 	str	r3, [fp, #-16]
80027cb0:	e51b300c 	ldr	r3, [fp, #-12]
80027cb4:	e5933010 	ldr	r3, [r3, #16]
80027cb8:	e1a01003 	mov	r1, r3
80027cbc:	e59f01f0 	ldr	r0, [pc, #496]	@ 80027eb4 <sys_print_pt+0x228>
80027cc0:	ebffe6f3 	bl	80021894 <cprintf>
80027cc4:	e59f01ec 	ldr	r0, [pc, #492]	@ 80027eb8 <sys_print_pt+0x22c>
80027cc8:	ebffe6f1 	bl	80021894 <cprintf>
80027ccc:	e3a03000 	mov	r3, #0
80027cd0:	e50b3008 	str	r3, [fp, #-8]
80027cd4:	ea00002c 	b	80027d8c <sys_print_pt+0x100>
80027cd8:	e51b3008 	ldr	r3, [fp, #-8]
80027cdc:	e1a03603 	lsl	r3, r3, #12
80027ce0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80027ce4:	e51b300c 	ldr	r3, [fp, #-12]
80027ce8:	e5933000 	ldr	r3, [r3]
80027cec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80027cf0:	e1520003 	cmp	r2, r3
80027cf4:	2a000028 	bcs	80027d9c <sys_print_pt+0x110>
80027cf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027cfc:	e3a02000 	mov	r2, #0
80027d00:	e1a01003 	mov	r1, r3
80027d04:	e51b0010 	ldr	r0, [fp, #-16]
80027d08:	eb00057f 	bl	8002930c <walkpgdir>
80027d0c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80027d10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027d14:	e3530000 	cmp	r3, #0
80027d18:	0a000015 	beq	80027d74 <sys_print_pt+0xe8>
80027d1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027d20:	e5933000 	ldr	r3, [r3]
80027d24:	e2033003 	and	r3, r3, #3
80027d28:	e3530000 	cmp	r3, #0
80027d2c:	0a000010 	beq	80027d74 <sys_print_pt+0xe8>
80027d30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027d34:	e5931000 	ldr	r1, [r3]
80027d38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027d3c:	e5933000 	ldr	r3, [r3]
80027d40:	e3c32eff 	bic	r2, r3, #4080	@ 0xff0
80027d44:	e3c2200f 	bic	r2, r2, #15
80027d48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027d4c:	e5933000 	ldr	r3, [r3]
80027d50:	e1a03a03 	lsl	r3, r3, #20
80027d54:	e1a03a23 	lsr	r3, r3, #20
80027d58:	e58d3000 	str	r3, [sp]
80027d5c:	e1a03002 	mov	r3, r2
80027d60:	e1a02001 	mov	r2, r1
80027d64:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80027d68:	e59f014c 	ldr	r0, [pc, #332]	@ 80027ebc <sys_print_pt+0x230>
80027d6c:	ebffe6c8 	bl	80021894 <cprintf>
80027d70:	ea000002 	b	80027d80 <sys_print_pt+0xf4>
80027d74:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80027d78:	e59f0140 	ldr	r0, [pc, #320]	@ 80027ec0 <sys_print_pt+0x234>
80027d7c:	ebffe6c4 	bl	80021894 <cprintf>
80027d80:	e51b3008 	ldr	r3, [fp, #-8]
80027d84:	e2833001 	add	r3, r3, #1
80027d88:	e50b3008 	str	r3, [fp, #-8]
80027d8c:	e51b3008 	ldr	r3, [fp, #-8]
80027d90:	e3530009 	cmp	r3, #9
80027d94:	daffffcf 	ble	80027cd8 <sys_print_pt+0x4c>
80027d98:	ea000000 	b	80027da0 <sys_print_pt+0x114>
80027d9c:	e1a00000 	nop			@ (mov r0, r0)
80027da0:	e59f011c 	ldr	r0, [pc, #284]	@ 80027ec4 <sys_print_pt+0x238>
80027da4:	ebffe6ba 	bl	80021894 <cprintf>
80027da8:	e51b300c 	ldr	r3, [fp, #-12]
80027dac:	e5933000 	ldr	r3, [r3]
80027db0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80027db4:	e3a0300a 	mov	r3, #10
80027db8:	e50b3008 	str	r3, [fp, #-8]
80027dbc:	ea000034 	b	80027e94 <sys_print_pt+0x208>
80027dc0:	e51b3008 	ldr	r3, [fp, #-8]
80027dc4:	e1a03603 	lsl	r3, r3, #12
80027dc8:	e1a02003 	mov	r2, r3
80027dcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027dd0:	e0433002 	sub	r3, r3, r2
80027dd4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80027dd8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80027ddc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027de0:	e1520003 	cmp	r2, r3
80027de4:	2a000026 	bcs	80027e84 <sys_print_pt+0x1f8>
80027de8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027dec:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80027df0:	e3c3300f 	bic	r3, r3, #15
80027df4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80027df8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027dfc:	e3a02000 	mov	r2, #0
80027e00:	e1a01003 	mov	r1, r3
80027e04:	e51b0010 	ldr	r0, [fp, #-16]
80027e08:	eb00053f 	bl	8002930c <walkpgdir>
80027e0c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80027e10:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e14:	e3530000 	cmp	r3, #0
80027e18:	0a000015 	beq	80027e74 <sys_print_pt+0x1e8>
80027e1c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e20:	e5933000 	ldr	r3, [r3]
80027e24:	e2033003 	and	r3, r3, #3
80027e28:	e3530000 	cmp	r3, #0
80027e2c:	0a000010 	beq	80027e74 <sys_print_pt+0x1e8>
80027e30:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e34:	e5931000 	ldr	r1, [r3]
80027e38:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e3c:	e5933000 	ldr	r3, [r3]
80027e40:	e3c32eff 	bic	r2, r3, #4080	@ 0xff0
80027e44:	e3c2200f 	bic	r2, r2, #15
80027e48:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e4c:	e5933000 	ldr	r3, [r3]
80027e50:	e1a03a03 	lsl	r3, r3, #20
80027e54:	e1a03a23 	lsr	r3, r3, #20
80027e58:	e58d3000 	str	r3, [sp]
80027e5c:	e1a03002 	mov	r3, r2
80027e60:	e1a02001 	mov	r2, r1
80027e64:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80027e68:	e59f004c 	ldr	r0, [pc, #76]	@ 80027ebc <sys_print_pt+0x230>
80027e6c:	ebffe688 	bl	80021894 <cprintf>
80027e70:	ea000004 	b	80027e88 <sys_print_pt+0x1fc>
80027e74:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80027e78:	e59f0040 	ldr	r0, [pc, #64]	@ 80027ec0 <sys_print_pt+0x234>
80027e7c:	ebffe684 	bl	80021894 <cprintf>
80027e80:	ea000000 	b	80027e88 <sys_print_pt+0x1fc>
80027e84:	e1a00000 	nop			@ (mov r0, r0)
80027e88:	e51b3008 	ldr	r3, [fp, #-8]
80027e8c:	e2433001 	sub	r3, r3, #1
80027e90:	e50b3008 	str	r3, [fp, #-8]
80027e94:	e51b3008 	ldr	r3, [fp, #-8]
80027e98:	e3530000 	cmp	r3, #0
80027e9c:	caffffc7 	bgt	80027dc0 <sys_print_pt+0x134>
80027ea0:	e3a03000 	mov	r3, #0
80027ea4:	e1a00003 	mov	r0, r3
80027ea8:	e24bd004 	sub	sp, fp, #4
80027eac:	e8bd8800 	pop	{fp, pc}
80027eb0:	800b0f94 	.word	0x800b0f94
80027eb4:	8002ab48 	.word	0x8002ab48
80027eb8:	8002ab64 	.word	0x8002ab64
80027ebc:	8002ab7c 	.word	0x8002ab7c
80027ec0:	8002aba0 	.word	0x8002aba0
80027ec4:	8002abb8 	.word	0x8002abb8

80027ec8 <sys_fork>:
80027ec8:	e92d4800 	push	{fp, lr}
80027ecc:	e28db004 	add	fp, sp, #4
80027ed0:	ebfff59f 	bl	80025554 <fork>
80027ed4:	e1a03000 	mov	r3, r0
80027ed8:	e1a00003 	mov	r0, r3
80027edc:	e8bd8800 	pop	{fp, pc}

80027ee0 <sys_exit>:
80027ee0:	e92d4800 	push	{fp, lr}
80027ee4:	e28db004 	add	fp, sp, #4
80027ee8:	ebfff60d 	bl	80025724 <exit>
80027eec:	e3a03000 	mov	r3, #0
80027ef0:	e1a00003 	mov	r0, r3
80027ef4:	e8bd8800 	pop	{fp, pc}

80027ef8 <sys_wait>:
80027ef8:	e92d4800 	push	{fp, lr}
80027efc:	e28db004 	add	fp, sp, #4
80027f00:	ebfff669 	bl	800258ac <wait>
80027f04:	e1a03000 	mov	r3, r0
80027f08:	e1a00003 	mov	r0, r3
80027f0c:	e8bd8800 	pop	{fp, pc}

80027f10 <sys_kill>:
80027f10:	e92d4800 	push	{fp, lr}
80027f14:	e28db004 	add	fp, sp, #4
80027f18:	e24dd008 	sub	sp, sp, #8
80027f1c:	e24b3008 	sub	r3, fp, #8
80027f20:	e1a01003 	mov	r1, r3
80027f24:	e3a00000 	mov	r0, #0
80027f28:	ebfffab9 	bl	80026a14 <argint>
80027f2c:	e1a03000 	mov	r3, r0
80027f30:	e3530000 	cmp	r3, #0
80027f34:	aa000001 	bge	80027f40 <sys_kill+0x30>
80027f38:	e3e03000 	mvn	r3, #0
80027f3c:	ea000003 	b	80027f50 <sys_kill+0x40>
80027f40:	e51b3008 	ldr	r3, [fp, #-8]
80027f44:	e1a00003 	mov	r0, r3
80027f48:	ebfff7e0 	bl	80025ed0 <kill>
80027f4c:	e1a03000 	mov	r3, r0
80027f50:	e1a00003 	mov	r0, r3
80027f54:	e24bd004 	sub	sp, fp, #4
80027f58:	e8bd8800 	pop	{fp, pc}

80027f5c <sys_getpid>:
80027f5c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027f60:	e28db000 	add	fp, sp, #0
80027f64:	e59f3014 	ldr	r3, [pc, #20]	@ 80027f80 <sys_getpid+0x24>
80027f68:	e5933000 	ldr	r3, [r3]
80027f6c:	e5933010 	ldr	r3, [r3, #16]
80027f70:	e1a00003 	mov	r0, r3
80027f74:	e28bd000 	add	sp, fp, #0
80027f78:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027f7c:	e12fff1e 	bx	lr
80027f80:	800b0f94 	.word	0x800b0f94

80027f84 <sys_sbrk>:
80027f84:	e92d4800 	push	{fp, lr}
80027f88:	e28db004 	add	fp, sp, #4
80027f8c:	e24dd008 	sub	sp, sp, #8
80027f90:	e24b300c 	sub	r3, fp, #12
80027f94:	e1a01003 	mov	r1, r3
80027f98:	e3a00000 	mov	r0, #0
80027f9c:	ebfffa9c 	bl	80026a14 <argint>
80027fa0:	e1a03000 	mov	r3, r0
80027fa4:	e3530000 	cmp	r3, #0
80027fa8:	aa000001 	bge	80027fb4 <sys_sbrk+0x30>
80027fac:	e3e03000 	mvn	r3, #0
80027fb0:	ea00000c 	b	80027fe8 <sys_sbrk+0x64>
80027fb4:	e59f3038 	ldr	r3, [pc, #56]	@ 80027ff4 <sys_sbrk+0x70>
80027fb8:	e5933000 	ldr	r3, [r3]
80027fbc:	e5933000 	ldr	r3, [r3]
80027fc0:	e50b3008 	str	r3, [fp, #-8]
80027fc4:	e51b300c 	ldr	r3, [fp, #-12]
80027fc8:	e1a00003 	mov	r0, r3
80027fcc:	ebfff525 	bl	80025468 <growproc>
80027fd0:	e1a03000 	mov	r3, r0
80027fd4:	e3530000 	cmp	r3, #0
80027fd8:	aa000001 	bge	80027fe4 <sys_sbrk+0x60>
80027fdc:	e3e03000 	mvn	r3, #0
80027fe0:	ea000000 	b	80027fe8 <sys_sbrk+0x64>
80027fe4:	e51b3008 	ldr	r3, [fp, #-8]
80027fe8:	e1a00003 	mov	r0, r3
80027fec:	e24bd004 	sub	sp, fp, #4
80027ff0:	e8bd8800 	pop	{fp, pc}
80027ff4:	800b0f94 	.word	0x800b0f94

80027ff8 <sys_sleep>:
80027ff8:	e92d4800 	push	{fp, lr}
80027ffc:	e28db004 	add	fp, sp, #4
80028000:	e24dd008 	sub	sp, sp, #8
80028004:	e24b300c 	sub	r3, fp, #12
80028008:	e1a01003 	mov	r1, r3
8002800c:	e3a00000 	mov	r0, #0
80028010:	ebfffa7f 	bl	80026a14 <argint>
80028014:	e1a03000 	mov	r3, r0
80028018:	e3530000 	cmp	r3, #0
8002801c:	aa000001 	bge	80028028 <sys_sleep+0x30>
80028020:	e3e03000 	mvn	r3, #0
80028024:	ea00002a 	b	800280d4 <sys_sleep+0xdc>
80028028:	e59f00b0 	ldr	r0, [pc, #176]	@ 800280e0 <sys_sleep+0xe8>
8002802c:	ebfffa07 	bl	80026850 <acquire>
80028030:	e59f30ac 	ldr	r3, [pc, #172]	@ 800280e4 <sys_sleep+0xec>
80028034:	e5933000 	ldr	r3, [r3]
80028038:	e50b3008 	str	r3, [fp, #-8]
8002803c:	e59f00a4 	ldr	r0, [pc, #164]	@ 800280e8 <sys_sleep+0xf0>
80028040:	ebfffa02 	bl	80026850 <acquire>
80028044:	e59f30a0 	ldr	r3, [pc, #160]	@ 800280ec <sys_sleep+0xf4>
80028048:	e5933000 	ldr	r3, [r3]
8002804c:	e51b200c 	ldr	r2, [fp, #-12]
80028050:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80028054:	e51b300c 	ldr	r3, [fp, #-12]
80028058:	e1a02003 	mov	r2, r3
8002805c:	e51b3008 	ldr	r3, [fp, #-8]
80028060:	e0822003 	add	r2, r2, r3
80028064:	e59f3080 	ldr	r3, [pc, #128]	@ 800280ec <sys_sleep+0xf4>
80028068:	e5933000 	ldr	r3, [r3]
8002806c:	e5832090 	str	r2, [r3, #144]	@ 0x90
80028070:	e59f0070 	ldr	r0, [pc, #112]	@ 800280e8 <sys_sleep+0xf0>
80028074:	ebfffa00 	bl	8002687c <release>
80028078:	ea00000b 	b	800280ac <sys_sleep+0xb4>
8002807c:	e59f3068 	ldr	r3, [pc, #104]	@ 800280ec <sys_sleep+0xf4>
80028080:	e5933000 	ldr	r3, [r3]
80028084:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80028088:	e3530000 	cmp	r3, #0
8002808c:	0a000003 	beq	800280a0 <sys_sleep+0xa8>
80028090:	e59f0048 	ldr	r0, [pc, #72]	@ 800280e0 <sys_sleep+0xe8>
80028094:	ebfff9f8 	bl	8002687c <release>
80028098:	e3e03000 	mvn	r3, #0
8002809c:	ea00000c 	b	800280d4 <sys_sleep+0xdc>
800280a0:	e59f1038 	ldr	r1, [pc, #56]	@ 800280e0 <sys_sleep+0xe8>
800280a4:	e59f0038 	ldr	r0, [pc, #56]	@ 800280e4 <sys_sleep+0xec>
800280a8:	ebfff706 	bl	80025cc8 <sleep>
800280ac:	e59f3030 	ldr	r3, [pc, #48]	@ 800280e4 <sys_sleep+0xec>
800280b0:	e5932000 	ldr	r2, [r3]
800280b4:	e51b3008 	ldr	r3, [fp, #-8]
800280b8:	e0423003 	sub	r3, r2, r3
800280bc:	e51b200c 	ldr	r2, [fp, #-12]
800280c0:	e1530002 	cmp	r3, r2
800280c4:	3affffec 	bcc	8002807c <sys_sleep+0x84>
800280c8:	e59f0010 	ldr	r0, [pc, #16]	@ 800280e0 <sys_sleep+0xe8>
800280cc:	ebfff9ea 	bl	8002687c <release>
800280d0:	e3a03000 	mov	r3, #0
800280d4:	e1a00003 	mov	r0, r3
800280d8:	e24bd004 	sub	sp, fp, #4
800280dc:	e8bd8800 	pop	{fp, pc}
800280e0:	800b1098 	.word	0x800b1098
800280e4:	800b10cc 	.word	0x800b10cc
800280e8:	800ae65c 	.word	0x800ae65c
800280ec:	800b0f94 	.word	0x800b0f94

800280f0 <sys_proclist>:
800280f0:	e92d4800 	push	{fp, lr}
800280f4:	e28db004 	add	fp, sp, #4
800280f8:	e24dd008 	sub	sp, sp, #8
800280fc:	e24b3008 	sub	r3, fp, #8
80028100:	e1a01003 	mov	r1, r3
80028104:	e3a00000 	mov	r0, #0
80028108:	ebfffa41 	bl	80026a14 <argint>
8002810c:	e1a03000 	mov	r3, r0
80028110:	e3530000 	cmp	r3, #0
80028114:	ba000009 	blt	80028140 <sys_proclist+0x50>
80028118:	e51b3008 	ldr	r3, [fp, #-8]
8002811c:	e1a03283 	lsl	r3, r3, #5
80028120:	e1a02003 	mov	r2, r3
80028124:	e24b300c 	sub	r3, fp, #12
80028128:	e1a01003 	mov	r1, r3
8002812c:	e3a00001 	mov	r0, #1
80028130:	ebfffa52 	bl	80026a80 <argptr>
80028134:	e1a03000 	mov	r3, r0
80028138:	e3530000 	cmp	r3, #0
8002813c:	aa000001 	bge	80028148 <sys_proclist+0x58>
80028140:	e3e03000 	mvn	r3, #0
80028144:	ea000005 	b	80028160 <sys_proclist+0x70>
80028148:	e51b3008 	ldr	r3, [fp, #-8]
8002814c:	e51b200c 	ldr	r2, [fp, #-12]
80028150:	e1a01002 	mov	r1, r2
80028154:	e1a00003 	mov	r0, r3
80028158:	ebfff3d8 	bl	800250c0 <proclist>
8002815c:	e1a03000 	mov	r3, r0
80028160:	e1a00003 	mov	r0, r3
80028164:	e24bd004 	sub	sp, fp, #4
80028168:	e8bd8800 	pop	{fp, pc}

8002816c <sys_uptime>:
8002816c:	e92d4800 	push	{fp, lr}
80028170:	e28db004 	add	fp, sp, #4
80028174:	e24dd008 	sub	sp, sp, #8
80028178:	e59f0024 	ldr	r0, [pc, #36]	@ 800281a4 <sys_uptime+0x38>
8002817c:	ebfff9b3 	bl	80026850 <acquire>
80028180:	e59f3020 	ldr	r3, [pc, #32]	@ 800281a8 <sys_uptime+0x3c>
80028184:	e5933000 	ldr	r3, [r3]
80028188:	e50b3008 	str	r3, [fp, #-8]
8002818c:	e59f0010 	ldr	r0, [pc, #16]	@ 800281a4 <sys_uptime+0x38>
80028190:	ebfff9b9 	bl	8002687c <release>
80028194:	e51b3008 	ldr	r3, [fp, #-8]
80028198:	e1a00003 	mov	r0, r3
8002819c:	e24bd004 	sub	sp, fp, #4
800281a0:	e8bd8800 	pop	{fp, pc}
800281a4:	800b1098 	.word	0x800b1098
800281a8:	800b10cc 	.word	0x800b10cc

800281ac <sys_thread_create>:
800281ac:	e92d4800 	push	{fp, lr}
800281b0:	e28db004 	add	fp, sp, #4
800281b4:	e24dd010 	sub	sp, sp, #16
800281b8:	e24b3008 	sub	r3, fp, #8
800281bc:	e1a01003 	mov	r1, r3
800281c0:	e3a00000 	mov	r0, #0
800281c4:	ebfffa12 	bl	80026a14 <argint>
800281c8:	e1a03000 	mov	r3, r0
800281cc:	e3530000 	cmp	r3, #0
800281d0:	aa000001 	bge	800281dc <sys_thread_create+0x30>
800281d4:	e3e03000 	mvn	r3, #0
800281d8:	ea000019 	b	80028244 <sys_thread_create+0x98>
800281dc:	e24b300c 	sub	r3, fp, #12
800281e0:	e1a01003 	mov	r1, r3
800281e4:	e3a00001 	mov	r0, #1
800281e8:	ebfffa09 	bl	80026a14 <argint>
800281ec:	e1a03000 	mov	r3, r0
800281f0:	e3530000 	cmp	r3, #0
800281f4:	aa000001 	bge	80028200 <sys_thread_create+0x54>
800281f8:	e3e03000 	mvn	r3, #0
800281fc:	ea000010 	b	80028244 <sys_thread_create+0x98>
80028200:	e24b3010 	sub	r3, fp, #16
80028204:	e1a01003 	mov	r1, r3
80028208:	e3a00002 	mov	r0, #2
8002820c:	ebfffa00 	bl	80026a14 <argint>
80028210:	e1a03000 	mov	r3, r0
80028214:	e3530000 	cmp	r3, #0
80028218:	aa000001 	bge	80028224 <sys_thread_create+0x78>
8002821c:	e3e03000 	mvn	r3, #0
80028220:	ea000007 	b	80028244 <sys_thread_create+0x98>
80028224:	e51b3008 	ldr	r3, [fp, #-8]
80028228:	e1a00003 	mov	r0, r3
8002822c:	e51b300c 	ldr	r3, [fp, #-12]
80028230:	e1a01003 	mov	r1, r3
80028234:	e51b3010 	ldr	r3, [fp, #-16]
80028238:	e1a02003 	mov	r2, r3
8002823c:	ebfff80a 	bl	8002626c <thread_create>
80028240:	e1a03000 	mov	r3, r0
80028244:	e1a00003 	mov	r0, r3
80028248:	e24bd004 	sub	sp, fp, #4
8002824c:	e8bd8800 	pop	{fp, pc}

80028250 <sys_thread_exit>:
80028250:	e92d4800 	push	{fp, lr}
80028254:	e28db004 	add	fp, sp, #4
80028258:	ebfff8bd 	bl	80026554 <thread_exit>
8002825c:	e3a03000 	mov	r3, #0
80028260:	e1a00003 	mov	r0, r3
80028264:	e8bd8800 	pop	{fp, pc}

80028268 <sys_thread_join>:
80028268:	e92d4800 	push	{fp, lr}
8002826c:	e28db004 	add	fp, sp, #4
80028270:	e24dd008 	sub	sp, sp, #8
80028274:	e24b3008 	sub	r3, fp, #8
80028278:	e1a01003 	mov	r1, r3
8002827c:	e3a00000 	mov	r0, #0
80028280:	ebfff9e3 	bl	80026a14 <argint>
80028284:	e1a03000 	mov	r3, r0
80028288:	e3530000 	cmp	r3, #0
8002828c:	aa000001 	bge	80028298 <sys_thread_join+0x30>
80028290:	e3e03000 	mvn	r3, #0
80028294:	ea000003 	b	800282a8 <sys_thread_join+0x40>
80028298:	e51b3008 	ldr	r3, [fp, #-8]
8002829c:	e1a00003 	mov	r0, r3
800282a0:	ebfff8ed 	bl	8002665c <thread_join>
800282a4:	e1a03000 	mov	r3, r0
800282a8:	e1a00003 	mov	r0, r3
800282ac:	e24bd004 	sub	sp, fp, #4
800282b0:	e8bd8800 	pop	{fp, pc}

800282b4 <sys_barrier_init>:
800282b4:	e92d4800 	push	{fp, lr}
800282b8:	e28db004 	add	fp, sp, #4
800282bc:	e24dd008 	sub	sp, sp, #8
800282c0:	e24b3008 	sub	r3, fp, #8
800282c4:	e1a01003 	mov	r1, r3
800282c8:	e3a00000 	mov	r0, #0
800282cc:	ebfff9d0 	bl	80026a14 <argint>
800282d0:	e1a03000 	mov	r3, r0
800282d4:	e3530000 	cmp	r3, #0
800282d8:	aa000001 	bge	800282e4 <sys_barrier_init+0x30>
800282dc:	e3e03000 	mvn	r3, #0
800282e0:	ea000003 	b	800282f4 <sys_barrier_init+0x40>
800282e4:	e51b3008 	ldr	r3, [fp, #-8]
800282e8:	e1a00003 	mov	r0, r3
800282ec:	eb00068c 	bl	80029d24 <barrier_init>
800282f0:	e1a03000 	mov	r3, r0
800282f4:	e1a00003 	mov	r0, r3
800282f8:	e24bd004 	sub	sp, fp, #4
800282fc:	e8bd8800 	pop	{fp, pc}

80028300 <sys_barrier_check>:
80028300:	e92d4800 	push	{fp, lr}
80028304:	e28db004 	add	fp, sp, #4
80028308:	eb00069e 	bl	80029d88 <barrier_check>
8002830c:	e1a03000 	mov	r3, r0
80028310:	e1a00003 	mov	r0, r3
80028314:	e8bd8800 	pop	{fp, pc}

80028318 <sys_waitpid>:
80028318:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002831c:	e28db000 	add	fp, sp, #0
80028320:	e3e03000 	mvn	r3, #0
80028324:	e1a00003 	mov	r0, r3
80028328:	e28bd000 	add	sp, fp, #0
8002832c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028330:	e12fff1e 	bx	lr

80028334 <sys_getChannel>:
80028334:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028338:	e28db000 	add	fp, sp, #0
8002833c:	e59f301c 	ldr	r3, [pc, #28]	@ 80028360 <sys_getChannel+0x2c>
80028340:	e5933000 	ldr	r3, [r3]
80028344:	e2832001 	add	r2, r3, #1
80028348:	e59f1010 	ldr	r1, [pc, #16]	@ 80028360 <sys_getChannel+0x2c>
8002834c:	e5812000 	str	r2, [r1]
80028350:	e1a00003 	mov	r0, r3
80028354:	e28bd000 	add	sp, fp, #0
80028358:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002835c:	e12fff1e 	bx	lr
80028360:	8002b0dc 	.word	0x8002b0dc

80028364 <sys_sleepChan>:
80028364:	e92d4800 	push	{fp, lr}
80028368:	e28db004 	add	fp, sp, #4
8002836c:	e24dd008 	sub	sp, sp, #8
80028370:	e24b3008 	sub	r3, fp, #8
80028374:	e1a01003 	mov	r1, r3
80028378:	e3a00000 	mov	r0, #0
8002837c:	ebfff9a4 	bl	80026a14 <argint>
80028380:	e1a03000 	mov	r3, r0
80028384:	e3530000 	cmp	r3, #0
80028388:	aa000001 	bge	80028394 <sys_sleepChan+0x30>
8002838c:	e3e03000 	mvn	r3, #0
80028390:	ea000008 	b	800283b8 <sys_sleepChan+0x54>
80028394:	e59f0028 	ldr	r0, [pc, #40]	@ 800283c4 <sys_sleepChan+0x60>
80028398:	ebfff92c 	bl	80026850 <acquire>
8002839c:	e51b3008 	ldr	r3, [fp, #-8]
800283a0:	e59f101c 	ldr	r1, [pc, #28]	@ 800283c4 <sys_sleepChan+0x60>
800283a4:	e1a00003 	mov	r0, r3
800283a8:	ebfff646 	bl	80025cc8 <sleep>
800283ac:	e59f0010 	ldr	r0, [pc, #16]	@ 800283c4 <sys_sleepChan+0x60>
800283b0:	ebfff931 	bl	8002687c <release>
800283b4:	e3a03000 	mov	r3, #0
800283b8:	e1a00003 	mov	r0, r3
800283bc:	e24bd004 	sub	sp, fp, #4
800283c0:	e8bd8800 	pop	{fp, pc}
800283c4:	800ae65c 	.word	0x800ae65c

800283c8 <sys_sigChan>:
800283c8:	e92d4800 	push	{fp, lr}
800283cc:	e28db004 	add	fp, sp, #4
800283d0:	e24dd008 	sub	sp, sp, #8
800283d4:	e24b3008 	sub	r3, fp, #8
800283d8:	e1a01003 	mov	r1, r3
800283dc:	e3a00000 	mov	r0, #0
800283e0:	ebfff98b 	bl	80026a14 <argint>
800283e4:	e1a03000 	mov	r3, r0
800283e8:	e3530000 	cmp	r3, #0
800283ec:	aa000001 	bge	800283f8 <sys_sigChan+0x30>
800283f0:	e3e03000 	mvn	r3, #0
800283f4:	ea000003 	b	80028408 <sys_sigChan+0x40>
800283f8:	e51b3008 	ldr	r3, [fp, #-8]
800283fc:	e1a00003 	mov	r0, r3
80028400:	ebfff6a4 	bl	80025e98 <wakeup>
80028404:	e3a03000 	mov	r3, #0
80028408:	e1a00003 	mov	r0, r3
8002840c:	e24bd004 	sub	sp, fp, #4
80028410:	e8bd8800 	pop	{fp, pc}

80028414 <sys_sigOneChan>:
80028414:	e92d4800 	push	{fp, lr}
80028418:	e28db004 	add	fp, sp, #4
8002841c:	e24dd008 	sub	sp, sp, #8
80028420:	e24b3008 	sub	r3, fp, #8
80028424:	e1a01003 	mov	r1, r3
80028428:	e3a00000 	mov	r0, #0
8002842c:	ebfff978 	bl	80026a14 <argint>
80028430:	e1a03000 	mov	r3, r0
80028434:	e3530000 	cmp	r3, #0
80028438:	aa000001 	bge	80028444 <sys_sigOneChan+0x30>
8002843c:	e3e03000 	mvn	r3, #0
80028440:	ea000003 	b	80028454 <sys_sigOneChan+0x40>
80028444:	e51b3008 	ldr	r3, [fp, #-8]
80028448:	e1a00003 	mov	r0, r3
8002844c:	ebfff691 	bl	80025e98 <wakeup>
80028450:	e3a03000 	mov	r3, #0
80028454:	e1a00003 	mov	r0, r3
80028458:	e24bd004 	sub	sp, fp, #4
8002845c:	e8bd8800 	pop	{fp, pc}

80028460 <sys_settickets>:
80028460:	e92d4800 	push	{fp, lr}
80028464:	e28db004 	add	fp, sp, #4
80028468:	e24dd010 	sub	sp, sp, #16
8002846c:	e24b300c 	sub	r3, fp, #12
80028470:	e1a01003 	mov	r1, r3
80028474:	e3a00000 	mov	r0, #0
80028478:	ebfff965 	bl	80026a14 <argint>
8002847c:	e1a03000 	mov	r3, r0
80028480:	e3530000 	cmp	r3, #0
80028484:	ba000006 	blt	800284a4 <sys_settickets+0x44>
80028488:	e24b3010 	sub	r3, fp, #16
8002848c:	e1a01003 	mov	r1, r3
80028490:	e3a00001 	mov	r0, #1
80028494:	ebfff95e 	bl	80026a14 <argint>
80028498:	e1a03000 	mov	r3, r0
8002849c:	e3530000 	cmp	r3, #0
800284a0:	aa000001 	bge	800284ac <sys_settickets+0x4c>
800284a4:	e3e03000 	mvn	r3, #0
800284a8:	ea00001f 	b	8002852c <sys_settickets+0xcc>
800284ac:	e51b3010 	ldr	r3, [fp, #-16]
800284b0:	e3530000 	cmp	r3, #0
800284b4:	ca000001 	bgt	800284c0 <sys_settickets+0x60>
800284b8:	e3e03000 	mvn	r3, #0
800284bc:	ea00001a 	b	8002852c <sys_settickets+0xcc>
800284c0:	e59f0070 	ldr	r0, [pc, #112]	@ 80028538 <sys_settickets+0xd8>
800284c4:	ebfff8e1 	bl	80026850 <acquire>
800284c8:	e59f306c 	ldr	r3, [pc, #108]	@ 8002853c <sys_settickets+0xdc>
800284cc:	e50b3008 	str	r3, [fp, #-8]
800284d0:	ea00000e 	b	80028510 <sys_settickets+0xb0>
800284d4:	e51b3008 	ldr	r3, [fp, #-8]
800284d8:	e5932010 	ldr	r2, [r3, #16]
800284dc:	e51b300c 	ldr	r3, [fp, #-12]
800284e0:	e1520003 	cmp	r2, r3
800284e4:	1a000006 	bne	80028504 <sys_settickets+0xa4>
800284e8:	e51b2010 	ldr	r2, [fp, #-16]
800284ec:	e51b3008 	ldr	r3, [fp, #-8]
800284f0:	e5832080 	str	r2, [r3, #128]	@ 0x80
800284f4:	e59f003c 	ldr	r0, [pc, #60]	@ 80028538 <sys_settickets+0xd8>
800284f8:	ebfff8df 	bl	8002687c <release>
800284fc:	e3a03000 	mov	r3, #0
80028500:	ea000009 	b	8002852c <sys_settickets+0xcc>
80028504:	e51b3008 	ldr	r3, [fp, #-8]
80028508:	e28330a4 	add	r3, r3, #164	@ 0xa4
8002850c:	e50b3008 	str	r3, [fp, #-8]
80028510:	e51b3008 	ldr	r3, [fp, #-8]
80028514:	e59f2024 	ldr	r2, [pc, #36]	@ 80028540 <sys_settickets+0xe0>
80028518:	e1530002 	cmp	r3, r2
8002851c:	3affffec 	bcc	800284d4 <sys_settickets+0x74>
80028520:	e59f0010 	ldr	r0, [pc, #16]	@ 80028538 <sys_settickets+0xd8>
80028524:	ebfff8d4 	bl	8002687c <release>
80028528:	e3e03000 	mvn	r3, #0
8002852c:	e1a00003 	mov	r0, r3
80028530:	e24bd004 	sub	sp, fp, #4
80028534:	e8bd8800 	pop	{fp, pc}
80028538:	800ae65c 	.word	0x800ae65c
8002853c:	800ae690 	.word	0x800ae690
80028540:	800b0f90 	.word	0x800b0f90

80028544 <sys_srand>:
80028544:	e92d4800 	push	{fp, lr}
80028548:	e28db004 	add	fp, sp, #4
8002854c:	e24dd008 	sub	sp, sp, #8
80028550:	e24b3008 	sub	r3, fp, #8
80028554:	e1a01003 	mov	r1, r3
80028558:	e3a00000 	mov	r0, #0
8002855c:	ebfff92c 	bl	80026a14 <argint>
80028560:	e1a03000 	mov	r3, r0
80028564:	e3530000 	cmp	r3, #0
80028568:	aa000001 	bge	80028574 <sys_srand+0x30>
8002856c:	e3e03000 	mvn	r3, #0
80028570:	ea000004 	b	80028588 <sys_srand+0x44>
80028574:	e51b3008 	ldr	r3, [fp, #-8]
80028578:	e1a02003 	mov	r2, r3
8002857c:	e59f3010 	ldr	r3, [pc, #16]	@ 80028594 <sys_srand+0x50>
80028580:	e5832000 	str	r2, [r3]
80028584:	e3a03000 	mov	r3, #0
80028588:	e1a00003 	mov	r0, r3
8002858c:	e24bd004 	sub	sp, fp, #4
80028590:	e8bd8800 	pop	{fp, pc}
80028594:	800ae658 	.word	0x800ae658

80028598 <sys_getpinfo>:
80028598:	e92d4800 	push	{fp, lr}
8002859c:	e28db004 	add	fp, sp, #4
800285a0:	e24dd010 	sub	sp, sp, #16
800285a4:	e24b3010 	sub	r3, fp, #16
800285a8:	e3a02c05 	mov	r2, #1280	@ 0x500
800285ac:	e1a01003 	mov	r1, r3
800285b0:	e3a00000 	mov	r0, #0
800285b4:	ebfff931 	bl	80026a80 <argptr>
800285b8:	e1a03000 	mov	r3, r0
800285bc:	e3530000 	cmp	r3, #0
800285c0:	aa000001 	bge	800285cc <sys_getpinfo+0x34>
800285c4:	e3e03000 	mvn	r3, #0
800285c8:	ea000035 	b	800286a4 <sys_getpinfo+0x10c>
800285cc:	e59f00dc 	ldr	r0, [pc, #220]	@ 800286b0 <sys_getpinfo+0x118>
800285d0:	ebfff89e 	bl	80026850 <acquire>
800285d4:	e3a03000 	mov	r3, #0
800285d8:	e50b300c 	str	r3, [fp, #-12]
800285dc:	e59f30d0 	ldr	r3, [pc, #208]	@ 800286b4 <sys_getpinfo+0x11c>
800285e0:	e50b3008 	str	r3, [fp, #-8]
800285e4:	ea000027 	b	80028688 <sys_getpinfo+0xf0>
800285e8:	e51b3008 	ldr	r3, [fp, #-8]
800285ec:	e5d3300c 	ldrb	r3, [r3, #12]
800285f0:	e3530000 	cmp	r3, #0
800285f4:	13a03001 	movne	r3, #1
800285f8:	03a03000 	moveq	r3, #0
800285fc:	e6ef2073 	uxtb	r2, r3
80028600:	e51b3010 	ldr	r3, [fp, #-16]
80028604:	e1a01002 	mov	r1, r2
80028608:	e51b200c 	ldr	r2, [fp, #-12]
8002860c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028610:	e51b3010 	ldr	r3, [fp, #-16]
80028614:	e51b2008 	ldr	r2, [fp, #-8]
80028618:	e5921010 	ldr	r1, [r2, #16]
8002861c:	e51b200c 	ldr	r2, [fp, #-12]
80028620:	e2822040 	add	r2, r2, #64	@ 0x40
80028624:	e7831102 	str	r1, [r3, r2, lsl #2]
80028628:	e51b3010 	ldr	r3, [fp, #-16]
8002862c:	e51b2008 	ldr	r2, [fp, #-8]
80028630:	e5921080 	ldr	r1, [r2, #128]	@ 0x80
80028634:	e51b200c 	ldr	r2, [fp, #-12]
80028638:	e2822080 	add	r2, r2, #128	@ 0x80
8002863c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028640:	e51b3010 	ldr	r3, [fp, #-16]
80028644:	e51b2008 	ldr	r2, [fp, #-8]
80028648:	e5921088 	ldr	r1, [r2, #136]	@ 0x88
8002864c:	e51b200c 	ldr	r2, [fp, #-12]
80028650:	e28220c0 	add	r2, r2, #192	@ 0xc0
80028654:	e7831102 	str	r1, [r3, r2, lsl #2]
80028658:	e51b3010 	ldr	r3, [fp, #-16]
8002865c:	e51b2008 	ldr	r2, [fp, #-8]
80028660:	e5921084 	ldr	r1, [r2, #132]	@ 0x84
80028664:	e51b200c 	ldr	r2, [fp, #-12]
80028668:	e2822c01 	add	r2, r2, #256	@ 0x100
8002866c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028670:	e51b3008 	ldr	r3, [fp, #-8]
80028674:	e28330a4 	add	r3, r3, #164	@ 0xa4
80028678:	e50b3008 	str	r3, [fp, #-8]
8002867c:	e51b300c 	ldr	r3, [fp, #-12]
80028680:	e2833001 	add	r3, r3, #1
80028684:	e50b300c 	str	r3, [fp, #-12]
80028688:	e51b3008 	ldr	r3, [fp, #-8]
8002868c:	e59f2024 	ldr	r2, [pc, #36]	@ 800286b8 <sys_getpinfo+0x120>
80028690:	e1530002 	cmp	r3, r2
80028694:	3affffd3 	bcc	800285e8 <sys_getpinfo+0x50>
80028698:	e59f0010 	ldr	r0, [pc, #16]	@ 800286b0 <sys_getpinfo+0x118>
8002869c:	ebfff876 	bl	8002687c <release>
800286a0:	e3a03000 	mov	r3, #0
800286a4:	e1a00003 	mov	r0, r3
800286a8:	e24bd004 	sub	sp, fp, #4
800286ac:	e8bd8800 	pop	{fp, pc}
800286b0:	800ae65c 	.word	0x800ae65c
800286b4:	800ae690 	.word	0x800ae690
800286b8:	800b0f90 	.word	0x800b0f90

800286bc <sys_pg_pte>:
800286bc:	e92d4800 	push	{fp, lr}
800286c0:	e28db004 	add	fp, sp, #4
800286c4:	e24dd018 	sub	sp, sp, #24
800286c8:	e24b3014 	sub	r3, fp, #20
800286cc:	e1a01003 	mov	r1, r3
800286d0:	e3a00000 	mov	r0, #0
800286d4:	ebfff8ce 	bl	80026a14 <argint>
800286d8:	e1a03000 	mov	r3, r0
800286dc:	e3530000 	cmp	r3, #0
800286e0:	aa000001 	bge	800286ec <sys_pg_pte+0x30>
800286e4:	e3e03000 	mvn	r3, #0
800286e8:	ea00004a 	b	80028818 <sys_pg_pte+0x15c>
800286ec:	e59f3130 	ldr	r3, [pc, #304]	@ 80028824 <sys_pg_pte+0x168>
800286f0:	e5933000 	ldr	r3, [r3]
800286f4:	e50b3008 	str	r3, [fp, #-8]
800286f8:	e51b3008 	ldr	r3, [fp, #-8]
800286fc:	e5932000 	ldr	r2, [r3]
80028700:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028704:	e1520003 	cmp	r2, r3
80028708:	8a000001 	bhi	80028714 <sys_pg_pte+0x58>
8002870c:	e3a03000 	mov	r3, #0
80028710:	ea000040 	b	80028818 <sys_pg_pte+0x15c>
80028714:	e51b3008 	ldr	r3, [fp, #-8]
80028718:	e5933004 	ldr	r3, [r3, #4]
8002871c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028720:	e1a01002 	mov	r1, r2
80028724:	e3a02000 	mov	r2, #0
80028728:	e1a00003 	mov	r0, r3
8002872c:	eb0002f6 	bl	8002930c <walkpgdir>
80028730:	e50b000c 	str	r0, [fp, #-12]
80028734:	e51b300c 	ldr	r3, [fp, #-12]
80028738:	e3530000 	cmp	r3, #0
8002873c:	0a000004 	beq	80028754 <sys_pg_pte+0x98>
80028740:	e51b300c 	ldr	r3, [fp, #-12]
80028744:	e5933000 	ldr	r3, [r3]
80028748:	e2033003 	and	r3, r3, #3
8002874c:	e3530000 	cmp	r3, #0
80028750:	1a000021 	bne	800287dc <sys_pg_pte+0x120>
80028754:	ebffe3b5 	bl	80021630 <alloc_page>
80028758:	e50b0010 	str	r0, [fp, #-16]
8002875c:	e51b3010 	ldr	r3, [fp, #-16]
80028760:	e3530000 	cmp	r3, #0
80028764:	1a000003 	bne	80028778 <sys_pg_pte+0xbc>
80028768:	e59f00b8 	ldr	r0, [pc, #184]	@ 80028828 <sys_pg_pte+0x16c>
8002876c:	ebffe448 	bl	80021894 <cprintf>
80028770:	e3a03000 	mov	r3, #0
80028774:	ea000027 	b	80028818 <sys_pg_pte+0x15c>
80028778:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002877c:	e3a01000 	mov	r1, #0
80028780:	e51b0010 	ldr	r0, [fp, #-16]
80028784:	ebffde1d 	bl	80020000 <memset>
80028788:	e51b3008 	ldr	r3, [fp, #-8]
8002878c:	e5930004 	ldr	r0, [r3, #4]
80028790:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028794:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028798:	e3c3300f 	bic	r3, r3, #15
8002879c:	e1a01003 	mov	r1, r3
800287a0:	e51b3010 	ldr	r3, [fp, #-16]
800287a4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800287a8:	e3a02003 	mov	r2, #3
800287ac:	e58d2000 	str	r2, [sp]
800287b0:	e3a02a01 	mov	r2, #4096	@ 0x1000
800287b4:	eb000309 	bl	800293e0 <mappages>
800287b8:	e1a03000 	mov	r3, r0
800287bc:	e3530000 	cmp	r3, #0
800287c0:	aa000005 	bge	800287dc <sys_pg_pte+0x120>
800287c4:	e51b0010 	ldr	r0, [fp, #-16]
800287c8:	ebffe38e 	bl	80021608 <free_page>
800287cc:	e59f0058 	ldr	r0, [pc, #88]	@ 8002882c <sys_pg_pte+0x170>
800287d0:	ebffe42f 	bl	80021894 <cprintf>
800287d4:	e3a03000 	mov	r3, #0
800287d8:	ea00000e 	b	80028818 <sys_pg_pte+0x15c>
800287dc:	e51b3008 	ldr	r3, [fp, #-8]
800287e0:	e5933004 	ldr	r3, [r3, #4]
800287e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800287e8:	e1a01002 	mov	r1, r2
800287ec:	e3a02000 	mov	r2, #0
800287f0:	e1a00003 	mov	r0, r3
800287f4:	eb0002c4 	bl	8002930c <walkpgdir>
800287f8:	e50b000c 	str	r0, [fp, #-12]
800287fc:	e51b300c 	ldr	r3, [fp, #-12]
80028800:	e3530000 	cmp	r3, #0
80028804:	1a000001 	bne	80028810 <sys_pg_pte+0x154>
80028808:	e3a03000 	mov	r3, #0
8002880c:	ea000001 	b	80028818 <sys_pg_pte+0x15c>
80028810:	e51b300c 	ldr	r3, [fp, #-12]
80028814:	e5933000 	ldr	r3, [r3]
80028818:	e1a00003 	mov	r0, r3
8002881c:	e24bd004 	sub	sp, fp, #4
80028820:	e8bd8800 	pop	{fp, pc}
80028824:	800b0f94 	.word	0x800b0f94
80028828:	8002abd0 	.word	0x8002abd0
8002882c:	8002abec 	.word	0x8002abec

80028830 <sys_pg_pa>:
80028830:	e92d4800 	push	{fp, lr}
80028834:	e28db004 	add	fp, sp, #4
80028838:	e24dd008 	sub	sp, sp, #8
8002883c:	e24b3008 	sub	r3, fp, #8
80028840:	e1a01003 	mov	r1, r3
80028844:	e3a00000 	mov	r0, #0
80028848:	ebfff871 	bl	80026a14 <argint>
8002884c:	e1a03000 	mov	r3, r0
80028850:	e3530000 	cmp	r3, #0
80028854:	aa000001 	bge	80028860 <sys_pg_pa+0x30>
80028858:	e3e03000 	mvn	r3, #0
8002885c:	ea000002 	b	8002886c <sys_pg_pa+0x3c>
80028860:	e51b3008 	ldr	r3, [fp, #-8]
80028864:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028868:	e3c3300f 	bic	r3, r3, #15
8002886c:	e1a00003 	mov	r0, r3
80028870:	e24bd004 	sub	sp, fp, #4
80028874:	e8bd8800 	pop	{fp, pc}

80028878 <sys_pg_flags>:
80028878:	e92d4800 	push	{fp, lr}
8002887c:	e28db004 	add	fp, sp, #4
80028880:	e24dd008 	sub	sp, sp, #8
80028884:	e24b3008 	sub	r3, fp, #8
80028888:	e1a01003 	mov	r1, r3
8002888c:	e3a00000 	mov	r0, #0
80028890:	ebfff85f 	bl	80026a14 <argint>
80028894:	e1a03000 	mov	r3, r0
80028898:	e3530000 	cmp	r3, #0
8002889c:	aa000001 	bge	800288a8 <sys_pg_flags+0x30>
800288a0:	e3e03000 	mvn	r3, #0
800288a4:	ea000002 	b	800288b4 <sys_pg_flags+0x3c>
800288a8:	e51b3008 	ldr	r3, [fp, #-8]
800288ac:	e1a03a03 	lsl	r3, r3, #20
800288b0:	e1a03a23 	lsr	r3, r3, #20
800288b4:	e1a00003 	mov	r0, r3
800288b8:	e24bd004 	sub	sp, fp, #4
800288bc:	e8bd8800 	pop	{fp, pc}

800288c0 <sys_kpt>:
800288c0:	e92d4800 	push	{fp, lr}
800288c4:	e28db004 	add	fp, sp, #4
800288c8:	e59f000c 	ldr	r0, [pc, #12]	@ 800288dc <sys_kpt+0x1c>
800288cc:	ebffe3f0 	bl	80021894 <cprintf>
800288d0:	e3a03000 	mov	r3, #0
800288d4:	e1a00003 	mov	r0, r3
800288d8:	e8bd8800 	pop	{fp, pc}
800288dc:	8002ac0c 	.word	0x8002ac0c

800288e0 <sys_ugetpid>:
800288e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800288e4:	e28db000 	add	fp, sp, #0
800288e8:	e59f3014 	ldr	r3, [pc, #20]	@ 80028904 <sys_ugetpid+0x24>
800288ec:	e5933000 	ldr	r3, [r3]
800288f0:	e5933010 	ldr	r3, [r3, #16]
800288f4:	e1a00003 	mov	r0, r3
800288f8:	e28bd000 	add	sp, fp, #0
800288fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028900:	e12fff1e 	bx	lr
80028904:	800b0f94 	.word	0x800b0f94

80028908 <trap_swi>:
80028908:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002890c:	e14f2000 	mrs	r2, SPSR
80028910:	e92d0004 	stmfd	sp!, {r2}
80028914:	e92d4000 	stmfd	sp!, {lr}
80028918:	e94d6000 	stmdb	sp, {sp, lr}^
8002891c:	e24dd008 	sub	sp, sp, #8
80028920:	e1a0000d 	mov	r0, sp
80028924:	eb000054 	bl	80028a7c <swi_handler>

80028928 <trapret>:
80028928:	e8dd6000 	ldm	sp, {sp, lr}^
8002892c:	e28dd008 	add	sp, sp, #8
80028930:	e8bd4000 	ldmfd	sp!, {lr}
80028934:	e8bd0004 	ldmfd	sp!, {r2}
80028938:	e16ff002 	msr	SPSR_fsxc, r2
8002893c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80028940 <trap_irq>:
80028940:	e24ee004 	sub	lr, lr, #4
80028944:	e92d4007 	push	{r0, r1, r2, lr}
80028948:	e14f1000 	mrs	r1, SPSR
8002894c:	e1a0000d 	mov	r0, sp
80028950:	e28dd010 	add	sp, sp, #16
80028954:	e10f2000 	mrs	r2, CPSR
80028958:	e3c2201f 	bic	r2, r2, #31
8002895c:	e3822013 	orr	r2, r2, #19
80028960:	e12ff002 	msr	CPSR_fsxc, r2
80028964:	e590200c 	ldr	r2, [r0, #12]
80028968:	e92d0004 	stmfd	sp!, {r2}
8002896c:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80028970:	e8900038 	ldm	r0, {r3, r4, r5}
80028974:	e92d0038 	push	{r3, r4, r5}
80028978:	e92d0002 	stmfd	sp!, {r1}
8002897c:	e92d4000 	stmfd	sp!, {lr}
80028980:	e94d6000 	stmdb	sp, {sp, lr}^
80028984:	e24dd008 	sub	sp, sp, #8
80028988:	e1a0000d 	mov	r0, sp
8002898c:	eb000047 	bl	80028ab0 <irq_handler>
80028990:	eaffffe4 	b	80028928 <trapret>

80028994 <trap_reset>:
80028994:	e3a0e000 	mov	lr, #0
80028998:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002899c:	e14f2000 	mrs	r2, SPSR
800289a0:	e92d0004 	stmfd	sp!, {r2}
800289a4:	e92d4000 	stmfd	sp!, {lr}
800289a8:	e94d6000 	stmdb	sp, {sp, lr}^
800289ac:	e24dd008 	sub	sp, sp, #8
800289b0:	e1a0000d 	mov	r0, sp
800289b4:	eb00004f 	bl	80028af8 <reset_handler>
800289b8:	eafffffe 	b	800289b8 <trap_reset+0x24>

800289bc <trap_und>:
800289bc:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800289c0:	e14f2000 	mrs	r2, SPSR
800289c4:	e92d0004 	stmfd	sp!, {r2}
800289c8:	e92d4000 	stmfd	sp!, {lr}
800289cc:	e94d6000 	stmdb	sp, {sp, lr}^
800289d0:	e24dd008 	sub	sp, sp, #8
800289d4:	e1a0000d 	mov	r0, sp
800289d8:	eb000054 	bl	80028b30 <und_handler>
800289dc:	eafffffe 	b	800289dc <trap_und+0x20>

800289e0 <trap_iabort>:
800289e0:	e24ee004 	sub	lr, lr, #4
800289e4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800289e8:	e14f2000 	mrs	r2, SPSR
800289ec:	e92d0004 	stmfd	sp!, {r2}
800289f0:	e92d4000 	stmfd	sp!, {lr}
800289f4:	e94d6000 	stmdb	sp, {sp, lr}^
800289f8:	e24dd008 	sub	sp, sp, #8
800289fc:	e1a0000d 	mov	r0, sp
80028a00:	eb0000b2 	bl	80028cd0 <iabort_handler>
80028a04:	eafffffe 	b	80028a04 <trap_iabort+0x24>

80028a08 <trap_dabort>:
80028a08:	e24ee008 	sub	lr, lr, #8
80028a0c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028a10:	e14f2000 	mrs	r2, SPSR
80028a14:	e92d0004 	stmfd	sp!, {r2}
80028a18:	e92d4000 	stmfd	sp!, {lr}
80028a1c:	e94d6000 	stmdb	sp, {sp, lr}^
80028a20:	e24dd008 	sub	sp, sp, #8
80028a24:	e1a0000d 	mov	r0, sp
80028a28:	eb00004e 	bl	80028b68 <dabort_handler>
80028a2c:	eaffffbd 	b	80028928 <trapret>

80028a30 <trap_na>:
80028a30:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028a34:	e14f2000 	mrs	r2, SPSR
80028a38:	e92d0004 	stmfd	sp!, {r2}
80028a3c:	e92d4000 	stmfd	sp!, {lr}
80028a40:	e94d6000 	stmdb	sp, {sp, lr}^
80028a44:	e24dd008 	sub	sp, sp, #8
80028a48:	e1a0000d 	mov	r0, sp
80028a4c:	eb0000b2 	bl	80028d1c <na_handler>
80028a50:	eafffffe 	b	80028a50 <trap_na+0x20>

80028a54 <trap_fiq>:
80028a54:	e24ee004 	sub	lr, lr, #4
80028a58:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80028a5c:	e14f2000 	mrs	r2, SPSR
80028a60:	e92d0004 	stmfd	sp!, {r2}
80028a64:	e92d4000 	stmfd	sp!, {lr}
80028a68:	e94d6000 	stmdb	sp, {sp, lr}^
80028a6c:	e24dd008 	sub	sp, sp, #8
80028a70:	e1a0000d 	mov	r0, sp
80028a74:	eb0000b6 	bl	80028d54 <fiq_handler>
80028a78:	eafffffe 	b	80028a78 <trap_fiq+0x24>

80028a7c <swi_handler>:
80028a7c:	e92d4800 	push	{fp, lr}
80028a80:	e28db004 	add	fp, sp, #4
80028a84:	e24dd008 	sub	sp, sp, #8
80028a88:	e50b0008 	str	r0, [fp, #-8]
80028a8c:	e59f3018 	ldr	r3, [pc, #24]	@ 80028aac <swi_handler+0x30>
80028a90:	e5933000 	ldr	r3, [r3]
80028a94:	e51b2008 	ldr	r2, [fp, #-8]
80028a98:	e5832018 	str	r2, [r3, #24]
80028a9c:	ebfff836 	bl	80026b7c <syscall>
80028aa0:	e1a00000 	nop			@ (mov r0, r0)
80028aa4:	e24bd004 	sub	sp, fp, #4
80028aa8:	e8bd8800 	pop	{fp, pc}
80028aac:	800b0f94 	.word	0x800b0f94

80028ab0 <irq_handler>:
80028ab0:	e92d4800 	push	{fp, lr}
80028ab4:	e28db004 	add	fp, sp, #4
80028ab8:	e24dd008 	sub	sp, sp, #8
80028abc:	e50b0008 	str	r0, [fp, #-8]
80028ac0:	e59f302c 	ldr	r3, [pc, #44]	@ 80028af4 <irq_handler+0x44>
80028ac4:	e5933000 	ldr	r3, [r3]
80028ac8:	e3530000 	cmp	r3, #0
80028acc:	0a000003 	beq	80028ae0 <irq_handler+0x30>
80028ad0:	e59f301c 	ldr	r3, [pc, #28]	@ 80028af4 <irq_handler+0x44>
80028ad4:	e5933000 	ldr	r3, [r3]
80028ad8:	e51b2008 	ldr	r2, [fp, #-8]
80028adc:	e5832018 	str	r2, [r3, #24]
80028ae0:	e51b0008 	ldr	r0, [fp, #-8]
80028ae4:	eb00053b 	bl	80029fd8 <pic_dispatch>
80028ae8:	e1a00000 	nop			@ (mov r0, r0)
80028aec:	e24bd004 	sub	sp, fp, #4
80028af0:	e8bd8800 	pop	{fp, pc}
80028af4:	800b0f94 	.word	0x800b0f94

80028af8 <reset_handler>:
80028af8:	e92d4800 	push	{fp, lr}
80028afc:	e28db004 	add	fp, sp, #4
80028b00:	e24dd008 	sub	sp, sp, #8
80028b04:	e50b0008 	str	r0, [fp, #-8]
80028b08:	ebffde8c 	bl	80020540 <cli>
80028b0c:	e51b3008 	ldr	r3, [fp, #-8]
80028b10:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028b14:	e1a01003 	mov	r1, r3
80028b18:	e59f000c 	ldr	r0, [pc, #12]	@ 80028b2c <reset_handler+0x34>
80028b1c:	ebffe35c 	bl	80021894 <cprintf>
80028b20:	e1a00000 	nop			@ (mov r0, r0)
80028b24:	e24bd004 	sub	sp, fp, #4
80028b28:	e8bd8800 	pop	{fp, pc}
80028b2c:	8002ac34 	.word	0x8002ac34

80028b30 <und_handler>:
80028b30:	e92d4800 	push	{fp, lr}
80028b34:	e28db004 	add	fp, sp, #4
80028b38:	e24dd008 	sub	sp, sp, #8
80028b3c:	e50b0008 	str	r0, [fp, #-8]
80028b40:	ebffde7e 	bl	80020540 <cli>
80028b44:	e51b3008 	ldr	r3, [fp, #-8]
80028b48:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028b4c:	e1a01003 	mov	r1, r3
80028b50:	e59f000c 	ldr	r0, [pc, #12]	@ 80028b64 <und_handler+0x34>
80028b54:	ebffe34e 	bl	80021894 <cprintf>
80028b58:	e1a00000 	nop			@ (mov r0, r0)
80028b5c:	e24bd004 	sub	sp, fp, #4
80028b60:	e8bd8800 	pop	{fp, pc}
80028b64:	8002ac48 	.word	0x8002ac48

80028b68 <dabort_handler>:
80028b68:	e92d4800 	push	{fp, lr}
80028b6c:	e28db004 	add	fp, sp, #4
80028b70:	e24dd030 	sub	sp, sp, #48	@ 0x30
80028b74:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028b78:	e59f313c 	ldr	r3, [pc, #316]	@ 80028cbc <dabort_handler+0x154>
80028b7c:	e5933000 	ldr	r3, [r3]
80028b80:	e50b3008 	str	r3, [fp, #-8]
80028b84:	ebffde6d 	bl	80020540 <cli>
80028b88:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80028b8c:	e50b300c 	str	r3, [fp, #-12]
80028b90:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80028b94:	e50b3010 	str	r3, [fp, #-16]
80028b98:	e51b3008 	ldr	r3, [fp, #-8]
80028b9c:	e3530000 	cmp	r3, #0
80028ba0:	0a000039 	beq	80028c8c <dabort_handler+0x124>
80028ba4:	e51b3008 	ldr	r3, [fp, #-8]
80028ba8:	e5933000 	ldr	r3, [r3]
80028bac:	e51b2010 	ldr	r2, [fp, #-16]
80028bb0:	e1520003 	cmp	r2, r3
80028bb4:	2a000034 	bcs	80028c8c <dabort_handler+0x124>
80028bb8:	e51b3010 	ldr	r3, [fp, #-16]
80028bbc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028bc0:	e3c3300f 	bic	r3, r3, #15
80028bc4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028bc8:	e51b3008 	ldr	r3, [fp, #-8]
80028bcc:	e5933004 	ldr	r3, [r3, #4]
80028bd0:	e3a02001 	mov	r2, #1
80028bd4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028bd8:	e1a00003 	mov	r0, r3
80028bdc:	eb0001ca 	bl	8002930c <walkpgdir>
80028be0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028be4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028be8:	e3530000 	cmp	r3, #0
80028bec:	0a000007 	beq	80028c10 <dabort_handler+0xa8>
80028bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028bf4:	e5933000 	ldr	r3, [r3]
80028bf8:	e2033003 	and	r3, r3, #3
80028bfc:	e3530000 	cmp	r3, #0
80028c00:	0a000002 	beq	80028c10 <dabort_handler+0xa8>
80028c04:	eb000231 	bl	800294d0 <flush_tlb>
80028c08:	ebffde5a 	bl	80020578 <sti>
80028c0c:	ea000028 	b	80028cb4 <dabort_handler+0x14c>
80028c10:	ebffe286 	bl	80021630 <alloc_page>
80028c14:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
80028c18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c1c:	e3530000 	cmp	r3, #0
80028c20:	1a000001 	bne	80028c2c <dabort_handler+0xc4>
80028c24:	e59f0094 	ldr	r0, [pc, #148]	@ 80028cc0 <dabort_handler+0x158>
80028c28:	ebffe3b1 	bl	80021af4 <panic>
80028c2c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028c30:	e3a01000 	mov	r1, #0
80028c34:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028c38:	ebffdcf0 	bl	80020000 <memset>
80028c3c:	e51b3008 	ldr	r3, [fp, #-8]
80028c40:	e5930004 	ldr	r0, [r3, #4]
80028c44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c48:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028c4c:	e3a02003 	mov	r2, #3
80028c50:	e58d2000 	str	r2, [sp]
80028c54:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028c58:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028c5c:	eb0001df 	bl	800293e0 <mappages>
80028c60:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80028c64:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028c68:	e3530000 	cmp	r3, #0
80028c6c:	0a000003 	beq	80028c80 <dabort_handler+0x118>
80028c70:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028c74:	ebffe263 	bl	80021608 <free_page>
80028c78:	e59f0044 	ldr	r0, [pc, #68]	@ 80028cc4 <dabort_handler+0x15c>
80028c7c:	ebffe39c 	bl	80021af4 <panic>
80028c80:	eb000212 	bl	800294d0 <flush_tlb>
80028c84:	ebffde3b 	bl	80020578 <sti>
80028c88:	ea000009 	b	80028cb4 <dabort_handler+0x14c>
80028c8c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80028c90:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80028c94:	e51b300c 	ldr	r3, [fp, #-12]
80028c98:	e51b2010 	ldr	r2, [fp, #-16]
80028c9c:	e59f0024 	ldr	r0, [pc, #36]	@ 80028cc8 <dabort_handler+0x160>
80028ca0:	ebffe2fb 	bl	80021894 <cprintf>
80028ca4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028ca8:	eb0000b8 	bl	80028f90 <dump_trapframe>
80028cac:	e59f0018 	ldr	r0, [pc, #24]	@ 80028ccc <dabort_handler+0x164>
80028cb0:	ebffe38f 	bl	80021af4 <panic>
80028cb4:	e24bd004 	sub	sp, fp, #4
80028cb8:	e8bd8800 	pop	{fp, pc}
80028cbc:	800b0f94 	.word	0x800b0f94
80028cc0:	8002ac58 	.word	0x8002ac58
80028cc4:	8002ac78 	.word	0x8002ac78
80028cc8:	8002ac98 	.word	0x8002ac98
80028ccc:	8002acd4 	.word	0x8002acd4

80028cd0 <iabort_handler>:
80028cd0:	e92d4800 	push	{fp, lr}
80028cd4:	e28db004 	add	fp, sp, #4
80028cd8:	e24dd010 	sub	sp, sp, #16
80028cdc:	e50b0010 	str	r0, [fp, #-16]
80028ce0:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80028ce4:	e50b3008 	str	r3, [fp, #-8]
80028ce8:	ebffde14 	bl	80020540 <cli>
80028cec:	e51b3010 	ldr	r3, [fp, #-16]
80028cf0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028cf4:	e51b2008 	ldr	r2, [fp, #-8]
80028cf8:	e1a01003 	mov	r1, r3
80028cfc:	e59f0014 	ldr	r0, [pc, #20]	@ 80028d18 <iabort_handler+0x48>
80028d00:	ebffe2e3 	bl	80021894 <cprintf>
80028d04:	e51b0010 	ldr	r0, [fp, #-16]
80028d08:	eb0000a0 	bl	80028f90 <dump_trapframe>
80028d0c:	e1a00000 	nop			@ (mov r0, r0)
80028d10:	e24bd004 	sub	sp, fp, #4
80028d14:	e8bd8800 	pop	{fp, pc}
80028d18:	8002acec 	.word	0x8002acec

80028d1c <na_handler>:
80028d1c:	e92d4800 	push	{fp, lr}
80028d20:	e28db004 	add	fp, sp, #4
80028d24:	e24dd008 	sub	sp, sp, #8
80028d28:	e50b0008 	str	r0, [fp, #-8]
80028d2c:	ebffde03 	bl	80020540 <cli>
80028d30:	e51b3008 	ldr	r3, [fp, #-8]
80028d34:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028d38:	e1a01003 	mov	r1, r3
80028d3c:	e59f000c 	ldr	r0, [pc, #12]	@ 80028d50 <na_handler+0x34>
80028d40:	ebffe2d3 	bl	80021894 <cprintf>
80028d44:	e1a00000 	nop			@ (mov r0, r0)
80028d48:	e24bd004 	sub	sp, fp, #4
80028d4c:	e8bd8800 	pop	{fp, pc}
80028d50:	8002ad14 	.word	0x8002ad14

80028d54 <fiq_handler>:
80028d54:	e92d4800 	push	{fp, lr}
80028d58:	e28db004 	add	fp, sp, #4
80028d5c:	e24dd008 	sub	sp, sp, #8
80028d60:	e50b0008 	str	r0, [fp, #-8]
80028d64:	ebffddf5 	bl	80020540 <cli>
80028d68:	e51b3008 	ldr	r3, [fp, #-8]
80028d6c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028d70:	e1a01003 	mov	r1, r3
80028d74:	e59f000c 	ldr	r0, [pc, #12]	@ 80028d88 <fiq_handler+0x34>
80028d78:	ebffe2c5 	bl	80021894 <cprintf>
80028d7c:	e1a00000 	nop			@ (mov r0, r0)
80028d80:	e24bd004 	sub	sp, fp, #4
80028d84:	e8bd8800 	pop	{fp, pc}
80028d88:	8002ad24 	.word	0x8002ad24

80028d8c <trap_init>:
80028d8c:	e92d4800 	push	{fp, lr}
80028d90:	e28db004 	add	fp, sp, #4
80028d94:	e24dd020 	sub	sp, sp, #32
80028d98:	e59f31c0 	ldr	r3, [pc, #448]	@ 80028f60 <trap_init+0x1d4>
80028d9c:	e24bc020 	sub	ip, fp, #32
80028da0:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80028da4:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80028da8:	e59f31b4 	ldr	r3, [pc, #436]	@ 80028f64 <trap_init+0x1d8>
80028dac:	e50b300c 	str	r3, [fp, #-12]
80028db0:	e59f31b0 	ldr	r3, [pc, #432]	@ 80028f68 <trap_init+0x1dc>
80028db4:	e5933000 	ldr	r3, [r3]
80028db8:	e3832018 	orr	r2, r3, #24
80028dbc:	e51b300c 	ldr	r3, [fp, #-12]
80028dc0:	e5832000 	str	r2, [r3]
80028dc4:	e59f319c 	ldr	r3, [pc, #412]	@ 80028f68 <trap_init+0x1dc>
80028dc8:	e5932000 	ldr	r2, [r3]
80028dcc:	e51b300c 	ldr	r3, [fp, #-12]
80028dd0:	e2833004 	add	r3, r3, #4
80028dd4:	e3822018 	orr	r2, r2, #24
80028dd8:	e5832000 	str	r2, [r3]
80028ddc:	e59f3184 	ldr	r3, [pc, #388]	@ 80028f68 <trap_init+0x1dc>
80028de0:	e5932000 	ldr	r2, [r3]
80028de4:	e51b300c 	ldr	r3, [fp, #-12]
80028de8:	e2833008 	add	r3, r3, #8
80028dec:	e3822018 	orr	r2, r2, #24
80028df0:	e5832000 	str	r2, [r3]
80028df4:	e59f316c 	ldr	r3, [pc, #364]	@ 80028f68 <trap_init+0x1dc>
80028df8:	e5932000 	ldr	r2, [r3]
80028dfc:	e51b300c 	ldr	r3, [fp, #-12]
80028e00:	e283300c 	add	r3, r3, #12
80028e04:	e3822018 	orr	r2, r2, #24
80028e08:	e5832000 	str	r2, [r3]
80028e0c:	e59f3154 	ldr	r3, [pc, #340]	@ 80028f68 <trap_init+0x1dc>
80028e10:	e5932000 	ldr	r2, [r3]
80028e14:	e51b300c 	ldr	r3, [fp, #-12]
80028e18:	e2833010 	add	r3, r3, #16
80028e1c:	e3822018 	orr	r2, r2, #24
80028e20:	e5832000 	str	r2, [r3]
80028e24:	e59f313c 	ldr	r3, [pc, #316]	@ 80028f68 <trap_init+0x1dc>
80028e28:	e5932000 	ldr	r2, [r3]
80028e2c:	e51b300c 	ldr	r3, [fp, #-12]
80028e30:	e2833014 	add	r3, r3, #20
80028e34:	e3822018 	orr	r2, r2, #24
80028e38:	e5832000 	str	r2, [r3]
80028e3c:	e59f3124 	ldr	r3, [pc, #292]	@ 80028f68 <trap_init+0x1dc>
80028e40:	e5932000 	ldr	r2, [r3]
80028e44:	e51b300c 	ldr	r3, [fp, #-12]
80028e48:	e2833018 	add	r3, r3, #24
80028e4c:	e3822018 	orr	r2, r2, #24
80028e50:	e5832000 	str	r2, [r3]
80028e54:	e59f310c 	ldr	r3, [pc, #268]	@ 80028f68 <trap_init+0x1dc>
80028e58:	e5932000 	ldr	r2, [r3]
80028e5c:	e51b300c 	ldr	r3, [fp, #-12]
80028e60:	e283301c 	add	r3, r3, #28
80028e64:	e3822018 	orr	r2, r2, #24
80028e68:	e5832000 	str	r2, [r3]
80028e6c:	e51b300c 	ldr	r3, [fp, #-12]
80028e70:	e2833020 	add	r3, r3, #32
80028e74:	e59f20f0 	ldr	r2, [pc, #240]	@ 80028f6c <trap_init+0x1e0>
80028e78:	e5832000 	str	r2, [r3]
80028e7c:	e51b300c 	ldr	r3, [fp, #-12]
80028e80:	e2833024 	add	r3, r3, #36	@ 0x24
80028e84:	e59f20e4 	ldr	r2, [pc, #228]	@ 80028f70 <trap_init+0x1e4>
80028e88:	e5832000 	str	r2, [r3]
80028e8c:	e51b300c 	ldr	r3, [fp, #-12]
80028e90:	e2833028 	add	r3, r3, #40	@ 0x28
80028e94:	e59f20d8 	ldr	r2, [pc, #216]	@ 80028f74 <trap_init+0x1e8>
80028e98:	e5832000 	str	r2, [r3]
80028e9c:	e51b300c 	ldr	r3, [fp, #-12]
80028ea0:	e283302c 	add	r3, r3, #44	@ 0x2c
80028ea4:	e59f20cc 	ldr	r2, [pc, #204]	@ 80028f78 <trap_init+0x1ec>
80028ea8:	e5832000 	str	r2, [r3]
80028eac:	e51b300c 	ldr	r3, [fp, #-12]
80028eb0:	e2833030 	add	r3, r3, #48	@ 0x30
80028eb4:	e59f20c0 	ldr	r2, [pc, #192]	@ 80028f7c <trap_init+0x1f0>
80028eb8:	e5832000 	str	r2, [r3]
80028ebc:	e51b300c 	ldr	r3, [fp, #-12]
80028ec0:	e2833034 	add	r3, r3, #52	@ 0x34
80028ec4:	e59f20b4 	ldr	r2, [pc, #180]	@ 80028f80 <trap_init+0x1f4>
80028ec8:	e5832000 	str	r2, [r3]
80028ecc:	e51b300c 	ldr	r3, [fp, #-12]
80028ed0:	e2833038 	add	r3, r3, #56	@ 0x38
80028ed4:	e59f20a8 	ldr	r2, [pc, #168]	@ 80028f84 <trap_init+0x1f8>
80028ed8:	e5832000 	str	r2, [r3]
80028edc:	e51b300c 	ldr	r3, [fp, #-12]
80028ee0:	e283303c 	add	r3, r3, #60	@ 0x3c
80028ee4:	e59f209c 	ldr	r2, [pc, #156]	@ 80028f88 <trap_init+0x1fc>
80028ee8:	e5832000 	str	r2, [r3]
80028eec:	e3a03000 	mov	r3, #0
80028ef0:	e50b3008 	str	r3, [fp, #-8]
80028ef4:	ea000012 	b	80028f44 <trap_init+0x1b8>
80028ef8:	ebffe1cc 	bl	80021630 <alloc_page>
80028efc:	e50b0010 	str	r0, [fp, #-16]
80028f00:	e51b3010 	ldr	r3, [fp, #-16]
80028f04:	e3530000 	cmp	r3, #0
80028f08:	1a000001 	bne	80028f14 <trap_init+0x188>
80028f0c:	e59f0078 	ldr	r0, [pc, #120]	@ 80028f8c <trap_init+0x200>
80028f10:	ebffe2f7 	bl	80021af4 <panic>
80028f14:	e51b3008 	ldr	r3, [fp, #-8]
80028f18:	e1a03103 	lsl	r3, r3, #2
80028f1c:	e2433004 	sub	r3, r3, #4
80028f20:	e083300b 	add	r3, r3, fp
80028f24:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80028f28:	e51b2010 	ldr	r2, [fp, #-16]
80028f2c:	e1a01002 	mov	r1, r2
80028f30:	e1a00003 	mov	r0, r3
80028f34:	ebffde5a 	bl	800208a4 <set_stk>
80028f38:	e51b3008 	ldr	r3, [fp, #-8]
80028f3c:	e2833001 	add	r3, r3, #1
80028f40:	e50b3008 	str	r3, [fp, #-8]
80028f44:	e51b3008 	ldr	r3, [fp, #-8]
80028f48:	e3530003 	cmp	r3, #3
80028f4c:	9affffe9 	bls	80028ef8 <trap_init+0x16c>
80028f50:	e1a00000 	nop			@ (mov r0, r0)
80028f54:	e1a00000 	nop			@ (mov r0, r0)
80028f58:	e24bd004 	sub	sp, fp, #4
80028f5c:	e8bd8800 	pop	{fp, pc}
80028f60:	8002ad5c 	.word	0x8002ad5c
80028f64:	ffff0000 	.word	0xffff0000
80028f68:	8002ae6c 	.word	0x8002ae6c
80028f6c:	80028994 	.word	0x80028994
80028f70:	800289bc 	.word	0x800289bc
80028f74:	80028908 	.word	0x80028908
80028f78:	800289e0 	.word	0x800289e0
80028f7c:	80028a08 	.word	0x80028a08
80028f80:	80028a30 	.word	0x80028a30
80028f84:	80028940 	.word	0x80028940
80028f88:	80028a54 	.word	0x80028a54
80028f8c:	8002ad34 	.word	0x8002ad34

80028f90 <dump_trapframe>:
80028f90:	e92d4800 	push	{fp, lr}
80028f94:	e28db004 	add	fp, sp, #4
80028f98:	e24dd008 	sub	sp, sp, #8
80028f9c:	e50b0008 	str	r0, [fp, #-8]
80028fa0:	e51b3008 	ldr	r3, [fp, #-8]
80028fa4:	e5933008 	ldr	r3, [r3, #8]
80028fa8:	e1a01003 	mov	r1, r3
80028fac:	e59f0138 	ldr	r0, [pc, #312]	@ 800290ec <dump_trapframe+0x15c>
80028fb0:	ebffe237 	bl	80021894 <cprintf>
80028fb4:	e51b3008 	ldr	r3, [fp, #-8]
80028fb8:	e593300c 	ldr	r3, [r3, #12]
80028fbc:	e1a01003 	mov	r1, r3
80028fc0:	e59f0128 	ldr	r0, [pc, #296]	@ 800290f0 <dump_trapframe+0x160>
80028fc4:	ebffe232 	bl	80021894 <cprintf>
80028fc8:	e51b3008 	ldr	r3, [fp, #-8]
80028fcc:	e5933010 	ldr	r3, [r3, #16]
80028fd0:	e1a01003 	mov	r1, r3
80028fd4:	e59f0118 	ldr	r0, [pc, #280]	@ 800290f4 <dump_trapframe+0x164>
80028fd8:	ebffe22d 	bl	80021894 <cprintf>
80028fdc:	e51b3008 	ldr	r3, [fp, #-8]
80028fe0:	e5933014 	ldr	r3, [r3, #20]
80028fe4:	e1a01003 	mov	r1, r3
80028fe8:	e59f0108 	ldr	r0, [pc, #264]	@ 800290f8 <dump_trapframe+0x168>
80028fec:	ebffe228 	bl	80021894 <cprintf>
80028ff0:	e51b3008 	ldr	r3, [fp, #-8]
80028ff4:	e5933018 	ldr	r3, [r3, #24]
80028ff8:	e1a01003 	mov	r1, r3
80028ffc:	e59f00f8 	ldr	r0, [pc, #248]	@ 800290fc <dump_trapframe+0x16c>
80029000:	ebffe223 	bl	80021894 <cprintf>
80029004:	e51b3008 	ldr	r3, [fp, #-8]
80029008:	e593301c 	ldr	r3, [r3, #28]
8002900c:	e1a01003 	mov	r1, r3
80029010:	e59f00e8 	ldr	r0, [pc, #232]	@ 80029100 <dump_trapframe+0x170>
80029014:	ebffe21e 	bl	80021894 <cprintf>
80029018:	e51b3008 	ldr	r3, [fp, #-8]
8002901c:	e5933020 	ldr	r3, [r3, #32]
80029020:	e1a01003 	mov	r1, r3
80029024:	e59f00d8 	ldr	r0, [pc, #216]	@ 80029104 <dump_trapframe+0x174>
80029028:	ebffe219 	bl	80021894 <cprintf>
8002902c:	e51b3008 	ldr	r3, [fp, #-8]
80029030:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80029034:	e1a01003 	mov	r1, r3
80029038:	e59f00c8 	ldr	r0, [pc, #200]	@ 80029108 <dump_trapframe+0x178>
8002903c:	ebffe214 	bl	80021894 <cprintf>
80029040:	e51b3008 	ldr	r3, [fp, #-8]
80029044:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80029048:	e1a01003 	mov	r1, r3
8002904c:	e59f00b8 	ldr	r0, [pc, #184]	@ 8002910c <dump_trapframe+0x17c>
80029050:	ebffe20f 	bl	80021894 <cprintf>
80029054:	e51b3008 	ldr	r3, [fp, #-8]
80029058:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
8002905c:	e1a01003 	mov	r1, r3
80029060:	e59f00a8 	ldr	r0, [pc, #168]	@ 80029110 <dump_trapframe+0x180>
80029064:	ebffe20a 	bl	80021894 <cprintf>
80029068:	e51b3008 	ldr	r3, [fp, #-8]
8002906c:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80029070:	e1a01003 	mov	r1, r3
80029074:	e59f0098 	ldr	r0, [pc, #152]	@ 80029114 <dump_trapframe+0x184>
80029078:	ebffe205 	bl	80021894 <cprintf>
8002907c:	e51b3008 	ldr	r3, [fp, #-8]
80029080:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80029084:	e1a01003 	mov	r1, r3
80029088:	e59f0088 	ldr	r0, [pc, #136]	@ 80029118 <dump_trapframe+0x188>
8002908c:	ebffe200 	bl	80021894 <cprintf>
80029090:	e51b3008 	ldr	r3, [fp, #-8]
80029094:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80029098:	e1a01003 	mov	r1, r3
8002909c:	e59f0078 	ldr	r0, [pc, #120]	@ 8002911c <dump_trapframe+0x18c>
800290a0:	ebffe1fb 	bl	80021894 <cprintf>
800290a4:	e51b3008 	ldr	r3, [fp, #-8]
800290a8:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800290ac:	e1a01003 	mov	r1, r3
800290b0:	e59f0068 	ldr	r0, [pc, #104]	@ 80029120 <dump_trapframe+0x190>
800290b4:	ebffe1f6 	bl	80021894 <cprintf>
800290b8:	e51b3008 	ldr	r3, [fp, #-8]
800290bc:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800290c0:	e1a01003 	mov	r1, r3
800290c4:	e59f0058 	ldr	r0, [pc, #88]	@ 80029124 <dump_trapframe+0x194>
800290c8:	ebffe1f1 	bl	80021894 <cprintf>
800290cc:	e51b3008 	ldr	r3, [fp, #-8]
800290d0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800290d4:	e1a01003 	mov	r1, r3
800290d8:	e59f0048 	ldr	r0, [pc, #72]	@ 80029128 <dump_trapframe+0x198>
800290dc:	ebffe1ec 	bl	80021894 <cprintf>
800290e0:	e1a00000 	nop			@ (mov r0, r0)
800290e4:	e24bd004 	sub	sp, fp, #4
800290e8:	e8bd8800 	pop	{fp, pc}
800290ec:	8002ad6c 	.word	0x8002ad6c
800290f0:	8002ad7c 	.word	0x8002ad7c
800290f4:	8002ad8c 	.word	0x8002ad8c
800290f8:	8002ad9c 	.word	0x8002ad9c
800290fc:	8002adac 	.word	0x8002adac
80029100:	8002adbc 	.word	0x8002adbc
80029104:	8002adcc 	.word	0x8002adcc
80029108:	8002addc 	.word	0x8002addc
8002910c:	8002adec 	.word	0x8002adec
80029110:	8002adfc 	.word	0x8002adfc
80029114:	8002ae0c 	.word	0x8002ae0c
80029118:	8002ae1c 	.word	0x8002ae1c
8002911c:	8002ae2c 	.word	0x8002ae2c
80029120:	8002ae3c 	.word	0x8002ae3c
80029124:	8002ae4c 	.word	0x8002ae4c
80029128:	8002ae5c 	.word	0x8002ae5c

8002912c <p2v>:
8002912c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029130:	e28db000 	add	fp, sp, #0
80029134:	e24dd00c 	sub	sp, sp, #12
80029138:	e50b0008 	str	r0, [fp, #-8]
8002913c:	e51b3008 	ldr	r3, [fp, #-8]
80029140:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029144:	e1a00003 	mov	r0, r3
80029148:	e28bd000 	add	sp, fp, #0
8002914c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029150:	e12fff1e 	bx	lr

80029154 <init_vmm>:
80029154:	e92d4800 	push	{fp, lr}
80029158:	e28db004 	add	fp, sp, #4
8002915c:	e59f1018 	ldr	r1, [pc, #24]	@ 8002917c <init_vmm+0x28>
80029160:	e59f0018 	ldr	r0, [pc, #24]	@ 80029180 <init_vmm+0x2c>
80029164:	ebfff5a7 	bl	80026808 <initlock>
80029168:	e59f3010 	ldr	r3, [pc, #16]	@ 80029180 <init_vmm+0x2c>
8002916c:	e3a02000 	mov	r2, #0
80029170:	e5832034 	str	r2, [r3, #52]	@ 0x34
80029174:	e1a00000 	nop			@ (mov r0, r0)
80029178:	e8bd8800 	pop	{fp, pc}
8002917c:	8002ae70 	.word	0x8002ae70
80029180:	800b0f9c 	.word	0x800b0f9c

80029184 <_kpt_free>:
80029184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029188:	e28db000 	add	fp, sp, #0
8002918c:	e24dd014 	sub	sp, sp, #20
80029190:	e50b0010 	str	r0, [fp, #-16]
80029194:	e51b3010 	ldr	r3, [fp, #-16]
80029198:	e50b3008 	str	r3, [fp, #-8]
8002919c:	e59f3024 	ldr	r3, [pc, #36]	@ 800291c8 <_kpt_free+0x44>
800291a0:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800291a4:	e51b3008 	ldr	r3, [fp, #-8]
800291a8:	e5832000 	str	r2, [r3]
800291ac:	e59f2014 	ldr	r2, [pc, #20]	@ 800291c8 <_kpt_free+0x44>
800291b0:	e51b3008 	ldr	r3, [fp, #-8]
800291b4:	e5823034 	str	r3, [r2, #52]	@ 0x34
800291b8:	e1a00000 	nop			@ (mov r0, r0)
800291bc:	e28bd000 	add	sp, fp, #0
800291c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800291c4:	e12fff1e 	bx	lr
800291c8:	800b0f9c 	.word	0x800b0f9c

800291cc <kpt_free>:
800291cc:	e92d4800 	push	{fp, lr}
800291d0:	e28db004 	add	fp, sp, #4
800291d4:	e24dd008 	sub	sp, sp, #8
800291d8:	e50b0008 	str	r0, [fp, #-8]
800291dc:	e51b3008 	ldr	r3, [fp, #-8]
800291e0:	e59f2034 	ldr	r2, [pc, #52]	@ 8002921c <kpt_free+0x50>
800291e4:	e1530002 	cmp	r3, r2
800291e8:	9a000003 	bls	800291fc <kpt_free+0x30>
800291ec:	e3a0100a 	mov	r1, #10
800291f0:	e51b0008 	ldr	r0, [fp, #-8]
800291f4:	ebffe0e1 	bl	80021580 <kfree>
800291f8:	ea000005 	b	80029214 <kpt_free+0x48>
800291fc:	e59f001c 	ldr	r0, [pc, #28]	@ 80029220 <kpt_free+0x54>
80029200:	ebfff592 	bl	80026850 <acquire>
80029204:	e51b0008 	ldr	r0, [fp, #-8]
80029208:	ebffffdd 	bl	80029184 <_kpt_free>
8002920c:	e59f000c 	ldr	r0, [pc, #12]	@ 80029220 <kpt_free+0x54>
80029210:	ebfff599 	bl	8002687c <release>
80029214:	e24bd004 	sub	sp, fp, #4
80029218:	e8bd8800 	pop	{fp, pc}
8002921c:	800fffff 	.word	0x800fffff
80029220:	800b0f9c 	.word	0x800b0f9c

80029224 <kpt_freerange>:
80029224:	e92d4800 	push	{fp, lr}
80029228:	e28db004 	add	fp, sp, #4
8002922c:	e24dd008 	sub	sp, sp, #8
80029230:	e50b0008 	str	r0, [fp, #-8]
80029234:	e50b100c 	str	r1, [fp, #-12]
80029238:	ea000005 	b	80029254 <kpt_freerange+0x30>
8002923c:	e51b3008 	ldr	r3, [fp, #-8]
80029240:	e1a00003 	mov	r0, r3
80029244:	ebffffce 	bl	80029184 <_kpt_free>
80029248:	e51b3008 	ldr	r3, [fp, #-8]
8002924c:	e2833b01 	add	r3, r3, #1024	@ 0x400
80029250:	e50b3008 	str	r3, [fp, #-8]
80029254:	e51b2008 	ldr	r2, [fp, #-8]
80029258:	e51b300c 	ldr	r3, [fp, #-12]
8002925c:	e1520003 	cmp	r2, r3
80029260:	3afffff5 	bcc	8002923c <kpt_freerange+0x18>
80029264:	e1a00000 	nop			@ (mov r0, r0)
80029268:	e1a00000 	nop			@ (mov r0, r0)
8002926c:	e24bd004 	sub	sp, fp, #4
80029270:	e8bd8800 	pop	{fp, pc}

80029274 <kpt_alloc>:
80029274:	e92d4800 	push	{fp, lr}
80029278:	e28db004 	add	fp, sp, #4
8002927c:	e24dd008 	sub	sp, sp, #8
80029280:	e59f007c 	ldr	r0, [pc, #124]	@ 80029304 <kpt_alloc+0x90>
80029284:	ebfff571 	bl	80026850 <acquire>
80029288:	e59f3074 	ldr	r3, [pc, #116]	@ 80029304 <kpt_alloc+0x90>
8002928c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80029290:	e50b3008 	str	r3, [fp, #-8]
80029294:	e51b3008 	ldr	r3, [fp, #-8]
80029298:	e3530000 	cmp	r3, #0
8002929c:	0a000003 	beq	800292b0 <kpt_alloc+0x3c>
800292a0:	e51b3008 	ldr	r3, [fp, #-8]
800292a4:	e5933000 	ldr	r3, [r3]
800292a8:	e59f2054 	ldr	r2, [pc, #84]	@ 80029304 <kpt_alloc+0x90>
800292ac:	e5823034 	str	r3, [r2, #52]	@ 0x34
800292b0:	e59f004c 	ldr	r0, [pc, #76]	@ 80029304 <kpt_alloc+0x90>
800292b4:	ebfff570 	bl	8002687c <release>
800292b8:	e51b3008 	ldr	r3, [fp, #-8]
800292bc:	e3530000 	cmp	r3, #0
800292c0:	1a000007 	bne	800292e4 <kpt_alloc+0x70>
800292c4:	e3a0000a 	mov	r0, #10
800292c8:	ebffe055 	bl	80021424 <kmalloc>
800292cc:	e50b0008 	str	r0, [fp, #-8]
800292d0:	e51b3008 	ldr	r3, [fp, #-8]
800292d4:	e3530000 	cmp	r3, #0
800292d8:	1a000001 	bne	800292e4 <kpt_alloc+0x70>
800292dc:	e59f0024 	ldr	r0, [pc, #36]	@ 80029308 <kpt_alloc+0x94>
800292e0:	ebffe203 	bl	80021af4 <panic>
800292e4:	e3a02b01 	mov	r2, #1024	@ 0x400
800292e8:	e3a01000 	mov	r1, #0
800292ec:	e51b0008 	ldr	r0, [fp, #-8]
800292f0:	ebffdb42 	bl	80020000 <memset>
800292f4:	e51b3008 	ldr	r3, [fp, #-8]
800292f8:	e1a00003 	mov	r0, r3
800292fc:	e24bd004 	sub	sp, fp, #4
80029300:	e8bd8800 	pop	{fp, pc}
80029304:	800b0f9c 	.word	0x800b0f9c
80029308:	8002ae74 	.word	0x8002ae74

8002930c <walkpgdir>:
8002930c:	e92d4800 	push	{fp, lr}
80029310:	e28db004 	add	fp, sp, #4
80029314:	e24dd018 	sub	sp, sp, #24
80029318:	e50b0010 	str	r0, [fp, #-16]
8002931c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029320:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80029324:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029328:	e1a03a23 	lsr	r3, r3, #20
8002932c:	e1a03103 	lsl	r3, r3, #2
80029330:	e51b2010 	ldr	r2, [fp, #-16]
80029334:	e0823003 	add	r3, r2, r3
80029338:	e50b300c 	str	r3, [fp, #-12]
8002933c:	e51b300c 	ldr	r3, [fp, #-12]
80029340:	e5933000 	ldr	r3, [r3]
80029344:	e2033003 	and	r3, r3, #3
80029348:	e3530000 	cmp	r3, #0
8002934c:	0a000007 	beq	80029370 <walkpgdir+0x64>
80029350:	e51b300c 	ldr	r3, [fp, #-12]
80029354:	e5933000 	ldr	r3, [r3]
80029358:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
8002935c:	e3c33003 	bic	r3, r3, #3
80029360:	e1a00003 	mov	r0, r3
80029364:	ebffff70 	bl	8002912c <p2v>
80029368:	e50b0008 	str	r0, [fp, #-8]
8002936c:	ea000012 	b	800293bc <walkpgdir+0xb0>
80029370:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029374:	e3530000 	cmp	r3, #0
80029378:	0a000004 	beq	80029390 <walkpgdir+0x84>
8002937c:	ebffffbc 	bl	80029274 <kpt_alloc>
80029380:	e50b0008 	str	r0, [fp, #-8]
80029384:	e51b3008 	ldr	r3, [fp, #-8]
80029388:	e3530000 	cmp	r3, #0
8002938c:	1a000001 	bne	80029398 <walkpgdir+0x8c>
80029390:	e3a03000 	mov	r3, #0
80029394:	ea00000e 	b	800293d4 <walkpgdir+0xc8>
80029398:	e3a02b01 	mov	r2, #1024	@ 0x400
8002939c:	e3a01000 	mov	r1, #0
800293a0:	e51b0008 	ldr	r0, [fp, #-8]
800293a4:	ebffdb15 	bl	80020000 <memset>
800293a8:	e51b3008 	ldr	r3, [fp, #-8]
800293ac:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800293b0:	e3832001 	orr	r2, r3, #1
800293b4:	e51b300c 	ldr	r3, [fp, #-12]
800293b8:	e5832000 	str	r2, [r3]
800293bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800293c0:	e1a03623 	lsr	r3, r3, #12
800293c4:	e6ef3073 	uxtb	r3, r3
800293c8:	e1a03103 	lsl	r3, r3, #2
800293cc:	e51b2008 	ldr	r2, [fp, #-8]
800293d0:	e0823003 	add	r3, r2, r3
800293d4:	e1a00003 	mov	r0, r3
800293d8:	e24bd004 	sub	sp, fp, #4
800293dc:	e8bd8800 	pop	{fp, pc}

800293e0 <mappages>:
800293e0:	e92d4800 	push	{fp, lr}
800293e4:	e28db004 	add	fp, sp, #4
800293e8:	e24dd020 	sub	sp, sp, #32
800293ec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800293f0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800293f4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800293f8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800293fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029400:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029404:	e3c3300f 	bic	r3, r3, #15
80029408:	e50b3008 	str	r3, [fp, #-8]
8002940c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029410:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029414:	e0823003 	add	r3, r2, r3
80029418:	e2433001 	sub	r3, r3, #1
8002941c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029420:	e3c3300f 	bic	r3, r3, #15
80029424:	e50b300c 	str	r3, [fp, #-12]
80029428:	e3a02001 	mov	r2, #1
8002942c:	e51b1008 	ldr	r1, [fp, #-8]
80029430:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029434:	ebffffb4 	bl	8002930c <walkpgdir>
80029438:	e50b0010 	str	r0, [fp, #-16]
8002943c:	e51b3010 	ldr	r3, [fp, #-16]
80029440:	e3530000 	cmp	r3, #0
80029444:	1a000001 	bne	80029450 <mappages+0x70>
80029448:	e3e03000 	mvn	r3, #0
8002944c:	ea00001b 	b	800294c0 <mappages+0xe0>
80029450:	e51b3010 	ldr	r3, [fp, #-16]
80029454:	e5933000 	ldr	r3, [r3]
80029458:	e2033003 	and	r3, r3, #3
8002945c:	e3530000 	cmp	r3, #0
80029460:	0a000001 	beq	8002946c <mappages+0x8c>
80029464:	e59f0060 	ldr	r0, [pc, #96]	@ 800294cc <mappages+0xec>
80029468:	ebffe1a1 	bl	80021af4 <panic>
8002946c:	e59b3004 	ldr	r3, [fp, #4]
80029470:	e1a03203 	lsl	r3, r3, #4
80029474:	e2032030 	and	r2, r3, #48	@ 0x30
80029478:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002947c:	e1823003 	orr	r3, r2, r3
80029480:	e383200e 	orr	r2, r3, #14
80029484:	e51b3010 	ldr	r3, [fp, #-16]
80029488:	e5832000 	str	r2, [r3]
8002948c:	e51b2008 	ldr	r2, [fp, #-8]
80029490:	e51b300c 	ldr	r3, [fp, #-12]
80029494:	e1520003 	cmp	r2, r3
80029498:	0a000006 	beq	800294b8 <mappages+0xd8>
8002949c:	e51b3008 	ldr	r3, [fp, #-8]
800294a0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800294a4:	e50b3008 	str	r3, [fp, #-8]
800294a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800294ac:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800294b0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800294b4:	eaffffdb 	b	80029428 <mappages+0x48>
800294b8:	e1a00000 	nop			@ (mov r0, r0)
800294bc:	e3a03000 	mov	r3, #0
800294c0:	e1a00003 	mov	r0, r3
800294c4:	e24bd004 	sub	sp, fp, #4
800294c8:	e8bd8800 	pop	{fp, pc}
800294cc:	8002ae84 	.word	0x8002ae84

800294d0 <flush_tlb>:
800294d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800294d4:	e28db000 	add	fp, sp, #0
800294d8:	e24dd00c 	sub	sp, sp, #12
800294dc:	e3a03000 	mov	r3, #0
800294e0:	e50b3008 	str	r3, [fp, #-8]
800294e4:	e51b3008 	ldr	r3, [fp, #-8]
800294e8:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
800294ec:	e51b3008 	ldr	r3, [fp, #-8]
800294f0:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
800294f4:	e51b3008 	ldr	r3, [fp, #-8]
800294f8:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
800294fc:	e1a00000 	nop			@ (mov r0, r0)
80029500:	e28bd000 	add	sp, fp, #0
80029504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029508:	e12fff1e 	bx	lr

8002950c <switchuvm>:
8002950c:	e92d4800 	push	{fp, lr}
80029510:	e28db004 	add	fp, sp, #4
80029514:	e24dd010 	sub	sp, sp, #16
80029518:	e50b0010 	str	r0, [fp, #-16]
8002951c:	ebffdc42 	bl	8002062c <pushcli>
80029520:	e51b3010 	ldr	r3, [fp, #-16]
80029524:	e5933004 	ldr	r3, [r3, #4]
80029528:	e3530000 	cmp	r3, #0
8002952c:	1a000001 	bne	80029538 <switchuvm+0x2c>
80029530:	e59f002c 	ldr	r0, [pc, #44]	@ 80029564 <switchuvm+0x58>
80029534:	ebffe16e 	bl	80021af4 <panic>
80029538:	e51b3010 	ldr	r3, [fp, #-16]
8002953c:	e5933004 	ldr	r3, [r3, #4]
80029540:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029544:	e50b3008 	str	r3, [fp, #-8]
80029548:	e51b3008 	ldr	r3, [fp, #-8]
8002954c:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80029550:	ebffffde 	bl	800294d0 <flush_tlb>
80029554:	ebffdc49 	bl	80020680 <popcli>
80029558:	e1a00000 	nop			@ (mov r0, r0)
8002955c:	e24bd004 	sub	sp, fp, #4
80029560:	e8bd8800 	pop	{fp, pc}
80029564:	8002ae8c 	.word	0x8002ae8c

80029568 <inituvm>:
80029568:	e92d4800 	push	{fp, lr}
8002956c:	e28db004 	add	fp, sp, #4
80029570:	e24dd020 	sub	sp, sp, #32
80029574:	e50b0010 	str	r0, [fp, #-16]
80029578:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002957c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80029580:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029584:	e3530a01 	cmp	r3, #4096	@ 0x1000
80029588:	3a000001 	bcc	80029594 <inituvm+0x2c>
8002958c:	e59f0054 	ldr	r0, [pc, #84]	@ 800295e8 <inituvm+0x80>
80029590:	ebffe157 	bl	80021af4 <panic>
80029594:	ebffe025 	bl	80021630 <alloc_page>
80029598:	e50b0008 	str	r0, [fp, #-8]
8002959c:	e3a02a01 	mov	r2, #4096	@ 0x1000
800295a0:	e3a01000 	mov	r1, #0
800295a4:	e51b0008 	ldr	r0, [fp, #-8]
800295a8:	ebffda94 	bl	80020000 <memset>
800295ac:	e51b3008 	ldr	r3, [fp, #-8]
800295b0:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800295b4:	e3a02003 	mov	r2, #3
800295b8:	e58d2000 	str	r2, [sp]
800295bc:	e3a02a01 	mov	r2, #4096	@ 0x1000
800295c0:	e3a01000 	mov	r1, #0
800295c4:	e51b0010 	ldr	r0, [fp, #-16]
800295c8:	ebffff84 	bl	800293e0 <mappages>
800295cc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800295d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800295d4:	e51b0008 	ldr	r0, [fp, #-8]
800295d8:	ebffdafa 	bl	800201c8 <memmove>
800295dc:	e1a00000 	nop			@ (mov r0, r0)
800295e0:	e24bd004 	sub	sp, fp, #4
800295e4:	e8bd8800 	pop	{fp, pc}
800295e8:	8002aea0 	.word	0x8002aea0

800295ec <loaduvm>:
800295ec:	e92d4800 	push	{fp, lr}
800295f0:	e28db004 	add	fp, sp, #4
800295f4:	e24dd028 	sub	sp, sp, #40	@ 0x28
800295f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800295fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029600:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029604:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029608:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002960c:	e1a03a03 	lsl	r3, r3, #20
80029610:	e1a03a23 	lsr	r3, r3, #20
80029614:	e3530000 	cmp	r3, #0
80029618:	0a000001 	beq	80029624 <loaduvm+0x38>
8002961c:	e59f0144 	ldr	r0, [pc, #324]	@ 80029768 <loaduvm+0x17c>
80029620:	ebffe133 	bl	80021af4 <panic>
80029624:	e3a03000 	mov	r3, #0
80029628:	e50b3008 	str	r3, [fp, #-8]
8002962c:	ea000045 	b	80029748 <loaduvm+0x15c>
80029630:	ebffdffe 	bl	80021630 <alloc_page>
80029634:	e50b0010 	str	r0, [fp, #-16]
80029638:	e51b3010 	ldr	r3, [fp, #-16]
8002963c:	e3530000 	cmp	r3, #0
80029640:	1a000005 	bne	8002965c <loaduvm+0x70>
80029644:	e3a02000 	mov	r2, #0
80029648:	e59b1004 	ldr	r1, [fp, #4]
8002964c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029650:	eb00005b 	bl	800297c4 <deallocuvm>
80029654:	e3e03000 	mvn	r3, #0
80029658:	ea00003f 	b	8002975c <loaduvm+0x170>
8002965c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029660:	e3a01000 	mov	r1, #0
80029664:	e51b0010 	ldr	r0, [fp, #-16]
80029668:	ebffda64 	bl	80020000 <memset>
8002966c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029670:	e51b3008 	ldr	r3, [fp, #-8]
80029674:	e0821003 	add	r1, r2, r3
80029678:	e51b3010 	ldr	r3, [fp, #-16]
8002967c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029680:	e3a02003 	mov	r2, #3
80029684:	e58d2000 	str	r2, [sp]
80029688:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002968c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029690:	ebffff52 	bl	800293e0 <mappages>
80029694:	e1a03000 	mov	r3, r0
80029698:	e3530000 	cmp	r3, #0
8002969c:	aa000007 	bge	800296c0 <loaduvm+0xd4>
800296a0:	e51b0010 	ldr	r0, [fp, #-16]
800296a4:	ebffdfd7 	bl	80021608 <free_page>
800296a8:	e3a02000 	mov	r2, #0
800296ac:	e59b1004 	ldr	r1, [fp, #4]
800296b0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800296b4:	eb000042 	bl	800297c4 <deallocuvm>
800296b8:	e3e03000 	mvn	r3, #0
800296bc:	ea000026 	b	8002975c <loaduvm+0x170>
800296c0:	e51b3010 	ldr	r3, [fp, #-16]
800296c4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800296c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800296cc:	e59b2004 	ldr	r2, [fp, #4]
800296d0:	e51b3008 	ldr	r3, [fp, #-8]
800296d4:	e0423003 	sub	r3, r2, r3
800296d8:	e3530a01 	cmp	r3, #4096	@ 0x1000
800296dc:	2a000004 	bcs	800296f4 <loaduvm+0x108>
800296e0:	e59b2004 	ldr	r2, [fp, #4]
800296e4:	e51b3008 	ldr	r3, [fp, #-8]
800296e8:	e0423003 	sub	r3, r2, r3
800296ec:	e50b300c 	str	r3, [fp, #-12]
800296f0:	ea000001 	b	800296fc <loaduvm+0x110>
800296f4:	e3a03a01 	mov	r3, #4096	@ 0x1000
800296f8:	e50b300c 	str	r3, [fp, #-12]
800296fc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80029700:	ebfffe89 	bl	8002912c <p2v>
80029704:	e1a01000 	mov	r1, r0
80029708:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002970c:	e51b3008 	ldr	r3, [fp, #-8]
80029710:	e0822003 	add	r2, r2, r3
80029714:	e51b300c 	ldr	r3, [fp, #-12]
80029718:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002971c:	ebffe866 	bl	800238bc <readi>
80029720:	e1a03000 	mov	r3, r0
80029724:	e1a02003 	mov	r2, r3
80029728:	e51b300c 	ldr	r3, [fp, #-12]
8002972c:	e1530002 	cmp	r3, r2
80029730:	0a000001 	beq	8002973c <loaduvm+0x150>
80029734:	e3e03000 	mvn	r3, #0
80029738:	ea000007 	b	8002975c <loaduvm+0x170>
8002973c:	e51b3008 	ldr	r3, [fp, #-8]
80029740:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029744:	e50b3008 	str	r3, [fp, #-8]
80029748:	e51b2008 	ldr	r2, [fp, #-8]
8002974c:	e59b3004 	ldr	r3, [fp, #4]
80029750:	e1520003 	cmp	r2, r3
80029754:	3affffb5 	bcc	80029630 <loaduvm+0x44>
80029758:	e3a03000 	mov	r3, #0
8002975c:	e1a00003 	mov	r0, r3
80029760:	e24bd004 	sub	sp, fp, #4
80029764:	e8bd8800 	pop	{fp, pc}
80029768:	8002aebc 	.word	0x8002aebc

8002976c <allocuvm>:
8002976c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029770:	e28db000 	add	fp, sp, #0
80029774:	e24dd014 	sub	sp, sp, #20
80029778:	e50b0008 	str	r0, [fp, #-8]
8002977c:	e50b100c 	str	r1, [fp, #-12]
80029780:	e50b2010 	str	r2, [fp, #-16]
80029784:	e51b3010 	ldr	r3, [fp, #-16]
80029788:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
8002978c:	9a000001 	bls	80029798 <allocuvm+0x2c>
80029790:	e3a03000 	mov	r3, #0
80029794:	ea000006 	b	800297b4 <allocuvm+0x48>
80029798:	e51b2010 	ldr	r2, [fp, #-16]
8002979c:	e51b300c 	ldr	r3, [fp, #-12]
800297a0:	e1520003 	cmp	r2, r3
800297a4:	2a000001 	bcs	800297b0 <allocuvm+0x44>
800297a8:	e51b300c 	ldr	r3, [fp, #-12]
800297ac:	ea000000 	b	800297b4 <allocuvm+0x48>
800297b0:	e51b3010 	ldr	r3, [fp, #-16]
800297b4:	e1a00003 	mov	r0, r3
800297b8:	e28bd000 	add	sp, fp, #0
800297bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800297c0:	e12fff1e 	bx	lr

800297c4 <deallocuvm>:
800297c4:	e92d4800 	push	{fp, lr}
800297c8:	e28db004 	add	fp, sp, #4
800297cc:	e24dd020 	sub	sp, sp, #32
800297d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800297d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800297d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800297dc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800297e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800297e4:	e1520003 	cmp	r2, r3
800297e8:	3a000001 	bcc	800297f4 <deallocuvm+0x30>
800297ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800297f0:	ea000035 	b	800298cc <deallocuvm+0x108>
800297f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800297f8:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800297fc:	e283300f 	add	r3, r3, #15
80029800:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029804:	e3c3300f 	bic	r3, r3, #15
80029808:	e50b3008 	str	r3, [fp, #-8]
8002980c:	ea000029 	b	800298b8 <deallocuvm+0xf4>
80029810:	e51b3008 	ldr	r3, [fp, #-8]
80029814:	e3a02000 	mov	r2, #0
80029818:	e1a01003 	mov	r1, r3
8002981c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029820:	ebfffeb9 	bl	8002930c <walkpgdir>
80029824:	e50b000c 	str	r0, [fp, #-12]
80029828:	e51b300c 	ldr	r3, [fp, #-12]
8002982c:	e3530000 	cmp	r3, #0
80029830:	1a000006 	bne	80029850 <deallocuvm+0x8c>
80029834:	e51b3008 	ldr	r3, [fp, #-8]
80029838:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
8002983c:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80029840:	e1a03a23 	lsr	r3, r3, #20
80029844:	e1a03a03 	lsl	r3, r3, #20
80029848:	e50b3008 	str	r3, [fp, #-8]
8002984c:	ea000016 	b	800298ac <deallocuvm+0xe8>
80029850:	e51b300c 	ldr	r3, [fp, #-12]
80029854:	e5933000 	ldr	r3, [r3]
80029858:	e2033003 	and	r3, r3, #3
8002985c:	e3530000 	cmp	r3, #0
80029860:	0a000011 	beq	800298ac <deallocuvm+0xe8>
80029864:	e51b300c 	ldr	r3, [fp, #-12]
80029868:	e5933000 	ldr	r3, [r3]
8002986c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029870:	e3c3300f 	bic	r3, r3, #15
80029874:	e50b3010 	str	r3, [fp, #-16]
80029878:	e51b3010 	ldr	r3, [fp, #-16]
8002987c:	e3530000 	cmp	r3, #0
80029880:	1a000001 	bne	8002988c <deallocuvm+0xc8>
80029884:	e59f004c 	ldr	r0, [pc, #76]	@ 800298d8 <deallocuvm+0x114>
80029888:	ebffe099 	bl	80021af4 <panic>
8002988c:	e51b0010 	ldr	r0, [fp, #-16]
80029890:	ebfffe25 	bl	8002912c <p2v>
80029894:	e1a03000 	mov	r3, r0
80029898:	e1a00003 	mov	r0, r3
8002989c:	ebffdf59 	bl	80021608 <free_page>
800298a0:	e51b300c 	ldr	r3, [fp, #-12]
800298a4:	e3a02000 	mov	r2, #0
800298a8:	e5832000 	str	r2, [r3]
800298ac:	e51b3008 	ldr	r3, [fp, #-8]
800298b0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800298b4:	e50b3008 	str	r3, [fp, #-8]
800298b8:	e51b2008 	ldr	r2, [fp, #-8]
800298bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800298c0:	e1520003 	cmp	r2, r3
800298c4:	3affffd1 	bcc	80029810 <deallocuvm+0x4c>
800298c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800298cc:	e1a00003 	mov	r0, r3
800298d0:	e24bd004 	sub	sp, fp, #4
800298d4:	e8bd8800 	pop	{fp, pc}
800298d8:	8002aee0 	.word	0x8002aee0

800298dc <freevm>:
800298dc:	e92d4800 	push	{fp, lr}
800298e0:	e28db004 	add	fp, sp, #4
800298e4:	e24dd010 	sub	sp, sp, #16
800298e8:	e50b0010 	str	r0, [fp, #-16]
800298ec:	e51b3010 	ldr	r3, [fp, #-16]
800298f0:	e3530000 	cmp	r3, #0
800298f4:	1a000001 	bne	80029900 <freevm+0x24>
800298f8:	e59f0098 	ldr	r0, [pc, #152]	@ 80029998 <freevm+0xbc>
800298fc:	ebffe07c 	bl	80021af4 <panic>
80029900:	e3a02000 	mov	r2, #0
80029904:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80029908:	e51b0010 	ldr	r0, [fp, #-16]
8002990c:	ebffffac 	bl	800297c4 <deallocuvm>
80029910:	e3a03000 	mov	r3, #0
80029914:	e50b3008 	str	r3, [fp, #-8]
80029918:	ea000016 	b	80029978 <freevm+0x9c>
8002991c:	e51b3008 	ldr	r3, [fp, #-8]
80029920:	e1a03103 	lsl	r3, r3, #2
80029924:	e51b2010 	ldr	r2, [fp, #-16]
80029928:	e0823003 	add	r3, r2, r3
8002992c:	e5933000 	ldr	r3, [r3]
80029930:	e2033003 	and	r3, r3, #3
80029934:	e3530000 	cmp	r3, #0
80029938:	0a00000b 	beq	8002996c <freevm+0x90>
8002993c:	e51b3008 	ldr	r3, [fp, #-8]
80029940:	e1a03103 	lsl	r3, r3, #2
80029944:	e51b2010 	ldr	r2, [fp, #-16]
80029948:	e0823003 	add	r3, r2, r3
8002994c:	e5933000 	ldr	r3, [r3]
80029950:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80029954:	e3c33003 	bic	r3, r3, #3
80029958:	e1a00003 	mov	r0, r3
8002995c:	ebfffdf2 	bl	8002912c <p2v>
80029960:	e50b000c 	str	r0, [fp, #-12]
80029964:	e51b000c 	ldr	r0, [fp, #-12]
80029968:	ebfffe17 	bl	800291cc <kpt_free>
8002996c:	e51b3008 	ldr	r3, [fp, #-8]
80029970:	e2833001 	add	r3, r3, #1
80029974:	e50b3008 	str	r3, [fp, #-8]
80029978:	e51b3008 	ldr	r3, [fp, #-8]
8002997c:	e35300ff 	cmp	r3, #255	@ 0xff
80029980:	9affffe5 	bls	8002991c <freevm+0x40>
80029984:	e51b0010 	ldr	r0, [fp, #-16]
80029988:	ebfffe0f 	bl	800291cc <kpt_free>
8002998c:	e1a00000 	nop			@ (mov r0, r0)
80029990:	e24bd004 	sub	sp, fp, #4
80029994:	e8bd8800 	pop	{fp, pc}
80029998:	8002aeec 	.word	0x8002aeec

8002999c <clearpteu>:
8002999c:	e92d4800 	push	{fp, lr}
800299a0:	e28db004 	add	fp, sp, #4
800299a4:	e24dd010 	sub	sp, sp, #16
800299a8:	e50b0010 	str	r0, [fp, #-16]
800299ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800299b0:	e3a02000 	mov	r2, #0
800299b4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800299b8:	e51b0010 	ldr	r0, [fp, #-16]
800299bc:	ebfffe52 	bl	8002930c <walkpgdir>
800299c0:	e50b0008 	str	r0, [fp, #-8]
800299c4:	e51b3008 	ldr	r3, [fp, #-8]
800299c8:	e3530000 	cmp	r3, #0
800299cc:	1a000001 	bne	800299d8 <clearpteu+0x3c>
800299d0:	e59f0024 	ldr	r0, [pc, #36]	@ 800299fc <clearpteu+0x60>
800299d4:	ebffe046 	bl	80021af4 <panic>
800299d8:	e51b3008 	ldr	r3, [fp, #-8]
800299dc:	e5933000 	ldr	r3, [r3]
800299e0:	e3c33030 	bic	r3, r3, #48	@ 0x30
800299e4:	e3832010 	orr	r2, r3, #16
800299e8:	e51b3008 	ldr	r3, [fp, #-8]
800299ec:	e5832000 	str	r2, [r3]
800299f0:	e1a00000 	nop			@ (mov r0, r0)
800299f4:	e24bd004 	sub	sp, fp, #4
800299f8:	e8bd8800 	pop	{fp, pc}
800299fc:	8002af00 	.word	0x8002af00

80029a00 <copyuvm>:
80029a00:	e92d4800 	push	{fp, lr}
80029a04:	e28db004 	add	fp, sp, #4
80029a08:	e24dd028 	sub	sp, sp, #40	@ 0x28
80029a0c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80029a10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80029a14:	ebfffe16 	bl	80029274 <kpt_alloc>
80029a18:	e50b000c 	str	r0, [fp, #-12]
80029a1c:	e51b300c 	ldr	r3, [fp, #-12]
80029a20:	e3530000 	cmp	r3, #0
80029a24:	1a000001 	bne	80029a30 <copyuvm+0x30>
80029a28:	e3a03000 	mov	r3, #0
80029a2c:	ea000043 	b	80029b40 <copyuvm+0x140>
80029a30:	e3a03000 	mov	r3, #0
80029a34:	e50b3008 	str	r3, [fp, #-8]
80029a38:	ea000036 	b	80029b18 <copyuvm+0x118>
80029a3c:	e51b3008 	ldr	r3, [fp, #-8]
80029a40:	e3a02000 	mov	r2, #0
80029a44:	e1a01003 	mov	r1, r3
80029a48:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80029a4c:	ebfffe2e 	bl	8002930c <walkpgdir>
80029a50:	e50b0010 	str	r0, [fp, #-16]
80029a54:	e51b3010 	ldr	r3, [fp, #-16]
80029a58:	e3530000 	cmp	r3, #0
80029a5c:	0a000029 	beq	80029b08 <copyuvm+0x108>
80029a60:	e51b3010 	ldr	r3, [fp, #-16]
80029a64:	e5933000 	ldr	r3, [r3]
80029a68:	e2033003 	and	r3, r3, #3
80029a6c:	e3530000 	cmp	r3, #0
80029a70:	0a000024 	beq	80029b08 <copyuvm+0x108>
80029a74:	e51b3010 	ldr	r3, [fp, #-16]
80029a78:	e5933000 	ldr	r3, [r3]
80029a7c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029a80:	e3c3300f 	bic	r3, r3, #15
80029a84:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029a88:	e51b3010 	ldr	r3, [fp, #-16]
80029a8c:	e5933000 	ldr	r3, [r3]
80029a90:	e1a03223 	lsr	r3, r3, #4
80029a94:	e2033003 	and	r3, r3, #3
80029a98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80029a9c:	ebffdee3 	bl	80021630 <alloc_page>
80029aa0:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
80029aa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029aa8:	e3530000 	cmp	r3, #0
80029aac:	0a00001f 	beq	80029b30 <copyuvm+0x130>
80029ab0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80029ab4:	ebfffd9c 	bl	8002912c <p2v>
80029ab8:	e1a03000 	mov	r3, r0
80029abc:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029ac0:	e1a01003 	mov	r1, r3
80029ac4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80029ac8:	ebffd9be 	bl	800201c8 <memmove>
80029acc:	e51b1008 	ldr	r1, [fp, #-8]
80029ad0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029ad4:	e2832102 	add	r2, r3, #-2147483648	@ 0x80000000
80029ad8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029adc:	e58d3000 	str	r3, [sp]
80029ae0:	e1a03002 	mov	r3, r2
80029ae4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029ae8:	e51b000c 	ldr	r0, [fp, #-12]
80029aec:	ebfffe3b 	bl	800293e0 <mappages>
80029af0:	e1a03000 	mov	r3, r0
80029af4:	e3530000 	cmp	r3, #0
80029af8:	aa000003 	bge	80029b0c <copyuvm+0x10c>
80029afc:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80029b00:	ebffdec0 	bl	80021608 <free_page>
80029b04:	ea00000a 	b	80029b34 <copyuvm+0x134>
80029b08:	e1a00000 	nop			@ (mov r0, r0)
80029b0c:	e51b3008 	ldr	r3, [fp, #-8]
80029b10:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029b14:	e50b3008 	str	r3, [fp, #-8]
80029b18:	e51b2008 	ldr	r2, [fp, #-8]
80029b1c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029b20:	e1520003 	cmp	r2, r3
80029b24:	3affffc4 	bcc	80029a3c <copyuvm+0x3c>
80029b28:	e51b300c 	ldr	r3, [fp, #-12]
80029b2c:	ea000003 	b	80029b40 <copyuvm+0x140>
80029b30:	e1a00000 	nop			@ (mov r0, r0)
80029b34:	e51b000c 	ldr	r0, [fp, #-12]
80029b38:	ebffff67 	bl	800298dc <freevm>
80029b3c:	e3a03000 	mov	r3, #0
80029b40:	e1a00003 	mov	r0, r3
80029b44:	e24bd004 	sub	sp, fp, #4
80029b48:	e8bd8800 	pop	{fp, pc}

80029b4c <uva2ka>:
80029b4c:	e92d4800 	push	{fp, lr}
80029b50:	e28db004 	add	fp, sp, #4
80029b54:	e24dd010 	sub	sp, sp, #16
80029b58:	e50b0010 	str	r0, [fp, #-16]
80029b5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029b60:	e3a02000 	mov	r2, #0
80029b64:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029b68:	e51b0010 	ldr	r0, [fp, #-16]
80029b6c:	ebfffde6 	bl	8002930c <walkpgdir>
80029b70:	e50b0008 	str	r0, [fp, #-8]
80029b74:	e51b3008 	ldr	r3, [fp, #-8]
80029b78:	e5933000 	ldr	r3, [r3]
80029b7c:	e2033003 	and	r3, r3, #3
80029b80:	e3530000 	cmp	r3, #0
80029b84:	1a000001 	bne	80029b90 <uva2ka+0x44>
80029b88:	e3a03000 	mov	r3, #0
80029b8c:	ea00000e 	b	80029bcc <uva2ka+0x80>
80029b90:	e51b3008 	ldr	r3, [fp, #-8]
80029b94:	e5933000 	ldr	r3, [r3]
80029b98:	e2033030 	and	r3, r3, #48	@ 0x30
80029b9c:	e3530030 	cmp	r3, #48	@ 0x30
80029ba0:	0a000001 	beq	80029bac <uva2ka+0x60>
80029ba4:	e3a03000 	mov	r3, #0
80029ba8:	ea000007 	b	80029bcc <uva2ka+0x80>
80029bac:	e51b3008 	ldr	r3, [fp, #-8]
80029bb0:	e5933000 	ldr	r3, [r3]
80029bb4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029bb8:	e3c3300f 	bic	r3, r3, #15
80029bbc:	e1a00003 	mov	r0, r3
80029bc0:	ebfffd59 	bl	8002912c <p2v>
80029bc4:	e1a03000 	mov	r3, r0
80029bc8:	e1a00000 	nop			@ (mov r0, r0)
80029bcc:	e1a00003 	mov	r0, r3
80029bd0:	e24bd004 	sub	sp, fp, #4
80029bd4:	e8bd8800 	pop	{fp, pc}

80029bd8 <copyout>:
80029bd8:	e92d4800 	push	{fp, lr}
80029bdc:	e28db004 	add	fp, sp, #4
80029be0:	e24dd020 	sub	sp, sp, #32
80029be4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029be8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029bec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029bf0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029bf4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029bf8:	e50b3008 	str	r3, [fp, #-8]
80029bfc:	ea00002c 	b	80029cb4 <copyout+0xdc>
80029c00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029c04:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029c08:	e3c3300f 	bic	r3, r3, #15
80029c0c:	e50b3010 	str	r3, [fp, #-16]
80029c10:	e51b3010 	ldr	r3, [fp, #-16]
80029c14:	e1a01003 	mov	r1, r3
80029c18:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029c1c:	ebffffca 	bl	80029b4c <uva2ka>
80029c20:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80029c24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029c28:	e3530000 	cmp	r3, #0
80029c2c:	1a000001 	bne	80029c38 <copyout+0x60>
80029c30:	e3e03000 	mvn	r3, #0
80029c34:	ea000022 	b	80029cc4 <copyout+0xec>
80029c38:	e51b2010 	ldr	r2, [fp, #-16]
80029c3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029c40:	e0423003 	sub	r3, r2, r3
80029c44:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029c48:	e50b300c 	str	r3, [fp, #-12]
80029c4c:	e51b200c 	ldr	r2, [fp, #-12]
80029c50:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029c54:	e1520003 	cmp	r2, r3
80029c58:	9a000001 	bls	80029c64 <copyout+0x8c>
80029c5c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029c60:	e50b300c 	str	r3, [fp, #-12]
80029c64:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029c68:	e51b3010 	ldr	r3, [fp, #-16]
80029c6c:	e0423003 	sub	r3, r2, r3
80029c70:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80029c74:	e0823003 	add	r3, r2, r3
80029c78:	e51b200c 	ldr	r2, [fp, #-12]
80029c7c:	e51b1008 	ldr	r1, [fp, #-8]
80029c80:	e1a00003 	mov	r0, r3
80029c84:	ebffd94f 	bl	800201c8 <memmove>
80029c88:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80029c8c:	e51b300c 	ldr	r3, [fp, #-12]
80029c90:	e0423003 	sub	r3, r2, r3
80029c94:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029c98:	e51b2008 	ldr	r2, [fp, #-8]
80029c9c:	e51b300c 	ldr	r3, [fp, #-12]
80029ca0:	e0823003 	add	r3, r2, r3
80029ca4:	e50b3008 	str	r3, [fp, #-8]
80029ca8:	e51b3010 	ldr	r3, [fp, #-16]
80029cac:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029cb0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80029cb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029cb8:	e3530000 	cmp	r3, #0
80029cbc:	1affffcf 	bne	80029c00 <copyout+0x28>
80029cc0:	e3a03000 	mov	r3, #0
80029cc4:	e1a00003 	mov	r0, r3
80029cc8:	e24bd004 	sub	sp, fp, #4
80029ccc:	e8bd8800 	pop	{fp, pc}

80029cd0 <paging_init>:
80029cd0:	e92d4800 	push	{fp, lr}
80029cd4:	e28db004 	add	fp, sp, #4
80029cd8:	e24dd010 	sub	sp, sp, #16
80029cdc:	e50b0008 	str	r0, [fp, #-8]
80029ce0:	e50b100c 	str	r1, [fp, #-12]
80029ce4:	e59f0034 	ldr	r0, [pc, #52]	@ 80029d20 <paging_init+0x50>
80029ce8:	e51b3008 	ldr	r3, [fp, #-8]
80029cec:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029cf0:	e1a01003 	mov	r1, r3
80029cf4:	e51b200c 	ldr	r2, [fp, #-12]
80029cf8:	e51b3008 	ldr	r3, [fp, #-8]
80029cfc:	e0422003 	sub	r2, r2, r3
80029d00:	e3a03003 	mov	r3, #3
80029d04:	e58d3000 	str	r3, [sp]
80029d08:	e51b3008 	ldr	r3, [fp, #-8]
80029d0c:	ebfffdb3 	bl	800293e0 <mappages>
80029d10:	ebfffdee 	bl	800294d0 <flush_tlb>
80029d14:	e1a00000 	nop			@ (mov r0, r0)
80029d18:	e24bd004 	sub	sp, fp, #4
80029d1c:	e8bd8800 	pop	{fp, pc}
80029d20:	80014000 	.word	0x80014000

80029d24 <barrier_init>:
80029d24:	e92d4800 	push	{fp, lr}
80029d28:	e28db004 	add	fp, sp, #4
80029d2c:	e24dd008 	sub	sp, sp, #8
80029d30:	e50b0008 	str	r0, [fp, #-8]
80029d34:	e59f003c 	ldr	r0, [pc, #60]	@ 80029d78 <barrier_init+0x54>
80029d38:	ebfff2c4 	bl	80026850 <acquire>
80029d3c:	e59f2038 	ldr	r2, [pc, #56]	@ 80029d7c <barrier_init+0x58>
80029d40:	e51b3008 	ldr	r3, [fp, #-8]
80029d44:	e5823000 	str	r3, [r2]
80029d48:	e59f3030 	ldr	r3, [pc, #48]	@ 80029d80 <barrier_init+0x5c>
80029d4c:	e3a02000 	mov	r2, #0
80029d50:	e5832000 	str	r2, [r3]
80029d54:	e59f3028 	ldr	r3, [pc, #40]	@ 80029d84 <barrier_init+0x60>
80029d58:	e3a02001 	mov	r2, #1
80029d5c:	e5832000 	str	r2, [r3]
80029d60:	e59f0010 	ldr	r0, [pc, #16]	@ 80029d78 <barrier_init+0x54>
80029d64:	ebfff2c4 	bl	8002687c <release>
80029d68:	e3a03000 	mov	r3, #0
80029d6c:	e1a00003 	mov	r0, r3
80029d70:	e24bd004 	sub	sp, fp, #4
80029d74:	e8bd8800 	pop	{fp, pc}
80029d78:	800b0fd4 	.word	0x800b0fd4
80029d7c:	800b100c 	.word	0x800b100c
80029d80:	800b1008 	.word	0x800b1008
80029d84:	800b1010 	.word	0x800b1010

80029d88 <barrier_check>:
80029d88:	e92d4800 	push	{fp, lr}
80029d8c:	e28db004 	add	fp, sp, #4
80029d90:	e59f008c 	ldr	r0, [pc, #140]	@ 80029e24 <barrier_check+0x9c>
80029d94:	ebfff2ad 	bl	80026850 <acquire>
80029d98:	e59f3088 	ldr	r3, [pc, #136]	@ 80029e28 <barrier_check+0xa0>
80029d9c:	e5933000 	ldr	r3, [r3]
80029da0:	e3530000 	cmp	r3, #0
80029da4:	1a000003 	bne	80029db8 <barrier_check+0x30>
80029da8:	e59f0074 	ldr	r0, [pc, #116]	@ 80029e24 <barrier_check+0x9c>
80029dac:	ebfff2b2 	bl	8002687c <release>
80029db0:	e3e03000 	mvn	r3, #0
80029db4:	ea000018 	b	80029e1c <barrier_check+0x94>
80029db8:	e59f306c 	ldr	r3, [pc, #108]	@ 80029e2c <barrier_check+0xa4>
80029dbc:	e5933000 	ldr	r3, [r3]
80029dc0:	e2833001 	add	r3, r3, #1
80029dc4:	e59f2060 	ldr	r2, [pc, #96]	@ 80029e2c <barrier_check+0xa4>
80029dc8:	e5823000 	str	r3, [r2]
80029dcc:	e59f3058 	ldr	r3, [pc, #88]	@ 80029e2c <barrier_check+0xa4>
80029dd0:	e5932000 	ldr	r2, [r3]
80029dd4:	e59f3054 	ldr	r3, [pc, #84]	@ 80029e30 <barrier_check+0xa8>
80029dd8:	e5933000 	ldr	r3, [r3]
80029ddc:	e1520003 	cmp	r2, r3
80029de0:	aa000005 	bge	80029dfc <barrier_check+0x74>
80029de4:	e59f1038 	ldr	r1, [pc, #56]	@ 80029e24 <barrier_check+0x9c>
80029de8:	e59f003c 	ldr	r0, [pc, #60]	@ 80029e2c <barrier_check+0xa4>
80029dec:	ebffefb5 	bl	80025cc8 <sleep>
80029df0:	e59f002c 	ldr	r0, [pc, #44]	@ 80029e24 <barrier_check+0x9c>
80029df4:	ebfff2a0 	bl	8002687c <release>
80029df8:	ea000006 	b	80029e18 <barrier_check+0x90>
80029dfc:	e59f0028 	ldr	r0, [pc, #40]	@ 80029e2c <barrier_check+0xa4>
80029e00:	ebfff024 	bl	80025e98 <wakeup>
80029e04:	e59f3020 	ldr	r3, [pc, #32]	@ 80029e2c <barrier_check+0xa4>
80029e08:	e3a02000 	mov	r2, #0
80029e0c:	e5832000 	str	r2, [r3]
80029e10:	e59f000c 	ldr	r0, [pc, #12]	@ 80029e24 <barrier_check+0x9c>
80029e14:	ebfff298 	bl	8002687c <release>
80029e18:	e3a03000 	mov	r3, #0
80029e1c:	e1a00003 	mov	r0, r3
80029e20:	e8bd8800 	pop	{fp, pc}
80029e24:	800b0fd4 	.word	0x800b0fd4
80029e28:	800b1010 	.word	0x800b1010
80029e2c:	800b1008 	.word	0x800b1008
80029e30:	800b100c 	.word	0x800b100c

80029e34 <default_isr>:
80029e34:	e92d4800 	push	{fp, lr}
80029e38:	e28db004 	add	fp, sp, #4
80029e3c:	e24dd008 	sub	sp, sp, #8
80029e40:	e50b0008 	str	r0, [fp, #-8]
80029e44:	e50b100c 	str	r1, [fp, #-12]
80029e48:	e51b100c 	ldr	r1, [fp, #-12]
80029e4c:	e59f000c 	ldr	r0, [pc, #12]	@ 80029e60 <default_isr+0x2c>
80029e50:	ebffde8f 	bl	80021894 <cprintf>
80029e54:	e1a00000 	nop			@ (mov r0, r0)
80029e58:	e24bd004 	sub	sp, fp, #4
80029e5c:	e8bd8800 	pop	{fp, pc}
80029e60:	8002af0c 	.word	0x8002af0c

80029e64 <pic_init>:
80029e64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029e68:	e28db000 	add	fp, sp, #0
80029e6c:	e24dd014 	sub	sp, sp, #20
80029e70:	e50b0010 	str	r0, [fp, #-16]
80029e74:	e59f2060 	ldr	r2, [pc, #96]	@ 80029edc <pic_init+0x78>
80029e78:	e51b3010 	ldr	r3, [fp, #-16]
80029e7c:	e5823000 	str	r3, [r2]
80029e80:	e59f3054 	ldr	r3, [pc, #84]	@ 80029edc <pic_init+0x78>
80029e84:	e5933000 	ldr	r3, [r3]
80029e88:	e2833014 	add	r3, r3, #20
80029e8c:	e3e02000 	mvn	r2, #0
80029e90:	e5832000 	str	r2, [r3]
80029e94:	e3a03000 	mov	r3, #0
80029e98:	e50b3008 	str	r3, [fp, #-8]
80029e9c:	ea000006 	b	80029ebc <pic_init+0x58>
80029ea0:	e59f2038 	ldr	r2, [pc, #56]	@ 80029ee0 <pic_init+0x7c>
80029ea4:	e51b3008 	ldr	r3, [fp, #-8]
80029ea8:	e59f1034 	ldr	r1, [pc, #52]	@ 80029ee4 <pic_init+0x80>
80029eac:	e7821103 	str	r1, [r2, r3, lsl #2]
80029eb0:	e51b3008 	ldr	r3, [fp, #-8]
80029eb4:	e2833001 	add	r3, r3, #1
80029eb8:	e50b3008 	str	r3, [fp, #-8]
80029ebc:	e51b3008 	ldr	r3, [fp, #-8]
80029ec0:	e353001f 	cmp	r3, #31
80029ec4:	dafffff5 	ble	80029ea0 <pic_init+0x3c>
80029ec8:	e1a00000 	nop			@ (mov r0, r0)
80029ecc:	e1a00000 	nop			@ (mov r0, r0)
80029ed0:	e28bd000 	add	sp, fp, #0
80029ed4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029ed8:	e12fff1e 	bx	lr
80029edc:	800b1014 	.word	0x800b1014
80029ee0:	800b1018 	.word	0x800b1018
80029ee4:	80029e34 	.word	0x80029e34

80029ee8 <pic_enable>:
80029ee8:	e92d4800 	push	{fp, lr}
80029eec:	e28db004 	add	fp, sp, #4
80029ef0:	e24dd008 	sub	sp, sp, #8
80029ef4:	e50b0008 	str	r0, [fp, #-8]
80029ef8:	e50b100c 	str	r1, [fp, #-12]
80029efc:	e51b3008 	ldr	r3, [fp, #-8]
80029f00:	e3530000 	cmp	r3, #0
80029f04:	ba000002 	blt	80029f14 <pic_enable+0x2c>
80029f08:	e51b3008 	ldr	r3, [fp, #-8]
80029f0c:	e353001f 	cmp	r3, #31
80029f10:	da000001 	ble	80029f1c <pic_enable+0x34>
80029f14:	e59f0038 	ldr	r0, [pc, #56]	@ 80029f54 <pic_enable+0x6c>
80029f18:	ebffdef5 	bl	80021af4 <panic>
80029f1c:	e59f1034 	ldr	r1, [pc, #52]	@ 80029f58 <pic_enable+0x70>
80029f20:	e51b3008 	ldr	r3, [fp, #-8]
80029f24:	e51b200c 	ldr	r2, [fp, #-12]
80029f28:	e7812103 	str	r2, [r1, r3, lsl #2]
80029f2c:	e3a02001 	mov	r2, #1
80029f30:	e51b3008 	ldr	r3, [fp, #-8]
80029f34:	e1a02312 	lsl	r2, r2, r3
80029f38:	e59f301c 	ldr	r3, [pc, #28]	@ 80029f5c <pic_enable+0x74>
80029f3c:	e5933000 	ldr	r3, [r3]
80029f40:	e2833010 	add	r3, r3, #16
80029f44:	e5832000 	str	r2, [r3]
80029f48:	e1a00000 	nop			@ (mov r0, r0)
80029f4c:	e24bd004 	sub	sp, fp, #4
80029f50:	e8bd8800 	pop	{fp, pc}
80029f54:	8002af28 	.word	0x8002af28
80029f58:	800b1018 	.word	0x800b1018
80029f5c:	800b1014 	.word	0x800b1014

80029f60 <pic_disable>:
80029f60:	e92d4800 	push	{fp, lr}
80029f64:	e28db004 	add	fp, sp, #4
80029f68:	e24dd008 	sub	sp, sp, #8
80029f6c:	e50b0008 	str	r0, [fp, #-8]
80029f70:	e51b3008 	ldr	r3, [fp, #-8]
80029f74:	e3530000 	cmp	r3, #0
80029f78:	ba000002 	blt	80029f88 <pic_disable+0x28>
80029f7c:	e51b3008 	ldr	r3, [fp, #-8]
80029f80:	e353001f 	cmp	r3, #31
80029f84:	da000001 	ble	80029f90 <pic_disable+0x30>
80029f88:	e59f0038 	ldr	r0, [pc, #56]	@ 80029fc8 <pic_disable+0x68>
80029f8c:	ebffded8 	bl	80021af4 <panic>
80029f90:	e3a02001 	mov	r2, #1
80029f94:	e51b3008 	ldr	r3, [fp, #-8]
80029f98:	e1a02312 	lsl	r2, r2, r3
80029f9c:	e59f3028 	ldr	r3, [pc, #40]	@ 80029fcc <pic_disable+0x6c>
80029fa0:	e5933000 	ldr	r3, [r3]
80029fa4:	e2833014 	add	r3, r3, #20
80029fa8:	e5832000 	str	r2, [r3]
80029fac:	e59f201c 	ldr	r2, [pc, #28]	@ 80029fd0 <pic_disable+0x70>
80029fb0:	e51b3008 	ldr	r3, [fp, #-8]
80029fb4:	e59f1018 	ldr	r1, [pc, #24]	@ 80029fd4 <pic_disable+0x74>
80029fb8:	e7821103 	str	r1, [r2, r3, lsl #2]
80029fbc:	e1a00000 	nop			@ (mov r0, r0)
80029fc0:	e24bd004 	sub	sp, fp, #4
80029fc4:	e8bd8800 	pop	{fp, pc}
80029fc8:	8002af28 	.word	0x8002af28
80029fcc:	800b1014 	.word	0x800b1014
80029fd0:	800b1018 	.word	0x800b1018
80029fd4:	80029e34 	.word	0x80029e34

80029fd8 <pic_dispatch>:
80029fd8:	e92d4800 	push	{fp, lr}
80029fdc:	e28db004 	add	fp, sp, #4
80029fe0:	e24dd010 	sub	sp, sp, #16
80029fe4:	e50b0010 	str	r0, [fp, #-16]
80029fe8:	e59f3080 	ldr	r3, [pc, #128]	@ 8002a070 <pic_dispatch+0x98>
80029fec:	e5933000 	ldr	r3, [r3]
80029ff0:	e5933000 	ldr	r3, [r3]
80029ff4:	e50b300c 	str	r3, [fp, #-12]
80029ff8:	e3a03000 	mov	r3, #0
80029ffc:	e50b3008 	str	r3, [fp, #-8]
8002a000:	ea000010 	b	8002a048 <pic_dispatch+0x70>
8002a004:	e3a02001 	mov	r2, #1
8002a008:	e51b3008 	ldr	r3, [fp, #-8]
8002a00c:	e1a03312 	lsl	r3, r2, r3
8002a010:	e1a02003 	mov	r2, r3
8002a014:	e51b300c 	ldr	r3, [fp, #-12]
8002a018:	e0033002 	and	r3, r3, r2
8002a01c:	e3530000 	cmp	r3, #0
8002a020:	0a000005 	beq	8002a03c <pic_dispatch+0x64>
8002a024:	e59f2048 	ldr	r2, [pc, #72]	@ 8002a074 <pic_dispatch+0x9c>
8002a028:	e51b3008 	ldr	r3, [fp, #-8]
8002a02c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002a030:	e51b1008 	ldr	r1, [fp, #-8]
8002a034:	e51b0010 	ldr	r0, [fp, #-16]
8002a038:	e12fff33 	blx	r3
8002a03c:	e51b3008 	ldr	r3, [fp, #-8]
8002a040:	e2833001 	add	r3, r3, #1
8002a044:	e50b3008 	str	r3, [fp, #-8]
8002a048:	e51b3008 	ldr	r3, [fp, #-8]
8002a04c:	e353001f 	cmp	r3, #31
8002a050:	daffffeb 	ble	8002a004 <pic_dispatch+0x2c>
8002a054:	e59f3014 	ldr	r3, [pc, #20]	@ 8002a070 <pic_dispatch+0x98>
8002a058:	e5933000 	ldr	r3, [r3]
8002a05c:	e5933000 	ldr	r3, [r3]
8002a060:	e50b300c 	str	r3, [fp, #-12]
8002a064:	e1a00000 	nop			@ (mov r0, r0)
8002a068:	e24bd004 	sub	sp, fp, #4
8002a06c:	e8bd8800 	pop	{fp, pc}
8002a070:	800b1014 	.word	0x800b1014
8002a074:	800b1018 	.word	0x800b1018

8002a078 <ack_timer>:
8002a078:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a07c:	e28db000 	add	fp, sp, #0
8002a080:	e24dd00c 	sub	sp, sp, #12
8002a084:	e59f3020 	ldr	r3, [pc, #32]	@ 8002a0ac <ack_timer+0x34>
8002a088:	e50b3008 	str	r3, [fp, #-8]
8002a08c:	e51b3008 	ldr	r3, [fp, #-8]
8002a090:	e283300c 	add	r3, r3, #12
8002a094:	e3a02001 	mov	r2, #1
8002a098:	e5832000 	str	r2, [r3]
8002a09c:	e1a00000 	nop			@ (mov r0, r0)
8002a0a0:	e28bd000 	add	sp, fp, #0
8002a0a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a0a8:	e12fff1e 	bx	lr
8002a0ac:	901e2000 	.word	0x901e2000

8002a0b0 <timer_init>:
8002a0b0:	e92d4800 	push	{fp, lr}
8002a0b4:	e28db004 	add	fp, sp, #4
8002a0b8:	e24dd010 	sub	sp, sp, #16
8002a0bc:	e50b0010 	str	r0, [fp, #-16]
8002a0c0:	e59f3050 	ldr	r3, [pc, #80]	@ 8002a118 <timer_init+0x68>
8002a0c4:	e50b3008 	str	r3, [fp, #-8]
8002a0c8:	e59f104c 	ldr	r1, [pc, #76]	@ 8002a11c <timer_init+0x6c>
8002a0cc:	e59f004c 	ldr	r0, [pc, #76]	@ 8002a120 <timer_init+0x70>
8002a0d0:	ebfff1cc 	bl	80026808 <initlock>
8002a0d4:	e51b1010 	ldr	r1, [fp, #-16]
8002a0d8:	e59f0044 	ldr	r0, [pc, #68]	@ 8002a124 <timer_init+0x74>
8002a0dc:	eb000109 	bl	8002a508 <__divsi3>
8002a0e0:	e1a03000 	mov	r3, r0
8002a0e4:	e1a02003 	mov	r2, r3
8002a0e8:	e51b3008 	ldr	r3, [fp, #-8]
8002a0ec:	e5832000 	str	r2, [r3]
8002a0f0:	e51b3008 	ldr	r3, [fp, #-8]
8002a0f4:	e2833008 	add	r3, r3, #8
8002a0f8:	e3a020e2 	mov	r2, #226	@ 0xe2
8002a0fc:	e5832000 	str	r2, [r3]
8002a100:	e59f1020 	ldr	r1, [pc, #32]	@ 8002a128 <timer_init+0x78>
8002a104:	e3a00004 	mov	r0, #4
8002a108:	ebffff76 	bl	80029ee8 <pic_enable>
8002a10c:	e1a00000 	nop			@ (mov r0, r0)
8002a110:	e24bd004 	sub	sp, fp, #4
8002a114:	e8bd8800 	pop	{fp, pc}
8002a118:	901e2000 	.word	0x901e2000
8002a11c:	8002af44 	.word	0x8002af44
8002a120:	800b1098 	.word	0x800b1098
8002a124:	000f4240 	.word	0x000f4240
8002a128:	8002a12c 	.word	0x8002a12c

8002a12c <isr_timer>:
8002a12c:	e92d4800 	push	{fp, lr}
8002a130:	e28db004 	add	fp, sp, #4
8002a134:	e24dd008 	sub	sp, sp, #8
8002a138:	e50b0008 	str	r0, [fp, #-8]
8002a13c:	e50b100c 	str	r1, [fp, #-12]
8002a140:	e59f0034 	ldr	r0, [pc, #52]	@ 8002a17c <isr_timer+0x50>
8002a144:	ebfff1c1 	bl	80026850 <acquire>
8002a148:	e59f3030 	ldr	r3, [pc, #48]	@ 8002a180 <isr_timer+0x54>
8002a14c:	e5933000 	ldr	r3, [r3]
8002a150:	e2833001 	add	r3, r3, #1
8002a154:	e59f2024 	ldr	r2, [pc, #36]	@ 8002a180 <isr_timer+0x54>
8002a158:	e5823000 	str	r3, [r2]
8002a15c:	e59f001c 	ldr	r0, [pc, #28]	@ 8002a180 <isr_timer+0x54>
8002a160:	ebffef4c 	bl	80025e98 <wakeup>
8002a164:	e59f0010 	ldr	r0, [pc, #16]	@ 8002a17c <isr_timer+0x50>
8002a168:	ebfff1c3 	bl	8002687c <release>
8002a16c:	ebffffc1 	bl	8002a078 <ack_timer>
8002a170:	e1a00000 	nop			@ (mov r0, r0)
8002a174:	e24bd004 	sub	sp, fp, #4
8002a178:	e8bd8800 	pop	{fp, pc}
8002a17c:	800b1098 	.word	0x800b1098
8002a180:	800b10cc 	.word	0x800b10cc

8002a184 <micro_delay>:
8002a184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a188:	e28db000 	add	fp, sp, #0
8002a18c:	e24dd014 	sub	sp, sp, #20
8002a190:	e50b0010 	str	r0, [fp, #-16]
8002a194:	e59f3054 	ldr	r3, [pc, #84]	@ 8002a1f0 <micro_delay+0x6c>
8002a198:	e50b3008 	str	r3, [fp, #-8]
8002a19c:	e51b3008 	ldr	r3, [fp, #-8]
8002a1a0:	e2833008 	add	r3, r3, #8
8002a1a4:	e3a02082 	mov	r2, #130	@ 0x82
8002a1a8:	e5832000 	str	r2, [r3]
8002a1ac:	e51b2010 	ldr	r2, [fp, #-16]
8002a1b0:	e51b3008 	ldr	r3, [fp, #-8]
8002a1b4:	e5832000 	str	r2, [r3]
8002a1b8:	e1a00000 	nop			@ (mov r0, r0)
8002a1bc:	e51b3008 	ldr	r3, [fp, #-8]
8002a1c0:	e2833004 	add	r3, r3, #4
8002a1c4:	e5933000 	ldr	r3, [r3]
8002a1c8:	e3530000 	cmp	r3, #0
8002a1cc:	cafffffa 	bgt	8002a1bc <micro_delay+0x38>
8002a1d0:	e51b3008 	ldr	r3, [fp, #-8]
8002a1d4:	e2833008 	add	r3, r3, #8
8002a1d8:	e3a02000 	mov	r2, #0
8002a1dc:	e5832000 	str	r2, [r3]
8002a1e0:	e1a00000 	nop			@ (mov r0, r0)
8002a1e4:	e28bd000 	add	sp, fp, #0
8002a1e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a1ec:	e12fff1e 	bx	lr
8002a1f0:	901e2020 	.word	0x901e2020

8002a1f4 <uart_init>:
8002a1f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a1f8:	e28db000 	add	fp, sp, #0
8002a1fc:	e24dd014 	sub	sp, sp, #20
8002a200:	e50b0010 	str	r0, [fp, #-16]
8002a204:	e59f20a4 	ldr	r2, [pc, #164]	@ 8002a2b0 <uart_init+0xbc>
8002a208:	e51b3010 	ldr	r3, [fp, #-16]
8002a20c:	e5823000 	str	r3, [r2]
8002a210:	e59f3098 	ldr	r3, [pc, #152]	@ 8002a2b0 <uart_init+0xbc>
8002a214:	e5933000 	ldr	r3, [r3]
8002a218:	e2833024 	add	r3, r3, #36	@ 0x24
8002a21c:	e3a0204e 	mov	r2, #78	@ 0x4e
8002a220:	e5832000 	str	r2, [r3]
8002a224:	e3a03c96 	mov	r3, #38400	@ 0x9600
8002a228:	e50b3008 	str	r3, [fp, #-8]
8002a22c:	e51b3008 	ldr	r3, [fp, #-8]
8002a230:	e2833e96 	add	r3, r3, #2400	@ 0x960
8002a234:	e1a02103 	lsl	r2, r3, #2
8002a238:	e59f3070 	ldr	r3, [pc, #112]	@ 8002a2b0 <uart_init+0xbc>
8002a23c:	e5933000 	ldr	r3, [r3]
8002a240:	e2833028 	add	r3, r3, #40	@ 0x28
8002a244:	e59f1068 	ldr	r1, [pc, #104]	@ 8002a2b4 <uart_init+0xc0>
8002a248:	e0821291 	umull	r1, r2, r1, r2
8002a24c:	e1a025a2 	lsr	r2, r2, #11
8002a250:	e5832000 	str	r2, [r3]
8002a254:	e59f3054 	ldr	r3, [pc, #84]	@ 8002a2b0 <uart_init+0xbc>
8002a258:	e5933000 	ldr	r3, [r3]
8002a25c:	e2833030 	add	r3, r3, #48	@ 0x30
8002a260:	e5933000 	ldr	r3, [r3]
8002a264:	e59f2044 	ldr	r2, [pc, #68]	@ 8002a2b0 <uart_init+0xbc>
8002a268:	e5922000 	ldr	r2, [r2]
8002a26c:	e2822030 	add	r2, r2, #48	@ 0x30
8002a270:	e3833c03 	orr	r3, r3, #768	@ 0x300
8002a274:	e3833001 	orr	r3, r3, #1
8002a278:	e5823000 	str	r3, [r2]
8002a27c:	e59f302c 	ldr	r3, [pc, #44]	@ 8002a2b0 <uart_init+0xbc>
8002a280:	e5933000 	ldr	r3, [r3]
8002a284:	e283302c 	add	r3, r3, #44	@ 0x2c
8002a288:	e5932000 	ldr	r2, [r3]
8002a28c:	e59f301c 	ldr	r3, [pc, #28]	@ 8002a2b0 <uart_init+0xbc>
8002a290:	e5933000 	ldr	r3, [r3]
8002a294:	e283302c 	add	r3, r3, #44	@ 0x2c
8002a298:	e3822010 	orr	r2, r2, #16
8002a29c:	e5832000 	str	r2, [r3]
8002a2a0:	e1a00000 	nop			@ (mov r0, r0)
8002a2a4:	e28bd000 	add	sp, fp, #0
8002a2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a2ac:	e12fff1e 	bx	lr
8002a2b0:	800b10d0 	.word	0x800b10d0
8002a2b4:	1b4e81b5 	.word	0x1b4e81b5

8002a2b8 <uart_enable_rx>:
8002a2b8:	e92d4800 	push	{fp, lr}
8002a2bc:	e28db004 	add	fp, sp, #4
8002a2c0:	e59f3020 	ldr	r3, [pc, #32]	@ 8002a2e8 <uart_enable_rx+0x30>
8002a2c4:	e5933000 	ldr	r3, [r3]
8002a2c8:	e2833038 	add	r3, r3, #56	@ 0x38
8002a2cc:	e3a02010 	mov	r2, #16
8002a2d0:	e5832000 	str	r2, [r3]
8002a2d4:	e59f1010 	ldr	r1, [pc, #16]	@ 8002a2ec <uart_enable_rx+0x34>
8002a2d8:	e3a0000c 	mov	r0, #12
8002a2dc:	ebffff01 	bl	80029ee8 <pic_enable>
8002a2e0:	e1a00000 	nop			@ (mov r0, r0)
8002a2e4:	e8bd8800 	pop	{fp, pc}
8002a2e8:	800b10d0 	.word	0x800b10d0
8002a2ec:	8002a394 	.word	0x8002a394

8002a2f0 <uartputc>:
8002a2f0:	e92d4800 	push	{fp, lr}
8002a2f4:	e28db004 	add	fp, sp, #4
8002a2f8:	e24dd008 	sub	sp, sp, #8
8002a2fc:	e50b0008 	str	r0, [fp, #-8]
8002a300:	ea000001 	b	8002a30c <uartputc+0x1c>
8002a304:	e3a0000a 	mov	r0, #10
8002a308:	ebffff9d 	bl	8002a184 <micro_delay>
8002a30c:	e59f3030 	ldr	r3, [pc, #48]	@ 8002a344 <uartputc+0x54>
8002a310:	e5933000 	ldr	r3, [r3]
8002a314:	e2833018 	add	r3, r3, #24
8002a318:	e5933000 	ldr	r3, [r3]
8002a31c:	e2033020 	and	r3, r3, #32
8002a320:	e3530000 	cmp	r3, #0
8002a324:	1afffff6 	bne	8002a304 <uartputc+0x14>
8002a328:	e59f3014 	ldr	r3, [pc, #20]	@ 8002a344 <uartputc+0x54>
8002a32c:	e5933000 	ldr	r3, [r3]
8002a330:	e51b2008 	ldr	r2, [fp, #-8]
8002a334:	e5832000 	str	r2, [r3]
8002a338:	e1a00000 	nop			@ (mov r0, r0)
8002a33c:	e24bd004 	sub	sp, fp, #4
8002a340:	e8bd8800 	pop	{fp, pc}
8002a344:	800b10d0 	.word	0x800b10d0

8002a348 <uartgetc>:
8002a348:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002a34c:	e28db000 	add	fp, sp, #0
8002a350:	e59f3038 	ldr	r3, [pc, #56]	@ 8002a390 <uartgetc+0x48>
8002a354:	e5933000 	ldr	r3, [r3]
8002a358:	e2833018 	add	r3, r3, #24
8002a35c:	e5933000 	ldr	r3, [r3]
8002a360:	e2033010 	and	r3, r3, #16
8002a364:	e3530000 	cmp	r3, #0
8002a368:	0a000001 	beq	8002a374 <uartgetc+0x2c>
8002a36c:	e3e03000 	mvn	r3, #0
8002a370:	ea000002 	b	8002a380 <uartgetc+0x38>
8002a374:	e59f3014 	ldr	r3, [pc, #20]	@ 8002a390 <uartgetc+0x48>
8002a378:	e5933000 	ldr	r3, [r3]
8002a37c:	e5933000 	ldr	r3, [r3]
8002a380:	e1a00003 	mov	r0, r3
8002a384:	e28bd000 	add	sp, fp, #0
8002a388:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002a38c:	e12fff1e 	bx	lr
8002a390:	800b10d0 	.word	0x800b10d0

8002a394 <isr_uart>:
8002a394:	e92d4800 	push	{fp, lr}
8002a398:	e28db004 	add	fp, sp, #4
8002a39c:	e24dd008 	sub	sp, sp, #8
8002a3a0:	e50b0008 	str	r0, [fp, #-8]
8002a3a4:	e50b100c 	str	r1, [fp, #-12]
8002a3a8:	e59f303c 	ldr	r3, [pc, #60]	@ 8002a3ec <isr_uart+0x58>
8002a3ac:	e5933000 	ldr	r3, [r3]
8002a3b0:	e2833040 	add	r3, r3, #64	@ 0x40
8002a3b4:	e5933000 	ldr	r3, [r3]
8002a3b8:	e2033010 	and	r3, r3, #16
8002a3bc:	e3530000 	cmp	r3, #0
8002a3c0:	0a000001 	beq	8002a3cc <isr_uart+0x38>
8002a3c4:	e59f0024 	ldr	r0, [pc, #36]	@ 8002a3f0 <isr_uart+0x5c>
8002a3c8:	ebffddfd 	bl	80021bc4 <consoleintr>
8002a3cc:	e59f3018 	ldr	r3, [pc, #24]	@ 8002a3ec <isr_uart+0x58>
8002a3d0:	e5933000 	ldr	r3, [r3]
8002a3d4:	e2833044 	add	r3, r3, #68	@ 0x44
8002a3d8:	e3a02030 	mov	r2, #48	@ 0x30
8002a3dc:	e5832000 	str	r2, [r3]
8002a3e0:	e1a00000 	nop			@ (mov r0, r0)
8002a3e4:	e24bd004 	sub	sp, fp, #4
8002a3e8:	e8bd8800 	pop	{fp, pc}
8002a3ec:	800b10d0 	.word	0x800b10d0
8002a3f0:	8002a348 	.word	0x8002a348

8002a3f4 <__udivsi3>:
8002a3f4:	e2512001 	subs	r2, r1, #1
8002a3f8:	012fff1e 	bxeq	lr
8002a3fc:	3a000036 	bcc	8002a4dc <__udivsi3+0xe8>
8002a400:	e1500001 	cmp	r0, r1
8002a404:	9a000022 	bls	8002a494 <__udivsi3+0xa0>
8002a408:	e1110002 	tst	r1, r2
8002a40c:	0a000023 	beq	8002a4a0 <__udivsi3+0xac>
8002a410:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002a414:	01a01181 	lsleq	r1, r1, #3
8002a418:	03a03008 	moveq	r3, #8
8002a41c:	13a03001 	movne	r3, #1
8002a420:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002a424:	31510000 	cmpcc	r1, r0
8002a428:	31a01201 	lslcc	r1, r1, #4
8002a42c:	31a03203 	lslcc	r3, r3, #4
8002a430:	3afffffa 	bcc	8002a420 <__udivsi3+0x2c>
8002a434:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
8002a438:	31510000 	cmpcc	r1, r0
8002a43c:	31a01081 	lslcc	r1, r1, #1
8002a440:	31a03083 	lslcc	r3, r3, #1
8002a444:	3afffffa 	bcc	8002a434 <__udivsi3+0x40>
8002a448:	e3a02000 	mov	r2, #0
8002a44c:	e1500001 	cmp	r0, r1
8002a450:	20400001 	subcs	r0, r0, r1
8002a454:	21822003 	orrcs	r2, r2, r3
8002a458:	e15000a1 	cmp	r0, r1, lsr #1
8002a45c:	204000a1 	subcs	r0, r0, r1, lsr #1
8002a460:	218220a3 	orrcs	r2, r2, r3, lsr #1
8002a464:	e1500121 	cmp	r0, r1, lsr #2
8002a468:	20400121 	subcs	r0, r0, r1, lsr #2
8002a46c:	21822123 	orrcs	r2, r2, r3, lsr #2
8002a470:	e15001a1 	cmp	r0, r1, lsr #3
8002a474:	204001a1 	subcs	r0, r0, r1, lsr #3
8002a478:	218221a3 	orrcs	r2, r2, r3, lsr #3
8002a47c:	e3500000 	cmp	r0, #0
8002a480:	11b03223 	lsrsne	r3, r3, #4
8002a484:	11a01221 	lsrne	r1, r1, #4
8002a488:	1affffef 	bne	8002a44c <__udivsi3+0x58>
8002a48c:	e1a00002 	mov	r0, r2
8002a490:	e12fff1e 	bx	lr
8002a494:	03a00001 	moveq	r0, #1
8002a498:	13a00000 	movne	r0, #0
8002a49c:	e12fff1e 	bx	lr
8002a4a0:	e3510801 	cmp	r1, #65536	@ 0x10000
8002a4a4:	21a01821 	lsrcs	r1, r1, #16
8002a4a8:	23a02010 	movcs	r2, #16
8002a4ac:	33a02000 	movcc	r2, #0
8002a4b0:	e3510c01 	cmp	r1, #256	@ 0x100
8002a4b4:	21a01421 	lsrcs	r1, r1, #8
8002a4b8:	22822008 	addcs	r2, r2, #8
8002a4bc:	e3510010 	cmp	r1, #16
8002a4c0:	21a01221 	lsrcs	r1, r1, #4
8002a4c4:	22822004 	addcs	r2, r2, #4
8002a4c8:	e3510004 	cmp	r1, #4
8002a4cc:	82822003 	addhi	r2, r2, #3
8002a4d0:	908220a1 	addls	r2, r2, r1, lsr #1
8002a4d4:	e1a00230 	lsr	r0, r0, r2
8002a4d8:	e12fff1e 	bx	lr
8002a4dc:	e3500000 	cmp	r0, #0
8002a4e0:	13e00000 	mvnne	r0, #0
8002a4e4:	ea000059 	b	8002a650 <__aeabi_idiv0>

8002a4e8 <__aeabi_uidivmod>:
8002a4e8:	e3510000 	cmp	r1, #0
8002a4ec:	0afffffa 	beq	8002a4dc <__udivsi3+0xe8>
8002a4f0:	e92d4003 	push	{r0, r1, lr}
8002a4f4:	ebffffbe 	bl	8002a3f4 <__udivsi3>
8002a4f8:	e8bd4006 	pop	{r1, r2, lr}
8002a4fc:	e0030092 	mul	r3, r2, r0
8002a500:	e0411003 	sub	r1, r1, r3
8002a504:	e12fff1e 	bx	lr

8002a508 <__divsi3>:
8002a508:	e3510000 	cmp	r1, #0
8002a50c:	0a000043 	beq	8002a620 <.divsi3_skip_div0_test+0x110>

8002a510 <.divsi3_skip_div0_test>:
8002a510:	e020c001 	eor	ip, r0, r1
8002a514:	42611000 	rsbmi	r1, r1, #0
8002a518:	e2512001 	subs	r2, r1, #1
8002a51c:	0a000027 	beq	8002a5c0 <.divsi3_skip_div0_test+0xb0>
8002a520:	e1b03000 	movs	r3, r0
8002a524:	42603000 	rsbmi	r3, r0, #0
8002a528:	e1530001 	cmp	r3, r1
8002a52c:	9a000026 	bls	8002a5cc <.divsi3_skip_div0_test+0xbc>
8002a530:	e1110002 	tst	r1, r2
8002a534:	0a000028 	beq	8002a5dc <.divsi3_skip_div0_test+0xcc>
8002a538:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002a53c:	01a01181 	lsleq	r1, r1, #3
8002a540:	03a02008 	moveq	r2, #8
8002a544:	13a02001 	movne	r2, #1
8002a548:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002a54c:	31510003 	cmpcc	r1, r3
8002a550:	31a01201 	lslcc	r1, r1, #4
8002a554:	31a02202 	lslcc	r2, r2, #4
8002a558:	3afffffa 	bcc	8002a548 <.divsi3_skip_div0_test+0x38>
8002a55c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
8002a560:	31510003 	cmpcc	r1, r3
8002a564:	31a01081 	lslcc	r1, r1, #1
8002a568:	31a02082 	lslcc	r2, r2, #1
8002a56c:	3afffffa 	bcc	8002a55c <.divsi3_skip_div0_test+0x4c>
8002a570:	e3a00000 	mov	r0, #0
8002a574:	e1530001 	cmp	r3, r1
8002a578:	20433001 	subcs	r3, r3, r1
8002a57c:	21800002 	orrcs	r0, r0, r2
8002a580:	e15300a1 	cmp	r3, r1, lsr #1
8002a584:	204330a1 	subcs	r3, r3, r1, lsr #1
8002a588:	218000a2 	orrcs	r0, r0, r2, lsr #1
8002a58c:	e1530121 	cmp	r3, r1, lsr #2
8002a590:	20433121 	subcs	r3, r3, r1, lsr #2
8002a594:	21800122 	orrcs	r0, r0, r2, lsr #2
8002a598:	e15301a1 	cmp	r3, r1, lsr #3
8002a59c:	204331a1 	subcs	r3, r3, r1, lsr #3
8002a5a0:	218001a2 	orrcs	r0, r0, r2, lsr #3
8002a5a4:	e3530000 	cmp	r3, #0
8002a5a8:	11b02222 	lsrsne	r2, r2, #4
8002a5ac:	11a01221 	lsrne	r1, r1, #4
8002a5b0:	1affffef 	bne	8002a574 <.divsi3_skip_div0_test+0x64>
8002a5b4:	e35c0000 	cmp	ip, #0
8002a5b8:	42600000 	rsbmi	r0, r0, #0
8002a5bc:	e12fff1e 	bx	lr
8002a5c0:	e13c0000 	teq	ip, r0
8002a5c4:	42600000 	rsbmi	r0, r0, #0
8002a5c8:	e12fff1e 	bx	lr
8002a5cc:	33a00000 	movcc	r0, #0
8002a5d0:	01a00fcc 	asreq	r0, ip, #31
8002a5d4:	03800001 	orreq	r0, r0, #1
8002a5d8:	e12fff1e 	bx	lr
8002a5dc:	e3510801 	cmp	r1, #65536	@ 0x10000
8002a5e0:	21a01821 	lsrcs	r1, r1, #16
8002a5e4:	23a02010 	movcs	r2, #16
8002a5e8:	33a02000 	movcc	r2, #0
8002a5ec:	e3510c01 	cmp	r1, #256	@ 0x100
8002a5f0:	21a01421 	lsrcs	r1, r1, #8
8002a5f4:	22822008 	addcs	r2, r2, #8
8002a5f8:	e3510010 	cmp	r1, #16
8002a5fc:	21a01221 	lsrcs	r1, r1, #4
8002a600:	22822004 	addcs	r2, r2, #4
8002a604:	e3510004 	cmp	r1, #4
8002a608:	82822003 	addhi	r2, r2, #3
8002a60c:	908220a1 	addls	r2, r2, r1, lsr #1
8002a610:	e35c0000 	cmp	ip, #0
8002a614:	e1a00233 	lsr	r0, r3, r2
8002a618:	42600000 	rsbmi	r0, r0, #0
8002a61c:	e12fff1e 	bx	lr
8002a620:	e3500000 	cmp	r0, #0
8002a624:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
8002a628:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
8002a62c:	ea000007 	b	8002a650 <__aeabi_idiv0>

8002a630 <__aeabi_idivmod>:
8002a630:	e3510000 	cmp	r1, #0
8002a634:	0afffff9 	beq	8002a620 <.divsi3_skip_div0_test+0x110>
8002a638:	e92d4003 	push	{r0, r1, lr}
8002a63c:	ebffffb3 	bl	8002a510 <.divsi3_skip_div0_test>
8002a640:	e8bd4006 	pop	{r1, r2, lr}
8002a644:	e0030092 	mul	r3, r2, r0
8002a648:	e0411003 	sub	r1, r1, r3
8002a64c:	e12fff1e 	bx	lr

8002a650 <__aeabi_idiv0>:
8002a650:	e12fff1e 	bx	lr
