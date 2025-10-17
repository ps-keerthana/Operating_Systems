
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
   10408:	800aa0c4 	.word	0x800aa0c4

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
8002067c:	800ad5fc 	.word	0x800ad5fc

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
8002071c:	8002903c 	.word	0x8002903c
80020720:	800ad5fc 	.word	0x800ad5fc
80020724:	80029054 	.word	0x80029054
80020728:	80029068 	.word	0x80029068

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
8002089c:	8002907c 	.word	0x8002907c
800208a0:	80029080 	.word	0x80029080

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
800208e4:	eb001519 	bl	80025d50 <initlock>
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
8002099c:	8002908c 	.word	0x8002908c
800209a0:	800aa0c4 	.word	0x800aa0c4
800209a4:	800ab5e8 	.word	0x800ab5e8
800209a8:	800aa0f8 	.word	0x800aa0f8

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb0014f3 	bl	80025d98 <acquire>
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
80020a30:	eb0014e3 	bl	80025dc4 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb0013f9 	bl	80025a30 <sleep>
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
80020acc:	eb0014bc 	bl	80025dc4 <release>
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
80020b08:	800aa0c4 	.word	0x800aa0c4
80020b0c:	800ab5e8 	.word	0x800ab5e8
80020b10:	80029094 	.word	0x80029094

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
80020bb8:	800290a8 	.word	0x800290a8

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
80020bec:	eb001469 	bl	80025d98 <acquire>
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
80020c78:	eb0013c1 	bl	80025b84 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb00144f 	bl	80025dc4 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	800290b0 	.word	0x800290b0
80020c94:	800aa0c4 	.word	0x800aa0c4
80020c98:	800ab5e8 	.word	0x800ab5e8

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
80020cf4:	800ab800 	.word	0x800ab800

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
80020d34:	800ab800 	.word	0x800ab800

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
80020d74:	800ab800 	.word	0x800ab800

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
80020dc8:	eb0013e0 	bl	80025d50 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	800290b8 	.word	0x800290b8
80020dd8:	800ab800 	.word	0x800ab800

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
80020f78:	800ab800 	.word	0x800ab800
80020f7c:	800ab840 	.word	0x800ab840
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
80021118:	800ab800 	.word	0x800ab800
8002111c:	800290c0 	.word	0x800290c0
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
80021268:	800ab800 	.word	0x800ab800
8002126c:	800290d0 	.word	0x800290d0
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
8002135c:	800ab800 	.word	0x800ab800
80021360:	800290e0 	.word	0x800290e0

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
8002141c:	800ab800 	.word	0x800ab800
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
80021458:	eb00124e 	bl	80025d98 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb001254 	bl	80025dc4 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	800290f8 	.word	0x800290f8
80021484:	800ab800 	.word	0x800ab800

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
8002157c:	80029118 	.word	0x80029118

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
800215dc:	eb0011ed 	bl	80025d98 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb0011f3 	bl	80025dc4 <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	8002912c 	.word	0x8002912c
80021604:	800ab800 	.word	0x800ab800

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
80021760:	8002915c 	.word	0x8002915c

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
800217d4:	eb001dbd 	bl	80028ed0 <__aeabi_uidivmod>
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
8002180c:	eb001d72 	bl	80028ddc <__udivsi3>
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
800218c0:	eb001134 	bl	80025d98 <acquire>
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
80021ad0:	eb0010bb 	bl	80025dc4 <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ab87c 	.word	0x800ab87c
80021aec:	8002916c 	.word	0x8002916c
80021af0:	80029178 	.word	0x80029178

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
80021b48:	800ab87c 	.word	0x800ab87c
80021b4c:	800ad5fc 	.word	0x800ad5fc
80021b50:	80029180 	.word	0x80029180
80021b54:	800ab878 	.word	0x800ab878

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
80021b94:	eb001c4f 	bl	80028cd8 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb001c4d 	bl	80028cd8 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb001c4b 	bl	80028cd8 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb001c48 	bl	80028cd8 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ab878 	.word	0x800ab878

