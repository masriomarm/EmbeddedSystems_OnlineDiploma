
a.out:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <_init-0xcab>
 328:	78 38                	js     362 <_init-0xc9e>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	10 00                	adc    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	00 00                	add    %al,(%rax)
 34b:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 34f:	00 03                	add    %al,(%rbx)
 351:	00 00                	add    %al,(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000358 <.note.gnu.build-id>:
 358:	04 00                	add    $0x0,%al
 35a:	00 00                	add    %al,(%rax)
 35c:	14 00                	adc    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	03 00                	add    (%rax),%eax
 362:	00 00                	add    %al,(%rax)
 364:	47                   	rex.RXB
 365:	4e 55                	rex.WRX push %rbp
 367:	00 fc                	add    %bh,%ah
 369:	33 93 2e e4 5f e0    	xor    -0x1fa01bd2(%rbx),%edx
 36f:	27                   	(bad)  
 370:	8a c3                	mov    %bl,%al
 372:	60                   	(bad)  
 373:	5d                   	pop    %rbp
 374:	09 bc 25 fc 53 46 95 	or     %edi,-0x6ab9ac04(%rbp,%riz,1)
 37b:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)

Disassembly of section .note.ABI-tag:

000000000000037c <.note.ABI-tag>:
 37c:	04 00                	add    $0x0,%al
 37e:	00 00                	add    %al,(%rax)
 380:	10 00                	adc    %al,(%rax)
 382:	00 00                	add    %al,(%rax)
 384:	01 00                	add    %eax,(%rax)
 386:	00 00                	add    %al,(%rax)
 388:	47                   	rex.RXB
 389:	4e 55                	rex.WRX push %rbp
 38b:	00 00                	add    %al,(%rax)
 38d:	00 00                	add    %al,(%rax)
 38f:	00 03                	add    %al,(%rbx)
 391:	00 00                	add    %al,(%rax)
 393:	00 02                	add    %al,(%rdx)
 395:	00 00                	add    %al,(%rax)
 397:	00 00                	add    %al,(%rax)
 399:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003a0 <.gnu.hash>:
 3a0:	02 00                	add    (%rax),%al
 3a2:	00 00                	add    %al,(%rax)
 3a4:	13 00                	adc    (%rax),%eax
 3a6:	00 00                	add    %al,(%rax)
 3a8:	01 00                	add    %eax,(%rax)
 3aa:	00 00                	add    %al,(%rax)
 3ac:	06                   	(bad)  
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 00                	add    %al,(%rax)
 3b1:	00 a1 00 80 00 00    	add    %ah,0x8000(%rcx)
 3b7:	00 13                	add    %dl,(%rbx)
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 14 00             	add    %dl,(%rax,%rax,1)
 3be:	00 00                	add    %al,(%rax)
 3c0:	d1 65 ce             	shll   -0x32(%rbp)
 3c3:	6d                   	insl   (%dx),%es:(%rdi)
 3c4:	67 55                	addr32 push %rbp
 3c6:	61                   	(bad)  
 3c7:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000003c8 <.dynsym>:
	...
 3e0:	13 00                	adc    (%rax),%eax
 3e2:	00 00                	add    %al,(%rax)
 3e4:	12 00                	adc    (%rax),%al
	...
 3f6:	00 00                	add    %al,(%rax)
 3f8:	ad                   	lods   %ds:(%rsi),%eax
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 20                	add    %ah,(%rax)
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 1b                	add    %bl,(%rbx)
 411:	00 00                	add    %al,(%rax)
 413:	00 12                	add    %dl,(%rdx)
	...
 425:	00 00                	add    %al,(%rax)
 427:	00 59 00             	add    %bl,0x0(%rcx)
 42a:	00 00                	add    %al,(%rax)
 42c:	12 00                	adc    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	4b 00 00             	rex.WXB add %al,(%r8)
 443:	00 12                	add    %dl,(%rdx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 20                	add    %ah,(%rax)
 459:	00 00                	add    %al,(%rax)
 45b:	00 12                	add    %dl,(%rdx)
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 37                	add    %dh,(%rdi)
 471:	00 00                	add    %al,(%rax)
 473:	00 12                	add    %dl,(%rdx)
	...
 485:	00 00                	add    %al,(%rax)
 487:	00 52 00             	add    %dl,0x0(%rdx)
 48a:	00 00                	add    %al,(%rax)
 48c:	12 00                	adc    (%rax),%al
	...
 49e:	00 00                	add    %al,(%rax)
 4a0:	7b 00                	jnp    4a2 <_init-0xb5e>
 4a2:	00 00                	add    %al,(%rax)
 4a4:	12 00                	adc    (%rax),%al
	...
 4b6:	00 00                	add    %al,(%rax)
 4b8:	45 00 00             	add    %r8b,(%r8)
 4bb:	00 12                	add    %dl,(%rdx)
	...
 4cd:	00 00                	add    %al,(%rax)
 4cf:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
 4d3:	00 12                	add    %dl,(%rdx)
	...
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 c9                	add    %cl,%cl
 4e9:	00 00                	add    %al,(%rax)
 4eb:	00 20                	add    %ah,(%rax)
	...
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 3e                	add    %bh,(%rsi)
 501:	00 00                	add    %al,(%rax)
 503:	00 12                	add    %dl,(%rdx)
	...
 515:	00 00                	add    %al,(%rax)
 517:	00 06                	add    %al,(%rsi)
 519:	00 00                	add    %al,(%rax)
 51b:	00 12                	add    %dl,(%rdx)
	...
 52d:	00 00                	add    %al,(%rax)
 52f:	00 0c 00             	add    %cl,(%rax,%rax,1)
 532:	00 00                	add    %al,(%rax)
 534:	12 00                	adc    (%rax),%al
	...
 546:	00 00                	add    %al,(%rax)
 548:	60                   	(bad)  
 549:	00 00                	add    %al,(%rax)
 54b:	00 12                	add    %dl,(%rdx)
	...
 55d:	00 00                	add    %al,(%rax)
 55f:	00 01                	add    %al,(%rcx)
 561:	00 00                	add    %al,(%rax)
 563:	00 12                	add    %dl,(%rdx)
	...
 575:	00 00                	add    %al,(%rax)
 577:	00 d8                	add    %bl,%al
 579:	00 00                	add    %al,(%rax)
 57b:	00 20                	add    %ah,(%rax)
	...
 58d:	00 00                	add    %al,(%rax)
 58f:	00 65 00             	add    %ah,0x0(%rbp)
 592:	00 00                	add    %al,(%rax)
 594:	22 00                	and    (%rax),%al
	...
 5a6:	00 00                	add    %al,(%rax)
 5a8:	31 00                	xor    %eax,(%rax)
 5aa:	00 00                	add    %al,(%rax)
 5ac:	11 00                	adc    %eax,(%rax)
 5ae:	1b 00                	sbb    (%rax),%eax
 5b0:	20 50 00             	and    %dl,0x0(%rax)
 5b3:	00 00                	add    %al,(%rax)
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 08                	add    %cl,(%rax)
 5b9:	00 00                	add    %al,(%rax)
 5bb:	00 00                	add    %al,(%rax)
 5bd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000000005c0 <.dynstr>:
 5c0:	00 65 78             	add    %ah,0x78(%rbp)
 5c3:	69 74 00 66 6f 70 65 	imul   $0x6e65706f,0x66(%rax,%rax,1),%esi
 5ca:	6e 
 5cb:	00 70 65             	add    %dh,0x65(%rax)
 5ce:	72 72                	jb     642 <_init-0x9be>
 5d0:	6f                   	outsl  %ds:(%rsi),(%dx)
 5d1:	72 00                	jb     5d3 <_init-0xa2d>
 5d3:	73 74                	jae    649 <_init-0x9b7>
 5d5:	72 6e                	jb     645 <_init-0x9bb>
 5d7:	63 70 79             	movsxd 0x79(%rax),%esi
 5da:	00 70 75             	add    %dh,0x75(%rax)
 5dd:	74 73                	je     652 <_init-0x9ae>
 5df:	00 5f 5f             	add    %bl,0x5f(%rdi)
 5e2:	73 74                	jae    658 <_init-0x9a8>
 5e4:	61                   	(bad)  
 5e5:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 5e8:	63 68 6b             	movsxd 0x6b(%rax),%ebp
 5eb:	5f                   	pop    %rdi
 5ec:	66 61                	data16 (bad) 
 5ee:	69 6c 00 73 74 64 69 	imul   $0x6e696474,0x73(%rax,%rax,1),%ebp
 5f5:	6e 
 5f6:	00 70 72             	add    %dh,0x72(%rax)
 5f9:	69 6e 74 66 00 73 74 	imul   $0x74730066,0x74(%rsi),%ebp
 600:	72 74                	jb     676 <_init-0x98a>
 602:	6f                   	outsl  %ds:(%rsi),(%dx)
 603:	6c                   	insb   (%dx),%es:(%rdi)
 604:	00 66 67             	add    %ah,0x67(%rsi)
 607:	65 74 73             	gs je  67d <_init-0x983>
 60a:	00 73 74             	add    %dh,0x74(%rbx)
 60d:	72 6c                	jb     67b <_init-0x985>
 60f:	65 6e                	outsb  %gs:(%rsi),(%dx)
 611:	00 6d 65             	add    %ch,0x65(%rbp)
 614:	6d                   	insl   (%dx),%es:(%rdi)
 615:	73 65                	jae    67c <_init-0x984>
 617:	74 00                	je     619 <_init-0x9e7>
 619:	66 63 6c 6f 73       	movsxd 0x73(%rdi,%rbp,2),%bp
 61e:	65 00 61 74          	add    %ah,%gs:0x74(%rcx)
 622:	6f                   	outsl  %ds:(%rsi),(%dx)
 623:	69 00 5f 5f 63 78    	imul   $0x78635f5f,(%rax),%eax
 629:	61                   	(bad)  
 62a:	5f                   	pop    %rdi
 62b:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 631:	7a 65                	jp     698 <_init-0x968>
 633:	00 73 74             	add    %dh,0x74(%rbx)
 636:	72 63                	jb     69b <_init-0x965>
 638:	6d                   	insl   (%dx),%es:(%rdi)
 639:	70 00                	jo     63b <_init-0x9c5>
 63b:	5f                   	pop    %rdi
 63c:	5f                   	pop    %rdi
 63d:	6c                   	insb   (%dx),%es:(%rdi)
 63e:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 645:	72 74                	jb     6bb <_init-0x945>
 647:	5f                   	pop    %rdi
 648:	6d                   	insl   (%dx),%es:(%rdi)
 649:	61                   	(bad)  
 64a:	69 6e 00 6c 69 62 63 	imul   $0x6362696c,0x0(%rsi),%ebp
 651:	2e 73 6f             	jae,pn 6c3 <_init-0x93d>
 654:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 659:	49                   	rex.WB
 65a:	42                   	rex.X
 65b:	43 5f                	rex.XB pop %r15
 65d:	32 2e                	xor    (%rsi),%ch
 65f:	34 00                	xor    $0x0,%al
 661:	47                   	rex.RXB
 662:	4c                   	rex.WR
 663:	49                   	rex.WB
 664:	42                   	rex.X
 665:	43 5f                	rex.XB pop %r15
 667:	32 2e                	xor    (%rsi),%ch
 669:	32 2e                	xor    (%rsi),%ch
 66b:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 670:	4d 5f                	rex.WRB pop %r15
 672:	64 65 72 65          	fs gs jb 6db <_init-0x925>
 676:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 67d:	4d 
 67e:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 680:	6f                   	outsl  %ds:(%rsi),(%dx)
 681:	6e                   	outsb  %ds:(%rsi),(%dx)
 682:	65 54                	gs push %rsp
 684:	61                   	(bad)  
 685:	62                   	(bad)  
 686:	6c                   	insb   (%dx),%es:(%rdi)
 687:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 68b:	67 6d                	insl   (%dx),%es:(%edi)
 68d:	6f                   	outsl  %ds:(%rsi),(%dx)
 68e:	6e                   	outsb  %ds:(%rsi),(%dx)
 68f:	5f                   	pop    %rdi
 690:	73 74                	jae    706 <_init-0x8fa>
 692:	61                   	(bad)  
 693:	72 74                	jb     709 <_init-0x8f7>
 695:	5f                   	pop    %rdi
 696:	5f                   	pop    %rdi
 697:	00 5f 49             	add    %bl,0x49(%rdi)
 69a:	54                   	push   %rsp
 69b:	4d 5f                	rex.WRB pop %r15
 69d:	72 65                	jb     704 <_init-0x8fc>
 69f:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 6a6:	4d 
 6a7:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 6a9:	6f                   	outsl  %ds:(%rsi),(%dx)
 6aa:	6e                   	outsb  %ds:(%rsi),(%dx)
 6ab:	65 54                	gs push %rsp
 6ad:	61                   	(bad)  
 6ae:	62                   	.byte 0x62
 6af:	6c                   	insb   (%dx),%es:(%rdi)
 6b0:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000006b2 <.gnu.version>:
 6b2:	00 00                	add    %al,(%rax)
 6b4:	02 00                	add    (%rax),%al
 6b6:	01 00                	add    %eax,(%rax)
 6b8:	02 00                	add    (%rax),%al
 6ba:	02 00                	add    (%rax),%al
 6bc:	02 00                	add    (%rax),%al
 6be:	03 00                	add    (%rax),%eax
 6c0:	02 00                	add    (%rax),%al
 6c2:	02 00                	add    (%rax),%al
 6c4:	02 00                	add    (%rax),%al
 6c6:	02 00                	add    (%rax),%al
 6c8:	02 00                	add    (%rax),%al
 6ca:	01 00                	add    %eax,(%rax)
 6cc:	02 00                	add    (%rax),%al
 6ce:	02 00                	add    (%rax),%al
 6d0:	02 00                	add    (%rax),%al
 6d2:	02 00                	add    (%rax),%al
 6d4:	02 00                	add    (%rax),%al
 6d6:	01 00                	add    %eax,(%rax)
 6d8:	02 00                	add    (%rax),%al
 6da:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000006e0 <.gnu.version_r>:
 6e0:	01 00                	add    %eax,(%rax)
 6e2:	02 00                	add    (%rax),%al
 6e4:	8d 00                	lea    (%rax),%eax
 6e6:	00 00                	add    %al,(%rax)
 6e8:	10 00                	adc    %al,(%rax)
 6ea:	00 00                	add    %al,(%rax)
 6ec:	00 00                	add    %al,(%rax)
 6ee:	00 00                	add    %al,(%rax)
 6f0:	14 69                	adc    $0x69,%al
 6f2:	69 0d 00 00 03 00 97 	imul   $0x97,0x30000(%rip),%ecx        # 306fc <_end+0x2b4a4>
 6f9:	00 00 00 
 6fc:	10 00                	adc    %al,(%rax)
 6fe:	00 00                	add    %al,(%rax)
 700:	75 1a                	jne    71c <_init-0x8e4>
 702:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 708:	a1                   	.byte 0xa1
 709:	00 00                	add    %al,(%rax)
 70b:	00 00                	add    %al,(%rax)
 70d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000710 <.rela.dyn>:
 710:	f0 4c 00 00          	lock rex.WR add %r8b,(%rax)
 714:	00 00                	add    %al,(%rax)
 716:	00 00                	add    %al,(%rax)
 718:	08 00                	or     %al,(%rax)
 71a:	00 00                	add    %al,(%rax)
 71c:	00 00                	add    %al,(%rax)
 71e:	00 00                	add    %al,(%rax)
 720:	e0 12                	loopne 734 <_init-0x8cc>
 722:	00 00                	add    %al,(%rax)
 724:	00 00                	add    %al,(%rax)
 726:	00 00                	add    %al,(%rax)
 728:	f8                   	clc    
 729:	4c 00 00             	rex.WR add %r8b,(%rax)
 72c:	00 00                	add    %al,(%rax)
 72e:	00 00                	add    %al,(%rax)
 730:	08 00                	or     %al,(%rax)
 732:	00 00                	add    %al,(%rax)
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	a0 12 00 00 00 00 00 	movabs 0x12,%al
 73f:	00 00 
 741:	4d 00 00             	rex.WRB add %r8b,(%r8)
 744:	00 00                	add    %al,(%rax)
 746:	00 00                	add    %al,(%rax)
 748:	08 00                	or     %al,(%rax)
 74a:	00 00                	add    %al,(%rax)
 74c:	00 00                	add    %al,(%rax)
 74e:	00 00                	add    %al,(%rax)
 750:	ad                   	lods   %ds:(%rsi),%eax
 751:	1a 00                	sbb    (%rax),%al
 753:	00 00                	add    %al,(%rax)
 755:	00 00                	add    %al,(%rax)
 757:	00 08                	add    %cl,(%rax)
 759:	4d 00 00             	rex.WRB add %r8b,(%r8)
 75c:	00 00                	add    %al,(%rax)
 75e:	00 00                	add    %al,(%rax)
 760:	08 00                	or     %al,(%rax)
 762:	00 00                	add    %al,(%rax)
 764:	00 00                	add    %al,(%rax)
 766:	00 00                	add    %al,(%rax)
 768:	1a 17                	sbb    (%rdi),%dl
 76a:	00 00                	add    %al,(%rax)
 76c:	00 00                	add    %al,(%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	10 4d 00             	adc    %cl,0x0(%rbp)
 773:	00 00                	add    %al,(%rax)
 775:	00 00                	add    %al,(%rax)
 777:	00 08                	add    %cl,(%rax)
 779:	00 00                	add    %al,(%rax)
 77b:	00 00                	add    %al,(%rax)
 77d:	00 00                	add    %al,(%rax)
 77f:	00 07                	add    %al,(%rdi)
 781:	1e                   	(bad)  
 782:	00 00                	add    %al,(%rax)
 784:	00 00                	add    %al,(%rax)
 786:	00 00                	add    %al,(%rax)
 788:	18 4d 00             	sbb    %cl,0x0(%rbp)
 78b:	00 00                	add    %al,(%rax)
 78d:	00 00                	add    %al,(%rax)
 78f:	00 08                	add    %cl,(%rax)
 791:	00 00                	add    %al,(%rax)
 793:	00 00                	add    %al,(%rax)
 795:	00 00                	add    %al,(%rax)
 797:	00 12                	add    %dl,(%rdx)
 799:	1e                   	(bad)  
 79a:	00 00                	add    %al,(%rax)
 79c:	00 00                	add    %al,(%rax)
 79e:	00 00                	add    %al,(%rax)
 7a0:	20 4d 00             	and    %cl,0x0(%rbp)
 7a3:	00 00                	add    %al,(%rax)
 7a5:	00 00                	add    %al,(%rax)
 7a7:	00 08                	add    %cl,(%rax)
 7a9:	00 00                	add    %al,(%rax)
 7ab:	00 00                	add    %al,(%rax)
 7ad:	00 00                	add    %al,(%rax)
 7af:	00 1d 1e 00 00 00    	add    %bl,0x1e(%rip)        # 7d3 <_init-0x82d>
 7b5:	00 00                	add    %al,(%rax)
 7b7:	00 28                	add    %ch,(%rax)
 7b9:	4d 00 00             	rex.WRB add %r8b,(%r8)
 7bc:	00 00                	add    %al,(%rax)
 7be:	00 00                	add    %al,(%rax)
 7c0:	08 00                	or     %al,(%rax)
 7c2:	00 00                	add    %al,(%rax)
 7c4:	00 00                	add    %al,(%rax)
 7c6:	00 00                	add    %al,(%rax)
 7c8:	28 1e                	sub    %bl,(%rsi)
 7ca:	00 00                	add    %al,(%rax)
 7cc:	00 00                	add    %al,(%rax)
 7ce:	00 00                	add    %al,(%rax)
 7d0:	30 4d 00             	xor    %cl,0x0(%rbp)
 7d3:	00 00                	add    %al,(%rax)
 7d5:	00 00                	add    %al,(%rax)
 7d7:	00 08                	add    %cl,(%rax)
 7d9:	00 00                	add    %al,(%rax)
 7db:	00 00                	add    %al,(%rax)
 7dd:	00 00                	add    %al,(%rax)
 7df:	00 98 1e 00 00 00    	add    %bl,0x1e(%rax)
 7e5:	00 00                	add    %al,(%rax)
 7e7:	00 38                	add    %bh,(%rax)
 7e9:	4d 00 00             	rex.WRB add %r8b,(%r8)
 7ec:	00 00                	add    %al,(%rax)
 7ee:	00 00                	add    %al,(%rax)
 7f0:	08 00                	or     %al,(%rax)
 7f2:	00 00                	add    %al,(%rax)
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 00                	add    %al,(%rax)
 7f8:	a3 1e 00 00 00 00 00 	movabs %eax,0x400000000000001e
 7ff:	00 40 
 801:	4d 00 00             	rex.WRB add %r8b,(%r8)
 804:	00 00                	add    %al,(%rax)
 806:	00 00                	add    %al,(%rax)
 808:	08 00                	or     %al,(%rax)
 80a:	00 00                	add    %al,(%rax)
 80c:	00 00                	add    %al,(%rax)
 80e:	00 00                	add    %al,(%rax)
 810:	ae                   	scas   %es:(%rdi),%al
 811:	1e                   	(bad)  
 812:	00 00                	add    %al,(%rax)
 814:	00 00                	add    %al,(%rax)
 816:	00 00                	add    %al,(%rax)
 818:	48                   	rex.W
 819:	4d 00 00             	rex.WRB add %r8b,(%r8)
 81c:	00 00                	add    %al,(%rax)
 81e:	00 00                	add    %al,(%rax)
 820:	08 00                	or     %al,(%rax)
 822:	00 00                	add    %al,(%rax)
 824:	00 00                	add    %al,(%rax)
 826:	00 00                	add    %al,(%rax)
 828:	b3 20                	mov    $0x20,%bl
 82a:	00 00                	add    %al,(%rax)
 82c:	00 00                	add    %al,(%rax)
 82e:	00 00                	add    %al,(%rax)
 830:	08 50 00             	or     %dl,0x0(%rax)
 833:	00 00                	add    %al,(%rax)
 835:	00 00                	add    %al,(%rax)
 837:	00 08                	add    %cl,(%rax)
 839:	00 00                	add    %al,(%rax)
 83b:	00 00                	add    %al,(%rax)
 83d:	00 00                	add    %al,(%rax)
 83f:	00 08                	add    %cl,(%rax)
 841:	50                   	push   %rax
 842:	00 00                	add    %al,(%rax)
 844:	00 00                	add    %al,(%rax)
 846:	00 00                	add    %al,(%rax)
 848:	c8 4f 00 00          	enter  $0x4f,$0x0
 84c:	00 00                	add    %al,(%rax)
 84e:	00 00                	add    %al,(%rax)
 850:	06                   	(bad)  
 851:	00 00                	add    %al,(%rax)
 853:	00 02                	add    %al,(%rdx)
	...
 85d:	00 00                	add    %al,(%rax)
 85f:	00 d0                	add    %dl,%al
 861:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 864:	00 00                	add    %al,(%rax)
 866:	00 00                	add    %al,(%rax)
 868:	06                   	(bad)  
 869:	00 00                	add    %al,(%rax)
 86b:	00 09                	add    %cl,(%rcx)
	...
 875:	00 00                	add    %al,(%rax)
 877:	00 d8                	add    %bl,%al
 879:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 87c:	00 00                	add    %al,(%rax)
 87e:	00 00                	add    %al,(%rax)
 880:	06                   	(bad)  
 881:	00 00                	add    %al,(%rax)
 883:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 88e:	00 00                	add    %al,(%rax)
 890:	e0 4f                	loopne 8e1 <_init-0x71f>
 892:	00 00                	add    %al,(%rax)
 894:	00 00                	add    %al,(%rax)
 896:	00 00                	add    %al,(%rax)
 898:	06                   	(bad)  
 899:	00 00                	add    %al,(%rax)
 89b:	00 12                	add    %dl,(%rdx)
	...
 8a5:	00 00                	add    %al,(%rax)
 8a7:	00 e8                	add    %ch,%al
 8a9:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 8ac:	00 00                	add    %al,(%rax)
 8ae:	00 00                	add    %al,(%rax)
 8b0:	06                   	(bad)  
 8b1:	00 00                	add    %al,(%rax)
 8b3:	00 13                	add    %dl,(%rbx)
	...
 8bd:	00 00                	add    %al,(%rax)
 8bf:	00 20                	add    %ah,(%rax)
 8c1:	50                   	push   %rax
 8c2:	00 00                	add    %al,(%rax)
 8c4:	00 00                	add    %al,(%rax)
 8c6:	00 00                	add    %al,(%rax)
 8c8:	05 00 00 00 14       	add    $0x14000000,%eax
	...

Disassembly of section .rela.plt:

00000000000008d8 <.rela.plt>:
 8d8:	58                   	pop    %rax
 8d9:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 8dc:	00 00                	add    %al,(%rax)
 8de:	00 00                	add    %al,(%rax)
 8e0:	07                   	(bad)  
 8e1:	00 00                	add    %al,(%rax)
 8e3:	00 01                	add    %al,(%rcx)
	...
 8ed:	00 00                	add    %al,(%rax)
 8ef:	00 60 4f             	add    %ah,0x4f(%rax)
 8f2:	00 00                	add    %al,(%rax)
 8f4:	00 00                	add    %al,(%rax)
 8f6:	00 00                	add    %al,(%rax)
 8f8:	07                   	(bad)  
 8f9:	00 00                	add    %al,(%rax)
 8fb:	00 03                	add    %al,(%rbx)
	...
 905:	00 00                	add    %al,(%rax)
 907:	00 68 4f             	add    %ch,0x4f(%rax)
 90a:	00 00                	add    %al,(%rax)
 90c:	00 00                	add    %al,(%rax)
 90e:	00 00                	add    %al,(%rax)
 910:	07                   	(bad)  
 911:	00 00                	add    %al,(%rax)
 913:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 91e:	00 00                	add    %al,(%rax)
 920:	70 4f                	jo     971 <_init-0x68f>
 922:	00 00                	add    %al,(%rax)
 924:	00 00                	add    %al,(%rax)
 926:	00 00                	add    %al,(%rax)
 928:	07                   	(bad)  
 929:	00 00                	add    %al,(%rax)
 92b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 931 <_init-0x6cf>
 931:	00 00                	add    %al,(%rax)
 933:	00 00                	add    %al,(%rax)
 935:	00 00                	add    %al,(%rax)
 937:	00 78 4f             	add    %bh,0x4f(%rax)
 93a:	00 00                	add    %al,(%rax)
 93c:	00 00                	add    %al,(%rax)
 93e:	00 00                	add    %al,(%rax)
 940:	07                   	(bad)  
 941:	00 00                	add    %al,(%rax)
 943:	00 06                	add    %al,(%rsi)
	...
 94d:	00 00                	add    %al,(%rax)
 94f:	00 80 4f 00 00 00    	add    %al,0x4f(%rax)
 955:	00 00                	add    %al,(%rax)
 957:	00 07                	add    %al,(%rdi)
 959:	00 00                	add    %al,(%rax)
 95b:	00 07                	add    %al,(%rdi)
	...
 965:	00 00                	add    %al,(%rax)
 967:	00 88 4f 00 00 00    	add    %cl,0x4f(%rax)
 96d:	00 00                	add    %al,(%rax)
 96f:	00 07                	add    %al,(%rdi)
 971:	00 00                	add    %al,(%rax)
 973:	00 08                	add    %cl,(%rax)
	...
 97d:	00 00                	add    %al,(%rax)
 97f:	00 90 4f 00 00 00    	add    %dl,0x4f(%rax)
 985:	00 00                	add    %al,(%rax)
 987:	00 07                	add    %al,(%rdi)
 989:	00 00                	add    %al,(%rax)
 98b:	00 0a                	add    %cl,(%rdx)
	...
 995:	00 00                	add    %al,(%rax)
 997:	00 98 4f 00 00 00    	add    %bl,0x4f(%rax)
 99d:	00 00                	add    %al,(%rax)
 99f:	00 07                	add    %al,(%rdi)
 9a1:	00 00                	add    %al,(%rax)
 9a3:	00 0b                	add    %cl,(%rbx)
	...
 9ad:	00 00                	add    %al,(%rax)
 9af:	00 a0 4f 00 00 00    	add    %ah,0x4f(%rax)
 9b5:	00 00                	add    %al,(%rax)
 9b7:	00 07                	add    %al,(%rdi)
 9b9:	00 00                	add    %al,(%rax)
 9bb:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 9c1 <_init-0x63f>
 9c1:	00 00                	add    %al,(%rax)
 9c3:	00 00                	add    %al,(%rax)
 9c5:	00 00                	add    %al,(%rax)
 9c7:	00 a8 4f 00 00 00    	add    %ch,0x4f(%rax)
 9cd:	00 00                	add    %al,(%rax)
 9cf:	00 07                	add    %al,(%rdi)
 9d1:	00 00                	add    %al,(%rax)
 9d3:	00 0e                	add    %cl,(%rsi)
	...
 9dd:	00 00                	add    %al,(%rax)
 9df:	00 b0 4f 00 00 00    	add    %dh,0x4f(%rax)
 9e5:	00 00                	add    %al,(%rax)
 9e7:	00 07                	add    %al,(%rdi)
 9e9:	00 00                	add    %al,(%rax)
 9eb:	00 0f                	add    %cl,(%rdi)
	...
 9f5:	00 00                	add    %al,(%rax)
 9f7:	00 b8 4f 00 00 00    	add    %bh,0x4f(%rax)
 9fd:	00 00                	add    %al,(%rax)
 9ff:	00 07                	add    %al,(%rdi)
 a01:	00 00                	add    %al,(%rax)
 a03:	00 10                	add    %dl,(%rax)
	...
 a0d:	00 00                	add    %al,(%rax)
 a0f:	00 c0                	add    %al,%al
 a11:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 a14:	00 00                	add    %al,(%rax)
 a16:	00 00                	add    %al,(%rax)
 a18:	07                   	(bad)  
 a19:	00 00                	add    %al,(%rax)
 a1b:	00 11                	add    %dl,(%rcx)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c9 3f 00 00 	mov    0x3fc9(%rip),%rax        # 4fd8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 22 3f 00 00    	push   0x3f22(%rip)        # 4f48 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 23 3f 00 00 	bnd jmp *0x3f23(%rip)        # 4f50 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 cd 3e 00 00 	bnd jmp *0x3ecd(%rip)        # 4fe8 <__cxa_finalize@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001120 <strncpy@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 2d 3e 00 00 	bnd jmp *0x3e2d(%rip)        # 4f58 <strncpy@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <puts@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 25 3e 00 00 	bnd jmp *0x3e25(%rip)        # 4f60 <puts@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <fclose@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 1d 3e 00 00 	bnd jmp *0x3e1d(%rip)        # 4f68 <fclose@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <strlen@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 15 3e 00 00 	bnd jmp *0x3e15(%rip)        # 4f70 <strlen@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <__stack_chk_fail@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 0d 3e 00 00 	bnd jmp *0x3e0d(%rip)        # 4f78 <__stack_chk_fail@GLIBC_2.4>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <printf@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 05 3e 00 00 	bnd jmp *0x3e05(%rip)        # 4f80 <printf@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <memset@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 fd 3d 00 00 	bnd jmp *0x3dfd(%rip)        # 4f88 <memset@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <fgets@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 f5 3d 00 00 	bnd jmp *0x3df5(%rip)        # 4f90 <fgets@GLIBC_2.2.5>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <strcmp@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 ed 3d 00 00 	bnd jmp *0x3ded(%rip)        # 4f98 <strcmp@GLIBC_2.2.5>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <strtol@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 e5 3d 00 00 	bnd jmp *0x3de5(%rip)        # 4fa0 <strtol@GLIBC_2.2.5>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <fopen@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 dd 3d 00 00 	bnd jmp *0x3ddd(%rip)        # 4fa8 <fopen@GLIBC_2.2.5>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <perror@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 d5 3d 00 00 	bnd jmp *0x3dd5(%rip)        # 4fb0 <perror@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <atoi@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 cd 3d 00 00 	bnd jmp *0x3dcd(%rip)        # 4fb8 <atoi@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <exit@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 c5 3d 00 00 	bnd jmp *0x3dc5(%rip)        # 4fc0 <exit@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001200 <_start>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	31 ed                	xor    %ebp,%ebp
    1206:	49 89 d1             	mov    %rdx,%r9
    1209:	5e                   	pop    %rsi
    120a:	48 89 e2             	mov    %rsp,%rdx
    120d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1211:	50                   	push   %rax
    1212:	54                   	push   %rsp
    1213:	4c 8d 05 36 0f 00 00 	lea    0xf36(%rip),%r8        # 2150 <__libc_csu_fini>
    121a:	48 8d 0d bf 0e 00 00 	lea    0xebf(%rip),%rcx        # 20e0 <__libc_csu_init>
    1221:	48 8d 3d 98 01 00 00 	lea    0x198(%rip),%rdi        # 13c0 <main>
    1228:	ff 15 a2 3d 00 00    	call   *0x3da2(%rip)        # 4fd0 <__libc_start_main@GLIBC_2.2.5>
    122e:	f4                   	hlt    
    122f:	90                   	nop

0000000000001230 <deregister_tm_clones>:
    1230:	48 8d 3d d9 3d 00 00 	lea    0x3dd9(%rip),%rdi        # 5010 <__TMC_END__>
    1237:	48 8d 05 d2 3d 00 00 	lea    0x3dd2(%rip),%rax        # 5010 <__TMC_END__>
    123e:	48 39 f8             	cmp    %rdi,%rax
    1241:	74 15                	je     1258 <deregister_tm_clones+0x28>
    1243:	48 8b 05 7e 3d 00 00 	mov    0x3d7e(%rip),%rax        # 4fc8 <_ITM_deregisterTMCloneTable@Base>
    124a:	48 85 c0             	test   %rax,%rax
    124d:	74 09                	je     1258 <deregister_tm_clones+0x28>
    124f:	ff e0                	jmp    *%rax
    1251:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1258:	c3                   	ret    
    1259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001260 <register_tm_clones>:
    1260:	48 8d 3d a9 3d 00 00 	lea    0x3da9(%rip),%rdi        # 5010 <__TMC_END__>
    1267:	48 8d 35 a2 3d 00 00 	lea    0x3da2(%rip),%rsi        # 5010 <__TMC_END__>
    126e:	48 29 fe             	sub    %rdi,%rsi
    1271:	48 89 f0             	mov    %rsi,%rax
    1274:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1278:	48 c1 f8 03          	sar    $0x3,%rax
    127c:	48 01 c6             	add    %rax,%rsi
    127f:	48 d1 fe             	sar    %rsi
    1282:	74 14                	je     1298 <register_tm_clones+0x38>
    1284:	48 8b 05 55 3d 00 00 	mov    0x3d55(%rip),%rax        # 4fe0 <_ITM_registerTMCloneTable@Base>
    128b:	48 85 c0             	test   %rax,%rax
    128e:	74 08                	je     1298 <register_tm_clones+0x38>
    1290:	ff e0                	jmp    *%rax
    1292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1298:	c3                   	ret    
    1299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012a0 <__do_global_dtors_aux>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	80 3d 7d 3d 00 00 00 	cmpb   $0x0,0x3d7d(%rip)        # 5028 <completed.8061>
    12ab:	75 2b                	jne    12d8 <__do_global_dtors_aux+0x38>
    12ad:	55                   	push   %rbp
    12ae:	48 83 3d 32 3d 00 00 	cmpq   $0x0,0x3d32(%rip)        # 4fe8 <__cxa_finalize@GLIBC_2.2.5>
    12b5:	00 
    12b6:	48 89 e5             	mov    %rsp,%rbp
    12b9:	74 0c                	je     12c7 <__do_global_dtors_aux+0x27>
    12bb:	48 8b 3d 46 3d 00 00 	mov    0x3d46(%rip),%rdi        # 5008 <__dso_handle>
    12c2:	e8 49 fe ff ff       	call   1110 <__cxa_finalize@plt>
    12c7:	e8 64 ff ff ff       	call   1230 <deregister_tm_clones>
    12cc:	c6 05 55 3d 00 00 01 	movb   $0x1,0x3d55(%rip)        # 5028 <completed.8061>
    12d3:	5d                   	pop    %rbp
    12d4:	c3                   	ret    
    12d5:	0f 1f 00             	nopl   (%rax)
    12d8:	c3                   	ret    
    12d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012e0 <frame_dummy>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	e9 77 ff ff ff       	jmp    1260 <register_tm_clones>

00000000000012e9 <Disp_Options>:
    12e9:	f3 0f 1e fa          	endbr64 
    12ed:	55                   	push   %rbp
    12ee:	48 89 e5             	mov    %rsp,%rbp
    12f1:	48 8d 3d 10 1d 00 00 	lea    0x1d10(%rip),%rdi        # 3008 <_IO_stdin_used+0x8>
    12f8:	b8 00 00 00 00       	mov    $0x0,%eax
    12fd:	e8 6e fe ff ff       	call   1170 <printf@plt>
    1302:	48 8d 3d 27 1d 00 00 	lea    0x1d27(%rip),%rdi        # 3030 <_IO_stdin_used+0x30>
    1309:	b8 00 00 00 00       	mov    $0x0,%eax
    130e:	e8 5d fe ff ff       	call   1170 <printf@plt>
    1313:	48 8d 3d 3e 1d 00 00 	lea    0x1d3e(%rip),%rdi        # 3058 <_IO_stdin_used+0x58>
    131a:	b8 00 00 00 00       	mov    $0x0,%eax
    131f:	e8 4c fe ff ff       	call   1170 <printf@plt>
    1324:	48 8d 3d 5d 1d 00 00 	lea    0x1d5d(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    132b:	b8 00 00 00 00       	mov    $0x0,%eax
    1330:	e8 3b fe ff ff       	call   1170 <printf@plt>
    1335:	48 8d 3d 7c 1d 00 00 	lea    0x1d7c(%rip),%rdi        # 30b8 <_IO_stdin_used+0xb8>
    133c:	b8 00 00 00 00       	mov    $0x0,%eax
    1341:	e8 2a fe ff ff       	call   1170 <printf@plt>
    1346:	48 8d 3d 9b 1d 00 00 	lea    0x1d9b(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    134d:	b8 00 00 00 00       	mov    $0x0,%eax
    1352:	e8 19 fe ff ff       	call   1170 <printf@plt>
    1357:	48 8d 3d b2 1d 00 00 	lea    0x1db2(%rip),%rdi        # 3110 <_IO_stdin_used+0x110>
    135e:	b8 00 00 00 00       	mov    $0x0,%eax
    1363:	e8 08 fe ff ff       	call   1170 <printf@plt>
    1368:	48 8d 3d c9 1d 00 00 	lea    0x1dc9(%rip),%rdi        # 3138 <_IO_stdin_used+0x138>
    136f:	b8 00 00 00 00       	mov    $0x0,%eax
    1374:	e8 f7 fd ff ff       	call   1170 <printf@plt>
    1379:	48 8d 3d e8 1d 00 00 	lea    0x1de8(%rip),%rdi        # 3168 <_IO_stdin_used+0x168>
    1380:	b8 00 00 00 00       	mov    $0x0,%eax
    1385:	e8 e6 fd ff ff       	call   1170 <printf@plt>
    138a:	48 8d 3d 03 1e 00 00 	lea    0x1e03(%rip),%rdi        # 3194 <_IO_stdin_used+0x194>
    1391:	b8 00 00 00 00       	mov    $0x0,%eax
    1396:	e8 d5 fd ff ff       	call   1170 <printf@plt>
    139b:	48 8d 3d 0d 1e 00 00 	lea    0x1e0d(%rip),%rdi        # 31af <_IO_stdin_used+0x1af>
    13a2:	b8 00 00 00 00       	mov    $0x0,%eax
    13a7:	e8 c4 fd ff ff       	call   1170 <printf@plt>
    13ac:	48 8d 3d 0a 1e 00 00 	lea    0x1e0a(%rip),%rdi        # 31bd <_IO_stdin_used+0x1bd>
    13b3:	b8 00 00 00 00       	mov    $0x0,%eax
    13b8:	e8 b3 fd ff ff       	call   1170 <printf@plt>
    13bd:	90                   	nop
    13be:	5d                   	pop    %rbp
    13bf:	c3                   	ret    

00000000000013c0 <main>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	55                   	push   %rbp
    13c5:	48 89 e5             	mov    %rsp,%rbp
    13c8:	48 83 ec 10          	sub    $0x10,%rsp
    13cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13d3:	00 00 
    13d5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13d9:	31 c0                	xor    %eax,%eax
    13db:	48 8d 3d f6 1d 00 00 	lea    0x1df6(%rip),%rdi        # 31d8 <_IO_stdin_used+0x1d8>
    13e2:	b8 00 00 00 00       	mov    $0x0,%eax
    13e7:	e8 84 fd ff ff       	call   1170 <printf@plt>
    13ec:	e8 f8 fe ff ff       	call   12e9 <Disp_Options>
    13f1:	c6 45 f4 01          	movb   $0x1,-0xc(%rbp)
    13f5:	e9 9b 00 00 00       	jmp    1495 <main+0xd5>
    13fa:	48 8b 15 1f 3c 00 00 	mov    0x3c1f(%rip),%rdx        # 5020 <stdin@@GLIBC_2.2.5>
    1401:	48 8d 45 f5          	lea    -0xb(%rbp),%rax
    1405:	be 03 00 00 00       	mov    $0x3,%esi
    140a:	48 89 c7             	mov    %rax,%rdi
    140d:	e8 7e fd ff ff       	call   1190 <fgets@plt>
    1412:	48 8d 45 f5          	lea    -0xb(%rbp),%rax
    1416:	48 89 c7             	mov    %rax,%rdi
    1419:	e8 c2 fd ff ff       	call   11e0 <atoi@plt>
    141e:	89 c6                	mov    %eax,%esi
    1420:	48 8d 3d df 1d 00 00 	lea    0x1ddf(%rip),%rdi        # 3206 <_IO_stdin_used+0x206>
    1427:	b8 00 00 00 00       	mov    $0x0,%eax
    142c:	e8 3f fd ff ff       	call   1170 <printf@plt>
    1431:	48 8d 45 f5          	lea    -0xb(%rbp),%rax
    1435:	48 89 c7             	mov    %rax,%rdi
    1438:	e8 a3 fd ff ff       	call   11e0 <atoi@plt>
    143d:	83 f8 0a             	cmp    $0xa,%eax
    1440:	7f 10                	jg     1452 <main+0x92>
    1442:	48 8d 45 f5          	lea    -0xb(%rbp),%rax
    1446:	48 89 c7             	mov    %rax,%rdi
    1449:	e8 92 fd ff ff       	call   11e0 <atoi@plt>
    144e:	85 c0                	test   %eax,%eax
    1450:	79 18                	jns    146a <main+0xaa>
    1452:	be 0a 00 00 00       	mov    $0xa,%esi
    1457:	48 8d 3d c2 1d 00 00 	lea    0x1dc2(%rip),%rdi        # 3220 <_IO_stdin_used+0x220>
    145e:	b8 00 00 00 00       	mov    $0x0,%eax
    1463:	e8 08 fd ff ff       	call   1170 <printf@plt>
    1468:	eb 2b                	jmp    1495 <main+0xd5>
    146a:	48 8d 45 f5          	lea    -0xb(%rbp),%rax
    146e:	48 89 c7             	mov    %rax,%rdi
    1471:	e8 6a fd ff ff       	call   11e0 <atoi@plt>
    1476:	83 e8 01             	sub    $0x1,%eax
    1479:	48 98                	cltq   
    147b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1482:	00 
    1483:	48 8d 05 76 38 00 00 	lea    0x3876(%rip),%rax        # 4d00 <FcnPtr>
    148a:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    148e:	ff d0                	call   *%rax
    1490:	e8 54 fe ff ff       	call   12e9 <Disp_Options>
    1495:	80 7d f4 00          	cmpb   $0x0,-0xc(%rbp)
    1499:	0f 85 5b ff ff ff    	jne    13fa <main+0x3a>
    149f:	b8 00 00 00 00       	mov    $0x0,%eax
    14a4:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    14a8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    14af:	00 00 
    14b1:	74 05                	je     14b8 <main+0xf8>
    14b3:	e8 a8 fc ff ff       	call   1160 <__stack_chk_fail@plt>
    14b8:	c9                   	leave  
    14b9:	c3                   	ret    

00000000000014ba <map_words>:
    14ba:	f3 0f 1e fa          	endbr64 
    14be:	55                   	push   %rbp
    14bf:	48 89 e5             	mov    %rsp,%rbp
    14c2:	48 83 ec 20          	sub    $0x20,%rsp
    14c6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14ca:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    14ce:	89 c8                	mov    %ecx,%eax
    14d0:	89 fa                	mov    %edi,%edx
    14d2:	88 55 fc             	mov    %dl,-0x4(%rbp)
    14d5:	88 45 f8             	mov    %al,-0x8(%rbp)
    14d8:	80 7d fc 00          	cmpb   $0x0,-0x4(%rbp)
    14dc:	7e 06                	jle    14e4 <map_words+0x2a>
    14de:	80 7d fc 09          	cmpb   $0x9,-0x4(%rbp)
    14e2:	7e 0a                	jle    14ee <map_words+0x34>
    14e4:	b8 02 00 00 00       	mov    $0x2,%eax
    14e9:	e9 ac 01 00 00       	jmp    169a <map_words+0x1e0>
    14ee:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
    14f2:	83 f8 04             	cmp    $0x4,%eax
    14f5:	0f 84 2e 01 00 00    	je     1629 <map_words+0x16f>
    14fb:	83 f8 04             	cmp    $0x4,%eax
    14fe:	0f 8f 4d 01 00 00    	jg     1651 <map_words+0x197>
    1504:	83 f8 03             	cmp    $0x3,%eax
    1507:	0f 84 f4 00 00 00    	je     1601 <map_words+0x147>
    150d:	83 f8 03             	cmp    $0x3,%eax
    1510:	0f 8f 3b 01 00 00    	jg     1651 <map_words+0x197>
    1516:	83 f8 01             	cmp    $0x1,%eax
    1519:	74 0e                	je     1529 <map_words+0x6f>
    151b:	83 f8 02             	cmp    $0x2,%eax
    151e:	0f 84 b2 00 00 00    	je     15d6 <map_words+0x11c>
    1524:	e9 28 01 00 00       	jmp    1651 <map_words+0x197>
    1529:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    152d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1532:	be 00 00 00 00       	mov    $0x0,%esi
    1537:	48 89 c7             	mov    %rax,%rdi
    153a:	e8 71 fc ff ff       	call   11b0 <strtol@plt>
    153f:	48 85 c0             	test   %rax,%rax
    1542:	7f 16                	jg     155a <map_words+0xa0>
    1544:	48 8d 3d 0d 1d 00 00 	lea    0x1d0d(%rip),%rdi        # 3258 <_IO_stdin_used+0x258>
    154b:	e8 e0 fb ff ff       	call   1130 <puts@plt>
    1550:	b8 03 00 00 00       	mov    $0x3,%eax
    1555:	e9 40 01 00 00       	jmp    169a <map_words+0x1e0>
    155a:	0f be 55 f8          	movsbl -0x8(%rbp),%edx
    155e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1562:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1566:	48 89 ce             	mov    %rcx,%rsi
    1569:	48 89 c7             	mov    %rax,%rdi
    156c:	e8 2b 01 00 00       	call   169c <rollnum_fail>
    1571:	84 c0                	test   %al,%al
    1573:	74 22                	je     1597 <map_words+0xdd>
    1575:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1579:	48 89 c6             	mov    %rax,%rsi
    157c:	48 8d 3d f5 1c 00 00 	lea    0x1cf5(%rip),%rdi        # 3278 <_IO_stdin_used+0x278>
    1583:	b8 00 00 00 00       	mov    $0x0,%eax
    1588:	e8 e3 fb ff ff       	call   1170 <printf@plt>
    158d:	b8 01 00 00 00       	mov    $0x1,%eax
    1592:	e9 03 01 00 00       	jmp    169a <map_words+0x1e0>
    1597:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    159b:	48 89 c7             	mov    %rax,%rdi
    159e:	e8 ad fb ff ff       	call   1150 <strlen@plt>
    15a3:	48 89 c2             	mov    %rax,%rdx
    15a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15aa:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    15ae:	48 89 ce             	mov    %rcx,%rsi
    15b1:	48 89 c7             	mov    %rax,%rdi
    15b4:	e8 67 fb ff ff       	call   1120 <strncpy@plt>
    15b9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15bd:	48 89 c6             	mov    %rax,%rsi
    15c0:	48 8d 3d d9 1c 00 00 	lea    0x1cd9(%rip),%rdi        # 32a0 <_IO_stdin_used+0x2a0>
    15c7:	b8 00 00 00 00       	mov    $0x0,%eax
    15cc:	e8 9f fb ff ff       	call   1170 <printf@plt>
    15d1:	e9 bf 00 00 00       	jmp    1695 <map_words+0x1db>
    15d6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15da:	48 89 c7             	mov    %rax,%rdi
    15dd:	e8 6e fb ff ff       	call   1150 <strlen@plt>
    15e2:	48 89 c2             	mov    %rax,%rdx
    15e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15e9:	48 8d 48 03          	lea    0x3(%rax),%rcx
    15ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    15f1:	48 89 c6             	mov    %rax,%rsi
    15f4:	48 89 cf             	mov    %rcx,%rdi
    15f7:	e8 24 fb ff ff       	call   1120 <strncpy@plt>
    15fc:	e9 94 00 00 00       	jmp    1695 <map_words+0x1db>
    1601:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1605:	48 89 c7             	mov    %rax,%rdi
    1608:	e8 43 fb ff ff       	call   1150 <strlen@plt>
    160d:	48 89 c2             	mov    %rax,%rdx
    1610:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1614:	48 8d 48 12          	lea    0x12(%rax),%rcx
    1618:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    161c:	48 89 c6             	mov    %rax,%rsi
    161f:	48 89 cf             	mov    %rcx,%rdi
    1622:	e8 f9 fa ff ff       	call   1120 <strncpy@plt>
    1627:	eb 6c                	jmp    1695 <map_words+0x1db>
    1629:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    162d:	48 89 c7             	mov    %rax,%rdi
    1630:	e8 1b fb ff ff       	call   1150 <strlen@plt>
    1635:	48 89 c2             	mov    %rax,%rdx
    1638:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    163c:	48 8d 48 21          	lea    0x21(%rax),%rcx
    1640:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1644:	48 89 c6             	mov    %rax,%rsi
    1647:	48 89 cf             	mov    %rcx,%rdi
    164a:	e8 d1 fa ff ff       	call   1120 <strncpy@plt>
    164f:	eb 44                	jmp    1695 <map_words+0x1db>
    1651:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1655:	48 89 c7             	mov    %rax,%rdi
    1658:	e8 f3 fa ff ff       	call   1150 <strlen@plt>
    165d:	48 89 c6             	mov    %rax,%rsi
    1660:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
    1664:	83 e8 05             	sub    $0x5,%eax
    1667:	48 63 d0             	movslq %eax,%rdx
    166a:	48 89 d0             	mov    %rdx,%rax
    166d:	48 01 c0             	add    %rax,%rax
    1670:	48 01 d0             	add    %rdx,%rax
    1673:	48 8d 50 20          	lea    0x20(%rax),%rdx
    1677:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    167b:	48 01 d0             	add    %rdx,%rax
    167e:	48 8d 48 06          	lea    0x6(%rax),%rcx
    1682:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1686:	48 89 f2             	mov    %rsi,%rdx
    1689:	48 89 c6             	mov    %rax,%rsi
    168c:	48 89 cf             	mov    %rcx,%rdi
    168f:	e8 8c fa ff ff       	call   1120 <strncpy@plt>
    1694:	90                   	nop
    1695:	b8 00 00 00 00       	mov    $0x0,%eax
    169a:	c9                   	leave  
    169b:	c3                   	ret    

000000000000169c <rollnum_fail>:
    169c:	f3 0f 1e fa          	endbr64 
    16a0:	55                   	push   %rbp
    16a1:	48 89 e5             	mov    %rsp,%rbp
    16a4:	48 83 ec 30          	sub    $0x30,%rsp
    16a8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    16ac:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    16b0:	89 d0                	mov    %edx,%eax
    16b2:	88 45 dc             	mov    %al,-0x24(%rbp)
    16b5:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    16b9:	eb 4c                	jmp    1707 <rollnum_fail+0x6b>
    16bb:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    16bf:	48 63 d0             	movslq %eax,%rdx
    16c2:	48 89 d0             	mov    %rdx,%rax
    16c5:	48 01 c0             	add    %rax,%rax
    16c8:	48 01 d0             	add    %rdx,%rax
    16cb:	48 c1 e0 02          	shl    $0x2,%rax
    16cf:	48 01 d0             	add    %rdx,%rax
    16d2:	48 c1 e0 02          	shl    $0x2,%rax
    16d6:	48 01 d0             	add    %rdx,%rax
    16d9:	48 8d 15 60 39 00 00 	lea    0x3960(%rip),%rdx        # 5040 <students>
    16e0:	48 01 c2             	add    %rax,%rdx
    16e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16e7:	48 89 d6             	mov    %rdx,%rsi
    16ea:	48 89 c7             	mov    %rax,%rdi
    16ed:	e8 ae fa ff ff       	call   11a0 <strcmp@plt>
    16f2:	85 c0                	test   %eax,%eax
    16f4:	75 07                	jne    16fd <rollnum_fail+0x61>
    16f6:	b8 01 00 00 00       	mov    $0x1,%eax
    16fb:	eb 1b                	jmp    1718 <rollnum_fail+0x7c>
    16fd:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1701:	83 c0 01             	add    $0x1,%eax
    1704:	88 45 ff             	mov    %al,-0x1(%rbp)
    1707:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    170b:	0f be 45 dc          	movsbl -0x24(%rbp),%eax
    170f:	39 c2                	cmp    %eax,%edx
    1711:	7c a8                	jl     16bb <rollnum_fail+0x1f>
    1713:	b8 00 00 00 00       	mov    $0x0,%eax
    1718:	c9                   	leave  
    1719:	c3                   	ret    

000000000000171a <read_file>:
    171a:	f3 0f 1e fa          	endbr64 
    171e:	55                   	push   %rbp
    171f:	48 89 e5             	mov    %rsp,%rbp
    1722:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    1729:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1730:	00 00 
    1732:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1736:	31 c0                	xor    %eax,%eax
    1738:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    173f:	00 00 00 00 
    1743:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    174a:	00 00 00 00 
    174e:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    1755:	00 00 00 00 
    1759:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    1760:	00 00 00 00 
    1764:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    176b:	00 00 00 00 
    176f:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    1776:	00 00 00 00 
    177a:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    1781:	00 00 00 00 
    1785:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    178c:	00 00 00 00 
    1790:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    1797:	00 00 00 00 
    179b:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    17a2:	00 00 00 00 
    17a6:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    17ad:	00 00 00 00 
    17b1:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    17b8:	00 00 00 00 
    17bc:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    17c3:	00 00 00 00 
    17c7:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    17ce:	00 00 00 00 
    17d2:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    17d9:	00 00 00 00 
    17dd:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    17e4:	00 00 00 00 
    17e8:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    17ef:	00 00 00 00 
    17f3:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    17fa:	00 00 00 00 
    17fe:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    1805:	00 
    1806:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    180d:	00 
    180e:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    1815:	00 
    1816:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    181d:	00 
    181e:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    1825:	00 
    1826:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    182d:	00 
    182e:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    1835:	00 
    1836:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    183d:	00 
    183e:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1845:	00 
    1846:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    184d:	00 
    184e:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1855:	00 
    1856:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    185d:	00 
    185e:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1865:	00 
    1866:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    186d:	00 
    186e:	c6 85 c3 fe ff ff 00 	movb   $0x0,-0x13d(%rbp)
    1875:	c6 85 c4 fe ff ff 00 	movb   $0x0,-0x13c(%rbp)
    187c:	48 c7 85 d0 fe ff ff 	movq   $0x0,-0x130(%rbp)
    1883:	00 00 00 00 
    1887:	48 c7 85 d8 fe ff ff 	movq   $0x0,-0x128(%rbp)
    188e:	00 00 00 00 
    1892:	c7 85 e0 fe ff ff 00 	movl   $0x0,-0x120(%rbp)
    1899:	00 00 00 
    189c:	c6 85 c5 fe ff ff 00 	movb   $0x0,-0x13b(%rbp)
    18a3:	c6 85 c6 fe ff ff 01 	movb   $0x1,-0x13a(%rbp)
    18aa:	48 8d 35 17 1a 00 00 	lea    0x1a17(%rip),%rsi        # 32c8 <_IO_stdin_used+0x2c8>
    18b1:	48 8d 3d 12 1a 00 00 	lea    0x1a12(%rip),%rdi        # 32ca <_IO_stdin_used+0x2ca>
    18b8:	e8 03 f9 ff ff       	call   11c0 <fopen@plt>
    18bd:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
    18c4:	48 83 bd c8 fe ff ff 	cmpq   $0x0,-0x138(%rbp)
    18cb:	00 
    18cc:	0f 85 8a 01 00 00    	jne    1a5c <read_file+0x342>
    18d2:	48 8d 3d f1 19 00 00 	lea    0x19f1(%rip),%rdi        # 32ca <_IO_stdin_used+0x2ca>
    18d9:	e8 f2 f8 ff ff       	call   11d0 <perror@plt>
    18de:	e9 b4 01 00 00       	jmp    1a97 <read_file+0x37d>
    18e3:	0f b6 85 c3 fe ff ff 	movzbl -0x13d(%rbp),%eax
    18ea:	48 98                	cltq   
    18ec:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    18f3:	ff 
    18f4:	3c 20                	cmp    $0x20,%al
    18f6:	74 2f                	je     1927 <read_file+0x20d>
    18f8:	0f b6 b5 c3 fe ff ff 	movzbl -0x13d(%rbp),%esi
    18ff:	0f b6 85 c5 fe ff ff 	movzbl -0x13b(%rbp),%eax
    1906:	8d 50 01             	lea    0x1(%rax),%edx
    1909:	88 95 c5 fe ff ff    	mov    %dl,-0x13b(%rbp)
    190f:	0f b6 c8             	movzbl %al,%ecx
    1912:	48 63 c6             	movslq %esi,%rax
    1915:	0f b6 94 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%edx
    191c:	ff 
    191d:	48 63 c1             	movslq %ecx,%rax
    1920:	88 94 05 d0 fe ff ff 	mov    %dl,-0x130(%rbp,%rax,1)
    1927:	0f b6 85 c3 fe ff ff 	movzbl -0x13d(%rbp),%eax
    192e:	48 98                	cltq   
    1930:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1937:	ff 
    1938:	3c 20                	cmp    $0x20,%al
    193a:	75 09                	jne    1945 <read_file+0x22b>
    193c:	80 bd c5 fe ff ff 00 	cmpb   $0x0,-0x13b(%rbp)
    1943:	75 29                	jne    196e <read_file+0x254>
    1945:	0f b6 85 c3 fe ff ff 	movzbl -0x13d(%rbp),%eax
    194c:	83 c0 01             	add    $0x1,%eax
    194f:	48 98                	cltq   
    1951:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1958:	ff 
    1959:	3c 0a                	cmp    $0xa,%al
    195b:	0f 85 b4 00 00 00    	jne    1a15 <read_file+0x2fb>
    1961:	80 bd c5 fe ff ff 00 	cmpb   $0x0,-0x13b(%rbp)
    1968:	0f 84 a7 00 00 00    	je     1a15 <read_file+0x2fb>
    196e:	0f b6 85 c4 fe ff ff 	movzbl -0x13c(%rbp),%eax
    1975:	0f be c8             	movsbl %al,%ecx
    1978:	0f b6 85 c4 fe ff ff 	movzbl -0x13c(%rbp),%eax
    197f:	48 63 d0             	movslq %eax,%rdx
    1982:	48 89 d0             	mov    %rdx,%rax
    1985:	48 01 c0             	add    %rax,%rax
    1988:	48 01 d0             	add    %rdx,%rax
    198b:	48 c1 e0 02          	shl    $0x2,%rax
    198f:	48 01 d0             	add    %rdx,%rax
    1992:	48 c1 e0 02          	shl    $0x2,%rax
    1996:	48 01 d0             	add    %rdx,%rax
    1999:	48 8d 15 a0 36 00 00 	lea    0x36a0(%rip),%rdx        # 5040 <students>
    19a0:	48 01 c2             	add    %rax,%rdx
    19a3:	0f b6 85 c6 fe ff ff 	movzbl -0x13a(%rbp),%eax
    19aa:	0f be c0             	movsbl %al,%eax
    19ad:	48 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%rsi
    19b4:	89 c7                	mov    %eax,%edi
    19b6:	e8 ff fa ff ff       	call   14ba <map_words>
    19bb:	88 85 c7 fe ff ff    	mov    %al,-0x139(%rbp)
    19c1:	80 bd c7 fe ff ff 03 	cmpb   $0x3,-0x139(%rbp)
    19c8:	75 02                	jne    19cc <read_file+0x2b2>
    19ca:	eb 59                	jmp    1a25 <read_file+0x30b>
    19cc:	80 bd c7 fe ff ff 01 	cmpb   $0x1,-0x139(%rbp)
    19d3:	75 10                	jne    19e5 <read_file+0x2cb>
    19d5:	0f b6 85 c4 fe ff ff 	movzbl -0x13c(%rbp),%eax
    19dc:	83 e8 01             	sub    $0x1,%eax
    19df:	88 85 c4 fe ff ff    	mov    %al,-0x13c(%rbp)
    19e5:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
    19ec:	ba 14 00 00 00       	mov    $0x14,%edx
    19f1:	be 00 00 00 00       	mov    $0x0,%esi
    19f6:	48 89 c7             	mov    %rax,%rdi
    19f9:	e8 82 f7 ff ff       	call   1180 <memset@plt>
    19fe:	0f b6 85 c6 fe ff ff 	movzbl -0x13a(%rbp),%eax
    1a05:	83 c0 01             	add    $0x1,%eax
    1a08:	88 85 c6 fe ff ff    	mov    %al,-0x13a(%rbp)
    1a0e:	c6 85 c5 fe ff ff 00 	movb   $0x0,-0x13b(%rbp)
    1a15:	0f b6 85 c3 fe ff ff 	movzbl -0x13d(%rbp),%eax
    1a1c:	83 c0 01             	add    $0x1,%eax
    1a1f:	88 85 c3 fe ff ff    	mov    %al,-0x13d(%rbp)
    1a25:	0f b6 85 c3 fe ff ff 	movzbl -0x13d(%rbp),%eax
    1a2c:	48 98                	cltq   
    1a2e:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1a35:	ff 
    1a36:	3c 0a                	cmp    $0xa,%al
    1a38:	0f 85 a5 fe ff ff    	jne    18e3 <read_file+0x1c9>
    1a3e:	c6 85 c6 fe ff ff 01 	movb   $0x1,-0x13a(%rbp)
    1a45:	c6 85 c3 fe ff ff 00 	movb   $0x0,-0x13d(%rbp)
    1a4c:	0f b6 85 c4 fe ff ff 	movzbl -0x13c(%rbp),%eax
    1a53:	83 c0 01             	add    $0x1,%eax
    1a56:	88 85 c4 fe ff ff    	mov    %al,-0x13c(%rbp)
    1a5c:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
    1a63:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1a6a:	be 00 01 00 00       	mov    $0x100,%esi
    1a6f:	48 89 c7             	mov    %rax,%rdi
    1a72:	e8 19 f7 ff ff       	call   1190 <fgets@plt>
    1a77:	48 85 c0             	test   %rax,%rax
    1a7a:	75 a9                	jne    1a25 <read_file+0x30b>
    1a7c:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    1a83:	48 89 c7             	mov    %rax,%rdi
    1a86:	e8 b5 f6 ff ff       	call   1140 <fclose@plt>
    1a8b:	48 8d 3d 46 18 00 00 	lea    0x1846(%rip),%rdi        # 32d8 <_IO_stdin_used+0x2d8>
    1a92:	e8 99 f6 ff ff       	call   1130 <puts@plt>
    1a97:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a9b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1aa2:	00 00 
    1aa4:	74 05                	je     1aab <read_file+0x391>
    1aa6:	e8 b5 f6 ff ff       	call   1160 <__stack_chk_fail@plt>
    1aab:	c9                   	leave  
    1aac:	c3                   	ret    

0000000000001aad <read_manual>:
    1aad:	f3 0f 1e fa          	endbr64 
    1ab1:	55                   	push   %rbp
    1ab2:	48 89 e5             	mov    %rsp,%rbp
    1ab5:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    1abc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ac3:	00 00 
    1ac5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ac9:	31 c0                	xor    %eax,%eax
    1acb:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    1ad2:	00 00 00 00 
    1ad6:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    1add:	00 00 00 00 
    1ae1:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    1ae8:	00 00 00 00 
    1aec:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    1af3:	00 00 00 00 
    1af7:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    1afe:	00 00 00 00 
    1b02:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    1b09:	00 00 00 00 
    1b0d:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    1b14:	00 00 00 00 
    1b18:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    1b1f:	00 00 00 00 
    1b23:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    1b2a:	00 00 00 00 
    1b2e:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    1b35:	00 00 00 00 
    1b39:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    1b40:	00 00 00 00 
    1b44:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    1b4b:	00 00 00 00 
    1b4f:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    1b56:	00 00 00 00 
    1b5a:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    1b61:	00 00 00 00 
    1b65:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    1b6c:	00 00 00 00 
    1b70:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    1b77:	00 00 00 00 
    1b7b:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    1b82:	00 00 00 00 
    1b86:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    1b8d:	00 00 00 00 
    1b91:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    1b98:	00 
    1b99:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    1ba0:	00 
    1ba1:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    1ba8:	00 
    1ba9:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    1bb0:	00 
    1bb1:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    1bb8:	00 
    1bb9:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    1bc0:	00 
    1bc1:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    1bc8:	00 
    1bc9:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1bd0:	00 
    1bd1:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1bd8:	00 
    1bd9:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1be0:	00 
    1be1:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1be8:	00 
    1be9:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1bf0:	00 
    1bf1:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1bf8:	00 
    1bf9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1c00:	00 
    1c01:	c6 85 cc fe ff ff 00 	movb   $0x0,-0x134(%rbp)
    1c08:	48 c7 85 d0 fe ff ff 	movq   $0x0,-0x130(%rbp)
    1c0f:	00 00 00 00 
    1c13:	48 c7 85 d8 fe ff ff 	movq   $0x0,-0x128(%rbp)
    1c1a:	00 00 00 00 
    1c1e:	c7 85 e0 fe ff ff 00 	movl   $0x0,-0x120(%rbp)
    1c25:	00 00 00 
    1c28:	c6 85 cd fe ff ff 00 	movb   $0x0,-0x133(%rbp)
    1c2f:	c6 85 ce fe ff ff 01 	movb   $0x1,-0x132(%rbp)
    1c36:	0f b6 05 ec 33 00 00 	movzbl 0x33ec(%rip),%eax        # 5029 <line_order.3092>
    1c3d:	3c 09                	cmp    $0x9,%al
    1c3f:	76 16                	jbe    1c57 <read_manual+0x1aa>
    1c41:	48 8d 3d b4 16 00 00 	lea    0x16b4(%rip),%rdi        # 32fc <_IO_stdin_used+0x2fc>
    1c48:	b8 00 00 00 00       	mov    $0x0,%eax
    1c4d:	e8 1e f5 ff ff       	call   1170 <printf@plt>
    1c52:	e9 9a 01 00 00       	jmp    1df1 <read_manual+0x344>
    1c57:	48 8b 15 c2 33 00 00 	mov    0x33c2(%rip),%rdx        # 5020 <stdin@@GLIBC_2.2.5>
    1c5e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1c65:	be 00 01 00 00       	mov    $0x100,%esi
    1c6a:	48 89 c7             	mov    %rax,%rdi
    1c6d:	e8 1e f5 ff ff       	call   1190 <fgets@plt>
    1c72:	e9 45 01 00 00       	jmp    1dbc <read_manual+0x30f>
    1c77:	0f b6 85 cc fe ff ff 	movzbl -0x134(%rbp),%eax
    1c7e:	48 98                	cltq   
    1c80:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1c87:	ff 
    1c88:	3c 20                	cmp    $0x20,%al
    1c8a:	74 2f                	je     1cbb <read_manual+0x20e>
    1c8c:	0f b6 b5 cc fe ff ff 	movzbl -0x134(%rbp),%esi
    1c93:	0f b6 85 cd fe ff ff 	movzbl -0x133(%rbp),%eax
    1c9a:	8d 50 01             	lea    0x1(%rax),%edx
    1c9d:	88 95 cd fe ff ff    	mov    %dl,-0x133(%rbp)
    1ca3:	0f b6 c8             	movzbl %al,%ecx
    1ca6:	48 63 c6             	movslq %esi,%rax
    1ca9:	0f b6 94 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%edx
    1cb0:	ff 
    1cb1:	48 63 c1             	movslq %ecx,%rax
    1cb4:	88 94 05 d0 fe ff ff 	mov    %dl,-0x130(%rbp,%rax,1)
    1cbb:	0f b6 85 cc fe ff ff 	movzbl -0x134(%rbp),%eax
    1cc2:	48 98                	cltq   
    1cc4:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1ccb:	ff 
    1ccc:	3c 20                	cmp    $0x20,%al
    1cce:	75 09                	jne    1cd9 <read_manual+0x22c>
    1cd0:	80 bd cd fe ff ff 00 	cmpb   $0x0,-0x133(%rbp)
    1cd7:	75 29                	jne    1d02 <read_manual+0x255>
    1cd9:	0f b6 85 cc fe ff ff 	movzbl -0x134(%rbp),%eax
    1ce0:	83 c0 01             	add    $0x1,%eax
    1ce3:	48 98                	cltq   
    1ce5:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1cec:	ff 
    1ced:	3c 0a                	cmp    $0xa,%al
    1cef:	0f 85 b7 00 00 00    	jne    1dac <read_manual+0x2ff>
    1cf5:	80 bd cd fe ff ff 00 	cmpb   $0x0,-0x133(%rbp)
    1cfc:	0f 84 aa 00 00 00    	je     1dac <read_manual+0x2ff>
    1d02:	0f b6 05 20 33 00 00 	movzbl 0x3320(%rip),%eax        # 5029 <line_order.3092>
    1d09:	0f be c8             	movsbl %al,%ecx
    1d0c:	0f b6 05 16 33 00 00 	movzbl 0x3316(%rip),%eax        # 5029 <line_order.3092>
    1d13:	0f b6 c0             	movzbl %al,%eax
    1d16:	48 63 d0             	movslq %eax,%rdx
    1d19:	48 89 d0             	mov    %rdx,%rax
    1d1c:	48 01 c0             	add    %rax,%rax
    1d1f:	48 01 d0             	add    %rdx,%rax
    1d22:	48 c1 e0 02          	shl    $0x2,%rax
    1d26:	48 01 d0             	add    %rdx,%rax
    1d29:	48 c1 e0 02          	shl    $0x2,%rax
    1d2d:	48 01 d0             	add    %rdx,%rax
    1d30:	48 8d 15 09 33 00 00 	lea    0x3309(%rip),%rdx        # 5040 <students>
    1d37:	48 01 c2             	add    %rax,%rdx
    1d3a:	0f b6 85 ce fe ff ff 	movzbl -0x132(%rbp),%eax
    1d41:	0f be c0             	movsbl %al,%eax
    1d44:	48 8d b5 d0 fe ff ff 	lea    -0x130(%rbp),%rsi
    1d4b:	89 c7                	mov    %eax,%edi
    1d4d:	e8 68 f7 ff ff       	call   14ba <map_words>
    1d52:	88 85 cf fe ff ff    	mov    %al,-0x131(%rbp)
    1d58:	80 bd cf fe ff ff 03 	cmpb   $0x3,-0x131(%rbp)
    1d5f:	75 02                	jne    1d63 <read_manual+0x2b6>
    1d61:	eb 59                	jmp    1dbc <read_manual+0x30f>
    1d63:	80 bd cf fe ff ff 01 	cmpb   $0x1,-0x131(%rbp)
    1d6a:	75 10                	jne    1d7c <read_manual+0x2cf>
    1d6c:	0f b6 05 b6 32 00 00 	movzbl 0x32b6(%rip),%eax        # 5029 <line_order.3092>
    1d73:	83 e8 01             	sub    $0x1,%eax
    1d76:	88 05 ad 32 00 00    	mov    %al,0x32ad(%rip)        # 5029 <line_order.3092>
    1d7c:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
    1d83:	ba 14 00 00 00       	mov    $0x14,%edx
    1d88:	be 00 00 00 00       	mov    $0x0,%esi
    1d8d:	48 89 c7             	mov    %rax,%rdi
    1d90:	e8 eb f3 ff ff       	call   1180 <memset@plt>
    1d95:	0f b6 85 ce fe ff ff 	movzbl -0x132(%rbp),%eax
    1d9c:	83 c0 01             	add    $0x1,%eax
    1d9f:	88 85 ce fe ff ff    	mov    %al,-0x132(%rbp)
    1da5:	c6 85 cd fe ff ff 00 	movb   $0x0,-0x133(%rbp)
    1dac:	0f b6 85 cc fe ff ff 	movzbl -0x134(%rbp),%eax
    1db3:	83 c0 01             	add    $0x1,%eax
    1db6:	88 85 cc fe ff ff    	mov    %al,-0x134(%rbp)
    1dbc:	0f b6 85 cc fe ff ff 	movzbl -0x134(%rbp),%eax
    1dc3:	48 98                	cltq   
    1dc5:	0f b6 84 05 f0 fe ff 	movzbl -0x110(%rbp,%rax,1),%eax
    1dcc:	ff 
    1dcd:	3c 0a                	cmp    $0xa,%al
    1dcf:	0f 85 a2 fe ff ff    	jne    1c77 <read_manual+0x1ca>
    1dd5:	0f b6 05 4d 32 00 00 	movzbl 0x324d(%rip),%eax        # 5029 <line_order.3092>
    1ddc:	83 c0 01             	add    $0x1,%eax
    1ddf:	88 05 44 32 00 00    	mov    %al,0x3244(%rip)        # 5029 <line_order.3092>
    1de5:	48 8d 3d ec 14 00 00 	lea    0x14ec(%rip),%rdi        # 32d8 <_IO_stdin_used+0x2d8>
    1dec:	e8 3f f3 ff ff       	call   1130 <puts@plt>
    1df1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1df5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1dfc:	00 00 
    1dfe:	74 05                	je     1e05 <read_manual+0x358>
    1e00:	e8 5b f3 ff ff       	call   1160 <__stack_chk_fail@plt>
    1e05:	c9                   	leave  
    1e06:	c3                   	ret    

0000000000001e07 <find_rollnum>:
    1e07:	f3 0f 1e fa          	endbr64 
    1e0b:	55                   	push   %rbp
    1e0c:	48 89 e5             	mov    %rsp,%rbp
    1e0f:	90                   	nop
    1e10:	5d                   	pop    %rbp
    1e11:	c3                   	ret    

0000000000001e12 <find_firstname>:
    1e12:	f3 0f 1e fa          	endbr64 
    1e16:	55                   	push   %rbp
    1e17:	48 89 e5             	mov    %rsp,%rbp
    1e1a:	90                   	nop
    1e1b:	5d                   	pop    %rbp
    1e1c:	c3                   	ret    

0000000000001e1d <find_coureid>:
    1e1d:	f3 0f 1e fa          	endbr64 
    1e21:	55                   	push   %rbp
    1e22:	48 89 e5             	mov    %rsp,%rbp
    1e25:	90                   	nop
    1e26:	5d                   	pop    %rbp
    1e27:	c3                   	ret    

0000000000001e28 <totalnum_student>:
    1e28:	f3 0f 1e fa          	endbr64 
    1e2c:	55                   	push   %rbp
    1e2d:	48 89 e5             	mov    %rsp,%rbp
    1e30:	48 83 ec 10          	sub    $0x10,%rsp
    1e34:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1e38:	eb 0a                	jmp    1e44 <totalnum_student+0x1c>
    1e3a:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1e3e:	83 c0 01             	add    $0x1,%eax
    1e41:	88 45 ff             	mov    %al,-0x1(%rbp)
    1e44:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1e48:	0f b6 c0             	movzbl %al,%eax
    1e4b:	48 63 d0             	movslq %eax,%rdx
    1e4e:	48 89 d0             	mov    %rdx,%rax
    1e51:	48 01 c0             	add    %rax,%rax
    1e54:	48 01 d0             	add    %rdx,%rax
    1e57:	48 c1 e0 02          	shl    $0x2,%rax
    1e5b:	48 01 d0             	add    %rdx,%rax
    1e5e:	48 c1 e0 02          	shl    $0x2,%rax
    1e62:	48 01 d0             	add    %rdx,%rax
    1e65:	48 8d 15 d4 31 00 00 	lea    0x31d4(%rip),%rdx        # 5040 <students>
    1e6c:	48 01 d0             	add    %rdx,%rax
    1e6f:	48 89 c7             	mov    %rax,%rdi
    1e72:	e8 69 f3 ff ff       	call   11e0 <atoi@plt>
    1e77:	85 c0                	test   %eax,%eax
    1e79:	75 bf                	jne    1e3a <totalnum_student+0x12>
    1e7b:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1e7f:	0f b6 c0             	movzbl %al,%eax
    1e82:	89 c6                	mov    %eax,%esi
    1e84:	48 8d 3d 85 14 00 00 	lea    0x1485(%rip),%rdi        # 3310 <_IO_stdin_used+0x310>
    1e8b:	b8 00 00 00 00       	mov    $0x0,%eax
    1e90:	e8 db f2 ff ff       	call   1170 <printf@plt>
    1e95:	90                   	nop
    1e96:	c9                   	leave  
    1e97:	c3                   	ret    

0000000000001e98 <delete_rollnum>:
    1e98:	f3 0f 1e fa          	endbr64 
    1e9c:	55                   	push   %rbp
    1e9d:	48 89 e5             	mov    %rsp,%rbp
    1ea0:	90                   	nop
    1ea1:	5d                   	pop    %rbp
    1ea2:	c3                   	ret    

0000000000001ea3 <update_rollnum>:
    1ea3:	f3 0f 1e fa          	endbr64 
    1ea7:	55                   	push   %rbp
    1ea8:	48 89 e5             	mov    %rsp,%rbp
    1eab:	90                   	nop
    1eac:	5d                   	pop    %rbp
    1ead:	c3                   	ret    

0000000000001eae <show_all>:
    1eae:	f3 0f 1e fa          	endbr64 
    1eb2:	55                   	push   %rbp
    1eb3:	48 89 e5             	mov    %rsp,%rbp
    1eb6:	48 83 ec 10          	sub    $0x10,%rsp
    1eba:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    1ebe:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1ec2:	48 63 d0             	movslq %eax,%rdx
    1ec5:	48 89 d0             	mov    %rdx,%rax
    1ec8:	48 01 c0             	add    %rax,%rax
    1ecb:	48 01 d0             	add    %rdx,%rax
    1ece:	48 c1 e0 02          	shl    $0x2,%rax
    1ed2:	48 01 d0             	add    %rdx,%rax
    1ed5:	48 c1 e0 02          	shl    $0x2,%rax
    1ed9:	48 01 d0             	add    %rdx,%rax
    1edc:	48 8d 15 5d 31 00 00 	lea    0x315d(%rip),%rdx        # 5040 <students>
    1ee3:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
    1ee7:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1eeb:	48 63 d0             	movslq %eax,%rdx
    1eee:	48 89 d0             	mov    %rdx,%rax
    1ef1:	48 01 c0             	add    %rax,%rax
    1ef4:	48 01 d0             	add    %rdx,%rax
    1ef7:	48 c1 e0 02          	shl    $0x2,%rax
    1efb:	48 01 d0             	add    %rdx,%rax
    1efe:	48 c1 e0 02          	shl    $0x2,%rax
    1f02:	48 01 d0             	add    %rdx,%rax
    1f05:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1f09:	48 8d 05 30 31 00 00 	lea    0x3130(%rip),%rax        # 5040 <students>
    1f10:	48 01 d0             	add    %rdx,%rax
    1f13:	48 8d 48 02          	lea    0x2(%rax),%rcx
    1f17:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1f1b:	48 63 d0             	movslq %eax,%rdx
    1f1e:	48 89 d0             	mov    %rdx,%rax
    1f21:	48 01 c0             	add    %rax,%rax
    1f24:	48 01 d0             	add    %rdx,%rax
    1f27:	48 c1 e0 02          	shl    $0x2,%rax
    1f2b:	48 01 d0             	add    %rdx,%rax
    1f2e:	48 c1 e0 02          	shl    $0x2,%rax
    1f32:	48 01 d0             	add    %rdx,%rax
    1f35:	48 8d 15 04 31 00 00 	lea    0x3104(%rip),%rdx        # 5040 <students>
    1f3c:	48 01 d0             	add    %rdx,%rax
    1f3f:	48 8d 50 03          	lea    0x3(%rax),%rdx
    1f43:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1f47:	83 c0 01             	add    $0x1,%eax
    1f4a:	49 89 f0             	mov    %rsi,%r8
    1f4d:	89 c6                	mov    %eax,%esi
    1f4f:	48 8d 3d e2 13 00 00 	lea    0x13e2(%rip),%rdi        # 3338 <_IO_stdin_used+0x338>
    1f56:	b8 00 00 00 00       	mov    $0x0,%eax
    1f5b:	e8 10 f2 ff ff       	call   1170 <printf@plt>
    1f60:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1f64:	48 63 d0             	movslq %eax,%rdx
    1f67:	48 89 d0             	mov    %rdx,%rax
    1f6a:	48 01 c0             	add    %rax,%rax
    1f6d:	48 01 d0             	add    %rdx,%rax
    1f70:	48 c1 e0 02          	shl    $0x2,%rax
    1f74:	48 01 d0             	add    %rdx,%rax
    1f77:	48 c1 e0 02          	shl    $0x2,%rax
    1f7b:	48 01 d0             	add    %rdx,%rax
    1f7e:	48 8d 50 2c          	lea    0x2c(%rax),%rdx
    1f82:	48 8d 05 b7 30 00 00 	lea    0x30b7(%rip),%rax        # 5040 <students>
    1f89:	48 01 d0             	add    %rdx,%rax
    1f8c:	4c 8d 40 06          	lea    0x6(%rax),%r8
    1f90:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1f94:	48 63 d0             	movslq %eax,%rdx
    1f97:	48 89 d0             	mov    %rdx,%rax
    1f9a:	48 01 c0             	add    %rax,%rax
    1f9d:	48 01 d0             	add    %rdx,%rax
    1fa0:	48 c1 e0 02          	shl    $0x2,%rax
    1fa4:	48 01 d0             	add    %rdx,%rax
    1fa7:	48 c1 e0 02          	shl    $0x2,%rax
    1fab:	48 01 d0             	add    %rdx,%rax
    1fae:	48 8d 50 29          	lea    0x29(%rax),%rdx
    1fb2:	48 8d 05 87 30 00 00 	lea    0x3087(%rip),%rax        # 5040 <students>
    1fb9:	48 01 d0             	add    %rdx,%rax
    1fbc:	48 8d 78 06          	lea    0x6(%rax),%rdi
    1fc0:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1fc4:	48 63 d0             	movslq %eax,%rdx
    1fc7:	48 89 d0             	mov    %rdx,%rax
    1fca:	48 01 c0             	add    %rax,%rax
    1fcd:	48 01 d0             	add    %rdx,%rax
    1fd0:	48 c1 e0 02          	shl    $0x2,%rax
    1fd4:	48 01 d0             	add    %rdx,%rax
    1fd7:	48 c1 e0 02          	shl    $0x2,%rax
    1fdb:	48 01 d0             	add    %rdx,%rax
    1fde:	48 8d 50 26          	lea    0x26(%rax),%rdx
    1fe2:	48 8d 05 57 30 00 00 	lea    0x3057(%rip),%rax        # 5040 <students>
    1fe9:	48 01 d0             	add    %rdx,%rax
    1fec:	48 8d 48 06          	lea    0x6(%rax),%rcx
    1ff0:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    1ff4:	48 63 d0             	movslq %eax,%rdx
    1ff7:	48 89 d0             	mov    %rdx,%rax
    1ffa:	48 01 c0             	add    %rax,%rax
    1ffd:	48 01 d0             	add    %rdx,%rax
    2000:	48 c1 e0 02          	shl    $0x2,%rax
    2004:	48 01 d0             	add    %rdx,%rax
    2007:	48 c1 e0 02          	shl    $0x2,%rax
    200b:	48 01 d0             	add    %rdx,%rax
    200e:	48 8d 50 23          	lea    0x23(%rax),%rdx
    2012:	48 8d 05 27 30 00 00 	lea    0x3027(%rip),%rax        # 5040 <students>
    2019:	48 01 d0             	add    %rdx,%rax
    201c:	48 8d 70 06          	lea    0x6(%rax),%rsi
    2020:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    2024:	48 63 d0             	movslq %eax,%rdx
    2027:	48 89 d0             	mov    %rdx,%rax
    202a:	48 01 c0             	add    %rax,%rax
    202d:	48 01 d0             	add    %rdx,%rax
    2030:	48 c1 e0 02          	shl    $0x2,%rax
    2034:	48 01 d0             	add    %rdx,%rax
    2037:	48 c1 e0 02          	shl    $0x2,%rax
    203b:	48 01 d0             	add    %rdx,%rax
    203e:	48 8d 50 20          	lea    0x20(%rax),%rdx
    2042:	48 8d 05 f7 2f 00 00 	lea    0x2ff7(%rip),%rax        # 5040 <students>
    2049:	48 01 d0             	add    %rdx,%rax
    204c:	48 83 c0 06          	add    $0x6,%rax
    2050:	4d 89 c1             	mov    %r8,%r9
    2053:	49 89 f8             	mov    %rdi,%r8
    2056:	48 89 f2             	mov    %rsi,%rdx
    2059:	48 89 c6             	mov    %rax,%rsi
    205c:	48 8d 3d 04 13 00 00 	lea    0x1304(%rip),%rdi        # 3367 <_IO_stdin_used+0x367>
    2063:	b8 00 00 00 00       	mov    $0x0,%eax
    2068:	e8 03 f1 ff ff       	call   1170 <printf@plt>
    206d:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    2071:	83 c0 01             	add    $0x1,%eax
    2074:	88 45 ff             	mov    %al,-0x1(%rbp)
    2077:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    207b:	48 63 d0             	movslq %eax,%rdx
    207e:	48 89 d0             	mov    %rdx,%rax
    2081:	48 01 c0             	add    %rax,%rax
    2084:	48 01 d0             	add    %rdx,%rax
    2087:	48 c1 e0 02          	shl    $0x2,%rax
    208b:	48 01 d0             	add    %rdx,%rax
    208e:	48 c1 e0 02          	shl    $0x2,%rax
    2092:	48 01 d0             	add    %rdx,%rax
    2095:	48 8d 15 a4 2f 00 00 	lea    0x2fa4(%rip),%rdx        # 5040 <students>
    209c:	48 01 d0             	add    %rdx,%rax
    209f:	48 89 c7             	mov    %rax,%rdi
    20a2:	e8 39 f1 ff ff       	call   11e0 <atoi@plt>
    20a7:	85 c0                	test   %eax,%eax
    20a9:	0f 85 0f fe ff ff    	jne    1ebe <show_all+0x10>
    20af:	90                   	nop
    20b0:	90                   	nop
    20b1:	c9                   	leave  
    20b2:	c3                   	ret    

00000000000020b3 <exit_all>:
    20b3:	f3 0f 1e fa          	endbr64 
    20b7:	55                   	push   %rbp
    20b8:	48 89 e5             	mov    %rsp,%rbp
    20bb:	48 8d 3d b5 12 00 00 	lea    0x12b5(%rip),%rdi        # 3377 <_IO_stdin_used+0x377>
    20c2:	b8 00 00 00 00       	mov    $0x0,%eax
    20c7:	e8 a4 f0 ff ff       	call   1170 <printf@plt>
    20cc:	bf 00 00 00 00       	mov    $0x0,%edi
    20d1:	e8 1a f1 ff ff       	call   11f0 <exit@plt>
    20d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    20dd:	00 00 00 

00000000000020e0 <__libc_csu_init>:
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	41 57                	push   %r15
    20e6:	4c 8d 3d 03 2c 00 00 	lea    0x2c03(%rip),%r15        # 4cf0 <__frame_dummy_init_array_entry>
    20ed:	41 56                	push   %r14
    20ef:	49 89 d6             	mov    %rdx,%r14
    20f2:	41 55                	push   %r13
    20f4:	49 89 f5             	mov    %rsi,%r13
    20f7:	41 54                	push   %r12
    20f9:	41 89 fc             	mov    %edi,%r12d
    20fc:	55                   	push   %rbp
    20fd:	48 8d 2d f4 2b 00 00 	lea    0x2bf4(%rip),%rbp        # 4cf8 <__do_global_dtors_aux_fini_array_entry>
    2104:	53                   	push   %rbx
    2105:	4c 29 fd             	sub    %r15,%rbp
    2108:	48 83 ec 08          	sub    $0x8,%rsp
    210c:	e8 ef ee ff ff       	call   1000 <_init>
    2111:	48 c1 fd 03          	sar    $0x3,%rbp
    2115:	74 1f                	je     2136 <__libc_csu_init+0x56>
    2117:	31 db                	xor    %ebx,%ebx
    2119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2120:	4c 89 f2             	mov    %r14,%rdx
    2123:	4c 89 ee             	mov    %r13,%rsi
    2126:	44 89 e7             	mov    %r12d,%edi
    2129:	41 ff 14 df          	call   *(%r15,%rbx,8)
    212d:	48 83 c3 01          	add    $0x1,%rbx
    2131:	48 39 dd             	cmp    %rbx,%rbp
    2134:	75 ea                	jne    2120 <__libc_csu_init+0x40>
    2136:	48 83 c4 08          	add    $0x8,%rsp
    213a:	5b                   	pop    %rbx
    213b:	5d                   	pop    %rbp
    213c:	41 5c                	pop    %r12
    213e:	41 5d                	pop    %r13
    2140:	41 5e                	pop    %r14
    2142:	41 5f                	pop    %r15
    2144:	c3                   	ret    
    2145:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    214c:	00 00 00 00 

0000000000002150 <__libc_csu_fini>:
    2150:	f3 0f 1e fa          	endbr64 
    2154:	c3                   	ret    

Disassembly of section .fini:

0000000000002158 <_fini>:
    2158:	f3 0f 1e fa          	endbr64 
    215c:	48 83 ec 08          	sub    $0x8,%rsp
    2160:	48 83 c4 08          	add    $0x8,%rsp
    2164:	c3                   	ret    

Disassembly of section .rodata:

0000000000003000 <_IO_stdin_used>:
    3000:	01 00                	add    %eax,(%rax)
    3002:	02 00                	add    (%rax),%al
    3004:	00 00                	add    %al,(%rax)
    3006:	00 00                	add    %al,(%rax)
    3008:	0a 43 68             	or     0x68(%rbx),%al
    300b:	6f                   	outsl  %ds:(%rsi),(%dx)
    300c:	6f                   	outsl  %ds:(%rsi),(%dx)
    300d:	73 65                	jae    3074 <_IO_stdin_used+0x74>
    300f:	20 6f 66             	and    %ch,0x66(%rdi)
    3012:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    3016:	20 66 6f             	and    %ah,0x6f(%rsi)
    3019:	6c                   	insb   (%dx),%es:(%rdi)
    301a:	6c                   	insb   (%dx),%es:(%rdi)
    301b:	6f                   	outsl  %ds:(%rsi),(%dx)
    301c:	77 69                	ja     3087 <_IO_stdin_used+0x87>
    301e:	6e                   	outsb  %ds:(%rsi),(%dx)
    301f:	67 20 6f 70          	and    %ch,0x70(%edi)
    3023:	74 69                	je     308e <_IO_stdin_used+0x8e>
    3025:	6f                   	outsl  %ds:(%rsi),(%dx)
    3026:	6e                   	outsb  %ds:(%rsi),(%dx)
    3027:	73 3a                	jae    3063 <_IO_stdin_used+0x63>
    3029:	00 00                	add    %al,(%rax)
    302b:	00 00                	add    %al,(%rax)
    302d:	00 00                	add    %al,(%rax)
    302f:	00 0a                	add    %cl,(%rdx)
    3031:	09 20                	or     %esp,(%rax)
    3033:	31 3a                	xor    %edi,(%rdx)
    3035:	20 41 64             	and    %al,0x64(%rcx)
    3038:	64 20 73 74          	and    %dh,%fs:0x74(%rbx)
    303c:	75 64                	jne    30a2 <_IO_stdin_used+0xa2>
    303e:	65 6e                	outsb  %gs:(%rsi),(%dx)
    3040:	74 20                	je     3062 <_IO_stdin_used+0x62>
    3042:	64 65 74 61          	fs gs je 30a7 <_IO_stdin_used+0xa7>
    3046:	69 6c 73 20 6d 61 6e 	imul   $0x756e616d,0x20(%rbx,%rsi,2),%ebp
    304d:	75 
    304e:	61                   	(bad)  
    304f:	6c                   	insb   (%dx),%es:(%rdi)
    3050:	6c                   	insb   (%dx),%es:(%rdi)
    3051:	79 00                	jns    3053 <_IO_stdin_used+0x53>
    3053:	00 00                	add    %al,(%rax)
    3055:	00 00                	add    %al,(%rax)
    3057:	00 0a                	add    %cl,(%rdx)
    3059:	09 20                	or     %esp,(%rax)
    305b:	32 3a                	xor    (%rdx),%bh
    305d:	20 41 64             	and    %al,0x64(%rcx)
    3060:	64 20 73 74          	and    %dh,%fs:0x74(%rbx)
    3064:	75 64                	jne    30ca <_IO_stdin_used+0xca>
    3066:	65 6e                	outsb  %gs:(%rsi),(%dx)
    3068:	74 20                	je     308a <_IO_stdin_used+0x8a>
    306a:	64 65 74 61          	fs gs je 30cf <_IO_stdin_used+0xcf>
    306e:	69 6c 73 20 66 72 6f 	imul   $0x6d6f7266,0x20(%rbx,%rsi,2),%ebp
    3075:	6d 
    3076:	20 74 65 78          	and    %dh,0x78(%rbp,%riz,2)
    307a:	74 20                	je     309c <_IO_stdin_used+0x9c>
    307c:	66 69 6c 65 00 00 00 	imul   $0x0,0x0(%rbp,%riz,2),%bp
    3083:	00 00                	add    %al,(%rax)
    3085:	00 00                	add    %al,(%rax)
    3087:	00 0a                	add    %cl,(%rdx)
    3089:	09 20                	or     %esp,(%rax)
    308b:	33 3a                	xor    (%rdx),%edi
    308d:	20 46 69             	and    %al,0x69(%rsi)
    3090:	6e                   	outsb  %ds:(%rsi),(%dx)
    3091:	64 20 73 74          	and    %dh,%fs:0x74(%rbx)
    3095:	75 64                	jne    30fb <_IO_stdin_used+0xfb>
    3097:	65 6e                	outsb  %gs:(%rsi),(%dx)
    3099:	74 20                	je     30bb <_IO_stdin_used+0xbb>
    309b:	64 65 74 61          	fs gs je 3100 <_IO_stdin_used+0x100>
    309f:	69 6c 73 20 62 79 20 	imul   $0x52207962,0x20(%rbx,%rsi,2),%ebp
    30a6:	52 
    30a7:	6f                   	outsl  %ds:(%rsi),(%dx)
    30a8:	6c                   	insb   (%dx),%es:(%rdi)
    30a9:	6c                   	insb   (%dx),%es:(%rdi)
    30aa:	20 4e 75             	and    %cl,0x75(%rsi)
    30ad:	6d                   	insl   (%dx),%es:(%rdi)
    30ae:	62                   	(bad)  
    30af:	65 72 00             	gs jb  30b2 <_IO_stdin_used+0xb2>
    30b2:	00 00                	add    %al,(%rax)
    30b4:	00 00                	add    %al,(%rax)
    30b6:	00 00                	add    %al,(%rax)
    30b8:	0a 09                	or     (%rcx),%cl
    30ba:	20 34 3a             	and    %dh,(%rdx,%rdi,1)
    30bd:	20 46 69             	and    %al,0x69(%rsi)
    30c0:	6e                   	outsb  %ds:(%rsi),(%dx)
    30c1:	64 20 73 74          	and    %dh,%fs:0x74(%rbx)
    30c5:	75 64                	jne    312b <_IO_stdin_used+0x12b>
    30c7:	65 6e                	outsb  %gs:(%rsi),(%dx)
    30c9:	74 20                	je     30eb <_IO_stdin_used+0xeb>
    30cb:	64 65 74 61          	fs gs je 3130 <_IO_stdin_used+0x130>
    30cf:	69 6c 73 20 62 79 20 	imul   $0x46207962,0x20(%rbx,%rsi,2),%ebp
    30d6:	46 
    30d7:	69 72 73 74 20 4e 61 	imul   $0x614e2074,0x73(%rdx),%esi
    30de:	6d                   	insl   (%dx),%es:(%rdi)
    30df:	65 00 00             	add    %al,%gs:(%rax)
    30e2:	00 00                	add    %al,(%rax)
    30e4:	00 00                	add    %al,(%rax)
    30e6:	00 00                	add    %al,(%rax)
    30e8:	0a 09                	or     (%rcx),%cl
    30ea:	20 35 3a 20 46 69    	and    %dh,0x6946203a(%rip)        # 6946512a <_end+0x6945fed2>
    30f0:	6e                   	outsb  %ds:(%rsi),(%dx)
    30f1:	64 20 73 74          	and    %dh,%fs:0x74(%rbx)
    30f5:	75 64                	jne    315b <_IO_stdin_used+0x15b>
    30f7:	65 6e                	outsb  %gs:(%rsi),(%dx)
    30f9:	74 20                	je     311b <_IO_stdin_used+0x11b>
    30fb:	64 65 74 61          	fs gs je 3160 <_IO_stdin_used+0x160>
    30ff:	69 6c 73 20 62 79 20 	imul   $0x43207962,0x20(%rbx,%rsi,2),%ebp
    3106:	43 
    3107:	6f                   	outsl  %ds:(%rsi),(%dx)
    3108:	75 72                	jne    317c <_IO_stdin_used+0x17c>
    310a:	73 65                	jae    3171 <_IO_stdin_used+0x171>
    310c:	20 49 44             	and    %cl,0x44(%rcx)
    310f:	00 0a                	add    %cl,(%rdx)
    3111:	09 20                	or     %esp,(%rax)
    3113:	36 3a 20             	ss cmp (%rax),%ah
    3116:	46 69 6e 64 20 74 6f 	rex.RX imul $0x746f7420,0x64(%rsi),%r13d
    311d:	74 
    311e:	61                   	(bad)  
    311f:	6c                   	insb   (%dx),%es:(%rdi)
    3120:	20 6e 75             	and    %ch,0x75(%rsi)
    3123:	6d                   	insl   (%dx),%es:(%rdi)
    3124:	62                   	(bad)  
    3125:	65 72 73             	gs jb  319b <_IO_stdin_used+0x19b>
    3128:	20 6f 66             	and    %ch,0x66(%rdi)
    312b:	20 73 74             	and    %dh,0x74(%rbx)
    312e:	75 64                	jne    3194 <_IO_stdin_used+0x194>
    3130:	65 6e                	outsb  %gs:(%rsi),(%dx)
    3132:	74 73                	je     31a7 <_IO_stdin_used+0x1a7>
    3134:	00 00                	add    %al,(%rax)
    3136:	00 00                	add    %al,(%rax)
    3138:	0a 09                	or     (%rcx),%cl
    313a:	20 37                	and    %dh,(%rdi)
    313c:	3a 20                	cmp    (%rax),%ah
    313e:	44                   	rex.R
    313f:	65 6c                	gs insb (%dx),%es:(%rdi)
    3141:	65 74 65             	gs je  31a9 <_IO_stdin_used+0x1a9>
    3144:	20 73 74             	and    %dh,0x74(%rbx)
    3147:	75 64                	jne    31ad <_IO_stdin_used+0x1ad>
    3149:	65 6e                	outsb  %gs:(%rsi),(%dx)
    314b:	74 20                	je     316d <_IO_stdin_used+0x16d>
    314d:	64 65 74 61          	fs gs je 31b2 <_IO_stdin_used+0x1b2>
    3151:	69 6c 73 20 62 79 20 	imul   $0x52207962,0x20(%rbx,%rsi,2),%ebp
    3158:	52 
    3159:	6f                   	outsl  %ds:(%rsi),(%dx)
    315a:	6c                   	insb   (%dx),%es:(%rdi)
    315b:	6c                   	insb   (%dx),%es:(%rdi)
    315c:	20 4e 75             	and    %cl,0x75(%rsi)
    315f:	6d                   	insl   (%dx),%es:(%rdi)
    3160:	62                   	(bad)  
    3161:	65 72 00             	gs jb  3164 <_IO_stdin_used+0x164>
    3164:	00 00                	add    %al,(%rax)
    3166:	00 00                	add    %al,(%rax)
    3168:	0a 09                	or     (%rcx),%cl
    316a:	20 38                	and    %bh,(%rax)
    316c:	3a 20                	cmp    (%rax),%ah
    316e:	55                   	push   %rbp
    316f:	70 64                	jo     31d5 <_IO_stdin_used+0x1d5>
    3171:	61                   	(bad)  
    3172:	74 65                	je     31d9 <_IO_stdin_used+0x1d9>
    3174:	20 73 74             	and    %dh,0x74(%rbx)
    3177:	75 64                	jne    31dd <_IO_stdin_used+0x1dd>
    3179:	65 6e                	outsb  %gs:(%rsi),(%dx)
    317b:	74 20                	je     319d <_IO_stdin_used+0x19d>
    317d:	64 65 74 61          	fs gs je 31e2 <_IO_stdin_used+0x1e2>
    3181:	69 6c 73 20 62 79 20 	imul   $0x52207962,0x20(%rbx,%rsi,2),%ebp
    3188:	52 
    3189:	6f                   	outsl  %ds:(%rsi),(%dx)
    318a:	6c                   	insb   (%dx),%es:(%rdi)
    318b:	6c                   	insb   (%dx),%es:(%rdi)
    318c:	20 4e 75             	and    %cl,0x75(%rsi)
    318f:	6d                   	insl   (%dx),%es:(%rdi)
    3190:	62                   	(bad)  
    3191:	65 72 00             	gs jb  3194 <_IO_stdin_used+0x194>
    3194:	0a 09                	or     (%rcx),%cl
    3196:	20 39                	and    %bh,(%rcx)
    3198:	3a 20                	cmp    (%rax),%ah
    319a:	53                   	push   %rbx
    319b:	68 6f 77 20 61       	push   $0x6120776f
    31a0:	6c                   	insb   (%dx),%es:(%rdi)
    31a1:	6c                   	insb   (%dx),%es:(%rdi)
    31a2:	20 69 6e             	and    %ch,0x6e(%rcx)
    31a5:	66 6f                	outsw  %ds:(%rsi),(%dx)
    31a7:	72 6d                	jb     3216 <_IO_stdin_used+0x216>
    31a9:	61                   	(bad)  
    31aa:	74 69                	je     3215 <_IO_stdin_used+0x215>
    31ac:	6f                   	outsl  %ds:(%rsi),(%dx)
    31ad:	6e                   	outsb  %ds:(%rsi),(%dx)
    31ae:	00 0a                	add    %cl,(%rdx)
    31b0:	09 31                	or     %esi,(%rcx)
    31b2:	30 3a                	xor    %bh,(%rdx)
    31b4:	20 54 6f 20          	and    %dl,0x20(%rdi,%rbp,2)
    31b8:	45 78 69             	rex.RB js 3224 <_IO_stdin_used+0x224>
    31bb:	74 00                	je     31bd <_IO_stdin_used+0x1bd>
    31bd:	0a 45 6e             	or     0x6e(%rbp),%al
    31c0:	74 65                	je     3227 <_IO_stdin_used+0x227>
    31c2:	72 20                	jb     31e4 <_IO_stdin_used+0x1e4>
    31c4:	4f 70 74             	rex.WRXB jo 323b <_IO_stdin_used+0x23b>
    31c7:	69 6f 6e 20 4e 75 6d 	imul   $0x6d754e20,0x6e(%rdi),%ebp
    31ce:	62                   	(bad)  
    31cf:	65 72 3a             	gs jb  320c <_IO_stdin_used+0x20c>
    31d2:	20 00                	and    %al,(%rax)
    31d4:	00 00                	add    %al,(%rax)
    31d6:	00 00                	add    %al,(%rax)
    31d8:	09 2a                	or     %ebp,(%rdx)
    31da:	2a 57 65             	sub    0x65(%rdi),%dl
    31dd:	6c                   	insb   (%dx),%es:(%rdi)
    31de:	63 6f 6d             	movsxd 0x6d(%rdi),%ebp
    31e1:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    31e6:	74 68                	je     3250 <_IO_stdin_used+0x250>
    31e8:	65 20 73 74          	and    %dh,%gs:0x74(%rbx)
    31ec:	75 64                	jne    3252 <_IO_stdin_used+0x252>
    31ee:	65 6e                	outsb  %gs:(%rsi),(%dx)
    31f0:	74 20                	je     3212 <_IO_stdin_used+0x212>
    31f2:	6d                   	insl   (%dx),%es:(%rdi)
    31f3:	61                   	(bad)  
    31f4:	6e                   	outsb  %ds:(%rsi),(%dx)
    31f5:	61                   	(bad)  
    31f6:	67 65 6d             	gs insl (%dx),%es:(%edi)
    31f9:	65 6e                	outsb  %gs:(%rsi),(%dx)
    31fb:	74 20                	je     321d <_IO_stdin_used+0x21d>
    31fd:	73 79                	jae    3278 <_IO_stdin_used+0x278>
    31ff:	73 74                	jae    3275 <_IO_stdin_used+0x275>
    3201:	65 6d                	gs insl (%dx),%es:(%rdi)
    3203:	2a 2a                	sub    (%rdx),%ch
    3205:	00 0a                	add    %cl,(%rdx)
    3207:	3e 3e 3e 2e 2e 2e 20 	ds ds ds cs cs cs and %cl,0x70(%rdi)
    320e:	4f 70 
    3210:	74 69                	je     327b <_IO_stdin_used+0x27b>
    3212:	6f                   	outsl  %ds:(%rsi),(%dx)
    3213:	6e                   	outsb  %ds:(%rsi),(%dx)
    3214:	20 25 64 0a 00 00    	and    %ah,0xa64(%rip)        # 3c7e <__FRAME_END__+0x5aa>
    321a:	00 00                	add    %al,(%rax)
    321c:	00 00                	add    %al,(%rax)
    321e:	00 00                	add    %al,(%rax)
    3220:	0a 09                	or     (%rcx),%cl
    3222:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
    3224:	76 61                	jbe    3287 <_IO_stdin_used+0x287>
    3226:	6c                   	insb   (%dx),%es:(%rdi)
    3227:	69 64 20 63 68 6f 69 	imul   $0x73696f68,0x63(%rax,%riz,1),%esp
    322e:	73 
    322f:	65 2c 20             	gs sub $0x20,%al
    3232:	70 6c                	jo     32a0 <_IO_stdin_used+0x2a0>
    3234:	65 61                	gs (bad) 
    3236:	73 65                	jae    329d <_IO_stdin_used+0x29d>
    3238:	20 63 68             	and    %ah,0x68(%rbx)
    323b:	6f                   	outsl  %ds:(%rsi),(%dx)
    323c:	6f                   	outsl  %ds:(%rsi),(%dx)
    323d:	73 65                	jae    32a4 <_IO_stdin_used+0x2a4>
    323f:	20 76 61             	and    %dh,0x61(%rsi)
    3242:	6c                   	insb   (%dx),%es:(%rdi)
    3243:	75 65                	jne    32aa <_IO_stdin_used+0x2aa>
    3245:	20 62 65             	and    %ah,0x65(%rdx)
    3248:	74 77                	je     32c1 <_IO_stdin_used+0x2c1>
    324a:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
    324d:	20 31                	and    %dh,(%rcx)
    324f:	20 61 6e             	and    %ah,0x6e(%rcx)
    3252:	64 20 25 64 00 00 72 	and    %ah,%fs:0x72000064(%rip)        # 720032bd <_end+0x71ffe065>
    3259:	6f                   	outsl  %ds:(%rsi),(%dx)
    325a:	6c                   	insb   (%dx),%es:(%rdi)
    325b:	6c                   	insb   (%dx),%es:(%rdi)
    325c:	20 6e 75             	and    %ch,0x75(%rsi)
    325f:	6d                   	insl   (%dx),%es:(%rdi)
    3260:	62                   	(bad)  
    3261:	65 72 20             	gs jb  3284 <_IO_stdin_used+0x284>
    3264:	6d                   	insl   (%dx),%es:(%rdi)
    3265:	75 73                	jne    32da <_IO_stdin_used+0x2da>
    3267:	74 20                	je     3289 <_IO_stdin_used+0x289>
    3269:	62                   	(bad)  
    326a:	65 20 64 69 67       	and    %ah,%gs:0x67(%rcx,%rbp,2)
    326f:	69 74 00 00 00 00 00 	imul   $0x0,0x0(%rax,%rax,1),%esi
    3276:	00 
    3277:	00 52 6f             	add    %dl,0x6f(%rdx)
    327a:	6c                   	insb   (%dx),%es:(%rdi)
    327b:	6c                   	insb   (%dx),%es:(%rdi)
    327c:	20 4e 75             	and    %cl,0x75(%rsi)
    327f:	6d                   	insl   (%dx),%es:(%rdi)
    3280:	62                   	(bad)  
    3281:	65 72 20             	gs jb  32a4 <_IO_stdin_used+0x2a4>
    3284:	25 73 20 69 73       	and    $0x73692073,%eax
    3289:	20 61 6c             	and    %ah,0x6c(%rcx)
    328c:	72 65                	jb     32f3 <_IO_stdin_used+0x2f3>
    328e:	61                   	(bad)  
    328f:	64 79 20             	fs jns 32b2 <_IO_stdin_used+0x2b2>
    3292:	74 61                	je     32f5 <_IO_stdin_used+0x2f5>
    3294:	6b 65 6e 21          	imul   $0x21,0x6e(%rbp),%esp
    3298:	0a 00                	or     (%rax),%al
    329a:	00 00                	add    %al,(%rax)
    329c:	00 00                	add    %al,(%rax)
    329e:	00 00                	add    %al,(%rax)
    32a0:	52                   	push   %rdx
    32a1:	6f                   	outsl  %ds:(%rsi),(%dx)
    32a2:	6c                   	insb   (%dx),%es:(%rdi)
    32a3:	6c                   	insb   (%dx),%es:(%rdi)
    32a4:	20 4e 75             	and    %cl,0x75(%rsi)
    32a7:	6d                   	insl   (%dx),%es:(%rdi)
    32a8:	62                   	(bad)  
    32a9:	65 72 20             	gs jb  32cc <_IO_stdin_used+0x2cc>
    32ac:	25 73 20 73 61       	and    $0x61732073,%eax
    32b1:	76 65                	jbe    3318 <_IO_stdin_used+0x318>
    32b3:	64 20 73 75          	and    %dh,%fs:0x75(%rbx)
    32b7:	63 63 65             	movsxd 0x65(%rbx),%esp
    32ba:	73 73                	jae    332f <_IO_stdin_used+0x32f>
    32bc:	66 75 6c             	data16 jne 332b <_IO_stdin_used+0x32b>
    32bf:	6c                   	insb   (%dx),%es:(%rdi)
    32c0:	79 21                	jns    32e3 <_IO_stdin_used+0x2e3>
    32c2:	0a 00                	or     (%rax),%al
    32c4:	00 00                	add    %al,(%rax)
    32c6:	00 00                	add    %al,(%rax)
    32c8:	72 00                	jb     32ca <_IO_stdin_used+0x2ca>
    32ca:	64 61                	fs (bad) 
    32cc:	74 61                	je     332f <_IO_stdin_used+0x32f>
    32ce:	2e 74 78             	je,pn  3349 <_IO_stdin_used+0x349>
    32d1:	74 00                	je     32d3 <_IO_stdin_used+0x2d3>
    32d3:	00 00                	add    %al,(%rax)
    32d5:	00 00                	add    %al,(%rax)
    32d7:	00 53 74             	add    %dl,0x74(%rbx)
    32da:	75 64                	jne    3340 <_IO_stdin_used+0x340>
    32dc:	65 6e                	outsb  %gs:(%rsi),(%dx)
    32de:	74 20                	je     3300 <_IO_stdin_used+0x300>
    32e0:	64 65 74 61          	fs gs je 3345 <_IO_stdin_used+0x345>
    32e4:	69 6c 73 20 61 64 64 	imul   $0x65646461,0x20(%rbx,%rsi,2),%ebp
    32eb:	65 
    32ec:	64 20 73 75          	and    %dh,%fs:0x75(%rbx)
    32f0:	63 63 65             	movsxd 0x65(%rbx),%esp
    32f3:	73 73                	jae    3368 <_IO_stdin_used+0x368>
    32f5:	66 75 6c             	data16 jne 3364 <_IO_stdin_used+0x364>
    32f8:	6c                   	insb   (%dx),%es:(%rdi)
    32f9:	79 21                	jns    331c <_IO_stdin_used+0x31c>
    32fb:	00 42 75             	add    %al,0x75(%rdx)
    32fe:	66 66 65 72 20       	data16 data16 gs jb 3323 <_IO_stdin_used+0x323>
    3303:	66 75 6c             	data16 jne 3372 <_IO_stdin_used+0x372>
    3306:	6c                   	insb   (%dx),%es:(%rdi)
    3307:	2e 2e 2e 00 00       	cs cs cs add %al,(%rax)
    330c:	00 00                	add    %al,(%rax)
    330e:	00 00                	add    %al,(%rax)
    3310:	54                   	push   %rsp
    3311:	6f                   	outsl  %ds:(%rsi),(%dx)
    3312:	74 61                	je     3375 <_IO_stdin_used+0x375>
    3314:	6c                   	insb   (%dx),%es:(%rdi)
    3315:	20 6e 75             	and    %ch,0x75(%rsi)
    3318:	6d                   	insl   (%dx),%es:(%rdi)
    3319:	62                   	(bad)  
    331a:	65 72 20             	gs jb  333d <_IO_stdin_used+0x33d>
    331d:	6f                   	outsl  %ds:(%rsi),(%dx)
    331e:	66 20 73 74          	data16 and %dh,0x74(%rbx)
    3322:	75 64                	jne    3388 <__GNU_EH_FRAME_HDR+0x8>
    3324:	65 6e                	outsb  %gs:(%rsi),(%dx)
    3326:	74 73                	je     339b <__GNU_EH_FRAME_HDR+0x1b>
    3328:	20 69 73             	and    %ch,0x73(%rcx)
    332b:	3a 20                	cmp    (%rax),%ah
    332d:	25 64 0a 00 00       	and    $0xa64,%eax
    3332:	00 00                	add    %al,(%rax)
    3334:	00 00                	add    %al,(%rax)
    3336:	00 00                	add    %al,(%rax)
    3338:	53                   	push   %rbx
    3339:	74 75                	je     33b0 <__GNU_EH_FRAME_HDR+0x30>
    333b:	64 65 6e             	fs outsb %gs:(%rsi),(%dx)
    333e:	74 20                	je     3360 <_IO_stdin_used+0x360>
    3340:	5b                   	pop    %rbx
    3341:	25 64 5d 0a 25       	and    $0x250a5d64,%eax
    3346:	73 20                	jae    3368 <_IO_stdin_used+0x368>
    3348:	25 73 2c 20 52       	and    $0x52202c73,%eax
    334d:	6f                   	outsl  %ds:(%rsi),(%dx)
    334e:	6c                   	insb   (%dx),%es:(%rdi)
    334f:	6c                   	insb   (%dx),%es:(%rdi)
    3350:	20 4e 75             	and    %cl,0x75(%rsi)
    3353:	6d                   	insl   (%dx),%es:(%rdi)
    3354:	62                   	(bad)  
    3355:	65 72 3a             	gs jb  3392 <__GNU_EH_FRAME_HDR+0x12>
    3358:	20 25 73 2c 20 43    	and    %ah,0x43202c73(%rip)        # 43205fd1 <_end+0x43200d79>
    335e:	6f                   	outsl  %ds:(%rsi),(%dx)
    335f:	75 72                	jne    33d3 <__GNU_EH_FRAME_HDR+0x53>
    3361:	73 65                	jae    33c8 <__GNU_EH_FRAME_HDR+0x48>
    3363:	73 3a                	jae    339f <__GNU_EH_FRAME_HDR+0x1f>
    3365:	0a 00                	or     (%rax),%al
    3367:	25 73 09 25 73       	and    $0x73250973,%eax
    336c:	09 25 73 09 25 73    	or     %esp,0x73250973(%rip)        # 73253ce5 <_end+0x7324ea8d>
    3372:	09 25 73 0a 00 45    	or     %esp,0x45000a73(%rip)        # 45003deb <_end+0x44ffeb93>
    3378:	78 69                	js     33e3 <__GNU_EH_FRAME_HDR+0x63>
    337a:	74 2e                	je     33aa <__GNU_EH_FRAME_HDR+0x2a>
    337c:	2e                   	cs
    337d:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

0000000000003380 <__GNU_EH_FRAME_HDR>:
    3380:	01 1b                	add    %ebx,(%rbx)
    3382:	03 3b                	add    (%rbx),%edi
    3384:	ac                   	lods   %ds:(%rsi),%al
    3385:	00 00                	add    %al,(%rax)
    3387:	00 14 00             	add    %dl,(%rax,%rax,1)
    338a:	00 00                	add    %al,(%rax)
    338c:	a0 dc ff ff e0 00 00 	movabs 0x90000000e0ffffdc,%al
    3393:	00 90 
    3395:	dd ff                	(bad)  
    3397:	ff 08                	decl   (%rax)
    3399:	01 00                	add    %eax,(%rax)
    339b:	00 a0 dd ff ff 20    	add    %ah,0x20ffffdd(%rax)
    33a1:	01 00                	add    %eax,(%rax)
    33a3:	00 80 de ff ff c8    	add    %al,-0x37000022(%rax)
    33a9:	00 00                	add    %al,(%rax)
    33ab:	00 69 df             	add    %ch,-0x21(%rcx)
    33ae:	ff                   	(bad)  
    33af:	ff                   	(bad)  
    33b0:	38 01                	cmp    %al,(%rcx)
    33b2:	00 00                	add    %al,(%rax)
    33b4:	40 e0 ff             	rex loopne 33b6 <__GNU_EH_FRAME_HDR+0x36>
    33b7:	ff 58 01             	lcall  *0x1(%rax)
    33ba:	00 00                	add    %al,(%rax)
    33bc:	3a e1                	cmp    %cl,%ah
    33be:	ff                   	(bad)  
    33bf:	ff                   	(bad)  
    33c0:	78 01                	js     33c3 <__GNU_EH_FRAME_HDR+0x43>
    33c2:	00 00                	add    %al,(%rax)
    33c4:	1c e3                	sbb    $0xe3,%al
    33c6:	ff                   	(bad)  
    33c7:	ff 98 01 00 00 9a    	lcall  *-0x65ffffff(%rax)
    33cd:	e3 ff                	jrcxz  33ce <__GNU_EH_FRAME_HDR+0x4e>
    33cf:	ff                   	(bad)  
    33d0:	b8 01 00 00 2d       	mov    $0x2d000001,%eax
    33d5:	e7 ff                	out    %eax,$0xff
    33d7:	ff                   	(bad)  
    33d8:	d8 01                	fadds  (%rcx)
    33da:	00 00                	add    %al,(%rax)
    33dc:	87 ea                	xchg   %ebp,%edx
    33de:	ff                   	(bad)  
    33df:	ff                   	(bad)  
    33e0:	f8                   	clc    
    33e1:	01 00                	add    %eax,(%rax)
    33e3:	00 92 ea ff ff 18    	add    %dl,0x18ffffea(%rdx)
    33e9:	02 00                	add    (%rax),%al
    33eb:	00 9d ea ff ff 38    	add    %bl,0x38ffffea(%rbp)
    33f1:	02 00                	add    (%rax),%al
    33f3:	00 a8 ea ff ff 58    	add    %ch,0x58ffffea(%rax)
    33f9:	02 00                	add    (%rax),%al
    33fb:	00 18                	add    %bl,(%rax)
    33fd:	eb ff                	jmp    33fe <__GNU_EH_FRAME_HDR+0x7e>
    33ff:	ff                   	(bad)  
    3400:	78 02                	js     3404 <__GNU_EH_FRAME_HDR+0x84>
    3402:	00 00                	add    %al,(%rax)
    3404:	23 eb                	and    %ebx,%ebp
    3406:	ff                   	(bad)  
    3407:	ff 98 02 00 00 2e    	lcall  *0x2e000002(%rax)
    340d:	eb ff                	jmp    340e <__GNU_EH_FRAME_HDR+0x8e>
    340f:	ff                   	(bad)  
    3410:	b8 02 00 00 33       	mov    $0x33000002,%eax
    3415:	ed                   	in     (%dx),%eax
    3416:	ff                   	(bad)  
    3417:	ff                   	(bad)  
    3418:	d8 02                	fadds  (%rdx)
    341a:	00 00                	add    %al,(%rax)
    341c:	60                   	(bad)  
    341d:	ed                   	in     (%dx),%eax
    341e:	ff                   	(bad)  
    341f:	ff                   	(bad)  
    3420:	f8                   	clc    
    3421:	02 00                	add    (%rax),%al
    3423:	00 d0                	add    %dl,%al
    3425:	ed                   	in     (%dx),%eax
    3426:	ff                   	(bad)  
    3427:	ff 40 03             	incl   0x3(%rax)
	...

Disassembly of section .eh_frame:

0000000000003430 <__FRAME_END__-0x2a4>:
    3430:	14 00                	adc    $0x0,%al
    3432:	00 00                	add    %al,(%rax)
    3434:	00 00                	add    %al,(%rax)
    3436:	00 00                	add    %al,(%rax)
    3438:	01 7a 52             	add    %edi,0x52(%rdx)
    343b:	00 01                	add    %al,(%rcx)
    343d:	78 10                	js     344f <__GNU_EH_FRAME_HDR+0xcf>
    343f:	01 1b                	add    %ebx,(%rbx)
    3441:	0c 07                	or     $0x7,%al
    3443:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    3449:	00 00                	add    %al,(%rax)
    344b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    344e:	00 00                	add    %al,(%rax)
    3450:	b0 dd                	mov    $0xdd,%al
    3452:	ff                   	(bad)  
    3453:	ff 2f                	ljmp   *(%rdi)
    3455:	00 00                	add    %al,(%rax)
    3457:	00 00                	add    %al,(%rax)
    3459:	44 07                	rex.R (bad) 
    345b:	10 00                	adc    %al,(%rax)
    345d:	00 00                	add    %al,(%rax)
    345f:	00 24 00             	add    %ah,(%rax,%rax,1)
    3462:	00 00                	add    %al,(%rax)
    3464:	34 00                	xor    $0x0,%al
    3466:	00 00                	add    %al,(%rax)
    3468:	b8 db ff ff f0       	mov    $0xf0ffffdb,%eax
    346d:	00 00                	add    %al,(%rax)
    346f:	00 00                	add    %al,(%rax)
    3471:	0e                   	(bad)  
    3472:	10 46 0e             	adc    %al,0xe(%rsi)
    3475:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    3478:	0b 77 08             	or     0x8(%rdi),%esi
    347b:	80 00 3f             	addb   $0x3f,(%rax)
    347e:	1a 3a                	sbb    (%rdx),%bh
    3480:	2a 33                	sub    (%rbx),%dh
    3482:	24 22                	and    $0x22,%al
    3484:	00 00                	add    %al,(%rax)
    3486:	00 00                	add    %al,(%rax)
    3488:	14 00                	adc    $0x0,%al
    348a:	00 00                	add    %al,(%rax)
    348c:	5c                   	pop    %rsp
    348d:	00 00                	add    %al,(%rax)
    348f:	00 80 dc ff ff 10    	add    %al,0x10ffffdc(%rax)
	...
    349d:	00 00                	add    %al,(%rax)
    349f:	00 14 00             	add    %dl,(%rax,%rax,1)
    34a2:	00 00                	add    %al,(%rax)
    34a4:	74 00                	je     34a6 <__GNU_EH_FRAME_HDR+0x126>
    34a6:	00 00                	add    %al,(%rax)
    34a8:	78 dc                	js     3486 <__GNU_EH_FRAME_HDR+0x106>
    34aa:	ff                   	(bad)  
    34ab:	ff e0                	jmp    *%rax
	...
    34b5:	00 00                	add    %al,(%rax)
    34b7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    34ba:	00 00                	add    %al,(%rax)
    34bc:	8c 00                	mov    %es,(%rax)
    34be:	00 00                	add    %al,(%rax)
    34c0:	29 de                	sub    %ebx,%esi
    34c2:	ff                   	(bad)  
    34c3:	ff d7                	call   *%rdi
    34c5:	00 00                	add    %al,(%rax)
    34c7:	00 00                	add    %al,(%rax)
    34c9:	45 0e                	rex.RB (bad) 
    34cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    34d1:	02 ce                	add    %dh,%cl
    34d3:	0c 07                	or     $0x7,%al
    34d5:	08 00                	or     %al,(%rax)
    34d7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    34da:	00 00                	add    %al,(%rax)
    34dc:	ac                   	lods   %ds:(%rsi),%al
    34dd:	00 00                	add    %al,(%rax)
    34df:	00 e0                	add    %ah,%al
    34e1:	de ff                	fdivrp %st,%st(7)
    34e3:	ff                   	(bad)  
    34e4:	fa                   	cli    
    34e5:	00 00                	add    %al,(%rax)
    34e7:	00 00                	add    %al,(%rax)
    34e9:	45 0e                	rex.RB (bad) 
    34eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    34f1:	02 f1                	add    %cl,%dh
    34f3:	0c 07                	or     $0x7,%al
    34f5:	08 00                	or     %al,(%rax)
    34f7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    34fa:	00 00                	add    %al,(%rax)
    34fc:	cc                   	int3   
    34fd:	00 00                	add    %al,(%rax)
    34ff:	00 ba df ff ff e2    	add    %bh,-0x1d000021(%rdx)
    3505:	01 00                	add    %eax,(%rax)
    3507:	00 00                	add    %al,(%rax)
    3509:	45 0e                	rex.RB (bad) 
    350b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3511:	03 d9                	add    %ecx,%ebx
    3513:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
    3516:	08 00                	or     %al,(%rax)
    3518:	1c 00                	sbb    $0x0,%al
    351a:	00 00                	add    %al,(%rax)
    351c:	ec                   	in     (%dx),%al
    351d:	00 00                	add    %al,(%rax)
    351f:	00 7c e1 ff          	add    %bh,-0x1(%rcx,%riz,8)
    3523:	ff                   	(bad)  
    3524:	7e 00                	jle    3526 <__GNU_EH_FRAME_HDR+0x1a6>
    3526:	00 00                	add    %al,(%rax)
    3528:	00 45 0e             	add    %al,0xe(%rbp)
    352b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3531:	02 75 0c             	add    0xc(%rbp),%dh
    3534:	07                   	(bad)  
    3535:	08 00                	or     %al,(%rax)
    3537:	00 1c 00             	add    %bl,(%rax,%rax,1)
    353a:	00 00                	add    %al,(%rax)
    353c:	0c 01                	or     $0x1,%al
    353e:	00 00                	add    %al,(%rax)
    3540:	da e1                	(bad)  
    3542:	ff                   	(bad)  
    3543:	ff 93 03 00 00 00    	call   *0x3(%rbx)
    3549:	45 0e                	rex.RB (bad) 
    354b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3551:	03 8a 03 0c 07 08    	add    0x8070c03(%rdx),%ecx
    3557:	00 1c 00             	add    %bl,(%rax,%rax,1)
    355a:	00 00                	add    %al,(%rax)
    355c:	2c 01                	sub    $0x1,%al
    355e:	00 00                	add    %al,(%rax)
    3560:	4d e5 ff             	rex.WRB in $0xff,%eax
    3563:	ff 5a 03             	lcall  *0x3(%rdx)
    3566:	00 00                	add    %al,(%rax)
    3568:	00 45 0e             	add    %al,0xe(%rbp)
    356b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3571:	03 51 03             	add    0x3(%rcx),%edx
    3574:	0c 07                	or     $0x7,%al
    3576:	08 00                	or     %al,(%rax)
    3578:	1c 00                	sbb    $0x0,%al
    357a:	00 00                	add    %al,(%rax)
    357c:	4c 01 00             	add    %r8,(%rax)
    357f:	00 87 e8 ff ff 0b    	add    %al,0xbffffe8(%rdi)
    3585:	00 00                	add    %al,(%rax)
    3587:	00 00                	add    %al,(%rax)
    3589:	45 0e                	rex.RB (bad) 
    358b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3591:	42 0c 07             	rex.X or $0x7,%al
    3594:	08 00                	or     %al,(%rax)
    3596:	00 00                	add    %al,(%rax)
    3598:	1c 00                	sbb    $0x0,%al
    359a:	00 00                	add    %al,(%rax)
    359c:	6c                   	insb   (%dx),%es:(%rdi)
    359d:	01 00                	add    %eax,(%rax)
    359f:	00 72 e8             	add    %dh,-0x18(%rdx)
    35a2:	ff                   	(bad)  
    35a3:	ff 0b                	decl   (%rbx)
    35a5:	00 00                	add    %al,(%rax)
    35a7:	00 00                	add    %al,(%rax)
    35a9:	45 0e                	rex.RB (bad) 
    35ab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    35b1:	42 0c 07             	rex.X or $0x7,%al
    35b4:	08 00                	or     %al,(%rax)
    35b6:	00 00                	add    %al,(%rax)
    35b8:	1c 00                	sbb    $0x0,%al
    35ba:	00 00                	add    %al,(%rax)
    35bc:	8c 01                	mov    %es,(%rcx)
    35be:	00 00                	add    %al,(%rax)
    35c0:	5d                   	pop    %rbp
    35c1:	e8 ff ff 0b 00       	call   c35c5 <_end+0xbe36d>
    35c6:	00 00                	add    %al,(%rax)
    35c8:	00 45 0e             	add    %al,0xe(%rbp)
    35cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    35d1:	42 0c 07             	rex.X or $0x7,%al
    35d4:	08 00                	or     %al,(%rax)
    35d6:	00 00                	add    %al,(%rax)
    35d8:	1c 00                	sbb    $0x0,%al
    35da:	00 00                	add    %al,(%rax)
    35dc:	ac                   	lods   %ds:(%rsi),%al
    35dd:	01 00                	add    %eax,(%rax)
    35df:	00 48 e8             	add    %cl,-0x18(%rax)
    35e2:	ff                   	(bad)  
    35e3:	ff 70 00             	push   0x0(%rax)
    35e6:	00 00                	add    %al,(%rax)
    35e8:	00 45 0e             	add    %al,0xe(%rbp)
    35eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    35f1:	02 67 0c             	add    0xc(%rdi),%ah
    35f4:	07                   	(bad)  
    35f5:	08 00                	or     %al,(%rax)
    35f7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    35fa:	00 00                	add    %al,(%rax)
    35fc:	cc                   	int3   
    35fd:	01 00                	add    %eax,(%rax)
    35ff:	00 98 e8 ff ff 0b    	add    %bl,0xbffffe8(%rax)
    3605:	00 00                	add    %al,(%rax)
    3607:	00 00                	add    %al,(%rax)
    3609:	45 0e                	rex.RB (bad) 
    360b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3611:	42 0c 07             	rex.X or $0x7,%al
    3614:	08 00                	or     %al,(%rax)
    3616:	00 00                	add    %al,(%rax)
    3618:	1c 00                	sbb    $0x0,%al
    361a:	00 00                	add    %al,(%rax)
    361c:	ec                   	in     (%dx),%al
    361d:	01 00                	add    %eax,(%rax)
    361f:	00 83 e8 ff ff 0b    	add    %al,0xbffffe8(%rbx)
    3625:	00 00                	add    %al,(%rax)
    3627:	00 00                	add    %al,(%rax)
    3629:	45 0e                	rex.RB (bad) 
    362b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3631:	42 0c 07             	rex.X or $0x7,%al
    3634:	08 00                	or     %al,(%rax)
    3636:	00 00                	add    %al,(%rax)
    3638:	1c 00                	sbb    $0x0,%al
    363a:	00 00                	add    %al,(%rax)
    363c:	0c 02                	or     $0x2,%al
    363e:	00 00                	add    %al,(%rax)
    3640:	6e                   	outsb  %ds:(%rsi),(%dx)
    3641:	e8 ff ff 05 02       	call   2063645 <_end+0x205e3ed>
    3646:	00 00                	add    %al,(%rax)
    3648:	00 45 0e             	add    %al,0xe(%rbp)
    364b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3651:	03 fc                	add    %esp,%edi
    3653:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
    3656:	08 00                	or     %al,(%rax)
    3658:	1c 00                	sbb    $0x0,%al
    365a:	00 00                	add    %al,(%rax)
    365c:	2c 02                	sub    $0x2,%al
    365e:	00 00                	add    %al,(%rax)
    3660:	53                   	push   %rbx
    3661:	ea                   	(bad)  
    3662:	ff                   	(bad)  
    3663:	ff 23                	jmp    *(%rbx)
    3665:	00 00                	add    %al,(%rax)
    3667:	00 00                	add    %al,(%rax)
    3669:	45 0e                	rex.RB (bad) 
    366b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    3671:	00 00                	add    %al,(%rax)
    3673:	00 00                	add    %al,(%rax)
    3675:	00 00                	add    %al,(%rax)
    3677:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    367b:	00 4c 02 00          	add    %cl,0x0(%rdx,%rax,1)
    367f:	00 60 ea             	add    %ah,-0x16(%rax)
    3682:	ff                   	(bad)  
    3683:	ff 65 00             	jmp    *0x0(%rbp)
    3686:	00 00                	add    %al,(%rax)
    3688:	00 46 0e             	add    %al,0xe(%rsi)
    368b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    3691:	8e 03                	mov    (%rbx),%es
    3693:	45 0e                	rex.RB (bad) 
    3695:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    369b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff863044e5 <_end+0xffffffff862ff28d>
    36a1:	06                   	(bad)  
    36a2:	48 0e                	rex.W (bad) 
    36a4:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    36aa:	6e                   	outsb  %ds:(%rsi),(%dx)
    36ab:	0e                   	(bad)  
    36ac:	38 41 0e             	cmp    %al,0xe(%rcx)
    36af:	30 41 0e             	xor    %al,0xe(%rcx)
    36b2:	28 42 0e             	sub    %al,0xe(%rdx)
    36b5:	20 42 0e             	and    %al,0xe(%rdx)
    36b8:	18 42 0e             	sbb    %al,0xe(%rdx)
    36bb:	10 42 0e             	adc    %al,0xe(%rdx)
    36be:	08 00                	or     %al,(%rax)
    36c0:	10 00                	adc    %al,(%rax)
    36c2:	00 00                	add    %al,(%rax)
    36c4:	94                   	xchg   %eax,%esp
    36c5:	02 00                	add    (%rax),%al
    36c7:	00 88 ea ff ff 05    	add    %cl,0x5ffffea(%rax)
    36cd:	00 00                	add    %al,(%rax)
    36cf:	00 00                	add    %al,(%rax)
    36d1:	00 00                	add    %al,(%rax)
	...

00000000000036d4 <__FRAME_END__>:
    36d4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000004cf0 <__frame_dummy_init_array_entry>:
    4cf0:	e0 12                	loopne 4d04 <FcnPtr+0x4>
    4cf2:	00 00                	add    %al,(%rax)
    4cf4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000004cf8 <__do_global_dtors_aux_fini_array_entry>:
    4cf8:	a0                   	.byte 0xa0
    4cf9:	12 00                	adc    (%rax),%al
    4cfb:	00 00                	add    %al,(%rax)
    4cfd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data.rel.ro:

0000000000004d00 <FcnPtr>:
    4d00:	ad                   	lods   %ds:(%rsi),%eax
    4d01:	1a 00                	sbb    (%rax),%al
    4d03:	00 00                	add    %al,(%rax)
    4d05:	00 00                	add    %al,(%rax)
    4d07:	00 1a                	add    %bl,(%rdx)
    4d09:	17                   	(bad)  
    4d0a:	00 00                	add    %al,(%rax)
    4d0c:	00 00                	add    %al,(%rax)
    4d0e:	00 00                	add    %al,(%rax)
    4d10:	07                   	(bad)  
    4d11:	1e                   	(bad)  
    4d12:	00 00                	add    %al,(%rax)
    4d14:	00 00                	add    %al,(%rax)
    4d16:	00 00                	add    %al,(%rax)
    4d18:	12 1e                	adc    (%rsi),%bl
    4d1a:	00 00                	add    %al,(%rax)
    4d1c:	00 00                	add    %al,(%rax)
    4d1e:	00 00                	add    %al,(%rax)
    4d20:	1d 1e 00 00 00       	sbb    $0x1e,%eax
    4d25:	00 00                	add    %al,(%rax)
    4d27:	00 28                	add    %ch,(%rax)
    4d29:	1e                   	(bad)  
    4d2a:	00 00                	add    %al,(%rax)
    4d2c:	00 00                	add    %al,(%rax)
    4d2e:	00 00                	add    %al,(%rax)
    4d30:	98                   	cwtl   
    4d31:	1e                   	(bad)  
    4d32:	00 00                	add    %al,(%rax)
    4d34:	00 00                	add    %al,(%rax)
    4d36:	00 00                	add    %al,(%rax)
    4d38:	a3 1e 00 00 00 00 00 	movabs %eax,0xae0000000000001e
    4d3f:	00 ae 
    4d41:	1e                   	(bad)  
    4d42:	00 00                	add    %al,(%rax)
    4d44:	00 00                	add    %al,(%rax)
    4d46:	00 00                	add    %al,(%rax)
    4d48:	b3 20                	mov    $0x20,%bl
    4d4a:	00 00                	add    %al,(%rax)
    4d4c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000004d50 <_DYNAMIC>:
    4d50:	01 00                	add    %eax,(%rax)
    4d52:	00 00                	add    %al,(%rax)
    4d54:	00 00                	add    %al,(%rax)
    4d56:	00 00                	add    %al,(%rax)
    4d58:	8d 00                	lea    (%rax),%eax
    4d5a:	00 00                	add    %al,(%rax)
    4d5c:	00 00                	add    %al,(%rax)
    4d5e:	00 00                	add    %al,(%rax)
    4d60:	0c 00                	or     $0x0,%al
    4d62:	00 00                	add    %al,(%rax)
    4d64:	00 00                	add    %al,(%rax)
    4d66:	00 00                	add    %al,(%rax)
    4d68:	00 10                	add    %dl,(%rax)
    4d6a:	00 00                	add    %al,(%rax)
    4d6c:	00 00                	add    %al,(%rax)
    4d6e:	00 00                	add    %al,(%rax)
    4d70:	0d 00 00 00 00       	or     $0x0,%eax
    4d75:	00 00                	add    %al,(%rax)
    4d77:	00 58 21             	add    %bl,0x21(%rax)
    4d7a:	00 00                	add    %al,(%rax)
    4d7c:	00 00                	add    %al,(%rax)
    4d7e:	00 00                	add    %al,(%rax)
    4d80:	19 00                	sbb    %eax,(%rax)
    4d82:	00 00                	add    %al,(%rax)
    4d84:	00 00                	add    %al,(%rax)
    4d86:	00 00                	add    %al,(%rax)
    4d88:	f0 4c 00 00          	lock rex.WR add %r8b,(%rax)
    4d8c:	00 00                	add    %al,(%rax)
    4d8e:	00 00                	add    %al,(%rax)
    4d90:	1b 00                	sbb    (%rax),%eax
    4d92:	00 00                	add    %al,(%rax)
    4d94:	00 00                	add    %al,(%rax)
    4d96:	00 00                	add    %al,(%rax)
    4d98:	08 00                	or     %al,(%rax)
    4d9a:	00 00                	add    %al,(%rax)
    4d9c:	00 00                	add    %al,(%rax)
    4d9e:	00 00                	add    %al,(%rax)
    4da0:	1a 00                	sbb    (%rax),%al
    4da2:	00 00                	add    %al,(%rax)
    4da4:	00 00                	add    %al,(%rax)
    4da6:	00 00                	add    %al,(%rax)
    4da8:	f8                   	clc    
    4da9:	4c 00 00             	rex.WR add %r8b,(%rax)
    4dac:	00 00                	add    %al,(%rax)
    4dae:	00 00                	add    %al,(%rax)
    4db0:	1c 00                	sbb    $0x0,%al
    4db2:	00 00                	add    %al,(%rax)
    4db4:	00 00                	add    %al,(%rax)
    4db6:	00 00                	add    %al,(%rax)
    4db8:	08 00                	or     %al,(%rax)
    4dba:	00 00                	add    %al,(%rax)
    4dbc:	00 00                	add    %al,(%rax)
    4dbe:	00 00                	add    %al,(%rax)
    4dc0:	f5                   	cmc    
    4dc1:	fe                   	(bad)  
    4dc2:	ff 6f 00             	ljmp   *0x0(%rdi)
    4dc5:	00 00                	add    %al,(%rax)
    4dc7:	00 a0 03 00 00 00    	add    %ah,0x3(%rax)
    4dcd:	00 00                	add    %al,(%rax)
    4dcf:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4dd5 <_DYNAMIC+0x85>
    4dd5:	00 00                	add    %al,(%rax)
    4dd7:	00 c0                	add    %al,%al
    4dd9:	05 00 00 00 00       	add    $0x0,%eax
    4dde:	00 00                	add    %al,(%rax)
    4de0:	06                   	(bad)  
    4de1:	00 00                	add    %al,(%rax)
    4de3:	00 00                	add    %al,(%rax)
    4de5:	00 00                	add    %al,(%rax)
    4de7:	00 c8                	add    %cl,%al
    4de9:	03 00                	add    (%rax),%eax
    4deb:	00 00                	add    %al,(%rax)
    4ded:	00 00                	add    %al,(%rax)
    4def:	00 0a                	add    %cl,(%rdx)
    4df1:	00 00                	add    %al,(%rax)
    4df3:	00 00                	add    %al,(%rax)
    4df5:	00 00                	add    %al,(%rax)
    4df7:	00 f2                	add    %dh,%dl
    4df9:	00 00                	add    %al,(%rax)
    4dfb:	00 00                	add    %al,(%rax)
    4dfd:	00 00                	add    %al,(%rax)
    4dff:	00 0b                	add    %cl,(%rbx)
    4e01:	00 00                	add    %al,(%rax)
    4e03:	00 00                	add    %al,(%rax)
    4e05:	00 00                	add    %al,(%rax)
    4e07:	00 18                	add    %bl,(%rax)
    4e09:	00 00                	add    %al,(%rax)
    4e0b:	00 00                	add    %al,(%rax)
    4e0d:	00 00                	add    %al,(%rax)
    4e0f:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 4e15 <_DYNAMIC+0xc5>
	...
    4e1d:	00 00                	add    %al,(%rax)
    4e1f:	00 03                	add    %al,(%rbx)
    4e21:	00 00                	add    %al,(%rax)
    4e23:	00 00                	add    %al,(%rax)
    4e25:	00 00                	add    %al,(%rax)
    4e27:	00 40 4f             	add    %al,0x4f(%rax)
    4e2a:	00 00                	add    %al,(%rax)
    4e2c:	00 00                	add    %al,(%rax)
    4e2e:	00 00                	add    %al,(%rax)
    4e30:	02 00                	add    (%rax),%al
    4e32:	00 00                	add    %al,(%rax)
    4e34:	00 00                	add    %al,(%rax)
    4e36:	00 00                	add    %al,(%rax)
    4e38:	50                   	push   %rax
    4e39:	01 00                	add    %eax,(%rax)
    4e3b:	00 00                	add    %al,(%rax)
    4e3d:	00 00                	add    %al,(%rax)
    4e3f:	00 14 00             	add    %dl,(%rax,%rax,1)
    4e42:	00 00                	add    %al,(%rax)
    4e44:	00 00                	add    %al,(%rax)
    4e46:	00 00                	add    %al,(%rax)
    4e48:	07                   	(bad)  
    4e49:	00 00                	add    %al,(%rax)
    4e4b:	00 00                	add    %al,(%rax)
    4e4d:	00 00                	add    %al,(%rax)
    4e4f:	00 17                	add    %dl,(%rdi)
    4e51:	00 00                	add    %al,(%rax)
    4e53:	00 00                	add    %al,(%rax)
    4e55:	00 00                	add    %al,(%rax)
    4e57:	00 d8                	add    %bl,%al
    4e59:	08 00                	or     %al,(%rax)
    4e5b:	00 00                	add    %al,(%rax)
    4e5d:	00 00                	add    %al,(%rax)
    4e5f:	00 07                	add    %al,(%rdi)
    4e61:	00 00                	add    %al,(%rax)
    4e63:	00 00                	add    %al,(%rax)
    4e65:	00 00                	add    %al,(%rax)
    4e67:	00 10                	add    %dl,(%rax)
    4e69:	07                   	(bad)  
    4e6a:	00 00                	add    %al,(%rax)
    4e6c:	00 00                	add    %al,(%rax)
    4e6e:	00 00                	add    %al,(%rax)
    4e70:	08 00                	or     %al,(%rax)
    4e72:	00 00                	add    %al,(%rax)
    4e74:	00 00                	add    %al,(%rax)
    4e76:	00 00                	add    %al,(%rax)
    4e78:	c8 01 00 00          	enter  $0x1,$0x0
    4e7c:	00 00                	add    %al,(%rax)
    4e7e:	00 00                	add    %al,(%rax)
    4e80:	09 00                	or     %eax,(%rax)
    4e82:	00 00                	add    %al,(%rax)
    4e84:	00 00                	add    %al,(%rax)
    4e86:	00 00                	add    %al,(%rax)
    4e88:	18 00                	sbb    %al,(%rax)
    4e8a:	00 00                	add    %al,(%rax)
    4e8c:	00 00                	add    %al,(%rax)
    4e8e:	00 00                	add    %al,(%rax)
    4e90:	18 00                	sbb    %al,(%rax)
	...
    4e9e:	00 00                	add    %al,(%rax)
    4ea0:	fb                   	sti    
    4ea1:	ff                   	(bad)  
    4ea2:	ff 6f 00             	ljmp   *0x0(%rdi)
    4ea5:	00 00                	add    %al,(%rax)
    4ea7:	00 01                	add    %al,(%rcx)
    4ea9:	00 00                	add    %al,(%rax)
    4eab:	08 00                	or     %al,(%rax)
    4ead:	00 00                	add    %al,(%rax)
    4eaf:	00 fe                	add    %bh,%dh
    4eb1:	ff                   	(bad)  
    4eb2:	ff 6f 00             	ljmp   *0x0(%rdi)
    4eb5:	00 00                	add    %al,(%rax)
    4eb7:	00 e0                	add    %ah,%al
    4eb9:	06                   	(bad)  
    4eba:	00 00                	add    %al,(%rax)
    4ebc:	00 00                	add    %al,(%rax)
    4ebe:	00 00                	add    %al,(%rax)
    4ec0:	ff                   	(bad)  
    4ec1:	ff                   	(bad)  
    4ec2:	ff 6f 00             	ljmp   *0x0(%rdi)
    4ec5:	00 00                	add    %al,(%rax)
    4ec7:	00 01                	add    %al,(%rcx)
    4ec9:	00 00                	add    %al,(%rax)
    4ecb:	00 00                	add    %al,(%rax)
    4ecd:	00 00                	add    %al,(%rax)
    4ecf:	00 f0                	add    %dh,%al
    4ed1:	ff                   	(bad)  
    4ed2:	ff 6f 00             	ljmp   *0x0(%rdi)
    4ed5:	00 00                	add    %al,(%rax)
    4ed7:	00 b2 06 00 00 00    	add    %dh,0x6(%rdx)
    4edd:	00 00                	add    %al,(%rax)
    4edf:	00 f9                	add    %bh,%cl
    4ee1:	ff                   	(bad)  
    4ee2:	ff 6f 00             	ljmp   *0x0(%rdi)
    4ee5:	00 00                	add    %al,(%rax)
    4ee7:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 4eed <_DYNAMIC+0x19d>
	...

Disassembly of section .got:

0000000000004f40 <_GLOBAL_OFFSET_TABLE_>:
    4f40:	50                   	push   %rax
    4f41:	4d 00 00             	rex.WRB add %r8b,(%r8)
	...
    4f58:	30 10                	xor    %dl,(%rax)
    4f5a:	00 00                	add    %al,(%rax)
    4f5c:	00 00                	add    %al,(%rax)
    4f5e:	00 00                	add    %al,(%rax)
    4f60:	40 10 00             	rex adc %al,(%rax)
    4f63:	00 00                	add    %al,(%rax)
    4f65:	00 00                	add    %al,(%rax)
    4f67:	00 50 10             	add    %dl,0x10(%rax)
    4f6a:	00 00                	add    %al,(%rax)
    4f6c:	00 00                	add    %al,(%rax)
    4f6e:	00 00                	add    %al,(%rax)
    4f70:	60                   	(bad)  
    4f71:	10 00                	adc    %al,(%rax)
    4f73:	00 00                	add    %al,(%rax)
    4f75:	00 00                	add    %al,(%rax)
    4f77:	00 70 10             	add    %dh,0x10(%rax)
    4f7a:	00 00                	add    %al,(%rax)
    4f7c:	00 00                	add    %al,(%rax)
    4f7e:	00 00                	add    %al,(%rax)
    4f80:	80 10 00             	adcb   $0x0,(%rax)
    4f83:	00 00                	add    %al,(%rax)
    4f85:	00 00                	add    %al,(%rax)
    4f87:	00 90 10 00 00 00    	add    %dl,0x10(%rax)
    4f8d:	00 00                	add    %al,(%rax)
    4f8f:	00 a0 10 00 00 00    	add    %ah,0x10(%rax)
    4f95:	00 00                	add    %al,(%rax)
    4f97:	00 b0 10 00 00 00    	add    %dh,0x10(%rax)
    4f9d:	00 00                	add    %al,(%rax)
    4f9f:	00 c0                	add    %al,%al
    4fa1:	10 00                	adc    %al,(%rax)
    4fa3:	00 00                	add    %al,(%rax)
    4fa5:	00 00                	add    %al,(%rax)
    4fa7:	00 d0                	add    %dl,%al
    4fa9:	10 00                	adc    %al,(%rax)
    4fab:	00 00                	add    %al,(%rax)
    4fad:	00 00                	add    %al,(%rax)
    4faf:	00 e0                	add    %ah,%al
    4fb1:	10 00                	adc    %al,(%rax)
    4fb3:	00 00                	add    %al,(%rax)
    4fb5:	00 00                	add    %al,(%rax)
    4fb7:	00 f0                	add    %dh,%al
    4fb9:	10 00                	adc    %al,(%rax)
    4fbb:	00 00                	add    %al,(%rax)
    4fbd:	00 00                	add    %al,(%rax)
    4fbf:	00 00                	add    %al,(%rax)
    4fc1:	11 00                	adc    %eax,(%rax)
	...

Disassembly of section .data:

0000000000005000 <__data_start>:
	...

0000000000005008 <__dso_handle>:
    5008:	08 50 00             	or     %dl,0x0(%rax)
    500b:	00 00                	add    %al,(%rax)
    500d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000005020 <stdin@GLIBC_2.2.5>:
	...

0000000000005028 <completed.8061>:
	...

0000000000005029 <line_order.3092>:
	...

0000000000005040 <students>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0xf88>
   a:	74 75                	je     81 <_init-0xf7f>
   c:	20 39                	and    %bh,(%rcx)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <_end+0x756222f0>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0xf71>
  1a:	31 7e 32             	xor    %edi,0x32(%rsi)
  1d:	30 2e                	xor    %ch,(%rsi)
  1f:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  22:	31 29                	xor    %ebp,(%rcx)
  24:	20 39                	and    %bh,(%rcx)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%rax)

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	e9 12 00 00 00       	jmp    27 <_init-0xfd9>
  15:	00 00                	add    %al,(%rax)
  17:	00 d1                	add    %dl,%cl
  19:	01 00                	add    %eax,(%rax)
	...
  2f:	00 2c 00             	add    %ch,(%rax,%rax,1)
  32:	00 00                	add    %al,(%rax)
  34:	02 00                	add    (%rax),%al
  36:	52                   	push   %rdx
  37:	04 00                	add    $0x0,%al
  39:	00 08                	add    %cl,(%rax)
  3b:	00 00                	add    %al,(%rax)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 ba 14 00 00 00    	add    %bh,0x14(%rdx)
  45:	00 00                	add    %al,(%rax)
  47:	00 60 02             	add    %ah,0x2(%rax)
	...
  5e:	00 00                	add    %al,(%rax)
  60:	2c 00                	sub    $0x0,%al
  62:	00 00                	add    %al,(%rax)
  64:	02 00                	add    (%rax),%al
  66:	e8 08 00 00 08       	call   8000073 <_end+0x7ffae1b>
  6b:	00 00                	add    %al,(%rax)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 1a                	add    %bl,(%rdx)
  71:	17                   	(bad)  
  72:	00 00                	add    %al,(%rax)
  74:	00 00                	add    %al,(%rax)
  76:	00 00                	add    %al,(%rax)
  78:	bc 09 00 00 00       	mov    $0x9,%esp
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	4e 04 00             	rex.WRX add $0x0,%al
   3:	00 04 00             	add    %al,(%rax,%rax,1)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	65 01 00             	add    %eax,%gs:(%rax)
   f:	00 0c 39             	add    %cl,(%rcx,%rdi,1)
  12:	01 00                	add    %eax,(%rax)
  14:	00 0e                	add    %cl,(%rsi)
  16:	02 00                	add    (%rax),%al
  18:	00 e9                	add    %ch,%cl
  1a:	12 00                	adc    (%rax),%al
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 d1                	add    %dl,%cl
  22:	01 00                	add    %eax,(%rax)
	...
  2c:	00 02                	add    %al,(%rdx)
  2e:	01 08                	add    %ecx,(%rax)
  30:	c8 02 00 00          	enter  $0x2,$0x0
  34:	02 02                	add    (%rdx),%al
  36:	07                   	(bad)  
  37:	11 01                	adc    %eax,(%rcx)
  39:	00 00                	add    %al,(%rax)
  3b:	02 04 07             	add    (%rdi,%rax,1),%al
  3e:	4f 00 00             	rex.WRXB add %r8b,(%r8)
  41:	00 02                	add    %al,(%rdx)
  43:	08 07                	or     %al,(%rdi)
  45:	4a 00 00             	rex.WX add %al,(%rax)
  48:	00 02                	add    %al,(%rdx)
  4a:	01 06                	add    %eax,(%rsi)
  4c:	ca 02 00             	lret   $0x2
  4f:	00 02                	add    %al,(%rdx)
  51:	02 05 d6 02 00 00    	add    0x2d6(%rip),%al        # 32d <_init-0xcd3>
  57:	03 04 05 69 6e 74 00 	add    0x746e69(,%rax,1),%eax
  5e:	02 08                	add    (%rax),%cl
  60:	05 61 00 00 00       	add    $0x61,%eax
  65:	04 00                	add    $0x0,%al
  67:	00 00                	add    %al,(%rax)
  69:	00 02                	add    %al,(%rdx)
  6b:	98                   	cwtl   
  6c:	19 5e 00             	sbb    %ebx,0x0(%rsi)
  6f:	00 00                	add    %al,(%rax)
  71:	04 fd                	add    $0xfd,%al
  73:	02 00                	add    (%rax),%al
  75:	00 02                	add    %al,(%rdx)
  77:	99                   	cltd   
  78:	1b 5e 00             	sbb    0x0(%rsi),%ebx
  7b:	00 00                	add    %al,(%rax)
  7d:	05 08 06 08 85       	add    $0x85080608,%eax
  82:	00 00                	add    %al,(%rax)
  84:	00 02                	add    %al,(%rdx)
  86:	01 06                	add    %eax,(%rsi)
  88:	d1 02                	roll   (%rdx)
  8a:	00 00                	add    %al,(%rax)
  8c:	07                   	(bad)  
  8d:	85 00                	test   %eax,(%rax)
  8f:	00 00                	add    %al,(%rax)
  91:	04 1c                	add    $0x1c,%al
  93:	00 00                	add    %al,(%rax)
  95:	00 03                	add    %al,(%rbx)
  97:	d1 17                	rcll   (%rdi)
  99:	42 00 00             	rex.X add %al,(%rax)
  9c:	00 08                	add    %cl,(%rax)
  9e:	a1 02 00 00 d8 04 31 	movabs 0x24083104d8000002,%eax
  a5:	08 24 
  a7:	02 00                	add    (%rax),%al
  a9:	00 09                	add    %cl,(%rcx)
  ab:	96                   	xchg   %eax,%esi
  ac:	00 00                	add    %al,(%rax)
  ae:	00 04 33             	add    %al,(%rbx,%rsi,1)
  b1:	07                   	(bad)  
  b2:	57                   	push   %rdi
  b3:	00 00                	add    %al,(%rax)
  b5:	00 00                	add    %al,(%rax)
  b7:	09 08                	or     %ecx,(%rax)
  b9:	00 00                	add    %al,(%rax)
  bb:	00 04 36             	add    %al,(%rsi,%rsi,1)
  be:	09 7f 00             	or     %edi,0x0(%rdi)
  c1:	00 00                	add    %al,(%rax)
  c3:	08 09                	or     %cl,(%rcx)
  c5:	89 00                	mov    %eax,(%rax)
  c7:	00 00                	add    %al,(%rax)
  c9:	04 37                	add    $0x37,%al
  cb:	09 7f 00             	or     %edi,0x0(%rdi)
  ce:	00 00                	add    %al,(%rax)
  d0:	10 09                	adc    %cl,(%rcx)
  d2:	07                   	(bad)  
  d3:	03 00                	add    (%rax),%eax
  d5:	00 04 38             	add    %al,(%rax,%rdi,1)
  d8:	09 7f 00             	or     %edi,0x0(%rdi)
  db:	00 00                	add    %al,(%rax)
  dd:	18 09                	sbb    %cl,(%rcx)
  df:	63 03                	movsxd (%rbx),%eax
  e1:	00 00                	add    %al,(%rax)
  e3:	04 39                	add    $0x39,%al
  e5:	09 7f 00             	or     %edi,0x0(%rdi)
  e8:	00 00                	add    %al,(%rax)
  ea:	20 09                	and    %cl,(%rcx)
  ec:	fa                   	cli    
  ed:	00 00                	add    %al,(%rax)
  ef:	00 04 3a             	add    %al,(%rdx,%rdi,1)
  f2:	09 7f 00             	or     %edi,0x0(%rdi)
  f5:	00 00                	add    %al,(%rax)
  f7:	28 09                	sub    %cl,(%rcx)
  f9:	00 02                	add    %al,(%rdx)
  fb:	00 00                	add    %al,(%rax)
  fd:	04 3b                	add    $0x3b,%al
  ff:	09 7f 00             	or     %edi,0x0(%rdi)
 102:	00 00                	add    %al,(%rax)
 104:	30 09                	xor    %cl,(%rcx)
 106:	38 00                	cmp    %al,(%rax)
 108:	00 00                	add    %al,(%rax)
 10a:	04 3c                	add    $0x3c,%al
 10c:	09 7f 00             	or     %edi,0x0(%rdi)
 10f:	00 00                	add    %al,(%rax)
 111:	38 09                	cmp    %cl,(%rcx)
 113:	9d                   	popf   
 114:	00 00                	add    %al,(%rax)
 116:	00 04 3d 09 7f 00 00 	add    %al,0x7f09(,%rdi,1)
 11d:	00 40 09             	add    %al,0x9(%rax)
 120:	24 01                	and    $0x1,%al
 122:	00 00                	add    %al,(%rax)
 124:	04 40                	add    $0x40,%al
 126:	09 7f 00             	or     %edi,0x0(%rdi)
 129:	00 00                	add    %al,(%rax)
 12b:	48 09 40 03          	or     %rax,0x3(%rax)
 12f:	00 00                	add    %al,(%rax)
 131:	04 41                	add    $0x41,%al
 133:	09 7f 00             	or     %edi,0x0(%rdi)
 136:	00 00                	add    %al,(%rax)
 138:	50                   	push   %rax
 139:	09 15 03 00 00 04    	or     %edx,0x4000003(%rip)        # 4000142 <_end+0x3ffaeea>
 13f:	42 09 7f 00          	rex.X or %edi,0x0(%rdi)
 143:	00 00                	add    %al,(%rax)
 145:	58                   	pop    %rax
 146:	09 bf 02 00 00 04    	or     %edi,0x4000002(%rdi)
 14c:	44 16                	rex.R (bad) 
 14e:	3d 02 00 00 60       	cmp    $0x60000002,%eax
 153:	09 15 00 00 00 04    	or     %edx,0x4000000(%rip)        # 4000159 <_end+0x3ffaf01>
 159:	46 14 43             	rex.RX adc $0x43,%al
 15c:	02 00                	add    (%rax),%al
 15e:	00 68 09             	add    %ch,0x9(%rax)
 161:	81 00 00 00 04 48    	addl   $0x48040000,(%rax)
 167:	07                   	(bad)  
 168:	57                   	push   %rdi
 169:	00 00                	add    %al,(%rax)
 16b:	00 70 09             	add    %dh,0x9(%rax)
 16e:	50                   	push   %rax
 16f:	01 00                	add    %eax,(%rax)
 171:	00 04 49             	add    %al,(%rcx,%rcx,2)
 174:	07                   	(bad)  
 175:	57                   	push   %rdi
 176:	00 00                	add    %al,(%rax)
 178:	00 74 09 d0          	add    %dh,-0x30(%rcx,%rcx,1)
 17c:	00 00                	add    %al,(%rax)
 17e:	00 04 4a             	add    %al,(%rdx,%rcx,2)
 181:	0b 65 00             	or     0x0(%rbp),%esp
 184:	00 00                	add    %al,(%rax)
 186:	78 09                	js     191 <_init-0xe6f>
 188:	a9 00 00 00 04       	test   $0x4000000,%eax
 18d:	4d 12 34 00          	rex.WRB adc (%r8,%rax,1),%r14b
 191:	00 00                	add    %al,(%rax)
 193:	80 09 ee             	orb    $0xee,(%rcx)
 196:	02 00                	add    (%rax),%al
 198:	00 04 4e             	add    %al,(%rsi,%rcx,2)
 19b:	0f 49 00             	cmovns (%rax),%eax
 19e:	00 00                	add    %al,(%rax)
 1a0:	82                   	(bad)  
 1a1:	09 23                	or     %esp,(%rbx)
 1a3:	00 00                	add    %al,(%rax)
 1a5:	00 04 4f             	add    %al,(%rdi,%rcx,2)
 1a8:	08 49 02             	or     %cl,0x2(%rcx)
 1ab:	00 00                	add    %al,(%rax)
 1ad:	83 09 40             	orl    $0x40,(%rcx)
 1b0:	01 00                	add    %eax,(%rax)
 1b2:	00 04 51             	add    %al,(%rcx,%rdx,2)
 1b5:	0f 59 02             	mulps  (%rdx),%xmm0
 1b8:	00 00                	add    %al,(%rax)
 1ba:	88 09                	mov    %cl,(%rcx)
 1bc:	d4                   	(bad)  
 1bd:	00 00                	add    %al,(%rax)
 1bf:	00 04 59             	add    %al,(%rcx,%rbx,2)
 1c2:	0d 71 00 00 00       	or     $0x71,%eax
 1c7:	90                   	nop
 1c8:	09 b8 00 00 00 04    	or     %edi,0x4000000(%rax)
 1ce:	5b                   	pop    %rbx
 1cf:	17                   	(bad)  
 1d0:	64 02 00             	add    %fs:(%rax),%al
 1d3:	00 98 09 e3 02 00    	add    %bl,0x2e309(%rax)
 1d9:	00 04 5c             	add    %al,(%rsp,%rbx,2)
 1dc:	19 6f 02             	sbb    %ebp,0x2(%rdi)
 1df:	00 00                	add    %al,(%rax)
 1e1:	a0 09 50 03 00 00 04 	movabs 0x145d040000035009,%al
 1e8:	5d 14 
 1ea:	43 02 00             	rex.XB add (%r8),%al
 1ed:	00 a8 09 ed 00 00    	add    %ch,0xed09(%rax)
 1f3:	00 04 5e             	add    %al,(%rsi,%rbx,2)
 1f6:	09 7d 00             	or     %edi,0x0(%rbp)
 1f9:	00 00                	add    %al,(%rax)
 1fb:	b0 09                	mov    $0x9,%al
 1fd:	29 03                	sub    %eax,(%rbx)
 1ff:	00 00                	add    %al,(%rax)
 201:	04 5f                	add    $0x5f,%al
 203:	0a 91 00 00 00 b8    	or     -0x48000000(%rcx),%dl
 209:	09 58 01             	or     %ebx,0x1(%rax)
 20c:	00 00                	add    %al,(%rax)
 20e:	04 60                	add    $0x60,%al
 210:	07                   	(bad)  
 211:	57                   	push   %rdi
 212:	00 00                	add    %al,(%rax)
 214:	00 c0                	add    %al,%al
 216:	09 30                	or     %esi,(%rax)
 218:	03 00                	add    (%rax),%eax
 21a:	00 04 62             	add    %al,(%rdx,%riz,2)
 21d:	08 75 02             	or     %dh,0x2(%rbp)
 220:	00 00                	add    %al,(%rax)
 222:	c4                   	(bad)  
 223:	00 04 a5 02 00 00 05 	add    %al,0x5000002(,%riz,4)
 22a:	07                   	(bad)  
 22b:	19 9d 00 00 00 0a    	sbb    %ebx,0xa000000(%rbp)
 231:	96                   	xchg   %eax,%esi
 232:	02 00                	add    (%rax),%al
 234:	00 04 2b             	add    %al,(%rbx,%rbp,1)
 237:	0e                   	(bad)  
 238:	0b dc                	or     %esp,%ebx
 23a:	00 00                	add    %al,(%rax)
 23c:	00 06                	add    %al,(%rsi)
 23e:	08 38                	or     %bh,(%rax)
 240:	02 00                	add    (%rax),%al
 242:	00 06                	add    %al,(%rsi)
 244:	08 9d 00 00 00 0c    	or     %bl,0xc000000(%rbp)
 24a:	85 00                	test   %eax,(%rax)
 24c:	00 00                	add    %al,(%rax)
 24e:	59                   	pop    %rcx
 24f:	02 00                	add    (%rax),%al
 251:	00 0d 42 00 00 00    	add    %cl,0x42(%rip)        # 299 <_init-0xd67>
 257:	00 00                	add    %al,(%rax)
 259:	06                   	(bad)  
 25a:	08 30                	or     %dh,(%rax)
 25c:	02 00                	add    (%rax),%al
 25e:	00 0b                	add    %cl,(%rbx)
 260:	b5 00                	mov    $0x0,%ch
 262:	00 00                	add    %al,(%rax)
 264:	06                   	(bad)  
 265:	08 5f 02             	or     %bl,0x2(%rdi)
 268:	00 00                	add    %al,(%rax)
 26a:	0b e0                	or     %eax,%esp
 26c:	02 00                	add    (%rax),%al
 26e:	00 06                	add    %al,(%rsi)
 270:	08 6a 02             	or     %ch,0x2(%rdx)
 273:	00 00                	add    %al,(%rax)
 275:	0c 85                	or     $0x85,%al
 277:	00 00                	add    %al,(%rax)
 279:	00 85 02 00 00 0d    	add    %al,0xd000002(%rbp)
 27f:	42 00 00             	rex.X add %al,(%rax)
 282:	00 13                	add    %dl,(%rbx)
 284:	00 0e                	add    %cl,(%rsi)
 286:	e7 00                	out    %eax,$0x0
 288:	00 00                	add    %al,(%rax)
 28a:	06                   	(bad)  
 28b:	89 0e                	mov    %ecx,(%rsi)
 28d:	91                   	xchg   %eax,%ecx
 28e:	02 00                	add    (%rax),%al
 290:	00 06                	add    %al,(%rsi)
 292:	08 24 02             	or     %ah,(%rdx,%rax,1)
 295:	00 00                	add    %al,(%rax)
 297:	0e                   	(bad)  
 298:	5e                   	pop    %rsi
 299:	01 00                	add    %eax,(%rax)
 29b:	00 06                	add    %al,(%rsi)
 29d:	8a 0e                	mov    (%rsi),%cl
 29f:	91                   	xchg   %eax,%ecx
 2a0:	02 00                	add    (%rax),%al
 2a2:	00 0e                	add    %cl,(%rsi)
 2a4:	39 03                	cmp    %eax,(%rbx)
 2a6:	00 00                	add    %al,(%rax)
 2a8:	06                   	(bad)  
 2a9:	8b 0e                	mov    (%rsi),%ecx
 2ab:	91                   	xchg   %eax,%ecx
 2ac:	02 00                	add    (%rax),%al
 2ae:	00 0e                	add    %cl,(%rsi)
 2b0:	08 01                	or     %al,(%rcx)
 2b2:	00 00                	add    %al,(%rax)
 2b4:	07                   	(bad)  
 2b5:	1a 0c 57             	sbb    (%rdi,%rdx,2),%cl
 2b8:	00 00                	add    %al,(%rax)
 2ba:	00 0c d1             	add    %cl,(%rcx,%rdx,8)
 2bd:	02 00                	add    (%rax),%al
 2bf:	00 c6                	add    %al,%dh
 2c1:	02 00                	add    (%rax),%al
 2c3:	00 0f                	add    %cl,(%rdi)
 2c5:	00 07                	add    %al,(%rdi)
 2c7:	bb 02 00 00 06       	mov    $0x6000002,%ebx
 2cc:	08 8c 00 00 00 07 cb 	or     %cl,-0x34f90000(%rax,%rax,1)
 2d3:	02 00                	add    (%rax),%al
 2d5:	00 0e                	add    %cl,(%rsi)
 2d7:	b3 02                	mov    $0x2,%bl
 2d9:	00 00                	add    %al,(%rax)
 2db:	07                   	(bad)  
 2dc:	1b 1a                	sbb    (%rdx),%ebx
 2de:	c6 02 00             	movb   $0x0,(%rdx)
 2e1:	00 02                	add    %al,(%rdx)
 2e3:	08 05 5c 00 00 00    	or     %al,0x5c(%rip)        # 345 <_init-0xcbb>
 2e9:	02 08                	add    (%rax),%cl
 2eb:	07                   	(bad)  
 2ec:	45 00 00             	add    %r8b,(%r8)
 2ef:	00 08                	add    %cl,(%rax)
 2f1:	f2 01 00             	repnz add %eax,(%rax)
 2f4:	00 35 08 13 10 3f    	add    %dh,0x3f101308(%rip)        # 3f101602 <_end+0x3f0fc3aa>
 2fa:	03 00                	add    (%rax),%eax
 2fc:	00 09                	add    %cl,(%rcx)
 2fe:	58                   	pop    %rax
 2ff:	04 00                	add    $0x0,%al
 301:	00 08                	add    %cl,(%rax)
 303:	14 08                	adc    $0x8,%al
 305:	3f                   	(bad)  
 306:	03 00                	add    (%rax),%eax
 308:	00 00                	add    %al,(%rax)
 30a:	09 2d 00 00 00 08    	or     %ebp,0x8000000(%rip)        # 8000310 <_end+0x7ffb0b8>
 310:	15 08 4f 03 00       	adc    $0x34f08,%eax
 315:	00 03                	add    %al,(%rbx)
 317:	09 6a 00             	or     %ebp,0x0(%rdx)
 31a:	00 00                	add    %al,(%rax)
 31c:	08 16                	or     %dl,(%rsi)
 31e:	08 4f 03             	or     %cl,0x3(%rdi)
 321:	00 00                	add    %al,(%rax)
 323:	12 10                	adc    (%rax),%dl
 325:	67 70 61             	addr32 jo 389 <_init-0xc77>
 328:	00 08                	add    %cl,(%rax)
 32a:	17                   	(bad)  
 32b:	08 5f 03             	or     %bl,0x3(%rdi)
 32e:	00 00                	add    %al,(%rax)
 330:	21 09                	and    %ecx,(%rcx)
 332:	22 03                	and    (%rbx),%al
 334:	00 00                	add    %al,(%rax)
 336:	08 18                	or     %bl,(%rax)
 338:	08 6f 03             	or     %ch,0x3(%rdi)
 33b:	00 00                	add    %al,(%rax)
 33d:	26 00 0c 85 00 00 00 	es add %cl,0x4f000000(,%rax,4)
 344:	4f 
 345:	03 00                	add    (%rax),%eax
 347:	00 0d 42 00 00 00    	add    %cl,0x42(%rip)        # 38f <_init-0xc71>
 34d:	02 00                	add    (%rax),%al
 34f:	0c 85                	or     $0x85,%al
 351:	00 00                	add    %al,(%rax)
 353:	00 5f 03             	add    %bl,0x3(%rdi)
 356:	00 00                	add    %al,(%rax)
 358:	0d 42 00 00 00       	or     $0x42,%eax
 35d:	0e                   	(bad)  
 35e:	00 0c 85 00 00 00 6f 	add    %cl,0x6f000000(,%rax,4)
 365:	03 00                	add    (%rax),%eax
 367:	00 0d 42 00 00 00    	add    %cl,0x42(%rip)        # 3af <_init-0xc51>
 36d:	04 00                	add    $0x0,%al
 36f:	0c 85                	or     $0x85,%al
 371:	00 00                	add    %al,(%rax)
 373:	00 85 03 00 00 0d    	add    %al,0xd000003(%rbp)
 379:	42 00 00             	rex.X add %al,(%rax)
 37c:	00 04 0d 42 00 00 00 	add    %al,0x42(,%rcx,1)
 383:	02 00                	add    (%rax),%al
 385:	04 c1                	add    $0xc1,%al
 387:	00 00                	add    %al,(%rax)
 389:	00 08                	add    %cl,(%rax)
 38b:	19 03                	sbb    %eax,(%rbx)
 38d:	f0 02 00             	lock add (%rax),%al
 390:	00 0c 85 03 00 00 a1 	add    %cl,-0x5efffffd(,%rax,4)
 397:	03 00                	add    (%rax),%eax
 399:	00 0d 42 00 00 00    	add    %cl,0x42(%rip)        # 3e1 <_init-0xc1f>
 39f:	09 00                	or     %eax,(%rax)
 3a1:	0e                   	(bad)  
 3a2:	aa                   	stos   %al,%es:(%rdi)
 3a3:	02 00                	add    (%rax),%al
 3a5:	00 08                	add    %cl,(%rax)
 3a7:	1c 17                	sbb    $0x17,%al
 3a9:	91                   	xchg   %eax,%ecx
 3aa:	03 00                	add    (%rax),%eax
 3ac:	00 11                	add    %dl,(%rcx)
 3ae:	a1 03 00 00 01 0d 10 	movabs 0x309100d01000003,%eax
 3b5:	09 03 
 3b7:	40 50                	rex push %rax
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 00                	add    %al,(%rax)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	0c da                	or     $0xda,%al
 3c1:	03 00                	add    (%rax),%eax
 3c3:	00 cf                	add    %cl,%bh
 3c5:	03 00                	add    (%rax),%eax
 3c7:	00 0d 42 00 00 00    	add    %cl,0x42(%rip)        # 40f <_init-0xbf1>
 3cd:	09 00                	or     %eax,(%rax)
 3cf:	07                   	(bad)  
 3d0:	bf 03 00 00 06       	mov    $0x6000003,%edi
 3d5:	08 df                	or     %bl,%bh
 3d7:	03 00                	add    (%rax),%eax
 3d9:	00 07                	add    %al,(%rdi)
 3db:	d4                   	(bad)  
 3dc:	03 00                	add    (%rax),%eax
 3de:	00 12                	add    %dl,(%rdx)
 3e0:	13 32                	adc    (%rdx),%esi
 3e2:	01 00                	add    %eax,(%rax)
 3e4:	00 01                	add    %al,(%rcx)
 3e6:	10 0e                	adc    %cl,(%rsi)
 3e8:	cf                   	iret   
 3e9:	03 00                	add    (%rax),%eax
 3eb:	00 09                	add    %cl,(%rcx)
 3ed:	03 00                	add    (%rax),%eax
 3ef:	4d 00 00             	rex.WRB add %r8b,(%r8)
 3f2:	00 00                	add    %al,(%rax)
 3f4:	00 00                	add    %al,(%rax)
 3f6:	14 5e                	adc    $0x5e,%al
 3f8:	03 00                	add    (%rax),%eax
 3fa:	00 01                	add    %al,(%rcx)
 3fc:	26 05 57 00 00 00    	es add $0x57,%eax
 402:	c0 13 00             	rclb   $0x0,(%rbx)
 405:	00 00                	add    %al,(%rax)
 407:	00 00                	add    %al,(%rax)
 409:	00 fa                	add    %bh,%dl
 40b:	00 00                	add    %al,(%rax)
 40d:	00 00                	add    %al,(%rax)
 40f:	00 00                	add    %al,(%rax)
 411:	00 01                	add    %al,(%rcx)
 413:	9c                   	pushf  
 414:	37                   	(bad)  
 415:	04 00                	add    $0x0,%al
 417:	00 15 46 01 00 00    	add    %dl,0x146(%rip)        # 563 <_init-0xa9d>
 41d:	01 29                	add    %ebp,(%rcx)
 41f:	08 3f                	or     %bh,(%rdi)
 421:	03 00                	add    (%rax),%eax
 423:	00 02                	add    %al,(%rdx)
 425:	91                   	xchg   %eax,%ecx
 426:	65 15 72 03 00 00    	gs adc $0x372,%eax
 42c:	01 2a                	add    %ebp,(%rdx)
 42e:	08 85 00 00 00 02    	or     %al,0x2000000(%rbp)
 434:	91                   	xchg   %eax,%ecx
 435:	64 00 16             	add    %dl,%fs:(%rsi)
 438:	74 00                	je     43a <_init-0xbc6>
 43a:	00 00                	add    %al,(%rax)
 43c:	01 15 06 e9 12 00    	add    %edx,0x12e906(%rip)        # 12ed48 <_end+0x129af0>
 442:	00 00                	add    %al,(%rax)
 444:	00 00                	add    %al,(%rax)
 446:	00 d7                	add    %dl,%bh
 448:	00 00                	add    %al,(%rax)
 44a:	00 00                	add    %al,(%rax)
 44c:	00 00                	add    %al,(%rax)
 44e:	00 01                	add    %al,(%rcx)
 450:	9c                   	pushf  
 451:	00 92 04 00 00 04    	add    %dl,0x4000004(%rdx)
 457:	00 33                	add    %dh,(%rbx)
 459:	01 00                	add    %eax,(%rax)
 45b:	00 08                	add    %cl,(%rax)
 45d:	01 65 01             	add    %esp,0x1(%rbp)
 460:	00 00                	add    %al,(%rax)
 462:	0c 99                	or     $0x99,%al
 464:	03 00                	add    (%rax),%eax
 466:	00 0e                	add    %cl,(%rsi)
 468:	02 00                	add    (%rax),%al
 46a:	00 ba 14 00 00 00    	add    %bh,0x14(%rdx)
 470:	00 00                	add    %al,(%rax)
 472:	00 60 02             	add    %ah,0x2(%rax)
 475:	00 00                	add    %al,(%rax)
 477:	00 00                	add    %al,(%rax)
 479:	00 00                	add    %al,(%rax)
 47b:	78 01                	js     47e <_init-0xb82>
 47d:	00 00                	add    %al,(%rax)
 47f:	02 01                	add    (%rcx),%al
 481:	08 c8                	or     %cl,%al
 483:	02 00                	add    (%rax),%al
 485:	00 02                	add    %al,(%rdx)
 487:	02 07                	add    (%rdi),%al
 489:	11 01                	adc    %eax,(%rcx)
 48b:	00 00                	add    %al,(%rax)
 48d:	02 04 07             	add    (%rdi,%rax,1),%al
 490:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 493:	00 02                	add    %al,(%rdx)
 495:	08 07                	or     %al,(%rdi)
 497:	4a 00 00             	rex.WX add %al,(%rax)
 49a:	00 02                	add    %al,(%rdx)
 49c:	01 06                	add    %eax,(%rsi)
 49e:	ca 02 00             	lret   $0x2
 4a1:	00 03                	add    %al,(%rbx)
 4a3:	88 03                	mov    %al,(%rbx)
 4a5:	00 00                	add    %al,(%rax)
 4a7:	02 26                	add    (%rsi),%ah
 4a9:	17                   	(bad)  
 4aa:	2d 00 00 00 02       	sub    $0x2000000,%eax
 4af:	02 05 d6 02 00 00    	add    0x2d6(%rip),%al        # 78b <_init-0x875>
 4b5:	04 04                	add    $0x4,%al
 4b7:	05 69 6e 74 00       	add    $0x746e69,%eax
 4bc:	02 08                	add    (%rax),%cl
 4be:	05 61 00 00 00       	add    $0x61,%eax
 4c3:	03 00                	add    (%rax),%eax
 4c5:	00 00                	add    %al,(%rax)
 4c7:	00 02                	add    %al,(%rdx)
 4c9:	98                   	cwtl   
 4ca:	19 6a 00             	sbb    %ebp,0x0(%rdx)
 4cd:	00 00                	add    %al,(%rax)
 4cf:	03 fd                	add    %ebp,%edi
 4d1:	02 00                	add    (%rax),%al
 4d3:	00 02                	add    %al,(%rdx)
 4d5:	99                   	cltd   
 4d6:	1b 6a 00             	sbb    0x0(%rdx),%ebp
 4d9:	00 00                	add    %al,(%rax)
 4db:	05 08 06 08 91       	add    $0x91080608,%eax
 4e0:	00 00                	add    %al,(%rax)
 4e2:	00 02                	add    %al,(%rdx)
 4e4:	01 06                	add    %eax,(%rsi)
 4e6:	d1 02                	roll   (%rdx)
 4e8:	00 00                	add    %al,(%rax)
 4ea:	07                   	(bad)  
 4eb:	91                   	xchg   %eax,%ecx
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 03                	add    %al,(%rbx)
 4f0:	8a 03                	mov    (%rbx),%al
 4f2:	00 00                	add    %al,(%rax)
 4f4:	03 18                	add    (%rax),%ebx
 4f6:	13 50 00             	adc    0x0(%rax),%edx
 4f9:	00 00                	add    %al,(%rax)
 4fb:	03 1c 00             	add    (%rax,%rax,1),%ebx
 4fe:	00 00                	add    %al,(%rax)
 500:	04 d1                	add    $0xd1,%al
 502:	17                   	(bad)  
 503:	42 00 00             	rex.X add %al,(%rax)
 506:	00 08                	add    %cl,(%rax)
 508:	a1 02 00 00 d8 05 31 	movabs 0x3c083105d8000002,%eax
 50f:	08 3c 
 511:	02 00                	add    (%rax),%al
 513:	00 09                	add    %cl,(%rcx)
 515:	96                   	xchg   %eax,%esi
 516:	00 00                	add    %al,(%rax)
 518:	00 05 33 07 63 00    	add    %al,0x630733(%rip)        # 630c51 <_end+0x62b9f9>
 51e:	00 00                	add    %al,(%rax)
 520:	00 09                	add    %cl,(%rcx)
 522:	08 00                	or     %al,(%rax)
 524:	00 00                	add    %al,(%rax)
 526:	05 36 09 8b 00       	add    $0x8b0936,%eax
 52b:	00 00                	add    %al,(%rax)
 52d:	08 09                	or     %cl,(%rcx)
 52f:	89 00                	mov    %eax,(%rax)
 531:	00 00                	add    %al,(%rax)
 533:	05 37 09 8b 00       	add    $0x8b0937,%eax
 538:	00 00                	add    %al,(%rax)
 53a:	10 09                	adc    %cl,(%rcx)
 53c:	07                   	(bad)  
 53d:	03 00                	add    (%rax),%eax
 53f:	00 05 38 09 8b 00    	add    %al,0x8b0938(%rip)        # 8b0e7d <_end+0x8abc25>
 545:	00 00                	add    %al,(%rax)
 547:	18 09                	sbb    %cl,(%rcx)
 549:	63 03                	movsxd (%rbx),%eax
 54b:	00 00                	add    %al,(%rax)
 54d:	05 39 09 8b 00       	add    $0x8b0939,%eax
 552:	00 00                	add    %al,(%rax)
 554:	20 09                	and    %cl,(%rcx)
 556:	fa                   	cli    
 557:	00 00                	add    %al,(%rax)
 559:	00 05 3a 09 8b 00    	add    %al,0x8b093a(%rip)        # 8b0e99 <_end+0x8abc41>
 55f:	00 00                	add    %al,(%rax)
 561:	28 09                	sub    %cl,(%rcx)
 563:	00 02                	add    %al,(%rdx)
 565:	00 00                	add    %al,(%rax)
 567:	05 3b 09 8b 00       	add    $0x8b093b,%eax
 56c:	00 00                	add    %al,(%rax)
 56e:	30 09                	xor    %cl,(%rcx)
 570:	38 00                	cmp    %al,(%rax)
 572:	00 00                	add    %al,(%rax)
 574:	05 3c 09 8b 00       	add    $0x8b093c,%eax
 579:	00 00                	add    %al,(%rax)
 57b:	38 09                	cmp    %cl,(%rcx)
 57d:	9d                   	popf   
 57e:	00 00                	add    %al,(%rax)
 580:	00 05 3d 09 8b 00    	add    %al,0x8b093d(%rip)        # 8b0ec3 <_end+0x8abc6b>
 586:	00 00                	add    %al,(%rax)
 588:	40 09 24 01          	rex or %esp,(%rcx,%rax,1)
 58c:	00 00                	add    %al,(%rax)
 58e:	05 40 09 8b 00       	add    $0x8b0940,%eax
 593:	00 00                	add    %al,(%rax)
 595:	48 09 40 03          	or     %rax,0x3(%rax)
 599:	00 00                	add    %al,(%rax)
 59b:	05 41 09 8b 00       	add    $0x8b0941,%eax
 5a0:	00 00                	add    %al,(%rax)
 5a2:	50                   	push   %rax
 5a3:	09 15 03 00 00 05    	or     %edx,0x5000003(%rip)        # 50005ac <_end+0x4ffb354>
 5a9:	42 09 8b 00 00 00 58 	rex.X or %ecx,0x58000000(%rbx)
 5b0:	09 bf 02 00 00 05    	or     %edi,0x5000002(%rdi)
 5b6:	44 16                	rex.R (bad) 
 5b8:	55                   	push   %rbp
 5b9:	02 00                	add    (%rax),%al
 5bb:	00 60 09             	add    %ah,0x9(%rax)
 5be:	15 00 00 00 05       	adc    $0x5000000,%eax
 5c3:	46 14 5b             	rex.RX adc $0x5b,%al
 5c6:	02 00                	add    (%rax),%al
 5c8:	00 68 09             	add    %ch,0x9(%rax)
 5cb:	81 00 00 00 05 48    	addl   $0x48050000,(%rax)
 5d1:	07                   	(bad)  
 5d2:	63 00                	movsxd (%rax),%eax
 5d4:	00 00                	add    %al,(%rax)
 5d6:	70 09                	jo     5e1 <_init-0xa1f>
 5d8:	50                   	push   %rax
 5d9:	01 00                	add    %eax,(%rax)
 5db:	00 05 49 07 63 00    	add    %al,0x630749(%rip)        # 630d2a <_end+0x62bad2>
 5e1:	00 00                	add    %al,(%rax)
 5e3:	74 09                	je     5ee <_init-0xa12>
 5e5:	d0 00                	rolb   (%rax)
 5e7:	00 00                	add    %al,(%rax)
 5e9:	05 4a 0b 71 00       	add    $0x710b4a,%eax
 5ee:	00 00                	add    %al,(%rax)
 5f0:	78 09                	js     5fb <_init-0xa05>
 5f2:	a9 00 00 00 05       	test   $0x5000000,%eax
 5f7:	4d 12 34 00          	rex.WRB adc (%r8,%rax,1),%r14b
 5fb:	00 00                	add    %al,(%rax)
 5fd:	80 09 ee             	orb    $0xee,(%rcx)
 600:	02 00                	add    (%rax),%al
 602:	00 05 4e 0f 49 00    	add    %al,0x490f4e(%rip)        # 491556 <_end+0x48c2fe>
 608:	00 00                	add    %al,(%rax)
 60a:	82                   	(bad)  
 60b:	09 23                	or     %esp,(%rbx)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 05 4f 08 61 02    	add    %al,0x261084f(%rip)        # 2610e64 <_end+0x260bc0c>
 615:	00 00                	add    %al,(%rax)
 617:	83 09 40             	orl    $0x40,(%rcx)
 61a:	01 00                	add    %eax,(%rax)
 61c:	00 05 51 0f 71 02    	add    %al,0x2710f51(%rip)        # 2711573 <_end+0x270c31b>
 622:	00 00                	add    %al,(%rax)
 624:	88 09                	mov    %cl,(%rcx)
 626:	d4                   	(bad)  
 627:	00 00                	add    %al,(%rax)
 629:	00 05 59 0d 7d 00    	add    %al,0x7d0d59(%rip)        # 7d1388 <_end+0x7cc130>
 62f:	00 00                	add    %al,(%rax)
 631:	90                   	nop
 632:	09 b8 00 00 00 05    	or     %edi,0x5000000(%rax)
 638:	5b                   	pop    %rbx
 639:	17                   	(bad)  
 63a:	7c 02                	jl     63e <_init-0x9c2>
 63c:	00 00                	add    %al,(%rax)
 63e:	98                   	cwtl   
 63f:	09 e3                	or     %esp,%ebx
 641:	02 00                	add    (%rax),%al
 643:	00 05 5c 19 87 02    	add    %al,0x287195c(%rip)        # 2871fa5 <_end+0x286cd4d>
 649:	00 00                	add    %al,(%rax)
 64b:	a0 09 50 03 00 00 05 	movabs 0x145d050000035009,%al
 652:	5d 14 
 654:	5b                   	pop    %rbx
 655:	02 00                	add    (%rax),%al
 657:	00 a8 09 ed 00 00    	add    %ch,0xed09(%rax)
 65d:	00 05 5e 09 89 00    	add    %al,0x89095e(%rip)        # 890fc1 <_end+0x88bd69>
 663:	00 00                	add    %al,(%rax)
 665:	b0 09                	mov    $0x9,%al
 667:	29 03                	sub    %eax,(%rbx)
 669:	00 00                	add    %al,(%rax)
 66b:	05 5f 0a a9 00       	add    $0xa90a5f,%eax
 670:	00 00                	add    %al,(%rax)
 672:	b8 09 58 01 00       	mov    $0x15809,%eax
 677:	00 05 60 07 63 00    	add    %al,0x630760(%rip)        # 630ddd <_end+0x62bb85>
 67d:	00 00                	add    %al,(%rax)
 67f:	c0 09 30             	rorb   $0x30,(%rcx)
 682:	03 00                	add    (%rax),%eax
 684:	00 05 62 08 8d 02    	add    %al,0x28d0862(%rip)        # 28d0eec <_end+0x28cbc94>
 68a:	00 00                	add    %al,(%rax)
 68c:	c4                   	(bad)  
 68d:	00 03                	add    %al,(%rbx)
 68f:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 690:	02 00                	add    (%rax),%al
 692:	00 06                	add    %al,(%rsi)
 694:	07                   	(bad)  
 695:	19 b5 00 00 00 0a    	sbb    %esi,0xa000000(%rbp)
 69b:	96                   	xchg   %eax,%esi
 69c:	02 00                	add    (%rax),%al
 69e:	00 05 2b 0e 0b dc    	add    %al,-0x23f4f1d5(%rip)        # ffffffffdc0b14cf <_end+0xffffffffdc0ac277>
 6a4:	00 00                	add    %al,(%rax)
 6a6:	00 06                	add    %al,(%rsi)
 6a8:	08 50 02             	or     %dl,0x2(%rax)
 6ab:	00 00                	add    %al,(%rax)
 6ad:	06                   	(bad)  
 6ae:	08 b5 00 00 00 0c    	or     %dh,0xc000000(%rbp)
 6b4:	91                   	xchg   %eax,%ecx
 6b5:	00 00                	add    %al,(%rax)
 6b7:	00 71 02             	add    %dh,0x2(%rcx)
 6ba:	00 00                	add    %al,(%rax)
 6bc:	0d 42 00 00 00       	or     $0x42,%eax
 6c1:	00 00                	add    %al,(%rax)
 6c3:	06                   	(bad)  
 6c4:	08 48 02             	or     %cl,0x2(%rax)
 6c7:	00 00                	add    %al,(%rax)
 6c9:	0b b5 00 00 00 06    	or     0x6000000(%rbp),%esi
 6cf:	08 77 02             	or     %dh,0x2(%rdi)
 6d2:	00 00                	add    %al,(%rax)
 6d4:	0b e0                	or     %eax,%esp
 6d6:	02 00                	add    (%rax),%al
 6d8:	00 06                	add    %al,(%rsi)
 6da:	08 82 02 00 00 0c    	or     %al,0xc000002(%rdx)
 6e0:	91                   	xchg   %eax,%ecx
 6e1:	00 00                	add    %al,(%rax)
 6e3:	00 9d 02 00 00 0d    	add    %bl,0xd000002(%rbp)
 6e9:	42 00 00             	rex.X add %al,(%rax)
 6ec:	00 13                	add    %dl,(%rbx)
 6ee:	00 0e                	add    %cl,(%rsi)
 6f0:	e7 00                	out    %eax,$0x0
 6f2:	00 00                	add    %al,(%rax)
 6f4:	07                   	(bad)  
 6f5:	89 0e                	mov    %ecx,(%rsi)
 6f7:	a9 02 00 00 06       	test   $0x6000002,%eax
 6fc:	08 3c 02             	or     %bh,(%rdx,%rax,1)
 6ff:	00 00                	add    %al,(%rax)
 701:	0e                   	(bad)  
 702:	5e                   	pop    %rsi
 703:	01 00                	add    %eax,(%rax)
 705:	00 07                	add    %al,(%rdi)
 707:	8a 0e                	mov    (%rsi),%cl
 709:	a9 02 00 00 0e       	test   $0xe000002,%eax
 70e:	39 03                	cmp    %eax,(%rbx)
 710:	00 00                	add    %al,(%rax)
 712:	07                   	(bad)  
 713:	8b 0e                	mov    (%rsi),%ecx
 715:	a9 02 00 00 0e       	test   $0xe000002,%eax
 71a:	08 01                	or     %al,(%rcx)
 71c:	00 00                	add    %al,(%rax)
 71e:	08 1a                	or     %bl,(%rdx)
 720:	0c 63                	or     $0x63,%al
 722:	00 00                	add    %al,(%rax)
 724:	00 0c e9             	add    %cl,(%rcx,%rbp,8)
 727:	02 00                	add    (%rax),%al
 729:	00 de                	add    %bl,%dh
 72b:	02 00                	add    (%rax),%al
 72d:	00 0f                	add    %cl,(%rdi)
 72f:	00 07                	add    %al,(%rdi)
 731:	d3 02                	roll   %cl,(%rdx)
 733:	00 00                	add    %al,(%rax)
 735:	06                   	(bad)  
 736:	08 98 00 00 00 07    	or     %bl,0x7000000(%rax)
 73c:	e3 02                	jrcxz  740 <_init-0x8c0>
 73e:	00 00                	add    %al,(%rax)
 740:	0e                   	(bad)  
 741:	b3 02                	mov    $0x2,%bl
 743:	00 00                	add    %al,(%rax)
 745:	08 1b                	or     %bl,(%rbx)
 747:	1a de                	sbb    %dh,%bl
 749:	02 00                	add    (%rax),%al
 74b:	00 02                	add    %al,(%rdx)
 74d:	08 05 5c 00 00 00    	or     %al,0x5c(%rip)        # 7af <_init-0x851>
 753:	02 08                	add    (%rax),%cl
 755:	07                   	(bad)  
 756:	45 00 00             	add    %r8b,(%r8)
 759:	00 08                	add    %cl,(%rax)
 75b:	f2 01 00             	repnz add %eax,(%rax)
 75e:	00 35 09 13 10 57    	add    %dh,0x57101309(%rip)        # 57101a6d <_end+0x570fc815>
 764:	03 00                	add    (%rax),%eax
 766:	00 09                	add    %cl,(%rcx)
 768:	58                   	pop    %rax
 769:	04 00                	add    $0x0,%al
 76b:	00 09                	add    %cl,(%rcx)
 76d:	14 08                	adc    $0x8,%al
 76f:	57                   	push   %rdi
 770:	03 00                	add    (%rax),%eax
 772:	00 00                	add    %al,(%rax)
 774:	09 2d 00 00 00 09    	or     %ebp,0x9000000(%rip)        # 900077a <_end+0x8ffb522>
 77a:	15 08 67 03 00       	adc    $0x36708,%eax
 77f:	00 03                	add    %al,(%rbx)
 781:	09 6a 00             	or     %ebp,0x0(%rdx)
 784:	00 00                	add    %al,(%rax)
 786:	09 16                	or     %edx,(%rsi)
 788:	08 67 03             	or     %ah,0x3(%rdi)
 78b:	00 00                	add    %al,(%rax)
 78d:	12 10                	adc    (%rax),%dl
 78f:	67 70 61             	addr32 jo 7f3 <_init-0x80d>
 792:	00 09                	add    %cl,(%rcx)
 794:	17                   	(bad)  
 795:	08 77 03             	or     %dh,0x3(%rdi)
 798:	00 00                	add    %al,(%rax)
 79a:	21 09                	and    %ecx,(%rcx)
 79c:	22 03                	and    (%rbx),%al
 79e:	00 00                	add    %al,(%rax)
 7a0:	09 18                	or     %ebx,(%rax)
 7a2:	08 87 03 00 00 26    	or     %al,0x26000003(%rdi)
 7a8:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
 7ab:	00 00                	add    %al,(%rax)
 7ad:	00 67 03             	add    %ah,0x3(%rdi)
 7b0:	00 00                	add    %al,(%rax)
 7b2:	0d 42 00 00 00       	or     $0x42,%eax
 7b7:	02 00                	add    (%rax),%al
 7b9:	0c 91                	or     $0x91,%al
 7bb:	00 00                	add    %al,(%rax)
 7bd:	00 77 03             	add    %dh,0x3(%rdi)
 7c0:	00 00                	add    %al,(%rax)
 7c2:	0d 42 00 00 00       	or     $0x42,%eax
 7c7:	0e                   	(bad)  
 7c8:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
 7cb:	00 00                	add    %al,(%rax)
 7cd:	00 87 03 00 00 0d    	add    %al,0xd000003(%rdi)
 7d3:	42 00 00             	rex.X add %al,(%rax)
 7d6:	00 04 00             	add    %al,(%rax,%rax,1)
 7d9:	0c 91                	or     $0x91,%al
 7db:	00 00                	add    %al,(%rax)
 7dd:	00 9d 03 00 00 0d    	add    %bl,0xd000003(%rbp)
 7e3:	42 00 00             	rex.X add %al,(%rax)
 7e6:	00 04 0d 42 00 00 00 	add    %al,0x42(,%rcx,1)
 7ed:	02 00                	add    (%rax),%al
 7ef:	03 c1                	add    %ecx,%eax
 7f1:	00 00                	add    %al,(%rax)
 7f3:	00 09                	add    %cl,(%rcx)
 7f5:	19 03                	sbb    %eax,(%rbx)
 7f7:	08 03                	or     %al,(%rbx)
 7f9:	00 00                	add    %al,(%rax)
 7fb:	0c 9d                	or     $0x9d,%al
 7fd:	03 00                	add    (%rax),%eax
 7ff:	00 b9 03 00 00 0d    	add    %bh,0xd000003(%rcx)
 805:	42 00 00             	rex.X add %al,(%rax)
 808:	00 09                	add    %cl,(%rcx)
 80a:	00 0e                	add    %cl,(%rsi)
 80c:	aa                   	stos   %al,%es:(%rdi)
 80d:	02 00                	add    (%rax),%al
 80f:	00 09                	add    %cl,(%rcx)
 811:	1c 17                	sbb    $0x17,%al
 813:	a9 03 00 00 11       	test   $0x11000003,%eax
 818:	af                   	scas   %es:(%rdi),%eax
 819:	03 00                	add    (%rax),%eax
 81b:	00 01                	add    %al,(%rcx)
 81d:	2d 09 9d 00 00       	sub    $0x9d09,%eax
 822:	00 9c 16 00 00 00 00 	add    %bl,0x0(%rsi,%rdx,1)
 829:	00 00                	add    %al,(%rax)
 82b:	7e 00                	jle    82d <_init-0x7d3>
 82d:	00 00                	add    %al,(%rax)
 82f:	00 00                	add    %al,(%rax)
 831:	00 00                	add    %al,(%rax)
 833:	01 9c 34 04 00 00 12 	add    %ebx,0x12000004(%rsp,%rsi,1)
 83a:	73 72                	jae    8ae <_init-0x752>
 83c:	63 00                	movsxd (%rax),%eax
 83e:	01 2d 22 e3 02 00    	add    %ebp,0x2e322(%rip)        # 2eb66 <_end+0x2990e>
 844:	00 02                	add    %al,(%rdx)
 846:	91                   	xchg   %eax,%ecx
 847:	58                   	pop    %rax
 848:	13 92 03 00 00 01    	adc    0x1000003(%rdx),%edx
 84e:	2d 37 34 04 00       	sub    $0x43437,%eax
 853:	00 02                	add    %al,(%rdx)
 855:	91                   	xchg   %eax,%ecx
 856:	50                   	push   %rax
 857:	13 bc 03 00 00 01 2e 	adc    0x2e010000(%rbx,%rax,1),%edi
 85e:	23 91 00 00 00 02    	and    0x2000000(%rcx),%edx
 864:	91                   	xchg   %eax,%ecx
 865:	4c 14 b5             	rex.WR adc $0xb5,%al
 868:	16                   	(bad)  
 869:	00 00                	add    %al,(%rax)
 86b:	00 00                	add    %al,(%rax)
 86d:	00 00                	add    %al,(%rax)
 86f:	5e                   	pop    %rsi
 870:	00 00                	add    %al,(%rax)
 872:	00 00                	add    %al,(%rax)
 874:	00 00                	add    %al,(%rax)
 876:	00 15 69 00 01 34    	add    %dl,0x34010069(%rip)        # 340108e5 <_end+0x3400b68d>
 87c:	10 9d 00 00 00 02    	adc    %bl,0x2000000(%rbp)
 882:	91                   	xchg   %eax,%ecx
 883:	6f                   	outsl  %ds:(%rsi),(%dx)
 884:	00 00                	add    %al,(%rax)
 886:	06                   	(bad)  
 887:	08 9d 03 00 00 16    	or     %bl,0x16000003(%rbp)
 88d:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 88e:	03 00                	add    (%rax),%eax
 890:	00 01                	add    %al,(%rcx)
 892:	10 09                	adc    %cl,(%rcx)
 894:	9d                   	popf   
 895:	00 00                	add    %al,(%rax)
 897:	00 ba 14 00 00 00    	add    %bh,0x14(%rdx)
 89d:	00 00                	add    %al,(%rax)
 89f:	00 e2                	add    %ah,%dl
 8a1:	01 00                	add    %eax,(%rax)
 8a3:	00 00                	add    %al,(%rax)
 8a5:	00 00                	add    %al,(%rax)
 8a7:	00 01                	add    %al,(%rcx)
 8a9:	9c                   	pushf  
 8aa:	13 81 04 00 00 01    	adc    0x1000004(%rcx),%eax
 8b0:	10 20                	adc    %ah,(%rax)
 8b2:	91                   	xchg   %eax,%ecx
 8b3:	00 00                	add    %al,(%rax)
 8b5:	00 02                	add    %al,(%rdx)
 8b7:	91                   	xchg   %eax,%ecx
 8b8:	6c                   	insb   (%dx),%es:(%rdi)
 8b9:	12 73 72             	adc    0x72(%rbx),%dh
 8bc:	63 00                	movsxd (%rax),%eax
 8be:	01 10                	add    %edx,(%rax)
 8c0:	33 e3                	xor    %ebx,%esp
 8c2:	02 00                	add    (%rax),%al
 8c4:	00 02                	add    %al,(%rdx)
 8c6:	91                   	xchg   %eax,%ecx
 8c7:	60                   	(bad)  
 8c8:	13 92 03 00 00 01    	adc    0x1000003(%rdx),%edx
 8ce:	10 48 34             	adc    %cl,0x34(%rax)
 8d1:	04 00                	add    $0x0,%al
 8d3:	00 02                	add    %al,(%rdx)
 8d5:	91                   	xchg   %eax,%ecx
 8d6:	58                   	pop    %rax
 8d7:	13 7b 03             	adc    0x3(%rbx),%edi
 8da:	00 00                	add    %al,(%rax)
 8dc:	01 11                	add    %edx,(%rcx)
 8de:	20 91 00 00 00 02    	and    %dl,0x2000000(%rcx)
 8e4:	91                   	xchg   %eax,%ecx
 8e5:	68 00 00 23 06       	push   $0x6230000
 8ea:	00 00                	add    %al,(%rax)
 8ec:	04 00                	add    $0x0,%al
 8ee:	6c                   	insb   (%dx),%es:(%rdi)
 8ef:	02 00                	add    (%rax),%al
 8f1:	00 08                	add    %cl,(%rax)
 8f3:	01 65 01             	add    %esp,0x1(%rbp)
 8f6:	00 00                	add    %al,(%rax)
 8f8:	0c ee                	or     $0xee,%al
 8fa:	03 00                	add    (%rax),%eax
 8fc:	00 0e                	add    %cl,(%rsi)
 8fe:	02 00                	add    (%rax),%al
 900:	00 1a                	add    %bl,(%rdx)
 902:	17                   	(bad)  
 903:	00 00                	add    %al,(%rax)
 905:	00 00                	add    %al,(%rax)
 907:	00 00                	add    %al,(%rax)
 909:	bc 09 00 00 00       	mov    $0x9,%esp
 90e:	00 00                	add    %al,(%rax)
 910:	00 4a 03             	add    %cl,0x3(%rdx)
 913:	00 00                	add    %al,(%rax)
 915:	02 01                	add    (%rcx),%al
 917:	08 c8                	or     %cl,%al
 919:	02 00                	add    (%rax),%al
 91b:	00 02                	add    %al,(%rdx)
 91d:	02 07                	add    (%rdi),%al
 91f:	11 01                	adc    %eax,(%rcx)
 921:	00 00                	add    %al,(%rax)
 923:	02 04 07             	add    (%rdi,%rax,1),%al
 926:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 929:	00 02                	add    %al,(%rdx)
 92b:	08 07                	or     %al,(%rdi)
 92d:	4a 00 00             	rex.WX add %al,(%rax)
 930:	00 02                	add    %al,(%rdx)
 932:	01 06                	add    %eax,(%rsi)
 934:	ca 02 00             	lret   $0x2
 937:	00 03                	add    %al,(%rbx)
 939:	88 03                	mov    %al,(%rbx)
 93b:	00 00                	add    %al,(%rax)
 93d:	02 26                	add    (%rsi),%ah
 93f:	17                   	(bad)  
 940:	2d 00 00 00 02       	sub    $0x2000000,%eax
 945:	02 05 d6 02 00 00    	add    0x2d6(%rip),%al        # c21 <_init-0x3df>
 94b:	04 04                	add    $0x4,%al
 94d:	05 69 6e 74 00       	add    $0x746e69,%eax
 952:	02 08                	add    (%rax),%cl
 954:	05 61 00 00 00       	add    $0x61,%eax
 959:	03 00                	add    (%rax),%eax
 95b:	00 00                	add    %al,(%rax)
 95d:	00 02                	add    %al,(%rdx)
 95f:	98                   	cwtl   
 960:	19 6a 00             	sbb    %ebp,0x0(%rdx)
 963:	00 00                	add    %al,(%rax)
 965:	03 fd                	add    %ebp,%edi
 967:	02 00                	add    (%rax),%al
 969:	00 02                	add    %al,(%rdx)
 96b:	99                   	cltd   
 96c:	1b 6a 00             	sbb    0x0(%rdx),%ebp
 96f:	00 00                	add    %al,(%rax)
 971:	05 08 06 08 91       	add    $0x91080608,%eax
 976:	00 00                	add    %al,(%rax)
 978:	00 02                	add    %al,(%rdx)
 97a:	01 06                	add    %eax,(%rsi)
 97c:	d1 02                	roll   (%rdx)
 97e:	00 00                	add    %al,(%rax)
 980:	07                   	(bad)  
 981:	91                   	xchg   %eax,%ecx
 982:	00 00                	add    %al,(%rax)
 984:	00 03                	add    %al,(%rbx)
 986:	8a 03                	mov    (%rbx),%al
 988:	00 00                	add    %al,(%rax)
 98a:	03 18                	add    (%rax),%ebx
 98c:	13 50 00             	adc    0x0(%rax),%edx
 98f:	00 00                	add    %al,(%rax)
 991:	08 9d 00 00 00 03    	or     %bl,0x3000000(%rbp)
 997:	1c 00                	sbb    $0x0,%al
 999:	00 00                	add    %al,(%rax)
 99b:	04 d1                	add    $0xd1,%al
 99d:	17                   	(bad)  
 99e:	42 00 00             	rex.X add %al,(%rax)
 9a1:	00 09                	add    %cl,(%rcx)
 9a3:	a1 02 00 00 d8 05 31 	movabs 0x41083105d8000002,%eax
 9aa:	08 41 
 9ac:	02 00                	add    (%rax),%al
 9ae:	00 0a                	add    %cl,(%rdx)
 9b0:	96                   	xchg   %eax,%esi
 9b1:	00 00                	add    %al,(%rax)
 9b3:	00 05 33 07 63 00    	add    %al,0x630733(%rip)        # 6310ec <_end+0x62be94>
 9b9:	00 00                	add    %al,(%rax)
 9bb:	00 0a                	add    %cl,(%rdx)
 9bd:	08 00                	or     %al,(%rax)
 9bf:	00 00                	add    %al,(%rax)
 9c1:	05 36 09 8b 00       	add    $0x8b0936,%eax
 9c6:	00 00                	add    %al,(%rax)
 9c8:	08 0a                	or     %cl,(%rdx)
 9ca:	89 00                	mov    %eax,(%rax)
 9cc:	00 00                	add    %al,(%rax)
 9ce:	05 37 09 8b 00       	add    $0x8b0937,%eax
 9d3:	00 00                	add    %al,(%rax)
 9d5:	10 0a                	adc    %cl,(%rdx)
 9d7:	07                   	(bad)  
 9d8:	03 00                	add    (%rax),%eax
 9da:	00 05 38 09 8b 00    	add    %al,0x8b0938(%rip)        # 8b1318 <_end+0x8ac0c0>
 9e0:	00 00                	add    %al,(%rax)
 9e2:	18 0a                	sbb    %cl,(%rdx)
 9e4:	63 03                	movsxd (%rbx),%eax
 9e6:	00 00                	add    %al,(%rax)
 9e8:	05 39 09 8b 00       	add    $0x8b0939,%eax
 9ed:	00 00                	add    %al,(%rax)
 9ef:	20 0a                	and    %cl,(%rdx)
 9f1:	fa                   	cli    
 9f2:	00 00                	add    %al,(%rax)
 9f4:	00 05 3a 09 8b 00    	add    %al,0x8b093a(%rip)        # 8b1334 <_end+0x8ac0dc>
 9fa:	00 00                	add    %al,(%rax)
 9fc:	28 0a                	sub    %cl,(%rdx)
 9fe:	00 02                	add    %al,(%rdx)
 a00:	00 00                	add    %al,(%rax)
 a02:	05 3b 09 8b 00       	add    $0x8b093b,%eax
 a07:	00 00                	add    %al,(%rax)
 a09:	30 0a                	xor    %cl,(%rdx)
 a0b:	38 00                	cmp    %al,(%rax)
 a0d:	00 00                	add    %al,(%rax)
 a0f:	05 3c 09 8b 00       	add    $0x8b093c,%eax
 a14:	00 00                	add    %al,(%rax)
 a16:	38 0a                	cmp    %cl,(%rdx)
 a18:	9d                   	popf   
 a19:	00 00                	add    %al,(%rax)
 a1b:	00 05 3d 09 8b 00    	add    %al,0x8b093d(%rip)        # 8b135e <_end+0x8ac106>
 a21:	00 00                	add    %al,(%rax)
 a23:	40 0a 24 01          	or     (%rcx,%rax,1),%spl
 a27:	00 00                	add    %al,(%rax)
 a29:	05 40 09 8b 00       	add    $0x8b0940,%eax
 a2e:	00 00                	add    %al,(%rax)
 a30:	48 0a 40 03          	rex.W or 0x3(%rax),%al
 a34:	00 00                	add    %al,(%rax)
 a36:	05 41 09 8b 00       	add    $0x8b0941,%eax
 a3b:	00 00                	add    %al,(%rax)
 a3d:	50                   	push   %rax
 a3e:	0a 15 03 00 00 05    	or     0x5000003(%rip),%dl        # 5000a47 <_end+0x4ffb7ef>
 a44:	42 09 8b 00 00 00 58 	rex.X or %ecx,0x58000000(%rbx)
 a4b:	0a bf 02 00 00 05    	or     0x5000002(%rdi),%bh
 a51:	44 16                	rex.R (bad) 
 a53:	5a                   	pop    %rdx
 a54:	02 00                	add    (%rax),%al
 a56:	00 60 0a             	add    %ah,0xa(%rax)
 a59:	15 00 00 00 05       	adc    $0x5000000,%eax
 a5e:	46 14 60             	rex.RX adc $0x60,%al
 a61:	02 00                	add    (%rax),%al
 a63:	00 68 0a             	add    %ch,0xa(%rax)
 a66:	81 00 00 00 05 48    	addl   $0x48050000,(%rax)
 a6c:	07                   	(bad)  
 a6d:	63 00                	movsxd (%rax),%eax
 a6f:	00 00                	add    %al,(%rax)
 a71:	70 0a                	jo     a7d <_init-0x583>
 a73:	50                   	push   %rax
 a74:	01 00                	add    %eax,(%rax)
 a76:	00 05 49 07 63 00    	add    %al,0x630749(%rip)        # 6311c5 <_end+0x62bf6d>
 a7c:	00 00                	add    %al,(%rax)
 a7e:	74 0a                	je     a8a <_init-0x576>
 a80:	d0 00                	rolb   (%rax)
 a82:	00 00                	add    %al,(%rax)
 a84:	05 4a 0b 71 00       	add    $0x710b4a,%eax
 a89:	00 00                	add    %al,(%rax)
 a8b:	78 0a                	js     a97 <_init-0x569>
 a8d:	a9 00 00 00 05       	test   $0x5000000,%eax
 a92:	4d 12 34 00          	rex.WRB adc (%r8,%rax,1),%r14b
 a96:	00 00                	add    %al,(%rax)
 a98:	80 0a ee             	orb    $0xee,(%rdx)
 a9b:	02 00                	add    (%rax),%al
 a9d:	00 05 4e 0f 49 00    	add    %al,0x490f4e(%rip)        # 4919f1 <_end+0x48c799>
 aa3:	00 00                	add    %al,(%rax)
 aa5:	82                   	(bad)  
 aa6:	0a 23                	or     (%rbx),%ah
 aa8:	00 00                	add    %al,(%rax)
 aaa:	00 05 4f 08 66 02    	add    %al,0x266084f(%rip)        # 26612ff <_end+0x265c0a7>
 ab0:	00 00                	add    %al,(%rax)
 ab2:	83 0a 40             	orl    $0x40,(%rdx)
 ab5:	01 00                	add    %eax,(%rax)
 ab7:	00 05 51 0f 76 02    	add    %al,0x2760f51(%rip)        # 2761a0e <_end+0x275c7b6>
 abd:	00 00                	add    %al,(%rax)
 abf:	88 0a                	mov    %cl,(%rdx)
 ac1:	d4                   	(bad)  
 ac2:	00 00                	add    %al,(%rax)
 ac4:	00 05 59 0d 7d 00    	add    %al,0x7d0d59(%rip)        # 7d1823 <_end+0x7cc5cb>
 aca:	00 00                	add    %al,(%rax)
 acc:	90                   	nop
 acd:	0a b8 00 00 00 05    	or     0x5000000(%rax),%bh
 ad3:	5b                   	pop    %rbx
 ad4:	17                   	(bad)  
 ad5:	81 02 00 00 98 0a    	addl   $0xa980000,(%rdx)
 adb:	e3 02                	jrcxz  adf <_init-0x521>
 add:	00 00                	add    %al,(%rax)
 adf:	05 5c 19 8c 02       	add    $0x28c195c,%eax
 ae4:	00 00                	add    %al,(%rax)
 ae6:	a0 0a 50 03 00 00 05 	movabs 0x145d05000003500a,%al
 aed:	5d 14 
 aef:	60                   	(bad)  
 af0:	02 00                	add    (%rax),%al
 af2:	00 a8 0a ed 00 00    	add    %ch,0xed0a(%rax)
 af8:	00 05 5e 09 89 00    	add    %al,0x89095e(%rip)        # 89145c <_end+0x88c204>
 afe:	00 00                	add    %al,(%rax)
 b00:	b0 0a                	mov    $0xa,%al
 b02:	29 03                	sub    %eax,(%rbx)
 b04:	00 00                	add    %al,(%rax)
 b06:	05 5f 0a ae 00       	add    $0xae0a5f,%eax
 b0b:	00 00                	add    %al,(%rax)
 b0d:	b8 0a 58 01 00       	mov    $0x1580a,%eax
 b12:	00 05 60 07 63 00    	add    %al,0x630760(%rip)        # 631278 <_end+0x62c020>
 b18:	00 00                	add    %al,(%rax)
 b1a:	c0 0a 30             	rorb   $0x30,(%rdx)
 b1d:	03 00                	add    (%rax),%eax
 b1f:	00 05 62 08 92 02    	add    %al,0x2920862(%rip)        # 2921387 <_end+0x291c12f>
 b25:	00 00                	add    %al,(%rax)
 b27:	c4                   	(bad)  
 b28:	00 03                	add    %al,(%rbx)
 b2a:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 b2b:	02 00                	add    (%rax),%al
 b2d:	00 06                	add    %al,(%rsi)
 b2f:	07                   	(bad)  
 b30:	19 ba 00 00 00 0b    	sbb    %edi,0xb000000(%rdx)
 b36:	96                   	xchg   %eax,%esi
 b37:	02 00                	add    (%rax),%al
 b39:	00 05 2b 0e 0c dc    	add    %al,-0x23f3f1d5(%rip)        # ffffffffdc0c196a <_end+0xffffffffdc0bc712>
 b3f:	00 00                	add    %al,(%rax)
 b41:	00 06                	add    %al,(%rsi)
 b43:	08 55 02             	or     %dl,0x2(%rbp)
 b46:	00 00                	add    %al,(%rax)
 b48:	06                   	(bad)  
 b49:	08 ba 00 00 00 0d    	or     %bh,0xd000000(%rdx)
 b4f:	91                   	xchg   %eax,%ecx
 b50:	00 00                	add    %al,(%rax)
 b52:	00 76 02             	add    %dh,0x2(%rsi)
 b55:	00 00                	add    %al,(%rax)
 b57:	0e                   	(bad)  
 b58:	42 00 00             	rex.X add %al,(%rax)
 b5b:	00 00                	add    %al,(%rax)
 b5d:	00 06                	add    %al,(%rsi)
 b5f:	08 4d 02             	or     %cl,0x2(%rbp)
 b62:	00 00                	add    %al,(%rax)
 b64:	0c b5                	or     $0xb5,%al
 b66:	00 00                	add    %al,(%rax)
 b68:	00 06                	add    %al,(%rsi)
 b6a:	08 7c 02 00          	or     %bh,0x0(%rdx,%rax,1)
 b6e:	00 0c e0             	add    %cl,(%rax,%riz,8)
 b71:	02 00                	add    (%rax),%al
 b73:	00 06                	add    %al,(%rsi)
 b75:	08 87 02 00 00 0d    	or     %al,0xd000002(%rdi)
 b7b:	91                   	xchg   %eax,%ecx
 b7c:	00 00                	add    %al,(%rax)
 b7e:	00 a2 02 00 00 0e    	add    %ah,0xe000002(%rdx)
 b84:	42 00 00             	rex.X add %al,(%rax)
 b87:	00 13                	add    %dl,(%rbx)
 b89:	00 0f                	add    %cl,(%rdi)
 b8b:	e7 00                	out    %eax,$0x0
 b8d:	00 00                	add    %al,(%rax)
 b8f:	07                   	(bad)  
 b90:	89 0e                	mov    %ecx,(%rsi)
 b92:	ae                   	scas   %es:(%rdi),%al
 b93:	02 00                	add    (%rax),%al
 b95:	00 06                	add    %al,(%rsi)
 b97:	08 41 02             	or     %al,0x2(%rcx)
 b9a:	00 00                	add    %al,(%rax)
 b9c:	0f 5e 01             	divps  (%rcx),%xmm0
 b9f:	00 00                	add    %al,(%rax)
 ba1:	07                   	(bad)  
 ba2:	8a 0e                	mov    (%rsi),%cl
 ba4:	ae                   	scas   %es:(%rdi),%al
 ba5:	02 00                	add    (%rax),%al
 ba7:	00 0f                	add    %cl,(%rdi)
 ba9:	39 03                	cmp    %eax,(%rbx)
 bab:	00 00                	add    %al,(%rax)
 bad:	07                   	(bad)  
 bae:	8b 0e                	mov    (%rsi),%ecx
 bb0:	ae                   	scas   %es:(%rdi),%al
 bb1:	02 00                	add    (%rax),%al
 bb3:	00 0f                	add    %cl,(%rdi)
 bb5:	08 01                	or     %al,(%rcx)
 bb7:	00 00                	add    %al,(%rax)
 bb9:	08 1a                	or     %bl,(%rdx)
 bbb:	0c 63                	or     $0x63,%al
 bbd:	00 00                	add    %al,(%rax)
 bbf:	00 0d ee 02 00 00    	add    %cl,0x2ee(%rip)        # eb3 <_init-0x14d>
 bc5:	e3 02                	jrcxz  bc9 <_init-0x437>
 bc7:	00 00                	add    %al,(%rax)
 bc9:	10 00                	adc    %al,(%rax)
 bcb:	07                   	(bad)  
 bcc:	d8 02                	fadds  (%rdx)
 bce:	00 00                	add    %al,(%rax)
 bd0:	06                   	(bad)  
 bd1:	08 98 00 00 00 07    	or     %bl,0x7000000(%rax)
 bd7:	e8 02 00 00 0f       	call   f000bde <_end+0xeffb986>
 bdc:	b3 02                	mov    $0x2,%bl
 bde:	00 00                	add    %al,(%rax)
 be0:	08 1b                	or     %bl,(%rbx)
 be2:	1a e3                	sbb    %bl,%ah
 be4:	02 00                	add    (%rax),%al
 be6:	00 02                	add    %al,(%rdx)
 be8:	08 05 5c 00 00 00    	or     %al,0x5c(%rip)        # c4a <_init-0x3b6>
 bee:	02 08                	add    (%rax),%cl
 bf0:	07                   	(bad)  
 bf1:	45 00 00             	add    %r8b,(%r8)
 bf4:	00 09                	add    %cl,(%rcx)
 bf6:	f2 01 00             	repnz add %eax,(%rax)
 bf9:	00 35 09 13 10 5c    	add    %dh,0x5c101309(%rip)        # 5c101f08 <_end+0x5c0fccb0>
 bff:	03 00                	add    (%rax),%eax
 c01:	00 0a                	add    %cl,(%rdx)
 c03:	58                   	pop    %rax
 c04:	04 00                	add    $0x0,%al
 c06:	00 09                	add    %cl,(%rcx)
 c08:	14 08                	adc    $0x8,%al
 c0a:	5c                   	pop    %rsp
 c0b:	03 00                	add    (%rax),%eax
 c0d:	00 00                	add    %al,(%rax)
 c0f:	0a 2d 00 00 00 09    	or     0x9000000(%rip),%ch        # 9000c15 <_end+0x8ffb9bd>
 c15:	15 08 6c 03 00       	adc    $0x36c08,%eax
 c1a:	00 03                	add    %al,(%rbx)
 c1c:	0a 6a 00             	or     0x0(%rdx),%ch
 c1f:	00 00                	add    %al,(%rax)
 c21:	09 16                	or     %edx,(%rsi)
 c23:	08 6c 03 00          	or     %ch,0x0(%rbx,%rax,1)
 c27:	00 12                	add    %dl,(%rdx)
 c29:	11 67 70             	adc    %esp,0x70(%rdi)
 c2c:	61                   	(bad)  
 c2d:	00 09                	add    %cl,(%rcx)
 c2f:	17                   	(bad)  
 c30:	08 7c 03 00          	or     %bh,0x0(%rbx,%rax,1)
 c34:	00 21                	add    %ah,(%rcx)
 c36:	0a 22                	or     (%rdx),%ah
 c38:	03 00                	add    (%rax),%eax
 c3a:	00 09                	add    %cl,(%rcx)
 c3c:	18 08                	sbb    %cl,(%rax)
 c3e:	8c 03                	mov    %es,(%rbx)
 c40:	00 00                	add    %al,(%rax)
 c42:	26 00 0d 91 00 00 00 	es add %cl,0x91(%rip)        # cda <_init-0x326>
 c49:	6c                   	insb   (%dx),%es:(%rdi)
 c4a:	03 00                	add    (%rax),%eax
 c4c:	00 0e                	add    %cl,(%rsi)
 c4e:	42 00 00             	rex.X add %al,(%rax)
 c51:	00 02                	add    %al,(%rdx)
 c53:	00 0d 91 00 00 00    	add    %cl,0x91(%rip)        # cea <_init-0x316>
 c59:	7c 03                	jl     c5e <_init-0x3a2>
 c5b:	00 00                	add    %al,(%rax)
 c5d:	0e                   	(bad)  
 c5e:	42 00 00             	rex.X add %al,(%rax)
 c61:	00 0e                	add    %cl,(%rsi)
 c63:	00 0d 91 00 00 00    	add    %cl,0x91(%rip)        # cfa <_init-0x306>
 c69:	8c 03                	mov    %es,(%rbx)
 c6b:	00 00                	add    %al,(%rax)
 c6d:	0e                   	(bad)  
 c6e:	42 00 00             	rex.X add %al,(%rax)
 c71:	00 04 00             	add    %al,(%rax,%rax,1)
 c74:	0d 91 00 00 00       	or     $0x91,%eax
 c79:	a2 03 00 00 0e 42 00 	movabs %al,0x420e000003
 c80:	00 00 
 c82:	04 0e                	add    $0xe,%al
 c84:	42 00 00             	rex.X add %al,(%rax)
 c87:	00 02                	add    %al,(%rdx)
 c89:	00 03                	add    %al,(%rbx)
 c8b:	c1 00 00             	roll   $0x0,(%rax)
 c8e:	00 09                	add    %cl,(%rcx)
 c90:	19 03                	sbb    %eax,(%rbx)
 c92:	0d 03 00 00 0d       	or     $0xd000003,%eax
 c97:	a2 03 00 00 be 03 00 	movabs %al,0xe000003be000003
 c9e:	00 0e 
 ca0:	42 00 00             	rex.X add %al,(%rax)
 ca3:	00 09                	add    %cl,(%rcx)
 ca5:	00 0f                	add    %cl,(%rdi)
 ca7:	aa                   	stos   %al,%es:(%rdi)
 ca8:	02 00                	add    (%rax),%al
 caa:	00 09                	add    %cl,(%rcx)
 cac:	1c 17                	sbb    $0x17,%al
 cae:	ae                   	scas   %es:(%rdi),%al
 caf:	03 00                	add    (%rax),%eax
 cb1:	00 12                	add    %dl,(%rdx)
 cb3:	ca 03 00             	lret   $0x3
 cb6:	00 01                	add    %al,(%rcx)
 cb8:	9a                   	(bad)  
 cb9:	06                   	(bad)  
 cba:	b3 20                	mov    $0x20,%bl
 cbc:	00 00                	add    %al,(%rax)
 cbe:	00 00                	add    %al,(%rax)
 cc0:	00 00                	add    %al,(%rax)
 cc2:	23 00                	and    (%rax),%eax
 cc4:	00 00                	add    %al,(%rax)
 cc6:	00 00                	add    %al,(%rax)
 cc8:	00 00                	add    %al,(%rax)
 cca:	01 9c 13 d3 03 00 00 	add    %ebx,0x3d3(%rbx,%rdx,1)
 cd1:	01 8a 06 ae 1e 00    	add    %ecx,0x1eae06(%rdx)
 cd7:	00 00                	add    %al,(%rax)
 cd9:	00 00                	add    %al,(%rax)
 cdb:	00 05 02 00 00 00    	add    %al,0x2(%rip)        # ce3 <_init-0x31d>
 ce1:	00 00                	add    %al,(%rax)
 ce3:	00 01                	add    %al,(%rcx)
 ce5:	9c                   	pushf  
 ce6:	12 04 00             	adc    (%rax,%rax,1),%al
 ce9:	00 14 34             	add    %dl,(%rsp,%rsi,1)
 cec:	04 00                	add    $0x0,%al
 cee:	00 01                	add    %al,(%rcx)
 cf0:	8c 0b                	mov    %cs,(%rbx)
 cf2:	9d                   	popf   
 cf3:	00 00                	add    %al,(%rax)
 cf5:	00 02                	add    %al,(%rdx)
 cf7:	91                   	xchg   %eax,%ecx
 cf8:	6f                   	outsl  %ds:(%rsi),(%dx)
 cf9:	00 15 25 04 00 00    	add    %dl,0x425(%rip)        # 1124 <strncpy@plt+0x4>
 cff:	01 81 06 a3 1e 00    	add    %eax,0x1ea306(%rcx)
 d05:	00 00                	add    %al,(%rax)
 d07:	00 00                	add    %al,(%rax)
 d09:	00 0b                	add    %cl,(%rbx)
 d0b:	00 00                	add    %al,(%rax)
 d0d:	00 00                	add    %al,(%rax)
 d0f:	00 00                	add    %al,(%rax)
 d11:	00 01                	add    %al,(%rcx)
 d13:	9c                   	pushf  
 d14:	15 6d 04 00 00       	adc    $0x46d,%eax
 d19:	01 7c 06 98          	add    %edi,-0x68(%rsi,%rax,1)
 d1d:	1e                   	(bad)  
 d1e:	00 00                	add    %al,(%rax)
 d20:	00 00                	add    %al,(%rax)
 d22:	00 00                	add    %al,(%rax)
 d24:	0b 00                	or     (%rax),%eax
 d26:	00 00                	add    %al,(%rax)
 d28:	00 00                	add    %al,(%rax)
 d2a:	00 00                	add    %al,(%rax)
 d2c:	01 9c 13 0a 04 00 00 	add    %ebx,0x40a(%rbx,%rdx,1)
 d33:	01 71 06             	add    %esi,0x6(%rcx)
 d36:	28 1e                	sub    %bl,(%rsi)
 d38:	00 00                	add    %al,(%rax)
 d3a:	00 00                	add    %al,(%rax)
 d3c:	00 00                	add    %al,(%rax)
 d3e:	70 00                	jo     d40 <_init-0x2c0>
 d40:	00 00                	add    %al,(%rax)
 d42:	00 00                	add    %al,(%rax)
 d44:	00 00                	add    %al,(%rax)
 d46:	01 9c 74 04 00 00 14 	add    %ebx,0x14000004(%rsp,%rsi,2)
 d4d:	34 04                	xor    $0x4,%al
 d4f:	00 00                	add    %al,(%rax)
 d51:	01 72 14             	add    %esi,0x14(%rdx)
 d54:	a9 00 00 00 02       	test   $0x2000000,%eax
 d59:	91                   	xchg   %eax,%ecx
 d5a:	6f                   	outsl  %ds:(%rsi),(%dx)
 d5b:	00 15 60 04 00 00    	add    %dl,0x460(%rip)        # 11c1 <fopen@plt+0x1>
 d61:	01 6c 06 1d          	add    %ebp,0x1d(%rsi,%rax,1)
 d65:	1e                   	(bad)  
 d66:	00 00                	add    %al,(%rax)
 d68:	00 00                	add    %al,(%rax)
 d6a:	00 00                	add    %al,(%rax)
 d6c:	0b 00                	or     (%rax),%eax
 d6e:	00 00                	add    %al,(%rax)
 d70:	00 00                	add    %al,(%rax)
 d72:	00 00                	add    %al,(%rax)
 d74:	01 9c 15 87 04 00 00 	add    %ebx,0x487(%rbp,%rdx,1)
 d7b:	01 67 06             	add    %esp,0x6(%rdi)
 d7e:	12 1e                	adc    (%rsi),%bl
 d80:	00 00                	add    %al,(%rax)
 d82:	00 00                	add    %al,(%rax)
 d84:	00 00                	add    %al,(%rax)
 d86:	0b 00                	or     (%rax),%eax
 d88:	00 00                	add    %al,(%rax)
 d8a:	00 00                	add    %al,(%rax)
 d8c:	00 00                	add    %al,(%rax)
 d8e:	01 9c 15 53 04 00 00 	add    %ebx,0x453(%rbp,%rdx,1)
 d95:	01 62 06             	add    %esp,0x6(%rdx)
 d98:	07                   	(bad)  
 d99:	1e                   	(bad)  
 d9a:	00 00                	add    %al,(%rax)
 d9c:	00 00                	add    %al,(%rax)
 d9e:	00 00                	add    %al,(%rax)
 da0:	0b 00                	or     (%rax),%eax
 da2:	00 00                	add    %al,(%rax)
 da4:	00 00                	add    %al,(%rax)
 da6:	00 00                	add    %al,(%rax)
 da8:	01 9c 13 47 04 00 00 	add    %ebx,0x447(%rbx,%rdx,1)
 daf:	01 3a                	add    %edi,(%rdx)
 db1:	06                   	(bad)  
 db2:	ad                   	lods   %ds:(%rsi),%eax
 db3:	1a 00                	sbb    (%rax),%al
 db5:	00 00                	add    %al,(%rax)
 db7:	00 00                	add    %al,(%rax)
 db9:	00 5a 03             	add    %bl,0x3(%rdx)
 dbc:	00 00                	add    %al,(%rax)
 dbe:	00 00                	add    %al,(%rax)
 dc0:	00 00                	add    %al,(%rax)
 dc2:	01 9c 69 05 00 00 14 	add    %ebx,0x14000005(%rcx,%rbp,2)
 dc9:	05 04 00 00 01       	add    $0x1000004,%eax
 dce:	3b 12                	cmp    (%rdx),%edx
 dd0:	69 05 00 00 03 91 e0 	imul   $0xff147de0,-0x6efd0000(%rip),%eax        # ffffffff91030dda <_end+0xffffffff9102bb82>
 dd7:	7d 14 ff 
 dda:	03 00                	add    (%rax),%eax
 ddc:	00 01                	add    %al,(%rcx)
 dde:	3c 12                	cmp    $0x12,%al
 de0:	9d                   	popf   
 de1:	00 00                	add    %al,(%rax)
 de3:	00 03                	add    %al,(%rbx)
 de5:	91                   	xchg   %eax,%ecx
 de6:	bc 7d 14 dc 03       	mov    $0x3dc147d,%esp
 deb:	00 00                	add    %al,(%rax)
 ded:	01 3d 12 9d 00 00    	add    %edi,0x9d12(%rip)        # ab05 <_end+0x58ad>
 df3:	00 09                	add    %cl,(%rcx)
 df5:	03 29                	add    (%rcx),%ebp
 df7:	50                   	push   %rax
 df8:	00 00                	add    %al,(%rax)
 dfa:	00 00                	add    %al,(%rax)
 dfc:	00 00                	add    %al,(%rax)
 dfe:	14 42                	adc    $0x42,%al
 e00:	04 00                	add    $0x0,%al
 e02:	00 01                	add    %al,(%rcx)
 e04:	3e 12 92 02 00 00 03 	ds adc 0x3000002(%rdx),%dl
 e0b:	91                   	xchg   %eax,%ecx
 e0c:	c0 7d 14 3c          	sarb   $0x3c,0x14(%rbp)
 e10:	04 00                	add    $0x0,%al
 e12:	00 01                	add    %al,(%rcx)
 e14:	3f                   	(bad)  
 e15:	12 9d 00 00 00 03    	adc    0x3000000(%rbp),%bl
 e1b:	91                   	xchg   %eax,%ecx
 e1c:	bd 7d 14 7c 04       	mov    $0x47c147d,%ebp
 e21:	00 00                	add    %al,(%rax)
 e23:	01 40 12             	add    %eax,0x12(%rax)
 e26:	9d                   	popf   
 e27:	00 00                	add    %al,(%rax)
 e29:	00 03                	add    %al,(%rbx)
 e2b:	91                   	xchg   %eax,%ecx
 e2c:	be 7d 16 02 1d       	mov    $0x1d02167d,%esi
 e31:	00 00                	add    %al,(%rax)
 e33:	00 00                	add    %al,(%rax)
 e35:	00 00                	add    %al,(%rax)
 e37:	aa                   	stos   %al,%es:(%rdi)
 e38:	00 00                	add    %al,(%rax)
 e3a:	00 00                	add    %al,(%rax)
 e3c:	00 00                	add    %al,(%rax)
 e3e:	00 14 e7             	add    %dl,(%rdi,%riz,8)
 e41:	03 00                	add    (%rax),%eax
 e43:	00 01                	add    %al,(%rcx)
 e45:	4f 0f 9d 00          	rex.WRXB setge (%r8)
 e49:	00 00                	add    %al,(%rax)
 e4b:	03 91 bf 7d 00 00    	add    0x7dbf(%rcx),%edx
 e51:	0d 91 00 00 00       	or     $0x91,%eax
 e56:	79 05                	jns    e5d <_init-0x1a3>
 e58:	00 00                	add    %al,(%rax)
 e5a:	0e                   	(bad)  
 e5b:	42 00 00             	rex.X add %al,(%rax)
 e5e:	00 ff                	add    %bh,%bh
 e60:	00 17                	add    %dl,(%rdi)
 e62:	1b 04 00             	sbb    (%rax,%rax,1),%eax
 e65:	00 01                	add    %al,(%rcx)
 e67:	0e                   	(bad)  
 e68:	06                   	(bad)  
 e69:	1a 17                	sbb    (%rdi),%dl
 e6b:	00 00                	add    %al,(%rax)
 e6d:	00 00                	add    %al,(%rax)
 e6f:	00 00                	add    %al,(%rax)
 e71:	93                   	xchg   %eax,%ebx
 e72:	03 00                	add    (%rax),%eax
 e74:	00 00                	add    %al,(%rax)
 e76:	00 00                	add    %al,(%rax)
 e78:	00 01                	add    %al,(%rcx)
 e7a:	9c                   	pushf  
 e7b:	14 05                	adc    $0x5,%al
 e7d:	04 00                	add    $0x0,%al
 e7f:	00 01                	add    %al,(%rcx)
 e81:	0f 10 69 05          	movups 0x5(%rcx),%xmm5
 e85:	00 00                	add    %al,(%rax)
 e87:	03 91 e0 7d 14 ff    	add    -0xeb8220(%rcx),%edx
 e8d:	03 00                	add    (%rax),%eax
 e8f:	00 01                	add    %al,(%rcx)
 e91:	10 10                	adc    %dl,(%rax)
 e93:	9d                   	popf   
 e94:	00 00                	add    %al,(%rax)
 e96:	00 03                	add    %al,(%rbx)
 e98:	91                   	xchg   %eax,%ecx
 e99:	b3 7d                	mov    $0x7d,%bl
 e9b:	14 dc                	adc    $0xdc,%al
 e9d:	03 00                	add    (%rax),%eax
 e9f:	00 01                	add    %al,(%rcx)
 ea1:	11 10                	adc    %edx,(%rax)
 ea3:	9d                   	popf   
 ea4:	00 00                	add    %al,(%rax)
 ea6:	00 03                	add    %al,(%rbx)
 ea8:	91                   	xchg   %eax,%ecx
 ea9:	b4 7d                	mov    $0x7d,%ah
 eab:	14 42                	adc    $0x42,%al
 ead:	04 00                	add    $0x0,%al
 eaf:	00 01                	add    %al,(%rcx)
 eb1:	12 10                	adc    (%rax),%dl
 eb3:	92                   	xchg   %eax,%edx
 eb4:	02 00                	add    (%rax),%al
 eb6:	00 03                	add    %al,(%rbx)
 eb8:	91                   	xchg   %eax,%ecx
 eb9:	c0 7d 14 3c          	sarb   $0x3c,0x14(%rbp)
 ebd:	04 00                	add    $0x0,%al
 ebf:	00 01                	add    %al,(%rcx)
 ec1:	13 10                	adc    (%rax),%edx
 ec3:	9d                   	popf   
 ec4:	00 00                	add    %al,(%rax)
 ec6:	00 03                	add    %al,(%rbx)
 ec8:	91                   	xchg   %eax,%ecx
 ec9:	b5 7d                	mov    $0x7d,%ch
 ecb:	14 7c                	adc    $0x7c,%al
 ecd:	04 00                	add    $0x0,%al
 ecf:	00 01                	add    %al,(%rcx)
 ed1:	14 10                	adc    $0x10,%al
 ed3:	9d                   	popf   
 ed4:	00 00                	add    %al,(%rax)
 ed6:	00 03                	add    %al,(%rbx)
 ed8:	91                   	xchg   %eax,%ecx
 ed9:	b6 7d                	mov    $0x7d,%dh
 edb:	14 20                	adc    $0x20,%al
 edd:	04 00                	add    $0x0,%al
 edf:	00 01                	add    %al,(%rcx)
 ee1:	17                   	(bad)  
 ee2:	09 ae 02 00 00 03    	or     %ebp,0x3000002(%rsi)
 ee8:	91                   	xchg   %eax,%ecx
 ee9:	b8 7d 16 6e 19       	mov    $0x196e167d,%eax
 eee:	00 00                	add    %al,(%rax)
 ef0:	00 00                	add    %al,(%rax)
 ef2:	00 00                	add    %al,(%rax)
 ef4:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 ef5:	00 00                	add    %al,(%rax)
 ef7:	00 00                	add    %al,(%rax)
 ef9:	00 00                	add    %al,(%rax)
 efb:	00 14 e7             	add    %dl,(%rdi,%riz,8)
 efe:	03 00                	add    (%rax),%eax
 f00:	00 01                	add    %al,(%rcx)
 f02:	26 11 9d 00 00 00 03 	es adc %ebx,0x3000000(%rbp)
 f09:	91                   	xchg   %eax,%ecx
 f0a:	b7 7d                	mov    $0x7d,%bh
 f0c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x30ac0be>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 07                	adc    (%rdi),%al
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 24 00             	add    (%rax,%rax,1),%ah
  16:	0b 0b                	or     (%rbx),%ecx
  18:	3e 0b 03             	ds or  (%rbx),%eax
  1b:	0e                   	(bad)  
  1c:	00 00                	add    %al,(%rax)
  1e:	03 24 00             	add    (%rax,%rax,1),%esp
  21:	0b 0b                	or     (%rbx),%ecx
  23:	3e 0b 03             	ds or  (%rbx),%eax
  26:	08 00                	or     %al,(%rax)
  28:	00 04 16             	add    %al,(%rsi,%rdx,1)
  2b:	00 03                	add    %al,(%rbx)
  2d:	0e                   	(bad)  
  2e:	3a 0b                	cmp    (%rbx),%cl
  30:	3b 0b                	cmp    (%rbx),%ecx
  32:	39 0b                	cmp    %ecx,(%rbx)
  34:	49 13 00             	adc    (%r8),%rax
  37:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004c <_end+0xb0aadf4>
  3d:	00 00                	add    %al,(%rax)
  3f:	06                   	(bad)  
  40:	0f 00 0b             	str    (%rbx)
  43:	0b 49 13             	or     0x13(%rcx),%ecx
  46:	00 00                	add    %al,(%rax)
  48:	07                   	(bad)  
  49:	26 00 49 13          	es add %cl,0x13(%rcx)
  4d:	00 00                	add    %al,(%rax)
  4f:	08 13                	or     %dl,(%rbx)
  51:	01 03                	add    %eax,(%rbx)
  53:	0e                   	(bad)  
  54:	0b 0b                	or     (%rbx),%ecx
  56:	3a 0b                	cmp    (%rbx),%cl
  58:	3b 0b                	cmp    (%rbx),%ecx
  5a:	39 0b                	cmp    %ecx,(%rbx)
  5c:	01 13                	add    %edx,(%rbx)
  5e:	00 00                	add    %al,(%rax)
  60:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0366 <_end+0x3a0db10e>
  66:	0b 3b                	or     (%rbx),%edi
  68:	0b 39                	or     (%rcx),%edi
  6a:	0b 49 13             	or     0x13(%rcx),%ecx
  6d:	38 0b                	cmp    %cl,(%rbx)
  6f:	00 00                	add    %al,(%rax)
  71:	0a 16                	or     (%rsi),%dl
  73:	00 03                	add    %al,(%rbx)
  75:	0e                   	(bad)  
  76:	3a 0b                	cmp    (%rbx),%cl
  78:	3b 0b                	cmp    (%rbx),%ecx
  7a:	39 0b                	cmp    %ecx,(%rbx)
  7c:	00 00                	add    %al,(%rax)
  7e:	0b 13                	or     (%rbx),%edx
  80:	00 03                	add    %al,(%rbx)
  82:	0e                   	(bad)  
  83:	3c 19                	cmp    $0x19,%al
  85:	00 00                	add    %al,(%rax)
  87:	0c 01                	or     $0x1,%al
  89:	01 49 13             	add    %ecx,0x13(%rcx)
  8c:	01 13                	add    %edx,(%rbx)
  8e:	00 00                	add    %al,(%rax)
  90:	0d 21 00 49 13       	or     $0x13490021,%eax
  95:	2f                   	(bad)  
  96:	0b 00                	or     (%rax),%eax
  98:	00 0e                	add    %cl,(%rsi)
  9a:	34 00                	xor    $0x0,%al
  9c:	03 0e                	add    (%rsi),%ecx
  9e:	3a 0b                	cmp    (%rbx),%cl
  a0:	3b 0b                	cmp    (%rbx),%ecx
  a2:	39 0b                	cmp    %ecx,(%rbx)
  a4:	49 13 3f             	adc    (%r15),%rdi
  a7:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
  aa:	00 00                	add    %al,(%rax)
  ac:	0f 21 00             	mov    %db0,%rax
  af:	00 00                	add    %al,(%rax)
  b1:	10 0d 00 03 08 3a    	adc    %cl,0x3a080300(%rip)        # 3a0803b7 <_end+0x3a07b15f>
  b7:	0b 3b                	or     (%rbx),%edi
  b9:	0b 39                	or     (%rcx),%edi
  bb:	0b 49 13             	or     0x13(%rcx),%ecx
  be:	38 0b                	cmp    %cl,(%rbx)
  c0:	00 00                	add    %al,(%rax)
  c2:	11 34 00             	adc    %esi,(%rax,%rax,1)
  c5:	47 13 3a             	rex.RXB adc (%r10),%r15d
  c8:	0b 3b                	or     (%rbx),%edi
  ca:	0b 39                	or     (%rcx),%edi
  cc:	0b 02                	or     (%rdx),%eax
  ce:	18 00                	sbb    %al,(%rax)
  d0:	00 12                	add    %dl,(%rdx)
  d2:	15 00 27 19 00       	adc    $0x192700,%eax
  d7:	00 13                	add    %dl,(%rbx)
  d9:	34 00                	xor    $0x0,%al
  db:	03 0e                	add    (%rsi),%ecx
  dd:	3a 0b                	cmp    (%rbx),%cl
  df:	3b 0b                	cmp    (%rbx),%ecx
  e1:	39 0b                	cmp    %ecx,(%rbx)
  e3:	49 13 3f             	adc    (%r15),%rdi
  e6:	19 02                	sbb    %eax,(%rdx)
  e8:	18 00                	sbb    %al,(%rax)
  ea:	00 14 2e             	add    %dl,(%rsi,%rbp,1)
  ed:	01 3f                	add    %edi,(%rdi)
  ef:	19 03                	sbb    %eax,(%rbx)
  f1:	0e                   	(bad)  
  f2:	3a 0b                	cmp    (%rbx),%cl
  f4:	3b 0b                	cmp    (%rbx),%ecx
  f6:	39 0b                	cmp    %ecx,(%rbx)
  f8:	49 13 11             	adc    (%r9),%rdx
  fb:	01 12                	add    %edx,(%rdx)
  fd:	07                   	(bad)  
  fe:	40 18 96 42 19 01 13 	rex sbb %dl,0x13011942(%rsi)
 105:	00 00                	add    %al,(%rax)
 107:	15 34 00 03 0e       	adc    $0xe030034,%eax
 10c:	3a 0b                	cmp    (%rbx),%cl
 10e:	3b 0b                	cmp    (%rbx),%ecx
 110:	39 0b                	cmp    %ecx,(%rbx)
 112:	49 13 02             	adc    (%r10),%rax
 115:	18 00                	sbb    %al,(%rax)
 117:	00 16                	add    %dl,(%rsi)
 119:	2e 00 3f             	cs add %bh,(%rdi)
 11c:	19 03                	sbb    %eax,(%rbx)
 11e:	0e                   	(bad)  
 11f:	3a 0b                	cmp    (%rbx),%cl
 121:	3b 0b                	cmp    (%rbx),%ecx
 123:	39 0b                	cmp    %ecx,(%rbx)
 125:	27                   	(bad)  
 126:	19 11                	sbb    %edx,(%rcx)
 128:	01 12                	add    %edx,(%rdx)
 12a:	07                   	(bad)  
 12b:	40 18 96 42 19 00 00 	rex sbb %dl,0x1942(%rsi)
 132:	00 01                	add    %al,(%rcx)
 134:	11 01                	adc    %eax,(%rcx)
 136:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 13b:	0e                   	(bad)  
 13c:	1b 0e                	sbb    (%rsi),%ecx
 13e:	11 01                	adc    %eax,(%rcx)
 140:	12 07                	adc    (%rdi),%al
 142:	10 17                	adc    %dl,(%rdi)
 144:	00 00                	add    %al,(%rax)
 146:	02 24 00             	add    (%rax,%rax,1),%ah
 149:	0b 0b                	or     (%rbx),%ecx
 14b:	3e 0b 03             	ds or  (%rbx),%eax
 14e:	0e                   	(bad)  
 14f:	00 00                	add    %al,(%rax)
 151:	03 16                	add    (%rsi),%edx
 153:	00 03                	add    %al,(%rbx)
 155:	0e                   	(bad)  
 156:	3a 0b                	cmp    (%rbx),%cl
 158:	3b 0b                	cmp    (%rbx),%ecx
 15a:	39 0b                	cmp    %ecx,(%rbx)
 15c:	49 13 00             	adc    (%r8),%rax
 15f:	00 04 24             	add    %al,(%rsp)
 162:	00 0b                	add    %cl,(%rbx)
 164:	0b 3e                	or     (%rsi),%edi
 166:	0b 03                	or     (%rbx),%eax
 168:	08 00                	or     %al,(%rax)
 16a:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b017f <_end+0xb0aaf27>
 170:	00 00                	add    %al,(%rax)
 172:	06                   	(bad)  
 173:	0f 00 0b             	str    (%rbx)
 176:	0b 49 13             	or     0x13(%rcx),%ecx
 179:	00 00                	add    %al,(%rax)
 17b:	07                   	(bad)  
 17c:	26 00 49 13          	es add %cl,0x13(%rcx)
 180:	00 00                	add    %al,(%rax)
 182:	08 13                	or     %dl,(%rbx)
 184:	01 03                	add    %eax,(%rbx)
 186:	0e                   	(bad)  
 187:	0b 0b                	or     (%rbx),%ecx
 189:	3a 0b                	cmp    (%rbx),%cl
 18b:	3b 0b                	cmp    (%rbx),%ecx
 18d:	39 0b                	cmp    %ecx,(%rbx)
 18f:	01 13                	add    %edx,(%rbx)
 191:	00 00                	add    %al,(%rax)
 193:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0499 <_end+0x3a0db241>
 199:	0b 3b                	or     (%rbx),%edi
 19b:	0b 39                	or     (%rcx),%edi
 19d:	0b 49 13             	or     0x13(%rcx),%ecx
 1a0:	38 0b                	cmp    %cl,(%rbx)
 1a2:	00 00                	add    %al,(%rax)
 1a4:	0a 16                	or     (%rsi),%dl
 1a6:	00 03                	add    %al,(%rbx)
 1a8:	0e                   	(bad)  
 1a9:	3a 0b                	cmp    (%rbx),%cl
 1ab:	3b 0b                	cmp    (%rbx),%ecx
 1ad:	39 0b                	cmp    %ecx,(%rbx)
 1af:	00 00                	add    %al,(%rax)
 1b1:	0b 13                	or     (%rbx),%edx
 1b3:	00 03                	add    %al,(%rbx)
 1b5:	0e                   	(bad)  
 1b6:	3c 19                	cmp    $0x19,%al
 1b8:	00 00                	add    %al,(%rax)
 1ba:	0c 01                	or     $0x1,%al
 1bc:	01 49 13             	add    %ecx,0x13(%rcx)
 1bf:	01 13                	add    %edx,(%rbx)
 1c1:	00 00                	add    %al,(%rax)
 1c3:	0d 21 00 49 13       	or     $0x13490021,%eax
 1c8:	2f                   	(bad)  
 1c9:	0b 00                	or     (%rax),%eax
 1cb:	00 0e                	add    %cl,(%rsi)
 1cd:	34 00                	xor    $0x0,%al
 1cf:	03 0e                	add    (%rsi),%ecx
 1d1:	3a 0b                	cmp    (%rbx),%cl
 1d3:	3b 0b                	cmp    (%rbx),%ecx
 1d5:	39 0b                	cmp    %ecx,(%rbx)
 1d7:	49 13 3f             	adc    (%r15),%rdi
 1da:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 1dd:	00 00                	add    %al,(%rax)
 1df:	0f 21 00             	mov    %db0,%rax
 1e2:	00 00                	add    %al,(%rax)
 1e4:	10 0d 00 03 08 3a    	adc    %cl,0x3a080300(%rip)        # 3a0804ea <_end+0x3a07b292>
 1ea:	0b 3b                	or     (%rbx),%edi
 1ec:	0b 39                	or     (%rcx),%edi
 1ee:	0b 49 13             	or     0x13(%rcx),%ecx
 1f1:	38 0b                	cmp    %cl,(%rbx)
 1f3:	00 00                	add    %al,(%rax)
 1f5:	11 2e                	adc    %ebp,(%rsi)
 1f7:	01 3f                	add    %edi,(%rdi)
 1f9:	19 03                	sbb    %eax,(%rbx)
 1fb:	0e                   	(bad)  
 1fc:	3a 0b                	cmp    (%rbx),%cl
 1fe:	3b 0b                	cmp    (%rbx),%ecx
 200:	39 0b                	cmp    %ecx,(%rbx)
 202:	27                   	(bad)  
 203:	19 49 13             	sbb    %ecx,0x13(%rcx)
 206:	11 01                	adc    %eax,(%rcx)
 208:	12 07                	adc    (%rdi),%al
 20a:	40 18 96 42 19 01 13 	rex sbb %dl,0x13011942(%rsi)
 211:	00 00                	add    %al,(%rax)
 213:	12 05 00 03 08 3a    	adc    0x3a080300(%rip),%al        # 3a080519 <_end+0x3a07b2c1>
 219:	0b 3b                	or     (%rbx),%edi
 21b:	0b 39                	or     (%rcx),%edi
 21d:	0b 49 13             	or     0x13(%rcx),%ecx
 220:	02 18                	add    (%rax),%bl
 222:	00 00                	add    %al,(%rax)
 224:	13 05 00 03 0e 3a    	adc    0x3a0e0300(%rip),%eax        # 3a0e052a <_end+0x3a0db2d2>
 22a:	0b 3b                	or     (%rbx),%edi
 22c:	0b 39                	or     (%rcx),%edi
 22e:	0b 49 13             	or     0x13(%rcx),%ecx
 231:	02 18                	add    (%rax),%bl
 233:	00 00                	add    %al,(%rax)
 235:	14 0b                	adc    $0xb,%al
 237:	01 11                	add    %edx,(%rcx)
 239:	01 12                	add    %edx,(%rdx)
 23b:	07                   	(bad)  
 23c:	00 00                	add    %al,(%rax)
 23e:	15 34 00 03 08       	adc    $0x8030034,%eax
 243:	3a 0b                	cmp    (%rbx),%cl
 245:	3b 0b                	cmp    (%rbx),%ecx
 247:	39 0b                	cmp    %ecx,(%rbx)
 249:	49 13 02             	adc    (%r10),%rax
 24c:	18 00                	sbb    %al,(%rax)
 24e:	00 16                	add    %dl,(%rsi)
 250:	2e 01 3f             	cs add %edi,(%rdi)
 253:	19 03                	sbb    %eax,(%rbx)
 255:	0e                   	(bad)  
 256:	3a 0b                	cmp    (%rbx),%cl
 258:	3b 0b                	cmp    (%rbx),%ecx
 25a:	39 0b                	cmp    %ecx,(%rbx)
 25c:	27                   	(bad)  
 25d:	19 49 13             	sbb    %ecx,0x13(%rcx)
 260:	11 01                	adc    %eax,(%rcx)
 262:	12 07                	adc    (%rdi),%al
 264:	40 18 96 42 19 00 00 	rex sbb %dl,0x1942(%rsi)
 26b:	00 01                	add    %al,(%rcx)
 26d:	11 01                	adc    %eax,(%rcx)
 26f:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 274:	0e                   	(bad)  
 275:	1b 0e                	sbb    (%rsi),%ecx
 277:	11 01                	adc    %eax,(%rcx)
 279:	12 07                	adc    (%rdi),%al
 27b:	10 17                	adc    %dl,(%rdi)
 27d:	00 00                	add    %al,(%rax)
 27f:	02 24 00             	add    (%rax,%rax,1),%ah
 282:	0b 0b                	or     (%rbx),%ecx
 284:	3e 0b 03             	ds or  (%rbx),%eax
 287:	0e                   	(bad)  
 288:	00 00                	add    %al,(%rax)
 28a:	03 16                	add    (%rsi),%edx
 28c:	00 03                	add    %al,(%rbx)
 28e:	0e                   	(bad)  
 28f:	3a 0b                	cmp    (%rbx),%cl
 291:	3b 0b                	cmp    (%rbx),%ecx
 293:	39 0b                	cmp    %ecx,(%rbx)
 295:	49 13 00             	adc    (%r8),%rax
 298:	00 04 24             	add    %al,(%rsp)
 29b:	00 0b                	add    %cl,(%rbx)
 29d:	0b 3e                	or     (%rsi),%edi
 29f:	0b 03                	or     (%rbx),%eax
 2a1:	08 00                	or     %al,(%rax)
 2a3:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b02b8 <_end+0xb0ab060>
 2a9:	00 00                	add    %al,(%rax)
 2ab:	06                   	(bad)  
 2ac:	0f 00 0b             	str    (%rbx)
 2af:	0b 49 13             	or     0x13(%rcx),%ecx
 2b2:	00 00                	add    %al,(%rax)
 2b4:	07                   	(bad)  
 2b5:	26 00 49 13          	es add %cl,0x13(%rcx)
 2b9:	00 00                	add    %al,(%rax)
 2bb:	08 35 00 49 13 00    	or     %dh,0x134900(%rip)        # 134bc1 <_end+0x12f969>
 2c1:	00 09                	add    %cl,(%rcx)
 2c3:	13 01                	adc    (%rcx),%eax
 2c5:	03 0e                	add    (%rsi),%ecx
 2c7:	0b 0b                	or     (%rbx),%ecx
 2c9:	3a 0b                	cmp    (%rbx),%cl
 2cb:	3b 0b                	cmp    (%rbx),%ecx
 2cd:	39 0b                	cmp    %ecx,(%rbx)
 2cf:	01 13                	add    %edx,(%rbx)
 2d1:	00 00                	add    %al,(%rax)
 2d3:	0a 0d 00 03 0e 3a    	or     0x3a0e0300(%rip),%cl        # 3a0e05d9 <_end+0x3a0db381>
 2d9:	0b 3b                	or     (%rbx),%edi
 2db:	0b 39                	or     (%rcx),%edi
 2dd:	0b 49 13             	or     0x13(%rcx),%ecx
 2e0:	38 0b                	cmp    %cl,(%rbx)
 2e2:	00 00                	add    %al,(%rax)
 2e4:	0b 16                	or     (%rsi),%edx
 2e6:	00 03                	add    %al,(%rbx)
 2e8:	0e                   	(bad)  
 2e9:	3a 0b                	cmp    (%rbx),%cl
 2eb:	3b 0b                	cmp    (%rbx),%ecx
 2ed:	39 0b                	cmp    %ecx,(%rbx)
 2ef:	00 00                	add    %al,(%rax)
 2f1:	0c 13                	or     $0x13,%al
 2f3:	00 03                	add    %al,(%rbx)
 2f5:	0e                   	(bad)  
 2f6:	3c 19                	cmp    $0x19,%al
 2f8:	00 00                	add    %al,(%rax)
 2fa:	0d 01 01 49 13       	or     $0x13490101,%eax
 2ff:	01 13                	add    %edx,(%rbx)
 301:	00 00                	add    %al,(%rax)
 303:	0e                   	(bad)  
 304:	21 00                	and    %eax,(%rax)
 306:	49 13 2f             	adc    (%r15),%rbp
 309:	0b 00                	or     (%rax),%eax
 30b:	00 0f                	add    %cl,(%rdi)
 30d:	34 00                	xor    $0x0,%al
 30f:	03 0e                	add    (%rsi),%ecx
 311:	3a 0b                	cmp    (%rbx),%cl
 313:	3b 0b                	cmp    (%rbx),%ecx
 315:	39 0b                	cmp    %ecx,(%rbx)
 317:	49 13 3f             	adc    (%r15),%rdi
 31a:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 31d:	00 00                	add    %al,(%rax)
 31f:	10 21                	adc    %ah,(%rcx)
 321:	00 00                	add    %al,(%rax)
 323:	00 11                	add    %dl,(%rcx)
 325:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 32a:	0b 3b                	or     (%rbx),%edi
 32c:	0b 39                	or     (%rcx),%edi
 32e:	0b 49 13             	or     0x13(%rcx),%ecx
 331:	38 0b                	cmp    %cl,(%rbx)
 333:	00 00                	add    %al,(%rax)
 335:	12 2e                	adc    (%rsi),%ch
 337:	00 3f                	add    %bh,(%rdi)
 339:	19 03                	sbb    %eax,(%rbx)
 33b:	0e                   	(bad)  
 33c:	3a 0b                	cmp    (%rbx),%cl
 33e:	3b 0b                	cmp    (%rbx),%ecx
 340:	39 0b                	cmp    %ecx,(%rbx)
 342:	27                   	(bad)  
 343:	19 11                	sbb    %edx,(%rcx)
 345:	01 12                	add    %edx,(%rdx)
 347:	07                   	(bad)  
 348:	40 18 96 42 19 00 00 	rex sbb %dl,0x1942(%rsi)
 34f:	13 2e                	adc    (%rsi),%ebp
 351:	01 3f                	add    %edi,(%rdi)
 353:	19 03                	sbb    %eax,(%rbx)
 355:	0e                   	(bad)  
 356:	3a 0b                	cmp    (%rbx),%cl
 358:	3b 0b                	cmp    (%rbx),%ecx
 35a:	39 0b                	cmp    %ecx,(%rbx)
 35c:	27                   	(bad)  
 35d:	19 11                	sbb    %edx,(%rcx)
 35f:	01 12                	add    %edx,(%rdx)
 361:	07                   	(bad)  
 362:	40 18 96 42 19 01 13 	rex sbb %dl,0x13011942(%rsi)
 369:	00 00                	add    %al,(%rax)
 36b:	14 34                	adc    $0x34,%al
 36d:	00 03                	add    %al,(%rbx)
 36f:	0e                   	(bad)  
 370:	3a 0b                	cmp    (%rbx),%cl
 372:	3b 0b                	cmp    (%rbx),%ecx
 374:	39 0b                	cmp    %ecx,(%rbx)
 376:	49 13 02             	adc    (%r10),%rax
 379:	18 00                	sbb    %al,(%rax)
 37b:	00 15 2e 00 3f 19    	add    %dl,0x193f002e(%rip)        # 193f03af <_end+0x193eb157>
 381:	03 0e                	add    (%rsi),%ecx
 383:	3a 0b                	cmp    (%rbx),%cl
 385:	3b 0b                	cmp    (%rbx),%ecx
 387:	39 0b                	cmp    %ecx,(%rbx)
 389:	27                   	(bad)  
 38a:	19 11                	sbb    %edx,(%rcx)
 38c:	01 12                	add    %edx,(%rdx)
 38e:	07                   	(bad)  
 38f:	40 18 97 42 19 00 00 	rex sbb %dl,0x1942(%rdi)
 396:	16                   	(bad)  
 397:	0b 01                	or     (%rcx),%eax
 399:	11 01                	adc    %eax,(%rcx)
 39b:	12 07                	adc    (%rdi),%al
 39d:	00 00                	add    %al,(%rax)
 39f:	17                   	(bad)  
 3a0:	2e 01 3f             	cs add %edi,(%rdi)
 3a3:	19 03                	sbb    %eax,(%rbx)
 3a5:	0e                   	(bad)  
 3a6:	3a 0b                	cmp    (%rbx),%cl
 3a8:	3b 0b                	cmp    (%rbx),%ecx
 3aa:	39 0b                	cmp    %ecx,(%rbx)
 3ac:	27                   	(bad)  
 3ad:	19 11                	sbb    %edx,(%rcx)
 3af:	01 12                	add    %edx,(%rdx)
 3b1:	07                   	(bad)  
 3b2:	40 18 96 42 19 00 00 	rex sbb %dl,0x1942(%rsi)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	74 01                	je     3 <_init-0xffd>
   2:	00 00                	add    %al,(%rax)
   4:	03 00                	add    (%rax),%eax
   6:	f6 00 00             	testb  $0x0,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0xf6f>
  1e:	72 2f                	jb     4f <_init-0xfb1>
  20:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  27:	2f                   	(bad)  
  28:	78 38                	js     62 <_init-0xf9e>
  2a:	36 5f                	ss pop %rdi
  2c:	36 34 2d             	ss xor $0x2d,%al
  2f:	6c                   	insb   (%dx),%es:(%rdi)
  30:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  37:	75 2f                	jne    68 <_init-0xf98>
  39:	62                   	(bad)  
  3a:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  41:	72 
  42:	2f                   	(bad)  
  43:	6c                   	insb   (%dx),%es:(%rdi)
  44:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  4b:	78 38                	js     85 <_init-0xf7b>
  4d:	36 5f                	ss pop %rdi
  4f:	36 34 2d             	ss xor $0x2d,%al
  52:	6c                   	insb   (%dx),%es:(%rdi)
  53:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  5a:	75 2f                	jne    8b <_init-0xf75>
  5c:	39 2f                	cmp    %ebp,(%rdi)
  5e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  65:	00 2f                	add    %ch,(%rdi)
  67:	75 73                	jne    dc <_init-0xf24>
  69:	72 2f                	jb     9a <_init-0xf66>
  6b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  72:	2f                   	(bad)  
  73:	78 38                	js     ad <_init-0xf53>
  75:	36 5f                	ss pop %rdi
  77:	36 34 2d             	ss xor $0x2d,%al
  7a:	6c                   	insb   (%dx),%es:(%rdi)
  7b:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  82:	75 2f                	jne    b3 <_init-0xf4d>
  84:	62                   	(bad)  
  85:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
  8c:	65 
  8d:	73 00                	jae    8f <_init-0xf71>
  8f:	2f                   	(bad)  
  90:	75 73                	jne    105 <_init-0xefb>
  92:	72 2f                	jb     c3 <_init-0xf3d>
  94:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  9b:	00 00                	add    %al,(%rax)
  9d:	6d                   	insl   (%dx),%es:(%rdi)
  9e:	61                   	(bad)  
  9f:	69 6e 2e 63 00 00 00 	imul   $0x63,0x2e(%rsi),%ebp
  a6:	00 74 79 70          	add    %dh,0x70(%rcx,%rdi,2)
  aa:	65 73 2e             	gs jae db <_init-0xf25>
  ad:	68 00 01 00 00       	push   $0x100
  b2:	73 74                	jae    128 <_init-0xed8>
  b4:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x200
  bb:	02 
  bc:	00 00                	add    %al,(%rax)
  be:	73 74                	jae    134 <_init-0xecc>
  c0:	72 75                	jb     137 <_init-0xec9>
  c2:	63 74 5f 46          	movsxd 0x46(%rdi,%rbx,2),%esi
  c6:	49                   	rex.WB
  c7:	4c                   	rex.WR
  c8:	45                   	rex.RB
  c9:	2e 68 00 03 00 00    	cs push $0x300
  cf:	46                   	rex.RX
  d0:	49                   	rex.WB
  d1:	4c                   	rex.WR
  d2:	45                   	rex.RB
  d3:	2e 68 00 03 00 00    	cs push $0x300
  d9:	73 74                	jae    14f <_init-0xeb1>
  db:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
  e2:	00 
  e3:	00 73 79             	add    %dh,0x79(%rbx)
  e6:	73 5f                	jae    147 <_init-0xeb9>
  e8:	65 72 72             	gs jb  15d <_init-0xea3>
  eb:	6c                   	insb   (%dx),%es:(%rdi)
  ec:	69 73 74 2e 68 00 01 	imul   $0x100682e,0x74(%rbx),%esi
  f3:	00 00                	add    %al,(%rax)
  f5:	6d                   	insl   (%dx),%es:(%rdi)
  f6:	61                   	(bad)  
  f7:	69 6e 2e 68 00 00 00 	imul   $0x68,0x2e(%rsi),%ebp
  fe:	00 00                	add    %al,(%rax)
 100:	05 19 00 09 02       	add    $0x2090019,%eax
 105:	e9 12 00 00 00       	jmp    11c <_init-0xee4>
 10a:	00 00                	add    %al,(%rax)
 10c:	00 03                	add    %al,(%rbx)
 10e:	14 01                	adc    $0x1,%al
 110:	05 03 84 08 13       	add    $0x13088403,%eax
 115:	08 13                	or     %dl,(%rbx)
 117:	08 13                	or     %dl,(%rbx)
 119:	08 13                	or     %dl,(%rbx)
 11b:	08 13                	or     %dl,(%rbx)
 11d:	08 13                	or     %dl,(%rbx)
 11f:	08 13                	or     %dl,(%rbx)
 121:	08 13                	or     %dl,(%rbx)
 123:	08 13                	or     %dl,(%rbx)
 125:	08 13                	or     %dl,(%rbx)
 127:	08 13                	or     %dl,(%rbx)
 129:	05 01 08 13 05       	add    $0x5130801,%eax
 12e:	0c 3f                	or     $0x3f,%al
 130:	ba 05 03 e5 08       	mov    $0x8e50305,%edx
 135:	13 05 08 5a 05 09    	adc    0x9055a08(%rip),%eax        # 9055b43 <_end+0x90508eb>
 13b:	4c 05 05 59 08 75    	rex.WR add $0x75085905,%rax
 141:	05 0b 08 d8 05       	add    $0x5d8080b,%eax
 146:	08 ba 05 0b 00 02    	or     %bh,0x2000b05(%rdx)
 14c:	04 01                	add    $0x1,%al
 14e:	59                   	pop    %rcx
 14f:	05 2a 00 02 04       	add    $0x402002a,%eax
 154:	01 b9 05 07 4c 08    	add    %edi,0x84c0705(%rcx)
 15a:	5a                   	pop    %rdx
 15b:	05 0d 31 05 1d       	add    $0x1d05310d,%eax
 160:	ba 05 0b 3c 05       	mov    $0x53c0b05,%edx
 165:	05 08 4a 2f 05       	add    $0x52f4a08,%eax
 16a:	09 03                	or     %eax,(%rbx)
 16c:	74 58                	je     1c6 <_init-0xe3a>
 16e:	05 01 03 0e e4       	add    $0xe40e0301,%eax
 173:	02 16                	add    (%rsi),%dl
 175:	00 01                	add    %al,(%rcx)
 177:	01 ce                	add    %ecx,%esi
 179:	01 00                	add    %eax,(%rax)
 17b:	00 03                	add    %al,(%rbx)
 17d:	00 0d 01 00 00 01    	add    %cl,0x1000001(%rip)        # 1000184 <_end+0xffaf2c>
 183:	01 fb                	add    %edi,%ebx
 185:	0e                   	(bad)  
 186:	0d 00 01 01 01       	or     $0x1010100,%eax
 18b:	01 00                	add    %eax,(%rax)
 18d:	00 00                	add    %al,(%rax)
 18f:	01 00                	add    %eax,(%rax)
 191:	00 01                	add    %al,(%rcx)
 193:	2f                   	(bad)  
 194:	75 73                	jne    209 <_init-0xdf7>
 196:	72 2f                	jb     1c7 <_init-0xe39>
 198:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 19f:	2f                   	(bad)  
 1a0:	78 38                	js     1da <_init-0xe26>
 1a2:	36 5f                	ss pop %rdi
 1a4:	36 34 2d             	ss xor $0x2d,%al
 1a7:	6c                   	insb   (%dx),%es:(%rdi)
 1a8:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
 1af:	75 2f                	jne    1e0 <_init-0xe20>
 1b1:	62                   	(bad)  
 1b2:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
 1b9:	72 
 1ba:	2f                   	(bad)  
 1bb:	6c                   	insb   (%dx),%es:(%rdi)
 1bc:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
 1c3:	78 38                	js     1fd <_init-0xe03>
 1c5:	36 5f                	ss pop %rdi
 1c7:	36 34 2d             	ss xor $0x2d,%al
 1ca:	6c                   	insb   (%dx),%es:(%rdi)
 1cb:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
 1d2:	75 2f                	jne    203 <_init-0xdfd>
 1d4:	39 2f                	cmp    %ebp,(%rdi)
 1d6:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 1dd:	00 2f                	add    %ch,(%rdi)
 1df:	75 73                	jne    254 <_init-0xdac>
 1e1:	72 2f                	jb     212 <_init-0xdee>
 1e3:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 1ea:	2f                   	(bad)  
 1eb:	78 38                	js     225 <_init-0xddb>
 1ed:	36 5f                	ss pop %rdi
 1ef:	36 34 2d             	ss xor $0x2d,%al
 1f2:	6c                   	insb   (%dx),%es:(%rdi)
 1f3:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
 1fa:	75 2f                	jne    22b <_init-0xdd5>
 1fc:	62                   	(bad)  
 1fd:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
 204:	65 
 205:	73 00                	jae    207 <_init-0xdf9>
 207:	2f                   	(bad)  
 208:	75 73                	jne    27d <_init-0xd83>
 20a:	72 2f                	jb     23b <_init-0xdc5>
 20c:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 213:	00 00                	add    %al,(%rax)
 215:	70 72                	jo     289 <_init-0xd77>
 217:	6a 32                	push   $0x32
 219:	5f                   	pop    %rdi
 21a:	75 74                	jne    290 <_init-0xd70>
 21c:	69 6c 2e 63 00 00 00 	imul   $0x0,0x63(%rsi,%rbp,1),%ebp
 223:	00 
 224:	74 79                	je     29f <_init-0xd61>
 226:	70 65                	jo     28d <_init-0xd73>
 228:	73 2e                	jae    258 <_init-0xda8>
 22a:	68 00 01 00 00       	push   $0x100
 22f:	73 74                	jae    2a5 <_init-0xd5b>
 231:	64 69 6e 74 2d 75 69 	imul   $0x6e69752d,%fs:0x74(%rsi),%ebp
 238:	6e 
 239:	74 6e                	je     2a9 <_init-0xd57>
 23b:	2e 68 00 01 00 00    	cs push $0x100
 241:	73 74                	jae    2b7 <_init-0xd49>
 243:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x200
 24a:	02 
 24b:	00 00                	add    %al,(%rax)
 24d:	73 74                	jae    2c3 <_init-0xd3d>
 24f:	72 75                	jb     2c6 <_init-0xd3a>
 251:	63 74 5f 46          	movsxd 0x46(%rdi,%rbx,2),%esi
 255:	49                   	rex.WB
 256:	4c                   	rex.WR
 257:	45                   	rex.RB
 258:	2e 68 00 03 00 00    	cs push $0x300
 25e:	46                   	rex.RX
 25f:	49                   	rex.WB
 260:	4c                   	rex.WR
 261:	45                   	rex.RB
 262:	2e 68 00 03 00 00    	cs push $0x300
 268:	73 74                	jae    2de <_init-0xd22>
 26a:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
 271:	00 
 272:	00 73 79             	add    %dh,0x79(%rbx)
 275:	73 5f                	jae    2d6 <_init-0xd2a>
 277:	65 72 72             	gs jb  2ec <_init-0xd14>
 27a:	6c                   	insb   (%dx),%es:(%rdi)
 27b:	69 73 74 2e 68 00 01 	imul   $0x100682e,0x74(%rbx),%esi
 282:	00 00                	add    %al,(%rax)
 284:	6d                   	insl   (%dx),%es:(%rdi)
 285:	61                   	(bad)  
 286:	69 6e 2e 68 00 00 00 	imul   $0x68,0x2e(%rsi),%ebp
 28d:	00 00                	add    %al,(%rax)
 28f:	05 2e 00 09 02       	add    $0x209002e,%eax
 294:	ba 14 00 00 00       	mov    $0x14,%edx
 299:	00 00                	add    %al,(%rax)
 29b:	00 03                	add    %al,(%rbx)
 29d:	10 01                	adc    %al,(%rcx)
 29f:	05 06 08 c9 05       	add    $0x5c90806,%eax
 2a4:	12 00                	adc    (%rax),%al
 2a6:	02 04 01             	add    (%rcx,%rax,1),%al
 2a9:	66 05 0c 67          	add    $0x670c,%ax
 2ad:	05 03 9f 05 10       	add    $0x10059f03,%eax
 2b2:	02 3b                	add    (%rbx),%bh
 2b4:	14 05                	adc    $0x5,%al
 2b6:	0a 08                	or     (%rax),%cl
 2b8:	58                   	pop    %rax
 2b9:	05 09 59 05 10       	add    $0x10055909,%eax
 2be:	bb 05 0b a0 05       	mov    $0x5a00b05,%ebx
 2c3:	0a 08                	or     (%rax),%cl
 2c5:	66 05 09 4b          	add    $0x4b09,%ax
 2c9:	05 10 08 75 05       	add    $0x5750810,%eax
 2ce:	07                   	(bad)  
 2cf:	a0 05 15 e4 05 07 4a 	movabs 0x8e54a0705e41505,%al
 2d6:	e5 08 
 2d8:	75 05                	jne    2df <_init-0xd21>
 2da:	0d 59 05 1b e4       	or     $0xe41b0559,%eax
 2df:	05 0d 82 05 05       	add    $0x505820d,%eax
 2e4:	e4 05                	in     $0x5,%al
 2e6:	0d 59 05 1b e4       	or     $0xe41b0559,%eax
 2eb:	05 0d 82 05 05       	add    $0x505820d,%eax
 2f0:	e4 05                	in     $0x5,%al
 2f2:	0d 2f 05 1b e4       	or     $0xe41b052f,%eax
 2f7:	05 0d 82 05 05       	add    $0x505820d,%eax
 2fc:	e4 05                	in     $0x5,%al
 2fe:	07                   	(bad)  
 2ff:	30 05 3a e4 05 1d    	xor    %al,0x1d05e43a(%rip)        # 1d05e73f <_end+0x1d0594e7>
 305:	74 05                	je     30c <_init-0xcf4>
 307:	07                   	(bad)  
 308:	08 9e 08 22 05 0a    	or     %bl,0xa052208(%rsi)
 30e:	23 05 01 59 05 32    	and    0x32055901(%rip),%eax        # 32055c15 <_end+0x320509bd>
 314:	31 05 10 08 88 05    	xor    %eax,0x5880810(%rip)        # 5880b2a <_end+0x587b8d2>
 31a:	03 4a 05             	add    0x5(%rdx),%ecx
 31d:	21 2f                	and    %ebp,(%rdi)
 31f:	05 0a 02 28 12       	add    $0x1228020a,%eax
 324:	05 08 e4 05 0e       	add    $0xe05e408,%eax
 329:	4b 05 2b 00 02 04    	rex.WXB add $0x402002b,%rax
 32f:	02 72 05             	add    0x5(%rdx),%dh
 332:	19 00                	sbb    %eax,(%rax)
 334:	02 04 01             	add    (%rcx,%rax,1),%al
 337:	9e                   	sahf   
 338:	05 03 00 02 04       	add    $0x4020003,%eax
 33d:	01 82 05 0a 4f 05    	add    %eax,0x54f0a05(%rdx)
 343:	01 59 02             	add    %ebx,0x2(%rcx)
 346:	02 00                	add    (%rax),%al
 348:	01 01                	add    %eax,(%rcx)
 34a:	1c 03                	sbb    $0x3,%al
 34c:	00 00                	add    %al,(%rax)
 34e:	03 00                	add    (%rax),%eax
 350:	12 01                	adc    (%rcx),%al
 352:	00 00                	add    %al,(%rax)
 354:	01 01                	add    %eax,(%rcx)
 356:	fb                   	sti    
 357:	0e                   	(bad)  
 358:	0d 00 01 01 01       	or     $0x1010100,%eax
 35d:	01 00                	add    %eax,(%rax)
 35f:	00 00                	add    %al,(%rax)
 361:	01 00                	add    %eax,(%rax)
 363:	00 01                	add    %al,(%rcx)
 365:	2f                   	(bad)  
 366:	75 73                	jne    3db <_init-0xc25>
 368:	72 2f                	jb     399 <_init-0xc67>
 36a:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 371:	2f                   	(bad)  
 372:	78 38                	js     3ac <_init-0xc54>
 374:	36 5f                	ss pop %rdi
 376:	36 34 2d             	ss xor $0x2d,%al
 379:	6c                   	insb   (%dx),%es:(%rdi)
 37a:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
 381:	75 2f                	jne    3b2 <_init-0xc4e>
 383:	62                   	(bad)  
 384:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
 38b:	72 
 38c:	2f                   	(bad)  
 38d:	6c                   	insb   (%dx),%es:(%rdi)
 38e:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
 395:	78 38                	js     3cf <_init-0xc31>
 397:	36 5f                	ss pop %rdi
 399:	36 34 2d             	ss xor $0x2d,%al
 39c:	6c                   	insb   (%dx),%es:(%rdi)
 39d:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
 3a4:	75 2f                	jne    3d5 <_init-0xc2b>
 3a6:	39 2f                	cmp    %ebp,(%rdi)
 3a8:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 3af:	00 2f                	add    %ch,(%rdi)
 3b1:	75 73                	jne    426 <_init-0xbda>
 3b3:	72 2f                	jb     3e4 <_init-0xc1c>
 3b5:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 3bc:	2f                   	(bad)  
 3bd:	78 38                	js     3f7 <_init-0xc09>
 3bf:	36 5f                	ss pop %rdi
 3c1:	36 34 2d             	ss xor $0x2d,%al
 3c4:	6c                   	insb   (%dx),%es:(%rdi)
 3c5:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
 3cc:	75 2f                	jne    3fd <_init-0xc03>
 3ce:	62                   	(bad)  
 3cf:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
 3d6:	65 
 3d7:	73 00                	jae    3d9 <_init-0xc27>
 3d9:	2f                   	(bad)  
 3da:	75 73                	jne    44f <_init-0xbb1>
 3dc:	72 2f                	jb     40d <_init-0xbf3>
 3de:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
 3e5:	00 00                	add    %al,(%rax)
 3e7:	70 72                	jo     45b <_init-0xba5>
 3e9:	6a 32                	push   $0x32
 3eb:	5f                   	pop    %rdi
 3ec:	66 75 6e             	data16 jne 45d <_init-0xba3>
 3ef:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
 3f3:	6e                   	outsb  %ds:(%rsi),(%dx)
 3f4:	73 2e                	jae    424 <_init-0xbdc>
 3f6:	63 00                	movsxd (%rax),%eax
 3f8:	00 00                	add    %al,(%rax)
 3fa:	00 74 79 70          	add    %dh,0x70(%rcx,%rdi,2)
 3fe:	65 73 2e             	gs jae 42f <_init-0xbd1>
 401:	68 00 01 00 00       	push   $0x100
 406:	73 74                	jae    47c <_init-0xb84>
 408:	64 69 6e 74 2d 75 69 	imul   $0x6e69752d,%fs:0x74(%rsi),%ebp
 40f:	6e 
 410:	74 6e                	je     480 <_init-0xb80>
 412:	2e 68 00 01 00 00    	cs push $0x100
 418:	73 74                	jae    48e <_init-0xb72>
 41a:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x200
 421:	02 
 422:	00 00                	add    %al,(%rax)
 424:	73 74                	jae    49a <_init-0xb66>
 426:	72 75                	jb     49d <_init-0xb63>
 428:	63 74 5f 46          	movsxd 0x46(%rdi,%rbx,2),%esi
 42c:	49                   	rex.WB
 42d:	4c                   	rex.WR
 42e:	45                   	rex.RB
 42f:	2e 68 00 03 00 00    	cs push $0x300
 435:	46                   	rex.RX
 436:	49                   	rex.WB
 437:	4c                   	rex.WR
 438:	45                   	rex.RB
 439:	2e 68 00 03 00 00    	cs push $0x300
 43f:	73 74                	jae    4b5 <_init-0xb4b>
 441:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
 448:	00 
 449:	00 73 79             	add    %dh,0x79(%rbx)
 44c:	73 5f                	jae    4ad <_init-0xb53>
 44e:	65 72 72             	gs jb  4c3 <_init-0xb3d>
 451:	6c                   	insb   (%dx),%es:(%rdi)
 452:	69 73 74 2e 68 00 01 	imul   $0x100682e,0x74(%rbx),%esi
 459:	00 00                	add    %al,(%rax)
 45b:	6d                   	insl   (%dx),%es:(%rdi)
 45c:	61                   	(bad)  
 45d:	69 6e 2e 68 00 00 00 	imul   $0x68,0x2e(%rsi),%ebp
 464:	00 00                	add    %al,(%rax)
 466:	05 12 00 09 02       	add    $0x2090012,%eax
 46b:	1a 17                	sbb    (%rdi),%dl
 46d:	00 00                	add    %al,(%rax)
 46f:	00 00                	add    %al,(%rax)
 471:	00 00                	add    %al,(%rax)
 473:	03 0d 01 e4 05 10    	add    0x1005e401(%rip),%ecx        # 1005e87a <_end+0x10059622>
 479:	e5 02                	in     $0x2,%eax
 47b:	b6 02                	mov    $0x2,%dh
 47d:	13 75 75             	adc    0x75(%rbp),%esi
 480:	08 e5                	or     %ah,%ch
 482:	75 77                	jne    4fb <_init-0xb05>
 484:	05 06 08 91 05       	add    $0x5910806,%eax
 489:	05 d7 05 0f 08       	add    $0x80f05d7,%eax
 48e:	18 05 0a 08 12 05    	sbb    %al,0x512080a(%rip)        # 5120c9e <_end+0x511ba46>
 494:	22 4b 05             	and    0x5(%rbx),%cl
 497:	18 74 05 22          	sbb    %dh,0x22(%rbp,%rax,1)
 49b:	08 2e                	or     %ch,(%rsi)
 49d:	05 1c ac 05 10       	add    $0x1005ac1c,%eax
 4a2:	a0 05 0a 08 12 05 24 	movabs 0x200240512080a05,%al
 4a9:	00 02 
 4ab:	04 01                	add    $0x1,%al
 4ad:	4a 05 1c 00 02 04    	rex.WX add $0x402001c,%rax
 4b3:	03 91 05 10 00 02    	add    0x2001005(%rcx),%edx
 4b9:	04 03                	add    $0x3,%al
 4bb:	9e                   	sahf   
 4bc:	05 37 00 02 04       	add    $0x4020037,%eax
 4c1:	03 9d 05 29 83 05    	add    0x5832905(%rbp),%ebx
 4c7:	0d cc 05 33 9e       	or     $0x9e3305cc,%eax
 4cc:	05 0d 74 05 0c       	add    $0xc05740d,%eax
 4d1:	02 42 13             	add    0x13(%rdx),%al
 4d4:	05 0b 91 05 0c       	add    $0xc05910b,%eax
 4d9:	30 05 15 91 05 09    	xor    %al,0x9059115(%rip)        # 90595f4 <_end+0x905439c>
 4df:	f4                   	hlt    
 4e0:	05 13 08 83 05       	add    $0x5830813,%eax
 4e5:	22 f2                	and    %dl,%dh
 4e7:	05 11 76 05 10       	add    $0x10057611,%eax
 4ec:	03 6d f2             	add    -0xe(%rbp),%ebp
 4ef:	05 0b 08 12 05       	add    $0x512080b,%eax
 4f4:	10 03                	adc    %al,(%rbx)
 4f6:	15 82 05 20 74       	adc    $0x74200582,%eax
 4fb:	05 2f 74 05 0a       	add    $0xa05742f,%eax
 500:	03 6a f2             	add    -0xe(%rdx),%ebp
 503:	05 09 08 9e 05       	add    $0x59e0809,%eax
 508:	03 03                	add    (%rbx),%eax
 50a:	18 58 e5             	sbb    %bl,-0x1b(%rax)
 50d:	05 01 bb 05 18       	add    $0x1805bb01,%eax
 512:	08 5b e4             	or     %bl,-0x1c(%rbx)
 515:	05 12 e5 02 b6       	add    $0xb602e512,%eax
 51a:	02 13                	add    (%rbx),%dl
 51c:	76 08                	jbe    526 <_init-0xada>
 51e:	e5 75                	in     $0x75,%eax
 520:	76 05                	jbe    527 <_init-0xad9>
 522:	06                   	(bad)  
 523:	74 05                	je     52a <_init-0xad6>
 525:	05 4b 05 03 08       	add    $0x803054b,%eax
 52a:	5c                   	pop    %rsp
 52b:	05 09 08 9f 05       	add    $0x59f0809,%eax
 530:	0d 59 05 08 08       	or     $0x8080559,%eax
 535:	12 05 20 4b 05 16    	adc    0x16054b20(%rip),%al        # 1605505b <_end+0x1604fe03>
 53b:	74 05                	je     542 <_init-0xabe>
 53d:	20 08                	and    %cl,(%rax)
 53f:	2e 05 1a ac 05 0e    	cs add $0xe05ac1a,%eax
 545:	a0 05 08 08 12 05 22 	movabs 0x200220512080805,%al
 54c:	00 02 
 54e:	04 01                	add    $0x1,%al
 550:	4a 05 1a 00 02 04    	rex.WX add $0x402001a,%rax
 556:	03 91 05 0e 00 02    	add    0x2000e05(%rcx),%edx
 55c:	04 03                	add    $0x3,%al
 55e:	9e                   	sahf   
 55f:	05 35 00 02 04       	add    $0x4020035,%eax
 564:	03 9d 05 27 83 05    	add    0x5832705(%rbp),%ebx
 56a:	0b cb                	or     %ebx,%ecx
 56c:	05 31 9e 05 0b       	add    $0xb059e31,%eax
 571:	9e                   	sahf   
 572:	05 0a 02 42 13       	add    $0x1342020a,%eax
 577:	05 09 91 05 0a       	add    $0xa059109,%eax
 57c:	30 05 13 91 05 07    	xor    %al,0x7059113(%rip)        # 7059695 <_end+0x705443d>
 582:	f4                   	hlt    
 583:	05 11 08 83 05       	add    $0x5830811,%eax
 588:	20 f2                	and    %dh,%dl
 58a:	05 0f 76 05 0e       	add    $0xe05760f,%eax
 58f:	03 6e f2             	add    -0xe(%rsi),%ebp
 592:	05 09 08 12 05       	add    $0x5120809,%eax
 597:	0d 03 14 82 05       	or     $0x5821403,%eax
 59c:	03 f4                	add    %esp,%esi
 59e:	05 01 bb 05 18       	add    $0x1805bb01,%eax
 5a3:	08 5b 05             	or     %bl,0x5(%rbx)
 5a6:	01 84 05 1a 3f 05 01 	add    %eax,0x1053f1a(%rbp,%rax,1)
 5ad:	84 05 18 3f 05 01    	test   %al,0x1053f18(%rip)        # 10544cb <_end+0x104f273>
 5b3:	84 05 1d 3f 05 14    	test   %al,0x14053f1d(%rip)        # 140544d6 <_end+0x1404f27e>
 5b9:	bb 05 09 4c 05       	mov    $0x54c0905,%ebx
 5be:	0c 2f                	or     $0x2f,%al
 5c0:	05 20 9d 05 0a       	add    $0xa059d20,%eax
 5c5:	02 2b                	add    (%rbx),%ch
 5c7:	12 05 09 82 05 03    	adc    0x3058209(%rip),%al        # 30587d6 <_end+0x305357e>
 5cd:	4e 05 01 08 91 05    	rex.WRX add $0x5910801,%rax
 5d3:	1a 3f                	sbb    (%rdi),%bh
 5d5:	05 01 84 05 1a       	add    $0x1a058401,%eax
 5da:	3f                   	(bad)  
 5db:	05 01 84 05 15       	add    $0x15058401,%eax
 5e0:	43 05 0b bc 05 1d    	rex.XB add $0x1d05bc0b,%eax
 5e6:	00 02                	add    %al,(%rdx)
 5e8:	04 01                	add    $0x1,%al
 5ea:	4e 05 3b 00 02 04    	rex.WRX add $0x402003b,%rax
 5f0:	01 02                	add    %eax,(%rdx)
 5f2:	29 11                	sub    %edx,(%rcx)
 5f4:	05 1d 00 02 04       	add    $0x402001d,%eax
 5f9:	01 02                	add    %eax,(%rdx)
 5fb:	30 12                	xor    %dl,(%rdx)
 5fd:	05 05 00 02 04       	add    $0x4020005,%eax
 602:	01 02                	add    %eax,(%rdx)
 604:	2c 11                	sub    $0x11,%al
 606:	05 41 00 02 04       	add    $0x4020041,%eax
 60b:	01 08                	add    %ecx,(%rax)
 60d:	c0 05 24 00 02 04 01 	rolb   $0x1,0x4020024(%rip)        # 4020638 <_end+0x401b3e0>
 614:	02 30                	add    (%rax),%dh
 616:	12 05 41 00 02 04    	adc    0x4020041(%rip),%al        # 402065d <_end+0x401b405>
 61c:	01 02                	add    %eax,(%rdx)
 61e:	30 11                	xor    %dl,(%rcx)
 620:	05 24 00 02 04       	add    $0x4020024,%eax
 625:	01 02                	add    %eax,(%rdx)
 627:	30 12                	xor    %dl,(%rdx)
 629:	05 3c 00 02 04       	add    $0x402003c,%eax
 62e:	01 02                	add    %eax,(%rdx)
 630:	30 11                	xor    %dl,(%rcx)
 632:	05 05 00 02 04       	add    $0x4020005,%eax
 637:	01 02                	add    %eax,(%rdx)
 639:	30 12                	xor    %dl,(%rdx)
 63b:	05 0c 00 02 04       	add    $0x402000c,%eax
 640:	01 08                	add    %ecx,(%rax)
 642:	bd 05 22 00 02       	mov    $0x2002205,%ebp
 647:	04 01                	add    $0x1,%al
 649:	9f                   	lahf   
 64a:	05 0c 00 02 04       	add    $0x402000c,%eax
 64f:	01 02                	add    %eax,(%rdx)
 651:	28 12                	sub    %dl,(%rdx)
 653:	05 03 00 02 04       	add    $0x4020003,%eax
 658:	01 82 05 01 83 05    	add    %eax,0x5830105(%rdx)
 65e:	15 4d 05 03 83       	adc    $0x8303054d,%eax
 663:	08 13                	or     %dl,(%rbx)
 665:	02 0a                	add    (%rdx),%cl
 667:	00 01                	add    %al,(%rcx)
 669:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    %rdi
   1:	5f                   	pop    %rdi
   2:	6f                   	outsl  %ds:(%rsi),(%dx)
   3:	66 66 5f             	data16 pop %di
   6:	74 00                	je     8 <_init-0xff8>
   8:	5f                   	pop    %rdi
   9:	49                   	rex.WB
   a:	4f 5f                	rex.WRXB pop %r15
   c:	72 65                	jb     73 <_init-0xf8d>
   e:	61                   	(bad)  
   f:	64 5f                	fs pop %rdi
  11:	70 74                	jo     87 <_init-0xf79>
  13:	72 00                	jb     15 <_init-0xfeb>
  15:	5f                   	pop    %rdi
  16:	63 68 61             	movsxd 0x61(%rax),%ebp
  19:	69 6e 00 73 69 7a 65 	imul   $0x657a6973,0x0(%rsi),%ebp
  20:	5f                   	pop    %rdi
  21:	74 00                	je     23 <_init-0xfdd>
  23:	5f                   	pop    %rdi
  24:	73 68                	jae    8e <_init-0xf72>
  26:	6f                   	outsl  %ds:(%rsi),(%dx)
  27:	72 74                	jb     9d <_init-0xf63>
  29:	62                   	(bad)  
  2a:	75 66                	jne    92 <_init-0xf6e>
  2c:	00 6e 61             	add    %ch,0x61(%rsi)
  2f:	6d                   	insl   (%dx),%es:(%rdi)
  30:	65 5f                	gs pop %rdi
  32:	66 69 72 73 74 00    	imul   $0x74,0x73(%rdx),%si
  38:	5f                   	pop    %rdi
  39:	49                   	rex.WB
  3a:	4f 5f                	rex.WRXB pop %r15
  3c:	62                   	(bad)  
  3d:	75 66                	jne    a5 <_init-0xf5b>
  3f:	5f                   	pop    %rdi
  40:	62 61                	(bad)  
  42:	73 65                	jae    a9 <_init-0xf57>
  44:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  48:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  4d:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  51:	73 69                	jae    bc <_init-0xf44>
  53:	67 6e                	outsb  %ds:(%esi),(%dx)
  55:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  5a:	74 00                	je     5c <_init-0xfa4>
  5c:	6c                   	insb   (%dx),%es:(%rdi)
  5d:	6f                   	outsl  %ds:(%rsi),(%dx)
  5e:	6e                   	outsb  %ds:(%rsi),(%dx)
  5f:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  64:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  68:	74 00                	je     6a <_init-0xf96>
  6a:	6e                   	outsb  %ds:(%rsi),(%dx)
  6b:	61                   	(bad)  
  6c:	6d                   	insl   (%dx),%es:(%rdi)
  6d:	65 5f                	gs pop %rdi
  6f:	6c                   	insb   (%dx),%es:(%rdi)
  70:	61                   	(bad)  
  71:	73 74                	jae    e7 <_init-0xf19>
  73:	00 44 69 73          	add    %al,0x73(%rcx,%rbp,2)
  77:	70 5f                	jo     d8 <_init-0xf28>
  79:	4f 70 74             	rex.WRXB jo f0 <_init-0xf10>
  7c:	69 6f 6e 73 00 5f 66 	imul   $0x665f0073,0x6e(%rdi),%ebp
  83:	69 6c 65 6e 6f 00 5f 	imul   $0x495f006f,0x6e(%rbp,%riz,2),%ebp
  8a:	49 
  8b:	4f 5f                	rex.WRXB pop %r15
  8d:	72 65                	jb     f4 <_init-0xf0c>
  8f:	61                   	(bad)  
  90:	64 5f                	fs pop %rdi
  92:	65 6e                	outsb  %gs:(%rsi),(%dx)
  94:	64 00 5f 66          	add    %bl,%fs:0x66(%rdi)
  98:	6c                   	insb   (%dx),%es:(%rdi)
  99:	61                   	(bad)  
  9a:	67 73 00             	addr32 jae 9d <_init-0xf63>
  9d:	5f                   	pop    %rdi
  9e:	49                   	rex.WB
  9f:	4f 5f                	rex.WRXB pop %r15
  a1:	62                   	(bad)  
  a2:	75 66                	jne    10a <_init-0xef6>
  a4:	5f                   	pop    %rdi
  a5:	65 6e                	outsb  %gs:(%rsi),(%dx)
  a7:	64 00 5f 63          	add    %bl,%fs:0x63(%rdi)
  ab:	75 72                	jne    11f <_init-0xee1>
  ad:	5f                   	pop    %rdi
  ae:	63 6f 6c             	movsxd 0x6c(%rdi),%ebp
  b1:	75 6d                	jne    120 <_init-0xee0>
  b3:	6e                   	outsb  %ds:(%rsi),(%dx)
  b4:	00 5f 49             	add    %bl,0x49(%rdi)
  b7:	4f 5f                	rex.WRXB pop %r15
  b9:	63 6f 64             	movsxd 0x64(%rdi),%ebp
  bc:	65 63 76 74          	movsxd %gs:0x74(%rsi),%esi
  c0:	00 73 74             	add    %dh,0x74(%rbx)
  c3:	75 64                	jne    129 <_init-0xed7>
  c5:	65 6e                	outsb  %gs:(%rsi),(%dx)
  c7:	74 5f                	je     128 <_init-0xed8>
  c9:	64 61                	fs (bad) 
  cb:	74 61                	je     12e <_init-0xed2>
  cd:	5f                   	pop    %rdi
  ce:	74 00                	je     d0 <_init-0xf30>
  d0:	5f                   	pop    %rdi
  d1:	6f                   	outsl  %ds:(%rsi),(%dx)
  d2:	6c                   	insb   (%dx),%es:(%rdi)
  d3:	64 5f                	fs pop %rdi
  d5:	6f                   	outsl  %ds:(%rsi),(%dx)
  d6:	66 66 73 65          	data16 data16 jae 13f <_init-0xec1>
  da:	74 00                	je     dc <_init-0xf24>
  dc:	5f                   	pop    %rdi
  dd:	49                   	rex.WB
  de:	4f 5f                	rex.WRXB pop %r15
  e0:	6d                   	insl   (%dx),%es:(%rdi)
  e1:	61                   	(bad)  
  e2:	72 6b                	jb     14f <_init-0xeb1>
  e4:	65 72 00             	gs jb  e7 <_init-0xf19>
  e7:	73 74                	jae    15d <_init-0xea3>
  e9:	64 69 6e 00 5f 66 72 	imul   $0x6572665f,%fs:0x0(%rsi),%ebp
  f0:	65 
  f1:	65 72 65             	gs jb  159 <_init-0xea7>
  f4:	73 5f                	jae    155 <_init-0xeab>
  f6:	62                   	(bad)  
  f7:	75 66                	jne    15f <_init-0xea1>
  f9:	00 5f 49             	add    %bl,0x49(%rdi)
  fc:	4f 5f                	rex.WRXB pop %r15
  fe:	77 72                	ja     172 <_init-0xe8e>
 100:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
 107:	00 
 108:	73 79                	jae    183 <_init-0xe7d>
 10a:	73 5f                	jae    16b <_init-0xe95>
 10c:	6e                   	outsb  %ds:(%rsi),(%dx)
 10d:	65 72 72             	gs jb  182 <_init-0xe7e>
 110:	00 73 68             	add    %dh,0x68(%rbx)
 113:	6f                   	outsl  %ds:(%rsi),(%dx)
 114:	72 74                	jb     18a <_init-0xe76>
 116:	20 75 6e             	and    %dh,0x6e(%rbp)
 119:	73 69                	jae    184 <_init-0xe7c>
 11b:	67 6e                	outsb  %ds:(%esi),(%dx)
 11d:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 122:	74 00                	je     124 <_init-0xedc>
 124:	5f                   	pop    %rdi
 125:	49                   	rex.WB
 126:	4f 5f                	rex.WRXB pop %r15
 128:	73 61                	jae    18b <_init-0xe75>
 12a:	76 65                	jbe    191 <_init-0xe6f>
 12c:	5f                   	pop    %rdi
 12d:	62 61                	(bad)  
 12f:	73 65                	jae    196 <_init-0xe6a>
 131:	00 46 63             	add    %al,0x63(%rsi)
 134:	6e                   	outsb  %ds:(%rsi),(%dx)
 135:	50                   	push   %rax
 136:	74 72                	je     1aa <_init-0xe56>
 138:	00 6d 61             	add    %ch,0x61(%rbp)
 13b:	69 6e 2e 63 00 5f 6c 	imul   $0x6c5f0063,0x2e(%rsi),%ebp
 142:	6f                   	outsl  %ds:(%rsi),(%dx)
 143:	63 6b 00             	movsxd 0x0(%rbx),%ebp
 146:	74 65                	je     1ad <_init-0xe53>
 148:	6d                   	insl   (%dx),%es:(%rdi)
 149:	70 5f                	jo     1aa <_init-0xe56>
 14b:	74 65                	je     1b2 <_init-0xe4e>
 14d:	78 74                	js     1c3 <_init-0xe3d>
 14f:	00 5f 66             	add    %bl,0x66(%rdi)
 152:	6c                   	insb   (%dx),%es:(%rdi)
 153:	61                   	(bad)  
 154:	67 73 32             	addr32 jae 189 <_init-0xe77>
 157:	00 5f 6d             	add    %bl,0x6d(%rdi)
 15a:	6f                   	outsl  %ds:(%rsi),(%dx)
 15b:	64 65 00 73 74       	fs add %dh,%gs:0x74(%rbx)
 160:	64 6f                	outsl  %fs:(%rsi),(%dx)
 162:	75 74                	jne    1d8 <_init-0xe28>
 164:	00 47 4e             	add    %al,0x4e(%rdi)
 167:	55                   	push   %rbp
 168:	20 43 31             	and    %al,0x31(%rbx)
 16b:	37                   	(bad)  
 16c:	20 39                	and    %bh,(%rcx)
 16e:	2e 34 2e             	cs xor $0x2e,%al
 171:	30 20                	xor    %ah,(%rax)
 173:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
 178:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 17e:	72 69                	jb     1e9 <_init-0xe17>
 180:	63 20                	movsxd (%rax),%esp
 182:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 187:	68 3d 78 38 36       	push   $0x3638783d
 18c:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 191:	67 20 2d 66 61 73 79 	and    %ch,0x79736166(%eip)        # 797362fe <_end+0x797310a6>
 198:	6e                   	outsb  %ds:(%rsi),(%dx)
 199:	63 68 72             	movsxd 0x72(%rax),%ebp
 19c:	6f                   	outsl  %ds:(%rsi),(%dx)
 19d:	6e                   	outsb  %ds:(%rsi),(%dx)
 19e:	6f                   	outsl  %ds:(%rsi),(%dx)
 19f:	75 73                	jne    214 <_init-0xdec>
 1a1:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
 1a6:	6e                   	outsb  %ds:(%rsi),(%dx)
 1a7:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 1ad:	65 73 20             	gs jae 1d0 <_init-0xe30>
 1b0:	2d 66 73 74 61       	sub    $0x61747366,%eax
 1b5:	63 6b 2d             	movsxd 0x2d(%rbx),%ebp
 1b8:	70 72                	jo     22c <_init-0xdd4>
 1ba:	6f                   	outsl  %ds:(%rsi),(%dx)
 1bb:	74 65                	je     222 <_init-0xdde>
 1bd:	63 74 6f 72          	movsxd 0x72(%rdi,%rbp,2),%esi
 1c1:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
 1c6:	6e                   	outsb  %ds:(%rsi),(%dx)
 1c7:	67 20 2d 66 73 74 61 	and    %ch,0x61747366(%eip)        # 61747534 <_end+0x617422dc>
 1ce:	63 6b 2d             	movsxd 0x2d(%rbx),%ebp
 1d1:	63 6c 61 73          	movsxd 0x73(%rcx,%riz,2),%ebp
 1d5:	68 2d 70 72 6f       	push   $0x6f72702d
 1da:	74 65                	je     241 <_init-0xdbf>
 1dc:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
 1e0:	6e                   	outsb  %ds:(%rsi),(%dx)
 1e1:	20 2d 66 63 66 2d    	and    %ch,0x2d666366(%rip)        # 2d66654d <_end+0x2d6612f5>
 1e7:	70 72                	jo     25b <_init-0xda5>
 1e9:	6f                   	outsl  %ds:(%rsi),(%dx)
 1ea:	74 65                	je     251 <_init-0xdaf>
 1ec:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
 1f0:	6e                   	outsb  %ds:(%rsi),(%dx)
 1f1:	00 53 5f             	add    %dl,0x5f(%rbx)
 1f4:	53                   	push   %rbx
 1f5:	74 64                	je     25b <_init-0xda5>
 1f7:	75 65                	jne    25e <_init-0xda2>
 1f9:	6e                   	outsb  %ds:(%rsi),(%dx)
 1fa:	74 44                	je     240 <_init-0xdc0>
 1fc:	61                   	(bad)  
 1fd:	74 61                	je     260 <_init-0xda0>
 1ff:	00 5f 49             	add    %bl,0x49(%rdi)
 202:	4f 5f                	rex.WRXB pop %r15
 204:	77 72                	ja     278 <_init-0xd88>
 206:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 20d:	00 
 20e:	2f                   	(bad)  
 20f:	6d                   	insl   (%dx),%es:(%rdi)
 210:	65 64 69 61 2f 6f 6d 	gs imul $0x72616d6f,%fs:0x2f(%rcx),%esp
 217:	61 72 
 219:	2f                   	(bad)  
 21a:	44                   	rex.R
 21b:	41 54                	push   %r12
 21d:	41 2f                	rex.B (bad) 
 21f:	43 75 72             	rex.XB jne 294 <_init-0xd6c>
 222:	72 65                	jb     289 <_init-0xd77>
 224:	6e                   	outsb  %ds:(%rsi),(%dx)
 225:	74 6c                	je     293 <_init-0xd6d>
 227:	79 20                	jns    249 <_init-0xdb7>
 229:	77 6f                	ja     29a <_init-0xd66>
 22b:	72 6b                	jb     298 <_init-0xd68>
 22d:	69 6e 67 20 6f 6e 2f 	imul   $0x2f6e6f20,0x67(%rsi),%ebp
 234:	4c                   	rex.WR
 235:	65 61                	gs (bad) 
 237:	72 6e                	jb     2a7 <_init-0xd59>
 239:	20 69 6e             	and    %ch,0x6e(%rcx)
 23c:	20 64 65 70          	and    %ah,0x70(%rbp,%riz,2)
 240:	74 68                	je     2aa <_init-0xd56>
 242:	20 2d 20 45 6d 62    	and    %ch,0x626d4520(%rip)        # 626d4768 <_end+0x626cf510>
 248:	65 64 64 65 64 20 73 	gs fs fs gs and %dh,%fs:0x79(%rbx)
 24f:	79 
 250:	73 74                	jae    2c6 <_init-0xd3a>
 252:	65 6d                	gs insl (%dx),%es:(%rdi)
 254:	73 2f                	jae    285 <_init-0xd7b>
 256:	56                   	push   %rsi
 257:	53                   	push   %rbx
 258:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
 25a:	64 65 2f             	fs gs (bad) 
 25d:	45 6d                	rex.RB insl (%dx),%es:(%rdi)
 25f:	62                   	(bad)  
 260:	65 64 64 65 64 53    	gs fs fs gs fs push %rbx
 266:	79 73                	jns    2db <_init-0xd25>
 268:	74 65                	je     2cf <_init-0xd31>
 26a:	6d                   	insl   (%dx),%es:(%rdi)
 26b:	73 5f                	jae    2cc <_init-0xd34>
 26d:	4f 6e                	rex.WRXB outsb %ds:(%rsi),(%dx)
 26f:	6c                   	insb   (%dx),%es:(%rdi)
 270:	69 6e 65 44 69 70 6c 	imul   $0x6c706944,0x65(%rsi),%ebp
 277:	6f                   	outsl  %ds:(%rsi),(%dx)
 278:	6d                   	insl   (%dx),%es:(%rdi)
 279:	61                   	(bad)  
 27a:	2f                   	(bad)  
 27b:	55                   	push   %rbp
 27c:	6e                   	outsb  %ds:(%rsi),(%dx)
 27d:	69 74 35 2f 50 72 6a 	imul   $0x326a7250,0x2f(%rbp,%rsi,1),%esi
 284:	32 
 285:	2f                   	(bad)  
 286:	44                   	rex.R
 287:	65 76 65             	gs jbe 2ef <_init-0xd11>
 28a:	6c                   	insb   (%dx),%es:(%rdi)
 28b:	6f                   	outsl  %ds:(%rsi),(%dx)
 28c:	70 6d                	jo     2fb <_init-0xd05>
 28e:	65 6e                	outsb  %gs:(%rsi),(%dx)
 290:	74 2f                	je     2c1 <_init-0xd3f>
 292:	53                   	push   %rbx
 293:	72 63                	jb     2f8 <_init-0xd08>
 295:	00 5f 49             	add    %bl,0x49(%rdi)
 298:	4f 5f                	rex.WRXB pop %r15
 29a:	6c                   	insb   (%dx),%es:(%rdi)
 29b:	6f                   	outsl  %ds:(%rsi),(%dx)
 29c:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 29f:	74 00                	je     2a1 <_init-0xd5f>
 2a1:	5f                   	pop    %rdi
 2a2:	49                   	rex.WB
 2a3:	4f 5f                	rex.WRXB pop %r15
 2a5:	46                   	rex.RX
 2a6:	49                   	rex.WB
 2a7:	4c                   	rex.WR
 2a8:	45 00 73 74          	add    %r14b,0x74(%r11)
 2ac:	75 64                	jne    312 <_init-0xcee>
 2ae:	65 6e                	outsb  %gs:(%rsi),(%dx)
 2b0:	74 73                	je     325 <_init-0xcdb>
 2b2:	00 73 79             	add    %dh,0x79(%rbx)
 2b5:	73 5f                	jae    316 <_init-0xcea>
 2b7:	65 72 72             	gs jb  32c <_init-0xcd4>
 2ba:	6c                   	insb   (%dx),%es:(%rdi)
 2bb:	69 73 74 00 5f 6d 61 	imul   $0x616d5f00,0x74(%rbx),%esi
 2c2:	72 6b                	jb     32f <_init-0xcd1>
 2c4:	65 72 73             	gs jb  33a <_init-0xcc6>
 2c7:	00 75 6e             	add    %dh,0x6e(%rbp)
 2ca:	73 69                	jae    335 <_init-0xccb>
 2cc:	67 6e                	outsb  %ds:(%esi),(%dx)
 2ce:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 2d3:	61                   	(bad)  
 2d4:	72 00                	jb     2d6 <_init-0xd2a>
 2d6:	73 68                	jae    340 <_init-0xcc0>
 2d8:	6f                   	outsl  %ds:(%rsi),(%dx)
 2d9:	72 74                	jb     34f <_init-0xcb1>
 2db:	20 69 6e             	and    %ch,0x6e(%rcx)
 2de:	74 00                	je     2e0 <_init-0xd20>
 2e0:	5f                   	pop    %rdi
 2e1:	49                   	rex.WB
 2e2:	4f 5f                	rex.WRXB pop %r15
 2e4:	77 69                	ja     34f <_init-0xcb1>
 2e6:	64 65 5f             	fs gs pop %rdi
 2e9:	64 61                	fs (bad) 
 2eb:	74 61                	je     34e <_init-0xcb2>
 2ed:	00 5f 76             	add    %bl,0x76(%rdi)
 2f0:	74 61                	je     353 <_init-0xcad>
 2f2:	62                   	(bad)  
 2f3:	6c                   	insb   (%dx),%es:(%rdi)
 2f4:	65 5f                	gs pop %rdi
 2f6:	6f                   	outsl  %ds:(%rsi),(%dx)
 2f7:	66 66 73 65          	data16 data16 jae 360 <_init-0xca0>
 2fb:	74 00                	je     2fd <_init-0xd03>
 2fd:	5f                   	pop    %rdi
 2fe:	5f                   	pop    %rdi
 2ff:	6f                   	outsl  %ds:(%rsi),(%dx)
 300:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 305:	74 00                	je     307 <_init-0xcf9>
 307:	5f                   	pop    %rdi
 308:	49                   	rex.WB
 309:	4f 5f                	rex.WRXB pop %r15
 30b:	72 65                	jb     372 <_init-0xc8e>
 30d:	61                   	(bad)  
 30e:	64 5f                	fs pop %rdi
 310:	62 61                	(bad)  
 312:	73 65                	jae    379 <_init-0xc87>
 314:	00 5f 49             	add    %bl,0x49(%rdi)
 317:	4f 5f                	rex.WRXB pop %r15
 319:	73 61                	jae    37c <_init-0xc84>
 31b:	76 65                	jbe    382 <_init-0xc7e>
 31d:	5f                   	pop    %rdi
 31e:	65 6e                	outsb  %gs:(%rsi),(%dx)
 320:	64 00 63 6f          	add    %ah,%fs:0x6f(%rbx)
 324:	75 72                	jne    398 <_init-0xc68>
 326:	73 65                	jae    38d <_init-0xc73>
 328:	00 5f 5f             	add    %bl,0x5f(%rdi)
 32b:	70 61                	jo     38e <_init-0xc72>
 32d:	64 35 00 5f 75 6e    	fs xor $0x6e755f00,%eax
 333:	75 73                	jne    3a8 <_init-0xc58>
 335:	65 64 32 00          	gs xor %fs:(%rax),%al
 339:	73 74                	jae    3af <_init-0xc51>
 33b:	64 65 72 72          	fs gs jb 3b1 <_init-0xc4f>
 33f:	00 5f 49             	add    %bl,0x49(%rdi)
 342:	4f 5f                	rex.WRXB pop %r15
 344:	62 61                	(bad)  
 346:	63 6b 75             	movsxd 0x75(%rbx),%ebp
 349:	70 5f                	jo     3aa <_init-0xc56>
 34b:	62 61                	(bad)  
 34d:	73 65                	jae    3b4 <_init-0xc4c>
 34f:	00 5f 66             	add    %bl,0x66(%rdi)
 352:	72 65                	jb     3b9 <_init-0xc47>
 354:	65 72 65             	gs jb  3bc <_init-0xc44>
 357:	73 5f                	jae    3b8 <_init-0xc48>
 359:	6c                   	insb   (%dx),%es:(%rdi)
 35a:	69 73 74 00 6d 61 69 	imul   $0x69616d00,0x74(%rbx),%esi
 361:	6e                   	outsb  %ds:(%rsi),(%dx)
 362:	00 5f 49             	add    %bl,0x49(%rdi)
 365:	4f 5f                	rex.WRXB pop %r15
 367:	77 72                	ja     3db <_init-0xc25>
 369:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 370:	65 
 371:	00 6c 6f 6f          	add    %ch,0x6f(%rdi,%rbp,2)
 375:	70 66                	jo     3dd <_init-0xc23>
 377:	6c                   	insb   (%dx),%es:(%rdi)
 378:	61                   	(bad)  
 379:	67 00 73 74          	add    %dh,0x74(%ebx)
 37d:	75 64                	jne    3e3 <_init-0xc1d>
 37f:	65 6e                	outsb  %gs:(%rsi),(%dx)
 381:	5f                   	pop    %rdi
 382:	6f                   	outsl  %ds:(%rsi),(%dx)
 383:	72 64                	jb     3e9 <_init-0xc17>
 385:	65 72 00             	gs jb  388 <_init-0xc78>
 388:	5f                   	pop    %rdi
 389:	5f                   	pop    %rdi
 38a:	75 69                	jne    3f5 <_init-0xc0b>
 38c:	6e                   	outsb  %ds:(%rsi),(%dx)
 38d:	74 38                	je     3c7 <_init-0xc39>
 38f:	5f                   	pop    %rdi
 390:	74 00                	je     392 <_init-0xc6e>
 392:	64 65 73 74          	fs gs jae 40a <_init-0xbf6>
 396:	5f                   	pop    %rdi
 397:	53                   	push   %rbx
 398:	00 70 72             	add    %dh,0x72(%rax)
 39b:	6a 32                	push   $0x32
 39d:	5f                   	pop    %rdi
 39e:	75 74                	jne    414 <_init-0xbec>
 3a0:	69 6c 2e 63 00 6d 61 	imul   $0x70616d00,0x63(%rsi,%rbp,1),%ebp
 3a7:	70 
 3a8:	5f                   	pop    %rdi
 3a9:	77 6f                	ja     41a <_init-0xbe6>
 3ab:	72 64                	jb     411 <_init-0xbef>
 3ad:	73 00                	jae    3af <_init-0xc51>
 3af:	72 6f                	jb     420 <_init-0xbe0>
 3b1:	6c                   	insb   (%dx),%es:(%rdi)
 3b2:	6c                   	insb   (%dx),%es:(%rdi)
 3b3:	6e                   	outsb  %ds:(%rsi),(%dx)
 3b4:	75 6d                	jne    423 <_init-0xbdd>
 3b6:	5f                   	pop    %rdi
 3b7:	66 61                	data16 (bad) 
 3b9:	69 6c 00 73 74 75 64 	imul   $0x65647574,0x73(%rax,%rax,1),%ebp
 3c0:	65 
 3c1:	6e                   	outsb  %ds:(%rsi),(%dx)
 3c2:	74 5f                	je     423 <_init-0xbdd>
 3c4:	6f                   	outsl  %ds:(%rsi),(%dx)
 3c5:	72 64                	jb     42b <_init-0xbd5>
 3c7:	65 72 00             	gs jb  3ca <_init-0xc36>
 3ca:	65 78 69             	gs js  436 <_init-0xbca>
 3cd:	74 5f                	je     42e <_init-0xbd2>
 3cf:	61                   	(bad)  
 3d0:	6c                   	insb   (%dx),%es:(%rdi)
 3d1:	6c                   	insb   (%dx),%es:(%rdi)
 3d2:	00 73 68             	add    %dh,0x68(%rbx)
 3d5:	6f                   	outsl  %ds:(%rsi),(%dx)
 3d6:	77 5f                	ja     437 <_init-0xbc9>
 3d8:	61                   	(bad)  
 3d9:	6c                   	insb   (%dx),%es:(%rdi)
 3da:	6c                   	insb   (%dx),%es:(%rdi)
 3db:	00 6c 69 6e          	add    %ch,0x6e(%rcx,%rbp,2)
 3df:	65 5f                	gs pop %rdi
 3e1:	6f                   	outsl  %ds:(%rsi),(%dx)
 3e2:	72 64                	jb     448 <_init-0xbb8>
 3e4:	65 72 00             	gs jb  3e7 <_init-0xc19>
 3e7:	72 65                	jb     44e <_init-0xbb2>
 3e9:	74 76                	je     461 <_init-0xb9f>
 3eb:	61                   	(bad)  
 3ec:	6c                   	insb   (%dx),%es:(%rdi)
 3ed:	00 70 72             	add    %dh,0x72(%rax)
 3f0:	6a 32                	push   $0x32
 3f2:	5f                   	pop    %rdi
 3f3:	66 75 6e             	data16 jne 464 <_init-0xb9c>
 3f6:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
 3fa:	6e                   	outsb  %ds:(%rsi),(%dx)
 3fb:	73 2e                	jae    42b <_init-0xbd5>
 3fd:	63 00                	movsxd (%rax),%eax
 3ff:	69 6e 64 65 78 5f 6c 	imul   $0x6c5f7865,0x64(%rsi),%ebp
 406:	69 6e 65 00 74 6f 74 	imul   $0x746f7400,0x65(%rsi),%ebp
 40d:	61                   	(bad)  
 40e:	6c                   	insb   (%dx),%es:(%rdi)
 40f:	6e                   	outsb  %ds:(%rsi),(%dx)
 410:	75 6d                	jne    47f <_init-0xb81>
 412:	5f                   	pop    %rdi
 413:	73 74                	jae    489 <_init-0xb77>
 415:	75 64                	jne    47b <_init-0xb85>
 417:	65 6e                	outsb  %gs:(%rsi),(%dx)
 419:	74 00                	je     41b <_init-0xbe5>
 41b:	72 65                	jb     482 <_init-0xb7e>
 41d:	61                   	(bad)  
 41e:	64 5f                	fs pop %rdi
 420:	66 69 6c 65 00 75 70 	imul   $0x7075,0x0(%rbp,%riz,2),%bp
 427:	64 61                	fs (bad) 
 429:	74 65                	je     490 <_init-0xb70>
 42b:	5f                   	pop    %rdi
 42c:	72 6f                	jb     49d <_init-0xb63>
 42e:	6c                   	insb   (%dx),%es:(%rdi)
 42f:	6c                   	insb   (%dx),%es:(%rdi)
 430:	6e                   	outsb  %ds:(%rsi),(%dx)
 431:	75 6d                	jne    4a0 <_init-0xb60>
 433:	00 63 75             	add    %ah,0x75(%rbx)
 436:	72 72                	jb     4aa <_init-0xb56>
 438:	65 6e                	outsb  %gs:(%rsi),(%dx)
 43a:	74 00                	je     43c <_init-0xbc4>
 43c:	69 6e 64 65 78 5f 77 	imul   $0x775f7865,0x64(%rsi),%ebp
 443:	6f                   	outsl  %ds:(%rsi),(%dx)
 444:	72 64                	jb     4aa <_init-0xb56>
 446:	00 72 65             	add    %dh,0x65(%rdx)
 449:	61                   	(bad)  
 44a:	64 5f                	fs pop %rdi
 44c:	6d                   	insl   (%dx),%es:(%rdi)
 44d:	61                   	(bad)  
 44e:	6e                   	outsb  %ds:(%rsi),(%dx)
 44f:	75 61                	jne    4b2 <_init-0xb4e>
 451:	6c                   	insb   (%dx),%es:(%rdi)
 452:	00 66 69             	add    %ah,0x69(%rsi)
 455:	6e                   	outsb  %ds:(%rsi),(%dx)
 456:	64 5f                	fs pop %rdi
 458:	72 6f                	jb     4c9 <_init-0xb37>
 45a:	6c                   	insb   (%dx),%es:(%rdi)
 45b:	6c                   	insb   (%dx),%es:(%rdi)
 45c:	6e                   	outsb  %ds:(%rsi),(%dx)
 45d:	75 6d                	jne    4cc <_init-0xb34>
 45f:	00 66 69             	add    %ah,0x69(%rsi)
 462:	6e                   	outsb  %ds:(%rsi),(%dx)
 463:	64 5f                	fs pop %rdi
 465:	63 6f 75             	movsxd 0x75(%rdi),%ebp
 468:	72 65                	jb     4cf <_init-0xb31>
 46a:	69 64 00 64 65 6c 65 	imul   $0x74656c65,0x64(%rax,%rax,1),%esp
 471:	74 
 472:	65 5f                	gs pop %rdi
 474:	72 6f                	jb     4e5 <_init-0xb1b>
 476:	6c                   	insb   (%dx),%es:(%rdi)
 477:	6c                   	insb   (%dx),%es:(%rdi)
 478:	6e                   	outsb  %ds:(%rsi),(%dx)
 479:	75 6d                	jne    4e8 <_init-0xb18>
 47b:	00 77 6f             	add    %dh,0x6f(%rdi)
 47e:	72 64                	jb     4e4 <_init-0xb1c>
 480:	5f                   	pop    %rdi
 481:	6f                   	outsl  %ds:(%rsi),(%dx)
 482:	72 64                	jb     4e8 <_init-0xb18>
 484:	65 72 00             	gs jb  487 <_init-0xb79>
 487:	66 69 6e 64 5f 66    	imul   $0x665f,0x64(%rsi),%bp
 48d:	69 72 73 74 6e 61 6d 	imul   $0x6d616e74,0x73(%rdx),%esi
 494:	65                   	gs
	...
