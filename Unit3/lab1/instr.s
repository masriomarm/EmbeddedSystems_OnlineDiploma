
Masri.elf:     file format elf32-littlearm


Disassembly of section .reset:

00010000 <reset>:
   10000:	e59fd004 	ldr	sp, [pc, #4]	; 1000c <stop+0x4>
   10004:	eb000001 	bl	10010 <main>

00010008 <stop>:
   10008:	eafffffe 	b	10008 <stop>
   1000c:	000110e8 	andeq	r1, r1, r8, ror #1

Disassembly of section .text:

00010010 <main>:
   10010:	e92d4800 	push	{fp, lr}
   10014:	e28db004 	add	fp, sp, #4
   10018:	e59f0008 	ldr	r0, [pc, #8]	; 10028 <main+0x18>
   1001c:	eb000002 	bl	1002c <uart_send_string>
   10020:	e1a00000 	nop			; (mov r0, r0)
   10024:	e8bd8800 	pop	{fp, pc}
   10028:	00010084 	andeq	r0, r1, r4, lsl #1

0001002c <uart_send_string>:
   1002c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10030:	e28db000 	add	fp, sp, #0
   10034:	e24dd00c 	sub	sp, sp, #12
   10038:	e50b0008 	str	r0, [fp, #-8]
   1003c:	ea000006 	b	1005c <uart_send_string+0x30>
   10040:	e51b3008 	ldr	r3, [fp, #-8]
   10044:	e5d32000 	ldrb	r2, [r3]
   10048:	e59f3030 	ldr	r3, [pc, #48]	; 10080 <uart_send_string+0x54>
   1004c:	e5832000 	str	r2, [r3]
   10050:	e51b3008 	ldr	r3, [fp, #-8]
   10054:	e2833001 	add	r3, r3, #1
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3008 	ldr	r3, [fp, #-8]
   10060:	e5d33000 	ldrb	r3, [r3]
   10064:	e3530000 	cmp	r3, #0
   10068:	1afffff4 	bne	10040 <uart_send_string+0x14>
   1006c:	e1a00000 	nop			; (mov r0, r0)
   10070:	e1a00000 	nop			; (mov r0, r0)
   10074:	e28bd000 	add	sp, fp, #0
   10078:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1007c:	e12fff1e 	bx	lr
   10080:	101f1000 	andsne	r1, pc, r0

Disassembly of section .data:

00010084 <string_buffer>:
   10084:	7261656c 	rsbvc	r6, r1, #108, 10	; 0x1b000000
   10088:	6e692d6e 	cdpvs	13, 6, cr2, cr9, cr14, {3}
   1008c:	7065642d 	rsbvc	r6, r5, sp, lsr #8
   10090:	203a6874 	eorscs	r6, sl, r4, ror r8
   10094:	616d4f3c 	cmnvs	sp, ip, lsr pc
   10098:	6c452072 	mcrrvs	0, 7, r2, r5, cr2
   1009c:	7273616d 	rsbsvc	r6, r3, #1073741851	; 0x4000001b
   100a0:	00003e69 	andeq	r3, r0, r9, ror #28
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002741 	andeq	r2, r0, r1, asr #14
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001d 	andeq	r0, r0, sp, lsl r0
  10:	45543505 	ldrbmi	r3, [r4, #-1285]	; 0xfffffafb
  14:	0506004a 	streq	r0, [r6, #-74]	; 0xffffffb6
  18:	01090108 	tsteq	r9, r8, lsl #2
  1c:	01140412 	tsteq	r4, r2, lsl r4
  20:	03170115 	tsteq	r7, #1073741829	; 0x40000005
  24:	011a0118 	tsteq	sl, r8, lsl r1

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <StackTop+0x10bfc3c>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	72412055 	subvc	r2, r1, #85	; 0x55
   c:	6d45206d 	stclvs	0, cr2, [r5, #-436]	; 0xfffffe4c
  10:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  14:	54206465 	strtpl	r6, [r0], #-1125	; 0xfffffb9b
  18:	636c6f6f 	cmnvs	ip, #444	; 0x1bc
  1c:	6e696168 	powvsez	f6, f1, #0.0
  20:	2e303120 	rsfcssp	f3, f0, f0
  24:	30322d33 	eorscc	r2, r2, r3, lsr sp
  28:	302e3132 	eorcc	r3, lr, r2, lsr r1
  2c:	31202937 			; <UNDEFINED> instruction: 0x31202937
  30:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  34:	30322031 	eorscc	r2, r2, r1, lsr r0
  38:	36303132 			; <UNDEFINED> instruction: 0x36303132
  3c:	28203132 	stmdacs	r0!, {r1, r4, r5, r8, ip, sp}
  40:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  44:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
	...

Masri.elf:     file format elf32-littlearm


Disassembly of section .reset:

00010000 <reset>:
   10000:	e59fd004 	ldr	sp, [pc, #4]	; 1000c <stop+0x4>
   10004:	eb000001 	bl	10010 <main>

00010008 <stop>:
   10008:	eafffffe 	b	10008 <stop>
   1000c:	000110e8 	andeq	r1, r1, r8, ror #1

Disassembly of section .text:

00010010 <main>:
   10010:	e92d4800 	push	{fp, lr}
   10014:	e28db004 	add	fp, sp, #4
   10018:	e59f0008 	ldr	r0, [pc, #8]	; 10028 <main+0x18>
   1001c:	eb000002 	bl	1002c <uart_send_string>
   10020:	e1a00000 	nop			; (mov r0, r0)
   10024:	e8bd8800 	pop	{fp, pc}
   10028:	00010084 	andeq	r0, r1, r4, lsl #1

0001002c <uart_send_string>:
   1002c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10030:	e28db000 	add	fp, sp, #0
   10034:	e24dd00c 	sub	sp, sp, #12
   10038:	e50b0008 	str	r0, [fp, #-8]
   1003c:	ea000006 	b	1005c <uart_send_string+0x30>
   10040:	e51b3008 	ldr	r3, [fp, #-8]
   10044:	e5d32000 	ldrb	r2, [r3]
   10048:	e59f3030 	ldr	r3, [pc, #48]	; 10080 <uart_send_string+0x54>
   1004c:	e5832000 	str	r2, [r3]
   10050:	e51b3008 	ldr	r3, [fp, #-8]
   10054:	e2833001 	add	r3, r3, #1
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3008 	ldr	r3, [fp, #-8]
   10060:	e5d33000 	ldrb	r3, [r3]
   10064:	e3530000 	cmp	r3, #0
   10068:	1afffff4 	bne	10040 <uart_send_string+0x14>
   1006c:	e1a00000 	nop			; (mov r0, r0)
   10070:	e1a00000 	nop			; (mov r0, r0)
   10074:	e28bd000 	add	sp, fp, #0
   10078:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1007c:	e12fff1e 	bx	lr
   10080:	101f1000 	andsne	r1, pc, r0

Disassembly of section .data:

00010084 <string_buffer>:
   10084:	7261656c 	rsbvc	r6, r1, #108, 10	; 0x1b000000
   10088:	6e692d6e 	cdpvs	13, 6, cr2, cr9, cr14, {3}
   1008c:	7065642d 	rsbvc	r6, r5, sp, lsr #8
   10090:	203a6874 	eorscs	r6, sl, r4, ror r8
   10094:	616d4f3c 	cmnvs	sp, ip, lsr pc
   10098:	6c452072 	mcrrvs	0, 7, r2, r5, cr2
   1009c:	7273616d 	rsbsvc	r6, r3, #1073741851	; 0x4000001b
   100a0:	00003e69 	andeq	r3, r0, r9, ror #28
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	45363239 	ldrmi	r3, [r6, #-569]!	; 0xfffffdc7
  18:	00532d4a 	subseq	r2, r3, sl, asr #26
  1c:	01080506 	tsteq	r8, r6, lsl #10
  20:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <StackTop+0x10bfc3c>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	72412055 	subvc	r2, r1, #85	; 0x55
   c:	6d45206d 	stclvs	0, cr2, [r5, #-436]	; 0xfffffe4c
  10:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  14:	54206465 	strtpl	r6, [r0], #-1125	; 0xfffffb9b
  18:	636c6f6f 	cmnvs	ip, #444	; 0x1bc
  1c:	6e696168 	powvsez	f6, f1, #0.0
  20:	2e303120 	rsfcssp	f3, f0, f0
  24:	30322d33 	eorscc	r2, r2, r3, lsr sp
  28:	302e3132 	eorcc	r3, lr, r2, lsr r1
  2c:	31202937 			; <UNDEFINED> instruction: 0x31202937
  30:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  34:	30322031 	eorscc	r2, r2, r1, lsr r0
  38:	36303132 			; <UNDEFINED> instruction: 0x36303132
  3c:	28203132 	stmdacs	r0!, {r1, r4, r5, r8, ip, sp}
  40:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  44:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
	...
