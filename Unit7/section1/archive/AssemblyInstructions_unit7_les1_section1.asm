
unit7_les1_section1.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__ctors_end>:
   0:	0c 94 2a 00 	jmp	0x54	; 0x54 <__init>
   4:	0c 94 36 00 	jmp	0x6c	; 0x6c <__vector_1>
   8:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
   c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  10:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  14:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  18:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  1c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  20:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  24:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  28:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  2c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  30:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  34:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  38:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  3c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  40:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  44:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  48:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  4c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  50:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>

00000054 <__init>:
  54:	11 24       	eor	r1, r1
  56:	1f be       	out	0x3f, r1	; 63
  58:	cf e5       	ldi	r28, 0x5F	; 95
  5a:	d8 e0       	ldi	r29, 0x08	; 8
  5c:	de bf       	out	0x3e, r29	; 62
  5e:	cd bf       	out	0x3d, r28	; 61
  60:	0e 94 48 00 	call	0x90	; 0x90 <main>
  64:	0c 94 54 00 	jmp	0xa8	; 0xa8 <_exit>

00000068 <__bad_interrupt>:
  68:	0c 94 00 00 	jmp	0	; 0x0 <__ctors_end>

0000006c <__vector_1>:
  6c:	1f 92       	push	r1
  6e:	0f 92       	push	r0
  70:	0f b6       	in	r0, 0x3f	; 63
  72:	0f 92       	push	r0
  74:	11 24       	eor	r1, r1
  76:	8f 93       	push	r24
  78:	9f 93       	push	r25
  7a:	92 b3       	in	r25, 0x12	; 18
  7c:	88 e0       	ldi	r24, 0x08	; 8
  7e:	89 27       	eor	r24, r25
  80:	82 bb       	out	0x12, r24	; 18
  82:	9f 91       	pop	r25
  84:	8f 91       	pop	r24
  86:	0f 90       	pop	r0
  88:	0f be       	out	0x3f, r0	; 63
  8a:	0f 90       	pop	r0
  8c:	1f 90       	pop	r1
  8e:	18 95       	reti

00000090 <main>:
  90:	8a 98       	cbi	0x11, 2	; 17
  92:	92 98       	cbi	0x12, 2	; 18
  94:	8b 9a       	sbi	0x11, 3	; 17
  96:	93 9a       	sbi	0x12, 3	; 18
  98:	85 b7       	in	r24, 0x35	; 53
  9a:	83 60       	ori	r24, 0x03	; 3
  9c:	85 bf       	out	0x35, r24	; 53
  9e:	8b b7       	in	r24, 0x3b	; 59
  a0:	80 64       	ori	r24, 0x40	; 64
  a2:	8b bf       	out	0x3b, r24	; 59
  a4:	78 94       	sei
  a6:	ff cf       	rjmp	.-2      	; 0xa6 <main+0x16>

000000a8 <_exit>:
  a8:	f8 94       	cli

000000aa <__stop_program>:
  aa:	ff cf       	rjmp	.-2      	; 0xaa <__stop_program>

Disassembly of section .comment:

00000000 <.comment>:
   0:	47 43       	sbci	r20, 0x37	; 55
   2:	43 3a       	cpi	r20, 0xA3	; 163
   4:	20 28       	or	r2, r0
   6:	47 4e       	sbci	r20, 0xE7	; 231
   8:	55 29       	or	r21, r5
   a:	20 35       	cpi	r18, 0x50	; 80
   c:	2e 34       	cpi	r18, 0x4E	; 78
   e:	2e 30       	cpi	r18, 0x0E	; 14
	...

Disassembly of section .note.gnu.avr.deviceinfo:

00000000 <.note.gnu.avr.deviceinfo>:
   0:	04 00       	.word	0x0004	; ????
   2:	00 00       	nop
   4:	2b 00       	.word	0x002b	; ????
   6:	00 00       	nop
   8:	01 00       	.word	0x0001	; ????
   a:	00 00       	nop
   c:	41 56       	subi	r20, 0x61	; 97
   e:	52 00       	.word	0x0052	; ????
  10:	00 00       	nop
  12:	00 00       	nop
  14:	00 80       	ld	r0, Z
  16:	00 00       	nop
  18:	60 00       	.word	0x0060	; ????
  1a:	00 00       	nop
  1c:	00 08       	sbc	r0, r0
  1e:	00 00       	nop
  20:	00 00       	nop
  22:	00 00       	nop
  24:	00 04       	cpc	r0, r0
  26:	00 00       	nop
  28:	08 00       	.word	0x0008	; ????
  2a:	00 00       	nop
  2c:	01 00       	.word	0x0001	; ????
  2e:	00 00       	nop
  30:	00 61       	ori	r16, 0x10	; 16
  32:	74 6d       	ori	r23, 0xD4	; 212
  34:	65 67       	ori	r22, 0x75	; 117
  36:	61 33       	cpi	r22, 0x31	; 49
  38:	32 00       	.word	0x0032	; ????
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	e2 04       	cpc	r14, r2
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	00 00       	nop
   8:	00 00       	nop
   a:	04 01       	movw	r0, r8
	...
  14:	02 0f       	add	r16, r18
  16:	00 00       	nop
  18:	00 01       	movw	r0, r0
  1a:	08 03       	fmul	r16, r16
  1c:	17 00       	.word	0x0017	; ????
  1e:	00 00       	nop
  20:	02 07       	cpc	r16, r18
  22:	04 14       	cp	r0, r4
  24:	00 00       	nop
  26:	00 05       	cpc	r16, r0
  28:	1b 00       	.word	0x001b	; ????
  2a:	00 00       	nop
  2c:	ff 03       	fmulsu	r23, r23
  2e:	00 06       	cpc	r0, r16
  30:	20 00       	.word	0x0020	; ????
  32:	00 00       	nop
  34:	00 00       	nop
  36:	22 00       	.word	0x0022	; ????
  38:	00 00       	nop
  3a:	01 05       	cpc	r16, r1
  3c:	03 00       	.word	0x0003	; ????
  3e:	00 81       	ld	r16, Z
  40:	00 07       	cpc	r16, r16
  42:	29 00       	.word	0x0029	; ????
  44:	00 00       	nop
  46:	00 00       	nop
  48:	1b 00       	.word	0x001b	; ????
  4a:	00 00       	nop
  4c:	01 05       	cpc	r16, r1
  4e:	03 3e       	cpi	r16, 0xE3	; 227
  50:	00 80       	ld	r0, Z
  52:	00 08       	sbc	r0, r0
  54:	2e 00       	.word	0x002e	; ????
  56:	00 00       	nop
  58:	00 00       	nop
  5a:	14 00       	.word	0x0014	; ????
  5c:	00 00       	nop
  5e:	01 05       	cpc	r16, r1
  60:	03 3d       	cpi	r16, 0xD3	; 211
  62:	00 80       	ld	r0, Z
  64:	00 09       	sbc	r16, r0
  66:	33 00       	.word	0x0033	; ????
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	14 00       	.word	0x0014	; ????
  6e:	00 00       	nop
  70:	01 05       	cpc	r16, r1
  72:	03 3c       	cpi	r16, 0xC3	; 195
  74:	00 80       	ld	r0, Z
  76:	00 0a       	sbc	r0, r16
  78:	38 00       	.word	0x0038	; ????
  7a:	00 00       	nop
  7c:	00 00       	nop
  7e:	14 00       	.word	0x0014	; ????
  80:	00 00       	nop
  82:	01 05       	cpc	r16, r1
  84:	03 41       	sbci	r16, 0x13	; 19
  86:	00 80       	ld	r0, Z
  88:	00 0b       	sbc	r16, r16
  8a:	3e 00       	.word	0x003e	; ????
  8c:	00 00       	nop
  8e:	00 00       	nop
  90:	14 00       	.word	0x0014	; ????
  92:	00 00       	nop
  94:	01 05       	cpc	r16, r1
  96:	03 5b       	subi	r16, 0xB3	; 179
  98:	00 80       	ld	r0, Z
  9a:	00 0c       	add	r0, r0
  9c:	43 00       	.word	0x0043	; ????
  9e:	00 00       	nop
  a0:	00 00       	nop
  a2:	14 00       	.word	0x0014	; ????
  a4:	00 00       	nop
  a6:	01 05       	cpc	r16, r1
  a8:	03 5a       	subi	r16, 0xA3	; 163
  aa:	00 80       	ld	r0, Z
  ac:	00 0d       	add	r16, r0
  ae:	48 00       	.word	0x0048	; ????
  b0:	00 00       	nop
  b2:	00 00       	nop
  b4:	14 00       	.word	0x0014	; ????
  b6:	00 00       	nop
  b8:	01 05       	cpc	r16, r1
  ba:	03 55       	subi	r16, 0x53	; 83
  bc:	00 80       	ld	r0, Z
  be:	00 0e       	add	r0, r16
  c0:	4e 00       	.word	0x004e	; ????
  c2:	00 00       	nop
  c4:	00 00       	nop
  c6:	14 00       	.word	0x0014	; ????
  c8:	00 00       	nop
  ca:	01 05       	cpc	r16, r1
  cc:	03 54       	subi	r16, 0x43	; 67
  ce:	00 80       	ld	r0, Z
  d0:	00 0f       	add	r16, r16
  d2:	55 00       	.word	0x0055	; ????
  d4:	00 00       	nop
  d6:	00 00       	nop
  d8:	14 00       	.word	0x0014	; ????
  da:	00 00       	nop
  dc:	01 05       	cpc	r16, r1
  de:	03 53       	subi	r16, 0x33	; 51
  e0:	00 80       	ld	r0, Z
  e2:	00 10       	cpse	r0, r0
  e4:	5b 00       	.word	0x005b	; ????
  e6:	00 00       	nop
  e8:	00 00       	nop
  ea:	14 00       	.word	0x0014	; ????
  ec:	00 00       	nop
  ee:	01 05       	cpc	r16, r1
  f0:	03 52       	subi	r16, 0x23	; 35
  f2:	00 80       	ld	r0, Z
  f4:	00 11       	cpse	r16, r0
  f6:	61 00       	.word	0x0061	; ????
  f8:	00 00       	nop
  fa:	00 00       	nop
  fc:	14 00       	.word	0x0014	; ????
  fe:	00 00       	nop
 100:	01 05       	cpc	r16, r1
 102:	03 5c       	subi	r16, 0xC3	; 195
 104:	00 80       	ld	r0, Z
 106:	00 12       	cpse	r0, r16
 108:	66 00       	.word	0x0066	; ????
 10a:	00 00       	nop
 10c:	00 00       	nop
 10e:	14 00       	.word	0x0014	; ????
 110:	00 00       	nop
 112:	01 05       	cpc	r16, r1
 114:	03 59       	subi	r16, 0x93	; 147
 116:	00 80       	ld	r0, Z
 118:	00 13       	cpse	r16, r16
 11a:	6c 00       	.word	0x006c	; ????
 11c:	00 00       	nop
 11e:	00 00       	nop
 120:	14 00       	.word	0x0014	; ????
 122:	00 00       	nop
 124:	01 05       	cpc	r16, r1
 126:	03 58       	subi	r16, 0x83	; 131
 128:	00 80       	ld	r0, Z
 12a:	00 14       	cp	r0, r0
 12c:	71 00       	.word	0x0071	; ????
 12e:	00 00       	nop
 130:	00 00       	nop
 132:	14 00       	.word	0x0014	; ????
 134:	00 00       	nop
 136:	01 05       	cpc	r16, r1
 138:	03 59       	subi	r16, 0x93	; 147
 13a:	00 80       	ld	r0, Z
 13c:	00 15       	cp	r16, r0
 13e:	77 00       	.word	0x0077	; ????
 140:	00 00       	nop
 142:	00 00       	nop
 144:	14 00       	.word	0x0014	; ????
 146:	00 00       	nop
 148:	01 05       	cpc	r16, r1
 14a:	03 58       	subi	r16, 0x83	; 131
 14c:	00 80       	ld	r0, Z
 14e:	00 16       	cp	r0, r16
 150:	7c 00       	.word	0x007c	; ????
 152:	00 00       	nop
 154:	00 00       	nop
 156:	14 00       	.word	0x0014	; ????
 158:	00 00       	nop
 15a:	01 05       	cpc	r16, r1
 15c:	03 45       	sbci	r16, 0x53	; 83
 15e:	00 80       	ld	r0, Z
 160:	00 17       	cp	r16, r16
 162:	82 00       	.word	0x0082	; ????
 164:	00 00       	nop
 166:	00 00       	nop
 168:	14 00       	.word	0x0014	; ????
 16a:	00 00       	nop
 16c:	01 05       	cpc	r16, r1
 16e:	03 44       	sbci	r16, 0x43	; 67
 170:	00 80       	ld	r0, Z
 172:	00 18       	sub	r0, r0
 174:	88 00       	.word	0x0088	; ????
 176:	00 00       	nop
 178:	00 00       	nop
 17a:	14 00       	.word	0x0014	; ????
 17c:	00 00       	nop
 17e:	01 05       	cpc	r16, r1
 180:	03 43       	sbci	r16, 0x33	; 51
 182:	00 80       	ld	r0, Z
 184:	00 19       	sub	r16, r0
 186:	8d 00       	.word	0x008d	; ????
 188:	00 00       	nop
 18a:	00 00       	nop
 18c:	14 00       	.word	0x0014	; ????
 18e:	00 00       	nop
 190:	01 05       	cpc	r16, r1
 192:	03 42       	sbci	r16, 0x23	; 35
 194:	00 80       	ld	r0, Z
 196:	00 1a       	sub	r0, r16
 198:	92 00       	.word	0x0092	; ????
 19a:	00 00       	nop
 19c:	00 00       	nop
 19e:	14 00       	.word	0x0014	; ????
 1a0:	00 00       	nop
 1a2:	01 05       	cpc	r16, r1
 1a4:	03 59       	subi	r16, 0x93	; 147
 1a6:	00 80       	ld	r0, Z
 1a8:	00 1b       	sub	r16, r16
 1aa:	98 00       	.word	0x0098	; ????
 1ac:	00 00       	nop
 1ae:	00 00       	nop
 1b0:	14 00       	.word	0x0014	; ????
 1b2:	00 00       	nop
 1b4:	01 05       	cpc	r16, r1
 1b6:	03 58       	subi	r16, 0x83	; 131
 1b8:	00 80       	ld	r0, Z
 1ba:	00 1c       	adc	r0, r0
 1bc:	9d 00       	.word	0x009d	; ????
 1be:	00 00       	nop
 1c0:	00 00       	nop
 1c2:	14 00       	.word	0x0014	; ????
 1c4:	00 00       	nop
 1c6:	01 05       	cpc	r16, r1
 1c8:	03 4f       	sbci	r16, 0xF3	; 243
 1ca:	00 80       	ld	r0, Z
 1cc:	00 1d       	adc	r16, r0
 1ce:	a4 00       	.word	0x00a4	; ????
 1d0:	00 00       	nop
 1d2:	00 00       	nop
 1d4:	14 00       	.word	0x0014	; ????
 1d6:	00 00       	nop
 1d8:	01 05       	cpc	r16, r1
 1da:	03 4e       	sbci	r16, 0xE3	; 227
 1dc:	00 80       	ld	r0, Z
 1de:	00 1e       	adc	r0, r16
 1e0:	ab 00       	.word	0x00ab	; ????
 1e2:	00 00       	nop
 1e4:	00 00       	nop
 1e6:	1b 00       	.word	0x001b	; ????
 1e8:	00 00       	nop
 1ea:	01 05       	cpc	r16, r1
 1ec:	03 4c       	sbci	r16, 0xC3	; 195
 1ee:	00 80       	ld	r0, Z
 1f0:	00 1f       	adc	r16, r16
 1f2:	b1 00       	.word	0x00b1	; ????
 1f4:	00 00       	nop
 1f6:	00 00       	nop
 1f8:	1b 00       	.word	0x001b	; ????
 1fa:	00 00       	nop
 1fc:	01 05       	cpc	r16, r1
 1fe:	03 4a       	sbci	r16, 0xA3	; 163
 200:	00 80       	ld	r0, Z
 202:	00 20       	and	r0, r0
 204:	b7 00       	.word	0x00b7	; ????
 206:	00 00       	nop
 208:	00 00       	nop
 20a:	1b 00       	.word	0x001b	; ????
 20c:	00 00       	nop
 20e:	01 05       	cpc	r16, r1
 210:	03 48       	sbci	r16, 0x83	; 131
 212:	00 80       	ld	r0, Z
 214:	00 21       	and	r16, r0
 216:	bd 00       	.word	0x00bd	; ????
 218:	00 00       	nop
 21a:	00 00       	nop
 21c:	1b 00       	.word	0x001b	; ????
 21e:	00 00       	nop
 220:	01 05       	cpc	r16, r1
 222:	03 46       	sbci	r16, 0x63	; 99
 224:	00 80       	ld	r0, Z
 226:	00 22       	and	r0, r16
 228:	c2 00       	.word	0x00c2	; ????
 22a:	00 00       	nop
 22c:	00 00       	nop
 22e:	14 00       	.word	0x0014	; ????
 230:	00 00       	nop
 232:	01 05       	cpc	r16, r1
 234:	03 2f       	mov	r16, r19
 236:	00 80       	ld	r0, Z
 238:	00 23       	and	r16, r16
 23a:	c7 00       	.word	0x00c7	; ????
 23c:	00 00       	nop
 23e:	00 00       	nop
 240:	14 00       	.word	0x0014	; ????
 242:	00 00       	nop
 244:	01 05       	cpc	r16, r1
 246:	03 2e       	mov	r0, r19
 248:	00 80       	ld	r0, Z
 24a:	00 24       	eor	r0, r0
 24c:	cc 00       	.word	0x00cc	; ????
 24e:	00 00       	nop
 250:	00 00       	nop
 252:	14 00       	.word	0x0014	; ????
 254:	00 00       	nop
 256:	01 05       	cpc	r16, r1
 258:	03 2d       	mov	r16, r3
 25a:	00 80       	ld	r0, Z
 25c:	00 25       	eor	r16, r0
 25e:	d1 00       	.word	0x00d1	; ????
 260:	00 00       	nop
 262:	00 00       	nop
 264:	14 00       	.word	0x0014	; ????
 266:	00 00       	nop
 268:	01 05       	cpc	r16, r1
 26a:	03 2c       	mov	r0, r3
 26c:	00 80       	ld	r0, Z
 26e:	00 26       	eor	r0, r16
 270:	d5 00       	.word	0x00d5	; ????
 272:	00 00       	nop
 274:	00 00       	nop
 276:	14 00       	.word	0x0014	; ????
 278:	00 00       	nop
 27a:	01 05       	cpc	r16, r1
 27c:	03 2b       	or	r16, r19
 27e:	00 80       	ld	r0, Z
 280:	00 27       	eor	r16, r16
 282:	db 00       	.word	0x00db	; ????
 284:	00 00       	nop
 286:	00 00       	nop
 288:	14 00       	.word	0x0014	; ????
 28a:	00 00       	nop
 28c:	01 05       	cpc	r16, r1
 28e:	03 2a       	or	r0, r19
 290:	00 80       	ld	r0, Z
 292:	00 28       	or	r0, r0
 294:	e1 00       	.word	0x00e1	; ????
 296:	00 00       	nop
 298:	00 00       	nop
 29a:	14 00       	.word	0x0014	; ????
 29c:	00 00       	nop
 29e:	01 05       	cpc	r16, r1
 2a0:	03 40       	sbci	r16, 0x03	; 3
 2a2:	00 80       	ld	r0, Z
 2a4:	00 29       	or	r16, r0
 2a6:	e7 00       	.word	0x00e7	; ????
 2a8:	00 00       	nop
 2aa:	00 00       	nop
 2ac:	14 00       	.word	0x0014	; ????
 2ae:	00 00       	nop
 2b0:	01 05       	cpc	r16, r1
 2b2:	03 40       	sbci	r16, 0x03	; 3
 2b4:	00 80       	ld	r0, Z
 2b6:	00 2a       	or	r0, r16
 2b8:	ed 00       	.word	0x00ed	; ????
 2ba:	00 00       	nop
 2bc:	00 00       	nop
 2be:	14 00       	.word	0x0014	; ????
 2c0:	00 00       	nop
 2c2:	01 05       	cpc	r16, r1
 2c4:	03 29       	or	r16, r3
 2c6:	00 80       	ld	r0, Z
 2c8:	00 2b       	or	r16, r16
 2ca:	f3 00       	.word	0x00f3	; ????
 2cc:	00 00       	nop
 2ce:	00 00       	nop
 2d0:	14 00       	.word	0x0014	; ????
 2d2:	00 00       	nop
 2d4:	01 05       	cpc	r16, r1
 2d6:	03 50       	subi	r16, 0x03	; 3
 2d8:	00 80       	ld	r0, Z
 2da:	00 2c       	mov	r0, r0
 2dc:	f9 00       	.word	0x00f9	; ????
 2de:	00 00       	nop
 2e0:	00 00       	nop
 2e2:	14 00       	.word	0x0014	; ????
 2e4:	00 00       	nop
 2e6:	01 05       	cpc	r16, r1
 2e8:	03 28       	or	r0, r3
 2ea:	00 80       	ld	r0, Z
 2ec:	00 2d       	mov	r16, r0
 2ee:	fe 00       	.word	0x00fe	; ????
 2f0:	00 00       	nop
 2f2:	00 00       	nop
 2f4:	14 00       	.word	0x0014	; ????
 2f6:	00 00       	nop
 2f8:	01 05       	cpc	r16, r1
 2fa:	03 27       	eor	r16, r19
 2fc:	00 80       	ld	r0, Z
 2fe:	00 2e       	mov	r0, r16
 300:	04 01       	movw	r0, r8
 302:	00 00       	nop
 304:	00 00       	nop
 306:	14 00       	.word	0x0014	; ????
 308:	00 00       	nop
 30a:	01 05       	cpc	r16, r1
 30c:	03 26       	eor	r0, r19
 30e:	00 80       	ld	r0, Z
 310:	00 2f       	mov	r16, r16
 312:	0b 01       	movw	r0, r22
 314:	00 00       	nop
 316:	00 00       	nop
 318:	1b 00       	.word	0x001b	; ????
 31a:	00 00       	nop
 31c:	01 05       	cpc	r16, r1
 31e:	03 24       	eor	r0, r3
 320:	00 80       	ld	r0, Z
 322:	00 30       	cpi	r16, 0x00	; 0
 324:	0f 01       	movw	r0, r30
 326:	00 00       	nop
 328:	00 00       	nop
 32a:	14 00       	.word	0x0014	; ????
 32c:	00 00       	nop
 32e:	01 05       	cpc	r16, r1
 330:	03 50       	subi	r16, 0x03	; 3
 332:	00 80       	ld	r0, Z
 334:	00 31       	cpi	r16, 0x10	; 16
 336:	15 01       	movw	r2, r10
 338:	00 00       	nop
 33a:	00 00       	nop
 33c:	14 00       	.word	0x0014	; ????
 33e:	00 00       	nop
 340:	01 05       	cpc	r16, r1
 342:	03 3b       	cpi	r16, 0xB3	; 179
 344:	00 80       	ld	r0, Z
 346:	00 32       	cpi	r16, 0x20	; 32
 348:	1b 01       	movw	r2, r22
 34a:	00 00       	nop
 34c:	00 00       	nop
 34e:	14 00       	.word	0x0014	; ????
 350:	00 00       	nop
 352:	01 05       	cpc	r16, r1
 354:	03 3a       	cpi	r16, 0xA3	; 163
 356:	00 80       	ld	r0, Z
 358:	00 33       	cpi	r16, 0x30	; 48
 35a:	20 01       	movw	r4, r0
 35c:	00 00       	nop
 35e:	00 00       	nop
 360:	14 00       	.word	0x0014	; ????
 362:	00 00       	nop
 364:	01 05       	cpc	r16, r1
 366:	03 39       	cpi	r16, 0x93	; 147
 368:	00 80       	ld	r0, Z
 36a:	00 34       	cpi	r16, 0x40	; 64
 36c:	25 01       	movw	r4, r10
 36e:	00 00       	nop
 370:	00 00       	nop
 372:	14 00       	.word	0x0014	; ????
 374:	00 00       	nop
 376:	01 05       	cpc	r16, r1
 378:	03 38       	cpi	r16, 0x83	; 131
 37a:	00 80       	ld	r0, Z
 37c:	00 35       	cpi	r16, 0x50	; 80
 37e:	2b 01       	movw	r4, r22
 380:	00 00       	nop
 382:	00 00       	nop
 384:	14 00       	.word	0x0014	; ????
 386:	00 00       	nop
 388:	01 05       	cpc	r16, r1
 38a:	03 37       	cpi	r16, 0x73	; 115
 38c:	00 80       	ld	r0, Z
 38e:	00 36       	cpi	r16, 0x60	; 96
 390:	30 01       	movw	r6, r0
 392:	00 00       	nop
 394:	00 00       	nop
 396:	14 00       	.word	0x0014	; ????
 398:	00 00       	nop
 39a:	01 05       	cpc	r16, r1
 39c:	03 36       	cpi	r16, 0x63	; 99
 39e:	00 80       	ld	r0, Z
 3a0:	00 37       	cpi	r16, 0x70	; 112
 3a2:	35 01       	movw	r6, r10
 3a4:	00 00       	nop
 3a6:	00 00       	nop
 3a8:	14 00       	.word	0x0014	; ????
 3aa:	00 00       	nop
 3ac:	01 05       	cpc	r16, r1
 3ae:	03 35       	cpi	r16, 0x53	; 83
 3b0:	00 80       	ld	r0, Z
 3b2:	00 38       	cpi	r16, 0x80	; 128
 3b4:	3b 01       	movw	r6, r22
 3b6:	00 00       	nop
 3b8:	00 00       	nop
 3ba:	14 00       	.word	0x0014	; ????
 3bc:	00 00       	nop
 3be:	01 05       	cpc	r16, r1
 3c0:	03 34       	cpi	r16, 0x43	; 67
 3c2:	00 80       	ld	r0, Z
 3c4:	00 39       	cpi	r16, 0x90	; 144
 3c6:	40 01       	movw	r8, r0
 3c8:	00 00       	nop
 3ca:	00 00       	nop
 3cc:	14 00       	.word	0x0014	; ????
 3ce:	00 00       	nop
 3d0:	01 05       	cpc	r16, r1
 3d2:	03 33       	cpi	r16, 0x33	; 51
 3d4:	00 80       	ld	r0, Z
 3d6:	00 3a       	cpi	r16, 0xA0	; 160
 3d8:	45 01       	movw	r8, r10
 3da:	00 00       	nop
 3dc:	00 00       	nop
 3de:	14 00       	.word	0x0014	; ????
 3e0:	00 00       	nop
 3e2:	01 05       	cpc	r16, r1
 3e4:	03 32       	cpi	r16, 0x23	; 35
 3e6:	00 80       	ld	r0, Z
 3e8:	00 3b       	cpi	r16, 0xB0	; 176
 3ea:	4b 01       	movw	r8, r22
 3ec:	00 00       	nop
 3ee:	00 00       	nop
 3f0:	14 00       	.word	0x0014	; ????
 3f2:	00 00       	nop
 3f4:	01 05       	cpc	r16, r1
 3f6:	03 31       	cpi	r16, 0x13	; 19
 3f8:	00 80       	ld	r0, Z
 3fa:	00 3c       	cpi	r16, 0xC0	; 192
 3fc:	50 01       	movw	r10, r0
 3fe:	00 00       	nop
 400:	00 00       	nop
 402:	14 00       	.word	0x0014	; ????
 404:	00 00       	nop
 406:	01 05       	cpc	r16, r1
 408:	03 30       	cpi	r16, 0x03	; 3
 40a:	00 80       	ld	r0, Z
 40c:	00 3d       	cpi	r16, 0xD0	; 208
 40e:	55 01       	movw	r10, r10
 410:	00 00       	nop
 412:	00 00       	nop
 414:	14 00       	.word	0x0014	; ????
 416:	00 00       	nop
 418:	01 05       	cpc	r16, r1
 41a:	03 5f       	subi	r16, 0xF3	; 243
 41c:	00 80       	ld	r0, Z
 41e:	00 3e       	cpi	r16, 0xE0	; 224
 420:	5a 01       	movw	r10, r20
 422:	00 00       	nop
 424:	00 00       	nop
 426:	1b 00       	.word	0x001b	; ????
 428:	00 00       	nop
 42a:	01 05       	cpc	r16, r1
 42c:	03 5d       	subi	r16, 0xD3	; 211
 42e:	00 80       	ld	r0, Z
 430:	00 3f       	cpi	r16, 0xF0	; 240
 432:	5d 01       	movw	r10, r26
 434:	00 00       	nop
 436:	00 00       	nop
 438:	14 00       	.word	0x0014	; ????
 43a:	00 00       	nop
 43c:	01 05       	cpc	r16, r1
 43e:	03 55       	subi	r16, 0x53	; 83
 440:	00 80       	ld	r0, Z
 442:	00 40       	sbci	r16, 0x00	; 0
 444:	63 01       	movw	r12, r6
 446:	00 00       	nop
 448:	00 00       	nop
 44a:	14 00       	.word	0x0014	; ????
 44c:	00 00       	nop
 44e:	01 05       	cpc	r16, r1
 450:	03 54       	subi	r16, 0x43	; 67
 452:	00 80       	ld	r0, Z
 454:	00 41       	sbci	r16, 0x10	; 16
 456:	6a 01       	movw	r12, r20
 458:	00 00       	nop
 45a:	00 00       	nop
 45c:	14 00       	.word	0x0014	; ????
 45e:	00 00       	nop
 460:	01 05       	cpc	r16, r1
 462:	03 51       	subi	r16, 0x13	; 19
 464:	00 80       	ld	r0, Z
 466:	00 42       	sbci	r16, 0x20	; 32
 468:	71 01       	movw	r14, r2
 46a:	00 00       	nop
 46c:	00 00       	nop
 46e:	14 00       	.word	0x0014	; ????
 470:	00 00       	nop
 472:	01 05       	cpc	r16, r1
 474:	03 50       	subi	r16, 0x03	; 3
 476:	00 80       	ld	r0, Z
 478:	00 43       	sbci	r16, 0x30	; 48
 47a:	77 01       	movw	r14, r14
 47c:	00 00       	nop
 47e:	00 00       	nop
 480:	14 00       	.word	0x0014	; ????
 482:	00 00       	nop
 484:	01 05       	cpc	r16, r1
 486:	03 57       	subi	r16, 0x73	; 115
 488:	00 80       	ld	r0, Z
 48a:	00 44       	sbci	r16, 0x40	; 64
 48c:	7d 01       	movw	r14, r26
 48e:	00 00       	nop
 490:	00 00       	nop
 492:	14 00       	.word	0x0014	; ????
 494:	00 00       	nop
 496:	01 05       	cpc	r16, r1
 498:	03 20       	and	r0, r3
 49a:	00 80       	ld	r0, Z
 49c:	00 45       	sbci	r16, 0x50	; 80
 49e:	82 01       	movw	r16, r4
 4a0:	00 00       	nop
 4a2:	00 00       	nop
 4a4:	14 00       	.word	0x0014	; ????
 4a6:	00 00       	nop
 4a8:	01 05       	cpc	r16, r1
 4aa:	03 56       	subi	r16, 0x63	; 99
 4ac:	00 80       	ld	r0, Z
 4ae:	00 46       	sbci	r16, 0x60	; 96
 4b0:	87 01       	movw	r16, r14
 4b2:	00 00       	nop
 4b4:	00 00       	nop
 4b6:	14 00       	.word	0x0014	; ????
 4b8:	00 00       	nop
 4ba:	01 05       	cpc	r16, r1
 4bc:	03 21       	and	r16, r3
 4be:	00 80       	ld	r0, Z
 4c0:	00 47       	sbci	r16, 0x70	; 112
 4c2:	8c 01       	movw	r16, r24
 4c4:	00 00       	nop
 4c6:	00 00       	nop
 4c8:	14 00       	.word	0x0014	; ????
 4ca:	00 00       	nop
 4cc:	01 05       	cpc	r16, r1
 4ce:	03 23       	and	r16, r19
 4d0:	00 80       	ld	r0, Z
 4d2:	00 48       	sbci	r16, 0x80	; 128
 4d4:	91 01       	movw	r18, r2
 4d6:	00 00       	nop
 4d8:	00 00       	nop
 4da:	14 00       	.word	0x0014	; ????
 4dc:	00 00       	nop
 4de:	01 05       	cpc	r16, r1
 4e0:	03 22       	and	r0, r19
 4e2:	00 80       	ld	r0, Z
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11       	cpse	r16, r1
   2:	01 25       	eor	r16, r1
   4:	0e 10       	cpse	r0, r14
   6:	06 00       	.word	0x0006	; ????
   8:	00 02       	muls	r16, r16
   a:	24 00       	.word	0x0024	; ????
   c:	03 0e       	add	r0, r19
   e:	0b 0b       	sbc	r16, r27
  10:	3e 0b       	sbc	r19, r30
  12:	00 00       	nop
  14:	03 24       	eor	r0, r3
  16:	00 03       	mulsu	r16, r16
  18:	0e 0b       	sbc	r16, r30
  1a:	0b 3e       	cpi	r16, 0xEB	; 235
  1c:	0b 00       	.word	0x000b	; ????
  1e:	00 04       	cpc	r0, r0
  20:	01 01       	movw	r0, r2
  22:	49 13       	cpse	r20, r25
  24:	00 00       	nop
  26:	05 21       	and	r16, r5
  28:	00 49       	sbci	r16, 0x90	; 144
  2a:	13 2f       	mov	r17, r19
  2c:	05 00       	.word	0x0005	; ????
  2e:	00 06       	cpc	r0, r16
  30:	34 00       	.word	0x0034	; ????
  32:	03 0e       	add	r0, r19
  34:	3a 0b       	sbc	r19, r26
  36:	3b 0b       	sbc	r19, r27
  38:	49 13       	cpse	r20, r25
  3a:	3f 0c       	add	r3, r15
  3c:	02 0a       	sbc	r0, r18
  3e:	00 00       	nop
  40:	07 34       	cpi	r16, 0x47	; 71
  42:	00 03       	mulsu	r16, r16
  44:	0e 3a       	cpi	r16, 0xAE	; 174
  46:	0b 3b       	cpi	r16, 0xBB	; 187
  48:	0b 49       	sbci	r16, 0x9B	; 155
  4a:	13 3f       	cpi	r17, 0xF3	; 243
  4c:	0c 02       	muls	r16, r28
  4e:	0a 00       	.word	0x000a	; ????
  50:	00 08       	sbc	r0, r0
  52:	34 00       	.word	0x0034	; ????
  54:	03 0e       	add	r0, r19
  56:	3a 0b       	sbc	r19, r26
  58:	3b 0b       	sbc	r19, r27
  5a:	49 13       	cpse	r20, r25
  5c:	3f 0c       	add	r3, r15
  5e:	02 0a       	sbc	r0, r18
  60:	00 00       	nop
  62:	09 34       	cpi	r16, 0x49	; 73
  64:	00 03       	mulsu	r16, r16
  66:	0e 3a       	cpi	r16, 0xAE	; 174
  68:	0b 3b       	cpi	r16, 0xBB	; 187
  6a:	0b 49       	sbci	r16, 0x9B	; 155
  6c:	13 3f       	cpi	r17, 0xF3	; 243
  6e:	0c 02       	muls	r16, r28
  70:	0a 00       	.word	0x000a	; ????
  72:	00 0a       	sbc	r0, r16
  74:	34 00       	.word	0x0034	; ????
  76:	03 0e       	add	r0, r19
  78:	3a 0b       	sbc	r19, r26
  7a:	3b 0b       	sbc	r19, r27
  7c:	49 13       	cpse	r20, r25
  7e:	3f 0c       	add	r3, r15
  80:	02 0a       	sbc	r0, r18
  82:	00 00       	nop
  84:	0b 34       	cpi	r16, 0x4B	; 75
  86:	00 03       	mulsu	r16, r16
  88:	0e 3a       	cpi	r16, 0xAE	; 174
  8a:	0b 3b       	cpi	r16, 0xBB	; 187
  8c:	0b 49       	sbci	r16, 0x9B	; 155
  8e:	13 3f       	cpi	r17, 0xF3	; 243
  90:	0c 02       	muls	r16, r28
  92:	0a 00       	.word	0x000a	; ????
  94:	00 0c       	add	r0, r0
  96:	34 00       	.word	0x0034	; ????
  98:	03 0e       	add	r0, r19
  9a:	3a 0b       	sbc	r19, r26
  9c:	3b 0b       	sbc	r19, r27
  9e:	49 13       	cpse	r20, r25
  a0:	3f 0c       	add	r3, r15
  a2:	02 0a       	sbc	r0, r18
  a4:	00 00       	nop
  a6:	0d 34       	cpi	r16, 0x4D	; 77
  a8:	00 03       	mulsu	r16, r16
  aa:	0e 3a       	cpi	r16, 0xAE	; 174
  ac:	0b 3b       	cpi	r16, 0xBB	; 187
  ae:	0b 49       	sbci	r16, 0x9B	; 155
  b0:	13 3f       	cpi	r17, 0xF3	; 243
  b2:	0c 02       	muls	r16, r28
  b4:	0a 00       	.word	0x000a	; ????
  b6:	00 0e       	add	r0, r16
  b8:	34 00       	.word	0x0034	; ????
  ba:	03 0e       	add	r0, r19
  bc:	3a 0b       	sbc	r19, r26
  be:	3b 0b       	sbc	r19, r27
  c0:	49 13       	cpse	r20, r25
  c2:	3f 0c       	add	r3, r15
  c4:	02 0a       	sbc	r0, r18
  c6:	00 00       	nop
  c8:	0f 34       	cpi	r16, 0x4F	; 79
  ca:	00 03       	mulsu	r16, r16
  cc:	0e 3a       	cpi	r16, 0xAE	; 174
  ce:	0b 3b       	cpi	r16, 0xBB	; 187
  d0:	0b 49       	sbci	r16, 0x9B	; 155
  d2:	13 3f       	cpi	r17, 0xF3	; 243
  d4:	0c 02       	muls	r16, r28
  d6:	0a 00       	.word	0x000a	; ????
  d8:	00 10       	cpse	r0, r0
  da:	34 00       	.word	0x0034	; ????
  dc:	03 0e       	add	r0, r19
  de:	3a 0b       	sbc	r19, r26
  e0:	3b 0b       	sbc	r19, r27
  e2:	49 13       	cpse	r20, r25
  e4:	3f 0c       	add	r3, r15
  e6:	02 0a       	sbc	r0, r18
  e8:	00 00       	nop
  ea:	11 34       	cpi	r17, 0x41	; 65
  ec:	00 03       	mulsu	r16, r16
  ee:	0e 3a       	cpi	r16, 0xAE	; 174
  f0:	0b 3b       	cpi	r16, 0xBB	; 187
  f2:	0b 49       	sbci	r16, 0x9B	; 155
  f4:	13 3f       	cpi	r17, 0xF3	; 243
  f6:	0c 02       	muls	r16, r28
  f8:	0a 00       	.word	0x000a	; ????
  fa:	00 12       	cpse	r0, r16
  fc:	34 00       	.word	0x0034	; ????
  fe:	03 0e       	add	r0, r19
 100:	3a 0b       	sbc	r19, r26
 102:	3b 0b       	sbc	r19, r27
 104:	49 13       	cpse	r20, r25
 106:	3f 0c       	add	r3, r15
 108:	02 0a       	sbc	r0, r18
 10a:	00 00       	nop
 10c:	13 34       	cpi	r17, 0x43	; 67
 10e:	00 03       	mulsu	r16, r16
 110:	0e 3a       	cpi	r16, 0xAE	; 174
 112:	0b 3b       	cpi	r16, 0xBB	; 187
 114:	0b 49       	sbci	r16, 0x9B	; 155
 116:	13 3f       	cpi	r17, 0xF3	; 243
 118:	0c 02       	muls	r16, r28
 11a:	0a 00       	.word	0x000a	; ????
 11c:	00 14       	cp	r0, r0
 11e:	34 00       	.word	0x0034	; ????
 120:	03 0e       	add	r0, r19
 122:	3a 0b       	sbc	r19, r26
 124:	3b 0b       	sbc	r19, r27
 126:	49 13       	cpse	r20, r25
 128:	3f 0c       	add	r3, r15
 12a:	02 0a       	sbc	r0, r18
 12c:	00 00       	nop
 12e:	15 34       	cpi	r17, 0x45	; 69
 130:	00 03       	mulsu	r16, r16
 132:	0e 3a       	cpi	r16, 0xAE	; 174
 134:	0b 3b       	cpi	r16, 0xBB	; 187
 136:	0b 49       	sbci	r16, 0x9B	; 155
 138:	13 3f       	cpi	r17, 0xF3	; 243
 13a:	0c 02       	muls	r16, r28
 13c:	0a 00       	.word	0x000a	; ????
 13e:	00 16       	cp	r0, r16
 140:	34 00       	.word	0x0034	; ????
 142:	03 0e       	add	r0, r19
 144:	3a 0b       	sbc	r19, r26
 146:	3b 0b       	sbc	r19, r27
 148:	49 13       	cpse	r20, r25
 14a:	3f 0c       	add	r3, r15
 14c:	02 0a       	sbc	r0, r18
 14e:	00 00       	nop
 150:	17 34       	cpi	r17, 0x47	; 71
 152:	00 03       	mulsu	r16, r16
 154:	0e 3a       	cpi	r16, 0xAE	; 174
 156:	0b 3b       	cpi	r16, 0xBB	; 187
 158:	0b 49       	sbci	r16, 0x9B	; 155
 15a:	13 3f       	cpi	r17, 0xF3	; 243
 15c:	0c 02       	muls	r16, r28
 15e:	0a 00       	.word	0x000a	; ????
 160:	00 18       	sub	r0, r0
 162:	34 00       	.word	0x0034	; ????
 164:	03 0e       	add	r0, r19
 166:	3a 0b       	sbc	r19, r26
 168:	3b 0b       	sbc	r19, r27
 16a:	49 13       	cpse	r20, r25
 16c:	3f 0c       	add	r3, r15
 16e:	02 0a       	sbc	r0, r18
 170:	00 00       	nop
 172:	19 34       	cpi	r17, 0x49	; 73
 174:	00 03       	mulsu	r16, r16
 176:	0e 3a       	cpi	r16, 0xAE	; 174
 178:	0b 3b       	cpi	r16, 0xBB	; 187
 17a:	0b 49       	sbci	r16, 0x9B	; 155
 17c:	13 3f       	cpi	r17, 0xF3	; 243
 17e:	0c 02       	muls	r16, r28
 180:	0a 00       	.word	0x000a	; ????
 182:	00 1a       	sub	r0, r16
 184:	34 00       	.word	0x0034	; ????
 186:	03 0e       	add	r0, r19
 188:	3a 0b       	sbc	r19, r26
 18a:	3b 0b       	sbc	r19, r27
 18c:	49 13       	cpse	r20, r25
 18e:	3f 0c       	add	r3, r15
 190:	02 0a       	sbc	r0, r18
 192:	00 00       	nop
 194:	1b 34       	cpi	r17, 0x4B	; 75
 196:	00 03       	mulsu	r16, r16
 198:	0e 3a       	cpi	r16, 0xAE	; 174
 19a:	0b 3b       	cpi	r16, 0xBB	; 187
 19c:	0b 49       	sbci	r16, 0x9B	; 155
 19e:	13 3f       	cpi	r17, 0xF3	; 243
 1a0:	0c 02       	muls	r16, r28
 1a2:	0a 00       	.word	0x000a	; ????
 1a4:	00 1c       	adc	r0, r0
 1a6:	34 00       	.word	0x0034	; ????
 1a8:	03 0e       	add	r0, r19
 1aa:	3a 0b       	sbc	r19, r26
 1ac:	3b 0b       	sbc	r19, r27
 1ae:	49 13       	cpse	r20, r25
 1b0:	3f 0c       	add	r3, r15
 1b2:	02 0a       	sbc	r0, r18
 1b4:	00 00       	nop
 1b6:	1d 34       	cpi	r17, 0x4D	; 77
 1b8:	00 03       	mulsu	r16, r16
 1ba:	0e 3a       	cpi	r16, 0xAE	; 174
 1bc:	0b 3b       	cpi	r16, 0xBB	; 187
 1be:	0b 49       	sbci	r16, 0x9B	; 155
 1c0:	13 3f       	cpi	r17, 0xF3	; 243
 1c2:	0c 02       	muls	r16, r28
 1c4:	0a 00       	.word	0x000a	; ????
 1c6:	00 1e       	adc	r0, r16
 1c8:	34 00       	.word	0x0034	; ????
 1ca:	03 0e       	add	r0, r19
 1cc:	3a 0b       	sbc	r19, r26
 1ce:	3b 0b       	sbc	r19, r27
 1d0:	49 13       	cpse	r20, r25
 1d2:	3f 0c       	add	r3, r15
 1d4:	02 0a       	sbc	r0, r18
 1d6:	00 00       	nop
 1d8:	1f 34       	cpi	r17, 0x4F	; 79
 1da:	00 03       	mulsu	r16, r16
 1dc:	0e 3a       	cpi	r16, 0xAE	; 174
 1de:	0b 3b       	cpi	r16, 0xBB	; 187
 1e0:	0b 49       	sbci	r16, 0x9B	; 155
 1e2:	13 3f       	cpi	r17, 0xF3	; 243
 1e4:	0c 02       	muls	r16, r28
 1e6:	0a 00       	.word	0x000a	; ????
 1e8:	00 20       	and	r0, r0
 1ea:	34 00       	.word	0x0034	; ????
 1ec:	03 0e       	add	r0, r19
 1ee:	3a 0b       	sbc	r19, r26
 1f0:	3b 0b       	sbc	r19, r27
 1f2:	49 13       	cpse	r20, r25
 1f4:	3f 0c       	add	r3, r15
 1f6:	02 0a       	sbc	r0, r18
 1f8:	00 00       	nop
 1fa:	21 34       	cpi	r18, 0x41	; 65
 1fc:	00 03       	mulsu	r16, r16
 1fe:	0e 3a       	cpi	r16, 0xAE	; 174
 200:	0b 3b       	cpi	r16, 0xBB	; 187
 202:	0b 49       	sbci	r16, 0x9B	; 155
 204:	13 3f       	cpi	r17, 0xF3	; 243
 206:	0c 02       	muls	r16, r28
 208:	0a 00       	.word	0x000a	; ????
 20a:	00 22       	and	r0, r16
 20c:	34 00       	.word	0x0034	; ????
 20e:	03 0e       	add	r0, r19
 210:	3a 0b       	sbc	r19, r26
 212:	3b 0b       	sbc	r19, r27
 214:	49 13       	cpse	r20, r25
 216:	3f 0c       	add	r3, r15
 218:	02 0a       	sbc	r0, r18
 21a:	00 00       	nop
 21c:	23 34       	cpi	r18, 0x43	; 67
 21e:	00 03       	mulsu	r16, r16
 220:	0e 3a       	cpi	r16, 0xAE	; 174
 222:	0b 3b       	cpi	r16, 0xBB	; 187
 224:	0b 49       	sbci	r16, 0x9B	; 155
 226:	13 3f       	cpi	r17, 0xF3	; 243
 228:	0c 02       	muls	r16, r28
 22a:	0a 00       	.word	0x000a	; ????
 22c:	00 24       	eor	r0, r0
 22e:	34 00       	.word	0x0034	; ????
 230:	03 0e       	add	r0, r19
 232:	3a 0b       	sbc	r19, r26
 234:	3b 0b       	sbc	r19, r27
 236:	49 13       	cpse	r20, r25
 238:	3f 0c       	add	r3, r15
 23a:	02 0a       	sbc	r0, r18
 23c:	00 00       	nop
 23e:	25 34       	cpi	r18, 0x45	; 69
 240:	00 03       	mulsu	r16, r16
 242:	0e 3a       	cpi	r16, 0xAE	; 174
 244:	0b 3b       	cpi	r16, 0xBB	; 187
 246:	0b 49       	sbci	r16, 0x9B	; 155
 248:	13 3f       	cpi	r17, 0xF3	; 243
 24a:	0c 02       	muls	r16, r28
 24c:	0a 00       	.word	0x000a	; ????
 24e:	00 26       	eor	r0, r16
 250:	34 00       	.word	0x0034	; ????
 252:	03 0e       	add	r0, r19
 254:	3a 0b       	sbc	r19, r26
 256:	3b 0b       	sbc	r19, r27
 258:	49 13       	cpse	r20, r25
 25a:	3f 0c       	add	r3, r15
 25c:	02 0a       	sbc	r0, r18
 25e:	00 00       	nop
 260:	27 34       	cpi	r18, 0x47	; 71
 262:	00 03       	mulsu	r16, r16
 264:	0e 3a       	cpi	r16, 0xAE	; 174
 266:	0b 3b       	cpi	r16, 0xBB	; 187
 268:	0b 49       	sbci	r16, 0x9B	; 155
 26a:	13 3f       	cpi	r17, 0xF3	; 243
 26c:	0c 02       	muls	r16, r28
 26e:	0a 00       	.word	0x000a	; ????
 270:	00 28       	or	r0, r0
 272:	34 00       	.word	0x0034	; ????
 274:	03 0e       	add	r0, r19
 276:	3a 0b       	sbc	r19, r26
 278:	3b 0b       	sbc	r19, r27
 27a:	49 13       	cpse	r20, r25
 27c:	3f 0c       	add	r3, r15
 27e:	02 0a       	sbc	r0, r18
 280:	00 00       	nop
 282:	29 34       	cpi	r18, 0x49	; 73
 284:	00 03       	mulsu	r16, r16
 286:	0e 3a       	cpi	r16, 0xAE	; 174
 288:	0b 3b       	cpi	r16, 0xBB	; 187
 28a:	0b 49       	sbci	r16, 0x9B	; 155
 28c:	13 3f       	cpi	r17, 0xF3	; 243
 28e:	0c 02       	muls	r16, r28
 290:	0a 00       	.word	0x000a	; ????
 292:	00 2a       	or	r0, r16
 294:	34 00       	.word	0x0034	; ????
 296:	03 0e       	add	r0, r19
 298:	3a 0b       	sbc	r19, r26
 29a:	3b 0b       	sbc	r19, r27
 29c:	49 13       	cpse	r20, r25
 29e:	3f 0c       	add	r3, r15
 2a0:	02 0a       	sbc	r0, r18
 2a2:	00 00       	nop
 2a4:	2b 34       	cpi	r18, 0x4B	; 75
 2a6:	00 03       	mulsu	r16, r16
 2a8:	0e 3a       	cpi	r16, 0xAE	; 174
 2aa:	0b 3b       	cpi	r16, 0xBB	; 187
 2ac:	0b 49       	sbci	r16, 0x9B	; 155
 2ae:	13 3f       	cpi	r17, 0xF3	; 243
 2b0:	0c 02       	muls	r16, r28
 2b2:	0a 00       	.word	0x000a	; ????
 2b4:	00 2c       	mov	r0, r0
 2b6:	34 00       	.word	0x0034	; ????
 2b8:	03 0e       	add	r0, r19
 2ba:	3a 0b       	sbc	r19, r26
 2bc:	3b 0b       	sbc	r19, r27
 2be:	49 13       	cpse	r20, r25
 2c0:	3f 0c       	add	r3, r15
 2c2:	02 0a       	sbc	r0, r18
 2c4:	00 00       	nop
 2c6:	2d 34       	cpi	r18, 0x4D	; 77
 2c8:	00 03       	mulsu	r16, r16
 2ca:	0e 3a       	cpi	r16, 0xAE	; 174
 2cc:	0b 3b       	cpi	r16, 0xBB	; 187
 2ce:	0b 49       	sbci	r16, 0x9B	; 155
 2d0:	13 3f       	cpi	r17, 0xF3	; 243
 2d2:	0c 02       	muls	r16, r28
 2d4:	0a 00       	.word	0x000a	; ????
 2d6:	00 2e       	mov	r0, r16
 2d8:	34 00       	.word	0x0034	; ????
 2da:	03 0e       	add	r0, r19
 2dc:	3a 0b       	sbc	r19, r26
 2de:	3b 0b       	sbc	r19, r27
 2e0:	49 13       	cpse	r20, r25
 2e2:	3f 0c       	add	r3, r15
 2e4:	02 0a       	sbc	r0, r18
 2e6:	00 00       	nop
 2e8:	2f 34       	cpi	r18, 0x4F	; 79
 2ea:	00 03       	mulsu	r16, r16
 2ec:	0e 3a       	cpi	r16, 0xAE	; 174
 2ee:	0b 3b       	cpi	r16, 0xBB	; 187
 2f0:	0b 49       	sbci	r16, 0x9B	; 155
 2f2:	13 3f       	cpi	r17, 0xF3	; 243
 2f4:	0c 02       	muls	r16, r28
 2f6:	0a 00       	.word	0x000a	; ????
 2f8:	00 30       	cpi	r16, 0x00	; 0
 2fa:	34 00       	.word	0x0034	; ????
 2fc:	03 0e       	add	r0, r19
 2fe:	3a 0b       	sbc	r19, r26
 300:	3b 0b       	sbc	r19, r27
 302:	49 13       	cpse	r20, r25
 304:	3f 0c       	add	r3, r15
 306:	02 0a       	sbc	r0, r18
 308:	00 00       	nop
 30a:	31 34       	cpi	r19, 0x41	; 65
 30c:	00 03       	mulsu	r16, r16
 30e:	0e 3a       	cpi	r16, 0xAE	; 174
 310:	0b 3b       	cpi	r16, 0xBB	; 187
 312:	0b 49       	sbci	r16, 0x9B	; 155
 314:	13 3f       	cpi	r17, 0xF3	; 243
 316:	0c 02       	muls	r16, r28
 318:	0a 00       	.word	0x000a	; ????
 31a:	00 32       	cpi	r16, 0x20	; 32
 31c:	34 00       	.word	0x0034	; ????
 31e:	03 0e       	add	r0, r19
 320:	3a 0b       	sbc	r19, r26
 322:	3b 0b       	sbc	r19, r27
 324:	49 13       	cpse	r20, r25
 326:	3f 0c       	add	r3, r15
 328:	02 0a       	sbc	r0, r18
 32a:	00 00       	nop
 32c:	33 34       	cpi	r19, 0x43	; 67
 32e:	00 03       	mulsu	r16, r16
 330:	0e 3a       	cpi	r16, 0xAE	; 174
 332:	0b 3b       	cpi	r16, 0xBB	; 187
 334:	0b 49       	sbci	r16, 0x9B	; 155
 336:	13 3f       	cpi	r17, 0xF3	; 243
 338:	0c 02       	muls	r16, r28
 33a:	0a 00       	.word	0x000a	; ????
 33c:	00 34       	cpi	r16, 0x40	; 64
 33e:	34 00       	.word	0x0034	; ????
 340:	03 0e       	add	r0, r19
 342:	3a 0b       	sbc	r19, r26
 344:	3b 0b       	sbc	r19, r27
 346:	49 13       	cpse	r20, r25
 348:	3f 0c       	add	r3, r15
 34a:	02 0a       	sbc	r0, r18
 34c:	00 00       	nop
 34e:	35 34       	cpi	r19, 0x45	; 69
 350:	00 03       	mulsu	r16, r16
 352:	0e 3a       	cpi	r16, 0xAE	; 174
 354:	0b 3b       	cpi	r16, 0xBB	; 187
 356:	0b 49       	sbci	r16, 0x9B	; 155
 358:	13 3f       	cpi	r17, 0xF3	; 243
 35a:	0c 02       	muls	r16, r28
 35c:	0a 00       	.word	0x000a	; ????
 35e:	00 36       	cpi	r16, 0x60	; 96
 360:	34 00       	.word	0x0034	; ????
 362:	03 0e       	add	r0, r19
 364:	3a 0b       	sbc	r19, r26
 366:	3b 0b       	sbc	r19, r27
 368:	49 13       	cpse	r20, r25
 36a:	3f 0c       	add	r3, r15
 36c:	02 0a       	sbc	r0, r18
 36e:	00 00       	nop
 370:	37 34       	cpi	r19, 0x47	; 71
 372:	00 03       	mulsu	r16, r16
 374:	0e 3a       	cpi	r16, 0xAE	; 174
 376:	0b 3b       	cpi	r16, 0xBB	; 187
 378:	0b 49       	sbci	r16, 0x9B	; 155
 37a:	13 3f       	cpi	r17, 0xF3	; 243
 37c:	0c 02       	muls	r16, r28
 37e:	0a 00       	.word	0x000a	; ????
 380:	00 38       	cpi	r16, 0x80	; 128
 382:	34 00       	.word	0x0034	; ????
 384:	03 0e       	add	r0, r19
 386:	3a 0b       	sbc	r19, r26
 388:	3b 0b       	sbc	r19, r27
 38a:	49 13       	cpse	r20, r25
 38c:	3f 0c       	add	r3, r15
 38e:	02 0a       	sbc	r0, r18
 390:	00 00       	nop
 392:	39 34       	cpi	r19, 0x49	; 73
 394:	00 03       	mulsu	r16, r16
 396:	0e 3a       	cpi	r16, 0xAE	; 174
 398:	0b 3b       	cpi	r16, 0xBB	; 187
 39a:	0b 49       	sbci	r16, 0x9B	; 155
 39c:	13 3f       	cpi	r17, 0xF3	; 243
 39e:	0c 02       	muls	r16, r28
 3a0:	0a 00       	.word	0x000a	; ????
 3a2:	00 3a       	cpi	r16, 0xA0	; 160
 3a4:	34 00       	.word	0x0034	; ????
 3a6:	03 0e       	add	r0, r19
 3a8:	3a 0b       	sbc	r19, r26
 3aa:	3b 0b       	sbc	r19, r27
 3ac:	49 13       	cpse	r20, r25
 3ae:	3f 0c       	add	r3, r15
 3b0:	02 0a       	sbc	r0, r18
 3b2:	00 00       	nop
 3b4:	3b 34       	cpi	r19, 0x4B	; 75
 3b6:	00 03       	mulsu	r16, r16
 3b8:	0e 3a       	cpi	r16, 0xAE	; 174
 3ba:	0b 3b       	cpi	r16, 0xBB	; 187
 3bc:	0b 49       	sbci	r16, 0x9B	; 155
 3be:	13 3f       	cpi	r17, 0xF3	; 243
 3c0:	0c 02       	muls	r16, r28
 3c2:	0a 00       	.word	0x000a	; ????
 3c4:	00 3c       	cpi	r16, 0xC0	; 192
 3c6:	34 00       	.word	0x0034	; ????
 3c8:	03 0e       	add	r0, r19
 3ca:	3a 0b       	sbc	r19, r26
 3cc:	3b 0b       	sbc	r19, r27
 3ce:	49 13       	cpse	r20, r25
 3d0:	3f 0c       	add	r3, r15
 3d2:	02 0a       	sbc	r0, r18
 3d4:	00 00       	nop
 3d6:	3d 34       	cpi	r19, 0x4D	; 77
 3d8:	00 03       	mulsu	r16, r16
 3da:	0e 3a       	cpi	r16, 0xAE	; 174
 3dc:	0b 3b       	cpi	r16, 0xBB	; 187
 3de:	0b 49       	sbci	r16, 0x9B	; 155
 3e0:	13 3f       	cpi	r17, 0xF3	; 243
 3e2:	0c 02       	muls	r16, r28
 3e4:	0a 00       	.word	0x000a	; ????
 3e6:	00 3e       	cpi	r16, 0xE0	; 224
 3e8:	34 00       	.word	0x0034	; ????
 3ea:	03 0e       	add	r0, r19
 3ec:	3a 0b       	sbc	r19, r26
 3ee:	3b 0b       	sbc	r19, r27
 3f0:	49 13       	cpse	r20, r25
 3f2:	3f 0c       	add	r3, r15
 3f4:	02 0a       	sbc	r0, r18
 3f6:	00 00       	nop
 3f8:	3f 34       	cpi	r19, 0x4F	; 79
 3fa:	00 03       	mulsu	r16, r16
 3fc:	0e 3a       	cpi	r16, 0xAE	; 174
 3fe:	0b 3b       	cpi	r16, 0xBB	; 187
 400:	0b 49       	sbci	r16, 0x9B	; 155
 402:	13 3f       	cpi	r17, 0xF3	; 243
 404:	0c 02       	muls	r16, r28
 406:	0a 00       	.word	0x000a	; ????
 408:	00 40       	sbci	r16, 0x00	; 0
 40a:	34 00       	.word	0x0034	; ????
 40c:	03 0e       	add	r0, r19
 40e:	3a 0b       	sbc	r19, r26
 410:	3b 0b       	sbc	r19, r27
 412:	49 13       	cpse	r20, r25
 414:	3f 0c       	add	r3, r15
 416:	02 0a       	sbc	r0, r18
 418:	00 00       	nop
 41a:	41 34       	cpi	r20, 0x41	; 65
 41c:	00 03       	mulsu	r16, r16
 41e:	0e 3a       	cpi	r16, 0xAE	; 174
 420:	0b 3b       	cpi	r16, 0xBB	; 187
 422:	0b 49       	sbci	r16, 0x9B	; 155
 424:	13 3f       	cpi	r17, 0xF3	; 243
 426:	0c 02       	muls	r16, r28
 428:	0a 00       	.word	0x000a	; ????
 42a:	00 42       	sbci	r16, 0x20	; 32
 42c:	34 00       	.word	0x0034	; ????
 42e:	03 0e       	add	r0, r19
 430:	3a 0b       	sbc	r19, r26
 432:	3b 0b       	sbc	r19, r27
 434:	49 13       	cpse	r20, r25
 436:	3f 0c       	add	r3, r15
 438:	02 0a       	sbc	r0, r18
 43a:	00 00       	nop
 43c:	43 34       	cpi	r20, 0x43	; 67
 43e:	00 03       	mulsu	r16, r16
 440:	0e 3a       	cpi	r16, 0xAE	; 174
 442:	0b 3b       	cpi	r16, 0xBB	; 187
 444:	0b 49       	sbci	r16, 0x9B	; 155
 446:	13 3f       	cpi	r17, 0xF3	; 243
 448:	0c 02       	muls	r16, r28
 44a:	0a 00       	.word	0x000a	; ????
 44c:	00 44       	sbci	r16, 0x40	; 64
 44e:	34 00       	.word	0x0034	; ????
 450:	03 0e       	add	r0, r19
 452:	3a 0b       	sbc	r19, r26
 454:	3b 0b       	sbc	r19, r27
 456:	49 13       	cpse	r20, r25
 458:	3f 0c       	add	r3, r15
 45a:	02 0a       	sbc	r0, r18
 45c:	00 00       	nop
 45e:	45 34       	cpi	r20, 0x45	; 69
 460:	00 03       	mulsu	r16, r16
 462:	0e 3a       	cpi	r16, 0xAE	; 174
 464:	0b 3b       	cpi	r16, 0xBB	; 187
 466:	0b 49       	sbci	r16, 0x9B	; 155
 468:	13 3f       	cpi	r17, 0xF3	; 243
 46a:	0c 02       	muls	r16, r28
 46c:	0a 00       	.word	0x000a	; ????
 46e:	00 46       	sbci	r16, 0x60	; 96
 470:	34 00       	.word	0x0034	; ????
 472:	03 0e       	add	r0, r19
 474:	3a 0b       	sbc	r19, r26
 476:	3b 0b       	sbc	r19, r27
 478:	49 13       	cpse	r20, r25
 47a:	3f 0c       	add	r3, r15
 47c:	02 0a       	sbc	r0, r18
 47e:	00 00       	nop
 480:	47 34       	cpi	r20, 0x47	; 71
 482:	00 03       	mulsu	r16, r16
 484:	0e 3a       	cpi	r16, 0xAE	; 174
 486:	0b 3b       	cpi	r16, 0xBB	; 187
 488:	0b 49       	sbci	r16, 0x9B	; 155
 48a:	13 3f       	cpi	r17, 0xF3	; 243
 48c:	0c 02       	muls	r16, r28
 48e:	0a 00       	.word	0x000a	; ????
 490:	00 48       	sbci	r16, 0x80	; 128
 492:	34 00       	.word	0x0034	; ????
 494:	03 0e       	add	r0, r19
 496:	3a 0b       	sbc	r19, r26
 498:	3b 0b       	sbc	r19, r27
 49a:	49 13       	cpse	r20, r25
 49c:	3f 0c       	add	r3, r15
 49e:	02 0a       	sbc	r0, r18
 4a0:	00 00       	nop
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	16 00       	.word	0x0016	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	10 00       	.word	0x0010	; ????
   8:	00 00       	nop
   a:	02 01       	movw	r0, r4
   c:	fb 0e       	add	r15, r27
   e:	0a 00       	.word	0x000a	; ????
  10:	01 01       	movw	r0, r2
  12:	01 01       	movw	r0, r2
  14:	00 00       	nop
  16:	00 01       	movw	r0, r0
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	61 76       	andi	r22, 0x61	; 97
   2:	72 2d       	mov	r23, r2
   4:	6c 69       	ori	r22, 0x9C	; 156
   6:	62 63       	ori	r22, 0x32	; 50
   8:	20 32       	cpi	r18, 0x20	; 32
   a:	2e 30       	cpi	r18, 0x0E	; 14
   c:	2e 30       	cpi	r18, 0x0E	; 14
   e:	00 75       	andi	r16, 0x50	; 80
  10:	69 6e       	ori	r22, 0xE9	; 233
  12:	74 38       	cpi	r23, 0x84	; 132
  14:	5f 74       	andi	r21, 0x4F	; 79
  16:	00 75       	andi	r16, 0x50	; 80
  18:	69 6e       	ori	r22, 0xE9	; 233
  1a:	74 31       	cpi	r23, 0x14	; 20
  1c:	36 5f       	subi	r19, 0xF6	; 246
  1e:	74 00       	.word	0x0074	; ????
  20:	5f 5f       	subi	r21, 0xFF	; 255
  22:	65 65       	ori	r22, 0x55	; 85
  24:	70 72       	andi	r23, 0x20	; 32
  26:	6f 6d       	ori	r22, 0xDF	; 223
  28:	00 45       	sbci	r16, 0x50	; 80
  2a:	45 41       	sbci	r20, 0x15	; 21
  2c:	52 00       	.word	0x0052	; ????
  2e:	45 45       	sbci	r20, 0x55	; 85
  30:	44 52       	subi	r20, 0x24	; 36
  32:	00 45       	sbci	r16, 0x50	; 80
  34:	45 43       	sbci	r20, 0x35	; 53
  36:	52 00       	.word	0x0052	; ????
  38:	57 44       	sbci	r21, 0x47	; 71
  3a:	54 43       	sbci	r21, 0x34	; 52
  3c:	52 00       	.word	0x0052	; ????
  3e:	47 49       	sbci	r20, 0x97	; 151
  40:	43 52       	subi	r20, 0x23	; 35
  42:	00 47       	sbci	r16, 0x70	; 112
  44:	49 46       	sbci	r20, 0x69	; 105
  46:	52 00       	.word	0x0052	; ????
  48:	4d 43       	sbci	r20, 0x3D	; 61
  4a:	55 43       	sbci	r21, 0x35	; 53
  4c:	52 00       	.word	0x0052	; ????
  4e:	4d 43       	sbci	r20, 0x3D	; 61
  50:	55 43       	sbci	r21, 0x35	; 53
  52:	53 52       	subi	r21, 0x23	; 35
  54:	00 54       	subi	r16, 0x40	; 64
  56:	43 43       	sbci	r20, 0x33	; 51
  58:	52 30       	cpi	r21, 0x02	; 2
  5a:	00 54       	subi	r16, 0x40	; 64
  5c:	43 4e       	sbci	r20, 0xE3	; 227
  5e:	54 30       	cpi	r21, 0x04	; 4
  60:	00 4f       	sbci	r16, 0xF0	; 240
  62:	43 52       	subi	r20, 0x23	; 35
  64:	30 00       	.word	0x0030	; ????
  66:	54 49       	sbci	r21, 0x94	; 148
  68:	4d 53       	subi	r20, 0x3D	; 61
  6a:	4b 00       	.word	0x004b	; ????
  6c:	54 49       	sbci	r21, 0x94	; 148
  6e:	46 52       	subi	r20, 0x26	; 38
  70:	00 54       	subi	r16, 0x40	; 64
  72:	49 4d       	sbci	r20, 0xD9	; 217
  74:	53 4b       	sbci	r21, 0xB3	; 179
  76:	00 54       	subi	r16, 0x40	; 64
  78:	49 46       	sbci	r20, 0x69	; 105
  7a:	52 00       	.word	0x0052	; ????
  7c:	54 43       	sbci	r21, 0x34	; 52
  7e:	43 52       	subi	r20, 0x23	; 35
  80:	32 00       	.word	0x0032	; ????
  82:	54 43       	sbci	r21, 0x34	; 52
  84:	4e 54       	subi	r20, 0x4E	; 78
  86:	32 00       	.word	0x0032	; ????
  88:	4f 43       	sbci	r20, 0x3F	; 63
  8a:	52 32       	cpi	r21, 0x22	; 34
  8c:	00 41       	sbci	r16, 0x10	; 16
  8e:	53 53       	subi	r21, 0x33	; 51
  90:	52 00       	.word	0x0052	; ????
  92:	54 49       	sbci	r21, 0x94	; 148
  94:	4d 53       	subi	r20, 0x3D	; 61
  96:	4b 00       	.word	0x004b	; ????
  98:	54 49       	sbci	r21, 0x94	; 148
  9a:	46 52       	subi	r20, 0x26	; 38
  9c:	00 54       	subi	r16, 0x40	; 64
  9e:	43 43       	sbci	r20, 0x33	; 51
  a0:	52 31       	cpi	r21, 0x12	; 18
  a2:	41 00       	.word	0x0041	; ????
  a4:	54 43       	sbci	r21, 0x34	; 52
  a6:	43 52       	subi	r20, 0x23	; 35
  a8:	31 42       	sbci	r19, 0x21	; 33
  aa:	00 54       	subi	r16, 0x40	; 64
  ac:	43 4e       	sbci	r20, 0xE3	; 227
  ae:	54 31       	cpi	r21, 0x14	; 20
  b0:	00 4f       	sbci	r16, 0xF0	; 240
  b2:	43 52       	subi	r20, 0x23	; 35
  b4:	31 41       	sbci	r19, 0x11	; 17
  b6:	00 4f       	sbci	r16, 0xF0	; 240
  b8:	43 52       	subi	r20, 0x23	; 35
  ba:	31 42       	sbci	r19, 0x21	; 33
  bc:	00 49       	sbci	r16, 0x90	; 144
  be:	43 52       	subi	r20, 0x23	; 35
  c0:	31 00       	.word	0x0031	; ????
  c2:	53 50       	subi	r21, 0x03	; 3
  c4:	44 52       	subi	r20, 0x24	; 36
  c6:	00 53       	subi	r16, 0x30	; 48
  c8:	50 53       	subi	r21, 0x30	; 48
  ca:	52 00       	.word	0x0052	; ????
  cc:	53 50       	subi	r21, 0x03	; 3
  ce:	43 52       	subi	r20, 0x23	; 35
  d0:	00 55       	subi	r16, 0x50	; 80
  d2:	44 52       	subi	r20, 0x24	; 36
  d4:	00 55       	subi	r16, 0x50	; 80
  d6:	43 53       	subi	r20, 0x33	; 51
  d8:	52 41       	sbci	r21, 0x12	; 18
  da:	00 55       	subi	r16, 0x50	; 80
  dc:	43 53       	subi	r20, 0x33	; 51
  de:	52 42       	sbci	r21, 0x22	; 34
  e0:	00 55       	subi	r16, 0x50	; 80
  e2:	43 53       	subi	r20, 0x33	; 51
  e4:	52 43       	sbci	r21, 0x32	; 50
  e6:	00 55       	subi	r16, 0x50	; 80
  e8:	42 52       	subi	r20, 0x22	; 34
  ea:	52 48       	sbci	r21, 0x82	; 130
  ec:	00 55       	subi	r16, 0x50	; 80
  ee:	42 52       	subi	r20, 0x22	; 34
  f0:	52 4c       	sbci	r21, 0xC2	; 194
  f2:	00 53       	subi	r16, 0x30	; 48
  f4:	46 49       	sbci	r20, 0x96	; 150
  f6:	4f 52       	subi	r20, 0x2F	; 47
  f8:	00 41       	sbci	r16, 0x10	; 16
  fa:	43 53       	subi	r20, 0x33	; 51
  fc:	52 00       	.word	0x0052	; ????
  fe:	41 44       	sbci	r20, 0x41	; 65
 100:	4d 55       	subi	r20, 0x5D	; 93
 102:	58 00       	.word	0x0058	; ????
 104:	41 44       	sbci	r20, 0x41	; 65
 106:	43 53       	subi	r20, 0x33	; 51
 108:	52 41       	sbci	r21, 0x12	; 18
 10a:	00 41       	sbci	r16, 0x10	; 16
 10c:	44 43       	sbci	r20, 0x34	; 52
 10e:	00 53       	subi	r16, 0x30	; 48
 110:	46 49       	sbci	r20, 0x96	; 150
 112:	4f 52       	subi	r20, 0x2F	; 47
 114:	00 50       	subi	r16, 0x00	; 0
 116:	4f 52       	subi	r20, 0x2F	; 47
 118:	54 41       	sbci	r21, 0x14	; 20
 11a:	00 44       	sbci	r16, 0x40	; 64
 11c:	44 52       	subi	r20, 0x24	; 36
 11e:	41 00       	.word	0x0041	; ????
 120:	50 49       	sbci	r21, 0x90	; 144
 122:	4e 41       	sbci	r20, 0x1E	; 30
 124:	00 50       	subi	r16, 0x00	; 0
 126:	4f 52       	subi	r20, 0x2F	; 47
 128:	54 42       	sbci	r21, 0x24	; 36
 12a:	00 44       	sbci	r16, 0x40	; 64
 12c:	44 52       	subi	r20, 0x24	; 36
 12e:	42 00       	.word	0x0042	; ????
 130:	50 49       	sbci	r21, 0x90	; 144
 132:	4e 42       	sbci	r20, 0x2E	; 46
 134:	00 50       	subi	r16, 0x00	; 0
 136:	4f 52       	subi	r20, 0x2F	; 47
 138:	54 43       	sbci	r21, 0x34	; 52
 13a:	00 44       	sbci	r16, 0x40	; 64
 13c:	44 52       	subi	r20, 0x24	; 36
 13e:	43 00       	.word	0x0043	; ????
 140:	50 49       	sbci	r21, 0x90	; 144
 142:	4e 43       	sbci	r20, 0x3E	; 62
 144:	00 50       	subi	r16, 0x00	; 0
 146:	4f 52       	subi	r20, 0x2F	; 47
 148:	54 44       	sbci	r21, 0x44	; 68
 14a:	00 44       	sbci	r16, 0x40	; 64
 14c:	44 52       	subi	r20, 0x24	; 36
 14e:	44 00       	.word	0x0044	; ????
 150:	50 49       	sbci	r21, 0x90	; 144
 152:	4e 44       	sbci	r20, 0x4E	; 78
 154:	00 53       	subi	r16, 0x30	; 48
 156:	52 45       	sbci	r21, 0x52	; 82
 158:	47 00       	.word	0x0047	; ????
 15a:	53 50       	subi	r21, 0x03	; 3
 15c:	00 4d       	sbci	r16, 0xD0	; 208
 15e:	43 55       	subi	r20, 0x53	; 83
 160:	43 52       	subi	r20, 0x23	; 35
 162:	00 4d       	sbci	r16, 0xD0	; 208
 164:	43 55       	subi	r20, 0x53	; 83
 166:	43 53       	subi	r20, 0x33	; 51
 168:	52 00       	.word	0x0052	; ????
 16a:	4f 53       	subi	r20, 0x3F	; 63
 16c:	43 43       	sbci	r20, 0x33	; 51
 16e:	41 4c       	sbci	r20, 0xC1	; 193
 170:	00 53       	subi	r16, 0x30	; 48
 172:	46 49       	sbci	r20, 0x96	; 150
 174:	4f 52       	subi	r20, 0x2F	; 47
 176:	00 53       	subi	r16, 0x30	; 48
 178:	50 4d       	sbci	r21, 0xD0	; 208
 17a:	43 52       	subi	r20, 0x23	; 35
 17c:	00 54       	subi	r16, 0x40	; 64
 17e:	57 42       	sbci	r21, 0x27	; 39
 180:	52 00       	.word	0x0052	; ????
 182:	54 57       	subi	r21, 0x74	; 116
 184:	43 52       	subi	r20, 0x23	; 35
 186:	00 54       	subi	r16, 0x40	; 64
 188:	57 53       	subi	r21, 0x37	; 55
 18a:	52 00       	.word	0x0052	; ????
 18c:	54 57       	subi	r21, 0x74	; 116
 18e:	44 52       	subi	r20, 0x24	; 36
 190:	00 54       	subi	r16, 0x40	; 64
 192:	57 41       	sbci	r21, 0x17	; 23
 194:	52 00       	.word	0x0052	; ????