80021bc4 <consoleintr>:
80021bc4:	e92d4800 	push	{fp, lr}
80021bc8:	e28db004 	add	fp, sp, #4
80021bcc:	e24dd010 	sub	sp, sp, #16
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f0258 	ldr	r0, [pc, #600]	@ 80021e34 <consoleintr+0x270>
80021bd8:	eb00106e 	bl	80025d98 <acquire>
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
80021c28:	eb00100f 	bl	80025c6c <procdump>
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
80021d1c:	eb000f98 	bl	80025b84 <wakeup>
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
80021dec:	eb000f64 	bl	80025b84 <wakeup>
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
80021e24:	eb000fe6 	bl	80025dc4 <release>
80021e28:	e1a00000 	nop			@ (mov r0, r0)
80021e2c:	e24bd004 	sub	sp, fp, #4
80021e30:	e8bd8800 	pop	{fp, pc}
80021e34:	800ab8b4 	.word	0x800ab8b4
80021e38:	800abae8 	.word	0x800abae8

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
80021e68:	eb000fca 	bl	80025d98 <acquire>
80021e6c:	ea000037 	b	80021f50 <consoleread+0x114>
80021e70:	e59f3120 	ldr	r3, [pc, #288]	@ 80021f98 <consoleread+0x15c>
80021e74:	e5933000 	ldr	r3, [r3]
80021e78:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021e7c:	e3530000 	cmp	r3, #0
80021e80:	0a000005 	beq	80021e9c <consoleread+0x60>
80021e84:	e59f0108 	ldr	r0, [pc, #264]	@ 80021f94 <consoleread+0x158>
80021e88:	eb000fcd 	bl	80025dc4 <release>
80021e8c:	e51b0010 	ldr	r0, [fp, #-16]
80021e90:	eb0004c2 	bl	800231a0 <ilock>
80021e94:	e3e03000 	mvn	r3, #0
80021e98:	ea00003a 	b	80021f88 <consoleread+0x14c>
80021e9c:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021f94 <consoleread+0x158>
80021ea0:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021f9c <consoleread+0x160>
80021ea4:	eb000ee1 	bl	80025a30 <sleep>
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
80021f70:	eb000f93 	bl	80025dc4 <release>
80021f74:	e51b0010 	ldr	r0, [fp, #-16]
80021f78:	eb000488 	bl	800231a0 <ilock>
80021f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f80:	e51b2008 	ldr	r2, [fp, #-8]
80021f84:	e0423003 	sub	r3, r2, r3
80021f88:	e1a00003 	mov	r0, r3
80021f8c:	e24bd004 	sub	sp, fp, #4
80021f90:	e8bd8800 	pop	{fp, pc}
80021f94:	800ab8b4 	.word	0x800ab8b4
80021f98:	800af640 	.word	0x800af640
80021f9c:	800abae8 	.word	0x800abae8

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
80021fc4:	eb000f73 	bl	80025d98 <acquire>
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
8002200c:	eb000f6c 	bl	80025dc4 <release>
80022010:	e51b0010 	ldr	r0, [fp, #-16]
80022014:	eb000461 	bl	800231a0 <ilock>
80022018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002201c:	e1a00003 	mov	r0, r3
80022020:	e24bd004 	sub	sp, fp, #4
80022024:	e8bd8800 	pop	{fp, pc}
80022028:	800ab87c 	.word	0x800ab87c

8002202c <consoleinit>:
8002202c:	e92d4800 	push	{fp, lr}
80022030:	e28db004 	add	fp, sp, #4
80022034:	e59f103c 	ldr	r1, [pc, #60]	@ 80022078 <consoleinit+0x4c>
80022038:	e59f003c 	ldr	r0, [pc, #60]	@ 8002207c <consoleinit+0x50>
8002203c:	eb000f43 	bl	80025d50 <initlock>
80022040:	e59f1038 	ldr	r1, [pc, #56]	@ 80022080 <consoleinit+0x54>
80022044:	e59f0038 	ldr	r0, [pc, #56]	@ 80022084 <consoleinit+0x58>
80022048:	eb000f40 	bl	80025d50 <initlock>
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
80022078:	80029190 	.word	0x80029190
8002207c:	800ab87c 	.word	0x800ab87c
80022080:	80029198 	.word	0x80029198
80022084:	800ab8b4 	.word	0x800ab8b4
80022088:	800abaf4 	.word	0x800abaf4
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
80022108:	eb0016fa 	bl	80027cf8 <kpt_alloc>
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
8002218c:	eb001805 	bl	800281a8 <allocuvm>
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
800221c4:	eb0017ab 	bl	80028078 <loaduvm>
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
80022244:	eb0017d7 	bl	800281a8 <allocuvm>
80022248:	e1a03000 	mov	r3, r0
8002224c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022250:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022254:	e3530000 	cmp	r3, #0
80022258:	0a0000a9 	beq	80022504 <exec+0x470>
8002225c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022260:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022264:	e1a01003 	mov	r1, r3
80022268:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002226c:	eb001882 	bl	8002847c <clearpteu>
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
8002230c:	eb0018ef 	bl	800286d0 <copyout>
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
800223dc:	eb0018bb 	bl	800286d0 <copyout>
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
800224b8:	eb0016b5 	bl	80027f94 <switchuvm>
800224bc:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
800224c0:	eb0017bd 	bl	800283bc <freevm>
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
80022530:	eb0017a1 	bl	800283bc <freevm>
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
8002255c:	800af640 	.word	0x800af640

80022560 <fileinit>:
80022560:	e92d4800 	push	{fp, lr}
80022564:	e28db004 	add	fp, sp, #4
80022568:	e59f100c 	ldr	r1, [pc, #12]	@ 8002257c <fileinit+0x1c>
8002256c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022580 <fileinit+0x20>
80022570:	eb000df6 	bl	80025d50 <initlock>
80022574:	e1a00000 	nop			@ (mov r0, r0)
80022578:	e8bd8800 	pop	{fp, pc}
8002257c:	800291a0 	.word	0x800291a0
80022580:	800abb44 	.word	0x800abb44

80022584 <filealloc>:
80022584:	e92d4800 	push	{fp, lr}
80022588:	e28db004 	add	fp, sp, #4
8002258c:	e24dd008 	sub	sp, sp, #8
80022590:	e59f006c 	ldr	r0, [pc, #108]	@ 80022604 <filealloc+0x80>
80022594:	eb000dff 	bl	80025d98 <acquire>
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
800225c4:	eb000dfe 	bl	80025dc4 <release>
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
800225f0:	eb000df3 	bl	80025dc4 <release>
800225f4:	e3a03000 	mov	r3, #0
800225f8:	e1a00003 	mov	r0, r3
800225fc:	e24bd004 	sub	sp, fp, #4
80022600:	e8bd8800 	pop	{fp, pc}
80022604:	800abb44 	.word	0x800abb44
80022608:	800abb78 	.word	0x800abb78
8002260c:	800ac4d8 	.word	0x800ac4d8

80022610 <filedup>:
80022610:	e92d4800 	push	{fp, lr}
80022614:	e28db004 	add	fp, sp, #4
80022618:	e24dd008 	sub	sp, sp, #8
8002261c:	e50b0008 	str	r0, [fp, #-8]
80022620:	e59f0044 	ldr	r0, [pc, #68]	@ 8002266c <filedup+0x5c>
80022624:	eb000ddb 	bl	80025d98 <acquire>
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
80022658:	eb000dd9 	bl	80025dc4 <release>
8002265c:	e51b3008 	ldr	r3, [fp, #-8]
80022660:	e1a00003 	mov	r0, r3
80022664:	e24bd004 	sub	sp, fp, #4
80022668:	e8bd8800 	pop	{fp, pc}
8002266c:	800abb44 	.word	0x800abb44
80022670:	800291a8 	.word	0x800291a8

80022674 <fileclose>:
80022674:	e92d4800 	push	{fp, lr}
80022678:	e28db004 	add	fp, sp, #4
8002267c:	e24dd020 	sub	sp, sp, #32
80022680:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022684:	e59f00d0 	ldr	r0, [pc, #208]	@ 8002275c <fileclose+0xe8>
80022688:	eb000dc2 	bl	80025d98 <acquire>
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
800226cc:	eb000dbc 	bl	80025dc4 <release>
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
8002270c:	eb000dac 	bl	80025dc4 <release>
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
8002275c:	800abb44 	.word	0x800abb44
80022760:	800291b0 	.word	0x800291b0

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
800228c4:	800291bc 	.word	0x800291bc

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
80022a68:	800291c8 	.word	0x800291c8
80022a6c:	800291d8 	.word	0x800291d8

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
80022ce8:	800291e4 	.word	0x800291e4

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
80022e10:	800291fc 	.word	0x800291fc

80022e14 <iinit>:
80022e14:	e92d4800 	push	{fp, lr}
80022e18:	e28db004 	add	fp, sp, #4
80022e1c:	e59f100c 	ldr	r1, [pc, #12]	@ 80022e30 <iinit+0x1c>
80022e20:	e59f000c 	ldr	r0, [pc, #12]	@ 80022e34 <iinit+0x20>
80022e24:	eb000bc9 	bl	80025d50 <initlock>
80022e28:	e1a00000 	nop			@ (mov r0, r0)
80022e2c:	e8bd8800 	pop	{fp, pc}
80022e30:	80029210 	.word	0x80029210
80022e34:	800ac4d8 	.word	0x800ac4d8

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
80022f34:	80029218 	.word	0x80029218

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
80023030:	eb000b58 	bl	80025d98 <acquire>
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
80023098:	eb000b49 	bl	80025dc4 <release>
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
80023134:	eb000b22 	bl	80025dc4 <release>
80023138:	e51b3008 	ldr	r3, [fp, #-8]
8002313c:	e1a00003 	mov	r0, r3
80023140:	e24bd004 	sub	sp, fp, #4
80023144:	e8bd8800 	pop	{fp, pc}
80023148:	800ac4d8 	.word	0x800ac4d8
8002314c:	800ac50c 	.word	0x800ac50c
80023150:	800ad4ac 	.word	0x800ad4ac
80023154:	8002922c 	.word	0x8002922c

80023158 <idup>:
80023158:	e92d4800 	push	{fp, lr}
8002315c:	e28db004 	add	fp, sp, #4
80023160:	e24dd008 	sub	sp, sp, #8
80023164:	e50b0008 	str	r0, [fp, #-8]
80023168:	e59f002c 	ldr	r0, [pc, #44]	@ 8002319c <idup+0x44>
8002316c:	eb000b09 	bl	80025d98 <acquire>
80023170:	e51b3008 	ldr	r3, [fp, #-8]
80023174:	e5933008 	ldr	r3, [r3, #8]
80023178:	e2832001 	add	r2, r3, #1
8002317c:	e51b3008 	ldr	r3, [fp, #-8]
80023180:	e5832008 	str	r2, [r3, #8]
80023184:	e59f0010 	ldr	r0, [pc, #16]	@ 8002319c <idup+0x44>
80023188:	eb000b0d 	bl	80025dc4 <release>
8002318c:	e51b3008 	ldr	r3, [fp, #-8]
80023190:	e1a00003 	mov	r0, r3
80023194:	e24bd004 	sub	sp, fp, #4
80023198:	e8bd8800 	pop	{fp, pc}
8002319c:	800ac4d8 	.word	0x800ac4d8

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
800231d8:	eb000aee 	bl	80025d98 <acquire>
800231dc:	ea000002 	b	800231ec <ilock+0x4c>
800231e0:	e59f1140 	ldr	r1, [pc, #320]	@ 80023328 <ilock+0x188>
800231e4:	e51b0010 	ldr	r0, [fp, #-16]
800231e8:	eb000a10 	bl	80025a30 <sleep>
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
80023218:	eb000ae9 	bl	80025dc4 <release>
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
80023324:	8002923c 	.word	0x8002923c
80023328:	800ac4d8 	.word	0x800ac4d8
8002332c:	80029244 	.word	0x80029244

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
8002337c:	eb000a85 	bl	80025d98 <acquire>
80023380:	e51b3008 	ldr	r3, [fp, #-8]
80023384:	e593300c 	ldr	r3, [r3, #12]
80023388:	e3c32001 	bic	r2, r3, #1
8002338c:	e51b3008 	ldr	r3, [fp, #-8]
80023390:	e583200c 	str	r2, [r3, #12]
80023394:	e51b0008 	ldr	r0, [fp, #-8]
80023398:	eb0009f9 	bl	80025b84 <wakeup>
8002339c:	e59f0010 	ldr	r0, [pc, #16]	@ 800233b4 <iunlock+0x84>
800233a0:	eb000a87 	bl	80025dc4 <release>
800233a4:	e1a00000 	nop			@ (mov r0, r0)
800233a8:	e24bd004 	sub	sp, fp, #4
800233ac:	e8bd8800 	pop	{fp, pc}
800233b0:	80029254 	.word	0x80029254
800233b4:	800ac4d8 	.word	0x800ac4d8

800233b8 <iput>:
800233b8:	e92d4800 	push	{fp, lr}
800233bc:	e28db004 	add	fp, sp, #4
800233c0:	e24dd008 	sub	sp, sp, #8
800233c4:	e50b0008 	str	r0, [fp, #-8]
800233c8:	e59f00cc 	ldr	r0, [pc, #204]	@ 8002349c <iput+0xe4>
800233cc:	eb000a71 	bl	80025d98 <acquire>
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
80023438:	eb000a61 	bl	80025dc4 <release>
8002343c:	e51b0008 	ldr	r0, [fp, #-8]
80023440:	eb00007f 	bl	80023644 <itrunc>
80023444:	e51b3008 	ldr	r3, [fp, #-8]
80023448:	e3a02000 	mov	r2, #0
8002344c:	e1c321b0 	strh	r2, [r3, #16]
80023450:	e51b0008 	ldr	r0, [fp, #-8]
80023454:	ebfffeb7 	bl	80022f38 <iupdate>
80023458:	e59f003c 	ldr	r0, [pc, #60]	@ 8002349c <iput+0xe4>
8002345c:	eb000a4d 	bl	80025d98 <acquire>
80023460:	e51b3008 	ldr	r3, [fp, #-8]
80023464:	e3a02000 	mov	r2, #0
80023468:	e583200c 	str	r2, [r3, #12]
8002346c:	e51b0008 	ldr	r0, [fp, #-8]
80023470:	eb0009c3 	bl	80025b84 <wakeup>
80023474:	e51b3008 	ldr	r3, [fp, #-8]
80023478:	e5933008 	ldr	r3, [r3, #8]
8002347c:	e2432001 	sub	r2, r3, #1
80023480:	e51b3008 	ldr	r3, [fp, #-8]
80023484:	e5832008 	str	r2, [r3, #8]
80023488:	e59f000c 	ldr	r0, [pc, #12]	@ 8002349c <iput+0xe4>
8002348c:	eb000a4c 	bl	80025dc4 <release>
80023490:	e1a00000 	nop			@ (mov r0, r0)
80023494:	e24bd004 	sub	sp, fp, #4
80023498:	e8bd8800 	pop	{fp, pc}
8002349c:	800ac4d8 	.word	0x800ac4d8
800234a0:	8002925c 	.word	0x8002925c

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
80023640:	80029268 	.word	0x80029268

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
80023a38:	800abaf4 	.word	0x800abaf4

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
80023c54:	800abaf4 	.word	0x800abaf4

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
80023d8c:	8002927c 	.word	0x8002927c
80023d90:	80029290 	.word	0x80029290

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
80023ea0:	80029290 	.word	0x80029290
80023ea4:	800292a0 	.word	0x800292a0

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
800240e8:	800af640 	.word	0x800af640

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
80024168:	eb0006f8 	bl	80025d50 <initlock>
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
800241c0:	800292a8 	.word	0x800292a8
800241c4:	800ad4ac 	.word	0x800ad4ac

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
800242a0:	800ad4ac 	.word	0x800ad4ac

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
8002435c:	800ad4ac 	.word	0x800ad4ac

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
80024420:	800ad4ac 	.word	0x800ad4ac

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
8002444c:	800ad4ac 	.word	0x800ad4ac

80024450 <begin_trans>:
80024450:	e92d4800 	push	{fp, lr}
80024454:	e28db004 	add	fp, sp, #4
80024458:	e59f003c 	ldr	r0, [pc, #60]	@ 8002449c <begin_trans+0x4c>
8002445c:	eb00064d 	bl	80025d98 <acquire>
80024460:	ea000002 	b	80024470 <begin_trans+0x20>
80024464:	e59f1030 	ldr	r1, [pc, #48]	@ 8002449c <begin_trans+0x4c>
80024468:	e59f002c 	ldr	r0, [pc, #44]	@ 8002449c <begin_trans+0x4c>
8002446c:	eb00056f 	bl	80025a30 <sleep>
80024470:	e59f3024 	ldr	r3, [pc, #36]	@ 8002449c <begin_trans+0x4c>
80024474:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024478:	e3530000 	cmp	r3, #0
8002447c:	1afffff8 	bne	80024464 <begin_trans+0x14>
80024480:	e59f3014 	ldr	r3, [pc, #20]	@ 8002449c <begin_trans+0x4c>
80024484:	e3a02001 	mov	r2, #1
80024488:	e583203c 	str	r2, [r3, #60]	@ 0x3c
8002448c:	e59f0008 	ldr	r0, [pc, #8]	@ 8002449c <begin_trans+0x4c>
80024490:	eb00064b 	bl	80025dc4 <release>
80024494:	e1a00000 	nop			@ (mov r0, r0)
80024498:	e8bd8800 	pop	{fp, pc}
8002449c:	800ad4ac 	.word	0x800ad4ac

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
800244d4:	eb00062f 	bl	80025d98 <acquire>
800244d8:	e59f301c 	ldr	r3, [pc, #28]	@ 800244fc <commit_trans+0x5c>
800244dc:	e3a02000 	mov	r2, #0
800244e0:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800244e4:	e59f0010 	ldr	r0, [pc, #16]	@ 800244fc <commit_trans+0x5c>
800244e8:	eb0005a5 	bl	80025b84 <wakeup>
800244ec:	e59f0008 	ldr	r0, [pc, #8]	@ 800244fc <commit_trans+0x5c>
800244f0:	eb000633 	bl	80025dc4 <release>
800244f4:	e1a00000 	nop			@ (mov r0, r0)
800244f8:	e8bd8800 	pop	{fp, pc}
800244fc:	800ad4ac 	.word	0x800ad4ac

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
8002467c:	800ad4ac 	.word	0x800ad4ac
80024680:	800292ac 	.word	0x800292ac
80024684:	800292c4 	.word	0x800292c4

80024688 <kmain>:
80024688:	e92d4800 	push	{fp, lr}
8002468c:	e28db004 	add	fp, sp, #4
80024690:	e24dd008 	sub	sp, sp, #8
80024694:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024740 <kmain+0xb8>
80024698:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024744 <kmain+0xbc>
8002469c:	e5832000 	str	r2, [r3]
800246a0:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024748 <kmain+0xc0>
800246a4:	eb00114c 	bl	80028bdc <uart_init>
800246a8:	e59f309c 	ldr	r3, [pc, #156]	@ 8002474c <kmain+0xc4>
800246ac:	e50b3008 	str	r3, [fp, #-8]
800246b0:	eb000d48 	bl	80027bd8 <init_vmm>
800246b4:	e59f3094 	ldr	r3, [pc, #148]	@ 80024750 <kmain+0xc8>
800246b8:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
800246bc:	e2833003 	add	r3, r3, #3
800246c0:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800246c4:	e3c33003 	bic	r3, r3, #3
800246c8:	e51b1008 	ldr	r1, [fp, #-8]
800246cc:	e1a00003 	mov	r0, r3
800246d0:	eb000d74 	bl	80027ca8 <kpt_freerange>
800246d4:	e51b3008 	ldr	r3, [fp, #-8]
800246d8:	e2833b01 	add	r3, r3, #1024	@ 0x400
800246dc:	e59f1070 	ldr	r1, [pc, #112]	@ 80024754 <kmain+0xcc>
800246e0:	e1a00003 	mov	r0, r3
800246e4:	eb000d6f 	bl	80027ca8 <kpt_freerange>
800246e8:	e3a01302 	mov	r1, #134217728	@ 0x8000000
800246ec:	e3a00601 	mov	r0, #1048576	@ 0x100000
800246f0:	eb001034 	bl	800287c8 <paging_init>
800246f4:	ebfff1af 	bl	80020db8 <kmem_init>
800246f8:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
800246fc:	e59f0050 	ldr	r0, [pc, #80]	@ 80024754 <kmain+0xcc>
80024700:	ebfff1b5 	bl	80020ddc <kmem_init2>
80024704:	eb000c37 	bl	800277e8 <trap_init>
80024708:	e59f0048 	ldr	r0, [pc, #72]	@ 80024758 <kmain+0xd0>
8002470c:	eb00104e 	bl	8002884c <pic_init>
80024710:	eb001162 	bl	80028ca0 <uart_enable_rx>
80024714:	ebfff644 	bl	8002202c <consoleinit>
80024718:	eb0001b7 	bl	80024dfc <pinit>
8002471c:	ebfff06b 	bl	800208d0 <binit>
80024720:	ebfff78e 	bl	80022560 <fileinit>
80024724:	ebfff9ba 	bl	80022e14 <iinit>
80024728:	eb00000b 	bl	8002475c <ideinit>
8002472c:	e3a0000a 	mov	r0, #10
80024730:	eb0010d8 	bl	80028a98 <timer_init>
80024734:	ebffef8f 	bl	80020578 <sti>
80024738:	eb00027b 	bl	8002512c <userinit>
8002473c:	eb000431 	bl	80025808 <scheduler>
80024740:	800ad5fc 	.word	0x800ad5fc
80024744:	800ad51c 	.word	0x800ad51c
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
80024794:	800ad604 	.word	0x800ad604
80024798:	8002a0c4 	.word	0x8002a0c4
8002479c:	00080000 	.word	0x00080000
800247a0:	800ad600 	.word	0x800ad600

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
800248d4:	800292dc 	.word	0x800292dc
800248d8:	800292f0 	.word	0x800292f0
800248dc:	80029308 	.word	0x80029308
800248e0:	800ad600 	.word	0x800ad600
800248e4:	80029328 	.word	0x80029328
800248e8:	800ad604 	.word	0x800ad604

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
800249c4:	eb0004e1 	bl	80025d50 <initlock>
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
80024ad0:	80029344 	.word	0x80029344

80024ad4 <pipeclose>:
80024ad4:	e92d4800 	push	{fp, lr}
80024ad8:	e28db004 	add	fp, sp, #4
80024adc:	e24dd008 	sub	sp, sp, #8
80024ae0:	e50b0008 	str	r0, [fp, #-8]
80024ae4:	e50b100c 	str	r1, [fp, #-12]
80024ae8:	e51b3008 	ldr	r3, [fp, #-8]
80024aec:	e1a00003 	mov	r0, r3
80024af0:	eb0004a8 	bl	80025d98 <acquire>
80024af4:	e51b300c 	ldr	r3, [fp, #-12]
80024af8:	e3530000 	cmp	r3, #0
80024afc:	0a000007 	beq	80024b20 <pipeclose+0x4c>
80024b00:	e51b3008 	ldr	r3, [fp, #-8]
80024b04:	e3a02000 	mov	r2, #0
80024b08:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024b0c:	e51b3008 	ldr	r3, [fp, #-8]
80024b10:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024b14:	e1a00003 	mov	r0, r3
80024b18:	eb000419 	bl	80025b84 <wakeup>
80024b1c:	ea000006 	b	80024b3c <pipeclose+0x68>
80024b20:	e51b3008 	ldr	r3, [fp, #-8]
80024b24:	e3a02000 	mov	r2, #0
80024b28:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024b2c:	e51b3008 	ldr	r3, [fp, #-8]
80024b30:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024b34:	e1a00003 	mov	r0, r3
80024b38:	eb000411 	bl	80025b84 <wakeup>
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
80024b64:	eb000496 	bl	80025dc4 <release>
80024b68:	e3a00f91 	mov	r0, #580	@ 0x244
80024b6c:	ebfff2b6 	bl	8002164c <get_order>
80024b70:	e1a03000 	mov	r3, r0
80024b74:	e1a01003 	mov	r1, r3
80024b78:	e51b0008 	ldr	r0, [fp, #-8]
80024b7c:	ebfff27f 	bl	80021580 <kfree>
80024b80:	ea000003 	b	80024b94 <pipeclose+0xc0>
80024b84:	e51b3008 	ldr	r3, [fp, #-8]
80024b88:	e1a00003 	mov	r0, r3
80024b8c:	eb00048c 	bl	80025dc4 <release>
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
80024bc0:	eb000474 	bl	80025d98 <acquire>
80024bc4:	e3a03000 	mov	r3, #0
80024bc8:	e50b3008 	str	r3, [fp, #-8]
80024bcc:	ea00002b 	b	80024c80 <pipewrite+0xe0>
80024bd0:	e51b3010 	ldr	r3, [fp, #-16]
80024bd4:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024bd8:	e3530000 	cmp	r3, #0
80024bdc:	1a000004 	bne	80024bf4 <pipewrite+0x54>
80024be0:	e51b3010 	ldr	r3, [fp, #-16]
80024be4:	e1a00003 	mov	r0, r3
80024be8:	eb000475 	bl	80025dc4 <release>
80024bec:	e3e03000 	mvn	r3, #0
80024bf0:	ea00002e 	b	80024cb0 <pipewrite+0x110>
80024bf4:	e51b3010 	ldr	r3, [fp, #-16]
80024bf8:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024bfc:	e1a00003 	mov	r0, r3
80024c00:	eb0003df 	bl	80025b84 <wakeup>
80024c04:	e51b3010 	ldr	r3, [fp, #-16]
80024c08:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024c0c:	e51b2010 	ldr	r2, [fp, #-16]
80024c10:	e1a01002 	mov	r1, r2
80024c14:	e1a00003 	mov	r0, r3
80024c18:	eb000384 	bl	80025a30 <sleep>
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
80024c9c:	eb0003b8 	bl	80025b84 <wakeup>
80024ca0:	e51b3010 	ldr	r3, [fp, #-16]
80024ca4:	e1a00003 	mov	r0, r3
80024ca8:	eb000445 	bl	80025dc4 <release>
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
80024cdc:	eb00042d 	bl	80025d98 <acquire>
80024ce0:	ea00000f 	b	80024d24 <piperead+0x68>
80024ce4:	e59f310c 	ldr	r3, [pc, #268]	@ 80024df8 <piperead+0x13c>
80024ce8:	e5933000 	ldr	r3, [r3]
80024cec:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024cf0:	e3530000 	cmp	r3, #0
80024cf4:	0a000004 	beq	80024d0c <piperead+0x50>
80024cf8:	e51b3010 	ldr	r3, [fp, #-16]
80024cfc:	e1a00003 	mov	r0, r3
80024d00:	eb00042f 	bl	80025dc4 <release>
80024d04:	e3e03000 	mvn	r3, #0
80024d08:	ea000037 	b	80024dec <piperead+0x130>
80024d0c:	e51b3010 	ldr	r3, [fp, #-16]
80024d10:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d14:	e51b2010 	ldr	r2, [fp, #-16]
80024d18:	e1a01002 	mov	r1, r2
80024d1c:	e1a00003 	mov	r0, r3
80024d20:	eb000342 	bl	80025a30 <sleep>
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
80024dd8:	eb000369 	bl	80025b84 <wakeup>
80024ddc:	e51b3010 	ldr	r3, [fp, #-16]
80024de0:	e1a00003 	mov	r0, r3
80024de4:	eb0003f6 	bl	80025dc4 <release>
80024de8:	e51b3008 	ldr	r3, [fp, #-8]
80024dec:	e1a00003 	mov	r0, r3
80024df0:	e24bd004 	sub	sp, fp, #4
80024df4:	e8bd8800 	pop	{fp, pc}
80024df8:	800af640 	.word	0x800af640

80024dfc <pinit>:
80024dfc:	e92d4800 	push	{fp, lr}
80024e00:	e28db004 	add	fp, sp, #4
80024e04:	e59f100c 	ldr	r1, [pc, #12]	@ 80024e18 <pinit+0x1c>
80024e08:	e59f000c 	ldr	r0, [pc, #12]	@ 80024e1c <pinit+0x20>
80024e0c:	eb0003cf 	bl	80025d50 <initlock>
80024e10:	e1a00000 	nop			@ (mov r0, r0)
80024e14:	e8bd8800 	pop	{fp, pc}
80024e18:	8002934c 	.word	0x8002934c
80024e1c:	800ad608 	.word	0x800ad608

80024e20 <allocproc>:
80024e20:	e92d4800 	push	{fp, lr}
80024e24:	e28db004 	add	fp, sp, #4
80024e28:	e24dd008 	sub	sp, sp, #8
80024e2c:	e59f0170 	ldr	r0, [pc, #368]	@ 80024fa4 <allocproc+0x184>
80024e30:	eb0003d8 	bl	80025d98 <acquire>
80024e34:	e59f316c 	ldr	r3, [pc, #364]	@ 80024fa8 <allocproc+0x188>
80024e38:	e50b3008 	str	r3, [fp, #-8]
80024e3c:	ea000006 	b	80024e5c <allocproc+0x3c>
80024e40:	e51b3008 	ldr	r3, [fp, #-8]
80024e44:	e5d3300c 	ldrb	r3, [r3, #12]
80024e48:	e3530000 	cmp	r3, #0
80024e4c:	0a00000a 	beq	80024e7c <allocproc+0x5c>
80024e50:	e51b3008 	ldr	r3, [fp, #-8]
80024e54:	e2833080 	add	r3, r3, #128	@ 0x80
80024e58:	e50b3008 	str	r3, [fp, #-8]
80024e5c:	e51b3008 	ldr	r3, [fp, #-8]
80024e60:	e59f2144 	ldr	r2, [pc, #324]	@ 80024fac <allocproc+0x18c>
80024e64:	e1530002 	cmp	r3, r2
80024e68:	3afffff4 	bcc	80024e40 <allocproc+0x20>
80024e6c:	e59f0130 	ldr	r0, [pc, #304]	@ 80024fa4 <allocproc+0x184>
80024e70:	eb0003d3 	bl	80025dc4 <release>
80024e74:	e3a03000 	mov	r3, #0
80024e78:	ea000046 	b	80024f98 <allocproc+0x178>
80024e7c:	e1a00000 	nop			@ (mov r0, r0)
80024e80:	e51b3008 	ldr	r3, [fp, #-8]
80024e84:	e3a02001 	mov	r2, #1
80024e88:	e5c3200c 	strb	r2, [r3, #12]
80024e8c:	e59f311c 	ldr	r3, [pc, #284]	@ 80024fb0 <allocproc+0x190>
80024e90:	e5933000 	ldr	r3, [r3]
80024e94:	e2832001 	add	r2, r3, #1
80024e98:	e59f1110 	ldr	r1, [pc, #272]	@ 80024fb0 <allocproc+0x190>
80024e9c:	e5812000 	str	r2, [r1]
80024ea0:	e51b2008 	ldr	r2, [fp, #-8]
80024ea4:	e5823010 	str	r3, [r2, #16]
80024ea8:	e59f00f4 	ldr	r0, [pc, #244]	@ 80024fa4 <allocproc+0x184>
80024eac:	eb0003c4 	bl	80025dc4 <release>
80024eb0:	ebfff1de 	bl	80021630 <alloc_page>
80024eb4:	e1a02000 	mov	r2, r0
80024eb8:	e51b3008 	ldr	r3, [fp, #-8]
80024ebc:	e5832008 	str	r2, [r3, #8]
80024ec0:	e51b3008 	ldr	r3, [fp, #-8]
80024ec4:	e5933008 	ldr	r3, [r3, #8]
80024ec8:	e3530000 	cmp	r3, #0
80024ecc:	1a000004 	bne	80024ee4 <allocproc+0xc4>
80024ed0:	e51b3008 	ldr	r3, [fp, #-8]
80024ed4:	e3a02000 	mov	r2, #0
80024ed8:	e5c3200c 	strb	r2, [r3, #12]
80024edc:	e3a03000 	mov	r3, #0
80024ee0:	ea00002c 	b	80024f98 <allocproc+0x178>
80024ee4:	e51b3008 	ldr	r3, [fp, #-8]
80024ee8:	e5933008 	ldr	r3, [r3, #8]
80024eec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80024ef0:	e50b300c 	str	r3, [fp, #-12]
80024ef4:	e51b300c 	ldr	r3, [fp, #-12]
80024ef8:	e2433048 	sub	r3, r3, #72	@ 0x48
80024efc:	e50b300c 	str	r3, [fp, #-12]
80024f00:	e51b3008 	ldr	r3, [fp, #-8]
80024f04:	e51b200c 	ldr	r2, [fp, #-12]
80024f08:	e5832018 	str	r2, [r3, #24]
80024f0c:	e51b300c 	ldr	r3, [fp, #-12]
80024f10:	e2433004 	sub	r3, r3, #4
80024f14:	e50b300c 	str	r3, [fp, #-12]
80024f18:	e59f2094 	ldr	r2, [pc, #148]	@ 80024fb4 <allocproc+0x194>
80024f1c:	e51b300c 	ldr	r3, [fp, #-12]
80024f20:	e5832000 	str	r2, [r3]
80024f24:	e51b300c 	ldr	r3, [fp, #-12]
80024f28:	e2433004 	sub	r3, r3, #4
80024f2c:	e50b300c 	str	r3, [fp, #-12]
80024f30:	e51b3008 	ldr	r3, [fp, #-8]
80024f34:	e5933008 	ldr	r3, [r3, #8]
80024f38:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80024f3c:	e51b300c 	ldr	r3, [fp, #-12]
80024f40:	e5832000 	str	r2, [r3]
80024f44:	e51b300c 	ldr	r3, [fp, #-12]
80024f48:	e2433028 	sub	r3, r3, #40	@ 0x28
80024f4c:	e50b300c 	str	r3, [fp, #-12]
80024f50:	e51b3008 	ldr	r3, [fp, #-8]
80024f54:	e51b200c 	ldr	r2, [fp, #-12]
80024f58:	e583201c 	str	r2, [r3, #28]
80024f5c:	e51b3008 	ldr	r3, [fp, #-8]
80024f60:	e593301c 	ldr	r3, [r3, #28]
80024f64:	e3a02028 	mov	r2, #40	@ 0x28
80024f68:	e3a01000 	mov	r1, #0
80024f6c:	e1a00003 	mov	r0, r3
80024f70:	ebffec22 	bl	80020000 <memset>
80024f74:	e59f203c 	ldr	r2, [pc, #60]	@ 80024fb8 <allocproc+0x198>
80024f78:	e51b3008 	ldr	r3, [fp, #-8]
80024f7c:	e593301c 	ldr	r3, [r3, #28]
80024f80:	e2822004 	add	r2, r2, #4
80024f84:	e5832024 	str	r2, [r3, #36]	@ 0x24
80024f88:	e51b3008 	ldr	r3, [fp, #-8]
80024f8c:	e3a02000 	mov	r2, #0
80024f90:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80024f94:	e51b3008 	ldr	r3, [fp, #-8]
80024f98:	e1a00003 	mov	r0, r3
80024f9c:	e24bd004 	sub	sp, fp, #4
80024fa0:	e8bd8800 	pop	{fp, pc}
80024fa4:	800ad608 	.word	0x800ad608
80024fa8:	800ad63c 	.word	0x800ad63c
80024fac:	800af63c 	.word	0x800af63c
80024fb0:	8002a014 	.word	0x8002a014
80024fb4:	80027498 	.word	0x80027498
80024fb8:	800259f0 	.word	0x800259f0

80024fbc <proclist>:
80024fbc:	e92d4800 	push	{fp, lr}
80024fc0:	e28db004 	add	fp, sp, #4
80024fc4:	e24dd010 	sub	sp, sp, #16
80024fc8:	e50b0010 	str	r0, [fp, #-16]
80024fcc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024fd0:	e3a03000 	mov	r3, #0
80024fd4:	e50b300c 	str	r3, [fp, #-12]
80024fd8:	e59f012c 	ldr	r0, [pc, #300]	@ 8002510c <proclist+0x150>
80024fdc:	eb00036d 	bl	80025d98 <acquire>
80024fe0:	e59f3128 	ldr	r3, [pc, #296]	@ 80025110 <proclist+0x154>
80024fe4:	e50b3008 	str	r3, [fp, #-8]
80024fe8:	ea000039 	b	800250d4 <proclist+0x118>
80024fec:	e51b3008 	ldr	r3, [fp, #-8]
80024ff0:	e5d3300c 	ldrb	r3, [r3, #12]
80024ff4:	e3530000 	cmp	r3, #0
80024ff8:	0a000031 	beq	800250c4 <proclist+0x108>
80024ffc:	e51b300c 	ldr	r3, [fp, #-12]
80025000:	e1a03283 	lsl	r3, r3, #5
80025004:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025008:	e0823003 	add	r3, r2, r3
8002500c:	e51b2008 	ldr	r2, [fp, #-8]
80025010:	e5922010 	ldr	r2, [r2, #16]
80025014:	e5832000 	str	r2, [r3]
80025018:	e51b3008 	ldr	r3, [fp, #-8]
8002501c:	e5933014 	ldr	r3, [r3, #20]
80025020:	e3530000 	cmp	r3, #0
80025024:	0a000003 	beq	80025038 <proclist+0x7c>
80025028:	e51b3008 	ldr	r3, [fp, #-8]
8002502c:	e5933014 	ldr	r3, [r3, #20]
80025030:	e5933010 	ldr	r3, [r3, #16]
80025034:	ea000000 	b	8002503c <proclist+0x80>
80025038:	e3a03000 	mov	r3, #0
8002503c:	e51b200c 	ldr	r2, [fp, #-12]
80025040:	e1a02282 	lsl	r2, r2, #5
80025044:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80025048:	e0812002 	add	r2, r1, r2
8002504c:	e5823004 	str	r3, [r2, #4]
80025050:	e51b300c 	ldr	r3, [fp, #-12]
80025054:	e1a03283 	lsl	r3, r3, #5
80025058:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002505c:	e0823003 	add	r3, r2, r3
80025060:	e2830008 	add	r0, r3, #8
80025064:	e51b3008 	ldr	r3, [fp, #-8]
80025068:	e283306c 	add	r3, r3, #108	@ 0x6c
8002506c:	e3a02010 	mov	r2, #16
80025070:	e1a01003 	mov	r1, r3
80025074:	ebffecf5 	bl	80020450 <safestrcpy>
80025078:	e51b3008 	ldr	r3, [fp, #-8]
8002507c:	e5d3100c 	ldrb	r1, [r3, #12]
80025080:	e51b300c 	ldr	r3, [fp, #-12]
80025084:	e1a03283 	lsl	r3, r3, #5
80025088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002508c:	e0823003 	add	r3, r2, r3
80025090:	e1a02001 	mov	r2, r1
80025094:	e5832018 	str	r2, [r3, #24]
80025098:	e51b300c 	ldr	r3, [fp, #-12]
8002509c:	e1a03283 	lsl	r3, r3, #5
800250a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800250a4:	e0823003 	add	r3, r2, r3
800250a8:	e51b2008 	ldr	r2, [fp, #-8]
800250ac:	e592207c 	ldr	r2, [r2, #124]	@ 0x7c
800250b0:	e583201c 	str	r2, [r3, #28]
800250b4:	e51b300c 	ldr	r3, [fp, #-12]
800250b8:	e2833001 	add	r3, r3, #1
800250bc:	e50b300c 	str	r3, [fp, #-12]
800250c0:	ea000000 	b	800250c8 <proclist+0x10c>
800250c4:	e1a00000 	nop			@ (mov r0, r0)
800250c8:	e51b3008 	ldr	r3, [fp, #-8]
800250cc:	e2833080 	add	r3, r3, #128	@ 0x80
800250d0:	e50b3008 	str	r3, [fp, #-8]
800250d4:	e51b3008 	ldr	r3, [fp, #-8]
800250d8:	e59f2034 	ldr	r2, [pc, #52]	@ 80025114 <proclist+0x158>
800250dc:	e1530002 	cmp	r3, r2
800250e0:	2a000003 	bcs	800250f4 <proclist+0x138>
800250e4:	e51b200c 	ldr	r2, [fp, #-12]
800250e8:	e51b3010 	ldr	r3, [fp, #-16]
800250ec:	e1520003 	cmp	r2, r3
800250f0:	baffffbd 	blt	80024fec <proclist+0x30>
800250f4:	e59f0010 	ldr	r0, [pc, #16]	@ 8002510c <proclist+0x150>
800250f8:	eb000331 	bl	80025dc4 <release>
800250fc:	e51b300c 	ldr	r3, [fp, #-12]
80025100:	e1a00003 	mov	r0, r3
80025104:	e24bd004 	sub	sp, fp, #4
80025108:	e8bd8800 	pop	{fp, pc}
8002510c:	800ad608 	.word	0x800ad608
80025110:	800ad63c 	.word	0x800ad63c
80025114:	800af63c 	.word	0x800af63c

80025118 <error_init>:
80025118:	e92d4800 	push	{fp, lr}
8002511c:	e28db004 	add	fp, sp, #4
80025120:	e59f0000 	ldr	r0, [pc]	@ 80025128 <error_init+0x10>
80025124:	ebfff272 	bl	80021af4 <panic>
80025128:	80029354 	.word	0x80029354

8002512c <userinit>:
8002512c:	e92d4810 	push	{r4, fp, lr}
80025130:	e28db008 	add	fp, sp, #8
80025134:	e24dd00c 	sub	sp, sp, #12
80025138:	ebffff38 	bl	80024e20 <allocproc>
8002513c:	e50b0010 	str	r0, [fp, #-16]
80025140:	e59f2100 	ldr	r2, [pc, #256]	@ 80025248 <userinit+0x11c>
80025144:	e51b3010 	ldr	r3, [fp, #-16]
80025148:	e5823000 	str	r3, [r2]
8002514c:	eb000ae9 	bl	80027cf8 <kpt_alloc>
80025150:	e1a02000 	mov	r2, r0
80025154:	e51b3010 	ldr	r3, [fp, #-16]
80025158:	e5832004 	str	r2, [r3, #4]
8002515c:	e51b3010 	ldr	r3, [fp, #-16]
80025160:	e5933004 	ldr	r3, [r3, #4]
80025164:	e3530000 	cmp	r3, #0
80025168:	1a000001 	bne	80025174 <userinit+0x48>
8002516c:	e59f00d8 	ldr	r0, [pc, #216]	@ 8002524c <userinit+0x120>
80025170:	ebfff25f 	bl	80021af4 <panic>
80025174:	e51b3010 	ldr	r3, [fp, #-16]
80025178:	e5933004 	ldr	r3, [r3, #4]
8002517c:	e59f20cc 	ldr	r2, [pc, #204]	@ 80025250 <userinit+0x124>
80025180:	e59f10cc 	ldr	r1, [pc, #204]	@ 80025254 <userinit+0x128>
80025184:	e1a00003 	mov	r0, r3
80025188:	eb000b98 	bl	80027ff0 <inituvm>
8002518c:	e51b3010 	ldr	r3, [fp, #-16]
80025190:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025194:	e5832000 	str	r2, [r3]
80025198:	e51b3010 	ldr	r3, [fp, #-16]
8002519c:	e5933018 	ldr	r3, [r3, #24]
800251a0:	e3a02048 	mov	r2, #72	@ 0x48
800251a4:	e3a01000 	mov	r1, #0
800251a8:	e1a00003 	mov	r0, r3
800251ac:	ebffeb93 	bl	80020000 <memset>
800251b0:	e51b3010 	ldr	r3, [fp, #-16]
800251b4:	e5933018 	ldr	r3, [r3, #24]
800251b8:	e59f2098 	ldr	r2, [pc, #152]	@ 80025258 <userinit+0x12c>
800251bc:	e5832008 	str	r2, [r3, #8]
800251c0:	e51b3010 	ldr	r3, [fp, #-16]
800251c4:	e5934018 	ldr	r4, [r3, #24]
800251c8:	ebffecf8 	bl	800205b0 <spsr_usr>
800251cc:	e1a03000 	mov	r3, r0
800251d0:	e584300c 	str	r3, [r4, #12]
800251d4:	e51b3010 	ldr	r3, [fp, #-16]
800251d8:	e5933018 	ldr	r3, [r3, #24]
800251dc:	e3a02a01 	mov	r2, #4096	@ 0x1000
800251e0:	e5832000 	str	r2, [r3]
800251e4:	e51b3010 	ldr	r3, [fp, #-16]
800251e8:	e5933018 	ldr	r3, [r3, #24]
800251ec:	e3a02000 	mov	r2, #0
800251f0:	e5832004 	str	r2, [r3, #4]
800251f4:	e51b3010 	ldr	r3, [fp, #-16]
800251f8:	e5933018 	ldr	r3, [r3, #24]
800251fc:	e3a02000 	mov	r2, #0
80025200:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025204:	e51b3010 	ldr	r3, [fp, #-16]
80025208:	e283306c 	add	r3, r3, #108	@ 0x6c
8002520c:	e3a02010 	mov	r2, #16
80025210:	e59f1044 	ldr	r1, [pc, #68]	@ 8002525c <userinit+0x130>
80025214:	e1a00003 	mov	r0, r3
80025218:	ebffec8c 	bl	80020450 <safestrcpy>
8002521c:	e59f003c 	ldr	r0, [pc, #60]	@ 80025260 <userinit+0x134>
80025220:	ebfffbb1 	bl	800240ec <namei>
80025224:	e1a02000 	mov	r2, r0
80025228:	e51b3010 	ldr	r3, [fp, #-16]
8002522c:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025230:	e51b3010 	ldr	r3, [fp, #-16]
80025234:	e3a02003 	mov	r2, #3
80025238:	e5c3200c 	strb	r2, [r3, #12]
8002523c:	e1a00000 	nop			@ (mov r0, r0)
80025240:	e24bd008 	sub	sp, fp, #8
80025244:	e8bd8810 	pop	{r4, fp, pc}
80025248:	800af63c 	.word	0x800af63c
8002524c:	80029374 	.word	0x80029374
80025250:	00000034 	.word	0x00000034
80025254:	8002a090 	.word	0x8002a090
80025258:	80025118 	.word	0x80025118
8002525c:	80029390 	.word	0x80029390
80025260:	8002939c 	.word	0x8002939c

80025264 <growproc>:
80025264:	e92d4800 	push	{fp, lr}
80025268:	e28db004 	add	fp, sp, #4
8002526c:	e24dd010 	sub	sp, sp, #16
80025270:	e50b0010 	str	r0, [fp, #-16]
80025274:	e59f30d0 	ldr	r3, [pc, #208]	@ 8002534c <growproc+0xe8>
80025278:	e5933000 	ldr	r3, [r3]
8002527c:	e5933000 	ldr	r3, [r3]
80025280:	e50b3008 	str	r3, [fp, #-8]
80025284:	e51b3010 	ldr	r3, [fp, #-16]
80025288:	e3530000 	cmp	r3, #0
8002528c:	da00000f 	ble	800252d0 <growproc+0x6c>
80025290:	e59f30b4 	ldr	r3, [pc, #180]	@ 8002534c <growproc+0xe8>
80025294:	e5933000 	ldr	r3, [r3]
80025298:	e5930004 	ldr	r0, [r3, #4]
8002529c:	e51b2010 	ldr	r2, [fp, #-16]
800252a0:	e51b3008 	ldr	r3, [fp, #-8]
800252a4:	e0823003 	add	r3, r2, r3
800252a8:	e1a02003 	mov	r2, r3
800252ac:	e51b1008 	ldr	r1, [fp, #-8]
800252b0:	eb000bbc 	bl	800281a8 <allocuvm>
800252b4:	e1a03000 	mov	r3, r0
800252b8:	e50b3008 	str	r3, [fp, #-8]
800252bc:	e51b3008 	ldr	r3, [fp, #-8]
800252c0:	e3530000 	cmp	r3, #0
800252c4:	1a000014 	bne	8002531c <growproc+0xb8>
800252c8:	e3e03000 	mvn	r3, #0
800252cc:	ea00001b 	b	80025340 <growproc+0xdc>
800252d0:	e51b3010 	ldr	r3, [fp, #-16]
800252d4:	e3530000 	cmp	r3, #0
800252d8:	aa00000f 	bge	8002531c <growproc+0xb8>
800252dc:	e59f3068 	ldr	r3, [pc, #104]	@ 8002534c <growproc+0xe8>
800252e0:	e5933000 	ldr	r3, [r3]
800252e4:	e5930004 	ldr	r0, [r3, #4]
800252e8:	e51b2010 	ldr	r2, [fp, #-16]
800252ec:	e51b3008 	ldr	r3, [fp, #-8]
800252f0:	e0823003 	add	r3, r2, r3
800252f4:	e1a02003 	mov	r2, r3
800252f8:	e51b1008 	ldr	r1, [fp, #-8]
800252fc:	eb000be8 	bl	800282a4 <deallocuvm>
80025300:	e1a03000 	mov	r3, r0
80025304:	e50b3008 	str	r3, [fp, #-8]
80025308:	e51b3008 	ldr	r3, [fp, #-8]
8002530c:	e3530000 	cmp	r3, #0
80025310:	1a000001 	bne	8002531c <growproc+0xb8>
80025314:	e3e03000 	mvn	r3, #0
80025318:	ea000008 	b	80025340 <growproc+0xdc>
8002531c:	e59f3028 	ldr	r3, [pc, #40]	@ 8002534c <growproc+0xe8>
80025320:	e5933000 	ldr	r3, [r3]
80025324:	e51b2008 	ldr	r2, [fp, #-8]
80025328:	e5832000 	str	r2, [r3]
8002532c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002534c <growproc+0xe8>
80025330:	e5933000 	ldr	r3, [r3]
80025334:	e1a00003 	mov	r0, r3
80025338:	eb000b15 	bl	80027f94 <switchuvm>
8002533c:	e3a03000 	mov	r3, #0
80025340:	e1a00003 	mov	r0, r3
80025344:	e24bd004 	sub	sp, fp, #4
80025348:	e8bd8800 	pop	{fp, pc}
8002534c:	800af640 	.word	0x800af640

80025350 <fork>:
80025350:	e92d4800 	push	{fp, lr}
80025354:	e28db004 	add	fp, sp, #4
80025358:	e24dd010 	sub	sp, sp, #16
8002535c:	ebfffeaf 	bl	80024e20 <allocproc>
80025360:	e50b000c 	str	r0, [fp, #-12]
80025364:	e51b300c 	ldr	r3, [fp, #-12]
80025368:	e3530000 	cmp	r3, #0
8002536c:	1a000001 	bne	80025378 <fork+0x28>
80025370:	e3e03000 	mvn	r3, #0
80025374:	ea000065 	b	80025510 <fork+0x1c0>
80025378:	e59f319c 	ldr	r3, [pc, #412]	@ 8002551c <fork+0x1cc>
8002537c:	e5933000 	ldr	r3, [r3]
80025380:	e5932004 	ldr	r2, [r3, #4]
80025384:	e59f3190 	ldr	r3, [pc, #400]	@ 8002551c <fork+0x1cc>
80025388:	e5933000 	ldr	r3, [r3]
8002538c:	e5933000 	ldr	r3, [r3]
80025390:	e1a01003 	mov	r1, r3
80025394:	e1a00002 	mov	r0, r2
80025398:	eb000c50 	bl	800284e0 <copyuvm>
8002539c:	e1a02000 	mov	r2, r0
800253a0:	e51b300c 	ldr	r3, [fp, #-12]
800253a4:	e5832004 	str	r2, [r3, #4]
800253a8:	e51b300c 	ldr	r3, [fp, #-12]
800253ac:	e5933004 	ldr	r3, [r3, #4]
800253b0:	e3530000 	cmp	r3, #0
800253b4:	1a00000b 	bne	800253e8 <fork+0x98>
800253b8:	e51b300c 	ldr	r3, [fp, #-12]
800253bc:	e5933008 	ldr	r3, [r3, #8]
800253c0:	e1a00003 	mov	r0, r3
800253c4:	ebfff08f 	bl	80021608 <free_page>
800253c8:	e51b300c 	ldr	r3, [fp, #-12]
800253cc:	e3a02000 	mov	r2, #0
800253d0:	e5832008 	str	r2, [r3, #8]
800253d4:	e51b300c 	ldr	r3, [fp, #-12]
800253d8:	e3a02000 	mov	r2, #0
800253dc:	e5c3200c 	strb	r2, [r3, #12]
800253e0:	e3e03000 	mvn	r3, #0
800253e4:	ea000049 	b	80025510 <fork+0x1c0>
800253e8:	e59f312c 	ldr	r3, [pc, #300]	@ 8002551c <fork+0x1cc>
800253ec:	e5933000 	ldr	r3, [r3]
800253f0:	e5932000 	ldr	r2, [r3]
800253f4:	e51b300c 	ldr	r3, [fp, #-12]
800253f8:	e5832000 	str	r2, [r3]
800253fc:	e59f3118 	ldr	r3, [pc, #280]	@ 8002551c <fork+0x1cc>
80025400:	e5932000 	ldr	r2, [r3]
80025404:	e51b300c 	ldr	r3, [fp, #-12]
80025408:	e5832014 	str	r2, [r3, #20]
8002540c:	e59f3108 	ldr	r3, [pc, #264]	@ 8002551c <fork+0x1cc>
80025410:	e5933000 	ldr	r3, [r3]
80025414:	e5932018 	ldr	r2, [r3, #24]
80025418:	e51b300c 	ldr	r3, [fp, #-12]
8002541c:	e5933018 	ldr	r3, [r3, #24]
80025420:	e1a00003 	mov	r0, r3
80025424:	e1a01002 	mov	r1, r2
80025428:	e3a03048 	mov	r3, #72	@ 0x48
8002542c:	e1a02003 	mov	r2, r3
80025430:	ebffeba3 	bl	800202c4 <memcpy>
80025434:	e51b300c 	ldr	r3, [fp, #-12]
80025438:	e5933018 	ldr	r3, [r3, #24]
8002543c:	e3a02000 	mov	r2, #0
80025440:	e5832010 	str	r2, [r3, #16]
80025444:	e3a03000 	mov	r3, #0
80025448:	e50b3008 	str	r3, [fp, #-8]
8002544c:	ea000015 	b	800254a8 <fork+0x158>
80025450:	e59f30c4 	ldr	r3, [pc, #196]	@ 8002551c <fork+0x1cc>
80025454:	e5933000 	ldr	r3, [r3]
80025458:	e51b2008 	ldr	r2, [fp, #-8]
8002545c:	e282200a 	add	r2, r2, #10
80025460:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025464:	e3530000 	cmp	r3, #0
80025468:	0a00000b 	beq	8002549c <fork+0x14c>
8002546c:	e59f30a8 	ldr	r3, [pc, #168]	@ 8002551c <fork+0x1cc>
80025470:	e5933000 	ldr	r3, [r3]
80025474:	e51b2008 	ldr	r2, [fp, #-8]
80025478:	e282200a 	add	r2, r2, #10
8002547c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025480:	e1a00003 	mov	r0, r3
80025484:	ebfff461 	bl	80022610 <filedup>
80025488:	e1a01000 	mov	r1, r0
8002548c:	e51b300c 	ldr	r3, [fp, #-12]
80025490:	e51b2008 	ldr	r2, [fp, #-8]
80025494:	e282200a 	add	r2, r2, #10
80025498:	e7831102 	str	r1, [r3, r2, lsl #2]
8002549c:	e51b3008 	ldr	r3, [fp, #-8]
800254a0:	e2833001 	add	r3, r3, #1
800254a4:	e50b3008 	str	r3, [fp, #-8]
800254a8:	e51b3008 	ldr	r3, [fp, #-8]
800254ac:	e353000f 	cmp	r3, #15
800254b0:	daffffe6 	ble	80025450 <fork+0x100>
800254b4:	e59f3060 	ldr	r3, [pc, #96]	@ 8002551c <fork+0x1cc>
800254b8:	e5933000 	ldr	r3, [r3]
800254bc:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800254c0:	e1a00003 	mov	r0, r3
800254c4:	ebfff723 	bl	80023158 <idup>
800254c8:	e1a02000 	mov	r2, r0
800254cc:	e51b300c 	ldr	r3, [fp, #-12]
800254d0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800254d4:	e51b300c 	ldr	r3, [fp, #-12]
800254d8:	e5933010 	ldr	r3, [r3, #16]
800254dc:	e50b3010 	str	r3, [fp, #-16]
800254e0:	e51b300c 	ldr	r3, [fp, #-12]
800254e4:	e3a02003 	mov	r2, #3
800254e8:	e5c3200c 	strb	r2, [r3, #12]
800254ec:	e51b300c 	ldr	r3, [fp, #-12]
800254f0:	e283006c 	add	r0, r3, #108	@ 0x6c
800254f4:	e59f3020 	ldr	r3, [pc, #32]	@ 8002551c <fork+0x1cc>
800254f8:	e5933000 	ldr	r3, [r3]
800254fc:	e283306c 	add	r3, r3, #108	@ 0x6c
80025500:	e3a02010 	mov	r2, #16
80025504:	e1a01003 	mov	r1, r3
80025508:	ebffebd0 	bl	80020450 <safestrcpy>
8002550c:	e51b3010 	ldr	r3, [fp, #-16]
80025510:	e1a00003 	mov	r0, r3
80025514:	e24bd004 	sub	sp, fp, #4
80025518:	e8bd8800 	pop	{fp, pc}
8002551c:	800af640 	.word	0x800af640

80025520 <exit>:
80025520:	e92d4800 	push	{fp, lr}
80025524:	e28db004 	add	fp, sp, #4
80025528:	e24dd008 	sub	sp, sp, #8
8002552c:	e59f3158 	ldr	r3, [pc, #344]	@ 8002568c <exit+0x16c>
80025530:	e5932000 	ldr	r2, [r3]
80025534:	e59f3154 	ldr	r3, [pc, #340]	@ 80025690 <exit+0x170>
80025538:	e5933000 	ldr	r3, [r3]
8002553c:	e1520003 	cmp	r2, r3
80025540:	1a000001 	bne	8002554c <exit+0x2c>
80025544:	e59f0148 	ldr	r0, [pc, #328]	@ 80025694 <exit+0x174>
80025548:	ebfff169 	bl	80021af4 <panic>
8002554c:	e3a03000 	mov	r3, #0
80025550:	e50b300c 	str	r3, [fp, #-12]
80025554:	ea000016 	b	800255b4 <exit+0x94>
80025558:	e59f312c 	ldr	r3, [pc, #300]	@ 8002568c <exit+0x16c>
8002555c:	e5933000 	ldr	r3, [r3]
80025560:	e51b200c 	ldr	r2, [fp, #-12]
80025564:	e282200a 	add	r2, r2, #10
80025568:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002556c:	e3530000 	cmp	r3, #0
80025570:	0a00000c 	beq	800255a8 <exit+0x88>
80025574:	e59f3110 	ldr	r3, [pc, #272]	@ 8002568c <exit+0x16c>
80025578:	e5933000 	ldr	r3, [r3]
8002557c:	e51b200c 	ldr	r2, [fp, #-12]
80025580:	e282200a 	add	r2, r2, #10
80025584:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025588:	e1a00003 	mov	r0, r3
8002558c:	ebfff438 	bl	80022674 <fileclose>
80025590:	e59f30f4 	ldr	r3, [pc, #244]	@ 8002568c <exit+0x16c>
80025594:	e5933000 	ldr	r3, [r3]
80025598:	e51b200c 	ldr	r2, [fp, #-12]
8002559c:	e282200a 	add	r2, r2, #10
800255a0:	e3a01000 	mov	r1, #0
800255a4:	e7831102 	str	r1, [r3, r2, lsl #2]
800255a8:	e51b300c 	ldr	r3, [fp, #-12]
800255ac:	e2833001 	add	r3, r3, #1
800255b0:	e50b300c 	str	r3, [fp, #-12]
800255b4:	e51b300c 	ldr	r3, [fp, #-12]
800255b8:	e353000f 	cmp	r3, #15
800255bc:	daffffe5 	ble	80025558 <exit+0x38>
800255c0:	e59f30c4 	ldr	r3, [pc, #196]	@ 8002568c <exit+0x16c>
800255c4:	e5933000 	ldr	r3, [r3]
800255c8:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800255cc:	e1a00003 	mov	r0, r3
800255d0:	ebfff778 	bl	800233b8 <iput>
800255d4:	e59f30b0 	ldr	r3, [pc, #176]	@ 8002568c <exit+0x16c>
800255d8:	e5933000 	ldr	r3, [r3]
800255dc:	e3a02000 	mov	r2, #0
800255e0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800255e4:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025698 <exit+0x178>
800255e8:	eb0001ea 	bl	80025d98 <acquire>
800255ec:	e59f3098 	ldr	r3, [pc, #152]	@ 8002568c <exit+0x16c>
800255f0:	e5933000 	ldr	r3, [r3]
800255f4:	e5933014 	ldr	r3, [r3, #20]
800255f8:	e1a00003 	mov	r0, r3
800255fc:	eb00013f 	bl	80025b00 <wakeup1>
80025600:	e59f3094 	ldr	r3, [pc, #148]	@ 8002569c <exit+0x17c>
80025604:	e50b3008 	str	r3, [fp, #-8]
80025608:	ea000014 	b	80025660 <exit+0x140>
8002560c:	e51b3008 	ldr	r3, [fp, #-8]
80025610:	e5932014 	ldr	r2, [r3, #20]
80025614:	e59f3070 	ldr	r3, [pc, #112]	@ 8002568c <exit+0x16c>
80025618:	e5933000 	ldr	r3, [r3]
8002561c:	e1520003 	cmp	r2, r3
80025620:	1a00000b 	bne	80025654 <exit+0x134>
80025624:	e59f3064 	ldr	r3, [pc, #100]	@ 80025690 <exit+0x170>
80025628:	e5932000 	ldr	r2, [r3]
8002562c:	e51b3008 	ldr	r3, [fp, #-8]
80025630:	e5832014 	str	r2, [r3, #20]
80025634:	e51b3008 	ldr	r3, [fp, #-8]
80025638:	e5d3300c 	ldrb	r3, [r3, #12]
8002563c:	e3530005 	cmp	r3, #5
80025640:	1a000003 	bne	80025654 <exit+0x134>
80025644:	e59f3044 	ldr	r3, [pc, #68]	@ 80025690 <exit+0x170>
80025648:	e5933000 	ldr	r3, [r3]
8002564c:	e1a00003 	mov	r0, r3
80025650:	eb00012a 	bl	80025b00 <wakeup1>
80025654:	e51b3008 	ldr	r3, [fp, #-8]
80025658:	e2833080 	add	r3, r3, #128	@ 0x80
8002565c:	e50b3008 	str	r3, [fp, #-8]
80025660:	e51b3008 	ldr	r3, [fp, #-8]
80025664:	e59f2034 	ldr	r2, [pc, #52]	@ 800256a0 <exit+0x180>
80025668:	e1530002 	cmp	r3, r2
8002566c:	3affffe6 	bcc	8002560c <exit+0xec>
80025670:	e59f3014 	ldr	r3, [pc, #20]	@ 8002568c <exit+0x16c>
80025674:	e5933000 	ldr	r3, [r3]
80025678:	e3a02005 	mov	r2, #5
8002567c:	e5c3200c 	strb	r2, [r3, #12]
80025680:	eb000092 	bl	800258d0 <sched>
80025684:	e59f0018 	ldr	r0, [pc, #24]	@ 800256a4 <exit+0x184>
80025688:	ebfff119 	bl	80021af4 <panic>
8002568c:	800af640 	.word	0x800af640
80025690:	800af63c 	.word	0x800af63c
80025694:	800293a0 	.word	0x800293a0
80025698:	800ad608 	.word	0x800ad608
8002569c:	800ad63c 	.word	0x800ad63c
800256a0:	800af63c 	.word	0x800af63c
800256a4:	800293b0 	.word	0x800293b0

800256a8 <wait>:
800256a8:	e92d4800 	push	{fp, lr}
800256ac:	e28db004 	add	fp, sp, #4
800256b0:	e24dd010 	sub	sp, sp, #16
800256b4:	e59f013c 	ldr	r0, [pc, #316]	@ 800257f8 <wait+0x150>
800256b8:	eb0001b6 	bl	80025d98 <acquire>
800256bc:	e3a03000 	mov	r3, #0
800256c0:	e50b300c 	str	r3, [fp, #-12]
800256c4:	e59f3130 	ldr	r3, [pc, #304]	@ 800257fc <wait+0x154>
800256c8:	e50b3008 	str	r3, [fp, #-8]
800256cc:	ea000030 	b	80025794 <wait+0xec>
800256d0:	e51b3008 	ldr	r3, [fp, #-8]
800256d4:	e5932014 	ldr	r2, [r3, #20]
800256d8:	e59f3120 	ldr	r3, [pc, #288]	@ 80025800 <wait+0x158>
800256dc:	e5933000 	ldr	r3, [r3]
800256e0:	e1520003 	cmp	r2, r3
800256e4:	1a000026 	bne	80025784 <wait+0xdc>
800256e8:	e3a03001 	mov	r3, #1
800256ec:	e50b300c 	str	r3, [fp, #-12]
800256f0:	e51b3008 	ldr	r3, [fp, #-8]
800256f4:	e5d3300c 	ldrb	r3, [r3, #12]
800256f8:	e3530005 	cmp	r3, #5
800256fc:	1a000021 	bne	80025788 <wait+0xe0>
80025700:	e51b3008 	ldr	r3, [fp, #-8]
80025704:	e5933010 	ldr	r3, [r3, #16]
80025708:	e50b3010 	str	r3, [fp, #-16]
8002570c:	e51b3008 	ldr	r3, [fp, #-8]
80025710:	e5933008 	ldr	r3, [r3, #8]
80025714:	e1a00003 	mov	r0, r3
80025718:	ebffefba 	bl	80021608 <free_page>
8002571c:	e51b3008 	ldr	r3, [fp, #-8]
80025720:	e3a02000 	mov	r2, #0
80025724:	e5832008 	str	r2, [r3, #8]
80025728:	e51b3008 	ldr	r3, [fp, #-8]
8002572c:	e5933004 	ldr	r3, [r3, #4]
80025730:	e1a00003 	mov	r0, r3
80025734:	eb000b20 	bl	800283bc <freevm>
80025738:	e51b3008 	ldr	r3, [fp, #-8]
8002573c:	e3a02000 	mov	r2, #0
80025740:	e5c3200c 	strb	r2, [r3, #12]
80025744:	e51b3008 	ldr	r3, [fp, #-8]
80025748:	e3a02000 	mov	r2, #0
8002574c:	e5832010 	str	r2, [r3, #16]
80025750:	e51b3008 	ldr	r3, [fp, #-8]
80025754:	e3a02000 	mov	r2, #0
80025758:	e5832014 	str	r2, [r3, #20]
8002575c:	e51b3008 	ldr	r3, [fp, #-8]
80025760:	e3a02000 	mov	r2, #0
80025764:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80025768:	e51b3008 	ldr	r3, [fp, #-8]
8002576c:	e3a02000 	mov	r2, #0
80025770:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025774:	e59f007c 	ldr	r0, [pc, #124]	@ 800257f8 <wait+0x150>
80025778:	eb000191 	bl	80025dc4 <release>
8002577c:	e51b3010 	ldr	r3, [fp, #-16]
80025780:	ea000019 	b	800257ec <wait+0x144>
80025784:	e1a00000 	nop			@ (mov r0, r0)
80025788:	e51b3008 	ldr	r3, [fp, #-8]
8002578c:	e2833080 	add	r3, r3, #128	@ 0x80
80025790:	e50b3008 	str	r3, [fp, #-8]
80025794:	e51b3008 	ldr	r3, [fp, #-8]
80025798:	e59f2064 	ldr	r2, [pc, #100]	@ 80025804 <wait+0x15c>
8002579c:	e1530002 	cmp	r3, r2
800257a0:	3affffca 	bcc	800256d0 <wait+0x28>
800257a4:	e51b300c 	ldr	r3, [fp, #-12]
800257a8:	e3530000 	cmp	r3, #0
800257ac:	0a000004 	beq	800257c4 <wait+0x11c>
800257b0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025800 <wait+0x158>
800257b4:	e5933000 	ldr	r3, [r3]
800257b8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800257bc:	e3530000 	cmp	r3, #0
800257c0:	0a000003 	beq	800257d4 <wait+0x12c>
800257c4:	e59f002c 	ldr	r0, [pc, #44]	@ 800257f8 <wait+0x150>
800257c8:	eb00017d 	bl	80025dc4 <release>
800257cc:	e3e03000 	mvn	r3, #0
800257d0:	ea000005 	b	800257ec <wait+0x144>
800257d4:	e59f3024 	ldr	r3, [pc, #36]	@ 80025800 <wait+0x158>
800257d8:	e5933000 	ldr	r3, [r3]
800257dc:	e59f1014 	ldr	r1, [pc, #20]	@ 800257f8 <wait+0x150>
800257e0:	e1a00003 	mov	r0, r3
800257e4:	eb000091 	bl	80025a30 <sleep>
800257e8:	eaffffb3 	b	800256bc <wait+0x14>
800257ec:	e1a00003 	mov	r0, r3
800257f0:	e24bd004 	sub	sp, fp, #4
800257f4:	e8bd8800 	pop	{fp, pc}
800257f8:	800ad608 	.word	0x800ad608
800257fc:	800ad63c 	.word	0x800ad63c
80025800:	800af640 	.word	0x800af640
80025804:	800af63c 	.word	0x800af63c

80025808 <scheduler>:
80025808:	e92d4800 	push	{fp, lr}
8002580c:	e28db004 	add	fp, sp, #4
80025810:	e24dd008 	sub	sp, sp, #8
80025814:	ebffeb57 	bl	80020578 <sti>
80025818:	e59f009c 	ldr	r0, [pc, #156]	@ 800258bc <scheduler+0xb4>
8002581c:	eb00015d 	bl	80025d98 <acquire>
80025820:	e59f3098 	ldr	r3, [pc, #152]	@ 800258c0 <scheduler+0xb8>
80025824:	e50b3008 	str	r3, [fp, #-8]
80025828:	ea00001c 	b	800258a0 <scheduler+0x98>
8002582c:	e51b3008 	ldr	r3, [fp, #-8]
80025830:	e5d3300c 	ldrb	r3, [r3, #12]
80025834:	e3530003 	cmp	r3, #3
80025838:	1a000014 	bne	80025890 <scheduler+0x88>
8002583c:	e59f2080 	ldr	r2, [pc, #128]	@ 800258c4 <scheduler+0xbc>
80025840:	e51b3008 	ldr	r3, [fp, #-8]
80025844:	e5823000 	str	r3, [r2]
80025848:	e51b0008 	ldr	r0, [fp, #-8]
8002584c:	eb0009d0 	bl	80027f94 <switchuvm>
80025850:	e51b3008 	ldr	r3, [fp, #-8]
80025854:	e3a02004 	mov	r2, #4
80025858:	e5c3200c 	strb	r2, [r3, #12]
8002585c:	e59f3064 	ldr	r3, [pc, #100]	@ 800258c8 <scheduler+0xc0>
80025860:	e5933000 	ldr	r3, [r3]
80025864:	e2832004 	add	r2, r3, #4
80025868:	e59f3054 	ldr	r3, [pc, #84]	@ 800258c4 <scheduler+0xbc>
8002586c:	e5933000 	ldr	r3, [r3]
80025870:	e593301c 	ldr	r3, [r3, #28]
80025874:	e1a01003 	mov	r1, r3
80025878:	e1a00002 	mov	r0, r2
8002587c:	eb000165 	bl	80025e18 <swtch>
80025880:	e59f303c 	ldr	r3, [pc, #60]	@ 800258c4 <scheduler+0xbc>
80025884:	e3a02000 	mov	r2, #0
80025888:	e5832000 	str	r2, [r3]
8002588c:	ea000000 	b	80025894 <scheduler+0x8c>
80025890:	e1a00000 	nop			@ (mov r0, r0)
80025894:	e51b3008 	ldr	r3, [fp, #-8]
80025898:	e2833080 	add	r3, r3, #128	@ 0x80
8002589c:	e50b3008 	str	r3, [fp, #-8]
800258a0:	e51b3008 	ldr	r3, [fp, #-8]
800258a4:	e59f2020 	ldr	r2, [pc, #32]	@ 800258cc <scheduler+0xc4>
800258a8:	e1530002 	cmp	r3, r2
800258ac:	3affffde 	bcc	8002582c <scheduler+0x24>
800258b0:	e59f0004 	ldr	r0, [pc, #4]	@ 800258bc <scheduler+0xb4>
800258b4:	eb000142 	bl	80025dc4 <release>
800258b8:	eaffffd5 	b	80025814 <scheduler+0xc>
800258bc:	800ad608 	.word	0x800ad608
800258c0:	800ad63c 	.word	0x800ad63c
800258c4:	800af640 	.word	0x800af640
800258c8:	800ad5fc 	.word	0x800ad5fc
800258cc:	800af63c 	.word	0x800af63c

800258d0 <sched>:
800258d0:	e92d4800 	push	{fp, lr}
800258d4:	e28db004 	add	fp, sp, #4
800258d8:	e24dd008 	sub	sp, sp, #8
800258dc:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025998 <sched+0xc8>
800258e0:	eb000142 	bl	80025df0 <holding>
800258e4:	e1a03000 	mov	r3, r0
800258e8:	e3530000 	cmp	r3, #0
800258ec:	1a000001 	bne	800258f8 <sched+0x28>
800258f0:	e59f00a4 	ldr	r0, [pc, #164]	@ 8002599c <sched+0xcc>
800258f4:	ebfff07e 	bl	80021af4 <panic>
800258f8:	e59f30a0 	ldr	r3, [pc, #160]	@ 800259a0 <sched+0xd0>
800258fc:	e5933000 	ldr	r3, [r3]
80025900:	e593300c 	ldr	r3, [r3, #12]
80025904:	e3530001 	cmp	r3, #1
80025908:	0a000001 	beq	80025914 <sched+0x44>
8002590c:	e59f0090 	ldr	r0, [pc, #144]	@ 800259a4 <sched+0xd4>
80025910:	ebfff077 	bl	80021af4 <panic>
80025914:	e59f308c 	ldr	r3, [pc, #140]	@ 800259a8 <sched+0xd8>
80025918:	e5933000 	ldr	r3, [r3]
8002591c:	e5d3300c 	ldrb	r3, [r3, #12]
80025920:	e3530004 	cmp	r3, #4
80025924:	1a000001 	bne	80025930 <sched+0x60>
80025928:	e59f007c 	ldr	r0, [pc, #124]	@ 800259ac <sched+0xdc>
8002592c:	ebfff070 	bl	80021af4 <panic>
80025930:	ebffeb2e 	bl	800205f0 <int_enabled>
80025934:	e1a03000 	mov	r3, r0
80025938:	e3530000 	cmp	r3, #0
8002593c:	0a000001 	beq	80025948 <sched+0x78>
80025940:	e59f0068 	ldr	r0, [pc, #104]	@ 800259b0 <sched+0xe0>
80025944:	ebfff06a 	bl	80021af4 <panic>
80025948:	e59f3050 	ldr	r3, [pc, #80]	@ 800259a0 <sched+0xd0>
8002594c:	e5933000 	ldr	r3, [r3]
80025950:	e5933010 	ldr	r3, [r3, #16]
80025954:	e50b3008 	str	r3, [fp, #-8]
80025958:	e59f3048 	ldr	r3, [pc, #72]	@ 800259a8 <sched+0xd8>
8002595c:	e5933000 	ldr	r3, [r3]
80025960:	e283201c 	add	r2, r3, #28
80025964:	e59f3034 	ldr	r3, [pc, #52]	@ 800259a0 <sched+0xd0>
80025968:	e5933000 	ldr	r3, [r3]
8002596c:	e5933004 	ldr	r3, [r3, #4]
80025970:	e1a01003 	mov	r1, r3
80025974:	e1a00002 	mov	r0, r2
80025978:	eb000126 	bl	80025e18 <swtch>
8002597c:	e59f301c 	ldr	r3, [pc, #28]	@ 800259a0 <sched+0xd0>
80025980:	e5933000 	ldr	r3, [r3]
80025984:	e51b2008 	ldr	r2, [fp, #-8]
80025988:	e5832010 	str	r2, [r3, #16]
8002598c:	e1a00000 	nop			@ (mov r0, r0)
80025990:	e24bd004 	sub	sp, fp, #4
80025994:	e8bd8800 	pop	{fp, pc}
80025998:	800ad608 	.word	0x800ad608
8002599c:	800293bc 	.word	0x800293bc
800259a0:	800ad5fc 	.word	0x800ad5fc
800259a4:	800293d0 	.word	0x800293d0
800259a8:	800af640 	.word	0x800af640
800259ac:	800293dc 	.word	0x800293dc
800259b0:	800293ec 	.word	0x800293ec

800259b4 <yield>:
800259b4:	e92d4800 	push	{fp, lr}
800259b8:	e28db004 	add	fp, sp, #4
800259bc:	e59f0024 	ldr	r0, [pc, #36]	@ 800259e8 <yield+0x34>
800259c0:	eb0000f4 	bl	80025d98 <acquire>
800259c4:	e59f3020 	ldr	r3, [pc, #32]	@ 800259ec <yield+0x38>
800259c8:	e5933000 	ldr	r3, [r3]
800259cc:	e3a02003 	mov	r2, #3
800259d0:	e5c3200c 	strb	r2, [r3, #12]
800259d4:	ebffffbd 	bl	800258d0 <sched>
800259d8:	e59f0008 	ldr	r0, [pc, #8]	@ 800259e8 <yield+0x34>
800259dc:	eb0000f8 	bl	80025dc4 <release>
800259e0:	e1a00000 	nop			@ (mov r0, r0)
800259e4:	e8bd8800 	pop	{fp, pc}
800259e8:	800ad608 	.word	0x800ad608
800259ec:	800af640 	.word	0x800af640

800259f0 <forkret>:
800259f0:	e92d4800 	push	{fp, lr}
800259f4:	e28db004 	add	fp, sp, #4
800259f8:	e59f0028 	ldr	r0, [pc, #40]	@ 80025a28 <forkret+0x38>
800259fc:	eb0000f0 	bl	80025dc4 <release>
80025a00:	e59f3024 	ldr	r3, [pc, #36]	@ 80025a2c <forkret+0x3c>
80025a04:	e5933000 	ldr	r3, [r3]
80025a08:	e3530000 	cmp	r3, #0
80025a0c:	0a000003 	beq	80025a20 <forkret+0x30>
80025a10:	e59f3014 	ldr	r3, [pc, #20]	@ 80025a2c <forkret+0x3c>
80025a14:	e3a02000 	mov	r2, #0
80025a18:	e5832000 	str	r2, [r3]
80025a1c:	ebfff9cc 	bl	80024154 <initlog>
80025a20:	e1a00000 	nop			@ (mov r0, r0)
80025a24:	e8bd8800 	pop	{fp, pc}
80025a28:	800ad608 	.word	0x800ad608
80025a2c:	8002a018 	.word	0x8002a018

80025a30 <sleep>:
80025a30:	e92d4800 	push	{fp, lr}
80025a34:	e28db004 	add	fp, sp, #4
80025a38:	e24dd008 	sub	sp, sp, #8
80025a3c:	e50b0008 	str	r0, [fp, #-8]
80025a40:	e50b100c 	str	r1, [fp, #-12]
80025a44:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025af0 <sleep+0xc0>
80025a48:	e5933000 	ldr	r3, [r3]
80025a4c:	e3530000 	cmp	r3, #0
80025a50:	1a000001 	bne	80025a5c <sleep+0x2c>
80025a54:	e59f0098 	ldr	r0, [pc, #152]	@ 80025af4 <sleep+0xc4>
80025a58:	ebfff025 	bl	80021af4 <panic>
80025a5c:	e51b300c 	ldr	r3, [fp, #-12]
80025a60:	e3530000 	cmp	r3, #0
80025a64:	1a000001 	bne	80025a70 <sleep+0x40>
80025a68:	e59f0088 	ldr	r0, [pc, #136]	@ 80025af8 <sleep+0xc8>
80025a6c:	ebfff020 	bl	80021af4 <panic>
80025a70:	e51b300c 	ldr	r3, [fp, #-12]
80025a74:	e59f2080 	ldr	r2, [pc, #128]	@ 80025afc <sleep+0xcc>
80025a78:	e1530002 	cmp	r3, r2
80025a7c:	0a000003 	beq	80025a90 <sleep+0x60>
80025a80:	e59f0074 	ldr	r0, [pc, #116]	@ 80025afc <sleep+0xcc>
80025a84:	eb0000c3 	bl	80025d98 <acquire>
80025a88:	e51b000c 	ldr	r0, [fp, #-12]
80025a8c:	eb0000cc 	bl	80025dc4 <release>
80025a90:	e59f3058 	ldr	r3, [pc, #88]	@ 80025af0 <sleep+0xc0>
80025a94:	e5933000 	ldr	r3, [r3]
80025a98:	e51b2008 	ldr	r2, [fp, #-8]
80025a9c:	e5832020 	str	r2, [r3, #32]
80025aa0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025af0 <sleep+0xc0>
80025aa4:	e5933000 	ldr	r3, [r3]
80025aa8:	e3a02002 	mov	r2, #2
80025aac:	e5c3200c 	strb	r2, [r3, #12]
80025ab0:	ebffff86 	bl	800258d0 <sched>
80025ab4:	e59f3034 	ldr	r3, [pc, #52]	@ 80025af0 <sleep+0xc0>
80025ab8:	e5933000 	ldr	r3, [r3]
80025abc:	e3a02000 	mov	r2, #0
80025ac0:	e5832020 	str	r2, [r3, #32]
80025ac4:	e51b300c 	ldr	r3, [fp, #-12]
80025ac8:	e59f202c 	ldr	r2, [pc, #44]	@ 80025afc <sleep+0xcc>
80025acc:	e1530002 	cmp	r3, r2
80025ad0:	0a000003 	beq	80025ae4 <sleep+0xb4>
80025ad4:	e59f0020 	ldr	r0, [pc, #32]	@ 80025afc <sleep+0xcc>
80025ad8:	eb0000b9 	bl	80025dc4 <release>
80025adc:	e51b000c 	ldr	r0, [fp, #-12]
80025ae0:	eb0000ac 	bl	80025d98 <acquire>
80025ae4:	e1a00000 	nop			@ (mov r0, r0)
80025ae8:	e24bd004 	sub	sp, fp, #4
80025aec:	e8bd8800 	pop	{fp, pc}
80025af0:	800af640 	.word	0x800af640
80025af4:	80029400 	.word	0x80029400
80025af8:	80029408 	.word	0x80029408
80025afc:	800ad608 	.word	0x800ad608

80025b00 <wakeup1>:
80025b00:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025b04:	e28db000 	add	fp, sp, #0
80025b08:	e24dd014 	sub	sp, sp, #20
80025b0c:	e50b0010 	str	r0, [fp, #-16]
80025b10:	e59f3064 	ldr	r3, [pc, #100]	@ 80025b7c <wakeup1+0x7c>
80025b14:	e50b3008 	str	r3, [fp, #-8]
80025b18:	ea00000e 	b	80025b58 <wakeup1+0x58>
80025b1c:	e51b3008 	ldr	r3, [fp, #-8]
80025b20:	e5d3300c 	ldrb	r3, [r3, #12]
80025b24:	e3530002 	cmp	r3, #2
80025b28:	1a000007 	bne	80025b4c <wakeup1+0x4c>
80025b2c:	e51b3008 	ldr	r3, [fp, #-8]
80025b30:	e5933020 	ldr	r3, [r3, #32]
80025b34:	e51b2010 	ldr	r2, [fp, #-16]
80025b38:	e1520003 	cmp	r2, r3
80025b3c:	1a000002 	bne	80025b4c <wakeup1+0x4c>
80025b40:	e51b3008 	ldr	r3, [fp, #-8]
80025b44:	e3a02003 	mov	r2, #3
80025b48:	e5c3200c 	strb	r2, [r3, #12]
80025b4c:	e51b3008 	ldr	r3, [fp, #-8]
80025b50:	e2833080 	add	r3, r3, #128	@ 0x80
80025b54:	e50b3008 	str	r3, [fp, #-8]
80025b58:	e51b3008 	ldr	r3, [fp, #-8]
80025b5c:	e59f201c 	ldr	r2, [pc, #28]	@ 80025b80 <wakeup1+0x80>
80025b60:	e1530002 	cmp	r3, r2
80025b64:	3affffec 	bcc	80025b1c <wakeup1+0x1c>
80025b68:	e1a00000 	nop			@ (mov r0, r0)
80025b6c:	e1a00000 	nop			@ (mov r0, r0)
80025b70:	e28bd000 	add	sp, fp, #0
80025b74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025b78:	e12fff1e 	bx	lr
80025b7c:	800ad63c 	.word	0x800ad63c
80025b80:	800af63c 	.word	0x800af63c

80025b84 <wakeup>:
80025b84:	e92d4800 	push	{fp, lr}
80025b88:	e28db004 	add	fp, sp, #4
80025b8c:	e24dd008 	sub	sp, sp, #8
80025b90:	e50b0008 	str	r0, [fp, #-8]
80025b94:	e59f001c 	ldr	r0, [pc, #28]	@ 80025bb8 <wakeup+0x34>
80025b98:	eb00007e 	bl	80025d98 <acquire>
80025b9c:	e51b0008 	ldr	r0, [fp, #-8]
80025ba0:	ebffffd6 	bl	80025b00 <wakeup1>
80025ba4:	e59f000c 	ldr	r0, [pc, #12]	@ 80025bb8 <wakeup+0x34>
80025ba8:	eb000085 	bl	80025dc4 <release>
80025bac:	e1a00000 	nop			@ (mov r0, r0)
80025bb0:	e24bd004 	sub	sp, fp, #4
80025bb4:	e8bd8800 	pop	{fp, pc}
80025bb8:	800ad608 	.word	0x800ad608

80025bbc <kill>:
80025bbc:	e92d4800 	push	{fp, lr}
80025bc0:	e28db004 	add	fp, sp, #4
80025bc4:	e24dd010 	sub	sp, sp, #16
80025bc8:	e50b0010 	str	r0, [fp, #-16]
80025bcc:	e59f008c 	ldr	r0, [pc, #140]	@ 80025c60 <kill+0xa4>
80025bd0:	eb000070 	bl	80025d98 <acquire>
80025bd4:	e59f3088 	ldr	r3, [pc, #136]	@ 80025c64 <kill+0xa8>
80025bd8:	e50b3008 	str	r3, [fp, #-8]
80025bdc:	ea000015 	b	80025c38 <kill+0x7c>
80025be0:	e51b3008 	ldr	r3, [fp, #-8]
80025be4:	e5933010 	ldr	r3, [r3, #16]
80025be8:	e51b2010 	ldr	r2, [fp, #-16]
80025bec:	e1520003 	cmp	r2, r3
80025bf0:	1a00000d 	bne	80025c2c <kill+0x70>
80025bf4:	e51b3008 	ldr	r3, [fp, #-8]
80025bf8:	e3a02001 	mov	r2, #1
80025bfc:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025c00:	e51b3008 	ldr	r3, [fp, #-8]
80025c04:	e5d3300c 	ldrb	r3, [r3, #12]
80025c08:	e3530002 	cmp	r3, #2
80025c0c:	1a000002 	bne	80025c1c <kill+0x60>
80025c10:	e51b3008 	ldr	r3, [fp, #-8]
80025c14:	e3a02003 	mov	r2, #3
80025c18:	e5c3200c 	strb	r2, [r3, #12]
80025c1c:	e59f003c 	ldr	r0, [pc, #60]	@ 80025c60 <kill+0xa4>
80025c20:	eb000067 	bl	80025dc4 <release>
80025c24:	e3a03000 	mov	r3, #0
80025c28:	ea000009 	b	80025c54 <kill+0x98>
80025c2c:	e51b3008 	ldr	r3, [fp, #-8]
80025c30:	e2833080 	add	r3, r3, #128	@ 0x80
80025c34:	e50b3008 	str	r3, [fp, #-8]
80025c38:	e51b3008 	ldr	r3, [fp, #-8]
80025c3c:	e59f2024 	ldr	r2, [pc, #36]	@ 80025c68 <kill+0xac>
80025c40:	e1530002 	cmp	r3, r2
80025c44:	3affffe5 	bcc	80025be0 <kill+0x24>
80025c48:	e59f0010 	ldr	r0, [pc, #16]	@ 80025c60 <kill+0xa4>
80025c4c:	eb00005c 	bl	80025dc4 <release>
80025c50:	e3e03000 	mvn	r3, #0
80025c54:	e1a00003 	mov	r0, r3
80025c58:	e24bd004 	sub	sp, fp, #4
80025c5c:	e8bd8800 	pop	{fp, pc}
80025c60:	800ad608 	.word	0x800ad608
80025c64:	800ad63c 	.word	0x800ad63c
80025c68:	800af63c 	.word	0x800af63c

80025c6c <procdump>:
80025c6c:	e92d4800 	push	{fp, lr}
80025c70:	e28db004 	add	fp, sp, #4
80025c74:	e24dd008 	sub	sp, sp, #8
80025c78:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025d38 <procdump+0xcc>
80025c7c:	e50b3008 	str	r3, [fp, #-8]
80025c80:	ea000023 	b	80025d14 <procdump+0xa8>
80025c84:	e51b3008 	ldr	r3, [fp, #-8]
80025c88:	e5d3300c 	ldrb	r3, [r3, #12]
80025c8c:	e3530000 	cmp	r3, #0
80025c90:	0a00001b 	beq	80025d04 <procdump+0x98>
80025c94:	e51b3008 	ldr	r3, [fp, #-8]
80025c98:	e5d3300c 	ldrb	r3, [r3, #12]
80025c9c:	e3530005 	cmp	r3, #5
80025ca0:	8a00000d 	bhi	80025cdc <procdump+0x70>
80025ca4:	e51b3008 	ldr	r3, [fp, #-8]
80025ca8:	e5d3300c 	ldrb	r3, [r3, #12]
80025cac:	e1a02003 	mov	r2, r3
80025cb0:	e59f3084 	ldr	r3, [pc, #132]	@ 80025d3c <procdump+0xd0>
80025cb4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025cb8:	e3530000 	cmp	r3, #0
80025cbc:	0a000006 	beq	80025cdc <procdump+0x70>
80025cc0:	e51b3008 	ldr	r3, [fp, #-8]
80025cc4:	e5d3300c 	ldrb	r3, [r3, #12]
80025cc8:	e1a02003 	mov	r2, r3
80025ccc:	e59f3068 	ldr	r3, [pc, #104]	@ 80025d3c <procdump+0xd0>
80025cd0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025cd4:	e50b300c 	str	r3, [fp, #-12]
80025cd8:	ea000001 	b	80025ce4 <procdump+0x78>
80025cdc:	e59f305c 	ldr	r3, [pc, #92]	@ 80025d40 <procdump+0xd4>
80025ce0:	e50b300c 	str	r3, [fp, #-12]
80025ce4:	e51b3008 	ldr	r3, [fp, #-8]
80025ce8:	e5931010 	ldr	r1, [r3, #16]
80025cec:	e51b3008 	ldr	r3, [fp, #-8]
80025cf0:	e283306c 	add	r3, r3, #108	@ 0x6c
80025cf4:	e51b200c 	ldr	r2, [fp, #-12]
80025cf8:	e59f0044 	ldr	r0, [pc, #68]	@ 80025d44 <procdump+0xd8>
80025cfc:	ebffeee4 	bl	80021894 <cprintf>
80025d00:	ea000000 	b	80025d08 <procdump+0x9c>
80025d04:	e1a00000 	nop			@ (mov r0, r0)
80025d08:	e51b3008 	ldr	r3, [fp, #-8]
80025d0c:	e2833080 	add	r3, r3, #128	@ 0x80
80025d10:	e50b3008 	str	r3, [fp, #-8]
80025d14:	e51b3008 	ldr	r3, [fp, #-8]
80025d18:	e59f2028 	ldr	r2, [pc, #40]	@ 80025d48 <procdump+0xdc>
80025d1c:	e1530002 	cmp	r3, r2
80025d20:	3affffd7 	bcc	80025c84 <procdump+0x18>
80025d24:	e59f0020 	ldr	r0, [pc, #32]	@ 80025d4c <procdump+0xe0>
80025d28:	ebffeab7 	bl	8002080c <show_callstk>
80025d2c:	e1a00000 	nop			@ (mov r0, r0)
80025d30:	e24bd004 	sub	sp, fp, #4
80025d34:	e8bd8800 	pop	{fp, pc}
80025d38:	800ad63c 	.word	0x800ad63c
80025d3c:	8002a01c 	.word	0x8002a01c
80025d40:	8002941c 	.word	0x8002941c
80025d44:	80029420 	.word	0x80029420
80025d48:	800af63c 	.word	0x800af63c
80025d4c:	8002942c 	.word	0x8002942c

80025d50 <initlock>:
80025d50:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025d54:	e28db000 	add	fp, sp, #0
80025d58:	e24dd00c 	sub	sp, sp, #12
80025d5c:	e50b0008 	str	r0, [fp, #-8]
80025d60:	e50b100c 	str	r1, [fp, #-12]
80025d64:	e51b3008 	ldr	r3, [fp, #-8]
80025d68:	e51b200c 	ldr	r2, [fp, #-12]
80025d6c:	e5832004 	str	r2, [r3, #4]
80025d70:	e51b3008 	ldr	r3, [fp, #-8]
80025d74:	e3a02000 	mov	r2, #0
80025d78:	e5832000 	str	r2, [r3]
80025d7c:	e51b3008 	ldr	r3, [fp, #-8]
80025d80:	e3a02000 	mov	r2, #0
80025d84:	e5832008 	str	r2, [r3, #8]
80025d88:	e1a00000 	nop			@ (mov r0, r0)
80025d8c:	e28bd000 	add	sp, fp, #0
80025d90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025d94:	e12fff1e 	bx	lr

80025d98 <acquire>:
80025d98:	e92d4800 	push	{fp, lr}
80025d9c:	e28db004 	add	fp, sp, #4
80025da0:	e24dd008 	sub	sp, sp, #8
80025da4:	e50b0008 	str	r0, [fp, #-8]
80025da8:	ebffea1f 	bl	8002062c <pushcli>
80025dac:	e51b3008 	ldr	r3, [fp, #-8]
80025db0:	e3a02001 	mov	r2, #1
80025db4:	e5832000 	str	r2, [r3]
80025db8:	e1a00000 	nop			@ (mov r0, r0)
80025dbc:	e24bd004 	sub	sp, fp, #4
80025dc0:	e8bd8800 	pop	{fp, pc}

80025dc4 <release>:
80025dc4:	e92d4800 	push	{fp, lr}
80025dc8:	e28db004 	add	fp, sp, #4
80025dcc:	e24dd008 	sub	sp, sp, #8
80025dd0:	e50b0008 	str	r0, [fp, #-8]
80025dd4:	e51b3008 	ldr	r3, [fp, #-8]
80025dd8:	e3a02000 	mov	r2, #0
80025ddc:	e5832000 	str	r2, [r3]
80025de0:	ebffea26 	bl	80020680 <popcli>
80025de4:	e1a00000 	nop			@ (mov r0, r0)
80025de8:	e24bd004 	sub	sp, fp, #4
80025dec:	e8bd8800 	pop	{fp, pc}

80025df0 <holding>:
80025df0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025df4:	e28db000 	add	fp, sp, #0
80025df8:	e24dd00c 	sub	sp, sp, #12
80025dfc:	e50b0008 	str	r0, [fp, #-8]
80025e00:	e51b3008 	ldr	r3, [fp, #-8]
80025e04:	e5933000 	ldr	r3, [r3]
80025e08:	e1a00003 	mov	r0, r3
80025e0c:	e28bd000 	add	sp, fp, #0
80025e10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025e14:	e12fff1e 	bx	lr

80025e18 <swtch>:
80025e18:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025e1c:	e580d000 	str	sp, [r0]
80025e20:	e1a0d001 	mov	sp, r1
80025e24:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025e28:	e12fff1e 	bx	lr

80025e2c <fetchint>:
80025e2c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025e30:	e28db000 	add	fp, sp, #0
80025e34:	e24dd00c 	sub	sp, sp, #12
80025e38:	e50b0008 	str	r0, [fp, #-8]
80025e3c:	e50b100c 	str	r1, [fp, #-12]
80025e40:	e59f3058 	ldr	r3, [pc, #88]	@ 80025ea0 <fetchint+0x74>
80025e44:	e5933000 	ldr	r3, [r3]
80025e48:	e5933000 	ldr	r3, [r3]
80025e4c:	e51b2008 	ldr	r2, [fp, #-8]
80025e50:	e1520003 	cmp	r2, r3
80025e54:	2a000006 	bcs	80025e74 <fetchint+0x48>
80025e58:	e51b3008 	ldr	r3, [fp, #-8]
80025e5c:	e2832004 	add	r2, r3, #4
80025e60:	e59f3038 	ldr	r3, [pc, #56]	@ 80025ea0 <fetchint+0x74>
80025e64:	e5933000 	ldr	r3, [r3]
80025e68:	e5933000 	ldr	r3, [r3]
80025e6c:	e1520003 	cmp	r2, r3
80025e70:	9a000001 	bls	80025e7c <fetchint+0x50>
80025e74:	e3e03000 	mvn	r3, #0
80025e78:	ea000004 	b	80025e90 <fetchint+0x64>
80025e7c:	e51b3008 	ldr	r3, [fp, #-8]
80025e80:	e5932000 	ldr	r2, [r3]
80025e84:	e51b300c 	ldr	r3, [fp, #-12]
80025e88:	e5832000 	str	r2, [r3]
80025e8c:	e3a03000 	mov	r3, #0
80025e90:	e1a00003 	mov	r0, r3
80025e94:	e28bd000 	add	sp, fp, #0
80025e98:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025e9c:	e12fff1e 	bx	lr
80025ea0:	800af640 	.word	0x800af640

80025ea4 <fetchstr>:
80025ea4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025ea8:	e28db000 	add	fp, sp, #0
80025eac:	e24dd014 	sub	sp, sp, #20
80025eb0:	e50b0010 	str	r0, [fp, #-16]
80025eb4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025eb8:	e59f3098 	ldr	r3, [pc, #152]	@ 80025f58 <fetchstr+0xb4>
80025ebc:	e5933000 	ldr	r3, [r3]
80025ec0:	e5933000 	ldr	r3, [r3]
80025ec4:	e51b2010 	ldr	r2, [fp, #-16]
80025ec8:	e1520003 	cmp	r2, r3
80025ecc:	3a000001 	bcc	80025ed8 <fetchstr+0x34>
80025ed0:	e3e03000 	mvn	r3, #0
80025ed4:	ea00001b 	b	80025f48 <fetchstr+0xa4>
80025ed8:	e51b2010 	ldr	r2, [fp, #-16]
80025edc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ee0:	e5832000 	str	r2, [r3]
80025ee4:	e59f306c 	ldr	r3, [pc, #108]	@ 80025f58 <fetchstr+0xb4>
80025ee8:	e5933000 	ldr	r3, [r3]
80025eec:	e5933000 	ldr	r3, [r3]
80025ef0:	e50b300c 	str	r3, [fp, #-12]
80025ef4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ef8:	e5933000 	ldr	r3, [r3]
80025efc:	e50b3008 	str	r3, [fp, #-8]
80025f00:	ea00000b 	b	80025f34 <fetchstr+0x90>
80025f04:	e51b3008 	ldr	r3, [fp, #-8]
80025f08:	e5d33000 	ldrb	r3, [r3]
80025f0c:	e3530000 	cmp	r3, #0
80025f10:	1a000004 	bne	80025f28 <fetchstr+0x84>
80025f14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025f18:	e5933000 	ldr	r3, [r3]
80025f1c:	e51b2008 	ldr	r2, [fp, #-8]
80025f20:	e0423003 	sub	r3, r2, r3
80025f24:	ea000007 	b	80025f48 <fetchstr+0xa4>
80025f28:	e51b3008 	ldr	r3, [fp, #-8]
80025f2c:	e2833001 	add	r3, r3, #1
80025f30:	e50b3008 	str	r3, [fp, #-8]
80025f34:	e51b2008 	ldr	r2, [fp, #-8]
80025f38:	e51b300c 	ldr	r3, [fp, #-12]
80025f3c:	e1520003 	cmp	r2, r3
80025f40:	3affffef 	bcc	80025f04 <fetchstr+0x60>
80025f44:	e3e03000 	mvn	r3, #0
80025f48:	e1a00003 	mov	r0, r3
80025f4c:	e28bd000 	add	sp, fp, #0
80025f50:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025f54:	e12fff1e 	bx	lr
80025f58:	800af640 	.word	0x800af640

80025f5c <argint>:
80025f5c:	e92d4800 	push	{fp, lr}
80025f60:	e28db004 	add	fp, sp, #4
80025f64:	e24dd008 	sub	sp, sp, #8
80025f68:	e50b0008 	str	r0, [fp, #-8]
80025f6c:	e50b100c 	str	r1, [fp, #-12]
80025f70:	e51b3008 	ldr	r3, [fp, #-8]
80025f74:	e3530003 	cmp	r3, #3
80025f78:	da000001 	ble	80025f84 <argint+0x28>
80025f7c:	e59f003c 	ldr	r0, [pc, #60]	@ 80025fc0 <argint+0x64>
80025f80:	ebffeedb 	bl	80021af4 <panic>
80025f84:	e59f3038 	ldr	r3, [pc, #56]	@ 80025fc4 <argint+0x68>
80025f88:	e5933000 	ldr	r3, [r3]
80025f8c:	e5933018 	ldr	r3, [r3, #24]
80025f90:	e2832014 	add	r2, r3, #20
80025f94:	e51b3008 	ldr	r3, [fp, #-8]
80025f98:	e1a03103 	lsl	r3, r3, #2
80025f9c:	e0823003 	add	r3, r2, r3
80025fa0:	e5933000 	ldr	r3, [r3]
80025fa4:	e1a02003 	mov	r2, r3
80025fa8:	e51b300c 	ldr	r3, [fp, #-12]
80025fac:	e5832000 	str	r2, [r3]
80025fb0:	e3a03000 	mov	r3, #0
80025fb4:	e1a00003 	mov	r0, r3
80025fb8:	e24bd004 	sub	sp, fp, #4
80025fbc:	e8bd8800 	pop	{fp, pc}
80025fc0:	80029468 	.word	0x80029468
80025fc4:	800af640 	.word	0x800af640

80025fc8 <argptr>:
80025fc8:	e92d4800 	push	{fp, lr}
80025fcc:	e28db004 	add	fp, sp, #4
80025fd0:	e24dd018 	sub	sp, sp, #24
80025fd4:	e50b0010 	str	r0, [fp, #-16]
80025fd8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025fdc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80025fe0:	e24b3008 	sub	r3, fp, #8
80025fe4:	e1a01003 	mov	r1, r3
80025fe8:	e51b0010 	ldr	r0, [fp, #-16]
80025fec:	ebffffda 	bl	80025f5c <argint>
80025ff0:	e1a03000 	mov	r3, r0
80025ff4:	e3530000 	cmp	r3, #0
80025ff8:	aa000001 	bge	80026004 <argptr+0x3c>
80025ffc:	e3e03000 	mvn	r3, #0
80026000:	ea000015 	b	8002605c <argptr+0x94>
80026004:	e59f305c 	ldr	r3, [pc, #92]	@ 80026068 <argptr+0xa0>
80026008:	e5933000 	ldr	r3, [r3]
8002600c:	e5933000 	ldr	r3, [r3]
80026010:	e51b2008 	ldr	r2, [fp, #-8]
80026014:	e1530002 	cmp	r3, r2
80026018:	9a000008 	bls	80026040 <argptr+0x78>
8002601c:	e51b3008 	ldr	r3, [fp, #-8]
80026020:	e1a02003 	mov	r2, r3
80026024:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026028:	e0822003 	add	r2, r2, r3
8002602c:	e59f3034 	ldr	r3, [pc, #52]	@ 80026068 <argptr+0xa0>
80026030:	e5933000 	ldr	r3, [r3]
80026034:	e5933000 	ldr	r3, [r3]
80026038:	e1520003 	cmp	r2, r3
8002603c:	9a000001 	bls	80026048 <argptr+0x80>
80026040:	e3e03000 	mvn	r3, #0
80026044:	ea000004 	b	8002605c <argptr+0x94>
80026048:	e51b3008 	ldr	r3, [fp, #-8]
8002604c:	e1a02003 	mov	r2, r3
80026050:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026054:	e5832000 	str	r2, [r3]
80026058:	e3a03000 	mov	r3, #0
8002605c:	e1a00003 	mov	r0, r3
80026060:	e24bd004 	sub	sp, fp, #4
80026064:	e8bd8800 	pop	{fp, pc}
80026068:	800af640 	.word	0x800af640

8002606c <argstr>:
8002606c:	e92d4800 	push	{fp, lr}
80026070:	e28db004 	add	fp, sp, #4
80026074:	e24dd010 	sub	sp, sp, #16
80026078:	e50b0010 	str	r0, [fp, #-16]
8002607c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026080:	e24b3008 	sub	r3, fp, #8
80026084:	e1a01003 	mov	r1, r3
80026088:	e51b0010 	ldr	r0, [fp, #-16]
8002608c:	ebffffb2 	bl	80025f5c <argint>
80026090:	e1a03000 	mov	r3, r0
80026094:	e3530000 	cmp	r3, #0
80026098:	aa000001 	bge	800260a4 <argstr+0x38>
8002609c:	e3e03000 	mvn	r3, #0
800260a0:	ea000004 	b	800260b8 <argstr+0x4c>
800260a4:	e51b3008 	ldr	r3, [fp, #-8]
800260a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800260ac:	e1a00003 	mov	r0, r3
800260b0:	ebffff7b 	bl	80025ea4 <fetchstr>
800260b4:	e1a03000 	mov	r3, r0
800260b8:	e1a00003 	mov	r0, r3
800260bc:	e24bd004 	sub	sp, fp, #4
800260c0:	e8bd8800 	pop	{fp, pc}

800260c4 <syscall>:
800260c4:	e92d4800 	push	{fp, lr}
800260c8:	e28db004 	add	fp, sp, #4
800260cc:	e24dd008 	sub	sp, sp, #8
800260d0:	e59f30cc 	ldr	r3, [pc, #204]	@ 800261a4 <syscall+0xe0>
800260d4:	e5933000 	ldr	r3, [r3]
800260d8:	e5933018 	ldr	r3, [r3, #24]
800260dc:	e5933010 	ldr	r3, [r3, #16]
800260e0:	e50b3008 	str	r3, [fp, #-8]
800260e4:	e51b3008 	ldr	r3, [fp, #-8]
800260e8:	e3530000 	cmp	r3, #0
800260ec:	da00001a 	ble	8002615c <syscall+0x98>
800260f0:	e51b3008 	ldr	r3, [fp, #-8]
800260f4:	e3530017 	cmp	r3, #23
800260f8:	8a000017 	bhi	8002615c <syscall+0x98>
800260fc:	e59f20a4 	ldr	r2, [pc, #164]	@ 800261a8 <syscall+0xe4>
80026100:	e51b3008 	ldr	r3, [fp, #-8]
80026104:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026108:	e3530000 	cmp	r3, #0
8002610c:	0a000012 	beq	8002615c <syscall+0x98>
80026110:	e59f2090 	ldr	r2, [pc, #144]	@ 800261a8 <syscall+0xe4>
80026114:	e51b3008 	ldr	r3, [fp, #-8]
80026118:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002611c:	e12fff33 	blx	r3
80026120:	e50b000c 	str	r0, [fp, #-12]
80026124:	e59f3078 	ldr	r3, [pc, #120]	@ 800261a4 <syscall+0xe0>
80026128:	e5933000 	ldr	r3, [r3]
8002612c:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
80026130:	e2822001 	add	r2, r2, #1
80026134:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80026138:	e51b3008 	ldr	r3, [fp, #-8]
8002613c:	e3530007 	cmp	r3, #7
80026140:	0a000014 	beq	80026198 <syscall+0xd4>
80026144:	e59f3058 	ldr	r3, [pc, #88]	@ 800261a4 <syscall+0xe0>
80026148:	e5933000 	ldr	r3, [r3]
8002614c:	e5933018 	ldr	r3, [r3, #24]
80026150:	e51b200c 	ldr	r2, [fp, #-12]
80026154:	e5832010 	str	r2, [r3, #16]
80026158:	ea00000e 	b	80026198 <syscall+0xd4>
8002615c:	e59f3040 	ldr	r3, [pc, #64]	@ 800261a4 <syscall+0xe0>
80026160:	e5933000 	ldr	r3, [r3]
80026164:	e5931010 	ldr	r1, [r3, #16]
80026168:	e59f3034 	ldr	r3, [pc, #52]	@ 800261a4 <syscall+0xe0>
8002616c:	e5933000 	ldr	r3, [r3]
80026170:	e283206c 	add	r2, r3, #108	@ 0x6c
80026174:	e51b3008 	ldr	r3, [fp, #-8]
80026178:	e59f002c 	ldr	r0, [pc, #44]	@ 800261ac <syscall+0xe8>
8002617c:	ebffedc4 	bl	80021894 <cprintf>
80026180:	e59f301c 	ldr	r3, [pc, #28]	@ 800261a4 <syscall+0xe0>
80026184:	e5933000 	ldr	r3, [r3]
80026188:	e5933018 	ldr	r3, [r3, #24]
8002618c:	e3e02000 	mvn	r2, #0
80026190:	e5832010 	str	r2, [r3, #16]
80026194:	e1a00000 	nop			@ (mov r0, r0)
80026198:	e1a00000 	nop			@ (mov r0, r0)
8002619c:	e24bd004 	sub	sp, fp, #4
800261a0:	e8bd8800 	pop	{fp, pc}
800261a4:	800af640 	.word	0x800af640
800261a8:	8002a034 	.word	0x8002a034
800261ac:	8002948c 	.word	0x8002948c

800261b0 <argfd>:
800261b0:	e92d4800 	push	{fp, lr}
800261b4:	e28db004 	add	fp, sp, #4
800261b8:	e24dd018 	sub	sp, sp, #24
800261bc:	e50b0010 	str	r0, [fp, #-16]
800261c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800261c4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800261c8:	e24b300c 	sub	r3, fp, #12
800261cc:	e1a01003 	mov	r1, r3
800261d0:	e51b0010 	ldr	r0, [fp, #-16]
800261d4:	ebffff60 	bl	80025f5c <argint>
800261d8:	e1a03000 	mov	r3, r0
800261dc:	e3530000 	cmp	r3, #0
800261e0:	aa000001 	bge	800261ec <argfd+0x3c>
800261e4:	e3e03000 	mvn	r3, #0
800261e8:	ea00001d 	b	80026264 <argfd+0xb4>
800261ec:	e51b300c 	ldr	r3, [fp, #-12]
800261f0:	e3530000 	cmp	r3, #0
800261f4:	ba00000b 	blt	80026228 <argfd+0x78>
800261f8:	e51b300c 	ldr	r3, [fp, #-12]
800261fc:	e353000f 	cmp	r3, #15
80026200:	ca000008 	bgt	80026228 <argfd+0x78>
80026204:	e59f3064 	ldr	r3, [pc, #100]	@ 80026270 <argfd+0xc0>
80026208:	e5933000 	ldr	r3, [r3]
8002620c:	e51b200c 	ldr	r2, [fp, #-12]
80026210:	e282200a 	add	r2, r2, #10
80026214:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026218:	e50b3008 	str	r3, [fp, #-8]
8002621c:	e51b3008 	ldr	r3, [fp, #-8]
80026220:	e3530000 	cmp	r3, #0
80026224:	1a000001 	bne	80026230 <argfd+0x80>
80026228:	e3e03000 	mvn	r3, #0
8002622c:	ea00000c 	b	80026264 <argfd+0xb4>
80026230:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026234:	e3530000 	cmp	r3, #0
80026238:	0a000002 	beq	80026248 <argfd+0x98>
8002623c:	e51b200c 	ldr	r2, [fp, #-12]
80026240:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026244:	e5832000 	str	r2, [r3]
80026248:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002624c:	e3530000 	cmp	r3, #0
80026250:	0a000002 	beq	80026260 <argfd+0xb0>
80026254:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026258:	e51b2008 	ldr	r2, [fp, #-8]
8002625c:	e5832000 	str	r2, [r3]
80026260:	e3a03000 	mov	r3, #0
80026264:	e1a00003 	mov	r0, r3
80026268:	e24bd004 	sub	sp, fp, #4
8002626c:	e8bd8800 	pop	{fp, pc}
80026270:	800af640 	.word	0x800af640

80026274 <fdalloc>:
80026274:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026278:	e28db000 	add	fp, sp, #0
8002627c:	e24dd014 	sub	sp, sp, #20
80026280:	e50b0010 	str	r0, [fp, #-16]
80026284:	e3a03000 	mov	r3, #0
80026288:	e50b3008 	str	r3, [fp, #-8]
8002628c:	ea000011 	b	800262d8 <fdalloc+0x64>
80026290:	e59f3060 	ldr	r3, [pc, #96]	@ 800262f8 <fdalloc+0x84>
80026294:	e5933000 	ldr	r3, [r3]
80026298:	e51b2008 	ldr	r2, [fp, #-8]
8002629c:	e282200a 	add	r2, r2, #10
800262a0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800262a4:	e3530000 	cmp	r3, #0
800262a8:	1a000007 	bne	800262cc <fdalloc+0x58>
800262ac:	e59f3044 	ldr	r3, [pc, #68]	@ 800262f8 <fdalloc+0x84>
800262b0:	e5933000 	ldr	r3, [r3]
800262b4:	e51b2008 	ldr	r2, [fp, #-8]
800262b8:	e282200a 	add	r2, r2, #10
800262bc:	e51b1010 	ldr	r1, [fp, #-16]
800262c0:	e7831102 	str	r1, [r3, r2, lsl #2]
800262c4:	e51b3008 	ldr	r3, [fp, #-8]
800262c8:	ea000006 	b	800262e8 <fdalloc+0x74>
800262cc:	e51b3008 	ldr	r3, [fp, #-8]
800262d0:	e2833001 	add	r3, r3, #1
800262d4:	e50b3008 	str	r3, [fp, #-8]
800262d8:	e51b3008 	ldr	r3, [fp, #-8]
800262dc:	e353000f 	cmp	r3, #15
800262e0:	daffffea 	ble	80026290 <fdalloc+0x1c>
800262e4:	e3e03000 	mvn	r3, #0
800262e8:	e1a00003 	mov	r0, r3
800262ec:	e28bd000 	add	sp, fp, #0
800262f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800262f4:	e12fff1e 	bx	lr
800262f8:	800af640 	.word	0x800af640

800262fc <sys_dup>:
800262fc:	e92d4800 	push	{fp, lr}
80026300:	e28db004 	add	fp, sp, #4
80026304:	e24dd008 	sub	sp, sp, #8
80026308:	e24b300c 	sub	r3, fp, #12
8002630c:	e1a02003 	mov	r2, r3
80026310:	e3a01000 	mov	r1, #0
80026314:	e3a00000 	mov	r0, #0
80026318:	ebffffa4 	bl	800261b0 <argfd>
8002631c:	e1a03000 	mov	r3, r0
80026320:	e3530000 	cmp	r3, #0
80026324:	aa000001 	bge	80026330 <sys_dup+0x34>
80026328:	e3e03000 	mvn	r3, #0
8002632c:	ea00000c 	b	80026364 <sys_dup+0x68>
80026330:	e51b300c 	ldr	r3, [fp, #-12]
80026334:	e1a00003 	mov	r0, r3
80026338:	ebffffcd 	bl	80026274 <fdalloc>
8002633c:	e50b0008 	str	r0, [fp, #-8]
80026340:	e51b3008 	ldr	r3, [fp, #-8]
80026344:	e3530000 	cmp	r3, #0
80026348:	aa000001 	bge	80026354 <sys_dup+0x58>
8002634c:	e3e03000 	mvn	r3, #0
80026350:	ea000003 	b	80026364 <sys_dup+0x68>
80026354:	e51b300c 	ldr	r3, [fp, #-12]
80026358:	e1a00003 	mov	r0, r3
8002635c:	ebfff0ab 	bl	80022610 <filedup>
80026360:	e51b3008 	ldr	r3, [fp, #-8]
80026364:	e1a00003 	mov	r0, r3
80026368:	e24bd004 	sub	sp, fp, #4
8002636c:	e8bd8800 	pop	{fp, pc}

80026370 <sys_read>:
80026370:	e92d4800 	push	{fp, lr}
80026374:	e28db004 	add	fp, sp, #4
80026378:	e24dd010 	sub	sp, sp, #16
8002637c:	e24b3008 	sub	r3, fp, #8
80026380:	e1a02003 	mov	r2, r3
80026384:	e3a01000 	mov	r1, #0
80026388:	e3a00000 	mov	r0, #0
8002638c:	ebffff87 	bl	800261b0 <argfd>
80026390:	e1a03000 	mov	r3, r0
80026394:	e3530000 	cmp	r3, #0
80026398:	ba00000e 	blt	800263d8 <sys_read+0x68>
8002639c:	e24b300c 	sub	r3, fp, #12
800263a0:	e1a01003 	mov	r1, r3
800263a4:	e3a00002 	mov	r0, #2
800263a8:	ebfffeeb 	bl	80025f5c <argint>
800263ac:	e1a03000 	mov	r3, r0
800263b0:	e3530000 	cmp	r3, #0
800263b4:	ba000007 	blt	800263d8 <sys_read+0x68>
800263b8:	e51b200c 	ldr	r2, [fp, #-12]
800263bc:	e24b3010 	sub	r3, fp, #16
800263c0:	e1a01003 	mov	r1, r3
800263c4:	e3a00001 	mov	r0, #1
800263c8:	ebfffefe 	bl	80025fc8 <argptr>
800263cc:	e1a03000 	mov	r3, r0
800263d0:	e3530000 	cmp	r3, #0
800263d4:	aa000001 	bge	800263e0 <sys_read+0x70>
800263d8:	e3e03000 	mvn	r3, #0
800263dc:	ea000005 	b	800263f8 <sys_read+0x88>
800263e0:	e51b3008 	ldr	r3, [fp, #-8]
800263e4:	e51b1010 	ldr	r1, [fp, #-16]
800263e8:	e51b200c 	ldr	r2, [fp, #-12]
800263ec:	e1a00003 	mov	r0, r3
800263f0:	ebfff0f7 	bl	800227d4 <fileread>
800263f4:	e1a03000 	mov	r3, r0
800263f8:	e1a00003 	mov	r0, r3
800263fc:	e24bd004 	sub	sp, fp, #4
80026400:	e8bd8800 	pop	{fp, pc}

80026404 <sys_write>:
80026404:	e92d4800 	push	{fp, lr}
80026408:	e28db004 	add	fp, sp, #4
8002640c:	e24dd010 	sub	sp, sp, #16
80026410:	e24b3008 	sub	r3, fp, #8
80026414:	e1a02003 	mov	r2, r3
80026418:	e3a01000 	mov	r1, #0
8002641c:	e3a00000 	mov	r0, #0
80026420:	ebffff62 	bl	800261b0 <argfd>
80026424:	e1a03000 	mov	r3, r0
80026428:	e3530000 	cmp	r3, #0
8002642c:	ba00000e 	blt	8002646c <sys_write+0x68>
80026430:	e24b300c 	sub	r3, fp, #12
80026434:	e1a01003 	mov	r1, r3
80026438:	e3a00002 	mov	r0, #2
8002643c:	ebfffec6 	bl	80025f5c <argint>
80026440:	e1a03000 	mov	r3, r0
80026444:	e3530000 	cmp	r3, #0
80026448:	ba000007 	blt	8002646c <sys_write+0x68>
8002644c:	e51b200c 	ldr	r2, [fp, #-12]
80026450:	e24b3010 	sub	r3, fp, #16
80026454:	e1a01003 	mov	r1, r3
80026458:	e3a00001 	mov	r0, #1
8002645c:	ebfffed9 	bl	80025fc8 <argptr>
80026460:	e1a03000 	mov	r3, r0
80026464:	e3530000 	cmp	r3, #0
80026468:	aa000001 	bge	80026474 <sys_write+0x70>
8002646c:	e3e03000 	mvn	r3, #0
80026470:	ea000005 	b	8002648c <sys_write+0x88>
80026474:	e51b3008 	ldr	r3, [fp, #-8]
80026478:	e51b1010 	ldr	r1, [fp, #-16]
8002647c:	e51b200c 	ldr	r2, [fp, #-12]
80026480:	e1a00003 	mov	r0, r3
80026484:	ebfff10f 	bl	800228c8 <filewrite>
80026488:	e1a03000 	mov	r3, r0
8002648c:	e1a00003 	mov	r0, r3
80026490:	e24bd004 	sub	sp, fp, #4
80026494:	e8bd8800 	pop	{fp, pc}

80026498 <sys_close>:
80026498:	e92d4800 	push	{fp, lr}
8002649c:	e28db004 	add	fp, sp, #4
800264a0:	e24dd008 	sub	sp, sp, #8
800264a4:	e24b200c 	sub	r2, fp, #12
800264a8:	e24b3008 	sub	r3, fp, #8
800264ac:	e1a01003 	mov	r1, r3
800264b0:	e3a00000 	mov	r0, #0
800264b4:	ebffff3d 	bl	800261b0 <argfd>
800264b8:	e1a03000 	mov	r3, r0
800264bc:	e3530000 	cmp	r3, #0
800264c0:	aa000001 	bge	800264cc <sys_close+0x34>
800264c4:	e3e03000 	mvn	r3, #0
800264c8:	ea000009 	b	800264f4 <sys_close+0x5c>
800264cc:	e59f302c 	ldr	r3, [pc, #44]	@ 80026500 <sys_close+0x68>
800264d0:	e5933000 	ldr	r3, [r3]
800264d4:	e51b2008 	ldr	r2, [fp, #-8]
800264d8:	e282200a 	add	r2, r2, #10
800264dc:	e3a01000 	mov	r1, #0
800264e0:	e7831102 	str	r1, [r3, r2, lsl #2]
800264e4:	e51b300c 	ldr	r3, [fp, #-12]
800264e8:	e1a00003 	mov	r0, r3
800264ec:	ebfff060 	bl	80022674 <fileclose>
800264f0:	e3a03000 	mov	r3, #0
800264f4:	e1a00003 	mov	r0, r3
800264f8:	e24bd004 	sub	sp, fp, #4
800264fc:	e8bd8800 	pop	{fp, pc}
80026500:	800af640 	.word	0x800af640

80026504 <sys_fstat>:
80026504:	e92d4800 	push	{fp, lr}
80026508:	e28db004 	add	fp, sp, #4
8002650c:	e24dd008 	sub	sp, sp, #8
80026510:	e24b3008 	sub	r3, fp, #8
80026514:	e1a02003 	mov	r2, r3
80026518:	e3a01000 	mov	r1, #0
8002651c:	e3a00000 	mov	r0, #0
80026520:	ebffff22 	bl	800261b0 <argfd>
80026524:	e1a03000 	mov	r3, r0
80026528:	e3530000 	cmp	r3, #0
8002652c:	ba000007 	blt	80026550 <sys_fstat+0x4c>
80026530:	e24b300c 	sub	r3, fp, #12
80026534:	e3a02014 	mov	r2, #20
80026538:	e1a01003 	mov	r1, r3
8002653c:	e3a00001 	mov	r0, #1
80026540:	ebfffea0 	bl	80025fc8 <argptr>
80026544:	e1a03000 	mov	r3, r0
80026548:	e3530000 	cmp	r3, #0
8002654c:	aa000001 	bge	80026558 <sys_fstat+0x54>
80026550:	e3e03000 	mvn	r3, #0
80026554:	ea000005 	b	80026570 <sys_fstat+0x6c>
80026558:	e51b3008 	ldr	r3, [fp, #-8]
8002655c:	e51b200c 	ldr	r2, [fp, #-12]
80026560:	e1a01002 	mov	r1, r2
80026564:	e1a00003 	mov	r0, r3
80026568:	ebfff07d 	bl	80022764 <filestat>
8002656c:	e1a03000 	mov	r3, r0
80026570:	e1a00003 	mov	r0, r3
80026574:	e24bd004 	sub	sp, fp, #4
80026578:	e8bd8800 	pop	{fp, pc}

8002657c <sys_link>:
8002657c:	e92d4800 	push	{fp, lr}
80026580:	e28db004 	add	fp, sp, #4
80026584:	e24dd020 	sub	sp, sp, #32
80026588:	e24b3024 	sub	r3, fp, #36	@ 0x24
8002658c:	e1a01003 	mov	r1, r3
80026590:	e3a00000 	mov	r0, #0
80026594:	ebfffeb4 	bl	8002606c <argstr>
80026598:	e1a03000 	mov	r3, r0
8002659c:	e3530000 	cmp	r3, #0
800265a0:	ba000006 	blt	800265c0 <sys_link+0x44>
800265a4:	e24b3020 	sub	r3, fp, #32
800265a8:	e1a01003 	mov	r1, r3
800265ac:	e3a00001 	mov	r0, #1
800265b0:	ebfffead 	bl	8002606c <argstr>
800265b4:	e1a03000 	mov	r3, r0
800265b8:	e3530000 	cmp	r3, #0
800265bc:	aa000001 	bge	800265c8 <sys_link+0x4c>
800265c0:	e3e03000 	mvn	r3, #0
800265c4:	ea000055 	b	80026720 <sys_link+0x1a4>
800265c8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800265cc:	e1a00003 	mov	r0, r3
800265d0:	ebfff6c5 	bl	800240ec <namei>
800265d4:	e50b0008 	str	r0, [fp, #-8]
800265d8:	e51b3008 	ldr	r3, [fp, #-8]
800265dc:	e3530000 	cmp	r3, #0
800265e0:	1a000001 	bne	800265ec <sys_link+0x70>
800265e4:	e3e03000 	mvn	r3, #0
800265e8:	ea00004c 	b	80026720 <sys_link+0x1a4>
800265ec:	ebfff797 	bl	80024450 <begin_trans>
800265f0:	e51b0008 	ldr	r0, [fp, #-8]
800265f4:	ebfff2e9 	bl	800231a0 <ilock>
800265f8:	e51b3008 	ldr	r3, [fp, #-8]
800265fc:	e1d331f0 	ldrsh	r3, [r3, #16]
80026600:	e3530001 	cmp	r3, #1
80026604:	1a000004 	bne	8002661c <sys_link+0xa0>
80026608:	e51b0008 	ldr	r0, [fp, #-8]
8002660c:	ebfff3a4 	bl	800234a4 <iunlockput>
80026610:	ebfff7a2 	bl	800244a0 <commit_trans>
80026614:	e3e03000 	mvn	r3, #0
80026618:	ea000040 	b	80026720 <sys_link+0x1a4>
8002661c:	e51b3008 	ldr	r3, [fp, #-8]
80026620:	e1d331f6 	ldrsh	r3, [r3, #22]
80026624:	e6ff3073 	uxth	r3, r3
80026628:	e2833001 	add	r3, r3, #1
8002662c:	e6ff3073 	uxth	r3, r3
80026630:	e6bf2073 	sxth	r2, r3
80026634:	e51b3008 	ldr	r3, [fp, #-8]
80026638:	e1c321b6 	strh	r2, [r3, #22]
8002663c:	e51b0008 	ldr	r0, [fp, #-8]
80026640:	ebfff23c 	bl	80022f38 <iupdate>
80026644:	e51b0008 	ldr	r0, [fp, #-8]
80026648:	ebfff338 	bl	80023330 <iunlock>
8002664c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026650:	e24b201c 	sub	r2, fp, #28
80026654:	e1a01002 	mov	r1, r2
80026658:	e1a00003 	mov	r0, r3
8002665c:	ebfff6af 	bl	80024120 <nameiparent>
80026660:	e50b000c 	str	r0, [fp, #-12]
80026664:	e51b300c 	ldr	r3, [fp, #-12]
80026668:	e3530000 	cmp	r3, #0
8002666c:	0a00001a 	beq	800266dc <sys_link+0x160>
80026670:	e51b000c 	ldr	r0, [fp, #-12]
80026674:	ebfff2c9 	bl	800231a0 <ilock>
80026678:	e51b300c 	ldr	r3, [fp, #-12]
8002667c:	e5932000 	ldr	r2, [r3]
80026680:	e51b3008 	ldr	r3, [fp, #-8]
80026684:	e5933000 	ldr	r3, [r3]
80026688:	e1520003 	cmp	r2, r3
8002668c:	1a000008 	bne	800266b4 <sys_link+0x138>
80026690:	e51b3008 	ldr	r3, [fp, #-8]
80026694:	e5932004 	ldr	r2, [r3, #4]
80026698:	e24b301c 	sub	r3, fp, #28
8002669c:	e1a01003 	mov	r1, r3
800266a0:	e51b000c 	ldr	r0, [fp, #-12]
800266a4:	ebfff5ba 	bl	80023d94 <dirlink>
800266a8:	e1a03000 	mov	r3, r0
800266ac:	e3530000 	cmp	r3, #0
800266b0:	aa000002 	bge	800266c0 <sys_link+0x144>
800266b4:	e51b000c 	ldr	r0, [fp, #-12]
800266b8:	ebfff379 	bl	800234a4 <iunlockput>
800266bc:	ea000007 	b	800266e0 <sys_link+0x164>
800266c0:	e51b000c 	ldr	r0, [fp, #-12]
800266c4:	ebfff376 	bl	800234a4 <iunlockput>
800266c8:	e51b0008 	ldr	r0, [fp, #-8]
800266cc:	ebfff339 	bl	800233b8 <iput>
800266d0:	ebfff772 	bl	800244a0 <commit_trans>
800266d4:	e3a03000 	mov	r3, #0
800266d8:	ea000010 	b	80026720 <sys_link+0x1a4>
800266dc:	e1a00000 	nop			@ (mov r0, r0)
800266e0:	e51b0008 	ldr	r0, [fp, #-8]
800266e4:	ebfff2ad 	bl	800231a0 <ilock>
800266e8:	e51b3008 	ldr	r3, [fp, #-8]
800266ec:	e1d331f6 	ldrsh	r3, [r3, #22]
800266f0:	e6ff3073 	uxth	r3, r3
800266f4:	e2433001 	sub	r3, r3, #1
800266f8:	e6ff3073 	uxth	r3, r3
800266fc:	e6bf2073 	sxth	r2, r3
80026700:	e51b3008 	ldr	r3, [fp, #-8]
80026704:	e1c321b6 	strh	r2, [r3, #22]
80026708:	e51b0008 	ldr	r0, [fp, #-8]
8002670c:	ebfff209 	bl	80022f38 <iupdate>
80026710:	e51b0008 	ldr	r0, [fp, #-8]
80026714:	ebfff362 	bl	800234a4 <iunlockput>
80026718:	ebfff760 	bl	800244a0 <commit_trans>
8002671c:	e3e03000 	mvn	r3, #0
80026720:	e1a00003 	mov	r0, r3
80026724:	e24bd004 	sub	sp, fp, #4
80026728:	e8bd8800 	pop	{fp, pc}

8002672c <isdirempty>:
8002672c:	e92d4800 	push	{fp, lr}
80026730:	e28db004 	add	fp, sp, #4
80026734:	e24dd020 	sub	sp, sp, #32
80026738:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002673c:	e3a03020 	mov	r3, #32
80026740:	e50b3008 	str	r3, [fp, #-8]
80026744:	ea000011 	b	80026790 <isdirempty+0x64>
80026748:	e51b2008 	ldr	r2, [fp, #-8]
8002674c:	e24b1018 	sub	r1, fp, #24
80026750:	e3a03010 	mov	r3, #16
80026754:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80026758:	ebfff43c 	bl	80023850 <readi>
8002675c:	e1a03000 	mov	r3, r0
80026760:	e3530010 	cmp	r3, #16
80026764:	0a000001 	beq	80026770 <isdirempty+0x44>
80026768:	e59f0044 	ldr	r0, [pc, #68]	@ 800267b4 <isdirempty+0x88>
8002676c:	ebffece0 	bl	80021af4 <panic>
80026770:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80026774:	e3530000 	cmp	r3, #0
80026778:	0a000001 	beq	80026784 <isdirempty+0x58>
8002677c:	e3a03000 	mov	r3, #0
80026780:	ea000008 	b	800267a8 <isdirempty+0x7c>
80026784:	e51b3008 	ldr	r3, [fp, #-8]
80026788:	e2833010 	add	r3, r3, #16
8002678c:	e50b3008 	str	r3, [fp, #-8]
80026790:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026794:	e5932018 	ldr	r2, [r3, #24]
80026798:	e51b3008 	ldr	r3, [fp, #-8]
8002679c:	e1520003 	cmp	r2, r3
800267a0:	8affffe8 	bhi	80026748 <isdirempty+0x1c>
800267a4:	e3a03001 	mov	r3, #1
800267a8:	e1a00003 	mov	r0, r3
800267ac:	e24bd004 	sub	sp, fp, #4
800267b0:	e8bd8800 	pop	{fp, pc}
800267b4:	800294a8 	.word	0x800294a8

800267b8 <sys_unlink>:
800267b8:	e92d4800 	push	{fp, lr}
800267bc:	e28db004 	add	fp, sp, #4
800267c0:	e24dd030 	sub	sp, sp, #48	@ 0x30
800267c4:	e24b3030 	sub	r3, fp, #48	@ 0x30
800267c8:	e1a01003 	mov	r1, r3
800267cc:	e3a00000 	mov	r0, #0
800267d0:	ebfffe25 	bl	8002606c <argstr>
800267d4:	e1a03000 	mov	r3, r0
800267d8:	e3530000 	cmp	r3, #0
800267dc:	aa000001 	bge	800267e8 <sys_unlink+0x30>
800267e0:	e3e03000 	mvn	r3, #0
800267e4:	ea00006d 	b	800269a0 <sys_unlink+0x1e8>
800267e8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800267ec:	e24b202c 	sub	r2, fp, #44	@ 0x2c
800267f0:	e1a01002 	mov	r1, r2
800267f4:	e1a00003 	mov	r0, r3
800267f8:	ebfff648 	bl	80024120 <nameiparent>
800267fc:	e50b0008 	str	r0, [fp, #-8]
80026800:	e51b3008 	ldr	r3, [fp, #-8]
80026804:	e3530000 	cmp	r3, #0
80026808:	1a000001 	bne	80026814 <sys_unlink+0x5c>
8002680c:	e3e03000 	mvn	r3, #0
80026810:	ea000062 	b	800269a0 <sys_unlink+0x1e8>
80026814:	ebfff70d 	bl	80024450 <begin_trans>
80026818:	e51b0008 	ldr	r0, [fp, #-8]
8002681c:	ebfff25f 	bl	800231a0 <ilock>
80026820:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026824:	e59f1180 	ldr	r1, [pc, #384]	@ 800269ac <sys_unlink+0x1f4>
80026828:	e1a00003 	mov	r0, r3
8002682c:	ebfff509 	bl	80023c58 <namecmp>
80026830:	e1a03000 	mov	r3, r0
80026834:	e3530000 	cmp	r3, #0
80026838:	0a000051 	beq	80026984 <sys_unlink+0x1cc>
8002683c:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026840:	e59f1168 	ldr	r1, [pc, #360]	@ 800269b0 <sys_unlink+0x1f8>
80026844:	e1a00003 	mov	r0, r3
80026848:	ebfff502 	bl	80023c58 <namecmp>
8002684c:	e1a03000 	mov	r3, r0
80026850:	e3530000 	cmp	r3, #0
80026854:	0a00004a 	beq	80026984 <sys_unlink+0x1cc>
80026858:	e24b2034 	sub	r2, fp, #52	@ 0x34
8002685c:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026860:	e1a01003 	mov	r1, r3
80026864:	e51b0008 	ldr	r0, [fp, #-8]
80026868:	ebfff507 	bl	80023c8c <dirlookup>
8002686c:	e50b000c 	str	r0, [fp, #-12]
80026870:	e51b300c 	ldr	r3, [fp, #-12]
80026874:	e3530000 	cmp	r3, #0
80026878:	0a000043 	beq	8002698c <sys_unlink+0x1d4>
8002687c:	e51b000c 	ldr	r0, [fp, #-12]
80026880:	ebfff246 	bl	800231a0 <ilock>
80026884:	e51b300c 	ldr	r3, [fp, #-12]
80026888:	e1d331f6 	ldrsh	r3, [r3, #22]
8002688c:	e3530000 	cmp	r3, #0
80026890:	ca000001 	bgt	8002689c <sys_unlink+0xe4>
80026894:	e59f0118 	ldr	r0, [pc, #280]	@ 800269b4 <sys_unlink+0x1fc>
80026898:	ebffec95 	bl	80021af4 <panic>
8002689c:	e51b300c 	ldr	r3, [fp, #-12]
800268a0:	e1d331f0 	ldrsh	r3, [r3, #16]
800268a4:	e3530001 	cmp	r3, #1
800268a8:	1a000007 	bne	800268cc <sys_unlink+0x114>
800268ac:	e51b000c 	ldr	r0, [fp, #-12]
800268b0:	ebffff9d 	bl	8002672c <isdirempty>
800268b4:	e1a03000 	mov	r3, r0
800268b8:	e3530000 	cmp	r3, #0
800268bc:	1a000002 	bne	800268cc <sys_unlink+0x114>
800268c0:	e51b000c 	ldr	r0, [fp, #-12]
800268c4:	ebfff2f6 	bl	800234a4 <iunlockput>
800268c8:	ea000030 	b	80026990 <sys_unlink+0x1d8>
800268cc:	e24b301c 	sub	r3, fp, #28
800268d0:	e3a02010 	mov	r2, #16
800268d4:	e3a01000 	mov	r1, #0
800268d8:	e1a00003 	mov	r0, r3
800268dc:	ebffe5c7 	bl	80020000 <memset>
800268e0:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
800268e4:	e24b101c 	sub	r1, fp, #28
800268e8:	e3a03010 	mov	r3, #16
800268ec:	e51b0008 	ldr	r0, [fp, #-8]
800268f0:	ebfff451 	bl	80023a3c <writei>
800268f4:	e1a03000 	mov	r3, r0
800268f8:	e3530010 	cmp	r3, #16
800268fc:	0a000001 	beq	80026908 <sys_unlink+0x150>
80026900:	e59f00b0 	ldr	r0, [pc, #176]	@ 800269b8 <sys_unlink+0x200>
80026904:	ebffec7a 	bl	80021af4 <panic>
80026908:	e51b300c 	ldr	r3, [fp, #-12]
8002690c:	e1d331f0 	ldrsh	r3, [r3, #16]
80026910:	e3530001 	cmp	r3, #1
80026914:	1a000009 	bne	80026940 <sys_unlink+0x188>
80026918:	e51b3008 	ldr	r3, [fp, #-8]
8002691c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026920:	e6ff3073 	uxth	r3, r3
80026924:	e2433001 	sub	r3, r3, #1
80026928:	e6ff3073 	uxth	r3, r3
8002692c:	e6bf2073 	sxth	r2, r3
80026930:	e51b3008 	ldr	r3, [fp, #-8]
80026934:	e1c321b6 	strh	r2, [r3, #22]
80026938:	e51b0008 	ldr	r0, [fp, #-8]
8002693c:	ebfff17d 	bl	80022f38 <iupdate>
80026940:	e51b0008 	ldr	r0, [fp, #-8]
80026944:	ebfff2d6 	bl	800234a4 <iunlockput>
80026948:	e51b300c 	ldr	r3, [fp, #-12]
8002694c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026950:	e6ff3073 	uxth	r3, r3
80026954:	e2433001 	sub	r3, r3, #1
80026958:	e6ff3073 	uxth	r3, r3
8002695c:	e6bf2073 	sxth	r2, r3
80026960:	e51b300c 	ldr	r3, [fp, #-12]
80026964:	e1c321b6 	strh	r2, [r3, #22]
80026968:	e51b000c 	ldr	r0, [fp, #-12]
8002696c:	ebfff171 	bl	80022f38 <iupdate>
80026970:	e51b000c 	ldr	r0, [fp, #-12]
80026974:	ebfff2ca 	bl	800234a4 <iunlockput>
80026978:	ebfff6c8 	bl	800244a0 <commit_trans>
8002697c:	e3a03000 	mov	r3, #0
80026980:	ea000006 	b	800269a0 <sys_unlink+0x1e8>
80026984:	e1a00000 	nop			@ (mov r0, r0)
80026988:	ea000000 	b	80026990 <sys_unlink+0x1d8>
8002698c:	e1a00000 	nop			@ (mov r0, r0)
80026990:	e51b0008 	ldr	r0, [fp, #-8]
80026994:	ebfff2c2 	bl	800234a4 <iunlockput>
80026998:	ebfff6c0 	bl	800244a0 <commit_trans>
8002699c:	e3e03000 	mvn	r3, #0
800269a0:	e1a00003 	mov	r0, r3
800269a4:	e24bd004 	sub	sp, fp, #4
800269a8:	e8bd8800 	pop	{fp, pc}
800269ac:	800294bc 	.word	0x800294bc
800269b0:	800294c0 	.word	0x800294c0
800269b4:	800294c4 	.word	0x800294c4
800269b8:	800294d8 	.word	0x800294d8

800269bc <create>:
800269bc:	e92d4800 	push	{fp, lr}
800269c0:	e28db004 	add	fp, sp, #4
800269c4:	e24dd030 	sub	sp, sp, #48	@ 0x30
800269c8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800269cc:	e1a00001 	mov	r0, r1
800269d0:	e1a01002 	mov	r1, r2
800269d4:	e1a02003 	mov	r2, r3
800269d8:	e1a03000 	mov	r3, r0
800269dc:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
800269e0:	e1a03001 	mov	r3, r1
800269e4:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
800269e8:	e1a03002 	mov	r3, r2
800269ec:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
800269f0:	e24b3020 	sub	r3, fp, #32
800269f4:	e1a01003 	mov	r1, r3
800269f8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800269fc:	ebfff5c7 	bl	80024120 <nameiparent>
80026a00:	e50b0008 	str	r0, [fp, #-8]
80026a04:	e51b3008 	ldr	r3, [fp, #-8]
80026a08:	e3530000 	cmp	r3, #0
80026a0c:	1a000001 	bne	80026a18 <create+0x5c>
80026a10:	e3a03000 	mov	r3, #0
80026a14:	ea000063 	b	80026ba8 <create+0x1ec>
80026a18:	e51b0008 	ldr	r0, [fp, #-8]
80026a1c:	ebfff1df 	bl	800231a0 <ilock>
80026a20:	e24b2010 	sub	r2, fp, #16
80026a24:	e24b3020 	sub	r3, fp, #32
80026a28:	e1a01003 	mov	r1, r3
80026a2c:	e51b0008 	ldr	r0, [fp, #-8]
80026a30:	ebfff495 	bl	80023c8c <dirlookup>
80026a34:	e50b000c 	str	r0, [fp, #-12]
80026a38:	e51b300c 	ldr	r3, [fp, #-12]
80026a3c:	e3530000 	cmp	r3, #0
80026a40:	0a000010 	beq	80026a88 <create+0xcc>
80026a44:	e51b0008 	ldr	r0, [fp, #-8]
80026a48:	ebfff295 	bl	800234a4 <iunlockput>
80026a4c:	e51b000c 	ldr	r0, [fp, #-12]
80026a50:	ebfff1d2 	bl	800231a0 <ilock>
80026a54:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026a58:	e3530002 	cmp	r3, #2
80026a5c:	1a000005 	bne	80026a78 <create+0xbc>
80026a60:	e51b300c 	ldr	r3, [fp, #-12]
80026a64:	e1d331f0 	ldrsh	r3, [r3, #16]
80026a68:	e3530002 	cmp	r3, #2
80026a6c:	1a000001 	bne	80026a78 <create+0xbc>
80026a70:	e51b300c 	ldr	r3, [fp, #-12]
80026a74:	ea00004b 	b	80026ba8 <create+0x1ec>
80026a78:	e51b000c 	ldr	r0, [fp, #-12]
80026a7c:	ebfff288 	bl	800234a4 <iunlockput>
80026a80:	e3a03000 	mov	r3, #0
80026a84:	ea000047 	b	80026ba8 <create+0x1ec>
80026a88:	e51b3008 	ldr	r3, [fp, #-8]
80026a8c:	e5933000 	ldr	r3, [r3]
80026a90:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80026a94:	e1a01002 	mov	r1, r2
80026a98:	e1a00003 	mov	r0, r3
80026a9c:	ebfff0e5 	bl	80022e38 <ialloc>
80026aa0:	e50b000c 	str	r0, [fp, #-12]
80026aa4:	e51b300c 	ldr	r3, [fp, #-12]
80026aa8:	e3530000 	cmp	r3, #0
80026aac:	1a000001 	bne	80026ab8 <create+0xfc>
80026ab0:	e59f00fc 	ldr	r0, [pc, #252]	@ 80026bb4 <create+0x1f8>
80026ab4:	ebffec0e 	bl	80021af4 <panic>
80026ab8:	e51b000c 	ldr	r0, [fp, #-12]
80026abc:	ebfff1b7 	bl	800231a0 <ilock>
80026ac0:	e51b300c 	ldr	r3, [fp, #-12]
80026ac4:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80026ac8:	e1c321b2 	strh	r2, [r3, #18]
80026acc:	e51b300c 	ldr	r3, [fp, #-12]
80026ad0:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80026ad4:	e1c321b4 	strh	r2, [r3, #20]
80026ad8:	e51b300c 	ldr	r3, [fp, #-12]
80026adc:	e3a02001 	mov	r2, #1
80026ae0:	e1c321b6 	strh	r2, [r3, #22]
80026ae4:	e51b000c 	ldr	r0, [fp, #-12]
80026ae8:	ebfff112 	bl	80022f38 <iupdate>
80026aec:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026af0:	e3530001 	cmp	r3, #1
80026af4:	1a00001d 	bne	80026b70 <create+0x1b4>
80026af8:	e51b3008 	ldr	r3, [fp, #-8]
80026afc:	e1d331f6 	ldrsh	r3, [r3, #22]
80026b00:	e6ff3073 	uxth	r3, r3
80026b04:	e2833001 	add	r3, r3, #1
80026b08:	e6ff3073 	uxth	r3, r3
80026b0c:	e6bf2073 	sxth	r2, r3
80026b10:	e51b3008 	ldr	r3, [fp, #-8]
80026b14:	e1c321b6 	strh	r2, [r3, #22]
80026b18:	e51b0008 	ldr	r0, [fp, #-8]
80026b1c:	ebfff105 	bl	80022f38 <iupdate>
80026b20:	e51b300c 	ldr	r3, [fp, #-12]
80026b24:	e5933004 	ldr	r3, [r3, #4]
80026b28:	e1a02003 	mov	r2, r3
80026b2c:	e59f1084 	ldr	r1, [pc, #132]	@ 80026bb8 <create+0x1fc>
80026b30:	e51b000c 	ldr	r0, [fp, #-12]
80026b34:	ebfff496 	bl	80023d94 <dirlink>
80026b38:	e1a03000 	mov	r3, r0
80026b3c:	e3530000 	cmp	r3, #0
80026b40:	ba000008 	blt	80026b68 <create+0x1ac>
80026b44:	e51b3008 	ldr	r3, [fp, #-8]
80026b48:	e5933004 	ldr	r3, [r3, #4]
80026b4c:	e1a02003 	mov	r2, r3
80026b50:	e59f1064 	ldr	r1, [pc, #100]	@ 80026bbc <create+0x200>
80026b54:	e51b000c 	ldr	r0, [fp, #-12]
80026b58:	ebfff48d 	bl	80023d94 <dirlink>
80026b5c:	e1a03000 	mov	r3, r0
80026b60:	e3530000 	cmp	r3, #0
80026b64:	aa000001 	bge	80026b70 <create+0x1b4>
80026b68:	e59f0050 	ldr	r0, [pc, #80]	@ 80026bc0 <create+0x204>
80026b6c:	ebffebe0 	bl	80021af4 <panic>
80026b70:	e51b300c 	ldr	r3, [fp, #-12]
80026b74:	e5932004 	ldr	r2, [r3, #4]
80026b78:	e24b3020 	sub	r3, fp, #32
80026b7c:	e1a01003 	mov	r1, r3
80026b80:	e51b0008 	ldr	r0, [fp, #-8]
80026b84:	ebfff482 	bl	80023d94 <dirlink>
80026b88:	e1a03000 	mov	r3, r0
80026b8c:	e3530000 	cmp	r3, #0
80026b90:	aa000001 	bge	80026b9c <create+0x1e0>
80026b94:	e59f0028 	ldr	r0, [pc, #40]	@ 80026bc4 <create+0x208>
80026b98:	ebffebd5 	bl	80021af4 <panic>
80026b9c:	e51b0008 	ldr	r0, [fp, #-8]
80026ba0:	ebfff23f 	bl	800234a4 <iunlockput>
80026ba4:	e51b300c 	ldr	r3, [fp, #-12]
80026ba8:	e1a00003 	mov	r0, r3
80026bac:	e24bd004 	sub	sp, fp, #4
80026bb0:	e8bd8800 	pop	{fp, pc}
80026bb4:	800294e8 	.word	0x800294e8
80026bb8:	800294bc 	.word	0x800294bc
80026bbc:	800294c0 	.word	0x800294c0
80026bc0:	800294f8 	.word	0x800294f8
80026bc4:	80029504 	.word	0x80029504

80026bc8 <sys_open>:
80026bc8:	e92d4800 	push	{fp, lr}
80026bcc:	e28db004 	add	fp, sp, #4
80026bd0:	e24dd018 	sub	sp, sp, #24
80026bd4:	e24b3014 	sub	r3, fp, #20
80026bd8:	e1a01003 	mov	r1, r3
80026bdc:	e3a00000 	mov	r0, #0
80026be0:	ebfffd21 	bl	8002606c <argstr>
80026be4:	e1a03000 	mov	r3, r0
80026be8:	e3530000 	cmp	r3, #0
80026bec:	ba000006 	blt	80026c0c <sys_open+0x44>
80026bf0:	e24b3018 	sub	r3, fp, #24
80026bf4:	e1a01003 	mov	r1, r3
80026bf8:	e3a00001 	mov	r0, #1
80026bfc:	ebfffcd6 	bl	80025f5c <argint>
80026c00:	e1a03000 	mov	r3, r0
80026c04:	e3530000 	cmp	r3, #0
80026c08:	aa000001 	bge	80026c14 <sys_open+0x4c>
80026c0c:	e3e03000 	mvn	r3, #0
80026c10:	ea00005d 	b	80026d8c <sys_open+0x1c4>
80026c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026c18:	e2033c02 	and	r3, r3, #512	@ 0x200
80026c1c:	e3530000 	cmp	r3, #0
80026c20:	0a00000c 	beq	80026c58 <sys_open+0x90>
80026c24:	ebfff609 	bl	80024450 <begin_trans>
80026c28:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80026c2c:	e3a03000 	mov	r3, #0
80026c30:	e3a02000 	mov	r2, #0
80026c34:	e3a01002 	mov	r1, #2
80026c38:	ebffff5f 	bl	800269bc <create>
80026c3c:	e50b0008 	str	r0, [fp, #-8]
80026c40:	ebfff616 	bl	800244a0 <commit_trans>
80026c44:	e51b3008 	ldr	r3, [fp, #-8]
80026c48:	e3530000 	cmp	r3, #0
80026c4c:	1a000017 	bne	80026cb0 <sys_open+0xe8>
80026c50:	e3e03000 	mvn	r3, #0
80026c54:	ea00004c 	b	80026d8c <sys_open+0x1c4>
80026c58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026c5c:	e1a00003 	mov	r0, r3
80026c60:	ebfff521 	bl	800240ec <namei>
80026c64:	e50b0008 	str	r0, [fp, #-8]
80026c68:	e51b3008 	ldr	r3, [fp, #-8]
80026c6c:	e3530000 	cmp	r3, #0
80026c70:	1a000001 	bne	80026c7c <sys_open+0xb4>
80026c74:	e3e03000 	mvn	r3, #0
80026c78:	ea000043 	b	80026d8c <sys_open+0x1c4>
80026c7c:	e51b0008 	ldr	r0, [fp, #-8]
80026c80:	ebfff146 	bl	800231a0 <ilock>
80026c84:	e51b3008 	ldr	r3, [fp, #-8]
80026c88:	e1d331f0 	ldrsh	r3, [r3, #16]
80026c8c:	e3530001 	cmp	r3, #1
80026c90:	1a000006 	bne	80026cb0 <sys_open+0xe8>
80026c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026c98:	e3530000 	cmp	r3, #0
80026c9c:	0a000003 	beq	80026cb0 <sys_open+0xe8>
80026ca0:	e51b0008 	ldr	r0, [fp, #-8]
80026ca4:	ebfff1fe 	bl	800234a4 <iunlockput>
80026ca8:	e3e03000 	mvn	r3, #0
80026cac:	ea000036 	b	80026d8c <sys_open+0x1c4>
80026cb0:	ebffee33 	bl	80022584 <filealloc>
80026cb4:	e50b000c 	str	r0, [fp, #-12]
80026cb8:	e51b300c 	ldr	r3, [fp, #-12]
80026cbc:	e3530000 	cmp	r3, #0
80026cc0:	0a000005 	beq	80026cdc <sys_open+0x114>
80026cc4:	e51b000c 	ldr	r0, [fp, #-12]
80026cc8:	ebfffd69 	bl	80026274 <fdalloc>
80026ccc:	e50b0010 	str	r0, [fp, #-16]
80026cd0:	e51b3010 	ldr	r3, [fp, #-16]
80026cd4:	e3530000 	cmp	r3, #0
80026cd8:	aa000008 	bge	80026d00 <sys_open+0x138>
80026cdc:	e51b300c 	ldr	r3, [fp, #-12]
80026ce0:	e3530000 	cmp	r3, #0
80026ce4:	0a000001 	beq	80026cf0 <sys_open+0x128>
80026ce8:	e51b000c 	ldr	r0, [fp, #-12]
80026cec:	ebffee60 	bl	80022674 <fileclose>
80026cf0:	e51b0008 	ldr	r0, [fp, #-8]
80026cf4:	ebfff1ea 	bl	800234a4 <iunlockput>
80026cf8:	e3e03000 	mvn	r3, #0
80026cfc:	ea000022 	b	80026d8c <sys_open+0x1c4>
80026d00:	e51b0008 	ldr	r0, [fp, #-8]
80026d04:	ebfff189 	bl	80023330 <iunlock>
80026d08:	e51b300c 	ldr	r3, [fp, #-12]
80026d0c:	e3a02002 	mov	r2, #2
80026d10:	e5c32000 	strb	r2, [r3]
80026d14:	e51b300c 	ldr	r3, [fp, #-12]
80026d18:	e51b2008 	ldr	r2, [fp, #-8]
80026d1c:	e5832010 	str	r2, [r3, #16]
80026d20:	e51b300c 	ldr	r3, [fp, #-12]
80026d24:	e3a02000 	mov	r2, #0
80026d28:	e5832014 	str	r2, [r3, #20]
80026d2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d30:	e2033001 	and	r3, r3, #1
80026d34:	e3530000 	cmp	r3, #0
80026d38:	03a03001 	moveq	r3, #1
80026d3c:	13a03000 	movne	r3, #0
80026d40:	e6ef3073 	uxtb	r3, r3
80026d44:	e1a02003 	mov	r2, r3
80026d48:	e51b300c 	ldr	r3, [fp, #-12]
80026d4c:	e5c32008 	strb	r2, [r3, #8]
80026d50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d54:	e2033001 	and	r3, r3, #1
80026d58:	e3530000 	cmp	r3, #0
80026d5c:	1a000003 	bne	80026d70 <sys_open+0x1a8>
80026d60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d64:	e2033002 	and	r3, r3, #2
80026d68:	e3530000 	cmp	r3, #0
80026d6c:	0a000001 	beq	80026d78 <sys_open+0x1b0>
80026d70:	e3a03001 	mov	r3, #1
80026d74:	ea000000 	b	80026d7c <sys_open+0x1b4>
80026d78:	e3a03000 	mov	r3, #0
80026d7c:	e6ef2073 	uxtb	r2, r3
80026d80:	e51b300c 	ldr	r3, [fp, #-12]
80026d84:	e5c32009 	strb	r2, [r3, #9]
80026d88:	e51b3010 	ldr	r3, [fp, #-16]
80026d8c:	e1a00003 	mov	r0, r3
80026d90:	e24bd004 	sub	sp, fp, #4
80026d94:	e8bd8800 	pop	{fp, pc}

80026d98 <sys_mkdir>:
80026d98:	e92d4800 	push	{fp, lr}
80026d9c:	e28db004 	add	fp, sp, #4
80026da0:	e24dd008 	sub	sp, sp, #8
80026da4:	ebfff5a9 	bl	80024450 <begin_trans>
80026da8:	e24b300c 	sub	r3, fp, #12
80026dac:	e1a01003 	mov	r1, r3
80026db0:	e3a00000 	mov	r0, #0
80026db4:	ebfffcac 	bl	8002606c <argstr>
80026db8:	e1a03000 	mov	r3, r0
80026dbc:	e3530000 	cmp	r3, #0
80026dc0:	ba000008 	blt	80026de8 <sys_mkdir+0x50>
80026dc4:	e51b000c 	ldr	r0, [fp, #-12]
80026dc8:	e3a03000 	mov	r3, #0
80026dcc:	e3a02000 	mov	r2, #0
80026dd0:	e3a01001 	mov	r1, #1
80026dd4:	ebfffef8 	bl	800269bc <create>
80026dd8:	e50b0008 	str	r0, [fp, #-8]
80026ddc:	e51b3008 	ldr	r3, [fp, #-8]
80026de0:	e3530000 	cmp	r3, #0
80026de4:	1a000002 	bne	80026df4 <sys_mkdir+0x5c>
80026de8:	ebfff5ac 	bl	800244a0 <commit_trans>
80026dec:	e3e03000 	mvn	r3, #0
80026df0:	ea000003 	b	80026e04 <sys_mkdir+0x6c>
80026df4:	e51b0008 	ldr	r0, [fp, #-8]
80026df8:	ebfff1a9 	bl	800234a4 <iunlockput>
80026dfc:	ebfff5a7 	bl	800244a0 <commit_trans>
80026e00:	e3a03000 	mov	r3, #0
80026e04:	e1a00003 	mov	r0, r3
80026e08:	e24bd004 	sub	sp, fp, #4
80026e0c:	e8bd8800 	pop	{fp, pc}

80026e10 <sys_mknod>:
80026e10:	e92d4800 	push	{fp, lr}
80026e14:	e28db004 	add	fp, sp, #4
80026e18:	e24dd018 	sub	sp, sp, #24
80026e1c:	ebfff58b 	bl	80024450 <begin_trans>
80026e20:	e24b3010 	sub	r3, fp, #16
80026e24:	e1a01003 	mov	r1, r3
80026e28:	e3a00000 	mov	r0, #0
80026e2c:	ebfffc8e 	bl	8002606c <argstr>
80026e30:	e50b0008 	str	r0, [fp, #-8]
80026e34:	e51b3008 	ldr	r3, [fp, #-8]
80026e38:	e3530000 	cmp	r3, #0
80026e3c:	ba000018 	blt	80026ea4 <sys_mknod+0x94>
80026e40:	e24b3014 	sub	r3, fp, #20
80026e44:	e1a01003 	mov	r1, r3
80026e48:	e3a00001 	mov	r0, #1
80026e4c:	ebfffc42 	bl	80025f5c <argint>
80026e50:	e1a03000 	mov	r3, r0
80026e54:	e3530000 	cmp	r3, #0
80026e58:	ba000011 	blt	80026ea4 <sys_mknod+0x94>
80026e5c:	e24b3018 	sub	r3, fp, #24
80026e60:	e1a01003 	mov	r1, r3
80026e64:	e3a00002 	mov	r0, #2
80026e68:	ebfffc3b 	bl	80025f5c <argint>
80026e6c:	e1a03000 	mov	r3, r0
80026e70:	e3530000 	cmp	r3, #0
80026e74:	ba00000a 	blt	80026ea4 <sys_mknod+0x94>
80026e78:	e51b0010 	ldr	r0, [fp, #-16]
80026e7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026e80:	e6bf2073 	sxth	r2, r3
80026e84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026e88:	e6bf3073 	sxth	r3, r3
80026e8c:	e3a01003 	mov	r1, #3
80026e90:	ebfffec9 	bl	800269bc <create>
80026e94:	e50b000c 	str	r0, [fp, #-12]
80026e98:	e51b300c 	ldr	r3, [fp, #-12]
80026e9c:	e3530000 	cmp	r3, #0
80026ea0:	1a000002 	bne	80026eb0 <sys_mknod+0xa0>
80026ea4:	ebfff57d 	bl	800244a0 <commit_trans>
80026ea8:	e3e03000 	mvn	r3, #0
80026eac:	ea000003 	b	80026ec0 <sys_mknod+0xb0>
80026eb0:	e51b000c 	ldr	r0, [fp, #-12]
80026eb4:	ebfff17a 	bl	800234a4 <iunlockput>
80026eb8:	ebfff578 	bl	800244a0 <commit_trans>
80026ebc:	e3a03000 	mov	r3, #0
80026ec0:	e1a00003 	mov	r0, r3
80026ec4:	e24bd004 	sub	sp, fp, #4
80026ec8:	e8bd8800 	pop	{fp, pc}

80026ecc <sys_chdir>:
80026ecc:	e92d4800 	push	{fp, lr}
80026ed0:	e28db004 	add	fp, sp, #4
80026ed4:	e24dd008 	sub	sp, sp, #8
80026ed8:	e24b300c 	sub	r3, fp, #12
80026edc:	e1a01003 	mov	r1, r3
80026ee0:	e3a00000 	mov	r0, #0
80026ee4:	ebfffc60 	bl	8002606c <argstr>
80026ee8:	e1a03000 	mov	r3, r0
80026eec:	e3530000 	cmp	r3, #0
80026ef0:	ba000006 	blt	80026f10 <sys_chdir+0x44>
80026ef4:	e51b300c 	ldr	r3, [fp, #-12]
80026ef8:	e1a00003 	mov	r0, r3
80026efc:	ebfff47a 	bl	800240ec <namei>
80026f00:	e50b0008 	str	r0, [fp, #-8]
80026f04:	e51b3008 	ldr	r3, [fp, #-8]
80026f08:	e3530000 	cmp	r3, #0
80026f0c:	1a000001 	bne	80026f18 <sys_chdir+0x4c>
80026f10:	e3e03000 	mvn	r3, #0
80026f14:	ea000015 	b	80026f70 <sys_chdir+0xa4>
80026f18:	e51b0008 	ldr	r0, [fp, #-8]
80026f1c:	ebfff09f 	bl	800231a0 <ilock>
80026f20:	e51b3008 	ldr	r3, [fp, #-8]
80026f24:	e1d331f0 	ldrsh	r3, [r3, #16]
80026f28:	e3530001 	cmp	r3, #1
80026f2c:	0a000003 	beq	80026f40 <sys_chdir+0x74>
80026f30:	e51b0008 	ldr	r0, [fp, #-8]
80026f34:	ebfff15a 	bl	800234a4 <iunlockput>
80026f38:	e3e03000 	mvn	r3, #0
80026f3c:	ea00000b 	b	80026f70 <sys_chdir+0xa4>
80026f40:	e51b0008 	ldr	r0, [fp, #-8]
80026f44:	ebfff0f9 	bl	80023330 <iunlock>
80026f48:	e59f302c 	ldr	r3, [pc, #44]	@ 80026f7c <sys_chdir+0xb0>
80026f4c:	e5933000 	ldr	r3, [r3]
80026f50:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80026f54:	e1a00003 	mov	r0, r3
80026f58:	ebfff116 	bl	800233b8 <iput>
80026f5c:	e59f3018 	ldr	r3, [pc, #24]	@ 80026f7c <sys_chdir+0xb0>
80026f60:	e5933000 	ldr	r3, [r3]
80026f64:	e51b2008 	ldr	r2, [fp, #-8]
80026f68:	e5832068 	str	r2, [r3, #104]	@ 0x68
80026f6c:	e3a03000 	mov	r3, #0
80026f70:	e1a00003 	mov	r0, r3
80026f74:	e24bd004 	sub	sp, fp, #4
80026f78:	e8bd8800 	pop	{fp, pc}
80026f7c:	800af640 	.word	0x800af640

80026f80 <sys_exec>:
80026f80:	e92d4800 	push	{fp, lr}
80026f84:	e28db004 	add	fp, sp, #4
80026f88:	e24dd090 	sub	sp, sp, #144	@ 0x90
80026f8c:	e24b300c 	sub	r3, fp, #12
80026f90:	e1a01003 	mov	r1, r3
80026f94:	e3a00000 	mov	r0, #0
80026f98:	ebfffc33 	bl	8002606c <argstr>
80026f9c:	e1a03000 	mov	r3, r0
80026fa0:	e3530000 	cmp	r3, #0
80026fa4:	ba000006 	blt	80026fc4 <sys_exec+0x44>
80026fa8:	e24b3090 	sub	r3, fp, #144	@ 0x90
80026fac:	e1a01003 	mov	r1, r3
80026fb0:	e3a00001 	mov	r0, #1
80026fb4:	ebfffbe8 	bl	80025f5c <argint>
80026fb8:	e1a03000 	mov	r3, r0
80026fbc:	e3530000 	cmp	r3, #0
80026fc0:	aa000001 	bge	80026fcc <sys_exec+0x4c>
80026fc4:	e3e03000 	mvn	r3, #0
80026fc8:	ea00003a 	b	800270b8 <sys_exec+0x138>
80026fcc:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80026fd0:	e3a02080 	mov	r2, #128	@ 0x80
80026fd4:	e3a01000 	mov	r1, #0
80026fd8:	e1a00003 	mov	r0, r3
80026fdc:	ebffe407 	bl	80020000 <memset>
80026fe0:	e3a03000 	mov	r3, #0
80026fe4:	e50b3008 	str	r3, [fp, #-8]
80026fe8:	e51b3008 	ldr	r3, [fp, #-8]
80026fec:	e353001f 	cmp	r3, #31
80026ff0:	9a000001 	bls	80026ffc <sys_exec+0x7c>
80026ff4:	e3e03000 	mvn	r3, #0
80026ff8:	ea00002e 	b	800270b8 <sys_exec+0x138>
80026ffc:	e51b3008 	ldr	r3, [fp, #-8]
80027000:	e1a03103 	lsl	r3, r3, #2
80027004:	e1a02003 	mov	r2, r3
80027008:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
8002700c:	e0823003 	add	r3, r2, r3
80027010:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027014:	e1a01002 	mov	r1, r2
80027018:	e1a00003 	mov	r0, r3
8002701c:	ebfffb82 	bl	80025e2c <fetchint>
80027020:	e1a03000 	mov	r3, r0
80027024:	e3530000 	cmp	r3, #0
80027028:	aa000001 	bge	80027034 <sys_exec+0xb4>
8002702c:	e3e03000 	mvn	r3, #0
80027030:	ea000020 	b	800270b8 <sys_exec+0x138>
80027034:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80027038:	e3530000 	cmp	r3, #0
8002703c:	1a00000d 	bne	80027078 <sys_exec+0xf8>
80027040:	e51b3008 	ldr	r3, [fp, #-8]
80027044:	e1a03103 	lsl	r3, r3, #2
80027048:	e2433004 	sub	r3, r3, #4
8002704c:	e083300b 	add	r3, r3, fp
80027050:	e3a02000 	mov	r2, #0
80027054:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027058:	e1a00000 	nop			@ (mov r0, r0)
8002705c:	e51b300c 	ldr	r3, [fp, #-12]
80027060:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027064:	e1a01002 	mov	r1, r2
80027068:	e1a00003 	mov	r0, r3
8002706c:	ebffec08 	bl	80022094 <exec>
80027070:	e1a03000 	mov	r3, r0
80027074:	ea00000f 	b	800270b8 <sys_exec+0x138>
80027078:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
8002707c:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027080:	e51b3008 	ldr	r3, [fp, #-8]
80027084:	e1a03103 	lsl	r3, r3, #2
80027088:	e0823003 	add	r3, r2, r3
8002708c:	e1a01003 	mov	r1, r3
80027090:	ebfffb83 	bl	80025ea4 <fetchstr>
80027094:	e1a03000 	mov	r3, r0
80027098:	e3530000 	cmp	r3, #0
8002709c:	aa000001 	bge	800270a8 <sys_exec+0x128>
800270a0:	e3e03000 	mvn	r3, #0
800270a4:	ea000003 	b	800270b8 <sys_exec+0x138>
800270a8:	e51b3008 	ldr	r3, [fp, #-8]
800270ac:	e2833001 	add	r3, r3, #1
800270b0:	e50b3008 	str	r3, [fp, #-8]
800270b4:	eaffffcb 	b	80026fe8 <sys_exec+0x68>
800270b8:	e1a00003 	mov	r0, r3
800270bc:	e24bd004 	sub	sp, fp, #4
800270c0:	e8bd8800 	pop	{fp, pc}

800270c4 <sys_pipe>:
800270c4:	e92d4800 	push	{fp, lr}
800270c8:	e28db004 	add	fp, sp, #4
800270cc:	e24dd018 	sub	sp, sp, #24
800270d0:	e24b3010 	sub	r3, fp, #16
800270d4:	e3a02008 	mov	r2, #8
800270d8:	e1a01003 	mov	r1, r3
800270dc:	e3a00000 	mov	r0, #0
800270e0:	ebfffbb8 	bl	80025fc8 <argptr>
800270e4:	e1a03000 	mov	r3, r0
800270e8:	e3530000 	cmp	r3, #0
800270ec:	aa000001 	bge	800270f8 <sys_pipe+0x34>
800270f0:	e3e03000 	mvn	r3, #0
800270f4:	ea000032 	b	800271c4 <sys_pipe+0x100>
800270f8:	e24b2018 	sub	r2, fp, #24
800270fc:	e24b3014 	sub	r3, fp, #20
80027100:	e1a01002 	mov	r1, r2
80027104:	e1a00003 	mov	r0, r3
80027108:	ebfff5f7 	bl	800248ec <pipealloc>
8002710c:	e1a03000 	mov	r3, r0
80027110:	e3530000 	cmp	r3, #0
80027114:	aa000001 	bge	80027120 <sys_pipe+0x5c>
80027118:	e3e03000 	mvn	r3, #0
8002711c:	ea000028 	b	800271c4 <sys_pipe+0x100>
80027120:	e3e03000 	mvn	r3, #0
80027124:	e50b3008 	str	r3, [fp, #-8]
80027128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002712c:	e1a00003 	mov	r0, r3
80027130:	ebfffc4f 	bl	80026274 <fdalloc>
80027134:	e50b0008 	str	r0, [fp, #-8]
80027138:	e51b3008 	ldr	r3, [fp, #-8]
8002713c:	e3530000 	cmp	r3, #0
80027140:	ba000006 	blt	80027160 <sys_pipe+0x9c>
80027144:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027148:	e1a00003 	mov	r0, r3
8002714c:	ebfffc48 	bl	80026274 <fdalloc>
80027150:	e50b000c 	str	r0, [fp, #-12]
80027154:	e51b300c 	ldr	r3, [fp, #-12]
80027158:	e3530000 	cmp	r3, #0
8002715c:	aa000010 	bge	800271a4 <sys_pipe+0xe0>
80027160:	e51b3008 	ldr	r3, [fp, #-8]
80027164:	e3530000 	cmp	r3, #0
80027168:	ba000005 	blt	80027184 <sys_pipe+0xc0>
8002716c:	e59f305c 	ldr	r3, [pc, #92]	@ 800271d0 <sys_pipe+0x10c>
80027170:	e5933000 	ldr	r3, [r3]
80027174:	e51b2008 	ldr	r2, [fp, #-8]
80027178:	e282200a 	add	r2, r2, #10
8002717c:	e3a01000 	mov	r1, #0
80027180:	e7831102 	str	r1, [r3, r2, lsl #2]
80027184:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027188:	e1a00003 	mov	r0, r3
8002718c:	ebffed38 	bl	80022674 <fileclose>
80027190:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027194:	e1a00003 	mov	r0, r3
80027198:	ebffed35 	bl	80022674 <fileclose>
8002719c:	e3e03000 	mvn	r3, #0
800271a0:	ea000007 	b	800271c4 <sys_pipe+0x100>
800271a4:	e51b3010 	ldr	r3, [fp, #-16]
800271a8:	e51b2008 	ldr	r2, [fp, #-8]
800271ac:	e5832000 	str	r2, [r3]
800271b0:	e51b3010 	ldr	r3, [fp, #-16]
800271b4:	e2833004 	add	r3, r3, #4
800271b8:	e51b200c 	ldr	r2, [fp, #-12]
800271bc:	e5832000 	str	r2, [r3]
800271c0:	e3a03000 	mov	r3, #0
800271c4:	e1a00003 	mov	r0, r3
800271c8:	e24bd004 	sub	sp, fp, #4
800271cc:	e8bd8800 	pop	{fp, pc}
800271d0:	800af640 	.word	0x800af640

800271d4 <sys_fork>:
800271d4:	e92d4800 	push	{fp, lr}
800271d8:	e28db004 	add	fp, sp, #4
800271dc:	ebfff85b 	bl	80025350 <fork>
800271e0:	e1a03000 	mov	r3, r0
800271e4:	e1a00003 	mov	r0, r3
800271e8:	e8bd8800 	pop	{fp, pc}

800271ec <sys_exit>:
800271ec:	e92d4800 	push	{fp, lr}
800271f0:	e28db004 	add	fp, sp, #4
800271f4:	ebfff8c9 	bl	80025520 <exit>
800271f8:	e3a03000 	mov	r3, #0
800271fc:	e1a00003 	mov	r0, r3
80027200:	e8bd8800 	pop	{fp, pc}

80027204 <sys_wait>:
80027204:	e92d4800 	push	{fp, lr}
80027208:	e28db004 	add	fp, sp, #4
8002720c:	ebfff925 	bl	800256a8 <wait>
80027210:	e1a03000 	mov	r3, r0
80027214:	e1a00003 	mov	r0, r3
80027218:	e8bd8800 	pop	{fp, pc}

8002721c <sys_kill>:
8002721c:	e92d4800 	push	{fp, lr}
80027220:	e28db004 	add	fp, sp, #4
80027224:	e24dd008 	sub	sp, sp, #8
80027228:	e24b3008 	sub	r3, fp, #8
8002722c:	e1a01003 	mov	r1, r3
80027230:	e3a00000 	mov	r0, #0
80027234:	ebfffb48 	bl	80025f5c <argint>
80027238:	e1a03000 	mov	r3, r0
8002723c:	e3530000 	cmp	r3, #0
80027240:	aa000001 	bge	8002724c <sys_kill+0x30>
80027244:	e3e03000 	mvn	r3, #0
80027248:	ea000003 	b	8002725c <sys_kill+0x40>
8002724c:	e51b3008 	ldr	r3, [fp, #-8]
80027250:	e1a00003 	mov	r0, r3
80027254:	ebfffa58 	bl	80025bbc <kill>
80027258:	e1a03000 	mov	r3, r0
8002725c:	e1a00003 	mov	r0, r3
80027260:	e24bd004 	sub	sp, fp, #4
80027264:	e8bd8800 	pop	{fp, pc}

80027268 <sys_getpid>:
80027268:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002726c:	e28db000 	add	fp, sp, #0
80027270:	e59f3014 	ldr	r3, [pc, #20]	@ 8002728c <sys_getpid+0x24>
80027274:	e5933000 	ldr	r3, [r3]
80027278:	e5933010 	ldr	r3, [r3, #16]
8002727c:	e1a00003 	mov	r0, r3
80027280:	e28bd000 	add	sp, fp, #0
80027284:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027288:	e12fff1e 	bx	lr
8002728c:	800af640 	.word	0x800af640

80027290 <sys_sbrk>:
80027290:	e92d4800 	push	{fp, lr}
80027294:	e28db004 	add	fp, sp, #4
80027298:	e24dd008 	sub	sp, sp, #8
8002729c:	e24b300c 	sub	r3, fp, #12
800272a0:	e1a01003 	mov	r1, r3
800272a4:	e3a00000 	mov	r0, #0
800272a8:	ebfffb2b 	bl	80025f5c <argint>
800272ac:	e1a03000 	mov	r3, r0
800272b0:	e3530000 	cmp	r3, #0
800272b4:	aa000001 	bge	800272c0 <sys_sbrk+0x30>
800272b8:	e3e03000 	mvn	r3, #0
800272bc:	ea00000c 	b	800272f4 <sys_sbrk+0x64>
800272c0:	e59f3038 	ldr	r3, [pc, #56]	@ 80027300 <sys_sbrk+0x70>
800272c4:	e5933000 	ldr	r3, [r3]
800272c8:	e5933000 	ldr	r3, [r3]
800272cc:	e50b3008 	str	r3, [fp, #-8]
800272d0:	e51b300c 	ldr	r3, [fp, #-12]
800272d4:	e1a00003 	mov	r0, r3
800272d8:	ebfff7e1 	bl	80025264 <growproc>
800272dc:	e1a03000 	mov	r3, r0
800272e0:	e3530000 	cmp	r3, #0
800272e4:	aa000001 	bge	800272f0 <sys_sbrk+0x60>
800272e8:	e3e03000 	mvn	r3, #0
800272ec:	ea000000 	b	800272f4 <sys_sbrk+0x64>
800272f0:	e51b3008 	ldr	r3, [fp, #-8]
800272f4:	e1a00003 	mov	r0, r3
800272f8:	e24bd004 	sub	sp, fp, #4
800272fc:	e8bd8800 	pop	{fp, pc}
80027300:	800af640 	.word	0x800af640

80027304 <sys_sleep>:
80027304:	e92d4800 	push	{fp, lr}
80027308:	e28db004 	add	fp, sp, #4
8002730c:	e24dd008 	sub	sp, sp, #8
80027310:	e24b300c 	sub	r3, fp, #12
80027314:	e1a01003 	mov	r1, r3
80027318:	e3a00000 	mov	r0, #0
8002731c:	ebfffb0e 	bl	80025f5c <argint>
80027320:	e1a03000 	mov	r3, r0
80027324:	e3530000 	cmp	r3, #0
80027328:	aa000001 	bge	80027334 <sys_sleep+0x30>
8002732c:	e3e03000 	mvn	r3, #0
80027330:	ea00001b 	b	800273a4 <sys_sleep+0xa0>
80027334:	e59f0074 	ldr	r0, [pc, #116]	@ 800273b0 <sys_sleep+0xac>
80027338:	ebfffa96 	bl	80025d98 <acquire>
8002733c:	e59f3070 	ldr	r3, [pc, #112]	@ 800273b4 <sys_sleep+0xb0>
80027340:	e5933000 	ldr	r3, [r3]
80027344:	e50b3008 	str	r3, [fp, #-8]
80027348:	ea00000b 	b	8002737c <sys_sleep+0x78>
8002734c:	e59f3064 	ldr	r3, [pc, #100]	@ 800273b8 <sys_sleep+0xb4>
80027350:	e5933000 	ldr	r3, [r3]
80027354:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80027358:	e3530000 	cmp	r3, #0
8002735c:	0a000003 	beq	80027370 <sys_sleep+0x6c>
80027360:	e59f0048 	ldr	r0, [pc, #72]	@ 800273b0 <sys_sleep+0xac>
80027364:	ebfffa96 	bl	80025dc4 <release>
80027368:	e3e03000 	mvn	r3, #0
8002736c:	ea00000c 	b	800273a4 <sys_sleep+0xa0>
80027370:	e59f1038 	ldr	r1, [pc, #56]	@ 800273b0 <sys_sleep+0xac>
80027374:	e59f0038 	ldr	r0, [pc, #56]	@ 800273b4 <sys_sleep+0xb0>
80027378:	ebfff9ac 	bl	80025a30 <sleep>
8002737c:	e59f3030 	ldr	r3, [pc, #48]	@ 800273b4 <sys_sleep+0xb0>
80027380:	e5932000 	ldr	r2, [r3]
80027384:	e51b3008 	ldr	r3, [fp, #-8]
80027388:	e0423003 	sub	r3, r2, r3
8002738c:	e51b200c 	ldr	r2, [fp, #-12]
80027390:	e1530002 	cmp	r3, r2
80027394:	3affffec 	bcc	8002734c <sys_sleep+0x48>
80027398:	e59f0010 	ldr	r0, [pc, #16]	@ 800273b0 <sys_sleep+0xac>
8002739c:	ebfffa88 	bl	80025dc4 <release>
800273a0:	e3a03000 	mov	r3, #0
800273a4:	e1a00003 	mov	r0, r3
800273a8:	e24bd004 	sub	sp, fp, #4
800273ac:	e8bd8800 	pop	{fp, pc}
800273b0:	800af704 	.word	0x800af704
800273b4:	800af738 	.word	0x800af738
800273b8:	800af640 	.word	0x800af640

800273bc <sys_proclist>:
800273bc:	e92d4800 	push	{fp, lr}
800273c0:	e28db004 	add	fp, sp, #4
800273c4:	e24dd008 	sub	sp, sp, #8
800273c8:	e24b3008 	sub	r3, fp, #8
800273cc:	e1a01003 	mov	r1, r3
800273d0:	e3a00000 	mov	r0, #0
800273d4:	ebfffae0 	bl	80025f5c <argint>
800273d8:	e1a03000 	mov	r3, r0
800273dc:	e3530000 	cmp	r3, #0
800273e0:	ba000009 	blt	8002740c <sys_proclist+0x50>
800273e4:	e51b3008 	ldr	r3, [fp, #-8]
800273e8:	e1a03283 	lsl	r3, r3, #5
800273ec:	e1a02003 	mov	r2, r3
800273f0:	e24b300c 	sub	r3, fp, #12
800273f4:	e1a01003 	mov	r1, r3
800273f8:	e3a00001 	mov	r0, #1
800273fc:	ebfffaf1 	bl	80025fc8 <argptr>
80027400:	e1a03000 	mov	r3, r0
80027404:	e3530000 	cmp	r3, #0
80027408:	aa000001 	bge	80027414 <sys_proclist+0x58>
8002740c:	e3e03000 	mvn	r3, #0
80027410:	ea000005 	b	8002742c <sys_proclist+0x70>
80027414:	e51b3008 	ldr	r3, [fp, #-8]
80027418:	e51b200c 	ldr	r2, [fp, #-12]
8002741c:	e1a01002 	mov	r1, r2
80027420:	e1a00003 	mov	r0, r3
80027424:	ebfff6e4 	bl	80024fbc <proclist>
80027428:	e1a03000 	mov	r3, r0
8002742c:	e1a00003 	mov	r0, r3
80027430:	e24bd004 	sub	sp, fp, #4
80027434:	e8bd8800 	pop	{fp, pc}

80027438 <sys_uptime>:
80027438:	e92d4800 	push	{fp, lr}
8002743c:	e28db004 	add	fp, sp, #4
80027440:	e24dd008 	sub	sp, sp, #8
80027444:	e59f0024 	ldr	r0, [pc, #36]	@ 80027470 <sys_uptime+0x38>
80027448:	ebfffa52 	bl	80025d98 <acquire>
8002744c:	e59f3020 	ldr	r3, [pc, #32]	@ 80027474 <sys_uptime+0x3c>
80027450:	e5933000 	ldr	r3, [r3]
80027454:	e50b3008 	str	r3, [fp, #-8]
80027458:	e59f0010 	ldr	r0, [pc, #16]	@ 80027470 <sys_uptime+0x38>
8002745c:	ebfffa58 	bl	80025dc4 <release>
80027460:	e51b3008 	ldr	r3, [fp, #-8]
80027464:	e1a00003 	mov	r0, r3
80027468:	e24bd004 	sub	sp, fp, #4
8002746c:	e8bd8800 	pop	{fp, pc}
80027470:	800af704 	.word	0x800af704
80027474:	800af738 	.word	0x800af738

80027478 <trap_swi>:
80027478:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002747c:	e14f2000 	mrs	r2, SPSR
80027480:	e92d0004 	stmfd	sp!, {r2}
80027484:	e92d4000 	stmfd	sp!, {lr}
80027488:	e94d6000 	stmdb	sp, {sp, lr}^
8002748c:	e24dd008 	sub	sp, sp, #8
80027490:	e1a0000d 	mov	r0, sp
80027494:	eb000054 	bl	800275ec <swi_handler>

80027498 <trapret>:
80027498:	e8dd6000 	ldm	sp, {sp, lr}^
8002749c:	e28dd008 	add	sp, sp, #8
800274a0:	e8bd4000 	ldmfd	sp!, {lr}
800274a4:	e8bd0004 	ldmfd	sp!, {r2}
800274a8:	e16ff002 	msr	SPSR_fsxc, r2
800274ac:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

800274b0 <trap_irq>:
800274b0:	e24ee004 	sub	lr, lr, #4
800274b4:	e92d4007 	push	{r0, r1, r2, lr}
800274b8:	e14f1000 	mrs	r1, SPSR
800274bc:	e1a0000d 	mov	r0, sp
800274c0:	e28dd010 	add	sp, sp, #16
800274c4:	e10f2000 	mrs	r2, CPSR
800274c8:	e3c2201f 	bic	r2, r2, #31
800274cc:	e3822013 	orr	r2, r2, #19
800274d0:	e12ff002 	msr	CPSR_fsxc, r2
800274d4:	e590200c 	ldr	r2, [r0, #12]
800274d8:	e92d0004 	stmfd	sp!, {r2}
800274dc:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
800274e0:	e8900038 	ldm	r0, {r3, r4, r5}
800274e4:	e92d0038 	push	{r3, r4, r5}
800274e8:	e92d0002 	stmfd	sp!, {r1}
800274ec:	e92d4000 	stmfd	sp!, {lr}
800274f0:	e94d6000 	stmdb	sp, {sp, lr}^
800274f4:	e24dd008 	sub	sp, sp, #8
800274f8:	e1a0000d 	mov	r0, sp
800274fc:	eb000047 	bl	80027620 <irq_handler>
80027500:	eaffffe4 	b	80027498 <trapret>

80027504 <trap_reset>:
80027504:	e3a0e000 	mov	lr, #0
80027508:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002750c:	e14f2000 	mrs	r2, SPSR
80027510:	e92d0004 	stmfd	sp!, {r2}
80027514:	e92d4000 	stmfd	sp!, {lr}
80027518:	e94d6000 	stmdb	sp, {sp, lr}^
8002751c:	e24dd008 	sub	sp, sp, #8
80027520:	e1a0000d 	mov	r0, sp
80027524:	eb00004f 	bl	80027668 <reset_handler>
80027528:	eafffffe 	b	80027528 <trap_reset+0x24>

8002752c <trap_und>:
8002752c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027530:	e14f2000 	mrs	r2, SPSR
80027534:	e92d0004 	stmfd	sp!, {r2}
80027538:	e92d4000 	stmfd	sp!, {lr}
8002753c:	e94d6000 	stmdb	sp, {sp, lr}^
80027540:	e24dd008 	sub	sp, sp, #8
80027544:	e1a0000d 	mov	r0, sp
80027548:	eb000054 	bl	800276a0 <und_handler>
8002754c:	eafffffe 	b	8002754c <trap_und+0x20>

80027550 <trap_iabort>:
80027550:	e24ee004 	sub	lr, lr, #4
80027554:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027558:	e14f2000 	mrs	r2, SPSR
8002755c:	e92d0004 	stmfd	sp!, {r2}
80027560:	e92d4000 	stmfd	sp!, {lr}
80027564:	e94d6000 	stmdb	sp, {sp, lr}^
80027568:	e24dd008 	sub	sp, sp, #8
8002756c:	e1a0000d 	mov	r0, sp
80027570:	eb00006d 	bl	8002772c <iabort_handler>
80027574:	eafffffe 	b	80027574 <trap_iabort+0x24>

80027578 <trap_dabort>:
80027578:	e24ee008 	sub	lr, lr, #8
8002757c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027580:	e14f2000 	mrs	r2, SPSR
80027584:	e92d0004 	stmfd	sp!, {r2}
80027588:	e92d4000 	stmfd	sp!, {lr}
8002758c:	e94d6000 	stmdb	sp, {sp, lr}^
80027590:	e24dd008 	sub	sp, sp, #8
80027594:	e1a0000d 	mov	r0, sp
80027598:	eb00004e 	bl	800276d8 <dabort_handler>
8002759c:	eafffffe 	b	8002759c <trap_dabort+0x24>

800275a0 <trap_na>:
800275a0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800275a4:	e14f2000 	mrs	r2, SPSR
800275a8:	e92d0004 	stmfd	sp!, {r2}
800275ac:	e92d4000 	stmfd	sp!, {lr}
800275b0:	e94d6000 	stmdb	sp, {sp, lr}^
800275b4:	e24dd008 	sub	sp, sp, #8
800275b8:	e1a0000d 	mov	r0, sp
800275bc:	eb00006d 	bl	80027778 <na_handler>
800275c0:	eafffffe 	b	800275c0 <trap_na+0x20>

800275c4 <trap_fiq>:
800275c4:	e24ee004 	sub	lr, lr, #4
800275c8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800275cc:	e14f2000 	mrs	r2, SPSR
800275d0:	e92d0004 	stmfd	sp!, {r2}
800275d4:	e92d4000 	stmfd	sp!, {lr}
800275d8:	e94d6000 	stmdb	sp, {sp, lr}^
800275dc:	e24dd008 	sub	sp, sp, #8
800275e0:	e1a0000d 	mov	r0, sp
800275e4:	eb000071 	bl	800277b0 <fiq_handler>
800275e8:	eafffffe 	b	800275e8 <trap_fiq+0x24>

800275ec <swi_handler>:
800275ec:	e92d4800 	push	{fp, lr}
800275f0:	e28db004 	add	fp, sp, #4
800275f4:	e24dd008 	sub	sp, sp, #8
800275f8:	e50b0008 	str	r0, [fp, #-8]
800275fc:	e59f3018 	ldr	r3, [pc, #24]	@ 8002761c <swi_handler+0x30>
80027600:	e5933000 	ldr	r3, [r3]
80027604:	e51b2008 	ldr	r2, [fp, #-8]
80027608:	e5832018 	str	r2, [r3, #24]
8002760c:	ebfffaac 	bl	800260c4 <syscall>
80027610:	e1a00000 	nop			@ (mov r0, r0)
80027614:	e24bd004 	sub	sp, fp, #4
80027618:	e8bd8800 	pop	{fp, pc}
8002761c:	800af640 	.word	0x800af640

80027620 <irq_handler>:
80027620:	e92d4800 	push	{fp, lr}
80027624:	e28db004 	add	fp, sp, #4
80027628:	e24dd008 	sub	sp, sp, #8
8002762c:	e50b0008 	str	r0, [fp, #-8]
80027630:	e59f302c 	ldr	r3, [pc, #44]	@ 80027664 <irq_handler+0x44>
80027634:	e5933000 	ldr	r3, [r3]
80027638:	e3530000 	cmp	r3, #0
8002763c:	0a000003 	beq	80027650 <irq_handler+0x30>
80027640:	e59f301c 	ldr	r3, [pc, #28]	@ 80027664 <irq_handler+0x44>
80027644:	e5933000 	ldr	r3, [r3]
80027648:	e51b2008 	ldr	r2, [fp, #-8]
8002764c:	e5832018 	str	r2, [r3, #24]
80027650:	e51b0008 	ldr	r0, [fp, #-8]
80027654:	eb0004d9 	bl	800289c0 <pic_dispatch>
80027658:	e1a00000 	nop			@ (mov r0, r0)
8002765c:	e24bd004 	sub	sp, fp, #4
80027660:	e8bd8800 	pop	{fp, pc}
80027664:	800af640 	.word	0x800af640

80027668 <reset_handler>:
80027668:	e92d4800 	push	{fp, lr}
8002766c:	e28db004 	add	fp, sp, #4
80027670:	e24dd008 	sub	sp, sp, #8
80027674:	e50b0008 	str	r0, [fp, #-8]
80027678:	ebffe3b0 	bl	80020540 <cli>
8002767c:	e51b3008 	ldr	r3, [fp, #-8]
80027680:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027684:	e1a01003 	mov	r1, r3
80027688:	e59f000c 	ldr	r0, [pc, #12]	@ 8002769c <reset_handler+0x34>
8002768c:	ebffe880 	bl	80021894 <cprintf>
80027690:	e1a00000 	nop			@ (mov r0, r0)
80027694:	e24bd004 	sub	sp, fp, #4
80027698:	e8bd8800 	pop	{fp, pc}
8002769c:	80029514 	.word	0x80029514

800276a0 <und_handler>:
800276a0:	e92d4800 	push	{fp, lr}
800276a4:	e28db004 	add	fp, sp, #4
800276a8:	e24dd008 	sub	sp, sp, #8
800276ac:	e50b0008 	str	r0, [fp, #-8]
800276b0:	ebffe3a2 	bl	80020540 <cli>
800276b4:	e51b3008 	ldr	r3, [fp, #-8]
800276b8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800276bc:	e1a01003 	mov	r1, r3
800276c0:	e59f000c 	ldr	r0, [pc, #12]	@ 800276d4 <und_handler+0x34>
800276c4:	ebffe872 	bl	80021894 <cprintf>
800276c8:	e1a00000 	nop			@ (mov r0, r0)
800276cc:	e24bd004 	sub	sp, fp, #4
800276d0:	e8bd8800 	pop	{fp, pc}
800276d4:	80029528 	.word	0x80029528

800276d8 <dabort_handler>:
800276d8:	e92d4800 	push	{fp, lr}
800276dc:	e28db004 	add	fp, sp, #4
800276e0:	e24dd010 	sub	sp, sp, #16
800276e4:	e50b0010 	str	r0, [fp, #-16]
800276e8:	ebffe394 	bl	80020540 <cli>
800276ec:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800276f0:	e50b3008 	str	r3, [fp, #-8]
800276f4:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
800276f8:	e50b300c 	str	r3, [fp, #-12]
800276fc:	e51b3010 	ldr	r3, [fp, #-16]
80027700:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80027704:	e51b3008 	ldr	r3, [fp, #-8]
80027708:	e51b200c 	ldr	r2, [fp, #-12]
8002770c:	e59f0014 	ldr	r0, [pc, #20]	@ 80027728 <dabort_handler+0x50>
80027710:	ebffe85f 	bl	80021894 <cprintf>
80027714:	e51b0010 	ldr	r0, [fp, #-16]
80027718:	eb0000b3 	bl	800279ec <dump_trapframe>
8002771c:	e1a00000 	nop			@ (mov r0, r0)
80027720:	e24bd004 	sub	sp, fp, #4
80027724:	e8bd8800 	pop	{fp, pc}
80027728:	80029538 	.word	0x80029538

8002772c <iabort_handler>:
8002772c:	e92d4800 	push	{fp, lr}
80027730:	e28db004 	add	fp, sp, #4
80027734:	e24dd010 	sub	sp, sp, #16
80027738:	e50b0010 	str	r0, [fp, #-16]
8002773c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027740:	e50b3008 	str	r3, [fp, #-8]
80027744:	ebffe37d 	bl	80020540 <cli>
80027748:	e51b3010 	ldr	r3, [fp, #-16]
8002774c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027750:	e51b2008 	ldr	r2, [fp, #-8]
80027754:	e1a01003 	mov	r1, r3
80027758:	e59f0014 	ldr	r0, [pc, #20]	@ 80027774 <iabort_handler+0x48>
8002775c:	ebffe84c 	bl	80021894 <cprintf>
80027760:	e51b0010 	ldr	r0, [fp, #-16]
80027764:	eb0000a0 	bl	800279ec <dump_trapframe>
80027768:	e1a00000 	nop			@ (mov r0, r0)
8002776c:	e24bd004 	sub	sp, fp, #4
80027770:	e8bd8800 	pop	{fp, pc}
80027774:	80029578 	.word	0x80029578

80027778 <na_handler>:
80027778:	e92d4800 	push	{fp, lr}
8002777c:	e28db004 	add	fp, sp, #4
80027780:	e24dd008 	sub	sp, sp, #8
80027784:	e50b0008 	str	r0, [fp, #-8]
80027788:	ebffe36c 	bl	80020540 <cli>
8002778c:	e51b3008 	ldr	r3, [fp, #-8]
80027790:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027794:	e1a01003 	mov	r1, r3
80027798:	e59f000c 	ldr	r0, [pc, #12]	@ 800277ac <na_handler+0x34>
8002779c:	ebffe83c 	bl	80021894 <cprintf>
800277a0:	e1a00000 	nop			@ (mov r0, r0)
800277a4:	e24bd004 	sub	sp, fp, #4
800277a8:	e8bd8800 	pop	{fp, pc}
800277ac:	800295a0 	.word	0x800295a0

800277b0 <fiq_handler>:
800277b0:	e92d4800 	push	{fp, lr}
800277b4:	e28db004 	add	fp, sp, #4
800277b8:	e24dd008 	sub	sp, sp, #8
800277bc:	e50b0008 	str	r0, [fp, #-8]
800277c0:	ebffe35e 	bl	80020540 <cli>
800277c4:	e51b3008 	ldr	r3, [fp, #-8]
800277c8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800277cc:	e1a01003 	mov	r1, r3
800277d0:	e59f000c 	ldr	r0, [pc, #12]	@ 800277e4 <fiq_handler+0x34>
800277d4:	ebffe82e 	bl	80021894 <cprintf>
800277d8:	e1a00000 	nop			@ (mov r0, r0)
800277dc:	e24bd004 	sub	sp, fp, #4
800277e0:	e8bd8800 	pop	{fp, pc}
800277e4:	800295b0 	.word	0x800295b0

800277e8 <trap_init>:
800277e8:	e92d4800 	push	{fp, lr}
800277ec:	e28db004 	add	fp, sp, #4
800277f0:	e24dd020 	sub	sp, sp, #32
800277f4:	e59f31c0 	ldr	r3, [pc, #448]	@ 800279bc <trap_init+0x1d4>
800277f8:	e24bc020 	sub	ip, fp, #32
800277fc:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80027800:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80027804:	e59f31b4 	ldr	r3, [pc, #436]	@ 800279c0 <trap_init+0x1d8>
80027808:	e50b300c 	str	r3, [fp, #-12]
8002780c:	e59f31b0 	ldr	r3, [pc, #432]	@ 800279c4 <trap_init+0x1dc>
80027810:	e5933000 	ldr	r3, [r3]
80027814:	e3832018 	orr	r2, r3, #24
80027818:	e51b300c 	ldr	r3, [fp, #-12]
8002781c:	e5832000 	str	r2, [r3]
80027820:	e59f319c 	ldr	r3, [pc, #412]	@ 800279c4 <trap_init+0x1dc>
80027824:	e5932000 	ldr	r2, [r3]
80027828:	e51b300c 	ldr	r3, [fp, #-12]
8002782c:	e2833004 	add	r3, r3, #4
80027830:	e3822018 	orr	r2, r2, #24
80027834:	e5832000 	str	r2, [r3]
80027838:	e59f3184 	ldr	r3, [pc, #388]	@ 800279c4 <trap_init+0x1dc>
8002783c:	e5932000 	ldr	r2, [r3]
80027840:	e51b300c 	ldr	r3, [fp, #-12]
80027844:	e2833008 	add	r3, r3, #8
80027848:	e3822018 	orr	r2, r2, #24
8002784c:	e5832000 	str	r2, [r3]
80027850:	e59f316c 	ldr	r3, [pc, #364]	@ 800279c4 <trap_init+0x1dc>
80027854:	e5932000 	ldr	r2, [r3]
80027858:	e51b300c 	ldr	r3, [fp, #-12]
8002785c:	e283300c 	add	r3, r3, #12
80027860:	e3822018 	orr	r2, r2, #24
80027864:	e5832000 	str	r2, [r3]
80027868:	e59f3154 	ldr	r3, [pc, #340]	@ 800279c4 <trap_init+0x1dc>
8002786c:	e5932000 	ldr	r2, [r3]
80027870:	e51b300c 	ldr	r3, [fp, #-12]
80027874:	e2833010 	add	r3, r3, #16
80027878:	e3822018 	orr	r2, r2, #24
8002787c:	e5832000 	str	r2, [r3]
80027880:	e59f313c 	ldr	r3, [pc, #316]	@ 800279c4 <trap_init+0x1dc>
80027884:	e5932000 	ldr	r2, [r3]
80027888:	e51b300c 	ldr	r3, [fp, #-12]
8002788c:	e2833014 	add	r3, r3, #20
80027890:	e3822018 	orr	r2, r2, #24
80027894:	e5832000 	str	r2, [r3]
80027898:	e59f3124 	ldr	r3, [pc, #292]	@ 800279c4 <trap_init+0x1dc>
8002789c:	e5932000 	ldr	r2, [r3]
800278a0:	e51b300c 	ldr	r3, [fp, #-12]
800278a4:	e2833018 	add	r3, r3, #24
800278a8:	e3822018 	orr	r2, r2, #24
800278ac:	e5832000 	str	r2, [r3]
800278b0:	e59f310c 	ldr	r3, [pc, #268]	@ 800279c4 <trap_init+0x1dc>
800278b4:	e5932000 	ldr	r2, [r3]
800278b8:	e51b300c 	ldr	r3, [fp, #-12]
800278bc:	e283301c 	add	r3, r3, #28
800278c0:	e3822018 	orr	r2, r2, #24
800278c4:	e5832000 	str	r2, [r3]
800278c8:	e51b300c 	ldr	r3, [fp, #-12]
800278cc:	e2833020 	add	r3, r3, #32
800278d0:	e59f20f0 	ldr	r2, [pc, #240]	@ 800279c8 <trap_init+0x1e0>
800278d4:	e5832000 	str	r2, [r3]
800278d8:	e51b300c 	ldr	r3, [fp, #-12]
800278dc:	e2833024 	add	r3, r3, #36	@ 0x24
800278e0:	e59f20e4 	ldr	r2, [pc, #228]	@ 800279cc <trap_init+0x1e4>
800278e4:	e5832000 	str	r2, [r3]
800278e8:	e51b300c 	ldr	r3, [fp, #-12]
800278ec:	e2833028 	add	r3, r3, #40	@ 0x28
800278f0:	e59f20d8 	ldr	r2, [pc, #216]	@ 800279d0 <trap_init+0x1e8>
800278f4:	e5832000 	str	r2, [r3]
800278f8:	e51b300c 	ldr	r3, [fp, #-12]
800278fc:	e283302c 	add	r3, r3, #44	@ 0x2c
80027900:	e59f20cc 	ldr	r2, [pc, #204]	@ 800279d4 <trap_init+0x1ec>
80027904:	e5832000 	str	r2, [r3]
80027908:	e51b300c 	ldr	r3, [fp, #-12]
8002790c:	e2833030 	add	r3, r3, #48	@ 0x30
80027910:	e59f20c0 	ldr	r2, [pc, #192]	@ 800279d8 <trap_init+0x1f0>
80027914:	e5832000 	str	r2, [r3]
80027918:	e51b300c 	ldr	r3, [fp, #-12]
8002791c:	e2833034 	add	r3, r3, #52	@ 0x34
80027920:	e59f20b4 	ldr	r2, [pc, #180]	@ 800279dc <trap_init+0x1f4>
80027924:	e5832000 	str	r2, [r3]
80027928:	e51b300c 	ldr	r3, [fp, #-12]
8002792c:	e2833038 	add	r3, r3, #56	@ 0x38
80027930:	e59f20a8 	ldr	r2, [pc, #168]	@ 800279e0 <trap_init+0x1f8>
80027934:	e5832000 	str	r2, [r3]
80027938:	e51b300c 	ldr	r3, [fp, #-12]
8002793c:	e283303c 	add	r3, r3, #60	@ 0x3c
80027940:	e59f209c 	ldr	r2, [pc, #156]	@ 800279e4 <trap_init+0x1fc>
80027944:	e5832000 	str	r2, [r3]
80027948:	e3a03000 	mov	r3, #0
8002794c:	e50b3008 	str	r3, [fp, #-8]
80027950:	ea000012 	b	800279a0 <trap_init+0x1b8>
80027954:	ebffe735 	bl	80021630 <alloc_page>
80027958:	e50b0010 	str	r0, [fp, #-16]
8002795c:	e51b3010 	ldr	r3, [fp, #-16]
80027960:	e3530000 	cmp	r3, #0
80027964:	1a000001 	bne	80027970 <trap_init+0x188>
80027968:	e59f0078 	ldr	r0, [pc, #120]	@ 800279e8 <trap_init+0x200>
8002796c:	ebffe860 	bl	80021af4 <panic>
80027970:	e51b3008 	ldr	r3, [fp, #-8]
80027974:	e1a03103 	lsl	r3, r3, #2
80027978:	e2433004 	sub	r3, r3, #4
8002797c:	e083300b 	add	r3, r3, fp
80027980:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80027984:	e51b2010 	ldr	r2, [fp, #-16]
80027988:	e1a01002 	mov	r1, r2
8002798c:	e1a00003 	mov	r0, r3
80027990:	ebffe3c3 	bl	800208a4 <set_stk>
80027994:	e51b3008 	ldr	r3, [fp, #-8]
80027998:	e2833001 	add	r3, r3, #1
8002799c:	e50b3008 	str	r3, [fp, #-8]
800279a0:	e51b3008 	ldr	r3, [fp, #-8]
800279a4:	e3530003 	cmp	r3, #3
800279a8:	9affffe9 	bls	80027954 <trap_init+0x16c>
800279ac:	e1a00000 	nop			@ (mov r0, r0)
800279b0:	e1a00000 	nop			@ (mov r0, r0)
800279b4:	e24bd004 	sub	sp, fp, #4
800279b8:	e8bd8800 	pop	{fp, pc}
800279bc:	800295e8 	.word	0x800295e8
800279c0:	ffff0000 	.word	0xffff0000
800279c4:	800296f8 	.word	0x800296f8
800279c8:	80027504 	.word	0x80027504
800279cc:	8002752c 	.word	0x8002752c
800279d0:	80027478 	.word	0x80027478
800279d4:	80027550 	.word	0x80027550
800279d8:	80027578 	.word	0x80027578
800279dc:	800275a0 	.word	0x800275a0
800279e0:	800274b0 	.word	0x800274b0
800279e4:	800275c4 	.word	0x800275c4
800279e8:	800295c0 	.word	0x800295c0

800279ec <dump_trapframe>:
800279ec:	e92d4800 	push	{fp, lr}
800279f0:	e28db004 	add	fp, sp, #4
800279f4:	e24dd008 	sub	sp, sp, #8
800279f8:	e50b0008 	str	r0, [fp, #-8]
800279fc:	e51b3008 	ldr	r3, [fp, #-8]
80027a00:	e5933008 	ldr	r3, [r3, #8]
80027a04:	e1a01003 	mov	r1, r3
80027a08:	e59f0138 	ldr	r0, [pc, #312]	@ 80027b48 <dump_trapframe+0x15c>
80027a0c:	ebffe7a0 	bl	80021894 <cprintf>
80027a10:	e51b3008 	ldr	r3, [fp, #-8]
80027a14:	e593300c 	ldr	r3, [r3, #12]
80027a18:	e1a01003 	mov	r1, r3
80027a1c:	e59f0128 	ldr	r0, [pc, #296]	@ 80027b4c <dump_trapframe+0x160>
80027a20:	ebffe79b 	bl	80021894 <cprintf>
80027a24:	e51b3008 	ldr	r3, [fp, #-8]
80027a28:	e5933010 	ldr	r3, [r3, #16]
80027a2c:	e1a01003 	mov	r1, r3
80027a30:	e59f0118 	ldr	r0, [pc, #280]	@ 80027b50 <dump_trapframe+0x164>
80027a34:	ebffe796 	bl	80021894 <cprintf>
80027a38:	e51b3008 	ldr	r3, [fp, #-8]
80027a3c:	e5933014 	ldr	r3, [r3, #20]
80027a40:	e1a01003 	mov	r1, r3
80027a44:	e59f0108 	ldr	r0, [pc, #264]	@ 80027b54 <dump_trapframe+0x168>
80027a48:	ebffe791 	bl	80021894 <cprintf>
80027a4c:	e51b3008 	ldr	r3, [fp, #-8]
80027a50:	e5933018 	ldr	r3, [r3, #24]
80027a54:	e1a01003 	mov	r1, r3
80027a58:	e59f00f8 	ldr	r0, [pc, #248]	@ 80027b58 <dump_trapframe+0x16c>
80027a5c:	ebffe78c 	bl	80021894 <cprintf>
80027a60:	e51b3008 	ldr	r3, [fp, #-8]
80027a64:	e593301c 	ldr	r3, [r3, #28]
80027a68:	e1a01003 	mov	r1, r3
80027a6c:	e59f00e8 	ldr	r0, [pc, #232]	@ 80027b5c <dump_trapframe+0x170>
80027a70:	ebffe787 	bl	80021894 <cprintf>
80027a74:	e51b3008 	ldr	r3, [fp, #-8]
80027a78:	e5933020 	ldr	r3, [r3, #32]
80027a7c:	e1a01003 	mov	r1, r3
80027a80:	e59f00d8 	ldr	r0, [pc, #216]	@ 80027b60 <dump_trapframe+0x174>
80027a84:	ebffe782 	bl	80021894 <cprintf>
80027a88:	e51b3008 	ldr	r3, [fp, #-8]
80027a8c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80027a90:	e1a01003 	mov	r1, r3
80027a94:	e59f00c8 	ldr	r0, [pc, #200]	@ 80027b64 <dump_trapframe+0x178>
80027a98:	ebffe77d 	bl	80021894 <cprintf>
80027a9c:	e51b3008 	ldr	r3, [fp, #-8]
80027aa0:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80027aa4:	e1a01003 	mov	r1, r3
80027aa8:	e59f00b8 	ldr	r0, [pc, #184]	@ 80027b68 <dump_trapframe+0x17c>
80027aac:	ebffe778 	bl	80021894 <cprintf>
80027ab0:	e51b3008 	ldr	r3, [fp, #-8]
80027ab4:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80027ab8:	e1a01003 	mov	r1, r3
80027abc:	e59f00a8 	ldr	r0, [pc, #168]	@ 80027b6c <dump_trapframe+0x180>
80027ac0:	ebffe773 	bl	80021894 <cprintf>
80027ac4:	e51b3008 	ldr	r3, [fp, #-8]
80027ac8:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80027acc:	e1a01003 	mov	r1, r3
80027ad0:	e59f0098 	ldr	r0, [pc, #152]	@ 80027b70 <dump_trapframe+0x184>
80027ad4:	ebffe76e 	bl	80021894 <cprintf>
80027ad8:	e51b3008 	ldr	r3, [fp, #-8]
80027adc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027ae0:	e1a01003 	mov	r1, r3
80027ae4:	e59f0088 	ldr	r0, [pc, #136]	@ 80027b74 <dump_trapframe+0x188>
80027ae8:	ebffe769 	bl	80021894 <cprintf>
80027aec:	e51b3008 	ldr	r3, [fp, #-8]
80027af0:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80027af4:	e1a01003 	mov	r1, r3
80027af8:	e59f0078 	ldr	r0, [pc, #120]	@ 80027b78 <dump_trapframe+0x18c>
80027afc:	ebffe764 	bl	80021894 <cprintf>
80027b00:	e51b3008 	ldr	r3, [fp, #-8]
80027b04:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80027b08:	e1a01003 	mov	r1, r3
80027b0c:	e59f0068 	ldr	r0, [pc, #104]	@ 80027b7c <dump_trapframe+0x190>
80027b10:	ebffe75f 	bl	80021894 <cprintf>
80027b14:	e51b3008 	ldr	r3, [fp, #-8]
80027b18:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80027b1c:	e1a01003 	mov	r1, r3
80027b20:	e59f0058 	ldr	r0, [pc, #88]	@ 80027b80 <dump_trapframe+0x194>
80027b24:	ebffe75a 	bl	80021894 <cprintf>
80027b28:	e51b3008 	ldr	r3, [fp, #-8]
80027b2c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027b30:	e1a01003 	mov	r1, r3
80027b34:	e59f0048 	ldr	r0, [pc, #72]	@ 80027b84 <dump_trapframe+0x198>
80027b38:	ebffe755 	bl	80021894 <cprintf>
80027b3c:	e1a00000 	nop			@ (mov r0, r0)
80027b40:	e24bd004 	sub	sp, fp, #4
80027b44:	e8bd8800 	pop	{fp, pc}
80027b48:	800295f8 	.word	0x800295f8
80027b4c:	80029608 	.word	0x80029608
80027b50:	80029618 	.word	0x80029618
80027b54:	80029628 	.word	0x80029628
80027b58:	80029638 	.word	0x80029638
80027b5c:	80029648 	.word	0x80029648
80027b60:	80029658 	.word	0x80029658
80027b64:	80029668 	.word	0x80029668
80027b68:	80029678 	.word	0x80029678
80027b6c:	80029688 	.word	0x80029688
80027b70:	80029698 	.word	0x80029698
80027b74:	800296a8 	.word	0x800296a8
80027b78:	800296b8 	.word	0x800296b8
80027b7c:	800296c8 	.word	0x800296c8
80027b80:	800296d8 	.word	0x800296d8
80027b84:	800296e8 	.word	0x800296e8

80027b88 <v2p>:
80027b88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027b8c:	e28db000 	add	fp, sp, #0
80027b90:	e24dd00c 	sub	sp, sp, #12
80027b94:	e50b0008 	str	r0, [fp, #-8]
80027b98:	e51b3008 	ldr	r3, [fp, #-8]
80027b9c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027ba0:	e1a00003 	mov	r0, r3
80027ba4:	e28bd000 	add	sp, fp, #0
80027ba8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027bac:	e12fff1e 	bx	lr

80027bb0 <p2v>:
80027bb0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027bb4:	e28db000 	add	fp, sp, #0
80027bb8:	e24dd00c 	sub	sp, sp, #12
80027bbc:	e50b0008 	str	r0, [fp, #-8]
80027bc0:	e51b3008 	ldr	r3, [fp, #-8]
80027bc4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027bc8:	e1a00003 	mov	r0, r3
80027bcc:	e28bd000 	add	sp, fp, #0
80027bd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027bd4:	e12fff1e 	bx	lr

80027bd8 <init_vmm>:
80027bd8:	e92d4800 	push	{fp, lr}
80027bdc:	e28db004 	add	fp, sp, #4
80027be0:	e59f1018 	ldr	r1, [pc, #24]	@ 80027c00 <init_vmm+0x28>
80027be4:	e59f0018 	ldr	r0, [pc, #24]	@ 80027c04 <init_vmm+0x2c>
80027be8:	ebfff858 	bl	80025d50 <initlock>
80027bec:	e59f3010 	ldr	r3, [pc, #16]	@ 80027c04 <init_vmm+0x2c>
80027bf0:	e3a02000 	mov	r2, #0
80027bf4:	e5832034 	str	r2, [r3, #52]	@ 0x34
80027bf8:	e1a00000 	nop			@ (mov r0, r0)
80027bfc:	e8bd8800 	pop	{fp, pc}
80027c00:	800296fc 	.word	0x800296fc
80027c04:	800af648 	.word	0x800af648

80027c08 <_kpt_free>:
80027c08:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027c0c:	e28db000 	add	fp, sp, #0
80027c10:	e24dd014 	sub	sp, sp, #20
80027c14:	e50b0010 	str	r0, [fp, #-16]
80027c18:	e51b3010 	ldr	r3, [fp, #-16]
80027c1c:	e50b3008 	str	r3, [fp, #-8]
80027c20:	e59f3024 	ldr	r3, [pc, #36]	@ 80027c4c <_kpt_free+0x44>
80027c24:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80027c28:	e51b3008 	ldr	r3, [fp, #-8]
80027c2c:	e5832000 	str	r2, [r3]
80027c30:	e59f2014 	ldr	r2, [pc, #20]	@ 80027c4c <_kpt_free+0x44>
80027c34:	e51b3008 	ldr	r3, [fp, #-8]
80027c38:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027c3c:	e1a00000 	nop			@ (mov r0, r0)
80027c40:	e28bd000 	add	sp, fp, #0
80027c44:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027c48:	e12fff1e 	bx	lr
80027c4c:	800af648 	.word	0x800af648

80027c50 <kpt_free>:
80027c50:	e92d4800 	push	{fp, lr}
80027c54:	e28db004 	add	fp, sp, #4
80027c58:	e24dd008 	sub	sp, sp, #8
80027c5c:	e50b0008 	str	r0, [fp, #-8]
80027c60:	e51b3008 	ldr	r3, [fp, #-8]
80027c64:	e59f2034 	ldr	r2, [pc, #52]	@ 80027ca0 <kpt_free+0x50>
80027c68:	e1530002 	cmp	r3, r2
80027c6c:	9a000003 	bls	80027c80 <kpt_free+0x30>
80027c70:	e3a0100a 	mov	r1, #10
80027c74:	e51b0008 	ldr	r0, [fp, #-8]
80027c78:	ebffe640 	bl	80021580 <kfree>
80027c7c:	ea000005 	b	80027c98 <kpt_free+0x48>
80027c80:	e59f001c 	ldr	r0, [pc, #28]	@ 80027ca4 <kpt_free+0x54>
80027c84:	ebfff843 	bl	80025d98 <acquire>
80027c88:	e51b0008 	ldr	r0, [fp, #-8]
80027c8c:	ebffffdd 	bl	80027c08 <_kpt_free>
80027c90:	e59f000c 	ldr	r0, [pc, #12]	@ 80027ca4 <kpt_free+0x54>
80027c94:	ebfff84a 	bl	80025dc4 <release>
80027c98:	e24bd004 	sub	sp, fp, #4
80027c9c:	e8bd8800 	pop	{fp, pc}
80027ca0:	800fffff 	.word	0x800fffff
80027ca4:	800af648 	.word	0x800af648

80027ca8 <kpt_freerange>:
80027ca8:	e92d4800 	push	{fp, lr}
80027cac:	e28db004 	add	fp, sp, #4
80027cb0:	e24dd008 	sub	sp, sp, #8
80027cb4:	e50b0008 	str	r0, [fp, #-8]
80027cb8:	e50b100c 	str	r1, [fp, #-12]
80027cbc:	ea000005 	b	80027cd8 <kpt_freerange+0x30>
80027cc0:	e51b3008 	ldr	r3, [fp, #-8]
80027cc4:	e1a00003 	mov	r0, r3
80027cc8:	ebffffce 	bl	80027c08 <_kpt_free>
80027ccc:	e51b3008 	ldr	r3, [fp, #-8]
80027cd0:	e2833b01 	add	r3, r3, #1024	@ 0x400
80027cd4:	e50b3008 	str	r3, [fp, #-8]
80027cd8:	e51b2008 	ldr	r2, [fp, #-8]
80027cdc:	e51b300c 	ldr	r3, [fp, #-12]
80027ce0:	e1520003 	cmp	r2, r3
80027ce4:	3afffff5 	bcc	80027cc0 <kpt_freerange+0x18>
80027ce8:	e1a00000 	nop			@ (mov r0, r0)
80027cec:	e1a00000 	nop			@ (mov r0, r0)
80027cf0:	e24bd004 	sub	sp, fp, #4
80027cf4:	e8bd8800 	pop	{fp, pc}

80027cf8 <kpt_alloc>:
80027cf8:	e92d4800 	push	{fp, lr}
80027cfc:	e28db004 	add	fp, sp, #4
80027d00:	e24dd008 	sub	sp, sp, #8
80027d04:	e59f007c 	ldr	r0, [pc, #124]	@ 80027d88 <kpt_alloc+0x90>
80027d08:	ebfff822 	bl	80025d98 <acquire>
80027d0c:	e59f3074 	ldr	r3, [pc, #116]	@ 80027d88 <kpt_alloc+0x90>
80027d10:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027d14:	e50b3008 	str	r3, [fp, #-8]
80027d18:	e51b3008 	ldr	r3, [fp, #-8]
80027d1c:	e3530000 	cmp	r3, #0
80027d20:	0a000003 	beq	80027d34 <kpt_alloc+0x3c>
80027d24:	e51b3008 	ldr	r3, [fp, #-8]
80027d28:	e5933000 	ldr	r3, [r3]
80027d2c:	e59f2054 	ldr	r2, [pc, #84]	@ 80027d88 <kpt_alloc+0x90>
80027d30:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027d34:	e59f004c 	ldr	r0, [pc, #76]	@ 80027d88 <kpt_alloc+0x90>
80027d38:	ebfff821 	bl	80025dc4 <release>
80027d3c:	e51b3008 	ldr	r3, [fp, #-8]
80027d40:	e3530000 	cmp	r3, #0
80027d44:	1a000007 	bne	80027d68 <kpt_alloc+0x70>
80027d48:	e3a0000a 	mov	r0, #10
80027d4c:	ebffe5b4 	bl	80021424 <kmalloc>
80027d50:	e50b0008 	str	r0, [fp, #-8]
80027d54:	e51b3008 	ldr	r3, [fp, #-8]
80027d58:	e3530000 	cmp	r3, #0
80027d5c:	1a000001 	bne	80027d68 <kpt_alloc+0x70>
80027d60:	e59f0024 	ldr	r0, [pc, #36]	@ 80027d8c <kpt_alloc+0x94>
80027d64:	ebffe762 	bl	80021af4 <panic>
80027d68:	e3a02b01 	mov	r2, #1024	@ 0x400
80027d6c:	e3a01000 	mov	r1, #0
80027d70:	e51b0008 	ldr	r0, [fp, #-8]
80027d74:	ebffe0a1 	bl	80020000 <memset>
80027d78:	e51b3008 	ldr	r3, [fp, #-8]
80027d7c:	e1a00003 	mov	r0, r3
80027d80:	e24bd004 	sub	sp, fp, #4
80027d84:	e8bd8800 	pop	{fp, pc}
80027d88:	800af648 	.word	0x800af648
80027d8c:	80029700 	.word	0x80029700

80027d90 <walkpgdir>:
80027d90:	e92d4800 	push	{fp, lr}
80027d94:	e28db004 	add	fp, sp, #4
80027d98:	e24dd018 	sub	sp, sp, #24
80027d9c:	e50b0010 	str	r0, [fp, #-16]
80027da0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80027da4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80027da8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027dac:	e1a03a23 	lsr	r3, r3, #20
80027db0:	e1a03103 	lsl	r3, r3, #2
80027db4:	e51b2010 	ldr	r2, [fp, #-16]
80027db8:	e0823003 	add	r3, r2, r3
80027dbc:	e50b300c 	str	r3, [fp, #-12]
80027dc0:	e51b300c 	ldr	r3, [fp, #-12]
80027dc4:	e5933000 	ldr	r3, [r3]
80027dc8:	e2033003 	and	r3, r3, #3
80027dcc:	e3530000 	cmp	r3, #0
80027dd0:	0a000007 	beq	80027df4 <walkpgdir+0x64>
80027dd4:	e51b300c 	ldr	r3, [fp, #-12]
80027dd8:	e5933000 	ldr	r3, [r3]
80027ddc:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80027de0:	e3c33003 	bic	r3, r3, #3
80027de4:	e1a00003 	mov	r0, r3
80027de8:	ebffff70 	bl	80027bb0 <p2v>
80027dec:	e50b0008 	str	r0, [fp, #-8]
80027df0:	ea000013 	b	80027e44 <walkpgdir+0xb4>
80027df4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027df8:	e3530000 	cmp	r3, #0
80027dfc:	0a000004 	beq	80027e14 <walkpgdir+0x84>
80027e00:	ebffffbc 	bl	80027cf8 <kpt_alloc>
80027e04:	e50b0008 	str	r0, [fp, #-8]
80027e08:	e51b3008 	ldr	r3, [fp, #-8]
80027e0c:	e3530000 	cmp	r3, #0
80027e10:	1a000001 	bne	80027e1c <walkpgdir+0x8c>
80027e14:	e3a03000 	mov	r3, #0
80027e18:	ea00000f 	b	80027e5c <walkpgdir+0xcc>
80027e1c:	e3a02b01 	mov	r2, #1024	@ 0x400
80027e20:	e3a01000 	mov	r1, #0
80027e24:	e51b0008 	ldr	r0, [fp, #-8]
80027e28:	ebffe074 	bl	80020000 <memset>
80027e2c:	e51b0008 	ldr	r0, [fp, #-8]
80027e30:	ebffff54 	bl	80027b88 <v2p>
80027e34:	e1a03000 	mov	r3, r0
80027e38:	e3832001 	orr	r2, r3, #1
80027e3c:	e51b300c 	ldr	r3, [fp, #-12]
80027e40:	e5832000 	str	r2, [r3]
80027e44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027e48:	e1a03623 	lsr	r3, r3, #12
80027e4c:	e6ef3073 	uxtb	r3, r3
80027e50:	e1a03103 	lsl	r3, r3, #2
80027e54:	e51b2008 	ldr	r2, [fp, #-8]
80027e58:	e0823003 	add	r3, r2, r3
80027e5c:	e1a00003 	mov	r0, r3
80027e60:	e24bd004 	sub	sp, fp, #4
80027e64:	e8bd8800 	pop	{fp, pc}

80027e68 <mappages>:
80027e68:	e92d4800 	push	{fp, lr}
80027e6c:	e28db004 	add	fp, sp, #4
80027e70:	e24dd020 	sub	sp, sp, #32
80027e74:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80027e78:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80027e7c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80027e80:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80027e84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027e88:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80027e8c:	e3c3300f 	bic	r3, r3, #15
80027e90:	e50b3008 	str	r3, [fp, #-8]
80027e94:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80027e98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027e9c:	e0823003 	add	r3, r2, r3
80027ea0:	e2433001 	sub	r3, r3, #1
80027ea4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80027ea8:	e3c3300f 	bic	r3, r3, #15
80027eac:	e50b300c 	str	r3, [fp, #-12]
80027eb0:	e3a02001 	mov	r2, #1
80027eb4:	e51b1008 	ldr	r1, [fp, #-8]
80027eb8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80027ebc:	ebffffb3 	bl	80027d90 <walkpgdir>
80027ec0:	e50b0010 	str	r0, [fp, #-16]
80027ec4:	e51b3010 	ldr	r3, [fp, #-16]
80027ec8:	e3530000 	cmp	r3, #0
80027ecc:	1a000001 	bne	80027ed8 <mappages+0x70>
80027ed0:	e3e03000 	mvn	r3, #0
80027ed4:	ea00001b 	b	80027f48 <mappages+0xe0>
80027ed8:	e51b3010 	ldr	r3, [fp, #-16]
80027edc:	e5933000 	ldr	r3, [r3]
80027ee0:	e2033003 	and	r3, r3, #3
80027ee4:	e3530000 	cmp	r3, #0
80027ee8:	0a000001 	beq	80027ef4 <mappages+0x8c>
80027eec:	e59f0060 	ldr	r0, [pc, #96]	@ 80027f54 <mappages+0xec>
80027ef0:	ebffe6ff 	bl	80021af4 <panic>
80027ef4:	e59b3004 	ldr	r3, [fp, #4]
80027ef8:	e1a03203 	lsl	r3, r3, #4
80027efc:	e2032030 	and	r2, r3, #48	@ 0x30
80027f00:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027f04:	e1823003 	orr	r3, r2, r3
80027f08:	e383200e 	orr	r2, r3, #14
80027f0c:	e51b3010 	ldr	r3, [fp, #-16]
80027f10:	e5832000 	str	r2, [r3]
80027f14:	e51b2008 	ldr	r2, [fp, #-8]
80027f18:	e51b300c 	ldr	r3, [fp, #-12]
80027f1c:	e1520003 	cmp	r2, r3
80027f20:	0a000006 	beq	80027f40 <mappages+0xd8>
80027f24:	e51b3008 	ldr	r3, [fp, #-8]
80027f28:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80027f2c:	e50b3008 	str	r3, [fp, #-8]
80027f30:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027f34:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80027f38:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80027f3c:	eaffffdb 	b	80027eb0 <mappages+0x48>
80027f40:	e1a00000 	nop			@ (mov r0, r0)
80027f44:	e3a03000 	mov	r3, #0
80027f48:	e1a00003 	mov	r0, r3
80027f4c:	e24bd004 	sub	sp, fp, #4
80027f50:	e8bd8800 	pop	{fp, pc}
80027f54:	80029710 	.word	0x80029710

80027f58 <flush_tlb>:
80027f58:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027f5c:	e28db000 	add	fp, sp, #0
80027f60:	e24dd00c 	sub	sp, sp, #12
80027f64:	e3a03000 	mov	r3, #0
80027f68:	e50b3008 	str	r3, [fp, #-8]
80027f6c:	e51b3008 	ldr	r3, [fp, #-8]
80027f70:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80027f74:	e51b3008 	ldr	r3, [fp, #-8]
80027f78:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80027f7c:	e51b3008 	ldr	r3, [fp, #-8]
80027f80:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80027f84:	e1a00000 	nop			@ (mov r0, r0)
80027f88:	e28bd000 	add	sp, fp, #0
80027f8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027f90:	e12fff1e 	bx	lr

80027f94 <switchuvm>:
80027f94:	e92d4800 	push	{fp, lr}
80027f98:	e28db004 	add	fp, sp, #4
80027f9c:	e24dd010 	sub	sp, sp, #16
80027fa0:	e50b0010 	str	r0, [fp, #-16]
80027fa4:	ebffe1a0 	bl	8002062c <pushcli>
80027fa8:	e51b3010 	ldr	r3, [fp, #-16]
80027fac:	e5933004 	ldr	r3, [r3, #4]
80027fb0:	e3530000 	cmp	r3, #0
80027fb4:	1a000001 	bne	80027fc0 <switchuvm+0x2c>
80027fb8:	e59f002c 	ldr	r0, [pc, #44]	@ 80027fec <switchuvm+0x58>
80027fbc:	ebffe6cc 	bl	80021af4 <panic>
80027fc0:	e51b3010 	ldr	r3, [fp, #-16]
80027fc4:	e5933004 	ldr	r3, [r3, #4]
80027fc8:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027fcc:	e50b3008 	str	r3, [fp, #-8]
80027fd0:	e51b3008 	ldr	r3, [fp, #-8]
80027fd4:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80027fd8:	ebffffde 	bl	80027f58 <flush_tlb>
80027fdc:	ebffe1a7 	bl	80020680 <popcli>
80027fe0:	e1a00000 	nop			@ (mov r0, r0)
80027fe4:	e24bd004 	sub	sp, fp, #4
80027fe8:	e8bd8800 	pop	{fp, pc}
80027fec:	80029718 	.word	0x80029718

80027ff0 <inituvm>:
80027ff0:	e92d4800 	push	{fp, lr}
80027ff4:	e28db004 	add	fp, sp, #4
80027ff8:	e24dd020 	sub	sp, sp, #32
80027ffc:	e50b0010 	str	r0, [fp, #-16]
80028000:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028004:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002800c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028010:	3a000001 	bcc	8002801c <inituvm+0x2c>
80028014:	e59f0058 	ldr	r0, [pc, #88]	@ 80028074 <inituvm+0x84>
80028018:	ebffe6b5 	bl	80021af4 <panic>
8002801c:	ebffe583 	bl	80021630 <alloc_page>
80028020:	e50b0008 	str	r0, [fp, #-8]
80028024:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028028:	e3a01000 	mov	r1, #0
8002802c:	e51b0008 	ldr	r0, [fp, #-8]
80028030:	ebffdff2 	bl	80020000 <memset>
80028034:	e51b0008 	ldr	r0, [fp, #-8]
80028038:	ebfffed2 	bl	80027b88 <v2p>
8002803c:	e1a03000 	mov	r3, r0
80028040:	e3a02003 	mov	r2, #3
80028044:	e58d2000 	str	r2, [sp]
80028048:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002804c:	e3a01000 	mov	r1, #0
80028050:	e51b0010 	ldr	r0, [fp, #-16]
80028054:	ebffff83 	bl	80027e68 <mappages>
80028058:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002805c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028060:	e51b0008 	ldr	r0, [fp, #-8]
80028064:	ebffe057 	bl	800201c8 <memmove>
80028068:	e1a00000 	nop			@ (mov r0, r0)
8002806c:	e24bd004 	sub	sp, fp, #4
80028070:	e8bd8800 	pop	{fp, pc}
80028074:	8002972c 	.word	0x8002972c

80028078 <loaduvm>:
80028078:	e92d4800 	push	{fp, lr}
8002807c:	e28db004 	add	fp, sp, #4
80028080:	e24dd020 	sub	sp, sp, #32
80028084:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028088:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002808c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028090:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028094:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028098:	e1a03a03 	lsl	r3, r3, #20
8002809c:	e1a03a23 	lsr	r3, r3, #20
800280a0:	e3530000 	cmp	r3, #0
800280a4:	0a000001 	beq	800280b0 <loaduvm+0x38>
800280a8:	e59f00f0 	ldr	r0, [pc, #240]	@ 800281a0 <loaduvm+0x128>
800280ac:	ebffe690 	bl	80021af4 <panic>
800280b0:	e3a03000 	mov	r3, #0
800280b4:	e50b3008 	str	r3, [fp, #-8]
800280b8:	ea000030 	b	80028180 <loaduvm+0x108>
800280bc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800280c0:	e51b3008 	ldr	r3, [fp, #-8]
800280c4:	e0823003 	add	r3, r2, r3
800280c8:	e3a02000 	mov	r2, #0
800280cc:	e1a01003 	mov	r1, r3
800280d0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800280d4:	ebffff2d 	bl	80027d90 <walkpgdir>
800280d8:	e50b0010 	str	r0, [fp, #-16]
800280dc:	e51b3010 	ldr	r3, [fp, #-16]
800280e0:	e3530000 	cmp	r3, #0
800280e4:	1a000001 	bne	800280f0 <loaduvm+0x78>
800280e8:	e59f00b4 	ldr	r0, [pc, #180]	@ 800281a4 <loaduvm+0x12c>
800280ec:	ebffe680 	bl	80021af4 <panic>
800280f0:	e51b3010 	ldr	r3, [fp, #-16]
800280f4:	e5933000 	ldr	r3, [r3]
800280f8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800280fc:	e3c3300f 	bic	r3, r3, #15
80028100:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028104:	e59b2004 	ldr	r2, [fp, #4]
80028108:	e51b3008 	ldr	r3, [fp, #-8]
8002810c:	e0423003 	sub	r3, r2, r3
80028110:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028114:	2a000004 	bcs	8002812c <loaduvm+0xb4>
80028118:	e59b2004 	ldr	r2, [fp, #4]
8002811c:	e51b3008 	ldr	r3, [fp, #-8]
80028120:	e0423003 	sub	r3, r2, r3
80028124:	e50b300c 	str	r3, [fp, #-12]
80028128:	ea000001 	b	80028134 <loaduvm+0xbc>
8002812c:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028130:	e50b300c 	str	r3, [fp, #-12]
80028134:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028138:	ebfffe9c 	bl	80027bb0 <p2v>
8002813c:	e1a01000 	mov	r1, r0
80028140:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028144:	e51b3008 	ldr	r3, [fp, #-8]
80028148:	e0822003 	add	r2, r2, r3
8002814c:	e51b300c 	ldr	r3, [fp, #-12]
80028150:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80028154:	ebffedbd 	bl	80023850 <readi>
80028158:	e1a03000 	mov	r3, r0
8002815c:	e1a02003 	mov	r2, r3
80028160:	e51b300c 	ldr	r3, [fp, #-12]
80028164:	e1530002 	cmp	r3, r2
80028168:	0a000001 	beq	80028174 <loaduvm+0xfc>
8002816c:	e3e03000 	mvn	r3, #0
80028170:	ea000007 	b	80028194 <loaduvm+0x11c>
80028174:	e51b3008 	ldr	r3, [fp, #-8]
80028178:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002817c:	e50b3008 	str	r3, [fp, #-8]
80028180:	e51b2008 	ldr	r2, [fp, #-8]
80028184:	e59b3004 	ldr	r3, [fp, #4]
80028188:	e1520003 	cmp	r2, r3
8002818c:	3affffca 	bcc	800280bc <loaduvm+0x44>
80028190:	e3a03000 	mov	r3, #0
80028194:	e1a00003 	mov	r0, r3
80028198:	e24bd004 	sub	sp, fp, #4
8002819c:	e8bd8800 	pop	{fp, pc}
800281a0:	80029748 	.word	0x80029748
800281a4:	8002976c 	.word	0x8002976c

800281a8 <allocuvm>:
800281a8:	e92d4810 	push	{r4, fp, lr}
800281ac:	e28db008 	add	fp, sp, #8
800281b0:	e24dd024 	sub	sp, sp, #36	@ 0x24
800281b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800281b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800281bc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800281c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800281c4:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
800281c8:	9a000001 	bls	800281d4 <allocuvm+0x2c>
800281cc:	e3a03000 	mov	r3, #0
800281d0:	ea00002f 	b	80028294 <allocuvm+0xec>
800281d4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800281d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800281dc:	e1520003 	cmp	r2, r3
800281e0:	2a000001 	bcs	800281ec <allocuvm+0x44>
800281e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800281e8:	ea000029 	b	80028294 <allocuvm+0xec>
800281ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800281f0:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800281f4:	e283300f 	add	r3, r3, #15
800281f8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800281fc:	e3c3300f 	bic	r3, r3, #15
80028200:	e50b3010 	str	r3, [fp, #-16]
80028204:	ea00001d 	b	80028280 <allocuvm+0xd8>
80028208:	ebffe508 	bl	80021630 <alloc_page>
8002820c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028210:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028214:	e3530000 	cmp	r3, #0
80028218:	1a000007 	bne	8002823c <allocuvm+0x94>
8002821c:	e59f007c 	ldr	r0, [pc, #124]	@ 800282a0 <allocuvm+0xf8>
80028220:	ebffe59b 	bl	80021894 <cprintf>
80028224:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028228:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
8002822c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028230:	eb00001b 	bl	800282a4 <deallocuvm>
80028234:	e3a03000 	mov	r3, #0
80028238:	ea000015 	b	80028294 <allocuvm+0xec>
8002823c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028240:	e3a01000 	mov	r1, #0
80028244:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028248:	ebffdf6c 	bl	80020000 <memset>
8002824c:	e51b4010 	ldr	r4, [fp, #-16]
80028250:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028254:	ebfffe4b 	bl	80027b88 <v2p>
80028258:	e1a03000 	mov	r3, r0
8002825c:	e3a02003 	mov	r2, #3
80028260:	e58d2000 	str	r2, [sp]
80028264:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028268:	e1a01004 	mov	r1, r4
8002826c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028270:	ebfffefc 	bl	80027e68 <mappages>
80028274:	e51b3010 	ldr	r3, [fp, #-16]
80028278:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002827c:	e50b3010 	str	r3, [fp, #-16]
80028280:	e51b2010 	ldr	r2, [fp, #-16]
80028284:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028288:	e1520003 	cmp	r2, r3
8002828c:	3affffdd 	bcc	80028208 <allocuvm+0x60>
80028290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028294:	e1a00003 	mov	r0, r3
80028298:	e24bd008 	sub	sp, fp, #8
8002829c:	e8bd8810 	pop	{r4, fp, pc}
800282a0:	8002978c 	.word	0x8002978c

800282a4 <deallocuvm>:
800282a4:	e92d4800 	push	{fp, lr}
800282a8:	e28db004 	add	fp, sp, #4
800282ac:	e24dd020 	sub	sp, sp, #32
800282b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800282b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800282b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800282bc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800282c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800282c4:	e1520003 	cmp	r2, r3
800282c8:	3a000001 	bcc	800282d4 <deallocuvm+0x30>
800282cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800282d0:	ea000035 	b	800283ac <deallocuvm+0x108>
800282d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800282d8:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800282dc:	e283300f 	add	r3, r3, #15
800282e0:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800282e4:	e3c3300f 	bic	r3, r3, #15
800282e8:	e50b3008 	str	r3, [fp, #-8]
800282ec:	ea000029 	b	80028398 <deallocuvm+0xf4>
800282f0:	e51b3008 	ldr	r3, [fp, #-8]
800282f4:	e3a02000 	mov	r2, #0
800282f8:	e1a01003 	mov	r1, r3
800282fc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028300:	ebfffea2 	bl	80027d90 <walkpgdir>
80028304:	e50b000c 	str	r0, [fp, #-12]
80028308:	e51b300c 	ldr	r3, [fp, #-12]
8002830c:	e3530000 	cmp	r3, #0
80028310:	1a000006 	bne	80028330 <deallocuvm+0x8c>
80028314:	e51b3008 	ldr	r3, [fp, #-8]
80028318:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
8002831c:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028320:	e1a03a23 	lsr	r3, r3, #20
80028324:	e1a03a03 	lsl	r3, r3, #20
80028328:	e50b3008 	str	r3, [fp, #-8]
8002832c:	ea000016 	b	8002838c <deallocuvm+0xe8>
80028330:	e51b300c 	ldr	r3, [fp, #-12]
80028334:	e5933000 	ldr	r3, [r3]
80028338:	e2033003 	and	r3, r3, #3
8002833c:	e3530000 	cmp	r3, #0
80028340:	0a000011 	beq	8002838c <deallocuvm+0xe8>
80028344:	e51b300c 	ldr	r3, [fp, #-12]
80028348:	e5933000 	ldr	r3, [r3]
8002834c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028350:	e3c3300f 	bic	r3, r3, #15
80028354:	e50b3010 	str	r3, [fp, #-16]
80028358:	e51b3010 	ldr	r3, [fp, #-16]
8002835c:	e3530000 	cmp	r3, #0
80028360:	1a000001 	bne	8002836c <deallocuvm+0xc8>
80028364:	e59f004c 	ldr	r0, [pc, #76]	@ 800283b8 <deallocuvm+0x114>
80028368:	ebffe5e1 	bl	80021af4 <panic>
8002836c:	e51b0010 	ldr	r0, [fp, #-16]
80028370:	ebfffe0e 	bl	80027bb0 <p2v>
80028374:	e1a03000 	mov	r3, r0
80028378:	e1a00003 	mov	r0, r3
8002837c:	ebffe4a1 	bl	80021608 <free_page>
80028380:	e51b300c 	ldr	r3, [fp, #-12]
80028384:	e3a02000 	mov	r2, #0
80028388:	e5832000 	str	r2, [r3]
8002838c:	e51b3008 	ldr	r3, [fp, #-8]
80028390:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028394:	e50b3008 	str	r3, [fp, #-8]
80028398:	e51b2008 	ldr	r2, [fp, #-8]
8002839c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800283a0:	e1520003 	cmp	r2, r3
800283a4:	3affffd1 	bcc	800282f0 <deallocuvm+0x4c>
800283a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800283ac:	e1a00003 	mov	r0, r3
800283b0:	e24bd004 	sub	sp, fp, #4
800283b4:	e8bd8800 	pop	{fp, pc}
800283b8:	800297a4 	.word	0x800297a4

800283bc <freevm>:
800283bc:	e92d4800 	push	{fp, lr}
800283c0:	e28db004 	add	fp, sp, #4
800283c4:	e24dd010 	sub	sp, sp, #16
800283c8:	e50b0010 	str	r0, [fp, #-16]
800283cc:	e51b3010 	ldr	r3, [fp, #-16]
800283d0:	e3530000 	cmp	r3, #0
800283d4:	1a000001 	bne	800283e0 <freevm+0x24>
800283d8:	e59f0098 	ldr	r0, [pc, #152]	@ 80028478 <freevm+0xbc>
800283dc:	ebffe5c4 	bl	80021af4 <panic>
800283e0:	e3a02000 	mov	r2, #0
800283e4:	e3a01201 	mov	r1, #268435456	@ 0x10000000
800283e8:	e51b0010 	ldr	r0, [fp, #-16]
800283ec:	ebffffac 	bl	800282a4 <deallocuvm>
800283f0:	e3a03000 	mov	r3, #0
800283f4:	e50b3008 	str	r3, [fp, #-8]
800283f8:	ea000016 	b	80028458 <freevm+0x9c>
800283fc:	e51b3008 	ldr	r3, [fp, #-8]
80028400:	e1a03103 	lsl	r3, r3, #2
80028404:	e51b2010 	ldr	r2, [fp, #-16]
80028408:	e0823003 	add	r3, r2, r3
8002840c:	e5933000 	ldr	r3, [r3]
80028410:	e2033003 	and	r3, r3, #3
80028414:	e3530000 	cmp	r3, #0
80028418:	0a00000b 	beq	8002844c <freevm+0x90>
8002841c:	e51b3008 	ldr	r3, [fp, #-8]
80028420:	e1a03103 	lsl	r3, r3, #2
80028424:	e51b2010 	ldr	r2, [fp, #-16]
80028428:	e0823003 	add	r3, r2, r3
8002842c:	e5933000 	ldr	r3, [r3]
80028430:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028434:	e3c33003 	bic	r3, r3, #3
80028438:	e1a00003 	mov	r0, r3
8002843c:	ebfffddb 	bl	80027bb0 <p2v>
80028440:	e50b000c 	str	r0, [fp, #-12]
80028444:	e51b000c 	ldr	r0, [fp, #-12]
80028448:	ebfffe00 	bl	80027c50 <kpt_free>
8002844c:	e51b3008 	ldr	r3, [fp, #-8]
80028450:	e2833001 	add	r3, r3, #1
80028454:	e50b3008 	str	r3, [fp, #-8]
80028458:	e51b3008 	ldr	r3, [fp, #-8]
8002845c:	e35300ff 	cmp	r3, #255	@ 0xff
80028460:	9affffe5 	bls	800283fc <freevm+0x40>
80028464:	e51b0010 	ldr	r0, [fp, #-16]
80028468:	ebfffdf8 	bl	80027c50 <kpt_free>
8002846c:	e1a00000 	nop			@ (mov r0, r0)
80028470:	e24bd004 	sub	sp, fp, #4
80028474:	e8bd8800 	pop	{fp, pc}
80028478:	800297b0 	.word	0x800297b0

8002847c <clearpteu>:
8002847c:	e92d4800 	push	{fp, lr}
80028480:	e28db004 	add	fp, sp, #4
80028484:	e24dd010 	sub	sp, sp, #16
80028488:	e50b0010 	str	r0, [fp, #-16]
8002848c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028490:	e3a02000 	mov	r2, #0
80028494:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028498:	e51b0010 	ldr	r0, [fp, #-16]
8002849c:	ebfffe3b 	bl	80027d90 <walkpgdir>
800284a0:	e50b0008 	str	r0, [fp, #-8]
800284a4:	e51b3008 	ldr	r3, [fp, #-8]
800284a8:	e3530000 	cmp	r3, #0
800284ac:	1a000001 	bne	800284b8 <clearpteu+0x3c>
800284b0:	e59f0024 	ldr	r0, [pc, #36]	@ 800284dc <clearpteu+0x60>
800284b4:	ebffe58e 	bl	80021af4 <panic>
800284b8:	e51b3008 	ldr	r3, [fp, #-8]
800284bc:	e5933000 	ldr	r3, [r3]
800284c0:	e3c33030 	bic	r3, r3, #48	@ 0x30
800284c4:	e3832010 	orr	r2, r3, #16
800284c8:	e51b3008 	ldr	r3, [fp, #-8]
800284cc:	e5832000 	str	r2, [r3]
800284d0:	e1a00000 	nop			@ (mov r0, r0)
800284d4:	e24bd004 	sub	sp, fp, #4
800284d8:	e8bd8800 	pop	{fp, pc}
800284dc:	800297c4 	.word	0x800297c4

800284e0 <copyuvm>:
800284e0:	e92d4810 	push	{r4, fp, lr}
800284e4:	e28db008 	add	fp, sp, #8
800284e8:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
800284ec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800284f0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
800284f4:	ebfffdff 	bl	80027cf8 <kpt_alloc>
800284f8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800284fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028500:	e3530000 	cmp	r3, #0
80028504:	1a000001 	bne	80028510 <copyuvm+0x30>
80028508:	e3a03000 	mov	r3, #0
8002850c:	ea000047 	b	80028630 <copyuvm+0x150>
80028510:	e3a03000 	mov	r3, #0
80028514:	e50b3010 	str	r3, [fp, #-16]
80028518:	ea000038 	b	80028600 <copyuvm+0x120>
8002851c:	e51b3010 	ldr	r3, [fp, #-16]
80028520:	e3a02000 	mov	r2, #0
80028524:	e1a01003 	mov	r1, r3
80028528:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002852c:	ebfffe17 	bl	80027d90 <walkpgdir>
80028530:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028534:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028538:	e3530000 	cmp	r3, #0
8002853c:	1a000001 	bne	80028548 <copyuvm+0x68>
80028540:	e59f00f4 	ldr	r0, [pc, #244]	@ 8002863c <copyuvm+0x15c>
80028544:	ebffe56a 	bl	80021af4 <panic>
80028548:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002854c:	e5933000 	ldr	r3, [r3]
80028550:	e2033003 	and	r3, r3, #3
80028554:	e3530000 	cmp	r3, #0
80028558:	1a000001 	bne	80028564 <copyuvm+0x84>
8002855c:	e59f00dc 	ldr	r0, [pc, #220]	@ 80028640 <copyuvm+0x160>
80028560:	ebffe563 	bl	80021af4 <panic>
80028564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028568:	e5933000 	ldr	r3, [r3]
8002856c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028570:	e3c3300f 	bic	r3, r3, #15
80028574:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028578:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002857c:	e5933000 	ldr	r3, [r3]
80028580:	e1a03223 	lsr	r3, r3, #4
80028584:	e2033003 	and	r3, r3, #3
80028588:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002858c:	ebffe427 	bl	80021630 <alloc_page>
80028590:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028594:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028598:	e3530000 	cmp	r3, #0
8002859c:	0a00001d 	beq	80028618 <copyuvm+0x138>
800285a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800285a4:	ebfffd81 	bl	80027bb0 <p2v>
800285a8:	e1a03000 	mov	r3, r0
800285ac:	e3a02a01 	mov	r2, #4096	@ 0x1000
800285b0:	e1a01003 	mov	r1, r3
800285b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800285b8:	ebffdf02 	bl	800201c8 <memmove>
800285bc:	e51b4010 	ldr	r4, [fp, #-16]
800285c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800285c4:	ebfffd6f 	bl	80027b88 <v2p>
800285c8:	e1a02000 	mov	r2, r0
800285cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800285d0:	e58d3000 	str	r3, [sp]
800285d4:	e1a03002 	mov	r3, r2
800285d8:	e3a02a01 	mov	r2, #4096	@ 0x1000
800285dc:	e1a01004 	mov	r1, r4
800285e0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800285e4:	ebfffe1f 	bl	80027e68 <mappages>
800285e8:	e1a03000 	mov	r3, r0
800285ec:	e3530000 	cmp	r3, #0
800285f0:	ba00000a 	blt	80028620 <copyuvm+0x140>
800285f4:	e51b3010 	ldr	r3, [fp, #-16]
800285f8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800285fc:	e50b3010 	str	r3, [fp, #-16]
80028600:	e51b2010 	ldr	r2, [fp, #-16]
80028604:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028608:	e1520003 	cmp	r2, r3
8002860c:	3affffc2 	bcc	8002851c <copyuvm+0x3c>
80028610:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028614:	ea000005 	b	80028630 <copyuvm+0x150>
80028618:	e1a00000 	nop			@ (mov r0, r0)
8002861c:	ea000000 	b	80028624 <copyuvm+0x144>
80028620:	e1a00000 	nop			@ (mov r0, r0)
80028624:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028628:	ebffff63 	bl	800283bc <freevm>
8002862c:	e3a03000 	mov	r3, #0
80028630:	e1a00003 	mov	r0, r3
80028634:	e24bd008 	sub	sp, fp, #8
80028638:	e8bd8810 	pop	{r4, fp, pc}
8002863c:	800297d0 	.word	0x800297d0
80028640:	800297ec 	.word	0x800297ec

80028644 <uva2ka>:
80028644:	e92d4800 	push	{fp, lr}
80028648:	e28db004 	add	fp, sp, #4
8002864c:	e24dd010 	sub	sp, sp, #16
80028650:	e50b0010 	str	r0, [fp, #-16]
80028654:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028658:	e3a02000 	mov	r2, #0
8002865c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028660:	e51b0010 	ldr	r0, [fp, #-16]
80028664:	ebfffdc9 	bl	80027d90 <walkpgdir>
80028668:	e50b0008 	str	r0, [fp, #-8]
8002866c:	e51b3008 	ldr	r3, [fp, #-8]
80028670:	e5933000 	ldr	r3, [r3]
80028674:	e2033003 	and	r3, r3, #3
80028678:	e3530000 	cmp	r3, #0
8002867c:	1a000001 	bne	80028688 <uva2ka+0x44>
80028680:	e3a03000 	mov	r3, #0
80028684:	ea00000e 	b	800286c4 <uva2ka+0x80>
80028688:	e51b3008 	ldr	r3, [fp, #-8]
8002868c:	e5933000 	ldr	r3, [r3]
80028690:	e2033030 	and	r3, r3, #48	@ 0x30
80028694:	e3530030 	cmp	r3, #48	@ 0x30
80028698:	0a000001 	beq	800286a4 <uva2ka+0x60>
8002869c:	e3a03000 	mov	r3, #0
800286a0:	ea000007 	b	800286c4 <uva2ka+0x80>
800286a4:	e51b3008 	ldr	r3, [fp, #-8]
800286a8:	e5933000 	ldr	r3, [r3]
800286ac:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800286b0:	e3c3300f 	bic	r3, r3, #15
800286b4:	e1a00003 	mov	r0, r3
800286b8:	ebfffd3c 	bl	80027bb0 <p2v>
800286bc:	e1a03000 	mov	r3, r0
800286c0:	e1a00000 	nop			@ (mov r0, r0)
800286c4:	e1a00003 	mov	r0, r3
800286c8:	e24bd004 	sub	sp, fp, #4
800286cc:	e8bd8800 	pop	{fp, pc}

800286d0 <copyout>:
800286d0:	e92d4800 	push	{fp, lr}
800286d4:	e28db004 	add	fp, sp, #4
800286d8:	e24dd020 	sub	sp, sp, #32
800286dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800286e0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800286e4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800286e8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800286ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800286f0:	e50b3008 	str	r3, [fp, #-8]
800286f4:	ea00002c 	b	800287ac <copyout+0xdc>
800286f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800286fc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028700:	e3c3300f 	bic	r3, r3, #15
80028704:	e50b3010 	str	r3, [fp, #-16]
80028708:	e51b3010 	ldr	r3, [fp, #-16]
8002870c:	e1a01003 	mov	r1, r3
80028710:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028714:	ebffffca 	bl	80028644 <uva2ka>
80028718:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002871c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028720:	e3530000 	cmp	r3, #0
80028724:	1a000001 	bne	80028730 <copyout+0x60>
80028728:	e3e03000 	mvn	r3, #0
8002872c:	ea000022 	b	800287bc <copyout+0xec>
80028730:	e51b2010 	ldr	r2, [fp, #-16]
80028734:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028738:	e0423003 	sub	r3, r2, r3
8002873c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028740:	e50b300c 	str	r3, [fp, #-12]
80028744:	e51b200c 	ldr	r2, [fp, #-12]
80028748:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002874c:	e1520003 	cmp	r2, r3
80028750:	9a000001 	bls	8002875c <copyout+0x8c>
80028754:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028758:	e50b300c 	str	r3, [fp, #-12]
8002875c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028760:	e51b3010 	ldr	r3, [fp, #-16]
80028764:	e0423003 	sub	r3, r2, r3
80028768:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002876c:	e0823003 	add	r3, r2, r3
80028770:	e51b200c 	ldr	r2, [fp, #-12]
80028774:	e51b1008 	ldr	r1, [fp, #-8]
80028778:	e1a00003 	mov	r0, r3
8002877c:	ebffde91 	bl	800201c8 <memmove>
80028780:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028784:	e51b300c 	ldr	r3, [fp, #-12]
80028788:	e0423003 	sub	r3, r2, r3
8002878c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028790:	e51b2008 	ldr	r2, [fp, #-8]
80028794:	e51b300c 	ldr	r3, [fp, #-12]
80028798:	e0823003 	add	r3, r2, r3
8002879c:	e50b3008 	str	r3, [fp, #-8]
800287a0:	e51b3010 	ldr	r3, [fp, #-16]
800287a4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800287a8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800287ac:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800287b0:	e3530000 	cmp	r3, #0
800287b4:	1affffcf 	bne	800286f8 <copyout+0x28>
800287b8:	e3a03000 	mov	r3, #0
800287bc:	e1a00003 	mov	r0, r3
800287c0:	e24bd004 	sub	sp, fp, #4
800287c4:	e8bd8800 	pop	{fp, pc}

800287c8 <paging_init>:
800287c8:	e92d4800 	push	{fp, lr}
800287cc:	e28db004 	add	fp, sp, #4
800287d0:	e24dd010 	sub	sp, sp, #16
800287d4:	e50b0008 	str	r0, [fp, #-8]
800287d8:	e50b100c 	str	r1, [fp, #-12]
800287dc:	e59f0034 	ldr	r0, [pc, #52]	@ 80028818 <paging_init+0x50>
800287e0:	e51b3008 	ldr	r3, [fp, #-8]
800287e4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800287e8:	e1a01003 	mov	r1, r3
800287ec:	e51b200c 	ldr	r2, [fp, #-12]
800287f0:	e51b3008 	ldr	r3, [fp, #-8]
800287f4:	e0422003 	sub	r2, r2, r3
800287f8:	e3a03003 	mov	r3, #3
800287fc:	e58d3000 	str	r3, [sp]
80028800:	e51b3008 	ldr	r3, [fp, #-8]
80028804:	ebfffd97 	bl	80027e68 <mappages>
80028808:	ebfffdd2 	bl	80027f58 <flush_tlb>
8002880c:	e1a00000 	nop			@ (mov r0, r0)
80028810:	e24bd004 	sub	sp, fp, #4
80028814:	e8bd8800 	pop	{fp, pc}
80028818:	80014000 	.word	0x80014000

8002881c <default_isr>:
8002881c:	e92d4800 	push	{fp, lr}
80028820:	e28db004 	add	fp, sp, #4
80028824:	e24dd008 	sub	sp, sp, #8
80028828:	e50b0008 	str	r0, [fp, #-8]
8002882c:	e50b100c 	str	r1, [fp, #-12]
80028830:	e51b100c 	ldr	r1, [fp, #-12]
80028834:	e59f000c 	ldr	r0, [pc, #12]	@ 80028848 <default_isr+0x2c>
80028838:	ebffe415 	bl	80021894 <cprintf>
8002883c:	e1a00000 	nop			@ (mov r0, r0)
80028840:	e24bd004 	sub	sp, fp, #4
80028844:	e8bd8800 	pop	{fp, pc}
80028848:	80029808 	.word	0x80029808

8002884c <pic_init>:
8002884c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028850:	e28db000 	add	fp, sp, #0
80028854:	e24dd014 	sub	sp, sp, #20
80028858:	e50b0010 	str	r0, [fp, #-16]
8002885c:	e59f2060 	ldr	r2, [pc, #96]	@ 800288c4 <pic_init+0x78>
80028860:	e51b3010 	ldr	r3, [fp, #-16]
80028864:	e5823000 	str	r3, [r2]
80028868:	e59f3054 	ldr	r3, [pc, #84]	@ 800288c4 <pic_init+0x78>
8002886c:	e5933000 	ldr	r3, [r3]
80028870:	e2833014 	add	r3, r3, #20
80028874:	e3e02000 	mvn	r2, #0
80028878:	e5832000 	str	r2, [r3]
8002887c:	e3a03000 	mov	r3, #0
80028880:	e50b3008 	str	r3, [fp, #-8]
80028884:	ea000006 	b	800288a4 <pic_init+0x58>
80028888:	e59f2038 	ldr	r2, [pc, #56]	@ 800288c8 <pic_init+0x7c>
8002888c:	e51b3008 	ldr	r3, [fp, #-8]
80028890:	e59f1034 	ldr	r1, [pc, #52]	@ 800288cc <pic_init+0x80>
80028894:	e7821103 	str	r1, [r2, r3, lsl #2]
80028898:	e51b3008 	ldr	r3, [fp, #-8]
8002889c:	e2833001 	add	r3, r3, #1
800288a0:	e50b3008 	str	r3, [fp, #-8]
800288a4:	e51b3008 	ldr	r3, [fp, #-8]
800288a8:	e353001f 	cmp	r3, #31
800288ac:	dafffff5 	ble	80028888 <pic_init+0x3c>
800288b0:	e1a00000 	nop			@ (mov r0, r0)
800288b4:	e1a00000 	nop			@ (mov r0, r0)
800288b8:	e28bd000 	add	sp, fp, #0
800288bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800288c0:	e12fff1e 	bx	lr
800288c4:	800af680 	.word	0x800af680
800288c8:	800af684 	.word	0x800af684
800288cc:	8002881c 	.word	0x8002881c

800288d0 <pic_enable>:
800288d0:	e92d4800 	push	{fp, lr}
800288d4:	e28db004 	add	fp, sp, #4
800288d8:	e24dd008 	sub	sp, sp, #8
800288dc:	e50b0008 	str	r0, [fp, #-8]
800288e0:	e50b100c 	str	r1, [fp, #-12]
800288e4:	e51b3008 	ldr	r3, [fp, #-8]
800288e8:	e3530000 	cmp	r3, #0
800288ec:	ba000002 	blt	800288fc <pic_enable+0x2c>
800288f0:	e51b3008 	ldr	r3, [fp, #-8]
800288f4:	e353001f 	cmp	r3, #31
800288f8:	da000001 	ble	80028904 <pic_enable+0x34>
800288fc:	e59f0038 	ldr	r0, [pc, #56]	@ 8002893c <pic_enable+0x6c>
80028900:	ebffe47b 	bl	80021af4 <panic>
80028904:	e59f1034 	ldr	r1, [pc, #52]	@ 80028940 <pic_enable+0x70>
80028908:	e51b3008 	ldr	r3, [fp, #-8]
8002890c:	e51b200c 	ldr	r2, [fp, #-12]
80028910:	e7812103 	str	r2, [r1, r3, lsl #2]
80028914:	e3a02001 	mov	r2, #1
80028918:	e51b3008 	ldr	r3, [fp, #-8]
8002891c:	e1a02312 	lsl	r2, r2, r3
80028920:	e59f301c 	ldr	r3, [pc, #28]	@ 80028944 <pic_enable+0x74>
80028924:	e5933000 	ldr	r3, [r3]
80028928:	e2833010 	add	r3, r3, #16
8002892c:	e5832000 	str	r2, [r3]
80028930:	e1a00000 	nop			@ (mov r0, r0)
80028934:	e24bd004 	sub	sp, fp, #4
80028938:	e8bd8800 	pop	{fp, pc}
8002893c:	80029824 	.word	0x80029824
80028940:	800af684 	.word	0x800af684
80028944:	800af680 	.word	0x800af680

80028948 <pic_disable>:
80028948:	e92d4800 	push	{fp, lr}
8002894c:	e28db004 	add	fp, sp, #4
80028950:	e24dd008 	sub	sp, sp, #8
80028954:	e50b0008 	str	r0, [fp, #-8]
80028958:	e51b3008 	ldr	r3, [fp, #-8]
8002895c:	e3530000 	cmp	r3, #0
80028960:	ba000002 	blt	80028970 <pic_disable+0x28>
80028964:	e51b3008 	ldr	r3, [fp, #-8]
80028968:	e353001f 	cmp	r3, #31
8002896c:	da000001 	ble	80028978 <pic_disable+0x30>
80028970:	e59f0038 	ldr	r0, [pc, #56]	@ 800289b0 <pic_disable+0x68>
80028974:	ebffe45e 	bl	80021af4 <panic>
80028978:	e3a02001 	mov	r2, #1
8002897c:	e51b3008 	ldr	r3, [fp, #-8]
80028980:	e1a02312 	lsl	r2, r2, r3
80028984:	e59f3028 	ldr	r3, [pc, #40]	@ 800289b4 <pic_disable+0x6c>
80028988:	e5933000 	ldr	r3, [r3]
8002898c:	e2833014 	add	r3, r3, #20
80028990:	e5832000 	str	r2, [r3]
80028994:	e59f201c 	ldr	r2, [pc, #28]	@ 800289b8 <pic_disable+0x70>
80028998:	e51b3008 	ldr	r3, [fp, #-8]
8002899c:	e59f1018 	ldr	r1, [pc, #24]	@ 800289bc <pic_disable+0x74>
800289a0:	e7821103 	str	r1, [r2, r3, lsl #2]
800289a4:	e1a00000 	nop			@ (mov r0, r0)
800289a8:	e24bd004 	sub	sp, fp, #4
800289ac:	e8bd8800 	pop	{fp, pc}
800289b0:	80029824 	.word	0x80029824
800289b4:	800af680 	.word	0x800af680
800289b8:	800af684 	.word	0x800af684
800289bc:	8002881c 	.word	0x8002881c

800289c0 <pic_dispatch>:
800289c0:	e92d4800 	push	{fp, lr}
800289c4:	e28db004 	add	fp, sp, #4
800289c8:	e24dd010 	sub	sp, sp, #16
800289cc:	e50b0010 	str	r0, [fp, #-16]
800289d0:	e59f3080 	ldr	r3, [pc, #128]	@ 80028a58 <pic_dispatch+0x98>
800289d4:	e5933000 	ldr	r3, [r3]
800289d8:	e5933000 	ldr	r3, [r3]
800289dc:	e50b300c 	str	r3, [fp, #-12]
800289e0:	e3a03000 	mov	r3, #0
800289e4:	e50b3008 	str	r3, [fp, #-8]
800289e8:	ea000010 	b	80028a30 <pic_dispatch+0x70>
800289ec:	e3a02001 	mov	r2, #1
800289f0:	e51b3008 	ldr	r3, [fp, #-8]
800289f4:	e1a03312 	lsl	r3, r2, r3
800289f8:	e1a02003 	mov	r2, r3
800289fc:	e51b300c 	ldr	r3, [fp, #-12]
80028a00:	e0033002 	and	r3, r3, r2
80028a04:	e3530000 	cmp	r3, #0
80028a08:	0a000005 	beq	80028a24 <pic_dispatch+0x64>
80028a0c:	e59f2048 	ldr	r2, [pc, #72]	@ 80028a5c <pic_dispatch+0x9c>
80028a10:	e51b3008 	ldr	r3, [fp, #-8]
80028a14:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80028a18:	e51b1008 	ldr	r1, [fp, #-8]
80028a1c:	e51b0010 	ldr	r0, [fp, #-16]
80028a20:	e12fff33 	blx	r3
80028a24:	e51b3008 	ldr	r3, [fp, #-8]
80028a28:	e2833001 	add	r3, r3, #1
80028a2c:	e50b3008 	str	r3, [fp, #-8]
80028a30:	e51b3008 	ldr	r3, [fp, #-8]
80028a34:	e353001f 	cmp	r3, #31
80028a38:	daffffeb 	ble	800289ec <pic_dispatch+0x2c>
80028a3c:	e59f3014 	ldr	r3, [pc, #20]	@ 80028a58 <pic_dispatch+0x98>
80028a40:	e5933000 	ldr	r3, [r3]
80028a44:	e5933000 	ldr	r3, [r3]
80028a48:	e50b300c 	str	r3, [fp, #-12]
80028a4c:	e1a00000 	nop			@ (mov r0, r0)
80028a50:	e24bd004 	sub	sp, fp, #4
80028a54:	e8bd8800 	pop	{fp, pc}
80028a58:	800af680 	.word	0x800af680
80028a5c:	800af684 	.word	0x800af684

80028a60 <ack_timer>:
80028a60:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028a64:	e28db000 	add	fp, sp, #0
80028a68:	e24dd00c 	sub	sp, sp, #12
80028a6c:	e59f3020 	ldr	r3, [pc, #32]	@ 80028a94 <ack_timer+0x34>
80028a70:	e50b3008 	str	r3, [fp, #-8]
80028a74:	e51b3008 	ldr	r3, [fp, #-8]
80028a78:	e283300c 	add	r3, r3, #12
80028a7c:	e3a02001 	mov	r2, #1
80028a80:	e5832000 	str	r2, [r3]
80028a84:	e1a00000 	nop			@ (mov r0, r0)
80028a88:	e28bd000 	add	sp, fp, #0
80028a8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028a90:	e12fff1e 	bx	lr
80028a94:	901e2000 	.word	0x901e2000

80028a98 <timer_init>:
80028a98:	e92d4800 	push	{fp, lr}
80028a9c:	e28db004 	add	fp, sp, #4
80028aa0:	e24dd010 	sub	sp, sp, #16
80028aa4:	e50b0010 	str	r0, [fp, #-16]
80028aa8:	e59f3050 	ldr	r3, [pc, #80]	@ 80028b00 <timer_init+0x68>
80028aac:	e50b3008 	str	r3, [fp, #-8]
80028ab0:	e59f104c 	ldr	r1, [pc, #76]	@ 80028b04 <timer_init+0x6c>
80028ab4:	e59f004c 	ldr	r0, [pc, #76]	@ 80028b08 <timer_init+0x70>
80028ab8:	ebfff4a4 	bl	80025d50 <initlock>
80028abc:	e51b1010 	ldr	r1, [fp, #-16]
80028ac0:	e59f0044 	ldr	r0, [pc, #68]	@ 80028b0c <timer_init+0x74>
80028ac4:	eb000109 	bl	80028ef0 <__divsi3>
80028ac8:	e1a03000 	mov	r3, r0
80028acc:	e1a02003 	mov	r2, r3
80028ad0:	e51b3008 	ldr	r3, [fp, #-8]
80028ad4:	e5832000 	str	r2, [r3]
80028ad8:	e51b3008 	ldr	r3, [fp, #-8]
80028adc:	e2833008 	add	r3, r3, #8
80028ae0:	e3a020e2 	mov	r2, #226	@ 0xe2
80028ae4:	e5832000 	str	r2, [r3]
80028ae8:	e59f1020 	ldr	r1, [pc, #32]	@ 80028b10 <timer_init+0x78>
80028aec:	e3a00004 	mov	r0, #4
80028af0:	ebffff76 	bl	800288d0 <pic_enable>
80028af4:	e1a00000 	nop			@ (mov r0, r0)
80028af8:	e24bd004 	sub	sp, fp, #4
80028afc:	e8bd8800 	pop	{fp, pc}
80028b00:	901e2000 	.word	0x901e2000
80028b04:	80029840 	.word	0x80029840
80028b08:	800af704 	.word	0x800af704
80028b0c:	000f4240 	.word	0x000f4240
80028b10:	80028b14 	.word	0x80028b14

80028b14 <isr_timer>:
80028b14:	e92d4800 	push	{fp, lr}
80028b18:	e28db004 	add	fp, sp, #4
80028b1c:	e24dd008 	sub	sp, sp, #8
80028b20:	e50b0008 	str	r0, [fp, #-8]
80028b24:	e50b100c 	str	r1, [fp, #-12]
80028b28:	e59f0034 	ldr	r0, [pc, #52]	@ 80028b64 <isr_timer+0x50>
80028b2c:	ebfff499 	bl	80025d98 <acquire>
80028b30:	e59f3030 	ldr	r3, [pc, #48]	@ 80028b68 <isr_timer+0x54>
80028b34:	e5933000 	ldr	r3, [r3]
80028b38:	e2833001 	add	r3, r3, #1
80028b3c:	e59f2024 	ldr	r2, [pc, #36]	@ 80028b68 <isr_timer+0x54>
80028b40:	e5823000 	str	r3, [r2]
80028b44:	e59f001c 	ldr	r0, [pc, #28]	@ 80028b68 <isr_timer+0x54>
80028b48:	ebfff40d 	bl	80025b84 <wakeup>
80028b4c:	e59f0010 	ldr	r0, [pc, #16]	@ 80028b64 <isr_timer+0x50>
80028b50:	ebfff49b 	bl	80025dc4 <release>
80028b54:	ebffffc1 	bl	80028a60 <ack_timer>
80028b58:	e1a00000 	nop			@ (mov r0, r0)
80028b5c:	e24bd004 	sub	sp, fp, #4
80028b60:	e8bd8800 	pop	{fp, pc}
80028b64:	800af704 	.word	0x800af704
80028b68:	800af738 	.word	0x800af738

80028b6c <micro_delay>:
80028b6c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028b70:	e28db000 	add	fp, sp, #0
80028b74:	e24dd014 	sub	sp, sp, #20
80028b78:	e50b0010 	str	r0, [fp, #-16]
80028b7c:	e59f3054 	ldr	r3, [pc, #84]	@ 80028bd8 <micro_delay+0x6c>
80028b80:	e50b3008 	str	r3, [fp, #-8]
80028b84:	e51b3008 	ldr	r3, [fp, #-8]
80028b88:	e2833008 	add	r3, r3, #8
80028b8c:	e3a02082 	mov	r2, #130	@ 0x82
80028b90:	e5832000 	str	r2, [r3]
80028b94:	e51b2010 	ldr	r2, [fp, #-16]
80028b98:	e51b3008 	ldr	r3, [fp, #-8]
80028b9c:	e5832000 	str	r2, [r3]
80028ba0:	e1a00000 	nop			@ (mov r0, r0)
80028ba4:	e51b3008 	ldr	r3, [fp, #-8]
80028ba8:	e2833004 	add	r3, r3, #4
80028bac:	e5933000 	ldr	r3, [r3]
80028bb0:	e3530000 	cmp	r3, #0
80028bb4:	cafffffa 	bgt	80028ba4 <micro_delay+0x38>
80028bb8:	e51b3008 	ldr	r3, [fp, #-8]
80028bbc:	e2833008 	add	r3, r3, #8
80028bc0:	e3a02000 	mov	r2, #0
80028bc4:	e5832000 	str	r2, [r3]
80028bc8:	e1a00000 	nop			@ (mov r0, r0)
80028bcc:	e28bd000 	add	sp, fp, #0
80028bd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028bd4:	e12fff1e 	bx	lr
80028bd8:	901e2020 	.word	0x901e2020

80028bdc <uart_init>:
80028bdc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028be0:	e28db000 	add	fp, sp, #0
80028be4:	e24dd014 	sub	sp, sp, #20
80028be8:	e50b0010 	str	r0, [fp, #-16]
80028bec:	e59f20a4 	ldr	r2, [pc, #164]	@ 80028c98 <uart_init+0xbc>
80028bf0:	e51b3010 	ldr	r3, [fp, #-16]
80028bf4:	e5823000 	str	r3, [r2]
80028bf8:	e59f3098 	ldr	r3, [pc, #152]	@ 80028c98 <uart_init+0xbc>
80028bfc:	e5933000 	ldr	r3, [r3]
80028c00:	e2833024 	add	r3, r3, #36	@ 0x24
80028c04:	e3a0204e 	mov	r2, #78	@ 0x4e
80028c08:	e5832000 	str	r2, [r3]
80028c0c:	e3a03c96 	mov	r3, #38400	@ 0x9600
80028c10:	e50b3008 	str	r3, [fp, #-8]
80028c14:	e51b3008 	ldr	r3, [fp, #-8]
80028c18:	e2833e96 	add	r3, r3, #2400	@ 0x960
80028c1c:	e1a02103 	lsl	r2, r3, #2
80028c20:	e59f3070 	ldr	r3, [pc, #112]	@ 80028c98 <uart_init+0xbc>
80028c24:	e5933000 	ldr	r3, [r3]
80028c28:	e2833028 	add	r3, r3, #40	@ 0x28
80028c2c:	e59f1068 	ldr	r1, [pc, #104]	@ 80028c9c <uart_init+0xc0>
80028c30:	e0821291 	umull	r1, r2, r1, r2
80028c34:	e1a025a2 	lsr	r2, r2, #11
80028c38:	e5832000 	str	r2, [r3]
80028c3c:	e59f3054 	ldr	r3, [pc, #84]	@ 80028c98 <uart_init+0xbc>
80028c40:	e5933000 	ldr	r3, [r3]
80028c44:	e2833030 	add	r3, r3, #48	@ 0x30
80028c48:	e5933000 	ldr	r3, [r3]
80028c4c:	e59f2044 	ldr	r2, [pc, #68]	@ 80028c98 <uart_init+0xbc>
80028c50:	e5922000 	ldr	r2, [r2]
80028c54:	e2822030 	add	r2, r2, #48	@ 0x30
80028c58:	e3833c03 	orr	r3, r3, #768	@ 0x300
80028c5c:	e3833001 	orr	r3, r3, #1
80028c60:	e5823000 	str	r3, [r2]
80028c64:	e59f302c 	ldr	r3, [pc, #44]	@ 80028c98 <uart_init+0xbc>
80028c68:	e5933000 	ldr	r3, [r3]
80028c6c:	e283302c 	add	r3, r3, #44	@ 0x2c
80028c70:	e5932000 	ldr	r2, [r3]
80028c74:	e59f301c 	ldr	r3, [pc, #28]	@ 80028c98 <uart_init+0xbc>
80028c78:	e5933000 	ldr	r3, [r3]
80028c7c:	e283302c 	add	r3, r3, #44	@ 0x2c
80028c80:	e3822010 	orr	r2, r2, #16
80028c84:	e5832000 	str	r2, [r3]
80028c88:	e1a00000 	nop			@ (mov r0, r0)
80028c8c:	e28bd000 	add	sp, fp, #0
80028c90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028c94:	e12fff1e 	bx	lr
80028c98:	800af73c 	.word	0x800af73c
80028c9c:	1b4e81b5 	.word	0x1b4e81b5

80028ca0 <uart_enable_rx>:
80028ca0:	e92d4800 	push	{fp, lr}
80028ca4:	e28db004 	add	fp, sp, #4
80028ca8:	e59f3020 	ldr	r3, [pc, #32]	@ 80028cd0 <uart_enable_rx+0x30>
80028cac:	e5933000 	ldr	r3, [r3]
80028cb0:	e2833038 	add	r3, r3, #56	@ 0x38
80028cb4:	e3a02010 	mov	r2, #16
80028cb8:	e5832000 	str	r2, [r3]
80028cbc:	e59f1010 	ldr	r1, [pc, #16]	@ 80028cd4 <uart_enable_rx+0x34>
80028cc0:	e3a0000c 	mov	r0, #12
80028cc4:	ebffff01 	bl	800288d0 <pic_enable>
80028cc8:	e1a00000 	nop			@ (mov r0, r0)
80028ccc:	e8bd8800 	pop	{fp, pc}
80028cd0:	800af73c 	.word	0x800af73c
80028cd4:	80028d7c 	.word	0x80028d7c

80028cd8 <uartputc>:
80028cd8:	e92d4800 	push	{fp, lr}
80028cdc:	e28db004 	add	fp, sp, #4
80028ce0:	e24dd008 	sub	sp, sp, #8
80028ce4:	e50b0008 	str	r0, [fp, #-8]
80028ce8:	ea000001 	b	80028cf4 <uartputc+0x1c>
80028cec:	e3a0000a 	mov	r0, #10
80028cf0:	ebffff9d 	bl	80028b6c <micro_delay>
80028cf4:	e59f3030 	ldr	r3, [pc, #48]	@ 80028d2c <uartputc+0x54>
80028cf8:	e5933000 	ldr	r3, [r3]
80028cfc:	e2833018 	add	r3, r3, #24
80028d00:	e5933000 	ldr	r3, [r3]
80028d04:	e2033020 	and	r3, r3, #32
80028d08:	e3530000 	cmp	r3, #0
80028d0c:	1afffff6 	bne	80028cec <uartputc+0x14>
80028d10:	e59f3014 	ldr	r3, [pc, #20]	@ 80028d2c <uartputc+0x54>
80028d14:	e5933000 	ldr	r3, [r3]
80028d18:	e51b2008 	ldr	r2, [fp, #-8]
80028d1c:	e5832000 	str	r2, [r3]
80028d20:	e1a00000 	nop			@ (mov r0, r0)
80028d24:	e24bd004 	sub	sp, fp, #4
80028d28:	e8bd8800 	pop	{fp, pc}
80028d2c:	800af73c 	.word	0x800af73c

80028d30 <uartgetc>:
80028d30:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028d34:	e28db000 	add	fp, sp, #0
80028d38:	e59f3038 	ldr	r3, [pc, #56]	@ 80028d78 <uartgetc+0x48>
80028d3c:	e5933000 	ldr	r3, [r3]
80028d40:	e2833018 	add	r3, r3, #24
80028d44:	e5933000 	ldr	r3, [r3]
80028d48:	e2033010 	and	r3, r3, #16
80028d4c:	e3530000 	cmp	r3, #0
80028d50:	0a000001 	beq	80028d5c <uartgetc+0x2c>
80028d54:	e3e03000 	mvn	r3, #0
80028d58:	ea000002 	b	80028d68 <uartgetc+0x38>
80028d5c:	e59f3014 	ldr	r3, [pc, #20]	@ 80028d78 <uartgetc+0x48>
80028d60:	e5933000 	ldr	r3, [r3]
80028d64:	e5933000 	ldr	r3, [r3]
80028d68:	e1a00003 	mov	r0, r3
80028d6c:	e28bd000 	add	sp, fp, #0
80028d70:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028d74:	e12fff1e 	bx	lr
80028d78:	800af73c 	.word	0x800af73c

80028d7c <isr_uart>:
80028d7c:	e92d4800 	push	{fp, lr}
80028d80:	e28db004 	add	fp, sp, #4
80028d84:	e24dd008 	sub	sp, sp, #8
80028d88:	e50b0008 	str	r0, [fp, #-8]
80028d8c:	e50b100c 	str	r1, [fp, #-12]
80028d90:	e59f303c 	ldr	r3, [pc, #60]	@ 80028dd4 <isr_uart+0x58>
80028d94:	e5933000 	ldr	r3, [r3]
80028d98:	e2833040 	add	r3, r3, #64	@ 0x40
80028d9c:	e5933000 	ldr	r3, [r3]
80028da0:	e2033010 	and	r3, r3, #16
80028da4:	e3530000 	cmp	r3, #0
80028da8:	0a000001 	beq	80028db4 <isr_uart+0x38>
80028dac:	e59f0024 	ldr	r0, [pc, #36]	@ 80028dd8 <isr_uart+0x5c>
80028db0:	ebffe383 	bl	80021bc4 <consoleintr>
80028db4:	e59f3018 	ldr	r3, [pc, #24]	@ 80028dd4 <isr_uart+0x58>
80028db8:	e5933000 	ldr	r3, [r3]
80028dbc:	e2833044 	add	r3, r3, #68	@ 0x44
80028dc0:	e3a02030 	mov	r2, #48	@ 0x30
80028dc4:	e5832000 	str	r2, [r3]
80028dc8:	e1a00000 	nop			@ (mov r0, r0)
80028dcc:	e24bd004 	sub	sp, fp, #4
80028dd0:	e8bd8800 	pop	{fp, pc}
80028dd4:	800af73c 	.word	0x800af73c
80028dd8:	80028d30 	.word	0x80028d30

80028ddc <__udivsi3>:
80028ddc:	e2512001 	subs	r2, r1, #1
80028de0:	012fff1e 	bxeq	lr
80028de4:	3a000036 	bcc	80028ec4 <__udivsi3+0xe8>
80028de8:	e1500001 	cmp	r0, r1
80028dec:	9a000022 	bls	80028e7c <__udivsi3+0xa0>
80028df0:	e1110002 	tst	r1, r2
80028df4:	0a000023 	beq	80028e88 <__udivsi3+0xac>
80028df8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80028dfc:	01a01181 	lsleq	r1, r1, #3
80028e00:	03a03008 	moveq	r3, #8
80028e04:	13a03001 	movne	r3, #1
80028e08:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80028e0c:	31510000 	cmpcc	r1, r0
80028e10:	31a01201 	lslcc	r1, r1, #4
80028e14:	31a03203 	lslcc	r3, r3, #4
80028e18:	3afffffa 	bcc	80028e08 <__udivsi3+0x2c>
80028e1c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80028e20:	31510000 	cmpcc	r1, r0
80028e24:	31a01081 	lslcc	r1, r1, #1
80028e28:	31a03083 	lslcc	r3, r3, #1
80028e2c:	3afffffa 	bcc	80028e1c <__udivsi3+0x40>
80028e30:	e3a02000 	mov	r2, #0
80028e34:	e1500001 	cmp	r0, r1
80028e38:	20400001 	subcs	r0, r0, r1
80028e3c:	21822003 	orrcs	r2, r2, r3
80028e40:	e15000a1 	cmp	r0, r1, lsr #1
80028e44:	204000a1 	subcs	r0, r0, r1, lsr #1
80028e48:	218220a3 	orrcs	r2, r2, r3, lsr #1
80028e4c:	e1500121 	cmp	r0, r1, lsr #2
80028e50:	20400121 	subcs	r0, r0, r1, lsr #2
80028e54:	21822123 	orrcs	r2, r2, r3, lsr #2
80028e58:	e15001a1 	cmp	r0, r1, lsr #3
80028e5c:	204001a1 	subcs	r0, r0, r1, lsr #3
80028e60:	218221a3 	orrcs	r2, r2, r3, lsr #3
80028e64:	e3500000 	cmp	r0, #0
80028e68:	11b03223 	lsrsne	r3, r3, #4
80028e6c:	11a01221 	lsrne	r1, r1, #4
80028e70:	1affffef 	bne	80028e34 <__udivsi3+0x58>
80028e74:	e1a00002 	mov	r0, r2
80028e78:	e12fff1e 	bx	lr
80028e7c:	03a00001 	moveq	r0, #1
80028e80:	13a00000 	movne	r0, #0
80028e84:	e12fff1e 	bx	lr
80028e88:	e3510801 	cmp	r1, #65536	@ 0x10000
80028e8c:	21a01821 	lsrcs	r1, r1, #16
80028e90:	23a02010 	movcs	r2, #16
80028e94:	33a02000 	movcc	r2, #0
80028e98:	e3510c01 	cmp	r1, #256	@ 0x100
80028e9c:	21a01421 	lsrcs	r1, r1, #8
80028ea0:	22822008 	addcs	r2, r2, #8
80028ea4:	e3510010 	cmp	r1, #16
80028ea8:	21a01221 	lsrcs	r1, r1, #4
80028eac:	22822004 	addcs	r2, r2, #4
80028eb0:	e3510004 	cmp	r1, #4
80028eb4:	82822003 	addhi	r2, r2, #3
80028eb8:	908220a1 	addls	r2, r2, r1, lsr #1
80028ebc:	e1a00230 	lsr	r0, r0, r2
80028ec0:	e12fff1e 	bx	lr
80028ec4:	e3500000 	cmp	r0, #0
80028ec8:	13e00000 	mvnne	r0, #0
80028ecc:	ea000059 	b	80029038 <__aeabi_idiv0>

80028ed0 <__aeabi_uidivmod>:
80028ed0:	e3510000 	cmp	r1, #0
80028ed4:	0afffffa 	beq	80028ec4 <__udivsi3+0xe8>
80028ed8:	e92d4003 	push	{r0, r1, lr}
80028edc:	ebffffbe 	bl	80028ddc <__udivsi3>
80028ee0:	e8bd4006 	pop	{r1, r2, lr}
80028ee4:	e0030092 	mul	r3, r2, r0
80028ee8:	e0411003 	sub	r1, r1, r3
80028eec:	e12fff1e 	bx	lr

80028ef0 <__divsi3>:
80028ef0:	e3510000 	cmp	r1, #0
80028ef4:	0a000043 	beq	80029008 <.divsi3_skip_div0_test+0x110>

80028ef8 <.divsi3_skip_div0_test>:
80028ef8:	e020c001 	eor	ip, r0, r1
80028efc:	42611000 	rsbmi	r1, r1, #0
80028f00:	e2512001 	subs	r2, r1, #1
80028f04:	0a000027 	beq	80028fa8 <.divsi3_skip_div0_test+0xb0>
80028f08:	e1b03000 	movs	r3, r0
80028f0c:	42603000 	rsbmi	r3, r0, #0
80028f10:	e1530001 	cmp	r3, r1
80028f14:	9a000026 	bls	80028fb4 <.divsi3_skip_div0_test+0xbc>
80028f18:	e1110002 	tst	r1, r2
80028f1c:	0a000028 	beq	80028fc4 <.divsi3_skip_div0_test+0xcc>
80028f20:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80028f24:	01a01181 	lsleq	r1, r1, #3
80028f28:	03a02008 	moveq	r2, #8
80028f2c:	13a02001 	movne	r2, #1
80028f30:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80028f34:	31510003 	cmpcc	r1, r3
80028f38:	31a01201 	lslcc	r1, r1, #4
80028f3c:	31a02202 	lslcc	r2, r2, #4
80028f40:	3afffffa 	bcc	80028f30 <.divsi3_skip_div0_test+0x38>
80028f44:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80028f48:	31510003 	cmpcc	r1, r3
80028f4c:	31a01081 	lslcc	r1, r1, #1
80028f50:	31a02082 	lslcc	r2, r2, #1
80028f54:	3afffffa 	bcc	80028f44 <.divsi3_skip_div0_test+0x4c>
80028f58:	e3a00000 	mov	r0, #0
80028f5c:	e1530001 	cmp	r3, r1
80028f60:	20433001 	subcs	r3, r3, r1
80028f64:	21800002 	orrcs	r0, r0, r2
80028f68:	e15300a1 	cmp	r3, r1, lsr #1
80028f6c:	204330a1 	subcs	r3, r3, r1, lsr #1
80028f70:	218000a2 	orrcs	r0, r0, r2, lsr #1
80028f74:	e1530121 	cmp	r3, r1, lsr #2
80028f78:	20433121 	subcs	r3, r3, r1, lsr #2
80028f7c:	21800122 	orrcs	r0, r0, r2, lsr #2
80028f80:	e15301a1 	cmp	r3, r1, lsr #3
80028f84:	204331a1 	subcs	r3, r3, r1, lsr #3
80028f88:	218001a2 	orrcs	r0, r0, r2, lsr #3
80028f8c:	e3530000 	cmp	r3, #0
80028f90:	11b02222 	lsrsne	r2, r2, #4
80028f94:	11a01221 	lsrne	r1, r1, #4
80028f98:	1affffef 	bne	80028f5c <.divsi3_skip_div0_test+0x64>
80028f9c:	e35c0000 	cmp	ip, #0
80028fa0:	42600000 	rsbmi	r0, r0, #0
80028fa4:	e12fff1e 	bx	lr
80028fa8:	e13c0000 	teq	ip, r0
80028fac:	42600000 	rsbmi	r0, r0, #0
80028fb0:	e12fff1e 	bx	lr
80028fb4:	33a00000 	movcc	r0, #0
80028fb8:	01a00fcc 	asreq	r0, ip, #31
80028fbc:	03800001 	orreq	r0, r0, #1
80028fc0:	e12fff1e 	bx	lr
80028fc4:	e3510801 	cmp	r1, #65536	@ 0x10000
80028fc8:	21a01821 	lsrcs	r1, r1, #16
80028fcc:	23a02010 	movcs	r2, #16
80028fd0:	33a02000 	movcc	r2, #0
80028fd4:	e3510c01 	cmp	r1, #256	@ 0x100
80028fd8:	21a01421 	lsrcs	r1, r1, #8
80028fdc:	22822008 	addcs	r2, r2, #8
80028fe0:	e3510010 	cmp	r1, #16
80028fe4:	21a01221 	lsrcs	r1, r1, #4
80028fe8:	22822004 	addcs	r2, r2, #4
80028fec:	e3510004 	cmp	r1, #4
80028ff0:	82822003 	addhi	r2, r2, #3
80028ff4:	908220a1 	addls	r2, r2, r1, lsr #1
80028ff8:	e35c0000 	cmp	ip, #0
80028ffc:	e1a00233 	lsr	r0, r3, r2
80029000:	42600000 	rsbmi	r0, r0, #0
80029004:	e12fff1e 	bx	lr
80029008:	e3500000 	cmp	r0, #0
8002900c:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029010:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029014:	ea000007 	b	80029038 <__aeabi_idiv0>

80029018 <__aeabi_idivmod>:
80029018:	e3510000 	cmp	r1, #0
8002901c:	0afffff9 	beq	80029008 <.divsi3_skip_div0_test+0x110>
80029020:	e92d4003 	push	{r0, r1, lr}
80029024:	ebffffb3 	bl	80028ef8 <.divsi3_skip_div0_test>
80029028:	e8bd4006 	pop	{r1, r2, lr}
8002902c:	e0030092 	mul	r3, r2, r0
80029030:	e0411003 	sub	r1, r1, r3
80029034:	e12fff1e 	bx	lr

80029038 <__aeabi_idiv0>:
80029038:	e12fff1e 	bx	lr
