
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
   10404:	800b0000 	.word	0x800b0000
   10408:	800aa0d0 	.word	0x800aa0d0

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
   104cc:	800b0000 	.word	0x800b0000
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
   104f4:	80024688 	.word	0x80024688
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
8002067c:	800ad608 	.word	0x800ad608

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
8002071c:	80029744 	.word	0x80029744
80020720:	800ad608 	.word	0x800ad608
80020724:	8002975c 	.word	0x8002975c
80020728:	80029770 	.word	0x80029770

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
8002089c:	80029784 	.word	0x80029784
800208a0:	80029788 	.word	0x80029788

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
800208e4:	eb001645 	bl	80026200 <initlock>
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
8002099c:	80029794 	.word	0x80029794
800209a0:	800aa0d0 	.word	0x800aa0d0
800209a4:	800ab5f4 	.word	0x800ab5f4
800209a8:	800aa104 	.word	0x800aa104

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb00161f 	bl	80026248 <acquire>
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
80020a30:	eb00160f 	bl	80026274 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb001484 	bl	80025c5c <sleep>
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
80020acc:	eb0015e8 	bl	80026274 <release>
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
80020b08:	800aa0d0 	.word	0x800aa0d0
80020b0c:	800ab5f4 	.word	0x800ab5f4
80020b10:	8002979c 	.word	0x8002979c

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
80020b50:	eb000f19 	bl	800247bc <iderw>
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
80020ba8:	eb000f03 	bl	800247bc <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	800297b0 	.word	0x800297b0

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
80020bec:	eb001595 	bl	80026248 <acquire>
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
80020c78:	eb00146b 	bl	80025e2c <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb00157b 	bl	80026274 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	800297b8 	.word	0x800297b8
80020c94:	800aa0d0 	.word	0x800aa0d0
80020c98:	800ab5f4 	.word	0x800ab5f4

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
80020cf4:	800ab80c 	.word	0x800ab80c

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
80020d34:	800ab80c 	.word	0x800ab80c

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
80020d74:	800ab80c 	.word	0x800ab80c

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
80020dc8:	eb00150c 	bl	80026200 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	800297c0 	.word	0x800297c0
80020dd8:	800ab80c 	.word	0x800ab80c

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
80020f78:	800ab80c 	.word	0x800ab80c
80020f7c:	800ab84c 	.word	0x800ab84c
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
80021118:	800ab80c 	.word	0x800ab80c
8002111c:	800297c8 	.word	0x800297c8
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
80021268:	800ab80c 	.word	0x800ab80c
8002126c:	800297d8 	.word	0x800297d8
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
8002135c:	800ab80c 	.word	0x800ab80c
80021360:	800297e8 	.word	0x800297e8

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
8002141c:	800ab80c 	.word	0x800ab80c
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
80021458:	eb00137a 	bl	80026248 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb001380 	bl	80026274 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029800 	.word	0x80029800
80021484:	800ab80c 	.word	0x800ab80c

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
8002157c:	80029820 	.word	0x80029820

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
800215dc:	eb001319 	bl	80026248 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb00131f 	bl	80026274 <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	80029834 	.word	0x80029834
80021604:	800ab80c 	.word	0x800ab80c

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
80021760:	80029864 	.word	0x80029864

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
800217d4:	eb001f7f 	bl	800295d8 <__aeabi_uidivmod>
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
8002180c:	eb001f34 	bl	800294e4 <__udivsi3>
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
80021890:	8002a000 	.word	0x8002a000

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
800218c0:	eb001260 	bl	80026248 <acquire>
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
80021ad0:	eb0011e7 	bl	80026274 <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ab888 	.word	0x800ab888
80021aec:	80029874 	.word	0x80029874
80021af0:	80029880 	.word	0x80029880

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
80021b48:	800ab888 	.word	0x800ab888
80021b4c:	800ad608 	.word	0x800ad608
80021b50:	80029888 	.word	0x80029888
80021b54:	800ab884 	.word	0x800ab884

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
80021b94:	eb001e11 	bl	800293e0 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb001e0f 	bl	800293e0 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb001e0d 	bl	800293e0 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb001e0a 	bl	800293e0 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ab884 	.word	0x800ab884

80021bc4 <consoleintr>:
80021bc4:	e92d4800 	push	{fp, lr}
80021bc8:	e28db004 	add	fp, sp, #4
80021bcc:	e24dd010 	sub	sp, sp, #16
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f0258 	ldr	r0, [pc, #600]	@ 80021e34 <consoleintr+0x270>
80021bd8:	eb00119a 	bl	80026248 <acquire>
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
80021c28:	eb0010b9 	bl	80025f14 <procdump>
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
80021d1c:	eb001042 	bl	80025e2c <wakeup>
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
80021dec:	eb00100e 	bl	80025e2c <wakeup>
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
80021e24:	eb001112 	bl	80026274 <release>
80021e28:	e1a00000 	nop			@ (mov r0, r0)
80021e2c:	e24bd004 	sub	sp, fp, #4
80021e30:	e8bd8800 	pop	{fp, pc}
80021e34:	800ab8c0 	.word	0x800ab8c0
80021e38:	800abaf4 	.word	0x800abaf4

80021e3c <consoleread>:
80021e3c:	e92d4800 	push	{fp, lr}
80021e40:	e28db004 	add	fp, sp, #4
80021e44:	e24dd018 	sub	sp, sp, #24
80021e48:	e50b0010 	str	r0, [fp, #-16]
80021e4c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021e50:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021e54:	e51b0010 	ldr	r0, [fp, #-16]
80021e58:	eb000534 	bl	80023330 <iunlock>
80021e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e60:	e50b3008 	str	r3, [fp, #-8]
80021e64:	e59f0128 	ldr	r0, [pc, #296]	@ 80021f94 <consoleread+0x158>
80021e68:	eb0010f6 	bl	80026248 <acquire>
80021e6c:	ea000037 	b	80021f50 <consoleread+0x114>
80021e70:	e59f3120 	ldr	r3, [pc, #288]	@ 80021f98 <consoleread+0x15c>
80021e74:	e5933000 	ldr	r3, [r3]
80021e78:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021e7c:	e3530000 	cmp	r3, #0
80021e80:	0a000005 	beq	80021e9c <consoleread+0x60>
80021e84:	e59f0108 	ldr	r0, [pc, #264]	@ 80021f94 <consoleread+0x158>
80021e88:	eb0010f9 	bl	80026274 <release>
80021e8c:	e51b0010 	ldr	r0, [fp, #-16]
80021e90:	eb0004c2 	bl	800231a0 <ilock>
80021e94:	e3e03000 	mvn	r3, #0
80021e98:	ea00003a 	b	80021f88 <consoleread+0x14c>
80021e9c:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021f94 <consoleread+0x158>
80021ea0:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021f9c <consoleread+0x160>
80021ea4:	eb000f6c 	bl	80025c5c <sleep>
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
80021f70:	eb0010bf 	bl	80026274 <release>
80021f74:	e51b0010 	ldr	r0, [fp, #-16]
80021f78:	eb000488 	bl	800231a0 <ilock>
80021f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f80:	e51b2008 	ldr	r2, [fp, #-8]
80021f84:	e0423003 	sub	r3, r2, r3
80021f88:	e1a00003 	mov	r0, r3
80021f8c:	e24bd004 	sub	sp, fp, #4
80021f90:	e8bd8800 	pop	{fp, pc}
80021f94:	800ab8c0 	.word	0x800ab8c0
80021f98:	800afb50 	.word	0x800afb50
80021f9c:	800abaf4 	.word	0x800abaf4

80021fa0 <consolewrite>:
80021fa0:	e92d4800 	push	{fp, lr}
80021fa4:	e28db004 	add	fp, sp, #4
80021fa8:	e24dd018 	sub	sp, sp, #24
80021fac:	e50b0010 	str	r0, [fp, #-16]
80021fb0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021fb4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021fb8:	e51b0010 	ldr	r0, [fp, #-16]
80021fbc:	eb0004db 	bl	80023330 <iunlock>
80021fc0:	e59f0060 	ldr	r0, [pc, #96]	@ 80022028 <consolewrite+0x88>
80021fc4:	eb00109f 	bl	80026248 <acquire>
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
8002200c:	eb001098 	bl	80026274 <release>
80022010:	e51b0010 	ldr	r0, [fp, #-16]
80022014:	eb000461 	bl	800231a0 <ilock>
80022018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002201c:	e1a00003 	mov	r0, r3
80022020:	e24bd004 	sub	sp, fp, #4
80022024:	e8bd8800 	pop	{fp, pc}
80022028:	800ab888 	.word	0x800ab888

8002202c <consoleinit>:
8002202c:	e92d4800 	push	{fp, lr}
80022030:	e28db004 	add	fp, sp, #4
80022034:	e59f103c 	ldr	r1, [pc, #60]	@ 80022078 <consoleinit+0x4c>
80022038:	e59f003c 	ldr	r0, [pc, #60]	@ 8002207c <consoleinit+0x50>
8002203c:	eb00106f 	bl	80026200 <initlock>
80022040:	e59f1038 	ldr	r1, [pc, #56]	@ 80022080 <consoleinit+0x54>
80022044:	e59f0038 	ldr	r0, [pc, #56]	@ 80022084 <consoleinit+0x58>
80022048:	eb00106c 	bl	80026200 <initlock>
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
80022078:	80029898 	.word	0x80029898
8002207c:	800ab888 	.word	0x800ab888
80022080:	800298a0 	.word	0x800298a0
80022084:	800ab8c0 	.word	0x800ab8c0
80022088:	800abb00 	.word	0x800abb00
8002208c:	80021fa0 	.word	0x80021fa0
80022090:	80021e3c 	.word	0x80021e3c

80022094 <exec>:
80022094:	e92d4810 	push	{r4, fp, lr}
80022098:	e28db008 	add	fp, sp, #8
8002209c:	e24ddf49 	sub	sp, sp, #292	@ 0x124
800220a0:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
800220a4:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
800220a8:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
800220ac:	eb00080e 	bl	800240ec <namei>
800220b0:	e50b0010 	str	r0, [fp, #-16]
800220b4:	e51b3010 	ldr	r3, [fp, #-16]
800220b8:	e3530000 	cmp	r3, #0
800220bc:	1a000001 	bne	800220c8 <exec+0x34>
800220c0:	e3e03000 	mvn	r3, #0
800220c4:	ea000120 	b	8002254c <exec+0x4b8>
800220c8:	e51b0010 	ldr	r0, [fp, #-16]
800220cc:	eb000433 	bl	800231a0 <ilock>
800220d0:	e24b1068 	sub	r1, fp, #104	@ 0x68
800220d4:	e3a03034 	mov	r3, #52	@ 0x34
800220d8:	e3a02000 	mov	r2, #0
800220dc:	e51b0010 	ldr	r0, [fp, #-16]
800220e0:	eb0005da 	bl	80023850 <readi>
800220e4:	e1a03000 	mov	r3, r0
800220e8:	e3530033 	cmp	r3, #51	@ 0x33
800220ec:	9a0000f6 	bls	800224cc <exec+0x438>
800220f0:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
800220f4:	e59f245c 	ldr	r2, [pc, #1116]	@ 80022558 <exec+0x4c4>
800220f8:	e1530002 	cmp	r3, r2
800220fc:	1a0000f4 	bne	800224d4 <exec+0x440>
80022100:	e3a03000 	mov	r3, #0
80022104:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022108:	eb0018bc 	bl	80028400 <kpt_alloc>
8002210c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022110:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022114:	e3530000 	cmp	r3, #0
80022118:	0a0000ef 	beq	800224dc <exec+0x448>
8002211c:	e3a03000 	mov	r3, #0
80022120:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022124:	e3a03000 	mov	r3, #0
80022128:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002212c:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
80022130:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022134:	ea00002e 	b	800221f4 <exec+0x160>
80022138:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002213c:	e24b1088 	sub	r1, fp, #136	@ 0x88
80022140:	e3a03020 	mov	r3, #32
80022144:	e51b0010 	ldr	r0, [fp, #-16]
80022148:	eb0005c0 	bl	80023850 <readi>
8002214c:	e1a03000 	mov	r3, r0
80022150:	e3530020 	cmp	r3, #32
80022154:	1a0000e2 	bne	800224e4 <exec+0x450>
80022158:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
8002215c:	e3530001 	cmp	r3, #1
80022160:	1a00001c 	bne	800221d8 <exec+0x144>
80022164:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
80022168:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
8002216c:	e1520003 	cmp	r2, r3
80022170:	3a0000dd 	bcc	800224ec <exec+0x458>
80022174:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
80022178:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
8002217c:	e0823003 	add	r3, r2, r3
80022180:	e1a02003 	mov	r2, r3
80022184:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022188:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002218c:	eb0019c7 	bl	800288b0 <allocuvm>
80022190:	e1a03000 	mov	r3, r0
80022194:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022198:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002219c:	e3530000 	cmp	r3, #0
800221a0:	0a0000d3 	beq	800224f4 <exec+0x460>
800221a4:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
800221a8:	e1a01003 	mov	r1, r3
800221ac:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
800221b0:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
800221b4:	e58d3000 	str	r3, [sp]
800221b8:	e1a03002 	mov	r3, r2
800221bc:	e51b2010 	ldr	r2, [fp, #-16]
800221c0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800221c4:	eb00196d 	bl	80028780 <loaduvm>
800221c8:	e1a03000 	mov	r3, r0
800221cc:	e3530000 	cmp	r3, #0
800221d0:	ba0000c9 	blt	800224fc <exec+0x468>
800221d4:	ea000000 	b	800221dc <exec+0x148>
800221d8:	e1a00000 	nop			@ (mov r0, r0)
800221dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800221e0:	e2833001 	add	r3, r3, #1
800221e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800221e8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800221ec:	e2833020 	add	r3, r3, #32
800221f0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800221f4:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
800221f8:	e1a02003 	mov	r2, r3
800221fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022200:	e1530002 	cmp	r3, r2
80022204:	baffffcb 	blt	80022138 <exec+0xa4>
80022208:	e51b0010 	ldr	r0, [fp, #-16]
8002220c:	eb0004a4 	bl	800234a4 <iunlockput>
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
80022244:	eb001999 	bl	800288b0 <allocuvm>
80022248:	e1a03000 	mov	r3, r0
8002224c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022250:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022254:	e3530000 	cmp	r3, #0
80022258:	0a0000a9 	beq	80022504 <exec+0x470>
8002225c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022260:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022264:	e1a01003 	mov	r1, r3
80022268:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002226c:	eb001a44 	bl	80028b84 <clearpteu>
80022270:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022274:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022278:	e3a03000 	mov	r3, #0
8002227c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022280:	ea00002e 	b	80022340 <exec+0x2ac>
80022284:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022288:	e353001f 	cmp	r3, #31
8002228c:	8a00009e 	bhi	8002250c <exec+0x478>
80022290:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022294:	e1a03103 	lsl	r3, r3, #2
80022298:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002229c:	e0823003 	add	r3, r2, r3
800222a0:	e5933000 	ldr	r3, [r3]
800222a4:	e1a00003 	mov	r0, r3
800222a8:	ebfff88f 	bl	800204ec <strlen>
800222ac:	e1a03000 	mov	r3, r0
800222b0:	e1a02003 	mov	r2, r3
800222b4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800222b8:	e0433002 	sub	r3, r3, r2
800222bc:	e2433001 	sub	r3, r3, #1
800222c0:	e3c33003 	bic	r3, r3, #3
800222c4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800222c8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222cc:	e1a03103 	lsl	r3, r3, #2
800222d0:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800222d4:	e0823003 	add	r3, r2, r3
800222d8:	e5934000 	ldr	r4, [r3]
800222dc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222e0:	e1a03103 	lsl	r3, r3, #2
800222e4:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800222e8:	e0823003 	add	r3, r2, r3
800222ec:	e5933000 	ldr	r3, [r3]
800222f0:	e1a00003 	mov	r0, r3
800222f4:	ebfff87c 	bl	800204ec <strlen>
800222f8:	e1a03000 	mov	r3, r0
800222fc:	e2833001 	add	r3, r3, #1
80022300:	e1a02004 	mov	r2, r4
80022304:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022308:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002230c:	eb001ab1 	bl	80028dd8 <copyout>
80022310:	e1a03000 	mov	r3, r0
80022314:	e3530000 	cmp	r3, #0
80022318:	ba00007d 	blt	80022514 <exec+0x480>
8002231c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022320:	e1a03103 	lsl	r3, r3, #2
80022324:	e243300c 	sub	r3, r3, #12
80022328:	e083300b 	add	r3, r3, fp
8002232c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022330:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022334:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022338:	e2833001 	add	r3, r3, #1
8002233c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022340:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022344:	e1a03103 	lsl	r3, r3, #2
80022348:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002234c:	e0823003 	add	r3, r2, r3
80022350:	e5933000 	ldr	r3, [r3]
80022354:	e3530000 	cmp	r3, #0
80022358:	1affffc9 	bne	80022284 <exec+0x1f0>
8002235c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022360:	e1a03103 	lsl	r3, r3, #2
80022364:	e243300c 	sub	r3, r3, #12
80022368:	e083300b 	add	r3, r3, fp
8002236c:	e3a02000 	mov	r2, #0
80022370:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022374:	e59f31e0 	ldr	r3, [pc, #480]	@ 8002255c <exec+0x4c8>
80022378:	e5933000 	ldr	r3, [r3]
8002237c:	e5933018 	ldr	r3, [r3, #24]
80022380:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022384:	e5832010 	str	r2, [r3, #16]
80022388:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002238c:	e2833001 	add	r3, r3, #1
80022390:	e1a02103 	lsl	r2, r3, #2
80022394:	e59f31c0 	ldr	r3, [pc, #448]	@ 8002255c <exec+0x4c8>
80022398:	e5933000 	ldr	r3, [r3]
8002239c:	e5933018 	ldr	r3, [r3, #24]
800223a0:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800223a4:	e0412002 	sub	r2, r1, r2
800223a8:	e5832014 	str	r2, [r3, #20]
800223ac:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223b0:	e2833001 	add	r3, r3, #1
800223b4:	e1a03103 	lsl	r3, r3, #2
800223b8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800223bc:	e0423003 	sub	r3, r2, r3
800223c0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800223c4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223c8:	e2833001 	add	r3, r3, #1
800223cc:	e1a03103 	lsl	r3, r3, #2
800223d0:	e24b2f46 	sub	r2, fp, #280	@ 0x118
800223d4:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800223d8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800223dc:	eb001a7d 	bl	80028dd8 <copyout>
800223e0:	e1a03000 	mov	r3, r0
800223e4:	e3530000 	cmp	r3, #0
800223e8:	ba00004b 	blt	8002251c <exec+0x488>
800223ec:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
800223f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800223f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223f8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800223fc:	ea000009 	b	80022428 <exec+0x394>
80022400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022404:	e5d33000 	ldrb	r3, [r3]
80022408:	e353002f 	cmp	r3, #47	@ 0x2f
8002240c:	1a000002 	bne	8002241c <exec+0x388>
80022410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022414:	e2833001 	add	r3, r3, #1
80022418:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002241c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022420:	e2833001 	add	r3, r3, #1
80022424:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002242c:	e5d33000 	ldrb	r3, [r3]
80022430:	e3530000 	cmp	r3, #0
80022434:	1afffff1 	bne	80022400 <exec+0x36c>
80022438:	e59f311c 	ldr	r3, [pc, #284]	@ 8002255c <exec+0x4c8>
8002243c:	e5933000 	ldr	r3, [r3]
80022440:	e283306c 	add	r3, r3, #108	@ 0x6c
80022444:	e3a02010 	mov	r2, #16
80022448:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
8002244c:	e1a00003 	mov	r0, r3
80022450:	ebfff7fe 	bl	80020450 <safestrcpy>
80022454:	e59f3100 	ldr	r3, [pc, #256]	@ 8002255c <exec+0x4c8>
80022458:	e5933000 	ldr	r3, [r3]
8002245c:	e5933004 	ldr	r3, [r3, #4]
80022460:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022464:	e59f30f0 	ldr	r3, [pc, #240]	@ 8002255c <exec+0x4c8>
80022468:	e5933000 	ldr	r3, [r3]
8002246c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022470:	e5832004 	str	r2, [r3, #4]
80022474:	e59f30e0 	ldr	r3, [pc, #224]	@ 8002255c <exec+0x4c8>
80022478:	e5933000 	ldr	r3, [r3]
8002247c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80022480:	e5832000 	str	r2, [r3]
80022484:	e59f30d0 	ldr	r3, [pc, #208]	@ 8002255c <exec+0x4c8>
80022488:	e5933000 	ldr	r3, [r3]
8002248c:	e5933018 	ldr	r3, [r3, #24]
80022490:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
80022494:	e5832044 	str	r2, [r3, #68]	@ 0x44
80022498:	e59f30bc 	ldr	r3, [pc, #188]	@ 8002255c <exec+0x4c8>
8002249c:	e5933000 	ldr	r3, [r3]
800224a0:	e5933018 	ldr	r3, [r3, #24]
800224a4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800224a8:	e5832000 	str	r2, [r3]
800224ac:	e59f30a8 	ldr	r3, [pc, #168]	@ 8002255c <exec+0x4c8>
800224b0:	e5933000 	ldr	r3, [r3]
800224b4:	e1a00003 	mov	r0, r3
800224b8:	eb001877 	bl	8002869c <switchuvm>
800224bc:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
800224c0:	eb00197f 	bl	80028ac4 <freevm>
800224c4:	e3a03000 	mov	r3, #0
800224c8:	ea00001f 	b	8002254c <exec+0x4b8>
800224cc:	e1a00000 	nop			@ (mov r0, r0)
800224d0:	ea000012 	b	80022520 <exec+0x48c>
800224d4:	e1a00000 	nop			@ (mov r0, r0)
800224d8:	ea000010 	b	80022520 <exec+0x48c>
800224dc:	e1a00000 	nop			@ (mov r0, r0)
800224e0:	ea00000e 	b	80022520 <exec+0x48c>
800224e4:	e1a00000 	nop			@ (mov r0, r0)
800224e8:	ea00000c 	b	80022520 <exec+0x48c>
800224ec:	e1a00000 	nop			@ (mov r0, r0)
800224f0:	ea00000a 	b	80022520 <exec+0x48c>
800224f4:	e1a00000 	nop			@ (mov r0, r0)
800224f8:	ea000008 	b	80022520 <exec+0x48c>
800224fc:	e1a00000 	nop			@ (mov r0, r0)
80022500:	ea000006 	b	80022520 <exec+0x48c>
80022504:	e1a00000 	nop			@ (mov r0, r0)
80022508:	ea000004 	b	80022520 <exec+0x48c>
8002250c:	e1a00000 	nop			@ (mov r0, r0)
80022510:	ea000002 	b	80022520 <exec+0x48c>
80022514:	e1a00000 	nop			@ (mov r0, r0)
80022518:	ea000000 	b	80022520 <exec+0x48c>
8002251c:	e1a00000 	nop			@ (mov r0, r0)
80022520:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022524:	e3530000 	cmp	r3, #0
80022528:	0a000001 	beq	80022534 <exec+0x4a0>
8002252c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022530:	eb001963 	bl	80028ac4 <freevm>
80022534:	e51b3010 	ldr	r3, [fp, #-16]
80022538:	e3530000 	cmp	r3, #0
8002253c:	0a000001 	beq	80022548 <exec+0x4b4>
80022540:	e51b0010 	ldr	r0, [fp, #-16]
80022544:	eb0003d6 	bl	800234a4 <iunlockput>
80022548:	e3e03000 	mvn	r3, #0
8002254c:	e1a00003 	mov	r0, r3
80022550:	e24bd008 	sub	sp, fp, #8
80022554:	e8bd8810 	pop	{r4, fp, pc}
80022558:	464c457f 	.word	0x464c457f
8002255c:	800afb50 	.word	0x800afb50

80022560 <fileinit>:
80022560:	e92d4800 	push	{fp, lr}
80022564:	e28db004 	add	fp, sp, #4
80022568:	e59f100c 	ldr	r1, [pc, #12]	@ 8002257c <fileinit+0x1c>
8002256c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022580 <fileinit+0x20>
80022570:	eb000f22 	bl	80026200 <initlock>
80022574:	e1a00000 	nop			@ (mov r0, r0)
80022578:	e8bd8800 	pop	{fp, pc}
8002257c:	800298a8 	.word	0x800298a8
80022580:	800abb50 	.word	0x800abb50

80022584 <filealloc>:
80022584:	e92d4800 	push	{fp, lr}
80022588:	e28db004 	add	fp, sp, #4
8002258c:	e24dd008 	sub	sp, sp, #8
80022590:	e59f006c 	ldr	r0, [pc, #108]	@ 80022604 <filealloc+0x80>
80022594:	eb000f2b 	bl	80026248 <acquire>
80022598:	e59f3068 	ldr	r3, [pc, #104]	@ 80022608 <filealloc+0x84>
8002259c:	e50b3008 	str	r3, [fp, #-8]
800225a0:	ea00000d 	b	800225dc <filealloc+0x58>
800225a4:	e51b3008 	ldr	r3, [fp, #-8]
800225a8:	e5933004 	ldr	r3, [r3, #4]
800225ac:	e3530000 	cmp	r3, #0
800225b0:	1a000006 	bne	800225d0 <filealloc+0x4c>
800225b4:	e51b3008 	ldr	r3, [fp, #-8]
800225b8:	e3a02001 	mov	r2, #1
800225bc:	e5832004 	str	r2, [r3, #4]
800225c0:	e59f003c 	ldr	r0, [pc, #60]	@ 80022604 <filealloc+0x80>
800225c4:	eb000f2a 	bl	80026274 <release>
800225c8:	e51b3008 	ldr	r3, [fp, #-8]
800225cc:	ea000009 	b	800225f8 <filealloc+0x74>
800225d0:	e51b3008 	ldr	r3, [fp, #-8]
800225d4:	e2833018 	add	r3, r3, #24
800225d8:	e50b3008 	str	r3, [fp, #-8]
800225dc:	e59f2028 	ldr	r2, [pc, #40]	@ 8002260c <filealloc+0x88>
800225e0:	e51b3008 	ldr	r3, [fp, #-8]
800225e4:	e1530002 	cmp	r3, r2
800225e8:	3affffed 	bcc	800225a4 <filealloc+0x20>
800225ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80022604 <filealloc+0x80>
800225f0:	eb000f1f 	bl	80026274 <release>
800225f4:	e3a03000 	mov	r3, #0
800225f8:	e1a00003 	mov	r0, r3
800225fc:	e24bd004 	sub	sp, fp, #4
80022600:	e8bd8800 	pop	{fp, pc}
80022604:	800abb50 	.word	0x800abb50
80022608:	800abb84 	.word	0x800abb84
8002260c:	800ac4e4 	.word	0x800ac4e4

80022610 <filedup>:
80022610:	e92d4800 	push	{fp, lr}
80022614:	e28db004 	add	fp, sp, #4
80022618:	e24dd008 	sub	sp, sp, #8
8002261c:	e50b0008 	str	r0, [fp, #-8]
80022620:	e59f0044 	ldr	r0, [pc, #68]	@ 8002266c <filedup+0x5c>
80022624:	eb000f07 	bl	80026248 <acquire>
80022628:	e51b3008 	ldr	r3, [fp, #-8]
8002262c:	e5933004 	ldr	r3, [r3, #4]
80022630:	e3530000 	cmp	r3, #0
80022634:	ca000001 	bgt	80022640 <filedup+0x30>
80022638:	e59f0030 	ldr	r0, [pc, #48]	@ 80022670 <filedup+0x60>
8002263c:	ebfffd2c 	bl	80021af4 <panic>
80022640:	e51b3008 	ldr	r3, [fp, #-8]
80022644:	e5933004 	ldr	r3, [r3, #4]
80022648:	e2832001 	add	r2, r3, #1
8002264c:	e51b3008 	ldr	r3, [fp, #-8]
80022650:	e5832004 	str	r2, [r3, #4]
80022654:	e59f0010 	ldr	r0, [pc, #16]	@ 8002266c <filedup+0x5c>
80022658:	eb000f05 	bl	80026274 <release>
8002265c:	e51b3008 	ldr	r3, [fp, #-8]
80022660:	e1a00003 	mov	r0, r3
80022664:	e24bd004 	sub	sp, fp, #4
80022668:	e8bd8800 	pop	{fp, pc}
8002266c:	800abb50 	.word	0x800abb50
80022670:	800298b0 	.word	0x800298b0

80022674 <fileclose>:
80022674:	e92d4800 	push	{fp, lr}
80022678:	e28db004 	add	fp, sp, #4
8002267c:	e24dd020 	sub	sp, sp, #32
80022680:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022684:	e59f00d0 	ldr	r0, [pc, #208]	@ 8002275c <fileclose+0xe8>
80022688:	eb000eee 	bl	80026248 <acquire>
8002268c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022690:	e5933004 	ldr	r3, [r3, #4]
80022694:	e3530000 	cmp	r3, #0
80022698:	ca000001 	bgt	800226a4 <fileclose+0x30>
8002269c:	e59f00bc 	ldr	r0, [pc, #188]	@ 80022760 <fileclose+0xec>
800226a0:	ebfffd13 	bl	80021af4 <panic>
800226a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226a8:	e5933004 	ldr	r3, [r3, #4]
800226ac:	e2432001 	sub	r2, r3, #1
800226b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226b4:	e5832004 	str	r2, [r3, #4]
800226b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226bc:	e5933004 	ldr	r3, [r3, #4]
800226c0:	e3530000 	cmp	r3, #0
800226c4:	da000002 	ble	800226d4 <fileclose+0x60>
800226c8:	e59f008c 	ldr	r0, [pc, #140]	@ 8002275c <fileclose+0xe8>
800226cc:	eb000ee8 	bl	80026274 <release>
800226d0:	ea00001f 	b	80022754 <fileclose+0xe0>
800226d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226d8:	e24bc01c 	sub	ip, fp, #28
800226dc:	e1a0e003 	mov	lr, r3
800226e0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
800226e4:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
800226e8:	e89e0003 	ldm	lr, {r0, r1}
800226ec:	e88c0003 	stm	ip, {r0, r1}
800226f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226f4:	e3a02000 	mov	r2, #0
800226f8:	e5832004 	str	r2, [r3, #4]
800226fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022700:	e3a02000 	mov	r2, #0
80022704:	e5c32000 	strb	r2, [r3]
80022708:	e59f004c 	ldr	r0, [pc, #76]	@ 8002275c <fileclose+0xe8>
8002270c:	eb000ed8 	bl	80026274 <release>
80022710:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022714:	e3530001 	cmp	r3, #1
80022718:	1a000005 	bne	80022734 <fileclose+0xc0>
8002271c:	e51b3010 	ldr	r3, [fp, #-16]
80022720:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022724:	e1a01002 	mov	r1, r2
80022728:	e1a00003 	mov	r0, r3
8002272c:	eb0008e8 	bl	80024ad4 <pipeclose>
80022730:	ea000007 	b	80022754 <fileclose+0xe0>
80022734:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022738:	e3530002 	cmp	r3, #2
8002273c:	1a000004 	bne	80022754 <fileclose+0xe0>
80022740:	eb000742 	bl	80024450 <begin_trans>
80022744:	e51b300c 	ldr	r3, [fp, #-12]
80022748:	e1a00003 	mov	r0, r3
8002274c:	eb000319 	bl	800233b8 <iput>
80022750:	eb000752 	bl	800244a0 <commit_trans>
80022754:	e24bd004 	sub	sp, fp, #4
80022758:	e8bd8800 	pop	{fp, pc}
8002275c:	800abb50 	.word	0x800abb50
80022760:	800298b8 	.word	0x800298b8

80022764 <filestat>:
80022764:	e92d4800 	push	{fp, lr}
80022768:	e28db004 	add	fp, sp, #4
8002276c:	e24dd008 	sub	sp, sp, #8
80022770:	e50b0008 	str	r0, [fp, #-8]
80022774:	e50b100c 	str	r1, [fp, #-12]
80022778:	e51b3008 	ldr	r3, [fp, #-8]
8002277c:	e5d33000 	ldrb	r3, [r3]
80022780:	e3530002 	cmp	r3, #2
80022784:	1a00000e 	bne	800227c4 <filestat+0x60>
80022788:	e51b3008 	ldr	r3, [fp, #-8]
8002278c:	e5933010 	ldr	r3, [r3, #16]
80022790:	e1a00003 	mov	r0, r3
80022794:	eb000281 	bl	800231a0 <ilock>
80022798:	e51b3008 	ldr	r3, [fp, #-8]
8002279c:	e5933010 	ldr	r3, [r3, #16]
800227a0:	e51b100c 	ldr	r1, [fp, #-12]
800227a4:	e1a00003 	mov	r0, r3
800227a8:	eb00040a 	bl	800237d8 <stati>
800227ac:	e51b3008 	ldr	r3, [fp, #-8]
800227b0:	e5933010 	ldr	r3, [r3, #16]
800227b4:	e1a00003 	mov	r0, r3
800227b8:	eb0002dc 	bl	80023330 <iunlock>
800227bc:	e3a03000 	mov	r3, #0
800227c0:	ea000000 	b	800227c8 <filestat+0x64>
800227c4:	e3e03000 	mvn	r3, #0
800227c8:	e1a00003 	mov	r0, r3
800227cc:	e24bd004 	sub	sp, fp, #4
800227d0:	e8bd8800 	pop	{fp, pc}

800227d4 <fileread>:
800227d4:	e92d4800 	push	{fp, lr}
800227d8:	e28db004 	add	fp, sp, #4
800227dc:	e24dd018 	sub	sp, sp, #24
800227e0:	e50b0010 	str	r0, [fp, #-16]
800227e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800227e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800227ec:	e51b3010 	ldr	r3, [fp, #-16]
800227f0:	e5d33008 	ldrb	r3, [r3, #8]
800227f4:	e3530000 	cmp	r3, #0
800227f8:	1a000001 	bne	80022804 <fileread+0x30>
800227fc:	e3e03000 	mvn	r3, #0
80022800:	ea00002c 	b	800228b8 <fileread+0xe4>
80022804:	e51b3010 	ldr	r3, [fp, #-16]
80022808:	e5d33000 	ldrb	r3, [r3]
8002280c:	e3530001 	cmp	r3, #1
80022810:	1a000007 	bne	80022834 <fileread+0x60>
80022814:	e51b3010 	ldr	r3, [fp, #-16]
80022818:	e593300c 	ldr	r3, [r3, #12]
8002281c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022820:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022824:	e1a00003 	mov	r0, r3
80022828:	eb000923 	bl	80024cbc <piperead>
8002282c:	e1a03000 	mov	r3, r0
80022830:	ea000020 	b	800228b8 <fileread+0xe4>
80022834:	e51b3010 	ldr	r3, [fp, #-16]
80022838:	e5d33000 	ldrb	r3, [r3]
8002283c:	e3530002 	cmp	r3, #2
80022840:	1a00001a 	bne	800228b0 <fileread+0xdc>
80022844:	e51b3010 	ldr	r3, [fp, #-16]
80022848:	e5933010 	ldr	r3, [r3, #16]
8002284c:	e1a00003 	mov	r0, r3
80022850:	eb000252 	bl	800231a0 <ilock>
80022854:	e51b3010 	ldr	r3, [fp, #-16]
80022858:	e5930010 	ldr	r0, [r3, #16]
8002285c:	e51b3010 	ldr	r3, [fp, #-16]
80022860:	e5932014 	ldr	r2, [r3, #20]
80022864:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022868:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002286c:	eb0003f7 	bl	80023850 <readi>
80022870:	e50b0008 	str	r0, [fp, #-8]
80022874:	e51b3008 	ldr	r3, [fp, #-8]
80022878:	e3530000 	cmp	r3, #0
8002287c:	da000005 	ble	80022898 <fileread+0xc4>
80022880:	e51b3010 	ldr	r3, [fp, #-16]
80022884:	e5932014 	ldr	r2, [r3, #20]
80022888:	e51b3008 	ldr	r3, [fp, #-8]
8002288c:	e0822003 	add	r2, r2, r3
80022890:	e51b3010 	ldr	r3, [fp, #-16]
80022894:	e5832014 	str	r2, [r3, #20]
80022898:	e51b3010 	ldr	r3, [fp, #-16]
8002289c:	e5933010 	ldr	r3, [r3, #16]
800228a0:	e1a00003 	mov	r0, r3
800228a4:	eb0002a1 	bl	80023330 <iunlock>
800228a8:	e51b3008 	ldr	r3, [fp, #-8]
800228ac:	ea000001 	b	800228b8 <fileread+0xe4>
800228b0:	e59f000c 	ldr	r0, [pc, #12]	@ 800228c4 <fileread+0xf0>
800228b4:	ebfffc8e 	bl	80021af4 <panic>
800228b8:	e1a00003 	mov	r0, r3
800228bc:	e24bd004 	sub	sp, fp, #4
800228c0:	e8bd8800 	pop	{fp, pc}
800228c4:	800298c4 	.word	0x800298c4

800228c8 <filewrite>:
800228c8:	e92d4800 	push	{fp, lr}
800228cc:	e28db004 	add	fp, sp, #4
800228d0:	e24dd020 	sub	sp, sp, #32
800228d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800228d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800228dc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800228e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228e4:	e5d33009 	ldrb	r3, [r3, #9]
800228e8:	e3530000 	cmp	r3, #0
800228ec:	1a000001 	bne	800228f8 <filewrite+0x30>
800228f0:	e3e03000 	mvn	r3, #0
800228f4:	ea000058 	b	80022a5c <filewrite+0x194>
800228f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228fc:	e5d33000 	ldrb	r3, [r3]
80022900:	e3530001 	cmp	r3, #1
80022904:	1a000007 	bne	80022928 <filewrite+0x60>
80022908:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002290c:	e593300c 	ldr	r3, [r3, #12]
80022910:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022914:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022918:	e1a00003 	mov	r0, r3
8002291c:	eb00089f 	bl	80024ba0 <pipewrite>
80022920:	e1a03000 	mov	r3, r0
80022924:	ea00004c 	b	80022a5c <filewrite+0x194>
80022928:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002292c:	e5d33000 	ldrb	r3, [r3]
80022930:	e3530002 	cmp	r3, #2
80022934:	1a000046 	bne	80022a54 <filewrite+0x18c>
80022938:	e3a03c06 	mov	r3, #1536	@ 0x600
8002293c:	e50b3010 	str	r3, [fp, #-16]
80022940:	e3a03000 	mov	r3, #0
80022944:	e50b3008 	str	r3, [fp, #-8]
80022948:	ea000033 	b	80022a1c <filewrite+0x154>
8002294c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022950:	e51b3008 	ldr	r3, [fp, #-8]
80022954:	e0423003 	sub	r3, r2, r3
80022958:	e50b300c 	str	r3, [fp, #-12]
8002295c:	e51b200c 	ldr	r2, [fp, #-12]
80022960:	e51b3010 	ldr	r3, [fp, #-16]
80022964:	e1520003 	cmp	r2, r3
80022968:	da000001 	ble	80022974 <filewrite+0xac>
8002296c:	e51b3010 	ldr	r3, [fp, #-16]
80022970:	e50b300c 	str	r3, [fp, #-12]
80022974:	eb0006b5 	bl	80024450 <begin_trans>
80022978:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002297c:	e5933010 	ldr	r3, [r3, #16]
80022980:	e1a00003 	mov	r0, r3
80022984:	eb000205 	bl	800231a0 <ilock>
80022988:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002298c:	e5930010 	ldr	r0, [r3, #16]
80022990:	e51b3008 	ldr	r3, [fp, #-8]
80022994:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022998:	e0821003 	add	r1, r2, r3
8002299c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229a0:	e5932014 	ldr	r2, [r3, #20]
800229a4:	e51b300c 	ldr	r3, [fp, #-12]
800229a8:	eb000423 	bl	80023a3c <writei>
800229ac:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800229b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800229b4:	e3530000 	cmp	r3, #0
800229b8:	da000005 	ble	800229d4 <filewrite+0x10c>
800229bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229c0:	e5932014 	ldr	r2, [r3, #20]
800229c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800229c8:	e0822003 	add	r2, r2, r3
800229cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229d0:	e5832014 	str	r2, [r3, #20]
800229d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229d8:	e5933010 	ldr	r3, [r3, #16]
800229dc:	e1a00003 	mov	r0, r3
800229e0:	eb000252 	bl	80023330 <iunlock>
800229e4:	eb0006ad 	bl	800244a0 <commit_trans>
800229e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800229ec:	e3530000 	cmp	r3, #0
800229f0:	ba00000e 	blt	80022a30 <filewrite+0x168>
800229f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800229f8:	e51b300c 	ldr	r3, [fp, #-12]
800229fc:	e1520003 	cmp	r2, r3
80022a00:	0a000001 	beq	80022a0c <filewrite+0x144>
80022a04:	e59f005c 	ldr	r0, [pc, #92]	@ 80022a68 <filewrite+0x1a0>
80022a08:	ebfffc39 	bl	80021af4 <panic>
80022a0c:	e51b2008 	ldr	r2, [fp, #-8]
80022a10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a14:	e0823003 	add	r3, r2, r3
80022a18:	e50b3008 	str	r3, [fp, #-8]
80022a1c:	e51b2008 	ldr	r2, [fp, #-8]
80022a20:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a24:	e1520003 	cmp	r2, r3
80022a28:	baffffc7 	blt	8002294c <filewrite+0x84>
80022a2c:	ea000000 	b	80022a34 <filewrite+0x16c>
80022a30:	e1a00000 	nop			@ (mov r0, r0)
80022a34:	e51b2008 	ldr	r2, [fp, #-8]
80022a38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a3c:	e1520003 	cmp	r2, r3
80022a40:	1a000001 	bne	80022a4c <filewrite+0x184>
80022a44:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a48:	ea000003 	b	80022a5c <filewrite+0x194>
80022a4c:	e3e03000 	mvn	r3, #0
80022a50:	ea000001 	b	80022a5c <filewrite+0x194>
80022a54:	e59f0010 	ldr	r0, [pc, #16]	@ 80022a6c <filewrite+0x1a4>
80022a58:	ebfffc25 	bl	80021af4 <panic>
80022a5c:	e1a00003 	mov	r0, r3
80022a60:	e24bd004 	sub	sp, fp, #4
80022a64:	e8bd8800 	pop	{fp, pc}
80022a68:	800298d0 	.word	0x800298d0
80022a6c:	800298e0 	.word	0x800298e0

80022a70 <readsb>:
80022a70:	e92d4800 	push	{fp, lr}
80022a74:	e28db004 	add	fp, sp, #4
80022a78:	e24dd010 	sub	sp, sp, #16
80022a7c:	e50b0010 	str	r0, [fp, #-16]
80022a80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a84:	e51b3010 	ldr	r3, [fp, #-16]
80022a88:	e3a01001 	mov	r1, #1
80022a8c:	e1a00003 	mov	r0, r3
80022a90:	ebfff81f 	bl	80020b14 <bread>
80022a94:	e50b0008 	str	r0, [fp, #-8]
80022a98:	e51b3008 	ldr	r3, [fp, #-8]
80022a9c:	e2833018 	add	r3, r3, #24
80022aa0:	e3a02010 	mov	r2, #16
80022aa4:	e1a01003 	mov	r1, r3
80022aa8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022aac:	ebfff5c5 	bl	800201c8 <memmove>
80022ab0:	e51b0008 	ldr	r0, [fp, #-8]
80022ab4:	ebfff840 	bl	80020bbc <brelse>
80022ab8:	e1a00000 	nop			@ (mov r0, r0)
80022abc:	e24bd004 	sub	sp, fp, #4
80022ac0:	e8bd8800 	pop	{fp, pc}

80022ac4 <bzero>:
80022ac4:	e92d4800 	push	{fp, lr}
80022ac8:	e28db004 	add	fp, sp, #4
80022acc:	e24dd010 	sub	sp, sp, #16
80022ad0:	e50b0010 	str	r0, [fp, #-16]
80022ad4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022ad8:	e51b3010 	ldr	r3, [fp, #-16]
80022adc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022ae0:	e1a01002 	mov	r1, r2
80022ae4:	e1a00003 	mov	r0, r3
80022ae8:	ebfff809 	bl	80020b14 <bread>
80022aec:	e50b0008 	str	r0, [fp, #-8]
80022af0:	e51b3008 	ldr	r3, [fp, #-8]
80022af4:	e2833018 	add	r3, r3, #24
80022af8:	e3a02c02 	mov	r2, #512	@ 0x200
80022afc:	e3a01000 	mov	r1, #0
80022b00:	e1a00003 	mov	r0, r3
80022b04:	ebfff53d 	bl	80020000 <memset>
80022b08:	e51b0008 	ldr	r0, [fp, #-8]
80022b0c:	eb00067b 	bl	80024500 <log_write>
80022b10:	e51b0008 	ldr	r0, [fp, #-8]
80022b14:	ebfff828 	bl	80020bbc <brelse>
80022b18:	e1a00000 	nop			@ (mov r0, r0)
80022b1c:	e24bd004 	sub	sp, fp, #4
80022b20:	e8bd8800 	pop	{fp, pc}

80022b24 <balloc>:
80022b24:	e92d4800 	push	{fp, lr}
80022b28:	e28db004 	add	fp, sp, #4
80022b2c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022b30:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022b34:	e3a03000 	mov	r3, #0
80022b38:	e50b3010 	str	r3, [fp, #-16]
80022b3c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022b40:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022b44:	e1a01002 	mov	r1, r2
80022b48:	e1a00003 	mov	r0, r3
80022b4c:	ebffffc7 	bl	80022a70 <readsb>
80022b50:	e3a03000 	mov	r3, #0
80022b54:	e50b3008 	str	r3, [fp, #-8]
80022b58:	ea000059 	b	80022cc4 <balloc+0x1a0>
80022b5c:	e51b3008 	ldr	r3, [fp, #-8]
80022b60:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022b64:	e282200f 	add	r2, r2, #15
80022b68:	e3530000 	cmp	r3, #0
80022b6c:	b1a03002 	movlt	r3, r2
80022b70:	a1a03003 	movge	r3, r3
80022b74:	e1a03643 	asr	r3, r3, #12
80022b78:	e1a02003 	mov	r2, r3
80022b7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022b80:	e1a031a3 	lsr	r3, r3, #3
80022b84:	e0823003 	add	r3, r2, r3
80022b88:	e2833003 	add	r3, r3, #3
80022b8c:	e1a01003 	mov	r1, r3
80022b90:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022b94:	ebfff7de 	bl	80020b14 <bread>
80022b98:	e50b0010 	str	r0, [fp, #-16]
80022b9c:	e3a03000 	mov	r3, #0
80022ba0:	e50b300c 	str	r3, [fp, #-12]
80022ba4:	ea000037 	b	80022c88 <balloc+0x164>
80022ba8:	e51b300c 	ldr	r3, [fp, #-12]
80022bac:	e2033007 	and	r3, r3, #7
80022bb0:	e3a02001 	mov	r2, #1
80022bb4:	e1a03312 	lsl	r3, r2, r3
80022bb8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022bbc:	e51b300c 	ldr	r3, [fp, #-12]
80022bc0:	e2832007 	add	r2, r3, #7
80022bc4:	e3530000 	cmp	r3, #0
80022bc8:	b1a03002 	movlt	r3, r2
80022bcc:	a1a03003 	movge	r3, r3
80022bd0:	e1a031c3 	asr	r3, r3, #3
80022bd4:	e1a02003 	mov	r2, r3
80022bd8:	e51b3010 	ldr	r3, [fp, #-16]
80022bdc:	e0833002 	add	r3, r3, r2
80022be0:	e5d33018 	ldrb	r3, [r3, #24]
80022be4:	e1a02003 	mov	r2, r3
80022be8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022bec:	e0033002 	and	r3, r3, r2
80022bf0:	e3530000 	cmp	r3, #0
80022bf4:	1a000020 	bne	80022c7c <balloc+0x158>
80022bf8:	e51b300c 	ldr	r3, [fp, #-12]
80022bfc:	e2832007 	add	r2, r3, #7
80022c00:	e3530000 	cmp	r3, #0
80022c04:	b1a03002 	movlt	r3, r2
80022c08:	a1a03003 	movge	r3, r3
80022c0c:	e1a031c3 	asr	r3, r3, #3
80022c10:	e51b2010 	ldr	r2, [fp, #-16]
80022c14:	e0822003 	add	r2, r2, r3
80022c18:	e5d22018 	ldrb	r2, [r2, #24]
80022c1c:	e6af1072 	sxtb	r1, r2
80022c20:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022c24:	e6af2072 	sxtb	r2, r2
80022c28:	e1812002 	orr	r2, r1, r2
80022c2c:	e6af2072 	sxtb	r2, r2
80022c30:	e6ef1072 	uxtb	r1, r2
80022c34:	e51b2010 	ldr	r2, [fp, #-16]
80022c38:	e0823003 	add	r3, r2, r3
80022c3c:	e1a02001 	mov	r2, r1
80022c40:	e5c32018 	strb	r2, [r3, #24]
80022c44:	e51b0010 	ldr	r0, [fp, #-16]
80022c48:	eb00062c 	bl	80024500 <log_write>
80022c4c:	e51b0010 	ldr	r0, [fp, #-16]
80022c50:	ebfff7d9 	bl	80020bbc <brelse>
80022c54:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c58:	e51b2008 	ldr	r2, [fp, #-8]
80022c5c:	e51b300c 	ldr	r3, [fp, #-12]
80022c60:	e0823003 	add	r3, r2, r3
80022c64:	e1a01003 	mov	r1, r3
80022c68:	ebffff95 	bl	80022ac4 <bzero>
80022c6c:	e51b2008 	ldr	r2, [fp, #-8]
80022c70:	e51b300c 	ldr	r3, [fp, #-12]
80022c74:	e0823003 	add	r3, r2, r3
80022c78:	ea000017 	b	80022cdc <balloc+0x1b8>
80022c7c:	e51b300c 	ldr	r3, [fp, #-12]
80022c80:	e2833001 	add	r3, r3, #1
80022c84:	e50b300c 	str	r3, [fp, #-12]
80022c88:	e51b300c 	ldr	r3, [fp, #-12]
80022c8c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022c90:	aa000006 	bge	80022cb0 <balloc+0x18c>
80022c94:	e51b2008 	ldr	r2, [fp, #-8]
80022c98:	e51b300c 	ldr	r3, [fp, #-12]
80022c9c:	e0823003 	add	r3, r2, r3
80022ca0:	e1a02003 	mov	r2, r3
80022ca4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022ca8:	e1520003 	cmp	r2, r3
80022cac:	3affffbd 	bcc	80022ba8 <balloc+0x84>
80022cb0:	e51b0010 	ldr	r0, [fp, #-16]
80022cb4:	ebfff7c0 	bl	80020bbc <brelse>
80022cb8:	e51b3008 	ldr	r3, [fp, #-8]
80022cbc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022cc0:	e50b3008 	str	r3, [fp, #-8]
80022cc4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022cc8:	e51b3008 	ldr	r3, [fp, #-8]
80022ccc:	e1520003 	cmp	r2, r3
80022cd0:	8affffa1 	bhi	80022b5c <balloc+0x38>
80022cd4:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ce8 <balloc+0x1c4>
80022cd8:	ebfffb85 	bl	80021af4 <panic>
80022cdc:	e1a00003 	mov	r0, r3
80022ce0:	e24bd004 	sub	sp, fp, #4
80022ce4:	e8bd8800 	pop	{fp, pc}
80022ce8:	800298ec 	.word	0x800298ec

80022cec <bfree>:
80022cec:	e92d4800 	push	{fp, lr}
80022cf0:	e28db004 	add	fp, sp, #4
80022cf4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022cf8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022cfc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022d00:	e24b3020 	sub	r3, fp, #32
80022d04:	e1a01003 	mov	r1, r3
80022d08:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d0c:	ebffff57 	bl	80022a70 <readsb>
80022d10:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022d18:	e1a02623 	lsr	r2, r3, #12
80022d1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022d20:	e1a031a3 	lsr	r3, r3, #3
80022d24:	e0823003 	add	r3, r2, r3
80022d28:	e2833003 	add	r3, r3, #3
80022d2c:	e1a01003 	mov	r1, r3
80022d30:	ebfff777 	bl	80020b14 <bread>
80022d34:	e50b0008 	str	r0, [fp, #-8]
80022d38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022d3c:	e1a03a03 	lsl	r3, r3, #20
80022d40:	e1a03a23 	lsr	r3, r3, #20
80022d44:	e50b300c 	str	r3, [fp, #-12]
80022d48:	e51b300c 	ldr	r3, [fp, #-12]
80022d4c:	e2033007 	and	r3, r3, #7
80022d50:	e3a02001 	mov	r2, #1
80022d54:	e1a03312 	lsl	r3, r2, r3
80022d58:	e50b3010 	str	r3, [fp, #-16]
80022d5c:	e51b300c 	ldr	r3, [fp, #-12]
80022d60:	e2832007 	add	r2, r3, #7
80022d64:	e3530000 	cmp	r3, #0
80022d68:	b1a03002 	movlt	r3, r2
80022d6c:	a1a03003 	movge	r3, r3
80022d70:	e1a031c3 	asr	r3, r3, #3
80022d74:	e1a02003 	mov	r2, r3
80022d78:	e51b3008 	ldr	r3, [fp, #-8]
80022d7c:	e0833002 	add	r3, r3, r2
80022d80:	e5d33018 	ldrb	r3, [r3, #24]
80022d84:	e1a02003 	mov	r2, r3
80022d88:	e51b3010 	ldr	r3, [fp, #-16]
80022d8c:	e0033002 	and	r3, r3, r2
80022d90:	e3530000 	cmp	r3, #0
80022d94:	1a000001 	bne	80022da0 <bfree+0xb4>
80022d98:	e59f0070 	ldr	r0, [pc, #112]	@ 80022e10 <bfree+0x124>
80022d9c:	ebfffb54 	bl	80021af4 <panic>
80022da0:	e51b300c 	ldr	r3, [fp, #-12]
80022da4:	e2832007 	add	r2, r3, #7
80022da8:	e3530000 	cmp	r3, #0
80022dac:	b1a03002 	movlt	r3, r2
80022db0:	a1a03003 	movge	r3, r3
80022db4:	e1a031c3 	asr	r3, r3, #3
80022db8:	e51b2008 	ldr	r2, [fp, #-8]
80022dbc:	e0822003 	add	r2, r2, r3
80022dc0:	e5d22018 	ldrb	r2, [r2, #24]
80022dc4:	e6af1072 	sxtb	r1, r2
80022dc8:	e51b2010 	ldr	r2, [fp, #-16]
80022dcc:	e6af2072 	sxtb	r2, r2
80022dd0:	e1e02002 	mvn	r2, r2
80022dd4:	e6af2072 	sxtb	r2, r2
80022dd8:	e0022001 	and	r2, r2, r1
80022ddc:	e6af2072 	sxtb	r2, r2
80022de0:	e6ef1072 	uxtb	r1, r2
80022de4:	e51b2008 	ldr	r2, [fp, #-8]
80022de8:	e0823003 	add	r3, r2, r3
80022dec:	e1a02001 	mov	r2, r1
80022df0:	e5c32018 	strb	r2, [r3, #24]
80022df4:	e51b0008 	ldr	r0, [fp, #-8]
80022df8:	eb0005c0 	bl	80024500 <log_write>
80022dfc:	e51b0008 	ldr	r0, [fp, #-8]
80022e00:	ebfff76d 	bl	80020bbc <brelse>
80022e04:	e1a00000 	nop			@ (mov r0, r0)
80022e08:	e24bd004 	sub	sp, fp, #4
80022e0c:	e8bd8800 	pop	{fp, pc}
80022e10:	80029904 	.word	0x80029904

80022e14 <iinit>:
80022e14:	e92d4800 	push	{fp, lr}
80022e18:	e28db004 	add	fp, sp, #4
80022e1c:	e59f100c 	ldr	r1, [pc, #12]	@ 80022e30 <iinit+0x1c>
80022e20:	e59f000c 	ldr	r0, [pc, #12]	@ 80022e34 <iinit+0x20>
80022e24:	eb000cf5 	bl	80026200 <initlock>
80022e28:	e1a00000 	nop			@ (mov r0, r0)
80022e2c:	e8bd8800 	pop	{fp, pc}
80022e30:	80029918 	.word	0x80029918
80022e34:	800ac4e4 	.word	0x800ac4e4

80022e38 <ialloc>:
80022e38:	e92d4800 	push	{fp, lr}
80022e3c:	e28db004 	add	fp, sp, #4
80022e40:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022e44:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022e48:	e1a03001 	mov	r3, r1
80022e4c:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022e50:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022e54:	e24b2020 	sub	r2, fp, #32
80022e58:	e1a01002 	mov	r1, r2
80022e5c:	e1a00003 	mov	r0, r3
80022e60:	ebffff02 	bl	80022a70 <readsb>
80022e64:	e3a03001 	mov	r3, #1
80022e68:	e50b3008 	str	r3, [fp, #-8]
80022e6c:	ea000027 	b	80022f10 <ialloc+0xd8>
80022e70:	e51b3008 	ldr	r3, [fp, #-8]
80022e74:	e1a031a3 	lsr	r3, r3, #3
80022e78:	e2833002 	add	r3, r3, #2
80022e7c:	e1a01003 	mov	r1, r3
80022e80:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e84:	ebfff722 	bl	80020b14 <bread>
80022e88:	e50b000c 	str	r0, [fp, #-12]
80022e8c:	e51b300c 	ldr	r3, [fp, #-12]
80022e90:	e2832018 	add	r2, r3, #24
80022e94:	e51b3008 	ldr	r3, [fp, #-8]
80022e98:	e2033007 	and	r3, r3, #7
80022e9c:	e1a03303 	lsl	r3, r3, #6
80022ea0:	e0823003 	add	r3, r2, r3
80022ea4:	e50b3010 	str	r3, [fp, #-16]
80022ea8:	e51b3010 	ldr	r3, [fp, #-16]
80022eac:	e1d330f0 	ldrsh	r3, [r3]
80022eb0:	e3530000 	cmp	r3, #0
80022eb4:	1a000010 	bne	80022efc <ialloc+0xc4>
80022eb8:	e3a02040 	mov	r2, #64	@ 0x40
80022ebc:	e3a01000 	mov	r1, #0
80022ec0:	e51b0010 	ldr	r0, [fp, #-16]
80022ec4:	ebfff44d 	bl	80020000 <memset>
80022ec8:	e51b3010 	ldr	r3, [fp, #-16]
80022ecc:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022ed0:	e1c320b0 	strh	r2, [r3]
80022ed4:	e51b000c 	ldr	r0, [fp, #-12]
80022ed8:	eb000588 	bl	80024500 <log_write>
80022edc:	e51b000c 	ldr	r0, [fp, #-12]
80022ee0:	ebfff735 	bl	80020bbc <brelse>
80022ee4:	e51b3008 	ldr	r3, [fp, #-8]
80022ee8:	e1a01003 	mov	r1, r3
80022eec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022ef0:	eb000048 	bl	80023018 <iget>
80022ef4:	e1a03000 	mov	r3, r0
80022ef8:	ea00000a 	b	80022f28 <ialloc+0xf0>
80022efc:	e51b000c 	ldr	r0, [fp, #-12]
80022f00:	ebfff72d 	bl	80020bbc <brelse>
80022f04:	e51b3008 	ldr	r3, [fp, #-8]
80022f08:	e2833001 	add	r3, r3, #1
80022f0c:	e50b3008 	str	r3, [fp, #-8]
80022f10:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022f14:	e51b3008 	ldr	r3, [fp, #-8]
80022f18:	e1520003 	cmp	r2, r3
80022f1c:	8affffd3 	bhi	80022e70 <ialloc+0x38>
80022f20:	e59f000c 	ldr	r0, [pc, #12]	@ 80022f34 <ialloc+0xfc>
80022f24:	ebfffaf2 	bl	80021af4 <panic>
80022f28:	e1a00003 	mov	r0, r3
80022f2c:	e24bd004 	sub	sp, fp, #4
80022f30:	e8bd8800 	pop	{fp, pc}
80022f34:	80029920 	.word	0x80029920

80022f38 <iupdate>:
80022f38:	e92d4800 	push	{fp, lr}
80022f3c:	e28db004 	add	fp, sp, #4
80022f40:	e24dd010 	sub	sp, sp, #16
80022f44:	e50b0010 	str	r0, [fp, #-16]
80022f48:	e51b3010 	ldr	r3, [fp, #-16]
80022f4c:	e5932000 	ldr	r2, [r3]
80022f50:	e51b3010 	ldr	r3, [fp, #-16]
80022f54:	e5933004 	ldr	r3, [r3, #4]
80022f58:	e1a031a3 	lsr	r3, r3, #3
80022f5c:	e2833002 	add	r3, r3, #2
80022f60:	e1a01003 	mov	r1, r3
80022f64:	e1a00002 	mov	r0, r2
80022f68:	ebfff6e9 	bl	80020b14 <bread>
80022f6c:	e50b0008 	str	r0, [fp, #-8]
80022f70:	e51b3008 	ldr	r3, [fp, #-8]
80022f74:	e2832018 	add	r2, r3, #24
80022f78:	e51b3010 	ldr	r3, [fp, #-16]
80022f7c:	e5933004 	ldr	r3, [r3, #4]
80022f80:	e2033007 	and	r3, r3, #7
80022f84:	e1a03303 	lsl	r3, r3, #6
80022f88:	e0823003 	add	r3, r2, r3
80022f8c:	e50b300c 	str	r3, [fp, #-12]
80022f90:	e51b3010 	ldr	r3, [fp, #-16]
80022f94:	e1d321f0 	ldrsh	r2, [r3, #16]
80022f98:	e51b300c 	ldr	r3, [fp, #-12]
80022f9c:	e1c320b0 	strh	r2, [r3]
80022fa0:	e51b3010 	ldr	r3, [fp, #-16]
80022fa4:	e1d321f2 	ldrsh	r2, [r3, #18]
80022fa8:	e51b300c 	ldr	r3, [fp, #-12]
80022fac:	e1c320b2 	strh	r2, [r3, #2]
80022fb0:	e51b3010 	ldr	r3, [fp, #-16]
80022fb4:	e1d321f4 	ldrsh	r2, [r3, #20]
80022fb8:	e51b300c 	ldr	r3, [fp, #-12]
80022fbc:	e1c320b4 	strh	r2, [r3, #4]
80022fc0:	e51b3010 	ldr	r3, [fp, #-16]
80022fc4:	e1d321f6 	ldrsh	r2, [r3, #22]
80022fc8:	e51b300c 	ldr	r3, [fp, #-12]
80022fcc:	e1c320b6 	strh	r2, [r3, #6]
80022fd0:	e51b3010 	ldr	r3, [fp, #-16]
80022fd4:	e5932018 	ldr	r2, [r3, #24]
80022fd8:	e51b300c 	ldr	r3, [fp, #-12]
80022fdc:	e5832008 	str	r2, [r3, #8]
80022fe0:	e51b300c 	ldr	r3, [fp, #-12]
80022fe4:	e283000c 	add	r0, r3, #12
80022fe8:	e51b3010 	ldr	r3, [fp, #-16]
80022fec:	e283301c 	add	r3, r3, #28
80022ff0:	e3a02034 	mov	r2, #52	@ 0x34
80022ff4:	e1a01003 	mov	r1, r3
80022ff8:	ebfff472 	bl	800201c8 <memmove>
80022ffc:	e51b0008 	ldr	r0, [fp, #-8]
80023000:	eb00053e 	bl	80024500 <log_write>
80023004:	e51b0008 	ldr	r0, [fp, #-8]
80023008:	ebfff6eb 	bl	80020bbc <brelse>
8002300c:	e1a00000 	nop			@ (mov r0, r0)
80023010:	e24bd004 	sub	sp, fp, #4
80023014:	e8bd8800 	pop	{fp, pc}

80023018 <iget>:
80023018:	e92d4800 	push	{fp, lr}
8002301c:	e28db004 	add	fp, sp, #4
80023020:	e24dd010 	sub	sp, sp, #16
80023024:	e50b0010 	str	r0, [fp, #-16]
80023028:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002302c:	e59f0114 	ldr	r0, [pc, #276]	@ 80023148 <iget+0x130>
80023030:	eb000c84 	bl	80026248 <acquire>
80023034:	e3a03000 	mov	r3, #0
80023038:	e50b300c 	str	r3, [fp, #-12]
8002303c:	e59f3108 	ldr	r3, [pc, #264]	@ 8002314c <iget+0x134>
80023040:	e50b3008 	str	r3, [fp, #-8]
80023044:	ea000022 	b	800230d4 <iget+0xbc>
80023048:	e51b3008 	ldr	r3, [fp, #-8]
8002304c:	e5933008 	ldr	r3, [r3, #8]
80023050:	e3530000 	cmp	r3, #0
80023054:	da000012 	ble	800230a4 <iget+0x8c>
80023058:	e51b3008 	ldr	r3, [fp, #-8]
8002305c:	e5933000 	ldr	r3, [r3]
80023060:	e51b2010 	ldr	r2, [fp, #-16]
80023064:	e1520003 	cmp	r2, r3
80023068:	1a00000d 	bne	800230a4 <iget+0x8c>
8002306c:	e51b3008 	ldr	r3, [fp, #-8]
80023070:	e5933004 	ldr	r3, [r3, #4]
80023074:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023078:	e1520003 	cmp	r2, r3
8002307c:	1a000008 	bne	800230a4 <iget+0x8c>
80023080:	e51b3008 	ldr	r3, [fp, #-8]
80023084:	e5933008 	ldr	r3, [r3, #8]
80023088:	e2832001 	add	r2, r3, #1
8002308c:	e51b3008 	ldr	r3, [fp, #-8]
80023090:	e5832008 	str	r2, [r3, #8]
80023094:	e59f00ac 	ldr	r0, [pc, #172]	@ 80023148 <iget+0x130>
80023098:	eb000c75 	bl	80026274 <release>
8002309c:	e51b3008 	ldr	r3, [fp, #-8]
800230a0:	ea000025 	b	8002313c <iget+0x124>
800230a4:	e51b300c 	ldr	r3, [fp, #-12]
800230a8:	e3530000 	cmp	r3, #0
800230ac:	1a000005 	bne	800230c8 <iget+0xb0>
800230b0:	e51b3008 	ldr	r3, [fp, #-8]
800230b4:	e5933008 	ldr	r3, [r3, #8]
800230b8:	e3530000 	cmp	r3, #0
800230bc:	1a000001 	bne	800230c8 <iget+0xb0>
800230c0:	e51b3008 	ldr	r3, [fp, #-8]
800230c4:	e50b300c 	str	r3, [fp, #-12]
800230c8:	e51b3008 	ldr	r3, [fp, #-8]
800230cc:	e2833050 	add	r3, r3, #80	@ 0x50
800230d0:	e50b3008 	str	r3, [fp, #-8]
800230d4:	e51b3008 	ldr	r3, [fp, #-8]
800230d8:	e59f2070 	ldr	r2, [pc, #112]	@ 80023150 <iget+0x138>
800230dc:	e1530002 	cmp	r3, r2
800230e0:	3affffd8 	bcc	80023048 <iget+0x30>
800230e4:	e51b300c 	ldr	r3, [fp, #-12]
800230e8:	e3530000 	cmp	r3, #0
800230ec:	1a000001 	bne	800230f8 <iget+0xe0>
800230f0:	e59f005c 	ldr	r0, [pc, #92]	@ 80023154 <iget+0x13c>
800230f4:	ebfffa7e 	bl	80021af4 <panic>
800230f8:	e51b300c 	ldr	r3, [fp, #-12]
800230fc:	e50b3008 	str	r3, [fp, #-8]
80023100:	e51b3008 	ldr	r3, [fp, #-8]
80023104:	e51b2010 	ldr	r2, [fp, #-16]
80023108:	e5832000 	str	r2, [r3]
8002310c:	e51b3008 	ldr	r3, [fp, #-8]
80023110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023114:	e5832004 	str	r2, [r3, #4]
80023118:	e51b3008 	ldr	r3, [fp, #-8]
8002311c:	e3a02001 	mov	r2, #1
80023120:	e5832008 	str	r2, [r3, #8]
80023124:	e51b3008 	ldr	r3, [fp, #-8]
80023128:	e3a02000 	mov	r2, #0
8002312c:	e583200c 	str	r2, [r3, #12]
80023130:	e59f0010 	ldr	r0, [pc, #16]	@ 80023148 <iget+0x130>
80023134:	eb000c4e 	bl	80026274 <release>
80023138:	e51b3008 	ldr	r3, [fp, #-8]
8002313c:	e1a00003 	mov	r0, r3
80023140:	e24bd004 	sub	sp, fp, #4
80023144:	e8bd8800 	pop	{fp, pc}
80023148:	800ac4e4 	.word	0x800ac4e4
8002314c:	800ac518 	.word	0x800ac518
80023150:	800ad4b8 	.word	0x800ad4b8
80023154:	80029934 	.word	0x80029934

80023158 <idup>:
80023158:	e92d4800 	push	{fp, lr}
8002315c:	e28db004 	add	fp, sp, #4
80023160:	e24dd008 	sub	sp, sp, #8
80023164:	e50b0008 	str	r0, [fp, #-8]
80023168:	e59f002c 	ldr	r0, [pc, #44]	@ 8002319c <idup+0x44>
8002316c:	eb000c35 	bl	80026248 <acquire>
80023170:	e51b3008 	ldr	r3, [fp, #-8]
80023174:	e5933008 	ldr	r3, [r3, #8]
80023178:	e2832001 	add	r2, r3, #1
8002317c:	e51b3008 	ldr	r3, [fp, #-8]
80023180:	e5832008 	str	r2, [r3, #8]
80023184:	e59f0010 	ldr	r0, [pc, #16]	@ 8002319c <idup+0x44>
80023188:	eb000c39 	bl	80026274 <release>
8002318c:	e51b3008 	ldr	r3, [fp, #-8]
80023190:	e1a00003 	mov	r0, r3
80023194:	e24bd004 	sub	sp, fp, #4
80023198:	e8bd8800 	pop	{fp, pc}
8002319c:	800ac4e4 	.word	0x800ac4e4

800231a0 <ilock>:
800231a0:	e92d4800 	push	{fp, lr}
800231a4:	e28db004 	add	fp, sp, #4
800231a8:	e24dd010 	sub	sp, sp, #16
800231ac:	e50b0010 	str	r0, [fp, #-16]
800231b0:	e51b3010 	ldr	r3, [fp, #-16]
800231b4:	e3530000 	cmp	r3, #0
800231b8:	0a000003 	beq	800231cc <ilock+0x2c>
800231bc:	e51b3010 	ldr	r3, [fp, #-16]
800231c0:	e5933008 	ldr	r3, [r3, #8]
800231c4:	e3530000 	cmp	r3, #0
800231c8:	ca000001 	bgt	800231d4 <ilock+0x34>
800231cc:	e59f0150 	ldr	r0, [pc, #336]	@ 80023324 <ilock+0x184>
800231d0:	ebfffa47 	bl	80021af4 <panic>
800231d4:	e59f014c 	ldr	r0, [pc, #332]	@ 80023328 <ilock+0x188>
800231d8:	eb000c1a 	bl	80026248 <acquire>
800231dc:	ea000002 	b	800231ec <ilock+0x4c>
800231e0:	e59f1140 	ldr	r1, [pc, #320]	@ 80023328 <ilock+0x188>
800231e4:	e51b0010 	ldr	r0, [fp, #-16]
800231e8:	eb000a9b 	bl	80025c5c <sleep>
800231ec:	e51b3010 	ldr	r3, [fp, #-16]
800231f0:	e593300c 	ldr	r3, [r3, #12]
800231f4:	e2033001 	and	r3, r3, #1
800231f8:	e3530000 	cmp	r3, #0
800231fc:	1afffff7 	bne	800231e0 <ilock+0x40>
80023200:	e51b3010 	ldr	r3, [fp, #-16]
80023204:	e593300c 	ldr	r3, [r3, #12]
80023208:	e3832001 	orr	r2, r3, #1
8002320c:	e51b3010 	ldr	r3, [fp, #-16]
80023210:	e583200c 	str	r2, [r3, #12]
80023214:	e59f010c 	ldr	r0, [pc, #268]	@ 80023328 <ilock+0x188>
80023218:	eb000c15 	bl	80026274 <release>
8002321c:	e51b3010 	ldr	r3, [fp, #-16]
80023220:	e593300c 	ldr	r3, [r3, #12]
80023224:	e2033002 	and	r3, r3, #2
80023228:	e3530000 	cmp	r3, #0
8002322c:	1a000039 	bne	80023318 <ilock+0x178>
80023230:	e51b3010 	ldr	r3, [fp, #-16]
80023234:	e5932000 	ldr	r2, [r3]
80023238:	e51b3010 	ldr	r3, [fp, #-16]
8002323c:	e5933004 	ldr	r3, [r3, #4]
80023240:	e1a031a3 	lsr	r3, r3, #3
80023244:	e2833002 	add	r3, r3, #2
80023248:	e1a01003 	mov	r1, r3
8002324c:	e1a00002 	mov	r0, r2
80023250:	ebfff62f 	bl	80020b14 <bread>
80023254:	e50b0008 	str	r0, [fp, #-8]
80023258:	e51b3008 	ldr	r3, [fp, #-8]
8002325c:	e2832018 	add	r2, r3, #24
80023260:	e51b3010 	ldr	r3, [fp, #-16]
80023264:	e5933004 	ldr	r3, [r3, #4]
80023268:	e2033007 	and	r3, r3, #7
8002326c:	e1a03303 	lsl	r3, r3, #6
80023270:	e0823003 	add	r3, r2, r3
80023274:	e50b300c 	str	r3, [fp, #-12]
80023278:	e51b300c 	ldr	r3, [fp, #-12]
8002327c:	e1d320f0 	ldrsh	r2, [r3]
80023280:	e51b3010 	ldr	r3, [fp, #-16]
80023284:	e1c321b0 	strh	r2, [r3, #16]
80023288:	e51b300c 	ldr	r3, [fp, #-12]
8002328c:	e1d320f2 	ldrsh	r2, [r3, #2]
80023290:	e51b3010 	ldr	r3, [fp, #-16]
80023294:	e1c321b2 	strh	r2, [r3, #18]
80023298:	e51b300c 	ldr	r3, [fp, #-12]
8002329c:	e1d320f4 	ldrsh	r2, [r3, #4]
800232a0:	e51b3010 	ldr	r3, [fp, #-16]
800232a4:	e1c321b4 	strh	r2, [r3, #20]
800232a8:	e51b300c 	ldr	r3, [fp, #-12]
800232ac:	e1d320f6 	ldrsh	r2, [r3, #6]
800232b0:	e51b3010 	ldr	r3, [fp, #-16]
800232b4:	e1c321b6 	strh	r2, [r3, #22]
800232b8:	e51b300c 	ldr	r3, [fp, #-12]
800232bc:	e5932008 	ldr	r2, [r3, #8]
800232c0:	e51b3010 	ldr	r3, [fp, #-16]
800232c4:	e5832018 	str	r2, [r3, #24]
800232c8:	e51b3010 	ldr	r3, [fp, #-16]
800232cc:	e283001c 	add	r0, r3, #28
800232d0:	e51b300c 	ldr	r3, [fp, #-12]
800232d4:	e283300c 	add	r3, r3, #12
800232d8:	e3a02034 	mov	r2, #52	@ 0x34
800232dc:	e1a01003 	mov	r1, r3
800232e0:	ebfff3b8 	bl	800201c8 <memmove>
800232e4:	e51b0008 	ldr	r0, [fp, #-8]
800232e8:	ebfff633 	bl	80020bbc <brelse>
800232ec:	e51b3010 	ldr	r3, [fp, #-16]
800232f0:	e593300c 	ldr	r3, [r3, #12]
800232f4:	e3832002 	orr	r2, r3, #2
800232f8:	e51b3010 	ldr	r3, [fp, #-16]
800232fc:	e583200c 	str	r2, [r3, #12]
80023300:	e51b3010 	ldr	r3, [fp, #-16]
80023304:	e1d331f0 	ldrsh	r3, [r3, #16]
80023308:	e3530000 	cmp	r3, #0
8002330c:	1a000001 	bne	80023318 <ilock+0x178>
80023310:	e59f0014 	ldr	r0, [pc, #20]	@ 8002332c <ilock+0x18c>
80023314:	ebfff9f6 	bl	80021af4 <panic>
80023318:	e1a00000 	nop			@ (mov r0, r0)
8002331c:	e24bd004 	sub	sp, fp, #4
80023320:	e8bd8800 	pop	{fp, pc}
80023324:	80029944 	.word	0x80029944
80023328:	800ac4e4 	.word	0x800ac4e4
8002332c:	8002994c 	.word	0x8002994c

80023330 <iunlock>:
80023330:	e92d4800 	push	{fp, lr}
80023334:	e28db004 	add	fp, sp, #4
80023338:	e24dd008 	sub	sp, sp, #8
8002333c:	e50b0008 	str	r0, [fp, #-8]
80023340:	e51b3008 	ldr	r3, [fp, #-8]
80023344:	e3530000 	cmp	r3, #0
80023348:	0a000008 	beq	80023370 <iunlock+0x40>
8002334c:	e51b3008 	ldr	r3, [fp, #-8]
80023350:	e593300c 	ldr	r3, [r3, #12]
80023354:	e2033001 	and	r3, r3, #1
80023358:	e3530000 	cmp	r3, #0
8002335c:	0a000003 	beq	80023370 <iunlock+0x40>
80023360:	e51b3008 	ldr	r3, [fp, #-8]
80023364:	e5933008 	ldr	r3, [r3, #8]
80023368:	e3530000 	cmp	r3, #0
8002336c:	ca000001 	bgt	80023378 <iunlock+0x48>
80023370:	e59f0038 	ldr	r0, [pc, #56]	@ 800233b0 <iunlock+0x80>
80023374:	ebfff9de 	bl	80021af4 <panic>
80023378:	e59f0034 	ldr	r0, [pc, #52]	@ 800233b4 <iunlock+0x84>
8002337c:	eb000bb1 	bl	80026248 <acquire>
80023380:	e51b3008 	ldr	r3, [fp, #-8]
80023384:	e593300c 	ldr	r3, [r3, #12]
80023388:	e3c32001 	bic	r2, r3, #1
8002338c:	e51b3008 	ldr	r3, [fp, #-8]
80023390:	e583200c 	str	r2, [r3, #12]
80023394:	e51b0008 	ldr	r0, [fp, #-8]
80023398:	eb000aa3 	bl	80025e2c <wakeup>
8002339c:	e59f0010 	ldr	r0, [pc, #16]	@ 800233b4 <iunlock+0x84>
800233a0:	eb000bb3 	bl	80026274 <release>
800233a4:	e1a00000 	nop			@ (mov r0, r0)
800233a8:	e24bd004 	sub	sp, fp, #4
800233ac:	e8bd8800 	pop	{fp, pc}
800233b0:	8002995c 	.word	0x8002995c
800233b4:	800ac4e4 	.word	0x800ac4e4

800233b8 <iput>:
800233b8:	e92d4800 	push	{fp, lr}
800233bc:	e28db004 	add	fp, sp, #4
800233c0:	e24dd008 	sub	sp, sp, #8
800233c4:	e50b0008 	str	r0, [fp, #-8]
800233c8:	e59f00cc 	ldr	r0, [pc, #204]	@ 8002349c <iput+0xe4>
800233cc:	eb000b9d 	bl	80026248 <acquire>
800233d0:	e51b3008 	ldr	r3, [fp, #-8]
800233d4:	e5933008 	ldr	r3, [r3, #8]
800233d8:	e3530001 	cmp	r3, #1
800233dc:	1a000024 	bne	80023474 <iput+0xbc>
800233e0:	e51b3008 	ldr	r3, [fp, #-8]
800233e4:	e593300c 	ldr	r3, [r3, #12]
800233e8:	e2033002 	and	r3, r3, #2
800233ec:	e3530000 	cmp	r3, #0
800233f0:	0a00001f 	beq	80023474 <iput+0xbc>
800233f4:	e51b3008 	ldr	r3, [fp, #-8]
800233f8:	e1d331f6 	ldrsh	r3, [r3, #22]
800233fc:	e3530000 	cmp	r3, #0
80023400:	1a00001b 	bne	80023474 <iput+0xbc>
80023404:	e51b3008 	ldr	r3, [fp, #-8]
80023408:	e593300c 	ldr	r3, [r3, #12]
8002340c:	e2033001 	and	r3, r3, #1
80023410:	e3530000 	cmp	r3, #0
80023414:	0a000001 	beq	80023420 <iput+0x68>
80023418:	e59f0080 	ldr	r0, [pc, #128]	@ 800234a0 <iput+0xe8>
8002341c:	ebfff9b4 	bl	80021af4 <panic>
80023420:	e51b3008 	ldr	r3, [fp, #-8]
80023424:	e593300c 	ldr	r3, [r3, #12]
80023428:	e3832001 	orr	r2, r3, #1
8002342c:	e51b3008 	ldr	r3, [fp, #-8]
80023430:	e583200c 	str	r2, [r3, #12]
80023434:	e59f0060 	ldr	r0, [pc, #96]	@ 8002349c <iput+0xe4>
80023438:	eb000b8d 	bl	80026274 <release>
8002343c:	e51b0008 	ldr	r0, [fp, #-8]
80023440:	eb00007f 	bl	80023644 <itrunc>
80023444:	e51b3008 	ldr	r3, [fp, #-8]
80023448:	e3a02000 	mov	r2, #0
8002344c:	e1c321b0 	strh	r2, [r3, #16]
80023450:	e51b0008 	ldr	r0, [fp, #-8]
80023454:	ebfffeb7 	bl	80022f38 <iupdate>
80023458:	e59f003c 	ldr	r0, [pc, #60]	@ 8002349c <iput+0xe4>
8002345c:	eb000b79 	bl	80026248 <acquire>
80023460:	e51b3008 	ldr	r3, [fp, #-8]
80023464:	e3a02000 	mov	r2, #0
80023468:	e583200c 	str	r2, [r3, #12]
8002346c:	e51b0008 	ldr	r0, [fp, #-8]
80023470:	eb000a6d 	bl	80025e2c <wakeup>
80023474:	e51b3008 	ldr	r3, [fp, #-8]
80023478:	e5933008 	ldr	r3, [r3, #8]
8002347c:	e2432001 	sub	r2, r3, #1
80023480:	e51b3008 	ldr	r3, [fp, #-8]
80023484:	e5832008 	str	r2, [r3, #8]
80023488:	e59f000c 	ldr	r0, [pc, #12]	@ 8002349c <iput+0xe4>
8002348c:	eb000b78 	bl	80026274 <release>
80023490:	e1a00000 	nop			@ (mov r0, r0)
80023494:	e24bd004 	sub	sp, fp, #4
80023498:	e8bd8800 	pop	{fp, pc}
8002349c:	800ac4e4 	.word	0x800ac4e4
800234a0:	80029964 	.word	0x80029964

800234a4 <iunlockput>:
800234a4:	e92d4800 	push	{fp, lr}
800234a8:	e28db004 	add	fp, sp, #4
800234ac:	e24dd008 	sub	sp, sp, #8
800234b0:	e50b0008 	str	r0, [fp, #-8]
800234b4:	e51b0008 	ldr	r0, [fp, #-8]
800234b8:	ebffff9c 	bl	80023330 <iunlock>
800234bc:	e51b0008 	ldr	r0, [fp, #-8]
800234c0:	ebffffbc 	bl	800233b8 <iput>
800234c4:	e1a00000 	nop			@ (mov r0, r0)
800234c8:	e24bd004 	sub	sp, fp, #4
800234cc:	e8bd8800 	pop	{fp, pc}

800234d0 <bmap>:
800234d0:	e92d4800 	push	{fp, lr}
800234d4:	e28db004 	add	fp, sp, #4
800234d8:	e24dd018 	sub	sp, sp, #24
800234dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800234e0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800234e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234e8:	e353000b 	cmp	r3, #11
800234ec:	8a000017 	bhi	80023550 <bmap+0x80>
800234f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800234f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234f8:	e2833006 	add	r3, r3, #6
800234fc:	e1a03103 	lsl	r3, r3, #2
80023500:	e0823003 	add	r3, r2, r3
80023504:	e5933004 	ldr	r3, [r3, #4]
80023508:	e50b3008 	str	r3, [fp, #-8]
8002350c:	e51b3008 	ldr	r3, [fp, #-8]
80023510:	e3530000 	cmp	r3, #0
80023514:	1a00000b 	bne	80023548 <bmap+0x78>
80023518:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002351c:	e5933000 	ldr	r3, [r3]
80023520:	e1a00003 	mov	r0, r3
80023524:	ebfffd7e 	bl	80022b24 <balloc>
80023528:	e50b0008 	str	r0, [fp, #-8]
8002352c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023530:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023534:	e2833006 	add	r3, r3, #6
80023538:	e1a03103 	lsl	r3, r3, #2
8002353c:	e0823003 	add	r3, r2, r3
80023540:	e51b2008 	ldr	r2, [fp, #-8]
80023544:	e5832004 	str	r2, [r3, #4]
80023548:	e51b3008 	ldr	r3, [fp, #-8]
8002354c:	ea000038 	b	80023634 <bmap+0x164>
80023550:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023554:	e243300c 	sub	r3, r3, #12
80023558:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002355c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023560:	e353007f 	cmp	r3, #127	@ 0x7f
80023564:	8a000030 	bhi	8002362c <bmap+0x15c>
80023568:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002356c:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023570:	e50b3008 	str	r3, [fp, #-8]
80023574:	e51b3008 	ldr	r3, [fp, #-8]
80023578:	e3530000 	cmp	r3, #0
8002357c:	1a000007 	bne	800235a0 <bmap+0xd0>
80023580:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023584:	e5933000 	ldr	r3, [r3]
80023588:	e1a00003 	mov	r0, r3
8002358c:	ebfffd64 	bl	80022b24 <balloc>
80023590:	e50b0008 	str	r0, [fp, #-8]
80023594:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023598:	e51b2008 	ldr	r2, [fp, #-8]
8002359c:	e583204c 	str	r2, [r3, #76]	@ 0x4c
800235a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235a4:	e5933000 	ldr	r3, [r3]
800235a8:	e51b1008 	ldr	r1, [fp, #-8]
800235ac:	e1a00003 	mov	r0, r3
800235b0:	ebfff557 	bl	80020b14 <bread>
800235b4:	e50b000c 	str	r0, [fp, #-12]
800235b8:	e51b300c 	ldr	r3, [fp, #-12]
800235bc:	e2833018 	add	r3, r3, #24
800235c0:	e50b3010 	str	r3, [fp, #-16]
800235c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235c8:	e1a03103 	lsl	r3, r3, #2
800235cc:	e51b2010 	ldr	r2, [fp, #-16]
800235d0:	e0823003 	add	r3, r2, r3
800235d4:	e5933000 	ldr	r3, [r3]
800235d8:	e50b3008 	str	r3, [fp, #-8]
800235dc:	e51b3008 	ldr	r3, [fp, #-8]
800235e0:	e3530000 	cmp	r3, #0
800235e4:	1a00000c 	bne	8002361c <bmap+0x14c>
800235e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235ec:	e5933000 	ldr	r3, [r3]
800235f0:	e1a00003 	mov	r0, r3
800235f4:	ebfffd4a 	bl	80022b24 <balloc>
800235f8:	e50b0008 	str	r0, [fp, #-8]
800235fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023600:	e1a03103 	lsl	r3, r3, #2
80023604:	e51b2010 	ldr	r2, [fp, #-16]
80023608:	e0823003 	add	r3, r2, r3
8002360c:	e51b2008 	ldr	r2, [fp, #-8]
80023610:	e5832000 	str	r2, [r3]
80023614:	e51b000c 	ldr	r0, [fp, #-12]
80023618:	eb0003b8 	bl	80024500 <log_write>
8002361c:	e51b000c 	ldr	r0, [fp, #-12]
80023620:	ebfff565 	bl	80020bbc <brelse>
80023624:	e51b3008 	ldr	r3, [fp, #-8]
80023628:	ea000001 	b	80023634 <bmap+0x164>
8002362c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023640 <bmap+0x170>
80023630:	ebfff92f 	bl	80021af4 <panic>
80023634:	e1a00003 	mov	r0, r3
80023638:	e24bd004 	sub	sp, fp, #4
8002363c:	e8bd8800 	pop	{fp, pc}
80023640:	80029970 	.word	0x80029970

80023644 <itrunc>:
80023644:	e92d4800 	push	{fp, lr}
80023648:	e28db004 	add	fp, sp, #4
8002364c:	e24dd018 	sub	sp, sp, #24
80023650:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023654:	e3a03000 	mov	r3, #0
80023658:	e50b3008 	str	r3, [fp, #-8]
8002365c:	ea00001c 	b	800236d4 <itrunc+0x90>
80023660:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023664:	e51b3008 	ldr	r3, [fp, #-8]
80023668:	e2833006 	add	r3, r3, #6
8002366c:	e1a03103 	lsl	r3, r3, #2
80023670:	e0823003 	add	r3, r2, r3
80023674:	e5933004 	ldr	r3, [r3, #4]
80023678:	e3530000 	cmp	r3, #0
8002367c:	0a000011 	beq	800236c8 <itrunc+0x84>
80023680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023684:	e5933000 	ldr	r3, [r3]
80023688:	e1a00003 	mov	r0, r3
8002368c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023690:	e51b3008 	ldr	r3, [fp, #-8]
80023694:	e2833006 	add	r3, r3, #6
80023698:	e1a03103 	lsl	r3, r3, #2
8002369c:	e0823003 	add	r3, r2, r3
800236a0:	e5933004 	ldr	r3, [r3, #4]
800236a4:	e1a01003 	mov	r1, r3
800236a8:	ebfffd8f 	bl	80022cec <bfree>
800236ac:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800236b0:	e51b3008 	ldr	r3, [fp, #-8]
800236b4:	e2833006 	add	r3, r3, #6
800236b8:	e1a03103 	lsl	r3, r3, #2
800236bc:	e0823003 	add	r3, r2, r3
800236c0:	e3a02000 	mov	r2, #0
800236c4:	e5832004 	str	r2, [r3, #4]
800236c8:	e51b3008 	ldr	r3, [fp, #-8]
800236cc:	e2833001 	add	r3, r3, #1
800236d0:	e50b3008 	str	r3, [fp, #-8]
800236d4:	e51b3008 	ldr	r3, [fp, #-8]
800236d8:	e353000b 	cmp	r3, #11
800236dc:	daffffdf 	ble	80023660 <itrunc+0x1c>
800236e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236e4:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800236e8:	e3530000 	cmp	r3, #0
800236ec:	0a000031 	beq	800237b8 <itrunc+0x174>
800236f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236f4:	e5932000 	ldr	r2, [r3]
800236f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236fc:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023700:	e1a01003 	mov	r1, r3
80023704:	e1a00002 	mov	r0, r2
80023708:	ebfff501 	bl	80020b14 <bread>
8002370c:	e50b0010 	str	r0, [fp, #-16]
80023710:	e51b3010 	ldr	r3, [fp, #-16]
80023714:	e2833018 	add	r3, r3, #24
80023718:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002371c:	e3a03000 	mov	r3, #0
80023720:	e50b300c 	str	r3, [fp, #-12]
80023724:	ea000013 	b	80023778 <itrunc+0x134>
80023728:	e51b300c 	ldr	r3, [fp, #-12]
8002372c:	e1a03103 	lsl	r3, r3, #2
80023730:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023734:	e0823003 	add	r3, r2, r3
80023738:	e5933000 	ldr	r3, [r3]
8002373c:	e3530000 	cmp	r3, #0
80023740:	0a000009 	beq	8002376c <itrunc+0x128>
80023744:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023748:	e5933000 	ldr	r3, [r3]
8002374c:	e1a00003 	mov	r0, r3
80023750:	e51b300c 	ldr	r3, [fp, #-12]
80023754:	e1a03103 	lsl	r3, r3, #2
80023758:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002375c:	e0823003 	add	r3, r2, r3
80023760:	e5933000 	ldr	r3, [r3]
80023764:	e1a01003 	mov	r1, r3
80023768:	ebfffd5f 	bl	80022cec <bfree>
8002376c:	e51b300c 	ldr	r3, [fp, #-12]
80023770:	e2833001 	add	r3, r3, #1
80023774:	e50b300c 	str	r3, [fp, #-12]
80023778:	e51b300c 	ldr	r3, [fp, #-12]
8002377c:	e353007f 	cmp	r3, #127	@ 0x7f
80023780:	9affffe8 	bls	80023728 <itrunc+0xe4>
80023784:	e51b0010 	ldr	r0, [fp, #-16]
80023788:	ebfff50b 	bl	80020bbc <brelse>
8002378c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023790:	e5933000 	ldr	r3, [r3]
80023794:	e1a02003 	mov	r2, r3
80023798:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002379c:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800237a0:	e1a01003 	mov	r1, r3
800237a4:	e1a00002 	mov	r0, r2
800237a8:	ebfffd4f 	bl	80022cec <bfree>
800237ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237b0:	e3a02000 	mov	r2, #0
800237b4:	e583204c 	str	r2, [r3, #76]	@ 0x4c
800237b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237bc:	e3a02000 	mov	r2, #0
800237c0:	e5832018 	str	r2, [r3, #24]
800237c4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800237c8:	ebfffdda 	bl	80022f38 <iupdate>
800237cc:	e1a00000 	nop			@ (mov r0, r0)
800237d0:	e24bd004 	sub	sp, fp, #4
800237d4:	e8bd8800 	pop	{fp, pc}

800237d8 <stati>:
800237d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800237dc:	e28db000 	add	fp, sp, #0
800237e0:	e24dd00c 	sub	sp, sp, #12
800237e4:	e50b0008 	str	r0, [fp, #-8]
800237e8:	e50b100c 	str	r1, [fp, #-12]
800237ec:	e51b3008 	ldr	r3, [fp, #-8]
800237f0:	e5933000 	ldr	r3, [r3]
800237f4:	e1a02003 	mov	r2, r3
800237f8:	e51b300c 	ldr	r3, [fp, #-12]
800237fc:	e5832004 	str	r2, [r3, #4]
80023800:	e51b3008 	ldr	r3, [fp, #-8]
80023804:	e5932004 	ldr	r2, [r3, #4]
80023808:	e51b300c 	ldr	r3, [fp, #-12]
8002380c:	e5832008 	str	r2, [r3, #8]
80023810:	e51b3008 	ldr	r3, [fp, #-8]
80023814:	e1d321f0 	ldrsh	r2, [r3, #16]
80023818:	e51b300c 	ldr	r3, [fp, #-12]
8002381c:	e1c320b0 	strh	r2, [r3]
80023820:	e51b3008 	ldr	r3, [fp, #-8]
80023824:	e1d321f6 	ldrsh	r2, [r3, #22]
80023828:	e51b300c 	ldr	r3, [fp, #-12]
8002382c:	e1c320bc 	strh	r2, [r3, #12]
80023830:	e51b3008 	ldr	r3, [fp, #-8]
80023834:	e5932018 	ldr	r2, [r3, #24]
80023838:	e51b300c 	ldr	r3, [fp, #-12]
8002383c:	e5832010 	str	r2, [r3, #16]
80023840:	e1a00000 	nop			@ (mov r0, r0)
80023844:	e28bd000 	add	sp, fp, #0
80023848:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002384c:	e12fff1e 	bx	lr

80023850 <readi>:
80023850:	e92d4810 	push	{r4, fp, lr}
80023854:	e28db008 	add	fp, sp, #8
80023858:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002385c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023860:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023864:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023868:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002386c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023870:	e1d331f0 	ldrsh	r3, [r3, #16]
80023874:	e3530003 	cmp	r3, #3
80023878:	1a00001b 	bne	800238ec <readi+0x9c>
8002387c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023880:	e1d331f2 	ldrsh	r3, [r3, #18]
80023884:	e3530000 	cmp	r3, #0
80023888:	ba00000a 	blt	800238b8 <readi+0x68>
8002388c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023890:	e1d331f2 	ldrsh	r3, [r3, #18]
80023894:	e3530009 	cmp	r3, #9
80023898:	ca000006 	bgt	800238b8 <readi+0x68>
8002389c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238a0:	e1d331f2 	ldrsh	r3, [r3, #18]
800238a4:	e1a02003 	mov	r2, r3
800238a8:	e59f3188 	ldr	r3, [pc, #392]	@ 80023a38 <readi+0x1e8>
800238ac:	e7933182 	ldr	r3, [r3, r2, lsl #3]
800238b0:	e3530000 	cmp	r3, #0
800238b4:	1a000001 	bne	800238c0 <readi+0x70>
800238b8:	e3e03000 	mvn	r3, #0
800238bc:	ea00005a 	b	80023a2c <readi+0x1dc>
800238c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238c4:	e1d331f2 	ldrsh	r3, [r3, #18]
800238c8:	e1a02003 	mov	r2, r3
800238cc:	e59f3164 	ldr	r3, [pc, #356]	@ 80023a38 <readi+0x1e8>
800238d0:	e7933182 	ldr	r3, [r3, r2, lsl #3]
800238d4:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
800238d8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
800238dc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800238e0:	e12fff33 	blx	r3
800238e4:	e1a03000 	mov	r3, r0
800238e8:	ea00004f 	b	80023a2c <readi+0x1dc>
800238ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238f0:	e5933018 	ldr	r3, [r3, #24]
800238f4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238f8:	e1520003 	cmp	r2, r3
800238fc:	8a000005 	bhi	80023918 <readi+0xc8>
80023900:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023904:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023908:	e0823003 	add	r3, r2, r3
8002390c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023910:	e1520003 	cmp	r2, r3
80023914:	9a000001 	bls	80023920 <readi+0xd0>
80023918:	e3e03000 	mvn	r3, #0
8002391c:	ea000042 	b	80023a2c <readi+0x1dc>
80023920:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023924:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023928:	e0822003 	add	r2, r2, r3
8002392c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023930:	e5933018 	ldr	r3, [r3, #24]
80023934:	e1520003 	cmp	r2, r3
80023938:	9a000004 	bls	80023950 <readi+0x100>
8002393c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023940:	e5932018 	ldr	r2, [r3, #24]
80023944:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023948:	e0423003 	sub	r3, r2, r3
8002394c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023950:	e3a03000 	mov	r3, #0
80023954:	e50b3010 	str	r3, [fp, #-16]
80023958:	ea00002e 	b	80023a18 <readi+0x1c8>
8002395c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023960:	e5934000 	ldr	r4, [r3]
80023964:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023968:	e1a034a3 	lsr	r3, r3, #9
8002396c:	e1a01003 	mov	r1, r3
80023970:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023974:	ebfffed5 	bl	800234d0 <bmap>
80023978:	e1a03000 	mov	r3, r0
8002397c:	e1a01003 	mov	r1, r3
80023980:	e1a00004 	mov	r0, r4
80023984:	ebfff462 	bl	80020b14 <bread>
80023988:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002398c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023990:	e1a03b83 	lsl	r3, r3, #23
80023994:	e1a03ba3 	lsr	r3, r3, #23
80023998:	e2632c02 	rsb	r2, r3, #512	@ 0x200
8002399c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800239a0:	e51b3010 	ldr	r3, [fp, #-16]
800239a4:	e0413003 	sub	r3, r1, r3
800239a8:	e1520003 	cmp	r2, r3
800239ac:	31a03002 	movcc	r3, r2
800239b0:	21a03003 	movcs	r3, r3
800239b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800239b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800239bc:	e2832018 	add	r2, r3, #24
800239c0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239c4:	e1a03b83 	lsl	r3, r3, #23
800239c8:	e1a03ba3 	lsr	r3, r3, #23
800239cc:	e0823003 	add	r3, r2, r3
800239d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800239d4:	e1a01003 	mov	r1, r3
800239d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800239dc:	ebfff1f9 	bl	800201c8 <memmove>
800239e0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800239e4:	ebfff474 	bl	80020bbc <brelse>
800239e8:	e51b2010 	ldr	r2, [fp, #-16]
800239ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239f0:	e0823003 	add	r3, r2, r3
800239f4:	e50b3010 	str	r3, [fp, #-16]
800239f8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a00:	e0823003 	add	r3, r2, r3
80023a04:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023a08:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023a0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a10:	e0823003 	add	r3, r2, r3
80023a14:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023a18:	e51b2010 	ldr	r2, [fp, #-16]
80023a1c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a20:	e1520003 	cmp	r2, r3
80023a24:	3affffcc 	bcc	8002395c <readi+0x10c>
80023a28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a2c:	e1a00003 	mov	r0, r3
80023a30:	e24bd008 	sub	sp, fp, #8
80023a34:	e8bd8810 	pop	{r4, fp, pc}
80023a38:	800abb00 	.word	0x800abb00

80023a3c <writei>:
80023a3c:	e92d4810 	push	{r4, fp, lr}
80023a40:	e28db008 	add	fp, sp, #8
80023a44:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023a48:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023a4c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023a50:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023a54:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023a58:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a5c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023a60:	e3530003 	cmp	r3, #3
80023a64:	1a00001d 	bne	80023ae0 <writei+0xa4>
80023a68:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a6c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a70:	e3530000 	cmp	r3, #0
80023a74:	ba00000b 	blt	80023aa8 <writei+0x6c>
80023a78:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a7c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a80:	e3530009 	cmp	r3, #9
80023a84:	ca000007 	bgt	80023aa8 <writei+0x6c>
80023a88:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a8c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a90:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023c54 <writei+0x218>
80023a94:	e1a03183 	lsl	r3, r3, #3
80023a98:	e0823003 	add	r3, r2, r3
80023a9c:	e5933004 	ldr	r3, [r3, #4]
80023aa0:	e3530000 	cmp	r3, #0
80023aa4:	1a000001 	bne	80023ab0 <writei+0x74>
80023aa8:	e3e03000 	mvn	r3, #0
80023aac:	ea000065 	b	80023c48 <writei+0x20c>
80023ab0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ab4:	e1d331f2 	ldrsh	r3, [r3, #18]
80023ab8:	e59f2194 	ldr	r2, [pc, #404]	@ 80023c54 <writei+0x218>
80023abc:	e1a03183 	lsl	r3, r3, #3
80023ac0:	e0823003 	add	r3, r2, r3
80023ac4:	e5933004 	ldr	r3, [r3, #4]
80023ac8:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023acc:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023ad0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ad4:	e12fff33 	blx	r3
80023ad8:	e1a03000 	mov	r3, r0
80023adc:	ea000059 	b	80023c48 <writei+0x20c>
80023ae0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ae4:	e5933018 	ldr	r3, [r3, #24]
80023ae8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023aec:	e1520003 	cmp	r2, r3
80023af0:	8a000005 	bhi	80023b0c <writei+0xd0>
80023af4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023af8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023afc:	e0823003 	add	r3, r2, r3
80023b00:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b04:	e1520003 	cmp	r2, r3
80023b08:	9a000001 	bls	80023b14 <writei+0xd8>
80023b0c:	e3e03000 	mvn	r3, #0
80023b10:	ea00004c 	b	80023c48 <writei+0x20c>
80023b14:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b1c:	e0823003 	add	r3, r2, r3
80023b20:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023b24:	9a000001 	bls	80023b30 <writei+0xf4>
80023b28:	e3e03000 	mvn	r3, #0
80023b2c:	ea000045 	b	80023c48 <writei+0x20c>
80023b30:	e3a03000 	mov	r3, #0
80023b34:	e50b3010 	str	r3, [fp, #-16]
80023b38:	ea000030 	b	80023c00 <writei+0x1c4>
80023b3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b40:	e5934000 	ldr	r4, [r3]
80023b44:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b48:	e1a034a3 	lsr	r3, r3, #9
80023b4c:	e1a01003 	mov	r1, r3
80023b50:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b54:	ebfffe5d 	bl	800234d0 <bmap>
80023b58:	e1a03000 	mov	r3, r0
80023b5c:	e1a01003 	mov	r1, r3
80023b60:	e1a00004 	mov	r0, r4
80023b64:	ebfff3ea 	bl	80020b14 <bread>
80023b68:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023b6c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b70:	e1a03b83 	lsl	r3, r3, #23
80023b74:	e1a03ba3 	lsr	r3, r3, #23
80023b78:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023b7c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023b80:	e51b3010 	ldr	r3, [fp, #-16]
80023b84:	e0413003 	sub	r3, r1, r3
80023b88:	e1520003 	cmp	r2, r3
80023b8c:	31a03002 	movcc	r3, r2
80023b90:	21a03003 	movcs	r3, r3
80023b94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023b98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023b9c:	e2832018 	add	r2, r3, #24
80023ba0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ba4:	e1a03b83 	lsl	r3, r3, #23
80023ba8:	e1a03ba3 	lsr	r3, r3, #23
80023bac:	e0823003 	add	r3, r2, r3
80023bb0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023bb4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023bb8:	e1a00003 	mov	r0, r3
80023bbc:	ebfff181 	bl	800201c8 <memmove>
80023bc0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023bc4:	eb00024d 	bl	80024500 <log_write>
80023bc8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023bcc:	ebfff3fa 	bl	80020bbc <brelse>
80023bd0:	e51b2010 	ldr	r2, [fp, #-16]
80023bd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023bd8:	e0823003 	add	r3, r2, r3
80023bdc:	e50b3010 	str	r3, [fp, #-16]
80023be0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023be4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023be8:	e0823003 	add	r3, r2, r3
80023bec:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023bf0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023bf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023bf8:	e0823003 	add	r3, r2, r3
80023bfc:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023c00:	e51b2010 	ldr	r2, [fp, #-16]
80023c04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c08:	e1520003 	cmp	r2, r3
80023c0c:	3affffca 	bcc	80023b3c <writei+0x100>
80023c10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c14:	e3530000 	cmp	r3, #0
80023c18:	0a000009 	beq	80023c44 <writei+0x208>
80023c1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c20:	e5933018 	ldr	r3, [r3, #24]
80023c24:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c28:	e1520003 	cmp	r2, r3
80023c2c:	9a000004 	bls	80023c44 <writei+0x208>
80023c30:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c34:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c38:	e5832018 	str	r2, [r3, #24]
80023c3c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c40:	ebfffcbc 	bl	80022f38 <iupdate>
80023c44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c48:	e1a00003 	mov	r0, r3
80023c4c:	e24bd008 	sub	sp, fp, #8
80023c50:	e8bd8810 	pop	{r4, fp, pc}
80023c54:	800abb00 	.word	0x800abb00

80023c58 <namecmp>:
80023c58:	e92d4800 	push	{fp, lr}
80023c5c:	e28db004 	add	fp, sp, #4
80023c60:	e24dd008 	sub	sp, sp, #8
80023c64:	e50b0008 	str	r0, [fp, #-8]
80023c68:	e50b100c 	str	r1, [fp, #-12]
80023c6c:	e3a0200e 	mov	r2, #14
80023c70:	e51b100c 	ldr	r1, [fp, #-12]
80023c74:	e51b0008 	ldr	r0, [fp, #-8]
80023c78:	ebfff19f 	bl	800202fc <strncmp>
80023c7c:	e1a03000 	mov	r3, r0
80023c80:	e1a00003 	mov	r0, r3
80023c84:	e24bd004 	sub	sp, fp, #4
80023c88:	e8bd8800 	pop	{fp, pc}

80023c8c <dirlookup>:
80023c8c:	e92d4800 	push	{fp, lr}
80023c90:	e28db004 	add	fp, sp, #4
80023c94:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023c98:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023c9c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023ca0:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023ca4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ca8:	e1d331f0 	ldrsh	r3, [r3, #16]
80023cac:	e3530001 	cmp	r3, #1
80023cb0:	0a000001 	beq	80023cbc <dirlookup+0x30>
80023cb4:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023d8c <dirlookup+0x100>
80023cb8:	ebfff78d 	bl	80021af4 <panic>
80023cbc:	e3a03000 	mov	r3, #0
80023cc0:	e50b3008 	str	r3, [fp, #-8]
80023cc4:	ea000027 	b	80023d68 <dirlookup+0xdc>
80023cc8:	e24b101c 	sub	r1, fp, #28
80023ccc:	e3a03010 	mov	r3, #16
80023cd0:	e51b2008 	ldr	r2, [fp, #-8]
80023cd4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023cd8:	ebfffedc 	bl	80023850 <readi>
80023cdc:	e1a03000 	mov	r3, r0
80023ce0:	e3530010 	cmp	r3, #16
80023ce4:	0a000001 	beq	80023cf0 <dirlookup+0x64>
80023ce8:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023d90 <dirlookup+0x104>
80023cec:	ebfff780 	bl	80021af4 <panic>
80023cf0:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023cf4:	e3530000 	cmp	r3, #0
80023cf8:	0a000016 	beq	80023d58 <dirlookup+0xcc>
80023cfc:	e24b301c 	sub	r3, fp, #28
80023d00:	e2833002 	add	r3, r3, #2
80023d04:	e1a01003 	mov	r1, r3
80023d08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023d0c:	ebffffd1 	bl	80023c58 <namecmp>
80023d10:	e1a03000 	mov	r3, r0
80023d14:	e3530000 	cmp	r3, #0
80023d18:	1a00000f 	bne	80023d5c <dirlookup+0xd0>
80023d1c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d20:	e3530000 	cmp	r3, #0
80023d24:	0a000002 	beq	80023d34 <dirlookup+0xa8>
80023d28:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d2c:	e51b2008 	ldr	r2, [fp, #-8]
80023d30:	e5832000 	str	r2, [r3]
80023d34:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023d38:	e50b300c 	str	r3, [fp, #-12]
80023d3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d40:	e5933000 	ldr	r3, [r3]
80023d44:	e51b100c 	ldr	r1, [fp, #-12]
80023d48:	e1a00003 	mov	r0, r3
80023d4c:	ebfffcb1 	bl	80023018 <iget>
80023d50:	e1a03000 	mov	r3, r0
80023d54:	ea000009 	b	80023d80 <dirlookup+0xf4>
80023d58:	e1a00000 	nop			@ (mov r0, r0)
80023d5c:	e51b3008 	ldr	r3, [fp, #-8]
80023d60:	e2833010 	add	r3, r3, #16
80023d64:	e50b3008 	str	r3, [fp, #-8]
80023d68:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d6c:	e5933018 	ldr	r3, [r3, #24]
80023d70:	e51b2008 	ldr	r2, [fp, #-8]
80023d74:	e1520003 	cmp	r2, r3
80023d78:	3affffd2 	bcc	80023cc8 <dirlookup+0x3c>
80023d7c:	e3a03000 	mov	r3, #0
80023d80:	e1a00003 	mov	r0, r3
80023d84:	e24bd004 	sub	sp, fp, #4
80023d88:	e8bd8800 	pop	{fp, pc}
80023d8c:	80029984 	.word	0x80029984
80023d90:	80029998 	.word	0x80029998

80023d94 <dirlink>:
80023d94:	e92d4800 	push	{fp, lr}
80023d98:	e28db004 	add	fp, sp, #4
80023d9c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023da0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023da4:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023da8:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023dac:	e3a02000 	mov	r2, #0
80023db0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023db4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023db8:	ebffffb3 	bl	80023c8c <dirlookup>
80023dbc:	e50b000c 	str	r0, [fp, #-12]
80023dc0:	e51b300c 	ldr	r3, [fp, #-12]
80023dc4:	e3530000 	cmp	r3, #0
80023dc8:	0a000003 	beq	80023ddc <dirlink+0x48>
80023dcc:	e51b000c 	ldr	r0, [fp, #-12]
80023dd0:	ebfffd78 	bl	800233b8 <iput>
80023dd4:	e3e03000 	mvn	r3, #0
80023dd8:	ea00002d 	b	80023e94 <dirlink+0x100>
80023ddc:	e3a03000 	mov	r3, #0
80023de0:	e50b3008 	str	r3, [fp, #-8]
80023de4:	ea00000f 	b	80023e28 <dirlink+0x94>
80023de8:	e51b2008 	ldr	r2, [fp, #-8]
80023dec:	e24b101c 	sub	r1, fp, #28
80023df0:	e3a03010 	mov	r3, #16
80023df4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023df8:	ebfffe94 	bl	80023850 <readi>
80023dfc:	e1a03000 	mov	r3, r0
80023e00:	e3530010 	cmp	r3, #16
80023e04:	0a000001 	beq	80023e10 <dirlink+0x7c>
80023e08:	e59f0090 	ldr	r0, [pc, #144]	@ 80023ea0 <dirlink+0x10c>
80023e0c:	ebfff738 	bl	80021af4 <panic>
80023e10:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023e14:	e3530000 	cmp	r3, #0
80023e18:	0a000008 	beq	80023e40 <dirlink+0xac>
80023e1c:	e51b3008 	ldr	r3, [fp, #-8]
80023e20:	e2833010 	add	r3, r3, #16
80023e24:	e50b3008 	str	r3, [fp, #-8]
80023e28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e2c:	e5932018 	ldr	r2, [r3, #24]
80023e30:	e51b3008 	ldr	r3, [fp, #-8]
80023e34:	e1520003 	cmp	r2, r3
80023e38:	8affffea 	bhi	80023de8 <dirlink+0x54>
80023e3c:	ea000000 	b	80023e44 <dirlink+0xb0>
80023e40:	e1a00000 	nop			@ (mov r0, r0)
80023e44:	e24b301c 	sub	r3, fp, #28
80023e48:	e2833002 	add	r3, r3, #2
80023e4c:	e3a0200e 	mov	r2, #14
80023e50:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023e54:	e1a00003 	mov	r0, r3
80023e58:	ebfff153 	bl	800203ac <strncpy>
80023e5c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e60:	e6ff3073 	uxth	r3, r3
80023e64:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023e68:	e51b2008 	ldr	r2, [fp, #-8]
80023e6c:	e24b101c 	sub	r1, fp, #28
80023e70:	e3a03010 	mov	r3, #16
80023e74:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e78:	ebfffeef 	bl	80023a3c <writei>
80023e7c:	e1a03000 	mov	r3, r0
80023e80:	e3530010 	cmp	r3, #16
80023e84:	0a000001 	beq	80023e90 <dirlink+0xfc>
80023e88:	e59f0014 	ldr	r0, [pc, #20]	@ 80023ea4 <dirlink+0x110>
80023e8c:	ebfff718 	bl	80021af4 <panic>
80023e90:	e3a03000 	mov	r3, #0
80023e94:	e1a00003 	mov	r0, r3
80023e98:	e24bd004 	sub	sp, fp, #4
80023e9c:	e8bd8800 	pop	{fp, pc}
80023ea0:	80029998 	.word	0x80029998
80023ea4:	800299a8 	.word	0x800299a8

80023ea8 <skipelem>:
80023ea8:	e92d4800 	push	{fp, lr}
80023eac:	e28db004 	add	fp, sp, #4
80023eb0:	e24dd010 	sub	sp, sp, #16
80023eb4:	e50b0010 	str	r0, [fp, #-16]
80023eb8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023ebc:	ea000002 	b	80023ecc <skipelem+0x24>
80023ec0:	e51b3010 	ldr	r3, [fp, #-16]
80023ec4:	e2833001 	add	r3, r3, #1
80023ec8:	e50b3010 	str	r3, [fp, #-16]
80023ecc:	e51b3010 	ldr	r3, [fp, #-16]
80023ed0:	e5d33000 	ldrb	r3, [r3]
80023ed4:	e353002f 	cmp	r3, #47	@ 0x2f
80023ed8:	0afffff8 	beq	80023ec0 <skipelem+0x18>
80023edc:	e51b3010 	ldr	r3, [fp, #-16]
80023ee0:	e5d33000 	ldrb	r3, [r3]
80023ee4:	e3530000 	cmp	r3, #0
80023ee8:	1a000001 	bne	80023ef4 <skipelem+0x4c>
80023eec:	e3a03000 	mov	r3, #0
80023ef0:	ea00002c 	b	80023fa8 <skipelem+0x100>
80023ef4:	e51b3010 	ldr	r3, [fp, #-16]
80023ef8:	e50b3008 	str	r3, [fp, #-8]
80023efc:	ea000002 	b	80023f0c <skipelem+0x64>
80023f00:	e51b3010 	ldr	r3, [fp, #-16]
80023f04:	e2833001 	add	r3, r3, #1
80023f08:	e50b3010 	str	r3, [fp, #-16]
80023f0c:	e51b3010 	ldr	r3, [fp, #-16]
80023f10:	e5d33000 	ldrb	r3, [r3]
80023f14:	e353002f 	cmp	r3, #47	@ 0x2f
80023f18:	0a000003 	beq	80023f2c <skipelem+0x84>
80023f1c:	e51b3010 	ldr	r3, [fp, #-16]
80023f20:	e5d33000 	ldrb	r3, [r3]
80023f24:	e3530000 	cmp	r3, #0
80023f28:	1afffff4 	bne	80023f00 <skipelem+0x58>
80023f2c:	e51b2010 	ldr	r2, [fp, #-16]
80023f30:	e51b3008 	ldr	r3, [fp, #-8]
80023f34:	e0423003 	sub	r3, r2, r3
80023f38:	e50b300c 	str	r3, [fp, #-12]
80023f3c:	e51b300c 	ldr	r3, [fp, #-12]
80023f40:	e353000d 	cmp	r3, #13
80023f44:	da000004 	ble	80023f5c <skipelem+0xb4>
80023f48:	e3a0200e 	mov	r2, #14
80023f4c:	e51b1008 	ldr	r1, [fp, #-8]
80023f50:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f54:	ebfff09b 	bl	800201c8 <memmove>
80023f58:	ea00000d 	b	80023f94 <skipelem+0xec>
80023f5c:	e51b300c 	ldr	r3, [fp, #-12]
80023f60:	e1a02003 	mov	r2, r3
80023f64:	e51b1008 	ldr	r1, [fp, #-8]
80023f68:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f6c:	ebfff095 	bl	800201c8 <memmove>
80023f70:	e51b300c 	ldr	r3, [fp, #-12]
80023f74:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023f78:	e0823003 	add	r3, r2, r3
80023f7c:	e3a02000 	mov	r2, #0
80023f80:	e5c32000 	strb	r2, [r3]
80023f84:	ea000002 	b	80023f94 <skipelem+0xec>
80023f88:	e51b3010 	ldr	r3, [fp, #-16]
80023f8c:	e2833001 	add	r3, r3, #1
80023f90:	e50b3010 	str	r3, [fp, #-16]
80023f94:	e51b3010 	ldr	r3, [fp, #-16]
80023f98:	e5d33000 	ldrb	r3, [r3]
80023f9c:	e353002f 	cmp	r3, #47	@ 0x2f
80023fa0:	0afffff8 	beq	80023f88 <skipelem+0xe0>
80023fa4:	e51b3010 	ldr	r3, [fp, #-16]
80023fa8:	e1a00003 	mov	r0, r3
80023fac:	e24bd004 	sub	sp, fp, #4
80023fb0:	e8bd8800 	pop	{fp, pc}

80023fb4 <namex>:
80023fb4:	e92d4800 	push	{fp, lr}
80023fb8:	e28db004 	add	fp, sp, #4
80023fbc:	e24dd018 	sub	sp, sp, #24
80023fc0:	e50b0010 	str	r0, [fp, #-16]
80023fc4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023fc8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80023fcc:	e51b3010 	ldr	r3, [fp, #-16]
80023fd0:	e5d33000 	ldrb	r3, [r3]
80023fd4:	e353002f 	cmp	r3, #47	@ 0x2f
80023fd8:	1a000004 	bne	80023ff0 <namex+0x3c>
80023fdc:	e3a01001 	mov	r1, #1
80023fe0:	e3a00001 	mov	r0, #1
80023fe4:	ebfffc0b 	bl	80023018 <iget>
80023fe8:	e50b0008 	str	r0, [fp, #-8]
80023fec:	ea00002b 	b	800240a0 <namex+0xec>
80023ff0:	e59f30f0 	ldr	r3, [pc, #240]	@ 800240e8 <namex+0x134>
80023ff4:	e5933000 	ldr	r3, [r3]
80023ff8:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80023ffc:	e1a00003 	mov	r0, r3
80024000:	ebfffc54 	bl	80023158 <idup>
80024004:	e50b0008 	str	r0, [fp, #-8]
80024008:	ea000024 	b	800240a0 <namex+0xec>
8002400c:	e51b0008 	ldr	r0, [fp, #-8]
80024010:	ebfffc62 	bl	800231a0 <ilock>
80024014:	e51b3008 	ldr	r3, [fp, #-8]
80024018:	e1d331f0 	ldrsh	r3, [r3, #16]
8002401c:	e3530001 	cmp	r3, #1
80024020:	0a000003 	beq	80024034 <namex+0x80>
80024024:	e51b0008 	ldr	r0, [fp, #-8]
80024028:	ebfffd1d 	bl	800234a4 <iunlockput>
8002402c:	e3a03000 	mov	r3, #0
80024030:	ea000029 	b	800240dc <namex+0x128>
80024034:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024038:	e3530000 	cmp	r3, #0
8002403c:	0a000007 	beq	80024060 <namex+0xac>
80024040:	e51b3010 	ldr	r3, [fp, #-16]
80024044:	e5d33000 	ldrb	r3, [r3]
80024048:	e3530000 	cmp	r3, #0
8002404c:	1a000003 	bne	80024060 <namex+0xac>
80024050:	e51b0008 	ldr	r0, [fp, #-8]
80024054:	ebfffcb5 	bl	80023330 <iunlock>
80024058:	e51b3008 	ldr	r3, [fp, #-8]
8002405c:	ea00001e 	b	800240dc <namex+0x128>
80024060:	e3a02000 	mov	r2, #0
80024064:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024068:	e51b0008 	ldr	r0, [fp, #-8]
8002406c:	ebffff06 	bl	80023c8c <dirlookup>
80024070:	e50b000c 	str	r0, [fp, #-12]
80024074:	e51b300c 	ldr	r3, [fp, #-12]
80024078:	e3530000 	cmp	r3, #0
8002407c:	1a000003 	bne	80024090 <namex+0xdc>
80024080:	e51b0008 	ldr	r0, [fp, #-8]
80024084:	ebfffd06 	bl	800234a4 <iunlockput>
80024088:	e3a03000 	mov	r3, #0
8002408c:	ea000012 	b	800240dc <namex+0x128>
80024090:	e51b0008 	ldr	r0, [fp, #-8]
80024094:	ebfffd02 	bl	800234a4 <iunlockput>
80024098:	e51b300c 	ldr	r3, [fp, #-12]
8002409c:	e50b3008 	str	r3, [fp, #-8]
800240a0:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800240a4:	e51b0010 	ldr	r0, [fp, #-16]
800240a8:	ebffff7e 	bl	80023ea8 <skipelem>
800240ac:	e50b0010 	str	r0, [fp, #-16]
800240b0:	e51b3010 	ldr	r3, [fp, #-16]
800240b4:	e3530000 	cmp	r3, #0
800240b8:	1affffd3 	bne	8002400c <namex+0x58>
800240bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800240c0:	e3530000 	cmp	r3, #0
800240c4:	0a000003 	beq	800240d8 <namex+0x124>
800240c8:	e51b0008 	ldr	r0, [fp, #-8]
800240cc:	ebfffcb9 	bl	800233b8 <iput>
800240d0:	e3a03000 	mov	r3, #0
800240d4:	ea000000 	b	800240dc <namex+0x128>
800240d8:	e51b3008 	ldr	r3, [fp, #-8]
800240dc:	e1a00003 	mov	r0, r3
800240e0:	e24bd004 	sub	sp, fp, #4
800240e4:	e8bd8800 	pop	{fp, pc}
800240e8:	800afb50 	.word	0x800afb50

800240ec <namei>:
800240ec:	e92d4800 	push	{fp, lr}
800240f0:	e28db004 	add	fp, sp, #4
800240f4:	e24dd018 	sub	sp, sp, #24
800240f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800240fc:	e24b3014 	sub	r3, fp, #20
80024100:	e1a02003 	mov	r2, r3
80024104:	e3a01000 	mov	r1, #0
80024108:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002410c:	ebffffa8 	bl	80023fb4 <namex>
80024110:	e1a03000 	mov	r3, r0
80024114:	e1a00003 	mov	r0, r3
80024118:	e24bd004 	sub	sp, fp, #4
8002411c:	e8bd8800 	pop	{fp, pc}

80024120 <nameiparent>:
80024120:	e92d4800 	push	{fp, lr}
80024124:	e28db004 	add	fp, sp, #4
80024128:	e24dd008 	sub	sp, sp, #8
8002412c:	e50b0008 	str	r0, [fp, #-8]
80024130:	e50b100c 	str	r1, [fp, #-12]
80024134:	e51b200c 	ldr	r2, [fp, #-12]
80024138:	e3a01001 	mov	r1, #1
8002413c:	e51b0008 	ldr	r0, [fp, #-8]
80024140:	ebffff9b 	bl	80023fb4 <namex>
80024144:	e1a03000 	mov	r3, r0
80024148:	e1a00003 	mov	r0, r3
8002414c:	e24bd004 	sub	sp, fp, #4
80024150:	e8bd8800 	pop	{fp, pc}

80024154 <initlog>:
80024154:	e92d4800 	push	{fp, lr}
80024158:	e28db004 	add	fp, sp, #4
8002415c:	e24dd010 	sub	sp, sp, #16
80024160:	e59f1058 	ldr	r1, [pc, #88]	@ 800241c0 <initlog+0x6c>
80024164:	e59f0058 	ldr	r0, [pc, #88]	@ 800241c4 <initlog+0x70>
80024168:	eb000824 	bl	80026200 <initlock>
8002416c:	e24b3014 	sub	r3, fp, #20
80024170:	e1a01003 	mov	r1, r3
80024174:	e3a00001 	mov	r0, #1
80024178:	ebfffa3c 	bl	80022a70 <readsb>
8002417c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024180:	e51b3008 	ldr	r3, [fp, #-8]
80024184:	e0423003 	sub	r3, r2, r3
80024188:	e1a02003 	mov	r2, r3
8002418c:	e59f3030 	ldr	r3, [pc, #48]	@ 800241c4 <initlog+0x70>
80024190:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024194:	e51b3008 	ldr	r3, [fp, #-8]
80024198:	e1a02003 	mov	r2, r3
8002419c:	e59f3020 	ldr	r3, [pc, #32]	@ 800241c4 <initlog+0x70>
800241a0:	e5832038 	str	r2, [r3, #56]	@ 0x38
800241a4:	e59f3018 	ldr	r3, [pc, #24]	@ 800241c4 <initlog+0x70>
800241a8:	e3a02001 	mov	r2, #1
800241ac:	e5832040 	str	r2, [r3, #64]	@ 0x40
800241b0:	eb00009b 	bl	80024424 <recover_from_log>
800241b4:	e1a00000 	nop			@ (mov r0, r0)
800241b8:	e24bd004 	sub	sp, fp, #4
800241bc:	e8bd8800 	pop	{fp, pc}
800241c0:	800299b0 	.word	0x800299b0
800241c4:	800ad4b8 	.word	0x800ad4b8

800241c8 <install_trans>:
800241c8:	e92d4800 	push	{fp, lr}
800241cc:	e28db004 	add	fp, sp, #4
800241d0:	e24dd010 	sub	sp, sp, #16
800241d4:	e3a03000 	mov	r3, #0
800241d8:	e50b3008 	str	r3, [fp, #-8]
800241dc:	ea000026 	b	8002427c <install_trans+0xb4>
800241e0:	e59f30b8 	ldr	r3, [pc, #184]	@ 800242a0 <install_trans+0xd8>
800241e4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800241e8:	e1a00003 	mov	r0, r3
800241ec:	e59f30ac 	ldr	r3, [pc, #172]	@ 800242a0 <install_trans+0xd8>
800241f0:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800241f4:	e51b3008 	ldr	r3, [fp, #-8]
800241f8:	e0823003 	add	r3, r2, r3
800241fc:	e2833001 	add	r3, r3, #1
80024200:	e1a01003 	mov	r1, r3
80024204:	ebfff242 	bl	80020b14 <bread>
80024208:	e50b000c 	str	r0, [fp, #-12]
8002420c:	e59f308c 	ldr	r3, [pc, #140]	@ 800242a0 <install_trans+0xd8>
80024210:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024214:	e1a00003 	mov	r0, r3
80024218:	e59f2080 	ldr	r2, [pc, #128]	@ 800242a0 <install_trans+0xd8>
8002421c:	e51b3008 	ldr	r3, [fp, #-8]
80024220:	e2833010 	add	r3, r3, #16
80024224:	e1a03103 	lsl	r3, r3, #2
80024228:	e0823003 	add	r3, r2, r3
8002422c:	e5933008 	ldr	r3, [r3, #8]
80024230:	e1a01003 	mov	r1, r3
80024234:	ebfff236 	bl	80020b14 <bread>
80024238:	e50b0010 	str	r0, [fp, #-16]
8002423c:	e51b3010 	ldr	r3, [fp, #-16]
80024240:	e2830018 	add	r0, r3, #24
80024244:	e51b300c 	ldr	r3, [fp, #-12]
80024248:	e2833018 	add	r3, r3, #24
8002424c:	e3a02c02 	mov	r2, #512	@ 0x200
80024250:	e1a01003 	mov	r1, r3
80024254:	ebffefdb 	bl	800201c8 <memmove>
80024258:	e51b0010 	ldr	r0, [fp, #-16]
8002425c:	ebfff240 	bl	80020b64 <bwrite>
80024260:	e51b000c 	ldr	r0, [fp, #-12]
80024264:	ebfff254 	bl	80020bbc <brelse>
80024268:	e51b0010 	ldr	r0, [fp, #-16]
8002426c:	ebfff252 	bl	80020bbc <brelse>
80024270:	e51b3008 	ldr	r3, [fp, #-8]
80024274:	e2833001 	add	r3, r3, #1
80024278:	e50b3008 	str	r3, [fp, #-8]
8002427c:	e59f301c 	ldr	r3, [pc, #28]	@ 800242a0 <install_trans+0xd8>
80024280:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024284:	e51b2008 	ldr	r2, [fp, #-8]
80024288:	e1520003 	cmp	r2, r3
8002428c:	baffffd3 	blt	800241e0 <install_trans+0x18>
80024290:	e1a00000 	nop			@ (mov r0, r0)
80024294:	e1a00000 	nop			@ (mov r0, r0)
80024298:	e24bd004 	sub	sp, fp, #4
8002429c:	e8bd8800 	pop	{fp, pc}
800242a0:	800ad4b8 	.word	0x800ad4b8

800242a4 <read_head>:
800242a4:	e92d4800 	push	{fp, lr}
800242a8:	e28db004 	add	fp, sp, #4
800242ac:	e24dd010 	sub	sp, sp, #16
800242b0:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002435c <read_head+0xb8>
800242b4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800242b8:	e1a02003 	mov	r2, r3
800242bc:	e59f3098 	ldr	r3, [pc, #152]	@ 8002435c <read_head+0xb8>
800242c0:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800242c4:	e1a01003 	mov	r1, r3
800242c8:	e1a00002 	mov	r0, r2
800242cc:	ebfff210 	bl	80020b14 <bread>
800242d0:	e50b000c 	str	r0, [fp, #-12]
800242d4:	e51b300c 	ldr	r3, [fp, #-12]
800242d8:	e2833018 	add	r3, r3, #24
800242dc:	e50b3010 	str	r3, [fp, #-16]
800242e0:	e51b3010 	ldr	r3, [fp, #-16]
800242e4:	e5933000 	ldr	r3, [r3]
800242e8:	e59f206c 	ldr	r2, [pc, #108]	@ 8002435c <read_head+0xb8>
800242ec:	e5823044 	str	r3, [r2, #68]	@ 0x44
800242f0:	e3a03000 	mov	r3, #0
800242f4:	e50b3008 	str	r3, [fp, #-8]
800242f8:	ea00000d 	b	80024334 <read_head+0x90>
800242fc:	e51b2010 	ldr	r2, [fp, #-16]
80024300:	e51b3008 	ldr	r3, [fp, #-8]
80024304:	e1a03103 	lsl	r3, r3, #2
80024308:	e0823003 	add	r3, r2, r3
8002430c:	e5932004 	ldr	r2, [r3, #4]
80024310:	e59f1044 	ldr	r1, [pc, #68]	@ 8002435c <read_head+0xb8>
80024314:	e51b3008 	ldr	r3, [fp, #-8]
80024318:	e2833010 	add	r3, r3, #16
8002431c:	e1a03103 	lsl	r3, r3, #2
80024320:	e0813003 	add	r3, r1, r3
80024324:	e5832008 	str	r2, [r3, #8]
80024328:	e51b3008 	ldr	r3, [fp, #-8]
8002432c:	e2833001 	add	r3, r3, #1
80024330:	e50b3008 	str	r3, [fp, #-8]
80024334:	e59f3020 	ldr	r3, [pc, #32]	@ 8002435c <read_head+0xb8>
80024338:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002433c:	e51b2008 	ldr	r2, [fp, #-8]
80024340:	e1520003 	cmp	r2, r3
80024344:	baffffec 	blt	800242fc <read_head+0x58>
80024348:	e51b000c 	ldr	r0, [fp, #-12]
8002434c:	ebfff21a 	bl	80020bbc <brelse>
80024350:	e1a00000 	nop			@ (mov r0, r0)
80024354:	e24bd004 	sub	sp, fp, #4
80024358:	e8bd8800 	pop	{fp, pc}
8002435c:	800ad4b8 	.word	0x800ad4b8

80024360 <write_head>:
80024360:	e92d4800 	push	{fp, lr}
80024364:	e28db004 	add	fp, sp, #4
80024368:	e24dd010 	sub	sp, sp, #16
8002436c:	e59f30ac 	ldr	r3, [pc, #172]	@ 80024420 <write_head+0xc0>
80024370:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024374:	e1a02003 	mov	r2, r3
80024378:	e59f30a0 	ldr	r3, [pc, #160]	@ 80024420 <write_head+0xc0>
8002437c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024380:	e1a01003 	mov	r1, r3
80024384:	e1a00002 	mov	r0, r2
80024388:	ebfff1e1 	bl	80020b14 <bread>
8002438c:	e50b000c 	str	r0, [fp, #-12]
80024390:	e51b300c 	ldr	r3, [fp, #-12]
80024394:	e2833018 	add	r3, r3, #24
80024398:	e50b3010 	str	r3, [fp, #-16]
8002439c:	e59f307c 	ldr	r3, [pc, #124]	@ 80024420 <write_head+0xc0>
800243a0:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800243a4:	e51b3010 	ldr	r3, [fp, #-16]
800243a8:	e5832000 	str	r2, [r3]
800243ac:	e3a03000 	mov	r3, #0
800243b0:	e50b3008 	str	r3, [fp, #-8]
800243b4:	ea00000d 	b	800243f0 <write_head+0x90>
800243b8:	e59f2060 	ldr	r2, [pc, #96]	@ 80024420 <write_head+0xc0>
800243bc:	e51b3008 	ldr	r3, [fp, #-8]
800243c0:	e2833010 	add	r3, r3, #16
800243c4:	e1a03103 	lsl	r3, r3, #2
800243c8:	e0823003 	add	r3, r2, r3
800243cc:	e5932008 	ldr	r2, [r3, #8]
800243d0:	e51b1010 	ldr	r1, [fp, #-16]
800243d4:	e51b3008 	ldr	r3, [fp, #-8]
800243d8:	e1a03103 	lsl	r3, r3, #2
800243dc:	e0813003 	add	r3, r1, r3
800243e0:	e5832004 	str	r2, [r3, #4]
800243e4:	e51b3008 	ldr	r3, [fp, #-8]
800243e8:	e2833001 	add	r3, r3, #1
800243ec:	e50b3008 	str	r3, [fp, #-8]
800243f0:	e59f3028 	ldr	r3, [pc, #40]	@ 80024420 <write_head+0xc0>
800243f4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800243f8:	e51b2008 	ldr	r2, [fp, #-8]
800243fc:	e1520003 	cmp	r2, r3
80024400:	baffffec 	blt	800243b8 <write_head+0x58>
80024404:	e51b000c 	ldr	r0, [fp, #-12]
80024408:	ebfff1d5 	bl	80020b64 <bwrite>
8002440c:	e51b000c 	ldr	r0, [fp, #-12]
80024410:	ebfff1e9 	bl	80020bbc <brelse>
80024414:	e1a00000 	nop			@ (mov r0, r0)
80024418:	e24bd004 	sub	sp, fp, #4
8002441c:	e8bd8800 	pop	{fp, pc}
80024420:	800ad4b8 	.word	0x800ad4b8

80024424 <recover_from_log>:
80024424:	e92d4800 	push	{fp, lr}
80024428:	e28db004 	add	fp, sp, #4
8002442c:	ebffff9c 	bl	800242a4 <read_head>
80024430:	ebffff64 	bl	800241c8 <install_trans>
80024434:	e59f3010 	ldr	r3, [pc, #16]	@ 8002444c <recover_from_log+0x28>
80024438:	e3a02000 	mov	r2, #0
8002443c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024440:	ebffffc6 	bl	80024360 <write_head>
80024444:	e1a00000 	nop			@ (mov r0, r0)
80024448:	e8bd8800 	pop	{fp, pc}
8002444c:	800ad4b8 	.word	0x800ad4b8

80024450 <begin_trans>:
80024450:	e92d4800 	push	{fp, lr}
80024454:	e28db004 	add	fp, sp, #4
80024458:	e59f003c 	ldr	r0, [pc, #60]	@ 8002449c <begin_trans+0x4c>
8002445c:	eb000779 	bl	80026248 <acquire>
80024460:	ea000002 	b	80024470 <begin_trans+0x20>
80024464:	e59f1030 	ldr	r1, [pc, #48]	@ 8002449c <begin_trans+0x4c>
80024468:	e59f002c 	ldr	r0, [pc, #44]	@ 8002449c <begin_trans+0x4c>
8002446c:	eb0005fa 	bl	80025c5c <sleep>
80024470:	e59f3024 	ldr	r3, [pc, #36]	@ 8002449c <begin_trans+0x4c>
80024474:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024478:	e3530000 	cmp	r3, #0
8002447c:	1afffff8 	bne	80024464 <begin_trans+0x14>
80024480:	e59f3014 	ldr	r3, [pc, #20]	@ 8002449c <begin_trans+0x4c>
80024484:	e3a02001 	mov	r2, #1
80024488:	e583203c 	str	r2, [r3, #60]	@ 0x3c
8002448c:	e59f0008 	ldr	r0, [pc, #8]	@ 8002449c <begin_trans+0x4c>
80024490:	eb000777 	bl	80026274 <release>
80024494:	e1a00000 	nop			@ (mov r0, r0)
80024498:	e8bd8800 	pop	{fp, pc}
8002449c:	800ad4b8 	.word	0x800ad4b8

800244a0 <commit_trans>:
800244a0:	e92d4800 	push	{fp, lr}
800244a4:	e28db004 	add	fp, sp, #4
800244a8:	e59f304c 	ldr	r3, [pc, #76]	@ 800244fc <commit_trans+0x5c>
800244ac:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800244b0:	e3530000 	cmp	r3, #0
800244b4:	da000005 	ble	800244d0 <commit_trans+0x30>
800244b8:	ebffffa8 	bl	80024360 <write_head>
800244bc:	ebffff41 	bl	800241c8 <install_trans>
800244c0:	e59f3034 	ldr	r3, [pc, #52]	@ 800244fc <commit_trans+0x5c>
800244c4:	e3a02000 	mov	r2, #0
800244c8:	e5832044 	str	r2, [r3, #68]	@ 0x44
800244cc:	ebffffa3 	bl	80024360 <write_head>
800244d0:	e59f0024 	ldr	r0, [pc, #36]	@ 800244fc <commit_trans+0x5c>
800244d4:	eb00075b 	bl	80026248 <acquire>
800244d8:	e59f301c 	ldr	r3, [pc, #28]	@ 800244fc <commit_trans+0x5c>
800244dc:	e3a02000 	mov	r2, #0
800244e0:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800244e4:	e59f0010 	ldr	r0, [pc, #16]	@ 800244fc <commit_trans+0x5c>
800244e8:	eb00064f 	bl	80025e2c <wakeup>
800244ec:	e59f0008 	ldr	r0, [pc, #8]	@ 800244fc <commit_trans+0x5c>
800244f0:	eb00075f 	bl	80026274 <release>
800244f4:	e1a00000 	nop			@ (mov r0, r0)
800244f8:	e8bd8800 	pop	{fp, pc}
800244fc:	800ad4b8 	.word	0x800ad4b8

80024500 <log_write>:
80024500:	e92d4800 	push	{fp, lr}
80024504:	e28db004 	add	fp, sp, #4
80024508:	e24dd010 	sub	sp, sp, #16
8002450c:	e50b0010 	str	r0, [fp, #-16]
80024510:	e59f3164 	ldr	r3, [pc, #356]	@ 8002467c <log_write+0x17c>
80024514:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024518:	e3530009 	cmp	r3, #9
8002451c:	ca000006 	bgt	8002453c <log_write+0x3c>
80024520:	e59f3154 	ldr	r3, [pc, #340]	@ 8002467c <log_write+0x17c>
80024524:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024528:	e59f314c 	ldr	r3, [pc, #332]	@ 8002467c <log_write+0x17c>
8002452c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80024530:	e2433001 	sub	r3, r3, #1
80024534:	e1520003 	cmp	r2, r3
80024538:	ba000001 	blt	80024544 <log_write+0x44>
8002453c:	e59f013c 	ldr	r0, [pc, #316]	@ 80024680 <log_write+0x180>
80024540:	ebfff56b 	bl	80021af4 <panic>
80024544:	e59f3130 	ldr	r3, [pc, #304]	@ 8002467c <log_write+0x17c>
80024548:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
8002454c:	e3530000 	cmp	r3, #0
80024550:	1a000001 	bne	8002455c <log_write+0x5c>
80024554:	e59f0128 	ldr	r0, [pc, #296]	@ 80024684 <log_write+0x184>
80024558:	ebfff565 	bl	80021af4 <panic>
8002455c:	e3a03000 	mov	r3, #0
80024560:	e50b3008 	str	r3, [fp, #-8]
80024564:	ea00000d 	b	800245a0 <log_write+0xa0>
80024568:	e59f210c 	ldr	r2, [pc, #268]	@ 8002467c <log_write+0x17c>
8002456c:	e51b3008 	ldr	r3, [fp, #-8]
80024570:	e2833010 	add	r3, r3, #16
80024574:	e1a03103 	lsl	r3, r3, #2
80024578:	e0823003 	add	r3, r2, r3
8002457c:	e5933008 	ldr	r3, [r3, #8]
80024580:	e1a02003 	mov	r2, r3
80024584:	e51b3010 	ldr	r3, [fp, #-16]
80024588:	e5933008 	ldr	r3, [r3, #8]
8002458c:	e1520003 	cmp	r2, r3
80024590:	0a000008 	beq	800245b8 <log_write+0xb8>
80024594:	e51b3008 	ldr	r3, [fp, #-8]
80024598:	e2833001 	add	r3, r3, #1
8002459c:	e50b3008 	str	r3, [fp, #-8]
800245a0:	e59f30d4 	ldr	r3, [pc, #212]	@ 8002467c <log_write+0x17c>
800245a4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245a8:	e51b2008 	ldr	r2, [fp, #-8]
800245ac:	e1520003 	cmp	r2, r3
800245b0:	baffffec 	blt	80024568 <log_write+0x68>
800245b4:	ea000000 	b	800245bc <log_write+0xbc>
800245b8:	e1a00000 	nop			@ (mov r0, r0)
800245bc:	e51b3010 	ldr	r3, [fp, #-16]
800245c0:	e5933008 	ldr	r3, [r3, #8]
800245c4:	e1a01003 	mov	r1, r3
800245c8:	e59f20ac 	ldr	r2, [pc, #172]	@ 8002467c <log_write+0x17c>
800245cc:	e51b3008 	ldr	r3, [fp, #-8]
800245d0:	e2833010 	add	r3, r3, #16
800245d4:	e1a03103 	lsl	r3, r3, #2
800245d8:	e0823003 	add	r3, r2, r3
800245dc:	e5831008 	str	r1, [r3, #8]
800245e0:	e51b3010 	ldr	r3, [fp, #-16]
800245e4:	e5930004 	ldr	r0, [r3, #4]
800245e8:	e59f308c 	ldr	r3, [pc, #140]	@ 8002467c <log_write+0x17c>
800245ec:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800245f0:	e51b3008 	ldr	r3, [fp, #-8]
800245f4:	e0823003 	add	r3, r2, r3
800245f8:	e2833001 	add	r3, r3, #1
800245fc:	e1a01003 	mov	r1, r3
80024600:	ebfff143 	bl	80020b14 <bread>
80024604:	e50b000c 	str	r0, [fp, #-12]
80024608:	e51b300c 	ldr	r3, [fp, #-12]
8002460c:	e2830018 	add	r0, r3, #24
80024610:	e51b3010 	ldr	r3, [fp, #-16]
80024614:	e2833018 	add	r3, r3, #24
80024618:	e3a02c02 	mov	r2, #512	@ 0x200
8002461c:	e1a01003 	mov	r1, r3
80024620:	ebffeee8 	bl	800201c8 <memmove>
80024624:	e51b000c 	ldr	r0, [fp, #-12]
80024628:	ebfff14d 	bl	80020b64 <bwrite>
8002462c:	e51b000c 	ldr	r0, [fp, #-12]
80024630:	ebfff161 	bl	80020bbc <brelse>
80024634:	e59f3040 	ldr	r3, [pc, #64]	@ 8002467c <log_write+0x17c>
80024638:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002463c:	e51b2008 	ldr	r2, [fp, #-8]
80024640:	e1520003 	cmp	r2, r3
80024644:	1a000004 	bne	8002465c <log_write+0x15c>
80024648:	e59f302c 	ldr	r3, [pc, #44]	@ 8002467c <log_write+0x17c>
8002464c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024650:	e2833001 	add	r3, r3, #1
80024654:	e59f2020 	ldr	r2, [pc, #32]	@ 8002467c <log_write+0x17c>
80024658:	e5823044 	str	r3, [r2, #68]	@ 0x44
8002465c:	e51b3010 	ldr	r3, [fp, #-16]
80024660:	e5933000 	ldr	r3, [r3]
80024664:	e3832004 	orr	r2, r3, #4
80024668:	e51b3010 	ldr	r3, [fp, #-16]
8002466c:	e5832000 	str	r2, [r3]
80024670:	e1a00000 	nop			@ (mov r0, r0)
80024674:	e24bd004 	sub	sp, fp, #4
80024678:	e8bd8800 	pop	{fp, pc}
8002467c:	800ad4b8 	.word	0x800ad4b8
80024680:	800299b4 	.word	0x800299b4
80024684:	800299cc 	.word	0x800299cc

80024688 <kmain>:
80024688:	e92d4800 	push	{fp, lr}
8002468c:	e28db004 	add	fp, sp, #4
80024690:	e24dd008 	sub	sp, sp, #8
80024694:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024740 <kmain+0xb8>
80024698:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024744 <kmain+0xbc>
8002469c:	e5832000 	str	r2, [r3]
800246a0:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024748 <kmain+0xc0>
800246a4:	eb00130e 	bl	800292e4 <uart_init>
800246a8:	e59f309c 	ldr	r3, [pc, #156]	@ 8002474c <kmain+0xc4>
800246ac:	e50b3008 	str	r3, [fp, #-8]
800246b0:	eb000f0a 	bl	800282e0 <init_vmm>
800246b4:	e59f3094 	ldr	r3, [pc, #148]	@ 80024750 <kmain+0xc8>
800246b8:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
800246bc:	e2833003 	add	r3, r3, #3
800246c0:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800246c4:	e3c33003 	bic	r3, r3, #3
800246c8:	e51b1008 	ldr	r1, [fp, #-8]
800246cc:	e1a00003 	mov	r0, r3
800246d0:	eb000f36 	bl	800283b0 <kpt_freerange>
800246d4:	e51b3008 	ldr	r3, [fp, #-8]
800246d8:	e2833b01 	add	r3, r3, #1024	@ 0x400
800246dc:	e59f1070 	ldr	r1, [pc, #112]	@ 80024754 <kmain+0xcc>
800246e0:	e1a00003 	mov	r0, r3
800246e4:	eb000f31 	bl	800283b0 <kpt_freerange>
800246e8:	e3a01302 	mov	r1, #134217728	@ 0x8000000
800246ec:	e3a00601 	mov	r0, #1048576	@ 0x100000
800246f0:	eb0011f6 	bl	80028ed0 <paging_init>
800246f4:	ebfff1af 	bl	80020db8 <kmem_init>
800246f8:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
800246fc:	e59f0050 	ldr	r0, [pc, #80]	@ 80024754 <kmain+0xcc>
80024700:	ebfff1b5 	bl	80020ddc <kmem_init2>
80024704:	eb000df9 	bl	80027ef0 <trap_init>
80024708:	e59f0048 	ldr	r0, [pc, #72]	@ 80024758 <kmain+0xd0>
8002470c:	eb001210 	bl	80028f54 <pic_init>
80024710:	eb001324 	bl	800293a8 <uart_enable_rx>
80024714:	ebfff644 	bl	8002202c <consoleinit>
80024718:	eb0001ca 	bl	80024e48 <pinit>
8002471c:	ebfff06b 	bl	800208d0 <binit>
80024720:	ebfff78e 	bl	80022560 <fileinit>
80024724:	ebfff9ba 	bl	80022e14 <iinit>
80024728:	eb00000b 	bl	8002475c <ideinit>
8002472c:	e3a0000a 	mov	r0, #10
80024730:	eb00129a 	bl	800291a0 <timer_init>
80024734:	ebffef8f 	bl	80020578 <sti>
80024738:	eb0002e1 	bl	800252c4 <userinit>
8002473c:	eb000497 	bl	800259a0 <scheduler>
80024740:	800ad608 	.word	0x800ad608
80024744:	800ad528 	.word	0x800ad528
80024748:	901f1000 	.word	0x901f1000
8002474c:	800f0000 	.word	0x800f0000
80024750:	800b0000 	.word	0x800b0000
80024754:	80100000 	.word	0x80100000
80024758:	90140000 	.word	0x90140000

8002475c <ideinit>:
8002475c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024760:	e28db000 	add	fp, sp, #0
80024764:	e59f3028 	ldr	r3, [pc, #40]	@ 80024794 <ideinit+0x38>
80024768:	e59f2028 	ldr	r2, [pc, #40]	@ 80024798 <ideinit+0x3c>
8002476c:	e5832000 	str	r2, [r3]
80024770:	e59f3024 	ldr	r3, [pc, #36]	@ 8002479c <ideinit+0x40>
80024774:	e1a034a3 	lsr	r3, r3, #9
80024778:	e1a02003 	mov	r2, r3
8002477c:	e59f301c 	ldr	r3, [pc, #28]	@ 800247a0 <ideinit+0x44>
80024780:	e5832000 	str	r2, [r3]
80024784:	e1a00000 	nop			@ (mov r0, r0)
80024788:	e28bd000 	add	sp, fp, #0
8002478c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024790:	e12fff1e 	bx	lr
80024794:	800ad610 	.word	0x800ad610
80024798:	8002a0d0 	.word	0x8002a0d0
8002479c:	00080000 	.word	0x00080000
800247a0:	800ad60c 	.word	0x800ad60c

800247a4 <ideintr>:
800247a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800247a8:	e28db000 	add	fp, sp, #0
800247ac:	e1a00000 	nop			@ (mov r0, r0)
800247b0:	e28bd000 	add	sp, fp, #0
800247b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800247b8:	e12fff1e 	bx	lr

800247bc <iderw>:
800247bc:	e92d4800 	push	{fp, lr}
800247c0:	e28db004 	add	fp, sp, #4
800247c4:	e24dd010 	sub	sp, sp, #16
800247c8:	e50b0010 	str	r0, [fp, #-16]
800247cc:	e51b3010 	ldr	r3, [fp, #-16]
800247d0:	e5933000 	ldr	r3, [r3]
800247d4:	e2033001 	and	r3, r3, #1
800247d8:	e3530000 	cmp	r3, #0
800247dc:	1a000001 	bne	800247e8 <iderw+0x2c>
800247e0:	e59f00ec 	ldr	r0, [pc, #236]	@ 800248d4 <iderw+0x118>
800247e4:	ebfff4c2 	bl	80021af4 <panic>
800247e8:	e51b3010 	ldr	r3, [fp, #-16]
800247ec:	e5933000 	ldr	r3, [r3]
800247f0:	e2033006 	and	r3, r3, #6
800247f4:	e3530002 	cmp	r3, #2
800247f8:	1a000001 	bne	80024804 <iderw+0x48>
800247fc:	e59f00d4 	ldr	r0, [pc, #212]	@ 800248d8 <iderw+0x11c>
80024800:	ebfff4bb 	bl	80021af4 <panic>
80024804:	e51b3010 	ldr	r3, [fp, #-16]
80024808:	e5933004 	ldr	r3, [r3, #4]
8002480c:	e3530001 	cmp	r3, #1
80024810:	0a000001 	beq	8002481c <iderw+0x60>
80024814:	e59f00c0 	ldr	r0, [pc, #192]	@ 800248dc <iderw+0x120>
80024818:	ebfff4b5 	bl	80021af4 <panic>
8002481c:	e51b3010 	ldr	r3, [fp, #-16]
80024820:	e5933008 	ldr	r3, [r3, #8]
80024824:	e59f20b4 	ldr	r2, [pc, #180]	@ 800248e0 <iderw+0x124>
80024828:	e5922000 	ldr	r2, [r2]
8002482c:	e1530002 	cmp	r3, r2
80024830:	3a000001 	bcc	8002483c <iderw+0x80>
80024834:	e59f00a8 	ldr	r0, [pc, #168]	@ 800248e4 <iderw+0x128>
80024838:	ebfff4ad 	bl	80021af4 <panic>
8002483c:	e59f30a4 	ldr	r3, [pc, #164]	@ 800248e8 <iderw+0x12c>
80024840:	e5932000 	ldr	r2, [r3]
80024844:	e51b3010 	ldr	r3, [fp, #-16]
80024848:	e5933008 	ldr	r3, [r3, #8]
8002484c:	e1a03483 	lsl	r3, r3, #9
80024850:	e0823003 	add	r3, r2, r3
80024854:	e50b3008 	str	r3, [fp, #-8]
80024858:	e51b3010 	ldr	r3, [fp, #-16]
8002485c:	e5933000 	ldr	r3, [r3]
80024860:	e2033004 	and	r3, r3, #4
80024864:	e3530000 	cmp	r3, #0
80024868:	0a00000b 	beq	8002489c <iderw+0xe0>
8002486c:	e51b3010 	ldr	r3, [fp, #-16]
80024870:	e5933000 	ldr	r3, [r3]
80024874:	e3c32004 	bic	r2, r3, #4
80024878:	e51b3010 	ldr	r3, [fp, #-16]
8002487c:	e5832000 	str	r2, [r3]
80024880:	e51b3010 	ldr	r3, [fp, #-16]
80024884:	e2833018 	add	r3, r3, #24
80024888:	e3a02c02 	mov	r2, #512	@ 0x200
8002488c:	e1a01003 	mov	r1, r3
80024890:	e51b0008 	ldr	r0, [fp, #-8]
80024894:	ebffee4b 	bl	800201c8 <memmove>
80024898:	ea000005 	b	800248b4 <iderw+0xf8>
8002489c:	e51b3010 	ldr	r3, [fp, #-16]
800248a0:	e2833018 	add	r3, r3, #24
800248a4:	e3a02c02 	mov	r2, #512	@ 0x200
800248a8:	e51b1008 	ldr	r1, [fp, #-8]
800248ac:	e1a00003 	mov	r0, r3
800248b0:	ebffee44 	bl	800201c8 <memmove>
800248b4:	e51b3010 	ldr	r3, [fp, #-16]
800248b8:	e5933000 	ldr	r3, [r3]
800248bc:	e3832002 	orr	r2, r3, #2
800248c0:	e51b3010 	ldr	r3, [fp, #-16]
800248c4:	e5832000 	str	r2, [r3]
800248c8:	e1a00000 	nop			@ (mov r0, r0)
800248cc:	e24bd004 	sub	sp, fp, #4
800248d0:	e8bd8800 	pop	{fp, pc}
800248d4:	800299e4 	.word	0x800299e4
800248d8:	800299f8 	.word	0x800299f8
800248dc:	80029a10 	.word	0x80029a10
800248e0:	800ad60c 	.word	0x800ad60c
800248e4:	80029a30 	.word	0x80029a30
800248e8:	800ad610 	.word	0x800ad610

800248ec <pipealloc>:
800248ec:	e92d4800 	push	{fp, lr}
800248f0:	e28db004 	add	fp, sp, #4
800248f4:	e24dd010 	sub	sp, sp, #16
800248f8:	e50b0010 	str	r0, [fp, #-16]
800248fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024900:	e3a03000 	mov	r3, #0
80024904:	e50b3008 	str	r3, [fp, #-8]
80024908:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002490c:	e3a02000 	mov	r2, #0
80024910:	e5832000 	str	r2, [r3]
80024914:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024918:	e5932000 	ldr	r2, [r3]
8002491c:	e51b3010 	ldr	r3, [fp, #-16]
80024920:	e5832000 	str	r2, [r3]
80024924:	ebfff716 	bl	80022584 <filealloc>
80024928:	e1a02000 	mov	r2, r0
8002492c:	e51b3010 	ldr	r3, [fp, #-16]
80024930:	e5832000 	str	r2, [r3]
80024934:	e51b3010 	ldr	r3, [fp, #-16]
80024938:	e5933000 	ldr	r3, [r3]
8002493c:	e3530000 	cmp	r3, #0
80024940:	0a000042 	beq	80024a50 <pipealloc+0x164>
80024944:	ebfff70e 	bl	80022584 <filealloc>
80024948:	e1a02000 	mov	r2, r0
8002494c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024950:	e5832000 	str	r2, [r3]
80024954:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024958:	e5933000 	ldr	r3, [r3]
8002495c:	e3530000 	cmp	r3, #0
80024960:	0a00003a 	beq	80024a50 <pipealloc+0x164>
80024964:	e3a00f91 	mov	r0, #580	@ 0x244
80024968:	ebfff337 	bl	8002164c <get_order>
8002496c:	e1a03000 	mov	r3, r0
80024970:	e1a00003 	mov	r0, r3
80024974:	ebfff2aa 	bl	80021424 <kmalloc>
80024978:	e50b0008 	str	r0, [fp, #-8]
8002497c:	e51b3008 	ldr	r3, [fp, #-8]
80024980:	e3530000 	cmp	r3, #0
80024984:	0a000033 	beq	80024a58 <pipealloc+0x16c>
80024988:	e51b3008 	ldr	r3, [fp, #-8]
8002498c:	e3a02001 	mov	r2, #1
80024990:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024994:	e51b3008 	ldr	r3, [fp, #-8]
80024998:	e3a02001 	mov	r2, #1
8002499c:	e5832240 	str	r2, [r3, #576]	@ 0x240
800249a0:	e51b3008 	ldr	r3, [fp, #-8]
800249a4:	e3a02000 	mov	r2, #0
800249a8:	e5832238 	str	r2, [r3, #568]	@ 0x238
800249ac:	e51b3008 	ldr	r3, [fp, #-8]
800249b0:	e3a02000 	mov	r2, #0
800249b4:	e5832234 	str	r2, [r3, #564]	@ 0x234
800249b8:	e51b3008 	ldr	r3, [fp, #-8]
800249bc:	e59f110c 	ldr	r1, [pc, #268]	@ 80024ad0 <pipealloc+0x1e4>
800249c0:	e1a00003 	mov	r0, r3
800249c4:	eb00060d 	bl	80026200 <initlock>
800249c8:	e51b3010 	ldr	r3, [fp, #-16]
800249cc:	e5933000 	ldr	r3, [r3]
800249d0:	e3a02001 	mov	r2, #1
800249d4:	e5c32000 	strb	r2, [r3]
800249d8:	e51b3010 	ldr	r3, [fp, #-16]
800249dc:	e5933000 	ldr	r3, [r3]
800249e0:	e3a02001 	mov	r2, #1
800249e4:	e5c32008 	strb	r2, [r3, #8]
800249e8:	e51b3010 	ldr	r3, [fp, #-16]
800249ec:	e5933000 	ldr	r3, [r3]
800249f0:	e3a02000 	mov	r2, #0
800249f4:	e5c32009 	strb	r2, [r3, #9]
800249f8:	e51b3010 	ldr	r3, [fp, #-16]
800249fc:	e5933000 	ldr	r3, [r3]
80024a00:	e51b2008 	ldr	r2, [fp, #-8]
80024a04:	e583200c 	str	r2, [r3, #12]
80024a08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a0c:	e5933000 	ldr	r3, [r3]
80024a10:	e3a02001 	mov	r2, #1
80024a14:	e5c32000 	strb	r2, [r3]
80024a18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a1c:	e5933000 	ldr	r3, [r3]
80024a20:	e3a02000 	mov	r2, #0
80024a24:	e5c32008 	strb	r2, [r3, #8]
80024a28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a2c:	e5933000 	ldr	r3, [r3]
80024a30:	e3a02001 	mov	r2, #1
80024a34:	e5c32009 	strb	r2, [r3, #9]
80024a38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a3c:	e5933000 	ldr	r3, [r3]
80024a40:	e51b2008 	ldr	r2, [fp, #-8]
80024a44:	e583200c 	str	r2, [r3, #12]
80024a48:	e3a03000 	mov	r3, #0
80024a4c:	ea00001c 	b	80024ac4 <pipealloc+0x1d8>
80024a50:	e1a00000 	nop			@ (mov r0, r0)
80024a54:	ea000000 	b	80024a5c <pipealloc+0x170>
80024a58:	e1a00000 	nop			@ (mov r0, r0)
80024a5c:	e51b3008 	ldr	r3, [fp, #-8]
80024a60:	e3530000 	cmp	r3, #0
80024a64:	0a000005 	beq	80024a80 <pipealloc+0x194>
80024a68:	e3a00f91 	mov	r0, #580	@ 0x244
80024a6c:	ebfff2f6 	bl	8002164c <get_order>
80024a70:	e1a03000 	mov	r3, r0
80024a74:	e1a01003 	mov	r1, r3
80024a78:	e51b0008 	ldr	r0, [fp, #-8]
80024a7c:	ebfff2bf 	bl	80021580 <kfree>
80024a80:	e51b3010 	ldr	r3, [fp, #-16]
80024a84:	e5933000 	ldr	r3, [r3]
80024a88:	e3530000 	cmp	r3, #0
80024a8c:	0a000003 	beq	80024aa0 <pipealloc+0x1b4>
80024a90:	e51b3010 	ldr	r3, [fp, #-16]
80024a94:	e5933000 	ldr	r3, [r3]
80024a98:	e1a00003 	mov	r0, r3
80024a9c:	ebfff6f4 	bl	80022674 <fileclose>
80024aa0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024aa4:	e5933000 	ldr	r3, [r3]
80024aa8:	e3530000 	cmp	r3, #0
80024aac:	0a000003 	beq	80024ac0 <pipealloc+0x1d4>
80024ab0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ab4:	e5933000 	ldr	r3, [r3]
80024ab8:	e1a00003 	mov	r0, r3
80024abc:	ebfff6ec 	bl	80022674 <fileclose>
80024ac0:	e3e03000 	mvn	r3, #0
80024ac4:	e1a00003 	mov	r0, r3
80024ac8:	e24bd004 	sub	sp, fp, #4
80024acc:	e8bd8800 	pop	{fp, pc}
80024ad0:	80029a4c 	.word	0x80029a4c

80024ad4 <pipeclose>:
80024ad4:	e92d4800 	push	{fp, lr}
80024ad8:	e28db004 	add	fp, sp, #4
80024adc:	e24dd008 	sub	sp, sp, #8
80024ae0:	e50b0008 	str	r0, [fp, #-8]
80024ae4:	e50b100c 	str	r1, [fp, #-12]
80024ae8:	e51b3008 	ldr	r3, [fp, #-8]
80024aec:	e1a00003 	mov	r0, r3
80024af0:	eb0005d4 	bl	80026248 <acquire>
80024af4:	e51b300c 	ldr	r3, [fp, #-12]
80024af8:	e3530000 	cmp	r3, #0
80024afc:	0a000007 	beq	80024b20 <pipeclose+0x4c>
80024b00:	e51b3008 	ldr	r3, [fp, #-8]
80024b04:	e3a02000 	mov	r2, #0
80024b08:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024b0c:	e51b3008 	ldr	r3, [fp, #-8]
80024b10:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024b14:	e1a00003 	mov	r0, r3
80024b18:	eb0004c3 	bl	80025e2c <wakeup>
80024b1c:	ea000006 	b	80024b3c <pipeclose+0x68>
80024b20:	e51b3008 	ldr	r3, [fp, #-8]
80024b24:	e3a02000 	mov	r2, #0
80024b28:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024b2c:	e51b3008 	ldr	r3, [fp, #-8]
80024b30:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024b34:	e1a00003 	mov	r0, r3
80024b38:	eb0004bb 	bl	80025e2c <wakeup>
80024b3c:	e51b3008 	ldr	r3, [fp, #-8]
80024b40:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024b44:	e3530000 	cmp	r3, #0
80024b48:	1a00000d 	bne	80024b84 <pipeclose+0xb0>
80024b4c:	e51b3008 	ldr	r3, [fp, #-8]
80024b50:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024b54:	e3530000 	cmp	r3, #0
80024b58:	1a000009 	bne	80024b84 <pipeclose+0xb0>
80024b5c:	e51b3008 	ldr	r3, [fp, #-8]
80024b60:	e1a00003 	mov	r0, r3
80024b64:	eb0005c2 	bl	80026274 <release>
80024b68:	e3a00f91 	mov	r0, #580	@ 0x244
80024b6c:	ebfff2b6 	bl	8002164c <get_order>
80024b70:	e1a03000 	mov	r3, r0
80024b74:	e1a01003 	mov	r1, r3
80024b78:	e51b0008 	ldr	r0, [fp, #-8]
80024b7c:	ebfff27f 	bl	80021580 <kfree>
80024b80:	ea000003 	b	80024b94 <pipeclose+0xc0>
80024b84:	e51b3008 	ldr	r3, [fp, #-8]
80024b88:	e1a00003 	mov	r0, r3
80024b8c:	eb0005b8 	bl	80026274 <release>
80024b90:	e1a00000 	nop			@ (mov r0, r0)
80024b94:	e1a00000 	nop			@ (mov r0, r0)
80024b98:	e24bd004 	sub	sp, fp, #4
80024b9c:	e8bd8800 	pop	{fp, pc}

80024ba0 <pipewrite>:
80024ba0:	e92d4800 	push	{fp, lr}
80024ba4:	e28db004 	add	fp, sp, #4
80024ba8:	e24dd018 	sub	sp, sp, #24
80024bac:	e50b0010 	str	r0, [fp, #-16]
80024bb0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024bb4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024bb8:	e51b3010 	ldr	r3, [fp, #-16]
80024bbc:	e1a00003 	mov	r0, r3
80024bc0:	eb0005a0 	bl	80026248 <acquire>
80024bc4:	e3a03000 	mov	r3, #0
80024bc8:	e50b3008 	str	r3, [fp, #-8]
80024bcc:	ea00002b 	b	80024c80 <pipewrite+0xe0>
80024bd0:	e51b3010 	ldr	r3, [fp, #-16]
80024bd4:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024bd8:	e3530000 	cmp	r3, #0
80024bdc:	1a000004 	bne	80024bf4 <pipewrite+0x54>
80024be0:	e51b3010 	ldr	r3, [fp, #-16]
80024be4:	e1a00003 	mov	r0, r3
80024be8:	eb0005a1 	bl	80026274 <release>
80024bec:	e3e03000 	mvn	r3, #0
80024bf0:	ea00002e 	b	80024cb0 <pipewrite+0x110>
80024bf4:	e51b3010 	ldr	r3, [fp, #-16]
80024bf8:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024bfc:	e1a00003 	mov	r0, r3
80024c00:	eb000489 	bl	80025e2c <wakeup>
80024c04:	e51b3010 	ldr	r3, [fp, #-16]
80024c08:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024c0c:	e51b2010 	ldr	r2, [fp, #-16]
80024c10:	e1a01002 	mov	r1, r2
80024c14:	e1a00003 	mov	r0, r3
80024c18:	eb00040f 	bl	80025c5c <sleep>
80024c1c:	e51b3010 	ldr	r3, [fp, #-16]
80024c20:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024c24:	e51b3010 	ldr	r3, [fp, #-16]
80024c28:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024c2c:	e2833c02 	add	r3, r3, #512	@ 0x200
80024c30:	e1520003 	cmp	r2, r3
80024c34:	0affffe5 	beq	80024bd0 <pipewrite+0x30>
80024c38:	e51b3008 	ldr	r3, [fp, #-8]
80024c3c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024c40:	e0822003 	add	r2, r2, r3
80024c44:	e51b3010 	ldr	r3, [fp, #-16]
80024c48:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024c4c:	e2830001 	add	r0, r3, #1
80024c50:	e51b1010 	ldr	r1, [fp, #-16]
80024c54:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024c58:	e1a03b83 	lsl	r3, r3, #23
80024c5c:	e1a03ba3 	lsr	r3, r3, #23
80024c60:	e5d21000 	ldrb	r1, [r2]
80024c64:	e51b2010 	ldr	r2, [fp, #-16]
80024c68:	e0823003 	add	r3, r2, r3
80024c6c:	e1a02001 	mov	r2, r1
80024c70:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024c74:	e51b3008 	ldr	r3, [fp, #-8]
80024c78:	e2833001 	add	r3, r3, #1
80024c7c:	e50b3008 	str	r3, [fp, #-8]
80024c80:	e51b2008 	ldr	r2, [fp, #-8]
80024c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024c88:	e1520003 	cmp	r2, r3
80024c8c:	baffffe2 	blt	80024c1c <pipewrite+0x7c>
80024c90:	e51b3010 	ldr	r3, [fp, #-16]
80024c94:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024c98:	e1a00003 	mov	r0, r3
80024c9c:	eb000462 	bl	80025e2c <wakeup>
80024ca0:	e51b3010 	ldr	r3, [fp, #-16]
80024ca4:	e1a00003 	mov	r0, r3
80024ca8:	eb000571 	bl	80026274 <release>
80024cac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024cb0:	e1a00003 	mov	r0, r3
80024cb4:	e24bd004 	sub	sp, fp, #4
80024cb8:	e8bd8800 	pop	{fp, pc}

80024cbc <piperead>:
80024cbc:	e92d4800 	push	{fp, lr}
80024cc0:	e28db004 	add	fp, sp, #4
80024cc4:	e24dd018 	sub	sp, sp, #24
80024cc8:	e50b0010 	str	r0, [fp, #-16]
80024ccc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024cd0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024cd4:	e51b3010 	ldr	r3, [fp, #-16]
80024cd8:	e1a00003 	mov	r0, r3
80024cdc:	eb000559 	bl	80026248 <acquire>
80024ce0:	ea00000f 	b	80024d24 <piperead+0x68>
80024ce4:	e59f310c 	ldr	r3, [pc, #268]	@ 80024df8 <piperead+0x13c>
80024ce8:	e5933000 	ldr	r3, [r3]
80024cec:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024cf0:	e3530000 	cmp	r3, #0
80024cf4:	0a000004 	beq	80024d0c <piperead+0x50>
80024cf8:	e51b3010 	ldr	r3, [fp, #-16]
80024cfc:	e1a00003 	mov	r0, r3
80024d00:	eb00055b 	bl	80026274 <release>
80024d04:	e3e03000 	mvn	r3, #0
80024d08:	ea000037 	b	80024dec <piperead+0x130>
80024d0c:	e51b3010 	ldr	r3, [fp, #-16]
80024d10:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d14:	e51b2010 	ldr	r2, [fp, #-16]
80024d18:	e1a01002 	mov	r1, r2
80024d1c:	e1a00003 	mov	r0, r3
80024d20:	eb0003cd 	bl	80025c5c <sleep>
80024d24:	e51b3010 	ldr	r3, [fp, #-16]
80024d28:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024d2c:	e51b3010 	ldr	r3, [fp, #-16]
80024d30:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024d34:	e1520003 	cmp	r2, r3
80024d38:	1a000003 	bne	80024d4c <piperead+0x90>
80024d3c:	e51b3010 	ldr	r3, [fp, #-16]
80024d40:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024d44:	e3530000 	cmp	r3, #0
80024d48:	1affffe5 	bne	80024ce4 <piperead+0x28>
80024d4c:	e3a03000 	mov	r3, #0
80024d50:	e50b3008 	str	r3, [fp, #-8]
80024d54:	ea000016 	b	80024db4 <piperead+0xf8>
80024d58:	e51b3010 	ldr	r3, [fp, #-16]
80024d5c:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024d60:	e51b3010 	ldr	r3, [fp, #-16]
80024d64:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024d68:	e1520003 	cmp	r2, r3
80024d6c:	0a000015 	beq	80024dc8 <piperead+0x10c>
80024d70:	e51b3010 	ldr	r3, [fp, #-16]
80024d74:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024d78:	e2831001 	add	r1, r3, #1
80024d7c:	e51b2010 	ldr	r2, [fp, #-16]
80024d80:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024d84:	e1a03b83 	lsl	r3, r3, #23
80024d88:	e1a03ba3 	lsr	r3, r3, #23
80024d8c:	e51b2008 	ldr	r2, [fp, #-8]
80024d90:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024d94:	e0812002 	add	r2, r1, r2
80024d98:	e51b1010 	ldr	r1, [fp, #-16]
80024d9c:	e0813003 	add	r3, r1, r3
80024da0:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024da4:	e5c23000 	strb	r3, [r2]
80024da8:	e51b3008 	ldr	r3, [fp, #-8]
80024dac:	e2833001 	add	r3, r3, #1
80024db0:	e50b3008 	str	r3, [fp, #-8]
80024db4:	e51b2008 	ldr	r2, [fp, #-8]
80024db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024dbc:	e1520003 	cmp	r2, r3
80024dc0:	baffffe4 	blt	80024d58 <piperead+0x9c>
80024dc4:	ea000000 	b	80024dcc <piperead+0x110>
80024dc8:	e1a00000 	nop			@ (mov r0, r0)
80024dcc:	e51b3010 	ldr	r3, [fp, #-16]
80024dd0:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024dd4:	e1a00003 	mov	r0, r3
80024dd8:	eb000413 	bl	80025e2c <wakeup>
80024ddc:	e51b3010 	ldr	r3, [fp, #-16]
80024de0:	e1a00003 	mov	r0, r3
80024de4:	eb000522 	bl	80026274 <release>
80024de8:	e51b3008 	ldr	r3, [fp, #-8]
80024dec:	e1a00003 	mov	r0, r3
80024df0:	e24bd004 	sub	sp, fp, #4
80024df4:	e8bd8800 	pop	{fp, pc}
80024df8:	800afb50 	.word	0x800afb50

80024dfc <rand>:
80024dfc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024e00:	e28db000 	add	fp, sp, #0
80024e04:	e59f3034 	ldr	r3, [pc, #52]	@ 80024e40 <rand+0x44>
80024e08:	e5933000 	ldr	r3, [r3]
80024e0c:	e59f2030 	ldr	r2, [pc, #48]	@ 80024e44 <rand+0x48>
80024e10:	e0030392 	mul	r3, r2, r3
80024e14:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80024e18:	e2833039 	add	r3, r3, #57	@ 0x39
80024e1c:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80024e20:	e59f2018 	ldr	r2, [pc, #24]	@ 80024e40 <rand+0x44>
80024e24:	e5823000 	str	r3, [r2]
80024e28:	e59f3010 	ldr	r3, [pc, #16]	@ 80024e40 <rand+0x44>
80024e2c:	e5933000 	ldr	r3, [r3]
80024e30:	e1a00003 	mov	r0, r3
80024e34:	e28bd000 	add	sp, fp, #0
80024e38:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024e3c:	e12fff1e 	bx	lr
80024e40:	800ad614 	.word	0x800ad614
80024e44:	41c64e6d 	.word	0x41c64e6d

80024e48 <pinit>:
80024e48:	e92d4800 	push	{fp, lr}
80024e4c:	e28db004 	add	fp, sp, #4
80024e50:	e59f100c 	ldr	r1, [pc, #12]	@ 80024e64 <pinit+0x1c>
80024e54:	e59f000c 	ldr	r0, [pc, #12]	@ 80024e68 <pinit+0x20>
80024e58:	eb0004e8 	bl	80026200 <initlock>
80024e5c:	e1a00000 	nop			@ (mov r0, r0)
80024e60:	e8bd8800 	pop	{fp, pc}
80024e64:	80029a54 	.word	0x80029a54
80024e68:	800ad618 	.word	0x800ad618

80024e6c <allocproc>:
80024e6c:	e92d4800 	push	{fp, lr}
80024e70:	e28db004 	add	fp, sp, #4
80024e74:	e24dd008 	sub	sp, sp, #8
80024e78:	e59f01b8 	ldr	r0, [pc, #440]	@ 80025038 <allocproc+0x1cc>
80024e7c:	eb0004f1 	bl	80026248 <acquire>
80024e80:	e59f31b4 	ldr	r3, [pc, #436]	@ 8002503c <allocproc+0x1d0>
80024e84:	e50b3008 	str	r3, [fp, #-8]
80024e88:	ea000006 	b	80024ea8 <allocproc+0x3c>
80024e8c:	e51b3008 	ldr	r3, [fp, #-8]
80024e90:	e5d3300c 	ldrb	r3, [r3, #12]
80024e94:	e3530000 	cmp	r3, #0
80024e98:	0a00000a 	beq	80024ec8 <allocproc+0x5c>
80024e9c:	e51b3008 	ldr	r3, [fp, #-8]
80024ea0:	e2833094 	add	r3, r3, #148	@ 0x94
80024ea4:	e50b3008 	str	r3, [fp, #-8]
80024ea8:	e51b3008 	ldr	r3, [fp, #-8]
80024eac:	e59f218c 	ldr	r2, [pc, #396]	@ 80025040 <allocproc+0x1d4>
80024eb0:	e1530002 	cmp	r3, r2
80024eb4:	3afffff4 	bcc	80024e8c <allocproc+0x20>
80024eb8:	e59f0178 	ldr	r0, [pc, #376]	@ 80025038 <allocproc+0x1cc>
80024ebc:	eb0004ec 	bl	80026274 <release>
80024ec0:	e3a03000 	mov	r3, #0
80024ec4:	ea000058 	b	8002502c <allocproc+0x1c0>
80024ec8:	e1a00000 	nop			@ (mov r0, r0)
80024ecc:	e51b3008 	ldr	r3, [fp, #-8]
80024ed0:	e3a02001 	mov	r2, #1
80024ed4:	e5c3200c 	strb	r2, [r3, #12]
80024ed8:	e59f3164 	ldr	r3, [pc, #356]	@ 80025044 <allocproc+0x1d8>
80024edc:	e5933000 	ldr	r3, [r3]
80024ee0:	e2832001 	add	r2, r3, #1
80024ee4:	e59f1158 	ldr	r1, [pc, #344]	@ 80025044 <allocproc+0x1d8>
80024ee8:	e5812000 	str	r2, [r1]
80024eec:	e51b2008 	ldr	r2, [fp, #-8]
80024ef0:	e5823010 	str	r3, [r2, #16]
80024ef4:	e59f013c 	ldr	r0, [pc, #316]	@ 80025038 <allocproc+0x1cc>
80024ef8:	eb0004dd 	bl	80026274 <release>
80024efc:	ebfff1cb 	bl	80021630 <alloc_page>
80024f00:	e1a02000 	mov	r2, r0
80024f04:	e51b3008 	ldr	r3, [fp, #-8]
80024f08:	e5832008 	str	r2, [r3, #8]
80024f0c:	e51b3008 	ldr	r3, [fp, #-8]
80024f10:	e5933008 	ldr	r3, [r3, #8]
80024f14:	e3530000 	cmp	r3, #0
80024f18:	1a000004 	bne	80024f30 <allocproc+0xc4>
80024f1c:	e51b3008 	ldr	r3, [fp, #-8]
80024f20:	e3a02000 	mov	r2, #0
80024f24:	e5c3200c 	strb	r2, [r3, #12]
80024f28:	e3a03000 	mov	r3, #0
80024f2c:	ea00003e 	b	8002502c <allocproc+0x1c0>
80024f30:	e51b3008 	ldr	r3, [fp, #-8]
80024f34:	e5933008 	ldr	r3, [r3, #8]
80024f38:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80024f3c:	e50b300c 	str	r3, [fp, #-12]
80024f40:	e51b300c 	ldr	r3, [fp, #-12]
80024f44:	e2433048 	sub	r3, r3, #72	@ 0x48
80024f48:	e50b300c 	str	r3, [fp, #-12]
80024f4c:	e51b3008 	ldr	r3, [fp, #-8]
80024f50:	e51b200c 	ldr	r2, [fp, #-12]
80024f54:	e5832018 	str	r2, [r3, #24]
80024f58:	e51b300c 	ldr	r3, [fp, #-12]
80024f5c:	e2433004 	sub	r3, r3, #4
80024f60:	e50b300c 	str	r3, [fp, #-12]
80024f64:	e59f20dc 	ldr	r2, [pc, #220]	@ 80025048 <allocproc+0x1dc>
80024f68:	e51b300c 	ldr	r3, [fp, #-12]
80024f6c:	e5832000 	str	r2, [r3]
80024f70:	e51b300c 	ldr	r3, [fp, #-12]
80024f74:	e2433004 	sub	r3, r3, #4
80024f78:	e50b300c 	str	r3, [fp, #-12]
80024f7c:	e51b3008 	ldr	r3, [fp, #-8]
80024f80:	e5933008 	ldr	r3, [r3, #8]
80024f84:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80024f88:	e51b300c 	ldr	r3, [fp, #-12]
80024f8c:	e5832000 	str	r2, [r3]
80024f90:	e51b300c 	ldr	r3, [fp, #-12]
80024f94:	e2433028 	sub	r3, r3, #40	@ 0x28
80024f98:	e50b300c 	str	r3, [fp, #-12]
80024f9c:	e51b3008 	ldr	r3, [fp, #-8]
80024fa0:	e51b200c 	ldr	r2, [fp, #-12]
80024fa4:	e583201c 	str	r2, [r3, #28]
80024fa8:	e51b3008 	ldr	r3, [fp, #-8]
80024fac:	e593301c 	ldr	r3, [r3, #28]
80024fb0:	e3a02028 	mov	r2, #40	@ 0x28
80024fb4:	e3a01000 	mov	r1, #0
80024fb8:	e1a00003 	mov	r0, r3
80024fbc:	ebffec0f 	bl	80020000 <memset>
80024fc0:	e59f2084 	ldr	r2, [pc, #132]	@ 8002504c <allocproc+0x1e0>
80024fc4:	e51b3008 	ldr	r3, [fp, #-8]
80024fc8:	e593301c 	ldr	r3, [r3, #28]
80024fcc:	e2822004 	add	r2, r2, #4
80024fd0:	e5832024 	str	r2, [r3, #36]	@ 0x24
80024fd4:	e51b3008 	ldr	r3, [fp, #-8]
80024fd8:	e3a02000 	mov	r2, #0
80024fdc:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80024fe0:	e59f3068 	ldr	r3, [pc, #104]	@ 80025050 <allocproc+0x1e4>
80024fe4:	e5933000 	ldr	r3, [r3]
80024fe8:	e5933014 	ldr	r3, [r3, #20]
80024fec:	e3530000 	cmp	r3, #0
80024ff0:	0a000006 	beq	80025010 <allocproc+0x1a4>
80024ff4:	e59f3054 	ldr	r3, [pc, #84]	@ 80025050 <allocproc+0x1e4>
80024ff8:	e5933000 	ldr	r3, [r3]
80024ffc:	e5933014 	ldr	r3, [r3, #20]
80025000:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025004:	e51b3008 	ldr	r3, [fp, #-8]
80025008:	e5832080 	str	r2, [r3, #128]	@ 0x80
8002500c:	ea000002 	b	8002501c <allocproc+0x1b0>
80025010:	e51b3008 	ldr	r3, [fp, #-8]
80025014:	e3a02001 	mov	r2, #1
80025018:	e5832080 	str	r2, [r3, #128]	@ 0x80
8002501c:	e51b3008 	ldr	r3, [fp, #-8]
80025020:	e3a02000 	mov	r2, #0
80025024:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025028:	e51b3008 	ldr	r3, [fp, #-8]
8002502c:	e1a00003 	mov	r0, r3
80025030:	e24bd004 	sub	sp, fp, #4
80025034:	e8bd8800 	pop	{fp, pc}
80025038:	800ad618 	.word	0x800ad618
8002503c:	800ad64c 	.word	0x800ad64c
80025040:	800afb4c 	.word	0x800afb4c
80025044:	8002a014 	.word	0x8002a014
80025048:	80027ba0 	.word	0x80027ba0
8002504c:	80025c1c 	.word	0x80025c1c
80025050:	800afb50 	.word	0x800afb50

80025054 <proclist>:
80025054:	e92d4800 	push	{fp, lr}
80025058:	e28db004 	add	fp, sp, #4
8002505c:	e24dd010 	sub	sp, sp, #16
80025060:	e50b0010 	str	r0, [fp, #-16]
80025064:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025068:	e3a03000 	mov	r3, #0
8002506c:	e50b300c 	str	r3, [fp, #-12]
80025070:	e59f012c 	ldr	r0, [pc, #300]	@ 800251a4 <proclist+0x150>
80025074:	eb000473 	bl	80026248 <acquire>
80025078:	e59f3128 	ldr	r3, [pc, #296]	@ 800251a8 <proclist+0x154>
8002507c:	e50b3008 	str	r3, [fp, #-8]
80025080:	ea000039 	b	8002516c <proclist+0x118>
80025084:	e51b3008 	ldr	r3, [fp, #-8]
80025088:	e5d3300c 	ldrb	r3, [r3, #12]
8002508c:	e3530000 	cmp	r3, #0
80025090:	0a000031 	beq	8002515c <proclist+0x108>
80025094:	e51b300c 	ldr	r3, [fp, #-12]
80025098:	e1a03283 	lsl	r3, r3, #5
8002509c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800250a0:	e0823003 	add	r3, r2, r3
800250a4:	e51b2008 	ldr	r2, [fp, #-8]
800250a8:	e5922010 	ldr	r2, [r2, #16]
800250ac:	e5832000 	str	r2, [r3]
800250b0:	e51b3008 	ldr	r3, [fp, #-8]
800250b4:	e5933014 	ldr	r3, [r3, #20]
800250b8:	e3530000 	cmp	r3, #0
800250bc:	0a000003 	beq	800250d0 <proclist+0x7c>
800250c0:	e51b3008 	ldr	r3, [fp, #-8]
800250c4:	e5933014 	ldr	r3, [r3, #20]
800250c8:	e5933010 	ldr	r3, [r3, #16]
800250cc:	ea000000 	b	800250d4 <proclist+0x80>
800250d0:	e3a03000 	mov	r3, #0
800250d4:	e51b200c 	ldr	r2, [fp, #-12]
800250d8:	e1a02282 	lsl	r2, r2, #5
800250dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800250e0:	e0812002 	add	r2, r1, r2
800250e4:	e5823004 	str	r3, [r2, #4]
800250e8:	e51b300c 	ldr	r3, [fp, #-12]
800250ec:	e1a03283 	lsl	r3, r3, #5
800250f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800250f4:	e0823003 	add	r3, r2, r3
800250f8:	e2830008 	add	r0, r3, #8
800250fc:	e51b3008 	ldr	r3, [fp, #-8]
80025100:	e283306c 	add	r3, r3, #108	@ 0x6c
80025104:	e3a02010 	mov	r2, #16
80025108:	e1a01003 	mov	r1, r3
8002510c:	ebffeccf 	bl	80020450 <safestrcpy>
80025110:	e51b3008 	ldr	r3, [fp, #-8]
80025114:	e5d3100c 	ldrb	r1, [r3, #12]
80025118:	e51b300c 	ldr	r3, [fp, #-12]
8002511c:	e1a03283 	lsl	r3, r3, #5
80025120:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025124:	e0823003 	add	r3, r2, r3
80025128:	e1a02001 	mov	r2, r1
8002512c:	e5832018 	str	r2, [r3, #24]
80025130:	e51b300c 	ldr	r3, [fp, #-12]
80025134:	e1a03283 	lsl	r3, r3, #5
80025138:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002513c:	e0823003 	add	r3, r2, r3
80025140:	e51b2008 	ldr	r2, [fp, #-8]
80025144:	e592207c 	ldr	r2, [r2, #124]	@ 0x7c
80025148:	e583201c 	str	r2, [r3, #28]
8002514c:	e51b300c 	ldr	r3, [fp, #-12]
80025150:	e2833001 	add	r3, r3, #1
80025154:	e50b300c 	str	r3, [fp, #-12]
80025158:	ea000000 	b	80025160 <proclist+0x10c>
8002515c:	e1a00000 	nop			@ (mov r0, r0)
80025160:	e51b3008 	ldr	r3, [fp, #-8]
80025164:	e2833094 	add	r3, r3, #148	@ 0x94
80025168:	e50b3008 	str	r3, [fp, #-8]
8002516c:	e51b3008 	ldr	r3, [fp, #-8]
80025170:	e59f2034 	ldr	r2, [pc, #52]	@ 800251ac <proclist+0x158>
80025174:	e1530002 	cmp	r3, r2
80025178:	2a000003 	bcs	8002518c <proclist+0x138>
8002517c:	e51b200c 	ldr	r2, [fp, #-12]
80025180:	e51b3010 	ldr	r3, [fp, #-16]
80025184:	e1520003 	cmp	r2, r3
80025188:	baffffbd 	blt	80025084 <proclist+0x30>
8002518c:	e59f0010 	ldr	r0, [pc, #16]	@ 800251a4 <proclist+0x150>
80025190:	eb000437 	bl	80026274 <release>
80025194:	e51b300c 	ldr	r3, [fp, #-12]
80025198:	e1a00003 	mov	r0, r3
8002519c:	e24bd004 	sub	sp, fp, #4
800251a0:	e8bd8800 	pop	{fp, pc}
800251a4:	800ad618 	.word	0x800ad618
800251a8:	800ad64c 	.word	0x800ad64c
800251ac:	800afb4c 	.word	0x800afb4c

800251b0 <error_init>:
800251b0:	e92d4800 	push	{fp, lr}
800251b4:	e28db004 	add	fp, sp, #4
800251b8:	e59f0000 	ldr	r0, [pc]	@ 800251c0 <error_init+0x10>
800251bc:	ebfff24c 	bl	80021af4 <panic>
800251c0:	80029a5c 	.word	0x80029a5c

800251c4 <hold_lottery>:
800251c4:	e92d4800 	push	{fp, lr}
800251c8:	e28db004 	add	fp, sp, #4
800251cc:	e24dd020 	sub	sp, sp, #32
800251d0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800251d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800251d8:	e3530000 	cmp	r3, #0
800251dc:	ca000003 	bgt	800251f0 <hold_lottery+0x2c>
800251e0:	e59f00d0 	ldr	r0, [pc, #208]	@ 800252b8 <hold_lottery+0xf4>
800251e4:	ebfff1aa 	bl	80021894 <cprintf>
800251e8:	e3a03000 	mov	r3, #0
800251ec:	ea00002e 	b	800252ac <hold_lottery+0xe8>
800251f0:	ebffff01 	bl	80024dfc <rand>
800251f4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800251f8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800251fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025200:	e1a01002 	mov	r1, r2
80025204:	e1a00003 	mov	r0, r3
80025208:	eb0010f2 	bl	800295d8 <__aeabi_uidivmod>
8002520c:	e1a03001 	mov	r3, r1
80025210:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025214:	e3a03000 	mov	r3, #0
80025218:	e50b3008 	str	r3, [fp, #-8]
8002521c:	e59f3098 	ldr	r3, [pc, #152]	@ 800252bc <hold_lottery+0xf8>
80025220:	e50b300c 	str	r3, [fp, #-12]
80025224:	ea00001b 	b	80025298 <hold_lottery+0xd4>
80025228:	e51b300c 	ldr	r3, [fp, #-12]
8002522c:	e5d3300c 	ldrb	r3, [r3, #12]
80025230:	e3530003 	cmp	r3, #3
80025234:	1a000013 	bne	80025288 <hold_lottery+0xc4>
80025238:	e51b300c 	ldr	r3, [fp, #-12]
8002523c:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025240:	e50b3010 	str	r3, [fp, #-16]
80025244:	e51b300c 	ldr	r3, [fp, #-12]
80025248:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
8002524c:	e3530000 	cmp	r3, #0
80025250:	da000002 	ble	80025260 <hold_lottery+0x9c>
80025254:	e51b3010 	ldr	r3, [fp, #-16]
80025258:	e1a03083 	lsl	r3, r3, #1
8002525c:	e50b3010 	str	r3, [fp, #-16]
80025260:	e51b2008 	ldr	r2, [fp, #-8]
80025264:	e51b3010 	ldr	r3, [fp, #-16]
80025268:	e0823003 	add	r3, r2, r3
8002526c:	e50b3008 	str	r3, [fp, #-8]
80025270:	e51b3008 	ldr	r3, [fp, #-8]
80025274:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80025278:	e1520003 	cmp	r2, r3
8002527c:	2a000002 	bcs	8002528c <hold_lottery+0xc8>
80025280:	e51b300c 	ldr	r3, [fp, #-12]
80025284:	ea000008 	b	800252ac <hold_lottery+0xe8>
80025288:	e1a00000 	nop			@ (mov r0, r0)
8002528c:	e51b300c 	ldr	r3, [fp, #-12]
80025290:	e2833094 	add	r3, r3, #148	@ 0x94
80025294:	e50b300c 	str	r3, [fp, #-12]
80025298:	e51b300c 	ldr	r3, [fp, #-12]
8002529c:	e59f201c 	ldr	r2, [pc, #28]	@ 800252c0 <hold_lottery+0xfc>
800252a0:	e1530002 	cmp	r3, r2
800252a4:	3affffdf 	bcc	80025228 <hold_lottery+0x64>
800252a8:	e3a03000 	mov	r3, #0
800252ac:	e1a00003 	mov	r0, r3
800252b0:	e24bd004 	sub	sp, fp, #4
800252b4:	e8bd8800 	pop	{fp, pc}
800252b8:	80029a7c 	.word	0x80029a7c
800252bc:	800ad64c 	.word	0x800ad64c
800252c0:	800afb4c 	.word	0x800afb4c

800252c4 <userinit>:
800252c4:	e92d4810 	push	{r4, fp, lr}
800252c8:	e28db008 	add	fp, sp, #8
800252cc:	e24dd00c 	sub	sp, sp, #12
800252d0:	ebfffee5 	bl	80024e6c <allocproc>
800252d4:	e50b0010 	str	r0, [fp, #-16]
800252d8:	e59f2100 	ldr	r2, [pc, #256]	@ 800253e0 <userinit+0x11c>
800252dc:	e51b3010 	ldr	r3, [fp, #-16]
800252e0:	e5823000 	str	r3, [r2]
800252e4:	eb000c45 	bl	80028400 <kpt_alloc>
800252e8:	e1a02000 	mov	r2, r0
800252ec:	e51b3010 	ldr	r3, [fp, #-16]
800252f0:	e5832004 	str	r2, [r3, #4]
800252f4:	e51b3010 	ldr	r3, [fp, #-16]
800252f8:	e5933004 	ldr	r3, [r3, #4]
800252fc:	e3530000 	cmp	r3, #0
80025300:	1a000001 	bne	8002530c <userinit+0x48>
80025304:	e59f00d8 	ldr	r0, [pc, #216]	@ 800253e4 <userinit+0x120>
80025308:	ebfff1f9 	bl	80021af4 <panic>
8002530c:	e51b3010 	ldr	r3, [fp, #-16]
80025310:	e5933004 	ldr	r3, [r3, #4]
80025314:	e59f20cc 	ldr	r2, [pc, #204]	@ 800253e8 <userinit+0x124>
80025318:	e59f10cc 	ldr	r1, [pc, #204]	@ 800253ec <userinit+0x128>
8002531c:	e1a00003 	mov	r0, r3
80025320:	eb000cf4 	bl	800286f8 <inituvm>
80025324:	e51b3010 	ldr	r3, [fp, #-16]
80025328:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002532c:	e5832000 	str	r2, [r3]
80025330:	e51b3010 	ldr	r3, [fp, #-16]
80025334:	e5933018 	ldr	r3, [r3, #24]
80025338:	e3a02048 	mov	r2, #72	@ 0x48
8002533c:	e3a01000 	mov	r1, #0
80025340:	e1a00003 	mov	r0, r3
80025344:	ebffeb2d 	bl	80020000 <memset>
80025348:	e51b3010 	ldr	r3, [fp, #-16]
8002534c:	e5933018 	ldr	r3, [r3, #24]
80025350:	e59f2098 	ldr	r2, [pc, #152]	@ 800253f0 <userinit+0x12c>
80025354:	e5832008 	str	r2, [r3, #8]
80025358:	e51b3010 	ldr	r3, [fp, #-16]
8002535c:	e5934018 	ldr	r4, [r3, #24]
80025360:	ebffec92 	bl	800205b0 <spsr_usr>
80025364:	e1a03000 	mov	r3, r0
80025368:	e584300c 	str	r3, [r4, #12]
8002536c:	e51b3010 	ldr	r3, [fp, #-16]
80025370:	e5933018 	ldr	r3, [r3, #24]
80025374:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025378:	e5832000 	str	r2, [r3]
8002537c:	e51b3010 	ldr	r3, [fp, #-16]
80025380:	e5933018 	ldr	r3, [r3, #24]
80025384:	e3a02000 	mov	r2, #0
80025388:	e5832004 	str	r2, [r3, #4]
8002538c:	e51b3010 	ldr	r3, [fp, #-16]
80025390:	e5933018 	ldr	r3, [r3, #24]
80025394:	e3a02000 	mov	r2, #0
80025398:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002539c:	e51b3010 	ldr	r3, [fp, #-16]
800253a0:	e283306c 	add	r3, r3, #108	@ 0x6c
800253a4:	e3a02010 	mov	r2, #16
800253a8:	e59f1044 	ldr	r1, [pc, #68]	@ 800253f4 <userinit+0x130>
800253ac:	e1a00003 	mov	r0, r3
800253b0:	ebffec26 	bl	80020450 <safestrcpy>
800253b4:	e59f003c 	ldr	r0, [pc, #60]	@ 800253f8 <userinit+0x134>
800253b8:	ebfffb4b 	bl	800240ec <namei>
800253bc:	e1a02000 	mov	r2, r0
800253c0:	e51b3010 	ldr	r3, [fp, #-16]
800253c4:	e5832068 	str	r2, [r3, #104]	@ 0x68
800253c8:	e51b3010 	ldr	r3, [fp, #-16]
800253cc:	e3a02003 	mov	r2, #3
800253d0:	e5c3200c 	strb	r2, [r3, #12]
800253d4:	e1a00000 	nop			@ (mov r0, r0)
800253d8:	e24bd008 	sub	sp, fp, #8
800253dc:	e8bd8810 	pop	{r4, fp, pc}
800253e0:	800afb4c 	.word	0x800afb4c
800253e4:	80029a98 	.word	0x80029a98
800253e8:	00000034 	.word	0x00000034
800253ec:	8002a09c 	.word	0x8002a09c
800253f0:	800251b0 	.word	0x800251b0
800253f4:	80029ab4 	.word	0x80029ab4
800253f8:	80029ac0 	.word	0x80029ac0

800253fc <growproc>:
800253fc:	e92d4800 	push	{fp, lr}
80025400:	e28db004 	add	fp, sp, #4
80025404:	e24dd010 	sub	sp, sp, #16
80025408:	e50b0010 	str	r0, [fp, #-16]
8002540c:	e59f30d0 	ldr	r3, [pc, #208]	@ 800254e4 <growproc+0xe8>
80025410:	e5933000 	ldr	r3, [r3]
80025414:	e5933000 	ldr	r3, [r3]
80025418:	e50b3008 	str	r3, [fp, #-8]
8002541c:	e51b3010 	ldr	r3, [fp, #-16]
80025420:	e3530000 	cmp	r3, #0
80025424:	da00000f 	ble	80025468 <growproc+0x6c>
80025428:	e59f30b4 	ldr	r3, [pc, #180]	@ 800254e4 <growproc+0xe8>
8002542c:	e5933000 	ldr	r3, [r3]
80025430:	e5930004 	ldr	r0, [r3, #4]
80025434:	e51b2010 	ldr	r2, [fp, #-16]
80025438:	e51b3008 	ldr	r3, [fp, #-8]
8002543c:	e0823003 	add	r3, r2, r3
80025440:	e1a02003 	mov	r2, r3
80025444:	e51b1008 	ldr	r1, [fp, #-8]
80025448:	eb000d18 	bl	800288b0 <allocuvm>
8002544c:	e1a03000 	mov	r3, r0
80025450:	e50b3008 	str	r3, [fp, #-8]
80025454:	e51b3008 	ldr	r3, [fp, #-8]
80025458:	e3530000 	cmp	r3, #0
8002545c:	1a000014 	bne	800254b4 <growproc+0xb8>
80025460:	e3e03000 	mvn	r3, #0
80025464:	ea00001b 	b	800254d8 <growproc+0xdc>
80025468:	e51b3010 	ldr	r3, [fp, #-16]
8002546c:	e3530000 	cmp	r3, #0
80025470:	aa00000f 	bge	800254b4 <growproc+0xb8>
80025474:	e59f3068 	ldr	r3, [pc, #104]	@ 800254e4 <growproc+0xe8>
80025478:	e5933000 	ldr	r3, [r3]
8002547c:	e5930004 	ldr	r0, [r3, #4]
80025480:	e51b2010 	ldr	r2, [fp, #-16]
80025484:	e51b3008 	ldr	r3, [fp, #-8]
80025488:	e0823003 	add	r3, r2, r3
8002548c:	e1a02003 	mov	r2, r3
80025490:	e51b1008 	ldr	r1, [fp, #-8]
80025494:	eb000d44 	bl	800289ac <deallocuvm>
80025498:	e1a03000 	mov	r3, r0
8002549c:	e50b3008 	str	r3, [fp, #-8]
800254a0:	e51b3008 	ldr	r3, [fp, #-8]
800254a4:	e3530000 	cmp	r3, #0
800254a8:	1a000001 	bne	800254b4 <growproc+0xb8>
800254ac:	e3e03000 	mvn	r3, #0
800254b0:	ea000008 	b	800254d8 <growproc+0xdc>
800254b4:	e59f3028 	ldr	r3, [pc, #40]	@ 800254e4 <growproc+0xe8>
800254b8:	e5933000 	ldr	r3, [r3]
800254bc:	e51b2008 	ldr	r2, [fp, #-8]
800254c0:	e5832000 	str	r2, [r3]
800254c4:	e59f3018 	ldr	r3, [pc, #24]	@ 800254e4 <growproc+0xe8>
800254c8:	e5933000 	ldr	r3, [r3]
800254cc:	e1a00003 	mov	r0, r3
800254d0:	eb000c71 	bl	8002869c <switchuvm>
800254d4:	e3a03000 	mov	r3, #0
800254d8:	e1a00003 	mov	r0, r3
800254dc:	e24bd004 	sub	sp, fp, #4
800254e0:	e8bd8800 	pop	{fp, pc}
800254e4:	800afb50 	.word	0x800afb50

800254e8 <fork>:
800254e8:	e92d4800 	push	{fp, lr}
800254ec:	e28db004 	add	fp, sp, #4
800254f0:	e24dd010 	sub	sp, sp, #16
800254f4:	ebfffe5c 	bl	80024e6c <allocproc>
800254f8:	e50b000c 	str	r0, [fp, #-12]
800254fc:	e51b300c 	ldr	r3, [fp, #-12]
80025500:	e3530000 	cmp	r3, #0
80025504:	1a000001 	bne	80025510 <fork+0x28>
80025508:	e3e03000 	mvn	r3, #0
8002550c:	ea000065 	b	800256a8 <fork+0x1c0>
80025510:	e59f319c 	ldr	r3, [pc, #412]	@ 800256b4 <fork+0x1cc>
80025514:	e5933000 	ldr	r3, [r3]
80025518:	e5932004 	ldr	r2, [r3, #4]
8002551c:	e59f3190 	ldr	r3, [pc, #400]	@ 800256b4 <fork+0x1cc>
80025520:	e5933000 	ldr	r3, [r3]
80025524:	e5933000 	ldr	r3, [r3]
80025528:	e1a01003 	mov	r1, r3
8002552c:	e1a00002 	mov	r0, r2
80025530:	eb000dac 	bl	80028be8 <copyuvm>
80025534:	e1a02000 	mov	r2, r0
80025538:	e51b300c 	ldr	r3, [fp, #-12]
8002553c:	e5832004 	str	r2, [r3, #4]
80025540:	e51b300c 	ldr	r3, [fp, #-12]
80025544:	e5933004 	ldr	r3, [r3, #4]
80025548:	e3530000 	cmp	r3, #0
8002554c:	1a00000b 	bne	80025580 <fork+0x98>
80025550:	e51b300c 	ldr	r3, [fp, #-12]
80025554:	e5933008 	ldr	r3, [r3, #8]
80025558:	e1a00003 	mov	r0, r3
8002555c:	ebfff029 	bl	80021608 <free_page>
80025560:	e51b300c 	ldr	r3, [fp, #-12]
80025564:	e3a02000 	mov	r2, #0
80025568:	e5832008 	str	r2, [r3, #8]
8002556c:	e51b300c 	ldr	r3, [fp, #-12]
80025570:	e3a02000 	mov	r2, #0
80025574:	e5c3200c 	strb	r2, [r3, #12]
80025578:	e3e03000 	mvn	r3, #0
8002557c:	ea000049 	b	800256a8 <fork+0x1c0>
80025580:	e59f312c 	ldr	r3, [pc, #300]	@ 800256b4 <fork+0x1cc>
80025584:	e5933000 	ldr	r3, [r3]
80025588:	e5932000 	ldr	r2, [r3]
8002558c:	e51b300c 	ldr	r3, [fp, #-12]
80025590:	e5832000 	str	r2, [r3]
80025594:	e59f3118 	ldr	r3, [pc, #280]	@ 800256b4 <fork+0x1cc>
80025598:	e5932000 	ldr	r2, [r3]
8002559c:	e51b300c 	ldr	r3, [fp, #-12]
800255a0:	e5832014 	str	r2, [r3, #20]
800255a4:	e59f3108 	ldr	r3, [pc, #264]	@ 800256b4 <fork+0x1cc>
800255a8:	e5933000 	ldr	r3, [r3]
800255ac:	e5932018 	ldr	r2, [r3, #24]
800255b0:	e51b300c 	ldr	r3, [fp, #-12]
800255b4:	e5933018 	ldr	r3, [r3, #24]
800255b8:	e1a00003 	mov	r0, r3
800255bc:	e1a01002 	mov	r1, r2
800255c0:	e3a03048 	mov	r3, #72	@ 0x48
800255c4:	e1a02003 	mov	r2, r3
800255c8:	ebffeb3d 	bl	800202c4 <memcpy>
800255cc:	e51b300c 	ldr	r3, [fp, #-12]
800255d0:	e5933018 	ldr	r3, [r3, #24]
800255d4:	e3a02000 	mov	r2, #0
800255d8:	e5832010 	str	r2, [r3, #16]
800255dc:	e3a03000 	mov	r3, #0
800255e0:	e50b3008 	str	r3, [fp, #-8]
800255e4:	ea000015 	b	80025640 <fork+0x158>
800255e8:	e59f30c4 	ldr	r3, [pc, #196]	@ 800256b4 <fork+0x1cc>
800255ec:	e5933000 	ldr	r3, [r3]
800255f0:	e51b2008 	ldr	r2, [fp, #-8]
800255f4:	e282200a 	add	r2, r2, #10
800255f8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800255fc:	e3530000 	cmp	r3, #0
80025600:	0a00000b 	beq	80025634 <fork+0x14c>
80025604:	e59f30a8 	ldr	r3, [pc, #168]	@ 800256b4 <fork+0x1cc>
80025608:	e5933000 	ldr	r3, [r3]
8002560c:	e51b2008 	ldr	r2, [fp, #-8]
80025610:	e282200a 	add	r2, r2, #10
80025614:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025618:	e1a00003 	mov	r0, r3
8002561c:	ebfff3fb 	bl	80022610 <filedup>
80025620:	e1a01000 	mov	r1, r0
80025624:	e51b300c 	ldr	r3, [fp, #-12]
80025628:	e51b2008 	ldr	r2, [fp, #-8]
8002562c:	e282200a 	add	r2, r2, #10
80025630:	e7831102 	str	r1, [r3, r2, lsl #2]
80025634:	e51b3008 	ldr	r3, [fp, #-8]
80025638:	e2833001 	add	r3, r3, #1
8002563c:	e50b3008 	str	r3, [fp, #-8]
80025640:	e51b3008 	ldr	r3, [fp, #-8]
80025644:	e353000f 	cmp	r3, #15
80025648:	daffffe6 	ble	800255e8 <fork+0x100>
8002564c:	e59f3060 	ldr	r3, [pc, #96]	@ 800256b4 <fork+0x1cc>
80025650:	e5933000 	ldr	r3, [r3]
80025654:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025658:	e1a00003 	mov	r0, r3
8002565c:	ebfff6bd 	bl	80023158 <idup>
80025660:	e1a02000 	mov	r2, r0
80025664:	e51b300c 	ldr	r3, [fp, #-12]
80025668:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002566c:	e51b300c 	ldr	r3, [fp, #-12]
80025670:	e5933010 	ldr	r3, [r3, #16]
80025674:	e50b3010 	str	r3, [fp, #-16]
80025678:	e51b300c 	ldr	r3, [fp, #-12]
8002567c:	e3a02003 	mov	r2, #3
80025680:	e5c3200c 	strb	r2, [r3, #12]
80025684:	e51b300c 	ldr	r3, [fp, #-12]
80025688:	e283006c 	add	r0, r3, #108	@ 0x6c
8002568c:	e59f3020 	ldr	r3, [pc, #32]	@ 800256b4 <fork+0x1cc>
80025690:	e5933000 	ldr	r3, [r3]
80025694:	e283306c 	add	r3, r3, #108	@ 0x6c
80025698:	e3a02010 	mov	r2, #16
8002569c:	e1a01003 	mov	r1, r3
800256a0:	ebffeb6a 	bl	80020450 <safestrcpy>
800256a4:	e51b3010 	ldr	r3, [fp, #-16]
800256a8:	e1a00003 	mov	r0, r3
800256ac:	e24bd004 	sub	sp, fp, #4
800256b0:	e8bd8800 	pop	{fp, pc}
800256b4:	800afb50 	.word	0x800afb50

800256b8 <exit>:
800256b8:	e92d4800 	push	{fp, lr}
800256bc:	e28db004 	add	fp, sp, #4
800256c0:	e24dd008 	sub	sp, sp, #8
800256c4:	e59f3158 	ldr	r3, [pc, #344]	@ 80025824 <exit+0x16c>
800256c8:	e5932000 	ldr	r2, [r3]
800256cc:	e59f3154 	ldr	r3, [pc, #340]	@ 80025828 <exit+0x170>
800256d0:	e5933000 	ldr	r3, [r3]
800256d4:	e1520003 	cmp	r2, r3
800256d8:	1a000001 	bne	800256e4 <exit+0x2c>
800256dc:	e59f0148 	ldr	r0, [pc, #328]	@ 8002582c <exit+0x174>
800256e0:	ebfff103 	bl	80021af4 <panic>
800256e4:	e3a03000 	mov	r3, #0
800256e8:	e50b300c 	str	r3, [fp, #-12]
800256ec:	ea000016 	b	8002574c <exit+0x94>
800256f0:	e59f312c 	ldr	r3, [pc, #300]	@ 80025824 <exit+0x16c>
800256f4:	e5933000 	ldr	r3, [r3]
800256f8:	e51b200c 	ldr	r2, [fp, #-12]
800256fc:	e282200a 	add	r2, r2, #10
80025700:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025704:	e3530000 	cmp	r3, #0
80025708:	0a00000c 	beq	80025740 <exit+0x88>
8002570c:	e59f3110 	ldr	r3, [pc, #272]	@ 80025824 <exit+0x16c>
80025710:	e5933000 	ldr	r3, [r3]
80025714:	e51b200c 	ldr	r2, [fp, #-12]
80025718:	e282200a 	add	r2, r2, #10
8002571c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025720:	e1a00003 	mov	r0, r3
80025724:	ebfff3d2 	bl	80022674 <fileclose>
80025728:	e59f30f4 	ldr	r3, [pc, #244]	@ 80025824 <exit+0x16c>
8002572c:	e5933000 	ldr	r3, [r3]
80025730:	e51b200c 	ldr	r2, [fp, #-12]
80025734:	e282200a 	add	r2, r2, #10
80025738:	e3a01000 	mov	r1, #0
8002573c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025740:	e51b300c 	ldr	r3, [fp, #-12]
80025744:	e2833001 	add	r3, r3, #1
80025748:	e50b300c 	str	r3, [fp, #-12]
8002574c:	e51b300c 	ldr	r3, [fp, #-12]
80025750:	e353000f 	cmp	r3, #15
80025754:	daffffe5 	ble	800256f0 <exit+0x38>
80025758:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025824 <exit+0x16c>
8002575c:	e5933000 	ldr	r3, [r3]
80025760:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025764:	e1a00003 	mov	r0, r3
80025768:	ebfff712 	bl	800233b8 <iput>
8002576c:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025824 <exit+0x16c>
80025770:	e5933000 	ldr	r3, [r3]
80025774:	e3a02000 	mov	r2, #0
80025778:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002577c:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025830 <exit+0x178>
80025780:	eb0002b0 	bl	80026248 <acquire>
80025784:	e59f3098 	ldr	r3, [pc, #152]	@ 80025824 <exit+0x16c>
80025788:	e5933000 	ldr	r3, [r3]
8002578c:	e5933014 	ldr	r3, [r3, #20]
80025790:	e1a00003 	mov	r0, r3
80025794:	eb000164 	bl	80025d2c <wakeup1>
80025798:	e59f3094 	ldr	r3, [pc, #148]	@ 80025834 <exit+0x17c>
8002579c:	e50b3008 	str	r3, [fp, #-8]
800257a0:	ea000014 	b	800257f8 <exit+0x140>
800257a4:	e51b3008 	ldr	r3, [fp, #-8]
800257a8:	e5932014 	ldr	r2, [r3, #20]
800257ac:	e59f3070 	ldr	r3, [pc, #112]	@ 80025824 <exit+0x16c>
800257b0:	e5933000 	ldr	r3, [r3]
800257b4:	e1520003 	cmp	r2, r3
800257b8:	1a00000b 	bne	800257ec <exit+0x134>
800257bc:	e59f3064 	ldr	r3, [pc, #100]	@ 80025828 <exit+0x170>
800257c0:	e5932000 	ldr	r2, [r3]
800257c4:	e51b3008 	ldr	r3, [fp, #-8]
800257c8:	e5832014 	str	r2, [r3, #20]
800257cc:	e51b3008 	ldr	r3, [fp, #-8]
800257d0:	e5d3300c 	ldrb	r3, [r3, #12]
800257d4:	e3530005 	cmp	r3, #5
800257d8:	1a000003 	bne	800257ec <exit+0x134>
800257dc:	e59f3044 	ldr	r3, [pc, #68]	@ 80025828 <exit+0x170>
800257e0:	e5933000 	ldr	r3, [r3]
800257e4:	e1a00003 	mov	r0, r3
800257e8:	eb00014f 	bl	80025d2c <wakeup1>
800257ec:	e51b3008 	ldr	r3, [fp, #-8]
800257f0:	e2833094 	add	r3, r3, #148	@ 0x94
800257f4:	e50b3008 	str	r3, [fp, #-8]
800257f8:	e51b3008 	ldr	r3, [fp, #-8]
800257fc:	e59f2034 	ldr	r2, [pc, #52]	@ 80025838 <exit+0x180>
80025800:	e1530002 	cmp	r3, r2
80025804:	3affffe6 	bcc	800257a4 <exit+0xec>
80025808:	e59f3014 	ldr	r3, [pc, #20]	@ 80025824 <exit+0x16c>
8002580c:	e5933000 	ldr	r3, [r3]
80025810:	e3a02005 	mov	r2, #5
80025814:	e5c3200c 	strb	r2, [r3, #12]
80025818:	eb0000b7 	bl	80025afc <sched>
8002581c:	e59f0018 	ldr	r0, [pc, #24]	@ 8002583c <exit+0x184>
80025820:	ebfff0b3 	bl	80021af4 <panic>
80025824:	800afb50 	.word	0x800afb50
80025828:	800afb4c 	.word	0x800afb4c
8002582c:	80029ac4 	.word	0x80029ac4
80025830:	800ad618 	.word	0x800ad618
80025834:	800ad64c 	.word	0x800ad64c
80025838:	800afb4c 	.word	0x800afb4c
8002583c:	80029ad4 	.word	0x80029ad4

80025840 <wait>:
80025840:	e92d4800 	push	{fp, lr}
80025844:	e28db004 	add	fp, sp, #4
80025848:	e24dd010 	sub	sp, sp, #16
8002584c:	e59f013c 	ldr	r0, [pc, #316]	@ 80025990 <wait+0x150>
80025850:	eb00027c 	bl	80026248 <acquire>
80025854:	e3a03000 	mov	r3, #0
80025858:	e50b300c 	str	r3, [fp, #-12]
8002585c:	e59f3130 	ldr	r3, [pc, #304]	@ 80025994 <wait+0x154>
80025860:	e50b3008 	str	r3, [fp, #-8]
80025864:	ea000030 	b	8002592c <wait+0xec>
80025868:	e51b3008 	ldr	r3, [fp, #-8]
8002586c:	e5932014 	ldr	r2, [r3, #20]
80025870:	e59f3120 	ldr	r3, [pc, #288]	@ 80025998 <wait+0x158>
80025874:	e5933000 	ldr	r3, [r3]
80025878:	e1520003 	cmp	r2, r3
8002587c:	1a000026 	bne	8002591c <wait+0xdc>
80025880:	e3a03001 	mov	r3, #1
80025884:	e50b300c 	str	r3, [fp, #-12]
80025888:	e51b3008 	ldr	r3, [fp, #-8]
8002588c:	e5d3300c 	ldrb	r3, [r3, #12]
80025890:	e3530005 	cmp	r3, #5
80025894:	1a000021 	bne	80025920 <wait+0xe0>
80025898:	e51b3008 	ldr	r3, [fp, #-8]
8002589c:	e5933010 	ldr	r3, [r3, #16]
800258a0:	e50b3010 	str	r3, [fp, #-16]
800258a4:	e51b3008 	ldr	r3, [fp, #-8]
800258a8:	e5933008 	ldr	r3, [r3, #8]
800258ac:	e1a00003 	mov	r0, r3
800258b0:	ebffef54 	bl	80021608 <free_page>
800258b4:	e51b3008 	ldr	r3, [fp, #-8]
800258b8:	e3a02000 	mov	r2, #0
800258bc:	e5832008 	str	r2, [r3, #8]
800258c0:	e51b3008 	ldr	r3, [fp, #-8]
800258c4:	e5933004 	ldr	r3, [r3, #4]
800258c8:	e1a00003 	mov	r0, r3
800258cc:	eb000c7c 	bl	80028ac4 <freevm>
800258d0:	e51b3008 	ldr	r3, [fp, #-8]
800258d4:	e3a02000 	mov	r2, #0
800258d8:	e5c3200c 	strb	r2, [r3, #12]
800258dc:	e51b3008 	ldr	r3, [fp, #-8]
800258e0:	e3a02000 	mov	r2, #0
800258e4:	e5832010 	str	r2, [r3, #16]
800258e8:	e51b3008 	ldr	r3, [fp, #-8]
800258ec:	e3a02000 	mov	r2, #0
800258f0:	e5832014 	str	r2, [r3, #20]
800258f4:	e51b3008 	ldr	r3, [fp, #-8]
800258f8:	e3a02000 	mov	r2, #0
800258fc:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80025900:	e51b3008 	ldr	r3, [fp, #-8]
80025904:	e3a02000 	mov	r2, #0
80025908:	e5832024 	str	r2, [r3, #36]	@ 0x24
8002590c:	e59f007c 	ldr	r0, [pc, #124]	@ 80025990 <wait+0x150>
80025910:	eb000257 	bl	80026274 <release>
80025914:	e51b3010 	ldr	r3, [fp, #-16]
80025918:	ea000019 	b	80025984 <wait+0x144>
8002591c:	e1a00000 	nop			@ (mov r0, r0)
80025920:	e51b3008 	ldr	r3, [fp, #-8]
80025924:	e2833094 	add	r3, r3, #148	@ 0x94
80025928:	e50b3008 	str	r3, [fp, #-8]
8002592c:	e51b3008 	ldr	r3, [fp, #-8]
80025930:	e59f2064 	ldr	r2, [pc, #100]	@ 8002599c <wait+0x15c>
80025934:	e1530002 	cmp	r3, r2
80025938:	3affffca 	bcc	80025868 <wait+0x28>
8002593c:	e51b300c 	ldr	r3, [fp, #-12]
80025940:	e3530000 	cmp	r3, #0
80025944:	0a000004 	beq	8002595c <wait+0x11c>
80025948:	e59f3048 	ldr	r3, [pc, #72]	@ 80025998 <wait+0x158>
8002594c:	e5933000 	ldr	r3, [r3]
80025950:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025954:	e3530000 	cmp	r3, #0
80025958:	0a000003 	beq	8002596c <wait+0x12c>
8002595c:	e59f002c 	ldr	r0, [pc, #44]	@ 80025990 <wait+0x150>
80025960:	eb000243 	bl	80026274 <release>
80025964:	e3e03000 	mvn	r3, #0
80025968:	ea000005 	b	80025984 <wait+0x144>
8002596c:	e59f3024 	ldr	r3, [pc, #36]	@ 80025998 <wait+0x158>
80025970:	e5933000 	ldr	r3, [r3]
80025974:	e59f1014 	ldr	r1, [pc, #20]	@ 80025990 <wait+0x150>
80025978:	e1a00003 	mov	r0, r3
8002597c:	eb0000b6 	bl	80025c5c <sleep>
80025980:	eaffffb3 	b	80025854 <wait+0x14>
80025984:	e1a00003 	mov	r0, r3
80025988:	e24bd004 	sub	sp, fp, #4
8002598c:	e8bd8800 	pop	{fp, pc}
80025990:	800ad618 	.word	0x800ad618
80025994:	800ad64c 	.word	0x800ad64c
80025998:	800afb50 	.word	0x800afb50
8002599c:	800afb4c 	.word	0x800afb4c

800259a0 <scheduler>:
800259a0:	e92d4800 	push	{fp, lr}
800259a4:	e28db004 	add	fp, sp, #4
800259a8:	e24dd010 	sub	sp, sp, #16
800259ac:	ebffeaf1 	bl	80020578 <sti>
800259b0:	e59f0130 	ldr	r0, [pc, #304]	@ 80025ae8 <scheduler+0x148>
800259b4:	eb000223 	bl	80026248 <acquire>
800259b8:	e3a03000 	mov	r3, #0
800259bc:	e50b300c 	str	r3, [fp, #-12]
800259c0:	e59f3124 	ldr	r3, [pc, #292]	@ 80025aec <scheduler+0x14c>
800259c4:	e50b3008 	str	r3, [fp, #-8]
800259c8:	ea000014 	b	80025a20 <scheduler+0x80>
800259cc:	e51b3008 	ldr	r3, [fp, #-8]
800259d0:	e5d3300c 	ldrb	r3, [r3, #12]
800259d4:	e3530003 	cmp	r3, #3
800259d8:	1a00000d 	bne	80025a14 <scheduler+0x74>
800259dc:	e51b3008 	ldr	r3, [fp, #-8]
800259e0:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800259e4:	e50b3010 	str	r3, [fp, #-16]
800259e8:	e51b3008 	ldr	r3, [fp, #-8]
800259ec:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
800259f0:	e3530000 	cmp	r3, #0
800259f4:	da000002 	ble	80025a04 <scheduler+0x64>
800259f8:	e51b3010 	ldr	r3, [fp, #-16]
800259fc:	e1a03083 	lsl	r3, r3, #1
80025a00:	e50b3010 	str	r3, [fp, #-16]
80025a04:	e51b200c 	ldr	r2, [fp, #-12]
80025a08:	e51b3010 	ldr	r3, [fp, #-16]
80025a0c:	e0823003 	add	r3, r2, r3
80025a10:	e50b300c 	str	r3, [fp, #-12]
80025a14:	e51b3008 	ldr	r3, [fp, #-8]
80025a18:	e2833094 	add	r3, r3, #148	@ 0x94
80025a1c:	e50b3008 	str	r3, [fp, #-8]
80025a20:	e51b3008 	ldr	r3, [fp, #-8]
80025a24:	e59f20c4 	ldr	r2, [pc, #196]	@ 80025af0 <scheduler+0x150>
80025a28:	e1530002 	cmp	r3, r2
80025a2c:	3affffe6 	bcc	800259cc <scheduler+0x2c>
80025a30:	e51b300c 	ldr	r3, [fp, #-12]
80025a34:	e3530000 	cmp	r3, #0
80025a38:	da000027 	ble	80025adc <scheduler+0x13c>
80025a3c:	e51b000c 	ldr	r0, [fp, #-12]
80025a40:	ebfffddf 	bl	800251c4 <hold_lottery>
80025a44:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025a48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a4c:	e3530000 	cmp	r3, #0
80025a50:	0a000021 	beq	80025adc <scheduler+0x13c>
80025a54:	e59f2098 	ldr	r2, [pc, #152]	@ 80025af4 <scheduler+0x154>
80025a58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a5c:	e5823000 	str	r3, [r2]
80025a60:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80025a64:	eb000b0c 	bl	8002869c <switchuvm>
80025a68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a6c:	e3a02004 	mov	r2, #4
80025a70:	e5c3200c 	strb	r2, [r3, #12]
80025a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a78:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025a7c:	e2832001 	add	r2, r3, #1
80025a80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a84:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025a88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a8c:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025a90:	e3530000 	cmp	r3, #0
80025a94:	da000004 	ble	80025aac <scheduler+0x10c>
80025a98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a9c:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025aa0:	e2432001 	sub	r2, r3, #1
80025aa4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025aa8:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025aac:	e59f3044 	ldr	r3, [pc, #68]	@ 80025af8 <scheduler+0x158>
80025ab0:	e5933000 	ldr	r3, [r3]
80025ab4:	e2832004 	add	r2, r3, #4
80025ab8:	e59f3034 	ldr	r3, [pc, #52]	@ 80025af4 <scheduler+0x154>
80025abc:	e5933000 	ldr	r3, [r3]
80025ac0:	e593301c 	ldr	r3, [r3, #28]
80025ac4:	e1a01003 	mov	r1, r3
80025ac8:	e1a00002 	mov	r0, r2
80025acc:	eb0001fd 	bl	800262c8 <swtch>
80025ad0:	e59f301c 	ldr	r3, [pc, #28]	@ 80025af4 <scheduler+0x154>
80025ad4:	e3a02000 	mov	r2, #0
80025ad8:	e5832000 	str	r2, [r3]
80025adc:	e59f0004 	ldr	r0, [pc, #4]	@ 80025ae8 <scheduler+0x148>
80025ae0:	eb0001e3 	bl	80026274 <release>
80025ae4:	eaffffb0 	b	800259ac <scheduler+0xc>
80025ae8:	800ad618 	.word	0x800ad618
80025aec:	800ad64c 	.word	0x800ad64c
80025af0:	800afb4c 	.word	0x800afb4c
80025af4:	800afb50 	.word	0x800afb50
80025af8:	800ad608 	.word	0x800ad608

80025afc <sched>:
80025afc:	e92d4800 	push	{fp, lr}
80025b00:	e28db004 	add	fp, sp, #4
80025b04:	e24dd008 	sub	sp, sp, #8
80025b08:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025bc4 <sched+0xc8>
80025b0c:	eb0001e3 	bl	800262a0 <holding>
80025b10:	e1a03000 	mov	r3, r0
80025b14:	e3530000 	cmp	r3, #0
80025b18:	1a000001 	bne	80025b24 <sched+0x28>
80025b1c:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025bc8 <sched+0xcc>
80025b20:	ebffeff3 	bl	80021af4 <panic>
80025b24:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025bcc <sched+0xd0>
80025b28:	e5933000 	ldr	r3, [r3]
80025b2c:	e593300c 	ldr	r3, [r3, #12]
80025b30:	e3530001 	cmp	r3, #1
80025b34:	0a000001 	beq	80025b40 <sched+0x44>
80025b38:	e59f0090 	ldr	r0, [pc, #144]	@ 80025bd0 <sched+0xd4>
80025b3c:	ebffefec 	bl	80021af4 <panic>
80025b40:	e59f308c 	ldr	r3, [pc, #140]	@ 80025bd4 <sched+0xd8>
80025b44:	e5933000 	ldr	r3, [r3]
80025b48:	e5d3300c 	ldrb	r3, [r3, #12]
80025b4c:	e3530004 	cmp	r3, #4
80025b50:	1a000001 	bne	80025b5c <sched+0x60>
80025b54:	e59f007c 	ldr	r0, [pc, #124]	@ 80025bd8 <sched+0xdc>
80025b58:	ebffefe5 	bl	80021af4 <panic>
80025b5c:	ebffeaa3 	bl	800205f0 <int_enabled>
80025b60:	e1a03000 	mov	r3, r0
80025b64:	e3530000 	cmp	r3, #0
80025b68:	0a000001 	beq	80025b74 <sched+0x78>
80025b6c:	e59f0068 	ldr	r0, [pc, #104]	@ 80025bdc <sched+0xe0>
80025b70:	ebffefdf 	bl	80021af4 <panic>
80025b74:	e59f3050 	ldr	r3, [pc, #80]	@ 80025bcc <sched+0xd0>
80025b78:	e5933000 	ldr	r3, [r3]
80025b7c:	e5933010 	ldr	r3, [r3, #16]
80025b80:	e50b3008 	str	r3, [fp, #-8]
80025b84:	e59f3048 	ldr	r3, [pc, #72]	@ 80025bd4 <sched+0xd8>
80025b88:	e5933000 	ldr	r3, [r3]
80025b8c:	e283201c 	add	r2, r3, #28
80025b90:	e59f3034 	ldr	r3, [pc, #52]	@ 80025bcc <sched+0xd0>
80025b94:	e5933000 	ldr	r3, [r3]
80025b98:	e5933004 	ldr	r3, [r3, #4]
80025b9c:	e1a01003 	mov	r1, r3
80025ba0:	e1a00002 	mov	r0, r2
80025ba4:	eb0001c7 	bl	800262c8 <swtch>
80025ba8:	e59f301c 	ldr	r3, [pc, #28]	@ 80025bcc <sched+0xd0>
80025bac:	e5933000 	ldr	r3, [r3]
80025bb0:	e51b2008 	ldr	r2, [fp, #-8]
80025bb4:	e5832010 	str	r2, [r3, #16]
80025bb8:	e1a00000 	nop			@ (mov r0, r0)
80025bbc:	e24bd004 	sub	sp, fp, #4
80025bc0:	e8bd8800 	pop	{fp, pc}
80025bc4:	800ad618 	.word	0x800ad618
80025bc8:	80029ae0 	.word	0x80029ae0
80025bcc:	800ad608 	.word	0x800ad608
80025bd0:	80029af4 	.word	0x80029af4
80025bd4:	800afb50 	.word	0x800afb50
80025bd8:	80029b00 	.word	0x80029b00
80025bdc:	80029b10 	.word	0x80029b10

80025be0 <yield>:
80025be0:	e92d4800 	push	{fp, lr}
80025be4:	e28db004 	add	fp, sp, #4
80025be8:	e59f0024 	ldr	r0, [pc, #36]	@ 80025c14 <yield+0x34>
80025bec:	eb000195 	bl	80026248 <acquire>
80025bf0:	e59f3020 	ldr	r3, [pc, #32]	@ 80025c18 <yield+0x38>
80025bf4:	e5933000 	ldr	r3, [r3]
80025bf8:	e3a02003 	mov	r2, #3
80025bfc:	e5c3200c 	strb	r2, [r3, #12]
80025c00:	ebffffbd 	bl	80025afc <sched>
80025c04:	e59f0008 	ldr	r0, [pc, #8]	@ 80025c14 <yield+0x34>
80025c08:	eb000199 	bl	80026274 <release>
80025c0c:	e1a00000 	nop			@ (mov r0, r0)
80025c10:	e8bd8800 	pop	{fp, pc}
80025c14:	800ad618 	.word	0x800ad618
80025c18:	800afb50 	.word	0x800afb50

80025c1c <forkret>:
80025c1c:	e92d4800 	push	{fp, lr}
80025c20:	e28db004 	add	fp, sp, #4
80025c24:	e59f0028 	ldr	r0, [pc, #40]	@ 80025c54 <forkret+0x38>
80025c28:	eb000191 	bl	80026274 <release>
80025c2c:	e59f3024 	ldr	r3, [pc, #36]	@ 80025c58 <forkret+0x3c>
80025c30:	e5933000 	ldr	r3, [r3]
80025c34:	e3530000 	cmp	r3, #0
80025c38:	0a000003 	beq	80025c4c <forkret+0x30>
80025c3c:	e59f3014 	ldr	r3, [pc, #20]	@ 80025c58 <forkret+0x3c>
80025c40:	e3a02000 	mov	r2, #0
80025c44:	e5832000 	str	r2, [r3]
80025c48:	ebfff941 	bl	80024154 <initlog>
80025c4c:	e1a00000 	nop			@ (mov r0, r0)
80025c50:	e8bd8800 	pop	{fp, pc}
80025c54:	800ad618 	.word	0x800ad618
80025c58:	8002a018 	.word	0x8002a018

80025c5c <sleep>:
80025c5c:	e92d4800 	push	{fp, lr}
80025c60:	e28db004 	add	fp, sp, #4
80025c64:	e24dd008 	sub	sp, sp, #8
80025c68:	e50b0008 	str	r0, [fp, #-8]
80025c6c:	e50b100c 	str	r1, [fp, #-12]
80025c70:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025d1c <sleep+0xc0>
80025c74:	e5933000 	ldr	r3, [r3]
80025c78:	e3530000 	cmp	r3, #0
80025c7c:	1a000001 	bne	80025c88 <sleep+0x2c>
80025c80:	e59f0098 	ldr	r0, [pc, #152]	@ 80025d20 <sleep+0xc4>
80025c84:	ebffef9a 	bl	80021af4 <panic>
80025c88:	e51b300c 	ldr	r3, [fp, #-12]
80025c8c:	e3530000 	cmp	r3, #0
80025c90:	1a000001 	bne	80025c9c <sleep+0x40>
80025c94:	e59f0088 	ldr	r0, [pc, #136]	@ 80025d24 <sleep+0xc8>
80025c98:	ebffef95 	bl	80021af4 <panic>
80025c9c:	e51b300c 	ldr	r3, [fp, #-12]
80025ca0:	e59f2080 	ldr	r2, [pc, #128]	@ 80025d28 <sleep+0xcc>
80025ca4:	e1530002 	cmp	r3, r2
80025ca8:	0a000003 	beq	80025cbc <sleep+0x60>
80025cac:	e59f0074 	ldr	r0, [pc, #116]	@ 80025d28 <sleep+0xcc>
80025cb0:	eb000164 	bl	80026248 <acquire>
80025cb4:	e51b000c 	ldr	r0, [fp, #-12]
80025cb8:	eb00016d 	bl	80026274 <release>
80025cbc:	e59f3058 	ldr	r3, [pc, #88]	@ 80025d1c <sleep+0xc0>
80025cc0:	e5933000 	ldr	r3, [r3]
80025cc4:	e51b2008 	ldr	r2, [fp, #-8]
80025cc8:	e5832020 	str	r2, [r3, #32]
80025ccc:	e59f3048 	ldr	r3, [pc, #72]	@ 80025d1c <sleep+0xc0>
80025cd0:	e5933000 	ldr	r3, [r3]
80025cd4:	e3a02002 	mov	r2, #2
80025cd8:	e5c3200c 	strb	r2, [r3, #12]
80025cdc:	ebffff86 	bl	80025afc <sched>
80025ce0:	e59f3034 	ldr	r3, [pc, #52]	@ 80025d1c <sleep+0xc0>
80025ce4:	e5933000 	ldr	r3, [r3]
80025ce8:	e3a02000 	mov	r2, #0
80025cec:	e5832020 	str	r2, [r3, #32]
80025cf0:	e51b300c 	ldr	r3, [fp, #-12]
80025cf4:	e59f202c 	ldr	r2, [pc, #44]	@ 80025d28 <sleep+0xcc>
80025cf8:	e1530002 	cmp	r3, r2
80025cfc:	0a000003 	beq	80025d10 <sleep+0xb4>
80025d00:	e59f0020 	ldr	r0, [pc, #32]	@ 80025d28 <sleep+0xcc>
80025d04:	eb00015a 	bl	80026274 <release>
80025d08:	e51b000c 	ldr	r0, [fp, #-12]
80025d0c:	eb00014d 	bl	80026248 <acquire>
80025d10:	e1a00000 	nop			@ (mov r0, r0)
80025d14:	e24bd004 	sub	sp, fp, #4
80025d18:	e8bd8800 	pop	{fp, pc}
80025d1c:	800afb50 	.word	0x800afb50
80025d20:	80029b24 	.word	0x80029b24
80025d24:	80029b2c 	.word	0x80029b2c
80025d28:	800ad618 	.word	0x800ad618

80025d2c <wakeup1>:
80025d2c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025d30:	e28db000 	add	fp, sp, #0
80025d34:	e24dd014 	sub	sp, sp, #20
80025d38:	e50b0010 	str	r0, [fp, #-16]
80025d3c:	e59f30dc 	ldr	r3, [pc, #220]	@ 80025e20 <wakeup1+0xf4>
80025d40:	e50b3008 	str	r3, [fp, #-8]
80025d44:	ea00002c 	b	80025dfc <wakeup1+0xd0>
80025d48:	e51b3008 	ldr	r3, [fp, #-8]
80025d4c:	e5d3300c 	ldrb	r3, [r3, #12]
80025d50:	e3530002 	cmp	r3, #2
80025d54:	1a000024 	bne	80025dec <wakeup1+0xc0>
80025d58:	e51b3008 	ldr	r3, [fp, #-8]
80025d5c:	e5933020 	ldr	r3, [r3, #32]
80025d60:	e51b2010 	ldr	r2, [fp, #-16]
80025d64:	e1520003 	cmp	r2, r3
80025d68:	1a00001f 	bne	80025dec <wakeup1+0xc0>
80025d6c:	e51b3010 	ldr	r3, [fp, #-16]
80025d70:	e59f20ac 	ldr	r2, [pc, #172]	@ 80025e24 <wakeup1+0xf8>
80025d74:	e1530002 	cmp	r3, r2
80025d78:	1a000017 	bne	80025ddc <wakeup1+0xb0>
80025d7c:	e51b3008 	ldr	r3, [fp, #-8]
80025d80:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80025d84:	e1a02003 	mov	r2, r3
80025d88:	e59f3094 	ldr	r3, [pc, #148]	@ 80025e24 <wakeup1+0xf8>
80025d8c:	e5933000 	ldr	r3, [r3]
80025d90:	e1520003 	cmp	r2, r3
80025d94:	8a000015 	bhi	80025df0 <wakeup1+0xc4>
80025d98:	e51b3008 	ldr	r3, [fp, #-8]
80025d9c:	e5932084 	ldr	r2, [r3, #132]	@ 0x84
80025da0:	e51b3008 	ldr	r3, [fp, #-8]
80025da4:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80025da8:	e0822003 	add	r2, r2, r3
80025dac:	e51b3008 	ldr	r3, [fp, #-8]
80025db0:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025db4:	e51b3008 	ldr	r3, [fp, #-8]
80025db8:	e3a02003 	mov	r2, #3
80025dbc:	e5c3200c 	strb	r2, [r3, #12]
80025dc0:	e51b3008 	ldr	r3, [fp, #-8]
80025dc4:	e3a02000 	mov	r2, #0
80025dc8:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80025dcc:	e51b3008 	ldr	r3, [fp, #-8]
80025dd0:	e3a02000 	mov	r2, #0
80025dd4:	e5832090 	str	r2, [r3, #144]	@ 0x90
80025dd8:	ea000004 	b	80025df0 <wakeup1+0xc4>
80025ddc:	e51b3008 	ldr	r3, [fp, #-8]
80025de0:	e3a02003 	mov	r2, #3
80025de4:	e5c3200c 	strb	r2, [r3, #12]
80025de8:	ea000000 	b	80025df0 <wakeup1+0xc4>
80025dec:	e1a00000 	nop			@ (mov r0, r0)
80025df0:	e51b3008 	ldr	r3, [fp, #-8]
80025df4:	e2833094 	add	r3, r3, #148	@ 0x94
80025df8:	e50b3008 	str	r3, [fp, #-8]
80025dfc:	e51b3008 	ldr	r3, [fp, #-8]
80025e00:	e59f2020 	ldr	r2, [pc, #32]	@ 80025e28 <wakeup1+0xfc>
80025e04:	e1530002 	cmp	r3, r2
80025e08:	3affffce 	bcc	80025d48 <wakeup1+0x1c>
80025e0c:	e1a00000 	nop			@ (mov r0, r0)
80025e10:	e1a00000 	nop			@ (mov r0, r0)
80025e14:	e28bd000 	add	sp, fp, #0
80025e18:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025e1c:	e12fff1e 	bx	lr
80025e20:	800ad64c 	.word	0x800ad64c
80025e24:	800afc48 	.word	0x800afc48
80025e28:	800afb4c 	.word	0x800afb4c

80025e2c <wakeup>:
80025e2c:	e92d4800 	push	{fp, lr}
80025e30:	e28db004 	add	fp, sp, #4
80025e34:	e24dd008 	sub	sp, sp, #8
80025e38:	e50b0008 	str	r0, [fp, #-8]
80025e3c:	e59f001c 	ldr	r0, [pc, #28]	@ 80025e60 <wakeup+0x34>
80025e40:	eb000100 	bl	80026248 <acquire>
80025e44:	e51b0008 	ldr	r0, [fp, #-8]
80025e48:	ebffffb7 	bl	80025d2c <wakeup1>
80025e4c:	e59f000c 	ldr	r0, [pc, #12]	@ 80025e60 <wakeup+0x34>
80025e50:	eb000107 	bl	80026274 <release>
80025e54:	e1a00000 	nop			@ (mov r0, r0)
80025e58:	e24bd004 	sub	sp, fp, #4
80025e5c:	e8bd8800 	pop	{fp, pc}
80025e60:	800ad618 	.word	0x800ad618

80025e64 <kill>:
80025e64:	e92d4800 	push	{fp, lr}
80025e68:	e28db004 	add	fp, sp, #4
80025e6c:	e24dd010 	sub	sp, sp, #16
80025e70:	e50b0010 	str	r0, [fp, #-16]
80025e74:	e59f008c 	ldr	r0, [pc, #140]	@ 80025f08 <kill+0xa4>
80025e78:	eb0000f2 	bl	80026248 <acquire>
80025e7c:	e59f3088 	ldr	r3, [pc, #136]	@ 80025f0c <kill+0xa8>
80025e80:	e50b3008 	str	r3, [fp, #-8]
80025e84:	ea000015 	b	80025ee0 <kill+0x7c>
80025e88:	e51b3008 	ldr	r3, [fp, #-8]
80025e8c:	e5933010 	ldr	r3, [r3, #16]
80025e90:	e51b2010 	ldr	r2, [fp, #-16]
80025e94:	e1520003 	cmp	r2, r3
80025e98:	1a00000d 	bne	80025ed4 <kill+0x70>
80025e9c:	e51b3008 	ldr	r3, [fp, #-8]
80025ea0:	e3a02001 	mov	r2, #1
80025ea4:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025ea8:	e51b3008 	ldr	r3, [fp, #-8]
80025eac:	e5d3300c 	ldrb	r3, [r3, #12]
80025eb0:	e3530002 	cmp	r3, #2
80025eb4:	1a000002 	bne	80025ec4 <kill+0x60>
80025eb8:	e51b3008 	ldr	r3, [fp, #-8]
80025ebc:	e3a02003 	mov	r2, #3
80025ec0:	e5c3200c 	strb	r2, [r3, #12]
80025ec4:	e59f003c 	ldr	r0, [pc, #60]	@ 80025f08 <kill+0xa4>
80025ec8:	eb0000e9 	bl	80026274 <release>
80025ecc:	e3a03000 	mov	r3, #0
80025ed0:	ea000009 	b	80025efc <kill+0x98>
80025ed4:	e51b3008 	ldr	r3, [fp, #-8]
80025ed8:	e2833094 	add	r3, r3, #148	@ 0x94
80025edc:	e50b3008 	str	r3, [fp, #-8]
80025ee0:	e51b3008 	ldr	r3, [fp, #-8]
80025ee4:	e59f2024 	ldr	r2, [pc, #36]	@ 80025f10 <kill+0xac>
80025ee8:	e1530002 	cmp	r3, r2
80025eec:	3affffe5 	bcc	80025e88 <kill+0x24>
80025ef0:	e59f0010 	ldr	r0, [pc, #16]	@ 80025f08 <kill+0xa4>
80025ef4:	eb0000de 	bl	80026274 <release>
80025ef8:	e3e03000 	mvn	r3, #0
80025efc:	e1a00003 	mov	r0, r3
80025f00:	e24bd004 	sub	sp, fp, #4
80025f04:	e8bd8800 	pop	{fp, pc}
80025f08:	800ad618 	.word	0x800ad618
80025f0c:	800ad64c 	.word	0x800ad64c
80025f10:	800afb4c 	.word	0x800afb4c

80025f14 <procdump>:
80025f14:	e92d4800 	push	{fp, lr}
80025f18:	e28db004 	add	fp, sp, #4
80025f1c:	e24dd008 	sub	sp, sp, #8
80025f20:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025fe0 <procdump+0xcc>
80025f24:	e50b3008 	str	r3, [fp, #-8]
80025f28:	ea000023 	b	80025fbc <procdump+0xa8>
80025f2c:	e51b3008 	ldr	r3, [fp, #-8]
80025f30:	e5d3300c 	ldrb	r3, [r3, #12]
80025f34:	e3530000 	cmp	r3, #0
80025f38:	0a00001b 	beq	80025fac <procdump+0x98>
80025f3c:	e51b3008 	ldr	r3, [fp, #-8]
80025f40:	e5d3300c 	ldrb	r3, [r3, #12]
80025f44:	e3530005 	cmp	r3, #5
80025f48:	8a00000d 	bhi	80025f84 <procdump+0x70>
80025f4c:	e51b3008 	ldr	r3, [fp, #-8]
80025f50:	e5d3300c 	ldrb	r3, [r3, #12]
80025f54:	e1a02003 	mov	r2, r3
80025f58:	e59f3084 	ldr	r3, [pc, #132]	@ 80025fe4 <procdump+0xd0>
80025f5c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025f60:	e3530000 	cmp	r3, #0
80025f64:	0a000006 	beq	80025f84 <procdump+0x70>
80025f68:	e51b3008 	ldr	r3, [fp, #-8]
80025f6c:	e5d3300c 	ldrb	r3, [r3, #12]
80025f70:	e1a02003 	mov	r2, r3
80025f74:	e59f3068 	ldr	r3, [pc, #104]	@ 80025fe4 <procdump+0xd0>
80025f78:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025f7c:	e50b300c 	str	r3, [fp, #-12]
80025f80:	ea000001 	b	80025f8c <procdump+0x78>
80025f84:	e59f305c 	ldr	r3, [pc, #92]	@ 80025fe8 <procdump+0xd4>
80025f88:	e50b300c 	str	r3, [fp, #-12]
80025f8c:	e51b3008 	ldr	r3, [fp, #-8]
80025f90:	e5931010 	ldr	r1, [r3, #16]
80025f94:	e51b3008 	ldr	r3, [fp, #-8]
80025f98:	e283306c 	add	r3, r3, #108	@ 0x6c
80025f9c:	e51b200c 	ldr	r2, [fp, #-12]
80025fa0:	e59f0044 	ldr	r0, [pc, #68]	@ 80025fec <procdump+0xd8>
80025fa4:	ebffee3a 	bl	80021894 <cprintf>
80025fa8:	ea000000 	b	80025fb0 <procdump+0x9c>
80025fac:	e1a00000 	nop			@ (mov r0, r0)
80025fb0:	e51b3008 	ldr	r3, [fp, #-8]
80025fb4:	e2833094 	add	r3, r3, #148	@ 0x94
80025fb8:	e50b3008 	str	r3, [fp, #-8]
80025fbc:	e51b3008 	ldr	r3, [fp, #-8]
80025fc0:	e59f2028 	ldr	r2, [pc, #40]	@ 80025ff0 <procdump+0xdc>
80025fc4:	e1530002 	cmp	r3, r2
80025fc8:	3affffd7 	bcc	80025f2c <procdump+0x18>
80025fcc:	e59f0020 	ldr	r0, [pc, #32]	@ 80025ff4 <procdump+0xe0>
80025fd0:	ebffea0d 	bl	8002080c <show_callstk>
80025fd4:	e1a00000 	nop			@ (mov r0, r0)
80025fd8:	e24bd004 	sub	sp, fp, #4
80025fdc:	e8bd8800 	pop	{fp, pc}
80025fe0:	800ad64c 	.word	0x800ad64c
80025fe4:	8002a01c 	.word	0x8002a01c
80025fe8:	80029b40 	.word	0x80029b40
80025fec:	80029b44 	.word	0x80029b44
80025ff0:	800afb4c 	.word	0x800afb4c
80025ff4:	80029b50 	.word	0x80029b50

80025ff8 <settickets>:
80025ff8:	e92d4800 	push	{fp, lr}
80025ffc:	e28db004 	add	fp, sp, #4
80026000:	e24dd010 	sub	sp, sp, #16
80026004:	e50b0010 	str	r0, [fp, #-16]
80026008:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002600c:	e3a03000 	mov	r3, #0
80026010:	e50b300c 	str	r3, [fp, #-12]
80026014:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026018:	e3530000 	cmp	r3, #0
8002601c:	ca000001 	bgt	80026028 <settickets+0x30>
80026020:	e3e03000 	mvn	r3, #0
80026024:	ea00001e 	b	800260a4 <settickets+0xac>
80026028:	e59f0080 	ldr	r0, [pc, #128]	@ 800260b0 <settickets+0xb8>
8002602c:	eb000085 	bl	80026248 <acquire>
80026030:	e59f307c 	ldr	r3, [pc, #124]	@ 800260b4 <settickets+0xbc>
80026034:	e50b3008 	str	r3, [fp, #-8]
80026038:	ea00000d 	b	80026074 <settickets+0x7c>
8002603c:	e51b3008 	ldr	r3, [fp, #-8]
80026040:	e5933010 	ldr	r3, [r3, #16]
80026044:	e51b2010 	ldr	r2, [fp, #-16]
80026048:	e1520003 	cmp	r2, r3
8002604c:	1a000005 	bne	80026068 <settickets+0x70>
80026050:	e51b3008 	ldr	r3, [fp, #-8]
80026054:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80026058:	e5832080 	str	r2, [r3, #128]	@ 0x80
8002605c:	e3a03001 	mov	r3, #1
80026060:	e50b300c 	str	r3, [fp, #-12]
80026064:	ea000006 	b	80026084 <settickets+0x8c>
80026068:	e51b3008 	ldr	r3, [fp, #-8]
8002606c:	e2833094 	add	r3, r3, #148	@ 0x94
80026070:	e50b3008 	str	r3, [fp, #-8]
80026074:	e51b3008 	ldr	r3, [fp, #-8]
80026078:	e59f2038 	ldr	r2, [pc, #56]	@ 800260b8 <settickets+0xc0>
8002607c:	e1530002 	cmp	r3, r2
80026080:	3affffed 	bcc	8002603c <settickets+0x44>
80026084:	e59f0024 	ldr	r0, [pc, #36]	@ 800260b0 <settickets+0xb8>
80026088:	eb000079 	bl	80026274 <release>
8002608c:	e51b300c 	ldr	r3, [fp, #-12]
80026090:	e3530000 	cmp	r3, #0
80026094:	0a000001 	beq	800260a0 <settickets+0xa8>
80026098:	e3a03000 	mov	r3, #0
8002609c:	ea000000 	b	800260a4 <settickets+0xac>
800260a0:	e3e03000 	mvn	r3, #0
800260a4:	e1a00003 	mov	r0, r3
800260a8:	e24bd004 	sub	sp, fp, #4
800260ac:	e8bd8800 	pop	{fp, pc}
800260b0:	800ad618 	.word	0x800ad618
800260b4:	800ad64c 	.word	0x800ad64c
800260b8:	800afb4c 	.word	0x800afb4c

800260bc <srand>:
800260bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800260c0:	e28db000 	add	fp, sp, #0
800260c4:	e24dd00c 	sub	sp, sp, #12
800260c8:	e50b0008 	str	r0, [fp, #-8]
800260cc:	e59f2014 	ldr	r2, [pc, #20]	@ 800260e8 <srand+0x2c>
800260d0:	e51b3008 	ldr	r3, [fp, #-8]
800260d4:	e5823000 	str	r3, [r2]
800260d8:	e1a00000 	nop			@ (mov r0, r0)
800260dc:	e28bd000 	add	sp, fp, #0
800260e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800260e4:	e12fff1e 	bx	lr
800260e8:	800ad614 	.word	0x800ad614

800260ec <getpinfo>:
800260ec:	e92d4800 	push	{fp, lr}
800260f0:	e28db004 	add	fp, sp, #4
800260f4:	e24dd010 	sub	sp, sp, #16
800260f8:	e50b0010 	str	r0, [fp, #-16]
800260fc:	e3a03000 	mov	r3, #0
80026100:	e50b300c 	str	r3, [fp, #-12]
80026104:	e51b3010 	ldr	r3, [fp, #-16]
80026108:	e3530000 	cmp	r3, #0
8002610c:	1a000001 	bne	80026118 <getpinfo+0x2c>
80026110:	e3e03000 	mvn	r3, #0
80026114:	ea000033 	b	800261e8 <getpinfo+0xfc>
80026118:	e59f00d4 	ldr	r0, [pc, #212]	@ 800261f4 <getpinfo+0x108>
8002611c:	eb000049 	bl	80026248 <acquire>
80026120:	e59f30d0 	ldr	r3, [pc, #208]	@ 800261f8 <getpinfo+0x10c>
80026124:	e50b3008 	str	r3, [fp, #-8]
80026128:	ea000027 	b	800261cc <getpinfo+0xe0>
8002612c:	e51b3008 	ldr	r3, [fp, #-8]
80026130:	e5d3300c 	ldrb	r3, [r3, #12]
80026134:	e3530000 	cmp	r3, #0
80026138:	13a03001 	movne	r3, #1
8002613c:	03a03000 	moveq	r3, #0
80026140:	e6ef3073 	uxtb	r3, r3
80026144:	e1a01003 	mov	r1, r3
80026148:	e51b3010 	ldr	r3, [fp, #-16]
8002614c:	e51b200c 	ldr	r2, [fp, #-12]
80026150:	e7831102 	str	r1, [r3, r2, lsl #2]
80026154:	e51b3008 	ldr	r3, [fp, #-8]
80026158:	e5931010 	ldr	r1, [r3, #16]
8002615c:	e51b3010 	ldr	r3, [fp, #-16]
80026160:	e51b200c 	ldr	r2, [fp, #-12]
80026164:	e2822040 	add	r2, r2, #64	@ 0x40
80026168:	e7831102 	str	r1, [r3, r2, lsl #2]
8002616c:	e51b3008 	ldr	r3, [fp, #-8]
80026170:	e5931080 	ldr	r1, [r3, #128]	@ 0x80
80026174:	e51b3010 	ldr	r3, [fp, #-16]
80026178:	e51b200c 	ldr	r2, [fp, #-12]
8002617c:	e2822080 	add	r2, r2, #128	@ 0x80
80026180:	e7831102 	str	r1, [r3, r2, lsl #2]
80026184:	e51b3008 	ldr	r3, [fp, #-8]
80026188:	e5931088 	ldr	r1, [r3, #136]	@ 0x88
8002618c:	e51b3010 	ldr	r3, [fp, #-16]
80026190:	e51b200c 	ldr	r2, [fp, #-12]
80026194:	e28220c0 	add	r2, r2, #192	@ 0xc0
80026198:	e7831102 	str	r1, [r3, r2, lsl #2]
8002619c:	e51b3008 	ldr	r3, [fp, #-8]
800261a0:	e5931084 	ldr	r1, [r3, #132]	@ 0x84
800261a4:	e51b3010 	ldr	r3, [fp, #-16]
800261a8:	e51b200c 	ldr	r2, [fp, #-12]
800261ac:	e2822c01 	add	r2, r2, #256	@ 0x100
800261b0:	e7831102 	str	r1, [r3, r2, lsl #2]
800261b4:	e51b3008 	ldr	r3, [fp, #-8]
800261b8:	e2833094 	add	r3, r3, #148	@ 0x94
800261bc:	e50b3008 	str	r3, [fp, #-8]
800261c0:	e51b300c 	ldr	r3, [fp, #-12]
800261c4:	e2833001 	add	r3, r3, #1
800261c8:	e50b300c 	str	r3, [fp, #-12]
800261cc:	e51b3008 	ldr	r3, [fp, #-8]
800261d0:	e59f2024 	ldr	r2, [pc, #36]	@ 800261fc <getpinfo+0x110>
800261d4:	e1530002 	cmp	r3, r2
800261d8:	3affffd3 	bcc	8002612c <getpinfo+0x40>
800261dc:	e59f0010 	ldr	r0, [pc, #16]	@ 800261f4 <getpinfo+0x108>
800261e0:	eb000023 	bl	80026274 <release>
800261e4:	e3a03000 	mov	r3, #0
800261e8:	e1a00003 	mov	r0, r3
800261ec:	e24bd004 	sub	sp, fp, #4
800261f0:	e8bd8800 	pop	{fp, pc}
800261f4:	800ad618 	.word	0x800ad618
800261f8:	800ad64c 	.word	0x800ad64c
800261fc:	800afb4c 	.word	0x800afb4c

80026200 <initlock>:
80026200:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026204:	e28db000 	add	fp, sp, #0
80026208:	e24dd00c 	sub	sp, sp, #12
8002620c:	e50b0008 	str	r0, [fp, #-8]
80026210:	e50b100c 	str	r1, [fp, #-12]
80026214:	e51b3008 	ldr	r3, [fp, #-8]
80026218:	e51b200c 	ldr	r2, [fp, #-12]
8002621c:	e5832004 	str	r2, [r3, #4]
80026220:	e51b3008 	ldr	r3, [fp, #-8]
80026224:	e3a02000 	mov	r2, #0
80026228:	e5832000 	str	r2, [r3]
8002622c:	e51b3008 	ldr	r3, [fp, #-8]
80026230:	e3a02000 	mov	r2, #0
80026234:	e5832008 	str	r2, [r3, #8]
80026238:	e1a00000 	nop			@ (mov r0, r0)
8002623c:	e28bd000 	add	sp, fp, #0
80026240:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026244:	e12fff1e 	bx	lr

80026248 <acquire>:
80026248:	e92d4800 	push	{fp, lr}
8002624c:	e28db004 	add	fp, sp, #4
80026250:	e24dd008 	sub	sp, sp, #8
80026254:	e50b0008 	str	r0, [fp, #-8]
80026258:	ebffe8f3 	bl	8002062c <pushcli>
8002625c:	e51b3008 	ldr	r3, [fp, #-8]
80026260:	e3a02001 	mov	r2, #1
80026264:	e5832000 	str	r2, [r3]
80026268:	e1a00000 	nop			@ (mov r0, r0)
8002626c:	e24bd004 	sub	sp, fp, #4
80026270:	e8bd8800 	pop	{fp, pc}

80026274 <release>:
80026274:	e92d4800 	push	{fp, lr}
80026278:	e28db004 	add	fp, sp, #4
8002627c:	e24dd008 	sub	sp, sp, #8
80026280:	e50b0008 	str	r0, [fp, #-8]
80026284:	e51b3008 	ldr	r3, [fp, #-8]
80026288:	e3a02000 	mov	r2, #0
8002628c:	e5832000 	str	r2, [r3]
80026290:	ebffe8fa 	bl	80020680 <popcli>
80026294:	e1a00000 	nop			@ (mov r0, r0)
80026298:	e24bd004 	sub	sp, fp, #4
8002629c:	e8bd8800 	pop	{fp, pc}

800262a0 <holding>:
800262a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800262a4:	e28db000 	add	fp, sp, #0
800262a8:	e24dd00c 	sub	sp, sp, #12
800262ac:	e50b0008 	str	r0, [fp, #-8]
800262b0:	e51b3008 	ldr	r3, [fp, #-8]
800262b4:	e5933000 	ldr	r3, [r3]
800262b8:	e1a00003 	mov	r0, r3
800262bc:	e28bd000 	add	sp, fp, #0
800262c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800262c4:	e12fff1e 	bx	lr

800262c8 <swtch>:
800262c8:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800262cc:	e580d000 	str	sp, [r0]
800262d0:	e1a0d001 	mov	sp, r1
800262d4:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800262d8:	e12fff1e 	bx	lr

800262dc <fetchint>:
800262dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800262e0:	e28db000 	add	fp, sp, #0
800262e4:	e24dd00c 	sub	sp, sp, #12
800262e8:	e50b0008 	str	r0, [fp, #-8]
800262ec:	e50b100c 	str	r1, [fp, #-12]
800262f0:	e59f3058 	ldr	r3, [pc, #88]	@ 80026350 <fetchint+0x74>
800262f4:	e5933000 	ldr	r3, [r3]
800262f8:	e5933000 	ldr	r3, [r3]
800262fc:	e51b2008 	ldr	r2, [fp, #-8]
80026300:	e1520003 	cmp	r2, r3
80026304:	2a000006 	bcs	80026324 <fetchint+0x48>
80026308:	e51b3008 	ldr	r3, [fp, #-8]
8002630c:	e2832004 	add	r2, r3, #4
80026310:	e59f3038 	ldr	r3, [pc, #56]	@ 80026350 <fetchint+0x74>
80026314:	e5933000 	ldr	r3, [r3]
80026318:	e5933000 	ldr	r3, [r3]
8002631c:	e1520003 	cmp	r2, r3
80026320:	9a000001 	bls	8002632c <fetchint+0x50>
80026324:	e3e03000 	mvn	r3, #0
80026328:	ea000004 	b	80026340 <fetchint+0x64>
8002632c:	e51b3008 	ldr	r3, [fp, #-8]
80026330:	e5932000 	ldr	r2, [r3]
80026334:	e51b300c 	ldr	r3, [fp, #-12]
80026338:	e5832000 	str	r2, [r3]
8002633c:	e3a03000 	mov	r3, #0
80026340:	e1a00003 	mov	r0, r3
80026344:	e28bd000 	add	sp, fp, #0
80026348:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002634c:	e12fff1e 	bx	lr
80026350:	800afb50 	.word	0x800afb50

80026354 <fetchstr>:
80026354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026358:	e28db000 	add	fp, sp, #0
8002635c:	e24dd014 	sub	sp, sp, #20
80026360:	e50b0010 	str	r0, [fp, #-16]
80026364:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026368:	e59f3098 	ldr	r3, [pc, #152]	@ 80026408 <fetchstr+0xb4>
8002636c:	e5933000 	ldr	r3, [r3]
80026370:	e5933000 	ldr	r3, [r3]
80026374:	e51b2010 	ldr	r2, [fp, #-16]
80026378:	e1520003 	cmp	r2, r3
8002637c:	3a000001 	bcc	80026388 <fetchstr+0x34>
80026380:	e3e03000 	mvn	r3, #0
80026384:	ea00001b 	b	800263f8 <fetchstr+0xa4>
80026388:	e51b2010 	ldr	r2, [fp, #-16]
8002638c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026390:	e5832000 	str	r2, [r3]
80026394:	e59f306c 	ldr	r3, [pc, #108]	@ 80026408 <fetchstr+0xb4>
80026398:	e5933000 	ldr	r3, [r3]
8002639c:	e5933000 	ldr	r3, [r3]
800263a0:	e50b300c 	str	r3, [fp, #-12]
800263a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263a8:	e5933000 	ldr	r3, [r3]
800263ac:	e50b3008 	str	r3, [fp, #-8]
800263b0:	ea00000b 	b	800263e4 <fetchstr+0x90>
800263b4:	e51b3008 	ldr	r3, [fp, #-8]
800263b8:	e5d33000 	ldrb	r3, [r3]
800263bc:	e3530000 	cmp	r3, #0
800263c0:	1a000004 	bne	800263d8 <fetchstr+0x84>
800263c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263c8:	e5933000 	ldr	r3, [r3]
800263cc:	e51b2008 	ldr	r2, [fp, #-8]
800263d0:	e0423003 	sub	r3, r2, r3
800263d4:	ea000007 	b	800263f8 <fetchstr+0xa4>
800263d8:	e51b3008 	ldr	r3, [fp, #-8]
800263dc:	e2833001 	add	r3, r3, #1
800263e0:	e50b3008 	str	r3, [fp, #-8]
800263e4:	e51b2008 	ldr	r2, [fp, #-8]
800263e8:	e51b300c 	ldr	r3, [fp, #-12]
800263ec:	e1520003 	cmp	r2, r3
800263f0:	3affffef 	bcc	800263b4 <fetchstr+0x60>
800263f4:	e3e03000 	mvn	r3, #0
800263f8:	e1a00003 	mov	r0, r3
800263fc:	e28bd000 	add	sp, fp, #0
80026400:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026404:	e12fff1e 	bx	lr
80026408:	800afb50 	.word	0x800afb50

8002640c <argint>:
8002640c:	e92d4800 	push	{fp, lr}
80026410:	e28db004 	add	fp, sp, #4
80026414:	e24dd008 	sub	sp, sp, #8
80026418:	e50b0008 	str	r0, [fp, #-8]
8002641c:	e50b100c 	str	r1, [fp, #-12]
80026420:	e51b3008 	ldr	r3, [fp, #-8]
80026424:	e3530003 	cmp	r3, #3
80026428:	da000001 	ble	80026434 <argint+0x28>
8002642c:	e59f003c 	ldr	r0, [pc, #60]	@ 80026470 <argint+0x64>
80026430:	ebffedaf 	bl	80021af4 <panic>
80026434:	e59f3038 	ldr	r3, [pc, #56]	@ 80026474 <argint+0x68>
80026438:	e5933000 	ldr	r3, [r3]
8002643c:	e5933018 	ldr	r3, [r3, #24]
80026440:	e2832014 	add	r2, r3, #20
80026444:	e51b3008 	ldr	r3, [fp, #-8]
80026448:	e1a03103 	lsl	r3, r3, #2
8002644c:	e0823003 	add	r3, r2, r3
80026450:	e5933000 	ldr	r3, [r3]
80026454:	e1a02003 	mov	r2, r3
80026458:	e51b300c 	ldr	r3, [fp, #-12]
8002645c:	e5832000 	str	r2, [r3]
80026460:	e3a03000 	mov	r3, #0
80026464:	e1a00003 	mov	r0, r3
80026468:	e24bd004 	sub	sp, fp, #4
8002646c:	e8bd8800 	pop	{fp, pc}
80026470:	80029b8c 	.word	0x80029b8c
80026474:	800afb50 	.word	0x800afb50

80026478 <argptr>:
80026478:	e92d4800 	push	{fp, lr}
8002647c:	e28db004 	add	fp, sp, #4
80026480:	e24dd018 	sub	sp, sp, #24
80026484:	e50b0010 	str	r0, [fp, #-16]
80026488:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002648c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026490:	e24b3008 	sub	r3, fp, #8
80026494:	e1a01003 	mov	r1, r3
80026498:	e51b0010 	ldr	r0, [fp, #-16]
8002649c:	ebffffda 	bl	8002640c <argint>
800264a0:	e1a03000 	mov	r3, r0
800264a4:	e3530000 	cmp	r3, #0
800264a8:	aa000001 	bge	800264b4 <argptr+0x3c>
800264ac:	e3e03000 	mvn	r3, #0
800264b0:	ea000015 	b	8002650c <argptr+0x94>
800264b4:	e59f305c 	ldr	r3, [pc, #92]	@ 80026518 <argptr+0xa0>
800264b8:	e5933000 	ldr	r3, [r3]
800264bc:	e5933000 	ldr	r3, [r3]
800264c0:	e51b2008 	ldr	r2, [fp, #-8]
800264c4:	e1530002 	cmp	r3, r2
800264c8:	9a000008 	bls	800264f0 <argptr+0x78>
800264cc:	e51b3008 	ldr	r3, [fp, #-8]
800264d0:	e1a02003 	mov	r2, r3
800264d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800264d8:	e0822003 	add	r2, r2, r3
800264dc:	e59f3034 	ldr	r3, [pc, #52]	@ 80026518 <argptr+0xa0>
800264e0:	e5933000 	ldr	r3, [r3]
800264e4:	e5933000 	ldr	r3, [r3]
800264e8:	e1520003 	cmp	r2, r3
800264ec:	9a000001 	bls	800264f8 <argptr+0x80>
800264f0:	e3e03000 	mvn	r3, #0
800264f4:	ea000004 	b	8002650c <argptr+0x94>
800264f8:	e51b3008 	ldr	r3, [fp, #-8]
800264fc:	e1a02003 	mov	r2, r3
80026500:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026504:	e5832000 	str	r2, [r3]
80026508:	e3a03000 	mov	r3, #0
8002650c:	e1a00003 	mov	r0, r3
80026510:	e24bd004 	sub	sp, fp, #4
80026514:	e8bd8800 	pop	{fp, pc}
80026518:	800afb50 	.word	0x800afb50

8002651c <argstr>:
8002651c:	e92d4800 	push	{fp, lr}
80026520:	e28db004 	add	fp, sp, #4
80026524:	e24dd010 	sub	sp, sp, #16
80026528:	e50b0010 	str	r0, [fp, #-16]
8002652c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026530:	e24b3008 	sub	r3, fp, #8
80026534:	e1a01003 	mov	r1, r3
80026538:	e51b0010 	ldr	r0, [fp, #-16]
8002653c:	ebffffb2 	bl	8002640c <argint>
80026540:	e1a03000 	mov	r3, r0
80026544:	e3530000 	cmp	r3, #0
80026548:	aa000001 	bge	80026554 <argstr+0x38>
8002654c:	e3e03000 	mvn	r3, #0
80026550:	ea000004 	b	80026568 <argstr+0x4c>
80026554:	e51b3008 	ldr	r3, [fp, #-8]
80026558:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002655c:	e1a00003 	mov	r0, r3
80026560:	ebffff7b 	bl	80026354 <fetchstr>
80026564:	e1a03000 	mov	r3, r0
80026568:	e1a00003 	mov	r0, r3
8002656c:	e24bd004 	sub	sp, fp, #4
80026570:	e8bd8800 	pop	{fp, pc}

80026574 <syscall>:
80026574:	e92d4800 	push	{fp, lr}
80026578:	e28db004 	add	fp, sp, #4
8002657c:	e24dd008 	sub	sp, sp, #8
80026580:	e59f30cc 	ldr	r3, [pc, #204]	@ 80026654 <syscall+0xe0>
80026584:	e5933000 	ldr	r3, [r3]
80026588:	e5933018 	ldr	r3, [r3, #24]
8002658c:	e5933010 	ldr	r3, [r3, #16]
80026590:	e50b3008 	str	r3, [fp, #-8]
80026594:	e51b3008 	ldr	r3, [fp, #-8]
80026598:	e3530000 	cmp	r3, #0
8002659c:	da00001a 	ble	8002660c <syscall+0x98>
800265a0:	e51b3008 	ldr	r3, [fp, #-8]
800265a4:	e353001a 	cmp	r3, #26
800265a8:	8a000017 	bhi	8002660c <syscall+0x98>
800265ac:	e59f20a4 	ldr	r2, [pc, #164]	@ 80026658 <syscall+0xe4>
800265b0:	e51b3008 	ldr	r3, [fp, #-8]
800265b4:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800265b8:	e3530000 	cmp	r3, #0
800265bc:	0a000012 	beq	8002660c <syscall+0x98>
800265c0:	e59f2090 	ldr	r2, [pc, #144]	@ 80026658 <syscall+0xe4>
800265c4:	e51b3008 	ldr	r3, [fp, #-8]
800265c8:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800265cc:	e12fff33 	blx	r3
800265d0:	e50b000c 	str	r0, [fp, #-12]
800265d4:	e59f3078 	ldr	r3, [pc, #120]	@ 80026654 <syscall+0xe0>
800265d8:	e5933000 	ldr	r3, [r3]
800265dc:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
800265e0:	e2822001 	add	r2, r2, #1
800265e4:	e583207c 	str	r2, [r3, #124]	@ 0x7c
800265e8:	e51b3008 	ldr	r3, [fp, #-8]
800265ec:	e3530007 	cmp	r3, #7
800265f0:	0a000014 	beq	80026648 <syscall+0xd4>
800265f4:	e59f3058 	ldr	r3, [pc, #88]	@ 80026654 <syscall+0xe0>
800265f8:	e5933000 	ldr	r3, [r3]
800265fc:	e5933018 	ldr	r3, [r3, #24]
80026600:	e51b200c 	ldr	r2, [fp, #-12]
80026604:	e5832010 	str	r2, [r3, #16]
80026608:	ea00000e 	b	80026648 <syscall+0xd4>
8002660c:	e59f3040 	ldr	r3, [pc, #64]	@ 80026654 <syscall+0xe0>
80026610:	e5933000 	ldr	r3, [r3]
80026614:	e5931010 	ldr	r1, [r3, #16]
80026618:	e59f3034 	ldr	r3, [pc, #52]	@ 80026654 <syscall+0xe0>
8002661c:	e5933000 	ldr	r3, [r3]
80026620:	e283206c 	add	r2, r3, #108	@ 0x6c
80026624:	e51b3008 	ldr	r3, [fp, #-8]
80026628:	e59f002c 	ldr	r0, [pc, #44]	@ 8002665c <syscall+0xe8>
8002662c:	ebffec98 	bl	80021894 <cprintf>
80026630:	e59f301c 	ldr	r3, [pc, #28]	@ 80026654 <syscall+0xe0>
80026634:	e5933000 	ldr	r3, [r3]
80026638:	e5933018 	ldr	r3, [r3, #24]
8002663c:	e3e02000 	mvn	r2, #0
80026640:	e5832010 	str	r2, [r3, #16]
80026644:	e1a00000 	nop			@ (mov r0, r0)
80026648:	e1a00000 	nop			@ (mov r0, r0)
8002664c:	e24bd004 	sub	sp, fp, #4
80026650:	e8bd8800 	pop	{fp, pc}
80026654:	800afb50 	.word	0x800afb50
80026658:	8002a034 	.word	0x8002a034
8002665c:	80029bb0 	.word	0x80029bb0

80026660 <argfd>:
80026660:	e92d4800 	push	{fp, lr}
80026664:	e28db004 	add	fp, sp, #4
80026668:	e24dd018 	sub	sp, sp, #24
8002666c:	e50b0010 	str	r0, [fp, #-16]
80026670:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026674:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026678:	e24b300c 	sub	r3, fp, #12
8002667c:	e1a01003 	mov	r1, r3
80026680:	e51b0010 	ldr	r0, [fp, #-16]
80026684:	ebffff60 	bl	8002640c <argint>
80026688:	e1a03000 	mov	r3, r0
8002668c:	e3530000 	cmp	r3, #0
80026690:	aa000001 	bge	8002669c <argfd+0x3c>
80026694:	e3e03000 	mvn	r3, #0
80026698:	ea00001d 	b	80026714 <argfd+0xb4>
8002669c:	e51b300c 	ldr	r3, [fp, #-12]
800266a0:	e3530000 	cmp	r3, #0
800266a4:	ba00000b 	blt	800266d8 <argfd+0x78>
800266a8:	e51b300c 	ldr	r3, [fp, #-12]
800266ac:	e353000f 	cmp	r3, #15
800266b0:	ca000008 	bgt	800266d8 <argfd+0x78>
800266b4:	e59f3064 	ldr	r3, [pc, #100]	@ 80026720 <argfd+0xc0>
800266b8:	e5933000 	ldr	r3, [r3]
800266bc:	e51b200c 	ldr	r2, [fp, #-12]
800266c0:	e282200a 	add	r2, r2, #10
800266c4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800266c8:	e50b3008 	str	r3, [fp, #-8]
800266cc:	e51b3008 	ldr	r3, [fp, #-8]
800266d0:	e3530000 	cmp	r3, #0
800266d4:	1a000001 	bne	800266e0 <argfd+0x80>
800266d8:	e3e03000 	mvn	r3, #0
800266dc:	ea00000c 	b	80026714 <argfd+0xb4>
800266e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800266e4:	e3530000 	cmp	r3, #0
800266e8:	0a000002 	beq	800266f8 <argfd+0x98>
800266ec:	e51b200c 	ldr	r2, [fp, #-12]
800266f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800266f4:	e5832000 	str	r2, [r3]
800266f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800266fc:	e3530000 	cmp	r3, #0
80026700:	0a000002 	beq	80026710 <argfd+0xb0>
80026704:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026708:	e51b2008 	ldr	r2, [fp, #-8]
8002670c:	e5832000 	str	r2, [r3]
80026710:	e3a03000 	mov	r3, #0
80026714:	e1a00003 	mov	r0, r3
80026718:	e24bd004 	sub	sp, fp, #4
8002671c:	e8bd8800 	pop	{fp, pc}
80026720:	800afb50 	.word	0x800afb50

80026724 <fdalloc>:
80026724:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026728:	e28db000 	add	fp, sp, #0
8002672c:	e24dd014 	sub	sp, sp, #20
80026730:	e50b0010 	str	r0, [fp, #-16]
80026734:	e3a03000 	mov	r3, #0
80026738:	e50b3008 	str	r3, [fp, #-8]
8002673c:	ea000011 	b	80026788 <fdalloc+0x64>
80026740:	e59f3060 	ldr	r3, [pc, #96]	@ 800267a8 <fdalloc+0x84>
80026744:	e5933000 	ldr	r3, [r3]
80026748:	e51b2008 	ldr	r2, [fp, #-8]
8002674c:	e282200a 	add	r2, r2, #10
80026750:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026754:	e3530000 	cmp	r3, #0
80026758:	1a000007 	bne	8002677c <fdalloc+0x58>
8002675c:	e59f3044 	ldr	r3, [pc, #68]	@ 800267a8 <fdalloc+0x84>
80026760:	e5933000 	ldr	r3, [r3]
80026764:	e51b2008 	ldr	r2, [fp, #-8]
80026768:	e282200a 	add	r2, r2, #10
8002676c:	e51b1010 	ldr	r1, [fp, #-16]
80026770:	e7831102 	str	r1, [r3, r2, lsl #2]
80026774:	e51b3008 	ldr	r3, [fp, #-8]
80026778:	ea000006 	b	80026798 <fdalloc+0x74>
8002677c:	e51b3008 	ldr	r3, [fp, #-8]
80026780:	e2833001 	add	r3, r3, #1
80026784:	e50b3008 	str	r3, [fp, #-8]
80026788:	e51b3008 	ldr	r3, [fp, #-8]
8002678c:	e353000f 	cmp	r3, #15
80026790:	daffffea 	ble	80026740 <fdalloc+0x1c>
80026794:	e3e03000 	mvn	r3, #0
80026798:	e1a00003 	mov	r0, r3
8002679c:	e28bd000 	add	sp, fp, #0
800267a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800267a4:	e12fff1e 	bx	lr
800267a8:	800afb50 	.word	0x800afb50

800267ac <sys_dup>:
800267ac:	e92d4800 	push	{fp, lr}
800267b0:	e28db004 	add	fp, sp, #4
800267b4:	e24dd008 	sub	sp, sp, #8
800267b8:	e24b300c 	sub	r3, fp, #12
800267bc:	e1a02003 	mov	r2, r3
800267c0:	e3a01000 	mov	r1, #0
800267c4:	e3a00000 	mov	r0, #0
800267c8:	ebffffa4 	bl	80026660 <argfd>
800267cc:	e1a03000 	mov	r3, r0
800267d0:	e3530000 	cmp	r3, #0
800267d4:	aa000001 	bge	800267e0 <sys_dup+0x34>
800267d8:	e3e03000 	mvn	r3, #0
800267dc:	ea00000c 	b	80026814 <sys_dup+0x68>
800267e0:	e51b300c 	ldr	r3, [fp, #-12]
800267e4:	e1a00003 	mov	r0, r3
800267e8:	ebffffcd 	bl	80026724 <fdalloc>
800267ec:	e50b0008 	str	r0, [fp, #-8]
800267f0:	e51b3008 	ldr	r3, [fp, #-8]
800267f4:	e3530000 	cmp	r3, #0
800267f8:	aa000001 	bge	80026804 <sys_dup+0x58>
800267fc:	e3e03000 	mvn	r3, #0
80026800:	ea000003 	b	80026814 <sys_dup+0x68>
80026804:	e51b300c 	ldr	r3, [fp, #-12]
80026808:	e1a00003 	mov	r0, r3
8002680c:	ebffef7f 	bl	80022610 <filedup>
80026810:	e51b3008 	ldr	r3, [fp, #-8]
80026814:	e1a00003 	mov	r0, r3
80026818:	e24bd004 	sub	sp, fp, #4
8002681c:	e8bd8800 	pop	{fp, pc}

80026820 <sys_read>:
80026820:	e92d4800 	push	{fp, lr}
80026824:	e28db004 	add	fp, sp, #4
80026828:	e24dd010 	sub	sp, sp, #16
8002682c:	e24b3008 	sub	r3, fp, #8
80026830:	e1a02003 	mov	r2, r3
80026834:	e3a01000 	mov	r1, #0
80026838:	e3a00000 	mov	r0, #0
8002683c:	ebffff87 	bl	80026660 <argfd>
80026840:	e1a03000 	mov	r3, r0
80026844:	e3530000 	cmp	r3, #0
80026848:	ba00000e 	blt	80026888 <sys_read+0x68>
8002684c:	e24b300c 	sub	r3, fp, #12
80026850:	e1a01003 	mov	r1, r3
80026854:	e3a00002 	mov	r0, #2
80026858:	ebfffeeb 	bl	8002640c <argint>
8002685c:	e1a03000 	mov	r3, r0
80026860:	e3530000 	cmp	r3, #0
80026864:	ba000007 	blt	80026888 <sys_read+0x68>
80026868:	e51b200c 	ldr	r2, [fp, #-12]
8002686c:	e24b3010 	sub	r3, fp, #16
80026870:	e1a01003 	mov	r1, r3
80026874:	e3a00001 	mov	r0, #1
80026878:	ebfffefe 	bl	80026478 <argptr>
8002687c:	e1a03000 	mov	r3, r0
80026880:	e3530000 	cmp	r3, #0
80026884:	aa000001 	bge	80026890 <sys_read+0x70>
80026888:	e3e03000 	mvn	r3, #0
8002688c:	ea000005 	b	800268a8 <sys_read+0x88>
80026890:	e51b3008 	ldr	r3, [fp, #-8]
80026894:	e51b1010 	ldr	r1, [fp, #-16]
80026898:	e51b200c 	ldr	r2, [fp, #-12]
8002689c:	e1a00003 	mov	r0, r3
800268a0:	ebffefcb 	bl	800227d4 <fileread>
800268a4:	e1a03000 	mov	r3, r0
800268a8:	e1a00003 	mov	r0, r3
800268ac:	e24bd004 	sub	sp, fp, #4
800268b0:	e8bd8800 	pop	{fp, pc}

800268b4 <sys_write>:
800268b4:	e92d4800 	push	{fp, lr}
800268b8:	e28db004 	add	fp, sp, #4
800268bc:	e24dd010 	sub	sp, sp, #16
800268c0:	e24b3008 	sub	r3, fp, #8
800268c4:	e1a02003 	mov	r2, r3
800268c8:	e3a01000 	mov	r1, #0
800268cc:	e3a00000 	mov	r0, #0
800268d0:	ebffff62 	bl	80026660 <argfd>
800268d4:	e1a03000 	mov	r3, r0
800268d8:	e3530000 	cmp	r3, #0
800268dc:	ba00000e 	blt	8002691c <sys_write+0x68>
800268e0:	e24b300c 	sub	r3, fp, #12
800268e4:	e1a01003 	mov	r1, r3
800268e8:	e3a00002 	mov	r0, #2
800268ec:	ebfffec6 	bl	8002640c <argint>
800268f0:	e1a03000 	mov	r3, r0
800268f4:	e3530000 	cmp	r3, #0
800268f8:	ba000007 	blt	8002691c <sys_write+0x68>
800268fc:	e51b200c 	ldr	r2, [fp, #-12]
80026900:	e24b3010 	sub	r3, fp, #16
80026904:	e1a01003 	mov	r1, r3
80026908:	e3a00001 	mov	r0, #1
8002690c:	ebfffed9 	bl	80026478 <argptr>
80026910:	e1a03000 	mov	r3, r0
80026914:	e3530000 	cmp	r3, #0
80026918:	aa000001 	bge	80026924 <sys_write+0x70>
8002691c:	e3e03000 	mvn	r3, #0
80026920:	ea000005 	b	8002693c <sys_write+0x88>
80026924:	e51b3008 	ldr	r3, [fp, #-8]
80026928:	e51b1010 	ldr	r1, [fp, #-16]
8002692c:	e51b200c 	ldr	r2, [fp, #-12]
80026930:	e1a00003 	mov	r0, r3
80026934:	ebffefe3 	bl	800228c8 <filewrite>
80026938:	e1a03000 	mov	r3, r0
8002693c:	e1a00003 	mov	r0, r3
80026940:	e24bd004 	sub	sp, fp, #4
80026944:	e8bd8800 	pop	{fp, pc}

80026948 <sys_close>:
80026948:	e92d4800 	push	{fp, lr}
8002694c:	e28db004 	add	fp, sp, #4
80026950:	e24dd008 	sub	sp, sp, #8
80026954:	e24b200c 	sub	r2, fp, #12
80026958:	e24b3008 	sub	r3, fp, #8
8002695c:	e1a01003 	mov	r1, r3
80026960:	e3a00000 	mov	r0, #0
80026964:	ebffff3d 	bl	80026660 <argfd>
80026968:	e1a03000 	mov	r3, r0
8002696c:	e3530000 	cmp	r3, #0
80026970:	aa000001 	bge	8002697c <sys_close+0x34>
80026974:	e3e03000 	mvn	r3, #0
80026978:	ea000009 	b	800269a4 <sys_close+0x5c>
8002697c:	e59f302c 	ldr	r3, [pc, #44]	@ 800269b0 <sys_close+0x68>
80026980:	e5933000 	ldr	r3, [r3]
80026984:	e51b2008 	ldr	r2, [fp, #-8]
80026988:	e282200a 	add	r2, r2, #10
8002698c:	e3a01000 	mov	r1, #0
80026990:	e7831102 	str	r1, [r3, r2, lsl #2]
80026994:	e51b300c 	ldr	r3, [fp, #-12]
80026998:	e1a00003 	mov	r0, r3
8002699c:	ebffef34 	bl	80022674 <fileclose>
800269a0:	e3a03000 	mov	r3, #0
800269a4:	e1a00003 	mov	r0, r3
800269a8:	e24bd004 	sub	sp, fp, #4
800269ac:	e8bd8800 	pop	{fp, pc}
800269b0:	800afb50 	.word	0x800afb50

800269b4 <sys_fstat>:
800269b4:	e92d4800 	push	{fp, lr}
800269b8:	e28db004 	add	fp, sp, #4
800269bc:	e24dd008 	sub	sp, sp, #8
800269c0:	e24b3008 	sub	r3, fp, #8
800269c4:	e1a02003 	mov	r2, r3
800269c8:	e3a01000 	mov	r1, #0
800269cc:	e3a00000 	mov	r0, #0
800269d0:	ebffff22 	bl	80026660 <argfd>
800269d4:	e1a03000 	mov	r3, r0
800269d8:	e3530000 	cmp	r3, #0
800269dc:	ba000007 	blt	80026a00 <sys_fstat+0x4c>
800269e0:	e24b300c 	sub	r3, fp, #12
800269e4:	e3a02014 	mov	r2, #20
800269e8:	e1a01003 	mov	r1, r3
800269ec:	e3a00001 	mov	r0, #1
800269f0:	ebfffea0 	bl	80026478 <argptr>
800269f4:	e1a03000 	mov	r3, r0
800269f8:	e3530000 	cmp	r3, #0
800269fc:	aa000001 	bge	80026a08 <sys_fstat+0x54>
80026a00:	e3e03000 	mvn	r3, #0
80026a04:	ea000005 	b	80026a20 <sys_fstat+0x6c>
80026a08:	e51b3008 	ldr	r3, [fp, #-8]
80026a0c:	e51b200c 	ldr	r2, [fp, #-12]
80026a10:	e1a01002 	mov	r1, r2
80026a14:	e1a00003 	mov	r0, r3
80026a18:	ebffef51 	bl	80022764 <filestat>
80026a1c:	e1a03000 	mov	r3, r0
80026a20:	e1a00003 	mov	r0, r3
80026a24:	e24bd004 	sub	sp, fp, #4
80026a28:	e8bd8800 	pop	{fp, pc}

80026a2c <sys_link>:
80026a2c:	e92d4800 	push	{fp, lr}
80026a30:	e28db004 	add	fp, sp, #4
80026a34:	e24dd020 	sub	sp, sp, #32
80026a38:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026a3c:	e1a01003 	mov	r1, r3
80026a40:	e3a00000 	mov	r0, #0
80026a44:	ebfffeb4 	bl	8002651c <argstr>
80026a48:	e1a03000 	mov	r3, r0
80026a4c:	e3530000 	cmp	r3, #0
80026a50:	ba000006 	blt	80026a70 <sys_link+0x44>
80026a54:	e24b3020 	sub	r3, fp, #32
80026a58:	e1a01003 	mov	r1, r3
80026a5c:	e3a00001 	mov	r0, #1
80026a60:	ebfffead 	bl	8002651c <argstr>
80026a64:	e1a03000 	mov	r3, r0
80026a68:	e3530000 	cmp	r3, #0
80026a6c:	aa000001 	bge	80026a78 <sys_link+0x4c>
80026a70:	e3e03000 	mvn	r3, #0
80026a74:	ea000055 	b	80026bd0 <sys_link+0x1a4>
80026a78:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026a7c:	e1a00003 	mov	r0, r3
80026a80:	ebfff599 	bl	800240ec <namei>
80026a84:	e50b0008 	str	r0, [fp, #-8]
80026a88:	e51b3008 	ldr	r3, [fp, #-8]
80026a8c:	e3530000 	cmp	r3, #0
80026a90:	1a000001 	bne	80026a9c <sys_link+0x70>
80026a94:	e3e03000 	mvn	r3, #0
80026a98:	ea00004c 	b	80026bd0 <sys_link+0x1a4>
80026a9c:	ebfff66b 	bl	80024450 <begin_trans>
80026aa0:	e51b0008 	ldr	r0, [fp, #-8]
80026aa4:	ebfff1bd 	bl	800231a0 <ilock>
80026aa8:	e51b3008 	ldr	r3, [fp, #-8]
80026aac:	e1d331f0 	ldrsh	r3, [r3, #16]
80026ab0:	e3530001 	cmp	r3, #1
80026ab4:	1a000004 	bne	80026acc <sys_link+0xa0>
80026ab8:	e51b0008 	ldr	r0, [fp, #-8]
80026abc:	ebfff278 	bl	800234a4 <iunlockput>
80026ac0:	ebfff676 	bl	800244a0 <commit_trans>
80026ac4:	e3e03000 	mvn	r3, #0
80026ac8:	ea000040 	b	80026bd0 <sys_link+0x1a4>
80026acc:	e51b3008 	ldr	r3, [fp, #-8]
80026ad0:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ad4:	e6ff3073 	uxth	r3, r3
80026ad8:	e2833001 	add	r3, r3, #1
80026adc:	e6ff3073 	uxth	r3, r3
80026ae0:	e6bf2073 	sxth	r2, r3
80026ae4:	e51b3008 	ldr	r3, [fp, #-8]
80026ae8:	e1c321b6 	strh	r2, [r3, #22]
80026aec:	e51b0008 	ldr	r0, [fp, #-8]
80026af0:	ebfff110 	bl	80022f38 <iupdate>
80026af4:	e51b0008 	ldr	r0, [fp, #-8]
80026af8:	ebfff20c 	bl	80023330 <iunlock>
80026afc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026b00:	e24b201c 	sub	r2, fp, #28
80026b04:	e1a01002 	mov	r1, r2
80026b08:	e1a00003 	mov	r0, r3
80026b0c:	ebfff583 	bl	80024120 <nameiparent>
80026b10:	e50b000c 	str	r0, [fp, #-12]
80026b14:	e51b300c 	ldr	r3, [fp, #-12]
80026b18:	e3530000 	cmp	r3, #0
80026b1c:	0a00001a 	beq	80026b8c <sys_link+0x160>
80026b20:	e51b000c 	ldr	r0, [fp, #-12]
80026b24:	ebfff19d 	bl	800231a0 <ilock>
80026b28:	e51b300c 	ldr	r3, [fp, #-12]
80026b2c:	e5932000 	ldr	r2, [r3]
80026b30:	e51b3008 	ldr	r3, [fp, #-8]
80026b34:	e5933000 	ldr	r3, [r3]
80026b38:	e1520003 	cmp	r2, r3
80026b3c:	1a000008 	bne	80026b64 <sys_link+0x138>
80026b40:	e51b3008 	ldr	r3, [fp, #-8]
80026b44:	e5932004 	ldr	r2, [r3, #4]
80026b48:	e24b301c 	sub	r3, fp, #28
80026b4c:	e1a01003 	mov	r1, r3
80026b50:	e51b000c 	ldr	r0, [fp, #-12]
80026b54:	ebfff48e 	bl	80023d94 <dirlink>
80026b58:	e1a03000 	mov	r3, r0
80026b5c:	e3530000 	cmp	r3, #0
80026b60:	aa000002 	bge	80026b70 <sys_link+0x144>
80026b64:	e51b000c 	ldr	r0, [fp, #-12]
80026b68:	ebfff24d 	bl	800234a4 <iunlockput>
80026b6c:	ea000007 	b	80026b90 <sys_link+0x164>
80026b70:	e51b000c 	ldr	r0, [fp, #-12]
80026b74:	ebfff24a 	bl	800234a4 <iunlockput>
80026b78:	e51b0008 	ldr	r0, [fp, #-8]
80026b7c:	ebfff20d 	bl	800233b8 <iput>
80026b80:	ebfff646 	bl	800244a0 <commit_trans>
80026b84:	e3a03000 	mov	r3, #0
80026b88:	ea000010 	b	80026bd0 <sys_link+0x1a4>
80026b8c:	e1a00000 	nop			@ (mov r0, r0)
80026b90:	e51b0008 	ldr	r0, [fp, #-8]
80026b94:	ebfff181 	bl	800231a0 <ilock>
80026b98:	e51b3008 	ldr	r3, [fp, #-8]
80026b9c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ba0:	e6ff3073 	uxth	r3, r3
80026ba4:	e2433001 	sub	r3, r3, #1
80026ba8:	e6ff3073 	uxth	r3, r3
80026bac:	e6bf2073 	sxth	r2, r3
80026bb0:	e51b3008 	ldr	r3, [fp, #-8]
80026bb4:	e1c321b6 	strh	r2, [r3, #22]
80026bb8:	e51b0008 	ldr	r0, [fp, #-8]
80026bbc:	ebfff0dd 	bl	80022f38 <iupdate>
80026bc0:	e51b0008 	ldr	r0, [fp, #-8]
80026bc4:	ebfff236 	bl	800234a4 <iunlockput>
80026bc8:	ebfff634 	bl	800244a0 <commit_trans>
80026bcc:	e3e03000 	mvn	r3, #0
80026bd0:	e1a00003 	mov	r0, r3
80026bd4:	e24bd004 	sub	sp, fp, #4
80026bd8:	e8bd8800 	pop	{fp, pc}

80026bdc <isdirempty>:
80026bdc:	e92d4800 	push	{fp, lr}
80026be0:	e28db004 	add	fp, sp, #4
80026be4:	e24dd020 	sub	sp, sp, #32
80026be8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026bec:	e3a03020 	mov	r3, #32
80026bf0:	e50b3008 	str	r3, [fp, #-8]
80026bf4:	ea000011 	b	80026c40 <isdirempty+0x64>
80026bf8:	e51b2008 	ldr	r2, [fp, #-8]
80026bfc:	e24b1018 	sub	r1, fp, #24
80026c00:	e3a03010 	mov	r3, #16
80026c04:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80026c08:	ebfff310 	bl	80023850 <readi>
80026c0c:	e1a03000 	mov	r3, r0
80026c10:	e3530010 	cmp	r3, #16
80026c14:	0a000001 	beq	80026c20 <isdirempty+0x44>
80026c18:	e59f0044 	ldr	r0, [pc, #68]	@ 80026c64 <isdirempty+0x88>
80026c1c:	ebffebb4 	bl	80021af4 <panic>
80026c20:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80026c24:	e3530000 	cmp	r3, #0
80026c28:	0a000001 	beq	80026c34 <isdirempty+0x58>
80026c2c:	e3a03000 	mov	r3, #0
80026c30:	ea000008 	b	80026c58 <isdirempty+0x7c>
80026c34:	e51b3008 	ldr	r3, [fp, #-8]
80026c38:	e2833010 	add	r3, r3, #16
80026c3c:	e50b3008 	str	r3, [fp, #-8]
80026c40:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026c44:	e5932018 	ldr	r2, [r3, #24]
80026c48:	e51b3008 	ldr	r3, [fp, #-8]
80026c4c:	e1520003 	cmp	r2, r3
80026c50:	8affffe8 	bhi	80026bf8 <isdirempty+0x1c>
80026c54:	e3a03001 	mov	r3, #1
80026c58:	e1a00003 	mov	r0, r3
80026c5c:	e24bd004 	sub	sp, fp, #4
80026c60:	e8bd8800 	pop	{fp, pc}
80026c64:	80029bcc 	.word	0x80029bcc

80026c68 <sys_unlink>:
80026c68:	e92d4800 	push	{fp, lr}
80026c6c:	e28db004 	add	fp, sp, #4
80026c70:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026c74:	e24b3030 	sub	r3, fp, #48	@ 0x30
80026c78:	e1a01003 	mov	r1, r3
80026c7c:	e3a00000 	mov	r0, #0
80026c80:	ebfffe25 	bl	8002651c <argstr>
80026c84:	e1a03000 	mov	r3, r0
80026c88:	e3530000 	cmp	r3, #0
80026c8c:	aa000001 	bge	80026c98 <sys_unlink+0x30>
80026c90:	e3e03000 	mvn	r3, #0
80026c94:	ea00006d 	b	80026e50 <sys_unlink+0x1e8>
80026c98:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80026c9c:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80026ca0:	e1a01002 	mov	r1, r2
80026ca4:	e1a00003 	mov	r0, r3
80026ca8:	ebfff51c 	bl	80024120 <nameiparent>
80026cac:	e50b0008 	str	r0, [fp, #-8]
80026cb0:	e51b3008 	ldr	r3, [fp, #-8]
80026cb4:	e3530000 	cmp	r3, #0
80026cb8:	1a000001 	bne	80026cc4 <sys_unlink+0x5c>
80026cbc:	e3e03000 	mvn	r3, #0
80026cc0:	ea000062 	b	80026e50 <sys_unlink+0x1e8>
80026cc4:	ebfff5e1 	bl	80024450 <begin_trans>
80026cc8:	e51b0008 	ldr	r0, [fp, #-8]
80026ccc:	ebfff133 	bl	800231a0 <ilock>
80026cd0:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026cd4:	e59f1180 	ldr	r1, [pc, #384]	@ 80026e5c <sys_unlink+0x1f4>
80026cd8:	e1a00003 	mov	r0, r3
80026cdc:	ebfff3dd 	bl	80023c58 <namecmp>
80026ce0:	e1a03000 	mov	r3, r0
80026ce4:	e3530000 	cmp	r3, #0
80026ce8:	0a000051 	beq	80026e34 <sys_unlink+0x1cc>
80026cec:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026cf0:	e59f1168 	ldr	r1, [pc, #360]	@ 80026e60 <sys_unlink+0x1f8>
80026cf4:	e1a00003 	mov	r0, r3
80026cf8:	ebfff3d6 	bl	80023c58 <namecmp>
80026cfc:	e1a03000 	mov	r3, r0
80026d00:	e3530000 	cmp	r3, #0
80026d04:	0a00004a 	beq	80026e34 <sys_unlink+0x1cc>
80026d08:	e24b2034 	sub	r2, fp, #52	@ 0x34
80026d0c:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026d10:	e1a01003 	mov	r1, r3
80026d14:	e51b0008 	ldr	r0, [fp, #-8]
80026d18:	ebfff3db 	bl	80023c8c <dirlookup>
80026d1c:	e50b000c 	str	r0, [fp, #-12]
80026d20:	e51b300c 	ldr	r3, [fp, #-12]
80026d24:	e3530000 	cmp	r3, #0
80026d28:	0a000043 	beq	80026e3c <sys_unlink+0x1d4>
80026d2c:	e51b000c 	ldr	r0, [fp, #-12]
80026d30:	ebfff11a 	bl	800231a0 <ilock>
80026d34:	e51b300c 	ldr	r3, [fp, #-12]
80026d38:	e1d331f6 	ldrsh	r3, [r3, #22]
80026d3c:	e3530000 	cmp	r3, #0
80026d40:	ca000001 	bgt	80026d4c <sys_unlink+0xe4>
80026d44:	e59f0118 	ldr	r0, [pc, #280]	@ 80026e64 <sys_unlink+0x1fc>
80026d48:	ebffeb69 	bl	80021af4 <panic>
80026d4c:	e51b300c 	ldr	r3, [fp, #-12]
80026d50:	e1d331f0 	ldrsh	r3, [r3, #16]
80026d54:	e3530001 	cmp	r3, #1
80026d58:	1a000007 	bne	80026d7c <sys_unlink+0x114>
80026d5c:	e51b000c 	ldr	r0, [fp, #-12]
80026d60:	ebffff9d 	bl	80026bdc <isdirempty>
80026d64:	e1a03000 	mov	r3, r0
80026d68:	e3530000 	cmp	r3, #0
80026d6c:	1a000002 	bne	80026d7c <sys_unlink+0x114>
80026d70:	e51b000c 	ldr	r0, [fp, #-12]
80026d74:	ebfff1ca 	bl	800234a4 <iunlockput>
80026d78:	ea000030 	b	80026e40 <sys_unlink+0x1d8>
80026d7c:	e24b301c 	sub	r3, fp, #28
80026d80:	e3a02010 	mov	r2, #16
80026d84:	e3a01000 	mov	r1, #0
80026d88:	e1a00003 	mov	r0, r3
80026d8c:	ebffe49b 	bl	80020000 <memset>
80026d90:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80026d94:	e24b101c 	sub	r1, fp, #28
80026d98:	e3a03010 	mov	r3, #16
80026d9c:	e51b0008 	ldr	r0, [fp, #-8]
80026da0:	ebfff325 	bl	80023a3c <writei>
80026da4:	e1a03000 	mov	r3, r0
80026da8:	e3530010 	cmp	r3, #16
80026dac:	0a000001 	beq	80026db8 <sys_unlink+0x150>
80026db0:	e59f00b0 	ldr	r0, [pc, #176]	@ 80026e68 <sys_unlink+0x200>
80026db4:	ebffeb4e 	bl	80021af4 <panic>
80026db8:	e51b300c 	ldr	r3, [fp, #-12]
80026dbc:	e1d331f0 	ldrsh	r3, [r3, #16]
80026dc0:	e3530001 	cmp	r3, #1
80026dc4:	1a000009 	bne	80026df0 <sys_unlink+0x188>
80026dc8:	e51b3008 	ldr	r3, [fp, #-8]
80026dcc:	e1d331f6 	ldrsh	r3, [r3, #22]
80026dd0:	e6ff3073 	uxth	r3, r3
80026dd4:	e2433001 	sub	r3, r3, #1
80026dd8:	e6ff3073 	uxth	r3, r3
80026ddc:	e6bf2073 	sxth	r2, r3
80026de0:	e51b3008 	ldr	r3, [fp, #-8]
80026de4:	e1c321b6 	strh	r2, [r3, #22]
80026de8:	e51b0008 	ldr	r0, [fp, #-8]
80026dec:	ebfff051 	bl	80022f38 <iupdate>
80026df0:	e51b0008 	ldr	r0, [fp, #-8]
80026df4:	ebfff1aa 	bl	800234a4 <iunlockput>
80026df8:	e51b300c 	ldr	r3, [fp, #-12]
80026dfc:	e1d331f6 	ldrsh	r3, [r3, #22]
80026e00:	e6ff3073 	uxth	r3, r3
80026e04:	e2433001 	sub	r3, r3, #1
80026e08:	e6ff3073 	uxth	r3, r3
80026e0c:	e6bf2073 	sxth	r2, r3
80026e10:	e51b300c 	ldr	r3, [fp, #-12]
80026e14:	e1c321b6 	strh	r2, [r3, #22]
80026e18:	e51b000c 	ldr	r0, [fp, #-12]
80026e1c:	ebfff045 	bl	80022f38 <iupdate>
80026e20:	e51b000c 	ldr	r0, [fp, #-12]
80026e24:	ebfff19e 	bl	800234a4 <iunlockput>
80026e28:	ebfff59c 	bl	800244a0 <commit_trans>
80026e2c:	e3a03000 	mov	r3, #0
80026e30:	ea000006 	b	80026e50 <sys_unlink+0x1e8>
80026e34:	e1a00000 	nop			@ (mov r0, r0)
80026e38:	ea000000 	b	80026e40 <sys_unlink+0x1d8>
80026e3c:	e1a00000 	nop			@ (mov r0, r0)
80026e40:	e51b0008 	ldr	r0, [fp, #-8]
80026e44:	ebfff196 	bl	800234a4 <iunlockput>
80026e48:	ebfff594 	bl	800244a0 <commit_trans>
80026e4c:	e3e03000 	mvn	r3, #0
80026e50:	e1a00003 	mov	r0, r3
80026e54:	e24bd004 	sub	sp, fp, #4
80026e58:	e8bd8800 	pop	{fp, pc}
80026e5c:	80029be0 	.word	0x80029be0
80026e60:	80029be4 	.word	0x80029be4
80026e64:	80029be8 	.word	0x80029be8
80026e68:	80029bfc 	.word	0x80029bfc

80026e6c <create>:
80026e6c:	e92d4800 	push	{fp, lr}
80026e70:	e28db004 	add	fp, sp, #4
80026e74:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026e78:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80026e7c:	e1a00001 	mov	r0, r1
80026e80:	e1a01002 	mov	r1, r2
80026e84:	e1a02003 	mov	r2, r3
80026e88:	e1a03000 	mov	r3, r0
80026e8c:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80026e90:	e1a03001 	mov	r3, r1
80026e94:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80026e98:	e1a03002 	mov	r3, r2
80026e9c:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80026ea0:	e24b3020 	sub	r3, fp, #32
80026ea4:	e1a01003 	mov	r1, r3
80026ea8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80026eac:	ebfff49b 	bl	80024120 <nameiparent>
80026eb0:	e50b0008 	str	r0, [fp, #-8]
80026eb4:	e51b3008 	ldr	r3, [fp, #-8]
80026eb8:	e3530000 	cmp	r3, #0
80026ebc:	1a000001 	bne	80026ec8 <create+0x5c>
80026ec0:	e3a03000 	mov	r3, #0
80026ec4:	ea000063 	b	80027058 <create+0x1ec>
80026ec8:	e51b0008 	ldr	r0, [fp, #-8]
80026ecc:	ebfff0b3 	bl	800231a0 <ilock>
80026ed0:	e24b2010 	sub	r2, fp, #16
80026ed4:	e24b3020 	sub	r3, fp, #32
80026ed8:	e1a01003 	mov	r1, r3
80026edc:	e51b0008 	ldr	r0, [fp, #-8]
80026ee0:	ebfff369 	bl	80023c8c <dirlookup>
80026ee4:	e50b000c 	str	r0, [fp, #-12]
80026ee8:	e51b300c 	ldr	r3, [fp, #-12]
80026eec:	e3530000 	cmp	r3, #0
80026ef0:	0a000010 	beq	80026f38 <create+0xcc>
80026ef4:	e51b0008 	ldr	r0, [fp, #-8]
80026ef8:	ebfff169 	bl	800234a4 <iunlockput>
80026efc:	e51b000c 	ldr	r0, [fp, #-12]
80026f00:	ebfff0a6 	bl	800231a0 <ilock>
80026f04:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026f08:	e3530002 	cmp	r3, #2
80026f0c:	1a000005 	bne	80026f28 <create+0xbc>
80026f10:	e51b300c 	ldr	r3, [fp, #-12]
80026f14:	e1d331f0 	ldrsh	r3, [r3, #16]
80026f18:	e3530002 	cmp	r3, #2
80026f1c:	1a000001 	bne	80026f28 <create+0xbc>
80026f20:	e51b300c 	ldr	r3, [fp, #-12]
80026f24:	ea00004b 	b	80027058 <create+0x1ec>
80026f28:	e51b000c 	ldr	r0, [fp, #-12]
80026f2c:	ebfff15c 	bl	800234a4 <iunlockput>
80026f30:	e3a03000 	mov	r3, #0
80026f34:	ea000047 	b	80027058 <create+0x1ec>
80026f38:	e51b3008 	ldr	r3, [fp, #-8]
80026f3c:	e5933000 	ldr	r3, [r3]
80026f40:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80026f44:	e1a01002 	mov	r1, r2
80026f48:	e1a00003 	mov	r0, r3
80026f4c:	ebffefb9 	bl	80022e38 <ialloc>
80026f50:	e50b000c 	str	r0, [fp, #-12]
80026f54:	e51b300c 	ldr	r3, [fp, #-12]
80026f58:	e3530000 	cmp	r3, #0
80026f5c:	1a000001 	bne	80026f68 <create+0xfc>
80026f60:	e59f00fc 	ldr	r0, [pc, #252]	@ 80027064 <create+0x1f8>
80026f64:	ebffeae2 	bl	80021af4 <panic>
80026f68:	e51b000c 	ldr	r0, [fp, #-12]
80026f6c:	ebfff08b 	bl	800231a0 <ilock>
80026f70:	e51b300c 	ldr	r3, [fp, #-12]
80026f74:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80026f78:	e1c321b2 	strh	r2, [r3, #18]
80026f7c:	e51b300c 	ldr	r3, [fp, #-12]
80026f80:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80026f84:	e1c321b4 	strh	r2, [r3, #20]
80026f88:	e51b300c 	ldr	r3, [fp, #-12]
80026f8c:	e3a02001 	mov	r2, #1
80026f90:	e1c321b6 	strh	r2, [r3, #22]
80026f94:	e51b000c 	ldr	r0, [fp, #-12]
80026f98:	ebffefe6 	bl	80022f38 <iupdate>
80026f9c:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026fa0:	e3530001 	cmp	r3, #1
80026fa4:	1a00001d 	bne	80027020 <create+0x1b4>
80026fa8:	e51b3008 	ldr	r3, [fp, #-8]
80026fac:	e1d331f6 	ldrsh	r3, [r3, #22]
80026fb0:	e6ff3073 	uxth	r3, r3
80026fb4:	e2833001 	add	r3, r3, #1
80026fb8:	e6ff3073 	uxth	r3, r3
80026fbc:	e6bf2073 	sxth	r2, r3
80026fc0:	e51b3008 	ldr	r3, [fp, #-8]
80026fc4:	e1c321b6 	strh	r2, [r3, #22]
80026fc8:	e51b0008 	ldr	r0, [fp, #-8]
80026fcc:	ebffefd9 	bl	80022f38 <iupdate>
80026fd0:	e51b300c 	ldr	r3, [fp, #-12]
80026fd4:	e5933004 	ldr	r3, [r3, #4]
80026fd8:	e1a02003 	mov	r2, r3
80026fdc:	e59f1084 	ldr	r1, [pc, #132]	@ 80027068 <create+0x1fc>
80026fe0:	e51b000c 	ldr	r0, [fp, #-12]
80026fe4:	ebfff36a 	bl	80023d94 <dirlink>
80026fe8:	e1a03000 	mov	r3, r0
80026fec:	e3530000 	cmp	r3, #0
80026ff0:	ba000008 	blt	80027018 <create+0x1ac>
80026ff4:	e51b3008 	ldr	r3, [fp, #-8]
80026ff8:	e5933004 	ldr	r3, [r3, #4]
80026ffc:	e1a02003 	mov	r2, r3
80027000:	e59f1064 	ldr	r1, [pc, #100]	@ 8002706c <create+0x200>
80027004:	e51b000c 	ldr	r0, [fp, #-12]
80027008:	ebfff361 	bl	80023d94 <dirlink>
8002700c:	e1a03000 	mov	r3, r0
80027010:	e3530000 	cmp	r3, #0
80027014:	aa000001 	bge	80027020 <create+0x1b4>
80027018:	e59f0050 	ldr	r0, [pc, #80]	@ 80027070 <create+0x204>
8002701c:	ebffeab4 	bl	80021af4 <panic>
80027020:	e51b300c 	ldr	r3, [fp, #-12]
80027024:	e5932004 	ldr	r2, [r3, #4]
80027028:	e24b3020 	sub	r3, fp, #32
8002702c:	e1a01003 	mov	r1, r3
80027030:	e51b0008 	ldr	r0, [fp, #-8]
80027034:	ebfff356 	bl	80023d94 <dirlink>
80027038:	e1a03000 	mov	r3, r0
8002703c:	e3530000 	cmp	r3, #0
80027040:	aa000001 	bge	8002704c <create+0x1e0>
80027044:	e59f0028 	ldr	r0, [pc, #40]	@ 80027074 <create+0x208>
80027048:	ebffeaa9 	bl	80021af4 <panic>
8002704c:	e51b0008 	ldr	r0, [fp, #-8]
80027050:	ebfff113 	bl	800234a4 <iunlockput>
80027054:	e51b300c 	ldr	r3, [fp, #-12]
80027058:	e1a00003 	mov	r0, r3
8002705c:	e24bd004 	sub	sp, fp, #4
80027060:	e8bd8800 	pop	{fp, pc}
80027064:	80029c0c 	.word	0x80029c0c
80027068:	80029be0 	.word	0x80029be0
8002706c:	80029be4 	.word	0x80029be4
80027070:	80029c1c 	.word	0x80029c1c
80027074:	80029c28 	.word	0x80029c28

80027078 <sys_open>:
80027078:	e92d4800 	push	{fp, lr}
8002707c:	e28db004 	add	fp, sp, #4
80027080:	e24dd018 	sub	sp, sp, #24
80027084:	e24b3014 	sub	r3, fp, #20
80027088:	e1a01003 	mov	r1, r3
8002708c:	e3a00000 	mov	r0, #0
80027090:	ebfffd21 	bl	8002651c <argstr>
80027094:	e1a03000 	mov	r3, r0
80027098:	e3530000 	cmp	r3, #0
8002709c:	ba000006 	blt	800270bc <sys_open+0x44>
800270a0:	e24b3018 	sub	r3, fp, #24
800270a4:	e1a01003 	mov	r1, r3
800270a8:	e3a00001 	mov	r0, #1
800270ac:	ebfffcd6 	bl	8002640c <argint>
800270b0:	e1a03000 	mov	r3, r0
800270b4:	e3530000 	cmp	r3, #0
800270b8:	aa000001 	bge	800270c4 <sys_open+0x4c>
800270bc:	e3e03000 	mvn	r3, #0
800270c0:	ea00005d 	b	8002723c <sys_open+0x1c4>
800270c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800270c8:	e2033c02 	and	r3, r3, #512	@ 0x200
800270cc:	e3530000 	cmp	r3, #0
800270d0:	0a00000c 	beq	80027108 <sys_open+0x90>
800270d4:	ebfff4dd 	bl	80024450 <begin_trans>
800270d8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800270dc:	e3a03000 	mov	r3, #0
800270e0:	e3a02000 	mov	r2, #0
800270e4:	e3a01002 	mov	r1, #2
800270e8:	ebffff5f 	bl	80026e6c <create>
800270ec:	e50b0008 	str	r0, [fp, #-8]
800270f0:	ebfff4ea 	bl	800244a0 <commit_trans>
800270f4:	e51b3008 	ldr	r3, [fp, #-8]
800270f8:	e3530000 	cmp	r3, #0
800270fc:	1a000017 	bne	80027160 <sys_open+0xe8>
80027100:	e3e03000 	mvn	r3, #0
80027104:	ea00004c 	b	8002723c <sys_open+0x1c4>
80027108:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002710c:	e1a00003 	mov	r0, r3
80027110:	ebfff3f5 	bl	800240ec <namei>
80027114:	e50b0008 	str	r0, [fp, #-8]
80027118:	e51b3008 	ldr	r3, [fp, #-8]
8002711c:	e3530000 	cmp	r3, #0
80027120:	1a000001 	bne	8002712c <sys_open+0xb4>
80027124:	e3e03000 	mvn	r3, #0
80027128:	ea000043 	b	8002723c <sys_open+0x1c4>
8002712c:	e51b0008 	ldr	r0, [fp, #-8]
80027130:	ebfff01a 	bl	800231a0 <ilock>
80027134:	e51b3008 	ldr	r3, [fp, #-8]
80027138:	e1d331f0 	ldrsh	r3, [r3, #16]
8002713c:	e3530001 	cmp	r3, #1
80027140:	1a000006 	bne	80027160 <sys_open+0xe8>
80027144:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027148:	e3530000 	cmp	r3, #0
8002714c:	0a000003 	beq	80027160 <sys_open+0xe8>
80027150:	e51b0008 	ldr	r0, [fp, #-8]
80027154:	ebfff0d2 	bl	800234a4 <iunlockput>
80027158:	e3e03000 	mvn	r3, #0
8002715c:	ea000036 	b	8002723c <sys_open+0x1c4>
80027160:	ebffed07 	bl	80022584 <filealloc>
80027164:	e50b000c 	str	r0, [fp, #-12]
80027168:	e51b300c 	ldr	r3, [fp, #-12]
8002716c:	e3530000 	cmp	r3, #0
80027170:	0a000005 	beq	8002718c <sys_open+0x114>
80027174:	e51b000c 	ldr	r0, [fp, #-12]
80027178:	ebfffd69 	bl	80026724 <fdalloc>
8002717c:	e50b0010 	str	r0, [fp, #-16]
80027180:	e51b3010 	ldr	r3, [fp, #-16]
80027184:	e3530000 	cmp	r3, #0
80027188:	aa000008 	bge	800271b0 <sys_open+0x138>
8002718c:	e51b300c 	ldr	r3, [fp, #-12]
80027190:	e3530000 	cmp	r3, #0
80027194:	0a000001 	beq	800271a0 <sys_open+0x128>
80027198:	e51b000c 	ldr	r0, [fp, #-12]
8002719c:	ebffed34 	bl	80022674 <fileclose>
800271a0:	e51b0008 	ldr	r0, [fp, #-8]
800271a4:	ebfff0be 	bl	800234a4 <iunlockput>
800271a8:	e3e03000 	mvn	r3, #0
800271ac:	ea000022 	b	8002723c <sys_open+0x1c4>
800271b0:	e51b0008 	ldr	r0, [fp, #-8]
800271b4:	ebfff05d 	bl	80023330 <iunlock>
800271b8:	e51b300c 	ldr	r3, [fp, #-12]
800271bc:	e3a02002 	mov	r2, #2
800271c0:	e5c32000 	strb	r2, [r3]
800271c4:	e51b300c 	ldr	r3, [fp, #-12]
800271c8:	e51b2008 	ldr	r2, [fp, #-8]
800271cc:	e5832010 	str	r2, [r3, #16]
800271d0:	e51b300c 	ldr	r3, [fp, #-12]
800271d4:	e3a02000 	mov	r2, #0
800271d8:	e5832014 	str	r2, [r3, #20]
800271dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800271e0:	e2033001 	and	r3, r3, #1
800271e4:	e3530000 	cmp	r3, #0
800271e8:	03a03001 	moveq	r3, #1
800271ec:	13a03000 	movne	r3, #0
800271f0:	e6ef3073 	uxtb	r3, r3
800271f4:	e1a02003 	mov	r2, r3
800271f8:	e51b300c 	ldr	r3, [fp, #-12]
800271fc:	e5c32008 	strb	r2, [r3, #8]
80027200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027204:	e2033001 	and	r3, r3, #1
80027208:	e3530000 	cmp	r3, #0
8002720c:	1a000003 	bne	80027220 <sys_open+0x1a8>
80027210:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027214:	e2033002 	and	r3, r3, #2
80027218:	e3530000 	cmp	r3, #0
8002721c:	0a000001 	beq	80027228 <sys_open+0x1b0>
80027220:	e3a03001 	mov	r3, #1
80027224:	ea000000 	b	8002722c <sys_open+0x1b4>
80027228:	e3a03000 	mov	r3, #0
8002722c:	e6ef2073 	uxtb	r2, r3
80027230:	e51b300c 	ldr	r3, [fp, #-12]
80027234:	e5c32009 	strb	r2, [r3, #9]
80027238:	e51b3010 	ldr	r3, [fp, #-16]
8002723c:	e1a00003 	mov	r0, r3
80027240:	e24bd004 	sub	sp, fp, #4
80027244:	e8bd8800 	pop	{fp, pc}

80027248 <sys_mkdir>:
80027248:	e92d4800 	push	{fp, lr}
8002724c:	e28db004 	add	fp, sp, #4
80027250:	e24dd008 	sub	sp, sp, #8
80027254:	ebfff47d 	bl	80024450 <begin_trans>
80027258:	e24b300c 	sub	r3, fp, #12
8002725c:	e1a01003 	mov	r1, r3
80027260:	e3a00000 	mov	r0, #0
80027264:	ebfffcac 	bl	8002651c <argstr>
80027268:	e1a03000 	mov	r3, r0
8002726c:	e3530000 	cmp	r3, #0
80027270:	ba000008 	blt	80027298 <sys_mkdir+0x50>
80027274:	e51b000c 	ldr	r0, [fp, #-12]
80027278:	e3a03000 	mov	r3, #0
8002727c:	e3a02000 	mov	r2, #0
80027280:	e3a01001 	mov	r1, #1
80027284:	ebfffef8 	bl	80026e6c <create>
80027288:	e50b0008 	str	r0, [fp, #-8]
8002728c:	e51b3008 	ldr	r3, [fp, #-8]
80027290:	e3530000 	cmp	r3, #0
80027294:	1a000002 	bne	800272a4 <sys_mkdir+0x5c>
80027298:	ebfff480 	bl	800244a0 <commit_trans>
8002729c:	e3e03000 	mvn	r3, #0
800272a0:	ea000003 	b	800272b4 <sys_mkdir+0x6c>
800272a4:	e51b0008 	ldr	r0, [fp, #-8]
800272a8:	ebfff07d 	bl	800234a4 <iunlockput>
800272ac:	ebfff47b 	bl	800244a0 <commit_trans>
800272b0:	e3a03000 	mov	r3, #0
800272b4:	e1a00003 	mov	r0, r3
800272b8:	e24bd004 	sub	sp, fp, #4
800272bc:	e8bd8800 	pop	{fp, pc}

800272c0 <sys_mknod>:
800272c0:	e92d4800 	push	{fp, lr}
800272c4:	e28db004 	add	fp, sp, #4
800272c8:	e24dd018 	sub	sp, sp, #24
800272cc:	ebfff45f 	bl	80024450 <begin_trans>
800272d0:	e24b3010 	sub	r3, fp, #16
800272d4:	e1a01003 	mov	r1, r3
800272d8:	e3a00000 	mov	r0, #0
800272dc:	ebfffc8e 	bl	8002651c <argstr>
800272e0:	e50b0008 	str	r0, [fp, #-8]
800272e4:	e51b3008 	ldr	r3, [fp, #-8]
800272e8:	e3530000 	cmp	r3, #0
800272ec:	ba000018 	blt	80027354 <sys_mknod+0x94>
800272f0:	e24b3014 	sub	r3, fp, #20
800272f4:	e1a01003 	mov	r1, r3
800272f8:	e3a00001 	mov	r0, #1
800272fc:	ebfffc42 	bl	8002640c <argint>
80027300:	e1a03000 	mov	r3, r0
80027304:	e3530000 	cmp	r3, #0
80027308:	ba000011 	blt	80027354 <sys_mknod+0x94>
8002730c:	e24b3018 	sub	r3, fp, #24
80027310:	e1a01003 	mov	r1, r3
80027314:	e3a00002 	mov	r0, #2
80027318:	ebfffc3b 	bl	8002640c <argint>
8002731c:	e1a03000 	mov	r3, r0
80027320:	e3530000 	cmp	r3, #0
80027324:	ba00000a 	blt	80027354 <sys_mknod+0x94>
80027328:	e51b0010 	ldr	r0, [fp, #-16]
8002732c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027330:	e6bf2073 	sxth	r2, r3
80027334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027338:	e6bf3073 	sxth	r3, r3
8002733c:	e3a01003 	mov	r1, #3
80027340:	ebfffec9 	bl	80026e6c <create>
80027344:	e50b000c 	str	r0, [fp, #-12]
80027348:	e51b300c 	ldr	r3, [fp, #-12]
8002734c:	e3530000 	cmp	r3, #0
80027350:	1a000002 	bne	80027360 <sys_mknod+0xa0>
80027354:	ebfff451 	bl	800244a0 <commit_trans>
80027358:	e3e03000 	mvn	r3, #0
8002735c:	ea000003 	b	80027370 <sys_mknod+0xb0>
80027360:	e51b000c 	ldr	r0, [fp, #-12]
80027364:	ebfff04e 	bl	800234a4 <iunlockput>
80027368:	ebfff44c 	bl	800244a0 <commit_trans>
8002736c:	e3a03000 	mov	r3, #0
80027370:	e1a00003 	mov	r0, r3
80027374:	e24bd004 	sub	sp, fp, #4
80027378:	e8bd8800 	pop	{fp, pc}

8002737c <sys_chdir>:
8002737c:	e92d4800 	push	{fp, lr}
80027380:	e28db004 	add	fp, sp, #4
80027384:	e24dd008 	sub	sp, sp, #8
80027388:	e24b300c 	sub	r3, fp, #12
8002738c:	e1a01003 	mov	r1, r3
80027390:	e3a00000 	mov	r0, #0
80027394:	ebfffc60 	bl	8002651c <argstr>
80027398:	e1a03000 	mov	r3, r0
8002739c:	e3530000 	cmp	r3, #0
800273a0:	ba000006 	blt	800273c0 <sys_chdir+0x44>
800273a4:	e51b300c 	ldr	r3, [fp, #-12]
800273a8:	e1a00003 	mov	r0, r3
800273ac:	ebfff34e 	bl	800240ec <namei>
800273b0:	e50b0008 	str	r0, [fp, #-8]
800273b4:	e51b3008 	ldr	r3, [fp, #-8]
800273b8:	e3530000 	cmp	r3, #0
800273bc:	1a000001 	bne	800273c8 <sys_chdir+0x4c>
800273c0:	e3e03000 	mvn	r3, #0
800273c4:	ea000015 	b	80027420 <sys_chdir+0xa4>
800273c8:	e51b0008 	ldr	r0, [fp, #-8]
800273cc:	ebffef73 	bl	800231a0 <ilock>
800273d0:	e51b3008 	ldr	r3, [fp, #-8]
800273d4:	e1d331f0 	ldrsh	r3, [r3, #16]
800273d8:	e3530001 	cmp	r3, #1
800273dc:	0a000003 	beq	800273f0 <sys_chdir+0x74>
800273e0:	e51b0008 	ldr	r0, [fp, #-8]
800273e4:	ebfff02e 	bl	800234a4 <iunlockput>
800273e8:	e3e03000 	mvn	r3, #0
800273ec:	ea00000b 	b	80027420 <sys_chdir+0xa4>
800273f0:	e51b0008 	ldr	r0, [fp, #-8]
800273f4:	ebffefcd 	bl	80023330 <iunlock>
800273f8:	e59f302c 	ldr	r3, [pc, #44]	@ 8002742c <sys_chdir+0xb0>
800273fc:	e5933000 	ldr	r3, [r3]
80027400:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80027404:	e1a00003 	mov	r0, r3
80027408:	ebffefea 	bl	800233b8 <iput>
8002740c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002742c <sys_chdir+0xb0>
80027410:	e5933000 	ldr	r3, [r3]
80027414:	e51b2008 	ldr	r2, [fp, #-8]
80027418:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002741c:	e3a03000 	mov	r3, #0
80027420:	e1a00003 	mov	r0, r3
80027424:	e24bd004 	sub	sp, fp, #4
80027428:	e8bd8800 	pop	{fp, pc}
8002742c:	800afb50 	.word	0x800afb50

80027430 <sys_exec>:
80027430:	e92d4800 	push	{fp, lr}
80027434:	e28db004 	add	fp, sp, #4
80027438:	e24dd090 	sub	sp, sp, #144	@ 0x90
8002743c:	e24b300c 	sub	r3, fp, #12
80027440:	e1a01003 	mov	r1, r3
80027444:	e3a00000 	mov	r0, #0
80027448:	ebfffc33 	bl	8002651c <argstr>
8002744c:	e1a03000 	mov	r3, r0
80027450:	e3530000 	cmp	r3, #0
80027454:	ba000006 	blt	80027474 <sys_exec+0x44>
80027458:	e24b3090 	sub	r3, fp, #144	@ 0x90
8002745c:	e1a01003 	mov	r1, r3
80027460:	e3a00001 	mov	r0, #1
80027464:	ebfffbe8 	bl	8002640c <argint>
80027468:	e1a03000 	mov	r3, r0
8002746c:	e3530000 	cmp	r3, #0
80027470:	aa000001 	bge	8002747c <sys_exec+0x4c>
80027474:	e3e03000 	mvn	r3, #0
80027478:	ea00003a 	b	80027568 <sys_exec+0x138>
8002747c:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027480:	e3a02080 	mov	r2, #128	@ 0x80
80027484:	e3a01000 	mov	r1, #0
80027488:	e1a00003 	mov	r0, r3
8002748c:	ebffe2db 	bl	80020000 <memset>
80027490:	e3a03000 	mov	r3, #0
80027494:	e50b3008 	str	r3, [fp, #-8]
80027498:	e51b3008 	ldr	r3, [fp, #-8]
8002749c:	e353001f 	cmp	r3, #31
800274a0:	9a000001 	bls	800274ac <sys_exec+0x7c>
800274a4:	e3e03000 	mvn	r3, #0
800274a8:	ea00002e 	b	80027568 <sys_exec+0x138>
800274ac:	e51b3008 	ldr	r3, [fp, #-8]
800274b0:	e1a03103 	lsl	r3, r3, #2
800274b4:	e1a02003 	mov	r2, r3
800274b8:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
800274bc:	e0823003 	add	r3, r2, r3
800274c0:	e24b2094 	sub	r2, fp, #148	@ 0x94
800274c4:	e1a01002 	mov	r1, r2
800274c8:	e1a00003 	mov	r0, r3
800274cc:	ebfffb82 	bl	800262dc <fetchint>
800274d0:	e1a03000 	mov	r3, r0
800274d4:	e3530000 	cmp	r3, #0
800274d8:	aa000001 	bge	800274e4 <sys_exec+0xb4>
800274dc:	e3e03000 	mvn	r3, #0
800274e0:	ea000020 	b	80027568 <sys_exec+0x138>
800274e4:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
800274e8:	e3530000 	cmp	r3, #0
800274ec:	1a00000d 	bne	80027528 <sys_exec+0xf8>
800274f0:	e51b3008 	ldr	r3, [fp, #-8]
800274f4:	e1a03103 	lsl	r3, r3, #2
800274f8:	e2433004 	sub	r3, r3, #4
800274fc:	e083300b 	add	r3, r3, fp
80027500:	e3a02000 	mov	r2, #0
80027504:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027508:	e1a00000 	nop			@ (mov r0, r0)
8002750c:	e51b300c 	ldr	r3, [fp, #-12]
80027510:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027514:	e1a01002 	mov	r1, r2
80027518:	e1a00003 	mov	r0, r3
8002751c:	ebffeadc 	bl	80022094 <exec>
80027520:	e1a03000 	mov	r3, r0
80027524:	ea00000f 	b	80027568 <sys_exec+0x138>
80027528:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
8002752c:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027530:	e51b3008 	ldr	r3, [fp, #-8]
80027534:	e1a03103 	lsl	r3, r3, #2
80027538:	e0823003 	add	r3, r2, r3
8002753c:	e1a01003 	mov	r1, r3
80027540:	ebfffb83 	bl	80026354 <fetchstr>
80027544:	e1a03000 	mov	r3, r0
80027548:	e3530000 	cmp	r3, #0
8002754c:	aa000001 	bge	80027558 <sys_exec+0x128>
80027550:	e3e03000 	mvn	r3, #0
80027554:	ea000003 	b	80027568 <sys_exec+0x138>
80027558:	e51b3008 	ldr	r3, [fp, #-8]
8002755c:	e2833001 	add	r3, r3, #1
80027560:	e50b3008 	str	r3, [fp, #-8]
80027564:	eaffffcb 	b	80027498 <sys_exec+0x68>
80027568:	e1a00003 	mov	r0, r3
8002756c:	e24bd004 	sub	sp, fp, #4
80027570:	e8bd8800 	pop	{fp, pc}

80027574 <sys_pipe>:
80027574:	e92d4800 	push	{fp, lr}
80027578:	e28db004 	add	fp, sp, #4
8002757c:	e24dd018 	sub	sp, sp, #24
80027580:	e24b3010 	sub	r3, fp, #16
80027584:	e3a02008 	mov	r2, #8
80027588:	e1a01003 	mov	r1, r3
8002758c:	e3a00000 	mov	r0, #0
80027590:	ebfffbb8 	bl	80026478 <argptr>
80027594:	e1a03000 	mov	r3, r0
80027598:	e3530000 	cmp	r3, #0
8002759c:	aa000001 	bge	800275a8 <sys_pipe+0x34>
800275a0:	e3e03000 	mvn	r3, #0
800275a4:	ea000032 	b	80027674 <sys_pipe+0x100>
800275a8:	e24b2018 	sub	r2, fp, #24
800275ac:	e24b3014 	sub	r3, fp, #20
800275b0:	e1a01002 	mov	r1, r2
800275b4:	e1a00003 	mov	r0, r3
800275b8:	ebfff4cb 	bl	800248ec <pipealloc>
800275bc:	e1a03000 	mov	r3, r0
800275c0:	e3530000 	cmp	r3, #0
800275c4:	aa000001 	bge	800275d0 <sys_pipe+0x5c>
800275c8:	e3e03000 	mvn	r3, #0
800275cc:	ea000028 	b	80027674 <sys_pipe+0x100>
800275d0:	e3e03000 	mvn	r3, #0
800275d4:	e50b3008 	str	r3, [fp, #-8]
800275d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800275dc:	e1a00003 	mov	r0, r3
800275e0:	ebfffc4f 	bl	80026724 <fdalloc>
800275e4:	e50b0008 	str	r0, [fp, #-8]
800275e8:	e51b3008 	ldr	r3, [fp, #-8]
800275ec:	e3530000 	cmp	r3, #0
800275f0:	ba000006 	blt	80027610 <sys_pipe+0x9c>
800275f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800275f8:	e1a00003 	mov	r0, r3
800275fc:	ebfffc48 	bl	80026724 <fdalloc>
80027600:	e50b000c 	str	r0, [fp, #-12]
80027604:	e51b300c 	ldr	r3, [fp, #-12]
80027608:	e3530000 	cmp	r3, #0
8002760c:	aa000010 	bge	80027654 <sys_pipe+0xe0>
80027610:	e51b3008 	ldr	r3, [fp, #-8]
80027614:	e3530000 	cmp	r3, #0
80027618:	ba000005 	blt	80027634 <sys_pipe+0xc0>
8002761c:	e59f305c 	ldr	r3, [pc, #92]	@ 80027680 <sys_pipe+0x10c>
80027620:	e5933000 	ldr	r3, [r3]
80027624:	e51b2008 	ldr	r2, [fp, #-8]
80027628:	e282200a 	add	r2, r2, #10
8002762c:	e3a01000 	mov	r1, #0
80027630:	e7831102 	str	r1, [r3, r2, lsl #2]
80027634:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027638:	e1a00003 	mov	r0, r3
8002763c:	ebffec0c 	bl	80022674 <fileclose>
80027640:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027644:	e1a00003 	mov	r0, r3
80027648:	ebffec09 	bl	80022674 <fileclose>
8002764c:	e3e03000 	mvn	r3, #0
80027650:	ea000007 	b	80027674 <sys_pipe+0x100>
80027654:	e51b3010 	ldr	r3, [fp, #-16]
80027658:	e51b2008 	ldr	r2, [fp, #-8]
8002765c:	e5832000 	str	r2, [r3]
80027660:	e51b3010 	ldr	r3, [fp, #-16]
80027664:	e2833004 	add	r3, r3, #4
80027668:	e51b200c 	ldr	r2, [fp, #-12]
8002766c:	e5832000 	str	r2, [r3]
80027670:	e3a03000 	mov	r3, #0
80027674:	e1a00003 	mov	r0, r3
80027678:	e24bd004 	sub	sp, fp, #4
8002767c:	e8bd8800 	pop	{fp, pc}
80027680:	800afb50 	.word	0x800afb50

80027684 <sys_fork>:
80027684:	e92d4800 	push	{fp, lr}
80027688:	e28db004 	add	fp, sp, #4
8002768c:	ebfff795 	bl	800254e8 <fork>
80027690:	e1a03000 	mov	r3, r0
80027694:	e1a00003 	mov	r0, r3
80027698:	e8bd8800 	pop	{fp, pc}

8002769c <sys_exit>:
8002769c:	e92d4800 	push	{fp, lr}
800276a0:	e28db004 	add	fp, sp, #4
800276a4:	ebfff803 	bl	800256b8 <exit>
800276a8:	e3a03000 	mov	r3, #0
800276ac:	e1a00003 	mov	r0, r3
800276b0:	e8bd8800 	pop	{fp, pc}

800276b4 <sys_wait>:
800276b4:	e92d4800 	push	{fp, lr}
800276b8:	e28db004 	add	fp, sp, #4
800276bc:	ebfff85f 	bl	80025840 <wait>
800276c0:	e1a03000 	mov	r3, r0
800276c4:	e1a00003 	mov	r0, r3
800276c8:	e8bd8800 	pop	{fp, pc}

800276cc <sys_kill>:
800276cc:	e92d4800 	push	{fp, lr}
800276d0:	e28db004 	add	fp, sp, #4
800276d4:	e24dd008 	sub	sp, sp, #8
800276d8:	e24b3008 	sub	r3, fp, #8
800276dc:	e1a01003 	mov	r1, r3
800276e0:	e3a00000 	mov	r0, #0
800276e4:	ebfffb48 	bl	8002640c <argint>
800276e8:	e1a03000 	mov	r3, r0
800276ec:	e3530000 	cmp	r3, #0
800276f0:	aa000001 	bge	800276fc <sys_kill+0x30>
800276f4:	e3e03000 	mvn	r3, #0
800276f8:	ea000003 	b	8002770c <sys_kill+0x40>
800276fc:	e51b3008 	ldr	r3, [fp, #-8]
80027700:	e1a00003 	mov	r0, r3
80027704:	ebfff9d6 	bl	80025e64 <kill>
80027708:	e1a03000 	mov	r3, r0
8002770c:	e1a00003 	mov	r0, r3
80027710:	e24bd004 	sub	sp, fp, #4
80027714:	e8bd8800 	pop	{fp, pc}

80027718 <sys_getpid>:
80027718:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002771c:	e28db000 	add	fp, sp, #0
80027720:	e59f3014 	ldr	r3, [pc, #20]	@ 8002773c <sys_getpid+0x24>
80027724:	e5933000 	ldr	r3, [r3]
80027728:	e5933010 	ldr	r3, [r3, #16]
8002772c:	e1a00003 	mov	r0, r3
80027730:	e28bd000 	add	sp, fp, #0
80027734:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027738:	e12fff1e 	bx	lr
8002773c:	800afb50 	.word	0x800afb50

80027740 <sys_sbrk>:
80027740:	e92d4800 	push	{fp, lr}
80027744:	e28db004 	add	fp, sp, #4
80027748:	e24dd008 	sub	sp, sp, #8
8002774c:	e24b300c 	sub	r3, fp, #12
80027750:	e1a01003 	mov	r1, r3
80027754:	e3a00000 	mov	r0, #0
80027758:	ebfffb2b 	bl	8002640c <argint>
8002775c:	e1a03000 	mov	r3, r0
80027760:	e3530000 	cmp	r3, #0
80027764:	aa000001 	bge	80027770 <sys_sbrk+0x30>
80027768:	e3e03000 	mvn	r3, #0
8002776c:	ea00000c 	b	800277a4 <sys_sbrk+0x64>
80027770:	e59f3038 	ldr	r3, [pc, #56]	@ 800277b0 <sys_sbrk+0x70>
80027774:	e5933000 	ldr	r3, [r3]
80027778:	e5933000 	ldr	r3, [r3]
8002777c:	e50b3008 	str	r3, [fp, #-8]
80027780:	e51b300c 	ldr	r3, [fp, #-12]
80027784:	e1a00003 	mov	r0, r3
80027788:	ebfff71b 	bl	800253fc <growproc>
8002778c:	e1a03000 	mov	r3, r0
80027790:	e3530000 	cmp	r3, #0
80027794:	aa000001 	bge	800277a0 <sys_sbrk+0x60>
80027798:	e3e03000 	mvn	r3, #0
8002779c:	ea000000 	b	800277a4 <sys_sbrk+0x64>
800277a0:	e51b3008 	ldr	r3, [fp, #-8]
800277a4:	e1a00003 	mov	r0, r3
800277a8:	e24bd004 	sub	sp, fp, #4
800277ac:	e8bd8800 	pop	{fp, pc}
800277b0:	800afb50 	.word	0x800afb50

800277b4 <sys_sleep>:
800277b4:	e92d4800 	push	{fp, lr}
800277b8:	e28db004 	add	fp, sp, #4
800277bc:	e24dd008 	sub	sp, sp, #8
800277c0:	e24b300c 	sub	r3, fp, #12
800277c4:	e1a01003 	mov	r1, r3
800277c8:	e3a00000 	mov	r0, #0
800277cc:	ebfffb0e 	bl	8002640c <argint>
800277d0:	e1a03000 	mov	r3, r0
800277d4:	e3530000 	cmp	r3, #0
800277d8:	aa000001 	bge	800277e4 <sys_sleep+0x30>
800277dc:	e3e03000 	mvn	r3, #0
800277e0:	ea000019 	b	8002784c <sys_sleep+0x98>
800277e4:	e59f006c 	ldr	r0, [pc, #108]	@ 80027858 <sys_sleep+0xa4>
800277e8:	ebfffa96 	bl	80026248 <acquire>
800277ec:	e59f3068 	ldr	r3, [pc, #104]	@ 8002785c <sys_sleep+0xa8>
800277f0:	e5933000 	ldr	r3, [r3]
800277f4:	e50b3008 	str	r3, [fp, #-8]
800277f8:	e59f0058 	ldr	r0, [pc, #88]	@ 80027858 <sys_sleep+0xa4>
800277fc:	ebfffa9c 	bl	80026274 <release>
80027800:	e59f0058 	ldr	r0, [pc, #88]	@ 80027860 <sys_sleep+0xac>
80027804:	ebfffa8f 	bl	80026248 <acquire>
80027808:	e59f3054 	ldr	r3, [pc, #84]	@ 80027864 <sys_sleep+0xb0>
8002780c:	e5933000 	ldr	r3, [r3]
80027810:	e51b200c 	ldr	r2, [fp, #-12]
80027814:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80027818:	e51b300c 	ldr	r3, [fp, #-12]
8002781c:	e1a02003 	mov	r2, r3
80027820:	e51b3008 	ldr	r3, [fp, #-8]
80027824:	e0822003 	add	r2, r2, r3
80027828:	e59f3034 	ldr	r3, [pc, #52]	@ 80027864 <sys_sleep+0xb0>
8002782c:	e5933000 	ldr	r3, [r3]
80027830:	e5832090 	str	r2, [r3, #144]	@ 0x90
80027834:	e59f1024 	ldr	r1, [pc, #36]	@ 80027860 <sys_sleep+0xac>
80027838:	e59f001c 	ldr	r0, [pc, #28]	@ 8002785c <sys_sleep+0xa8>
8002783c:	ebfff906 	bl	80025c5c <sleep>
80027840:	e59f0018 	ldr	r0, [pc, #24]	@ 80027860 <sys_sleep+0xac>
80027844:	ebfffa8a 	bl	80026274 <release>
80027848:	e3a03000 	mov	r3, #0
8002784c:	e1a00003 	mov	r0, r3
80027850:	e24bd004 	sub	sp, fp, #4
80027854:	e8bd8800 	pop	{fp, pc}
80027858:	800afc14 	.word	0x800afc14
8002785c:	800afc48 	.word	0x800afc48
80027860:	800ad618 	.word	0x800ad618
80027864:	800afb50 	.word	0x800afb50

80027868 <sys_proclist>:
80027868:	e92d4800 	push	{fp, lr}
8002786c:	e28db004 	add	fp, sp, #4
80027870:	e24dd008 	sub	sp, sp, #8
80027874:	e24b3008 	sub	r3, fp, #8
80027878:	e1a01003 	mov	r1, r3
8002787c:	e3a00000 	mov	r0, #0
80027880:	ebfffae1 	bl	8002640c <argint>
80027884:	e1a03000 	mov	r3, r0
80027888:	e3530000 	cmp	r3, #0
8002788c:	ba000009 	blt	800278b8 <sys_proclist+0x50>
80027890:	e51b3008 	ldr	r3, [fp, #-8]
80027894:	e1a03283 	lsl	r3, r3, #5
80027898:	e1a02003 	mov	r2, r3
8002789c:	e24b300c 	sub	r3, fp, #12
800278a0:	e1a01003 	mov	r1, r3
800278a4:	e3a00001 	mov	r0, #1
800278a8:	ebfffaf2 	bl	80026478 <argptr>
800278ac:	e1a03000 	mov	r3, r0
800278b0:	e3530000 	cmp	r3, #0
800278b4:	aa000001 	bge	800278c0 <sys_proclist+0x58>
800278b8:	e3e03000 	mvn	r3, #0
800278bc:	ea000005 	b	800278d8 <sys_proclist+0x70>
800278c0:	e51b3008 	ldr	r3, [fp, #-8]
800278c4:	e51b200c 	ldr	r2, [fp, #-12]
800278c8:	e1a01002 	mov	r1, r2
800278cc:	e1a00003 	mov	r0, r3
800278d0:	ebfff5df 	bl	80025054 <proclist>
800278d4:	e1a03000 	mov	r3, r0
800278d8:	e1a00003 	mov	r0, r3
800278dc:	e24bd004 	sub	sp, fp, #4
800278e0:	e8bd8800 	pop	{fp, pc}

800278e4 <sys_uptime>:
800278e4:	e92d4800 	push	{fp, lr}
800278e8:	e28db004 	add	fp, sp, #4
800278ec:	e24dd008 	sub	sp, sp, #8
800278f0:	e59f0024 	ldr	r0, [pc, #36]	@ 8002791c <sys_uptime+0x38>
800278f4:	ebfffa53 	bl	80026248 <acquire>
800278f8:	e59f3020 	ldr	r3, [pc, #32]	@ 80027920 <sys_uptime+0x3c>
800278fc:	e5933000 	ldr	r3, [r3]
80027900:	e50b3008 	str	r3, [fp, #-8]
80027904:	e59f0010 	ldr	r0, [pc, #16]	@ 8002791c <sys_uptime+0x38>
80027908:	ebfffa59 	bl	80026274 <release>
8002790c:	e51b3008 	ldr	r3, [fp, #-8]
80027910:	e1a00003 	mov	r0, r3
80027914:	e24bd004 	sub	sp, fp, #4
80027918:	e8bd8800 	pop	{fp, pc}
8002791c:	800afc14 	.word	0x800afc14
80027920:	800afc48 	.word	0x800afc48

80027924 <sys_settickets>:
80027924:	e92d4800 	push	{fp, lr}
80027928:	e28db004 	add	fp, sp, #4
8002792c:	e24dd010 	sub	sp, sp, #16
80027930:	e24b300c 	sub	r3, fp, #12
80027934:	e1a01003 	mov	r1, r3
80027938:	e3a00000 	mov	r0, #0
8002793c:	ebfffab2 	bl	8002640c <argint>
80027940:	e1a03000 	mov	r3, r0
80027944:	e3530000 	cmp	r3, #0
80027948:	ba000006 	blt	80027968 <sys_settickets+0x44>
8002794c:	e24b3010 	sub	r3, fp, #16
80027950:	e1a01003 	mov	r1, r3
80027954:	e3a00001 	mov	r0, #1
80027958:	ebfffaab 	bl	8002640c <argint>
8002795c:	e1a03000 	mov	r3, r0
80027960:	e3530000 	cmp	r3, #0
80027964:	aa000001 	bge	80027970 <sys_settickets+0x4c>
80027968:	e3e03000 	mvn	r3, #0
8002796c:	ea00001f 	b	800279f0 <sys_settickets+0xcc>
80027970:	e51b3010 	ldr	r3, [fp, #-16]
80027974:	e3530000 	cmp	r3, #0
80027978:	ca000001 	bgt	80027984 <sys_settickets+0x60>
8002797c:	e3e03000 	mvn	r3, #0
80027980:	ea00001a 	b	800279f0 <sys_settickets+0xcc>
80027984:	e59f0070 	ldr	r0, [pc, #112]	@ 800279fc <sys_settickets+0xd8>
80027988:	ebfffa2e 	bl	80026248 <acquire>
8002798c:	e59f306c 	ldr	r3, [pc, #108]	@ 80027a00 <sys_settickets+0xdc>
80027990:	e50b3008 	str	r3, [fp, #-8]
80027994:	ea00000e 	b	800279d4 <sys_settickets+0xb0>
80027998:	e51b3008 	ldr	r3, [fp, #-8]
8002799c:	e5932010 	ldr	r2, [r3, #16]
800279a0:	e51b300c 	ldr	r3, [fp, #-12]
800279a4:	e1520003 	cmp	r2, r3
800279a8:	1a000006 	bne	800279c8 <sys_settickets+0xa4>
800279ac:	e51b2010 	ldr	r2, [fp, #-16]
800279b0:	e51b3008 	ldr	r3, [fp, #-8]
800279b4:	e5832080 	str	r2, [r3, #128]	@ 0x80
800279b8:	e59f003c 	ldr	r0, [pc, #60]	@ 800279fc <sys_settickets+0xd8>
800279bc:	ebfffa2c 	bl	80026274 <release>
800279c0:	e3a03000 	mov	r3, #0
800279c4:	ea000009 	b	800279f0 <sys_settickets+0xcc>
800279c8:	e51b3008 	ldr	r3, [fp, #-8]
800279cc:	e2833094 	add	r3, r3, #148	@ 0x94
800279d0:	e50b3008 	str	r3, [fp, #-8]
800279d4:	e51b3008 	ldr	r3, [fp, #-8]
800279d8:	e59f2024 	ldr	r2, [pc, #36]	@ 80027a04 <sys_settickets+0xe0>
800279dc:	e1530002 	cmp	r3, r2
800279e0:	3affffec 	bcc	80027998 <sys_settickets+0x74>
800279e4:	e59f0010 	ldr	r0, [pc, #16]	@ 800279fc <sys_settickets+0xd8>
800279e8:	ebfffa21 	bl	80026274 <release>
800279ec:	e3e03000 	mvn	r3, #0
800279f0:	e1a00003 	mov	r0, r3
800279f4:	e24bd004 	sub	sp, fp, #4
800279f8:	e8bd8800 	pop	{fp, pc}
800279fc:	800ad618 	.word	0x800ad618
80027a00:	800ad64c 	.word	0x800ad64c
80027a04:	800afb4c 	.word	0x800afb4c

80027a08 <sys_srand>:
80027a08:	e92d4800 	push	{fp, lr}
80027a0c:	e28db004 	add	fp, sp, #4
80027a10:	e24dd008 	sub	sp, sp, #8
80027a14:	e24b3008 	sub	r3, fp, #8
80027a18:	e1a01003 	mov	r1, r3
80027a1c:	e3a00000 	mov	r0, #0
80027a20:	ebfffa79 	bl	8002640c <argint>
80027a24:	e1a03000 	mov	r3, r0
80027a28:	e3530000 	cmp	r3, #0
80027a2c:	aa000001 	bge	80027a38 <sys_srand+0x30>
80027a30:	e3e03000 	mvn	r3, #0
80027a34:	ea000004 	b	80027a4c <sys_srand+0x44>
80027a38:	e51b3008 	ldr	r3, [fp, #-8]
80027a3c:	e1a02003 	mov	r2, r3
80027a40:	e59f3010 	ldr	r3, [pc, #16]	@ 80027a58 <sys_srand+0x50>
80027a44:	e5832000 	str	r2, [r3]
80027a48:	e3a03000 	mov	r3, #0
80027a4c:	e1a00003 	mov	r0, r3
80027a50:	e24bd004 	sub	sp, fp, #4
80027a54:	e8bd8800 	pop	{fp, pc}
80027a58:	800ad614 	.word	0x800ad614

80027a5c <sys_getpinfo>:
80027a5c:	e92d4800 	push	{fp, lr}
80027a60:	e28db004 	add	fp, sp, #4
80027a64:	e24dd010 	sub	sp, sp, #16
80027a68:	e24b3010 	sub	r3, fp, #16
80027a6c:	e3a02c05 	mov	r2, #1280	@ 0x500
80027a70:	e1a01003 	mov	r1, r3
80027a74:	e3a00000 	mov	r0, #0
80027a78:	ebfffa7e 	bl	80026478 <argptr>
80027a7c:	e1a03000 	mov	r3, r0
80027a80:	e3530000 	cmp	r3, #0
80027a84:	aa000001 	bge	80027a90 <sys_getpinfo+0x34>
80027a88:	e3e03000 	mvn	r3, #0
80027a8c:	ea000035 	b	80027b68 <sys_getpinfo+0x10c>
80027a90:	e59f00dc 	ldr	r0, [pc, #220]	@ 80027b74 <sys_getpinfo+0x118>
80027a94:	ebfff9eb 	bl	80026248 <acquire>
80027a98:	e3a03000 	mov	r3, #0
80027a9c:	e50b300c 	str	r3, [fp, #-12]
80027aa0:	e59f30d0 	ldr	r3, [pc, #208]	@ 80027b78 <sys_getpinfo+0x11c>
80027aa4:	e50b3008 	str	r3, [fp, #-8]
80027aa8:	ea000027 	b	80027b4c <sys_getpinfo+0xf0>
80027aac:	e51b3008 	ldr	r3, [fp, #-8]
80027ab0:	e5d3300c 	ldrb	r3, [r3, #12]
80027ab4:	e3530000 	cmp	r3, #0
80027ab8:	13a03001 	movne	r3, #1
80027abc:	03a03000 	moveq	r3, #0
80027ac0:	e6ef2073 	uxtb	r2, r3
80027ac4:	e51b3010 	ldr	r3, [fp, #-16]
80027ac8:	e1a01002 	mov	r1, r2
80027acc:	e51b200c 	ldr	r2, [fp, #-12]
80027ad0:	e7831102 	str	r1, [r3, r2, lsl #2]
80027ad4:	e51b3010 	ldr	r3, [fp, #-16]
80027ad8:	e51b2008 	ldr	r2, [fp, #-8]
80027adc:	e5921010 	ldr	r1, [r2, #16]
80027ae0:	e51b200c 	ldr	r2, [fp, #-12]
80027ae4:	e2822040 	add	r2, r2, #64	@ 0x40
80027ae8:	e7831102 	str	r1, [r3, r2, lsl #2]
80027aec:	e51b3010 	ldr	r3, [fp, #-16]
80027af0:	e51b2008 	ldr	r2, [fp, #-8]
80027af4:	e5921080 	ldr	r1, [r2, #128]	@ 0x80
80027af8:	e51b200c 	ldr	r2, [fp, #-12]
80027afc:	e2822080 	add	r2, r2, #128	@ 0x80
80027b00:	e7831102 	str	r1, [r3, r2, lsl #2]
80027b04:	e51b3010 	ldr	r3, [fp, #-16]
80027b08:	e51b2008 	ldr	r2, [fp, #-8]
80027b0c:	e5921088 	ldr	r1, [r2, #136]	@ 0x88
80027b10:	e51b200c 	ldr	r2, [fp, #-12]
80027b14:	e28220c0 	add	r2, r2, #192	@ 0xc0
80027b18:	e7831102 	str	r1, [r3, r2, lsl #2]
80027b1c:	e51b3010 	ldr	r3, [fp, #-16]
80027b20:	e51b2008 	ldr	r2, [fp, #-8]
80027b24:	e5921084 	ldr	r1, [r2, #132]	@ 0x84
80027b28:	e51b200c 	ldr	r2, [fp, #-12]
80027b2c:	e2822c01 	add	r2, r2, #256	@ 0x100
80027b30:	e7831102 	str	r1, [r3, r2, lsl #2]
80027b34:	e51b3008 	ldr	r3, [fp, #-8]
80027b38:	e2833094 	add	r3, r3, #148	@ 0x94
80027b3c:	e50b3008 	str	r3, [fp, #-8]
80027b40:	e51b300c 	ldr	r3, [fp, #-12]
80027b44:	e2833001 	add	r3, r3, #1
80027b48:	e50b300c 	str	r3, [fp, #-12]
80027b4c:	e51b3008 	ldr	r3, [fp, #-8]
80027b50:	e59f2024 	ldr	r2, [pc, #36]	@ 80027b7c <sys_getpinfo+0x120>
80027b54:	e1530002 	cmp	r3, r2
80027b58:	3affffd3 	bcc	80027aac <sys_getpinfo+0x50>
80027b5c:	e59f0010 	ldr	r0, [pc, #16]	@ 80027b74 <sys_getpinfo+0x118>
80027b60:	ebfff9c3 	bl	80026274 <release>
80027b64:	e3a03000 	mov	r3, #0
80027b68:	e1a00003 	mov	r0, r3
80027b6c:	e24bd004 	sub	sp, fp, #4
80027b70:	e8bd8800 	pop	{fp, pc}
80027b74:	800ad618 	.word	0x800ad618
80027b78:	800ad64c 	.word	0x800ad64c
80027b7c:	800afb4c 	.word	0x800afb4c

80027b80 <trap_swi>:
80027b80:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027b84:	e14f2000 	mrs	r2, SPSR
80027b88:	e92d0004 	stmfd	sp!, {r2}
80027b8c:	e92d4000 	stmfd	sp!, {lr}
80027b90:	e94d6000 	stmdb	sp, {sp, lr}^
80027b94:	e24dd008 	sub	sp, sp, #8
80027b98:	e1a0000d 	mov	r0, sp
80027b9c:	eb000054 	bl	80027cf4 <swi_handler>

80027ba0 <trapret>:
80027ba0:	e8dd6000 	ldm	sp, {sp, lr}^
80027ba4:	e28dd008 	add	sp, sp, #8
80027ba8:	e8bd4000 	ldmfd	sp!, {lr}
80027bac:	e8bd0004 	ldmfd	sp!, {r2}
80027bb0:	e16ff002 	msr	SPSR_fsxc, r2
80027bb4:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027bb8 <trap_irq>:
80027bb8:	e24ee004 	sub	lr, lr, #4
80027bbc:	e92d4007 	push	{r0, r1, r2, lr}
80027bc0:	e14f1000 	mrs	r1, SPSR
80027bc4:	e1a0000d 	mov	r0, sp
80027bc8:	e28dd010 	add	sp, sp, #16
80027bcc:	e10f2000 	mrs	r2, CPSR
80027bd0:	e3c2201f 	bic	r2, r2, #31
80027bd4:	e3822013 	orr	r2, r2, #19
80027bd8:	e12ff002 	msr	CPSR_fsxc, r2
80027bdc:	e590200c 	ldr	r2, [r0, #12]
80027be0:	e92d0004 	stmfd	sp!, {r2}
80027be4:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027be8:	e8900038 	ldm	r0, {r3, r4, r5}
80027bec:	e92d0038 	push	{r3, r4, r5}
80027bf0:	e92d0002 	stmfd	sp!, {r1}
80027bf4:	e92d4000 	stmfd	sp!, {lr}
80027bf8:	e94d6000 	stmdb	sp, {sp, lr}^
80027bfc:	e24dd008 	sub	sp, sp, #8
80027c00:	e1a0000d 	mov	r0, sp
80027c04:	eb000047 	bl	80027d28 <irq_handler>
80027c08:	eaffffe4 	b	80027ba0 <trapret>

80027c0c <trap_reset>:
80027c0c:	e3a0e000 	mov	lr, #0
80027c10:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027c14:	e14f2000 	mrs	r2, SPSR
80027c18:	e92d0004 	stmfd	sp!, {r2}
80027c1c:	e92d4000 	stmfd	sp!, {lr}
80027c20:	e94d6000 	stmdb	sp, {sp, lr}^
80027c24:	e24dd008 	sub	sp, sp, #8
80027c28:	e1a0000d 	mov	r0, sp
80027c2c:	eb00004f 	bl	80027d70 <reset_handler>
80027c30:	eafffffe 	b	80027c30 <trap_reset+0x24>

80027c34 <trap_und>:
80027c34:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027c38:	e14f2000 	mrs	r2, SPSR
80027c3c:	e92d0004 	stmfd	sp!, {r2}
80027c40:	e92d4000 	stmfd	sp!, {lr}
80027c44:	e94d6000 	stmdb	sp, {sp, lr}^
80027c48:	e24dd008 	sub	sp, sp, #8
80027c4c:	e1a0000d 	mov	r0, sp
80027c50:	eb000054 	bl	80027da8 <und_handler>
80027c54:	eafffffe 	b	80027c54 <trap_und+0x20>

80027c58 <trap_iabort>:
80027c58:	e24ee004 	sub	lr, lr, #4
80027c5c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027c60:	e14f2000 	mrs	r2, SPSR
80027c64:	e92d0004 	stmfd	sp!, {r2}
80027c68:	e92d4000 	stmfd	sp!, {lr}
80027c6c:	e94d6000 	stmdb	sp, {sp, lr}^
80027c70:	e24dd008 	sub	sp, sp, #8
80027c74:	e1a0000d 	mov	r0, sp
80027c78:	eb00006d 	bl	80027e34 <iabort_handler>
80027c7c:	eafffffe 	b	80027c7c <trap_iabort+0x24>

80027c80 <trap_dabort>:
80027c80:	e24ee008 	sub	lr, lr, #8
80027c84:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027c88:	e14f2000 	mrs	r2, SPSR
80027c8c:	e92d0004 	stmfd	sp!, {r2}
80027c90:	e92d4000 	stmfd	sp!, {lr}
80027c94:	e94d6000 	stmdb	sp, {sp, lr}^
80027c98:	e24dd008 	sub	sp, sp, #8
80027c9c:	e1a0000d 	mov	r0, sp
80027ca0:	eb00004e 	bl	80027de0 <dabort_handler>
80027ca4:	eafffffe 	b	80027ca4 <trap_dabort+0x24>

80027ca8 <trap_na>:
80027ca8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027cac:	e14f2000 	mrs	r2, SPSR
80027cb0:	e92d0004 	stmfd	sp!, {r2}
80027cb4:	e92d4000 	stmfd	sp!, {lr}
80027cb8:	e94d6000 	stmdb	sp, {sp, lr}^
80027cbc:	e24dd008 	sub	sp, sp, #8
80027cc0:	e1a0000d 	mov	r0, sp
80027cc4:	eb00006d 	bl	80027e80 <na_handler>
80027cc8:	eafffffe 	b	80027cc8 <trap_na+0x20>

80027ccc <trap_fiq>:
80027ccc:	e24ee004 	sub	lr, lr, #4
80027cd0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027cd4:	e14f2000 	mrs	r2, SPSR
80027cd8:	e92d0004 	stmfd	sp!, {r2}
80027cdc:	e92d4000 	stmfd	sp!, {lr}
80027ce0:	e94d6000 	stmdb	sp, {sp, lr}^
80027ce4:	e24dd008 	sub	sp, sp, #8
80027ce8:	e1a0000d 	mov	r0, sp
80027cec:	eb000071 	bl	80027eb8 <fiq_handler>
80027cf0:	eafffffe 	b	80027cf0 <trap_fiq+0x24>

80027cf4 <swi_handler>:
80027cf4:	e92d4800 	push	{fp, lr}
80027cf8:	e28db004 	add	fp, sp, #4
80027cfc:	e24dd008 	sub	sp, sp, #8
80027d00:	e50b0008 	str	r0, [fp, #-8]
80027d04:	e59f3018 	ldr	r3, [pc, #24]	@ 80027d24 <swi_handler+0x30>
80027d08:	e5933000 	ldr	r3, [r3]
80027d0c:	e51b2008 	ldr	r2, [fp, #-8]
80027d10:	e5832018 	str	r2, [r3, #24]
80027d14:	ebfffa16 	bl	80026574 <syscall>
80027d18:	e1a00000 	nop			@ (mov r0, r0)
80027d1c:	e24bd004 	sub	sp, fp, #4
80027d20:	e8bd8800 	pop	{fp, pc}
80027d24:	800afb50 	.word	0x800afb50

80027d28 <irq_handler>:
80027d28:	e92d4800 	push	{fp, lr}
80027d2c:	e28db004 	add	fp, sp, #4
80027d30:	e24dd008 	sub	sp, sp, #8
80027d34:	e50b0008 	str	r0, [fp, #-8]
80027d38:	e59f302c 	ldr	r3, [pc, #44]	@ 80027d6c <irq_handler+0x44>
80027d3c:	e5933000 	ldr	r3, [r3]
80027d40:	e3530000 	cmp	r3, #0
80027d44:	0a000003 	beq	80027d58 <irq_handler+0x30>
80027d48:	e59f301c 	ldr	r3, [pc, #28]	@ 80027d6c <irq_handler+0x44>
80027d4c:	e5933000 	ldr	r3, [r3]
80027d50:	e51b2008 	ldr	r2, [fp, #-8]
80027d54:	e5832018 	str	r2, [r3, #24]
80027d58:	e51b0008 	ldr	r0, [fp, #-8]
80027d5c:	eb0004d9 	bl	800290c8 <pic_dispatch>
80027d60:	e1a00000 	nop			@ (mov r0, r0)
80027d64:	e24bd004 	sub	sp, fp, #4
80027d68:	e8bd8800 	pop	{fp, pc}
80027d6c:	800afb50 	.word	0x800afb50

80027d70 <reset_handler>:
80027d70:	e92d4800 	push	{fp, lr}
80027d74:	e28db004 	add	fp, sp, #4
80027d78:	e24dd008 	sub	sp, sp, #8
80027d7c:	e50b0008 	str	r0, [fp, #-8]
80027d80:	ebffe1ee 	bl	80020540 <cli>
80027d84:	e51b3008 	ldr	r3, [fp, #-8]
80027d88:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027d8c:	e1a01003 	mov	r1, r3
80027d90:	e59f000c 	ldr	r0, [pc, #12]	@ 80027da4 <reset_handler+0x34>
80027d94:	ebffe6be 	bl	80021894 <cprintf>
80027d98:	e1a00000 	nop			@ (mov r0, r0)
80027d9c:	e24bd004 	sub	sp, fp, #4
80027da0:	e8bd8800 	pop	{fp, pc}
80027da4:	80029c38 	.word	0x80029c38

80027da8 <und_handler>:
80027da8:	e92d4800 	push	{fp, lr}
80027dac:	e28db004 	add	fp, sp, #4
80027db0:	e24dd008 	sub	sp, sp, #8
80027db4:	e50b0008 	str	r0, [fp, #-8]
80027db8:	ebffe1e0 	bl	80020540 <cli>
80027dbc:	e51b3008 	ldr	r3, [fp, #-8]
80027dc0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027dc4:	e1a01003 	mov	r1, r3
80027dc8:	e59f000c 	ldr	r0, [pc, #12]	@ 80027ddc <und_handler+0x34>
80027dcc:	ebffe6b0 	bl	80021894 <cprintf>
80027dd0:	e1a00000 	nop			@ (mov r0, r0)
80027dd4:	e24bd004 	sub	sp, fp, #4
80027dd8:	e8bd8800 	pop	{fp, pc}
80027ddc:	80029c4c 	.word	0x80029c4c

80027de0 <dabort_handler>:
80027de0:	e92d4800 	push	{fp, lr}
80027de4:	e28db004 	add	fp, sp, #4
80027de8:	e24dd010 	sub	sp, sp, #16
80027dec:	e50b0010 	str	r0, [fp, #-16]
80027df0:	ebffe1d2 	bl	80020540 <cli>
80027df4:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027df8:	e50b3008 	str	r3, [fp, #-8]
80027dfc:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80027e00:	e50b300c 	str	r3, [fp, #-12]
80027e04:	e51b3010 	ldr	r3, [fp, #-16]
80027e08:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80027e0c:	e51b3008 	ldr	r3, [fp, #-8]
80027e10:	e51b200c 	ldr	r2, [fp, #-12]
80027e14:	e59f0014 	ldr	r0, [pc, #20]	@ 80027e30 <dabort_handler+0x50>
80027e18:	ebffe69d 	bl	80021894 <cprintf>
80027e1c:	e51b0010 	ldr	r0, [fp, #-16]
80027e20:	eb0000b3 	bl	800280f4 <dump_trapframe>
80027e24:	e1a00000 	nop			@ (mov r0, r0)
80027e28:	e24bd004 	sub	sp, fp, #4
80027e2c:	e8bd8800 	pop	{fp, pc}
80027e30:	80029c5c 	.word	0x80029c5c

80027e34 <iabort_handler>:
80027e34:	e92d4800 	push	{fp, lr}
80027e38:	e28db004 	add	fp, sp, #4
80027e3c:	e24dd010 	sub	sp, sp, #16
80027e40:	e50b0010 	str	r0, [fp, #-16]
80027e44:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027e48:	e50b3008 	str	r3, [fp, #-8]
80027e4c:	ebffe1bb 	bl	80020540 <cli>
80027e50:	e51b3010 	ldr	r3, [fp, #-16]
80027e54:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027e58:	e51b2008 	ldr	r2, [fp, #-8]
80027e5c:	e1a01003 	mov	r1, r3
80027e60:	e59f0014 	ldr	r0, [pc, #20]	@ 80027e7c <iabort_handler+0x48>
80027e64:	ebffe68a 	bl	80021894 <cprintf>
80027e68:	e51b0010 	ldr	r0, [fp, #-16]
80027e6c:	eb0000a0 	bl	800280f4 <dump_trapframe>
80027e70:	e1a00000 	nop			@ (mov r0, r0)
80027e74:	e24bd004 	sub	sp, fp, #4
80027e78:	e8bd8800 	pop	{fp, pc}
80027e7c:	80029c9c 	.word	0x80029c9c

80027e80 <na_handler>:
80027e80:	e92d4800 	push	{fp, lr}
80027e84:	e28db004 	add	fp, sp, #4
80027e88:	e24dd008 	sub	sp, sp, #8
80027e8c:	e50b0008 	str	r0, [fp, #-8]
80027e90:	ebffe1aa 	bl	80020540 <cli>
80027e94:	e51b3008 	ldr	r3, [fp, #-8]
80027e98:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027e9c:	e1a01003 	mov	r1, r3
80027ea0:	e59f000c 	ldr	r0, [pc, #12]	@ 80027eb4 <na_handler+0x34>
80027ea4:	ebffe67a 	bl	80021894 <cprintf>
80027ea8:	e1a00000 	nop			@ (mov r0, r0)
80027eac:	e24bd004 	sub	sp, fp, #4
80027eb0:	e8bd8800 	pop	{fp, pc}
80027eb4:	80029cc4 	.word	0x80029cc4

80027eb8 <fiq_handler>:
80027eb8:	e92d4800 	push	{fp, lr}
80027ebc:	e28db004 	add	fp, sp, #4
80027ec0:	e24dd008 	sub	sp, sp, #8
80027ec4:	e50b0008 	str	r0, [fp, #-8]
80027ec8:	ebffe19c 	bl	80020540 <cli>
80027ecc:	e51b3008 	ldr	r3, [fp, #-8]
80027ed0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027ed4:	e1a01003 	mov	r1, r3
80027ed8:	e59f000c 	ldr	r0, [pc, #12]	@ 80027eec <fiq_handler+0x34>
80027edc:	ebffe66c 	bl	80021894 <cprintf>
80027ee0:	e1a00000 	nop			@ (mov r0, r0)
80027ee4:	e24bd004 	sub	sp, fp, #4
80027ee8:	e8bd8800 	pop	{fp, pc}
80027eec:	80029cd4 	.word	0x80029cd4

80027ef0 <trap_init>:
80027ef0:	e92d4800 	push	{fp, lr}
80027ef4:	e28db004 	add	fp, sp, #4
80027ef8:	e24dd020 	sub	sp, sp, #32
80027efc:	e59f31c0 	ldr	r3, [pc, #448]	@ 800280c4 <trap_init+0x1d4>
80027f00:	e24bc020 	sub	ip, fp, #32
80027f04:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80027f08:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80027f0c:	e59f31b4 	ldr	r3, [pc, #436]	@ 800280c8 <trap_init+0x1d8>
80027f10:	e50b300c 	str	r3, [fp, #-12]
80027f14:	e59f31b0 	ldr	r3, [pc, #432]	@ 800280cc <trap_init+0x1dc>
80027f18:	e5933000 	ldr	r3, [r3]
80027f1c:	e3832018 	orr	r2, r3, #24
80027f20:	e51b300c 	ldr	r3, [fp, #-12]
80027f24:	e5832000 	str	r2, [r3]
80027f28:	e59f319c 	ldr	r3, [pc, #412]	@ 800280cc <trap_init+0x1dc>
80027f2c:	e5932000 	ldr	r2, [r3]
80027f30:	e51b300c 	ldr	r3, [fp, #-12]
80027f34:	e2833004 	add	r3, r3, #4
80027f38:	e3822018 	orr	r2, r2, #24
80027f3c:	e5832000 	str	r2, [r3]
80027f40:	e59f3184 	ldr	r3, [pc, #388]	@ 800280cc <trap_init+0x1dc>
80027f44:	e5932000 	ldr	r2, [r3]
80027f48:	e51b300c 	ldr	r3, [fp, #-12]
80027f4c:	e2833008 	add	r3, r3, #8
80027f50:	e3822018 	orr	r2, r2, #24
80027f54:	e5832000 	str	r2, [r3]
80027f58:	e59f316c 	ldr	r3, [pc, #364]	@ 800280cc <trap_init+0x1dc>
80027f5c:	e5932000 	ldr	r2, [r3]
80027f60:	e51b300c 	ldr	r3, [fp, #-12]
80027f64:	e283300c 	add	r3, r3, #12
80027f68:	e3822018 	orr	r2, r2, #24
80027f6c:	e5832000 	str	r2, [r3]
80027f70:	e59f3154 	ldr	r3, [pc, #340]	@ 800280cc <trap_init+0x1dc>
80027f74:	e5932000 	ldr	r2, [r3]
80027f78:	e51b300c 	ldr	r3, [fp, #-12]
80027f7c:	e2833010 	add	r3, r3, #16
80027f80:	e3822018 	orr	r2, r2, #24
80027f84:	e5832000 	str	r2, [r3]
80027f88:	e59f313c 	ldr	r3, [pc, #316]	@ 800280cc <trap_init+0x1dc>
80027f8c:	e5932000 	ldr	r2, [r3]
80027f90:	e51b300c 	ldr	r3, [fp, #-12]
80027f94:	e2833014 	add	r3, r3, #20
80027f98:	e3822018 	orr	r2, r2, #24
80027f9c:	e5832000 	str	r2, [r3]
80027fa0:	e59f3124 	ldr	r3, [pc, #292]	@ 800280cc <trap_init+0x1dc>
80027fa4:	e5932000 	ldr	r2, [r3]
80027fa8:	e51b300c 	ldr	r3, [fp, #-12]
80027fac:	e2833018 	add	r3, r3, #24
80027fb0:	e3822018 	orr	r2, r2, #24
80027fb4:	e5832000 	str	r2, [r3]
80027fb8:	e59f310c 	ldr	r3, [pc, #268]	@ 800280cc <trap_init+0x1dc>
80027fbc:	e5932000 	ldr	r2, [r3]
80027fc0:	e51b300c 	ldr	r3, [fp, #-12]
80027fc4:	e283301c 	add	r3, r3, #28
80027fc8:	e3822018 	orr	r2, r2, #24
80027fcc:	e5832000 	str	r2, [r3]
80027fd0:	e51b300c 	ldr	r3, [fp, #-12]
80027fd4:	e2833020 	add	r3, r3, #32
80027fd8:	e59f20f0 	ldr	r2, [pc, #240]	@ 800280d0 <trap_init+0x1e0>
80027fdc:	e5832000 	str	r2, [r3]
80027fe0:	e51b300c 	ldr	r3, [fp, #-12]
80027fe4:	e2833024 	add	r3, r3, #36	@ 0x24
80027fe8:	e59f20e4 	ldr	r2, [pc, #228]	@ 800280d4 <trap_init+0x1e4>
80027fec:	e5832000 	str	r2, [r3]
80027ff0:	e51b300c 	ldr	r3, [fp, #-12]
80027ff4:	e2833028 	add	r3, r3, #40	@ 0x28
80027ff8:	e59f20d8 	ldr	r2, [pc, #216]	@ 800280d8 <trap_init+0x1e8>
80027ffc:	e5832000 	str	r2, [r3]
80028000:	e51b300c 	ldr	r3, [fp, #-12]
80028004:	e283302c 	add	r3, r3, #44	@ 0x2c
80028008:	e59f20cc 	ldr	r2, [pc, #204]	@ 800280dc <trap_init+0x1ec>
8002800c:	e5832000 	str	r2, [r3]
80028010:	e51b300c 	ldr	r3, [fp, #-12]
80028014:	e2833030 	add	r3, r3, #48	@ 0x30
80028018:	e59f20c0 	ldr	r2, [pc, #192]	@ 800280e0 <trap_init+0x1f0>
8002801c:	e5832000 	str	r2, [r3]
80028020:	e51b300c 	ldr	r3, [fp, #-12]
80028024:	e2833034 	add	r3, r3, #52	@ 0x34
80028028:	e59f20b4 	ldr	r2, [pc, #180]	@ 800280e4 <trap_init+0x1f4>
8002802c:	e5832000 	str	r2, [r3]
80028030:	e51b300c 	ldr	r3, [fp, #-12]
80028034:	e2833038 	add	r3, r3, #56	@ 0x38
80028038:	e59f20a8 	ldr	r2, [pc, #168]	@ 800280e8 <trap_init+0x1f8>
8002803c:	e5832000 	str	r2, [r3]
80028040:	e51b300c 	ldr	r3, [fp, #-12]
80028044:	e283303c 	add	r3, r3, #60	@ 0x3c
80028048:	e59f209c 	ldr	r2, [pc, #156]	@ 800280ec <trap_init+0x1fc>
8002804c:	e5832000 	str	r2, [r3]
80028050:	e3a03000 	mov	r3, #0
80028054:	e50b3008 	str	r3, [fp, #-8]
80028058:	ea000012 	b	800280a8 <trap_init+0x1b8>
8002805c:	ebffe573 	bl	80021630 <alloc_page>
80028060:	e50b0010 	str	r0, [fp, #-16]
80028064:	e51b3010 	ldr	r3, [fp, #-16]
80028068:	e3530000 	cmp	r3, #0
8002806c:	1a000001 	bne	80028078 <trap_init+0x188>
80028070:	e59f0078 	ldr	r0, [pc, #120]	@ 800280f0 <trap_init+0x200>
80028074:	ebffe69e 	bl	80021af4 <panic>
80028078:	e51b3008 	ldr	r3, [fp, #-8]
8002807c:	e1a03103 	lsl	r3, r3, #2
80028080:	e2433004 	sub	r3, r3, #4
80028084:	e083300b 	add	r3, r3, fp
80028088:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
8002808c:	e51b2010 	ldr	r2, [fp, #-16]
80028090:	e1a01002 	mov	r1, r2
80028094:	e1a00003 	mov	r0, r3
80028098:	ebffe201 	bl	800208a4 <set_stk>
8002809c:	e51b3008 	ldr	r3, [fp, #-8]
800280a0:	e2833001 	add	r3, r3, #1
800280a4:	e50b3008 	str	r3, [fp, #-8]
800280a8:	e51b3008 	ldr	r3, [fp, #-8]
800280ac:	e3530003 	cmp	r3, #3
800280b0:	9affffe9 	bls	8002805c <trap_init+0x16c>
800280b4:	e1a00000 	nop			@ (mov r0, r0)
800280b8:	e1a00000 	nop			@ (mov r0, r0)
800280bc:	e24bd004 	sub	sp, fp, #4
800280c0:	e8bd8800 	pop	{fp, pc}
800280c4:	80029d0c 	.word	0x80029d0c
800280c8:	ffff0000 	.word	0xffff0000
800280cc:	80029e1c 	.word	0x80029e1c
800280d0:	80027c0c 	.word	0x80027c0c
800280d4:	80027c34 	.word	0x80027c34
800280d8:	80027b80 	.word	0x80027b80
800280dc:	80027c58 	.word	0x80027c58
800280e0:	80027c80 	.word	0x80027c80
800280e4:	80027ca8 	.word	0x80027ca8
800280e8:	80027bb8 	.word	0x80027bb8
800280ec:	80027ccc 	.word	0x80027ccc
800280f0:	80029ce4 	.word	0x80029ce4

800280f4 <dump_trapframe>:
800280f4:	e92d4800 	push	{fp, lr}
800280f8:	e28db004 	add	fp, sp, #4
800280fc:	e24dd008 	sub	sp, sp, #8
80028100:	e50b0008 	str	r0, [fp, #-8]
80028104:	e51b3008 	ldr	r3, [fp, #-8]
80028108:	e5933008 	ldr	r3, [r3, #8]
8002810c:	e1a01003 	mov	r1, r3
80028110:	e59f0138 	ldr	r0, [pc, #312]	@ 80028250 <dump_trapframe+0x15c>
80028114:	ebffe5de 	bl	80021894 <cprintf>
80028118:	e51b3008 	ldr	r3, [fp, #-8]
8002811c:	e593300c 	ldr	r3, [r3, #12]
80028120:	e1a01003 	mov	r1, r3
80028124:	e59f0128 	ldr	r0, [pc, #296]	@ 80028254 <dump_trapframe+0x160>
80028128:	ebffe5d9 	bl	80021894 <cprintf>
8002812c:	e51b3008 	ldr	r3, [fp, #-8]
80028130:	e5933010 	ldr	r3, [r3, #16]
80028134:	e1a01003 	mov	r1, r3
80028138:	e59f0118 	ldr	r0, [pc, #280]	@ 80028258 <dump_trapframe+0x164>
8002813c:	ebffe5d4 	bl	80021894 <cprintf>
80028140:	e51b3008 	ldr	r3, [fp, #-8]
80028144:	e5933014 	ldr	r3, [r3, #20]
80028148:	e1a01003 	mov	r1, r3
8002814c:	e59f0108 	ldr	r0, [pc, #264]	@ 8002825c <dump_trapframe+0x168>
80028150:	ebffe5cf 	bl	80021894 <cprintf>
80028154:	e51b3008 	ldr	r3, [fp, #-8]
80028158:	e5933018 	ldr	r3, [r3, #24]
8002815c:	e1a01003 	mov	r1, r3
80028160:	e59f00f8 	ldr	r0, [pc, #248]	@ 80028260 <dump_trapframe+0x16c>
80028164:	ebffe5ca 	bl	80021894 <cprintf>
80028168:	e51b3008 	ldr	r3, [fp, #-8]
8002816c:	e593301c 	ldr	r3, [r3, #28]
80028170:	e1a01003 	mov	r1, r3
80028174:	e59f00e8 	ldr	r0, [pc, #232]	@ 80028264 <dump_trapframe+0x170>
80028178:	ebffe5c5 	bl	80021894 <cprintf>
8002817c:	e51b3008 	ldr	r3, [fp, #-8]
80028180:	e5933020 	ldr	r3, [r3, #32]
80028184:	e1a01003 	mov	r1, r3
80028188:	e59f00d8 	ldr	r0, [pc, #216]	@ 80028268 <dump_trapframe+0x174>
8002818c:	ebffe5c0 	bl	80021894 <cprintf>
80028190:	e51b3008 	ldr	r3, [fp, #-8]
80028194:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80028198:	e1a01003 	mov	r1, r3
8002819c:	e59f00c8 	ldr	r0, [pc, #200]	@ 8002826c <dump_trapframe+0x178>
800281a0:	ebffe5bb 	bl	80021894 <cprintf>
800281a4:	e51b3008 	ldr	r3, [fp, #-8]
800281a8:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
800281ac:	e1a01003 	mov	r1, r3
800281b0:	e59f00b8 	ldr	r0, [pc, #184]	@ 80028270 <dump_trapframe+0x17c>
800281b4:	ebffe5b6 	bl	80021894 <cprintf>
800281b8:	e51b3008 	ldr	r3, [fp, #-8]
800281bc:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
800281c0:	e1a01003 	mov	r1, r3
800281c4:	e59f00a8 	ldr	r0, [pc, #168]	@ 80028274 <dump_trapframe+0x180>
800281c8:	ebffe5b1 	bl	80021894 <cprintf>
800281cc:	e51b3008 	ldr	r3, [fp, #-8]
800281d0:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
800281d4:	e1a01003 	mov	r1, r3
800281d8:	e59f0098 	ldr	r0, [pc, #152]	@ 80028278 <dump_trapframe+0x184>
800281dc:	ebffe5ac 	bl	80021894 <cprintf>
800281e0:	e51b3008 	ldr	r3, [fp, #-8]
800281e4:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800281e8:	e1a01003 	mov	r1, r3
800281ec:	e59f0088 	ldr	r0, [pc, #136]	@ 8002827c <dump_trapframe+0x188>
800281f0:	ebffe5a7 	bl	80021894 <cprintf>
800281f4:	e51b3008 	ldr	r3, [fp, #-8]
800281f8:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800281fc:	e1a01003 	mov	r1, r3
80028200:	e59f0078 	ldr	r0, [pc, #120]	@ 80028280 <dump_trapframe+0x18c>
80028204:	ebffe5a2 	bl	80021894 <cprintf>
80028208:	e51b3008 	ldr	r3, [fp, #-8]
8002820c:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80028210:	e1a01003 	mov	r1, r3
80028214:	e59f0068 	ldr	r0, [pc, #104]	@ 80028284 <dump_trapframe+0x190>
80028218:	ebffe59d 	bl	80021894 <cprintf>
8002821c:	e51b3008 	ldr	r3, [fp, #-8]
80028220:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80028224:	e1a01003 	mov	r1, r3
80028228:	e59f0058 	ldr	r0, [pc, #88]	@ 80028288 <dump_trapframe+0x194>
8002822c:	ebffe598 	bl	80021894 <cprintf>
80028230:	e51b3008 	ldr	r3, [fp, #-8]
80028234:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028238:	e1a01003 	mov	r1, r3
8002823c:	e59f0048 	ldr	r0, [pc, #72]	@ 8002828c <dump_trapframe+0x198>
80028240:	ebffe593 	bl	80021894 <cprintf>
80028244:	e1a00000 	nop			@ (mov r0, r0)
80028248:	e24bd004 	sub	sp, fp, #4
8002824c:	e8bd8800 	pop	{fp, pc}
80028250:	80029d1c 	.word	0x80029d1c
80028254:	80029d2c 	.word	0x80029d2c
80028258:	80029d3c 	.word	0x80029d3c
8002825c:	80029d4c 	.word	0x80029d4c
80028260:	80029d5c 	.word	0x80029d5c
80028264:	80029d6c 	.word	0x80029d6c
80028268:	80029d7c 	.word	0x80029d7c
8002826c:	80029d8c 	.word	0x80029d8c
80028270:	80029d9c 	.word	0x80029d9c
80028274:	80029dac 	.word	0x80029dac
80028278:	80029dbc 	.word	0x80029dbc
8002827c:	80029dcc 	.word	0x80029dcc
80028280:	80029ddc 	.word	0x80029ddc
80028284:	80029dec 	.word	0x80029dec
80028288:	80029dfc 	.word	0x80029dfc
8002828c:	80029e0c 	.word	0x80029e0c

80028290 <v2p>:
80028290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028294:	e28db000 	add	fp, sp, #0
80028298:	e24dd00c 	sub	sp, sp, #12
8002829c:	e50b0008 	str	r0, [fp, #-8]
800282a0:	e51b3008 	ldr	r3, [fp, #-8]
800282a4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800282a8:	e1a00003 	mov	r0, r3
800282ac:	e28bd000 	add	sp, fp, #0
800282b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800282b4:	e12fff1e 	bx	lr

800282b8 <p2v>:
800282b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800282bc:	e28db000 	add	fp, sp, #0
800282c0:	e24dd00c 	sub	sp, sp, #12
800282c4:	e50b0008 	str	r0, [fp, #-8]
800282c8:	e51b3008 	ldr	r3, [fp, #-8]
800282cc:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800282d0:	e1a00003 	mov	r0, r3
800282d4:	e28bd000 	add	sp, fp, #0
800282d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800282dc:	e12fff1e 	bx	lr

800282e0 <init_vmm>:
800282e0:	e92d4800 	push	{fp, lr}
800282e4:	e28db004 	add	fp, sp, #4
800282e8:	e59f1018 	ldr	r1, [pc, #24]	@ 80028308 <init_vmm+0x28>
800282ec:	e59f0018 	ldr	r0, [pc, #24]	@ 8002830c <init_vmm+0x2c>
800282f0:	ebfff7c2 	bl	80026200 <initlock>
800282f4:	e59f3010 	ldr	r3, [pc, #16]	@ 8002830c <init_vmm+0x2c>
800282f8:	e3a02000 	mov	r2, #0
800282fc:	e5832034 	str	r2, [r3, #52]	@ 0x34
80028300:	e1a00000 	nop			@ (mov r0, r0)
80028304:	e8bd8800 	pop	{fp, pc}
80028308:	80029e20 	.word	0x80029e20
8002830c:	800afb58 	.word	0x800afb58

80028310 <_kpt_free>:
80028310:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028314:	e28db000 	add	fp, sp, #0
80028318:	e24dd014 	sub	sp, sp, #20
8002831c:	e50b0010 	str	r0, [fp, #-16]
80028320:	e51b3010 	ldr	r3, [fp, #-16]
80028324:	e50b3008 	str	r3, [fp, #-8]
80028328:	e59f3024 	ldr	r3, [pc, #36]	@ 80028354 <_kpt_free+0x44>
8002832c:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80028330:	e51b3008 	ldr	r3, [fp, #-8]
80028334:	e5832000 	str	r2, [r3]
80028338:	e59f2014 	ldr	r2, [pc, #20]	@ 80028354 <_kpt_free+0x44>
8002833c:	e51b3008 	ldr	r3, [fp, #-8]
80028340:	e5823034 	str	r3, [r2, #52]	@ 0x34
80028344:	e1a00000 	nop			@ (mov r0, r0)
80028348:	e28bd000 	add	sp, fp, #0
8002834c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028350:	e12fff1e 	bx	lr
80028354:	800afb58 	.word	0x800afb58

80028358 <kpt_free>:
80028358:	e92d4800 	push	{fp, lr}
8002835c:	e28db004 	add	fp, sp, #4
80028360:	e24dd008 	sub	sp, sp, #8
80028364:	e50b0008 	str	r0, [fp, #-8]
80028368:	e51b3008 	ldr	r3, [fp, #-8]
8002836c:	e59f2034 	ldr	r2, [pc, #52]	@ 800283a8 <kpt_free+0x50>
80028370:	e1530002 	cmp	r3, r2
80028374:	9a000003 	bls	80028388 <kpt_free+0x30>
80028378:	e3a0100a 	mov	r1, #10
8002837c:	e51b0008 	ldr	r0, [fp, #-8]
80028380:	ebffe47e 	bl	80021580 <kfree>
80028384:	ea000005 	b	800283a0 <kpt_free+0x48>
80028388:	e59f001c 	ldr	r0, [pc, #28]	@ 800283ac <kpt_free+0x54>
8002838c:	ebfff7ad 	bl	80026248 <acquire>
80028390:	e51b0008 	ldr	r0, [fp, #-8]
80028394:	ebffffdd 	bl	80028310 <_kpt_free>
80028398:	e59f000c 	ldr	r0, [pc, #12]	@ 800283ac <kpt_free+0x54>
8002839c:	ebfff7b4 	bl	80026274 <release>
800283a0:	e24bd004 	sub	sp, fp, #4
800283a4:	e8bd8800 	pop	{fp, pc}
800283a8:	800fffff 	.word	0x800fffff
800283ac:	800afb58 	.word	0x800afb58

800283b0 <kpt_freerange>:
800283b0:	e92d4800 	push	{fp, lr}
800283b4:	e28db004 	add	fp, sp, #4
800283b8:	e24dd008 	sub	sp, sp, #8
800283bc:	e50b0008 	str	r0, [fp, #-8]
800283c0:	e50b100c 	str	r1, [fp, #-12]
800283c4:	ea000005 	b	800283e0 <kpt_freerange+0x30>
800283c8:	e51b3008 	ldr	r3, [fp, #-8]
800283cc:	e1a00003 	mov	r0, r3
800283d0:	ebffffce 	bl	80028310 <_kpt_free>
800283d4:	e51b3008 	ldr	r3, [fp, #-8]
800283d8:	e2833b01 	add	r3, r3, #1024	@ 0x400
800283dc:	e50b3008 	str	r3, [fp, #-8]
800283e0:	e51b2008 	ldr	r2, [fp, #-8]
800283e4:	e51b300c 	ldr	r3, [fp, #-12]
800283e8:	e1520003 	cmp	r2, r3
800283ec:	3afffff5 	bcc	800283c8 <kpt_freerange+0x18>
800283f0:	e1a00000 	nop			@ (mov r0, r0)
800283f4:	e1a00000 	nop			@ (mov r0, r0)
800283f8:	e24bd004 	sub	sp, fp, #4
800283fc:	e8bd8800 	pop	{fp, pc}

80028400 <kpt_alloc>:
80028400:	e92d4800 	push	{fp, lr}
80028404:	e28db004 	add	fp, sp, #4
80028408:	e24dd008 	sub	sp, sp, #8
8002840c:	e59f007c 	ldr	r0, [pc, #124]	@ 80028490 <kpt_alloc+0x90>
80028410:	ebfff78c 	bl	80026248 <acquire>
80028414:	e59f3074 	ldr	r3, [pc, #116]	@ 80028490 <kpt_alloc+0x90>
80028418:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002841c:	e50b3008 	str	r3, [fp, #-8]
80028420:	e51b3008 	ldr	r3, [fp, #-8]
80028424:	e3530000 	cmp	r3, #0
80028428:	0a000003 	beq	8002843c <kpt_alloc+0x3c>
8002842c:	e51b3008 	ldr	r3, [fp, #-8]
80028430:	e5933000 	ldr	r3, [r3]
80028434:	e59f2054 	ldr	r2, [pc, #84]	@ 80028490 <kpt_alloc+0x90>
80028438:	e5823034 	str	r3, [r2, #52]	@ 0x34
8002843c:	e59f004c 	ldr	r0, [pc, #76]	@ 80028490 <kpt_alloc+0x90>
80028440:	ebfff78b 	bl	80026274 <release>
80028444:	e51b3008 	ldr	r3, [fp, #-8]
80028448:	e3530000 	cmp	r3, #0
8002844c:	1a000007 	bne	80028470 <kpt_alloc+0x70>
80028450:	e3a0000a 	mov	r0, #10
80028454:	ebffe3f2 	bl	80021424 <kmalloc>
80028458:	e50b0008 	str	r0, [fp, #-8]
8002845c:	e51b3008 	ldr	r3, [fp, #-8]
80028460:	e3530000 	cmp	r3, #0
80028464:	1a000001 	bne	80028470 <kpt_alloc+0x70>
80028468:	e59f0024 	ldr	r0, [pc, #36]	@ 80028494 <kpt_alloc+0x94>
8002846c:	ebffe5a0 	bl	80021af4 <panic>
80028470:	e3a02b01 	mov	r2, #1024	@ 0x400
80028474:	e3a01000 	mov	r1, #0
80028478:	e51b0008 	ldr	r0, [fp, #-8]
8002847c:	ebffdedf 	bl	80020000 <memset>
80028480:	e51b3008 	ldr	r3, [fp, #-8]
80028484:	e1a00003 	mov	r0, r3
80028488:	e24bd004 	sub	sp, fp, #4
8002848c:	e8bd8800 	pop	{fp, pc}
80028490:	800afb58 	.word	0x800afb58
80028494:	80029e24 	.word	0x80029e24

80028498 <walkpgdir>:
80028498:	e92d4800 	push	{fp, lr}
8002849c:	e28db004 	add	fp, sp, #4
800284a0:	e24dd018 	sub	sp, sp, #24
800284a4:	e50b0010 	str	r0, [fp, #-16]
800284a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800284ac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800284b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800284b4:	e1a03a23 	lsr	r3, r3, #20
800284b8:	e1a03103 	lsl	r3, r3, #2
800284bc:	e51b2010 	ldr	r2, [fp, #-16]
800284c0:	e0823003 	add	r3, r2, r3
800284c4:	e50b300c 	str	r3, [fp, #-12]
800284c8:	e51b300c 	ldr	r3, [fp, #-12]
800284cc:	e5933000 	ldr	r3, [r3]
800284d0:	e2033003 	and	r3, r3, #3
800284d4:	e3530000 	cmp	r3, #0
800284d8:	0a000007 	beq	800284fc <walkpgdir+0x64>
800284dc:	e51b300c 	ldr	r3, [fp, #-12]
800284e0:	e5933000 	ldr	r3, [r3]
800284e4:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800284e8:	e3c33003 	bic	r3, r3, #3
800284ec:	e1a00003 	mov	r0, r3
800284f0:	ebffff70 	bl	800282b8 <p2v>
800284f4:	e50b0008 	str	r0, [fp, #-8]
800284f8:	ea000013 	b	8002854c <walkpgdir+0xb4>
800284fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028500:	e3530000 	cmp	r3, #0
80028504:	0a000004 	beq	8002851c <walkpgdir+0x84>
80028508:	ebffffbc 	bl	80028400 <kpt_alloc>
8002850c:	e50b0008 	str	r0, [fp, #-8]
80028510:	e51b3008 	ldr	r3, [fp, #-8]
80028514:	e3530000 	cmp	r3, #0
80028518:	1a000001 	bne	80028524 <walkpgdir+0x8c>
8002851c:	e3a03000 	mov	r3, #0
80028520:	ea00000f 	b	80028564 <walkpgdir+0xcc>
80028524:	e3a02b01 	mov	r2, #1024	@ 0x400
80028528:	e3a01000 	mov	r1, #0
8002852c:	e51b0008 	ldr	r0, [fp, #-8]
80028530:	ebffdeb2 	bl	80020000 <memset>
80028534:	e51b0008 	ldr	r0, [fp, #-8]
80028538:	ebffff54 	bl	80028290 <v2p>
8002853c:	e1a03000 	mov	r3, r0
80028540:	e3832001 	orr	r2, r3, #1
80028544:	e51b300c 	ldr	r3, [fp, #-12]
80028548:	e5832000 	str	r2, [r3]
8002854c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028550:	e1a03623 	lsr	r3, r3, #12
80028554:	e6ef3073 	uxtb	r3, r3
80028558:	e1a03103 	lsl	r3, r3, #2
8002855c:	e51b2008 	ldr	r2, [fp, #-8]
80028560:	e0823003 	add	r3, r2, r3
80028564:	e1a00003 	mov	r0, r3
80028568:	e24bd004 	sub	sp, fp, #4
8002856c:	e8bd8800 	pop	{fp, pc}

80028570 <mappages>:
80028570:	e92d4800 	push	{fp, lr}
80028574:	e28db004 	add	fp, sp, #4
80028578:	e24dd020 	sub	sp, sp, #32
8002857c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028580:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028584:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028588:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002858c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028590:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028594:	e3c3300f 	bic	r3, r3, #15
80028598:	e50b3008 	str	r3, [fp, #-8]
8002859c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800285a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800285a4:	e0823003 	add	r3, r2, r3
800285a8:	e2433001 	sub	r3, r3, #1
800285ac:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800285b0:	e3c3300f 	bic	r3, r3, #15
800285b4:	e50b300c 	str	r3, [fp, #-12]
800285b8:	e3a02001 	mov	r2, #1
800285bc:	e51b1008 	ldr	r1, [fp, #-8]
800285c0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800285c4:	ebffffb3 	bl	80028498 <walkpgdir>
800285c8:	e50b0010 	str	r0, [fp, #-16]
800285cc:	e51b3010 	ldr	r3, [fp, #-16]
800285d0:	e3530000 	cmp	r3, #0
800285d4:	1a000001 	bne	800285e0 <mappages+0x70>
800285d8:	e3e03000 	mvn	r3, #0
800285dc:	ea00001b 	b	80028650 <mappages+0xe0>
800285e0:	e51b3010 	ldr	r3, [fp, #-16]
800285e4:	e5933000 	ldr	r3, [r3]
800285e8:	e2033003 	and	r3, r3, #3
800285ec:	e3530000 	cmp	r3, #0
800285f0:	0a000001 	beq	800285fc <mappages+0x8c>
800285f4:	e59f0060 	ldr	r0, [pc, #96]	@ 8002865c <mappages+0xec>
800285f8:	ebffe53d 	bl	80021af4 <panic>
800285fc:	e59b3004 	ldr	r3, [fp, #4]
80028600:	e1a03203 	lsl	r3, r3, #4
80028604:	e2032030 	and	r2, r3, #48	@ 0x30
80028608:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002860c:	e1823003 	orr	r3, r2, r3
80028610:	e383200e 	orr	r2, r3, #14
80028614:	e51b3010 	ldr	r3, [fp, #-16]
80028618:	e5832000 	str	r2, [r3]
8002861c:	e51b2008 	ldr	r2, [fp, #-8]
80028620:	e51b300c 	ldr	r3, [fp, #-12]
80028624:	e1520003 	cmp	r2, r3
80028628:	0a000006 	beq	80028648 <mappages+0xd8>
8002862c:	e51b3008 	ldr	r3, [fp, #-8]
80028630:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028634:	e50b3008 	str	r3, [fp, #-8]
80028638:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002863c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028640:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028644:	eaffffdb 	b	800285b8 <mappages+0x48>
80028648:	e1a00000 	nop			@ (mov r0, r0)
8002864c:	e3a03000 	mov	r3, #0
80028650:	e1a00003 	mov	r0, r3
80028654:	e24bd004 	sub	sp, fp, #4
80028658:	e8bd8800 	pop	{fp, pc}
8002865c:	80029e34 	.word	0x80029e34

80028660 <flush_tlb>:
80028660:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028664:	e28db000 	add	fp, sp, #0
80028668:	e24dd00c 	sub	sp, sp, #12
8002866c:	e3a03000 	mov	r3, #0
80028670:	e50b3008 	str	r3, [fp, #-8]
80028674:	e51b3008 	ldr	r3, [fp, #-8]
80028678:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
8002867c:	e51b3008 	ldr	r3, [fp, #-8]
80028680:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80028684:	e51b3008 	ldr	r3, [fp, #-8]
80028688:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
8002868c:	e1a00000 	nop			@ (mov r0, r0)
80028690:	e28bd000 	add	sp, fp, #0
80028694:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028698:	e12fff1e 	bx	lr

8002869c <switchuvm>:
8002869c:	e92d4800 	push	{fp, lr}
800286a0:	e28db004 	add	fp, sp, #4
800286a4:	e24dd010 	sub	sp, sp, #16
800286a8:	e50b0010 	str	r0, [fp, #-16]
800286ac:	ebffdfde 	bl	8002062c <pushcli>
800286b0:	e51b3010 	ldr	r3, [fp, #-16]
800286b4:	e5933004 	ldr	r3, [r3, #4]
800286b8:	e3530000 	cmp	r3, #0
800286bc:	1a000001 	bne	800286c8 <switchuvm+0x2c>
800286c0:	e59f002c 	ldr	r0, [pc, #44]	@ 800286f4 <switchuvm+0x58>
800286c4:	ebffe50a 	bl	80021af4 <panic>
800286c8:	e51b3010 	ldr	r3, [fp, #-16]
800286cc:	e5933004 	ldr	r3, [r3, #4]
800286d0:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800286d4:	e50b3008 	str	r3, [fp, #-8]
800286d8:	e51b3008 	ldr	r3, [fp, #-8]
800286dc:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
800286e0:	ebffffde 	bl	80028660 <flush_tlb>
800286e4:	ebffdfe5 	bl	80020680 <popcli>
800286e8:	e1a00000 	nop			@ (mov r0, r0)
800286ec:	e24bd004 	sub	sp, fp, #4
800286f0:	e8bd8800 	pop	{fp, pc}
800286f4:	80029e3c 	.word	0x80029e3c

800286f8 <inituvm>:
800286f8:	e92d4800 	push	{fp, lr}
800286fc:	e28db004 	add	fp, sp, #4
80028700:	e24dd020 	sub	sp, sp, #32
80028704:	e50b0010 	str	r0, [fp, #-16]
80028708:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002870c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028710:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028714:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028718:	3a000001 	bcc	80028724 <inituvm+0x2c>
8002871c:	e59f0058 	ldr	r0, [pc, #88]	@ 8002877c <inituvm+0x84>
80028720:	ebffe4f3 	bl	80021af4 <panic>
80028724:	ebffe3c1 	bl	80021630 <alloc_page>
80028728:	e50b0008 	str	r0, [fp, #-8]
8002872c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028730:	e3a01000 	mov	r1, #0
80028734:	e51b0008 	ldr	r0, [fp, #-8]
80028738:	ebffde30 	bl	80020000 <memset>
8002873c:	e51b0008 	ldr	r0, [fp, #-8]
80028740:	ebfffed2 	bl	80028290 <v2p>
80028744:	e1a03000 	mov	r3, r0
80028748:	e3a02003 	mov	r2, #3
8002874c:	e58d2000 	str	r2, [sp]
80028750:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028754:	e3a01000 	mov	r1, #0
80028758:	e51b0010 	ldr	r0, [fp, #-16]
8002875c:	ebffff83 	bl	80028570 <mappages>
80028760:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80028764:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028768:	e51b0008 	ldr	r0, [fp, #-8]
8002876c:	ebffde95 	bl	800201c8 <memmove>
80028770:	e1a00000 	nop			@ (mov r0, r0)
80028774:	e24bd004 	sub	sp, fp, #4
80028778:	e8bd8800 	pop	{fp, pc}
8002877c:	80029e50 	.word	0x80029e50

80028780 <loaduvm>:
80028780:	e92d4800 	push	{fp, lr}
80028784:	e28db004 	add	fp, sp, #4
80028788:	e24dd020 	sub	sp, sp, #32
8002878c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028790:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028794:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028798:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002879c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800287a0:	e1a03a03 	lsl	r3, r3, #20
800287a4:	e1a03a23 	lsr	r3, r3, #20
800287a8:	e3530000 	cmp	r3, #0
800287ac:	0a000001 	beq	800287b8 <loaduvm+0x38>
800287b0:	e59f00f0 	ldr	r0, [pc, #240]	@ 800288a8 <loaduvm+0x128>
800287b4:	ebffe4ce 	bl	80021af4 <panic>
800287b8:	e3a03000 	mov	r3, #0
800287bc:	e50b3008 	str	r3, [fp, #-8]
800287c0:	ea000030 	b	80028888 <loaduvm+0x108>
800287c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800287c8:	e51b3008 	ldr	r3, [fp, #-8]
800287cc:	e0823003 	add	r3, r2, r3
800287d0:	e3a02000 	mov	r2, #0
800287d4:	e1a01003 	mov	r1, r3
800287d8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800287dc:	ebffff2d 	bl	80028498 <walkpgdir>
800287e0:	e50b0010 	str	r0, [fp, #-16]
800287e4:	e51b3010 	ldr	r3, [fp, #-16]
800287e8:	e3530000 	cmp	r3, #0
800287ec:	1a000001 	bne	800287f8 <loaduvm+0x78>
800287f0:	e59f00b4 	ldr	r0, [pc, #180]	@ 800288ac <loaduvm+0x12c>
800287f4:	ebffe4be 	bl	80021af4 <panic>
800287f8:	e51b3010 	ldr	r3, [fp, #-16]
800287fc:	e5933000 	ldr	r3, [r3]
80028800:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028804:	e3c3300f 	bic	r3, r3, #15
80028808:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002880c:	e59b2004 	ldr	r2, [fp, #4]
80028810:	e51b3008 	ldr	r3, [fp, #-8]
80028814:	e0423003 	sub	r3, r2, r3
80028818:	e3530a01 	cmp	r3, #4096	@ 0x1000
8002881c:	2a000004 	bcs	80028834 <loaduvm+0xb4>
80028820:	e59b2004 	ldr	r2, [fp, #4]
80028824:	e51b3008 	ldr	r3, [fp, #-8]
80028828:	e0423003 	sub	r3, r2, r3
8002882c:	e50b300c 	str	r3, [fp, #-12]
80028830:	ea000001 	b	8002883c <loaduvm+0xbc>
80028834:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028838:	e50b300c 	str	r3, [fp, #-12]
8002883c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028840:	ebfffe9c 	bl	800282b8 <p2v>
80028844:	e1a01000 	mov	r1, r0
80028848:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002884c:	e51b3008 	ldr	r3, [fp, #-8]
80028850:	e0822003 	add	r2, r2, r3
80028854:	e51b300c 	ldr	r3, [fp, #-12]
80028858:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002885c:	ebffebfb 	bl	80023850 <readi>
80028860:	e1a03000 	mov	r3, r0
80028864:	e1a02003 	mov	r2, r3
80028868:	e51b300c 	ldr	r3, [fp, #-12]
8002886c:	e1530002 	cmp	r3, r2
80028870:	0a000001 	beq	8002887c <loaduvm+0xfc>
80028874:	e3e03000 	mvn	r3, #0
80028878:	ea000007 	b	8002889c <loaduvm+0x11c>
8002887c:	e51b3008 	ldr	r3, [fp, #-8]
80028880:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028884:	e50b3008 	str	r3, [fp, #-8]
80028888:	e51b2008 	ldr	r2, [fp, #-8]
8002888c:	e59b3004 	ldr	r3, [fp, #4]
80028890:	e1520003 	cmp	r2, r3
80028894:	3affffca 	bcc	800287c4 <loaduvm+0x44>
80028898:	e3a03000 	mov	r3, #0
8002889c:	e1a00003 	mov	r0, r3
800288a0:	e24bd004 	sub	sp, fp, #4
800288a4:	e8bd8800 	pop	{fp, pc}
800288a8:	80029e6c 	.word	0x80029e6c
800288ac:	80029e90 	.word	0x80029e90

800288b0 <allocuvm>:
800288b0:	e92d4810 	push	{r4, fp, lr}
800288b4:	e28db008 	add	fp, sp, #8
800288b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
800288bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800288c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800288c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800288c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800288cc:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
800288d0:	9a000001 	bls	800288dc <allocuvm+0x2c>
800288d4:	e3a03000 	mov	r3, #0
800288d8:	ea00002f 	b	8002899c <allocuvm+0xec>
800288dc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800288e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800288e4:	e1520003 	cmp	r2, r3
800288e8:	2a000001 	bcs	800288f4 <allocuvm+0x44>
800288ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800288f0:	ea000029 	b	8002899c <allocuvm+0xec>
800288f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800288f8:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800288fc:	e283300f 	add	r3, r3, #15
80028900:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028904:	e3c3300f 	bic	r3, r3, #15
80028908:	e50b3010 	str	r3, [fp, #-16]
8002890c:	ea00001d 	b	80028988 <allocuvm+0xd8>
80028910:	ebffe346 	bl	80021630 <alloc_page>
80028914:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028918:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002891c:	e3530000 	cmp	r3, #0
80028920:	1a000007 	bne	80028944 <allocuvm+0x94>
80028924:	e59f007c 	ldr	r0, [pc, #124]	@ 800289a8 <allocuvm+0xf8>
80028928:	ebffe3d9 	bl	80021894 <cprintf>
8002892c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028930:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028934:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028938:	eb00001b 	bl	800289ac <deallocuvm>
8002893c:	e3a03000 	mov	r3, #0
80028940:	ea000015 	b	8002899c <allocuvm+0xec>
80028944:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028948:	e3a01000 	mov	r1, #0
8002894c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028950:	ebffddaa 	bl	80020000 <memset>
80028954:	e51b4010 	ldr	r4, [fp, #-16]
80028958:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002895c:	ebfffe4b 	bl	80028290 <v2p>
80028960:	e1a03000 	mov	r3, r0
80028964:	e3a02003 	mov	r2, #3
80028968:	e58d2000 	str	r2, [sp]
8002896c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028970:	e1a01004 	mov	r1, r4
80028974:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028978:	ebfffefc 	bl	80028570 <mappages>
8002897c:	e51b3010 	ldr	r3, [fp, #-16]
80028980:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028984:	e50b3010 	str	r3, [fp, #-16]
80028988:	e51b2010 	ldr	r2, [fp, #-16]
8002898c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028990:	e1520003 	cmp	r2, r3
80028994:	3affffdd 	bcc	80028910 <allocuvm+0x60>
80028998:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002899c:	e1a00003 	mov	r0, r3
800289a0:	e24bd008 	sub	sp, fp, #8
800289a4:	e8bd8810 	pop	{r4, fp, pc}
800289a8:	80029eb0 	.word	0x80029eb0

800289ac <deallocuvm>:
800289ac:	e92d4800 	push	{fp, lr}
800289b0:	e28db004 	add	fp, sp, #4
800289b4:	e24dd020 	sub	sp, sp, #32
800289b8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800289bc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800289c0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800289c4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800289c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800289cc:	e1520003 	cmp	r2, r3
800289d0:	3a000001 	bcc	800289dc <deallocuvm+0x30>
800289d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800289d8:	ea000035 	b	80028ab4 <deallocuvm+0x108>
800289dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800289e0:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800289e4:	e283300f 	add	r3, r3, #15
800289e8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800289ec:	e3c3300f 	bic	r3, r3, #15
800289f0:	e50b3008 	str	r3, [fp, #-8]
800289f4:	ea000029 	b	80028aa0 <deallocuvm+0xf4>
800289f8:	e51b3008 	ldr	r3, [fp, #-8]
800289fc:	e3a02000 	mov	r2, #0
80028a00:	e1a01003 	mov	r1, r3
80028a04:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028a08:	ebfffea2 	bl	80028498 <walkpgdir>
80028a0c:	e50b000c 	str	r0, [fp, #-12]
80028a10:	e51b300c 	ldr	r3, [fp, #-12]
80028a14:	e3530000 	cmp	r3, #0
80028a18:	1a000006 	bne	80028a38 <deallocuvm+0x8c>
80028a1c:	e51b3008 	ldr	r3, [fp, #-8]
80028a20:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028a24:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028a28:	e1a03a23 	lsr	r3, r3, #20
80028a2c:	e1a03a03 	lsl	r3, r3, #20
80028a30:	e50b3008 	str	r3, [fp, #-8]
80028a34:	ea000016 	b	80028a94 <deallocuvm+0xe8>
80028a38:	e51b300c 	ldr	r3, [fp, #-12]
80028a3c:	e5933000 	ldr	r3, [r3]
80028a40:	e2033003 	and	r3, r3, #3
80028a44:	e3530000 	cmp	r3, #0
80028a48:	0a000011 	beq	80028a94 <deallocuvm+0xe8>
80028a4c:	e51b300c 	ldr	r3, [fp, #-12]
80028a50:	e5933000 	ldr	r3, [r3]
80028a54:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028a58:	e3c3300f 	bic	r3, r3, #15
80028a5c:	e50b3010 	str	r3, [fp, #-16]
80028a60:	e51b3010 	ldr	r3, [fp, #-16]
80028a64:	e3530000 	cmp	r3, #0
80028a68:	1a000001 	bne	80028a74 <deallocuvm+0xc8>
80028a6c:	e59f004c 	ldr	r0, [pc, #76]	@ 80028ac0 <deallocuvm+0x114>
80028a70:	ebffe41f 	bl	80021af4 <panic>
80028a74:	e51b0010 	ldr	r0, [fp, #-16]
80028a78:	ebfffe0e 	bl	800282b8 <p2v>
80028a7c:	e1a03000 	mov	r3, r0
80028a80:	e1a00003 	mov	r0, r3
80028a84:	ebffe2df 	bl	80021608 <free_page>
80028a88:	e51b300c 	ldr	r3, [fp, #-12]
80028a8c:	e3a02000 	mov	r2, #0
80028a90:	e5832000 	str	r2, [r3]
80028a94:	e51b3008 	ldr	r3, [fp, #-8]
80028a98:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028a9c:	e50b3008 	str	r3, [fp, #-8]
80028aa0:	e51b2008 	ldr	r2, [fp, #-8]
80028aa4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028aa8:	e1520003 	cmp	r2, r3
80028aac:	3affffd1 	bcc	800289f8 <deallocuvm+0x4c>
80028ab0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028ab4:	e1a00003 	mov	r0, r3
80028ab8:	e24bd004 	sub	sp, fp, #4
80028abc:	e8bd8800 	pop	{fp, pc}
80028ac0:	80029ec8 	.word	0x80029ec8

80028ac4 <freevm>:
80028ac4:	e92d4800 	push	{fp, lr}
80028ac8:	e28db004 	add	fp, sp, #4
80028acc:	e24dd010 	sub	sp, sp, #16
80028ad0:	e50b0010 	str	r0, [fp, #-16]
80028ad4:	e51b3010 	ldr	r3, [fp, #-16]
80028ad8:	e3530000 	cmp	r3, #0
80028adc:	1a000001 	bne	80028ae8 <freevm+0x24>
80028ae0:	e59f0098 	ldr	r0, [pc, #152]	@ 80028b80 <freevm+0xbc>
80028ae4:	ebffe402 	bl	80021af4 <panic>
80028ae8:	e3a02000 	mov	r2, #0
80028aec:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028af0:	e51b0010 	ldr	r0, [fp, #-16]
80028af4:	ebffffac 	bl	800289ac <deallocuvm>
80028af8:	e3a03000 	mov	r3, #0
80028afc:	e50b3008 	str	r3, [fp, #-8]
80028b00:	ea000016 	b	80028b60 <freevm+0x9c>
80028b04:	e51b3008 	ldr	r3, [fp, #-8]
80028b08:	e1a03103 	lsl	r3, r3, #2
80028b0c:	e51b2010 	ldr	r2, [fp, #-16]
80028b10:	e0823003 	add	r3, r2, r3
80028b14:	e5933000 	ldr	r3, [r3]
80028b18:	e2033003 	and	r3, r3, #3
80028b1c:	e3530000 	cmp	r3, #0
80028b20:	0a00000b 	beq	80028b54 <freevm+0x90>
80028b24:	e51b3008 	ldr	r3, [fp, #-8]
80028b28:	e1a03103 	lsl	r3, r3, #2
80028b2c:	e51b2010 	ldr	r2, [fp, #-16]
80028b30:	e0823003 	add	r3, r2, r3
80028b34:	e5933000 	ldr	r3, [r3]
80028b38:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028b3c:	e3c33003 	bic	r3, r3, #3
80028b40:	e1a00003 	mov	r0, r3
80028b44:	ebfffddb 	bl	800282b8 <p2v>
80028b48:	e50b000c 	str	r0, [fp, #-12]
80028b4c:	e51b000c 	ldr	r0, [fp, #-12]
80028b50:	ebfffe00 	bl	80028358 <kpt_free>
80028b54:	e51b3008 	ldr	r3, [fp, #-8]
80028b58:	e2833001 	add	r3, r3, #1
80028b5c:	e50b3008 	str	r3, [fp, #-8]
80028b60:	e51b3008 	ldr	r3, [fp, #-8]
80028b64:	e35300ff 	cmp	r3, #255	@ 0xff
80028b68:	9affffe5 	bls	80028b04 <freevm+0x40>
80028b6c:	e51b0010 	ldr	r0, [fp, #-16]
80028b70:	ebfffdf8 	bl	80028358 <kpt_free>
80028b74:	e1a00000 	nop			@ (mov r0, r0)
80028b78:	e24bd004 	sub	sp, fp, #4
80028b7c:	e8bd8800 	pop	{fp, pc}
80028b80:	80029ed4 	.word	0x80029ed4

80028b84 <clearpteu>:
80028b84:	e92d4800 	push	{fp, lr}
80028b88:	e28db004 	add	fp, sp, #4
80028b8c:	e24dd010 	sub	sp, sp, #16
80028b90:	e50b0010 	str	r0, [fp, #-16]
80028b94:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028b98:	e3a02000 	mov	r2, #0
80028b9c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028ba0:	e51b0010 	ldr	r0, [fp, #-16]
80028ba4:	ebfffe3b 	bl	80028498 <walkpgdir>
80028ba8:	e50b0008 	str	r0, [fp, #-8]
80028bac:	e51b3008 	ldr	r3, [fp, #-8]
80028bb0:	e3530000 	cmp	r3, #0
80028bb4:	1a000001 	bne	80028bc0 <clearpteu+0x3c>
80028bb8:	e59f0024 	ldr	r0, [pc, #36]	@ 80028be4 <clearpteu+0x60>
80028bbc:	ebffe3cc 	bl	80021af4 <panic>
80028bc0:	e51b3008 	ldr	r3, [fp, #-8]
80028bc4:	e5933000 	ldr	r3, [r3]
80028bc8:	e3c33030 	bic	r3, r3, #48	@ 0x30
80028bcc:	e3832010 	orr	r2, r3, #16
80028bd0:	e51b3008 	ldr	r3, [fp, #-8]
80028bd4:	e5832000 	str	r2, [r3]
80028bd8:	e1a00000 	nop			@ (mov r0, r0)
80028bdc:	e24bd004 	sub	sp, fp, #4
80028be0:	e8bd8800 	pop	{fp, pc}
80028be4:	80029ee8 	.word	0x80029ee8

80028be8 <copyuvm>:
80028be8:	e92d4810 	push	{r4, fp, lr}
80028bec:	e28db008 	add	fp, sp, #8
80028bf0:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
80028bf4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028bf8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80028bfc:	ebfffdff 	bl	80028400 <kpt_alloc>
80028c00:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028c04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028c08:	e3530000 	cmp	r3, #0
80028c0c:	1a000001 	bne	80028c18 <copyuvm+0x30>
80028c10:	e3a03000 	mov	r3, #0
80028c14:	ea000047 	b	80028d38 <copyuvm+0x150>
80028c18:	e3a03000 	mov	r3, #0
80028c1c:	e50b3010 	str	r3, [fp, #-16]
80028c20:	ea000038 	b	80028d08 <copyuvm+0x120>
80028c24:	e51b3010 	ldr	r3, [fp, #-16]
80028c28:	e3a02000 	mov	r2, #0
80028c2c:	e1a01003 	mov	r1, r3
80028c30:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028c34:	ebfffe17 	bl	80028498 <walkpgdir>
80028c38:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028c40:	e3530000 	cmp	r3, #0
80028c44:	1a000001 	bne	80028c50 <copyuvm+0x68>
80028c48:	e59f00f4 	ldr	r0, [pc, #244]	@ 80028d44 <copyuvm+0x15c>
80028c4c:	ebffe3a8 	bl	80021af4 <panic>
80028c50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028c54:	e5933000 	ldr	r3, [r3]
80028c58:	e2033003 	and	r3, r3, #3
80028c5c:	e3530000 	cmp	r3, #0
80028c60:	1a000001 	bne	80028c6c <copyuvm+0x84>
80028c64:	e59f00dc 	ldr	r0, [pc, #220]	@ 80028d48 <copyuvm+0x160>
80028c68:	ebffe3a1 	bl	80021af4 <panic>
80028c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028c70:	e5933000 	ldr	r3, [r3]
80028c74:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028c78:	e3c3300f 	bic	r3, r3, #15
80028c7c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028c84:	e5933000 	ldr	r3, [r3]
80028c88:	e1a03223 	lsr	r3, r3, #4
80028c8c:	e2033003 	and	r3, r3, #3
80028c90:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80028c94:	ebffe265 	bl	80021630 <alloc_page>
80028c98:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028c9c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028ca0:	e3530000 	cmp	r3, #0
80028ca4:	0a00001d 	beq	80028d20 <copyuvm+0x138>
80028ca8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028cac:	ebfffd81 	bl	800282b8 <p2v>
80028cb0:	e1a03000 	mov	r3, r0
80028cb4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028cb8:	e1a01003 	mov	r1, r3
80028cbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028cc0:	ebffdd40 	bl	800201c8 <memmove>
80028cc4:	e51b4010 	ldr	r4, [fp, #-16]
80028cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028ccc:	ebfffd6f 	bl	80028290 <v2p>
80028cd0:	e1a02000 	mov	r2, r0
80028cd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028cd8:	e58d3000 	str	r3, [sp]
80028cdc:	e1a03002 	mov	r3, r2
80028ce0:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028ce4:	e1a01004 	mov	r1, r4
80028ce8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028cec:	ebfffe1f 	bl	80028570 <mappages>
80028cf0:	e1a03000 	mov	r3, r0
80028cf4:	e3530000 	cmp	r3, #0
80028cf8:	ba00000a 	blt	80028d28 <copyuvm+0x140>
80028cfc:	e51b3010 	ldr	r3, [fp, #-16]
80028d00:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028d04:	e50b3010 	str	r3, [fp, #-16]
80028d08:	e51b2010 	ldr	r2, [fp, #-16]
80028d0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028d10:	e1520003 	cmp	r2, r3
80028d14:	3affffc2 	bcc	80028c24 <copyuvm+0x3c>
80028d18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028d1c:	ea000005 	b	80028d38 <copyuvm+0x150>
80028d20:	e1a00000 	nop			@ (mov r0, r0)
80028d24:	ea000000 	b	80028d2c <copyuvm+0x144>
80028d28:	e1a00000 	nop			@ (mov r0, r0)
80028d2c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028d30:	ebffff63 	bl	80028ac4 <freevm>
80028d34:	e3a03000 	mov	r3, #0
80028d38:	e1a00003 	mov	r0, r3
80028d3c:	e24bd008 	sub	sp, fp, #8
80028d40:	e8bd8810 	pop	{r4, fp, pc}
80028d44:	80029ef4 	.word	0x80029ef4
80028d48:	80029f10 	.word	0x80029f10

80028d4c <uva2ka>:
80028d4c:	e92d4800 	push	{fp, lr}
80028d50:	e28db004 	add	fp, sp, #4
80028d54:	e24dd010 	sub	sp, sp, #16
80028d58:	e50b0010 	str	r0, [fp, #-16]
80028d5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028d60:	e3a02000 	mov	r2, #0
80028d64:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028d68:	e51b0010 	ldr	r0, [fp, #-16]
80028d6c:	ebfffdc9 	bl	80028498 <walkpgdir>
80028d70:	e50b0008 	str	r0, [fp, #-8]
80028d74:	e51b3008 	ldr	r3, [fp, #-8]
80028d78:	e5933000 	ldr	r3, [r3]
80028d7c:	e2033003 	and	r3, r3, #3
80028d80:	e3530000 	cmp	r3, #0
80028d84:	1a000001 	bne	80028d90 <uva2ka+0x44>
80028d88:	e3a03000 	mov	r3, #0
80028d8c:	ea00000e 	b	80028dcc <uva2ka+0x80>
80028d90:	e51b3008 	ldr	r3, [fp, #-8]
80028d94:	e5933000 	ldr	r3, [r3]
80028d98:	e2033030 	and	r3, r3, #48	@ 0x30
80028d9c:	e3530030 	cmp	r3, #48	@ 0x30
80028da0:	0a000001 	beq	80028dac <uva2ka+0x60>
80028da4:	e3a03000 	mov	r3, #0
80028da8:	ea000007 	b	80028dcc <uva2ka+0x80>
80028dac:	e51b3008 	ldr	r3, [fp, #-8]
80028db0:	e5933000 	ldr	r3, [r3]
80028db4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028db8:	e3c3300f 	bic	r3, r3, #15
80028dbc:	e1a00003 	mov	r0, r3
80028dc0:	ebfffd3c 	bl	800282b8 <p2v>
80028dc4:	e1a03000 	mov	r3, r0
80028dc8:	e1a00000 	nop			@ (mov r0, r0)
80028dcc:	e1a00003 	mov	r0, r3
80028dd0:	e24bd004 	sub	sp, fp, #4
80028dd4:	e8bd8800 	pop	{fp, pc}

80028dd8 <copyout>:
80028dd8:	e92d4800 	push	{fp, lr}
80028ddc:	e28db004 	add	fp, sp, #4
80028de0:	e24dd020 	sub	sp, sp, #32
80028de4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028de8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028dec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028df0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028df4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028df8:	e50b3008 	str	r3, [fp, #-8]
80028dfc:	ea00002c 	b	80028eb4 <copyout+0xdc>
80028e00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028e04:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028e08:	e3c3300f 	bic	r3, r3, #15
80028e0c:	e50b3010 	str	r3, [fp, #-16]
80028e10:	e51b3010 	ldr	r3, [fp, #-16]
80028e14:	e1a01003 	mov	r1, r3
80028e18:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028e1c:	ebffffca 	bl	80028d4c <uva2ka>
80028e20:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028e24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028e28:	e3530000 	cmp	r3, #0
80028e2c:	1a000001 	bne	80028e38 <copyout+0x60>
80028e30:	e3e03000 	mvn	r3, #0
80028e34:	ea000022 	b	80028ec4 <copyout+0xec>
80028e38:	e51b2010 	ldr	r2, [fp, #-16]
80028e3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028e40:	e0423003 	sub	r3, r2, r3
80028e44:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028e48:	e50b300c 	str	r3, [fp, #-12]
80028e4c:	e51b200c 	ldr	r2, [fp, #-12]
80028e50:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028e54:	e1520003 	cmp	r2, r3
80028e58:	9a000001 	bls	80028e64 <copyout+0x8c>
80028e5c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028e60:	e50b300c 	str	r3, [fp, #-12]
80028e64:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028e68:	e51b3010 	ldr	r3, [fp, #-16]
80028e6c:	e0423003 	sub	r3, r2, r3
80028e70:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028e74:	e0823003 	add	r3, r2, r3
80028e78:	e51b200c 	ldr	r2, [fp, #-12]
80028e7c:	e51b1008 	ldr	r1, [fp, #-8]
80028e80:	e1a00003 	mov	r0, r3
80028e84:	ebffdccf 	bl	800201c8 <memmove>
80028e88:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028e8c:	e51b300c 	ldr	r3, [fp, #-12]
80028e90:	e0423003 	sub	r3, r2, r3
80028e94:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028e98:	e51b2008 	ldr	r2, [fp, #-8]
80028e9c:	e51b300c 	ldr	r3, [fp, #-12]
80028ea0:	e0823003 	add	r3, r2, r3
80028ea4:	e50b3008 	str	r3, [fp, #-8]
80028ea8:	e51b3010 	ldr	r3, [fp, #-16]
80028eac:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028eb0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028eb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028eb8:	e3530000 	cmp	r3, #0
80028ebc:	1affffcf 	bne	80028e00 <copyout+0x28>
80028ec0:	e3a03000 	mov	r3, #0
80028ec4:	e1a00003 	mov	r0, r3
80028ec8:	e24bd004 	sub	sp, fp, #4
80028ecc:	e8bd8800 	pop	{fp, pc}

80028ed0 <paging_init>:
80028ed0:	e92d4800 	push	{fp, lr}
80028ed4:	e28db004 	add	fp, sp, #4
80028ed8:	e24dd010 	sub	sp, sp, #16
80028edc:	e50b0008 	str	r0, [fp, #-8]
80028ee0:	e50b100c 	str	r1, [fp, #-12]
80028ee4:	e59f0034 	ldr	r0, [pc, #52]	@ 80028f20 <paging_init+0x50>
80028ee8:	e51b3008 	ldr	r3, [fp, #-8]
80028eec:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028ef0:	e1a01003 	mov	r1, r3
80028ef4:	e51b200c 	ldr	r2, [fp, #-12]
80028ef8:	e51b3008 	ldr	r3, [fp, #-8]
80028efc:	e0422003 	sub	r2, r2, r3
80028f00:	e3a03003 	mov	r3, #3
80028f04:	e58d3000 	str	r3, [sp]
80028f08:	e51b3008 	ldr	r3, [fp, #-8]
80028f0c:	ebfffd97 	bl	80028570 <mappages>
80028f10:	ebfffdd2 	bl	80028660 <flush_tlb>
80028f14:	e1a00000 	nop			@ (mov r0, r0)
80028f18:	e24bd004 	sub	sp, fp, #4
80028f1c:	e8bd8800 	pop	{fp, pc}
80028f20:	80014000 	.word	0x80014000

80028f24 <default_isr>:
80028f24:	e92d4800 	push	{fp, lr}
80028f28:	e28db004 	add	fp, sp, #4
80028f2c:	e24dd008 	sub	sp, sp, #8
80028f30:	e50b0008 	str	r0, [fp, #-8]
80028f34:	e50b100c 	str	r1, [fp, #-12]
80028f38:	e51b100c 	ldr	r1, [fp, #-12]
80028f3c:	e59f000c 	ldr	r0, [pc, #12]	@ 80028f50 <default_isr+0x2c>
80028f40:	ebffe253 	bl	80021894 <cprintf>
80028f44:	e1a00000 	nop			@ (mov r0, r0)
80028f48:	e24bd004 	sub	sp, fp, #4
80028f4c:	e8bd8800 	pop	{fp, pc}
80028f50:	80029f2c 	.word	0x80029f2c

80028f54 <pic_init>:
80028f54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028f58:	e28db000 	add	fp, sp, #0
80028f5c:	e24dd014 	sub	sp, sp, #20
80028f60:	e50b0010 	str	r0, [fp, #-16]
80028f64:	e59f2060 	ldr	r2, [pc, #96]	@ 80028fcc <pic_init+0x78>
80028f68:	e51b3010 	ldr	r3, [fp, #-16]
80028f6c:	e5823000 	str	r3, [r2]
80028f70:	e59f3054 	ldr	r3, [pc, #84]	@ 80028fcc <pic_init+0x78>
80028f74:	e5933000 	ldr	r3, [r3]
80028f78:	e2833014 	add	r3, r3, #20
80028f7c:	e3e02000 	mvn	r2, #0
80028f80:	e5832000 	str	r2, [r3]
80028f84:	e3a03000 	mov	r3, #0
80028f88:	e50b3008 	str	r3, [fp, #-8]
80028f8c:	ea000006 	b	80028fac <pic_init+0x58>
80028f90:	e59f2038 	ldr	r2, [pc, #56]	@ 80028fd0 <pic_init+0x7c>
80028f94:	e51b3008 	ldr	r3, [fp, #-8]
80028f98:	e59f1034 	ldr	r1, [pc, #52]	@ 80028fd4 <pic_init+0x80>
80028f9c:	e7821103 	str	r1, [r2, r3, lsl #2]
80028fa0:	e51b3008 	ldr	r3, [fp, #-8]
80028fa4:	e2833001 	add	r3, r3, #1
80028fa8:	e50b3008 	str	r3, [fp, #-8]
80028fac:	e51b3008 	ldr	r3, [fp, #-8]
80028fb0:	e353001f 	cmp	r3, #31
80028fb4:	dafffff5 	ble	80028f90 <pic_init+0x3c>
80028fb8:	e1a00000 	nop			@ (mov r0, r0)
80028fbc:	e1a00000 	nop			@ (mov r0, r0)
80028fc0:	e28bd000 	add	sp, fp, #0
80028fc4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028fc8:	e12fff1e 	bx	lr
80028fcc:	800afb90 	.word	0x800afb90
80028fd0:	800afb94 	.word	0x800afb94
80028fd4:	80028f24 	.word	0x80028f24

80028fd8 <pic_enable>:
80028fd8:	e92d4800 	push	{fp, lr}
80028fdc:	e28db004 	add	fp, sp, #4
80028fe0:	e24dd008 	sub	sp, sp, #8
80028fe4:	e50b0008 	str	r0, [fp, #-8]
80028fe8:	e50b100c 	str	r1, [fp, #-12]
80028fec:	e51b3008 	ldr	r3, [fp, #-8]
80028ff0:	e3530000 	cmp	r3, #0
80028ff4:	ba000002 	blt	80029004 <pic_enable+0x2c>
80028ff8:	e51b3008 	ldr	r3, [fp, #-8]
80028ffc:	e353001f 	cmp	r3, #31
80029000:	da000001 	ble	8002900c <pic_enable+0x34>
80029004:	e59f0038 	ldr	r0, [pc, #56]	@ 80029044 <pic_enable+0x6c>
80029008:	ebffe2b9 	bl	80021af4 <panic>
8002900c:	e59f1034 	ldr	r1, [pc, #52]	@ 80029048 <pic_enable+0x70>
80029010:	e51b3008 	ldr	r3, [fp, #-8]
80029014:	e51b200c 	ldr	r2, [fp, #-12]
80029018:	e7812103 	str	r2, [r1, r3, lsl #2]
8002901c:	e3a02001 	mov	r2, #1
80029020:	e51b3008 	ldr	r3, [fp, #-8]
80029024:	e1a02312 	lsl	r2, r2, r3
80029028:	e59f301c 	ldr	r3, [pc, #28]	@ 8002904c <pic_enable+0x74>
8002902c:	e5933000 	ldr	r3, [r3]
80029030:	e2833010 	add	r3, r3, #16
80029034:	e5832000 	str	r2, [r3]
80029038:	e1a00000 	nop			@ (mov r0, r0)
8002903c:	e24bd004 	sub	sp, fp, #4
80029040:	e8bd8800 	pop	{fp, pc}
80029044:	80029f48 	.word	0x80029f48
80029048:	800afb94 	.word	0x800afb94
8002904c:	800afb90 	.word	0x800afb90

80029050 <pic_disable>:
80029050:	e92d4800 	push	{fp, lr}
80029054:	e28db004 	add	fp, sp, #4
80029058:	e24dd008 	sub	sp, sp, #8
8002905c:	e50b0008 	str	r0, [fp, #-8]
80029060:	e51b3008 	ldr	r3, [fp, #-8]
80029064:	e3530000 	cmp	r3, #0
80029068:	ba000002 	blt	80029078 <pic_disable+0x28>
8002906c:	e51b3008 	ldr	r3, [fp, #-8]
80029070:	e353001f 	cmp	r3, #31
80029074:	da000001 	ble	80029080 <pic_disable+0x30>
80029078:	e59f0038 	ldr	r0, [pc, #56]	@ 800290b8 <pic_disable+0x68>
8002907c:	ebffe29c 	bl	80021af4 <panic>
80029080:	e3a02001 	mov	r2, #1
80029084:	e51b3008 	ldr	r3, [fp, #-8]
80029088:	e1a02312 	lsl	r2, r2, r3
8002908c:	e59f3028 	ldr	r3, [pc, #40]	@ 800290bc <pic_disable+0x6c>
80029090:	e5933000 	ldr	r3, [r3]
80029094:	e2833014 	add	r3, r3, #20
80029098:	e5832000 	str	r2, [r3]
8002909c:	e59f201c 	ldr	r2, [pc, #28]	@ 800290c0 <pic_disable+0x70>
800290a0:	e51b3008 	ldr	r3, [fp, #-8]
800290a4:	e59f1018 	ldr	r1, [pc, #24]	@ 800290c4 <pic_disable+0x74>
800290a8:	e7821103 	str	r1, [r2, r3, lsl #2]
800290ac:	e1a00000 	nop			@ (mov r0, r0)
800290b0:	e24bd004 	sub	sp, fp, #4
800290b4:	e8bd8800 	pop	{fp, pc}
800290b8:	80029f48 	.word	0x80029f48
800290bc:	800afb90 	.word	0x800afb90
800290c0:	800afb94 	.word	0x800afb94
800290c4:	80028f24 	.word	0x80028f24

800290c8 <pic_dispatch>:
800290c8:	e92d4800 	push	{fp, lr}
800290cc:	e28db004 	add	fp, sp, #4
800290d0:	e24dd010 	sub	sp, sp, #16
800290d4:	e50b0010 	str	r0, [fp, #-16]
800290d8:	e59f3080 	ldr	r3, [pc, #128]	@ 80029160 <pic_dispatch+0x98>
800290dc:	e5933000 	ldr	r3, [r3]
800290e0:	e5933000 	ldr	r3, [r3]
800290e4:	e50b300c 	str	r3, [fp, #-12]
800290e8:	e3a03000 	mov	r3, #0
800290ec:	e50b3008 	str	r3, [fp, #-8]
800290f0:	ea000010 	b	80029138 <pic_dispatch+0x70>
800290f4:	e3a02001 	mov	r2, #1
800290f8:	e51b3008 	ldr	r3, [fp, #-8]
800290fc:	e1a03312 	lsl	r3, r2, r3
80029100:	e1a02003 	mov	r2, r3
80029104:	e51b300c 	ldr	r3, [fp, #-12]
80029108:	e0033002 	and	r3, r3, r2
8002910c:	e3530000 	cmp	r3, #0
80029110:	0a000005 	beq	8002912c <pic_dispatch+0x64>
80029114:	e59f2048 	ldr	r2, [pc, #72]	@ 80029164 <pic_dispatch+0x9c>
80029118:	e51b3008 	ldr	r3, [fp, #-8]
8002911c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80029120:	e51b1008 	ldr	r1, [fp, #-8]
80029124:	e51b0010 	ldr	r0, [fp, #-16]
80029128:	e12fff33 	blx	r3
8002912c:	e51b3008 	ldr	r3, [fp, #-8]
80029130:	e2833001 	add	r3, r3, #1
80029134:	e50b3008 	str	r3, [fp, #-8]
80029138:	e51b3008 	ldr	r3, [fp, #-8]
8002913c:	e353001f 	cmp	r3, #31
80029140:	daffffeb 	ble	800290f4 <pic_dispatch+0x2c>
80029144:	e59f3014 	ldr	r3, [pc, #20]	@ 80029160 <pic_dispatch+0x98>
80029148:	e5933000 	ldr	r3, [r3]
8002914c:	e5933000 	ldr	r3, [r3]
80029150:	e50b300c 	str	r3, [fp, #-12]
80029154:	e1a00000 	nop			@ (mov r0, r0)
80029158:	e24bd004 	sub	sp, fp, #4
8002915c:	e8bd8800 	pop	{fp, pc}
80029160:	800afb90 	.word	0x800afb90
80029164:	800afb94 	.word	0x800afb94

80029168 <ack_timer>:
80029168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002916c:	e28db000 	add	fp, sp, #0
80029170:	e24dd00c 	sub	sp, sp, #12
80029174:	e59f3020 	ldr	r3, [pc, #32]	@ 8002919c <ack_timer+0x34>
80029178:	e50b3008 	str	r3, [fp, #-8]
8002917c:	e51b3008 	ldr	r3, [fp, #-8]
80029180:	e283300c 	add	r3, r3, #12
80029184:	e3a02001 	mov	r2, #1
80029188:	e5832000 	str	r2, [r3]
8002918c:	e1a00000 	nop			@ (mov r0, r0)
80029190:	e28bd000 	add	sp, fp, #0
80029194:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029198:	e12fff1e 	bx	lr
8002919c:	901e2000 	.word	0x901e2000

800291a0 <timer_init>:
800291a0:	e92d4800 	push	{fp, lr}
800291a4:	e28db004 	add	fp, sp, #4
800291a8:	e24dd010 	sub	sp, sp, #16
800291ac:	e50b0010 	str	r0, [fp, #-16]
800291b0:	e59f3050 	ldr	r3, [pc, #80]	@ 80029208 <timer_init+0x68>
800291b4:	e50b3008 	str	r3, [fp, #-8]
800291b8:	e59f104c 	ldr	r1, [pc, #76]	@ 8002920c <timer_init+0x6c>
800291bc:	e59f004c 	ldr	r0, [pc, #76]	@ 80029210 <timer_init+0x70>
800291c0:	ebfff40e 	bl	80026200 <initlock>
800291c4:	e51b1010 	ldr	r1, [fp, #-16]
800291c8:	e59f0044 	ldr	r0, [pc, #68]	@ 80029214 <timer_init+0x74>
800291cc:	eb000109 	bl	800295f8 <__divsi3>
800291d0:	e1a03000 	mov	r3, r0
800291d4:	e1a02003 	mov	r2, r3
800291d8:	e51b3008 	ldr	r3, [fp, #-8]
800291dc:	e5832000 	str	r2, [r3]
800291e0:	e51b3008 	ldr	r3, [fp, #-8]
800291e4:	e2833008 	add	r3, r3, #8
800291e8:	e3a020e2 	mov	r2, #226	@ 0xe2
800291ec:	e5832000 	str	r2, [r3]
800291f0:	e59f1020 	ldr	r1, [pc, #32]	@ 80029218 <timer_init+0x78>
800291f4:	e3a00004 	mov	r0, #4
800291f8:	ebffff76 	bl	80028fd8 <pic_enable>
800291fc:	e1a00000 	nop			@ (mov r0, r0)
80029200:	e24bd004 	sub	sp, fp, #4
80029204:	e8bd8800 	pop	{fp, pc}
80029208:	901e2000 	.word	0x901e2000
8002920c:	80029f64 	.word	0x80029f64
80029210:	800afc14 	.word	0x800afc14
80029214:	000f4240 	.word	0x000f4240
80029218:	8002921c 	.word	0x8002921c

8002921c <isr_timer>:
8002921c:	e92d4800 	push	{fp, lr}
80029220:	e28db004 	add	fp, sp, #4
80029224:	e24dd008 	sub	sp, sp, #8
80029228:	e50b0008 	str	r0, [fp, #-8]
8002922c:	e50b100c 	str	r1, [fp, #-12]
80029230:	e59f0034 	ldr	r0, [pc, #52]	@ 8002926c <isr_timer+0x50>
80029234:	ebfff403 	bl	80026248 <acquire>
80029238:	e59f3030 	ldr	r3, [pc, #48]	@ 80029270 <isr_timer+0x54>
8002923c:	e5933000 	ldr	r3, [r3]
80029240:	e2833001 	add	r3, r3, #1
80029244:	e59f2024 	ldr	r2, [pc, #36]	@ 80029270 <isr_timer+0x54>
80029248:	e5823000 	str	r3, [r2]
8002924c:	e59f001c 	ldr	r0, [pc, #28]	@ 80029270 <isr_timer+0x54>
80029250:	ebfff2f5 	bl	80025e2c <wakeup>
80029254:	e59f0010 	ldr	r0, [pc, #16]	@ 8002926c <isr_timer+0x50>
80029258:	ebfff405 	bl	80026274 <release>
8002925c:	ebffffc1 	bl	80029168 <ack_timer>
80029260:	e1a00000 	nop			@ (mov r0, r0)
80029264:	e24bd004 	sub	sp, fp, #4
80029268:	e8bd8800 	pop	{fp, pc}
8002926c:	800afc14 	.word	0x800afc14
80029270:	800afc48 	.word	0x800afc48

80029274 <micro_delay>:
80029274:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029278:	e28db000 	add	fp, sp, #0
8002927c:	e24dd014 	sub	sp, sp, #20
80029280:	e50b0010 	str	r0, [fp, #-16]
80029284:	e59f3054 	ldr	r3, [pc, #84]	@ 800292e0 <micro_delay+0x6c>
80029288:	e50b3008 	str	r3, [fp, #-8]
8002928c:	e51b3008 	ldr	r3, [fp, #-8]
80029290:	e2833008 	add	r3, r3, #8
80029294:	e3a02082 	mov	r2, #130	@ 0x82
80029298:	e5832000 	str	r2, [r3]
8002929c:	e51b2010 	ldr	r2, [fp, #-16]
800292a0:	e51b3008 	ldr	r3, [fp, #-8]
800292a4:	e5832000 	str	r2, [r3]
800292a8:	e1a00000 	nop			@ (mov r0, r0)
800292ac:	e51b3008 	ldr	r3, [fp, #-8]
800292b0:	e2833004 	add	r3, r3, #4
800292b4:	e5933000 	ldr	r3, [r3]
800292b8:	e3530000 	cmp	r3, #0
800292bc:	cafffffa 	bgt	800292ac <micro_delay+0x38>
800292c0:	e51b3008 	ldr	r3, [fp, #-8]
800292c4:	e2833008 	add	r3, r3, #8
800292c8:	e3a02000 	mov	r2, #0
800292cc:	e5832000 	str	r2, [r3]
800292d0:	e1a00000 	nop			@ (mov r0, r0)
800292d4:	e28bd000 	add	sp, fp, #0
800292d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800292dc:	e12fff1e 	bx	lr
800292e0:	901e2020 	.word	0x901e2020

800292e4 <uart_init>:
800292e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800292e8:	e28db000 	add	fp, sp, #0
800292ec:	e24dd014 	sub	sp, sp, #20
800292f0:	e50b0010 	str	r0, [fp, #-16]
800292f4:	e59f20a4 	ldr	r2, [pc, #164]	@ 800293a0 <uart_init+0xbc>
800292f8:	e51b3010 	ldr	r3, [fp, #-16]
800292fc:	e5823000 	str	r3, [r2]
80029300:	e59f3098 	ldr	r3, [pc, #152]	@ 800293a0 <uart_init+0xbc>
80029304:	e5933000 	ldr	r3, [r3]
80029308:	e2833024 	add	r3, r3, #36	@ 0x24
8002930c:	e3a0204e 	mov	r2, #78	@ 0x4e
80029310:	e5832000 	str	r2, [r3]
80029314:	e3a03c96 	mov	r3, #38400	@ 0x9600
80029318:	e50b3008 	str	r3, [fp, #-8]
8002931c:	e51b3008 	ldr	r3, [fp, #-8]
80029320:	e2833e96 	add	r3, r3, #2400	@ 0x960
80029324:	e1a02103 	lsl	r2, r3, #2
80029328:	e59f3070 	ldr	r3, [pc, #112]	@ 800293a0 <uart_init+0xbc>
8002932c:	e5933000 	ldr	r3, [r3]
80029330:	e2833028 	add	r3, r3, #40	@ 0x28
80029334:	e59f1068 	ldr	r1, [pc, #104]	@ 800293a4 <uart_init+0xc0>
80029338:	e0821291 	umull	r1, r2, r1, r2
8002933c:	e1a025a2 	lsr	r2, r2, #11
80029340:	e5832000 	str	r2, [r3]
80029344:	e59f3054 	ldr	r3, [pc, #84]	@ 800293a0 <uart_init+0xbc>
80029348:	e5933000 	ldr	r3, [r3]
8002934c:	e2833030 	add	r3, r3, #48	@ 0x30
80029350:	e5933000 	ldr	r3, [r3]
80029354:	e59f2044 	ldr	r2, [pc, #68]	@ 800293a0 <uart_init+0xbc>
80029358:	e5922000 	ldr	r2, [r2]
8002935c:	e2822030 	add	r2, r2, #48	@ 0x30
80029360:	e3833c03 	orr	r3, r3, #768	@ 0x300
80029364:	e3833001 	orr	r3, r3, #1
80029368:	e5823000 	str	r3, [r2]
8002936c:	e59f302c 	ldr	r3, [pc, #44]	@ 800293a0 <uart_init+0xbc>
80029370:	e5933000 	ldr	r3, [r3]
80029374:	e283302c 	add	r3, r3, #44	@ 0x2c
80029378:	e5932000 	ldr	r2, [r3]
8002937c:	e59f301c 	ldr	r3, [pc, #28]	@ 800293a0 <uart_init+0xbc>
80029380:	e5933000 	ldr	r3, [r3]
80029384:	e283302c 	add	r3, r3, #44	@ 0x2c
80029388:	e3822010 	orr	r2, r2, #16
8002938c:	e5832000 	str	r2, [r3]
80029390:	e1a00000 	nop			@ (mov r0, r0)
80029394:	e28bd000 	add	sp, fp, #0
80029398:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002939c:	e12fff1e 	bx	lr
800293a0:	800afc4c 	.word	0x800afc4c
800293a4:	1b4e81b5 	.word	0x1b4e81b5

800293a8 <uart_enable_rx>:
800293a8:	e92d4800 	push	{fp, lr}
800293ac:	e28db004 	add	fp, sp, #4
800293b0:	e59f3020 	ldr	r3, [pc, #32]	@ 800293d8 <uart_enable_rx+0x30>
800293b4:	e5933000 	ldr	r3, [r3]
800293b8:	e2833038 	add	r3, r3, #56	@ 0x38
800293bc:	e3a02010 	mov	r2, #16
800293c0:	e5832000 	str	r2, [r3]
800293c4:	e59f1010 	ldr	r1, [pc, #16]	@ 800293dc <uart_enable_rx+0x34>
800293c8:	e3a0000c 	mov	r0, #12
800293cc:	ebffff01 	bl	80028fd8 <pic_enable>
800293d0:	e1a00000 	nop			@ (mov r0, r0)
800293d4:	e8bd8800 	pop	{fp, pc}
800293d8:	800afc4c 	.word	0x800afc4c
800293dc:	80029484 	.word	0x80029484

800293e0 <uartputc>:
800293e0:	e92d4800 	push	{fp, lr}
800293e4:	e28db004 	add	fp, sp, #4
800293e8:	e24dd008 	sub	sp, sp, #8
800293ec:	e50b0008 	str	r0, [fp, #-8]
800293f0:	ea000001 	b	800293fc <uartputc+0x1c>
800293f4:	e3a0000a 	mov	r0, #10
800293f8:	ebffff9d 	bl	80029274 <micro_delay>
800293fc:	e59f3030 	ldr	r3, [pc, #48]	@ 80029434 <uartputc+0x54>
80029400:	e5933000 	ldr	r3, [r3]
80029404:	e2833018 	add	r3, r3, #24
80029408:	e5933000 	ldr	r3, [r3]
8002940c:	e2033020 	and	r3, r3, #32
80029410:	e3530000 	cmp	r3, #0
80029414:	1afffff6 	bne	800293f4 <uartputc+0x14>
80029418:	e59f3014 	ldr	r3, [pc, #20]	@ 80029434 <uartputc+0x54>
8002941c:	e5933000 	ldr	r3, [r3]
80029420:	e51b2008 	ldr	r2, [fp, #-8]
80029424:	e5832000 	str	r2, [r3]
80029428:	e1a00000 	nop			@ (mov r0, r0)
8002942c:	e24bd004 	sub	sp, fp, #4
80029430:	e8bd8800 	pop	{fp, pc}
80029434:	800afc4c 	.word	0x800afc4c

80029438 <uartgetc>:
80029438:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002943c:	e28db000 	add	fp, sp, #0
80029440:	e59f3038 	ldr	r3, [pc, #56]	@ 80029480 <uartgetc+0x48>
80029444:	e5933000 	ldr	r3, [r3]
80029448:	e2833018 	add	r3, r3, #24
8002944c:	e5933000 	ldr	r3, [r3]
80029450:	e2033010 	and	r3, r3, #16
80029454:	e3530000 	cmp	r3, #0
80029458:	0a000001 	beq	80029464 <uartgetc+0x2c>
8002945c:	e3e03000 	mvn	r3, #0
80029460:	ea000002 	b	80029470 <uartgetc+0x38>
80029464:	e59f3014 	ldr	r3, [pc, #20]	@ 80029480 <uartgetc+0x48>
80029468:	e5933000 	ldr	r3, [r3]
8002946c:	e5933000 	ldr	r3, [r3]
80029470:	e1a00003 	mov	r0, r3
80029474:	e28bd000 	add	sp, fp, #0
80029478:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002947c:	e12fff1e 	bx	lr
80029480:	800afc4c 	.word	0x800afc4c

80029484 <isr_uart>:
80029484:	e92d4800 	push	{fp, lr}
80029488:	e28db004 	add	fp, sp, #4
8002948c:	e24dd008 	sub	sp, sp, #8
80029490:	e50b0008 	str	r0, [fp, #-8]
80029494:	e50b100c 	str	r1, [fp, #-12]
80029498:	e59f303c 	ldr	r3, [pc, #60]	@ 800294dc <isr_uart+0x58>
8002949c:	e5933000 	ldr	r3, [r3]
800294a0:	e2833040 	add	r3, r3, #64	@ 0x40
800294a4:	e5933000 	ldr	r3, [r3]
800294a8:	e2033010 	and	r3, r3, #16
800294ac:	e3530000 	cmp	r3, #0
800294b0:	0a000001 	beq	800294bc <isr_uart+0x38>
800294b4:	e59f0024 	ldr	r0, [pc, #36]	@ 800294e0 <isr_uart+0x5c>
800294b8:	ebffe1c1 	bl	80021bc4 <consoleintr>
800294bc:	e59f3018 	ldr	r3, [pc, #24]	@ 800294dc <isr_uart+0x58>
800294c0:	e5933000 	ldr	r3, [r3]
800294c4:	e2833044 	add	r3, r3, #68	@ 0x44
800294c8:	e3a02030 	mov	r2, #48	@ 0x30
800294cc:	e5832000 	str	r2, [r3]
800294d0:	e1a00000 	nop			@ (mov r0, r0)
800294d4:	e24bd004 	sub	sp, fp, #4
800294d8:	e8bd8800 	pop	{fp, pc}
800294dc:	800afc4c 	.word	0x800afc4c
800294e0:	80029438 	.word	0x80029438

800294e4 <__udivsi3>:
800294e4:	e2512001 	subs	r2, r1, #1
800294e8:	012fff1e 	bxeq	lr
800294ec:	3a000036 	bcc	800295cc <__udivsi3+0xe8>
800294f0:	e1500001 	cmp	r0, r1
800294f4:	9a000022 	bls	80029584 <__udivsi3+0xa0>
800294f8:	e1110002 	tst	r1, r2
800294fc:	0a000023 	beq	80029590 <__udivsi3+0xac>
80029500:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029504:	01a01181 	lsleq	r1, r1, #3
80029508:	03a03008 	moveq	r3, #8
8002950c:	13a03001 	movne	r3, #1
80029510:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029514:	31510000 	cmpcc	r1, r0
80029518:	31a01201 	lslcc	r1, r1, #4
8002951c:	31a03203 	lslcc	r3, r3, #4
80029520:	3afffffa 	bcc	80029510 <__udivsi3+0x2c>
80029524:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029528:	31510000 	cmpcc	r1, r0
8002952c:	31a01081 	lslcc	r1, r1, #1
80029530:	31a03083 	lslcc	r3, r3, #1
80029534:	3afffffa 	bcc	80029524 <__udivsi3+0x40>
80029538:	e3a02000 	mov	r2, #0
8002953c:	e1500001 	cmp	r0, r1
80029540:	20400001 	subcs	r0, r0, r1
80029544:	21822003 	orrcs	r2, r2, r3
80029548:	e15000a1 	cmp	r0, r1, lsr #1
8002954c:	204000a1 	subcs	r0, r0, r1, lsr #1
80029550:	218220a3 	orrcs	r2, r2, r3, lsr #1
80029554:	e1500121 	cmp	r0, r1, lsr #2
80029558:	20400121 	subcs	r0, r0, r1, lsr #2
8002955c:	21822123 	orrcs	r2, r2, r3, lsr #2
80029560:	e15001a1 	cmp	r0, r1, lsr #3
80029564:	204001a1 	subcs	r0, r0, r1, lsr #3
80029568:	218221a3 	orrcs	r2, r2, r3, lsr #3
8002956c:	e3500000 	cmp	r0, #0
80029570:	11b03223 	lsrsne	r3, r3, #4
80029574:	11a01221 	lsrne	r1, r1, #4
80029578:	1affffef 	bne	8002953c <__udivsi3+0x58>
8002957c:	e1a00002 	mov	r0, r2
80029580:	e12fff1e 	bx	lr
80029584:	03a00001 	moveq	r0, #1
80029588:	13a00000 	movne	r0, #0
8002958c:	e12fff1e 	bx	lr
80029590:	e3510801 	cmp	r1, #65536	@ 0x10000
80029594:	21a01821 	lsrcs	r1, r1, #16
80029598:	23a02010 	movcs	r2, #16
8002959c:	33a02000 	movcc	r2, #0
800295a0:	e3510c01 	cmp	r1, #256	@ 0x100
800295a4:	21a01421 	lsrcs	r1, r1, #8
800295a8:	22822008 	addcs	r2, r2, #8
800295ac:	e3510010 	cmp	r1, #16
800295b0:	21a01221 	lsrcs	r1, r1, #4
800295b4:	22822004 	addcs	r2, r2, #4
800295b8:	e3510004 	cmp	r1, #4
800295bc:	82822003 	addhi	r2, r2, #3
800295c0:	908220a1 	addls	r2, r2, r1, lsr #1
800295c4:	e1a00230 	lsr	r0, r0, r2
800295c8:	e12fff1e 	bx	lr
800295cc:	e3500000 	cmp	r0, #0
800295d0:	13e00000 	mvnne	r0, #0
800295d4:	ea000059 	b	80029740 <__aeabi_idiv0>

800295d8 <__aeabi_uidivmod>:
800295d8:	e3510000 	cmp	r1, #0
800295dc:	0afffffa 	beq	800295cc <__udivsi3+0xe8>
800295e0:	e92d4003 	push	{r0, r1, lr}
800295e4:	ebffffbe 	bl	800294e4 <__udivsi3>
800295e8:	e8bd4006 	pop	{r1, r2, lr}
800295ec:	e0030092 	mul	r3, r2, r0
800295f0:	e0411003 	sub	r1, r1, r3
800295f4:	e12fff1e 	bx	lr

800295f8 <__divsi3>:
800295f8:	e3510000 	cmp	r1, #0
800295fc:	0a000043 	beq	80029710 <.divsi3_skip_div0_test+0x110>

80029600 <.divsi3_skip_div0_test>:
80029600:	e020c001 	eor	ip, r0, r1
80029604:	42611000 	rsbmi	r1, r1, #0
80029608:	e2512001 	subs	r2, r1, #1
8002960c:	0a000027 	beq	800296b0 <.divsi3_skip_div0_test+0xb0>
80029610:	e1b03000 	movs	r3, r0
80029614:	42603000 	rsbmi	r3, r0, #0
80029618:	e1530001 	cmp	r3, r1
8002961c:	9a000026 	bls	800296bc <.divsi3_skip_div0_test+0xbc>
80029620:	e1110002 	tst	r1, r2
80029624:	0a000028 	beq	800296cc <.divsi3_skip_div0_test+0xcc>
80029628:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002962c:	01a01181 	lsleq	r1, r1, #3
80029630:	03a02008 	moveq	r2, #8
80029634:	13a02001 	movne	r2, #1
80029638:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002963c:	31510003 	cmpcc	r1, r3
80029640:	31a01201 	lslcc	r1, r1, #4
80029644:	31a02202 	lslcc	r2, r2, #4
80029648:	3afffffa 	bcc	80029638 <.divsi3_skip_div0_test+0x38>
8002964c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029650:	31510003 	cmpcc	r1, r3
80029654:	31a01081 	lslcc	r1, r1, #1
80029658:	31a02082 	lslcc	r2, r2, #1
8002965c:	3afffffa 	bcc	8002964c <.divsi3_skip_div0_test+0x4c>
80029660:	e3a00000 	mov	r0, #0
80029664:	e1530001 	cmp	r3, r1
80029668:	20433001 	subcs	r3, r3, r1
8002966c:	21800002 	orrcs	r0, r0, r2
80029670:	e15300a1 	cmp	r3, r1, lsr #1
80029674:	204330a1 	subcs	r3, r3, r1, lsr #1
80029678:	218000a2 	orrcs	r0, r0, r2, lsr #1
8002967c:	e1530121 	cmp	r3, r1, lsr #2
80029680:	20433121 	subcs	r3, r3, r1, lsr #2
80029684:	21800122 	orrcs	r0, r0, r2, lsr #2
80029688:	e15301a1 	cmp	r3, r1, lsr #3
8002968c:	204331a1 	subcs	r3, r3, r1, lsr #3
80029690:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029694:	e3530000 	cmp	r3, #0
80029698:	11b02222 	lsrsne	r2, r2, #4
8002969c:	11a01221 	lsrne	r1, r1, #4
800296a0:	1affffef 	bne	80029664 <.divsi3_skip_div0_test+0x64>
800296a4:	e35c0000 	cmp	ip, #0
800296a8:	42600000 	rsbmi	r0, r0, #0
800296ac:	e12fff1e 	bx	lr
800296b0:	e13c0000 	teq	ip, r0
800296b4:	42600000 	rsbmi	r0, r0, #0
800296b8:	e12fff1e 	bx	lr
800296bc:	33a00000 	movcc	r0, #0
800296c0:	01a00fcc 	asreq	r0, ip, #31
800296c4:	03800001 	orreq	r0, r0, #1
800296c8:	e12fff1e 	bx	lr
800296cc:	e3510801 	cmp	r1, #65536	@ 0x10000
800296d0:	21a01821 	lsrcs	r1, r1, #16
800296d4:	23a02010 	movcs	r2, #16
800296d8:	33a02000 	movcc	r2, #0
800296dc:	e3510c01 	cmp	r1, #256	@ 0x100
800296e0:	21a01421 	lsrcs	r1, r1, #8
800296e4:	22822008 	addcs	r2, r2, #8
800296e8:	e3510010 	cmp	r1, #16
800296ec:	21a01221 	lsrcs	r1, r1, #4
800296f0:	22822004 	addcs	r2, r2, #4
800296f4:	e3510004 	cmp	r1, #4
800296f8:	82822003 	addhi	r2, r2, #3
800296fc:	908220a1 	addls	r2, r2, r1, lsr #1
80029700:	e35c0000 	cmp	ip, #0
80029704:	e1a00233 	lsr	r0, r3, r2
80029708:	42600000 	rsbmi	r0, r0, #0
8002970c:	e12fff1e 	bx	lr
80029710:	e3500000 	cmp	r0, #0
80029714:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029718:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
8002971c:	ea000007 	b	80029740 <__aeabi_idiv0>

80029720 <__aeabi_idivmod>:
80029720:	e3510000 	cmp	r1, #0
80029724:	0afffff9 	beq	80029710 <.divsi3_skip_div0_test+0x110>
80029728:	e92d4003 	push	{r0, r1, lr}
8002972c:	ebffffb3 	bl	80029600 <.divsi3_skip_div0_test>
80029730:	e8bd4006 	pop	{r1, r2, lr}
80029734:	e0030092 	mul	r3, r2, r0
80029738:	e0411003 	sub	r1, r1, r3
8002973c:	e12fff1e 	bx	lr

80029740 <__aeabi_idiv0>:
80029740:	e12fff1e 	bx	lr
